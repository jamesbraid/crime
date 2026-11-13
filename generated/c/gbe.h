/* generated from devices/gbe/registers.toml by defs-gen - do not edit, change the source */
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

/*
 * The shipped IRIX text port writes 1 after the glyph and colours are loaded; what the other bits mean there is unknown.
 */
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
 * treats the fields as signed. Width and signedness are unresolved. The shipped IRIX text port writes 0 at set-up.
 */
/* word CRS_POS: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_CRS_POS_WIDTH                            32 /* established */
#define GBE_CRS_POS_Y_SHIFT                          16 /* established */
#define GBE_CRS_POS_Y_MASK                           0xffffu
#define GBE_CRS_POS_Y_INPLACE                        (GBE_CRS_POS_Y_MASK << GBE_CRS_POS_Y_SHIFT)
#define GBE_CRS_POS_X_SHIFT                          0 /* established */
#define GBE_CRS_POS_X_MASK                           0xffffu
#define GBE_CRS_POS_X_INPLACE                        (GBE_CRS_POS_X_MASK << GBE_CRS_POS_X_SHIFT)

/*
 * The shipped IRIX kernel writes the same vertical part as DID_START_XY, with one line added (0x1000), and the horizontal blank end minus 54 with total pixels added when that is negative; the 54 is a kernel constant. The placement of the parts follows the fields here (inferred).
 */
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

/*
 * The shipped IRIX stop routine tests the enable bit at entry, clears it and leaves the word otherwise unwritten; the kernel never writes the table address field.
 */
/* word DID_CONTROL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_CONTROL_WIDTH                        32 /* established */
#define GBE_DID_CONTROL_DMA_ENABLE_SHIFT             16 /* established */
#define GBE_DID_CONTROL_DMA_ENABLE_MASK              0x1u
#define GBE_DID_CONTROL_DMA_ENABLE_INPLACE           (GBE_DID_CONTROL_DMA_ENABLE_MASK << GBE_DID_CONTROL_DMA_ENABLE_SHIFT)
#define GBE_DID_CONTROL_DID_BASE_SHIFT               0 /* established */
#define GBE_DID_CONTROL_DID_BASE_MASK                0xffffu
#define GBE_DID_CONTROL_DID_BASE_INPLACE             (GBE_DID_CONTROL_DID_BASE_MASK << GBE_DID_CONTROL_DID_BASE_SHIFT)

/*
 * The shipped IRIX X module packs a frame entry as block << 19 | offset << 11 | yend, one per horizontal band of lines.
 */
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

/*
 * The shipped IRIX X module packs a line-table entry as index << 11 | xend, one per rectangle in a band and sorted by its last column, in 16-bit units inside a block.
 */
/* word DID_LINE: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_DID_LINE_WIDTH                           32 /* established */
#define GBE_DID_LINE_DID_SHIFT                       11 /* established */
#define GBE_DID_LINE_DID_MASK                        0x1fu
#define GBE_DID_LINE_DID_INPLACE                     (GBE_DID_LINE_DID_MASK << GBE_DID_LINE_DID_SHIFT)
#define GBE_DID_LINE_XEND_SHIFT                      0 /* established */
#define GBE_DID_LINE_XEND_MASK                       0x7ffu
#define GBE_DID_LINE_XEND_INPLACE                    (GBE_DID_LINE_XEND_MASK << GBE_DID_LINE_XEND_SHIFT)

/*
 * The shipped IRIX kernel writes a vertical part of minus (vertical blank start minus vertical blank end minus 1) when that difference is positive, else the difference, masked to 12 bits, and a horizontal part of the horizontal blank end minus 20 (total pixels added when the blank end is below 20). The bit placement of the two parts is not stated by the kernel and follows the fields here.
 */
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
 * Bits 25:24 are the PLL test inputs tdwni and tupi, described only as their normal
 * operation state, with reset zero ([gbe-spec] p. 36). The shipped IRIX kernel clears the run bit, writes the timing words, then writes this word with the run bit set and waits 11 milliseconds (DOTCLK_SETTLE_MS). It stores M minus one, N minus one and P unchanged. What the run bit does in the hardware is inferred; the specification leaves it undefined.
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

