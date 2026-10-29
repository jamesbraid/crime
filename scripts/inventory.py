#!/usr/bin/env python3
"""Measure what the in-scope binaries contain and how much of it the repository documents.

Usage (from the repository root, inside an environment with MIPS binutils,
dwarfdump and pyelftools):

    scripts/inventory.py [--spec crime=FILE --spec gbe=FILE] [--no-coverage-update]

Reads the `files` and `members` blocks of IRIX_FILES.md, finds each binary
under root/ (run scripts/populate-root first so archive members are
unpacked), and writes docs/inventory/:

  binaries.tsv       one row per scoped file or archive member
  functions.tsv      every function symbol (symtab, dynsym, DWARF or ECOFF mdebug)
  mmio.tsv           every distinct register offset in the CRIME, rendering engine,
                     GBE and MACE video windows that the code reaches
  tokens.tsv         constant words stored to rendering-engine registers
  ioctls.tsv         graphics ioctl request numbers sent or handled
  spec-registers.tsv every register in the public CRIME 1.5 and GBE specifications

Every row carries a status: `documented` (the name or number appears in a
chapter under docs/ or a header, with that file and section recorded),
`named-only` (it appears only in an index or planning file) or `undocumented`.
Method, limits and the window and base-pointer rules are in
docs/inventory/README.md and scripts/inventory-config.json.

Regenerate in the same commit as any change to a doc or header. The script
also rewrites the marked block at the top of docs/coverage.md.

--spec NAME=FILE gives a text extraction of a specification PDF
(`crime` or `gbe`); without it spec-registers.tsv keeps its register rows and
only refreshes their status.
"""
import argparse
import collections
import fnmatch
import glob
import hashlib
import json
import os
import re
import struct
import subprocess
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(REPO, 'docs', 'inventory')
CONFIG = os.path.join(REPO, 'scripts', 'inventory-config.json')

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import toolchain  # noqa: E402

# ---------------------------------------------------------------- scope


def read_blocks(name):
    text = open(os.path.join(REPO, 'IRIX_FILES.md')).read()
    out = []
    for b in re.findall(r'^```' + name + r'\s*$(.*?)^```\s*$', text, re.S | re.M):
        out += [l.strip() for l in b.splitlines() if l.strip() and not l.startswith('#')]
    return out


class Binary:
    def __init__(self, path, member, real, kind):
        self.path = path          # install path, no leading slash
        self.member = member      # archive member or ''
        self.real = real          # file to read
        self.kind = kind          # elf | data
        self.label = path + ('(' + member + ')' if member else '')


def scope():
    files = read_blocks('files')
    members = {}
    for l in read_blocks('members'):
        parts = l.split()
        members[parts[0].lstrip('/')] = set(parts[1:])
    out = []
    for f in files:
        f = f.lstrip('/')
        real = os.path.join(REPO, 'root', f)
        if not os.path.exists(real):
            print('missing under root/: ' + f, file=sys.stderr)
            continue
        if os.path.isdir(real):
            for dp, _, fn in sorted(os.walk(real)):
                for n in sorted(fn):
                    out.append(Binary(os.path.relpath(os.path.join(dp, n), os.path.join(REPO, 'root')),
                                      '', os.path.join(dp, n), kind_of(os.path.join(dp, n))))
            continue
        head = open(real, 'rb').read(8)
        if head == b'!<arch>\n':
            mdir = real + '_members'
            if not os.path.isdir(mdir):
                print('no %s: run scripts/populate-root' % mdir, file=sys.stderr)
                continue
            want = members.get(f)
            for m in sorted(os.listdir(mdir)):
                if want is None or m in want:
                    out.append(Binary(f, m, os.path.join(mdir, m), kind_of(os.path.join(mdir, m))))
        else:
            out.append(Binary(f, '', real, kind_of(real)))
    return out


def kind_of(p):
    return 'elf' if open(p, 'rb').read(4) == b'\x7fELF' else 'data'


# ---------------------------------------------------------------- symbols

def sha256(p):
    h = hashlib.sha256()
    with open(p, 'rb') as f:
        for b in iter(lambda: f.read(1 << 20), b''):
            h.update(b)
    return h.hexdigest()


def elf_functions(real):
    """Function symbols from .symtab/.dynsym, DWARF subprograms and ECOFF mdebug."""
    from elftools.elf.elffile import ELFFile
    funcs = {}   # (name, addr) -> [size, set(sources)]
    f = open(real, 'rb')
    elf = ELFFile(f)
    execsec = {i for i, s in enumerate(elf.iter_sections()) if s['sh_flags'] & 4}
    for secname, src in (('.symtab', 'symtab'), ('.dynsym', 'dynsym')):
        sec = elf.get_section_by_name(secname)
        if sec is None:
            continue
        for s in sec.iter_symbols():
            t = s['st_info']['type']
            if not s.name or s['st_shndx'] in ('SHN_UNDEF', 'SHN_ABS', 'SHN_COMMON'):
                continue
            if t == 'STT_FUNC' or (t == 'STT_NOTYPE' and s['st_shndx'] in execsec
                                   and s['st_info']['bind'] == 'STB_GLOBAL'):
                e = funcs.setdefault((s.name, s['st_value']), [s['st_size'], set()])
                e[0] = max(e[0], s['st_size'])
                e[1].add(src)
    if elf.get_section_by_name('.debug_info') is not None:
        for name, lo, hi in dwarf_subprograms(real):
            e = funcs.setdefault((name, lo), [hi - lo if hi else 0, set()])
            if hi and not e[0]:
                e[0] = hi - lo
            e[1].add('dwarf')
    md = elf.get_section_by_name('.mdebug')
    if md is not None:
        data = md.data()
        for name, addr in mdebug_procs(data, md['sh_offset'], f, elf.little_endian):
            funcs.setdefault((name, addr), [0, set()])[1].add('mdebug')
    return funcs


def dwarf_subprograms(real):
    dd = os.environ.get('DWARFDUMP', 'dwarfdump')
    try:
        txt = subprocess.run([dd, '-i', real], capture_output=True, text=True, check=False).stdout
    except FileNotFoundError:
        sys.exit('dwarfdump not found on PATH (set DWARFDUMP)')
    out = []
    cur = None
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


