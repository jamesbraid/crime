# Rendering TLB formats

Every client of the rendering TLB group at `0x15001000`, as the IRIX 6.5.30 kernel loads it. Offsets and register counts are in [CRIME_RE.h](../CRIME_RE.h). Labels: **established** (read from the cited function), **inferred**, **unknown**. Sources: `crime_kernel/decomp/crime_tiles.c` and `crime_dma.c`, same names in `crime_kernel/disasm/`.

All loaders write 64-bit values through KSEG1 (`0xA0000000 | address`) and, for the tile TLBs, finish with a write of 0 to `+0x4008` (established).

| Client | Registers | Entries | Entry value | Source |
|---|---|---|---|---|
| Frame buffer A, B, C (`+0x1000`, `+0x1200`, `+0x1400`) | 64 each | 16 bits, four per register, entry 0 in bits 63:48 | physical address >> 16 (64 KiB tile number), no flag bits | `crmAllocTiles`, `crmLoadTlbABC` (established) |
| Texture (`+0x1600`) | 28 | 16 bits, four per register | tile number with bit 15 set | `crmDefineTex`, `crmLoadTexTlb` (established; bit 15 is the valid bit, inferred in pass 7 below) |
| Colour index (CID, `+0x16e0`) | 4 | 16 bits, four per register | the tile list entry unchanged | `crmLoadCidTlb` (established) |
| Linear A, B (`+0x1700`, `+0x1780`) | 16 each | 32 bits, two per register, even page in bits 63:32 | page frame number, bit 31 set | `loadLinearTlb` (established; see `docs/pixel-transfer.md`) |

## Details

- Tile numbers come from the kernel's tile allocator, which returns 4 KiB page frame numbers; `crmAllocTiles` stores `frame >> 4` as a 16-bit entry (established). A tile is 64 KiB, so 16 page frames. Kernel-pinned tile pages from the dynamic memory service (`crm_get_dms_tiles`) are stored as `(frame >> 4) | 0x8000` (established).
- Frame-buffer TLB load (`crmLoadTlbABC`): a drawable either carries a ready 64-bit image (flag bit 0 of the descriptor word at +0xc), copied straight into `4 * rows` registers, or a tile list and a rectangle: first column `byte +0x16`, columns `+0x18`, first row `+0x17`, rows `+0x19`. For each tile the register is `row * 4 + column / 4` and the slot is `column & 3`. Unused slots of a register are written as zero (established). The loader skips the work when the drawable's incarnation word (+0x10) matches what is already loaded for that TLB (established).
- Texture TLB: the kernel builds, per texture, an image of all 28 register values and their addresses (a 0x10-byte record per register: address at +0, value at +8; the image is 0x1d0 bytes, with a zero record at +0x1c0). `crmLoadTexTlb` writes all 28 doublewords on every bind (established). `crmDefineTex` fills up to six mip levels. A level's tiles are laid out as a grid, level 0 with a row pitch of 8 entries and every other level with 4, starting at a start index per level supplied by the caller. Width and height in tiles halve per level (established from the loop; the per-level start table is `[U]` because the decompiler lost the argument it comes from). When level 5 is requested for a texture that is the DMS kind, its entries copy neighbouring entries in the same register (established; reason unknown).
- A texture can hold at most 112 tiles (28 registers times four entries) (established arithmetic). The caller number space is limited to 0x80 textures per context.
- CID TLB: 16 entries in four registers; the count comes from the descriptor (+4) and entries past the count are zero (established). Register `n / 4` holds entry `n`, slot `n & 3`. What a CID tile holds (one tile covers 128 x 128 pixels at 32 bits) is covered by `GBE.h` and the overlay material, not here.

## Validity and misses (pass 7)

