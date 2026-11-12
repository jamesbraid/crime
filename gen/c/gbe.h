/* generated from defs/gbe.toml by defs-gen - do not edit, change the source */
/* O2 GBE display back end register words */
#ifndef GBE_GEN_H
#define GBE_GEN_H

#include <stdint.h>


/* word CMAP_ENTRY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CMAP_ENTRY_WIDTH                         32 /* established */
#define GBE_CMAP_ENTRY_R_SHIFT                       24 /* established */
#define GBE_CMAP_ENTRY_R_MASK                        0xffu
#define GBE_CMAP_ENTRY_R_INPLACE                     (GBE_CMAP_ENTRY_R_MASK << GBE_CMAP_ENTRY_R_SHIFT)
#define GBE_CMAP_ENTRY_G_SHIFT                       16 /* established */
#define GBE_CMAP_ENTRY_G_MASK                        0xffu
#define GBE_CMAP_ENTRY_G_INPLACE                     (GBE_CMAP_ENTRY_G_MASK << GBE_CMAP_ENTRY_G_SHIFT)
#define GBE_CMAP_ENTRY_B_SHIFT                       8 /* established */
#define GBE_CMAP_ENTRY_B_MASK                        0xffu
#define GBE_CMAP_ENTRY_B_INPLACE                     (GBE_CMAP_ENTRY_B_MASK << GBE_CMAP_ENTRY_B_SHIFT)

/* word CMAP_FIFO: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CMAP_FIFO_WIDTH                          32 /* established */
#define GBE_CMAP_FIFO_FREE_SHIFT                     0 /* established */
#define GBE_CMAP_FIFO_FREE_MASK                      0x3fu
#define GBE_CMAP_FIFO_FREE_INPLACE                   (GBE_CMAP_FIFO_FREE_MASK << GBE_CMAP_FIFO_FREE_SHIFT)

/* word CRS_CTL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CRS_CTL_WIDTH                            32 /* established */
#define GBE_CRS_CTL_CROSSHAIR_SHIFT                  1 /* established */
#define GBE_CRS_CTL_CROSSHAIR_MASK                   0x1u
#define GBE_CRS_CTL_CROSSHAIR_INPLACE                (GBE_CRS_CTL_CROSSHAIR_MASK << GBE_CRS_CTL_CROSSHAIR_SHIFT)
#define GBE_CRS_CTL_ENABLE_SHIFT                     0 /* established */
#define GBE_CRS_CTL_ENABLE_MASK                      0x1u
#define GBE_CRS_CTL_ENABLE_INPLACE                   (GBE_CRS_CTL_ENABLE_MASK << GBE_CRS_CTL_ENABLE_SHIFT)

/*
 * Cursor position, CRS_0. The table gives 16-bit X in bits 15:0 and Y in bits 31:16,
 * reset zero. The spec's functional text (pp. 20-22) calls positions 12-bit, and NetBSD
 * treats the fields as signed. Width and signedness are unresolved.
 */
/* word CRS_POS: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CRS_POS_WIDTH                            32 /* established */
#define GBE_CRS_POS_Y_SHIFT                          16 /* established */
#define GBE_CRS_POS_Y_MASK                           0xffffu
#define GBE_CRS_POS_Y_INPLACE                        (GBE_CRS_POS_Y_MASK << GBE_CRS_POS_Y_SHIFT)
#define GBE_CRS_POS_X_SHIFT                          0 /* established */
#define GBE_CRS_POS_X_MASK                           0xffffu
#define GBE_CRS_POS_X_INPLACE                        (GBE_CRS_POS_X_MASK << GBE_CRS_POS_X_SHIFT)

/* word CRS_START_XY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CRS_START_XY_WIDTH                       32 /* established */
#define GBE_CRS_START_XY_STARTY_SHIFT                12 /* established */
#define GBE_CRS_START_XY_STARTY_MASK                 0xfffu
#define GBE_CRS_START_XY_STARTY_INPLACE              (GBE_CRS_START_XY_STARTY_MASK << GBE_CRS_START_XY_STARTY_SHIFT)
#define GBE_CRS_START_XY_STARTX_SHIFT                0 /* established */
#define GBE_CRS_START_XY_STARTX_MASK                 0xfffu
#define GBE_CRS_START_XY_STARTX_INPLACE              (GBE_CRS_START_XY_STARTX_MASK << GBE_CRS_START_XY_STARTX_SHIFT)

/*
 * Pin pair n is data at bit 6+2n and an active-low output enable at bit 7+2n, for
 * n = 0 to 9. Reset is 11 for every pair (data high, output disabled), so every pin
 * is an input. Bit 4 is the monitor sense pin, an external read-only input whose
 * polarity and wiring are not established. Bits 26 (half-phase) and 27 (composite
 * sync polarity) reset to zero. Bits 3:0 are the chip revision, read-only.
 */
