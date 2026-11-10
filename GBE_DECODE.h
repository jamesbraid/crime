/*
 * GBE_DECODE.h - O2 GBE display back end register words
 *
 * Publish-safe register contract for the GBE ASIC, the display controller
 * that reads the frame buffer from memory and generates video timing. Offsets
 * are from the start of the GBE window (physical 0x16000000). Every register
 * is 32 bits wide. The window spans more than the 16-bit offsets the REG
 * grammar allows, so registers are described as plain words with their
 * offsets as numeric constants instead of REG lines.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>             a field of a word
 *   ENUM: <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD> => field=val, ...
 *
 * Derivation. Layouts come from the public Linux and NetBSD O2 framebuffer
 * drivers, the GBE revision 1.1 specification, and reading how shipped IRIX
 * software programs the chip: the probe, the timing and start-up sequence,
 * the stop sequence, the window-ID and display-ID tables and the colour-map
 * waits. The specification covers revision 1.1 only; revision 2 differences
 * are inferred and marked.
 *
 * Shadowing. Each *_CONTROL register is copied into its *_INHWCTRL twin at
 * the start of blanking, not on the write.
 */
#ifndef GBE_DECODE_H
#define GBE_DECODE_H

#include <stdint.h>

/* Register offsets from the window base. */
#define GBE_OFF_CTRLSTAT 0x00000 /* established */
#define GBE_OFF_DOTCLOCK 0x00004 /* established */
#define GBE_OFF_I2C 0x00008 /* established */
#define GBE_OFF_SYSCLK 0x0000c /* established */
#define GBE_OFF_I2CFP 0x00010 /* established */
#define GBE_OFF_DEVICE_ID 0x00014 /* established */
#define GBE_OFF_VT_XY 0x10000 /* established */
#define GBE_OFF_VT_XYMAX 0x10004 /* established */
#define GBE_OFF_VT_VSYNC 0x10008 /* established */
#define GBE_OFF_VT_HSYNC 0x1000c /* established */
#define GBE_OFF_VT_VBLANK 0x10010 /* established */
#define GBE_OFF_VT_HBLANK 0x10014 /* established */
#define GBE_OFF_VT_FLAGS 0x10018 /* established */
#define GBE_OFF_VT_F2RF_LOCK 0x1001c /* established */
#define GBE_OFF_VT_INTR01 0x10020 /* established */
#define GBE_OFF_VT_INTR23 0x10024 /* established */
#define GBE_OFF_FP_HDRV 0x10028 /* established: gbe-spec register table, pages 39 and 40 */
#define GBE_OFF_FP_VDRV 0x1002c /* established: gbe-spec register table, pages 39 and 40 */
#define GBE_OFF_FP_DE 0x10030 /* established: gbe-spec register table, pages 39 and 40 */
#define GBE_OFF_VT_HPIXEN 0x10034 /* established */
#define GBE_OFF_VT_VPIXEN 0x10038 /* established */
#define GBE_OFF_VT_HCMAP 0x1003c /* established */
#define GBE_OFF_VT_VCMAP 0x10040 /* established */
#define GBE_OFF_DID_START_XY 0x10044 /* established: gbe-spec register table, pages 39 and 40 */
#define GBE_OFF_CRS_START_XY 0x10048 /* established: gbe-spec register table, pages 39 and 40 */
#define GBE_OFF_VC_START_XY 0x1004c /* established: gbe-spec register table, pages 39 and 40 */
#define GBE_OFF_OVR_WIDTH_TILE 0x20000 /* established */
#define GBE_OFF_OVR_INHWCTRL 0x20004 /* established */
#define GBE_OFF_OVR_CONTROL 0x20008 /* established */
#define GBE_OFF_FRM_SIZE_TILE 0x30000 /* established */
#define GBE_OFF_FRM_SIZE_PIXEL 0x30004 /* established */
#define GBE_OFF_FRM_INHWCTRL 0x30008 /* established */
#define GBE_OFF_FRM_CONTROL 0x3000c /* established */
#define GBE_OFF_DID_INHWCTRL 0x40000 /* established */
#define GBE_OFF_DID_CONTROL 0x40004 /* established */
#define GBE_OFF_MODE_TABLE 0x48000 /* established: 32 window-ID entries */
#define GBE_OFF_VC_0 0x80000 /* established: video capture region, left and right */
#define GBE_OFF_VC_1 0x80004 /* established: video capture region, top and bottom */
#define GBE_OFF_VC_2 0x80008 /* established: video capture control */
#define GBE_OFF_VC_3 0x8000c /* established: video capture field and descriptor control */
#define GBE_OFF_CMAP 0x50000 /* established: colour map */
#define GBE_OFF_CMAP_FIFO 0x58000 /* established */
#define GBE_OFF_GMAP 0x60000 /* established: 256 gamma entries */
#define GBE_OFF_CRS_POS 0x70000 /* established */
#define GBE_OFF_CRS_CTL 0x70004 /* established */
#define GBE_OFF_CRS_CMAP 0x70008 /* established */
#define GBE_OFF_CRS_GLYPH 0x78000 /* established */

