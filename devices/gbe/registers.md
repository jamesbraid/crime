<!-- generated from devices/gbe/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 5 -->
<!-- input sha256 0023aea84682198875c8cd840923aab749482c5f5580b2a5183b36c767a3f8ab -->

# O2 GBE display back end register words

GBE display back end register words, tables and offsets.

Unit `gbe`, macro prefix `GBE`.
Default source: published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `ctrlstat` | 0x0 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `dotclock` | 0x4 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `i2c` | 0x8 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `sysclk` | 0xc | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `i2cfp` | 0x10 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `device_id` | 0x14 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_xy` | 0x10000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_xymax` | 0x10004 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_vsync` | 0x10008 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_hsync` | 0x1000c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_vblank` | 0x10010 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_hblank` | 0x10014 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_flags` | 0x10018 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_f2rf_lock` | 0x1001c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_intr01` | 0x10020 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_intr23` | 0x10024 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `fp_hdrv` | 0x10028 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `fp_vdrv` | 0x1002c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `fp_de` | 0x10030 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_hpixen` | 0x10034 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_vpixen` | 0x10038 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_hcmap` | 0x1003c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vt_vcmap` | 0x10040 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `did_start_xy` | 0x10044 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `crs_start_xy` | 0x10048 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vc_start_xy` | 0x1004c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `ovr_width_tile` | 0x20000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `ovr_inhwctrl` | 0x20004 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `ovr_control` | 0x20008 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `frm_size_tile` | 0x30000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `frm_size_pixel` | 0x30004 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `frm_inhwctrl` | 0x30008 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `frm_control` | 0x3000c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `did_inhwctrl` | 0x40000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `did_control` | 0x40004 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `wid` | 0x48000 | rw | 32 | 32 |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `cmap` | 0x50000 | rw | 32 | 4608 |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `cmap_fifo` | 0x58000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `gmap` | 0x60000 | rw | 32 | 256 |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `crs_pos` | 0x70000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `crs_ctl` | 0x70004 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `crs_cm` | 0x70008 | rw | 32 | 3 |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `crs_gly` | 0x78000 | rw | 32 | 64 |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vc_0` | 0x80000 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vc_1` | 0x80004 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vc_2` | 0x80008 | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vc_3` | 0x8000c | rw | 32 |  |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `vc_tiles` | 0x80010 | rw | 32 | 5 |  | unknown | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |

### Register `ctrlstat`

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

### Register `dotclock`

Bits 22 (out of range) and 23 (out of lock) are status bits. The table leaves their
reset contents unspecified, and the spec gives no PLL lock time or frequency limits.
Bits 25:24 are the PLL test inputs tdwni and tupi, described only as their normal
operation state, with reset zero ([gbe-spec] p. 36). The shipped IRIX kernel clears the run bit, writes the timing words, then writes this word with the run bit set and waits 11 milliseconds (DOTCLK_SETTLE_MS). It stores M minus one, N minus one and P unchanged. What the run bit does in the hardware is inferred; the specification leaves it undefined.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:24 | `test` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23 | `out_of_lock` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 22 | `out_of_range` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 20 | `run` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:14 | `p` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 13:8 | `n_minus_1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 7:0 | `m_minus_1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `i2c`

Monitor DDC bus. Bit 0 is the data line and bit 1 the clock line; both reset to 1.
The spec gives separate output and synchronized input pins (page 22): a write sets
the outputs, and a read returns the bus state, which can differ from the output
latch. IRIX treats both bits as active low: it writes 1 to pull a line low and reads
1 for a low line (established from its bus routines as IRIX behaviour; for the
hardware this is a software expectation). An inverting open-collector driver would
explain it, and the reset value 1 would then hold both lines low until the first
write of 0 (inferred, not observed).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `sdc` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `sda` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `sysclk`

System PLL test controls, gains and divider ([gbe-spec] p. 37). Bits 1:0 are tdwni and
tupi and bits 3:2 tm(1) and tm(0), described as normal operation states; the field
below spans all four. Reset has bit 3 set and every other defined bit zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:12 | `divider` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:10 | `current_gain` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 9:8 | `voltage_gain` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3:0 | `tm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `i2cfp`