/* word CTRLSTAT: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CTRLSTAT_WIDTH                           32 /* established */
#define GBE_CTRLSTAT_PCLK_SELECT_SHIFT               28 /* established */
#define GBE_CTRLSTAT_PCLK_SELECT_MASK                0x3u
#define GBE_CTRLSTAT_PCLK_SELECT_INPLACE             (GBE_CTRLSTAT_PCLK_SELECT_MASK << GBE_CTRLSTAT_PCLK_SELECT_SHIFT)
#define GBE_CTRLSTAT_PCLK_SELECT_EXTERNAL            0 /* established */
#define GBE_CTRLSTAT_PCLK_SELECT_DIFFERENTIAL        1 /* established */
#define GBE_CTRLSTAT_PCLK_SELECT_INTERNAL            3 /* established */
#define GBE_CTRLSTAT_CSYNC_POLARITY_SHIFT            27 /* established */
#define GBE_CTRLSTAT_CSYNC_POLARITY_MASK             0x1u
#define GBE_CTRLSTAT_CSYNC_POLARITY_INPLACE          (GBE_CTRLSTAT_CSYNC_POLARITY_MASK << GBE_CTRLSTAT_CSYNC_POLARITY_SHIFT)
#define GBE_CTRLSTAT_HALF_PHASE_SHIFT                26 /* established */
#define GBE_CTRLSTAT_HALF_PHASE_MASK                 0x1u
#define GBE_CTRLSTAT_HALF_PHASE_INPLACE              (GBE_CTRLSTAT_HALF_PHASE_MASK << GBE_CTRLSTAT_HALF_PHASE_SHIFT)
#define GBE_CTRLSTAT_IO9_OE_N_SHIFT                  25 /* established */
#define GBE_CTRLSTAT_IO9_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO9_OE_N_INPLACE                (GBE_CTRLSTAT_IO9_OE_N_MASK << GBE_CTRLSTAT_IO9_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO9_DATA_SHIFT                  24 /* established */
#define GBE_CTRLSTAT_IO9_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO9_DATA_INPLACE                (GBE_CTRLSTAT_IO9_DATA_MASK << GBE_CTRLSTAT_IO9_DATA_SHIFT)
#define GBE_CTRLSTAT_IO8_OE_N_SHIFT                  23 /* established */
#define GBE_CTRLSTAT_IO8_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO8_OE_N_INPLACE                (GBE_CTRLSTAT_IO8_OE_N_MASK << GBE_CTRLSTAT_IO8_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO8_DATA_SHIFT                  22 /* established */
#define GBE_CTRLSTAT_IO8_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO8_DATA_INPLACE                (GBE_CTRLSTAT_IO8_DATA_MASK << GBE_CTRLSTAT_IO8_DATA_SHIFT)
#define GBE_CTRLSTAT_IO7_OE_N_SHIFT                  21 /* established */
#define GBE_CTRLSTAT_IO7_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO7_OE_N_INPLACE                (GBE_CTRLSTAT_IO7_OE_N_MASK << GBE_CTRLSTAT_IO7_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO7_DATA_SHIFT                  20 /* established */
#define GBE_CTRLSTAT_IO7_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO7_DATA_INPLACE                (GBE_CTRLSTAT_IO7_DATA_MASK << GBE_CTRLSTAT_IO7_DATA_SHIFT)
#define GBE_CTRLSTAT_IO6_OE_N_SHIFT                  19 /* established */
#define GBE_CTRLSTAT_IO6_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO6_OE_N_INPLACE                (GBE_CTRLSTAT_IO6_OE_N_MASK << GBE_CTRLSTAT_IO6_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO6_DATA_SHIFT                  18 /* established */
#define GBE_CTRLSTAT_IO6_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO6_DATA_INPLACE                (GBE_CTRLSTAT_IO6_DATA_MASK << GBE_CTRLSTAT_IO6_DATA_SHIFT)
#define GBE_CTRLSTAT_IO5_OE_N_SHIFT                  17 /* established */
#define GBE_CTRLSTAT_IO5_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO5_OE_N_INPLACE                (GBE_CTRLSTAT_IO5_OE_N_MASK << GBE_CTRLSTAT_IO5_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO5_DATA_SHIFT                  16 /* established */
#define GBE_CTRLSTAT_IO5_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO5_DATA_INPLACE                (GBE_CTRLSTAT_IO5_DATA_MASK << GBE_CTRLSTAT_IO5_DATA_SHIFT)
#define GBE_CTRLSTAT_IO4_OE_N_SHIFT                  15 /* established */
#define GBE_CTRLSTAT_IO4_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO4_OE_N_INPLACE                (GBE_CTRLSTAT_IO4_OE_N_MASK << GBE_CTRLSTAT_IO4_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO4_DATA_SHIFT                  14 /* established */
#define GBE_CTRLSTAT_IO4_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO4_DATA_INPLACE                (GBE_CTRLSTAT_IO4_DATA_MASK << GBE_CTRLSTAT_IO4_DATA_SHIFT)
#define GBE_CTRLSTAT_IO3_OE_N_SHIFT                  13 /* established */
#define GBE_CTRLSTAT_IO3_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO3_OE_N_INPLACE                (GBE_CTRLSTAT_IO3_OE_N_MASK << GBE_CTRLSTAT_IO3_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO3_DATA_SHIFT                  12 /* established */
#define GBE_CTRLSTAT_IO3_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO3_DATA_INPLACE                (GBE_CTRLSTAT_IO3_DATA_MASK << GBE_CTRLSTAT_IO3_DATA_SHIFT)
#define GBE_CTRLSTAT_IO2_OE_N_SHIFT                  11 /* established */
#define GBE_CTRLSTAT_IO2_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO2_OE_N_INPLACE                (GBE_CTRLSTAT_IO2_OE_N_MASK << GBE_CTRLSTAT_IO2_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO2_DATA_SHIFT                  10 /* established */
#define GBE_CTRLSTAT_IO2_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO2_DATA_INPLACE                (GBE_CTRLSTAT_IO2_DATA_MASK << GBE_CTRLSTAT_IO2_DATA_SHIFT)
#define GBE_CTRLSTAT_IO1_OE_N_SHIFT                  9 /* established */
#define GBE_CTRLSTAT_IO1_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO1_OE_N_INPLACE                (GBE_CTRLSTAT_IO1_OE_N_MASK << GBE_CTRLSTAT_IO1_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO1_DATA_SHIFT                  8 /* established */
#define GBE_CTRLSTAT_IO1_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO1_DATA_INPLACE                (GBE_CTRLSTAT_IO1_DATA_MASK << GBE_CTRLSTAT_IO1_DATA_SHIFT)
#define GBE_CTRLSTAT_IO0_OE_N_SHIFT                  7 /* established */
#define GBE_CTRLSTAT_IO0_OE_N_MASK                   0x1u
#define GBE_CTRLSTAT_IO0_OE_N_INPLACE                (GBE_CTRLSTAT_IO0_OE_N_MASK << GBE_CTRLSTAT_IO0_OE_N_SHIFT)
#define GBE_CTRLSTAT_IO0_DATA_SHIFT                  6 /* established */
#define GBE_CTRLSTAT_IO0_DATA_MASK                   0x1u
#define GBE_CTRLSTAT_IO0_DATA_INPLACE                (GBE_CTRLSTAT_IO0_DATA_MASK << GBE_CTRLSTAT_IO0_DATA_SHIFT)
#define GBE_CTRLSTAT_MONITOR_SENSE_SHIFT             4 /* established */
#define GBE_CTRLSTAT_MONITOR_SENSE_MASK              0x1u
#define GBE_CTRLSTAT_MONITOR_SENSE_INPLACE           (GBE_CTRLSTAT_MONITOR_SENSE_MASK << GBE_CTRLSTAT_MONITOR_SENSE_SHIFT)
#define GBE_CTRLSTAT_CHIP_REV_SHIFT                  0 /* established */
#define GBE_CTRLSTAT_CHIP_REV_MASK                   0xfu
#define GBE_CTRLSTAT_CHIP_REV_INPLACE                (GBE_CTRLSTAT_CHIP_REV_MASK << GBE_CTRLSTAT_CHIP_REV_SHIFT)

/* word DID_CONTROL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_CONTROL_WIDTH                        32 /* established */
#define GBE_DID_CONTROL_DMA_ENABLE_SHIFT             16 /* established */
#define GBE_DID_CONTROL_DMA_ENABLE_MASK              0x1u
#define GBE_DID_CONTROL_DMA_ENABLE_INPLACE           (GBE_DID_CONTROL_DMA_ENABLE_MASK << GBE_DID_CONTROL_DMA_ENABLE_SHIFT)
#define GBE_DID_CONTROL_DID_BASE_SHIFT               0 /* established */
#define GBE_DID_CONTROL_DID_BASE_MASK                0xffffu
#define GBE_DID_CONTROL_DID_BASE_INPLACE             (GBE_DID_CONTROL_DID_BASE_MASK << GBE_DID_CONTROL_DID_BASE_SHIFT)

/* word DID_FRAME: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_FRAME_WIDTH                          32 /* established */
#define GBE_DID_FRAME_BLOCK_SHIFT                    19 /* established */
#define GBE_DID_FRAME_BLOCK_MASK                     0x7fu
#define GBE_DID_FRAME_BLOCK_INPLACE                  (GBE_DID_FRAME_BLOCK_MASK << GBE_DID_FRAME_BLOCK_SHIFT)
#define GBE_DID_FRAME_OFFSET_SHIFT                   11 /* established */
#define GBE_DID_FRAME_OFFSET_MASK                    0xffu
#define GBE_DID_FRAME_OFFSET_INPLACE                 (GBE_DID_FRAME_OFFSET_MASK << GBE_DID_FRAME_OFFSET_SHIFT)
#define GBE_DID_FRAME_YEND_SHIFT                     0 /* established */
#define GBE_DID_FRAME_YEND_MASK                      0x7ffu
#define GBE_DID_FRAME_YEND_INPLACE                   (GBE_DID_FRAME_YEND_MASK << GBE_DID_FRAME_YEND_SHIFT)

/* word DID_INHWCTRL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_INHWCTRL_WIDTH                       32 /* established */
#define GBE_DID_INHWCTRL_DMA_ENABLE_SHIFT            16 /* established */
#define GBE_DID_INHWCTRL_DMA_ENABLE_MASK             0x1u
#define GBE_DID_INHWCTRL_DMA_ENABLE_INPLACE          (GBE_DID_INHWCTRL_DMA_ENABLE_MASK << GBE_DID_INHWCTRL_DMA_ENABLE_SHIFT)
#define GBE_DID_INHWCTRL_DID_BASE_SHIFT              0 /* established */
#define GBE_DID_INHWCTRL_DID_BASE_MASK               0xffffu
#define GBE_DID_INHWCTRL_DID_BASE_INPLACE            (GBE_DID_INHWCTRL_DID_BASE_MASK << GBE_DID_INHWCTRL_DID_BASE_SHIFT)

