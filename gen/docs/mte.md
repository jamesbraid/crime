# O2 CRIME memory transfer engine registers and tile layout

<!-- generated from defs/mte.toml by defs-gen - do not edit, change the source -->

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
| `mode` | 0x3000 | rw | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `bytemask` | 0x3008 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `stipplemask` | 0x3010 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fg` | 0x3018 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `src0` | 0x3020 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `src1` | 0x3028 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `dst0` | 0x3030 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `dst1` | 0x3038 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `src_ystep` | 0x3040 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `dst_ystep` | 0x3048 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `null` | 0x3070 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `flush` | 0x3078 | rw | 64 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |

### Register `mode`

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

### Register `stipplemask`

### Register `fg`

### Register `src0`

### Register `src1`

### Register `dst0`

### Register `dst1`

### Register `src_ystep`

### Register `dst_ystep`

### Register `null`

### Register `flush`

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
| `SUBTILE_BLOCK_BYTES` | 0x20 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | 8 bytes by 4 rows |
| `SUBTILE_BYTES` | 0x2000 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | 128 bytes by 64 rows |
| `TILE_BYTES` | 0x10000 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| `TILE_ROWS` | 0x80 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| `TILE_ROW_BYTES` | 0x200 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `mode` | 0x10b | vector | copy=0, depth=1, dst_buf=2, src_ecc=1, dst_ecc=1 |
| `mode` | 0x820 | vector | copy=1, stipple=0, depth=0, src_buf=1, dst_buf=0 |
| `ADDR` | 0x400020 | vector | byte_col=64, row=32 |
