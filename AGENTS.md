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
- The rendering chapter is unfinished in the specification: translation, rasterization, texel lookup and filtering have explicit holes (PDF 187, 191, 193, 195, 202-205). The FIFO is 128 entries in the text, 64 in [netbsd]. The memory-error interrupt prose says input 20 while its table assigns memory to 21 and CPU to 20. Treat each as unknown until a binary or capture settles it.
- Do not use the specification's embedded source-code and HDL pages as a source for this project's findings.

### Major blocks

- **CRIME rendering engine**: lines, triangles, span fills, texture and depth. Role: partly known from [spec]; texture and filtering semantics unknown.
- **MTE**: the memory transfer engine (copies, fills, transfers to and from host memory). Role: named in [spec]; semantics unknown here.
- **CRIME memory, TLB and interrupts**: the ECC memory controller, the rendering TLB and the interrupt controller as graphics uses them. Role: base registers known from [spec].
- **GBE**: the display back end, with frame buffer, overlay, cursor, colormap and timing. Role: known from [spec] and [linux]; fine details unknown.
- **libGLcore to CRIME command stream**: what the OpenGL driver writes and in what order. Role: unknown.

---

## 2. Project Binaries & Evidence

For licensing reasons proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Copy them from an authentic IRIX distribution into `root/` following [IRIX_FILES.md](IRIX_FILES.md). Disassembly, decompiled C, headers and notes derived from them are committed.

The subdirectories below contain relative symbolic links resolving into `root/` (`scripts/populate-root` creates them from the `links` block in IRIX_FILES.md). **No O2 install has been inspected yet, so the targets and the DWARF status are unverified.**

| Directory | Contents | Target in `root/` | DWARF status |
|---|---|---|---|
| `crime_kernel/` | kernel graphics objects for IP32 | `usr/cpu/sysgen/IP32boot/` | unverified |
| `libglcore/` | O2 `libGLcore.so` per ABI, `libGL.so` | `usr/gfx/arch/` | unverified |
| `ddx/` | the O2 X server module, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | unverified |
| `diags/` | graphics diagnostics and state-dump tools | `usr/gfx/`, `usr/diags/` | unverified |

Fill the DWARF column from `scripts/map_binaries.py` once the files exist. In the sibling InfiniteReality workspace the 6.5.30 DWARF was thin (function names, source file names and line numbers, no types), so expect to recover structures from code; 6.5.0 binaries carry full debug info.

Other public sources in this repository:

- `linux/`: `drivers/video/fbdev/gbefb.c`, `include/video/gbe.h`, `arch/mips/sgi-ip32/` (`crime.c`, `ip32-memory.c`, `ip32-dma.c`), `arch/mips/include/asm/ip32/crime.h` and `mace.h`.
- `netbsd/`: the `sgimips` port under `sys/arch/sgimips/`, in particular its CRIME and `crmfb` sources. Inferred: `crmfb` is the public driver that drives the rendering engine (copy, fill and text), so it is the main source for command encoding. Confirm the file names in the checkout.
- `mame/`: `src/mame/sgi/o2.cpp` and `crime.cpp`; a skeleton with the CRIME base registers mapped and no renderer, so a lead for register names only.
- `sgi-docs/`, `OpenGL-Registry/`, `ogl-sample/`: OpenGL semantics for what `libGLcore` implements.
- `irix-657m-src/`: a public link included for symmetry with gr4. Reading it exposes you to vendor source.

---

## 3. Deliverables: The Hardware Headers

Our primary output is a set of C header files at the repository root, one per chip or block, in the style of gr2 and gr4. **The code is the document.** Each header holds register offsets and fields, packet and token formats, state machines and constants, with a comment on every definition saying how it was derived and whether it is established, inferred or unknown.

Planned headers (none written yet; `docs/coverage.md` tracks each):

1. **`CRIME.h`**: address map, CPU interface, memory controller, interrupts, ID and reset.
2. **`CRM_RE.h`**: rendering engine registers, primitive and pixel state, FIFO, TLB, texture.
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
- `analyze_fifo.py`, `extract_gl_tokens.py`: find accesses to a hardware address window in the assembly, and map the first FIFO word each decompiled GL function stores to that function. Both take the address window or FIFO address as arguments; none is built in. For CRIME, start from the rendering window at `0x15000000`.

The scripts descend from gr4's and carry its BSD-3 notice ([scripts/LICENSE-gr4](scripts/LICENSE-gr4)). They were copied from a sibling workspace and parameterised but have not yet been run on O2 binaries.

---

## 6. Working on this repository

Workflow: populate `root/` (IRIX_FILES.md), run `scripts/populate-root`, run the scripts above, then read, write headers and docs, and update `docs/coverage.md`.

Roles:

- **Opus readers** take the Priority list in `docs/coverage.md`, in order.
- **Sonnet readers** backfill `docs/coverage.md` rows one block at a time.

Output rules:

- Findings go in chip headers at the repository root plus `docs/` chapters, written in your own words.
- Label every fact established, inferred or unknown, with its derivation: binary and release, function or offset, or the public source path.
- Update `docs/coverage.md` in the same commit as the finding.
- Commit disassembly, decompiled C and traces you produce as data; keep the proprietary binaries in `root/`. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.
- Commit what you cite: findings may rest on IRIX binaries or public sources only.

Downstream emulator projects consume the headers and docs; they should not need to read the binaries.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`libglcore: label the span-fill command`); bodies say why. Do not wait to batch work.
