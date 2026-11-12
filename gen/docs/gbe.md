# O2 GBE display back end register words

<!-- generated from defs/gbe.toml by defs-gen - do not edit, change the source -->

GBE display back end register words, tables and offsets.

Unit `gbe`, macro prefix `GBE`.
Default source: published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `CMAP_ENTRY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `CMAP_FIFO` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `CRS_CTL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `CRS_START_XY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `CTRLSTAT` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DID_CONTROL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DID_FRAME` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DID_INHWCTRL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DID_LINE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DID_START_XY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DOTCLOCK` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FP_DE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FP_HDRV` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FP_VDRV` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FRM_CONTROL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FRM_INHWCTRL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FRM_SIZE_TILE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `MODE_ENTRY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `OVR_CONTROL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `OVR_INHWCTRL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `OVR_WIDTH_TILE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `TILE_LIST_ENTRY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_0` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_1` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_2` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_3` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_START_XY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_TILES` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_FLAGS` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_HCMAP` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_INTR01` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_INTR23` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_VCMAP` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_XY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_XYMAX` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |

### Word `CMAP_ENTRY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `r` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23:16 | `g` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:8 | `b` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CMAP_FIFO`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `free` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CRS_CTL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CRS_START_XY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CTRLSTAT`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:28 | `pclk_select` | established | external=0, differential=1, internal=3 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 18 | `io6_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 16 | `io5_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 14 | `io4_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12 | `io3_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3:0 | `chip_rev` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_CONTROL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `did_base` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_FRAME`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:19 | `block` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 18:11 | `offset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10:0 | `yend` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_INHWCTRL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `did_base` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_LINE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:11 | `did` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10:0 | `xend` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_START_XY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DOTCLOCK`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 20 | `run` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:14 | `p` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 13:8 | `n_minus_1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 7:0 | `m_minus_1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FP_DE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FP_HDRV`

