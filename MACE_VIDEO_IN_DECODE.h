/*
 * MACE_VIDEO_IN_DECODE.h - O2 MACE video input channel registers
 *
 * Publish-safe register contract for one MACE video input channel. The chip has
 * two input channels, each with its own register set of this layout; offsets
 * are from the start of a channel's set (the second input channel's set sits
 * 0x80000 above the first). The output channel and the chip-level
 * configuration word are in MACE_VIDEO_DECODE.h. Every register is a 64-bit
 * big-endian doubleword access.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   ENUM: <target> <value> <label> <grade>
 *
 * Derivation. Layouts come from the video chapter of the published MACE 2.0
 * specification. Shipped video software changes the low nine bits of the
 * control register as a unit, reads the status register to clear pending
 * causes and writes the other registers as whole doublewords, which agrees
 * with the table. Reset values are the specification's where it gives one
 * (control and status initialise to zero) and unknown otherwise. The two alpha
 * registers are inferred from the register table alone: the specification gives
 * no text for them. The configuration register powers up with the channel in
 * reset and must stay in reset while its other fields change.
 */
#ifndef MACE_VIDEO_IN_DECODE_H
#define MACE_VIDEO_IN_DECODE_H

#include <stdint.h>

/* REG: VIN.control 0x0000 rw64 reset=0 established */
/* REG: VIN.status 0x0008 r64 reset=0 established */
/* REG: VIN.config 0x0010 rw64 reset=unknown established */
/* REG: VIN.next_desc 0x0018 rw64 reset=unknown established */
/* REG: VIN.fld_offset 0x0020 rw64 reset=unknown established */
/* REG: VIN.line_width 0x0028 rw64 reset=unknown established */
/* REG: VIN.hclip_odd 0x0030 rw64 reset=unknown established */
/* REG: VIN.vclip_odd 0x0038 rw64 reset=unknown established */
/* REG: VIN.alpha_odd 0x0040 rw64 reset=unknown inferred */
/* REG: VIN.hclip_even 0x0048 rw64 reset=unknown established */
/* REG: VIN.vclip_even 0x0050 rw64 reset=unknown established */
/* REG: VIN.alpha_even 0x0058 rw64 reset=unknown inferred */
/* REG: VIN.dma_desc 0x0080 rw64 count=8 reset=unknown established */
/*
 * Control: bit 0 enables DMA and writing zero resets the engine; bits 1 to 9
 * enable the interrupts named. Shipped software rewrites bits 0 to 8 only.
 */
