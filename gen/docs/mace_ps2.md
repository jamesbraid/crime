# O2 MACE PS/2 keyboard and mouse ports

<!-- generated from defs/mace_ps2.toml by defs-gen - do not edit, change the source -->

MACE PS/2 keyboard and mouse ports: one serial port per device, each with a transmit buffer, a receive buffer, a control register and a status register. Offsets are from the port's bank base (constants KEYBOARD_BASE and MOUSE_BASE).

Unit `mace_ps2`, macro prefix `MACE_PS2`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `transmit` | 0x0 | w | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) |
| `receive` | 0x8 | r | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) |
| `control` | 0x10 | rw | 64 |  |  | 0x10 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) |
| `status` | 0x18 | r | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) |

### Register `transmit`

Transmit buffer, bits 7:0: the byte currently shifted out of the data line (established, printed page 140, table 71). Write only. Reset zero (established, printed page 141).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `byte` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) |  |

### Register `receive`

Receive buffer. Bits 7:0 are the byte currently shifted in from the data line; bits 15:8 are an alias of the status register (established, printed page 140, table 72). Read only. Both parts reset to zero (established, printed page 140). The status table resets status bit 1, which this alias mirrors at bit 9, to one (printed page 142), so the alias reset conflicts between the two tables (established as printed; the reset level of bit 9 is unknown).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:8 | `status_alias` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | Alias of the status register bits 7:0 (printed page 140). |
| 7:0 | `byte` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) |  |

### Register `control`

Command and control, bits 5:0 (established, printed page 141, table 73). Reset to 0x10, which sets only the clock-permit bit (established, printed page 141). Bits 7:6 are not defined.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `internal_reset` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One holds the port's internal state machines in reset; zero releases them (printed page 141). Reset to zero. |
| 4 | `clock_permit` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One asserts the clock output, which lets the device exchange data; zero releases it and pauses both directions (printed page 141). Resets to one. |
| 3 | `receive_interrupt_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One asserts the port interrupt when the receive buffer is full (printed page 141). |
| 2 | `transmit_interrupt_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One asserts the port interrupt when the transmit buffer is empty (printed page 141). |
| 1 | `transmit_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One lets the transmit buffer shift out on the data line, on the falling edge of the device clock; zero disables that shift and the timeout (printed page 141). The timeout itself is not defined in the specification (unknown). |
| 0 | `inhibit_after_transmit` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One releases the clock output after the next serial stream is transmitted; zero keeps it asserted (printed page 141). |

### Register `status`

Transmit and receive status and error flags, bits 7:0 (established, printed page 142, table 74). Read only. The table gives bit 0 an unknown reset level and bit 3 a reset of zero, which the table prints although the transmitter is idle; bit 1 resets to one. No single reset word is given, so the register has no fixed reset value (unknown).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `framing_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One when the last received byte had a framing error (printed page 142). The specification does not say when this flag is cleared (unknown). |
| 6 | `parity_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One when the last received byte had a parity error (printed page 142). The specification does not say when this flag is cleared (unknown). |
| 5 | `reception_in_progress` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One while the port is receiving a byte (printed page 142). Resets to zero. |
| 4 | `receive_full` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One when the receive buffer holds a byte waiting to be read (printed page 142). Resets to zero. |
| 3 | `transmit_empty` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One when the transmit buffer is empty and zero while it holds a byte waiting to be sent (printed page 142). Resets to zero in the table. |
| 2 | `transmit_in_progress` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | One while the data line is shifting an output byte (printed page 142). Resets to zero. |
| 1 | `clock_permitted` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | The output that the clock-permit control bit drives: one when the clock is asserted. Resets to one (printed page 142). |
| 0 | `clock_level` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | Level of the external device clock: one when asserted, zero when de-asserted (printed page 142). Reset not fixed. |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f320000 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | physical base of the keyboard and mouse slice, sub-block 010 of the peripheral controller (printed page 181, table 92) |
| `DEVICE_POLL_INTERVAL_US` | 0x64 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | the auxiliary device polls the clock at this interval; software must allow settling time after changing clock permit (printed page 141) |
| `FRAME_BITS` | 0xb | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | bits in one serial stream: start (0), eight data bits least significant first, odd parity, stop (1) (printed page 139, table 69) |
| `KEYBOARD_BASE` | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | keyboard port bank, offset from BLOCK_BASE; address bit 5 is zero (printed page 181, table 93) |
| `MOUSE_BASE` | 0x20 | established | published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) | mouse port bank, offset from BLOCK_BASE; address bit 5 is one (printed page 181, table 93) |