def mdebug_procs(data, off, f, little):
    """Procedure names and addresses from an ECOFF symbolic table (file offsets are absolute)."""
    e = '<' if little else '>'
    if len(data) < 96:
        return []
    h = struct.unpack(e + '2H23I', data[:96])
    (ipd, cbpd, isym, cbsym, ifd, cbfd, cbss) = (h[7], h[8], h[9], h[10], h[19], h[20], h[16])
    f.seek(0)
    blob = f.read()

    def u(o, n):
        return struct.unpack(e + 'I' * n, blob[o:o + 4 * n])
    out = []
    for i in range(ifd):
        fd = struct.unpack(e + '10I2H7I', blob[cbfd + 72 * i:cbfd + 72 * (i + 1)])
        # adr rss issBase cbSs isymBase csym ilineBase cline ioptBase copt, then 16-bit ipdFirst and cpd
        issbase, isymbase, ipdfirst, cpd = fd[2], fd[4], fd[10], fd[11]
        for p in range(ipdfirst, ipdfirst + cpd):
            pd = u(cbpd + 52 * p, 2)
            sym = u(cbsym + 12 * (isymbase + pd[1]), 3)
            iss, value = sym[0], sym[1]
            so = cbss + issbase + iss
            end = blob.index(b'\0', so)
            name = blob[so:end].decode('latin1')
            if name:
                out.append((name, value))
    return out


# ---------------------------------------------------------------- disassembly walk

NO_WRITE = set('''sb sh sw sd swc1 sdc1 swl swr sdl sdr sc scd swc2 sdc2 beq bne beql bnel blez bgtz blezl bgtzl
bltz bgez bltzl bgezl bltzal bgezal bc1t bc1f bc1tl bc1fl b j jr mult multu dmult dmultu div divu ddiv ddivu
mtc0 dmtc0 mtc1 dmtc1 ctc1 mthi mtlo nop sync break syscall cache teq tne tlt tltu tge tgeu tlbwi tlbwr tlbp tlbr
eret prefetch pref lwc1 ldc1 lwc2 ldc2 swl'''.split())
LOADS = {'lb': 1, 'lbu': 1, 'lh': 2, 'lhu': 2, 'lw': 4, 'lwu': 4, 'ld': 8, 'lwc1': 4, 'ldc1': 8, 'll': 4, 'lld': 8,
         'lwl': 4, 'lwr': 4, 'ldl': 8, 'ldr': 8}
STORES = {'sb': 1, 'sh': 2, 'sw': 4, 'sd': 8, 'swc1': 4, 'sdc1': 8, 'sc': 4, 'scd': 8, 'swl': 4, 'swr': 4,
          'sdl': 8, 'sdr': 8}
CALLER_SAVED = [1, 2, 3] + list(range(4, 16)) + [24, 25]
M64 = (1 << 64) - 1


def s32(v):
    v &= 0xffffffff
    return v - (1 << 32) if v & 0x80000000 else v


def disasm(real):
    cmd = [toolchain.objdump(), '-d', '-r', '-w', '-M', 'no-aliases,gpr-names=numeric', '--no-show-raw-insn', real]
    return subprocess.run(cmd, capture_output=True, text=True, check=False).stdout.splitlines()


INSN = re.compile(r'^\s*([0-9a-f]+):\t(\S+)\s*(.*)$')
FUNC = re.compile(r'^([0-9a-f]+) <(.+)>:$')
RELOC = re.compile(r'^\s+[0-9a-f]+: (R_MIPS_\w+)\s+(\S+)')
REG = re.compile(r'^\$(\d+)$')
MEM = re.compile(r'^(-?(?:0x)?[0-9a-fA-F]+)\(\$(\d+)\)$')


def num(s):
    s = s.strip()
    return int(s, 16) if s.lower().lstrip('-').startswith('0x') else int(s)


def is_branch(mn):
    return mn in ('j', 'jr', 'jal', 'jalr', 'b', 'bal') or (mn.startswith('b') and mn not in ('break',))


def branch_target(ops):
    last = ops.split(',')[-1].strip()
    try:
        return int(last, 16)
    except ValueError:
        return None


def dest_regs(mn, ops):
    if mn in STORES or mn in NO_WRITE or is_branch(mn):
        out = set()
        if mn in ('jal', 'jalr', 'bal'):
            out |= set(CALLER_SAVED) | {2, 3}
        return out
    first = ops.split(',')[0].strip()
    m = REG.match(first)
    return {int(m.group(1))} if m else set()


class Windows:
    def __init__(self, cfg):
        self.w = [(w['name'], num(w['lo']), num(w['hi'])) for w in cfg['windows']]
        self.names = [w[0] for w in self.w]

    def phys(self, a):
        """Physical address of a kernel or XKPHYS virtual constant, else None."""
        a &= M64
        hi32 = a >> 32
        if hi32 == 0xffffffff and (a & 0xe0000000) in (0x80000000, 0xa0000000):
            return a & 0x1fffffff
        if a >> 62 == 2:                       # XKPHYS
            return a & 0xffffffffff
        if hi32 == 0 and 0x10000000 <= a < 0x20000000:    # raw physical, as in standalone code
            return a
        return None

    def classify(self, a):
        p = self.phys(a)
        if p is None:
            return None
        for n, lo, hi in self.w:
            if lo <= p < hi:
                return n, p - lo
        return None


