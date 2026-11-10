# Rendering TLB formats

Every client of the rendering TLB group at `0x15001000`, as the IRIX 6.5.30 kernel loads it. Offsets and register counts are in [CRIME_RE.h](../CRIME_RE.h). Labels: **established** (read from the cited function), **inferred**, **unknown**. Sources: `crime_kernel/decomp/crime_tiles.c` and the CRIME kernel driver DMA source unit, same names in `crime_kernel/disasm/`.

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
- Texture TLB: the kernel builds, per texture, an image of all 28 register values and their addresses (a 0x10-byte record per register: address at +0, value at +8; the image is 0x1d0 bytes, with a zero record at +0x1c0). `crmLoadTexTlb` writes all 28 doublewords on every bind (established). `crmDefineTex` fills up to six mip levels. A level's tiles are laid out as a grid, level 0 with a row pitch of 8 entries and every other level with 4, starting at a fixed start entry per level (the table is in the section on texture level layout below). Width and height in tiles halve per level, never below one (established from the loop). When level 5 is requested for a texture that is the DMS kind, its entry copies the level 4 entry beside it in the same register (established; see below).
- A texture can hold at most 112 tiles (28 registers times four entries) (established arithmetic). The caller number space is limited to 0x80 textures per context (established: `crmDefineTex` masks off bit 31 of the slot word, compares the rest with 128 at 0x1950 and returns 22 at 0x195c when it is not below).
- CID TLB: 16 entries in four registers; the count comes from the descriptor (+4) and entries past the count are zero (established). Register `n / 4` holds entry `n`, slot `n & 3`. What a CID tile holds (one tile covers 128 x 128 pixels at 32 bits) is covered by `GBE.h` and the overlay material, not here.
- Established (store widths from the instruction streams of `loadLinearTlb`, `crmLoadTlbABC`, `crmLoadCidTlb`, `crmLoadTexTlb`, `crmValidateDrawable` and `crime_load_fbtlb` in the 6.5.30 `crime.a`, and of `ide.IP32`): every store the shipped code makes into the TLB window is a doubleword at an 8-byte-aligned offset, `sd` in the kernel and `sdc1` in the diagnostics. The halfword and word stores inside those loaders go elsewhere. The halfword stores in `crmLoadTlbABC` (0x23f4) and `crmLoadCidTlb` (0x24b8) fill a doubleword accumulator on the stack, which a later `sd` writes. The word stores in `loadLinearTlb` (0x75c, 0x7a0) fill a two-word stack image that one `sd` (0x718) writes, and the remaining word stores go to the board record, to the stack or to the `+0x4008` flush register. In `ide.IP32` the 41 `sdc1` instructions with a displacement from 4096 to 6148 use offsets 4096 to 4120, 4608 to 4632, 5120 to 5144, 5632, 5856, 5888 and 6016, all multiples of 8, and the 39 `sw` instructions with a displacement in that range store to indexed globals (33), to the stack frame the entry code sets up (3) and to three words in low memory through `0x80000000` and `0xa0000000` base registers (offsets 0x1018, 0x1018 and 0x1010), none to the CRIME window at `0xb5001000`. That count finds stores by displacement, so a store through a pointer stepped with displacement 0 is not in it.
- Unknown: no shipped software or published source read for this depends on how the TLB window handles an 8-, 16- or 32-bit or an unaligned access. Routes tried: the six kernel loaders and the `ide.IP32` stores above, whose widths and offsets leave no narrow or unaligned case.

## Validity and misses (pass 7)

- Established (shipped 6.5.30 `ide.IP32`, `0xa00e3450` to `0xa00e34a0`): the diagnostics build each frame-buffer TLB A doubleword from four tile numbers of their own low memory (`address >> 16`), OR `0x8000800080008000` into it so that bit 15 of every 16-bit entry is set, and store it at `+0x1000 + 8n`; unused entries are written as zero. The tile numbers there are plain memory addresses below 256 MiB, so bit 15 is not an address bit for them.
- Established ([spec] PDF 137, PDF 49): the rendering engine flags a request made through an invalid TLB entry (bit 6 of its message to the memory controller), and the memory controller then deasserts every bank select, so the access does not happen; rendering-engine memory addresses are 30 bits (the memory error address register is 30 bits wide), so a 16-bit tile number needs only bits 13:0.
- Inferred from both: bit 15 of a 16-bit tile entry (frame buffer, texture, colour index) and bit 31 of a 32-bit linear entry are valid bits; a lookup through an entry with the bit clear performs no memory access (writes are dropped; what a read returns is not stated, unknown: no shipped software depends on it, every writer zeroes unused entries and never draws through them). This supersedes the pass 3 inference that bit 15 is address bit 31: the CPU-side mapping of the same number through the no-ECC alias is a kernel convention and does not reach the engine. Routes tried: [spec], `ide.IP32`, the 6.5.30 kernel, NetBSD (sets `0x8000` and `0x80000000` on every programmed entry), Linux, MAME.

