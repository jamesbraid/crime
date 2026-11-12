# O2 MACE free-running counter, three compare registers and audio time stamps

<!-- generated from defs/mace_timer.toml by defs-gen - do not edit, change the source -->

MACE timer block: the 32-bit counter, the three 32-bit compare registers that set level interrupts, and the audio MSC/UST pairs. Offsets are from the block base (constant BLOCK_BASE).

Unit `mace_timer`, macro prefix `MACE_TIMER`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `counter` | 0x0 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |
| `cmp0` | 0x8 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |
| `cmp1` | 0x10 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |
| `cmp2` | 0x18 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |
| `audio_pair` | 0x20 | rw | 64 | 3 |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |

### Register `counter`

One 32-bit counter, clocked every 960 ns (the 33.333 MHz PCI clock divided by 32). It starts at zero on power-on reset and wraps in 32 bits (established, printed page 147). The prose calls it read-only while the register table labels it read/write (printed page 148); the access is open (see docs/open-questions.md).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `count` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |  |

### Register `cmp0`

32-bit compare. Equality sets level interrupt latch 0, which drives peripheral status bit 13. Writing the register clears the latch, and the latch resets low. The reset value of the compare is not stated (established, printed page 147).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `value` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |  |

### Register `cmp1`

32-bit compare. Equality sets level interrupt latch 1, which drives peripheral status bit 14. Writing clears the latch. Reset value not stated (established, printed page 147).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `value` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |  |

### Register `cmp2`

32-bit compare. Equality sets level interrupt latch 2, which drives peripheral status bit 15. Writing clears the latch. Reset value not stated (established, printed page 147).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `value` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |  |

### Register `audio_pair`

Audio time stamp pairs: capture at 0x20, playback 1 at 0x28 and playback 2 at 0x30. A 64-bit read of a pair returns UST in bits 63:32 and MSC in bits 31:0. UST is the 960 ns counter at the last counted sample, and MSC is the sample pair count. MSC is writable so software can clear it (established, printed page 63 and the table on printed page 147). Section 7.2.1 of the same chapter swaps the two offsets in its prose; the table and the figure on page 63 agree with this layout.

Array of 3 registers, stride 8.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63:32 | `ust` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |  |
| 31:0 | `msc` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f340000 | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout | physical base of the timer block (printed page 147) |
| `CMP0_ALIAS` | 0x1f350000 | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout | alias of the compare register at offset 0x8, which the address map numbers #1 (printed page 181) |
| `CMP1_ALIAS` | 0x1f360000 | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout | alias of the compare register at offset 0x10, numbered #2 (printed page 181) |
| `CMP2_ALIAS` | 0x1f370000 | established | published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout | alias of the compare register at offset 0x18, numbered #3 (printed page 181) |