class Analyzer:
    def __init__(self, cfg):
        self.cfg = cfg
        self.win = Windows(cfg)
        self.field = cfg.get('field_pointers', [])
        self.args = cfg.get('argument_pointers', [])
        self.faddr = 0
        self.rows_mmio = collections.defaultdict(lambda: collections.Counter())
        self.mmio_ex = {}
        self.tokens = collections.defaultdict(collections.Counter)
        self.tok_ex = {}
        self.ioctls = collections.defaultdict(lambda: collections.defaultdict(set))
        self.ioctl_ex = {}
        lo, hi = cfg['ioctl']['range']
        self.ioctl_lo, self.ioctl_hi = num(lo), num(hi)
        self.handler_re = re.compile(cfg['ioctl']['handler_functions'])
        self.send_names = set(cfg['ioctl']['send_functions'])

    def got_map(self, real):
        from elftools.elf.elffile import ELFFile
        from elftools.elf.sections import SymbolTableSection
        f = open(real, 'rb')
        elf = ELFFile(f)
        dyn = elf.get_section_by_name('.dynamic')
        if dyn is None:
            return {}, None
        tags = {}
        for t in dyn.iter_tags():
            tags[t.entry.d_tag] = t.entry.d_val
        if 'DT_PLTGOT' not in tags:
            return {}, None
        gotbase = tags['DT_PLTGOT']
        local = tags.get('DT_MIPS_LOCAL_GOTNO', 0)
        gotsym = tags.get('DT_MIPS_GOTSYM', 0)
        esz = 8 if elf.elfclass == 64 else 4
        syms = [s.name for s in elf.get_section_by_name('.dynsym').iter_symbols()]
        m = {}
        for i in range(local, local + max(0, len(syms) - gotsym)):
            idx = gotsym + i - local
            if idx < len(syms):
                m[gotbase + 0x7ff0 - (gotbase + 0x7ff0) + i * esz] = syms[idx]
        return m, (gotbase, esz)

    def run(self, b):
        lines = self.lines = disasm(b.real)
        got, gotinfo = (self.got_map(b.real) if b.kind == 'elf' and not is_reloc(b.real) else ({}, None))
        func = ''
        regs = {}
        pending_call = None
        reloc_for = {}
        # Pre-index relocations by address: they follow their instruction.
        i = 0
        n = len(lines)
        recs = []
        while i < n:
            l = lines[i]
            m = FUNC.match(l)
            if m:
                recs.append(('func', m.group(2), int(m.group(1), 16)))
                i += 1
                continue
            m = INSN.match(l)
            if m:
                addr, mn = int(m.group(1), 16), m.group(2)
                field = m.group(3).split('\t')
                ops = field[0].split('<')[0].strip()
                rel = None
                if len(field) > 1:
                    r = re.match(r'\s*[0-9a-f]+: (R_MIPS_\w+)$', field[1])
                    if r:
                        rel = (r.group(1), field[2].strip() if len(field) > 2 else '')
                if rel is None and i + 1 < n:
                    r = RELOC.match(lines[i + 1])
                    if r:
                        rel = (r.group(1), r.group(2))
                        i += 1
                recs.append(('insn', addr, mn, ops, rel))
            i += 1
        # Branch targets and loop bodies, so register constants do not leak across
        # unrelated paths: a value survives a join only if every path agrees on it.
        targets = collections.defaultdict(list)     # target -> source indices (back edges included)
        written = {}
        for k, r in enumerate(recs):
            if r[0] != 'insn':
                continue
            _, addr, mn, ops, rel = r
            if is_branch(mn) and mn not in ('jr', 'jalr', 'jal'):
                tg = branch_target(ops)
                if tg is not None:
                    targets[tg].append(k)
        addr_index = {r[1]: k for k, r in enumerate(recs) if r[0] == 'insn'}
        loops = collections.defaultdict(set)          # loop head address -> registers written in the body
        for tg, srcs in targets.items():
            for k in srcs:
                if tg in addr_index and addr_index[tg] <= k:
                    for q in range(addr_index[tg], k + 1):
                        if recs[q][0] == 'insn':
                            loops[tg] |= dest_regs(recs[q][2], recs[q][3])
        snaps = collections.defaultdict(list)
        regs = {}
        func = ''
        alive = True
        pend = None          # (kind, target) applied after the delay slot
        call_after = None
        for k, r in enumerate(recs):
            if r[0] == 'func':
                func = r[1]
                self.faddr = r[2]
                regs = {}
                alive = True
                pend = None
                snaps.clear()
                for a in self.args:
                    if fnmatch.fnmatch(b.path, '*' + a['binary']) and fnmatch.fnmatch(func, a['function']):
                        regs[int(a['reg'])] = ('win', a['window'], 0)
                continue
            _, addr, mn, ops, rel = r
            if addr in targets or addr in snaps:
                cands = list(snaps.get(addr, []))
                if alive:
                    cur = dict(regs)
                    for q in loops.get(addr, ()):
                        cur.pop(q, None)
                    cands.append(cur)
                regs = {}
                if cands:
                    first = cands[0]
                    for q, v in first.items():
                        if all(c.get(q) == v for c in cands[1:]):
                            regs[q] = v
                alive = True
            elif not alive:
                regs = {}
                alive = True
            self.step(b, regs, func, addr, mn, ops, rel, got, gotinfo)
            if pend is not None:
                kind, tg, cafter, pre = pend
                pend = None
                if cafter is not None:
                    self.after_call(b, regs, func, addr, cafter)
                if tg is not None:
                    snaps[tg].append(dict(regs))
                if pre is not None:       # branch-likely: the slot runs only when the branch is taken
                    regs = pre
                if kind == 'dead':
                    alive = False
                continue
            if is_branch(mn):
                likely = mn.endswith('l') and mn not in ('jal', 'bal', 'bgezal', 'bltzal') and mn != 'jal'
                pre = dict(regs) if likely and mn not in ('bgezall', 'bltzall') else None
                if mn in ('jal', 'jalr', 'bal'):
                    callee = self.callee(mn, ops, rel, regs, got, gotinfo)
                    pend = ('call', None, (callee, regs.get(5)), None)
                elif mn in ('jr', 'j') or (mn == 'beq' and ops.replace(' ', '').startswith('$0,$0,')) \
                        or mn == 'b':
                    tg = branch_target(ops) if mn != 'jr' else None
                    pend = ('dead', tg, None, None)
                else:
                    pend = ('cond', branch_target(ops), None, pre)

    def callee(self, mn, ops, rel, regs, got, gotinfo):
        if rel and rel[0] in ('R_MIPS_26', 'R_MIPS_CALL16', 'R_MIPS_JALR'):
            return rel[1]
        if mn == 'jalr':
            rr = [x for x in ops.split(',') if REG.match(x.strip())]
            r = regs.get(int(REG.match(rr[-1].strip()).group(1)))
            if r and r[0] == 'got':
                return r[1]
        return None

    def after_call(self, b, regs, func, addr, call):
        callee, a1 = call
        if callee in self.send_names and a1 and a1[0] == 'abs':
            v = a1[1] & 0xffffffff
            if self.ioctl_lo <= v <= self.ioctl_hi:
                self.note_ioctl(v, 'sent', b, func, addr)
        for r in CALLER_SAVED:
            regs.pop(r, None)

    def note_ioctl(self, v, role, b, func, addr):
        key = '0x%x' % v
        self.ioctls[key][role].add(b.label)
        self.ioctl_ex.setdefault((key, role), '%s:%s+0x%x' % (b.label, func, addr - self.faddr))

    def step(self, b, regs, func, addr, mn, ops, rel, got, gotinfo):
        parts = [p.strip() for p in ops.split(',')] if ops else []

        def val(tok):
            m = REG.match(tok)
            if not m:
                return None
            k = int(m.group(1))
            if k == 0:
                return ('abs', 0)
            return regs.get(k)

        def setr(tok, v):
            m = REG.match(tok)
            if m and int(m.group(1)) != 0:
                if v is None:
                    regs.pop(int(m.group(1)), None)
                else:
                    regs[int(m.group(1))] = v

        if mn in LOADS or mn in STORES:
            mm = MEM.match(parts[-1]) if parts else None
            if not mm:
                return
            disp = num(mm.group(1))
            bk = int(mm.group(2))
            bv = regs.get(bk)
            rt = parts[0]
            width = LOADS.get(mn) or STORES[mn]
            rw = 'r' if mn in LOADS else 'w'
            tgt = None
            if bv and bv[0] == 'abs':
                c = self.win.classify(bv[1] + disp)
                if c:
                    tgt = (c[0], c[1], 'constant address')
            elif bv and bv[0] == 'win':
                tgt = (bv[1], bv[2] + disp, bv[3] if len(bv) > 3 else 'base pointer')
            if tgt:
                self.access(b, func, addr, tgt, width, rw, mn, rt, regs, val)
            if mn in LOADS and not mn.endswith('c1'):
                self.load_result(b, regs, rt, bv, bk, disp, rel, got, gotinfo, func)
            return
        if mn == 'lui':
            m = REG.match(parts[0])
            imm = num(parts[1])
            if rel and rel[0] in ('R_MIPS_HI16', 'R_MIPS_GOT_HI16', 'R_MIPS_GOT_DISP'):
                setr(parts[0], ('sym', rel[1], 0))
            else:
                setr(parts[0], ('abs', s32(imm << 16)))
            return
        if mn in ('ori', 'xori') and len(parts) == 3:
            s = val(parts[1])
            imm = num(parts[2])
            if s and s[0] == 'abs':
                setr(parts[0], ('abs', (s[1] | imm) if mn == 'ori' else (s[1] ^ imm)))
            elif s and s[0] in ('win', 'sym') and mn == 'ori':
                setr(parts[0], s)
            else:
                setr(parts[0], None)
            return
        if mn in ('addiu', 'daddiu', 'addi', 'daddi') and len(parts) == 3:
            s = val(parts[1])
            imm = num(parts[2])
            if rel and rel[0] in ('R_MIPS_LO16', 'R_MIPS_GOT_LO16', 'R_MIPS_GOT_OFST'):
                setr(parts[0], ('sym', rel[1], 0))
            elif s and s[0] == 'abs':
                v = s[1] + imm
                setr(parts[0], ('abs', s32(v) if mn in ('addiu', 'addi') else v))
            elif s and s[0] == 'win':
                setr(parts[0], ('win', s[1], s[2] + imm) + tuple(s[3:]))
            elif s and s[0] == 'sym':
                setr(parts[0], ('sym', s[1], s[2] + imm))
            else:
                setr(parts[0], None)
            return
        if mn in ('addu', 'daddu', 'or') and len(parts) == 3:
            a, c = val(parts[1]), val(parts[2])
            if a and c and a[0] == 'abs' and c[0] == 'abs':
                v = (a[1] + c[1]) if mn != 'or' else (a[1] | c[1])
                setr(parts[0], ('abs', s32(v) if mn == 'addu' else v))
            elif a and a[0] in ('win', 'sym') and c and c[0] == 'abs':
                setr(parts[0], (a[0], a[1], a[2] + c[1]) + tuple(a[3:]))
            elif c and c[0] in ('win', 'sym') and a and a[0] == 'abs':
                setr(parts[0], (c[0], c[1], c[2] + a[1]) + tuple(c[3:]))
            else:
                setr(parts[0], None)
            return
        if mn in ('sll', 'dsll', 'dsll32') and len(parts) == 3:
            s = val(parts[1])
            sh = num(parts[2]) + (32 if mn == 'dsll32' else 0)
            if s and s[0] == 'abs':
                v = (s[1] << sh) & M64
                setr(parts[0], ('abs', s32(v) if mn == 'sll' else (v - (1 << 64) if v >> 63 else v)))
            else:
                setr(parts[0], None)
            return
        if mn in ('jal', 'jalr', 'jr', 'j', 'bal'):
            return
        if mn in NO_WRITE or mn.startswith('b') or mn.startswith('c.'):
            return
        if parts:
            setr(parts[0], None)

    def load_result(self, b, regs, rt, bv, bk, disp, rel, got, gotinfo, func):
        m = REG.match(rt)
        if not m:
            return
        k = int(m.group(1))
        if k == 0:
            return
        # Hardware pointer fields configured by the repository's own findings.
        for fp in self.field:
            if not fnmatch.fnmatch(b.path, '*' + fp['binary']):
                continue
            if 'global' in fp:
                gname = None
                if bv and bv[0] == 'sym':
                    gname, goff = bv[1], bv[2] + disp
                elif bk == 28 and rel and rel[0] in ('R_MIPS_GPREL16', 'R_MIPS_LITERAL'):
                    gname, goff = rel[1], disp
                if gname == fp['global'] and goff == num(fp['disp']):
                    regs[k] = ('win', fp['window'], 0, 'pointer from ' + fp['global'])
                    return
            elif 'disp' in fp and num(fp['disp']) == disp and not (bv and bv[0] == 'abs'):
                regs[k] = ('win', fp['window'], 0, 'pointer field +%d' % disp)
                return
        if bk == 28 and gotinfo and got is not None:
            gotbase, esz = gotinfo
            idx_off = disp + 0x7ff0
            name = got.get(idx_off)
            if name:
                regs[k] = ('got', name)
                return
        if rel and rel[0] in ('R_MIPS_CALL16', 'R_MIPS_GOT16') and bk == 28:
            regs[k] = ('got', rel[1])
            return
        regs.pop(k, None)

    def access(self, b, func, addr, tgt, width, rw, mn, rt, regs, val):
        window, off, how = tgt
        if off < 0 or off > 0xffffff:
            return
        # The start alias (+0x800 on a pixel-pipe or transfer-engine register) commits a primitive.
        alias = 0
        if window == 'RE' and 0x2800 <= off < 0x4000 and (off & 0x800):
            off &= ~0x800
            alias = 1
        key = (window, off)
        c = self.rows_mmio[key]
        c['r' if rw == 'r' else 'w'] += 1
        c['alias'] += alias
        c['w%d' % width] += 1
        c['how:' + how] += 1
        c['bin:' + b.label] += 1
        self.mmio_ex.setdefault(key, '%s:%s+0x%x' % (b.label, func, addr - self.faddr))
        if rw == 'w' and window == 'RE' and 0x2000 <= off < 0x4000:
            v = val(rt)
            if v and v[0] == 'abs':
                tk = (off, v[1] & (0xffffffff if width <= 4 else M64))
                self.tokens[tk]['n'] += 1
                self.tokens[tk]['bin:' + b.label] += 1
                self.tokens[tk]['w%d' % width] += 1
                self.tokens[tk]['alias'] += alias
                self.tok_ex.setdefault(tk, '%s:%s+0x%x' % (b.label, func, addr - self.faddr))

    def constants_in_handlers(self, b, lines):
        """Request numbers a kernel dispatcher materialises. The kernel dispatches with a binary search of
        compare-immediate boundaries and equality tests against loaded constants: a loaded constant is a
        'handled' request, a compare boundary is recorded as 'boundary' (a case sits on one side of it)."""
        func = ''
        for l in lines:
            m = FUNC.match(l)
            if m:
                func = m.group(2)
                self.faddr = int(m.group(1), 16)
                continue
            if not self.handler_re.search(func or ''):
                continue
            m = INSN.match(l)
            if not m:
                continue
            mn = m.group(2)
            ops = m.group(3).split('\t')[0].split('<')[0].strip()
            parts = [p.strip() for p in ops.split(',')]
            if len(parts) != 3:
                continue
            role = None
            if mn in ('addiu', 'daddiu', 'ori') and parts[1] == '$0':
                role = 'handled'
            elif mn in ('sltiu', 'slti'):
                role = 'boundary'
            if role is None:
                continue
            try:
                v = num(parts[2]) & 0xffff
            except ValueError:
                continue
            if self.ioctl_lo <= v <= self.ioctl_hi:
                self.note_ioctl(v, role, b, func, int(m.group(1), 16))