/*
 * The shipped IRIX timing routine writes it only for the default set-up and panel set-ups 130 and 131, and only when no dual-channel option is fitted.
 */
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
 * counter FP_DE really uses is unknown. The value the shipped IRIX timing routine writes depends on the board's panel set-up byte and on whether a dual-channel option is fitted.
 */
/* word FP_HDRV: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FP_HDRV_WIDTH                            32 /* established */
#define GBE_FP_HDRV_ON_SHIFT                         12 /* established */
#define GBE_FP_HDRV_ON_MASK                          0xfffu
#define GBE_FP_HDRV_ON_INPLACE                       (GBE_FP_HDRV_ON_MASK << GBE_FP_HDRV_ON_SHIFT)
#define GBE_FP_HDRV_OFF_SHIFT                        0 /* established */
#define GBE_FP_HDRV_OFF_MASK                         0xfffu
#define GBE_FP_HDRV_OFF_INPLACE                      (GBE_FP_HDRV_OFF_MASK << GBE_FP_HDRV_OFF_SHIFT)

/*
 * The value the shipped IRIX timing routine writes depends on the board's panel set-up byte and on whether a dual-channel option is fitted.
 */
/* word FP_VDRV: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FP_VDRV_WIDTH                            32 /* established */
#define GBE_FP_VDRV_ON_SHIFT                         12 /* established */
#define GBE_FP_VDRV_ON_MASK                          0xfffu
#define GBE_FP_VDRV_ON_INPLACE                       (GBE_FP_VDRV_ON_MASK << GBE_FP_VDRV_ON_SHIFT)
#define GBE_FP_VDRV_OFF_SHIFT                        0 /* established */
#define GBE_FP_VDRV_OFF_MASK                         0xfffu
#define GBE_FP_VDRV_OFF_INPLACE                      (GBE_FP_VDRV_OFF_MASK << GBE_FP_VDRV_OFF_SHIFT)

/*
 * The shipped IRIX stop routine saves it, clears its enable bit, and later writes it back with its pointer field bumped by one unit.
 */
/* word FRM_CONTROL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_FRM_CONTROL_WIDTH                        32 /* established */
#define GBE_FRM_CONTROL_TILE_LIST_PTR_SHIFT          5 /* established */
#define GBE_FRM_CONTROL_TILE_LIST_PTR_MASK           0x7ffffffu
#define GBE_FRM_CONTROL_TILE_LIST_PTR_INPLACE        (GBE_FRM_CONTROL_TILE_LIST_PTR_MASK << GBE_FRM_CONTROL_TILE_LIST_PTR_SHIFT)
#define GBE_FRM_CONTROL_DMA_ENABLE_SHIFT             0 /* established */
#define GBE_FRM_CONTROL_DMA_ENABLE_MASK              0x1u
#define GBE_FRM_CONTROL_DMA_ENABLE_INPLACE           (GBE_FRM_CONTROL_DMA_ENABLE_MASK << GBE_FRM_CONTROL_DMA_ENABLE_SHIFT)

/*
 * The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the frame control word.
 */
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

/*
 * The shipped IRIX kernel rejects window indices of 32 or more and writes entry 0 with 3 at text-port set-up. Its compare mask (0x7fc) leaves the auxiliary field out, and it clears the gamma disable bit before a write when the alternative gamma table is in use. Buffer code: 3 buffers both, 0 marks the window to be skipped by the buffer flip, 1 and 2 exchange on a swap. Pixel type: 0 indexed 8-bit, 1 indexed 12-bit, 2 RG3B2, 4 RGB5, 5 RGB8. The colour-map group's first entry is the group value times 256.
 */
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

/*
 * The shipped IRIX stop routine clears its enable bit and leaves the word otherwise unwritten; reading the enable as a DMA enable is inferred.
 */
