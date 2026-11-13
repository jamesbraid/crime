<!-- generated from devices/mace_video_in/registers.toml by defs-gen - do not edit, change the source -->

# O2 MACE video input channel registers

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

The shipped IRIX video driver writes the whole word, changing only its low nine bits.

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

The shipped IRIX video driver holds the physical address as a zero-extended 32-bit word and ORs a flag byte into it; which bits carry the flag is not stated.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:6 | `table_address` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Physical address of the 64-byte descriptor table (printed page 44, table 12). |
| 2 | `valid` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Software sets it to queue a descriptor. Hardware clears it after copying the descriptor. A clear bit skips the next field (printed pages 44 and 45, tables 12 and 13). |
| 1:0 | `field_select` | established | either=0, odd=2, even=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Field the queued descriptor starts on. Values 0 and 1 both take either field ID, 2 waits for an odd field and 3 waits for an even field (printed page 44, table 12). |

### Register `fld_offset`

The shipped IRIX video driver writes the low halfword of a transfer-record word here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:3 | `byte_offset` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Byte offset of the first pixel within the first 64 KiB page, stored literally with no adjustment (printed page 45, table 14). |

### Register `line_width`

The shipped IRIX video driver's start-up writes it with a 64-bit store.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:3 | `bytes` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Input line width in bytes, a multiple of eight, stored literally. It is neither a pixel count nor minus one (printed page 45, table 15). |

### Register `hclip_odd`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 40:39 | `filter_mode` | established | none=0, pal_nonsquare=1, ntsc_nonsquare=2, half=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Non-square to square filter. The table prints the range as 39:40 (printed pages 46 and 47, table 17). The table prints the PAL ratio as 7868/720, a misprint of 786/720; see devices/mace_video/mace-video.md. |
| 38 | `scale_on` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | One enables horizontal down-scaling, zero is no scaling (printed pages 46 and 47, table 17). |
| 37:30 | `scale_ratio` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Eight-bit horizontal ratio: the scaled-down size times 256, used only when scaling is on. The table prints the range as 30:37 (printed pages 46 and 47, table 17). |
| 29:20 | `filt_count` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Pixels per line at the output of the non-square filter. The table uses it only with that filter and says it must be even (printed pages 46 and 47, table 17). |
| 19:10 | `end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored end. The captured pixel count is end minus start plus 1 (printed pages 46 and 47, table 17). |
| 9:0 | `start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored start. The first captured pixel is start plus 2, counted from the first pixel after the EAV code (printed pages 46 and 47, table 17). |

### Register `vclip_odd`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 38 | `scale_on` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | One enables vertical down-scaling, zero is no scaling (printed pages 48 and 49, table 18). |
| 37:30 | `scale_ratio` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Eight-bit vertical ratio: the scaled-down size times 256, used only when scaling is on (printed pages 48 and 49, table 18). |
| 29:20 | `end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Last captured line, inclusive. The captured line count is end minus start plus 1 (printed pages 48 and 49, table 18). |
| 19:10 | `blank_end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Leading black-fill boundary in lines. Lines from start up to this value are forced to black when it exceeds start, and zero adds no black lines (printed page 48). |
| 9:0 | `start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | First captured line, counted from the first line after decoded start of field (printed pages 48 and 49, table 18). |

### Register `alpha_odd`

### Register `hclip_even`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 40:39 | `filter_mode` | established | none=0, pal_nonsquare=1, ntsc_nonsquare=2, half=3 | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Non-square to square filter. The table prints the range as 39:40 (printed pages 46 and 47, table 17). The table prints the PAL ratio as 7868/720, a misprint of 786/720; see devices/mace_video/mace-video.md. |
| 38 | `scale_on` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | One enables horizontal down-scaling, zero is no scaling (printed pages 46 and 47, table 17). |
| 37:30 | `scale_ratio` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Eight-bit horizontal ratio: the scaled-down size times 256, used only when scaling is on. The table prints the range as 30:37 (printed pages 46 and 47, table 17). |
| 29:20 | `filt_count` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Pixels per line at the output of the non-square filter. The table uses it only with that filter and says it must be even (printed pages 46 and 47, table 17). |
| 19:10 | `end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored end. The captured pixel count is end minus start plus 1 (printed pages 46 and 47, table 17). |
| 9:0 | `start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Stored start. The first captured pixel is start plus 2, counted from the first pixel after the EAV code (printed pages 46 and 47, table 17). |

### Register `vclip_even`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 38 | `scale_on` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | One enables vertical down-scaling, zero is no scaling (printed pages 48 and 49, table 18). |
| 37:30 | `scale_ratio` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Eight-bit vertical ratio: the scaled-down size times 256, used only when scaling is on (printed pages 48 and 49, table 18). |
| 29:20 | `end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Last captured line, inclusive. The captured line count is end minus start plus 1 (printed pages 48 and 49, table 18). |
| 19:10 | `blank_end` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | Leading black-fill boundary in lines. Lines from start up to this value are forced to black when it exceeds start, and zero adds no black lines (printed page 48). |
| 9:0 | `start` | established |  | published MACE 2.0 specification, video chapter, and shipped IRIX software readings | First captured line, counted from the first line after decoded start of field (printed pages 48 and 49, table 18). |

### Register `alpha_even`

### Register `dma_desc`

Array of 8 registers, stride 8.
