# O2 CRIME rendering engine: interface buffer, linear TLBs and clip state

<!-- generated from defs/re.toml by defs-gen - do not edit, change the source -->

CRIME rendering engine interface buffer, translation tables, pixel pipeline registers and status.

Unit `re`, macro prefix `RE`.
Default source: published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| re | byte |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `ib_data` | 0x0 | rw | 64 | 64 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `ib_addr` | 0x200 | rw | 64 | 64 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `ib_ctl` | 0x400 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `ib_reset` | 0x408 | w | 32 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_fb_a` | 0x1000 | rw | 64 | 64 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_fb_b` | 0x1200 | rw | 64 | 64 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_fb_c` | 0x1400 | rw | 64 | 64 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_tex` | 0x1600 | rw | 64 | 28 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_cid` | 0x16e0 | rw | 64 | 4 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_lin_a` | 0x1700 | rw | 64 | 16 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tlb_lin_b` | 0x1780 | rw | 64 | 16 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `bufmode_src` | 0x2000 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `bufmode_dst` | 0x2008 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `clipmode` | 0x2010 | rw | 32 |  | re | unknown | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `drawmode` | 0x2018 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `scrmask` | 0x2020 | rw | 64 | 5 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `scissor` | 0x2048 | rw | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `winoffset_src` | 0x2050 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `winoffset_dst` | 0x2058 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `primitive` | 0x2060 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `vertex_x` | 0x2070 | w | 32 | 3 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `vertex_gl` | 0x2080 | w | 32 | 6 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `xfer_src_addr` | 0x20a0 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `xfer_src_stride` | 0x20a4 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `xfer_src_xstep` | 0x20a8 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `xfer_src_ystep` | 0x20ac | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `xfer_dst_addr` | 0x20b0 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `xfer_dst_stride` | 0x20b4 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `stipple_mode` | 0x20c0 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `stipple_pattern` | 0x20c4 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fg_color` | 0x20d0 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `bg_color` | 0x20d8 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_start` | 0x20e0 | w | 32 | 4 | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_drdx` | 0x20f0 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_dgdx` | 0x20f4 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_drdy` | 0x20f8 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_dgdy` | 0x20fc | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_dbdx` | 0x2100 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_dadx` | 0x2104 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_dbdy` | 0x2108 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `shade_dady` | 0x210c | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_mode` | 0x2110 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_format` | 0x2118 | rw | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_sqs` | 0x2120 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_tqs` | 0x2128 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_qs` | 0x2130 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_stflags` | 0x2134 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_dsqdx` | 0x2138 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_dsqdy` | 0x2140 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_dtqdx` | 0x2148 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_dtqdy` | 0x2150 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_dqdx` | 0x2158 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_dqdy` | 0x215c | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_border` | 0x2160 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `tex_envcolor` | 0x2168 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fog_color` | 0x2170 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fog_fs` | 0x2178 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fog_dfdx` | 0x2180 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `fog_dfdy` | 0x2188 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `aa_line` | 0x2190 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `aa_cov` | 0x2194 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `alphatest` | 0x2198 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `blend_color` | 0x21a0 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `blend_func` | 0x21a8 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `logicop` | 0x21b0 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `colormask` | 0x21b8 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `depth_func` | 0x21c0 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `depth_zs` | 0x21c8 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `depth_dzdx` | 0x21d0 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `depth_dzdy` | 0x21d8 | w | 64 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `stencil_mode` | 0x21e0 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `stencil_mask` | 0x21e8 | rw | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `pixpipe_null` | 0x21f0 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `pixpipe_flush` | 0x21f8 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `status` | 0x4000 | r | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `ib_discard` | 0x4008 | w | 32 |  | re | unknown | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |

### Register `ib_data`

The interface buffer holds 64 queued writes. The specification's table
names 128 entries, but its address half sits 512 bytes above the data
half, which leaves room for 64 doublewords of data, and shipped software
walks a ring of 64 (RE_IB_ENTRIES). Each queued write has a data
doubleword and an address doubleword; the address half is decoded below.
The window shares its low offsets with the CRIME CPU-interface registers,
so the rendering engine registers live in their own address space.

