# mace_periph

MACE peripheral block: the serial and parallel ring base with external reset, and the peripheral interrupt status and mask. Offsets are from the block base (constant BLOCK_BASE).

Source: published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE base: PCI bridge, interrupt routing, serial and RTC frontends](../../platforms/ip32/mace-base.md)

## Used by

No software page touches this unit yet.
