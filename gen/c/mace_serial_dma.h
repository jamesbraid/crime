/* generated from defs/mace_serial_dma.toml by defs-gen - do not edit, change the source */
/* O2 MACE serial port DMA channels: channel control, ring pointers and depth */
#ifndef MACE_SERIAL_DMA_GEN_H
#define MACE_SERIAL_DMA_GEN_H

#include <stdint.h>


/* enum serial_ring: Ring ID in bits 2:0 of a serial ring address (established, printed page 128, table 60). The ring ID selects a 4 KiB ring within the 32 KiB ring block set by the peripheral ring base. */
#define MACE_SERIAL_DMA_SERIAL_RING_SCRATCH          3 /* established */
#define MACE_SERIAL_DMA_SERIAL_RING_PORT1_TX         4 /* established */
#define MACE_SERIAL_DMA_SERIAL_RING_PORT1_RX         5 /* established */
#define MACE_SERIAL_DMA_SERIAL_RING_PORT2_TX         6 /* established */
#define MACE_SERIAL_DMA_SERIAL_RING_PORT2_RX         7 /* established */

/* enum serial_threshold: Interrupt threshold of a serial DMA channel. The levels are block counts of the 4 KiB ring, 128 blocks in all. For an input channel the first three values mean at least one quarter, one half and three quarters full. For an output channel they mean below those levels (established, printed page 127). */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_OFF         0 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_DEPTH_QUARTER 1 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_DEPTH_HALF  2 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_DEPTH_THREE_QUARTER 3 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_EMPTY       4 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_NOT_EMPTY   5 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_FULL        6 /* established */
#define MACE_SERIAL_DMA_SERIAL_THRESHOLD_NOT_FULL    7 /* established */

/*
 * Control of the transmit channel (index 0, offset 0x00) and the receive channel (index 1, offset 0x20). Bits not listed read zero and ignore writes (established, printed page 127, table 58). Both channels share this layout.
 */
/* channel_control: rw64, reset 0x400; published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) */
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_OFFSET       0x0u /* established */
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_COUNT        2
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_STRIDE       32
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_CHANNEL_RESET_SHIFT 10 /* established */
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_CHANNEL_RESET_MASK 0x1ull
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_CHANNEL_RESET_INPLACE (MACE_SERIAL_DMA_CHANNEL_CONTROL_CHANNEL_RESET_MASK << MACE_SERIAL_DMA_CHANNEL_CONTROL_CHANNEL_RESET_SHIFT)
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_DMA_ENABLE_SHIFT 9 /* established */
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_DMA_ENABLE_MASK 0x1ull
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_DMA_ENABLE_INPLACE (MACE_SERIAL_DMA_CHANNEL_CONTROL_DMA_ENABLE_MASK << MACE_SERIAL_DMA_CHANNEL_CONTROL_DMA_ENABLE_SHIFT)
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_THRESHOLD_SHIFT 5 /* established */
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_THRESHOLD_MASK 0x7ull
#define MACE_SERIAL_DMA_CHANNEL_CONTROL_THRESHOLD_INPLACE (MACE_SERIAL_DMA_CHANNEL_CONTROL_THRESHOLD_MASK << MACE_SERIAL_DMA_CHANNEL_CONTROL_THRESHOLD_SHIFT)

/*
 * Read pointer of each channel, in 32-byte blocks. On the transmit channel the DMA engine owns it, and on the receive channel software owns it (established for the ownership text, printed page 128). The printed register tables mark both pointers read/write (printed pages 122 and 127), so whether a software write to the engine-owned pointer is ignored is unknown.
 */
/* channel_read: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) */
#define MACE_SERIAL_DMA_CHANNEL_READ_OFFSET          0x8u /* established */
#define MACE_SERIAL_DMA_CHANNEL_READ_COUNT           2
#define MACE_SERIAL_DMA_CHANNEL_READ_STRIDE          32
#define MACE_SERIAL_DMA_CHANNEL_READ_BLOCK_INDEX_SHIFT 5 /* established */
#define MACE_SERIAL_DMA_CHANNEL_READ_BLOCK_INDEX_MASK 0x7full
#define MACE_SERIAL_DMA_CHANNEL_READ_BLOCK_INDEX_INPLACE (MACE_SERIAL_DMA_CHANNEL_READ_BLOCK_INDEX_MASK << MACE_SERIAL_DMA_CHANNEL_READ_BLOCK_INDEX_SHIFT)

/*
 * Write pointer of each channel, in 32-byte blocks. On the transmit channel software owns it, and on the receive channel the DMA engine owns it (established for the ownership text, printed page 128). The same table conflict as channel_read applies, so a software write to the engine-owned pointer is unknown.
 */
/* channel_write: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) */
#define MACE_SERIAL_DMA_CHANNEL_WRITE_OFFSET         0x10u /* established */
#define MACE_SERIAL_DMA_CHANNEL_WRITE_COUNT          2
#define MACE_SERIAL_DMA_CHANNEL_WRITE_STRIDE         32
#define MACE_SERIAL_DMA_CHANNEL_WRITE_BLOCK_INDEX_SHIFT 5 /* established */
#define MACE_SERIAL_DMA_CHANNEL_WRITE_BLOCK_INDEX_MASK 0x7full
#define MACE_SERIAL_DMA_CHANNEL_WRITE_BLOCK_INDEX_INPLACE (MACE_SERIAL_DMA_CHANNEL_WRITE_BLOCK_INDEX_MASK << MACE_SERIAL_DMA_CHANNEL_WRITE_BLOCK_INDEX_SHIFT)

/*
 * Blocks of ring data in use, computed as the write pointer minus the read pointer. Zero is empty and 127 is full (established, printed page 127, table 59). Page 128 says equal pointers mean the ring is full on an input channel and empty on an output channel, which conflicts with the depth-zero reading. See docs/mace-serial-dma.md.
 */
/* channel_depth: r64, reset 0x0; published MACE 2.0 I/O ASIC specification: register tables (printed pages 122 and 127), serial ring buffer registers and ring placement (printed pages 127 and 128), packet formats (printed pages 129 and 130) */
#define MACE_SERIAL_DMA_CHANNEL_DEPTH_OFFSET         0x18u /* established */
#define MACE_SERIAL_DMA_CHANNEL_DEPTH_COUNT          2
#define MACE_SERIAL_DMA_CHANNEL_DEPTH_STRIDE         32
#define MACE_SERIAL_DMA_CHANNEL_DEPTH_BLOCKS_SHIFT   5 /* established */
#define MACE_SERIAL_DMA_CHANNEL_DEPTH_BLOCKS_MASK    0x7full
#define MACE_SERIAL_DMA_CHANNEL_DEPTH_BLOCKS_INPLACE (MACE_SERIAL_DMA_CHANNEL_DEPTH_BLOCKS_MASK << MACE_SERIAL_DMA_CHANNEL_DEPTH_BLOCKS_SHIFT)

#define MACE_SERIAL_DMA_BLOCK_BASE                   0x1f318000u /* established */
#define MACE_SERIAL_DMA_PORT2_BLOCK_BASE             0x1f31c000u /* established */
#define MACE_SERIAL_DMA_RING_BASE_ALIGN              0x8000u /* established */
#define MACE_SERIAL_DMA_RING_BYTES                   0x1000u /* established */

#endif /* MACE_SERIAL_DMA_GEN_H */
