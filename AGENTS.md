# SGI O2 CRIME Reverse Engineering Project

This project reverse-engineers the graphics of the SGI **O2** (board IP32): the **CRIME** ASIC, which is both the system's memory controller and its 2D/3D rendering engine, and **GBE**, the display back end.
The goal is to document the hardware as C headers and notes, so that emulator authors, FPGA builders and the vintage SGI community can work from published findings.

The layout and working style follow [gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4) by Dominik Behr. Where this file is silent, do what gr4 does.

---

## 1. Board Overview

The O2 has no geometry engine. CRIME rasterizes, textures and depth-tests primitives that the host CPU has already transformed, lit and clipped, so IRIX's `libGLcore` does that work in software and feeds CRIME commands. CRIME also owns the CPU interface, the system memory controller, the interrupt controller and the aperture windows through which the CPU sees the frame and depth buffers. GBE reads the frame buffer from system memory and generates the video timing. The rest of the machine sits behind MACE (PCI, audio, serial, ROM decode), which is outside this project except where graphics depends on it. The first configuration this project reads is an O2 with stock graphics and IRIX 6.5.30; other CPU modules, chip revisions and options are separate configurations, and a fact from one does not fill a gap in another.

Facts in this file are labelled **established** (read directly from a public specification, public source file or binary, with the page, path, function or offset), **inferred** (a reasoned reading, with the reasoning) or **unknown**. Anything unlabelled is unknown. Do not fill gaps from memory, from other SGI graphics families or from other emulators.

### Established from public sources

Source key: **[spec]** is the *CRIME 1.5 Specification*, revision 0.3, 2 June 1997 (public copy at `https://bukosek.si/hardware/collection/sgi-o2/o2-CRIME-spec.pdf`, SHA-256 `5420aa06a28f0a696e79512b03bf7cc9ebd5f0bbcd432ac2c79daaa9bf48c925`); page numbers are PDF pages. **[linux]** is the `linux/` submodule, **[netbsd]** is `netbsd/`, **[mame]** is `mame/`.

- CPU physical windows (established, [spec] PDF 47-52): low RAM alias at `0x00000000` (256 MiB); frame buffer aperture `0x10000000` (32 MiB); depth buffer aperture `0x12000000` (32 MiB); CRIME registers `0x14000000` (32 MiB); GBE registers `0x16000000` (16 MiB); VICE `0x17000000` (16 MiB); MACE windows from `0x18000000`; high RAM alias `0x20000000` (512 MiB); full RAM `0x40000000` (1 GiB); no-ECC RAM alias `0x80000000` (1 GiB). Mixing the low, high and full aliases of one location needs software cache maintenance. GBE DMA uses the full RAM window.
- Rendering register groups (established, [spec] PDF 187-205): they start at `0x15000000`, with translation at +`0x1000`, pixel state at +`0x2000`, memory transfer at +`0x3000` and status at +`0x4000`. A write to the start alias snapshots primitive state; operations run in order; a flush waits for RAM updates. The numeric start-alias offset `0x0800` comes from the [netbsd] headers, not from the specification, which names the alias without a number.
- Smooth colour (established, [spec] PDF 200-201): 21-bit two's-complement 9.12 RGBA steppers; fractional bits are discarded before clipping; truncated bits 8:7 equal to `10` clamp to 255 and `11` to 0.
- CPU-interface registers take 64-bit doubleword accesses only (established, [spec] PDF 113-115). Eight memory bank controls sit at +`0x208` to +`0x240`; bit 8 selects 16 Mbit or 64 Mbit SDRAM geometry (established, [spec] PDF 150, 152).
- Revisions (established, [spec] PDF 113-119, 49, 215): CRIME 1.5 reads ID `0xb1`; the draft records 1.1 as `0xa1`, earlier `0xa0`, with the CPU error-status register at `0x14000048` instead of `0x14004048` and a 36-bit rather than 40-bit CPU decode. [linux] (`arch/mips/sgi-ip32/crime.c`) uses the earlier offset. The ID of shipped silicon is **unknown** here, and the specification says its rendering chapter still needs updating for 1.1.
- GBE interrupts route to CRIME interrupt inputs 16-19 (established, [spec]). GBE reads its frame buffer from system memory in 64 KiB tiles (established, [linux] `drivers/video/fbdev/gbefb.c`).
- The rendering chapter is unfinished in the specification: translation, rasterization, texel lookup and filtering have explicit holes (PDF 187, 191, 193, 195, 202-205). The FIFO is 128 entries in the text, 64 in [netbsd]. The memory-error interrupt prose says input 20 while its table assigns memory to 21 and CPU to 20. Treat each as unknown until a binary or a published source settles it.