/* word DID_LINE: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_LINE_WIDTH                           32 /* established */
#define GBE_DID_LINE_DID_SHIFT                       11 /* established */
#define GBE_DID_LINE_DID_MASK                        0x1fu
#define GBE_DID_LINE_DID_INPLACE                     (GBE_DID_LINE_DID_MASK << GBE_DID_LINE_DID_SHIFT)
#define GBE_DID_LINE_XEND_SHIFT                      0 /* established */
#define GBE_DID_LINE_XEND_MASK                       0x7ffu
#define GBE_DID_LINE_XEND_INPLACE                    (GBE_DID_LINE_XEND_MASK << GBE_DID_LINE_XEND_SHIFT)

/* word DID_START_XY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_START_XY_WIDTH                       32 /* established */
#define GBE_DID_START_XY_STARTY_SHIFT                12 /* established */
#define GBE_DID_START_XY_STARTY_MASK                 0xfffu
#define GBE_DID_START_XY_STARTY_INPLACE              (GBE_DID_START_XY_STARTY_MASK << GBE_DID_START_XY_STARTY_SHIFT)
#define GBE_DID_START_XY_STARTX_SHIFT                0 /* established */
#define GBE_DID_START_XY_STARTX_MASK                 0xfffu
#define GBE_DID_START_XY_STARTX_INPLACE              (GBE_DID_START_XY_STARTX_MASK << GBE_DID_START_XY_STARTX_SHIFT)

/*
 * Bits 22 (out of range) and 23 (out of lock) are status bits. The table leaves their
 * reset contents unspecified, and the spec gives no PLL lock time or frequency limits.
 * Bits 25:24 are manufacturer test controls and are not described.
 */
/* word DOTCLOCK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DOTCLOCK_WIDTH                           32 /* established */
#define GBE_DOTCLOCK_TEST_SHIFT                      24 /* established */
#define GBE_DOTCLOCK_TEST_MASK                       0x3u
#define GBE_DOTCLOCK_TEST_INPLACE                    (GBE_DOTCLOCK_TEST_MASK << GBE_DOTCLOCK_TEST_SHIFT)
#define GBE_DOTCLOCK_OUT_OF_LOCK_SHIFT               23 /* established */
#define GBE_DOTCLOCK_OUT_OF_LOCK_MASK                0x1u
#define GBE_DOTCLOCK_OUT_OF_LOCK_INPLACE             (GBE_DOTCLOCK_OUT_OF_LOCK_MASK << GBE_DOTCLOCK_OUT_OF_LOCK_SHIFT)
#define GBE_DOTCLOCK_OUT_OF_RANGE_SHIFT              22 /* established */
#define GBE_DOTCLOCK_OUT_OF_RANGE_MASK               0x1u
#define GBE_DOTCLOCK_OUT_OF_RANGE_INPLACE            (GBE_DOTCLOCK_OUT_OF_RANGE_MASK << GBE_DOTCLOCK_OUT_OF_RANGE_SHIFT)
#define GBE_DOTCLOCK_RUN_SHIFT                       20 /* established */
#define GBE_DOTCLOCK_RUN_MASK                        0x1u
#define GBE_DOTCLOCK_RUN_INPLACE                     (GBE_DOTCLOCK_RUN_MASK << GBE_DOTCLOCK_RUN_SHIFT)
#define GBE_DOTCLOCK_P_SHIFT                         14 /* established */
#define GBE_DOTCLOCK_P_MASK                          0x3u
#define GBE_DOTCLOCK_P_INPLACE                       (GBE_DOTCLOCK_P_MASK << GBE_DOTCLOCK_P_SHIFT)
#define GBE_DOTCLOCK_N_MINUS_1_SHIFT                 8 /* established */
#define GBE_DOTCLOCK_N_MINUS_1_MASK                  0x3fu
#define GBE_DOTCLOCK_N_MINUS_1_INPLACE               (GBE_DOTCLOCK_N_MINUS_1_MASK << GBE_DOTCLOCK_N_MINUS_1_SHIFT)
#define GBE_DOTCLOCK_M_MINUS_1_SHIFT                 0 /* established */
#define GBE_DOTCLOCK_M_MINUS_1_MASK                  0xffu
#define GBE_DOTCLOCK_M_MINUS_1_INPLACE               (GBE_DOTCLOCK_M_MINUS_1_MASK << GBE_DOTCLOCK_M_MINUS_1_SHIFT)

/* word FP_DE: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FP_DE_WIDTH                              32 /* established */
#define GBE_FP_DE_ON_SHIFT                           12 /* established */
#define GBE_FP_DE_ON_MASK                            0xfffu
#define GBE_FP_DE_ON_INPLACE                         (GBE_FP_DE_ON_MASK << GBE_FP_DE_ON_SHIFT)
#define GBE_FP_DE_OFF_SHIFT                          0 /* established */
#define GBE_FP_DE_OFF_MASK                           0xfffu
#define GBE_FP_DE_OFF_INPLACE                        (GBE_FP_DE_OFF_MASK << GBE_FP_DE_OFF_SHIFT)

/*
 * The three flat-panel drive registers and the three start-preset registers
 * share one layout: two 12-bit counts, "off" or "x" in the low half. The
 * specification names them VT_10 to VT_12 and VT_17 to VT_19 (pages 39 and
 * 40). It compares FP_HDRV, FP_DE and the "x" halves with the horizontal
 * counter and FP_VDRV and the "y" halves with the vertical counter, but it
 * compares both halves of FP_DE with the horizontal counter. The totals
 * shipped software writes for two fixed panels (806 and 771, 1065 and 1024)
 * look like line counts, not pixel counts (inferred from magnitude); which
 * counter FP_DE really uses is unknown.
 */
/* word FP_HDRV: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FP_HDRV_WIDTH                            32 /* established */
#define GBE_FP_HDRV_ON_SHIFT                         12 /* established */
#define GBE_FP_HDRV_ON_MASK                          0xfffu
#define GBE_FP_HDRV_ON_INPLACE                       (GBE_FP_HDRV_ON_MASK << GBE_FP_HDRV_ON_SHIFT)
#define GBE_FP_HDRV_OFF_SHIFT                        0 /* established */
#define GBE_FP_HDRV_OFF_MASK                         0xfffu
#define GBE_FP_HDRV_OFF_INPLACE                      (GBE_FP_HDRV_OFF_MASK << GBE_FP_HDRV_OFF_SHIFT)

/* word FP_VDRV: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FP_VDRV_WIDTH                            32 /* established */
#define GBE_FP_VDRV_ON_SHIFT                         12 /* established */
#define GBE_FP_VDRV_ON_MASK                          0xfffu
#define GBE_FP_VDRV_ON_INPLACE                       (GBE_FP_VDRV_ON_MASK << GBE_FP_VDRV_ON_SHIFT)
#define GBE_FP_VDRV_OFF_SHIFT                        0 /* established */
#define GBE_FP_VDRV_OFF_MASK                         0xfffu
#define GBE_FP_VDRV_OFF_INPLACE                      (GBE_FP_VDRV_OFF_MASK << GBE_FP_VDRV_OFF_SHIFT)

