<!-- generated from devices/gbe/registers.toml by defs-gen - do not edit, change the source -->

# O2 GBE display back end register words

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
| `CRS_POS` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
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
| `FRM_SIZE_PIXEL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `FRM_SIZE_TILE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `I2C` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `I2CFP` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `MODE_ENTRY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `OVR_CONTROL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `OVR_INHWCTRL` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `OVR_WIDTH_TILE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `SYSCLK` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `TILE_LIST_ENTRY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_0` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_1` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_2` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_3` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_START_XY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VC_TILES` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_F2RF_LOCK` | 32 | inferred | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_FLAGS` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_HBLANK` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_HCMAP` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_HPIXEN` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_HSYNC` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_INTR01` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_INTR23` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_VBLANK` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_VCMAP` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_VPIXEN` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `VT_VSYNC` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
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

The shipped IRIX text port writes 1 after the glyph and colours are loaded; what the other bits mean there is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `crosshair` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CRS_POS`

Cursor position, CRS_0. The table gives 16-bit X in bits 15:0 and Y in bits 31:16,
reset zero. The spec's functional text (pp. 20-22) calls positions 12-bit, and NetBSD
treats the fields as signed. Width and signedness are unresolved. The shipped IRIX text port writes 0 at set-up.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `y` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `x` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CRS_START_XY`