### Major blocks

- **CRIME rendering engine**: lines, triangles, span fills, texture and depth. Role: partly known from [spec]; texture and filtering semantics unknown.
- **MTE**: the memory transfer engine (copies, fills, transfers to and from host memory). Role: named in [spec]; semantics unknown here.
- **CRIME memory, TLB and interrupts**: the ECC memory controller, the rendering TLB and the interrupt controller as graphics uses them. Role: base registers known from [spec].
- **GBE**: the display back end, with frame buffer, overlay, cursor, colormap and timing. Role: known from [spec] and [linux]; fine details unknown.
- **libGLcore to CRIME command stream**: what the OpenGL driver writes and in what order. Role: unknown.

---

## 2. Project Binaries & Evidence

For licensing reasons proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Copy them from an authentic IRIX distribution into `root/` following [IRIX_FILES.md](IRIX_FILES.md). Disassembly, decompiled C, headers and notes derived from them are committed.

The subdirectories below contain relative symbolic links, one per file, resolving into `root/` (`scripts/populate-root` creates them from the `links` and `archives` blocks in IRIX_FILES.md). The targets were verified against IRIX 6.5.30 (O2 install and install media).

| Directory | Contents | Target in `root/` | Debug level (6.5.30) |
|---|---|---|---|
| `crime_kernel/` | `crime.a` members (`crime*.o`), `mace.o`, `gfx.o`, `rrm.o`, `gfxs/` (`gfxs.a` members) | `usr/cpu/sysgen/IP32boot/` | DWARF with lines (names, no types); `crime_busts.o` and `gfx_debug.o` have no lines |
| `libglcore/` | `libGLcore_n32.so`, `libGL_n32.so`, `libGLcore_o32.so`, `libGL_o32.so` | `usr/gfx/arch/IP32CRM32/`, `IP32CRM/` | N32: DWARF with lines (164 compile units in libGLcore); o32: `.mdebug` symbols only |
| `ddx/` | `crm.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | stripped |
| `diags/` | `gfxinit`, `ide.IP32`, `crm_vof/` (video format files) | `usr/gfx/`, `sbin/stand/`, `usr/gfx/ucode/CRM/` | stripped |

Debug information by release: no release has DWARF with types or structure members for this board (IRIX_FILES.md section 5). Names and line numbers are the most any file gives, so recover structures from the CRIME specification, the Linux and NetBSD drivers and the code.

Other public sources in this repository:

- `linux/`: `drivers/video/fbdev/gbefb.c`, `include/video/gbe.h`, `arch/mips/sgi-ip32/` (`crime.c`, `ip32-memory.c`, `ip32-dma.c`), `arch/mips/include/asm/ip32/crime.h` and `mace.h`.
- `netbsd/`: the `sgimips` port under `sys/arch/sgimips/`, in particular its CRIME and `crmfb` sources. Inferred: `crmfb` is the public driver that drives the rendering engine (copy, fill and text), so it is the main source for command encoding. Confirm the file names in the checkout.
- `mame/`: `src/mame/sgi/o2.cpp` and `crime.cpp`; a skeleton with the CRIME base registers mapped and no renderer, so a lead for register names only.
- `sgi-docs/`, `OpenGL-Registry/`, `ogl-sample/`: OpenGL semantics for what `libGLcore` implements.
- `irix-657m-src/`: a public link included for symmetry with gr4. Reading it exposes you to vendor source.

---

## 3. Deliverables: The Hardware Headers

Our primary output is a set of C header files at the repository root, one per chip or block, in the style of gr2 and gr4. **The code is the document.** Each header holds register offsets and fields, packet and token formats, state machines and constants, with a comment on every definition saying how it was derived and whether it is established, inferred or unknown.

Planned headers (`docs/coverage.md` tracks each):

1. **`CRIME.h`**: address map, CPU interface, memory controller, interrupts, ID and reset.
2. **`CRIME_RE.h`**: rendering engine registers, primitive and pixel state, FIFO, TLB, texture.
3. **`MTE.h`**: the memory transfer engine.
4. **`GBE.h`**: display back end registers, tiles, overlay, cursor, colormap, timing.

[docs/coverage.md](docs/coverage.md) is the map of what is written and what is missing, with the open problems in priority order. Prose that does not fit a header goes in `docs/` chapters.

---

## 4. Software Driver Headers

Local headers capture internal driver structures:

- `crime_kernel/include/crime_kern.h`: kernel driver structures.
- `libglcore/include/glcore_crime.h`: OpenGL driver context, software transform and lighting state, and CRIME command emission.
- `ddx/include/crime_ddx.h`: X server module structures.

---

## 5. Reverse Engineering Toolchain & Pipeline

Install these on your workstation:

- **`dwarfdump`**: build `libdwarf-code` (submodule) so that `libdwarf-code/build/src/bin/dwarfdump/dwarfdump` exists. It parses SGI MIPS DWARF-2.
- **MIPS cross binutils**: `objdump`, `readelf`, `nm`, `gcc` for a big-endian MIPS target, normally `mips-unknown-linux-gnu-`. The scripts also accept `mips64-linux-gnuabi64-` and `mips-linux-gnu-`; set `MIPS_OBJDUMP` or `MIPS_READELF` to name another.
- **`m2c`**: the assembly-to-C decompiler in the `m2c` submodule, run as `m2c/m2c.py -t mipsn32` (N32) or `-t mips` (o32, 64-bit objects).
- **`spimdisasm`**: the `spimdisasm` submodule, for object-file disassembly and symbol recovery.
- **Python 3** with `pyelftools` (the scripts import `elftools`).

Initialise only the submodules you need: `git submodule update --init m2c spimdisasm libdwarf-code`. `linux` and `netbsd` are very large; fetch them shallow (`git submodule update --init --depth 1 linux netbsd`).

Scripts (`scripts/`, run from the repository root):

- `populate-root`: create the symlinks listed in IRIX_FILES.md once `root/` is filled.
- `map_binaries.py`: catalogue every linked binary (sections, functions, DWARF compilation units) into `binaries_manifest.json`.
- `disasm_kernel.py`: disassemble the kernel `.o` objects into m2c-ready assembly under `crime_kernel/disasm/`. Unpack archives (`.a`) with `ar x` first.
- `resolve_got.py`, `clean_asm.py`: resolve `$gp`-relative GOT loads to symbol names.
- `extract_libglcore.py`: extract compilation units, types and functions from `libGLcore.so` into `libglcore/asm/` and `manifest.json`, and write `libglcore/decompile_libglcore.sh`. A binary without DWARF falls back to its symbol table.
- `extract_crime_ddx.py`: the same for an X server module, grouped by function-name prefix or by your own `ddx/groups.json`. Its default module path is a placeholder; pass the real one.
- `inventory.py`: count what the in-scope binaries contain and grade each entry understood, located, named-only, undocumented or no-software-dependency. It writes `docs/inventory/` and the measured table at the top of `docs/coverage.md`; see section 8.
- `analyze_fifo.py`, `extract_gl_tokens.py`: find accesses to a hardware address window in the assembly, and map the first FIFO word each decompiled GL function stores to that function. Both take the address window or FIFO address as arguments; none is built in. For CRIME, start from the rendering window at `0x15000000`.

The scripts descend from gr4's and carry its BSD-3 notice ([scripts/LICENSE-gr4](scripts/LICENSE-gr4)). They were copied from a sibling workspace and parameterised but have not yet been run on O2 binaries.

---

## 6. Evidence: software only, any source

No hardware is available for this work. Do not plan, request or wait for
measurements on a real machine. Every question is answered from software and
published material, and a row is not finished while either still has
something to read.

Readers may open anything:

- every shipped binary on every IRIX release, and any disassembly or
  decompilation of it;
- the IRIX source tree linked from this repository;
- vendor specifications, including any embedded source code or HDL pages;
- public drivers and emulators: Linux, NetBSD, OpenBSD, MAME and others;
- manuals, release notes and man pages;
- published output from real machines: `hinv`, `gfxinfo`, `irsaudit`, ide
  diagnostic transcripts, X server logs and screenshots in newsgroup and
  mailing-list posts, web pages, archives and forums.

Running the shipped software under an emulator, to watch which registers it
touches and what it expects back, is also software evidence. Label what it
shows as the driver's expectation, not as proof of hardware behaviour.

Write findings in your own words. Never paste vendor source, HDL or
proprietary binaries into the repository.

Findings taken from the linked IRIX source tree are committed like any
other finding: restated in your own words and cited by path, as in
`<source path>` or `<source path>`, with the release
(a release). Each chip header lists the source paths it drew on in its
opening comment. Never copy code, comments, macro bodies or file layout. Where
a 6.5.30 binary confirms the same fact, cite both.

Some facts no software reveals, such as the reset value of a register no
driver reads. When every route is exhausted, label the fact "unknown: no
shipped software or published source depends on it" and list the routes you
tried. An emulator author then chooses a value and documents the choice. Never
write "needs capture".

An open question is not a stopping point. Record it in
`docs/open-questions.md` with every route already tried and the next one to
try, then carry on with other work. When a question is answered, move it into
the owning chip header or chapter and delete the entry.

## 7. When work is finished

A coverage row is done when every inventory entry in its area
(`docs/inventory/`) is `understood` or `no-software-dependency`. `understood`
means the entry for that item carries a label (established or inferred), a role
and hardware effect, and a derivation citation (release, binary or path,
offset, callee or source path) in the same entry. Naming an item, or listing it
with others, is not enough. `no-software-dependency` is the section 6 label
"unknown: no shipped software or published source depends on it", with the
routes tried. `located` (identity, address or size, and callers or sites cited,
behaviour labelled unknown) and `named-only` are partial. The repository is
finished when every inventory table reaches done, not when the rows look full.

When you finish a task, regenerate the inventory, then pick the next entries
below `understood` and carry on. Hand off only when your assigned area meets
the definition above, or when the session ends. In that case, say in
`docs/open-questions.md` where you stopped and what comes next.


A row becomes `understood` only through an entry whose subject it is: a table row whose first column is the item, a list item or heading that starts with it, or a header comment on it. That entry carries a label, a role and hardware effect, and a citation specific to the item (its offset, address, callee, archive member or source path, not just a release). Other names in the entry count as mentions. A function is understood only in the binary the entry cites, plus any build with identical code. When more than five entries share one sentence pattern, they count at most as `located`, so read each item and write its own sentence. [docs/inventory/README.md](docs/inventory/README.md) gives the exact rule.

---

## 8. Working on this repository

Workflow: populate `root/` (IRIX_FILES.md), run `scripts/populate-root`, run `scripts/inventory.py`, pick work from the inventory, then read, write headers and docs, and regenerate the inventory.

### Picking work

The inventory is the work list. [docs/coverage.md](docs/coverage.md) shows the measured percentage for each table, and the rows themselves are in `docs/inventory/`:

- `binaries.tsv`: every file in scope, with its role and access counts.
- `functions.tsv`: every function symbol in each in-scope binary.
- `mmio.tsv`: every CRIME, rendering-engine, GBE and MACE-video offset the code reaches.
- `tokens.tsv`: constant words stored to rendering-engine registers.
- `ioctls.tsv`: graphics ioctl requests sent or handled.
- `ucode.tsv`: empty for this family, which has no microcode.
- `spec-registers.tsv`: every register in the public CRIME 1.5 and GBE specifications.
- `summary.tsv`: the counts behind the table in `docs/coverage.md`.

Take rows whose status is `undocumented` (then `named-only` and `located`), and take each to `understood`, sorted by the table you are working on. Start with `mmio.tsv`, `ioctls.tsv`, `spec-registers.tsv` and `tokens.tsv`, whose rows are few and each one is a hardware fact, and take `functions.tsv` rows by binary, kernel objects first. Group rows that belong together: read one function and settle every row it touches. A row becomes `understood` when an entry (a table row, list item, paragraph or header comment) names it and also carries a label (established or inferred), a role and hardware effect, and a derivation citation, with no more than three items named on a line; a mention or a list of names reaches `named-only` at most. `scripts/inventory.py` finds that by search, so use the exact register name, `+0xOFFSET` form or function name in backticks. Read `docs/inventory/README.md` for how rows are detected and what the detection cannot see.

In the same commit as any finding:

1. Run `scripts/inventory.py` (inside the toolchain environment; see section 5) and commit the regenerated `docs/inventory/` and `docs/coverage.md`.
2. Update the affected area row in `docs/coverage.md`.

Never edit a `.tsv` by hand; fix the doc or the script instead. If the script mis-detects a row, change `scripts/inventory-config.json` and say why in the commit. `scripts/inventory.py` is shared, byte for byte, with the other graphics workspaces; what belongs to this family is in `scripts/inventory-config.json`.

Roles:

- **Opus readers** take the open questions in `docs/open-questions.md` and take the rows of the rendering-engine, ioctl and token tables to `understood`.
- **Sonnet readers** take the rows of the function, register-offset and specification tables below `understood` to `understood`, a binary at a time, `undocumented` first.

Output rules:

- Findings go in chip headers at the repository root plus `docs/` chapters, written in your own words.
- Label every fact established, inferred or unknown, with its derivation: binary and release, function or offset, or the source path.
- Update `docs/coverage.md` in the same commit as the finding.
- Commit disassembly, decompiled C and traces you produce as data; keep the proprietary binaries in `root/`. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.
- Commit what you cite: findings may rest on any source section 6 allows, named in the finding.

Downstream emulator projects consume the headers and docs; they should not need to read the binaries.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`libglcore: label the span-fill command`); bodies say why. Do not wait to batch work.
