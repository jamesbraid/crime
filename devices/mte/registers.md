<!-- generated from devices/mte/registers.toml by defs-gen - do not edit, change the source -->

# O2 CRIME memory transfer engine registers and tile layout

CRIME memory transfer engine registers, address word and tile geometry.

Unit `mte`, macro prefix `MTE`.
Default source: published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| re | byte |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `mode` | 0x3000 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `bytemask` | 0x3008 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `stipplemask` | 0x3010 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fg` | 0x3018 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `src0` | 0x3020 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `src1` | 0x3028 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `dst0` | 0x3030 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `dst1` | 0x3038 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `src_ystep` | 0x3040 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `dst_ystep` | 0x3048 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `null` | 0x3070 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `flush` | 0x3078 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |

### Register `mode`

Table 7-15 gives the register as 32 bits, readable and writable (established, [spec] PDF 183). Bits 31:12 are reserved (established, [spec] PDF 184). Bit 11 selects clear (0) or copy (1) (established, [spec] PDF 184). Bit 10 is described as enabling stipple application during clear operations; the table prints its values as 0 and 1 with enable and disable in that order. The X server sets bit 10 for its stippled fill (established, docs/mte.md), so 1 means enabled (inferred). Pixel depth value 3 is reserved (established, [spec] PDF 184). Buffer selector value 7 is reserved in both the source and destination fields (established, [spec] PDF 184 and 185). Bits 1 and 0 ask for ECC when reading the source and when writing the destination (established, [spec] PDF 185).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11 | `copy` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 10 | `stipple` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 9:8 | `depth` | established | bits8=0, bits16=1, bits32=2 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7:5 | `src_buf` | established | fb_a=0, fb_b=1, fb_c=2, tex=3, lin_a=4, lin_b=5, cid=6 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 4:2 | `dst_buf` | established | fb_a=0, fb_b=1, fb_c=2, tex=3, lin_a=4, lin_b=5, cid=6 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 1 | `src_ecc` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 0 | `dst_ecc` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `bytemask`

Table 7-15 gives the byte mask as 32 bits, readable and writable (established, [spec] PDF 183). Its bit polarity and bit-to-byte order are not stated in the specification (unknown).

### Register `stipplemask`

Write-only, and marked non-global in Table 7-15 (established, [spec] PDF 183). Reads are not defined.

### Register `fg`

The clear value, 32 bits, readable and writable (established, [spec] PDF 183).

### Register `src0`

Source start address, framebuffer or linear, 32 bits, readable and writable (established, [spec] PDF 183).

### Register `src1`

Second source address word, framebuffer or linear, 32 bits, readable and writable. Table 7-15 describes it as a start address, the same as src0 (established, [spec] PDF 183).

### Register `dst0`

Destination start address, framebuffer or linear, 32 bits, write-only and marked non-global (established, [spec] PDF 183).

### Register `dst1`

Destination end address, framebuffer or linear, 32 bits, write-only and marked non-global (established, [spec] PDF 183).

### Register `src_ystep`

Source row step, 32 bits, readable and writable (established, [spec] PDF 184).

### Register `dst_ystep`

Destination row step, 32 bits, readable and writable (established, [spec] PDF 184).

### Register `null`

Null register, write-only and marked non-global (established, [spec] PDF 184). Its effect is not stated (see docs/mte.md).

### Register `flush`

Flush command, 32 bits, write-only (established, [spec] PDF 184).

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `ADDR` | 32 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |

### Word `ADDR`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `byte_col` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `row` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `HOST_CHUNK_BYTES` | 0x20000 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Largest chunk of a kernel host-memory clear or copy. |
| `MODE_HOST_CLEAR` | 0x11 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Mode word of the shipped IRIX kernel's host-memory clear: clear, linear A, destination ECC. |
| `MODE_HOST_COPY` | 0x897 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Mode word of the shipped IRIX kernel's host-memory copy: copy, linear A to linear B, both ECC bits. |
| `MODE_X_COPY` | 0x820 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Mode word the shipped IRIX X server uses for a copy: copy, source TLB B, destination TLB A, 8-bit. |
| `SUBTILE_BLOCK_BYTES` | 0x20 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | 8 bytes by 4 rows |
| `SUBTILE_BYTES` | 0x2000 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | 128 bytes by 64 rows |
| `TILE_BYTES` | 0x10000 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| `TILE_ROWS` | 0x80 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| `TILE_ROW_BYTES` | 0x200 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| `X_BLOCK_BYTES` | 0x100 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Width in bytes of the whole-row blocks the X server sends to the engine. |
| `X_ROWS_16` | 0x10 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Rows in a block at 16 bits per pixel. |
| `X_ROWS_32` | 0x8 | established | shipped IRIX O2 graphics objects, per kudzu docs/crime.md | Rows in a block at 32 bits per pixel. |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `mode` | 0x10b | vector | copy=0, depth=1, dst_buf=2, src_ecc=1, dst_ecc=1 |
| `mode` | 0x820 | vector | copy=1, stipple=0, depth=0, src_buf=1, dst_buf=0 |
| `ADDR` | 0x400020 | vector | byte_col=64, row=32 |
