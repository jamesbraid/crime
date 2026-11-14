# SGI O2 CRIME reverse engineering

This project documents the graphics of the SGI O2 (board IP32): the CRIME ASIC, which is both the
memory controller and the 2D/3D rendering engine, and GBE, the display back end. MACE and VICE are
in scope where graphics and media depend on them. The output is hardware facts as TOML, generated C
headers and notes, so emulator authors, FPGA builders and the SGI community can work from published
findings without reading the binaries. Layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4). Where this
file is silent, do what gr4 does.

The O2 has no geometry engine. libGLcore transforms, lights and clips on the CPU and feeds CRIME
finished primitives. The first configuration read is a stock-graphics O2 on IRIX 6.5.30. Other CPU
modules, chip revisions and options are separate configurations. No fact from one, from another SGI
graphics family or from an emulator fills a gap in another.

## Labels

Every fact is **established** (read in full from a published document, a capture, a shipped binary,
the public IRIX source tree cited by path, or public open-source code cited by project, revision and
file), **inferred** (a reasoned reading, with the reasoning) or **unknown**. Unlabelled means unknown.
Established needs the whole function body or table. Readings built from call lists, register-store
summaries, a sibling build or a name are inferred. An entry not yet checked against its source ends
"Unverified." and grades at most `located`. Re-read it, correct it and relabel it. Never reword or
reformat an entry to change its grade. Independent audits sample entries against the binaries, and
their measured rates are published beside the coverage figures.

## Evidence order

Take a register or behaviour fact from the highest source that states it and grade it by that source:
the public IRIX source tree (`irix-657m-src`), then shipped binaries, then public Linux, NetBSD and
OpenBSD drivers, then published manuals, then notes from other projects. The last may confirm or
contradict a fact and never supply one. A driver fact is established only once a shipped binary or a
published document confirms it. Reset values and physical reads follow the shared rules. Emulator runs
are model behaviour, never hardware evidence. Full text and the checks that enforce it:
[retools/tools/README-analysis.md](retools/tools/README-analysis.md#evidence-order).

## Evidence: software only

No hardware is available. Never plan, request or wait for a measurement on a real machine. Answer
every question from shipped binaries on any IRIX release (and any disassembly of them), the public
IRIX source tree, vendor specifications including embedded source or HDL pages, public drivers and
emulators, manuals and man pages, and published output from real machines (`hinv`, `gfxinfo`,
`irsaudit`, ide transcripts, X logs and screenshots in newsgroup and mailing-list posts). A row is not
finished while any of these still has something to read. Running shipped software under an emulator to
see which registers it touches is evidence of the driver's expectation, not of hardware behaviour.
The IRIX source tree is first-rank evidence, and reading it exposes you to vendor source.

Write findings in your own words. Never paste vendor source, HDL, comments, macro bodies or
proprietary binaries. Symbol names from a shipped binary's own tables and names in published headers
and manuals are fine.

Before calling a fact unknown, search the binaries, documents, captures, the device's diagnostics and
PROM code, and the source tree, and list those routes. If every route fails, label it "unknown: no
shipped software or published source depends on it" with the routes tried, so an emulator author can
choose a value and document the choice. Never write "needs capture".

An open question is not a stopping point. Record it in [questions/README.md](questions/README.md)
with the routes tried and the next one, then carry on. When it is answered, move the answer into the
owning header or page and delete the entry.

## Repository layout

Proprietary binaries are not committed. Copy them from your own IRIX install into the ignored `root/`
as [evidence/irix-files.md](evidence/irix-files.md) lists. The committed relative symlinks under
`software/` resolve into it. The in-scope binaries are listed in [evidence/binaries.md](evidence/binaries.md).
No release has DWARF types for this board, so recover structures from the CRIME specification, the
Linux and NetBSD drivers and the code.

- `devices/<unit>/`: `registers.toml` (the source of hardware facts, each item graded and sourced),
  an optional `registers.<rev>.toml`, `helpers.h`, the annotated C header and the generated
  `registers.md`. Change a fact in the TOML, never in a generated file.
- `generated/`: written by `retools/tools/defs/defs-gen`, never edited. After a change to `devices/`,
  run `defs-gen` then `defs-check --build`. CI runs `retools/tools/defs/ci-check` and fails when
  `generated/` is stale.
- `platforms/ip32/`, `software/<component>/`, `evidence/`, `questions/`: prose beside the facts.
  Driver structures live in `software/kernel/include/` and `software/opengl/include/`.
- `references/code/` holds public sources as submodules (Linux, NetBSD, OpenBSD, MAME, GXemul,
  OpenGL references, `irix-657m-src`). Fetch the large ones shallow. GXemul is an author's model:
  a match is a consistency check and a difference is a lead. `references/documents/` holds
  published specifications, patents and papers with checksums.
- `retools/` is the shared tooling submodule. Change tools there and move the pin here.
  `tools/config/` holds this workspace's configuration. Toolchain setup is in the
  [README](README.md#using-it).

## Working on it

The inventory is the work list. A coverage row is done when every entry in `evidence/inventory/` is
`understood` or `no-software-dependency`. The repository is finished when every table reaches done,
not when the rows look full. An entry is understood when a table row, list item, heading or header
comment whose subject it is carries a label, a role and hardware effect, and a citation specific to
the item (offset, address, callee, archive member). Mentions and lists of more than three names reach
`named-only`. More than five entries sharing one sentence pattern count as `located`, so write each
item its own sentence. A function is understood only in the binary the entry cites, plus builds with
identical code. The exact rule is in [evidence/inventory/README.md](evidence/inventory/README.md).

Open-question readers take the questions in `questions/README.md` and the rendering-engine, ioctl and
token rows. Table readers take function, register-offset and specification rows binary by binary.
Take `undocumented` rows first, then `named-only` and `located`. Do `mmio`, `ioctls`,
`spec-registers` and `tokens` before `functions`, which goes by binary, kernel objects first. Group
rows that belong together: read one function and settle every row it touches. In the same commit as
a finding:

1. Run `retools/tools/re-run python3 retools/tools/inventory.py` and commit `evidence/inventory/` and
   `evidence/coverage.md`. Never edit a `.tsv` by hand. If the script mis-detects a row, change
   `tools/config/inventory-config.json` and say why in the commit.
2. Update the affected area row in `evidence/coverage.md`.
3. Put register, field and constant facts in `devices/` and regenerate `generated/`.

Commit disassembly, decompiled C and traces as data. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps
are gitignored. Commit what you cite. Commit small and often, straight to `main`, with lowercase
component-prefixed imperative subjects (`libglcore: label the span-fill command`) and a body saying
why. When you finish a task, regenerate the inventory and pick the next entries below `understood`.
Hand off only when your area meets the definition above or you must stop. Then say in
`questions/README.md` where you stopped and what comes next.
