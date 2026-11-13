# mace_pci

MACE PCI control block: error capture, interrupt and error enables, read-buffer revision, and the configuration address and data ports. Offsets are from the block base (constant BLOCK_BASE). Only these six registers exist in the block, and they are not repeated across it (established, printed pages 161 and 181). A read of any other offset in the block returns 0xff in each byte position it covers, and a write to one is discarded (established, printed pages 161 and 162).

Source: published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE base: PCI bridge, interrupt routing, serial and RTC frontends](../../platforms/ip32/mace-base.md)

## Used by

No software page touches this unit yet.
