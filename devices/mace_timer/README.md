# mace_timer

MACE timer block: the 32-bit counter, the three 32-bit compare registers that set level interrupts, and the audio and video UST/MSC pairs. Offsets are from the block base (constant BLOCK_BASE).

Source: published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE base: PCI bridge, interrupt routing, serial and RTC frontends](../../platforms/ip32/mace-base.md)

## Used by

No software page touches this unit yet.