Array of 64 registers, stride 8.

### Register `ib_addr`

Array of 64 registers, stride 8.

### Register `ib_ctl`

The specification names this word's thresholds in its interface-buffer section.
Above the stall level, host writes stall for the stall count, given in 66 MHz
cycles. Above the interrupt level, the host receives an interrupt; it then
either polls the status register until the level falls or enables the
buffer-empty interrupt (established, [spec] PDF 185). The specification gives
no bit layout for these thresholds, so the field bits below stay inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:21 | `full` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 20:14 | `empty` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 13:7 | `stall` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 6:0 | `count` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `ib_reset`

### Register `tlb_fb_a`

The frame-buffer tables A, B and C each hold 64 doublewords, the texture
table 28 and the clip-ID table 4. Shipped software loads all of them with
64-bit stores. A frame-buffer, texture or clip-ID doubleword holds four
16-bit tile entries, tile column 0 in bits 63:48. The entry is the physical
address of a 64 KiB tile shifted right by 16 (the page number counted in
64 KiB units). Shipped software sets the top bit of each frame-buffer and
texture entry it uses and writes clip-ID entries without it, so the top
bit is inferred to be a valid bit (and doubles as address bit 31 of the
tile). The register index of tile (x, y) in a frame-buffer table is
y * 4 + x / 4. The linear tables further down use 32-bit entries.

Array of 64 registers, stride 8.

### Register `tlb_fb_b`

Array of 64 registers, stride 8.

### Register `tlb_fb_c`

Array of 64 registers, stride 8.

### Register `tlb_tex`

Array of 28 registers, stride 8.

### Register `tlb_cid`

Array of 4 registers, stride 8.

### Register `tlb_lin_a`

Array of 16 registers, stride 8.

### Register `tlb_lin_b`

Array of 16 registers, stride 8.

### Register `bufmode_src`

The pixel pipeline group starts at the base of its own 4 KiB window. Sizes
and the read/write column are the specification's register table. The
specification lists the vertex and stepper registers as 32 or 64 bits and
shipped software writes adjacent 32-bit registers with one 64-bit store
(the GL vertex pair, for one). The transfer source stride is absent from
the specification's table; the public NetBSD driver and shipped software
both write it, so it is established from them. Registers marked w are
written only; the others read back. Global registers apply once the pipe
has drained, non-global ones per primitive ([spec] PDF 164).
Writing any pixel pipeline register with the start-alias bit set commits
the queued state as one primitive.

### Register `bufmode_dst`

### Register `clipmode`

The specification's table (established, [spec] PDF 173, Table 7-6) puts the
enable for screen mask 0 at bit 9 and for mask 4 at bit 5, with the
inside-select (scrMaskMode) for mask 0 at bit 4 and for mask 4 at bit 0. The
kernel sets bit 5 plus i and bit i for rectangle i (docs/context.md), which is
the reverse order. Which order the engine uses is unknown. The fields below
give the bit ranges only.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11 | `clip_id_test` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 10 | `clip_id_map` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 9:5 | `enable` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 4:0 | `mode` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `drawmode`

Point and rectangle primitives are always flat shaded, whatever the shade bit (16) says. Their colour is the foreground colour register alone (established, [spec] PDF 200, section 7.3.7.1). Triangles and lines are smooth shaded only when bit 16 is set.

The specification's table gives bit 8 as logic-op enable and bit 9 as dither
(established, [spec] PDF 174, Table 7-7). The fields below follow the drivers,
which use the reverse. That conflict is not settled; see docs/pixel-arithmetic.md.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23 | `no_conflict` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 22 | `gl` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 21 | `pixel_xfer` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 20 | `scissor` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 19 | `line_stipple` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 18 | `poly_stipple` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 17 | `opaque_stipple` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 16 | `shade` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15 | `texture` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 14 | `fog` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 13 | `coverage` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 12 | `aa_line` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 11 | `alpha_test` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 10 | `alpha_blend` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 9 | `logic_op` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 8 | `dither` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7 | `bit_mask` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 6:3 | `byte_mask` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 2 | `depth_test` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 1 | `depth_mask` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 0 | `stencil` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `scrmask`