#define GBE_DEVICE_ID_VALUE 0x666 /* established: the probe requires this */
#define GBE_MODE_ENTRIES 32 /* established */
#define GBE_GMAP_ENTRIES 256 /* established */
#define GBE_CMAP_ENTRIES_REV1 4608 /* established: revision 1.1 */
#define GBE_CMAP_ENTRIES_REV2 6144 /* inferred: revision 2 */
#define GBE_CMAP_FIFO_DEPTH_REV1 64 /* established */
#define GBE_CMAP_FIFO_DEPTH_REV2 63 /* inferred */
#define GBE_CMAP_FIFO_LOW_WATER 48 /* established: free-slot threshold software waits for */
#define GBE_TILE_LIST_BYTES_UNIT 32 /* established: a changed tile pointer is seen by adding this */

/* ---- control and clocks ---- */
/* FIELD: CTRLSTAT.chip_rev 3:0 established */
#define GBE_CTRLSTAT_CHIP_REV_SHIFT 0
#define GBE_CTRLSTAT_CHIP_REV_MASK  0xfu
/* FIELD: CTRLSTAT.io3_data 12:12 established */
#define GBE_CTRLSTAT_IO3_DATA_SHIFT 12
#define GBE_CTRLSTAT_IO3_DATA_MASK  0x1u
/* FIELD: CTRLSTAT.io4_data 14:14 established */
#define GBE_CTRLSTAT_IO4_DATA_SHIFT 14
#define GBE_CTRLSTAT_IO4_DATA_MASK  0x1u
/* FIELD: CTRLSTAT.io5_data 16:16 established */
#define GBE_CTRLSTAT_IO5_DATA_SHIFT 16
#define GBE_CTRLSTAT_IO5_DATA_MASK  0x1u
/* FIELD: CTRLSTAT.io6_data 18:18 established */
#define GBE_CTRLSTAT_IO6_DATA_SHIFT 18
#define GBE_CTRLSTAT_IO6_DATA_MASK  0x1u
/* FIELD: CTRLSTAT.pclk_select 29:28 established */
#define GBE_CTRLSTAT_PCLK_SELECT_SHIFT 28
#define GBE_CTRLSTAT_PCLK_SELECT_MASK  0x3u
/* ENUM: CTRLSTAT.pclk_select 0 external established */
#define GBE_CTRLSTAT_PCLK_SELECT_EXTERNAL 0
/* ENUM: CTRLSTAT.pclk_select 3 internal established */
#define GBE_CTRLSTAT_PCLK_SELECT_INTERNAL 3
/* chip_rev reads 1 on the revision 1.1 part and 2 on its successor. The four io data bits read as a board strap. */
/* FIELD: DOTCLOCK.m_minus_1 7:0 established */
#define GBE_DOTCLOCK_M_MINUS_1_SHIFT 0
#define GBE_DOTCLOCK_M_MINUS_1_MASK  0xffu
/* FIELD: DOTCLOCK.n_minus_1 13:8 established */
#define GBE_DOTCLOCK_N_MINUS_1_SHIFT 8
#define GBE_DOTCLOCK_N_MINUS_1_MASK  0x3fu
/* FIELD: DOTCLOCK.p 15:14 established */
#define GBE_DOTCLOCK_P_SHIFT 14
#define GBE_DOTCLOCK_P_MASK  0x3u
/* FIELD: DOTCLOCK.run 20:20 established */
#define GBE_DOTCLOCK_RUN_SHIFT 20
#define GBE_DOTCLOCK_RUN_MASK  0x1u
/* ---- video timing ---- */
/* FIELD: VT_XY.freeze 31:31 established */
#define GBE_VT_XY_FREEZE_SHIFT 31
#define GBE_VT_XY_FREEZE_MASK  0x1u
/* FIELD: VT_XYMAX.htotal 11:0 established */
#define GBE_VT_XYMAX_HTOTAL_SHIFT 0
#define GBE_VT_XYMAX_HTOTAL_MASK  0xfffu
/* FIELD: VT_XYMAX.vtotal 23:12 established */
#define GBE_VT_XYMAX_VTOTAL_SHIFT 12
#define GBE_VT_XYMAX_VTOTAL_MASK  0xfffu
/* FIELD: VT_INTR01.line1 11:0 established */
#define GBE_VT_INTR01_LINE1_SHIFT 0
#define GBE_VT_INTR01_LINE1_MASK  0xfffu
/* FIELD: VT_INTR01.line0 23:12 established */
#define GBE_VT_INTR01_LINE0_SHIFT 12
#define GBE_VT_INTR01_LINE0_MASK  0xfffu
/* FIELD: VT_INTR23.line3 11:0 established */
#define GBE_VT_INTR23_LINE3_SHIFT 0
#define GBE_VT_INTR23_LINE3_MASK  0xfffu
/* FIELD: VT_INTR23.line2 23:12 established */
#define GBE_VT_INTR23_LINE2_SHIFT 12
#define GBE_VT_INTR23_LINE2_MASK  0xfffu
/* The four line interrupts reach CRIME interrupt inputs 16 to 19. */
/* The three flat-panel drive registers and the three start-preset registers
 * share one layout: two 12-bit counts, "off" or "x" in the low half. The
 * specification names them VT_10 to VT_12 and VT_17 to VT_19 (pages 39 and
 * 40). It compares FP_HDRV, FP_DE and the "x" halves with the horizontal
 * counter and FP_VDRV and the "y" halves with the vertical counter, but it
 * compares both halves of FP_DE with the horizontal counter. The totals
 * shipped software writes for two fixed panels (806 and 771, 1065 and 1024)
 * look like line counts, not pixel counts (inferred from magnitude); which
 * counter FP_DE really uses is unknown. */
