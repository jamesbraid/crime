# Rendering TLB formats

Every client of the rendering TLB group at `0x15001000`, as the IRIX 6.5.30 kernel loads it. Offsets and register counts are in [CRIME_RE.h](../CRIME_RE.h). Labels: **established** (read from the cited function), **inferred**, **unknown**. Sources: `crime_kernel/decomp/crime_tiles.c` and `crime_dma.c`, same names in `crime_kernel/disasm/`.

All loaders write 64-bit values through KSEG1 (`0xA0000000 | address`) and, for the tile TLBs, finish with a write of 0 to `+0x4008` (established).

| Client | Registers | Entries | Entry value | Source |
|---|---|---|---|---|
| Frame buffer A, B, C (`+0x1000`, `+0x1200`, `+0x1400`) | 64 each | 16 bits, four per register, entry 0 in bits 63:48 | physical address >> 16 (64 KiB tile number), no flag bits | `crmAllocTiles`, `crmLoadTlbABC` (established) |
| Texture (`+0x1600`) | 28 | 16 bits, four per register | tile number with bit 15 set | `crmDefineTex`, `crmLoadTexTlb` (established; meaning of bit 15 inferred as valid) |
| Colour index (CID, `+0x16e0`) | 4 | 16 bits, four per register | the tile list entry unchanged | `crmLoadCidTlb` (established) |
| Linear A, B (`+0x1700`, `+0x1780`) | 16 each | 32 bits, two per register, even page in bits 63:32 | page frame number, bit 31 set | `loadLinearTlb` (established; see `docs/pixel-transfer.md`) |

## Details

- Tile numbers come from the kernel's tile allocator, which returns 4 KiB page frame numbers; `crmAllocTiles` stores `frame >> 4` as a 16-bit entry (established). A tile is 64 KiB, so 16 page frames. Kernel-pinned tile pages from the dynamic memory service (`crm_get_dms_tiles`) are stored as `(frame >> 4) | 0x8000` (established).
- Frame-buffer TLB load (`crmLoadTlbABC`): a drawable either carries a ready 64-bit image (flag bit 0 of the descriptor word at +0xc), copied straight into `4 * rows` registers, or a tile list and a rectangle: first column `byte +0x16`, columns `+0x18`, first row `+0x17`, rows `+0x19`. For each tile the register is `row * 4 + column / 4` and the slot is `column & 3`. Unused slots of a register are written as zero (established). The loader skips the work when the drawable's incarnation word (+0x10) matches what is already loaded for that TLB (established).
- Texture TLB: the kernel builds, per texture, an image of all 28 register values and their addresses (a 0x10-byte record per register: address at +0, value at +8; the image is 0x1d0 bytes, with a zero record at +0x1c0). `crmLoadTexTlb` writes all 28 doublewords on every bind (established). `crmDefineTex` fills up to six mip levels. A level's tiles are laid out as a grid, level 0 with a row pitch of 8 entries and every other level with 4, starting at a start index per level supplied by the caller. Width and height in tiles halve per level (established from the loop; the per-level start table is `[U]` because the decompiler lost the argument it comes from). When level 5 is requested for a texture that is the DMS kind, its entries copy neighbouring entries in the same register (established; reason unknown).
- A texture can hold at most 112 tiles (28 registers times four entries) (established arithmetic). The caller number space is limited to 0x80 textures per context.
- CID TLB: 16 entries in four registers; the count comes from the descriptor (+4) and entries past the count are zero (established). Register `n / 4` holds entry `n`, slot `n & 3`. What a CID tile holds (one tile covers 128 x 128 pixels at 32 bits) is covered by `GBE.h` and the overlay material, not here.

## Unknown

- Whether bit 15 of a frame-buffer or CID TLB entry means anything to the hardware, and what the engine does on an access through an entry whose bit is clear. The CRIME 1.5 specification text read so far does not settle it.
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
- The CRIME dispatcher (established): pending = INTSTAT (`+0x10`) AND the saved mask, low 32 bits. Vectors are run in priority order, taken from a per-vector value; INTSTAT is read again after each pass and the loop ends when nothing is pending. Each vector entry is 48 bytes, holds a handler, argument, a spl group count, a 64-bit mask of bits to block at lower levels while it runs, and flags. Up to 16 handlers can be ganged on one input (`crimegang`). The level-triggered inputs (25, 26) keep their own bit asserted until the FIFO level changes, which is why `crimeFifoFullHandler` raises thresholds before returning (see `CRIME_RE.h`).
- `setcrimevector` rejects inputs above 32 and priorities above 5 (established).

## Unknown

- The meaning of CONTROL bits 13:12 and 9 and of the write to `+0x10`.
- The source of inputs 28 and 29.
- Whether INTSTAT bits for edge sources clear on read, are cleared by writing `+0x28`, or both (`CRIME.h` records the retrace and pre-blank acknowledgement).