/* word FRM_CONTROL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FRM_CONTROL_WIDTH                        32 /* established */
#define GBE_FRM_CONTROL_TILE_LIST_PTR_SHIFT          5 /* established */
#define GBE_FRM_CONTROL_TILE_LIST_PTR_MASK           0x7ffffffu
#define GBE_FRM_CONTROL_TILE_LIST_PTR_INPLACE        (GBE_FRM_CONTROL_TILE_LIST_PTR_MASK << GBE_FRM_CONTROL_TILE_LIST_PTR_SHIFT)
#define GBE_FRM_CONTROL_DMA_ENABLE_SHIFT             0 /* established */
#define GBE_FRM_CONTROL_DMA_ENABLE_MASK              0x1u
#define GBE_FRM_CONTROL_DMA_ENABLE_INPLACE           (GBE_FRM_CONTROL_DMA_ENABLE_MASK << GBE_FRM_CONTROL_DMA_ENABLE_SHIFT)

/* word FRM_INHWCTRL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FRM_INHWCTRL_WIDTH                       32 /* established */
#define GBE_FRM_INHWCTRL_DMA_ENABLE_SHIFT            0 /* established */
#define GBE_FRM_INHWCTRL_DMA_ENABLE_MASK             0x1u
#define GBE_FRM_INHWCTRL_DMA_ENABLE_INPLACE          (GBE_FRM_INHWCTRL_DMA_ENABLE_MASK << GBE_FRM_INHWCTRL_DMA_ENABLE_SHIFT)

/*
 * Frame height in pixels, shared by the normal and overlay planes. Reset zero.
 */
/* word FRM_SIZE_PIXEL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FRM_SIZE_PIXEL_WIDTH                     32 /* established */
#define GBE_FRM_SIZE_PIXEL_HEIGHT_SHIFT              16 /* established */
#define GBE_FRM_SIZE_PIXEL_HEIGHT_MASK               0xffffu
#define GBE_FRM_SIZE_PIXEL_HEIGHT_INPLACE            (GBE_FRM_SIZE_PIXEL_HEIGHT_MASK << GBE_FRM_SIZE_PIXEL_HEIGHT_SHIFT)

/* word FRM_SIZE_TILE: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FRM_SIZE_TILE_WIDTH                      32 /* established */
#define GBE_FRM_SIZE_TILE_FIFO_RESET_SHIFT           15 /* established */
#define GBE_FRM_SIZE_TILE_FIFO_RESET_MASK            0x1u
#define GBE_FRM_SIZE_TILE_FIFO_RESET_INPLACE         (GBE_FRM_SIZE_TILE_FIFO_RESET_MASK << GBE_FRM_SIZE_TILE_FIFO_RESET_SHIFT)
#define GBE_FRM_SIZE_TILE_DEPTH_SHIFT                13 /* established */
#define GBE_FRM_SIZE_TILE_DEPTH_MASK                 0x3u
#define GBE_FRM_SIZE_TILE_DEPTH_INPLACE              (GBE_FRM_SIZE_TILE_DEPTH_MASK << GBE_FRM_SIZE_TILE_DEPTH_SHIFT)
#define GBE_FRM_SIZE_TILE_DEPTH_BITS8                0 /* established */
#define GBE_FRM_SIZE_TILE_DEPTH_BITS16               1 /* established */
#define GBE_FRM_SIZE_TILE_DEPTH_BITS32               2 /* established */
#define GBE_FRM_SIZE_TILE_WIDTH_TILES_SHIFT          5 /* established */
#define GBE_FRM_SIZE_TILE_WIDTH_TILES_MASK           0xffu
#define GBE_FRM_SIZE_TILE_WIDTH_TILES_INPLACE        (GBE_FRM_SIZE_TILE_WIDTH_TILES_MASK << GBE_FRM_SIZE_TILE_WIDTH_TILES_SHIFT)
#define GBE_FRM_SIZE_TILE_REMAINDER_SHIFT            0 /* established */
#define GBE_FRM_SIZE_TILE_REMAINDER_MASK             0x1fu
#define GBE_FRM_SIZE_TILE_REMAINDER_INPLACE          (GBE_FRM_SIZE_TILE_REMAINDER_MASK << GBE_FRM_SIZE_TILE_REMAINDER_SHIFT)

/*
 * Monitor DDC bus. Bit 0 is the data line and bit 1 the clock line; both reset to 1.
 * The spec gives separate output and synchronized input pins (page 22): a write sets
 * the outputs, and a read returns the bus state, which can differ from the output
 * latch. NetBSD XORs both written and read bits with 3 and calls the fields low
 * active. That is a software expectation (inferred), and the register table alone does
 * not say whether writing 1 releases a line. Whether the reset value 1 means released
 * is therefore not established.
 */
/* word I2C: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_I2C_WIDTH                                32 /* established */
#define GBE_I2C_SDC_SHIFT                            1 /* established */
#define GBE_I2C_SDC_MASK                             0x1u
#define GBE_I2C_SDC_INPLACE                          (GBE_I2C_SDC_MASK << GBE_I2C_SDC_SHIFT)
#define GBE_I2C_SDA_SHIFT                            0 /* established */
#define GBE_I2C_SDA_MASK                             0x1u
#define GBE_I2C_SDA_INPLACE                          (GBE_I2C_SDA_MASK << GBE_I2C_SDA_SHIFT)

/*
 * Flat-panel DDC bus, same layout as I2C: data at bit 0 and clock at bit 1, both reset
 * to 1. The spec places external pullups on the flat-panel clock and data outputs
 * (page 4). The inverted-convention caveat under I2C applies here too.
 */
/* word I2CFP: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_I2CFP_WIDTH                              32 /* established */
#define GBE_I2CFP_SDC_SHIFT                          1 /* established */
#define GBE_I2CFP_SDC_MASK                           0x1u
#define GBE_I2CFP_SDC_INPLACE                        (GBE_I2CFP_SDC_MASK << GBE_I2CFP_SDC_SHIFT)
#define GBE_I2CFP_SDA_SHIFT                          0 /* established */
#define GBE_I2CFP_SDA_MASK                           0x1u
#define GBE_I2CFP_SDA_INPLACE                        (GBE_I2CFP_SDA_MASK << GBE_I2CFP_SDA_SHIFT)

/* word MODE_ENTRY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_MODE_ENTRY_WIDTH                         32 /* established */
#define GBE_MODE_ENTRY_AUX_SHIFT                     11 /* established */
#define GBE_MODE_ENTRY_AUX_MASK                      0x3u
#define GBE_MODE_ENTRY_AUX_INPLACE                   (GBE_MODE_ENTRY_AUX_MASK << GBE_MODE_ENTRY_AUX_SHIFT)
#define GBE_MODE_ENTRY_GM_SHIFT                      10 /* established */
#define GBE_MODE_ENTRY_GM_MASK                       0x1u
#define GBE_MODE_ENTRY_GM_INPLACE                    (GBE_MODE_ENTRY_GM_MASK << GBE_MODE_ENTRY_GM_SHIFT)
#define GBE_MODE_ENTRY_CM_SHIFT                      5 /* established */
#define GBE_MODE_ENTRY_CM_MASK                       0x1fu
#define GBE_MODE_ENTRY_CM_INPLACE                    (GBE_MODE_ENTRY_CM_MASK << GBE_MODE_ENTRY_CM_SHIFT)
#define GBE_MODE_ENTRY_TYP_SHIFT                     2 /* established */
#define GBE_MODE_ENTRY_TYP_MASK                      0x7u
#define GBE_MODE_ENTRY_TYP_INPLACE                   (GBE_MODE_ENTRY_TYP_MASK << GBE_MODE_ENTRY_TYP_SHIFT)
#define GBE_MODE_ENTRY_TYP_I8                        0 /* established */
#define GBE_MODE_ENTRY_TYP_I12                       1 /* established */
#define GBE_MODE_ENTRY_TYP_RG3B2                     2 /* established */
#define GBE_MODE_ENTRY_TYP_RGB4                      3 /* established */
#define GBE_MODE_ENTRY_TYP_RGB5                      4 /* established */
#define GBE_MODE_ENTRY_TYP_RGB8                      5 /* established */
#define GBE_MODE_ENTRY_TYP_RGBA5                     6 /* established */
#define GBE_MODE_ENTRY_TYP_RGB10                     7 /* established */
#define GBE_MODE_ENTRY_BUF_SHIFT                     0 /* established */
#define GBE_MODE_ENTRY_BUF_MASK                      0x3u
#define GBE_MODE_ENTRY_BUF_INPLACE                   (GBE_MODE_ENTRY_BUF_MASK << GBE_MODE_ENTRY_BUF_SHIFT)
#define GBE_MODE_ENTRY_BUF_LOWER                     1 /* established */
#define GBE_MODE_ENTRY_BUF_UPPER                     2 /* established */
#define GBE_MODE_ENTRY_BUF_BOTH                      3 /* established */

