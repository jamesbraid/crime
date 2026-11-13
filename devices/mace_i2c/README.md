# mace_i2c

MACE two-wire bus interface: the configuration and reset register, its alias, the control and status register and the data register. Offsets are from the block base (constant BLOCK_BASE).

Source: published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181).

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Used by

- [Functions by role](../../software/kernel/functions.md)
- [Graphics ioctl interface (IRIX 6.5.30, O2)](../../software/kernel/ioctls.md)