Screen mask n is one rectangle in framebuffer coordinates, not window
coordinates (established, [spec] PDF 176, Table 7-11). Its fields are the
same as the scissor's. The enable and inside-select bits are in ClipMode;
see the note there for the order in which the bits pair with the masks.

Array of 5 registers, stride 8.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63:48 | `min_x` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 47:32 | `min_y` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 31:16 | `max_x` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `max_y` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `scissor`

Scissor rectangle in window coordinates. The minimum edges are inclusive and
the maximum edges exclusive. DrawMode bit 20 enables the test (established,
[spec] PDF 176, Table 7-10).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63:48 | `min_x` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 47:32 | `min_y` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 31:16 | `max_x` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `max_y` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `winoffset_src`

Window-to-framebuffer offset for the read window (established, [spec] PDF 175
to 176, Table 7-9, the WinOffset format). The specification does not say
whether the two halves are signed. The kernel writes each half as the window
origin minus 4096 (see docs/context.md), so the sign convention is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `y` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `winoffset_dst`

Window-to-framebuffer offset for the drawing window (established, [spec] PDF
175 to 176, Table 7-9). The layout and the sign question are the same as for
the source offset (the read window's register).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `y` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `primitive`

The specification gives line_width as the subpixel line width divided by two
(established, [spec] PDF 175, Table 7-8). Bits 23:19 are reserved in the
specification. DrawMode bit 19, which enables line stipple, is a separate
control and does not appear in the primitive word.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `op` | established | point=0, line=1, triangle=2, rect=3 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 18 | `line_skip_last` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 17:16 | `edge` | established | lr_bt=0, rl_bt=1, lr_tb=2, rl_tb=3 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `line_width` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `vertex_x`

Array of 3 registers, stride 4.

### Register `vertex_gl`

Readback extents (inferred, software expectation). A GL readback of a
rectangle writes inclusive pixel indices, not the half-open edges of the
scissor: the far x is the start x plus the programmed copy width minus one,
and the far y is the start y minus the row count plus one, each as
(index << 6) & 0x7ffff. A one-row readback therefore writes equal y words and
still copies one row. Only driver writes show this. How the engine resolves a
fractional edge is unknown. See docs/pixel-transfer.md.

Array of 6 registers, stride 4.

### Register `xfer_src_addr`

Readback source start (inferred, software expectation). For a readback from a
buffer H rows high, the driver writes the x component as the window x and the
y component as H - 1 - window y, each masked to 11 bits. The 0x21000 window
bias drops out under that mask. For a 128-row buffer, y = 127 - window y. The
equation that combines this packed start with SrcWinOffset is unknown. See
docs/pixel-transfer.md.

### Register `xfer_src_stride`

### Register `xfer_src_xstep`

### Register `xfer_src_ystep`

### Register `xfer_dst_addr`

### Register `xfer_dst_stride`

Readback row-end increment (inferred, software expectation). With S bytes per
pixel, a scratch row pitch P and a programmed copy width C, the driver writes
S + max(P - C * S, 0). The row pitch is then (C - 1) * S + that value, which
equals P. The width C is the aligned width, not the requested width: the
driver rounds it up until the row is a multiple of eight bytes, so a
requested width of 15 at four bytes per pixel programs 16. See
docs/pixel-transfer.md.

### Register `stipple_mode`

Stipple sequence state: the starting pattern index, the maximum pattern index,
the starting repeat count and the maximum repeat count (established, [spec]
PDF 177, Table 7-12). The specification's reserved range is 23:20, which
includes bit 20, the top bit of max_index. max_index is therefore inferred
(conflict). The specification does not say what the sequence does after
max_index, so that behaviour is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28:24 | `index` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 20:16 | `max_index` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:8 | `repeat` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7:0 | `max_repeat` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `stipple_pattern`

### Register `fg_color`

### Register `bg_color`

### Register `shade_start`

Array of 4 registers, stride 4.

### Register `shade_drdx`

### Register `shade_dgdx`

### Register `shade_drdy`

### Register `shade_dgdy`

### Register `shade_dbdx`

### Register `shade_dadx`

### Register `shade_dbdy`

### Register `shade_dady`

### Register `tex_mode`

### Register `tex_format`

### Register `tex_sqs`

### Register `tex_tqs`

### Register `tex_qs`

### Register `tex_stflags`

tex_stflags sits between tex_qs and tex_dsqdx and is absent from the
specification's register table, which skips from the one to the other.
Shipped software computes one flag per texture coordinate for each textured
triangle from range tests on the vertex values, writes the s flag in bit 0
and the t flag in bit 1 with a 32-bit store, and scales the start and slope
values of a flagged coordinate by 2^39 instead of 2^43. Inferred: a set
flag tells the engine that coordinate's stepper carries four fewer fraction
bits. The layout is established; that meaning is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `t_flag` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 0 | `s_flag` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `tex_dsqdx`

### Register `tex_dsqdy`

### Register `tex_dtqdx`

### Register `tex_dtqdy`

### Register `tex_dqdx`

### Register `tex_dqdy`

### Register `tex_border`

### Register `tex_envcolor`

### Register `fog_color`

### Register `fog_fs`

### Register `fog_dfdx`

### Register `fog_dfdy`

### Register `aa_line`

Antialiasing applies only to point and line primitives and only to RGB(A) pixels. It acts on alpha after fogging and before the alpha test. For antialiased lines the specification assumes a line width of two (established, [spec] PDF 206, section 7.3.7.10). The coverage value is a 0.8 fixed-point number, computed from a 128 by 8 slope-and-distance table and a 128 by 4-bit endpoint table, both in ROM (established, [spec] PDF 206-207). The ROM contents are not published, so they are unknown.
The register table gives this word as a 2.12 two's complement value for both the slope and the ideal minor coordinate (established, [spec] register map, PDF 169). docs/context.md reads the slope from the same table as 2.14 in bits 31:16. That conflicts with this layout and is not resolved here.

### Register `aa_cov`

### Register `alphatest`

Alpha test function and reference. Bits 31:12 are reserved in the specification.
The test runs on fragment alpha after antialias coverage and only for RGB(A)
pixels, and it is enabled by DrawMode bit 11. A fragment whose comparison fails
is discarded.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:8 | `func` | established | never=0, less=1, equal=2, lequal=3, greater=4, notequal=5, gequal=6, always=7 | published CRIME 1.5 draft specification, PDF page 180 | Comparison function, codes 0 to 7 as in the enum. Codes 8 to 15 have no meaning in the specification's table; their behaviour is unknown. |
| 7:0 | `ref` | established |  | published CRIME 1.5 draft specification, PDF page 180 | 8-bit reference value that the fragment alpha is compared with. |

### Register `blend_color`

Blend constant colour, read and written as a 32-bit word (established, [spec] register map, PDF 169, which names it "blend RGBA constant color"). The constant-color and constant-alpha factor codes of Blend.func select it. The specification does not draw its per-byte layout, so the byte order is unknown.

### Register `blend_func`

Blend equation and factors. The source factor table has a SRC_ALPHA_SATURATE row with no factor given, and the destination factor table has no such code (established absence, [spec] Tables 7-20 and 7-21, PDF 208-209). The specification's factor arithmetic therefore omits it. It also gives no clamp for ADD or SUBTRACT. Both are unknown here; see docs/pixel-arithmetic.md.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:8 | `op` | established | add=0, min=1, max=2, subtract=3, reverse_subtract=4 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7:4 | `src` | established | zero=0, one=1, dst_color=2, one_minus_dst_color=3, src_alpha=4, one_minus_src_alpha=5, dst_alpha=6, one_minus_dst_alpha=7, constant_color=8, one_minus_constant_color=9, constant_alpha=10, one_minus_constant_alpha=11, src_alpha_saturate=12 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 3:0 | `dst` | established | zero=0, one=1, src_color=2, one_minus_src_color=3, src_alpha=4, one_minus_src_alpha=5, dst_alpha=6, one_minus_dst_alpha=7, constant_color=8, one_minus_constant_color=9, constant_alpha=10, one_minus_constant_alpha=11 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `logicop`

The register's own field table is empty in the specification (section 7.3.1.17). The sixteen bitwise operations are listed in Table 7-23 (established, [spec] PDF 210-211, section 7.3.7.14), and docs/pixel-arithmetic.md gives them. The operation acts on the source colour after dithering and the destination read from the frame buffer. The numeric code for each operation comes from the drivers, not the specification.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:0 | `code` | inferred | clear=0, and=1, and_reverse=2, copy=3, and_inverted=4, noop=5, xor=6, or=7, nor=8, equiv=9, invert=10, or_reverse=11, copy_inverted=12, or_inverted=13, nand=14, set=15 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `colormask`

### Register `depth_func`

Depth comparison and clear-depth word. The specification omits the field
encoding (established, [spec] PDF 169-170). The field layout below is inferred
from the words the shipped driver stores here. Bits 31:28 have no established
meaning.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:25 | `func` | inferred | never=0, less=1, equal=2, lequal=3, greater=4, notequal=5, gequal=6, always=7 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Depth comparison. The codes follow the GL order from NEVER (0) to ALWAYS (7). The driver writes the GL function minus GL_NEVER. Codes are a software expectation, not a measured chip encoding. |
| 24 | `tag_clear` | unknown |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | The driver sets this bit on its tagged-clear path (docs/pixel-arithmetic.md). What the engine does with it is unknown: no shipped software or published source depends on more than that use. |
| 23:0 | `clear` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Clear depth in 24-bit depth-buffer units, computed by the driver from glClearDepth with truncation (docs/pixel-arithmetic.md). |

### Register `depth_zs`

Start depth of a triangle or depth span, a 25.12 two's complement value with
the fraction in the low 12 bits (established, [spec] PDF 169-170 and 212-213).
Written through its start alias, which commits the queued primitive.
The depth derivatives below use the same format.

### Register `depth_dzdx`

Depth step in x, 25.12 two's complement (established, [spec] PDF 169-170).
Written through its start alias, as for the start depth.

### Register `depth_dzdy`

Depth step in y, 25.12 two's complement (established, [spec] PDF 169-170).
Written through its start alias, as for the start depth.

### Register `stencil_mode`

Stencil test and update word. The specification leaves its field table empty
(established, [spec] PDF 182). The field positions below are inferred from the
words the shipped driver stores here. The six operation names are established
from [spec] Table 7-27 (PDF 214), but the specification's stencil section is
marked TBD. Its orientation of the comparison conflicts with the API and the
driver; see docs/pixel-arithmetic.md. Written through its start alias.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `ref` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Stencil reference value, eight bits. |
| 23:16 | `value_mask` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Comparison mask, eight bits, from the API stencil mask. Whether the chip applies it to both operands as the API does is unknown (docs/pixel-arithmetic.md). |
| 15:12 | `func` | inferred | never=0, less=1, equal=2, lequal=3, greater=4, notequal=5, gequal=6, always=7 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Stencil comparison. Codes 0 to 7 follow the GL order as for the depth comparison. The driver writes bit 15 clear. Codes 8 to 15 have no meaning in any source read here. |
| 11:8 | `fail_op` | inferred | keep=0, zero=1, replace=2, incr=3, decr=4, invert=5 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Stencil update when the stencil test fails. Codes 0 to 5 are the operations below; codes 6 to 15 have no meaning in any source read here. |
| 7:4 | `depth_fail_op` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Stencil update when the stencil test passes and the depth test fails. Same codes as fail_op. Which stored stencil operation the chip applies on a depth failure is not given by the specification (unknown). |
| 3:0 | `pass_op` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Stencil update when both tests pass. Same codes as fail_op. |

### Register `stencil_mask`

Stencil write mask. The driver writes either 0 or 0xff here on its depth path
(inferred). Only bits 7:0 are the mask; bits 31:8 have no established meaning.
Written through its start alias, as for the start depth.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `write_mask` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | Stencil write mask, bits 7:0. The driver writes 0 or 0xff here (inferred). The per-bit rule the chip applies is unknown; the API rule is that a set bit permits the stencil update and a clear bit keeps the old bit. |

### Register `pixpipe_null`

### Register `pixpipe_flush`

### Register `status`

The status register is read with 32-bit loads. Shipped software polls the
combined idle bit (28), reads the interface-buffer fill level from bits
24:18 to count free slots (64 minus the level) and reads the start and write
pointers when saving queued writes on a context switch. The read pointer
(17:12) and the setup and pixel-pipe idle bits (27, 26) are taken from the
public NetBSD driver and no shipped software reads them. Bit 25 is the
memory transfer engine idle bit in the NetBSD driver; the OpenBSD driver
names the same bit ready and never reads it. The kernel's transfer-wait
routine tests bit 25, which fits an idle reading, so the position is
established and the meaning inferred. The start field (5:0) is where the
entries not yet committed begin; its meaning is inferred. The specification's
register map lists the status registers as a user-space region, placed after
the MTE registers in the rendering block (established, [spec] PDF 162).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28 | `idle` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 27 | `setup_idle` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 26 | `pixpipe_idle` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 25 | `mte_idle` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 24:18 | `level` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 17:12 | `rd_ptr` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 11:6 | `wr_ptr` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 5:0 | `start` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Register `ib_discard`

ib_discard sits two doublewords above the status register. Shipped kernel
code stores zero to it with a 32-bit store, never reads it, and does so after
saving the outgoing client's queued writes on a context switch, after the
incoming client's loads, and at the end of each translation table loader.
The user-mode library and the X server never write it. Inferred: the write
discards the queued writes not yet committed. The register's position and
its write-zero use are established; that effect is inferred.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `BUFMODE` | 32 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `IBADDR_HI` | 32 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `LINENT` | 32 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `PIXEL_A1_RGB5` | 16 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `PIXEL_RGBA8` | 32 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `SCRMASK_HI` | 32 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `SCRMASK_LO` | 32 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |
| `TLBTILE` | 32 | inferred | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |

### Word `BUFMODE`

The buffer mode words (source and destination share one layout) pick the
buffer, its TLB and the pixel format. buf_type chooses tiled access
through a frame-buffer table or linear access through a linear table;
buf_depth is the word size in memory and pix_depth the pixel size, which
must not exceed it. ycrcb is valid in the source word only. Shipped
software writes the values in the vectors below; other bits are reserved
(one shipped swap path sets bit 30 as well). The specification's register
tables (established, [spec] PDF 171-172) mark bits 31:13 reserved and give
them no function. They also mark buf_type 3 and 6 and pix_type 4 to 14
reserved, and list only depth values 0 to 2 for buf_depth and pix_depth, so
value 3 of either depth field is not defined. Whether the hardware ignores
bits 31:13 on write or returns them on read is unknown; no shipped software
or published source depends on it.
When doublePix is set, doublePixSel says which half of the word is selected (established, [spec] PDF 171-172). The specification does not say which bit value picks the front half and which the back, so that mapping is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:10 | `buf_type` | established | fb_a=0, fb_b=1, fb_c=2, lin_a=4, lin_b=5 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 9:8 | `buf_depth` | established | bits8=0, bits16=1, bits32=2 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7:4 | `pix_type` | established | ci=0, rgb=1, rgba=2, abgr=3, ycrcb=15 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 3:2 | `pix_depth` | established | bits8=0, bits16=1, bits32=2 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 1 | `double_pix` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 0 | `double_pix_sel` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `IBADDR_HI`

ib_addr holds the address half of each queued write. Software decodes its
upper 32 bits (IBADDR_HI, the word at the register's own address in
big-endian layout) as the register's doubleword index within its group, the
group, a byte lane code and one flag bit; the hardware meaning of the lane
code and the flag is inferred. The index is address bits 10:3 and the group
is address bits 14:12 of the register; bit 11, the start alias, is the
address bit left out, so the flag is inferred to mark an entry written
through the start alias. Replay by software writes lane 3 as one
doubleword, lane 2 as the first (upper) data word at the register address,
lane 1 as the second data word four bytes higher, and treats lane 0 as an
error that writes nothing. The lower 32 bits are not decoded by any shipped
software read.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13 | `start_flag` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 12:11 | `lane` | inferred | none=0, word1=1, word0=2, dword=3 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 10:8 | `group` | established | interface=0, tlb=1, pixel_pipe=2, transfer=3 | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7:0 | `index` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `LINENT`

Each doubleword holds two 32-bit page entries, the even page in the upper
word and the odd page in the lower word. Software indexes a table with
address bits 16:13 and stores a page number with its top bit set, which is
inferred to be a valid bit. LINENT describes one such entry.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `valid` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 30:0 | `page` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `PIXEL_A1_RGB5`

16-bit RGB(A) colour pixel, named A1_RGB5 in the specification: alpha in bit 15, red in bits 14:10, green in bits 9:5 and blue in bits 4:0 (established, [spec] PDF 188, figure 5 in section 7.3.4.3). The NetBSD crmfb driver describes 16-bit raster operations as 5:5:5 with red at bit 11, green at 6 and blue at 1 (software expectation, public driver). That places the fields differently. The conflict is not resolved here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `alpha` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 14:10 | `red` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 9:5 | `green` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 4:0 | `blue` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `PIXEL_RGBA8`

32-bit RGBA colour pixel, named RGBA8 in the specification (8888): red in bits 31:24, green in bits 23:16, blue in bits 15:8 and alpha in bits 7:0 (established, [spec] PDF 188, figure 5 in section 7.3.4.3).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `red` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 23:16 | `green` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:8 | `blue` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 7:0 | `alpha` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `SCRMASK_HI`

Each screen mask is one clip rectangle; the end coordinates are exclusive.
The upper word (SCRMASK_HI, at the register's own address in big-endian
layout) holds the start corner and the lower word (SCRMASK_LO) the end
corner.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x_start` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `y_start` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `SCRMASK_LO`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x_end` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 15:0 | `y_end` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

### Word `TLBTILE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `valid` | inferred |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |
| 14:0 | `page` | established |  | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `IB_ENTRIES` | 0x40 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | shipped software walks the buffer as a ring of 64; the specification text says 128 |
| `LIN_TLB_REGS` | 0x10 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | doublewords per linear table, two page entries each |
| `START_ALIAS_BIT` | 0xb | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | address bit that selects the start alias of a register |
| `TLB_ENTRIES_PER_REG` | 0x4 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | four 16-bit tile entries in each frame-buffer, texture and clip-ID doubleword |
| `TLB_TILE_SHIFT` | 0x10 | established | published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings | entry is the physical address >> 16 (64 KiB tiles) |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `ib_ctl` | 0xfefff0a | vector | count=10, stall=126, empty=63, full=127 |
| `clipmode` | 0x21 | vector | mode=1, enable=1, clip_id_map=0, clip_id_test=0 |
| `clipmode` | 0x63 | vector | mode=3, enable=3 |
| `clipmode` | 0x3ff | vector | mode=31, enable=31 |
| `clipmode` | 0x821 | vector | mode=1, enable=1, clip_id_test=1 |
| `winoffset_src` | 0x10002 | vector | x=1, y=2 |
| `winoffset_dst` | 0x10002 | vector | x=1, y=2 |
| `primitive` | 0x3020000 | vector | op=3, line_skip_last=0, edge=2, line_width=0 |
| `stipple_mode` | 0x2050000 | vector | index=2, max_index=5, repeat=0, max_repeat=0 |
| `BUFMODE` | 0x504 | vector | buf_type=1, buf_depth=1, pix_type=0, pix_depth=1, double_pix=0 |
| `IBADDR_HI` | 0x1a0a | example | index=10, group=2, lane=3, start_flag=0 |
| `LINENT` | 0x80000123 | vector | page=291, valid=1 |
