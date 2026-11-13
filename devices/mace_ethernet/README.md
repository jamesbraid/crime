# mace_ethernet

The MACE Fast-Ethernet block: MAC control, interrupt status, transmit and receive DMA control, the transmit ring, the receive cluster FIFO, the PHY bus and the station-address filter. Offsets are from the block base (constant BLOCK_BASE). Diagnostic transmit queue registers, the backoff seed and the incoming message queue have no entry yet.

Source: published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181).

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [O2 MACE Ethernet: Fast-Ethernet block registers and DMA formats](mace-ethernet.md)

## Used by

No software page touches this unit yet.