/* word OVR_CONTROL: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_OVR_CONTROL_WIDTH                        32 /* established */
#define GBE_OVR_CONTROL_TILE_LIST_PTR_SHIFT          5 /* established */
#define GBE_OVR_CONTROL_TILE_LIST_PTR_MASK           0x7ffffffu
#define GBE_OVR_CONTROL_TILE_LIST_PTR_INPLACE        (GBE_OVR_CONTROL_TILE_LIST_PTR_MASK << GBE_OVR_CONTROL_TILE_LIST_PTR_SHIFT)
#define GBE_OVR_CONTROL_DMA_ENABLE_SHIFT             0 /* established */
#define GBE_OVR_CONTROL_DMA_ENABLE_MASK              0x1u
#define GBE_OVR_CONTROL_DMA_ENABLE_INPLACE           (GBE_OVR_CONTROL_DMA_ENABLE_MASK << GBE_OVR_CONTROL_DMA_ENABLE_SHIFT)

/*
 * The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the overlay control word.
 */
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
 * System PLL test controls, gains and divider ([gbe-spec] p. 37). Bits 1:0 are tdwni and
 * tupi and bits 3:2 tm(1) and tm(0), described as normal operation states; the field
 * below spans all four. Reset has bit 3 set and every other defined bit zero.
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

/*
 * The shipped IRIX video driver clears VC_0 to VC_3 (written as zero when a capture path stops); bit 0 of VC_2 enabling DMA is inferred from its start routine.
 */
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

/*
 * The shipped IRIX video driver clears it when a capture path stops and holds a path byte in it; that reading is inferred from the start routine.
 */
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

/*
 * The shipped IRIX kernel writes the same vertical part as DID_START_XY without the extra line, and the horizontal blank end minus 4. The placement of the parts follows the fields here (inferred).
 */
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
 * Field-to-frame lock line, VT_7. The register table ([gbe-spec] p. 39) puts vt_f2rf, the
 * line where the left/right synchronisation signal toggles, in bits 11:0 and vt_frmlock, the
 * line vt_y is preset to on a frame-lock edge, in bits 23:12, and gives both a reset of zero. The shipped IRIX timing routine stores the vertical blank start line in the high field, and repeats it in the low field when the frame-lock flag bits (mask 0x12) of its timing record are set, else 0xfff.
 */
/* word VT_F2RF_LOCK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_F2RF_LOCK_WIDTH                       32 /* established */
#define GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_SHIFT          12 /* established */
#define GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_MASK           0xfffu
#define GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_INPLACE        (GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_MASK << GBE_VT_F2RF_LOCK_FRAME_LOCK_Y_SHIFT)
#define GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_SHIFT       0 /* established */
#define GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_MASK        0xfffu
#define GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_INPLACE     (GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_MASK << GBE_VT_F2RF_LOCK_STEREO_TOGGLE_Y_SHIFT)

/*
 * Output polarity and control bits 6:0 (VT_6). The register table ([gbe-spec] p. 39) names
 * every bit and gives all of them a reset of zero: vsync invert, vsync forced low, hsync
 * invert, hsync forced low, composite sync forced high (4) or low (5), and left/right
 * signal forced high (6). The shipped IRIX timing routine reads it, clears bits 1 and 7, and ORs in 0 or 2 for the board's panel set-up byte 132. What bit 1 does to the hardware is unknown. The value is undefined when the option lookup that feeds it fails.
 */
