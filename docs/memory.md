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