/* word OVR_CONTROL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_OVR_CONTROL_WIDTH                        32 /* established */
#define GBE_OVR_CONTROL_TILE_LIST_PTR_SHIFT          5 /* established */
#define GBE_OVR_CONTROL_TILE_LIST_PTR_MASK           0x7ffffffu
#define GBE_OVR_CONTROL_TILE_LIST_PTR_INPLACE        (GBE_OVR_CONTROL_TILE_LIST_PTR_MASK << GBE_OVR_CONTROL_TILE_LIST_PTR_SHIFT)
#define GBE_OVR_CONTROL_DMA_ENABLE_SHIFT             0 /* established */
#define GBE_OVR_CONTROL_DMA_ENABLE_MASK              0x1u
#define GBE_OVR_CONTROL_DMA_ENABLE_INPLACE           (GBE_OVR_CONTROL_DMA_ENABLE_MASK << GBE_OVR_CONTROL_DMA_ENABLE_SHIFT)

/* word OVR_INHWCTRL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_OVR_INHWCTRL_WIDTH                       32 /* established */
#define GBE_OVR_INHWCTRL_DMA_ENABLE_SHIFT            0 /* established */
#define GBE_OVR_INHWCTRL_DMA_ENABLE_MASK             0x1u
#define GBE_OVR_INHWCTRL_DMA_ENABLE_INPLACE          (GBE_OVR_INHWCTRL_DMA_ENABLE_MASK << GBE_OVR_INHWCTRL_DMA_ENABLE_SHIFT)

/*
 * Overlay width must be a multiple of 32 pixels, so the 32-byte remainder is whole pixels at 8 bits (GBE 1.1 pp. 13-14).
 */
/* word OVR_WIDTH_TILE: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_OVR_WIDTH_TILE_WIDTH                     32 /* established */
#define GBE_OVR_WIDTH_TILE_FIFO_RESET_SHIFT          13 /* established */
#define GBE_OVR_WIDTH_TILE_FIFO_RESET_MASK           0x1u
#define GBE_OVR_WIDTH_TILE_FIFO_RESET_INPLACE        (GBE_OVR_WIDTH_TILE_FIFO_RESET_MASK << GBE_OVR_WIDTH_TILE_FIFO_RESET_SHIFT)
#define GBE_OVR_WIDTH_TILE_WIDTH_TILES_SHIFT         5 /* established */
#define GBE_OVR_WIDTH_TILE_WIDTH_TILES_MASK          0xffu
#define GBE_OVR_WIDTH_TILE_WIDTH_TILES_INPLACE       (GBE_OVR_WIDTH_TILE_WIDTH_TILES_MASK << GBE_OVR_WIDTH_TILE_WIDTH_TILES_SHIFT)
#define GBE_OVR_WIDTH_TILE_REMAINDER_SHIFT           0 /* established */
#define GBE_OVR_WIDTH_TILE_REMAINDER_MASK            0x1fu
#define GBE_OVR_WIDTH_TILE_REMAINDER_INPLACE         (GBE_OVR_WIDTH_TILE_REMAINDER_MASK << GBE_OVR_WIDTH_TILE_REMAINDER_SHIFT)

/*
 * System PLL test controls, gains and divider. Reset has bit 3 set (test control 0)
 * and every other defined bit zero.
 */
/* word SYSCLK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_SYSCLK_WIDTH                             32 /* established */
#define GBE_SYSCLK_DIVIDER_SHIFT                     12 /* established */
#define GBE_SYSCLK_DIVIDER_MASK                      0x7u
#define GBE_SYSCLK_DIVIDER_INPLACE                   (GBE_SYSCLK_DIVIDER_MASK << GBE_SYSCLK_DIVIDER_SHIFT)
#define GBE_SYSCLK_CURRENT_GAIN_SHIFT                10 /* established */
#define GBE_SYSCLK_CURRENT_GAIN_MASK                 0x3u
#define GBE_SYSCLK_CURRENT_GAIN_INPLACE              (GBE_SYSCLK_CURRENT_GAIN_MASK << GBE_SYSCLK_CURRENT_GAIN_SHIFT)
#define GBE_SYSCLK_VOLTAGE_GAIN_SHIFT                8 /* established */
#define GBE_SYSCLK_VOLTAGE_GAIN_MASK                 0x3u
#define GBE_SYSCLK_VOLTAGE_GAIN_INPLACE              (GBE_SYSCLK_VOLTAGE_GAIN_MASK << GBE_SYSCLK_VOLTAGE_GAIN_SHIFT)
#define GBE_SYSCLK_TM_SHIFT                          0 /* established */
#define GBE_SYSCLK_TM_MASK                           0xfu
#define GBE_SYSCLK_TM_INPLACE                        (GBE_SYSCLK_TM_MASK << GBE_SYSCLK_TM_SHIFT)

/* word TILE_LIST_ENTRY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_TILE_LIST_ENTRY_WIDTH                    32 /* established */
#define GBE_TILE_LIST_ENTRY_TILE_SHIFT               0 /* established */
#define GBE_TILE_LIST_ENTRY_TILE_MASK                0x1fffu
#define GBE_TILE_LIST_ENTRY_TILE_INPLACE             (GBE_TILE_LIST_ENTRY_TILE_MASK << GBE_TILE_LIST_ENTRY_TILE_SHIFT)

/* word VC_0: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VC_0_WIDTH                               32 /* established */
#define GBE_VC_0_RIGHT_SHIFT                         12 /* established */
#define GBE_VC_0_RIGHT_MASK                          0xfffu
#define GBE_VC_0_RIGHT_INPLACE                       (GBE_VC_0_RIGHT_MASK << GBE_VC_0_RIGHT_SHIFT)
#define GBE_VC_0_LEFT_SHIFT                          0 /* established */
#define GBE_VC_0_LEFT_MASK                           0xfffu
#define GBE_VC_0_LEFT_INPLACE                        (GBE_VC_0_LEFT_MASK << GBE_VC_0_LEFT_SHIFT)

/* word VC_1: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VC_1_WIDTH                               32 /* established */
#define GBE_VC_1_BOTTOM_SHIFT                        12 /* established */
#define GBE_VC_1_BOTTOM_MASK                         0xfffu
#define GBE_VC_1_BOTTOM_INPLACE                      (GBE_VC_1_BOTTOM_MASK << GBE_VC_1_BOTTOM_SHIFT)
#define GBE_VC_1_TOP_SHIFT                           0 /* established */
#define GBE_VC_1_TOP_MASK                            0xfffu
#define GBE_VC_1_TOP_INPLACE                         (GBE_VC_1_TOP_MASK << GBE_VC_1_TOP_SHIFT)