## Bit 15 and the no-ECC alias (pass 3)

- Established (`os.a` member `tile.o`, `tile_alloc` offsets `0x9a4`–`0x9bc` and `0xa5c`–`0xa6c`): the base kernel's tile allocator returns each frame either unchanged or ORed with `0x80000`, chosen by a page attribute, and indexes its own tile table with `(frame >> 4) & 0x0fff7fff`, that is with bit 15 of the tile number masked off.
- Established (specification PDF 47–48): physical `0x80000000` is a 1 GiB no-ECC alias of memory, provided so that the CPU can read memory the rendering engine wrote without ECC errors. Frame `0x80000` is that alias, so a tile number with bit 15 set names a tile through the alias.
- Established (`crmMapChunk`): the CPU mapping of a tile entry v is page frames `v << 4` onward, so bit 15 of the entry becomes physical address bit 31 for CPU access.
- Established (`crm_get_dms_tiles`, `crmDefineTex`): imported video tiles and every texture TLB entry are ORed with `0x8000` explicitly.
- Read (`tile_alloc` in `tile.o`, `crmAllocTiles`, `crmAllocFrameBuffer` in `crime_tiles.o`, 6.5.30): the no-ECC alias is chosen by an attribute bit of the caller. `crmAllocFrameBuffer` asks `crmAllocChunk` for class 2 with attribute 12, `crmAllocTiles` turns the class into the allocator's class mask from a table and passes the board record's word at +0x14 ORed with 12 when the request has bit 3 set and with 4 when it has not (the `ori` by 4 sits in a branch delay slot at 0x404, so it runs on both paths, and the `ori` by 8 at 0x408 only on the first), so every call sets the zero-fill bit (bit 2) and only a bit-3 request sets the stale-ECC bit, and `tile_alloc` keeps bit 3 of its fourth argument (`andi 8` at 0x94c and 0xbb0, held at stack +160). With that bit set, after the tiles are found (and zeroed when bit 2 is set), it walks the returned tile list (0xf24 to 0x1030): for each tile whose first page record does not already carry flag `0x100000` it sets that flag in the 24-bit word at offset 8 of all 16 page records of the tile (36 bytes each), then stores the frame back with `0x80000` ORed in (`lui 8` at 0x1024). Pages without the flag come back unchanged, which is what the tests at 0xa58 and 0xb60 select on later calls. So a frame-buffer tile, allocated with attribute 12, always comes back as an alias frame, and a frame allocated with only the zero bit (4) does not. By inference: IRIX keeps frame-buffer tiles in the no-ECC alias, so bit 15 of a tile entry made from such a frame is physical address bit 31 for the CPU, which also fits NetBSD setting `0x8000` on every programmed tile; the texture and imported video tile entries get `0x8000` ORed in explicitly whatever their frame. Unknown: whether the engine itself reads bit 15 as address bit 31 or only as a validity mark. Both readings reach the same RAM, since the alias maps the same memory, so they differ only in how the engine's own accesses meet ECC; no shipped code distinguishes them.
- Established (2026-11 pass, `crmAllocTiles` `0x3c0` to `0x4b3`, the only caller of `tile_alloc` in the graphics kernel objects; `tile_alloc`'s zero-fill branch): every tile the graphics driver allocates is zeroed before it is handed out, whatever its use (frame buffer, depth, texture, pixel buffer, colour index), because the zero-fill bit (bit 2) is set on both paths of the flag construction. So a frame-buffer or pixel-buffer tile is not stale from a previous X session, and a published claim that display memory is not cleared when a new session starts is not what this kernel does (the stale-ECC bit is a different flag: it picks the no-ECC alias, above). Inferred: the clear is a CPU `bzero` through a temporary mapping followed by a cache clean, so it costs CPU time per allocation; the cost was not measured. Tiles imported from the video path are not allocated here and are not cleared by this code.
- What a TLB miss or an out-of-range tile index does (the kernel never provokes one).

# Texture level layout in the texture TLB

How a texture's mip levels are placed in the 112 entries of the texture TLB (`+0x1600`, 28 registers of four 16-bit tile entries) and inside their tiles. Sources: the IRIX 6.5.30 kernel object `crime_tiles.o` (`crime.a`), function `crmDefineTex` (`.text` `0x18d0`, 0x458 bytes) and its `.data` section; N32 `libGLcore` (the CRIME GL driver texture assembly unit): `crmDefineTexture` (`0x0d96eb70`), `crmSetTextureParam`, `crmUpdateSharedTiles` and `crmCreateLevel`, plus the `.data` words at `0x0da46428`..`0x0da46440`. The request structure is a slot number, a width and a height, then six texture identifiers, with a limit of six mip levels (read from `crmDefineTex`). The largest level-of-detail value of 10 is not read from any binary here: unknown, settled by the bound compare in the texture-parameter routine of `libGLcore`.

## The fixed start table

- Established (`crime_tiles.o`): the start entry of each level is a constant table in the object's six-word `.data` section, loaded by `crmDefineTex` at `.text` `0x1a28`/`0x1a30` (a `.data` HI16/LO16 relocation pair) and stepped one word per level. Its values are 0, 64, 80, 88, 92 and 93. An entry number `e` lands in register `e >> 2`, slot `e & 3`, slot 0 being bits 63:48 (the same packing as every 16-bit TLB).
- Established (same loop, `0x1a88`..`0x1b80`): a level of `w` by `h` tiles is written row by row from its start entry. Within a row the entry advances by one per tile; at the end of a row it advances to the next row of a grid whose pitch is 8 entries for level 0 and 4 entries for levels 1 to 5. After each level `w` and `h` are halved, but not below 1, once the first present level has been seen. The request gives `w` and `h` for that first present level, and the kernel rejects it (`EINVAL`) when the level's allocation holds fewer than `w * h` tiles.
- Arithmetic from the above: level 0 holds up to 8 by 8 tiles (entries 0 to 63), level 1 up to 4 by 4 (64 to 79), level 2 up to 2 by 2 at pitch 4 (80, 81, 84, 85), level 3 one tile (88), level 4 one tile (92) and level 5 one tile (93). The table therefore reserves exactly the room that a 1024 by 1024 base level and its halvings down to 128 need, given that a 64 KiB tile is 512 bytes by 128 rows (128 by 128 texels at 32 bits, 256 by 128 at 16 bits).
- Established (`crmDefineTex`): the six "levels" of the request are slots in this table, not OpenGL level numbers. An empty slot (identifier 0) is skipped and leaves its entries zero, so they carry no valid bit. For an ordinary texture each slot's tiles start at tile 0 of that slot's own allocation; for a video-buffer texture (bit 31 of the slot word) the slots draw consecutive tiles from one buffer obtained through `crm_get_dms_tiles`, and slot 5 copies the entry of slot 4 instead of taking a tile of its own.

## Which OpenGL level goes in which slot

- Established (`crmDefineTexture`, the loop at `0x0d96ebec`..`0x0d96ec44`, and `crmSetTextureParam`): with `L` the log2 of the base level's larger side (the texture object word the library keeps at +236 of its level-0 record), slot `k` for `k` = 0 to 3 receives the identifier of the next OpenGL level only when `L >= 10 - k`. So the slot of a level is `10 - log2(size)`: a 1024 level goes in slot 0, 512 in slot 1, 256 in slot 2 and 128 in slot 3, whatever the base level's number is. Slots 4 and 5 receive the identifiers of two shared tiles kept in the texture object (+8 and +20), described next.
- Established (`crmSetTextureParam`, the block at source line 700 of the unit, near `0x0d96f180`): Texture.mode `maxLevel` (bits 13:10) is written as `L` and `mapLevel` (bits 17:14) as `10 - L`, both masked to four bits. Inferred: `mapLevel` is the table slot of the base level and `maxLevel` the number of halvings down to a 1 by 1 level, so the engine finds level `n` of the texture at slot `mapLevel + n`, which is the kernel's layout above.

## Levels smaller than 128 texels

- Read (`crmUpdateSharedTiles`, the texture module lines 320-411 of the unit, from `0x0d96e5c0`): every level whose size `s` is 64 texels or less (`log2 s < 7`) is stored in one of the two shared single-tile allocations of the texture object, allocated on demand with ioctl `0x5601` and a count of one tile. Levels of size 64 and 16 use the first (+8, slot 4, entry 92); levels of size 32, 8, 4, 2 and 1 use the second (+20, slot 5, entry 93).
- Established (`libGLcore` `.data`, the word at `0x0da46440 - 4 * log2 s`, read at `0x0d96e78c`): the byte offset of such a level inside its shared tile is 0 for size 64, `0x8000` for 32, `0xc000` for 16, `0xe000` for 8, `0xf000` for 4, `0xf800` for 2 and `0xfc00` for 1. With 512-byte tile rows these are rows 0, 64, 96, 112, 120, 124 and 126, that is row `128 - 2s` for every size below 64. The texels are then written from that address by the same store routines as for large levels (`crmSubtileSpan` or `crmTileSpan`, `MTE.h`).
- Inferred: the engine computes the same placement from `log2 s` when it fetches a small level: entry 92 for sizes 64 and 16, entry 93 for 32 and 8 and below, and the row offset above. The alternation for 64, 32, 16 and 8 puts neighbouring levels in different tiles; no code read states the reason. Whether the engine reads the sizes 4, 2 and 1 from entry 93 by the same rule or by a separate one is not shown by any writer beyond this placement.

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

## Speculative-load workaround (the "JUICE" limit)

- Established ([spec] pages 5-5 to 5-8, tables 5-1 and 5-9): CRIME 1.5 carries a workaround for the speculative loads of the R10000 and R12000. A coherent block read (shared or exclusive) whose address lies above a programmed limit is answered with an error response on the processor bus instead of data; coherent reads below the limit, non-coherent block reads, and single, double and partial-word reads are answered normally. The limit is the field in bits 7:5 of CPU Interface Control (`+0x08`): `001` is 8 MiB (the reset value), `010` to `111` raise it in 4 MiB steps to 32 MiB, and `000` rejects every coherent load. The hardware compares address bits 28:23 (and any bit in 39:26) against the limit. The specification's scheme for software: cacheable TLB mappings use the non-coherent access mode, KSEG0 uses the coherent mode and so only reaches the lowest memory, and DMA buffers are not placed in the first 8 MiB. VICE is not cacheable and needs no protection.
- Established (kernel build strings and `mlreset`): the 6.5.30 kernel is built with both speculation workaround switches (`R10000_SPECULATION_WAR` and `MH_R10000_SPECULATION_WAR`, in the compile strings of `os.a`), and `mlreset` changes CPU Interface Control only through the masks for bit 9 and bits 13:12 (above), so bits 7:5 keep their reset value `001` (8 MiB).
- Unknown: whether a rejected coherent load also sets bit 2 of the CPU error status (`+0x48`, "CPU illegal address") or only the processor-bus error; the specification does not say, and no shipped code reads the status after such a response in a way that settles it. Routes tried: [spec] pages 5-5 to 5-8 and 5-26 to 5-32, the 6.5.30 kernel, Linux `crime.c`. The kernel reads the bit in two places and neither depends on what raised it. `print_buserr_rev1` (`kernel.o`, 0x102ec) masks the status with 5 (bits 2 and 0) at 0x1030c, tests bit 2 alone at 0x1031c and 0x1037c, and reports through `cmn_err`. `ecc_handler` (0xd894) also tests it: it compares the status masked with 0x201 against 0x201 (0xda48 to 0xda50, bits 9 and 0) and masked with 5 against 5 (0xda54 to 0xda5c, bits 2 and 0). On either match it stores 0 to `+0x48` (0xdcb4, 0xda64) and builds the error address from the doublewords at +72 and +80 of its second argument, which skips the address-decoding call at 0xda80. That is the ECC error path reacting to the combined status value; nothing in it, or in the printer, separates a rejected coherent load from any other cause of bit 2, so unknown: no shipped software or published source read depends on what raises it. Inferred: a model that ignores the field answers every coherent load, which an R5000 guest never notices (the R5000 has no speculation).

## Memory bank control registers (pass 8)

Sources: the CRIME 1.5 specification (the memory controller's decode description and its register map, table 6-12), the memory sizing of the shipped 6.5.30 `ide.IP32` quoted above, Linux `ip32-memory.c`. Labels as above.

Established: the eight bank control registers are doublewords at consecutive 8-byte steps from bank 0 at `+0x208`: bank 1 at `+0x210`, bank 2 at `+0x218`, bank 3 at `+0x220`, bank 4 at `+0x228`, bank 5 at `+0x230`, bank 6 at `+0x238` and bank 7 at `+0x240`. All eight share the layout described above (bit 8 selects the bank size, bits 4:0 hold the address bits the bank answers to); no register differs from another except in which request it claims. The diagnostics read the half that holds bit 8 as a 32-bit word at the register's offset plus 4 (big-endian low half): `+0x20c` for bank 0, `+0x214` for bank 1, `+0x21c` for bank 2, and so on up to `+0x244` for bank 7.

Established (specification, memory decode text): for every request the controller compares the upper address bits with each of the eight registers. A bank is selected on a match, and a request that matches more than one register goes to the lowest-numbered bank, so a higher-numbered register that repeats a lower one is never used. A request that matches none raises a memory address error, is still passed down the pipeline, and has all external bank selects withdrawn so nothing is read or written. The specification also states the set-up rule for software: banks built from the larger parts go at the lower addresses, followed by the smaller ones, so memory has no gaps; inferred from the lowest-number rule: firmware numbers the banks in address order, bank 0 lowest. No shipped IRIX code writes any of the eight registers (see the pass 7 notes), so the rule describes the firmware's duty rather than the kernel's.

## What IRIX does (established, kernel listings)

- Every access to CRIME registers in the graphics kernel files goes through KSEG1 `0xb400_0000` (`lui 0xb400`; the listing counts are in the "Control, watchdog" section above). Only the CRIME base is a constant (`crimeProbe` and the handlers); the rendering-engine and GBE register pointers (the `0x1500_0000` and `0x1600_0000` windows) come from the board record the platform code hands in, and their constants never appear in the graphics objects.
- No graphics kernel object (`crime`, `crime_init`, `crime_tiles`, `crime_dma`, `crime_retrace`, `crime_tp`, `crime_zbuf`, `rrm`, `gfx`) builds an address in the frame buffer or depth buffer apertures: a search of every `lui` and `ori`/`li` that could build `0x1000_0000`, `0x1200_0000` or their KSEG variants finds only status-bit masks (`0x1000_0000` is the engine idle bit). Inferred: IRIX renders and scans out through the rendering TLB and tile lists only, and never reads or writes pixels through the apertures. A user client's mapping is the kernel shadow record and the engine register pages, not the apertures (`crimeMapGfx` maps pages of kernel memory, [docs/ioctls.md](ioctls.md)).
- Tile lists use physical 64 KiB tile numbers (low memory only in practice: the GBE list entry mask is 13 bits, `crmLoadGbelists`). The texture, frame buffer and colour-index TLB entries carry bit 15, the valid bit (pass 7 above).

## Settled in pass 7

- The frame-buffer and depth apertures: no shipped software uses them. The graphics kernel objects build no address in them (above); the X module's four `0x1000_0000` constants are comparison limits, not addresses (`crm.s` 21216, 25459, 27916, 42288); libGLcore's five `0x1000_0000` constants are masks of an enable bit in its context word at +1792 (the CRIME GL driver attribute state assembly unit, the software renderer attribute state assembly unit), and it builds no `0x1200_0000` or KSEG alias of either window; `ide.IP32` builds no KSEG1 aperture address. So the aperture's addressing rule and what a read returns while the engine draws are unknown: no shipped software or published source depends on them. Routes tried: [spec] PDF 47-48, the 6.5.30 kernel, X module, libGLcore, `ide.IP32`, Linux, NetBSD, MAME.
- The high alias (`0x2000_0000`) and the reserved ranges: IRIX reaches memory through the low alias and the full window only, Linux through the low alias and `CRIME_HI_MEM_BASE` (`0x4000_0000`), and `ide.IP32` sizes memory from the bank controls without probing addresses (pass 7 above). Which device answers the high alias, whether it equals the upper 512 MiB of the full window, and how reserved ranges respond are unknown: no shipped software or published source depends on them. Routes tried: [spec] PDF 47-52 (its table leaves the responder of the high alias open), the 6.5.30 kernel, `ide.IP32`, Linux, NetBSD, MAME. A model can alias the high window to the full window's upper half and raise a CPU error on reserved ranges, which the CPU error status's illegal-address bit provides for.

## Register roles for the remaining CRIME registers

| Offset | Register | Role and the code that reaches it | Label |
|---|---|---|---|
| `+0x20` | Software Interrupt | the software interrupt bits of the CRIME interrupt controller; the 6.5.30 `kernel.o` routines `synthclock` and `synthackkgclock` read and write it, and `intr` reads it; that they raise and acknowledge the synthesised clock interrupt is inferred from the routine names | established accesses, inferred purpose |
| `+0x200` | MC Status/Control | the memory control register, bit 0 ECC enable; `ecc_enable` and `ecc_disable` in `kernel.o` write it, and `wbflush` reads it back, which drains the CPU write buffer (inferred purpose of the read) | established |
| `+0x270` | ECC Replacement Check Bits | the replacement check byte used when memory control bit 1 is set; only the exception path of `symmon.IP32` reads it; that it is printed beside the other memory error registers is inferred from that path | established read, inferred use |
| `+0x4048` | CPU Error Status, at its revision 1.5 draft position | no shipped software or published source depends on it: IRIX reads the CPU error status at `+0x48` only; routes tried: every access in the 6.5.30 `kernel.o`, the diagnostics and Linux | no software dependency |

## CRIME registers by access site (6.5.30)

One row per register offset the shipped code reaches, from the disassembly under `crime_kernel/disasm/` and from `ide.IP32` and `symmon.IP32` in `sbin/stand/`. Field layouts are those of the CRIME 1.5 specification (`root/spec/crime.txt`, register tables 5-8 to 5-17 and 6-13 to 6-20). Every row carries a label in its last column.

| Offset | Register | Role, hardware effect and the code that shows it | Label |
|---|---|---|---|
| `+0x30` | Watchdog Timer | the two-stage reset counter (table 5-14: bit 20 time-out flag, bits 19:0 count). `mlreset` in `kernel.o` stores 0 to it just before it calls `init_sysid`, which stops and clears the counter for the whole run; no other graphics kernel or diagnostic code writes it | established |
| `+0x50` | CPU Error Enable, revision 0 only | the enable word of the revision-0 part. `mlreset` in `kernel.o` stores 1023 (0x3ff) to it only when `get_crimerev` returns 0, at `.L00008998`, and no later part has the register | established |
| `+0x58` | VICE Error Address | the address latched when the video engine's access failed. `VEC_dbe` and `VEC_ibe` read it with `+0x40`, `unmap_physaddr` reads it between the CPU and memory error registers, and `symmon.IP32` saves it at 0xa00104e8 in its exception frame | established |
| `+0x258` | Memory Error Address | the 30-bit address of the first failing memory access (table 6-17). `ecc_handler` in `kernel.o` reads it as the address to scrub, and `VEC_dbe` and `unmap_physaddr` save it with the status | established |
| `+0x268` | ECC Generated Check Bits | the check bytes the controller computed for the failing word (table 6-19). `dobuserre` in `kernel.o` reads it with `+0x260` to print both words, and `unmap_physaddr` saves it in the same snapshot; `symmon.IP32` saves it at `0xa0010528` | established |
| `+0x270` | ECC Replacement Check Bits | the byte replicated four times as the check bits when `+0x200` bit 1 is set (table 6-20). `symmon.IP32` loads it at `0xa0010538` as the last register of its exception frame; no shipped code writes it | established |
| `+0x218` | Bank 2 Control | reset value 2; with 32 MiB parts its match field selects addresses 0x0400_0000 to 0x05ff_ffff (bits 29:25 equal to 2). The sizing loops of `cpu_get_memsize` in `symmon.IP32` (the load at 0xa0027e78) and of `ide.IP32` (from 0xa00f025c) reach it on their second pass from `+0x210`, and no shipped code writes it (table 6-14) | established |
| `+0x220` | Bank 3 Control | reset value 3, which puts a 32 MiB bank at 0x0600_0000 to 0x07ff_ffff. With 128 MiB parts, bits 4:2 of 3 are 0, the same match as bank 0, so firmware has to rewrite the field before a 64 Mbit bank 3 is usable; no shipped IRIX code does (table 6-14, `root/spec/crime.txt`) | established |
| `+0x228` | Bank 4 Control | reset value 4, selecting 32 MiB at 0x0800_0000 to 0x09ff_ffff; the 128 MiB form compares bits 4:2 of 4, which is 1, and so decodes the 128 MiB window at 0x0800_0000 (table 6-14, `root/spec/crime.txt`) | established |
| `+0x230` | Bank 5 Control | the sixth register, reset value 5: 32 MiB parts answer at 0x0a00_0000. The two different decodes of one register, five bits against address bits 29:25 or three bits against 29:27, mean bank 5 and bank 4 collide under 128 MiB parts, where the lower number wins (table 6-14, `root/spec/crime.txt`) | established |
| `+0x238` | Bank 6 Control | reset value 6 selects 0x0c00_0000 to 0x0dff_ffff with 32 MiB parts. `cpu_get_memsize` in `symmon.IP32` loads it as the sixth pass of its loop at 0xa0027e78, which ends when the counter reaches 8 at 0xa0027e70 (table 6-14) | established |
| `+0x240` | Bank 7 Control | the last bank register, reset value 7, covering 0x0e00_0000 to 0x0fff_ffff with 32 MiB parts, so eight such banks reach 256 MiB from physical 0. The loop of `ide.IP32` ends after it (table 6-14, `root/spec/crime.txt`) | established |
| `+0x248` | Refresh Counter | an 11-bit SDRAM refresh interval (bits 10:0, table 6-15). The shipped graphics kernel and the diagnostics never touch it, so the PROM's value stays in force; the field has no reset value in the specification (`root/spec/crime.txt`) | inferred |

### Register entries whose sites need more than three names

- `+0x0` ID-Revision: the chip identity doubleword, family value 0xa in bits 7:4 and revision in bits 3:0, revision 1 on the 1.1 part (table 5-8). Established.
  `crimeProbe` in `crime_init.o` keeps the low byte and rejects any high nibble other than 0xa.
  It returns 0 for exactly 0xa0, the revision-0 part, and 1 for every later revision.
  `get_crimerev` in `kernel.o` loads the whole doubleword and derives a revision code of 17 from a non-zero low nibble, 19 from an upper word of 1 and 20 from any other non-zero upper word.
  `__sysad_wbflush` follows a `sync` with a load of the register, so the read completes only once the CPU write buffer has drained.
- `+0x4` ID-Revision, low word: the same identity byte read as a 32-bit load at byte offset 4, the low half in big-endian order. Established.
  `ide.IP32` loads it at 0xa00e4514 and again at 0xa010ca00.
  Both loads are followed by a compare with 0xa1 (`li at,161`, at 0xa00e4518 and 0xa010ca0c), so the diagnostics proceed only on family 0xa revision 1.
- `+0x8` CPU Interface Control: the processor-interface mode word (table 5-9). Established.
  `mlreset` in `kernel.o` loads it on entry and stores it back with bit 9 (watchdog enable) cleared.
  It also sets bits 13:12 when the implementation field of the processor revision register is 0x23 or higher, and clears them otherwise (masks -513, -12801 and 0x3000).
  `flushbus` and `badaddr` in `kernel.o` load it only to order earlier register writes, and the load result is discarded.
  `ide.IP32` stores 0x400 (bit 10, soft reset) at 0xa00e47a8 and 0x800 (bit 11, cold reset) at 0xa00e47c4, each in a loop that repeats until the machine resets.
- `+0x10` Interrupt Status: the read-only OR of the hardware and software interrupt registers (table 5-10). Established.
  `crimeFifoFullHandler` in `crime.o` shifts bit 26, the rendering-engine FIFO-full level, to the sign position to test it.
  `add_vice` in `kernel.o` masks bit 31, the VICE line, to decide whether it registers a video-engine board through `add_to_inventory`.
  `intr` in `kernel.o` reads it to find the pending sources.
  The routine at 0xa00c4ba8 in `ide.IP32` prints its low 16 bits, the MACE sources.
- `+0x18` Interrupt Enable: the interrupt priority mask, written by IRIX as its only interrupt-level control. Established.
  `VEC_int` in `kernel.o` loads it on entry and installs the mask for the active level from the 64-bit level table indexed by the spl level.
  `splx`, `spl0` and `spl7` write the mask of the new level to it, so priority is realised by rewriting this register rather than the processor's own mask.
  `mlreset` writes 0 to it before any vector is registered.
- `+0x28` Hardware Interrupt: the edge-latched interrupt causes, cleared by writing zero to the bit (table 5-13). Established.
  `crimeRetraceHandler` in `crime_retrace.o` clears bit 16 (mask 0xfffeffff) and `crimePreblankHandler` clears bit 17 (mask 0xfffdffff).
  `crime_hli_handler` picks the mask for GBE line 0, 1, 2 or 3 by a compare chain (0xfffe, 0xfffd, 0xfffb, 0xfff7 in the high half) and writes it back.
  `crime_init` in `crime.o` clears bits 19:16 with mask 0xfff0ffff before it registers the retrace vectors.
  `badaddr` in `kernel.o` reads it after a probe load and tests mask 0x300080, so a memory error (bit 21), a CPU interface error (bit 20) or MACE line 7 makes the probe fail.
- `+0x38` Crime Timer: the free-running 32-bit timer on the 66.7 MHz clock (table 5-15), which IRIX also uses as a stopwatch by writing it. Established.
  `_cpuclkper100ticks` in `kernel.o` stores 0 and polls until the sign-extended low word reaches 23496 while sampling the processor count register.
  `_ticksper1024inst` subtracts two loads around a 512-iteration spin loop.
  `delay_calibrate` does the same around a long spin loop, multiplies the difference by 15 and divides by 100000 to get the microsecond loop count.
  `absolute_rtc_current_time` returns its low word.
  `ide.IP32` stores 0 at 0xa00fea80 and spins until the count passes the microsecond argument times 66.
- `+0x40` CPU Error Address: bits 33:2 of the physical address of a failed processor access (table 5-16). Established.
  `VEC_dbe` and `VEC_ibe` in `kernel.o` copy it into kernel globals beside `+0x48`, `+0x58` and the memory error registers.
  `ecc_handler` and `unmap_physaddr` read it for the correctable-error report.
  `symmon.IP32` saves it first, at 0xa00104c8, into its exception frame.
- `+0x48` CPU Error Status: bit 2 CPU illegal address and bits 1:0 the write-parity flags of revision 1 and later (table 5-17), cleared by software. Established.
  `badaddr`, `wbadaddr` and `earlybadaddr` in `kernel.o` store 0 to it before a probe and reload it afterwards, so a stale error cannot be blamed on the probe.
  `VEC_dbe` stores its snapshot and then zeroes it, and `mlreset` zeroes it on entry.
- `+0x208` Bank 0 Control: the first of eight SDRAM bank registers (table 6-14: bit 8 part size, bits 4:0 the address match). Established.
  `cpu_get_memsize` in `symmon.IP32` loads it as a doubleword at 0xa0027e44 and uses it as the reference value.
  A later bank is counted only when its register differs from this one.
  `ide.IP32` reads its low half at 0xa00f022c and its high half at 0xa00f0230.
- `+0x20c` Bank 0 Control, low word: the low half of bank 0, whose bit 8 is the part size. Established.
  `ide.IP32` loads it with `lw` at 0xa00f022c before its sizing loop.
  It keeps the value at stack slot 20 as the template that identical banks are compared against.
- `+0x210` Bank 1 Control: the second bank register and the start of the sizing loop. Established.
  `cpu_get_memsize` in `symmon.IP32` starts its pointer here, `ori a2,a2,0x210` at 0xa0027e6c.
  It adds 128 MiB for bit 8 set and 32 MiB for clear to a running total, skipping any bank equal to bank 0.
  `ide.IP32` runs the same loop from 0xa00f025c.
- `+0x214` Bank 1 Control, low word: the low half of bank 1 as a 32-bit load. Established.
  `ide.IP32` loads it at 0xa00f0264 with `lw t5,4(v0)`.
  It tests bit 8 of the value against the bank-0 low word to choose 32 or 128 MiB.
- `+0x21c` Bank 2 Control, low word: the low half of bank 2 as a 32-bit load. Established.
  `ide.IP32` loads it with `lw t3,12(v0)` at 0xa00f02ac, in the first of its six unrolled passes after bank 1.
  A bank is skipped only when both of its words equal bank 0's; otherwise bit 8 of this word adds 32 or 128 MiB to the total.
- `+0x224` Bank 3 Control, low word: bank 3's size bit and match field. Established.
  The next unrolled pass of the `ide.IP32` sizing loop reads it with `lw t1,12(v0)` at 0xa00f02f4, after the pointer has advanced by 8.
  It is compared with the bank-0 low word kept at stack slot 20, and bit 8 selects the size added.
- `+0x22c` Bank 4 Control, low word: read by the third pass of the same loop. Established.
  `ide.IP32` has `lw t7,12(v0)` at 0xa00f033c, with the high word of the bank loaded at 0xa00f0338.
  The 0x100 mask on it picks 0x02000000 or 0x08000000 for the running total in `v1`.
- `+0x234` Bank 5 Control, low word: the fourth pass, which loads it at 0xa00f0384 with `lw t5,12(v0)`. Established.
  Its high word comes from `lw t4,8(v0)` at 0xa00f0380, and both are compared with bank 0 before the size test.
- `+0x23c` Bank 6 Control, low word: loaded by the fifth pass at 0xa00f03cc with `lw t3,12(v0)`. Established.
  Equality with both words of bank 0 skips the bank; a differing word falls through to the bit 8 test.
- `+0x244` Bank 7 Control, low word: the last word the sizing loop reads. Established.
  `ide.IP32` loads it with `lw t1,12(v0)` at 0xa00f0414, the sixth unrolled pass, the last of the loop.
  Banks 2 to 7 therefore each contribute one high and one low load, as the pairs at `+0x218` to `+0x240` already show.
- `+0x250` Memory Error Status: bits 27:25 invalid address on RMW, write or read, bits 24:23 ECC read errors, bit 22 multiple hard errors, bits 21:20 hard and soft error, bits 18:15 the requesting unit (table 6-16). Established.
  `badaddr` and `VEC_dbe` in `kernel.o` store 0 to it to clear it before and after a probe.
  `ecc_error_correction` stores 0 to it after `scrub_memory` has rewritten the faulty word.
- `+0x260` ECC Syndrome Bits: one syndrome byte for each 64-bit quarter of the 256-bit memory word (table 6-18). Established.
  A routine without a symbol that follows `ecc_handler` in `kernel.o` stores it at record offset 140, beside two 0xdeadbeef filler words.
  `dobuserre` and `unmap_physaddr` read it to report the failing bits.
