#!/usr/bin/env python3
"""Measure what the workspace has covered, from the binaries.

Usage: scripts/inventory.py [--config scripts/inventory-config.json]
                            [--out docs/inventory] [--no-coverage] [--jobs N]

Run it from the repository root with root/ populated (IRIX_FILES.md), inside
the toolchain environment of AGENTS.md (MIPS objdump, dwarfdump, pyelftools).

The script is the same in every workspace. Everything that belongs to one
graphics family -- which files are in scope and what role each plays, the
register windows and how code reaches them, where command tokens come from,
which kernel tables dispatch ioctls, the microcode images and any register
tables from a specification -- is in scripts/inventory-config.json.

It writes eight tables to docs/inventory/ and rewrites the block between the
inventory markers in docs/coverage.md:

  binaries.tsv        every file in scope, one row per distinct content
  functions.tsv       one row per (binary, function symbol)
  mmio.tsv            one row per register offset the code reaches
  tokens.tsv          command tokens and constant words sent to the hardware
  ioctls.tsv          one row per ioctl number handled or sent
  ucode.tsv           microcode routines, labels and dispatch entries
  spec-registers.tsv  registers listed by a specification or register table
  summary.tsv         row counts per status, and unresolved access sites

docs/inventory/README.md defines every column and status. The output is
deterministic: the same inputs give byte-identical tables.
"""
import argparse
import bisect
import collections
import fnmatch
import glob
import hashlib
import io
import json
import multiprocessing
import os
import re
import shutil
import struct
import subprocess
import sys
import tempfile

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(REPO, 'scripts'))

STATUSES = ('undocumented', 'named-only', 'located', 'understood', 'no-software-dependency')
RANK = {'understood': 4, 'no-software-dependency': 3, 'located': 2, 'named-only': 1, 'undocumented': 0}
NSD_PHRASE = re.compile(r'no\s+shipped\s+software\s+or\s+published\s+source', re.I)
NSD_ROUTES = re.compile(r'\b(?:routes?|tried)\b', re.I)
MAX_ITEMS = 3          # a line naming more items than this documents none of them
MIN_ROLE_WORDS = 6     # plain words an entry needs to state a role and a hardware effect
MARK_BEGIN, MARK_END = '<!-- inventory:begin -->', '<!-- inventory:end -->'
OLD_MARKS = (re.compile(r'<!-- inventory:start[^>]*-->'),)

COLUMNS = {
    'binaries': ['binary', 'group', 'role', 'kind', 'abi', 'bytes', 'sha256', 'copies', 'functions',
                 'access_sites', 'unresolved_sites', 'status', 'doc', 'section'],
    'functions': ['binary', 'role', 'abi', 'elf_section', 'address', 'size', 'name', 'source',
                  'status', 'doc', 'section'],
    'mmio': ['window', 'offset', 'name', 'access', 'sites', 'binaries', 'functions', 'evidence', 'example',
             'status', 'doc', 'section'],
    'tokens': ['kind', 'value', 'name', 'register', 'detail', 'sources', 'sites', 'binaries', 'example',
               'status', 'doc', 'section'],
    'ioctls': ['number', 'hex', 'table', 'handler', 'evidence', 'senders', 'binaries', 'example',
               'status', 'doc', 'section'],
    'ucode': ['program', 'kind', 'address', 'name', 'detail', 'status', 'doc', 'section'],
    'spec-registers': ['spec', 'table', 'page', 'window', 'offset', 'name', 'count', 'stride', 'width', 'rw',
                       'reached_in_code', 'status', 'doc', 'section'],
    'summary': ['table', 'rows', 'understood', 'located', 'named_only', 'undocumented',
                'no_software_dependency', 'pct_understood', 'pct_located_or_better', 'pct_mentioned',
                'pct_done', 'unresolved_sites'],
}
TABLES = ('binaries', 'functions', 'mmio', 'tokens', 'ioctls', 'ucode', 'spec-registers')


def num(s):
    if isinstance(s, int):
        return s
    s = str(s).strip()
    neg = s.startswith('-')
    s = s.lstrip('-')
    v = int(s, 16) if s.lower().startswith('0x') else int(s)
    return -v if neg else v


def s64(v):
    v &= (1 << 64) - 1
    return v - (1 << 64) if v >> 63 else v


def s32(v):
    v &= 0xffffffff
    return v - (1 << 32) if v >> 31 else v


def globs_match(path, pats):
    return any(fnmatch.fnmatch(path, p) for p in pats)


def toolchain_objdump():
    import toolchain
    return toolchain.objdump()


# ===================================================================== docs

def slug(h):
    h = re.sub(r'[`*_]', lambda m: '_' if m.group(0) == '_' else '', h.strip().lower())
    h = re.sub(r'[^\w\s-]', '', h)
    return re.sub(r'\s', '-', h)


IDENT = re.compile(r'[A-Za-z_][A-Za-z0-9_$.]*[A-Za-z0-9_$]|[A-Za-z_]')
CODELIKE = re.compile(r'(?=.*[_0-9])|(?=.*[a-z][A-Z])')
HEXLIT = re.compile(r'(\+?)\b0[xX]([0-9a-fA-F]+)\b')
DECLIT = re.compile(r'(?<![\w.+-])(\d{1,10})(?![\w.])')
FILELIKE = re.compile(r'[A-Za-z0-9_+-]+(?:\.[A-Za-z0-9_+-]+)+')
WORD = re.compile(r'\b[A-Za-z]{2,}\b')


def plain_words(text):
    text = re.sub(r'`[^`]*`', ' ', text)
    text = re.sub(r'\]\([^)]*\)', ' ', text)
    text = re.sub(r'0[xX][0-9a-fA-F]+|\b\w*[_0-9]\w*\b|\b\w+[a-z][A-Z]\w*\b', ' ', text)
    return len(WORD.findall(text))


LABEL = re.compile(r'\b(?:established|inferred)\b', re.I)
UNKNOWN = re.compile(r'\bunknown\b', re.I)
CITE = re.compile(
    r'\b\d+\.\d+\.\d+[a-z]?\b'                                    # a release, 6.5.30m
    r'|\bpatch(?:es)?\s+\d+'                                          # a patch
    r'|[\w+-]+\.(?:o|a|so|c|h|cc|u|bin|elf|lst|asm|s|x)\b'            # a binary or source file
    r'|\b[\w.+-]+/[\w.+-]+/[\w./+-]+'                                 # a path
    r'|\+0x[0-9a-fA-F]+|\b[Oo]ffsets?\s+(?:0x)?[0-9a-fA-F]+'           # an offset
    r'|\b(?:[Cc]alls?|[Cc]allees?|[Cc]allers?|called\s+(?:from|by))\b[^.|;`]{0,30}`')   # a callee
LOCATED = re.compile(r'\b(?:address(?:es)?|offsets?|sizes?|bytes?|records?|extents?|callers?|called|sites?|'
                     r'calls?|entry|entries|lanes?)\b|0[xX][0-9a-fA-F]+', re.I)
NUMLIST = re.compile(r'\b(?:0[xX][0-9a-fA-F]+|\d+)\b(?:\s*(?:,|;|\band\b|\bor\b)\s*\b(?:0[xX][0-9a-fA-F]+|\d+)\b)+')


def bare_text(text):
    """The text without the targets of markdown links."""
    return re.sub(r'\]\([^)]*\)', ']', text)


def classify(text):
    """The status one entry (a table row, a list item, a paragraph or a header comment)
    earns for every item it mentions. The entry must carry a derivation citation; with
    behaviour labelled unknown it is located, with an established or inferred label and
    enough words for a role it is understood."""
    t = bare_text(text)
    if not CITE.search(t):
        return 'named-only'
    if UNKNOWN.search(t):
        return 'located' if LOCATED.search(t) else 'named-only'
    if LABEL.search(t) and plain_words(t) - len(LABEL.findall(t)) >= MIN_ROLE_WORDS:
        return 'understood'
    return 'named-only'


def line_items(text):
    """How many things one line names: distinct identifiers, plus numbers written as a list."""
    t = bare_text(text)
    items = set()
    for sp in re.findall(r'`([^`]*)`', t):
        sp = sp.strip()
        if re.fullmatch(r'[+-]?(?:0[xX][0-9a-fA-F]+|\d+)', sp):
            continue
        if re.search(r'\s', sp):
            items.add(sp)
            continue
        for m in IDENT.finditer(sp):
            nm = m.group(0)
            if '.' not in nm.strip('.') and not re.fullmatch(r'[xX][0-9a-fA-F]+', nm):
                items.add(nm)
    rest = re.sub(r'`[^`]*`', ' ', t)
    rest = re.sub(r'\b\d\w*', ' ', rest)
    for m in IDENT.finditer(rest):
        nm = m.group(0).rstrip('.')
        if '.' in nm:
            continue
        if CODELIKE.match(nm) or rest[m.end():m.end() + 1] == '(':
            items.add(nm)
    n = len(items)
    for m in NUMLIST.finditer(t):
        n += len(re.findall(r'0[xX][0-9a-fA-F]+|\d+', m.group(0)))
    return n


def ctx_match(ctx, words):
    return any(re.search(r'\b' + re.escape(w.strip()), ctx) for w in words)


def dec_contexts(text, head=None):
    """(value, context) for each decimal number in a line: the three words before it and the
    one after, or, for a table cell that is only the number, the column heading."""
    out = []
    cells = None
    if head is not None and text.strip().startswith('|'):
        cells = [c.strip() for c in text.strip().strip('|').split('|')]
    for m in DECLIT.finditer(text):
        before = re.findall(r'[A-Za-z0-9_]+', text[:m.start()])[-3:]
        after = re.findall(r'[A-Za-z0-9_]+', text[m.end():])[:1]
        ctx = ' '.join(before + after).lower()
        if cells is not None:
            for k, c in enumerate(cells):
                if c.strip('`*') == m.group(1) and k < len(head):
                    ctx += ' ' + head[k]
                    break
        out.append((int(m.group(1)), ctx))
    return out


def ambiguous(name):
    return len(name) <= 3 or re.fullmatch(r'[a-z]+', name) is not None


class Hit:
    __slots__ = ('file', 'line', 'ref', 'section', 'level', 'nsd', 'code', 'ctx', 'order')

    def __init__(self, file, line, ref, section, level, nsd, code, ctx, order):
        self.file, self.line, self.ref, self.section = file, line, ref, section
        self.level, self.nsd, self.code, self.ctx, self.order = level, nsd, code, ctx, order

    def status(self):
        if self.nsd:
            return 'no-software-dependency'
        return self.level