- Established (shipped 6.5.30 `ide.IP32`, `0xa00e3450` to `0xa00e34a0`): the diagnostics build each frame-buffer TLB A doubleword from four tile numbers of their own low memory (`address >> 16`), OR `0x8000800080008000` into it so that bit 15 of every 16-bit entry is set, and store it at `+0x1000 + 8n`; unused entries are written as zero. The tile numbers there are plain memory addresses below 256 MiB, so bit 15 is not an address bit for them.
- Established ([spec] PDF 137, PDF 49): the rendering engine flags a request made through an invalid TLB entry (bit 6 of its message to the memory controller), and the memory controller then deasserts every bank select, so the access does not happen; rendering-engine memory addresses are 30 bits (the memory error address register is 30 bits wide), so a 16-bit tile number needs only bits 13:0.
- Inferred from both: bit 15 of a 16-bit tile entry (frame buffer, texture, colour index) and bit 31 of a 32-bit linear entry are valid bits; a lookup through an entry with the bit clear performs no memory access (writes are dropped; what a read returns is not stated, unknown: no shipped software depends on it, every writer zeroes unused entries and never draws through them). This supersedes the pass 3 inference that bit 15 is address bit 31: the CPU-side mapping of the same number through the no-ECC alias is a kernel convention and does not reach the engine. Routes tried: [spec], `ide.IP32`, the 6.5.30 kernel, NetBSD (sets `0x8000` and `0x80000000` on every programmed entry), Linux, MAME.

## Bit 15 and the no-ECC alias (pass 3)

- Established (`os.a` member `tile.o`, `tile_alloc` offsets `0x9a4`–`0x9bc` and `0xa5c`–`0xa6c`): the base kernel's tile allocator returns each frame either unchanged or ORed with `0x80000`, chosen by a page attribute, and indexes its own tile table with `(frame >> 4) & 0x0fff7fff`, that is with bit 15 of the tile number masked off.
- Established (specification PDF 47–48): physical `0x80000000` is a 1 GiB no-ECC alias of memory, provided so that the CPU can read memory the rendering engine wrote without ECC errors. Frame `0x80000` is that alias, so a tile number with bit 15 set names a tile through the alias.
- Established (`crmMapChunk`): the CPU mapping of a tile entry v is page frames `v << 4` onward, so bit 15 of the entry becomes physical address bit 31 for CPU access.
- Established (`crm_get_dms_tiles`, `crmDefineTex`): imported video tiles and every texture TLB entry are ORed with `0x8000` explicitly.
- Inferred: IRIX keeps renderer tiles in the no-ECC alias and bit 15 of a tile entry is physical address bit 31, which also fits NetBSD setting `0x8000` on every programmed tile. Whether the frame-buffer allocation takes the alias branch (the attribute `crmAllocTiles` passes was not decoded) and whether hardware also treats the bit as a validity mark are unknown; the first is a software question, next route: the attribute `crmAllocTiles` receives from its callers (`docs/open-questions.md`).
- What a TLB miss or an out-of-range tile index does (the kernel never provokes one).
- The exact rule for the texture level start table.

# Interrupt controller as IRIX 6.5.30 drives it

Sources: kernel objects `kernel.o` (functions `VEC_int`, the unnamed CRIME dispatcher before `intr`, `intr`, `crime_intr_enable`, `crime_intr_disable`, `setcrimevector`, `mlreset`), `mace.o` (`setmaceisavector`), `crime.o` (`crime_init`). Disassembly is under `crime_kernel/disasm/kernel/kernel.text.s` and `crime_kernel/disasm/mace/mace.text.s`. Labels as above.

## Inputs IRIX registers

| Input | Handler | Where |
|---|---|---|
| 4 or 5 | MACE ISA/misc interrupt, whichever the caller passes (the PROM-selected platform variant is not decoded); any other value panics | `setmaceisavector` (established); `mlreset` registers 5 with fixed argument 256 (established) |
| 16, 17 | retrace, pre-blank | `crime_init` (established) |
| 18, 19 | GBE lines 2 and 3 | `crime_init` (established) |
| 20, 21 | bus error, both with the same handler at priority 3 | `mlreset` (established) |
| 25, 26 | rendering FIFO empty and full levels | `crime_init`, `crmFifoWait` (established) |
| 28, 29 | at priority 1 and 2 | `mlreset` (established) |

Inferred: inputs 28 and 29 are software interrupts. The end of the dispatcher reads SOFTINT (`+0x20`) and, depending on two kernel flags, ORs in bits 28 and/or 29 and writes it back when either bit is set; nothing in `crime.o` or `kernel.o` reads a CRIME source that would explain them otherwise. Their purpose is unknown. Inputs 0-3, 6-15, 22-24, 27 and 30-31 are never registered by the code read here (established by search for `setcrimevector` callers in `kernel.o`, `crime.o` and `mace.o`); the MACE sources therefore reach the kernel through inputs 4/5 only, or through a path not read.

## Registers and sequences

