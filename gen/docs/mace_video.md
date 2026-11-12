# O2 MACE video output channel and chip-level configuration

<!-- generated from defs/mace_video.toml by defs-gen - do not edit, change the source -->

MACE video output channel registers and the chip-level hardware configuration word.

Unit `mace_video`, macro prefix `VOUT`.
Default source: published MACE 2.0 specification, video chapter, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| mace_video_out | byte |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `control` | 0x0 | rw | 64 |  | mace_video_out | 0x0 | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `status` | 0x8 | r | 64 |  | mace_video_out | 0x0 | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `config` | 0x10 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `next_desc` | 0x18 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `fld_offset` | 0x20 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `field_size` | 0x28 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `hpad_odd` | 0x30 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `vpad_odd` | 0x38 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `hpad_even` | 0x40 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `vpad_even` | 0x48 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `gen_dly` | 0x50 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `vhw_cfg` | 0x58 | rw | 64 |  | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |
| `dma_desc` | 0x80 | rw | 64 | 8 | mace_video_out | unknown | established | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |

### Register `control`

---- output channel registers ----
One channel set, offsets from the start of the output channel window. All
are 64-bit doubleword accesses. The status register clears the pending
causes on read; the DMA-active bit is live.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `int_crime_error` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 7 | `int_fifo_underflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 4 | `int_buffer` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 3 | `int_genlock_lost` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 2 | `int_dma_done` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 1 | `int_vsync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |

### Register `status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `crime_error` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 7 | `fifo_underflow` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 4 | `buffer` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 3 | `lost_sync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 2 | `dma_done` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 1 | `vsync` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 0 | `dma_active` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |

### Register `config`

### Register `next_desc`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:6 | `table_address` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Physical address of the 64-byte descriptor table (printed page 44, table 13). |
| 2 | `valid` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Software sets it to queue a descriptor. Hardware clears it after copying the descriptor (printed page 44, table 13). |
| 1 | `bit1` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Unused (printed page 44, table 13). |
| 0 | `field_to_send` | established | odd=0, even=1 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Field to send next. Zero sends odd, one sends even. This is not an input-style selector (printed page 44, table 13). |

### Register `fld_offset`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:3 | `byte_offset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Byte offset of the first pixel within the first 64 KiB page, stored literally with no adjustment (printed page 45, table 14). |

### Register `field_size`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:12 | `lines` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Lines in the memory image, stored literally with no plus one. It describes the image, not the raster totals (printed page 45, table 16). |
| 11:3 | `bytes` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Bytes per line, a multiple of eight, stored literally (printed page 45, table 16). |

### Register `hpad_odd`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:20 | `eav_image` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | End to first image pixel, in pixel pairs: 2 times (value plus 1) pixels precede the memory image (printed page 51, table 20). |
| 19:10 | `eav_eav` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | End to end, in pixel pairs: total raster pixels per line are 2 times (value plus 1) (printed page 51, table 20). |
| 9:0 | `eav_sav` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | End-of-active to start-of-active blanking, in pixel pairs: 2 times (value plus 2) D1 pixels. The automatic SAV is the final four bytes of that blanking. The all-ones value disables automatic SAV for ancillary data (printed page 51, table 20). |

### Register `vpad_odd`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 39:30 | `image_start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: the memory image starts at raster line value plus 1 (printed pages 51 and 52). |
| 29:20 | `field_end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: total raster lines are value plus 1 (printed pages 51 and 52). |
| 19:10 | `trailing_blank_start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: trailing blanking starts at raster line value plus 1 (printed pages 51 and 52). |
| 9:0 | `leading_blank_end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: leading blank ends after value plus 1 lines (printed pages 51 and 52, tables 20 and 21). |

### Register `hpad_even`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:20 | `eav_image` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | End to first image pixel, in pixel pairs: 2 times (value plus 1) pixels precede the memory image (printed page 51, table 20). |
| 19:10 | `eav_eav` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | End to end, in pixel pairs: total raster pixels per line are 2 times (value plus 1) (printed page 51, table 20). |
| 9:0 | `eav_sav` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | End-of-active to start-of-active blanking, in pixel pairs: 2 times (value plus 2) D1 pixels (printed page 51, table 20). |

### Register `vpad_even`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 39:30 | `image_start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: the memory image starts at raster line value plus 1 (printed pages 51 and 52). |
| 29:20 | `field_end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: total raster lines are value plus 1 (printed pages 51 and 52). |
| 19:10 | `trailing_blank_start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: trailing blanking starts at raster line value plus 1 (printed pages 51 and 52). |
| 9:0 | `leading_blank_end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored as count minus one: leading blank ends after value plus 1 lines (printed pages 51 and 52, tables 20 and 21). |

### Register `gen_dly`

### Register `vhw_cfg`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 35:32 | `revision` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Four-bit chip revision code. The numeric value for MACE revision 2.0 is not published (printed page 54, table 23), so no value is recorded here. |
| 22:19 | `sof_count_even` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 18 | `gpibo` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 17:14 | `sof_count_odd` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 13 | `gbe_framelock_ecc` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 12 | `gbe_framelock_precision` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 11:10 | `gbe_framelock_source` | established | output_ef=0, external=1, port_ab=2, port_cd=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 9 | `gbe_framelock_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 8 | `audio_sync_ecc` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 7 | `audio_sync_precision` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 6:5 | `audio_sync_source` | established | none=0, external=1, port_ab=2, port_cd=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 4 | `audio_sync_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 3 | `port_cd_select` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 2 | `port_cd_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 1 | `port_ab_select` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |
| 0 | `port_ab_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings |  |

### Register `dma_desc`

Array of 8 registers, stride 8.
