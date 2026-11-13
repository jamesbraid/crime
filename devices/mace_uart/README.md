# mace_uart

One external serial port of the MACE chip, a 16550-compatible UART. Offsets are from each port's base (the serial base constants in mace_periph.toml). Only the modem control and scratch registers are defined here; the rest of the register set is in platforms/ip32/mace-base.md.

Source: TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996).

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE base: PCI bridge, interrupt routing, serial and RTC frontends](../../platforms/ip32/mace-base.md)

## Used by

No software page touches this unit yet.