/* FIELD: VIN.control.dma_enable 0:0 established */
#define VIN_CONTROL_DMA_ENABLE_SHIFT 0
#define VIN_CONTROL_DMA_ENABLE_MASK  0x1u
/* FIELD: VIN.control.int_vsync 1:1 established */
#define VIN_CONTROL_INT_VSYNC_SHIFT 1
#define VIN_CONTROL_INT_VSYNC_MASK  0x1u
/* FIELD: VIN.control.int_dma_done 2:2 established */
#define VIN_CONTROL_INT_DMA_DONE_SHIFT 2
#define VIN_CONTROL_INT_DMA_DONE_MASK  0x1u
/* FIELD: VIN.control.int_lost_sync 3:3 established */
#define VIN_CONTROL_INT_LOST_SYNC_SHIFT 3
#define VIN_CONTROL_INT_LOST_SYNC_MASK  0x1u
/* FIELD: VIN.control.int_buffer 4:4 established */
#define VIN_CONTROL_INT_BUFFER_SHIFT 4
#define VIN_CONTROL_INT_BUFFER_MASK  0x1u
/* FIELD: VIN.control.int_h_overflow 5:5 established */
#define VIN_CONTROL_INT_H_OVERFLOW_SHIFT 5
#define VIN_CONTROL_INT_H_OVERFLOW_MASK  0x1u
/* FIELD: VIN.control.int_v_overflow 6:6 established */
#define VIN_CONTROL_INT_V_OVERFLOW_SHIFT 6
#define VIN_CONTROL_INT_V_OVERFLOW_MASK  0x1u
/* FIELD: VIN.control.int_fifo_overflow 7:7 established */
#define VIN_CONTROL_INT_FIFO_OVERFLOW_SHIFT 7
#define VIN_CONTROL_INT_FIFO_OVERFLOW_MASK  0x1u
/* FIELD: VIN.control.int_crime_error 8:8 established */
#define VIN_CONTROL_INT_CRIME_ERROR_SHIFT 8
#define VIN_CONTROL_INT_CRIME_ERROR_MASK  0x1u
/* FIELD: VIN.control.int_gpib 9:9 established */
#define VIN_CONTROL_INT_GPIB_SHIFT 9
#define VIN_CONTROL_INT_GPIB_MASK  0x1u
/* Status: the control layout's causes, plus live DMA-active (bit 0) and sync-present (bit 10), which reads do not clear. */
/* FIELD: VIN.status.dma_active 0:0 established */
#define VIN_STATUS_DMA_ACTIVE_SHIFT 0
#define VIN_STATUS_DMA_ACTIVE_MASK  0x1u
/* FIELD: VIN.status.vsync 1:1 established */
#define VIN_STATUS_VSYNC_SHIFT 1
#define VIN_STATUS_VSYNC_MASK  0x1u
/* FIELD: VIN.status.dma_done 2:2 established */
#define VIN_STATUS_DMA_DONE_SHIFT 2
#define VIN_STATUS_DMA_DONE_MASK  0x1u
/* FIELD: VIN.status.lost_sync 3:3 established */
#define VIN_STATUS_LOST_SYNC_SHIFT 3
#define VIN_STATUS_LOST_SYNC_MASK  0x1u
/* FIELD: VIN.status.buffer 4:4 established */
#define VIN_STATUS_BUFFER_SHIFT 4
#define VIN_STATUS_BUFFER_MASK  0x1u
/* FIELD: VIN.status.h_overflow 5:5 established */
#define VIN_STATUS_H_OVERFLOW_SHIFT 5
#define VIN_STATUS_H_OVERFLOW_MASK  0x1u
/* FIELD: VIN.status.v_overflow 6:6 established */
#define VIN_STATUS_V_OVERFLOW_SHIFT 6
#define VIN_STATUS_V_OVERFLOW_MASK  0x1u
/* FIELD: VIN.status.fifo_overflow 7:7 established */
#define VIN_STATUS_FIFO_OVERFLOW_SHIFT 7
#define VIN_STATUS_FIFO_OVERFLOW_MASK  0x1u
/* FIELD: VIN.status.crime_error 8:8 established */
#define VIN_STATUS_CRIME_ERROR_SHIFT 8
#define VIN_STATUS_CRIME_ERROR_MASK  0x1u
/* FIELD: VIN.status.gpib 9:9 established */
#define VIN_STATUS_GPIB_SHIFT 9
#define VIN_STATUS_GPIB_MASK  0x1u
/* FIELD: VIN.status.sync_present 10:10 established */
#define VIN_STATUS_SYNC_PRESENT_SHIFT 10
#define VIN_STATUS_SYNC_PRESENT_MASK  0x1u
/* Config: dma pixel format codes and memory modes are the specification's tables. */
/* FIELD: VIN.config.channel_reset 0:0 established */
#define VIN_CONFIG_CHANNEL_RESET_SHIFT 0
#define VIN_CONFIG_CHANNEL_RESET_MASK  0x1u
/* FIELD: VIN.config.d1_reset 1:1 established */
#define VIN_CONFIG_D1_RESET_SHIFT 1
#define VIN_CONFIG_D1_RESET_MASK  0x1u
/* FIELD: VIN.config.source 3:2 established */
#define VIN_CONFIG_SOURCE_SHIFT 2
#define VIN_CONFIG_SOURCE_MASK  0x3u
/* FIELD: VIN.config.d1_precision 4:4 established */
#define VIN_CONFIG_D1_PRECISION_SHIFT 4
#define VIN_CONFIG_D1_PRECISION_MASK  0x1u
/* FIELD: VIN.config.d1_ecc 5:5 established */
#define VIN_CONFIG_D1_ECC_SHIFT 5
#define VIN_CONFIG_D1_ECC_MASK  0x1u
/* FIELD: VIN.config.sof_count 9:6 established */
#define VIN_CONFIG_SOF_COUNT_SHIFT 6
#define VIN_CONFIG_SOF_COUNT_MASK  0xfu
/* FIELD: VIN.config.pixel_format 12:10 established */
#define VIN_CONFIG_PIXEL_FORMAT_SHIFT 10
#define VIN_CONFIG_PIXEL_FORMAT_MASK  0x7u
/* FIELD: VIN.config.dither 13:13 established */
#define VIN_CONFIG_DITHER_SHIFT 13
#define VIN_CONFIG_DITHER_MASK  0x1u
/* FIELD: VIN.config.mem_mode 15:14 established */
#define VIN_CONFIG_MEM_MODE_SHIFT 14
#define VIN_CONFIG_MEM_MODE_MASK  0x3u
/* FIELD: VIN.config.interleaved 16:16 established */
#define VIN_CONFIG_INTERLEAVED_SHIFT 16
#define VIN_CONFIG_INTERLEAVED_MASK  0x1u
/* ENUM: VIN.config.source 0 primary established */
#define VIN_CONFIG_SOURCE_PRIMARY 0
/* ENUM: VIN.config.source 1 secondary established */
#define VIN_CONFIG_SOURCE_SECONDARY 1
/* ENUM: VIN.config.source 2 loopback_e established */
#define VIN_CONFIG_SOURCE_LOOPBACK_E 2
/* ENUM: VIN.config.source 3 loopback_f established */
#define VIN_CONFIG_SOURCE_LOOPBACK_F 3
/* ENUM: VIN.config.pixel_format 0 rgba32 established */
#define VIN_CONFIG_PIXEL_FORMAT_RGBA32 0
/* ENUM: VIN.config.pixel_format 1 rgba5551 established */
#define VIN_CONFIG_PIXEL_FORMAT_RGBA5551 1
/* ENUM: VIN.config.pixel_format 2 yuv422_8 established */
#define VIN_CONFIG_PIXEL_FORMAT_YUV422_8 2
/* ENUM: VIN.config.pixel_format 3 yuv422_10 established */
#define VIN_CONFIG_PIXEL_FORMAT_YUV422_10 3
/* ENUM: VIN.config.pixel_format 4 abgr32 established */
#define VIN_CONFIG_PIXEL_FORMAT_ABGR32 4
/* ENUM: VIN.config.pixel_format 5 yuva4224 established */
#define VIN_CONFIG_PIXEL_FORMAT_YUVA4224 5
/* ENUM: VIN.config.mem_mode 0 linear established */
#define VIN_CONFIG_MEM_MODE_LINEAR 0
/* ENUM: VIN.config.mem_mode 1 tiled established */
#define VIN_CONFIG_MEM_MODE_TILED 1
/* ENUM: VIN.config.mem_mode 2 mipmap_512x128 established */
#define VIN_CONFIG_MEM_MODE_MIPMAP_512X128 2
/* ENUM: VIN.config.mem_mode 3 mipmap_512x256 established */
#define VIN_CONFIG_MEM_MODE_MIPMAP_512X256 3

#endif /* MACE_VIDEO_IN_DECODE_H */