class DocIndex:
    """Where the repository's own text mentions each name and number."""

    def __init__(self, cfg):
        self.names = collections.defaultdict(list)
        self.files = collections.defaultdict(list)
        self.hexes = collections.defaultdict(list)     # value -> [(hit, plus)]
        self.decs = collections.defaultdict(list)
        self.defs = collections.defaultdict(list)      # value -> [hit] for header #define / enum values
        self.lines = collections.defaultdict(set)      # (file, line) -> {'hex:..', 'id:..'}
        self.order = 0
        d = cfg['docs']
        index = set()
        for p in d.get('index', []):
            index.update(self.expand(p))
        skip = set()
        for p in d.get('skip', []):
            skip.update(self.expand(p))
        seen = set()
        for kind, pats in (('md', d.get('prose', [])), ('h', d.get('headers', []))):
            for pat in pats:
                for rel in self.expand(pat):
                    if rel in seen or rel in skip:
                        continue
                    seen.add(rel)
                    (self.read_md if kind == 'md' else self.read_header)(rel, rel in index)
        for rel in sorted(index):
            if rel not in seen and rel not in skip and os.path.isfile(os.path.join(REPO, rel)):
                seen.add(rel)
                self.read_md(rel, True)
        dumps = set()
        for p in d.get('dumps', []):
            dumps.update(self.expand(p))
        for pat in d.get('tables', []):
            for rel in self.expand(pat):
                if rel in seen or rel in skip or rel in dumps:
                    continue
                seen.add(rel)
                self.read_table(rel)

    @staticmethod
    def expand(pat):
        out = []
        for p in sorted(glob.glob(os.path.join(REPO, pat), recursive=True)):
            if os.path.isfile(p):
                out.append(os.path.relpath(p, REPO))
        return out

    def hit(self, file, line, ref, section, level, nsd, code, ctx):
        self.order += 1
        return Hit(file, line, ref, section, level, nsd, code, ctx, self.order)

    def add_text(self, file, n, ref, section, text, level, nsd, code_spans, code_all, ctx, head=None):
        """Index one line. code_spans are the parts written as code. level is what the
        entry holding the line earns, which a line naming many items does not get."""
        if line_items(text) > MAX_ITEMS:
            level, nsd = 'named-only', False
        explained = level
        key = (file, n)
        code_text = ' '.join(code_spans)
        seen = set()
        for m in IDENT.finditer(code_text):
            nm = m.group(0).rstrip('.')
            if nm in seen:
                continue
            seen.add(nm)
            self.names[nm].append(self.hit(file, n, ref, section, explained, nsd, True, ctx))
            self.lines[key].add('id:' + nm)
        if not code_all:
            for m in IDENT.finditer(re.sub(r'`[^`]*`', ' ', text)):
                nm = m.group(0).rstrip('.')
                if nm in seen:
                    continue
                call = text[m.end():m.end() + 1] == '('
                if not call and not CODELIKE.match(nm):
                    continue
                seen.add(nm)
                self.names[nm].append(self.hit(file, n, ref, section, explained, nsd, call, ctx))
                self.lines[key].add('id:' + nm)
        for m in FILELIKE.finditer(code_text if not code_all else text):
            self.files[m.group(0)].append(self.hit(file, n, ref, section, explained, nsd, True, ctx))
        for plus, h in set(HEXLIT.findall(text)):
            v = int(h, 16)
            self.hexes[v].append((self.hit(file, n, ref, section, explained, nsd, True, ctx), bool(plus)))
            self.lines[key].add('hex:%x' % v)
        for v, dctx in dec_contexts(text, head):
            self.decs[v].append(self.hit(file, n, ref, section, explained, nsd, True, dctx))

    def read_md(self, rel, index):
        lines = open(os.path.join(REPO, rel), encoding='utf-8', errors='replace').read().split('\n')
        if rel.endswith('coverage.md'):
            lines = strip_generated(lines)
        section, ref = '', rel
        fence = False
        # paragraphs carry the "no shipped software" label to every line in them
        paras, cur = [], []
        for i, ln in enumerate(lines):
            s = ln.strip()
            brk = (not s or s.startswith('```') or s.startswith('#') or s.startswith('|')
                   or re.match(r'([-*+]|\d+\.)\s', s))
            if brk and cur:
                paras.append(cur)
                cur = []
            if s:
                cur.append(i)
                if s.startswith('|') or s.startswith('#') or s.startswith('```'):
                    paras.append(cur)
                    cur = []
        if cur:
            paras.append(cur)
        nsd_line = set()
        for p in paras:
            ptext = ' '.join(lines[i] for i in p)
            if NSD_PHRASE.search(ptext) and NSD_ROUTES.search(ptext):
                nsd_line.update(p)
        # an entry is a table row, a list item with its continuation lines, or a paragraph
        entry_of, entries, cur, efence = {}, [], None, False
        for i, ln in enumerate(lines):
            s = ln.strip()
            if s.startswith('```'):
                efence, cur = not efence, None
                continue
            if efence:
                continue
            if not s or s.startswith('#'):
                cur = None
            elif s.startswith('|'):
                entries.append([i])
                entry_of[i] = len(entries) - 1
                cur = None
            else:
                if cur is None or re.match(r'([-*+]|\d+\.)\s', s):
                    entries.append([])
                    cur = len(entries) - 1
                entries[cur].append(i)
                entry_of[i] = cur
        entry_level = {}
        head = None
        prev_table = False
        for i, ln in enumerate(lines):
            n = i + 1
            st = ln.strip()
            if st.startswith('```'):
                fence = not fence
                continue
            if not fence and re.match(r'#{1,6}\s', ln):
                section = re.sub(r'^#+\s*', '', ln).strip()
                ref = '%s#%s' % (rel, slug(section))
            is_table = not fence and st.startswith('|')
            if is_table and not prev_table:
                head = [c.strip().lower() for c in st.strip('|').split('|')]
            prev_table = is_table
            if fence:
                level = 'named-only'          # a listing restates its subject
                spans, code_all = [ln], True
            else:
                e = entry_of.get(i)
                if e is not None and e not in entry_level:
                    entry_level[e] = classify(' '.join(lines[j] for j in entries[e]))
                level = entry_level.get(e, 'named-only')
                spans, code_all = re.findall(r'`([^`]+)`', ln), False
            if index:
                level = 'named-only'
            nsd = (i in nsd_line) and not index
            ctx = (ln + ' ' + section).lower()
            self.add_text(rel, n, ref, section, ln, level, nsd, spans, code_all, ctx,
                          head if is_table else None)

    def read_header(self, rel, index):
        lines = open(os.path.join(REPO, rel), encoding='utf-8', errors='replace').read().split('\n')
        # split each line into code and comment; a standalone comment line has no code
        parts = []
        incomment = False
        for ln in lines:
            code, comment = ln, ''
            if incomment:
                if '*/' in ln:
                    comment, code = ln.split('*/', 1)
                    incomment = False
                else:
                    comment, code = ln, ''
            if not incomment:
                while True:
                    m = re.search(r'/\*(.*?)(\*/|$)', code)
                    if not m:
                        break
                    comment += ' ' + m.group(1)
                    code = code[:m.start()] + ' ' + code[m.end():]
                    if not m.group(2):
                        incomment = True
                        break
                m2 = re.search(r'//(.*)$', code)
                if m2:
                    comment += ' ' + m2.group(1)
                    code = code[:m2.start()]
            text = comment.strip().lstrip('*').strip()
            parts.append((code, comment, text, not code.strip()))
        # paragraphs of standalone comment lines carry their word count and label to each line
        para = [None] * len(lines)
        i = 0
        while i < len(lines):
            if parts[i][3] and parts[i][2] and not re.fullmatch(r'[-=*/ ]*', parts[i][2]):
                j = i
                while j < len(lines) and parts[j][3] and parts[j][2] and not re.fullmatch(r'[-=*/ ]*', parts[j][2]):
                    j += 1
                text = ' '.join(parts[k][2] for k in range(i, j))
                info = (text, bool(NSD_PHRASE.search(text) and NSD_ROUTES.search(text)), j - 1)
                for k in range(i, j):
                    para[k] = info
                i = j
            else:
                i += 1
        section = ''
        banner = False
        last_para = None
        for i, ln in enumerate(lines):
            n = i + 1
            code, comment, c, standalone = parts[i]
            if re.match(r'\s*/\*\s*=+', ln):
                banner = True
            m = re.match(r'^[-=]{2,}\s*(\S.*?)\s*[-=]*$', c)
            if m and m.group(1) and not re.fullmatch(r'[-=*/ ]*', m.group(1)):
                section = m.group(1)[:80]
            elif banner and re.match(r'\d+\.\s+\S', c):
                section = c[:80]
                banner = False
            ref = '%s:%d' % (rel, n)
            ctx = (ln + ' ' + section).lower()
            if para[i] is not None:
                last_para = para[i]
            if standalone:
                if c:
                    ptext, nsd = (para[i][0], para[i][1]) if para[i] else (c, False)
                    self.add_text(rel, n, ref, section, comment, 'named-only' if index else classify(ptext),
                                  nsd and not index, re.findall(r'`([^`]+)`', comment), False, ctx)
                continue
            above = last_para if (last_para and last_para[2] == i - 1) else None
            ctext = ' '.join(x for x in (above[0] if above else '', comment.strip()) if x)
            commented = 'named-only' if index else classify(ctext)
            nsd = (bool(NSD_PHRASE.search(comment) and NSD_ROUTES.search(comment)) or
                   (above is not None and above[1])) and not index
            if comment.strip():
                self.add_text(rel, n, ref, section, comment, 'named-only' if index else classify(comment), nsd,
                              re.findall(r'`([^`]+)`', comment), False, ctx)
            d = (re.match(r'\s*#\s*define\s+(\w+)\s+\(?\s*(-?0[xX][0-9a-fA-F]+|-?\d+)[uUlL]*\b', code) or
                 re.match(r'\s*(\w+)\s*=\s*\(?\s*(-?0[xX][0-9a-fA-F]+|-?\d+)[uUlL]*\)?\s*,?\s*$', code))
            if d:
                name, val = d.group(1), num(re.sub(r'[uUlL]+$', '', d.group(2)))
                h = self.hit(rel, n, ref, section, commented, nsd, True, ctx)
                self.names[name].append(h)
                self.defs[val & 0xffffffffffffffff].append(h)
                self.lines[(rel, n)].add('id:' + name)
                self.lines[(rel, n)].add('hex:%x' % (val & 0xffffffffffffffff))
            else:
                for m in IDENT.finditer(code):
                    nm = m.group(0).rstrip('.')
                    self.names[nm].append(self.hit(rel, n, ref, section, 'named-only', False, True, ctx))
                    self.lines[(rel, n)].add('id:' + nm)
                for plus, h in set(HEXLIT.findall(code)):
                    v = int(h, 16)
                    self.hexes[v].append((self.hit(rel, n, ref, section, commented, nsd, True, ctx), bool(plus)))

    def read_table(self, rel):
        for n, ln in enumerate(open(os.path.join(REPO, rel), encoding='utf-8', errors='replace'), 1):
            if ln.startswith('#'):
                continue
            for cell in ln.rstrip('\n').split('\t'):
                cell = cell.strip()
                if IDENT.fullmatch(cell):
                    self.names[cell].append(self.hit(rel, n, rel, '', 'named-only', False, True, ''))
                for plus, h in HEXLIT.findall(cell):
                    self.hexes[int(h, 16)].append((self.hit(rel, n, rel, '', 'named-only', False, True, ''), bool(plus)))

    # ---------------------------------------------------------------- queries

    @staticmethod
    def best(hits):
        """(status, doc, section) of the best hit; first in index order on a tie."""
        top = None
        for h in hits:
            if top is None or RANK[h.status()] > RANK[top.status()] or \
                    (RANK[h.status()] == RANK[top.status()] and h.order < top.order):
                top = h
        if top is None:
            return ('undocumented', '', '')
        return (top.status(), top.ref, top.section)

    def name_hits(self, name):
        hits = self.names.get(name, [])
        if ambiguous(name):
            hits = [h for h in hits if h.code]
        return hits

    def by_name(self, *names):
        hits = []
        for n in names:
            if n:
                hits += self.name_hits(n)
        return self.best(hits)

    def by_file(self, *names):
        hits = []
        for n in names:
            if n:
                hits += self.files.get(n, [])
        return self.best(hits)

    def value_hits(self, values, files=None, context=None, plus_ok=True, bare=True, absolute=()):
        out = []
        for v in values:
            for h in self.defs.get(v & 0xffffffffffffffff, []):
                if in_files(h.file, files) and h.file.endswith('.h'):
                    out.append(h)
            for h, plus in self.hexes.get(v, []):
                if not in_files(h.file, files):
                    continue
                if plus and plus_ok:
                    out.append(h)
                elif bare and (context is None or any(c in h.ctx for c in context)):
                    out.append(h)
        for a in absolute:
            for h, plus in self.hexes.get(a, []):
                out.append(h)
            for h in self.defs.get(a, []):
                out.append(h)
        return out

    def dec_hits(self, values, files=None, context=None):
        out = []
        for v in values:
            for h in self.decs.get(v, []):
                if in_files(h.file, files) and (context is None or ctx_match(h.ctx, context)):
                    out.append(h)
        return out

    def near(self, h, key, dist=2):
        for k in range(h.line - dist, h.line + dist + 1):
            if key in self.lines.get((h.file, k), ()):
                return True
        return False


def in_files(f, files):
    return files is None or globs_match(f, files)


def strip_generated(lines):
    out, skip = [], False
    for ln in lines:
        if MARK_BEGIN in ln or any(p.search(ln) for p in OLD_MARKS):
            skip = True
        if not skip:
            out.append(ln)
        else:
            out.append('')
        if MARK_END in ln:
            skip = False
    return out


# ===================================================================== scope

def unpack_ar(data):
    if data[:8] != b'!<arch>\n':
        return []
    names, pos, mem = b'', 8, []
    while pos + 60 <= len(data):
        hdr = data[pos:pos + 60]
        name = hdr[:16].decode('latin1').strip()
        size = int(hdr[48:58])
        body = data[pos + 60:pos + 60 + size]
        pos += 60 + size + (size & 1)
        if name == '//':
            names = body
            continue
        if name in ('/', '/SYM64/', '__.SYMDEF', '__.SYMDEF SORTED'):
            continue
        if name.startswith('/') and name[1:].isdigit():
            end = names.index(b'\n', int(name[1:]))
            name = names[int(name[1:]):end].decode('latin1')
        elif name.startswith('#1/'):
            k = int(name[3:])
            name, body = body[:k].decode('latin1').rstrip('\0'), body[k:]
        mem.append((name.rstrip('/'), body))
    return mem


