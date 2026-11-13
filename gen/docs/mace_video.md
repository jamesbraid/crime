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
causes on read; the DMA-active bit is live. The shipped IRIX video driver writes the whole word, changing only its low nine bits; its output recovery routines pulse bit 0.

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

The shipped IRIX output recovery routines read it after their last write and discard the value.

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

The shipped IRIX video driver writes it at start-up.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:22 | `sof_count_even` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Lines to wait after the start of vertical blank before checking the field ID for an even field (printed page 41, table 11). |
| 21 | `mem_mode` | established | linear=0, tiled=1 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Memory organisation. The output channel has linear and tiled modes only (printed page 41, table 11). |
| 20 | `interleaved` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Zero is field mode, one is interleaved frame mode (printed page 41, table 11). |
| 19:18 | `clamping` | established | none=0, extended=1, legal=2, special_expansion=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Output clamping or expansion (printed page 41, table 11). |
| 17 | `notch_filter` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | One enables the notch filter, which the table says is generally used for RGB data that was dithered earlier (printed page 41, table 11). |
| 16:14 | `pixel_format` | established | rgba32=0, rgba5551=1, yuv422_8=2, yuv422_10=3, abgr32=4, yuva4224=5 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | DMA pixel format, the same six codes as the input channel (printed page 40, table 11). |
| 13:10 | `sof_count_odd` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Lines to wait after the start of vertical blank before checking the field ID for an odd field (printed page 40, table 11). |
| 9 | `genlock_ecc` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | One enables D1 error correction on the genlock source (printed page 40, table 11). |
| 8 | `genlock_precision` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Pixel precision of the genlock source: zero for 8-bit D1, one for 10-bit (printed page 40, table 11). |
| 7:6 | `genlock_source` | established | none=0, external=1, port_ab=2, port_cd=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Output reference. Zero runs on the 13.5 MHz pixel clock with internal timing, with no genlock (printed page 40, table 11). |
| 5 | `genlock_reset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Zero resets the genlock and clocked output circuitry, one enables it. It must be one even for free-running output (printed page 40, table 11). |
| 4:3 | `port_f_source` | established | disabled=0, genlock_passthrough=1, yuv=2, alpha=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Data source for output port F, with the same values as port E (printed page 40, table 11). |
| 2:1 | `port_e_source` | established | disabled=0, genlock_passthrough=1, yuv=2, alpha=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Data source for output port E (printed page 40, table 11). |
| 0 | `channel_enable` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Zero resets processing of this channel, one enables it (printed page 40, table 11). |

### Register `next_desc`

The shipped IRIX video driver holds the physical address as a zero-extended 32-bit word and ORs a flag byte into it; the output recovery routines write it as well.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:6 | `table_address` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Physical address of the 64-byte descriptor table (printed page 44, table 13). |
| 2 | `valid` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Software sets it to queue a descriptor. Hardware clears it after copying the descriptor (printed page 44, table 13). |
| 1 | `bit1` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Unused (printed page 44, table 13). |
| 0 | `field_to_send` | established | odd=0, even=1 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Field to send next. Zero sends odd, one sends even. This is not an input-style selector (printed page 44, table 13). |

### Register `fld_offset`

The shipped IRIX video driver writes the low halfword of a transfer-record word here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:3 | `byte_offset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Byte offset of the first pixel within the first 64 KiB page, stored literally with no adjustment (printed page 45, table 14). |

### Register `field_size`

Double-buffered: a new value takes effect at the next field (revision history item 46, printed page 59). The shipped IRIX video driver takes the line count and the bytes per line from one stored value: 243 lines of 2880 bytes in one set and 288 lines in the other.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:12 | `lines` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Lines in the memory image, stored literally with no plus one. It describes the image, not the raster totals (printed page 45, table 16). |
| 11:3 | `bytes` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Bytes per line, a multiple of eight, stored literally (printed page 45, table 16). |

### Register `hpad_odd`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 41:40 | `filter_mode` | established | none=0, pal_11_12=1, ntsc_11_10=2, double_width=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Square-to-non-square filter on the output (printed page 51, table 20). |
| 39:30 | `filter_count` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Pixels per line at the output of the square-to-non-square filter (printed page 51, table 20). |
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
| 41:40 | `filter_mode` | established | none=0, pal_11_12=1, ntsc_11_10=2, double_width=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Square-to-non-square filter on the output (printed page 51, table 20). |
| 39:30 | `filter_count` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Pixels per line at the output of the square-to-non-square filter (printed page 51, table 20). |
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

The shipped IRIX video driver releases the port A/B reset (bit 0) and the port C/D reset (bit 2) whenever an input or output is set up, and its video probe reads bits 35:32; the value that identifies the part is not recorded.

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

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `IN2_OFF` | 0x80000 | established | shipped IRIX O2 video driver object, per kudzu docs/mace-video.md | Offset of input channel 2 from the start of the video window. |
| `OUT_OFF` | 0x100000 | established | shipped IRIX O2 video driver object, per kudzu docs/mace-video.md | Offset of the output channel from the start of the video window. |
| `WINDOW_PHYS_ADDR` | 0x1f100000 | established | shipped IRIX O2 video driver object, per kudzu docs/mace-video.md | Physical base of the video window. The shipped IRIX video driver reaches it through the uncached address 0xbf100000 and stores that pointer as input channel 1. |