- Initialisation (`mlreset`, established): write CONTROL (`+0x08`) with bits 13:12 and bit 9 cleared when the CPU implementation number is below 0x23 (R10000-family and earlier), otherwise with bit 9 cleared and bits 13:12 set; then write INTMASK (`+0x18`) and the register at `+0x10` with 0, flush the bus, and zero CPU error status (`+0x48`) and memory error status (`+0x250`). Inferred: bits 13:12 are the CPU-module-dependent flow control that matches the two FIFO threshold sets in `CRIME_RE.h`; no source here names them.
- Dispatch (`VEC_int`, established): on entry it saves INTMASK into the exception frame and replaces it with a priority-level mask from a table of 64-bit values indexed by spl level (level 24 on entry), then runs the generic dispatcher; on exit it restores the table value for the previous level. So INTMASK is rewritten at every interrupt entry and exit, and the live mask is not what the interrupt enable calls set.
- `crime_intr_enable(n)` and `crime_intr_disable(n)` (established) set or clear bit `n` only in the level-0 table entry, with interrupts at spl7. They do not touch the CRIME register directly.
- The CRIME dispatcher (established): pending = INTSTAT (`+0x10`) AND the saved mask, low 32 bits. Vectors are run in priority order, taken from a per-vector value; INTSTAT is read again after each pass and the loop ends when nothing is pending. Each vector entry is 48 bytes, holds a handler, argument, a spl group count, a 64-bit mask of bits to block at lower levels while it runs, and flags. Up to 16 handlers can be ganged on one input (`crimegang`). Inferred: inputs 25 and 26 are level-triggered, which would explain why `crimeFifoFullHandler` moves the thresholds before returning (see `CRIME_RE.h`).
- `setcrimevector` rejects inputs above 32 and priorities above 5 (established).

## Settled in pass 7 (see `CRIME.h`)

- CONTROL fields and reset values come from the specification's own table ([spec] PDF 114-115, table 5-9), which earlier passes missed: bit 13 enables SysAD parity generation from CRIME to an R5000-class CPU, bit 12 enables CRIME's parity check on data from it, both reset 0; bit 9 is the watchdog enable, reset 0; bits 11 and 10 are cold and soft reset. IRIX's per-CPU choice (bits 13:12 set only for implementations 0x23 and later) therefore turns SysAD parity on for R5000-class modules only. The watchdog register's bit 20 (warm-reset time-out) and 19:0 (count) reset to 0 (table 5-14). Details in `CRIME.h`.
- The write of 0 to `+0x10` (INTSTAT) has no effect: the register is read-only ([spec] PDF 116, table 5-10).
- Edge-sensitive interrupt bits are cleared by writing 0 to them in `+0x28`; they are read/write there and nothing clears on read ([spec] PDF 117-118, table 5-13). Inputs 20 and 21 are the CPU-interface and memory errors, in that order ([spec] table 5-5, Linux, NetBSD).
- The memory control register (`+0x200`) has two bits, both 0 at reset: bit 0 enables ECC, bit 1 makes the controller write the byte in `+0x270` (replicated four times) as the check bits instead of generated ones, a test feature ([spec] PDF 145, 150-151, tables 6-13 and 6-20). IRIX writes only 1 or 0, so only bit 0 is ever used.
- Memory sizing as the shipped diagnostics do it (established, `ide.IP32` `0xa00f0228` to `0xa00f0300`): they read each bank control as two 32-bit words, bank 0 at `+0x208`/`+0x20c` and banks 1 to 7 from `+0x210` upward. Bit 8 of the low word gives the bank size, 32 MiB when clear (16 Mbit parts) and 128 MiB when set (64 Mbit parts), matching [spec] PDF 150-152. A bank whose two words equal bank 0's is counted as absent, so firmware fills unused bank controls with a copy of bank 0 (inferred from the comparison; the specification's lowest-number-wins decode makes such a copy harmless). The ID register's low word is read as a 32-bit word at `+0x4` (big-endian low half of `+0x00`) by the same program (`ide.IP32` `0xa00e4514`, `0xa010c7bc`).
- The CPU error status bits of revision 1 and later and the memory error status bits are in `CRIME.h` ([spec] table 5-17, Linux `crime.h`). The revision-0 layout (ten bits and an enable register at `+0x050`, written `0x3ff` by `mlreset` on that revision only) has no published meaning: unknown, no shipped software or published source depends on it.

# Control, watchdog, time, ECC enable and revision code (pass 4)

