/* generated from defs/mace_audio.toml by defs-gen - do not edit, change the source */
/* O2 MACE audio interface: codec command, stereo DMA ring control and pointers */
#ifndef MACE_AUDIO_GEN_H
#define MACE_AUDIO_GEN_H

#include <stdint.h>


/* enum codec_direction: Direction of a codec register access. */
#define MACE_AUDIO_CODEC_DIRECTION_WRITE             0 /* established */
#define MACE_AUDIO_CODEC_DIRECTION_READ              1 /* established */

/* enum ring_threshold: Interrupt threshold of a DMA channel. The level numbers are block counts out of 128: 32, 64 and 96 blocks are one quarter, one half and three quarters of the 4 KiB ring. */
#define MACE_AUDIO_RING_THRESHOLD_OFF                0 /* established */
#define MACE_AUDIO_RING_THRESHOLD_DEPTH_QUARTER      1 /* established */
#define MACE_AUDIO_RING_THRESHOLD_DEPTH_HALF         2 /* established */
#define MACE_AUDIO_RING_THRESHOLD_DEPTH_THREE_QUARTER 3 /* established */
#define MACE_AUDIO_RING_THRESHOLD_EMPTY              4 /* established */
#define MACE_AUDIO_RING_THRESHOLD_NOT_EMPTY          5 /* established */
#define MACE_AUDIO_RING_THRESHOLD_FULL               6 /* established */
#define MACE_AUDIO_RING_THRESHOLD_NOT_FULL           7 /* established */

/*
 * Codec reset and presence, the mirrored ring pointers of the two engines and the two volume-button latches. Bits not listed read zero (established, printed page 62, table 27 and table 26).
 */
/* ctl_status: rw64, reset 0x1; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_CTL_STATUS_OFFSET                 0x0u /* established */
#define MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_24_SHIFT   24 /* established */
#define MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_24_MASK    0x1ull
#define MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_24_INPLACE (MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_24_MASK << MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_24_SHIFT)
#define MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_23_SHIFT   23 /* established */
#define MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_23_MASK    0x1ull
#define MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_23_INPLACE (MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_23_MASK << MACE_AUDIO_CTL_STATUS_VOLUME_EDGE_23_SHIFT)
#define MACE_AUDIO_CTL_STATUS_PLAYBACK2_READ_ALIAS_SHIFT 16 /* established */
#define MACE_AUDIO_CTL_STATUS_PLAYBACK2_READ_ALIAS_MASK 0x7full
#define MACE_AUDIO_CTL_STATUS_PLAYBACK2_READ_ALIAS_INPLACE (MACE_AUDIO_CTL_STATUS_PLAYBACK2_READ_ALIAS_MASK << MACE_AUDIO_CTL_STATUS_PLAYBACK2_READ_ALIAS_SHIFT)
#define MACE_AUDIO_CTL_STATUS_PLAYBACK1_READ_ALIAS_SHIFT 9 /* established */
#define MACE_AUDIO_CTL_STATUS_PLAYBACK1_READ_ALIAS_MASK 0x7full
#define MACE_AUDIO_CTL_STATUS_PLAYBACK1_READ_ALIAS_INPLACE (MACE_AUDIO_CTL_STATUS_PLAYBACK1_READ_ALIAS_MASK << MACE_AUDIO_CTL_STATUS_PLAYBACK1_READ_ALIAS_SHIFT)
#define MACE_AUDIO_CTL_STATUS_CAPTURE_WRITE_ALIAS_SHIFT 2 /* established */
#define MACE_AUDIO_CTL_STATUS_CAPTURE_WRITE_ALIAS_MASK 0x7full
#define MACE_AUDIO_CTL_STATUS_CAPTURE_WRITE_ALIAS_INPLACE (MACE_AUDIO_CTL_STATUS_CAPTURE_WRITE_ALIAS_MASK << MACE_AUDIO_CTL_STATUS_CAPTURE_WRITE_ALIAS_SHIFT)
#define MACE_AUDIO_CTL_STATUS_CODEC_PRESENT_SHIFT    1 /* established */
#define MACE_AUDIO_CTL_STATUS_CODEC_PRESENT_MASK     0x1ull
#define MACE_AUDIO_CTL_STATUS_CODEC_PRESENT_INPLACE  (MACE_AUDIO_CTL_STATUS_CODEC_PRESENT_MASK << MACE_AUDIO_CTL_STATUS_CODEC_PRESENT_SHIFT)
#define MACE_AUDIO_CTL_STATUS_CODEC_RESET_SHIFT      0 /* established */
#define MACE_AUDIO_CTL_STATUS_CODEC_RESET_MASK       0x1ull
#define MACE_AUDIO_CTL_STATUS_CODEC_RESET_INPLACE    (MACE_AUDIO_CTL_STATUS_CODEC_RESET_MASK << MACE_AUDIO_CTL_STATUS_CODEC_RESET_SHIFT)