def is_reloc(real):
    with open(real, 'rb') as f:
        h = f.read(18)
    return len(h) >= 18 and h[16:18] in (b'\x00\x01', b'\x01\x00')


# ---------------------------------------------------------------- documentation index

INDEX_FILES = {'docs/coverage.md', 'docs/captures.md', 'AGENTS.md', 'README.md', 'IRIX_FILES.md'}


class DocIndex:
    """Token -> where the repository says something about it."""

    def __init__(self, cfg):
        self.tok = collections.defaultdict(list)     # token -> [(file, line, section, indexfile)]
        self.files = []
        pats = cfg['documentation']['chapters'] + cfg['documentation']['headers']
        seen = set()
        for pat in pats:
            for p in sorted(glob.glob(os.path.join(REPO, pat))):
                rel = os.path.relpath(p, REPO)
                if rel in seen or rel.startswith('docs/inventory'):
                    continue
                seen.add(rel)
                self.add(rel)
        for rel in sorted(INDEX_FILES):
            if rel not in seen and os.path.exists(os.path.join(REPO, rel)):
                seen.add(rel)
                self.add(rel)

    def add(self, rel):
        idx = rel in INDEX_FILES
        section = rel
        is_h = rel.endswith('.h')
        for n, line in enumerate(open(os.path.join(REPO, rel), errors='replace'), 1):
            if is_h:
                m = re.match(r'\s*/\*+\s*[-=]{2,}\s*(.*?)\s*[-=]{2,}', line)
                if m and m.group(1):
                    section = m.group(1)
                m = re.match(r'#define (\w+)\s+\(?(0[xX][0-9a-fA-F]+)', line)
                if m:
                    self.tok['def:' + '%x' % int(m.group(2), 16)].append((rel, n, section, idx))
                text = line
            else:
                m = re.match(r'(#+)\s+(.*)', line)
                if m:
                    section = m.group(2).strip()
                # Names count in chapters only inside code spans, so ordinary words do not match.
                text = ' '.join(re.findall(r'`([^`]*)`', line))
                for row in re.findall(r'^\|(.*)\|\s*$', line):
                    for cell in row.split('|')[:2]:
                        text += ' ' + cell
            for t in set(re.findall(r'[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)*', text)):
                self.tok[t].append((rel, n, section, idx))
            for pm, t in set(re.findall(r'(\+?)0[xX]([0-9a-fA-F]+)', line)):
                v = '%x' % int(t, 16)
                self.tok['hex:' + v].append((rel, n, section, idx))
                if pm:
                    self.tok['plus:' + v].append((rel, n, section, idx))

    def status(self, token, files=None):
        """('documented'|'named-only'|'undocumented', 'file#section' or '')."""
        hits = self.tok.get(token, [])
        if files is not None:
            hits = [h for h in hits if any(fnmatch.fnmatch(h[0], f) for f in files)]
        real = [h for h in hits if not h[3]]
        if real:
            return 'documented', refs(real)
        if hits:
            return 'named-only', refs(hits)
        return 'undocumented', ''