/* word VT_FLAGS: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_FLAGS_WIDTH                           32 /* established */
#define GBE_VT_FLAGS_STEREO_FORCED_HIGH_SHIFT        6 /* established */
#define GBE_VT_FLAGS_STEREO_FORCED_HIGH_MASK         0x1u
#define GBE_VT_FLAGS_STEREO_FORCED_HIGH_INPLACE      (GBE_VT_FLAGS_STEREO_FORCED_HIGH_MASK << GBE_VT_FLAGS_STEREO_FORCED_HIGH_SHIFT)
#define GBE_VT_FLAGS_SYNC_LOW_SHIFT                  5 /* established */
#define GBE_VT_FLAGS_SYNC_LOW_MASK                   0x1u
#define GBE_VT_FLAGS_SYNC_LOW_INPLACE                (GBE_VT_FLAGS_SYNC_LOW_MASK << GBE_VT_FLAGS_SYNC_LOW_SHIFT)
#define GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_SHIFT       4 /* established */
#define GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_MASK        0x1u
#define GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_INPLACE     (GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_MASK << GBE_VT_FLAGS_COMPOSITE_SYNC_HIGH_SHIFT)
#define GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_SHIFT     3 /* established */
#define GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_MASK      0x1u
#define GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_INPLACE   (GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_MASK << GBE_VT_FLAGS_HORIZONTAL_FORCED_LOW_SHIFT)
#define GBE_VT_FLAGS_HORIZONTAL_INVERT_SHIFT         2 /* established */
#define GBE_VT_FLAGS_HORIZONTAL_INVERT_MASK          0x1u
#define GBE_VT_FLAGS_HORIZONTAL_INVERT_INPLACE       (GBE_VT_FLAGS_HORIZONTAL_INVERT_MASK << GBE_VT_FLAGS_HORIZONTAL_INVERT_SHIFT)
#define GBE_VT_FLAGS_VERTICAL_FORCED_LOW_SHIFT       1 /* established */
#define GBE_VT_FLAGS_VERTICAL_FORCED_LOW_MASK        0x1u
#define GBE_VT_FLAGS_VERTICAL_FORCED_LOW_INPLACE     (GBE_VT_FLAGS_VERTICAL_FORCED_LOW_MASK << GBE_VT_FLAGS_VERTICAL_FORCED_LOW_SHIFT)
#define GBE_VT_FLAGS_VERTICAL_INVERT_SHIFT           0 /* established */
#define GBE_VT_FLAGS_VERTICAL_INVERT_MASK            0x1u
#define GBE_VT_FLAGS_VERTICAL_INVERT_INPLACE         (GBE_VT_FLAGS_VERTICAL_INVERT_MASK << GBE_VT_FLAGS_VERTICAL_INVERT_SHIFT)

/*
 * Horizontal blanking turns off and on at these pixel counts (VT_5). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel option is fitted, packing the active width in the high field and 0xfff in the low field.
 */
/* word VT_HBLANK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_HBLANK_WIDTH                          32 /* established */
#define GBE_VT_HBLANK_ON_SHIFT                       12 /* established */
#define GBE_VT_HBLANK_ON_MASK                        0xfffu
#define GBE_VT_HBLANK_ON_INPLACE                     (GBE_VT_HBLANK_ON_MASK << GBE_VT_HBLANK_ON_SHIFT)
#define GBE_VT_HBLANK_OFF_SHIFT                      0 /* established */
#define GBE_VT_HBLANK_OFF_MASK                       0xfffu
#define GBE_VT_HBLANK_OFF_INPLACE                    (GBE_VT_HBLANK_OFF_MASK << GBE_VT_HBLANK_OFF_SHIFT)

/*
 * The shipped IRIX kernel writes the horizontal blank window: start in the high field, end in the low field, in pixels.
 */
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
 * enables combine with OR. The table does not settle that rule. The shipped IRIX kernel parks 0xffffff here before the frame buffer is set up and writes it last in the start-up sequence: the high field is the horizontal blank end minus 0x13 (total pixels added first when that is negative), the low field is (active width + that value - 2) modulo total pixels.
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
 * Vertical blanking turns off and on at these lines (VT_4). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel option is fitted, packing the active height in the high field and 0xfff in the low field.
 */
/* word VT_VBLANK: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_VBLANK_WIDTH                          32 /* established */
#define GBE_VT_VBLANK_ON_SHIFT                       12 /* established */
#define GBE_VT_VBLANK_ON_MASK                        0xfffu
#define GBE_VT_VBLANK_ON_INPLACE                     (GBE_VT_VBLANK_ON_MASK << GBE_VT_VBLANK_ON_SHIFT)
#define GBE_VT_VBLANK_OFF_SHIFT                      0 /* established */
#define GBE_VT_VBLANK_OFF_MASK                       0xfffu
#define GBE_VT_VBLANK_OFF_INPLACE                    (GBE_VT_VBLANK_OFF_MASK << GBE_VT_VBLANK_OFF_SHIFT)

/*
 * The shipped IRIX kernel writes the vertical blank window: start in the high field, end in the low field, in lines.
 */