/*
 * Codec register access. The word written here is sent to the codec on every serial frame and repeats until it is replaced. A read request makes the codec's answer appear in codec_response. The reset value is a read request with the address field zero (established, printed page 63, table 28).
 */
/* codec_cmd: rw64, reset 0x10000; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_CODEC_CMD_OFFSET                  0x8u /* established */
#define MACE_AUDIO_CODEC_CMD_CODEC_ADDR_SHIFT        17 /* established */
#define MACE_AUDIO_CODEC_CMD_CODEC_ADDR_MASK         0x7full
#define MACE_AUDIO_CODEC_CMD_CODEC_ADDR_INPLACE      (MACE_AUDIO_CODEC_CMD_CODEC_ADDR_MASK << MACE_AUDIO_CODEC_CMD_CODEC_ADDR_SHIFT)
#define MACE_AUDIO_CODEC_CMD_CODEC_DIRECTION_SHIFT   16 /* established */
#define MACE_AUDIO_CODEC_CMD_CODEC_DIRECTION_MASK    0x1ull
#define MACE_AUDIO_CODEC_CMD_CODEC_DIRECTION_INPLACE (MACE_AUDIO_CODEC_CMD_CODEC_DIRECTION_MASK << MACE_AUDIO_CODEC_CMD_CODEC_DIRECTION_SHIFT)
#define MACE_AUDIO_CODEC_CMD_CODEC_DATA_SHIFT        0 /* established */
#define MACE_AUDIO_CODEC_CMD_CODEC_DATA_MASK         0xffffull
#define MACE_AUDIO_CODEC_CMD_CODEC_DATA_INPLACE      (MACE_AUDIO_CODEC_CMD_CODEC_DATA_MASK << MACE_AUDIO_CODEC_CMD_CODEC_DATA_SHIFT)

/*
 * Mask applied to the last codec response. The codec-response interrupt cause is set when any masked bit of the response is one (established, printed page 63, table 29, and printed page 125, slot 6 index 0).
 */
/* response_mask: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_RESPONSE_MASK_OFFSET              0x10u /* established */
#define MACE_AUDIO_RESPONSE_MASK_MASK_SHIFT          0 /* established */
#define MACE_AUDIO_RESPONSE_MASK_MASK_MASK           0xffffull
#define MACE_AUDIO_RESPONSE_MASK_MASK_INPLACE        (MACE_AUDIO_RESPONSE_MASK_MASK_MASK << MACE_AUDIO_RESPONSE_MASK_MASK_SHIFT)

/*
 * The most recent 16-bit register word the codec returned, whichever register was addressed (established, printed page 63, table 30). The table describes no codec access or status change on read, so none is assumed (inferred).
 */
/* codec_response: r64, reset 0x0; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_CODEC_RESPONSE_OFFSET             0x18u /* established */
#define MACE_AUDIO_CODEC_RESPONSE_WORD_SHIFT         0 /* established */
#define MACE_AUDIO_CODEC_RESPONSE_WORD_MASK          0xffffull
#define MACE_AUDIO_CODEC_RESPONSE_WORD_INPLACE       (MACE_AUDIO_CODEC_RESPONSE_WORD_MASK << MACE_AUDIO_CODEC_RESPONSE_WORD_SHIFT)

/*
 * Control of the three stereo DMA channels, in order: capture at 0x20, playback 1 at 0x40 and playback 2 at 0x60. Writable bits are 10, 9 and 7:5. Bit 8 and bits 4:0 read zero and ignore writes (established, printed page 64, table 33).
 */
