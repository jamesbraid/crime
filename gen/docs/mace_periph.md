# O2 MACE peripheral ring base and interrupt status and mask

<!-- generated from defs/mace_periph.toml by defs-gen - do not edit, change the source -->

MACE peripheral block: the serial and parallel ring base with external reset, and the peripheral interrupt status and mask. Offsets are from the block base (constant BLOCK_BASE).

Unit `mace_periph`, macro prefix `MACE_PERIPH`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `ring_base` | 0x0 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |
| `periph_status` | 0x10 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |
| `periph_mask` | 0x18 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |

### Register `ring_base`

Bit 0 asserts the external serial and parallel controller reset; it resets to one and writing zero releases it. Bits 31:15 hold the 32 KiB-aligned base of the peripheral DMA rings (established, printed page 123). Bits 14:1 are not described.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:15 | `dma_ring_base` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 0 | `ext_reset` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |

### Register `periph_status`

Level sources summed into CRIME interrupt groups. Bits 16, 22 and 28 are read/write for external parallel and serial-DMA edge requests; the other listed sources are read-only (established, printed page 125). Timer compares 0, 1 and 2 are bits 13, 14 and 15, the RTC is bit 8, serial device A is bit 20 and serial device B is bit 26 (established, printed page 125).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 26 | `serial_b` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 20 | `serial_a` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 15 | `timer_cmp2` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 14 | `timer_cmp1` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 13 | `timer_cmp0` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 8 | `rtc` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |

### Register `periph_mask`

Gates delivery of the status bits. A mask bit does not clear the device condition behind a status bit (established, printed pages 125 and 147). Reset value not stated.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f310000 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | physical base of the peripheral ring and status block (printed page 123) |