/* word VT_VCMAP: 32 bits; published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings */
#define GBE_VT_VCMAP_WIDTH                           32 /* established */
#define GBE_VT_VCMAP_ON_SHIFT                        12 /* established */
#define GBE_VT_VCMAP_ON_MASK                         0xfffu
#define GBE_VT_VCMAP_ON_INPLACE                      (GBE_VT_VCMAP_ON_MASK << GBE_VT_VCMAP_ON_SHIFT)
#define GBE_VT_VCMAP_OFF_SHIFT                       0 /* established */
#define GBE_VT_VCMAP_OFF_MASK                        0xfffu
#define GBE_VT_VCMAP_OFF_INPLACE                     (GBE_VT_VCMAP_OFF_MASK << GBE_VT_VCMAP_OFF_SHIFT)

/*
 * Vertical pixel-enable window, VT_14. The shipped IRIX kernel parks 0xffffff here and writes it last in the start-up sequence with the vertical blank end in the high field and the vertical blank start in the low field.
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

/*
 * The shipped IRIX start-up sequence compares its whole unmasked value with the vertical blank start line; the stop sequence reads bit 31 as the freeze state and freezes the word by writing VT_XY_FREEZE. The kernel reading derived this offset from the numbering of the other timing words and graded it inferred; the specification's table gives it.
 */
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

/*
 * The shipped IRIX timing routine writes 0 here, and the start-up sequence writes the totals once the frame buffer is set up. The kernel stores the record's total pixels and total lines, not one less than them; whether the hardware expects one less is unknown.
 */
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
#define GBE_CMFIFO_BATCH                             0x21u /* established */
#define GBE_DEVICE_ID_VALUE                          0x666u /* established */
#define GBE_DID_BLOCK_BYTES                          0x200u /* established */
#define GBE_DID_BLOCK_ENTRIES                        0x100u /* established */
#define GBE_DID_END_BLOCK                            0x80u /* established */
#define GBE_DID_LAST_XEND                            0x7ffu /* established */
#define GBE_DID_LINE_TABLE_OFFSET                    0x2000u /* established */
#define GBE_DID_TABLE_BYTES                          0x10000u /* established */
#define GBE_DOTCLK_SETTLE_MS                         0xbu /* established */
#define GBE_GBE_LINE_IRQ_BASE                        0x10u /* established */
#define GBE_GMAP_ENTRIES                             0x100u /* established */
#define GBE_MODE_ENTRIES                             0x20u /* established */
#define GBE_MODE_ENTRY_STRIDE                        0x4u /* established */
#define GBE_OFF_CMAP                                 0x50000u /* established */
#define GBE_OFF_CMAP_FIFO                            0x58000u /* established */
#define GBE_OFF_CRS_CMAP                             0x70008u /* established */
#define GBE_OFF_CRS_COLOR2                           0x7000cu /* established */
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
#define GBE_OPT_CMD_CLOCK_KHZ                        0x186a0u /* established */
#define GBE_OPT_CMD_ID_HIGH                          0xffu /* established */
#define GBE_OPT_CMD_ID_LOW                           0x7fu /* established */
#define GBE_OPT_DELAY_SMALL                          0x2u /* established */
#define GBE_OPT_ID_MASK                              0x60u /* established */
#define GBE_OPT_ID_RESTORE                           0x70u /* established */
#define GBE_OPT_INSTALLED_LIMIT                      0x9u /* established */
#define GBE_OPT_PORT_ADDR                            0x7eu /* established */
#define GBE_OVERLAY_TRANSPARENT_INDEX                0x0u /* inferred */
#define GBE_REF_CLOCK_KHZ                            0x4e20u /* inferred */
#define GBE_TILE_LIST_ALIGN_BYTES                    0x200u /* inferred */
#define GBE_TILE_LIST_BYTES_UNIT                     0x20u /* established */
#define GBE_TILE_LIST_OUTSTANDING                    0x8u /* inferred */
#define GBE_TILE_LIST_PAGE_BYTES                     0x2000u /* inferred */
#define GBE_TILE_NUMBER_MASK                         0x1fffu /* established */
#define GBE_TWO_WIRE_WAIT_BIT                        0x1u /* established */
#define GBE_TWO_WIRE_WAIT_LIMIT                      0x3cu /* established */
#define GBE_VC_TILE_REGS                             0x5u /* established */
#define GBE_VT_XY_FREEZE                             0x80000000u /* established */

#endif /* GBE_GEN_H */