def hexkey(t):
    return 'hex:' + ('%x' % int(t, 16))


def refs(hits):
    seen = []
    for h in hits:
        r = '%s#%s' % (h[0], h[2])
        if r not in seen:
            seen.append(r)
        if len(seen) == 2:
            break
    return '; '.join(seen)


# ---------------------------------------------------------------- spec registers

def parse_crime_spec(txt):
    rows = []
    lines = txt.splitlines()
    page = 0
    table = None
    group = None
    TBL = {'Table  5-7': ('cpu', '0x14000000', 'abs'), 'Table  6-12': ('mc', '0x14000000', 'abs'),
           'Table  7-1 ': ('ib', '0x15000000', 'rel'), 'Table  7-2 ': ('tlb', '0x15001000', 'rel'),
           'Table  7-3 ': ('pp', '0x15002000', 'rel'), 'Table  7-15': ('mte', '0x15003000', 'rel')}
    pend = None
    for i, l in enumerate(lines):
        m = re.match(r'=====PAGE (\d+)=====', l)
        if m:
            page = int(m.group(1))
            continue
        hit = [k for k in TBL if l.startswith(k) and 'Table' in l and '. .' not in l]
        if hit:
            table = hit[0]
            group, base, mode = TBL[table]
            tname = table.split()[1]
            continue
        if re.match(r'^\S', l) and not l.startswith('Table') and not l.startswith('====='):
            if not re.match(r'^\s', l):
                pass
        if table is None:
            continue
        if re.match(r'^\s*(CRIME 1\.5 SPEC|6/2/97|SiliconGraphics|Computer Systems|\s*$)', l) or 'PROPRIETARY' in l:
            continue
        if re.match(r'^\s*\d+\.\d+\.\d+(\.\d+)*\s+[A-Z]', l):
            table = None       # a new section heading ends the tables
            continue
        if mode == 'abs':
            m = re.match(r'^\s*([0-9a-f]{4}) ([0-9a-f]{4})\s+(.+?)\s*$', l)
            if m:
                a = int(m.group(1) + m.group(2), 16)
                nm = m.group(3).strip()
                if 'Base Address' in nm:
                    continue     # pointers to the register tables, not registers
                rows.append(dict(spec='CRIME 1.5', table=table.split()[1], page=page, group=group,
                                 offset=a - 0x14000000, absolute=a,
                                 name=nm, count=1, stride=0, width=64, rw=''))
            continue
        m = re.match(r'^\s*(0x[0-9a-fA-F]+)\s+(.*)$', l)
        if m:
            off = int(m.group(1), 16)
            rest = m.group(2)
            nm = re.match(r'^([A-Za-z][\w.\[\]]*)\s+(\d+)\s+(?:(NG|G)\s+)?(R/W|W|R)\b', rest)
            if nm:
                rows.append(row_rel(group, base, table, page, off, nm.group(1), int(nm.group(2)), nm.group(4)))
                pend = None
            else:
                nm = re.match(r'^(\d+)\s+(?:(NG|G)\s+)?(R/W|W|R)\b', rest)
                if nm:
                    pend = (off, int(nm.group(1)), nm.group(3))
            continue
        if pend:
            nm = re.match(r'^\s+([A-Za-z][\w.\[\]]*)\b', l)
            if nm:
                rows.append(row_rel(group, base, table, page, pend[0], nm.group(1), pend[1], pend[2]))
                pend = None
    return rows