/* ring_control: rw64, reset 0x400; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_RING_CONTROL_OFFSET               0x20u /* established */
#define MACE_AUDIO_RING_CONTROL_COUNT                3
#define MACE_AUDIO_RING_CONTROL_STRIDE               32
#define MACE_AUDIO_RING_CONTROL_CHANNEL_RESET_SHIFT  10 /* established */
#define MACE_AUDIO_RING_CONTROL_CHANNEL_RESET_MASK   0x1ull
#define MACE_AUDIO_RING_CONTROL_CHANNEL_RESET_INPLACE (MACE_AUDIO_RING_CONTROL_CHANNEL_RESET_MASK << MACE_AUDIO_RING_CONTROL_CHANNEL_RESET_SHIFT)
#define MACE_AUDIO_RING_CONTROL_DMA_ENABLE_SHIFT     9 /* established */
#define MACE_AUDIO_RING_CONTROL_DMA_ENABLE_MASK      0x1ull
#define MACE_AUDIO_RING_CONTROL_DMA_ENABLE_INPLACE   (MACE_AUDIO_RING_CONTROL_DMA_ENABLE_MASK << MACE_AUDIO_RING_CONTROL_DMA_ENABLE_SHIFT)
#define MACE_AUDIO_RING_CONTROL_THRESHOLD_SHIFT      5 /* established */
#define MACE_AUDIO_RING_CONTROL_THRESHOLD_MASK       0x7ull
#define MACE_AUDIO_RING_CONTROL_THRESHOLD_INPLACE    (MACE_AUDIO_RING_CONTROL_THRESHOLD_MASK << MACE_AUDIO_RING_CONTROL_THRESHOLD_SHIFT)

/*
 * Read pointer of each channel, in 32-byte blocks. The playback engines own it, so software owns it only on the capture channel. The printed register tables mark it read/write for every channel, but the ownership text makes the engine's pointer read-only. Whether the engine ignores software writes to that pointer while DMA runs is unknown (established for the ownership text, printed page 66; unknown for the writes).
 */
/* ring_read: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_RING_READ_OFFSET                  0x28u /* established */
#define MACE_AUDIO_RING_READ_COUNT                   3
#define MACE_AUDIO_RING_READ_STRIDE                  32
#define MACE_AUDIO_RING_READ_BLOCK_INDEX_SHIFT       5 /* established */
#define MACE_AUDIO_RING_READ_BLOCK_INDEX_MASK        0x7full
#define MACE_AUDIO_RING_READ_BLOCK_INDEX_INPLACE     (MACE_AUDIO_RING_READ_BLOCK_INDEX_MASK << MACE_AUDIO_RING_READ_BLOCK_INDEX_SHIFT)

/*
 * Write pointer of each channel, in 32-byte blocks. The capture engine owns it, so software owns it on the two playback channels. The same table and text conflict as ring_read applies (established for the ownership text, printed page 66; unknown for the writes).
 */
/* ring_write: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_RING_WRITE_OFFSET                 0x30u /* established */
#define MACE_AUDIO_RING_WRITE_COUNT                  3
#define MACE_AUDIO_RING_WRITE_STRIDE                 32
#define MACE_AUDIO_RING_WRITE_BLOCK_INDEX_SHIFT      5 /* established */
#define MACE_AUDIO_RING_WRITE_BLOCK_INDEX_MASK       0x7full
#define MACE_AUDIO_RING_WRITE_BLOCK_INDEX_INPLACE    (MACE_AUDIO_RING_WRITE_BLOCK_INDEX_MASK << MACE_AUDIO_RING_WRITE_BLOCK_INDEX_SHIFT)

/*
 * Blocks of ring data in use, computed as write pointer minus read pointer. Zero is empty and 127 is full, so one of the 128 blocks is never used (established, printed page 64, table 34, and printed page 66).
 */
/* ring_depth: r64, reset 0x0; published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) */
#define MACE_AUDIO_RING_DEPTH_OFFSET                 0x38u /* established */
#define MACE_AUDIO_RING_DEPTH_COUNT                  3
#define MACE_AUDIO_RING_DEPTH_STRIDE                 32
#define MACE_AUDIO_RING_DEPTH_BLOCKS_SHIFT           5 /* established */
#define MACE_AUDIO_RING_DEPTH_BLOCKS_MASK            0x7full
#define MACE_AUDIO_RING_DEPTH_BLOCKS_INPLACE         (MACE_AUDIO_RING_DEPTH_BLOCKS_MASK << MACE_AUDIO_RING_DEPTH_BLOCKS_SHIFT)

#define MACE_AUDIO_BLOCK_BASE                        0x1f300000u /* established */

#endif /* MACE_AUDIO_GEN_H */
