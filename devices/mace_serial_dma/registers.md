<!-- generated from devices/mace_serial_dma/registers.toml by defs-gen - do not edit, change the source -->

# O2 MACE serial port DMA channels: channel control, ring pointers and depth

MACE serial DMA block for one serial port: the transmit and receive channel control, read and write pointers and depth. Offsets are from the port block base (constant BLOCK_BASE for port 1, PORT2_BLOCK_BASE for port 2; the two blocks use the same offsets). Index 0 of each register is the transmit channel and index 1 is the receive channel. The ring interrupt causes are in mace_periph.toml, and the packet formats and ring placement are in docs/mace-serial-dma.md.

Unit `mace_serial_dma`, macro prefix `MACE_SERIAL_DMA`.
Default source: published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `channel_control` | 0x0 | rw | 64 | 2 |  | 0x400 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `channel_read` | 0x8 | rw | 64 | 2 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `channel_write` | 0x10 | rw | 64 | 2 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `channel_depth` | 0x18 | r | 64 | 2 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |

### Register `channel_control`

Control of the transmit channel (index 0, offset 0x00) and the receive channel (index 1, offset 0x20). Bits not listed read zero and ignore writes (established, printed page 127, table 58). Both channels share this layout.

Array of 2 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `channel_reset` | established |  | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | 1 resets the channel: it goes inactive, all of its registers reset, the interrupt output goes inactive and the FIFOs are flushed. Resets to 1 (printed page 127). This is separate from the external controller reset in the peripheral ring base (see mace_periph.toml). |
| 9 | `dma_enable` | established |  | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | 1 enables the channel and it must have its pointers set up first. 0 freezes the channel and leaves its state unchanged (printed page 127). |
| 7:5 | `threshold` | established | serial_threshold (off=0, depth_quarter=1, depth_half=2, depth_three_quarter=3, empty=4, not_empty=5, full=6, not_full=7) | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | Interrupt condition, see the serial_threshold enum (printed page 127). |

### Register `channel_read`

Read pointer of each channel, in 32-byte blocks. On the transmit channel the DMA engine owns it, and on the receive channel software owns it (established for the ownership text, printed page 128). The printed register tables mark both pointers read/write (printed pages 122 and 127), so whether a software write to the engine-owned pointer is ignored is unknown.

Array of 2 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:5 | `block_index` | established |  | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | Position in 32-byte blocks within the 4 KiB ring. Bits 4:0 and 15:12 read zero (printed page 127, table 56). Page 122 gives this pointer bits 11:0, which conflicts with page 127; the page 127 field is used here. |

### Register `channel_write`

Write pointer of each channel, in 32-byte blocks. On the transmit channel software owns it, and on the receive channel the DMA engine owns it (established for the ownership text, printed page 128). The same table conflict as channel_read applies, so a software write to the engine-owned pointer is unknown.

Array of 2 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:5 | `block_index` | established |  | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | Position in 32-byte blocks within the 4 KiB ring. Bits 4:0 and 15:12 read zero (printed page 127, table 57). Page 122 gives bits 11:0, as for channel_read. |

### Register `channel_depth`

Blocks of ring data in use, computed as the write pointer minus the read pointer. Zero is empty and 127 is full (established, printed page 127, table 59). Page 128 says equal pointers mean the ring is full on an input channel and empty on an output channel, which conflicts with the depth-zero reading. See docs/mace-serial-dma.md.

Array of 2 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:5 | `blocks` | established |  | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | Number of 32-byte blocks in the ring. Bits 4:0 and 15:12 read zero. |

## Enums

### Enum `serial_ring`

Ring ID in bits 2:0 of a serial ring address (established, printed page 128, table 60). The ring ID selects a 4 KiB ring within the 32 KiB ring block set by the peripheral ring base.

| Label | Value | Grade | Source |
|---|---|---|---|
| `scratch` | 3 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `port1_tx` | 4 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `port1_rx` | 5 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `port2_tx` | 6 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `port2_rx` | 7 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |

### Enum `serial_threshold`

Interrupt threshold of a serial DMA channel. The levels are block counts of the 4 KiB ring, 128 blocks in all. For an input channel the first three values mean at least one quarter, one half and three quarters full. For an output channel they mean below those levels (established, printed page 127).

| Label | Value | Grade | Source |
|---|---|---|---|
| `off` | 0 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `depth_quarter` | 1 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `depth_half` | 2 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `depth_three_quarter` | 3 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `empty` | 4 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `not_empty` | 5 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `full` | 6 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |
| `not_full` | 7 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f318000 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | physical base of the serial port 1 DMA register block, page 2 of the 16 KiB ISA register pages (printed page 122, table 52) |
| `PORT2_BLOCK_BASE` | 0x1f31c000 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | physical base of the serial port 2 DMA register block, page 3 of the 16 KiB ISA register pages (printed page 122, table 52) |
| `RING_BASE_ALIGN` | 0x8000 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | alignment of the ring block base, which the peripheral ring base register supplies in bits 31:15 (printed pages 123 and 128) |
| `RING_BYTES` | 0x1000 | established | published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) | size of each serial DMA ring, 4 KiB (printed pages 123 and 128) |