def row_rel(group, base, table, page, off, name, width, rw):
    name = name.rstrip('.')     # the specification cuts one name at its dot
    cnt = 1
    m = re.search(r'\[(\d+)\]$', name)
    if m:
        cnt = int(m.group(1))
    # Arrays of 64-bit entries span count*8 bytes; scalar rows are single registers.
    stride = 8 if (cnt > 1 and width == 64) else (4 if cnt > 1 else 0)
    return dict(spec='CRIME 1.5', table=table.split()[1], page=page, group=group,
                offset=int(base, 16) + off - 0x15000000,
                absolute=int(base, 16) + off, name=name, count=cnt, stride=stride, width=width, rw=rw)


def parse_gbe_spec(txt):
    rows = []
    page = 0
    # The section 3.1 memory map is the reference; one register heading in 3.2 has a mistyped address.
    memmap = {}
    for l in txt.splitlines():
        m = re.match(r'^\s*([A-Za-z_]+)\[(\d+)\.\.(\d+)\]\s+0x0*([0-9A-Fa-f]+)\s', l)
        if m:
            memmap[m.group(1)] = int(m.group(4), 16)
    for l in txt.splitlines():
        m = re.match(r'=====PAGE (\d+)=====', l)
        if m:
            page = int(m.group(1))
            continue
        m = re.match(r'^([A-Za-z][A-Za-z0-9_]*)(\[(\d+)\.\.(\d+)\])?: *0x0*([0-9a-fA-F]{5,6})(?: - 0x0*([0-9a-fA-F]+))?', l)
        if not m:
            continue
        name, _, lo, hi, a, a2 = m.groups()
        off = int(a, 16)
        off = memmap.get(name, off) if lo is not None else off
        cnt = (int(hi) - int(lo) + 1) if lo is not None else 1
        rows.append(dict(spec='GBE rev 1.1', table='3.2', page=page, group='gbe', offset=off,
                         absolute=0x16000000 + off, name=name + ('[%s]' % cnt if cnt > 1 else ''),
                         count=cnt, stride=4 if cnt > 1 else 0, width=32, rw='R/W'))
    return rows


def read_tsv(path):
    if not os.path.exists(path):
        return [], []
    with open(path) as f:
        head = f.readline().rstrip('\n').split('\t')
        rows = [dict(zip(head, l.rstrip('\n').split('\t'))) for l in f if l.strip()]
    return head, rows


def write_tsv(path, head, rows):
    with open(path, 'w') as f:
        f.write('\t'.join(head) + '\n')
        for r in rows:
            f.write('\t'.join(str(r.get(h, '')) for h in head) + '\n')


def spec_rows(args, cfg):
    path = os.path.join(OUT, 'spec-registers.tsv')
    new = []
    for s in args.spec or []:
        k, v = s.split('=', 1)
        txt = open(v).read()
        new += parse_crime_spec(txt) if k == 'crime' else parse_gbe_spec(txt)
    if new:
        return sorted(new, key=lambda r: (r['spec'], r['group'], r['offset'], r['name']))
    _, rows = read_tsv(path)
    out = []
    for r in rows:
        r['offset'] = int(r['offset'], 16)
        r['absolute'] = int(r['absolute'], 16)
        r['count'] = int(r['count'])
        r['stride'] = int(r['stride'])
        r['width'] = int(r['width'])
        r['page'] = int(r['page'])
        out.append(r)
    return out


