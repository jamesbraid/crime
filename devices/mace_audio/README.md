# mace_audio

MACE audio block: the codec reset, presence and command registers, and the three stereo DMA channels (one input, two output) with their ring control, read and write pointers and depth. Offsets are from the block base (constant BLOCK_BASE). The codec's own registers are in ad1843.toml, the MSC/UST pairs are in mace_timer.toml and the audio interrupt causes are in mace_periph.toml. Channel index 0 is the capture channel, 1 is playback 1 (block 0x40) and 2 is playback 2 (block 0x60).

Source: published MACE 2.0 I/O ASIC specification: audio chapter (printed pages 61-66), register tables 26-35, the sub-address map (printed page 179).

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [MACE audio interface and AD1843 codec](mace-audio.md)

## Used by

- [Functions by role](../../software/kernel/functions.md)