The three flat-panel drive registers and the three start-preset registers
share one layout: two 12-bit counts, "off" or "x" in the low half. The
specification names them VT_10 to VT_12 and VT_17 to VT_19 (pages 39 and
40). It compares FP_HDRV, FP_DE and the "x" halves with the horizontal
counter and FP_VDRV and the "y" halves with the vertical counter, but it
compares both halves of FP_DE with the horizontal counter. The totals
shipped software writes for two fixed panels (806 and 771, 1065 and 1024)
look like line counts, not pixel counts (inferred from magnitude); which
counter FP_DE really uses is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FP_VDRV`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_CONTROL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `tile_list_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_INHWCTRL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_SIZE_TILE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `fifo_reset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 14:13 | `depth` | established | bits8=0, bits16=1, bits32=2 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12:5 | `width_tiles` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:0 | `remainder` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `MODE_ENTRY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:11 | `aux` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10 | `gm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 9:5 | `cm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:2 | `typ` | established | i8=0, i12=1, rg3b2=2, rgb4=3, rgb5=4, rgb8=5, rgba5=6, rgb10=7 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1:0 | `buf` | established | lower=1, upper=2, both=3 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `OVR_CONTROL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `tile_list_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `OVR_INHWCTRL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `OVR_WIDTH_TILE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13 | `fifo_reset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `TILE_LIST_ENTRY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:0 | `tile` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_0`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `right` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `left` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_1`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `bottom` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `top` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_2`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `cs_bypass` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `full_screen` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `auto_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `flicker_filter` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_3`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `descr_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4 | `current_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `end_of_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `field_corrupt` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `descr_dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `field_select` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_START_XY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_TILES`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `tile_first` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `tile_second` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_FLAGS`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `sync_low` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_HCMAP`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_INTR01`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `line0` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `line1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_INTR23`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `line2` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `line3` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_VCMAP`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_XY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `freeze` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_XYMAX`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `vtotal` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `htotal` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CMAP_ENTRIES_REV1` | 0x1200 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | revision 1.1 |
| `CMAP_ENTRIES_REV2` | 0x1800 | inferred | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | revision 2 |
| `CMAP_FIFO_DEPTH_REV1` | 0x40 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `CMAP_FIFO_DEPTH_REV2` | 0x3f | inferred | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `CMAP_FIFO_LOW_WATER` | 0x30 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | free-slot threshold software waits for |
| `DEVICE_ID_VALUE` | 0x666 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | the probe requires this |
| `GMAP_ENTRIES` | 0x100 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `MODE_ENTRIES` | 0x20 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `MODE_ENTRY_STRIDE` | 0x4 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | entries are consecutive 32-bit words, so swap slot n sits at the table base plus 4 * n |
| `OFF_CMAP` | 0x50000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | colour map |
| `OFF_CMAP_FIFO` | 0x58000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_CMAP` | 0x70008 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_CTL` | 0x70004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_GLYPH` | 0x78000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_POS` | 0x70000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_START_XY` | 0x10048 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | gbe-spec register table, pages 39 and 40 |
| `OFF_CTRLSTAT` | 0x0 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_DEVICE_ID` | 0x14 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_DID_CONTROL` | 0x40004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_DID_INHWCTRL` | 0x40000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_DID_START_XY` | 0x10044 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | gbe-spec register table, pages 39 and 40 |
| `OFF_DOTCLOCK` | 0x4 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_FP_DE` | 0x10030 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | gbe-spec register table, pages 39 and 40 |
| `OFF_FP_HDRV` | 0x10028 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | gbe-spec register table, pages 39 and 40 |
| `OFF_FP_VDRV` | 0x1002c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | gbe-spec register table, pages 39 and 40 |
| `OFF_FRM_CONTROL` | 0x3000c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_FRM_INHWCTRL` | 0x30008 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_FRM_SIZE_PIXEL` | 0x30004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_FRM_SIZE_TILE` | 0x30000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_GMAP` | 0x60000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | 256 gamma entries |
| `OFF_I2C` | 0x8 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_I2CFP` | 0x10 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_MODE_TABLE` | 0x48000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | 32 window-ID entries |
| `OFF_OVR_CONTROL` | 0x20008 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_OVR_INHWCTRL` | 0x20004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_OVR_WIDTH_TILE` | 0x20000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_SYSCLK` | 0xc | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VC_0` | 0x80000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | video capture region, left and right |
| `OFF_VC_1` | 0x80004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | video capture region, top and bottom |
| `OFF_VC_2` | 0x80008 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | video capture control |
| `OFF_VC_3` | 0x8000c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | video capture field and descriptor control |
| `OFF_VC_4` | 0x80010 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | capture tile addresses, tiles 1 and 2 |
| `OFF_VC_5` | 0x80014 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | capture tile addresses, tiles 3 and 4 |
| `OFF_VC_6` | 0x80018 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | capture tile addresses, tiles 5 and 6 |
| `OFF_VC_7` | 0x8001c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | capture tile addresses, tiles 7 and 8 |
| `OFF_VC_8` | 0x80020 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | capture tile addresses, tiles 9 and 10; write only |
| `OFF_VC_START_XY` | 0x1004c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | gbe-spec register table, pages 39 and 40 |
| `OFF_VT_F2RF_LOCK` | 0x1001c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_FLAGS` | 0x10018 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_HBLANK` | 0x10014 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_HCMAP` | 0x1003c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_HPIXEN` | 0x10034 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_HSYNC` | 0x1000c | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_INTR01` | 0x10020 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_INTR23` | 0x10024 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_VBLANK` | 0x10010 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_VCMAP` | 0x10040 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_VPIXEN` | 0x10038 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_VSYNC` | 0x10008 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_XY` | 0x10000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_VT_XYMAX` | 0x10004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `TILE_LIST_BYTES_UNIT` | 0x20 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | a changed tile pointer is seen by adding this |
| `VC_TILE_REGS` | 0x5 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | VC_4 to VC_8 hold the ten tiles of one captured field, two per register |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `CMAP_ENTRY` | 0xff804000 | vector | r=255, g=128, b=64 |
| `CTRLSTAT` | 0x10000000 | vector | pclk_select=1, chip_rev=0 |
| `CTRLSTAT` | 0x30000000 | vector | pclk_select=3, chip_rev=0 |
| `DID_CONTROL` | 0x10005 | vector | did_base=5, dma_enable=1 |
| `DOTCLOCK` | 0x100000 | vector | run=1, p=0 |
| `FP_DE` | 0x303326 | vector | off=806, on=771 |
| `FP_HDRV` | 0xfff | vector | off=4095, on=0 |
| `FP_VDRV` | 0x1fff | vector | off=4095, on=1 |
| `MODE_ENTRY` | 0x41 | vector | buf=1, typ=0, cm=2 |
| `VT_XYMAX` | 0x20d320 | vector | htotal=800, vtotal=525 |