def scope(cfg):
    """[(label, member, group, data)] for every file in scope, plus the copies map."""
    root = os.path.join(REPO, 'root')
    excl = cfg.get('exclude', [])
    files = []
    claimed = set()
    for g in cfg['binaries']:
        for pat in g['paths']:
            hits = sorted(glob.glob(os.path.join(root, pat), recursive=True))
            for p in hits:
                cands = []
                if os.path.isdir(p):
                    for dp, dn, fn in os.walk(p):
                        dn.sort()
                        for f in sorted(fn):
                            cands.append(os.path.join(dp, f))
                else:
                    cands.append(p)
                for c in cands:
                    rel = os.path.relpath(c, root)
                    if rel in claimed or globs_match(rel, excl) or not os.path.isfile(c):
                        continue
                    claimed.add(rel)
                    files.append((rel, c, g))
    files.sort(key=lambda x: x[0])
    images = []
    by_sha = {}
    for rel, real, g in files:
        data = open(real, 'rb').read()
        if data[:8] == b'!<arch>\n':
            want = g.get('members')
            for name, body in unpack_ar(data):
                if want and not any(fnmatch.fnmatch(name, w) for w in want):
                    continue
                images.append(('%s(%s)' % (rel, name), rel, name, g, body))
        else:
            images.append((rel, rel, '', g, data))
    out = []
    for label, path, member, g, data in images:
        h = hashlib.sha256(data).hexdigest()
        if h in by_sha:
            by_sha[h]['copies'].append(label)
            continue
        e = {'label': label, 'path': path, 'member': member, 'group': g, 'data': data, 'sha': h, 'copies': [],
             'size': len(data)}
        by_sha[h] = e
        out.append(e)
    return out


# ===================================================================== ELF symbols

def elf_of(data):
    from elftools.elf.elffile import ELFFile
    return ELFFile(io.BytesIO(data))


def abi_of(elf):
    if elf.elfclass == 64:
        return 'n64'
    return 'n32' if elf.header['e_flags'] & 0x20 else 'o32'


def kind_of(data, elf):
    if elf is None:
        return 'data'
    t = elf.header['e_type']
    return {'ET_REL': 'object', 'ET_EXEC': 'executable', 'ET_DYN': 'shared-object'}.get(t, 'elf')


def mdebug_procs(elf, data):
    sec = elf.get_section_by_name('.mdebug')
    if sec is None:
        return []
    e = '<' if elf.little_endian else '>'
    d = sec.data()
    if len(d) < 96:
        return []
    h = struct.unpack(e + '2H23I', d[:96])
    cbpd, cbsym, cbss, ifd, cbfd = h[8], h[10], h[16], h[19], h[20]
    out = []
    try:
        for i in range(ifd):
            o = cbfd + 72 * i
            fd = struct.unpack(e + '10I2H', data[o:o + 44])
            issbase, isymbase, ipdfirst, cpd = fd[2], fd[4], fd[10], fd[11]
            for p in range(ipdfirst, ipdfirst + cpd):
                po = cbpd + 52 * p
                adr, isym = struct.unpack(e + 'Ii', data[po:po + 8])
                so = cbsym + 12 * (isymbase + isym)
                iss, value = struct.unpack(e + 'iI', data[so:so + 8])
                a = cbss + issbase + iss
                b = data.index(b'\0', a)
                name = data[a:b].decode('latin1')
                if name:
                    out.append((name, value))
    except (struct.error, ValueError):
        pass
    return out


def debug_funcnames(elf):
    sec = elf.get_section_by_name('.debug_funcnames')
    if sec is None:
        return []
    data = sec.data()
    names, pos = [], 0
    while pos + 14 <= len(data):
        ln, = struct.unpack('>I', data[pos:pos + 4])
        if ln == 0 or ln > len(data):
            break
        end = pos + 4 + ln
        p = pos + 14
        while p + 4 < end:
            off, = struct.unpack('>I', data[p:p + 4])
            if off == 0:
                break
            q = data.index(b'\0', p + 4)
            names.append(data[p + 4:q].decode('latin1'))
            p = q + 1
        pos = end
    return names


def dwarf_subprograms(path):
    dd = shutil.which(os.environ.get('DWARFDUMP', 'dwarfdump'))
    if not dd:
        return []
    txt = subprocess.run([dd, '-i', path], capture_output=True, text=True, errors='replace').stdout
    out, cur = [], None
    for line in txt.splitlines():
        if 'DW_TAG_' in line:
            if cur and cur.get('name') and 'lo' in cur:
                out.append((cur['name'], cur['lo'], cur.get('hi', 0)))
            cur = {} if 'DW_TAG_subprogram' in line else None
            continue
        if cur is None:
            continue
        m = re.match(r'\s+DW_AT_(name|low_pc|high_pc)\s+(\S+)', line)
        if m:
            k, v = m.groups()
            if k == 'name':
                cur['name'] = line.split(None, 1)[1].strip()
            elif k == 'low_pc':
                cur['lo'] = int(v, 16)
            else:
                cur['hi'] = int(v, 16) if v.startswith('0x') else 0
    if cur and cur.get('name') and 'lo' in cur:
        out.append((cur['name'], cur['lo'], cur.get('hi', 0)))
    return out


def functions_of(img, elf, path):
    """{name: [elf_section, address, size, sources]} for one image."""
    g = img['group']
    if g.get('string_names'):
        names = sorted({m.decode('latin1') for m in re.findall(g['string_names'].encode(), img['data'])})
        return {n: ['', 0, 0, {'strings'}] for n in names}
    if elf is None:
        return {}
    funcs = {}
    execsec = {i for i, s in enumerate(elf.iter_sections()) if s['sh_flags'] & 4}

    def secname(idx):
        if isinstance(idx, int) and idx < elf.num_sections():
            return elf.get_section(idx).name
        return ''

    def add(name, addr, size, sec, src):
        e = funcs.get(name)
        if e is None:
            funcs[name] = [sec, addr, size, {src}]
            return
        e[3].add(src)
        if (not e[1] and addr) or (addr and addr < e[1] and src != 'mdebug'):
            e[0], e[1] = sec or e[0], addr
        if not e[2] and size:
            e[2] = size

    for sn, src in (('.symtab', 'symtab'), ('.dynsym', 'dynsym')):
        sec = elf.get_section_by_name(sn)
        if sec is None or not hasattr(sec, 'iter_symbols'):
            continue
        for s in sec.iter_symbols():
            t = s['st_info']['type']
            if not s.name or s['st_shndx'] in ('SHN_UNDEF', 'SHN_ABS', 'SHN_COMMON'):
                continue
            if t == 'STT_FUNC' or (t == 'STT_NOTYPE' and s['st_shndx'] in execsec and
                                   s['st_info']['bind'] == 'STB_GLOBAL'):
                add(s.name, s['st_value'], s['st_size'], secname(s['st_shndx']), src)
    for name, addr in mdebug_procs(elf, img['data']):
        add(name, addr, 0, '.text', 'mdebug')
    for name in debug_funcnames(elf):
        add(name, 0, 0, '', 'funcnames')
    if elf.get_section_by_name('.debug_info') is not None:
        for name, lo, hi in dwarf_subprograms(path):
            add(name, lo, (hi - lo) if hi > lo else 0, '.text', 'dwarf')
    # a missing size runs to the next function of the same section
    by = collections.defaultdict(list)
    for name, e in funcs.items():
        by[e[0]].append(e[1])
    ends = {}
    for sec in by:
        by[sec] = sorted(set(by[sec]))
        s = elf.get_section_by_name(sec) if sec else None
        ends[sec] = (s['sh_addr'] + s['sh_size']) if s is not None else None
    for name, e in funcs.items():
        if not e[2] and e[1]:
            a = by[e[0]]
            i = bisect.bisect_right(a, e[1])
            nxt = a[i] if i < len(a) else ends.get(e[0])
            if nxt and nxt > e[1]:
                e[2] = nxt - e[1]
    return funcs


# ===================================================================== disassembly

INSN = re.compile(r'^\s*([0-9a-f]+):\t(\S+)\t?(.*)$')
FUNC = re.compile(r'^([0-9a-f]+) <(.+)>:$')
RELOC = re.compile(r'^\s*([0-9a-f]+): (R_MIPS\w*)\s+(\S+)\s*$')
REG = re.compile(r'^\$(\d+)$')
MEMOP = re.compile(r'^(-?(?:0x)?[0-9a-fA-F]+)\(\$(\d+)\)$')
LOADS = {'lb': 1, 'lbu': 1, 'lh': 2, 'lhu': 2, 'lw': 4, 'lwu': 4, 'ld': 8, 'll': 4, 'lld': 8,
         'lwl': 4, 'lwr': 4, 'ldl': 8, 'ldr': 8, 'lwc1': 4, 'ldc1': 8, 'lwc2': 4, 'ldc2': 8}
STORES = {'sb': 1, 'sh': 2, 'sw': 4, 'sd': 8, 'sc': 4, 'scd': 8, 'swl': 4, 'swr': 4, 'sdl': 8, 'sdr': 8,
          'swc1': 4, 'sdc1': 8, 'swc2': 4, 'sdc2': 8}
FPMEM = {'lwc1', 'ldc1', 'lwc2', 'ldc2'}
CALLS = {'jal', 'jalr', 'bal', 'bgezal', 'bltzal', 'bgezall', 'bltzall', 'jalx'}
LIKELY = {'beql', 'bnel', 'blezl', 'bgtzl', 'bltzl', 'bgezl', 'bc1tl', 'bc1fl', 'bc0tl', 'bc0fl',
          'bc2tl', 'bc2fl', 'bgezall', 'bltzall'}
NO_DEST = set('''mult multu dmult dmultu div divu ddiv ddivu madd maddu msub msubu mtc0 dmtc0 mtc1 dmtc1 ctc1
mtc2 dmtc2 ctc2 mthi mtlo nop sync break syscall cache teq tne tlt tltu tge tgeu teqi tnei tlti tltiu tgei
tgeiu tlbwi tlbwr tlbp tlbr eret pref prefx ssnop deret wait c.f c.un c.eq c.ueq c.olt c.ult c.ole c.ule
c.sf c.ngle c.seq c.ngl c.lt c.nge c.le c.ngt'''.split())
CALLER_SAVED = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 24, 25, 31]
ARG_REGS = (4, 5, 6, 7, 8, 9, 10, 11)


def is_branch(mn):
    return mn in ('j', 'jr', 'jal', 'jalr', 'jalx', 'jr.hb', 'jalr.hb') or \
        (mn.startswith('b') and mn not in ('break',))


def run_objdump(path):
    """[(name, [(addr, mnemonic, [operands], reloc)])] in address order."""
    out = subprocess.run([toolchain_objdump(), '-d', '-r', '-w', '-M', 'no-aliases,gpr-names=numeric',
                          '--no-show-raw-insn', path],
                         capture_output=True, text=True, errors='replace').stdout
    funcs, cur = [], None
    last = None
    for ln in out.split('\n'):
        m = FUNC.match(ln)
        if m:
            cur = [m.group(2), []]
            funcs.append(cur)
            last = None
            continue
        m = RELOC.match(ln)
        if m:
            if last is not None and last[3] is None and m.group(2) != 'R_MIPS_NONE' and \
                    int(m.group(1), 16) == last[0]:
                last[3] = parse_reloc(m.group(2), m.group(3))
            continue
        m = INSN.match(ln)
        if not m:
            continue
        rest = m.group(3).split('\t')
        opstr = rest[0]
        sym = None
        mm = re.search(r'<([^>+]+)(?:\+0x[0-9a-f]+)?>', opstr)
        if mm:
            sym = mm.group(1)
        opstr = re.sub(r'\s*<[^>]*>', '', opstr).split('#')[0].strip()
        rel = None
        if len(rest) >= 3:
            r = re.match(r'\s*[0-9a-f]+: (R_MIPS\w*)$', rest[1])
            if r and r.group(1) != 'R_MIPS_NONE':
                rel = parse_reloc(r.group(1), rest[2].strip())
        ops = [o.strip() for o in opstr.split(',')] if opstr else []
        last = [int(m.group(1), 16), m.group(2), ops, rel, sym]
        if cur is None:
            cur = ['', []]
            funcs.append(cur)
        cur[1].append(last)
    return funcs


def parse_reloc(rtype, target):
    m = re.match(r'^(.*?)(?:([+-])0x([0-9a-f]+))?$', target)
    name = m.group(1)
    add = int(m.group(3), 16) * (-1 if m.group(2) == '-' else 1) if m.group(3) else 0
    return (rtype, name, add)