Flat-panel I2C bus, same layout and active-low polarity as I2C: data at bit 0 and
clock at bit 1, both reset to 1. The spec places external pullups on the flat-panel
clock and data outputs (page 4). The 1600SW adapter and the dual-channel option are
detected through it (devices/gbe/flat-panel-1600sw.md).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `sdc` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `sda` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `device_id`

Device identity and chip revision (gbe-spec register table, page 34). The shipped IRIX kernel reads this word first and leaves the block untouched unless it reads DEVICE_ID_VALUE; the field split is not recorded.

### Register `vt_xy`

The shipped IRIX start-up sequence compares its whole unmasked value with the vertical blank start line; the stop sequence reads bit 31 as the freeze state and freezes the word by writing VT_XY_FREEZE. The kernel reading derived this offset from the numbering of the other timing words and graded it inferred; the specification's table gives it.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `freeze` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23:12 | `y` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `x` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_xymax`

The shipped IRIX timing routine writes 0 here, and the start-up sequence writes the totals once the frame buffer is set up. The kernel stores the record's total pixels and total lines, not one less than them; whether the hardware expects one less is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `vtotal` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `htotal` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_vsync`

Vertical sync turns off and on at these lines (VT_2). The page 38 text for the on
row repeats the off comparator, so the positions are established but that description
is not.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_hsync`

Horizontal sync turns off and on at these pixel counts (VT_3).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_vblank`

Vertical blanking turns off and on at these lines (VT_4). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel option is fitted, packing the active height in the high field and 0xfff in the low field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_hblank`

Horizontal blanking turns off and on at these pixel counts (VT_5). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel option is fitted, packing the active width in the high field and 0xfff in the low field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_flags`

Output polarity and control bits 6:0 (VT_6). The register table ([gbe-spec] p. 39) names
every bit and gives all of them a reset of zero: vsync invert, vsync forced low, hsync
invert, hsync forced low, composite sync forced high (4) or low (5), and left/right
signal forced high (6). The shipped IRIX timing routine reads it, clears bits 1 and 7, and ORs in 0 or 2 for the board's panel set-up byte 132. What bit 1 does to the hardware is unknown. The value is undefined when the option lookup that feeds it fails.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 6 | `stereo_forced_high` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 5 | `sync_low` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4 | `composite_sync_high` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `horizontal_forced_low` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `horizontal_invert` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `vertical_forced_low` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `vertical_invert` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_f2rf_lock`

Field-to-frame lock line, VT_7. The register table ([gbe-spec] p. 39) puts vt_f2rf, the
line where the left/right synchronisation signal toggles, in bits 11:0 and vt_frmlock, the
line vt_y is preset to on a frame-lock edge, in bits 23:12, and gives both a reset of zero. The shipped IRIX timing routine stores the vertical blank start line in the high field, and repeats it in the low field when the frame-lock flag bits (mask 0x12) of its timing record are set, else 0xfff.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `frame_lock_y` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `stereo_toggle_y` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_intr01`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `line0` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `line1` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_intr23`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `line2` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `line3` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `fp_hdrv`

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

### Register `fp_vdrv`

The value the shipped IRIX timing routine writes depends on the board's panel set-up byte and on whether a dual-channel option is fitted.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `fp_de`

The shipped IRIX timing routine writes it only for the default set-up and panel set-ups 130 and 131, and only when no dual-channel option is fitted.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_hpixen`

Horizontal pixel-enable window, VT_13. The spec prose says the horizontal and vertical
enables combine with OR. The table does not settle that rule. The shipped IRIX kernel parks 0xffffff here before the frame buffer is set up and writes it last in the start-up sequence: the high field is the horizontal blank end minus 0x13 (total pixels added first when that is negative), the low field is (active width + that value - 2) modulo total pixels.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_vpixen`

Vertical pixel-enable window, VT_14. The shipped IRIX kernel parks 0xffffff here and writes it last in the start-up sequence with the vertical blank end in the high field and the vertical blank start in the low field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_hcmap`

The shipped IRIX kernel writes the horizontal blank window: start in the high field, end in the low field, in pixels.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vt_vcmap`