The shipped IRIX kernel writes the same vertical part as DID_START_XY, with one line added (0x1000), and the horizontal blank end minus 54 with total pixels added when that is negative; the 54 is a kernel constant. The placement of the parts follows the fields here (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `CTRLSTAT`

Pin pair n is data at bit 6+2n and an active-low output enable at bit 7+2n, for
n = 0 to 9. Reset is 11 for every pair (data high, output disabled), so every pin
is an input. Bit 4 is the monitor sense pin, an external read-only input whose
polarity and wiring are not established. Bits 26 (half-phase) and 27 (composite
sync polarity) reset to zero. Bits 3:0 are the chip revision, read-only.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:28 | `pclk_select` | established | external=0, differential=1, internal=3 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 27 | `csync_polarity` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 26 | `half_phase` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 25 | `io9_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 24 | `io9_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23 | `io8_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 22 | `io8_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 21 | `io7_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 20 | `io7_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 19 | `io6_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 18 | `io6_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 17 | `io5_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 16 | `io5_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15 | `io4_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 14 | `io4_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 13 | `io3_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12 | `io3_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11 | `io2_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10 | `io2_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 9 | `io1_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 8 | `io1_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 7 | `io0_oe_n` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 6 | `io0_data` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4 | `monitor_sense` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3:0 | `chip_rev` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_CONTROL`

The shipped IRIX stop routine tests the enable bit at entry, clears it and leaves the word otherwise unwritten; the kernel never writes the table address field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `did_base` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_FRAME`

The shipped IRIX X module packs a frame entry as block << 19 | offset << 11 | yend, one per horizontal band of lines.

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

The shipped IRIX X module packs a line-table entry as index << 11 | xend, one per rectangle in a band and sorted by its last column, in 16-bit units inside a block.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:11 | `did` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10:0 | `xend` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_START_XY`

The shipped IRIX kernel writes a vertical part of minus (vertical blank start minus vertical blank end minus 1) when that difference is positive, else the difference, masked to 12 bits, and a horizontal part of the horizontal blank end minus 20 (total pixels added when the blank end is below 20). The bit placement of the two parts is not stated by the kernel and follows the fields here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DOTCLOCK`

Bits 22 (out of range) and 23 (out of lock) are status bits. The table leaves their
reset contents unspecified, and the spec gives no PLL lock time or frequency limits.
Bits 25:24 are manufacturer test controls and are not described. The shipped IRIX kernel clears the run bit, writes the timing words, then writes this word with the run bit set and waits 11 milliseconds (DOTCLK_SETTLE_MS). It stores M minus one, N minus one and P unchanged. What the run bit does in the hardware is inferred; the specification leaves it undefined.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:24 | `test` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23 | `out_of_lock` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 22 | `out_of_range` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 20 | `run` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:14 | `p` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 13:8 | `n_minus_1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 7:0 | `m_minus_1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FP_DE`

The shipped IRIX timing routine writes it only for the default set-up and panel set-ups 130 and 131, and only when no dual-channel option is fitted.

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
counter FP_DE really uses is unknown. The value the shipped IRIX timing routine writes depends on the board's panel set-up byte and on whether a dual-channel option is fitted.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FP_VDRV`

The value the shipped IRIX timing routine writes depends on the board's panel set-up byte and on whether a dual-channel option is fitted.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_CONTROL`

The shipped IRIX stop routine saves it, clears its enable bit, and later writes it back with its pointer field bumped by one unit.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `tile_list_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_INHWCTRL`

The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the frame control word.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_SIZE_PIXEL`

Frame height in pixels, shared by the normal and overlay planes. Reset zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `height` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `FRM_SIZE_TILE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `fifo_reset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 14:13 | `depth` | established | bits8=0, bits16=1, bits32=2 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12:5 | `width_tiles` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:0 | `remainder` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `I2C`

Monitor DDC bus. Bit 0 is the data line and bit 1 the clock line; both reset to 1.
The spec gives separate output and synchronized input pins (page 22): a write sets
the outputs, and a read returns the bus state, which can differ from the output
latch. NetBSD XORs both written and read bits with 3 and calls the fields low
active. That is a software expectation (inferred), and the register table alone does
not say whether writing 1 releases a line. Whether the reset value 1 means released
is therefore not established.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `sdc` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `sda` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `I2CFP`

Flat-panel DDC bus, same layout as I2C: data at bit 0 and clock at bit 1, both reset
to 1. The spec places external pullups on the flat-panel clock and data outputs
(page 4). The inverted-convention caveat under I2C applies here too.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `sdc` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `sda` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `MODE_ENTRY`

The shipped IRIX kernel rejects window indices of 32 or more and writes entry 0 with 3 at text-port set-up. Its compare mask (0x7fc) leaves the auxiliary field out, and it clears the gamma disable bit before a write when the alternative gamma table is in use. Buffer code: 3 buffers both, 0 marks the window to be skipped by the buffer flip, 1 and 2 exchange on a swap. Pixel type: 0 indexed 8-bit, 1 indexed 12-bit, 2 RG3B2, 4 RGB5, 5 RGB8. The colour-map group's first entry is the group value times 256.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:11 | `aux` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10 | `gm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 9:5 | `cm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:2 | `typ` | established | i8=0, i12=1, rg3b2=2, rgb4=3, rgb5=4, rgb8=5, rgba5=6, rgb10=7 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1:0 | `buf` | established | lower=1, upper=2, both=3 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `OVR_CONTROL`

The shipped IRIX stop routine clears its enable bit and leaves the word otherwise unwritten; reading the enable as a DMA enable is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `tile_list_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `OVR_INHWCTRL`

The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the overlay control word.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `OVR_WIDTH_TILE`

Overlay width must be a multiple of 32 pixels, so the 32-byte remainder is whole pixels at 8 bits (GBE 1.1 pp. 13-14).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13 | `fifo_reset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12:5 | `width_tiles` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:0 | `remainder` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `SYSCLK`

System PLL test controls, gains and divider. Reset has bit 3 set (test control 0)
and every other defined bit zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:12 | `divider` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:10 | `current_gain` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 9:8 | `voltage_gain` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3:0 | `tm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

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

The shipped IRIX video driver clears VC_0 to VC_3 (written as zero when a capture path stops); bit 0 of VC_2 enabling DMA is inferred from its start routine.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `cs_bypass` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `full_screen` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `auto_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `flicker_filter` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_3`

The shipped IRIX video driver clears it when a capture path stops and holds a path byte in it; that reading is inferred from the start routine.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `descr_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4 | `current_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `end_of_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `field_corrupt` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `descr_dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `field_select` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_START_XY`

The shipped IRIX kernel writes the same vertical part as DID_START_XY without the extra line, and the horizontal blank end minus 4. The placement of the parts follows the fields here (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VC_TILES`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `tile_first` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `tile_second` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_F2RF_LOCK`

Field-to-frame lock line, VT_7. The page 21 diagram and the NetBSD encoding name a
stereo toggle line and a frame-lock line. Which half holds which is inferred from the
listing order in the register table, the same order the interrupt words use. No reset
table is given. The shipped IRIX timing routine stores the vertical blank start line in the high field, and repeats it in the low field when the frame-lock flag bits (mask 0x12) of its timing record are set, else 0xfff.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `frame_lock_y` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `stereo_toggle_y` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_FLAGS`

Output polarity and control bits 6:0 (VT_6). Composite sync low is bit 5. The other
bits follow the public Linux and NetBSD encodings, which are software expectations,
and the table gives no reset value for them. The shipped IRIX timing routine reads it, clears bits 1 and 7, and ORs in 0 or 2 for the board's panel set-up byte 132. What bit 1 does to the hardware is unknown. The value is undefined when the option lookup that feeds it fails.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 6 | `stereo_forced_high` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 5 | `sync_low` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4 | `composite_sync_high` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `horizontal_forced_low` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `horizontal_invert` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `vertical_forced_low` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `vertical_invert` | inferred |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_HBLANK`

Horizontal blanking turns off and on at these pixel counts (VT_5). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel option is fitted, packing the active width in the high field and 0xfff in the low field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_HCMAP`

The shipped IRIX kernel writes the horizontal blank window: start in the high field, end in the low field, in pixels.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_HPIXEN`

Horizontal pixel-enable window, VT_13. The spec prose says the horizontal and vertical
enables combine with OR. The table does not settle that rule. The shipped IRIX kernel parks 0xffffff here before the frame buffer is set up and writes it last in the start-up sequence: the high field is the horizontal blank end minus 0x13 (total pixels added first when that is negative), the low field is (active width + that value - 2) modulo total pixels.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_HSYNC`

Horizontal sync turns off and on at these pixel counts (VT_3).

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

### Word `VT_VBLANK`

Vertical blanking turns off and on at these lines (VT_4). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel option is fitted, packing the active height in the high field and 0xfff in the low field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_VCMAP`

The shipped IRIX kernel writes the vertical blank window: start in the high field, end in the low field, in lines.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_VPIXEN`

Vertical pixel-enable window, VT_14. The shipped IRIX kernel parks 0xffffff here and writes it last in the start-up sequence with the vertical blank end in the high field and the vertical blank start in the low field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_VSYNC`

Vertical sync turns off and on at these lines (VT_2). The page 38 text for the on
row repeats the off comparator, so the positions are established but that description
is not.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_XY`

The shipped IRIX start-up sequence compares its whole unmasked value with the vertical blank start line; the stop sequence reads bit 31 as the freeze state and freezes the word by writing VT_XY_FREEZE. The kernel reading derived this offset from the numbering of the other timing words and graded it inferred; the specification's table gives it.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `freeze` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23:12 | `y` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `x` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `VT_XYMAX`

The shipped IRIX timing routine writes 0 here, and the start-up sequence writes the totals once the frame buffer is set up. The kernel stores the record's total pixels and total lines, not one less than them; whether the hardware expects one less is unknown.

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
| `CMAP_FIFO_LOW_WATER` | 0x30 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | free-slot threshold software waits for The shipped IRIX X module waits for this many free entries after each batch of 33 colour-map writes (CMFIFO_BATCH). |
| `CMFIFO_BATCH` | 0x21 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Colour-map writes the shipped IRIX X module issues between FIFO checks. |
| `DEVICE_ID_VALUE` | 0x666 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | the probe requires this The shipped IRIX kernel reads the identity word first and leaves the block untouched when it reads any other value. |
| `DID_BLOCK_BYTES` | 0x200 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Size of one block of a display-ID table; line tables are packed in 16-bit units inside a block. |
| `DID_BLOCK_ENTRIES` | 0x100 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Entries after which packing restarts in the next block. |
| `DID_END_BLOCK` | 0x80 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Block number that ends a display-ID table; the X module stops filling it there. |
| `DID_LAST_XEND` | 0x7ff | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Right-hand column of the last band's line entry, which covers every line below the screen. |
| `DID_LINE_TABLE_OFFSET` | 0x2000 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Byte offset of the first line table in a display-ID table. |
| `DID_TABLE_BYTES` | 0x10000 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Size of one display-ID table as the shipped IRIX X module fills it. The frame table starts at byte 0 and the line tables start at DID_LINE_TABLE_OFFSET. |
| `DOTCLK_SETTLE_MS` | 0xb | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Milliseconds the shipped IRIX kernel waits after it writes the dot-clock word with the run bit set. |
| `GBE_LINE_IRQ_BASE` | 0x10 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | CRIME interrupt bit of GBE line 0; GBE line n raises bit 16 + n. Lines 2 and 3 are the CRIME inputs 18 and 19. |
| `GMAP_ENTRIES` | 0x100 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `MODE_ENTRIES` | 0x20 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `MODE_ENTRY_STRIDE` | 0x4 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | entries are consecutive 32-bit words, so swap slot n sits at the table base plus 4 * n |
| `OFF_CMAP` | 0x50000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | colour map |
| `OFF_CMAP_FIFO` | 0x58000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_CMAP` | 0x70008 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | First cursor colour in the byte order red, green, blue, zero; the shipped IRIX text port writes 0xffffff00. |
| `OFF_CRS_COLOR2` | 0x7000c | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Second cursor colour in the byte order red, green, blue, zero; the shipped IRIX text port writes 0xff000000. |
| `OFF_CRS_CTL` | 0x70004 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `OFF_CRS_GLYPH` | 0x78000 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | page 46 table start; the page 34 table gives a different start offset, conflict open 64 words; the shipped IRIX text port loads words 0 to 31 from a 32-word table and writes 0 to words 32 to 63. Reading the words as a 32 by 32 bitmap at two bits per pixel is inferred; the text port draws with the first 32 words only (inferred). |
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
| `OPT_CMD_CLOCK_KHZ` | 0x186a0 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Pixel clock in kHz. Above this the shipped IRIX timing routine sends 0xff to the option port; at or below it, 0x7f. |
| `OPT_CMD_ID_HIGH` | 0xff | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Command written before the first id read. Its id bits come from bits 6 and 5 of the byte read. |
| `OPT_CMD_ID_LOW` | 0x7f | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Command written before the second id read. Its id bits come from bits 6 and 5 of the byte read. |
| `OPT_DELAY_SMALL` | 0x2 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Horizontal delay used when the installed value is below the limit. It is zero otherwise. |
| `OPT_ID_MASK` | 0x60 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Bits 6 and 5 of an id read. |
| `OPT_ID_RESTORE` | 0x70 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Bits ORed into the first byte read when the probe writes that byte back. |
| `OPT_INSTALLED_LIMIT` | 0x9 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Installed values below this use the small horizontal delay. The reason for the split is inferred. |
| `OPT_PORT_ADDR` | 0x7e | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Write address of the option port on the flat-panel bus. A read uses the same address with bit 0 set. |
| `OVERLAY_TRANSPARENT_INDEX` | 0x0 | inferred | published GBE 1.1 specification | Overlay pixel value that is transparent, so the normal planes show through. |
| `REF_CLOCK_KHZ` | 0x4e20 | inferred | shipped IRIX kernel binaries, per kudzu docs/gbe.md | PLL reference clock behind the dot-clock table. The kernel states none; the source reading takes 20 MHz from a public Linux driver, not re-checked. |
| `TILE_LIST_ALIGN_BYTES` | 0x200 | inferred | published GBE 1.1 specification | Tile-list requests start on this boundary. |
| `TILE_LIST_BYTES_UNIT` | 0x20 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | a changed tile pointer is seen by adding this |
| `TILE_LIST_OUTSTANDING` | 0x8 | inferred | published GBE 1.1 specification | Tile-list requests that may be outstanding at once. |
| `TILE_LIST_PAGE_BYTES` | 0x2000 | inferred | published GBE 1.1 specification | A tile-list request does not cross a page of this size. |
| `TILE_NUMBER_MASK` | 0x1fff | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Mask the shipped IRIX kernel applies to a physical tile address before it is written into a tile list. |
| `TWO_WIRE_WAIT_BIT` | 0x1 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Bit of the bus register that a start condition waits to read clear. |
| `TWO_WIRE_WAIT_LIMIT` | 0x3c | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Most delays a start condition polls the bus bit before it gives up. |
| `VC_TILE_REGS` | 0x5 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | VC_4 to VC_8 hold the ten tiles of one captured field, two per register |
| `VT_XY_FREEZE` | 0x80000000 | established | shipped IRIX kernel binaries, per kudzu docs/gbe.md | Value the shipped IRIX kernel writes to the vertical timing position word to freeze it; the word's bit 31 is read first as the freeze state. |

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
| `SYSCLK` | 0x8 | vector | tm=8 |
| `VT_XYMAX` | 0x20d320 | vector | htotal=800, vtotal=525 |
