# mace_ps2

MACE PS/2 keyboard and mouse ports: one serial port per device, each with a transmit buffer, a receive buffer, a control register and a status register. Offsets are from the port's bank base (constants KEYBOARD_BASE and MOUSE_BASE).

Source: published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181).

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE PS/2 keyboard and mouse ports](mace-ps2.md)

## Used by

No software page touches this unit yet.