/* word VC_2: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VC_2_WIDTH                               32 /* established */
#define GBE_VC_2_CS_BYPASS_SHIFT                     4 /* established */
#define GBE_VC_2_CS_BYPASS_MASK                      0x1u
#define GBE_VC_2_CS_BYPASS_INPLACE                   (GBE_VC_2_CS_BYPASS_MASK << GBE_VC_2_CS_BYPASS_SHIFT)
#define GBE_VC_2_FULL_SCREEN_SHIFT                   3 /* established */
#define GBE_VC_2_FULL_SCREEN_MASK                    0x1u
#define GBE_VC_2_FULL_SCREEN_INPLACE                 (GBE_VC_2_FULL_SCREEN_MASK << GBE_VC_2_FULL_SCREEN_SHIFT)
#define GBE_VC_2_AUTO_FIELD_SHIFT                    2 /* established */
#define GBE_VC_2_AUTO_FIELD_MASK                     0x1u
#define GBE_VC_2_AUTO_FIELD_INPLACE                  (GBE_VC_2_AUTO_FIELD_MASK << GBE_VC_2_AUTO_FIELD_SHIFT)
#define GBE_VC_2_FLICKER_FILTER_SHIFT                1 /* established */
#define GBE_VC_2_FLICKER_FILTER_MASK                 0x1u
#define GBE_VC_2_FLICKER_FILTER_INPLACE              (GBE_VC_2_FLICKER_FILTER_MASK << GBE_VC_2_FLICKER_FILTER_SHIFT)
#define GBE_VC_2_DMA_ENABLE_SHIFT                    0 /* established */
#define GBE_VC_2_DMA_ENABLE_MASK                     0x1u
#define GBE_VC_2_DMA_ENABLE_INPLACE                  (GBE_VC_2_DMA_ENABLE_MASK << GBE_VC_2_DMA_ENABLE_SHIFT)

/* word VC_3: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VC_3_WIDTH                               32 /* established */
#define GBE_VC_3_DESCR_PTR_SHIFT                     5 /* established */
#define GBE_VC_3_DESCR_PTR_MASK                      0x7ffffffu
#define GBE_VC_3_DESCR_PTR_INPLACE                   (GBE_VC_3_DESCR_PTR_MASK << GBE_VC_3_DESCR_PTR_SHIFT)
#define GBE_VC_3_CURRENT_FIELD_SHIFT                 4 /* established */
#define GBE_VC_3_CURRENT_FIELD_MASK                  0x1u
#define GBE_VC_3_CURRENT_FIELD_INPLACE               (GBE_VC_3_CURRENT_FIELD_MASK << GBE_VC_3_CURRENT_FIELD_SHIFT)
#define GBE_VC_3_END_OF_FIELD_SHIFT                  3 /* established */
#define GBE_VC_3_END_OF_FIELD_MASK                   0x1u
#define GBE_VC_3_END_OF_FIELD_INPLACE                (GBE_VC_3_END_OF_FIELD_MASK << GBE_VC_3_END_OF_FIELD_SHIFT)
#define GBE_VC_3_FIELD_CORRUPT_SHIFT                 2 /* established */
#define GBE_VC_3_FIELD_CORRUPT_MASK                  0x1u
#define GBE_VC_3_FIELD_CORRUPT_INPLACE               (GBE_VC_3_FIELD_CORRUPT_MASK << GBE_VC_3_FIELD_CORRUPT_SHIFT)
#define GBE_VC_3_DESCR_DMA_ENABLE_SHIFT              1 /* established */
#define GBE_VC_3_DESCR_DMA_ENABLE_MASK               0x1u
#define GBE_VC_3_DESCR_DMA_ENABLE_INPLACE            (GBE_VC_3_DESCR_DMA_ENABLE_MASK << GBE_VC_3_DESCR_DMA_ENABLE_SHIFT)
#define GBE_VC_3_FIELD_SELECT_SHIFT                  0 /* established */
#define GBE_VC_3_FIELD_SELECT_MASK                   0x1u
#define GBE_VC_3_FIELD_SELECT_INPLACE                (GBE_VC_3_FIELD_SELECT_MASK << GBE_VC_3_FIELD_SELECT_SHIFT)

/* word VC_START_XY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VC_START_XY_WIDTH                        32 /* established */
#define GBE_VC_START_XY_STARTY_SHIFT                 12 /* established */
#define GBE_VC_START_XY_STARTY_MASK                  0xfffu
#define GBE_VC_START_XY_STARTY_INPLACE               (GBE_VC_START_XY_STARTY_MASK << GBE_VC_START_XY_STARTY_SHIFT)
#define GBE_VC_START_XY_STARTX_SHIFT                 0 /* established */
#define GBE_VC_START_XY_STARTX_MASK                  0xfffu
#define GBE_VC_START_XY_STARTX_INPLACE               (GBE_VC_START_XY_STARTX_MASK << GBE_VC_START_XY_STARTX_SHIFT)

/* word VC_TILES: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VC_TILES_WIDTH                           32 /* established */
#define GBE_VC_TILES_TILE_FIRST_SHIFT                16 /* established */
#define GBE_VC_TILES_TILE_FIRST_MASK                 0xffffu
#define GBE_VC_TILES_TILE_FIRST_INPLACE              (GBE_VC_TILES_TILE_FIRST_MASK << GBE_VC_TILES_TILE_FIRST_SHIFT)
#define GBE_VC_TILES_TILE_SECOND_SHIFT               0 /* established */
#define GBE_VC_TILES_TILE_SECOND_MASK                0xffffu
#define GBE_VC_TILES_TILE_SECOND_INPLACE             (GBE_VC_TILES_TILE_SECOND_MASK << GBE_VC_TILES_TILE_SECOND_SHIFT)

/*
 * Field-to-frame lock line, VT_7. The page 21 diagram and the NetBSD encoding name a
 * stereo toggle line and a frame-lock line. Which half holds which is inferred from the
 * listing order in the register table, the same order the interrupt words use. No reset
 * table is given.
 */
/* word VT_F2RF_LOCK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_F2RF_LOCK_WIDTH                       32 /* inferred */
#define GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_SHIFT          12 /* inferred */
#define GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_MASK           0xfffu
#define GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_INPLACE        (GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_MASK << GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_SHIFT)
#define GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_SHIFT       0 /* inferred */
#define GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_MASK        0xfffu
#define GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_INPLACE     (GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_MASK << GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_SHIFT)

/*
 * Output polarity and control bits 6:0 (VT_6). Composite sync low is bit 5. The other
 * bits follow the public Linux and NetBSD encodings, which are software expectations,
 * and the table gives no reset value for them.
 */
/* word VT_FLAGS: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_FLAGS_WIDTH                           32 /* established */
#define GBE_VT_FLAGS_STEREO_FORCED_HIGH_SHIFT        6 /* inferred */
#define GBE_VT_FLAGS_STEREO_FORCED_HIGH_MASK         0x1u
#define GBE_VT_FLAGS_STEREO_FORCED_HIGH_INPLACE      (GBE_VT_FLAGS_STEREO_FORCED_HIGH_MASK << GBE_VT_FLAGS_STEREO_FORCED_HIGH_SHIFT)
#define GBE_VT_FLAGS_SYNC_LOW_SHIFT                  5 /* established */
#define GBE_VT_FLAGS_SYNC_LOW_MASK                   0x1u
#define GBE_VT_FLAGS_SYNC_LOW_INPLACE                (GBE_VT_FLAGS_SYNC_LOW_MASK << GBE_VT_FLAGS_SYNC_LOW_SHIFT)
#define GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_SHIFT       4 /* inferred */
#define GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_MASK        0x1u
#define GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_INPLACE     (GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_MASK << GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_SHIFT)
#define GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_SHIFT     3 /* inferred */
#define GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_MASK      0x1u
#define GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_INPLACE   (GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_MASK << GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_SHIFT)
#define GBE_VT_FLAGS_HORIZONTAL_INVERT_SHIFT         2 /* inferred */
#define GBE_VT_FLAGS_HORIZONTAL_INVERT_MASK          0x1u
#define GBE_VT_FLAGS_HORIZONTAL_INVERT_INPLACE       (GBE_VT_FLAGS_HORIZONTAL_INVERT_MASK << GBE_VT_FLAGS_HORIZONTAL_INVERT_SHIFT)
#define GBE_VT_FLAGS_VERTICAL_FORCED_LOW_SHIFT       1 /* inferred */
#define GBE_VT_FLAGS_VERTICAL_FORCED_LOW_MASK        0x1u
#define GBE_VT_FLAGS_VERTICAL_FORCED_LOW_INPLACE     (GBE_VT_FLAGS_VERTICAL_FORCED_LOW_MASK << GBE_VT_FLAGS_VERTICAL_FORCED_LOW_SHIFT)
#define GBE_VT_FLAGS_VERTICAL_INVERT_SHIFT           0 /* inferred */
#define GBE_VT_FLAGS_VERTICAL_INVERT_MASK            0x1u
#define GBE_VT_FLAGS_VERTICAL_INVERT_INPLACE         (GBE_VT_FLAGS_VERTICAL_INVERT_MASK << GBE_VT_FLAGS_VERTICAL_INVERT_SHIFT)