def offset_forms(window, off):
    forms = {hexkey('0x%x' % off)}
    return forms


# ---------------------------------------------------------------- main

def pct(a, b):
    return '%.1f' % (100.0 * a / b) if b else 'n/a'


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('--spec', action='append', help='NAME=FILE text of a specification (crime or gbe)')
    ap.add_argument('--no-coverage-update', action='store_true')
    args = ap.parse_args()
    cfg = json.load(open(CONFIG))
    os.makedirs(OUT, exist_ok=True)
    docs = DocIndex(cfg)
    bins = scope()
    an = Analyzer(cfg)

    # binaries and functions
    brow, frows = [], []
    for b in bins:
        nf = 0
        if b.kind == 'elf':
            funcs = elf_functions(b.real)
            for (name, addr), (size, srcs) in sorted(funcs.items(), key=lambda x: (x[0][1], x[0][0])):
                st, ref = docs.status(name)
                frows.append(dict(binary=b.path, member=b.member, function=name, address='0x%x' % addr,
                                  size=size or '', source='+'.join(sorted(srcs)), status=st, doc=ref))
            nf = len(funcs)
            an.run(b)
            an.constants_in_handlers(b, an.lines)
        brow.append(dict(binary=b.path, member=b.member, kind=b.kind, size=os.path.getsize(b.real),
                         sha256=sha256(b.real), functions=nf))

    # mmio
    spec = spec_rows(args, cfg)
    wfiles = cfg['documentation']['window_files']
    specname_doc = {}
    for r in spec:
        base = r['name'].split('[')[0]
        specname_doc[(r['spec'], r['group'], r['offset'], r['name'])] = docs.status(base)
    mrows = []
    for (window, off), c in sorted(an.rows_mmio.items()):
        st, ref = offset_status(docs, window, off, wfiles.get(window), cfg)
        why = 'offset'
        if st != 'documented':
            # An offset inside a specification register whose name the repository documents is documented too.
            for r in spec:
                if spec_window(r) != window:
                    continue
                span = r['count'] * (r['stride'] or 4) if r['count'] > 1 else (8 if r['width'] == 64 else 4)
                if r['offset'] <= off < r['offset'] + span:
                    s2 = specname_doc[(r['spec'], r['group'], r['offset'], r['name'])]
                    if s2[0] == 'documented':
                        st, ref, why = 'documented', s2[1], 'register ' + r['name']
                    break
        bl = sorted(k[4:] for k in c if k.startswith('bin:'))
        mrows.append(dict(window=window, offset='0x%x' % off, reads=c['r'], writes=c['w'], via_start_alias=c['alias'],
                          widths='/'.join(str(w) for w in (1, 2, 4, 8) if c['w%d' % w]),
                          evidence='; '.join(sorted(k[4:] for k in c if k.startswith('how:'))),
                          binaries=len(bl), first_binary=bl[0], example=an.mmio_ex[(window, off)],
                          status=st, matched_by=why if st == 'documented' else '', doc=ref))
    # tokens
    trows = []
    for (off, v), c in sorted(an.tokens.items()):
        # A word is documented when its number shares a line or header block with the register's offset or name.
        st, ref = token_status(docs, wfiles.get('RE'), off, v, spec)
        bl = sorted(k[4:] for k in c if k.startswith('bin:'))
        trows.append(dict(register='0x%x' % off, value='0x%x' % v, stores=c['n'], via_start_alias=c['alias'],
                          binaries=len(bl), first_binary=bl[0], example=an.tok_ex[(off, v)], status=st, doc=ref))
    # ioctls
    irows = []
    for key in sorted(an.ioctls, key=lambda k: int(k, 16)):
        d = an.ioctls[key]
        st, ref = docs.status(hexkey(key), cfg['documentation']['ioctl_files'])
        role = 'handled' if d.get('handled') else 'boundary'
        irows.append(dict(request=key, handled_by=';'.join(sorted(d.get(role, []))),
                          kernel_evidence=role if d.get(role) else '',
                          sent_by=';'.join(sorted(d.get('sent', []))),
                          example_handler=an.ioctl_ex.get((key, role), ''),
                          example_sender=an.ioctl_ex.get((key, 'sent'), ''), status=st, doc=ref))
    # spec registers: status plus how often the code reaches them
    seen = collections.defaultdict(int)
    for r in mrows:
        seen[(r['window'], int(r['offset'], 16))] += 1
    srows = []
    for r in spec:
        base = r['name'].split('[')[0]
        nst, nref = specname_doc[(r['spec'], r['group'], r['offset'], r['name'])]
        hst, href = offset_status(docs, spec_window(r), r['offset'], wfiles.get(spec_window(r)), cfg)
        if nst == 'documented':
            st, ref, ev = 'documented', nref, 'name'
        elif hst == 'documented':
            st, ref, ev = 'documented', href, 'offset'
        elif 'named-only' in (nst, hst):
            st, ref, ev = 'named-only', nref if nst != 'undocumented' else href, ''
        else:
            st, ref, ev = 'undocumented', '', ''
        win = spec_window(r)
        span = r['count'] * (r['stride'] or 4) if r['count'] > 1 else (8 if r['width'] == 64 else 4)
        reached = sum(1 for (w, o) in seen if w == win and r['offset'] <= o < r['offset'] + span)
        srows.append(dict(spec=r['spec'], table=r['table'], page=r['page'], group=r['group'],
                          offset='0x%x' % r['offset'], absolute='0x%08x' % r['absolute'], name=r['name'],
                          count=r['count'], stride=r['stride'], width=r['width'], rw=r['rw'],
                          reached_in_code=reached, status=st, matched_by=ev, doc=ref))

    write_tsv(os.path.join(OUT, 'binaries.tsv'), ['binary', 'member', 'kind', 'size', 'sha256', 'functions'], brow)
    write_tsv(os.path.join(OUT, 'functions.tsv'),
              ['binary', 'member', 'function', 'address', 'size', 'source', 'status', 'doc'], frows)
    write_tsv(os.path.join(OUT, 'mmio.tsv'),
              ['window', 'offset', 'reads', 'writes', 'via_start_alias', 'widths', 'evidence', 'binaries',
               'first_binary', 'example', 'status', 'matched_by', 'doc'], mrows)
    write_tsv(os.path.join(OUT, 'tokens.tsv'),
              ['register', 'value', 'stores', 'via_start_alias', 'binaries', 'first_binary', 'example', 'status', 'doc'], trows)
    write_tsv(os.path.join(OUT, 'ioctls.tsv'),
              ['request', 'handled_by', 'kernel_evidence', 'sent_by', 'example_handler', 'example_sender', 'status', 'doc'], irows)
    write_tsv(os.path.join(OUT, 'spec-registers.tsv'),
              ['spec', 'table', 'page', 'group', 'offset', 'absolute', 'name', 'count', 'stride', 'width', 'rw',
               'reached_in_code', 'status', 'matched_by', 'doc'], srows)

    tables = [('functions', frows), ('mmio', mrows), ('tokens', trows), ('ioctls', irows), ('spec-registers', srows)]
    summ = []
    for name, rows in tables:
        c = collections.Counter(r['status'] for r in rows)
        summ.append((name, len(rows), c['documented'], c['named-only'], c['undocumented']))
    print('%-16s %7s %10s %7s %7s %8s' % ('inventory', 'rows', 'documented', 'named', 'undoc', 'percent'))
    for name, n, d, nn, u in summ:
        print('%-16s %7d %10d %7d %7d %7s%%' % (name, n, d, nn, u, pct(d, n)))
    names = {r['function'] for r in frows}
    dnames = {r['function'] for r in frows if r['status'] == 'documented'}
    print('binaries: %d (%d ELF); distinct function names %d, documented %d (%s%%)'
          % (len(brow), sum(1 for b in brow if b['kind'] == 'elf'), len(names), len(dnames), pct(len(dnames), len(names))))
    if not args.no_coverage_update:
        update_coverage(summ, brow, (len(names), len(dnames)))