Sources: `crime_kernel/disasm/kernel/kernel.text.s` (`mlreset`, `ecc_disable`, `get_crimerev`, `query_cyclecntr`, `absolute_rtc_current_time`, `dobuserre`, `print_buserr_rev0`, `print_buserr_rev1`); public register names from `netbsd/sys/arch/sgimips/dev/crimereg.h` and `linux/arch/mips/include/asm/ip32/crime.h`. Method: every `lui 0xb400` (CRIME registers in KSEG1) in the kernel, `crime`, `crime_init` and `crime_retrace` listings was followed to the offsets it reaches. Offsets seen: `0x00`, `0x08`, `0x10`, `0x18`, `0x20`, `0x28`, `0x30`, `0x38`, `0x40`, `0x48`, `0x58`, `0x200`, `0x250`, `0x258`, `0x260`, `0x268`.

- Established ([netbsd], [linux] names): CONTROL (`+0x08`) bit 13 is TRITON_SYSADC, bit 12 CRIME_SYSADC, bit 11 hard reset, bit 10 soft reset, bit 9 watchdog enable, bit 8 big-endian, bits 7:4 write-buffer high-water mark, bits 3:0 command-queue high-water mark. `mlreset` therefore clears the watchdog enable on every CPU, and on a CPU implementation of 0x23 or later also sets the two SysAD bits (established); what "SysAD" refers to for those two bits is the public names only, the electrical meaning is not stated in the sources read (unknown).
- Established: `mlreset` writes zero to `+0x30` (the watchdog register; [netbsd] says writing zero resets the watchdog and that bits 32 and 31 record a power-on and a warm reset). So IRIX disables and clears the watchdog during start-up. Nothing in the kernel files read arms it again.
- Established: `+0x38` is the free-running time counter. `absolute_rtc_current_time` returns its low 32 bits, and `query_cyclecntr` returns the address of the low word (`0xb400003c`) and a resolution of 15000 (picoseconds in the usual use of that IRIX call, so 15 ns, a 66.67 MHz tick). Inferred: the unit is picoseconds; the number 15000 is established.
- Established: `+0x200` is the memory control register ([netbsd], [linux] name `CRIME_MEM_CONTROL`). `ecc_enable` writes 1 to it only when a stored switch is set (a flag written in `mlreset` from `is_enabled` on a kernel string whose text is not decoded here) and `ecc_disable` writes 0. Inferred: bit 0 enables ECC checking on memory reads. The CRIME register map names no other bit that IRIX touches.
- Established: no code in the files read touches the memory bank registers (`+0x208` to `+0x248`) or the refresh counter; the bank set-up is done before IRIX starts (the PROM, by inference; `prom_does_eccinit` is a kernel check that the PROM already initialised ECC memory, established by name and its use at start-up).
- Established, revision code (`get_crimerev`): it reads the 64-bit ID once and caches a revision code. Low nibble non-zero gives 17; then a non-zero high word gives 19 if it is 1 and 20 otherwise. A low nibble of zero and a zero high word gives 0. Inferred: 17, 19 and 20 are decimal spellings of the hexadecimal revision numbers 1.1, 1.3 and 1.4 that [netbsd] reads from the same upper word (the arithmetic is established, the equivalence is the spelling coincidence). The code branches on it three ways: code 19 is tested after the ID read at start-up; a non-zero code runs `early_gbe_stop`, and `dobuserr` calls `print_buserr_rev1` for non-zero codes and `print_buserr_rev0` for code 0, which answers the open question in `CRIME.h` of which decoder serves which (inferred from that branch): `rev0` is the part whose low ID nibble and upper word are both zero (family A revision 0, the `0xa0` part the graphics probe refuses), `rev1` every other part. The two decoders test different status bits (rev 0: `0x217`, `0x1e0`, `0x200`, `0x100`, `0x80`, `0x40`, `0x20`, `0x10`, `0x8`, `0x4`, `0x2`, `0x1` of the CPU error status; rev 1: `0x5`, `0x4`, `0x1`, `0x2`) and print a message per set bit; the message text is in data the listings do not resolve (unknown, so the meaning of each bit is not recovered from IRIX).
- Established ([netbsd] names in `crimereg.h`): inputs 28 and 29 are `CRIME_INT_SOFT0` and `CRIME_INT_SOFT1` (`0x10000000` and `0x20000000`), the software interrupts. This settles the question left open above; IRIX raises them through SOFTINT as recorded.
- Established ([netbsd] `crimereg.h`): interrupt inputs 0-15 are the MACE-routed sources (video in and out, Ethernet, serial, audio, PCI slots and bridge); IRIX registers only 4 and 5 for them (the MACE ISA and misc inputs), so the rest reach the kernel through MACE's own interrupt layer (unknown, outside this repository's scope).