/* FIELD: FP_HDRV.off 11:0 established */
#define GBE_FP_HDRV_OFF_SHIFT 0
#define GBE_FP_HDRV_OFF_MASK  0xfffu
/* FIELD: FP_HDRV.on 23:12 established */
#define GBE_FP_HDRV_ON_SHIFT 12
#define GBE_FP_HDRV_ON_MASK  0xfffu
/* FIELD: FP_VDRV.off 11:0 established */
#define GBE_FP_VDRV_OFF_SHIFT 0
#define GBE_FP_VDRV_OFF_MASK  0xfffu
/* FIELD: FP_VDRV.on 23:12 established */
#define GBE_FP_VDRV_ON_SHIFT 12
#define GBE_FP_VDRV_ON_MASK  0xfffu
/* FIELD: FP_DE.off 11:0 established */
#define GBE_FP_DE_OFF_SHIFT 0
#define GBE_FP_DE_OFF_MASK  0xfffu
/* FIELD: FP_DE.on 23:12 established */
#define GBE_FP_DE_ON_SHIFT 12
#define GBE_FP_DE_ON_MASK  0xfffu
/* FIELD: DID_START_XY.startx 11:0 established */
#define GBE_DID_START_XY_STARTX_SHIFT 0
#define GBE_DID_START_XY_STARTX_MASK  0xfffu
/* FIELD: DID_START_XY.starty 23:12 established */
#define GBE_DID_START_XY_STARTY_SHIFT 12
#define GBE_DID_START_XY_STARTY_MASK  0xfffu
/* FIELD: CRS_START_XY.startx 11:0 established */
#define GBE_CRS_START_XY_STARTX_SHIFT 0
#define GBE_CRS_START_XY_STARTX_MASK  0xfffu
/* FIELD: CRS_START_XY.starty 23:12 established */
#define GBE_CRS_START_XY_STARTY_SHIFT 12
#define GBE_CRS_START_XY_STARTY_MASK  0xfffu
/* FIELD: VT_FLAGS.sync_low 5:5 established */
#define GBE_VT_FLAGS_SYNC_LOW_SHIFT 5
#define GBE_VT_FLAGS_SYNC_LOW_MASK  0x1u
/* sync_low is the sync-on-green control; that set means sync-on-green off is the public driver's reading (inferred). */
/* FIELD: VT_HCMAP.off 11:0 established */
#define GBE_VT_HCMAP_OFF_SHIFT 0
#define GBE_VT_HCMAP_OFF_MASK  0xfffu
/* FIELD: VT_HCMAP.on 23:12 established */
#define GBE_VT_HCMAP_ON_SHIFT 12
#define GBE_VT_HCMAP_ON_MASK  0xfffu
/* FIELD: VT_VCMAP.off 11:0 established */
#define GBE_VT_VCMAP_OFF_SHIFT 0
#define GBE_VT_VCMAP_OFF_MASK  0xfffu
/* FIELD: VT_VCMAP.on 23:12 established */
#define GBE_VT_VCMAP_ON_SHIFT 12
#define GBE_VT_VCMAP_ON_MASK  0xfffu
/* The colour-map write window. A public driver reads the on counts, as left by firmware, as the active width and height (inferred). */
/* FIELD: VC_START_XY.startx 11:0 established */
#define GBE_VC_START_XY_STARTX_SHIFT 0
#define GBE_VC_START_XY_STARTX_MASK  0xfffu
/* FIELD: VC_START_XY.starty 23:12 established */
#define GBE_VC_START_XY_STARTY_SHIFT 12
#define GBE_VC_START_XY_STARTY_MASK  0xfffu
/* ---- planes ---- */
/* FIELD: OVR_WIDTH_TILE.fifo_reset 13:13 established */
#define GBE_OVR_WIDTH_TILE_FIFO_RESET_SHIFT 13
#define GBE_OVR_WIDTH_TILE_FIFO_RESET_MASK  0x1u
/* FIELD: FRM_SIZE_TILE.remainder 4:0 established */
#define GBE_FRM_SIZE_TILE_REMAINDER_SHIFT 0
#define GBE_FRM_SIZE_TILE_REMAINDER_MASK  0x1fu
/* FIELD: FRM_SIZE_TILE.width_tiles 12:5 established */
#define GBE_FRM_SIZE_TILE_WIDTH_TILES_SHIFT 5
#define GBE_FRM_SIZE_TILE_WIDTH_TILES_MASK  0xffu
/* FIELD: FRM_SIZE_TILE.depth 14:13 established */
#define GBE_FRM_SIZE_TILE_DEPTH_SHIFT 13
#define GBE_FRM_SIZE_TILE_DEPTH_MASK  0x3u
/* ENUM: FRM_SIZE_TILE.depth 0 bits8 established */
#define GBE_FRM_SIZE_TILE_DEPTH_BITS8 0
/* ENUM: FRM_SIZE_TILE.depth 1 bits16 established */
#define GBE_FRM_SIZE_TILE_DEPTH_BITS16 1
/* ENUM: FRM_SIZE_TILE.depth 2 bits32 established */
#define GBE_FRM_SIZE_TILE_DEPTH_BITS32 2
/* FIELD: FRM_SIZE_TILE.fifo_reset 15:15 established */
#define GBE_FRM_SIZE_TILE_FIFO_RESET_SHIFT 15
#define GBE_FRM_SIZE_TILE_FIFO_RESET_MASK  0x1u
/* depth 0 for 8-bit pixels is only seen in a public driver (inferred). */
/* FIELD: OVR_CONTROL.dma_enable 0:0 established */
#define GBE_OVR_CONTROL_DMA_ENABLE_SHIFT 0
#define GBE_OVR_CONTROL_DMA_ENABLE_MASK  0x1u
/* FIELD: OVR_INHWCTRL.dma_enable 0:0 established */
#define GBE_OVR_INHWCTRL_DMA_ENABLE_SHIFT 0
#define GBE_OVR_INHWCTRL_DMA_ENABLE_MASK  0x1u
/* FIELD: FRM_CONTROL.dma_enable 0:0 established */
#define GBE_FRM_CONTROL_DMA_ENABLE_SHIFT 0
#define GBE_FRM_CONTROL_DMA_ENABLE_MASK  0x1u
/* FIELD: FRM_INHWCTRL.dma_enable 0:0 established */
#define GBE_FRM_INHWCTRL_DMA_ENABLE_SHIFT 0
#define GBE_FRM_INHWCTRL_DMA_ENABLE_MASK  0x1u
/* FIELD: FRM_CONTROL.tile_list_ptr 31:5 established */
#define GBE_FRM_CONTROL_TILE_LIST_PTR_SHIFT 5
#define GBE_FRM_CONTROL_TILE_LIST_PTR_MASK  0x7ffffffu
/* FIELD: OVR_CONTROL.tile_list_ptr 31:5 established */
#define GBE_OVR_CONTROL_TILE_LIST_PTR_SHIFT 5
#define GBE_OVR_CONTROL_TILE_LIST_PTR_MASK  0x7ffffffu
/* FIELD: DID_CONTROL.did_base 15:0 established */
#define GBE_DID_CONTROL_DID_BASE_SHIFT 0
#define GBE_DID_CONTROL_DID_BASE_MASK  0xffffu
/* FIELD: DID_CONTROL.dma_enable 16:16 established */
#define GBE_DID_CONTROL_DMA_ENABLE_SHIFT 16
#define GBE_DID_CONTROL_DMA_ENABLE_MASK  0x1u
/* FIELD: DID_INHWCTRL.did_base 15:0 established */
#define GBE_DID_INHWCTRL_DID_BASE_SHIFT 0
#define GBE_DID_INHWCTRL_DID_BASE_MASK  0xffffu
/* FIELD: DID_INHWCTRL.dma_enable 16:16 established */
#define GBE_DID_INHWCTRL_DMA_ENABLE_SHIFT 16
#define GBE_DID_INHWCTRL_DMA_ENABLE_MASK  0x1u
/* did_base is the upper 16 bits of the physical address of one 64 KiB table. */
/* ---- window-ID table and display-ID table ---- */
/* FIELD: MODE_ENTRY.buf 1:0 established */
#define GBE_MODE_ENTRY_BUF_SHIFT 0
#define GBE_MODE_ENTRY_BUF_MASK  0x3u
/* ENUM: MODE_ENTRY.buf 1 lower established */
#define GBE_MODE_ENTRY_BUF_LOWER 1
/* ENUM: MODE_ENTRY.buf 2 upper established */
#define GBE_MODE_ENTRY_BUF_UPPER 2
/* ENUM: MODE_ENTRY.buf 3 both established */
#define GBE_MODE_ENTRY_BUF_BOTH 3
/* FIELD: MODE_ENTRY.typ 4:2 established */
#define GBE_MODE_ENTRY_TYP_SHIFT 2
#define GBE_MODE_ENTRY_TYP_MASK  0x7u
/* ENUM: MODE_ENTRY.typ 0 i8 established */
#define GBE_MODE_ENTRY_TYP_I8 0
/* ENUM: MODE_ENTRY.typ 1 i12 established */
#define GBE_MODE_ENTRY_TYP_I12 1
/* ENUM: MODE_ENTRY.typ 2 rg3b2 established */
#define GBE_MODE_ENTRY_TYP_RG3B2 2
/* ENUM: MODE_ENTRY.typ 3 rgb4 established */
#define GBE_MODE_ENTRY_TYP_RGB4 3
/* ENUM: MODE_ENTRY.typ 4 rgb5 established */
#define GBE_MODE_ENTRY_TYP_RGB5 4
/* ENUM: MODE_ENTRY.typ 5 rgb8 established */
#define GBE_MODE_ENTRY_TYP_RGB8 5
/* ENUM: MODE_ENTRY.typ 6 rgba5 established */
#define GBE_MODE_ENTRY_TYP_RGBA5 6
/* ENUM: MODE_ENTRY.typ 7 rgb10 established */
#define GBE_MODE_ENTRY_TYP_RGB10 7
/* FIELD: MODE_ENTRY.cm 9:5 established */
#define GBE_MODE_ENTRY_CM_SHIFT 5
#define GBE_MODE_ENTRY_CM_MASK  0x1fu
/* FIELD: MODE_ENTRY.gm 10:10 established */
#define GBE_MODE_ENTRY_GM_SHIFT 10
#define GBE_MODE_ENTRY_GM_MASK  0x1u
/* FIELD: MODE_ENTRY.aux 12:11 established */
#define GBE_MODE_ENTRY_AUX_SHIFT 11
#define GBE_MODE_ENTRY_AUX_MASK  0x3u
/* FIELD: DID_FRAME.yend 10:0 established */
#define GBE_DID_FRAME_YEND_SHIFT 0
#define GBE_DID_FRAME_YEND_MASK  0x7ffu
/* FIELD: DID_FRAME.offset 18:11 established */
#define GBE_DID_FRAME_OFFSET_SHIFT 11
#define GBE_DID_FRAME_OFFSET_MASK  0xffu
/* FIELD: DID_FRAME.block 25:19 established */
#define GBE_DID_FRAME_BLOCK_SHIFT 19
#define GBE_DID_FRAME_BLOCK_MASK  0x7fu
/* FIELD: DID_LINE.xend 10:0 established */
#define GBE_DID_LINE_XEND_SHIFT 0
#define GBE_DID_LINE_XEND_MASK  0x7ffu
/* FIELD: DID_LINE.did 15:11 established */
#define GBE_DID_LINE_DID_SHIFT 11
#define GBE_DID_LINE_DID_MASK  0x1fu
/* DID_LINE is a 16-bit entry. gm=1 turns gamma off. */
/* ---- tile list ---- */
/* FIELD: TILE_LIST_ENTRY.tile 12:0 established */
#define GBE_TILE_LIST_ENTRY_TILE_SHIFT 0
#define GBE_TILE_LIST_ENTRY_TILE_MASK  0x1fffu
/* A tile-list entry is a 16-bit halfword holding a 13-bit tile number; the upper three bits are not decoded here. */
/* ---- video capture ---- */
/* FIELD: VC_0.left 11:0 established */
#define GBE_VC_0_LEFT_SHIFT 0
#define GBE_VC_0_LEFT_MASK  0xfffu
/* FIELD: VC_0.right 23:12 established */
#define GBE_VC_0_RIGHT_SHIFT 12
#define GBE_VC_0_RIGHT_MASK  0xfffu
/* FIELD: VC_1.top 11:0 established */
#define GBE_VC_1_TOP_SHIFT 0
#define GBE_VC_1_TOP_MASK  0xfffu
/* FIELD: VC_1.bottom 23:12 established */
#define GBE_VC_1_BOTTOM_SHIFT 12
#define GBE_VC_1_BOTTOM_MASK  0xfffu
/* FIELD: VC_2.dma_enable 0:0 established */
#define GBE_VC_2_DMA_ENABLE_SHIFT 0
#define GBE_VC_2_DMA_ENABLE_MASK  0x1u
/* FIELD: VC_2.flicker_filter 1:1 established */
#define GBE_VC_2_FLICKER_FILTER_SHIFT 1
#define GBE_VC_2_FLICKER_FILTER_MASK  0x1u
/* FIELD: VC_2.auto_field 2:2 established */
#define GBE_VC_2_AUTO_FIELD_SHIFT 2
#define GBE_VC_2_AUTO_FIELD_MASK  0x1u
/* FIELD: VC_2.full_screen 3:3 established */
#define GBE_VC_2_FULL_SCREEN_SHIFT 3
#define GBE_VC_2_FULL_SCREEN_MASK  0x1u
/* FIELD: VC_2.cs_bypass 4:4 established */
#define GBE_VC_2_CS_BYPASS_SHIFT 4
#define GBE_VC_2_CS_BYPASS_MASK  0x1u
/* FIELD: VC_3.field_select 0:0 established */
#define GBE_VC_3_FIELD_SELECT_SHIFT 0
#define GBE_VC_3_FIELD_SELECT_MASK  0x1u
/* FIELD: VC_3.descr_dma_enable 1:1 established */
#define GBE_VC_3_DESCR_DMA_ENABLE_SHIFT 1
#define GBE_VC_3_DESCR_DMA_ENABLE_MASK  0x1u
/* FIELD: VC_3.field_corrupt 2:2 established */
#define GBE_VC_3_FIELD_CORRUPT_SHIFT 2
#define GBE_VC_3_FIELD_CORRUPT_MASK  0x1u
/* FIELD: VC_3.end_of_field 3:3 established */
#define GBE_VC_3_END_OF_FIELD_SHIFT 3
#define GBE_VC_3_END_OF_FIELD_MASK  0x1u
/* FIELD: VC_3.current_field 4:4 established */
#define GBE_VC_3_CURRENT_FIELD_SHIFT 4
#define GBE_VC_3_CURRENT_FIELD_MASK  0x1u
/* FIELD: VC_3.descr_ptr 31:5 established */
#define GBE_VC_3_DESCR_PTR_SHIFT 5
#define GBE_VC_3_DESCR_PTR_MASK  0x7ffffffu
/* Capture region bounds are inclusive. current_field is read only; descriptor-list DMA does not work on revision 1.1. */
/* ---- colour map ---- */
/* FIELD: CMAP_FIFO.free 5:0 established */
#define GBE_CMAP_FIFO_FREE_SHIFT 0
#define GBE_CMAP_FIFO_FREE_MASK  0x3fu
/* FIELD: CMAP_ENTRY.b 15:8 established */
#define GBE_CMAP_ENTRY_B_SHIFT 8
#define GBE_CMAP_ENTRY_B_MASK  0xffu
/* FIELD: CMAP_ENTRY.g 23:16 established */
#define GBE_CMAP_ENTRY_G_SHIFT 16
#define GBE_CMAP_ENTRY_G_MASK  0xffu
/* FIELD: CMAP_ENTRY.r 31:24 established */
#define GBE_CMAP_ENTRY_R_SHIFT 24
#define GBE_CMAP_ENTRY_R_MASK  0xffu
/* ---- cursor ---- */
/* FIELD: CRS_CTL.enable 0:0 established */
#define GBE_CRS_CTL_ENABLE_SHIFT 0
#define GBE_CRS_CTL_ENABLE_MASK  0x1u

/*
 * TESTVEC: 0x0020d320 as VT_XYMAX => htotal=800, vtotal=525
 */
/*
 * TESTVEC: 0x30000000 as CTRLSTAT => pclk_select=3, chip_rev=0
 */
/*
 * TESTVEC: 0x00100000 as DOTCLOCK => run=1, p=0
 */
/*
 * TESTVEC: 0x00010005 as DID_CONTROL => did_base=5, dma_enable=1
 */
/*
 * TESTVEC: 0x00000041 as MODE_ENTRY => buf=1, typ=0, cm=2
 */
/*
 * TESTVEC: 0xff804000 as CMAP_ENTRY => r=255, g=128, b=64
 */

/*
 * TESTVEC: 0x00000fff as FP_HDRV => off=4095, on=0
 */
/*
 * TESTVEC: 0x00001fff as FP_VDRV => off=4095, on=1
 */
/*
 * TESTVEC: 0x00303326 as FP_DE => off=806, on=771
 */

#endif /* GBE_DECODE_H */
