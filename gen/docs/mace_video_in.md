# O2 MACE video input channel registers

<!-- generated from defs/mace_video_in.toml by defs-gen - do not edit, change the source -->

MACE video input channel registers.

Unit `mace_video_in`, macro prefix `VIN`.
Default source: published MACE 2.0 specification, video chapter, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| mace_video_in | byte |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `control` | 0x0 | rw | 64 |  | mace_video_in | 0x0 | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `status` | 0x8 | r | 64 |  | mace_video_in | 0x0 | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `config` | 0x10 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `next_desc` | 0x18 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `fld_offset` | 0x20 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `line_width` | 0x28 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `hclip_odd` | 0x30 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `vclip_odd` | 0x38 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `alpha_odd` | 0x40 | rw | 64 |  | mace_video_in | unknown | inferred | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `hclip_even` | 0x48 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `vclip_even` | 0x50 | rw | 64 |  | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `alpha_even` | 0x58 | rw | 64 |  | mace_video_in | unknown | inferred | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `dma_desc` | 0x80 | rw | 64 | 8 | mace_video_in | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |

### Register `control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9 | `int_gpib` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 8 | `int_crime_error` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 7 | `int_fifo_overflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 6 | `int_v_overflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 5 | `int_h_overflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 4 | `int_buffer` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 3 | `int_lost_sync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 2 | `int_dma_done` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 1 | `int_vsync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |

### Register `status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `sync_present` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 9 | `gpib` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 8 | `crime_error` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 7 | `fifo_overflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 6 | `v_overflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 5 | `h_overflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 4 | `buffer` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 3 | `lost_sync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 2 | `dma_done` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 1 | `vsync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 0 | `dma_active` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |

### Register `config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `interleaved` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 15:14 | `mem_mode` | established | linear=0, tiled=1, mipmap_512x128=2, mipmap_512x256=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 13 | `dither` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 12:10 | `pixel_format` | established | rgba32=0, rgba5551=1, yuv422_8=2, yuv422_10=3, abgr32=4, yuva4224=5 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 9:6 | `sof_count` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 5 | `d1_ecc` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 4 | `d1_precision` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 3:2 | `source` | established | primary=0, secondary=1, loopback_e=2, loopback_f=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 1 | `d1_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 0 | `channel_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |

### Register `next_desc`

### Register `fld_offset`

### Register `line_width`

### Register `hclip_odd`

### Register `vclip_odd`

### Register `alpha_odd`

### Register `hclip_even`

### Register `vclip_even`

### Register `alpha_even`

### Register `dma_desc`

Array of 8 registers, stride 8.