# CPU address windows and aliases (pass 6)

Sources: [spec] CRIME 1.5 specification, PDF 46-53 (system address map) and PDF 135-153 (memory controller); Linux `arch/mips/sgi-ip32/ip32-memory.c`, `ip32-dma.c`, `arch/mips/include/asm/ip32/crime.h`; MAME `src/mame/sgi/o2.cpp`; the IRIX kernel listings under `crime_kernel/`. Labels as above.

## The map (established, [spec] PDF 47-48, table 3-1)

| CPU physical address | Size | Function | Responds |
|---|---|---|---|
| `0x0_0000_0000` | 256 MiB | low memory alias (also what KSEG0 reaches) | CRIME |
| `0x0_1000_0000` | 32 MiB | frame buffer aperture | CRIME |
| `0x0_1200_0000` | 32 MiB | depth buffer aperture | CRIME |
| `0x0_1400_0000` | 32 MiB | CRIME registers | CRIME |
| `0x0_1600_0000` | 16 MiB | GBE registers | GBE |
| `0x0_1700_0000` | 16 MiB | VICE registers and RAM | VICE |
| `0x0_1800_0000` to `0x0_1fff_ffff` | | MACE windows (PCI low I/O 32 MiB, PCI low memory 32 MiB at `0x1a00_0000`, PCI configuration `0x1c00_0000`, I/O `0x1f00_0000`, audio/video `0x1f40_0000`, super I/O `0x1f80_0000`, ROM `0x1fc0_0000`) | MACE |
| `0x0_2000_0000` | 512 MiB | high memory alias | the table shows a question mark |
| `0x0_4000_0000` | 1 GiB | full memory | CRIME |
| `0x0_8000_0000` | 1 GiB | no-ECC memory alias | CRIME |
| `0x1_0000_0000` | 4 GiB | PCI I/O (high) | MACE |
| `0x2_0000_0000` | 4 GiB | PCI memory (high) | MACE |

The CPU interface decodes a 40-bit physical address (established, PDF 47); the specification says VICE's decode was extended from 36 bits over the CRIME 1.1 implementation (established, PDF 49), which `CRIME.h` records as the 1.1 versus 1.5 difference. The map shows `0x0_c000_0000` (1 GiB) and the space above `0x3_0000_0000` as reserved.

- Memory aliases (established, PDF 47): the first 256 MiB is reachable at the low alias so KSEG0 needs no TLB entry; the full 1 GiB needs TLB entries at the full window; "the high 512 MiB is aliased into the upper 512 MiB of the first gigabyte" of address space, which the specification gives as a more compact page-table option than the 1.5 to 2 GiB range. Interpretation (inferred): the high alias at `0x2000_0000` to `0x3fff_ffff` is the same memory as the upper half (offset 512 MiB and up) of the full window. A given physical location must be reached through exactly one of the low alias, the high alias or the full window, or the caches see incoherent copies (established, PDF 47).
- Frame and depth apertures (established, PDF 47): "linear address space access" to the current 2048 by 2048 by 32-bit frame and depth buffers as the rendering engine maps them. Unknown: how an aperture offset maps to tiled memory, which rendering TLB (A, B or C) it uses, and what a read does while the engine writes; no public source or binary read documents it (the kernel and library code read here never touch either window, below).
- No-ECC alias (established, PDF 47): reads and writes skip ECC checking and correction only; ECC is still generated on writes and a sub-doubleword write still makes a read-modify-write. The specification gives its purpose as reading raw memory in an ECC fix-up routine and reading data the rendering engine wrote without raising ECC errors. The rendering TLB reaches the same alias through bit 15 of a tile entry (see above).
- Reverse-endian memory exists only for devices: PCI sees memory at two windows, native at `0x4000_0000` and reverse endian at `0` (established, PDF 51-52, tables 3-5 and 3-6). The CPU map has no reverse-endian window.
- Other masters (established, PDF 49-52): VICE sees only `0x4000_0000` full memory and the no-ECC alias at `0x8000_0000`; MACE DMA sees full memory, no-ECC memory and nothing below; GBE sees the full memory window and the specification marks everything else reserved. Linux agrees for non-PCI devices: it adds `0x4000_0000` to a RAM offset (`phys_to_dma`, `CRIME_HI_MEM_BASE`), and for PCI devices uses offset zero. IRIX and Linux both give GBE tile numbers below that window; see `docs/gbe.md` (pass 6).

