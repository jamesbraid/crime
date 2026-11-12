# O2 MACE free-running counter and three compare registers

<!-- generated from defs/mace_timer.toml by defs-gen - do not edit, change the source -->

MACE timer block: the 32-bit counter and the three 32-bit compare registers that set level interrupts. Offsets are from the block base (constant BLOCK_BASE).

Unit `mace_timer`, macro prefix `MACE_TIMER`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `counter` | 0x0 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |
| `cmp0` | 0x8 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |
| `cmp1` | 0x10 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |
| `cmp2` | 0x18 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |

### Register `counter`

One 32-bit counter, clocked every 960 ns (the 33.333 MHz PCI clock divided by 32). It starts at zero on power-on reset and wraps in 32 bits (established, printed page 147). The prose calls it read-only while the register table labels it read/write (printed page 148); the access is open (see docs/open-questions.md).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `count` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |  |

### Register `cmp0`

32-bit compare. Equality sets level interrupt latch 0, which drives peripheral status bit 13. Writing the register clears the latch, and the latch resets low. The reset value of the compare is not stated (established, printed page 147).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `value` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |  |

### Register `cmp1`

32-bit compare. Equality sets level interrupt latch 1, which drives peripheral status bit 14. Writing clears the latch. Reset value not stated (established, printed page 147).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `value` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |  |

### Register `cmp2`

32-bit compare. Equality sets level interrupt latch 2, which drives peripheral status bit 15. Writing clears the latch. Reset value not stated (established, printed page 147).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `value` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f340000 | established | published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout | physical base of the timer block (printed page 147) |