/*
 * Horizontal blanking turns off and on at these pixel counts (VT_5).
 */
/* word VT_HBLANK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_HBLANK_WIDTH                          32 /* established */
#define GBE_VT_HBLANK_ON_SHIFT                       12 /* established */
#define GBE_VT_HBLANK_ON_MASK                        0xfffu
#define GBE_VT_HBLANK_ON_INPLACE                     (GBE_VT_HBLANK_ON_MASK << GBE_VT_HBLANK_ON_SHIFT)
#define GBE_VT_HBLANK_OFF_SHIFT                      0 /* established */
#define GBE_VT_HBLANK_OFF_MASK                       0xfffu
#define GBE_VT_HBLANK_OFF_INPLACE                    (GBE_VT_HBLANK_OFF_MASK << GBE_VT_HBLANK_OFF_SHIFT)

/* word VT_HCMAP: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_HCMAP_WIDTH                           32 /* established */
#define GBE_VT_HCMAP_ON_SHIFT                        12 /* established */
#define GBE_VT_HCMAP_ON_MASK                         0xfffu
#define GBE_VT_HCMAP_ON_INPLACE                      (GBE_VT_HCMAP_ON_MASK << GBE_VT_HCMAP_ON_SHIFT)
#define GBE_VT_HCMAP_OFF_SHIFT                       0 /* established */
#define GBE_VT_HCMAP_OFF_MASK                        0xfffu
#define GBE_VT_HCMAP_OFF_INPLACE                     (GBE_VT_HCMAP_OFF_MASK << GBE_VT_HCMAP_OFF_SHIFT)

/*
 * Horizontal pixel-enable window, VT_13. The spec prose says the horizontal and vertical
 * enables combine with OR. The table does not settle that rule.
 */
/* word VT_HPIXEN: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_HPIXEN_WIDTH                          32 /* established */
#define GBE_VT_HPIXEN_ON_SHIFT                       12 /* established */
#define GBE_VT_HPIXEN_ON_MASK                        0xfffu
#define GBE_VT_HPIXEN_ON_INPLACE                     (GBE_VT_HPIXEN_ON_MASK << GBE_VT_HPIXEN_ON_SHIFT)
#define GBE_VT_HPIXEN_OFF_SHIFT                      0 /* established */
#define GBE_VT_HPIXEN_OFF_MASK                       0xfffu
#define GBE_VT_HPIXEN_OFF_INPLACE                    (GBE_VT_HPIXEN_OFF_MASK << GBE_VT_HPIXEN_OFF_SHIFT)

/*
 * Horizontal sync turns off and on at these pixel counts (VT_3).
 */
/* word VT_HSYNC: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_HSYNC_WIDTH                           32 /* established */
#define GBE_VT_HSYNC_ON_SHIFT                        12 /* established */
#define GBE_VT_HSYNC_ON_MASK                         0xfffu
#define GBE_VT_HSYNC_ON_INPLACE                      (GBE_VT_HSYNC_ON_MASK << GBE_VT_HSYNC_ON_SHIFT)
#define GBE_VT_HSYNC_OFF_SHIFT                       0 /* established */
#define GBE_VT_HSYNC_OFF_MASK                        0xfffu
#define GBE_VT_HSYNC_OFF_INPLACE                     (GBE_VT_HSYNC_OFF_MASK << GBE_VT_HSYNC_OFF_SHIFT)

/* word VT_INTR01: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_INTR01_WIDTH                          32 /* established */
#define GBE_VT_INTR01_LINE0_SHIFT                    12 /* established */
#define GBE_VT_INTR01_LINE0_MASK                     0xfffu
#define GBE_VT_INTR01_LINE0_INPLACE                  (GBE_VT_INTR01_LINE0_MASK << GBE_VT_INTR01_LINE0_SHIFT)
#define GBE_VT_INTR01_LINE1_SHIFT                    0 /* established */
#define GBE_VT_INTR01_LINE1_MASK                     0xfffu
#define GBE_VT_INTR01_LINE1_INPLACE                  (GBE_VT_INTR01_LINE1_MASK << GBE_VT_INTR01_LINE1_SHIFT)

/* word VT_INTR23: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_INTR23_WIDTH                          32 /* established */
#define GBE_VT_INTR23_LINE2_SHIFT                    12 /* established */
#define GBE_VT_INTR23_LINE2_MASK                     0xfffu
#define GBE_VT_INTR23_LINE2_INPLACE                  (GBE_VT_INTR23_LINE2_MASK << GBE_VT_INTR23_LINE2_SHIFT)
#define GBE_VT_INTR23_LINE3_SHIFT                    0 /* established */
#define GBE_VT_INTR23_LINE3_MASK                     0xfffu
#define GBE_VT_INTR23_LINE3_INPLACE                  (GBE_VT_INTR23_LINE3_MASK << GBE_VT_INTR23_LINE3_SHIFT)

/*
 * Vertical blanking turns off and on at these lines (VT_4).
 */
/* word VT_VBLANK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_VBLANK_WIDTH                          32 /* established */
#define GBE_VT_VBLANK_ON_SHIFT                       12 /* established */
#define GBE_VT_VBLANK_ON_MASK                        0xfffu
#define GBE_VT_VBLANK_ON_INPLACE                     (GBE_VT_VBLANK_ON_MASK << GBE_VT_VBLANK_ON_SHIFT)
#define GBE_VT_VBLANK_OFF_SHIFT                      0 /* established */
#define GBE_VT_VBLANK_OFF_MASK                       0xfffu
#define GBE_VT_VBLANK_OFF_INPLACE                    (GBE_VT_VBLANK_OFF_MASK << GBE_VT_VBLANK_OFF_SHIFT)

/* word VT_VCMAP: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_VCMAP_WIDTH                           32 /* established */
#define GBE_VT_VCMAP_ON_SHIFT                        12 /* established */
#define GBE_VT_VCMAP_ON_MASK                         0xfffu
#define GBE_VT_VCMAP_ON_INPLACE                      (GBE_VT_VCMAP_ON_MASK << GBE_VT_VCMAP_ON_SHIFT)
#define GBE_VT_VCMAP_OFF_SHIFT                       0 /* established */
#define GBE_VT_VCMAP_OFF_MASK                        0xfffu
#define GBE_VT_VCMAP_OFF_INPLACE                     (GBE_VT_VCMAP_OFF_MASK << GBE_VT_VCMAP_OFF_SHIFT)

/*
 * Vertical pixel-enable window, VT_14.
 */
/* word VT_VPIXEN: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_VPIXEN_WIDTH                          32 /* established */
#define GBE_VT_VPIXEN_ON_SHIFT                       12 /* established */
#define GBE_VT_VPIXEN_ON_MASK                        0xfffu
#define GBE_VT_VPIXEN_ON_INPLACE                     (GBE_VT_VPIXEN_ON_MASK << GBE_VT_VPIXEN_ON_SHIFT)
#define GBE_VT_VPIXEN_OFF_SHIFT                      0 /* established */
#define GBE_VT_VPIXEN_OFF_MASK                       0xfffu
#define GBE_VT_VPIXEN_OFF_INPLACE                    (GBE_VT_VPIXEN_OFF_MASK << GBE_VT_VPIXEN_OFF_SHIFT)