The shipped IRIX kernel writes the vertical blank window: start in the high field, end in the low field, in lines.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `on` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `off` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `did_start_xy`

The shipped IRIX kernel writes a vertical part of minus (vertical blank start minus vertical blank end minus 1) when that difference is positive, else the difference, masked to 12 bits, and a horizontal part of the horizontal blank end minus 20 (total pixels added when the blank end is below 20). The bit placement of the two parts is not stated by the kernel and follows the fields here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `crs_start_xy`

The shipped IRIX kernel writes the same vertical part as DID_START_XY, with one line added (0x1000), and the horizontal blank end minus 54 with total pixels added when that is negative; the 54 is a kernel constant. The placement of the parts follows the fields here (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vc_start_xy`

The shipped IRIX kernel writes the same vertical part as DID_START_XY without the extra line, and the horizontal blank end minus 4. The placement of the parts follows the fields here (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `starty` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `startx` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `ovr_width_tile`

Overlay width must be a multiple of 32 pixels, so the 32-byte remainder is whole pixels at 8 bits (GBE 1.1 pp. 13-14).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13 | `fifo_reset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12:5 | `width_tiles` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:0 | `remainder` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `ovr_inhwctrl`

The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the overlay control word.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `ovr_control`

The shipped IRIX stop routine clears its enable bit and leaves the word otherwise unwritten; reading the enable as a DMA enable is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `tile_list_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `frm_size_tile`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `fifo_reset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 14:13 | `depth` | established | bits8=0, bits16=1, bits32=2 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 12:5 | `width_tiles` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:0 | `remainder` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `frm_size_pixel`

Frame height in pixels, shared by the normal and overlay planes. Reset zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `height` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `frm_inhwctrl`

The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the frame control word.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `frm_control`

The shipped IRIX stop routine saves it, clears its enable bit, and later writes it back with its pointer field bumped by one unit.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `tile_list_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `did_inhwctrl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `did_base` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `did_control`

The shipped IRIX stop routine tests the enable bit at entry, clears it and leaves the word otherwise unwritten; the kernel never writes the table address field.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `did_base` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `wid`

The shipped IRIX kernel rejects window indices of 32 or more and writes entry 0 with 3 at text-port set-up. Its compare mask (0x7fc) leaves the auxiliary field out, and it clears the gamma disable bit before a write when the alternative gamma table is in use. Buffer code: 3 buffers both, 0 marks the window to be skipped by the buffer flip, 1 and 2 exchange on a swap. Pixel type: 0 indexed 8-bit, 1 indexed 12-bit, 2 RG3B2, 4 RGB5, 5 RGB8. The colour-map group's first entry is the group value times 256.

Array of 32 registers, stride 4.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:11 | `aux` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10 | `gm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 9:5 | `cm` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4:2 | `typ` | established | i8=0, i12=1, rg3b2=2, rgb4=3, rgb5=4, rgb8=5, rgba5=6, rgb10=7 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1:0 | `buf` | established | lower=1, upper=2, both=3 | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `cmap`

Array of 4608 registers, stride 4.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `r` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 23:16 | `g` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:8 | `b` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `cmap_fifo`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `free` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `gmap`

256 gamma map entries (gbe-spec register table, page 34). The entry layout is not recorded here.

Array of 256 registers, stride 4.

### Register `crs_pos`

Cursor position, CRS_0. The table gives 16-bit X in bits 15:0 and Y in bits 31:16,
reset zero. The spec's functional text (pp. 20-22) calls positions 12-bit, and NetBSD
treats the fields as signed. Width and signedness are unresolved. The shipped IRIX text port writes 0 at set-up.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `y` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `x` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `crs_ctl`

The shipped IRIX text port writes 1 after the glyph and colours are loaded; what the other bits mean there is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `crosshair` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `crs_cm`

Cursor colour map, three entries (gbe-spec register table, page 34). Each is in the byte order red, green, blue, zero; the shipped IRIX text port writes 0xffffff00 to the first and 0xff000000 to the second.

Array of 3 registers, stride 4.

### Register `crs_gly`

Cursor glyph RAM, 64 words from the page 34 address table (0x078000 to 0x0780FC). The page 46 register heading prints the start as 0x0780000, seven digits, taken as a typo because it does not fit the 24-bit register space or the 0x0780FC end. The shipped IRIX text port loads words 0 to 31 from a 32-word table and writes 0 to words 32 to 63. Reading the words as a 32 by 32 bitmap at two bits per pixel is inferred; the text port draws with the first 32 words only (inferred).

Array of 64 registers, stride 4.

### Register `vc_0`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `right` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `left` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vc_1`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `bottom` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 11:0 | `top` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vc_2`

The shipped IRIX video driver clears VC_0 to VC_3 (written as zero when a capture path stops); bit 0 of VC_2 enabling DMA is inferred from its start routine.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `cs_bypass` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `full_screen` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `auto_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `flicker_filter` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vc_3`

The shipped IRIX video driver clears it when a capture path stops and holds a path byte in it; that reading is inferred from the start routine.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:5 | `descr_ptr` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 4 | `current_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 3 | `end_of_field` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 2 | `field_corrupt` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 1 | `descr_dma_enable` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 0 | `field_select` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Register `vc_tiles`

Array of 5 registers, stride 4.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `tile_first` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 15:0 | `tile_second` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `DID_FRAME` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `DID_LINE` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |
| `TILE_LIST_ENTRY` | 32 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |

### Word `DID_FRAME`

The shipped IRIX X module packs a frame entry as block << 19 | offset << 11 | yend, one per horizontal band of lines.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:19 | `block` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 18:11 | `offset` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10:0 | `yend` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `DID_LINE`

The shipped IRIX X module packs a line-table entry as index << 11 | xend, one per rectangle in a band and sorted by its last column, in 16-bit units inside a block.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:11 | `did` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| 10:0 | `xend` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

### Word `TILE_LIST_ENTRY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:0 | `tile` | established |  | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CMAP_ENTRIES_REV1` | 0x1200 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | revision 1.1 |
| `CMAP_ENTRIES_REV2` | 0x1800 | inferred | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | revision 2 |
| `CMAP_FIFO_DEPTH_REV1` | 0x40 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `CMAP_FIFO_DEPTH_REV2` | 0x3f | inferred | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `CMAP_FIFO_LOW_WATER` | 0x30 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | free-slot threshold software waits for The shipped IRIX X module waits for this many free entries after each batch of 33 colour-map writes (CMFIFO_BATCH). |
| `CMFIFO_BATCH` | 0x21 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Colour-map writes the shipped IRIX X module issues between FIFO checks. |
| `DEVICE_ID_VALUE` | 0x666 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | the probe requires this The shipped IRIX kernel reads the identity word first and leaves the block untouched when it reads any other value. |
| `DID_BLOCK_BYTES` | 0x200 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Size of one block of a display-ID table; line tables are packed in 16-bit units inside a block. |
| `DID_BLOCK_ENTRIES` | 0x100 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Entries after which packing restarts in the next block. |
| `DID_END_BLOCK` | 0x80 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Block number that ends a display-ID table; the X module stops filling it there. |
| `DID_LAST_XEND` | 0x7ff | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Right-hand column of the last band's line entry, which covers every line below the screen. |
| `DID_LINE_TABLE_OFFSET` | 0x2000 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Byte offset of the first line table in a display-ID table. |
| `DID_TABLE_BYTES` | 0x10000 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Size of one display-ID table as the shipped IRIX X module fills it. The frame table starts at byte 0 and the line tables start at DID_LINE_TABLE_OFFSET. |
| `DOTCLK_SETTLE_MS` | 0xb | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Milliseconds the shipped IRIX kernel waits after it writes the dot-clock word with the run bit set. |
| `GBE_LINE_IRQ_BASE` | 0x10 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | CRIME interrupt bit of GBE line 0; GBE line n raises bit 16 + n. Lines 2 and 3 are the CRIME inputs 18 and 19. |
| `GMAP_ENTRIES` | 0x100 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `MODE_ENTRIES` | 0x20 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings |  |
| `MODE_ENTRY_STRIDE` | 0x4 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | entries are consecutive 32-bit words, so swap slot n sits at the table base plus 4 * n |
| `OPT_CMD_CLOCK_KHZ` | 0x186a0 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Pixel clock in kHz. Above this the shipped IRIX timing routine sends 0xff to the option port; at or below it, 0x7f. |
| `OPT_CMD_ID_HIGH` | 0xff | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Command written before the first id read. Its id bits come from bits 6 and 5 of the byte read. |
| `OPT_CMD_ID_LOW` | 0x7f | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Command written before the second id read. Its id bits come from bits 6 and 5 of the byte read. |
| `OPT_DELAY_SMALL` | 0x2 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Horizontal delay used when the installed value is below the limit. It is zero otherwise. |
| `OPT_ID_MASK` | 0x60 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Bits 6 and 5 of an id read. |
| `OPT_ID_RESTORE` | 0x70 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Bits ORed into the first byte read when the probe writes that byte back. |
| `OPT_INSTALLED_LIMIT` | 0x9 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Installed values below this use the small horizontal delay. The reason for the split is inferred. |
| `OPT_PORT_ADDR` | 0x7e | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Write address of the option port on the flat-panel bus. A read uses the same address with bit 0 set. |
| `OVERLAY_TRANSPARENT_INDEX` | 0x0 | inferred | published GBE 1.1 specification | Overlay pixel value that is transparent, so the normal planes show through. |
| `REF_CLOCK_KHZ` | 0x4e20 | inferred | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | PLL reference clock behind the dot-clock table. The kernel states none; the source reading takes 20 MHz from a public Linux driver, not re-checked. |
| `TILE_LIST_ALIGN_BYTES` | 0x200 | inferred | published GBE 1.1 specification | Tile-list requests start on this boundary. |
| `TILE_LIST_BYTES_UNIT` | 0x20 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | a changed tile pointer is seen by adding this |
| `TILE_LIST_OUTSTANDING` | 0x8 | inferred | published GBE 1.1 specification | Tile-list requests that may be outstanding at once. |
| `TILE_LIST_PAGE_BYTES` | 0x2000 | inferred | published GBE 1.1 specification | A tile-list request does not cross a page of this size. |
| `TILE_NUMBER_MASK` | 0x1fff | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Mask the shipped IRIX kernel applies to a physical tile address before it is written into a tile list. |
| `TWO_WIRE_WAIT_BIT` | 0x1 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Bit of the bus register that a start condition waits to read clear. |
| `TWO_WIRE_WAIT_LIMIT` | 0x3c | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Most delays a start condition polls the bus bit before it gives up. |
| `VC_TILE_REGS` | 0x5 | established | published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings | VC_4 to VC_8 hold the ten tiles of one captured field, two per register |
| `VT_XY_FREEZE` | 0x80000000 | established | shipped IRIX kernel binaries, per kudzu devices/gbe/gbe.md | Value the shipped IRIX kernel writes to the vertical timing position word to freeze it; the word's bit 31 is read first as the freeze state. |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `ctrlstat` | 0x10000000 | vector | pclk_select=1, chip_rev=0 |
| `ctrlstat` | 0x30000000 | vector | pclk_select=3, chip_rev=0 |
| `dotclock` | 0x100000 | vector | run=1, p=0 |
| `sysclk` | 0x8 | vector | tm=8 |
| `vt_xymax` | 0x20d320 | vector | htotal=800, vtotal=525 |
| `fp_hdrv` | 0xfff | vector | off=4095, on=0 |
| `fp_vdrv` | 0x1fff | vector | off=4095, on=1 |
| `fp_de` | 0x303326 | vector | off=806, on=771 |
| `did_control` | 0x10005 | vector | did_base=5, dma_enable=1 |
| `wid` | 0x41 | vector | buf=1, typ=0, cm=2 |
| `cmap` | 0xff804000 | vector | r=255, g=128, b=64 |
