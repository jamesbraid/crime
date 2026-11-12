# O2 MACE two-wire (I2C) bus interface

<!-- generated from defs/mace_i2c.toml by defs-gen - do not edit, change the source -->

MACE two-wire bus interface: the configuration and reset register, its alias, the control and status register and the data register. Offsets are from the block base (constant BLOCK_BASE).

Unit `mace_i2c`, macro prefix `MACE_I2C`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `config` | 0x0 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) |
| `config_alias` | 0x8 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) |
| `control` | 0x10 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) |
| `data` | 0x18 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) |

### Register `config`

Bus configuration and reset, bits 5:0 (established, printed pages 150 and 151, tables 76 and 79). Bits 0 to 3 are read/write and reset to zero. Bits 4 and 5 are read-only input levels with no fixed reset value, so the register has no single reset value (table 79 marks them X).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `clock_in` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | Read-only. The current level of the clock line. Reset not fixed (printed page 151). |
| 4 | `data_in` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | Read-only. The current level of the data line. Reset not fixed (printed page 151). |
| 3 | `clock_pin_override` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | One pulls the external clock line low; zero has no effect (printed page 151). |
| 2 | `data_pin_override` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | One pulls the external data line low; zero has no effect (printed page 151). |
| 1 | `fast_mode` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | One selects the 400 kHz data rate; zero selects the default 100 kHz (printed page 151). |
| 0 | `reset` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | One resets the interface's internal state machines; zero releases the reset (printed page 151). |

### Register `config_alias`

Labelled reserved in the register table, with the note that it aliases the configuration register above. Bits 5:0 only (established, printed page 150, table 76). This section records no access to it.

### Register `control`

Control and status, bits 7:0. Bits 0, 1 and 2 are read/write; bits 4, 5 and 7 are read-only status; bits 3 and 6 are reserved read-only, kept for compatibility with the VINO interface (established, printed page 150, table 77). Every bit resets to zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `bus_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | Read-only. One means a bus error (printed page 150). |
| 5 | `ack_missing` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | Read-only. One means no acknowledgment was received; zero means one was (printed page 150). |
| 4 | `transfer_busy` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | Read-only. One means a transfer is in progress; zero means done (printed page 150). |
| 2 | `hold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | One keeps the bus for more bytes. Zero is the last byte and releases the bus (printed page 150). |
| 1 | `direction` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | One means read data; zero means write data (printed page 150). |
| 0 | `force_idle` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | Written zero, forces the bus idle. Written one, has no effect. Read one means not idle, read zero means idle (printed page 150). |

### Register `data`

Bus data, bits 7:0, reset to zero (established, printed page 150, table 78). The register text says a write starts a write cycle when control bit 1 is one, and a read starts a new read cycle. Control bit 1 is one for read in table 77 (printed page 150), so the two tables disagree about the write case. The disagreement is not resolved here (see docs/mace-video.md).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `byte` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f330000 | established | published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) | physical base of the two-wire interface block, sub-block 011 of the peripheral controller (printed page 181, table 92) |