class ImageInfo:
    """What the replay needs from the ELF image: GOT, stubs, constant memory, gp0."""

    def __init__(self, elf):
        self.elf = elf
        self.rel = elf.header['e_type'] == 'ET_REL'
        self.got_names = {}
        self.got_local = {}
        self.stubs = {}
        self.ro = []        # (lo, hi, data) read-only sections by address (linked images)
        self.secdata = {}   # name -> data (relocatable images)
        self.gp0 = 0
        self.gsz = 8 if elf.elfclass == 64 else 4
        try:
            self.load()
        except Exception:
            pass

    def load(self):
        e = self.elf
        for s in e.iter_sections():
            name = s.name
            ro = (s['sh_flags'] & 2) and not (s['sh_flags'] & 1) and s['sh_type'] == 'SHT_PROGBITS' \
                and not (s['sh_flags'] & 4)
            if ro:
                if self.rel:
                    self.secdata[name] = s.data()
                elif s['sh_addr']:
                    self.ro.append((s['sh_addr'], s['sh_addr'] + s['sh_size'], s.data()))
        self.ro.sort()
        if self.rel:
            ri = e.get_section_by_name('.reginfo')
            if ri is not None and len(ri.data()) >= 24:
                self.gp0 = struct.unpack('>i', ri.data()[20:24])[0]
            op = e.get_section_by_name('.MIPS.options')
            if op is not None:
                d = op.data()
                p = 0
                while p + 8 <= len(d):
                    kind, size = d[p], d[p + 1]
                    if size == 0:
                        break
                    if kind == 1:
                        if e.elfclass == 64 and size >= 40:
                            self.gp0 = struct.unpack('>q', d[p + 32:p + 40])[0]
                        elif size >= 32:
                            self.gp0 = struct.unpack('>i', d[p + 28:p + 32])[0]
                    p += size
            return
        dyn = e.get_section_by_name('.dynamic')
        dsym = e.get_section_by_name('.dynsym')
        if dyn is None or dsym is None:
            return
        tags = {}
        for t in dyn.iter_tags():
            tags[t.entry.d_tag] = t.entry.d_val
        names = [s.name for s in dsym.iter_symbols()]
        if 'DT_PLTGOT' in tags and 'DT_MIPS_LOCAL_GOTNO' in tags and 'DT_MIPS_GOTSYM' in tags:
            gotaddr, local, gotsym = tags['DT_PLTGOT'], tags['DT_MIPS_LOCAL_GOTNO'], tags['DT_MIPS_GOTSYM']
            gotdata = None
            for s in e.iter_sections():
                if s['sh_addr'] == gotaddr and s['sh_type'] == 'SHT_PROGBITS':
                    gotdata = s.data()
            fmt = '>Q' if self.gsz == 8 else '>I'
            n = (len(gotdata) // self.gsz) if gotdata else 0
            for i in range(n):
                off = i * self.gsz - 0x7ff0
                if i >= local:
                    k = gotsym + i - local
                    if k < len(names):
                        self.got_names[off] = names[k]
                else:
                    self.got_local[off] = struct.unpack(fmt, gotdata[i * self.gsz:(i + 1) * self.gsz])[0]
        sec = e.get_section_by_name('.MIPS.stubs')
        if sec is not None:
            d = sec.data()
            base = sec['sh_addr']
            for off in range(0, len(d) - 3, 4):
                w, = struct.unpack('>I', d[off:off + 4])
                if (w >> 16) in (0x2418, 0x6418) and (w & 0xffff) < len(names):
                    self.stubs[base + off - 12] = names[w & 0xffff]

    def read(self, addr, width):
        i = bisect.bisect_right(self.ro, (addr, float('inf'), b'')) - 1
        if i >= 0:
            lo, hi, d = self.ro[i]
            if lo <= addr and addr + width <= hi:
                return int.from_bytes(d[addr - lo:addr - lo + width], 'big', signed=True)
        return None

    def read_sec(self, name, off, width):
        d = self.secdata.get(name)
        if d is not None and 0 <= off and off + width <= len(d):
            return int.from_bytes(d[off:off + width], 'big', signed=True)
        return None


# ===================================================================== replay

class Model:
    """The family's windows, base-pointer sources, sinks and decoders, from the config."""

    def __init__(self, cfg):
        self.windows = {}
        for w in cfg.get('windows', []):
            w = dict(w)
            w['size'] = num(w.get('size', 1 << 40))
            w['regions'] = [dict(r, lo=num(r['lo']), hi=num(r['hi'])) for r in w.get('regions', [])]
            self.windows[w['name']] = w
        self.bases = cfg.get('bases', [])
        self.accessors = cfg.get('accessors', [])
        self.aliases = [dict(a, lo=num(a['lo']), hi=num(a['hi']), bit=num(a['bit']))
                        for a in cfg.get('aliases', [])]
        self.decoders = cfg.get('decoders', [])
        tk = cfg.get('tokens', {})
        self.sinks = [s for s in tk.get('sources', []) if s['type'] == 'stores']
        self.families = tk.get('families', [])
        io_ = cfg.get('ioctls', {})
        self.ioctl_send = io_.get('send_functions', [])
        self.ioctl_ranges = [(num(a), num(b)) for a, b in io_.get('ranges', [])]
        self.ioctl_const = io_.get('constants')
        self.ioctl_compare = [d for d in io_.get('dispatchers', []) if d['type'] == 'compare']

    def region(self, win, off):
        w = self.windows[win]
        for r in w['regions']:
            if r['lo'] <= off < r['hi']:
                return r['name']
        return win

    def family(self, w):
        for f in self.families:
            if all(cond_ok(c, w) for c in f['when']):
                return f
        return None


def cond_ok(c, w):
    v = (w >> c.get('shift', 0)) & num(c.get('mask', '0xffffffff'))
    if 'in' in c:
        return v in [num(x) for x in c['in']]
    if 'range' in c:
        return num(c['range'][0]) <= v <= num(c['range'][1])
    return v == num(c['eq'])


def translate(cfgb, v):
    """Physical address of a kernel-segment or XKPHYS constant, if the rule asks for it."""
    v &= (1 << 64) - 1
    if not cfgb.get('translate'):
        return v
    hi32 = v >> 32
    if hi32 == 0xffffffff and (v & 0xe0000000) in (0x80000000, 0xa0000000):
        return v & 0x1fffffff
    if v >> 62 == 2:
        return v & 0xffffffffff
    if hi32 == 0 and (v & 0xe0000000) in (0x80000000, 0xa0000000):
        return v & 0x1fffffff
    return v


class Unit:
    """Replay of every function of one file in scope (an archive's members together)."""

    def __init__(self, model, cfg, images):
        self.m = model
        self.cfg = cfg
        self.images = images
        self.out_mmio = {}
        self.unresolved = collections.Counter()
        self.sites = collections.Counter()
        self.tokens = {}
        self.ioctl = {}
        self.recording = False
        self.mode = 'record'
        self.shadow = {}

    # ------------------------------------------------------------ helpers

    def applies(self, rule, img, func=None):
        bins = rule.get('binaries')
        if bins and not (globs_match(img['label'], bins) or globs_match(img['path'], bins)):
            return False
        fns = rule.get('functions')
        if fns and func is not None and not any(re.fullmatch(f, func) for f in fns):
            return False
        return True

    def run(self):
        # parse every image once
        self.code = []
        for img in self.images:
            if img['elf'] is None or img['group'].get('scan') is False:
                continue
            info = ImageInfo(img['elf'])
            funcs = run_objdump(img['tmp'])
            self.code.append((img, info, funcs))
        defined = collections.defaultdict(list)
        for k, (img, info, funcs) in enumerate(self.code):
            for j, (name, insns) in enumerate(funcs):
                if name:
                    defined[name].append((k, j))
        self.defined = defined
        seeds_arg, seeds_ret = {}, {}
        for p in range(4):
            self.calls = collections.defaultdict(list)
            self.rets = collections.defaultdict(list)
            self.reset()
            for k, (img, info, funcs) in enumerate(self.code):
                for j, (name, insns) in enumerate(funcs):
                    self.replay(img, info, name, insns, seeds_arg.get((k, j), {}), seeds_ret)
            na, nr = self.derive_seeds()
            if na == seeds_arg and nr == seeds_ret:
                break
            seeds_arg, seeds_ret = na, nr
        return self

    def reset(self):
        self.out_mmio, self.tokens, self.ioctl = {}, {}, {}
        self.unresolved, self.sites = collections.Counter(), collections.Counter()

    def derive_seeds(self):
        na = {}
        for callee, sites in sorted(self.calls.items()):
            targets = self.defined.get(callee)
            if not targets:
                continue
            seed = {}
            for r in ARG_REGS:
                vals = [s.get(r) for s in sites]
                if vals and all(v and v[0] == 'w' for v in vals) and len({v[1] for v in vals}) == 1:
                    offs = {v[2] for v in vals}
                    seed[r] = ('w', vals[0][1], offs.pop() if len(offs) == 1 else None, 'caller argument')
            if seed:
                for t in targets:
                    na[t] = seed
        nr = {}
        for name, vals in sorted(self.rets.items()):
            if vals and all(v and v[0] == 'w' for v in vals) and len({v[1] for v in vals}) == 1:
                offs = {v[2] for v in vals}
                nr[name] = ('w', vals[0][1], offs.pop() if len(offs) == 1 else None, 'callee return')
        return na, nr

    # ------------------------------------------------------------ the replay

    def replay(self, img, info, fname, insns, seed, seeds_ret):
        """Data flow over the function's basic blocks to a fixed point, then one recording pass.
        A register or stack slot keeps a value at a join only when every path into it agrees."""
        m = self.m
        entry = {}
        for b in m.bases:
            if b['type'] == 'argument' and self.applies(b, img) and re.fullmatch(b['function'], fname or ''):
                entry[int(b['reg'])] = ('w', b['window'], num(b.get('offset', 0)), b.get('label', 'argument'))
        entry.update(seed)
        self.img, self.info, self.fname = img, info, fname
        self.compare_rules = [d for d in m.ioctl_compare
                              if self.applies(d, img) and re.search(d['functions'], fname or '')]
        n = len(insns)
        if not n:
            return
        index = {ins[0]: i for i, ins in enumerate(insns)}
        leaders = {0}
        for i, ins in enumerate(insns):
            mn = ins[1]
            if is_branch(mn) and mn not in CALLS:
                leaders.add(i + 2)
                t = branch_target(ins)
                if t is not None and t in index:
                    leaders.add(index[t])
        starts = sorted(x for x in leaders if x < n)
        blocks = []
        for k, st in enumerate(starts):
            blocks.append((st, starts[k + 1] if k + 1 < len(starts) else n))
        bindex = {st: k for k, (st, en) in enumerate(blocks)}
        preds = collections.defaultdict(int)
        for k, (st, en) in enumerate(blocks):
            for succ, _ in self.block_succ(insns, index, bindex, st, en, None):
                preds[succ] += 1
        IN = [None] * len(blocks)
        IN[0] = dict(entry)
        FIRST = [None] * len(blocks)
        FIRST[0] = dict(entry)
        for k in range(1, len(blocks)):
            if not preds[k]:
                IN[k] = {}
        self.recording = False
        work = sorted(k for k in range(len(blocks)) if IN[k] is not None)
        queued = set(work)
        rounds = 0
        while work and rounds < 50 * len(blocks):
            rounds += 1
            k = work.pop(0)
            queued.discard(k)
            st, en = blocks[k]
            for succ, state in self.block_succ(insns, index, bindex, st, en, dict(IN[k]), seeds_ret):
                old = IN[succ]
                if old is None:
                    new = dict(state)
                    FIRST[succ] = dict(state)
                else:
                    new = {}
                    for q, v in old.items():
                        mv = meet(v, state.get(q))
                        if mv is not None:
                            new[q] = mv
                if new != old:
                    IN[succ] = new
                    if succ not in queued:
                        queued.add(succ)
                        bisect.insort(work, succ)
        # The first pass into a loop gives the offsets of its first iteration: an access the
        # converged state cannot place uses them, and still counts as unresolved.
        self.recording = True
        self.mode = 'shadow'
        self.shadow = collections.defaultdict(list)
        for k, (st, en) in enumerate(blocks):
            if FIRST[k] is not None and FIRST[k] != IN[k]:
                for _ in self.block_succ(insns, index, bindex, st, en, dict(FIRST[k]), seeds_ret):
                    pass
        self.mode = 'record'
        self.first_store = set()
        for k, (st, en) in enumerate(blocks):
            for _ in self.block_succ(insns, index, bindex, st, en, dict(IN[k] or {}), seeds_ret):
                pass

    def block_succ(self, insns, index, bindex, st, en, regs, seeds_ret=None):
        """Run one block; yield (successor block, state on that edge). With regs None, only
        the successors."""
        i = st
        while i < en:
            addr, mn, ops, rel, sym = insns[i]
            if regs is not None and self.recording and self.mode == 'record' and self.compare_rules:
                self.compare(mn, ops, addr, self.compare_rules)
            if not is_branch(mn):
                if regs is not None:
                    self.step(regs, addr, mn, ops, rel, seeds_ret)
                i += 1
                continue
            likely = mn in LIKELY
            pre = dict(regs) if (likely and regs is not None) else None
            callee = self.callee(mn, ops, rel, sym, regs) if (mn in CALLS and regs is not None) else None
            if i + 1 < len(insns) and regs is not None:
                s = insns[i + 1]
                if self.recording and self.mode == 'record' and self.compare_rules:
                    self.compare(s[1], s[2], s[0], self.compare_rules)
                self.step(regs, s[0], s[1], s[2], s[3], seeds_ret)
            nxt = bindex.get(i + 2)
            if mn in CALLS:
                if regs is not None:
                    self.after_call(regs, callee, addr, seeds_ret)
                i += 2
                continue
            if mn in ('jr', 'jr.hb'):
                if regs is not None and self.recording and self.mode == 'record' and ops and ops[0] == '$31':
                    self.rets[self.fname].append(regs.get(2))
                return
            t = branch_target(insns[i])
            tb = bindex.get(index.get(t)) if t is not None else None
            uncond = mn == 'j' or (mn == 'beq' and ops[:2] == ['$0', '$0']) or (mn == 'bgez' and ops[:1] == ['$0'])
            if tb is not None:
                yield tb, regs
            if not uncond and nxt is not None:
                yield nxt, (pre if likely else regs)
            return
        nxt = bindex.get(en)
        if nxt is not None:
            yield nxt, regs

    def callee(self, mn, ops, rel, sym, regs):
        if rel and rel[0] in ('R_MIPS_26', 'R_MIPS_CALL16', 'R_MIPS_JALR', 'R_MIPS_PC16'):
            return rel[1]
        if mn in ('jalr', 'jalr.hb'):
            r = REG.match(ops[-1]) if ops else None
            v = regs.get(int(r.group(1))) if r else None
            if v and v[0] == 's':
                return v[1]
            return None
        if ops:
            try:
                t = int(ops[-1], 16)
            except ValueError:
                return sym
            if t in self.info.stubs:
                return self.info.stubs[t]
        if sym and not sym.startswith('.'):
            return sym
        return None

    def after_call(self, regs, callee, addr, seeds_ret):
        m = self.m
        if callee:
            if self.recording and self.mode == 'record':
                self.calls[callee].append({r: regs.get(r) for r in ARG_REGS})
            for a in m.accessors:
                if a['function'] == callee and self.applies(a, self.img):
                    v = regs.get(int(a['address_reg']))
                    val = regs.get(int(a['value_reg'])) if 'value_reg' in a else None
                    self.access(v, 0, a['access'], int(a.get('width', 4)), addr, val,
                                'accessor ' + callee, force=True)
            if callee in m.ioctl_send:
                v = regs.get(5)
                if v and v[0] == 'c':
                    c = v[1] & 0xffffffff
                    if any(lo <= c <= hi for lo, hi in m.ioctl_ranges):
                        self.note_ioctl(c, 'sent', addr)
        for r in CALLER_SAVED:
            regs.pop(r, None)
        if callee and callee in seeds_ret:
            regs[2] = seeds_ret[callee]
        for b in m.bases:
            if b['type'] == 'return' and callee and re.fullmatch(b['function'], callee) and \
                    self.applies(b, self.img):
                regs[2] = ('w', b['window'], num(b.get('offset', 0)), b.get('label', 'return of ' + callee))

    def compare(self, mn, ops, addr, rules):
        if len(ops) != 3:
            return
        role = None
        if mn in ('addiu', 'daddiu', 'ori') and ops[1] == '$0':
            role = 'handled'
        elif mn in ('sltiu', 'slti'):
            role = 'boundary'
        if role is None:
            return
        try:
            v = num(ops[2]) & 0xffff
        except ValueError:
            return
        for d in rules:
            lo, hi = num(d['range'][0]), num(d['range'][1])
            if lo <= v <= hi:
                self.note_ioctl(v, role, addr)

    def note_ioctl(self, v, role, addr):
        if not self.recording or self.mode == 'shadow':
            return
        e = self.ioctl.setdefault(v, {'roles': set(), 'funcs': set(), 'bins': set(), 'ex': None})
        e['roles'].add(role)
        e['funcs'].add(self.fname)
        e['bins'].add(self.img['label'])
        ex = '%s:%s' % (self.img['label'], self.fname)
        if e['ex'] is None or ex < e['ex']:
            e['ex'] = ex

    def const(self, v, addr):
        if not self.recording or self.mode == 'shadow':
            return
        c = self.m.ioctl_const
        if c and self.applies(c, self.img):
            w = v & 0xffffffff
            if w & num(c['mask']) == num(c['value']):
                self.note_ioctl(w, 'constant', addr)

    def classify(self, v, computed=False):
        """(window, offset, rule) of a constant address, or None. A computed address (a constant
        plus an unknown) counts only for rules that say the constant can only be an address."""
        for b in self.m.bases:
            if b['type'] != 'constant' or not self.applies(b, self.img):
                continue
            if computed and not b.get('computed'):
                continue
            p = translate(b, v)
            lo, hi = num(b['lo']), num(b['hi'])
            if lo <= p < hi:
                return b['window'], p - lo + num(b.get('offset', 0)), b.get('label', 'constant address')
        return None

    def access(self, base, disp, acc, width, addr, value, how=None, force=False):
        """Record a load or store whose address is base + disp."""
        if not self.recording:
            return
        if base is None:
            if force:
                self.unres('unknown window')
            return
        if base[0] == 'w':
            win, off, ev = base[1], base[2], how or base[3]
            if off is None:
                if self.mode == 'shadow':
                    return
                self.unres(win)
                for args in self.shadow.get(addr, ()):
                    self.place(*args)
                return
            off += disp
        elif base[0] == 'c':
            c = self.classify(base[1] + disp)
            if c is None:
                if force:
                    self.unres('unknown window')
                return
            win, off, ev = c
            if how:
                ev = how
        elif base[0] == 'cu':
            c = self.classify(base[1] + disp, computed=True)
            if c is not None:
                self.unres(c[0])
            elif force:
                self.unres('unknown window')
            return
        else:
            if force:
                self.unres('unknown window')
            return
        if self.mode == 'shadow':
            self.shadow[addr].append((win, off, acc, width, addr, value, ev))
            return
        self.place(win, off, acc, width, addr, value, ev)

    def unres(self, win):
        if self.mode != 'shadow':
            self.unresolved[(self.img['label'], win)] += 1

    def place(self, win, off, acc, width, addr, value, ev):
        w = self.m.windows.get(win)
        if w is None or not (0 <= off < w['size']):
            return
        alias = False
        for a in self.m.aliases:
            if a['window'] == win and a['lo'] <= off < a['hi'] and off & a['bit']:
                off &= ~a['bit']
                alias = True
        self.sites[self.img['label']] += 1
        if value is not None and acc == 'w' and value[0] == 'c':
            self.sink(win, off, value[1], width, addr)
        for d in self.m.decoders:
            if d['window'] != win:
                continue
            if d['type'] == 'stride' and num(d['lo']) <= off < num(d['hi']):
                idx = (off - num(d['lo'])) // int(d['stride'])
                part = (off - num(d['lo'])) % int(d['stride'])
                self.record(d['to_window'], idx, acc, width, ev, addr, alias,
                            d.get('label', 'stride window') + (' +%d' % part if part else ''))
                return
            if d['type'] == 'port-field' and off == num(d['offset']) and acc == 'w' and value and value[0] == 'c':
                v = value[1] & ((1 << 64) - 1)
                word = v >> 32 if width == 8 else v & 0xffffffff
                if all(cond_ok(c, word) for c in d['when']):
                    f = d['field']
                    self.record(d['to_window'], (word >> f.get('shift', 0)) & num(f['mask']), acc, width,
                                ev, addr, False, d.get('label', 'port field'))
        self.record(win, off, acc, width, ev, addr, alias)

    def record(self, win, off, acc, width, ev, addr, alias, note=''):
        key = (self.m.region(win, off) if win in self.m.windows else win, off)
        e = self.out_mmio.get(key)
        if e is None:
            e = self.out_mmio[key] = {'acc': set(), 'sites': 0, 'funcs': set(), 'bins': set(), 'ev': set(),
                                      'ex': None}
        e['acc'].add('%s%d%s%s' % (acc, width, ' alias' if alias else '', ' ' + note if note else ''))
        e['sites'] += 1
        e['funcs'].add(self.fname)
        e['bins'].add(self.img['label'])
        e['ev'].add(ev)
        ex = '%s:%s' % (self.img['label'], self.fname)
        if e['ex'] is None or ex < e['ex']:
            e['ex'] = ex

    def sink(self, win, off, v, width, addr):
        for s in self.m.sinks:
            if s.get('window') != win or not self.applies(s, self.img):
                continue
            lo, hi = num(s.get('lo', 0)), num(s.get('hi', 1 << 40))
            if not (lo <= off < hi):
                continue
            if s.get('first_store_only'):
                k = (win, lo)
                if k in self.first_store:
                    continue
                self.first_store.add(k)
            self.token(v, width, s, off if s.get('register') else None)

    def token(self, v, width, s, reg):
        if not self.recording or self.mode == 'shadow':
            return
        v &= (1 << 64) - 1
        if width == 8 and s.get('split64', True) and (v >> 32) not in (0, 0xffffffff):
            words = [v >> 32, v & 0xffffffff]
        else:
            words = [v & (0xffffffff if width <= 4 or not s.get('keep64') else (1 << 64) - 1)]
        for w in words:
            if 'value_mask' in s:
                w &= num(s['value_mask'])
            if s.get('families') and self.m.family(w) is None:
                continue
            key = (s.get('kind', 'word'), reg, w)
            e = self.tokens.get(key)
            if e is None:
                e = self.tokens[key] = {'sites': 0, 'bins': set(), 'ex': None, 'src': set(), 'known_only':
                                        bool(s.get('known_only'))}
            e['sites'] += 1
            e['bins'].add(self.img['label'])
            e['src'].add(s.get('label', 'code'))
            ex = '%s:%s' % (self.img['label'], self.fname)
            if e['ex'] is None or ex < e['ex']:
                e['ex'] = ex

    # ------------------------------------------------------------ one instruction

    def step(self, regs, addr, mn, ops, rel, seeds_ret):
        n = len(ops)

        def val(tok):
            mm = REG.match(tok)
            if not mm:
                return None
            k = int(mm.group(1))
            return ('c', 0) if k == 0 else regs.get(k)

        def setr(tok, v):
            mm = REG.match(tok)
            if mm and int(mm.group(1)) != 0:
                k = int(mm.group(1))
                if v is None:
                    regs.pop(k, None)
                else:
                    regs[k] = v
                    if v[0] == 'c':
                        self.const(v[1], addr)

        if mn in LOADS or mn in STORES:
            mm = MEMOP.match(ops[-1]) if n >= 2 else None
            if not mm:
                if mn in LOADS and n and mn not in FPMEM:
                    setr(ops[0], None)
                return
            disp = num(mm.group(1))
            bk = int(mm.group(2))
            bv = ('c', 0) if bk == 0 else regs.get(bk)
            width = LOADS.get(mn) or STORES[mn]
            if mn in STORES:
                value = val(ops[0]) if mn not in ('swc1', 'sdc1', 'swc2', 'sdc2') else None
                if bk == 29:
                    if value is not None:
                        regs[('m', disp)] = value
                    else:
                        regs.pop(('m', disp), None)
                    return
                self.access(bv, disp, 'w', width, addr, value)
                if value and value[0] == 'c' and bk != 29:
                    for s in self.m.sinks:
                        if s.get('any_store') and self.applies(s, self.img):
                            self.token(value[1], width, s, None)
                return
            # loads
            self.access(bv, disp, 'r', width, addr, None)
            if mn in FPMEM:
                return
            setr(ops[0], self.load_value(regs, bk, bv, disp, rel, width, mn))
            return
        if mn in NO_DEST or mn.startswith('c.') or not ops:
            return
        d = ops[0]
        v = None
        if mn == 'lui' and n == 2:
            if rel:
                v = ('s', rel[1], rel[2] + (num(ops[1]) << 16 if not rel[2] else 0))
            else:
                v = ('c', s32(num(ops[1]) << 16))
        elif mn in ('addiu', 'daddiu', 'addi', 'daddi') and n == 3:
            s = val(ops[1])
            imm = num(ops[2])
            if rel and rel[0] in ('R_MIPS_LO16', 'R_MIPS_GOT_OFST', 'R_MIPS_GPREL16', 'R_MIPS_GOT_LO16'):
                if s and s[0] == 's' and s[1] == rel[1]:
                    v = ('s', rel[1], s[2] + imm + rel[2])
                else:
                    v = ('s', rel[1], imm + rel[2])
            elif s and s[0] == 'c':
                v = ('c', s32(s[1] + imm) if mn in ('addiu', 'addi') else s64(s[1] + imm))
            elif s and s[0] == 'w':
                v = ('w', s[1], None if s[2] is None else s[2] + imm, s[3])
            elif s and s[0] in ('s', 'cu'):
                v = (s[0], s[1], s[2] + imm) if s[0] == 's' else ('cu', s[1] + imm)
        elif mn in ('li', 'dli') and n == 2:
            v = ('c', num(ops[1]))
        elif mn in ('ori', 'xori', 'andi') and n == 3:
            s = val(ops[1])
            imm = num(ops[2])
            if rel and mn == 'ori':
                v = ('s', rel[1], (s[2] if s and s[0] == 's' else 0) + imm + rel[2])
            elif s and s[0] == 'c':
                v = ('c', s[1] | imm if mn == 'ori' else (s[1] ^ imm if mn == 'xori' else s[1] & imm))
            elif s and s[0] == 'w' and mn == 'ori' and s[2] is not None:
                v = ('w', s[1], s[2] | imm, s[3])
            elif s and s[0] == 's' and mn == 'ori':
                v = ('s', s[1], s[2] + imm)
        elif mn in ('addu', 'daddu', 'add', 'dadd', 'or', 'xor', 'subu', 'dsubu', 'sub', 'dsub') and n == 3:
            a, c = val(ops[1]), val(ops[2])
            sub = mn in ('subu', 'dsubu', 'sub', 'dsub')
            if mn in ('or', 'addu', 'daddu') and ops[2] == '$0':
                v = a
            elif mn in ('or', 'addu', 'daddu') and ops[1] == '$0':
                v = c
            elif a and c and a[0] == 'c' and c[0] == 'c':
                if mn == 'or':
                    r = a[1] | c[1]
                elif mn == 'xor':
                    r = a[1] ^ c[1]
                elif sub:
                    r = a[1] - c[1]
                else:
                    r = a[1] + c[1]
                v = ('c', s32(r) if mn in ('addu', 'add', 'subu', 'sub') else s64(r))
            elif mn != 'xor':
                if not sub and c and c[0] == 'w' and not (a and a[0] == 'w'):
                    a, c = c, a
                elif not sub and c and c[0] in ('s', 'cu') and a and a[0] == 'c':
                    a, c = c, a
                if a and a[0] == 'w':
                    if c and c[0] == 'c' and a[2] is not None:
                        v = ('w', a[1], a[2] - c[1] if sub else (a[2] | c[1] if mn == 'or' else a[2] + c[1]), a[3])
                    elif not (c and c[0] == 'w'):
                        v = ('w', a[1], None, a[3])
                elif a and a[0] == 's' and c and c[0] == 'c' and not sub:
                    v = ('s', a[1], a[2] + c[1])
                elif a and a[0] in ('c', 'cu') and not sub and not (c and c[0] in ('w', 's')):
                    v = ('cu', a[1])
        elif mn in ('sll', 'dsll', 'dsll32', 'srl', 'dsrl', 'dsrl32', 'sra', 'dsra', 'dsra32') and n == 3:
            s = val(ops[1])
            sa = num(ops[2]) + (32 if mn.endswith('32') else 0)
            if s and s[0] == 'c':
                u = s[1] & ((1 << 64) - 1)
                if mn == 'sll':
                    v = ('c', s32(u << sa))
                elif mn.startswith('dsll'):
                    v = ('c', s64(u << sa))
                elif mn == 'srl':
                    v = ('c', s32((u & 0xffffffff) >> sa))
                elif mn.startswith('dsrl'):
                    v = ('c', s64(u >> sa))
                elif mn == 'sra':
                    v = ('c', s32(s32(u) >> sa))
                else:
                    v = ('c', s64(s64(u) >> sa))
            elif s and s[0] == 's' and mn.startswith('dsll'):
                v = s
        elif mn in ('movn', 'movz'):
            v = None
        setr(d, v)

    def load_value(self, regs, bk, bv, disp, rel, width, mn):
        info, img = self.info, self.img
        if bk == 29:
            return regs.get(('m', disp))
        # configured pointer fields and globals
        for b in self.m.bases:
            t = b['type']
            if t not in ('field', 'global') or not self.applies(b, img, self.fname):
                continue
            if b.get('loads') and mn not in b['loads']:
                continue
            if t == 'field':
                if num(b['disp']) == disp and bk not in (0, 28, 29) and not (bv and bv[0] in ('c', 's')):
                    return ('w', b['window'], num(b.get('offset', 0)), b.get('label', 'field +%d' % disp))
            else:
                g = None
                if bv and bv[0] == 's':
                    g = (bv[1], bv[2] + disp)
                elif rel and rel[0] in ('R_MIPS_GPREL16', 'R_MIPS_LO16', 'R_MIPS_LITERAL'):
                    g = (rel[1], rel[2] + (disp if bk != 28 else 0))
                if g and g[0] == b['symbol'] and g[1] == num(b.get('disp', 0)):
                    return ('w', b['window'], num(b.get('offset', 0)), b.get('label', 'global ' + b['symbol']))
        # GOT and literal pools
        if rel:
            rt, sym, add = rel
            if rt in ('R_MIPS_CALL16', 'R_MIPS_GOT16', 'R_MIPS_GOT_DISP', 'R_MIPS_GOT_PAGE', 'R_MIPS_CALL_LO16',
                      'R_MIPS_GOT_LO16'):
                return ('s', sym, add if rt != 'R_MIPS_GOT16' else add)
            if rt in ('R_MIPS_GPREL16', 'R_MIPS_LITERAL') and sym.startswith('.'):
                w = 8 if mn == 'ld' else 4
                c = info.read_sec(sym, disp + info.gp0 + add, w) if mn in ('ld', 'lw', 'lwu') else None
                return ('c', c) if c is not None else None
            if rt == 'R_MIPS_LO16' and bv and bv[0] == 's' and sym.startswith('.'):
                c = info.read_sec(sym, bv[2] + disp, 8 if mn == 'ld' else 4) if mn in ('ld', 'lw') else None
                return ('c', c) if c is not None else None
            return None
        if bk == 28 and not info.rel:
            nm = info.got_names.get(disp)
            if nm:
                return ('s', nm, 0)
            loc = info.got_local.get(disp)
            if loc is not None:
                return ('c', loc)
            return None
        if bv and bv[0] == 'c' and not info.rel and mn in ('ld', 'lw', 'lwu'):
            c = info.read(bv[1] + disp, 8 if mn == 'ld' else 4)
            if c is not None:
                return ('c', c)
        return None


def meet(a, b):
    """The value two paths agree on: equal values, or a window base with an untraced offset."""
    if a == b:
        return a
    if a and b and a[0] == 'w' and b[0] == 'w' and a[1] == b[1]:
        return ('w', a[1], None, a[3])
    return None


def branch_target(ins):
    try:
        return int(ins[2][-1], 16)
    except (ValueError, IndexError):
        return None


def dest_keys(ins):
    addr, mn, ops, rel, sym = ins
    if mn in CALLS:
        return set(CALLER_SAVED) | {2, 3}
    if mn in STORES:
        mm = MEMOP.match(ops[-1]) if len(ops) >= 2 else None
        if mm and mm.group(2) == '29':
            return {('m', num(mm.group(1)))}
        return set()
    if is_branch(mn) or mn in NO_DEST or not ops:
        return set()
    r = REG.match(ops[0])
    return {int(r.group(1))} if r else set()


# ===================================================================== ioctl tables

def jump_table(img, elf, funcs, d):
    """Slots of a switch table the named dispatcher indexes: [(number, handler)]."""
    sym = None
    sec = elf.get_section_by_name('.symtab')
    if sec is None:
        return []
    for s in sec.iter_symbols():
        if s.name == d['function'] and s['st_info']['type'] == 'STT_FUNC':
            sym = s
    if sym is None:
        return []
    lo, hi = sym['st_value'], sym['st_value'] + sym['st_size']
    rod = elf.get_section_by_name(d.get('section', '.rodata'))
    rel = elf.get_section_by_name('.rel' + d.get('section', '.rodata'))
    if rod is None or rel is None:
        return []
    data = rod.data()
    wsz = 8 if elf.elfclass == 64 else 4
    entries = []
    for r in rel.iter_relocations():
        off = r['r_offset']
        entries.append((off, int.from_bytes(data[off:off + wsz], 'big')))
    entries.sort()
    best, run = [], []
    for off, val in entries:
        if lo <= val < hi and (not run or off == run[-1][0] + wsz):
            run.append((off, val))
        else:
            if len(run) > len(best):
                best = run
            run = [(off, val)] if lo <= val < hi else []
    if len(run) > len(best):
        best = run
    if not best:
        return []
    insns = [x for name, ins in funcs if name == d['function'] for x in ins]
    base = num(d.get('base', 0))
    if d.get('base') is None:
        for a, mn, ops, rl, sy in insns:
            if mn in ('addiu', 'daddiu') and len(ops) == 3:
                try:
                    k = num(ops[2])
                except ValueError:
                    continue
                if k <= -int(d.get('min_base', 1000)):
                    base = -k
                    break
    targets = [v for _, v in best]
    default = collections.Counter(targets).most_common(1)[0][0]
    order = sorted(set(targets))
    idx = {ins[0]: i for i, ins in enumerate(insns)}
    out = []
    for slot, tgt in enumerate(targets):
        if tgt == default:
            continue
        handler = ''
        i = idx.get(tgt)
        j = bisect.bisect_right(order, tgt)
        stop = order[j] if j < len(order) else 1 << 62
        while i is not None and i < len(insns) and insns[i][0] < stop:
            a, mn, ops, rl, sy = insns[i]
            if mn in CALLS:
                handler = rl[1] if rl else (sy or '')
                break
            i += 1
        out.append((base + slot, handler))
    return out


def pointer_table(img, elf, d):
    """Entries of a table of handler pointers in a data section: [(number, handler)]."""
    sec = elf.get_section_by_name(d['section'])
    rel = elf.get_section_by_name('.rel' + d['section']) or elf.get_section_by_name('.rela' + d['section'])
    sym = elf.get_section_by_name('.symtab')
    if not (sec and rel and sym):
        return []
    data = sec.data()
    fmap = {s['st_value']: s.name for s in sym.iter_symbols() if s['st_info']['type'] == 'STT_FUNC' and s.name}
    relocs = []
    wid = 8 if elf.elfclass == 64 else 4
    for r in rel.iter_relocations():
        s = sym.get_symbol(r['r_info_sym'])
        off = r['r_offset']
        if s.name and not s.name.startswith('.'):
            nm = s.name
        else:
            nm = fmap.get(int.from_bytes(data[off:off + wid], 'big'), '')
            if not nm:
                continue
        relocs.append((off, nm))
    prefix = d.get('prefix', '')
    if d['start'] == 'auto':
        c = [o for o, n in relocs if n.startswith(prefix)]
        if not c:
            return []
        start = min(c)
    else:
        start = num(d['start'])
    stride, base = int(d['stride']), num(d['base'])
    out = []
    for off, nm in sorted(relocs):
        if off < start or (off - start) % stride or (off - start) // stride >= int(d['count']):
            continue
        if prefix and not nm.startswith(prefix):
            continue
        out.append((base + (off - start) // stride, nm))
    return out


# ===================================================================== worker

def analyse_unit(args):
    """Symbols, register accesses, tokens and ioctls of one file in scope."""
    cfg, imgs, tmpdir = args
    model = Model(cfg)
    res = {'funcs': {}, 'abi': {}, 'kind': {}, 'tables': []}
    work = tempfile.mkdtemp(dir=tmpdir)
    try:
        for img in imgs:
            elf = None
            if img['data'][:4] == b'\x7fELF':
                try:
                    elf = elf_of(img['data'])
                except Exception as ex:
                    print('skip %s: %s' % (img['label'], ex), file=sys.stderr)
            img['elf'] = elf
            path = os.path.join(work, '%d.elf' % len(res['abi']))
            with open(path, 'wb') as f:
                f.write(img['data'])
            img['tmp'] = path
            res['abi'][img['label']] = abi_of(elf) if elf else '-'
            res['kind'][img['label']] = kind_of(img['data'], elf)
            res['funcs'][img['label']] = functions_of(img, elf, path)
        u = Unit(model, cfg, imgs).run()
        # kernel dispatch tables
        for d in cfg.get('ioctls', {}).get('dispatchers', []):
            for img in imgs:
                if img['elf'] is None or not u.applies(d, img):
                    continue
                if d.get('member') and img['member'] != d['member']:
                    continue
                rows = []
                if d['type'] == 'jump-table':
                    funcs = next((f for (i2, info, f) in u.code if i2 is img), [])
                    rows = jump_table(img, img['elf'], funcs, d)
                elif d['type'] == 'pointer-table':
                    rows = pointer_table(img, img['elf'], d)
                for number, handler in rows:
                    res['tables'].append((d['name'], number, handler, img['label'], d.get('strip', '')))
        res['mmio'] = u.out_mmio
        res['unresolved'] = dict(u.unresolved)
        res['sites'] = dict(u.sites)
        res['tokens'] = u.tokens
        res['ioctl'] = u.ioctl
    finally:
        shutil.rmtree(work, ignore_errors=True)
    for img in imgs:
        img.pop('elf', None)
        img.pop('data', None)
    return res


# ===================================================================== external tables

def fmt(s, tmp):
    return s.replace('{tmp}', tmp).replace('{root}', os.path.join(REPO, 'root'))


def read_tsv(path):
    rows, head = [], None
    for ln in open(path, encoding='utf-8', errors='replace'):
        if ln.startswith('#') or not ln.strip():
            continue
        c = ln.rstrip('\n').split('\t')
        if head is None:
            head = c
            continue
        rows.append(dict(zip(head, c)))
    return rows


def table_rows(src, tmp):
    path = os.path.join(REPO, fmt(src['file'], tmp))
    if not os.path.exists(path):
        return []
    if src.get('header', True):
        rows = read_tsv(path)
    else:
        rows = []
        for ln in open(path, encoding='utf-8', errors='replace'):
            if ln.startswith('#') or not ln.strip():
                continue
            c = ln.rstrip('\n').split('\t')
            rows.append({str(i): x for i, x in enumerate(c)})
    out = []
    for r in rows:
        if any(r.get(k) != v for k, v in src.get('where', {}).items()):
            continue
        if any(r.get(k) in v for k, v in src.get('where_not', {}).items()):
            continue
        out.append(r)
    return out


# ===================================================================== inventories

def tsv_cell(x):
    return str(x).replace('\t', ' ').replace('\n', ' ')


def write_tsv(path, table, rows):
    with open(path, 'w') as f:
        f.write('\t'.join(COLUMNS[table]) + '\n')
        for r in rows:
            f.write('\t'.join(tsv_cell(r.get(c, '')) for c in COLUMNS[table]) + '\n')


def short_list(items, k=6):
    items = sorted(items)
    s = ';'.join(items[:k])
    return s + (';+%d more' % (len(items) - k) if len(items) > k else '')


def put_status(row, st):
    row['status'], row['doc'], row['section'] = st


def window_files(cfg, win):
    for w in cfg.get('windows', []):
        if w['name'] == win:
            return w.get('docs')
        for r in w.get('regions', []):
            if r['name'] == win:
                return r.get('docs', w.get('docs'))
    return None


def window_forms(cfg, win, off):
    """The numbers a document may write for an offset: the offset, its value within the
    region, and the full physical address."""
    vals, absolute = [off], []
    for w in cfg.get('windows', []):
        regs = [r for r in w.get('regions', []) if r['name'] == win]
        if w['name'] == win or regs:
            if regs and num(regs[0]['lo']):
                vals.append(off - num(regs[0]['lo']))
            if w.get('physical') is not None:
                absolute.append(num(w['physical']) + off)
    return vals, absolute


def best_of(*sts):
    top = ('undocumented', '', '')
    for s in sts:
        if RANK[s[0]] > RANK[top[0]]:
            top = s
    return top


def context_words(cfg, key):
    return cfg.get('docs', {}).get('context', {}).get(key)


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('--config', default=os.path.join(REPO, 'scripts', 'inventory-config.json'))
    ap.add_argument('--out', default=os.path.join(REPO, 'docs', 'inventory'))
    ap.add_argument('--no-coverage', action='store_true')
    ap.add_argument('--jobs', type=int, default=min(16, os.cpu_count() or 1))
    a = ap.parse_args()
    os.chdir(REPO)
    cfg = json.load(open(a.config))
    os.makedirs(a.out, exist_ok=True)
    tmp = tempfile.mkdtemp(prefix='inventory-')
    try:
        for cmd in cfg.get('prepare', []):
            r = subprocess.run([sys.executable if c == 'python3' else fmt(c, tmp) for c in cmd],
                               capture_output=True, text=True, cwd=REPO)
            if r.returncode:
                print('prepare %s failed: %s' % (' '.join(cmd), r.stderr.strip()[-500:]), file=sys.stderr)
        build(cfg, a, tmp)
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def build(cfg, a, tmp):
    docs = DocIndex(cfg)
    imgs = scope(cfg)
    print('%d distinct images in scope (%d byte-identical copies folded)' %
          (len(imgs), sum(len(i['copies']) for i in imgs)), file=sys.stderr)
    units = collections.OrderedDict()
    for img in imgs:
        units.setdefault(img['path'], []).append(img)
    meta = {i['label']: i for i in imgs}
    jobs = [(cfg, [dict(i) for i in u], tmp) for u in units.values()]
    jobs.sort(key=lambda j: -sum(len(i['data']) for i in j[1]))
    if a.jobs > 1:
        with multiprocessing.get_context('fork').Pool(a.jobs) as pool:
            results = pool.map(analyse_unit, jobs, chunksize=1)
    else:
        results = [analyse_unit(j) for j in jobs]

    funcs, abi, kinds = {}, {}, {}
    mmio, unresolved, sites, tokens_code, ioctl_code, tables = {}, collections.Counter(), collections.Counter(), {}, {}, []
    for r in results:
        funcs.update(r['funcs'])
        abi.update(r['abi'])
        kinds.update(r['kind'])
        for k, e in r['mmio'].items():
            t = mmio.setdefault(k, {'acc': set(), 'sites': 0, 'funcs': set(), 'bins': set(), 'ev': set(), 'ex': None})
            t['acc'] |= e['acc']
            t['sites'] += e['sites']
            t['funcs'] |= e['funcs']
            t['bins'] |= e['bins']
            t['ev'] |= e['ev']
            t['ex'] = min(x for x in (t['ex'], e['ex']) if x is not None)
        unresolved.update(r['unresolved'])
        sites.update(r['sites'])
        for k, e in r['tokens'].items():
            t = tokens_code.setdefault(k, {'sites': 0, 'bins': set(), 'ex': None, 'src': set(),
                                           'known_only': e['known_only']})
            t['sites'] += e['sites']
            t['bins'] |= e['bins']
            t['src'] |= e['src']
            t['ex'] = min(x for x in (t['ex'], e['ex']) if x is not None)
        for k, e in r['ioctl'].items():
            t = ioctl_code.setdefault(k, {'roles': set(), 'funcs': set(), 'bins': set(), 'ex': None})
            t['roles'] |= e['roles']
            t['funcs'] |= e['funcs']
            t['bins'] |= e['bins']
            t['ex'] = min(x for x in (t['ex'], e['ex']) if x is not None)
        tables += r['tables']

    out = {}
    # ---------------------------------------------------------------- spec registers
    spec = []
    for src in cfg.get('spec_registers', []):
        if src['type'] == 'rows':
            for r in src['rows']:
                row = dict(zip(src.get('columns', ['table', 'page', 'window', 'offset', 'name', 'count', 'stride',
                                                   'width', 'rw']), r))
                row['spec'] = src['spec']
                row['offset'] = num(row['offset'])
                spec.append(row)
        elif src['type'] == 'table':
            for r in table_rows(src, tmp):
                c = src['columns']
                off = num(r[c['offset']])
                spec.append({'spec': src['spec'], 'table': src.get('table', ''), 'page': '',
                             'window': src['window'], 'offset': off + num(src.get('offset_bias', 0)),
                             'name': r[c['name']].strip(), 'count': 1, 'stride': 0,
                             'width': src.get('width', ''), 'rw': ''})
    spec.sort(key=lambda r: (r['spec'], r['window'], r['offset'], r['name']))
    spec_by_win = collections.defaultdict(list)
    for r in spec:
        r['span'] = max(1, int(r['count'] or 1)) * (int(r['stride'] or 0) or (8 if str(r['width']) == '64' else 4))
        spec_by_win[r['window']].append(r)

    def spec_names(win, off):
        return [r for r in spec_by_win.get(win, []) if r['offset'] <= off < r['offset'] + r['span']]

    def reg_name_status(r):
        base = r['name'].split('[')[0]
        names = {base, base.split('.')[-1], re.sub(r'\W+', '_', base)}
        return docs.by_name(*sorted(n for n in names if n and IDENT.fullmatch(n)))

    def offset_status(win, off, extra_names=()):
        vals, absolute = window_forms(cfg, win, off)
        files = window_files(cfg, win)
        hits = docs.value_hits(vals, files, context_words(cfg, 'registers') or REG_CONTEXT, absolute=absolute)
        st = docs.best(hits)
        for r in spec_names(win, off):
            st = best_of(st, reg_name_status(r))
        if extra_names:
            st = best_of(st, docs.by_name(*extra_names))
        return st

    # ---------------------------------------------------------------- mmio
    rows = []
    for (win, off), e in sorted(mmio.items()):
        names = [r['name'] for r in spec_names(win, off)]
        row = {'window': win, 'offset': '0x%x' % off, 'name': ';'.join(sorted(set(names))),
               'access': ','.join(sorted(e['acc'])), 'sites': e['sites'], 'binaries': len(e['bins']),
               'functions': short_list(e['funcs']), 'evidence': ';'.join(sorted(e['ev'])), 'example': e['ex']}
        put_status(row, offset_status(win, off))
        rows.append(row)
    out['mmio'] = rows
    reached = collections.defaultdict(list)
    for (win, off) in mmio:
        reached[win].append(off)

    rows = []
    for r in spec:
        st = best_of(reg_name_status(r), offset_status(r['window'], r['offset']))
        n = sum(1 for o in reached.get(r['window'], []) if r['offset'] <= o < r['offset'] + r['span'])
        row = {k: r[k] for k in ('spec', 'table', 'page', 'window', 'name', 'count', 'stride', 'width', 'rw')}
        row['offset'] = '0x%x' % r['offset']
        row['reached_in_code'] = n
        put_status(row, st)
        rows.append(row)
    out['spec-registers'] = rows

    # ---------------------------------------------------------------- tokens
    tk = cfg.get('tokens', {})
    toks = collections.OrderedDict()

    def tok(kind, reg, value):
        k = (kind, reg, value)
        if k not in toks:
            toks[k] = {'names': [], 'detail': [], 'src': set(), 'sites': 0, 'bins': set(), 'ex': None}
        return toks[k]

    for src in tk.get('sources', []):
        if src['type'] == 'table':
            c = src['columns']
            for r in table_rows(src, tmp):
                v = r.get(c['value'], '')
                if not re.fullmatch(r'0x[0-9a-fA-F]+|\d+', v.strip()):
                    continue
                e = tok(src.get('kind', 'token'), None, num(v))
                if c.get('name') and r.get(c['name']):
                    e['names'].append(r[c['name']].strip())
                for col, lab in sorted(c.get('detail', {}).items()):
                    if r.get(col):
                        e['detail'].append('%s=%s' % (lab, r[col]))
                e['src'].add(src['label'])
        elif src['type'] == 'header':
            for f in sorted(glob.glob(os.path.join(REPO, src['file']))):
                for ln in open(f, encoding='utf-8', errors='replace'):
                    m = re.match(src['pattern'], ln)
                    if m:
                        e = tok(src.get('kind', 'token'), None, num(m.group(2)))
                        e['names'].append(m.group(1))
                        e['src'].add(src['label'])
    known_values = {k[2] for k in toks}
    for (kind, reg, w), e in sorted(tokens_code.items(), key=lambda x: (x[0][0], -1 if x[0][1] is None else x[0][1], x[0][2])):
        if e['known_only']:
            if w not in known_values:
                continue
            kk = next(k for k in toks if k[2] == w)
            t = toks[kk]
        else:
            t = tok(kind, reg, w)
        t['src'] |= e['src']
        t['sites'] += e['sites']
        t['bins'] |= e['bins']
        t['ex'] = min(x for x in (t['ex'], e['ex']) if x is not None)
    model = Model(cfg)
    for g in tk.get('groups', []):
        members = collections.defaultdict(list)
        for (kind, reg, w), e in list(toks.items()):
            f = model.family(w) if kind == 'word' else None
            if f is not None and f['name'] == g['family']:
                members[(w >> g.get('shift', 0)) & num(g['mask'])].append(e)
        for gid in sorted(members):
            t = tok(g['kind'], None, gid)
            t['detail'] = ['words=%d' % len(members[gid])]
            for e in members[gid]:
                t['src'] |= e['src']
                t['sites'] += e['sites']
                t['bins'] |= e['bins']
                if e['ex']:
                    t['ex'] = min(x for x in (t['ex'], e['ex']) if x is not None)
    model = Model(cfg)
    rows = []
    vw = tk.get('value_width', 8)
    for (kind, reg, w), e in sorted(toks.items(), key=lambda x: (x[0][0], -1 if x[0][1] is None else x[0][1], x[0][2])):
        names = sorted(set(e['names']))
        alt = []
        for n in names:
            for p in tk.get('name_prefixes', []):
                alt.append(p + n)
        detail = list(e['detail'])
        if kind == 'word':
            f = model.family(w)
            if f:
                detail = [f['name']] + ['%s=0x%x' % (fl['name'], (w >> fl.get('shift', 0)) & num(fl['mask']))
                                        for fl in f.get('fields', [])] + detail
        st = docs.by_name(*(names + alt))
        if st[0] != 'understood':
            files = tk.get('docs')
            if reg is not None:
                keys = ['hex:%x' % reg] + ['id:' + r['name'].split('[')[0] for r in spec_names(tk.get('window', ''), reg)]
                hits = [h for h in docs.value_hits([w], files, None, absolute=())
                        if any(docs.near(h, k) for k in keys)]
                st = best_of(st, docs.best(hits))
            elif kind in tk.get('value_match', []):
                ctx = tk.get('context', {}).get(kind) or REG_CONTEXT
                st = best_of(st, docs.best(docs.value_hits([w], files, ctx)))
        row = {'kind': kind, 'value': ('0x%0' + str(tk.get('widths', {}).get(kind, vw)) + 'x') % w,
               'name': ';'.join(names), 'register': '' if reg is None else '0x%x' % reg,
               'detail': ' '.join(detail), 'sources': ','.join(sorted(e['src'])), 'sites': e['sites'],
               'binaries': len(e['bins']), 'example': e['ex'] or ''}
        put_status(row, st)
        rows.append(row)
    out['tokens'] = rows

    # ---------------------------------------------------------------- ioctls
    ic = cfg.get('ioctls', {})
    ioc = {}
    for name, number, handler, label, strip in tables:
        e = ioc.setdefault(number, {'tables': set(), 'handlers': set(), 'ev': set(), 'senders': set(),
                                    'bins': set(), 'ex': None, 'strip': set()})
        e['tables'].add(name)
        if handler:
            e['handlers'].add(handler)
        e['ev'].add('table')
        e['bins'].add(label)
        if strip:
            e['strip'].add(strip)
    for number, c in ioctl_code.items():
        e = ioc.setdefault(number, {'tables': set(), 'handlers': set(), 'ev': set(), 'senders': set(),
                                    'bins': set(), 'ex': None, 'strip': set()})
        e['ev'] |= c['roles']
        if c['roles'] & {'sent', 'constant'}:
            e['senders'] |= c['funcs']
        else:
            e['handlers'] |= c['funcs']
        e['bins'] |= c['bins']
        e['ex'] = min(x for x in (e['ex'], c['ex']) if x is not None)
    rows = []
    for number in sorted(ioc):
        e = ioc[number]
        tname = ';'.join(sorted(e['tables']))
        if not tname:
            for c in ic.get('classes', []):
                if num(c['lo']) <= number <= num(c['hi']):
                    tname = c['name']
                    break
        names = sorted(e['handlers'])
        for h in list(names):
            for s in e['strip']:
                if h.startswith(s):
                    names.append(h[len(s):])
        st = docs.by_name(*names)
        files = ic.get('docs')
        ctx = context_words(cfg, 'ioctls') or IOCTL_CONTEXT
        if number >= int(ic.get('min_decimal', 100)):
            st = best_of(st, docs.best(docs.dec_hits([number], files, ctx)))
        st = best_of(st, docs.best(docs.value_hits([number], files, ctx, absolute=())))
        row = {'number': number, 'hex': '0x%x' % number, 'table': tname, 'handler': short_list(e['handlers'], 4),
               'evidence': ','.join(sorted(e['ev'])), 'senders': short_list(e['senders'], 4),
               'binaries': len(e['bins']), 'example': e['ex'] or ''}
        put_status(row, st)
        rows.append(row)
    out['ioctls'] = rows

    # ---------------------------------------------------------------- ucode
    rows = []
    labels = {}
    for src in cfg.get('ucode', []):
        t = src['type']
        if t == 'table':
            c = src['columns']
            for r in table_rows(src, tmp):
                name = r.get(c['name'], '').strip()
                kind = src.get('kind', 'symbol')
                for pat, k in src.get('kind_by_name', {}).items():
                    if re.search(pat, name):
                        kind = k
                detail = ' '.join('%s=%s' % (d, r[d]) for d in c.get('detail', []) if r.get(d))
                rows.append({'program': src['program'], 'kind': kind, 'address': r.get(c['address'], ''),
                             'name': name, 'detail': detail, '_names': [name]})
        elif t == 'symbols':
            p = os.path.join(REPO, fmt(src['file'], tmp))
            if not os.path.exists(p):
                continue
            for ln in open(p, encoding='utf-8', errors='replace'):
                parts = ln.split()
                if len(parts) == 2 and re.fullmatch(r'(0x)?[0-9a-fA-F]+', parts[1]):
                    labels.setdefault((src['program'], int(parts[1], 16)), []).append(parts[0])
                    rows.append({'program': src['program'], 'kind': src.get('kind', 'label'), 'address': parts[1],
                                 'name': parts[0], 'detail': '', '_names': [parts[0]]})
        elif t == 'u16-table':
            p = os.path.join(REPO, fmt(src['file'], tmp))
            if not os.path.exists(p):
                continue
            d = open(p, 'rb').read()
            for k in range(min(len(d) // 2, int(src.get('limit', 1 << 30)))):
                v = struct.unpack('>H', d[2 * k:2 * k + 2])[0]
                name = labels.get((src['labels'], v), [''])[0]
                rows.append({'program': src['program'], 'kind': src.get('kind', 'dispatch slot'), 'address': str(k),
                             'name': name, 'detail': 'handler 0x%x' % v, '_names': [name]})
        elif t == 'records':
            rows += record_routines(src)
    for r in rows:
        st = docs.by_name(*[n for n in r.pop('_names', []) if n])
        rec = r.pop('_record', None)
        if rec is not None and st[0] != 'understood':
            st = best_of(st, record_status(docs, rec, cfg))
        put_status(r, st)
    out['ucode'] = rows

    # ---------------------------------------------------------------- functions and binaries
    rows = []
    brows = []
    for img in imgs:
        lab = img['label']
        g = img['group']
        fl = funcs.get(lab, {})
        for name in sorted(fl, key=lambda n: (fl[n][1], n)):
            sec, addr, size, srcs = fl[name]
            row = {'binary': lab, 'role': g['role'], 'abi': abi.get(lab, '-'), 'elf_section': sec,
                   'address': '0x%x' % addr, 'size': size or '', 'name': name, 'source': '+'.join(sorted(srcs))}
            put_status(row, docs.by_name(name))
            rows.append(row)
        base = os.path.basename(img['path'])
        st = docs.by_file(img['member'] or base, *([base] if img['member'] else []))
        unr = sum(v for (b, w), v in unresolved.items() if b == lab)
        row = {'binary': lab, 'group': g['group'], 'role': g['role'], 'kind': kinds.get(lab, 'data'),
               'abi': abi.get(lab, '-'), 'bytes': meta[lab].get('size', ''), 'sha256': img['sha'][:16],
               'copies': ';'.join(img['copies']), 'functions': len(fl), 'access_sites': sites.get(lab, 0),
               'unresolved_sites': unr}
        put_status(row, st)
        brows.append(row)
    out['functions'] = rows
    out['binaries'] = brows

    for t in TABLES:
        write_tsv(os.path.join(a.out, t + '.tsv'), t, out[t])
    # ---------------------------------------------------------------- summary
    total_unres = sum(unresolved.values())
    resolved_sites = sum(e['sites'] for e in mmio.values())
    srows = []
    for t in TABLES:
        srows.append(summary_row(t, out[t], total_unres if t == 'mmio' else ''))
        if t == 'functions':
            best = {}
            for r in out['functions']:
                if r['name'] not in best or RANK[r['status']] > RANK[best[r['name']]]:
                    best[r['name']] = r['status']
            srows.append(summary_row('functions (distinct names)', [{'status': s} for s in best.values()], ''))
    write_tsv(os.path.join(a.out, 'summary.tsv'), 'summary', srows)
    for r in srows:
        print('%-28s %7s  understood %6s (%5s%%)  located-or-better %5s%%  mentioned %5s%%  nsd %5s' %
              (r['table'], r['rows'], r['understood'], r['pct_understood'], r['pct_located_or_better'],
               r['pct_mentioned'], r['no_software_dependency']), file=sys.stderr)
    by_win = collections.Counter()
    for (b, w), v in unresolved.items():
        by_win[w] += v
    print('register access sites: %d resolved, %d unresolved (%s)' %
          (resolved_sites, total_unres, ', '.join('%s %d' % kv for kv in sorted(by_win.items()))), file=sys.stderr)
    if not a.no_coverage:
        update_coverage(cfg, srows, imgs, kinds, resolved_sites, total_unres, by_win)


REG_CONTEXT = ('register', 'offset', 'pio', 'window', 'fifo', 'port', 'status', 'flag', 'store', 'load',
               'read', 'write', 'address', 'field', 'word', 'command', 'block', 'bit', 'mask', 'interrupt',
               'dma', 'reset', 'base', 'map', 'token')
IOCTL_CONTEXT = ('ioctl',)


def record_routines(src):
    """Routines of a fixed-record microcode image: one starts at record 0, a fixed distance after
    each end-mark record and at every host entry point."""
    import importlib
    mod = importlib.import_module(src['module']) if src.get('module') else None

    def attr(k, default=None):
        v = src.get(k)
        if isinstance(v, str) and v.startswith('module.'):
            return getattr(mod, v[7:])
        return default if v is None else v
    entries = set(attr('entries', []))
    ram = attr('ram_records')
    rows = []
    seen = set()
    for img in src['images']:
        p = os.path.join(REPO, img['path'])
        if not os.path.exists(p):
            continue
        data = open(p, 'rb').read()
        h = hashlib.sha256(data).hexdigest()
        if h in seen:
            continue
        seen.add(h)
        size = int(src['record_bytes'])
        n = len(data) // size
        recs = [int.from_bytes(data[i * size:(i + 1) * size], 'big') for i in range(n)]
        ends = [i for i, w in enumerate(recs) if (w & num(src['end_mask'])) in [num(x) for x in src['end_values']]]
        ent = set()
        ins_at, ins_len = attr('insert_at'), attr('insert_len')
        for e in entries:
            if img.get('kernel_copy') and ins_at is not None and e >= ins_at:
                if e < ins_at + ins_len:
                    continue
                e -= ins_len
            ent.add(e)
        after = int(src['start_after_end'])
        starts = {0} | {i + after for i in ends if i + after < n} | {e for e in ent if e < n}
        prog = os.path.basename(p)
        for s in sorted(starts):
            k = bisect.bisect_left(ends, s)
            end = ends[k] if k < len(ends) else -1
            kind = 'host entry' if s in ent else ('image start' if s == 0 else 'follows end mark')
            detail = 'end_mark=%d records=%d' % (end, (end - s + 1) if end >= 0 else 0)
            if ram is not None:
                detail += ' beyond_ram=%s' % ('yes' if s >= ram else 'no')
            rows.append({'program': prog, 'kind': kind, 'address': str(s), 'name': '', 'detail': detail,
                         '_names': [], '_record': s})
    return rows


def record_status(docs, v, cfg):
    words = cfg.get('docs', {}).get('context', {}).get('ucode') or ('entry', 'entries', 'routine', 'record')
    return docs.best([h for h in docs.decs.get(v, []) if ctx_match(h.ctx, words)])


def summary_row(name, rows, unresolved):
    c = collections.Counter(r['status'] for r in rows)
    n = len(rows)

    def pct(x):
        return '%.1f' % (100.0 * x / n) if n else '0.0'
    nsd = c['no-software-dependency']
    return {'table': name, 'rows': n, 'understood': c['understood'], 'located': c['located'],
            'named_only': c['named-only'], 'undocumented': c['undocumented'], 'no_software_dependency': nsd,
            'pct_understood': pct(c['understood']),
            'pct_located_or_better': pct(c['understood'] + c['located'] + nsd),
            'pct_mentioned': pct(n - c['undocumented']),
            'pct_done': pct(c['understood'] + nsd), 'unresolved_sites': unresolved}


def update_coverage(cfg, srows, imgs, kind, resolved, unres, by_win):
    path = os.path.join(REPO, 'docs', 'coverage.md')
    if not os.path.exists(path):
        return
    text = open(path).read()
    elf = sum(1 for i in imgs if kind.get(i['label'], 'data') != 'data')
    lines = [MARK_BEGIN, '## Measured coverage', '',
             'Generated by `scripts/inventory.py` from %d distinct files in scope, %d of them ELF images. '
             'The rows are in [docs/inventory/](inventory/README.md), which defines every column and status. '
             'The headline is the share **understood**: an entry that states a role and hardware effect, '
             'labelled established or inferred, with a derivation. A mention alone (named only) is not '
             'understanding. A row is done when it is understood or labelled as having no software dependency.'
             % (len(imgs), elf), '',
             '| Table | Rows | % understood | % located or better | % mentioned | Understood | Located | '
             'No software dependency | Named only | Undocumented |',
             '|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|']
    for r in srows:
        link = r['table'] if r['table'] in TABLES else None
        label = '[%s](inventory/%s.tsv)' % (link, link) if link else r['table']
        lines.append('| %s | %d | %s | %s | %s | %d | %d | %d | %d | %d |' % (
            label, r['rows'], r['pct_understood'], r['pct_located_or_better'], r['pct_mentioned'],
            r['understood'], r['located'], r['no_software_dependency'], r['named_only'], r['undocumented']))
    tot = resolved + unres
    lines += ['',
              'Register access sites: %d found, %d resolved to an offset and %d (%s%%) unresolved, where the base '
              'is a known register window but the offset could not be traced.%s' % (
                  tot, resolved, unres, ('%.1f' % (100.0 * unres / tot)) if tot else '0.0',
                  (' Unresolved by window: %s.' % ', '.join('%s %d' % kv for kv in sorted(by_win.items())))
                  if by_win else ''),
              '', MARK_END]
    block = '\n'.join(lines)
    pat = re.compile(r'(<!-- inventory:(?:begin|start)[^>]*-->).*?(<!-- inventory:end -->)', re.S)
    if pat.search(text):
        text = pat.sub(lambda m: block, text, count=1)
    else:
        i = text.find('\n## ')
        text = (text[:i] + '\n\n' + block + '\n' + text[i:]) if i >= 0 else text + '\n' + block + '\n'
    open(path, 'w').write(text)


if __name__ == '__main__':
    main()