def offset_status(docs, window, off, files, cfg, headers_only=False):
    """A register offset counts as documented when a header defines it, a chapter writes it as `+0x...`,
    or a chapter or header writes the full address. Bare small numbers prove nothing and are ignored."""
    v = '%x' % off
    keys = ['def:' + v]
    if not headers_only:
        keys.append('plus:' + v)
    for w in cfg['windows']:
        if w['name'] == window:
            keys.append('hex:%x' % (num(w['lo']) + off))
    for k in keys:
        hits = [h for h in docs.tok.get(k, []) if (files is None or any(fnmatch.fnmatch(h[0], f) for f in files))
                and not h[3] and (not headers_only or h[0].endswith('.h'))]
        if hits:
            return 'documented', refs(hits)
    return ('undocumented', '')


def spec_window(r):
    return {'cpu': 'CRIME', 'mc': 'CRIME', 'ib': 'RE', 'tlb': 'RE', 'pp': 'RE', 'mte': 'RE', 'gbe': 'GBE'}.get(r['group'])


def token_status(docs, files, off, v, spec):
    """Documented when value and register (offset or spec name) appear together in a doc line or header block."""
    names = {'0x%x' % off}
    for r in spec:
        if r['group'] in ('pp', 'mte', 'tlb', 'ib'):
            lo = r['absolute'] - 0x15000000
            span = r['count'] * (r['stride'] or 4) if r['count'] > 1 else (8 if r['width'] == 64 else 4)
            if lo <= off < lo + span:
                names.add(r['name'].split('[')[0])
                names.add(r['name'].split('.')[-1].split('[')[0])
    vk = hexkey('0x%x' % v)
    cand = docs.tok.get(vk, [])
    cand = [h for h in cand if files is None or any(fnmatch.fnmatch(h[0], f) for f in files)]
    best = None
    for h in cand:
        # same line as the offset or register name
        for n in names:
            key = hexkey(n) if n.startswith('0x') else n
            for h2 in docs.tok.get(key, []):
                if h2[0] == h[0] and abs(h2[1] - h[1]) <= 2:
                    if h[3]:
                        best = best or ('named-only', refs([h]))
                    else:
                        return 'documented', refs([h])
    return best or ('undocumented', '')


MARK_BEGIN = '<!-- inventory:begin -->'
MARK_END = '<!-- inventory:end -->'


def update_coverage(summ, brow, fn_names):
    path = os.path.join(REPO, 'docs', 'coverage.md')
    text = open(path).read()
    lab = {'functions': 'Functions (every function symbol in scope)', 'mmio': 'Register offsets reached (CRIME, rendering engine, GBE, MACE video)',
           'tokens': 'Rendering-engine words (constant stores to register offsets)', 'ioctls': 'Graphics ioctl requests',
           'spec-registers': 'Registers in the CRIME 1.5 and GBE specifications'}
    lines = [MARK_BEGIN, '',
             '## Measured coverage', '',
             'Counted from the binaries by `scripts/inventory.py`; the rows are in [docs/inventory/](inventory/README.md). '
             'A row is documented when a chapter under `docs/` or a header names it, named-only when only an index file does, undocumented otherwise.',
             '',
             '| Inventory | Rows | Documented | Named only | Undocumented | Percent documented |',
             '|---|---|---|---|---|---|']
    for name, n, d, nn, u in summ:
        lines.append('| [%s](inventory/%s.tsv) | %d | %d | %d | %d | %s%% |' % (lab[name], name, n, d, nn, u, pct(d, n)))
    elf = sum(1 for b in brow if b['kind'] == 'elf')
    lines += ['', 'Scope: %d files and archive members (%d ELF), listed in [binaries.tsv](inventory/binaries.tsv). '
              'The function rows repeat a function once per binary that carries it (debug and release builds, o32 and N32); '
              'by distinct name that is %d names, %d documented (%s%%).' % (len(brow), elf, fn_names[0], fn_names[1], pct(fn_names[1], fn_names[0])),
              '', MARK_END]
    block = '\n'.join(lines)
    if MARK_BEGIN in text:
        text = re.sub(re.escape(MARK_BEGIN) + r'.*?' + re.escape(MARK_END), lambda m: block, text, flags=re.S)
    else:
        marker = '## Status key'
        text = text.replace(marker, block + '\n\nThe rows below are the areas view: what each block and area has covered.\n\n' + marker, 1)
    open(path, 'w').write(text)


if __name__ == '__main__':
    main()
