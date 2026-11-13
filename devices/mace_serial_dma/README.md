# mace_serial_dma

MACE serial DMA block for one serial port: the transmit and receive channel control, read and write pointers and depth. Offsets are from the port block base (constant BLOCK_BASE for port 1, PORT2_BLOCK_BASE for port 2; the two blocks use the same offsets). Index 0 of each register is the transmit channel and index 1 is the receive channel. The ring interrupt causes are in mace_periph.toml, and the packet formats and ring placement are in devices/mace_serial_dma/mace-serial-dma.md.

Source: published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130).

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE serial port DMA channels](mace-serial-dma.md)

## Used by

No software page touches this unit yet.