## Where memory sits (established, [spec] PDF 135-153; Linux `ip32-memory.c`)

- Eight external banks each hold a pair of DIMMs; 1M by 16 SDRAM makes a 32 MiB bank, 4M by 16 a 128 MiB bank; total 32 MiB to 1 GiB. Each bank control register (`+0x208` to `+0x240`, doublewords, bit 8 size) holds five bits that are compared with request address bits 29:25 for a 32 MiB bank, or bits 4:2 with 29:27 for a 128 MiB bank; reset values are 0 to 7 for banks 0 to 7. Linux builds the bank's base as `(control & 0x1f) << 25` and the size from bit 8, and adds `0x4000_0000` when a bank ends above 256 MiB. So physical memory is one block of up to 1 GiB at the full window, with its first 256 MiB repeated at physical 0 (the low alias). Memory above 256 MiB is therefore only addressable through the high alias or full window, never by KSEG0.
- MAME's `o2.cpp` maps 32 MiB of RAM at 0 and, from `0x4000_0000`, eight banks at 128 MiB steps each holding four 32 MiB mirrors of the same RAM; it models neither aperture nor alias and is not evidence for them (established by reading the file).

## What IRIX does (established, kernel listings)

- Every access to CRIME registers in the graphics kernel files goes through KSEG1 `0xb400_0000` (`lui 0xb400`; the listing counts are in the "Control, watchdog" section above). Only the CRIME base is a constant (`crimeProbe` and the handlers); the rendering-engine and GBE register pointers (the `0x1500_0000` and `0x1600_0000` windows) come from the board record the platform code hands in, and their constants never appear in the graphics objects.
- No graphics kernel object (`crime`, `crime_init`, `crime_tiles`, `crime_dma`, `crime_retrace`, `crime_tp`, `crime_zbuf`, `rrm`, `gfx`) builds an address in the frame buffer or depth buffer apertures: a search of every `lui` and `ori`/`li` that could build `0x1000_0000`, `0x1200_0000` or their KSEG variants finds only status-bit masks (`0x1000_0000` is the engine idle bit). Inferred: IRIX renders and scans out through the rendering TLB and tile lists only, and never reads or writes pixels through the apertures. A user client's mapping is the kernel shadow record and the engine register pages, not the apertures (`crimeMapGfx` maps pages of kernel memory, [docs/ioctls.md](ioctls.md)).
- Tile lists use physical 64 KiB tile numbers (low memory only in practice: the GBE list entry mask is 13 bits, `crmLoadGbelists`). The texture, frame buffer and colour-index TLB entries carry bit 15, the valid bit (pass 7 above).

## Settled in pass 7

- The frame-buffer and depth apertures: no shipped software uses them. The graphics kernel objects build no address in them (above); the X module's four `0x1000_0000` constants are comparison limits, not addresses (`crm.s` 21216, 25459, 27916, 42288); libGLcore's five `0x1000_0000` constants are masks of an enable bit in its context word at +1792 (`crm_attrib.s`, `so_attrib.s`), and it builds no `0x1200_0000` or KSEG alias of either window; `ide.IP32` builds no KSEG1 aperture address. So the aperture's addressing rule and what a read returns while the engine draws are unknown: no shipped software or published source depends on them. Routes tried: [spec] PDF 47-48, the 6.5.30 kernel, X module, libGLcore, `ide.IP32`, Linux, NetBSD, MAME.
- The high alias (`0x2000_0000`) and the reserved ranges: IRIX reaches memory through the low alias and the full window only, Linux through the low alias and `CRIME_HI_MEM_BASE` (`0x4000_0000`), and `ide.IP32` sizes memory from the bank controls without probing addresses (pass 7 above). Which device answers the high alias, whether it equals the upper 512 MiB of the full window, and how reserved ranges respond are unknown: no shipped software or published source depends on them. Routes tried: [spec] PDF 47-52 (its table leaves the responder of the high alias open), the 6.5.30 kernel, `ide.IP32`, Linux, NetBSD, MAME. A model can alias the high window to the full window's upper half and raise a CPU error on reserved ranges, which the CPU error status's illegal-address bit provides for.
