<!-- generated from devices/mace_uart/registers.toml by defs-gen - do not edit, change the source -->

# O2 MACE external 16550-compatible serial port: modem control and scratch registers

One external serial port of the MACE chip, a 16550-compatible UART. Offsets are from each port's base (the serial base constants in mace_periph.toml). Only the modem control and scratch registers are defined here; the rest of the register set is in platforms/ip32/mace-base.md.

Unit `mace_uart`, macro prefix `MACE_UART`.
Default source: TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `mcr` | 0x400 | rw | 8 |  |  | 0x0 | inferred | TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996) |
| `scratch` | 0x700 | rw | 8 |  |  | unknown | inferred | TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996) |

### Register `mcr`

Modem control register of one port. Master reset clears every bit, and bits 6 and 7 are permanently zero (inferred, printed page 25). Bit 3 enables the port's external serial interrupt output (inferred, printed page 30).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3 | `ext_int_enable` | inferred |  | TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996) | 1 enables the external serial interrupt output. 0 disables it (printed page 30). |

### Register `scratch`

Scratch byte for programmer use, with DLAB clear. Master reset has no effect on it (inferred, printed page 25). With DLAB set, the same position holds the clock prescaler and the infrared select. That use has no field here: the MACE specification gives the infrared select as bit 7 and the TI data sheet only calls it the seventh bit, which platforms/ip32/mace-base.md records.
