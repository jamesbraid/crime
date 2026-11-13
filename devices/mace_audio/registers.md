<!-- generated from devices/mace_audio/registers.toml by defs-gen - do not edit, change the source -->

# O2 MACE audio interface: codec command, stereo DMA ring control and pointers

MACE audio block: the codec reset, presence and command registers, and the three stereo DMA channels (one input, two output) with their ring control, read and write pointers and depth. Offsets are from the block base (constant BLOCK_BASE). The codec's own registers are in ad1843.toml, the MSC/UST pairs are in mace_timer.toml and the audio interrupt causes are in mace_periph.toml. Channel index 0 is the capture channel, 1 is playback 1 (block 0x40) and 2 is playback 2 (block 0x60).

Unit `mace_audio`, macro prefix `MACE_AUDIO`.
Default source: published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `ctl_status` | 0x0 | rw | 64 |  |  | 0x1 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `codec_cmd` | 0x8 | rw | 64 |  |  | 0x10000 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `response_mask` | 0x10 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `codec_response` | 0x18 | r | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `ring_control` | 0x20 | rw | 64 | 3 |  | 0x400 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `ring_read` | 0x28 | rw | 64 | 3 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `ring_write` | 0x30 | rw | 64 | 3 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `ring_depth` | 0x38 | r | 64 | 3 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |

### Register `ctl_status`

Codec reset and presence, the mirrored ring pointers of the two engines and the two volume-button latches. Bits not listed read zero (established, printed page 62, table 27 and table 26).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 24 | `volume_edge_24` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Latched on a rising edge of the second external volume push button. Clear by writing zero; writing one keeps the latch. |
| 23 | `volume_edge_23` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Latched on a rising edge of an external volume push button. Clear by writing zero to the bit; writing one keeps the latch. The table does not name the button. |
| 22:16 | `playback2_read_alias` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Read-only alias of the playback 2 read pointer. |
| 15:9 | `playback1_read_alias` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Read-only alias of the playback 1 read pointer. |
| 8:2 | `capture_write_alias` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Read-only alias of the capture channel write pointer, in 32-byte blocks. |
| 1 | `codec_present` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Read-only. 1 when a codec is detected on the serial bus, that is when its serial clock runs. |
| 0 | `codec_reset` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | 1 holds the codec's reset input active. Resets to 1. |

### Register `codec_cmd`

Codec register access. The word written here is sent to the codec on every serial frame and repeats until it is replaced. A read request makes the codec's answer appear in codec_response. The reset value is a read request with the address field zero (established, printed page 63, table 28).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:17 | `codec_addr` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Codec register number. The AD1843 decodes only five address bits of it (see ad1843.toml). |
| 16 | `codec_direction` | established | codec_direction (write=0, read=1) | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | 0 writes the data field to the register, 1 reads the register. |
| 15:0 | `codec_data` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Data word for a write. |

### Register `response_mask`

Mask applied to the last codec response. The codec-response interrupt cause is set when any masked bit of the response is one (established, printed page 63, table 29, and printed page 125, slot 6 index 0).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `mask` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |  |

### Register `codec_response`

The most recent 16-bit register word the codec returned, whichever register was addressed (established, printed page 63, table 30). The table describes no codec access or status change on read, so none is assumed (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `word` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |  |

### Register `ring_control`

Control of the three stereo DMA channels, in order: capture at 0x20, playback 1 at 0x40 and playback 2 at 0x60. Writable bits are 10, 9 and 7:5. Bit 8 and bits 4:0 read zero and ignore writes (established, printed page 64, table 33).

Array of 3 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `channel_reset` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | 1 holds the channel in reset: the pointers and depth go to zero, the FIFO is flushed, the fatal latch and the channel interrupt clear and MSC does not count. Other writes are ignored while it is held. Resets to 1. |
| 9 | `dma_enable` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | 1 enables DMA. Clearing it freezes the channel's pointers and state without changing them. |
| 7:5 | `threshold` | established | ring_threshold (off=0, depth_quarter=1, depth_half=2, depth_three_quarter=3, empty=4, not_empty=5, full=6, not_full=7) | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Interrupt condition, see the ring_threshold enum. |

### Register `ring_read`

Read pointer of each channel, in 32-byte blocks. The playback engines own it, so software owns it only on the capture channel. The printed register tables mark it read/write for every channel, but the ownership text makes the engine's pointer read-only. Whether the engine ignores software writes to that pointer while DMA runs is unknown (established for the ownership text, printed page 66; unknown for the writes).

Array of 3 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:5 | `block_index` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Position in 32-byte blocks within the 4 KiB ring. Bits 4:0 and 15:12 read zero. |

### Register `ring_write`

Write pointer of each channel, in 32-byte blocks. The capture engine owns it, so software owns it on the two playback channels. The same table and text conflict as ring_read applies (established for the ownership text, printed page 66; unknown for the writes).

Array of 3 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:5 | `block_index` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | Position in 32-byte blocks within the 4 KiB ring. Bits 4:0 and 15:12 read zero. |

### Register `ring_depth`

Blocks of ring data in use, computed as write pointer minus read pointer. Zero is empty and 127 is full, so one of the 128 blocks is never used (established, printed page 64, table 34, and printed page 66).

Array of 3 registers, stride 32.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:5 | `blocks` | established |  | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |  |

## Enums

### Enum `codec_direction`

Direction of a codec register access.

| Label | Value | Grade | Source |
|---|---|---|---|
| `write` | 0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `read` | 1 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |

### Enum `ring_threshold`

Interrupt threshold of a DMA channel. The level numbers are block counts out of 128: 32, 64 and 96 blocks are one quarter, one half and three quarters of the 4 KiB ring.

| Label | Value | Grade | Source |
|---|---|---|---|
| `off` | 0 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `depth_quarter` | 1 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `depth_half` | 2 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `depth_three_quarter` | 3 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `empty` | 4 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `not_empty` | 5 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `full` | 6 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |
| `not_full` | 7 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f300000 | established | published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179) | physical base of the audio interface registers (printed page 179, sub-address map, block 000) |