/*
 * Vertical sync turns off and on at these lines (VT_2). The page 38 text for the on
 * row repeats the off comparator, so the positions are established but that description
 * is not.
 */
/* word VT_VSYNC: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_VSYNC_WIDTH                           32 /* established */
#define GBE_VT_VSYNC_ON_SHIFT                        12 /* established */
#define GBE_VT_VSYNC_ON_MASK                         0xfffu
#define GBE_VT_VSYNC_ON_INPLACE                      (GBE_VT_VSYNC_ON_MASK << GBE_VT_VSYNC_ON_SHIFT)
#define GBE_VT_VSYNC_OFF_SHIFT                       0 /* established */
#define GBE_VT_VSYNC_OFF_MASK                        0xfffu
#define GBE_VT_VSYNC_OFF_INPLACE                     (GBE_VT_VSYNC_OFF_MASK << GBE_VT_VSYNC_OFF_SHIFT)

/* word VT_XY: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_XY_WIDTH                              32 /* established */
#define GBE_VT_XY_FREEZE_SHIFT                       31 /* established */
#define GBE_VT_XY_FREEZE_MASK                        0x1u
#define GBE_VT_XY_FREEZE_INPLACE                     (GBE_VT_XY_FREEZE_MASK << GBE_VT_XY_FREEZE_SHIFT)
#define GBE_VT_XY_Y_SHIFT                            12 /* established */
#define GBE_VT_XY_Y_MASK                             0xfffu
#define GBE_VT_XY_Y_INPLACE                          (GBE_VT_XY_Y_MASK << GBE_VT_XY_Y_SHIFT)
#define GBE_VT_XY_X_SHIFT                            0 /* established */
#define GBE_VT_XY_X_MASK                             0xfffu
#define GBE_VT_XY_X_INPLACE                          (GBE_VT_XY_X_MASK << GBE_VT_XY_X_SHIFT)

/* word VT_XYMAX: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_XYMAX_WIDTH                           32 /* established */
#define GBE_VT_XYMAX_VTOTAL_SHIFT                    12 /* established */
#define GBE_VT_XYMAX_VTOTAL_MASK                     0xfffu
#define GBE_VT_XYMAX_VTOTAL_INPLACE                  (GBE_VT_XYMAX_VTOTAL_MASK << GBE_VT_XYMAX_VTOTAL_SHIFT)
#define GBE_VT_XYMAX_HTOTAL_SHIFT                    0 /* established */
#define GBE_VT_XYMAX_HTOTAL_MASK                     0xfffu
#define GBE_VT_XYMAX_HTOTAL_INPLACE                  (GBE_VT_XYMAX_HTOTAL_MASK << GBE_VT_XYMAX_HTOTAL_SHIFT)

#define GBE_CMAP_ENTRIES_REV1                        0x1200u /* established */
#define GBE_CMAP_ENTRIES_REV2                        0x1800u /* inferred */
#define GBE_CMAP_FIFO_DEPTH_REV1                     0x40u /* established */
#define GBE_CMAP_FIFO_DEPTH_REV2                     0x3fu /* inferred */
#define GBE_CMAP_FIFO_LOW_WATER                      0x30u /* established */
#define GBE_DEVICE_ID_VALUE                          0x666u /* established */
#define GBE_GMAP_ENTRIES                             0x100u /* established */
#define GBE_MODE_ENTRIES                             0x20u /* established */
#define GBE_MODE_ENTRY_STRIDE                        0x4u /* established */
#define GBE_OFF_CMAP                                 0x50000u /* established */
#define GBE_OFF_CMAP_FIFO                            0x58000u /* established */
#define GBE_OFF_CRS_CMAP                             0x70008u /* established */
#define GBE_OFF_CRS_CTL                              0x70004u /* established */
#define GBE_OFF_CRS_GLYPH                            0x78000u /* established */
#define GBE_OFF_CRS_POS                              0x70000u /* established */
#define GBE_OFF_CRS_START_XY                         0x10048u /* established */
#define GBE_OFF_CTRLSTAT                             0x0u /* established */
#define GBE_OFF_DEVICE_ID                            0x14u /* established */
#define GBE_OFF_DID_CONTROL                          0x40004u /* established */
#define GBE_OFF_DID_INHWCTRL                         0x40000u /* established */
#define GBE_OFF_DID_START_XY                         0x10044u /* established */
#define GBE_OFF_DOTCLOCK                             0x4u /* established */
#define GBE_OFF_FP_DE                                0x10030u /* established */
#define GBE_OFF_FP_HDRV                              0x10028u /* established */
#define GBE_OFF_FP_VDRV                              0x1002cu /* established */
#define GBE_OFF_FRM_CONTROL                          0x3000cu /* established */
#define GBE_OFF_FRM_INHWCTRL                         0x30008u /* established */
#define GBE_OFF_FRM_SIZE_PIXEL                       0x30004u /* established */
#define GBE_OFF_FRM_SIZE_TILE                        0x30000u /* established */
#define GBE_OFF_GMAP                                 0x60000u /* established */
#define GBE_OFF_I2C                                  0x8u /* established */
#define GBE_OFF_I2CFP                                0x10u /* established */
#define GBE_OFF_MODE_TABLE                           0x48000u /* established */
#define GBE_OFF_OVR_CONTROL                          0x20008u /* established */
#define GBE_OFF_OVR_INHWCTRL                         0x20004u /* established */
#define GBE_OFF_OVR_WIDTH_TILE                       0x20000u /* established */
#define GBE_OFF_SYSCLK                               0xcu /* established */
#define GBE_OFF_VC_0                                 0x80000u /* established */
#define GBE_OFF_VC_1                                 0x80004u /* established */
#define GBE_OFF_VC_2                                 0x80008u /* established */
#define GBE_OFF_VC_3                                 0x8000cu /* established */
#define GBE_OFF_VC_4                                 0x80010u /* established */
#define GBE_OFF_VC_5                                 0x80014u /* established */
#define GBE_OFF_VC_6                                 0x80018u /* established */
#define GBE_OFF_VC_7                                 0x8001cu /* established */
#define GBE_OFF_VC_8                                 0x80020u /* established */
#define GBE_OFF_VC_START_XY                          0x1004cu /* established */
#define GBE_OFF_VT_F2RF_LOCK                         0x1001cu /* established */
#define GBE_OFF_VT_FLAGS                             0x10018u /* established */
#define GBE_OFF_VT_HBLANK                            0x10014u /* established */
#define GBE_OFF_VT_HCMAP                             0x1003cu /* established */
#define GBE_OFF_VT_HPIXEN                            0x10034u /* established */
#define GBE_OFF_VT_HSYNC                             0x1000cu /* established */
#define GBE_OFF_VT_INTR01                            0x10020u /* established */
#define GBE_OFF_VT_INTR23                            0x10024u /* established */
#define GBE_OFF_VT_VBLANK                            0x10010u /* established */
#define GBE_OFF_VT_VCMAP                             0x10040u /* established */
#define GBE_OFF_VT_VPIXEN                            0x10038u /* established */
#define GBE_OFF_VT_VSYNC                             0x10008u /* established */
#define GBE_OFF_VT_XY                                0x10000u /* established */
#define GBE_OFF_VT_XYMAX                             0x10004u /* established */
#define GBE_TILE_LIST_BYTES_UNIT                     0x20u /* established */
#define GBE_VC_TILE_REGS                             0x5u /* established */

#endif /* GBE_GEN_H */
