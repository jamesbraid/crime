/* generated from defs/mace_video.toml by defs-gen - do not edit, change the source */
/* O2 MACE video output channel and chip-level configuration */
#ifndef VOUT_GEN_H
#define VOUT_GEN_H

#include <stdint.h>


/*
 * ---- output channel registers ----
 * One channel set, offsets from the start of the output channel window. All
 * are 64-bit doubleword accesses. The status register clears the pending
 * causes on read; the DMA-active bit is live.
 */
/* control: rw64, space mace_video_out, reset 0x0; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_CONTROL_OFFSET                          0x0u /* established */
#define VOUT_CONTROL_INT_CRIME_ERROR_SHIFT           8 /* established */
#define VOUT_CONTROL_INT_CRIME_ERROR_MASK            0x1ull
#define VOUT_CONTROL_INT_CRIME_ERROR_INPLACE         (VOUT_CONTROL_INT_CRIME_ERROR_MASK << VOUT_CONTROL_INT_CRIME_ERROR_SHIFT)
#define VOUT_CONTROL_INT_FIFO_UNDERFLOW_SHIFT        7 /* established */
#define VOUT_CONTROL_INT_FIFO_UNDERFLOW_MASK         0x1ull
#define VOUT_CONTROL_INT_FIFO_UNDERFLOW_INPLACE      (VOUT_CONTROL_INT_FIFO_UNDERFLOW_MASK << VOUT_CONTROL_INT_FIFO_UNDERFLOW_SHIFT)
#define VOUT_CONTROL_INT_BUFFER_SHIFT                4 /* established */
#define VOUT_CONTROL_INT_BUFFER_MASK                 0x1ull
#define VOUT_CONTROL_INT_BUFFER_INPLACE              (VOUT_CONTROL_INT_BUFFER_MASK << VOUT_CONTROL_INT_BUFFER_SHIFT)
#define VOUT_CONTROL_INT_GENLOCK_LOST_SHIFT          3 /* established */
#define VOUT_CONTROL_INT_GENLOCK_LOST_MASK           0x1ull
#define VOUT_CONTROL_INT_GENLOCK_LOST_INPLACE        (VOUT_CONTROL_INT_GENLOCK_LOST_MASK << VOUT_CONTROL_INT_GENLOCK_LOST_SHIFT)
#define VOUT_CONTROL_INT_DMA_DONE_SHIFT              2 /* established */
#define VOUT_CONTROL_INT_DMA_DONE_MASK               0x1ull
#define VOUT_CONTROL_INT_DMA_DONE_INPLACE            (VOUT_CONTROL_INT_DMA_DONE_MASK << VOUT_CONTROL_INT_DMA_DONE_SHIFT)
#define VOUT_CONTROL_INT_VSYNC_SHIFT                 1 /* established */
#define VOUT_CONTROL_INT_VSYNC_MASK                  0x1ull
#define VOUT_CONTROL_INT_VSYNC_INPLACE               (VOUT_CONTROL_INT_VSYNC_MASK << VOUT_CONTROL_INT_VSYNC_SHIFT)
#define VOUT_CONTROL_DMA_ENABLE_SHIFT                0 /* established */
#define VOUT_CONTROL_DMA_ENABLE_MASK                 0x1ull
#define VOUT_CONTROL_DMA_ENABLE_INPLACE              (VOUT_CONTROL_DMA_ENABLE_MASK << VOUT_CONTROL_DMA_ENABLE_SHIFT)

/* status: r64, space mace_video_out, reset 0x0; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_STATUS_OFFSET                           0x8u /* established */
#define VOUT_STATUS_CRIME_ERROR_SHIFT                8 /* established */
#define VOUT_STATUS_CRIME_ERROR_MASK                 0x1ull
#define VOUT_STATUS_CRIME_ERROR_INPLACE              (VOUT_STATUS_CRIME_ERROR_MASK << VOUT_STATUS_CRIME_ERROR_SHIFT)
#define VOUT_STATUS_FIFO_UNDERFLOW_SHIFT             7 /* established */
#define VOUT_STATUS_FIFO_UNDERFLOW_MASK              0x1ull
#define VOUT_STATUS_FIFO_UNDERFLOW_INPLACE           (VOUT_STATUS_FIFO_UNDERFLOW_MASK << VOUT_STATUS_FIFO_UNDERFLOW_SHIFT)
#define VOUT_STATUS_BUFFER_SHIFT                     4 /* established */
#define VOUT_STATUS_BUFFER_MASK                      0x1ull
#define VOUT_STATUS_BUFFER_INPLACE                   (VOUT_STATUS_BUFFER_MASK << VOUT_STATUS_BUFFER_SHIFT)
#define VOUT_STATUS_LOST_SYNC_SHIFT                  3 /* established */
#define VOUT_STATUS_LOST_SYNC_MASK                   0x1ull
#define VOUT_STATUS_LOST_SYNC_INPLACE                (VOUT_STATUS_LOST_SYNC_MASK << VOUT_STATUS_LOST_SYNC_SHIFT)
#define VOUT_STATUS_DMA_DONE_SHIFT                   2 /* established */
#define VOUT_STATUS_DMA_DONE_MASK                    0x1ull
#define VOUT_STATUS_DMA_DONE_INPLACE                 (VOUT_STATUS_DMA_DONE_MASK << VOUT_STATUS_DMA_DONE_SHIFT)
#define VOUT_STATUS_VSYNC_SHIFT                      1 /* established */
#define VOUT_STATUS_VSYNC_MASK                       0x1ull
#define VOUT_STATUS_VSYNC_INPLACE                    (VOUT_STATUS_VSYNC_MASK << VOUT_STATUS_VSYNC_SHIFT)
#define VOUT_STATUS_DMA_ACTIVE_SHIFT                 0 /* established */
#define VOUT_STATUS_DMA_ACTIVE_MASK                  0x1ull
#define VOUT_STATUS_DMA_ACTIVE_INPLACE               (VOUT_STATUS_DMA_ACTIVE_MASK << VOUT_STATUS_DMA_ACTIVE_SHIFT)

/* config: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_CONFIG_OFFSET                           0x10u /* established */
#define VOUT_CONFIG_SOF_COUNT_EVEN_SHIFT             22 /* established */
#define VOUT_CONFIG_SOF_COUNT_EVEN_MASK              0xfull
#define VOUT_CONFIG_SOF_COUNT_EVEN_INPLACE           (VOUT_CONFIG_SOF_COUNT_EVEN_MASK << VOUT_CONFIG_SOF_COUNT_EVEN_SHIFT)
#define VOUT_CONFIG_MEM_MODE_SHIFT                   21 /* established */
#define VOUT_CONFIG_MEM_MODE_MASK                    0x1ull
#define VOUT_CONFIG_MEM_MODE_INPLACE                 (VOUT_CONFIG_MEM_MODE_MASK << VOUT_CONFIG_MEM_MODE_SHIFT)
#define VOUT_CONFIG_MEM_MODE_LINEAR                  0 /* established */
#define VOUT_CONFIG_MEM_MODE_TILED                   1 /* established */
#define VOUT_CONFIG_INTERLEAVED_SHIFT                20 /* established */
#define VOUT_CONFIG_INTERLEAVED_MASK                 0x1ull
#define VOUT_CONFIG_INTERLEAVED_INPLACE              (VOUT_CONFIG_INTERLEAVED_MASK << VOUT_CONFIG_INTERLEAVED_SHIFT)
#define VOUT_CONFIG_CLAMPING_SHIFT                   18 /* established */
#define VOUT_CONFIG_CLAMPING_MASK                    0x3ull
#define VOUT_CONFIG_CLAMPING_INPLACE                 (VOUT_CONFIG_CLAMPING_MASK << VOUT_CONFIG_CLAMPING_SHIFT)
#define VOUT_CONFIG_CLAMPING_NONE                    0 /* established */
#define VOUT_CONFIG_CLAMPING_EXTENDED                1 /* established */
#define VOUT_CONFIG_CLAMPING_LEGAL                   2 /* established */
#define VOUT_CONFIG_CLAMPING_SPECIAL_EXPANSION       3 /* established */
#define VOUT_CONFIG_NOTCH_FILTER_SHIFT               17 /* established */
#define VOUT_CONFIG_NOTCH_FILTER_MASK                0x1ull
#define VOUT_CONFIG_NOTCH_FILTER_INPLACE             (VOUT_CONFIG_NOTCH_FILTER_MASK << VOUT_CONFIG_NOTCH_FILTER_SHIFT)
#define VOUT_CONFIG_PIXEL_FORMAT_SHIFT               14 /* established */
#define VOUT_CONFIG_PIXEL_FORMAT_MASK                0x7ull
#define VOUT_CONFIG_PIXEL_FORMAT_INPLACE             (VOUT_CONFIG_PIXEL_FORMAT_MASK << VOUT_CONFIG_PIXEL_FORMAT_SHIFT)
#define VOUT_CONFIG_PIXEL_FORMAT_RGBA32              0 /* established */
#define VOUT_CONFIG_PIXEL_FORMAT_RGBA5551            1 /* established */
#define VOUT_CONFIG_PIXEL_FORMAT_YUV422_8            2 /* established */
#define VOUT_CONFIG_PIXEL_FORMAT_YUV422_10           3 /* established */
#define VOUT_CONFIG_PIXEL_FORMAT_ABGR32              4 /* established */
#define VOUT_CONFIG_PIXEL_FORMAT_YUVA4224            5 /* established */
#define VOUT_CONFIG_SOF_COUNT_ODD_SHIFT              10 /* established */
#define VOUT_CONFIG_SOF_COUNT_ODD_MASK               0xfull
#define VOUT_CONFIG_SOF_COUNT_ODD_INPLACE            (VOUT_CONFIG_SOF_COUNT_ODD_MASK << VOUT_CONFIG_SOF_COUNT_ODD_SHIFT)
#define VOUT_CONFIG_GENLOCK_ECC_SHIFT                9 /* established */
#define VOUT_CONFIG_GENLOCK_ECC_MASK                 0x1ull
#define VOUT_CONFIG_GENLOCK_ECC_INPLACE              (VOUT_CONFIG_GENLOCK_ECC_MASK << VOUT_CONFIG_GENLOCK_ECC_SHIFT)
#define VOUT_CONFIG_GENLOCK_PRECISION_SHIFT          8 /* established */
#define VOUT_CONFIG_GENLOCK_PRECISION_MASK           0x1ull
#define VOUT_CONFIG_GENLOCK_PRECISION_INPLACE        (VOUT_CONFIG_GENLOCK_PRECISION_MASK << VOUT_CONFIG_GENLOCK_PRECISION_SHIFT)
#define VOUT_CONFIG_GENLOCK_SOURCE_SHIFT             6 /* established */
#define VOUT_CONFIG_GENLOCK_SOURCE_MASK              0x3ull
#define VOUT_CONFIG_GENLOCK_SOURCE_INPLACE           (VOUT_CONFIG_GENLOCK_SOURCE_MASK << VOUT_CONFIG_GENLOCK_SOURCE_SHIFT)
#define VOUT_CONFIG_GENLOCK_SOURCE_NONE              0 /* established */
#define VOUT_CONFIG_GENLOCK_SOURCE_EXTERNAL          1 /* established */
#define VOUT_CONFIG_GENLOCK_SOURCE_PORT_AB           2 /* established */
#define VOUT_CONFIG_GENLOCK_SOURCE_PORT_CD           3 /* established */
#define VOUT_CONFIG_GENLOCK_RESET_SHIFT              5 /* established */
#define VOUT_CONFIG_GENLOCK_RESET_MASK               0x1ull
#define VOUT_CONFIG_GENLOCK_RESET_INPLACE            (VOUT_CONFIG_GENLOCK_RESET_MASK << VOUT_CONFIG_GENLOCK_RESET_SHIFT)
#define VOUT_CONFIG_PORT_F_SOURCE_SHIFT              3 /* established */
#define VOUT_CONFIG_PORT_F_SOURCE_MASK               0x3ull
#define VOUT_CONFIG_PORT_F_SOURCE_INPLACE            (VOUT_CONFIG_PORT_F_SOURCE_MASK << VOUT_CONFIG_PORT_F_SOURCE_SHIFT)
#define VOUT_CONFIG_PORT_F_SOURCE_DISABLED           0 /* established */
#define VOUT_CONFIG_PORT_F_SOURCE_GENLOCK_PASSTHROUGH 1 /* established */
#define VOUT_CONFIG_PORT_F_SOURCE_YUV                2 /* established */
#define VOUT_CONFIG_PORT_F_SOURCE_ALPHA              3 /* established */
#define VOUT_CONFIG_PORT_E_SOURCE_SHIFT              1 /* established */
#define VOUT_CONFIG_PORT_E_SOURCE_MASK               0x3ull
#define VOUT_CONFIG_PORT_E_SOURCE_INPLACE            (VOUT_CONFIG_PORT_E_SOURCE_MASK << VOUT_CONFIG_PORT_E_SOURCE_SHIFT)
#define VOUT_CONFIG_PORT_E_SOURCE_DISABLED           0 /* established */
#define VOUT_CONFIG_PORT_E_SOURCE_GENLOCK_PASSTHROUGH 1 /* established */
#define VOUT_CONFIG_PORT_E_SOURCE_YUV                2 /* established */
#define VOUT_CONFIG_PORT_E_SOURCE_ALPHA              3 /* established */
#define VOUT_CONFIG_CHANNEL_ENABLE_SHIFT             0 /* established */
#define VOUT_CONFIG_CHANNEL_ENABLE_MASK              0x1ull
#define VOUT_CONFIG_CHANNEL_ENABLE_INPLACE           (VOUT_CONFIG_CHANNEL_ENABLE_MASK << VOUT_CONFIG_CHANNEL_ENABLE_SHIFT)

/* next_desc: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_NEXT_DESC_OFFSET                        0x18u /* established */
#define VOUT_NEXT_DESC_TABLE_ADDRESS_SHIFT           6 /* established */
#define VOUT_NEXT_DESC_TABLE_ADDRESS_MASK            0x3ffffffull
#define VOUT_NEXT_DESC_TABLE_ADDRESS_INPLACE         (VOUT_NEXT_DESC_TABLE_ADDRESS_MASK << VOUT_NEXT_DESC_TABLE_ADDRESS_SHIFT)
#define VOUT_NEXT_DESC_VALID_SHIFT                   2 /* established */
#define VOUT_NEXT_DESC_VALID_MASK                    0x1ull
#define VOUT_NEXT_DESC_VALID_INPLACE                 (VOUT_NEXT_DESC_VALID_MASK << VOUT_NEXT_DESC_VALID_SHIFT)
#define VOUT_NEXT_DESC_BIT1_SHIFT                    1 /* established */
#define VOUT_NEXT_DESC_BIT1_MASK                     0x1ull
#define VOUT_NEXT_DESC_BIT1_INPLACE                  (VOUT_NEXT_DESC_BIT1_MASK << VOUT_NEXT_DESC_BIT1_SHIFT)
#define VOUT_NEXT_DESC_FIELD_TO_SEND_SHIFT           0 /* established */
#define VOUT_NEXT_DESC_FIELD_TO_SEND_MASK            0x1ull
#define VOUT_NEXT_DESC_FIELD_TO_SEND_INPLACE         (VOUT_NEXT_DESC_FIELD_TO_SEND_MASK << VOUT_NEXT_DESC_FIELD_TO_SEND_SHIFT)
#define VOUT_NEXT_DESC_FIELD_TO_SEND_ODD             0 /* established */
#define VOUT_NEXT_DESC_FIELD_TO_SEND_EVEN            1 /* established */

/* fld_offset: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_FLD_OFFSET_OFFSET                       0x20u /* established */
#define VOUT_FLD_OFFSET_BYTE_OFFSET_SHIFT            3 /* established */
#define VOUT_FLD_OFFSET_BYTE_OFFSET_MASK             0x1fffull
#define VOUT_FLD_OFFSET_BYTE_OFFSET_INPLACE          (VOUT_FLD_OFFSET_BYTE_OFFSET_MASK << VOUT_FLD_OFFSET_BYTE_OFFSET_SHIFT)

/*
 * Double-buffered: a new value takes effect at the next field (revision history item 46, printed page 59).
 */
/* field_size: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_FIELD_SIZE_OFFSET                       0x28u /* established */
#define VOUT_FIELD_SIZE_LINES_SHIFT                  12 /* established */
#define VOUT_FIELD_SIZE_LINES_MASK                   0x3ffull
#define VOUT_FIELD_SIZE_LINES_INPLACE                (VOUT_FIELD_SIZE_LINES_MASK << VOUT_FIELD_SIZE_LINES_SHIFT)
#define VOUT_FIELD_SIZE_BYTES_SHIFT                  3 /* established */
#define VOUT_FIELD_SIZE_BYTES_MASK                   0x1ffull
#define VOUT_FIELD_SIZE_BYTES_INPLACE                (VOUT_FIELD_SIZE_BYTES_MASK << VOUT_FIELD_SIZE_BYTES_SHIFT)

/* hpad_odd: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_HPAD_ODD_OFFSET                         0x30u /* established */
#define VOUT_HPAD_ODD_FILTER_MODE_SHIFT              40 /* established */
#define VOUT_HPAD_ODD_FILTER_MODE_MASK               0x3ull
#define VOUT_HPAD_ODD_FILTER_MODE_INPLACE            (VOUT_HPAD_ODD_FILTER_MODE_MASK << VOUT_HPAD_ODD_FILTER_MODE_SHIFT)
#define VOUT_HPAD_ODD_FILTER_MODE_NONE               0 /* established */
#define VOUT_HPAD_ODD_FILTER_MODE_PAL_11_12          1 /* established */
#define VOUT_HPAD_ODD_FILTER_MODE_NTSC_11_10         2 /* established */
#define VOUT_HPAD_ODD_FILTER_MODE_DOUBLE_WIDTH       3 /* established */
#define VOUT_HPAD_ODD_FILTER_COUNT_SHIFT             30 /* established */
#define VOUT_HPAD_ODD_FILTER_COUNT_MASK              0x3ffull
#define VOUT_HPAD_ODD_FILTER_COUNT_INPLACE           (VOUT_HPAD_ODD_FILTER_COUNT_MASK << VOUT_HPAD_ODD_FILTER_COUNT_SHIFT)
#define VOUT_HPAD_ODD_EAV_IMAGE_SHIFT                20 /* established */
#define VOUT_HPAD_ODD_EAV_IMAGE_MASK                 0x3ffull
#define VOUT_HPAD_ODD_EAV_IMAGE_INPLACE              (VOUT_HPAD_ODD_EAV_IMAGE_MASK << VOUT_HPAD_ODD_EAV_IMAGE_SHIFT)
#define VOUT_HPAD_ODD_EAV_EAV_SHIFT                  10 /* established */
#define VOUT_HPAD_ODD_EAV_EAV_MASK                   0x3ffull
#define VOUT_HPAD_ODD_EAV_EAV_INPLACE                (VOUT_HPAD_ODD_EAV_EAV_MASK << VOUT_HPAD_ODD_EAV_EAV_SHIFT)
#define VOUT_HPAD_ODD_EAV_SAV_SHIFT                  0 /* established */
#define VOUT_HPAD_ODD_EAV_SAV_MASK                   0x3ffull
#define VOUT_HPAD_ODD_EAV_SAV_INPLACE                (VOUT_HPAD_ODD_EAV_SAV_MASK << VOUT_HPAD_ODD_EAV_SAV_SHIFT)

/* vpad_odd: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_VPAD_ODD_OFFSET                         0x38u /* established */
#define VOUT_VPAD_ODD_IMAGE_START_SHIFT              30 /* established */
#define VOUT_VPAD_ODD_IMAGE_START_MASK               0x3ffull
#define VOUT_VPAD_ODD_IMAGE_START_INPLACE            (VOUT_VPAD_ODD_IMAGE_START_MASK << VOUT_VPAD_ODD_IMAGE_START_SHIFT)
#define VOUT_VPAD_ODD_FIELD_END_SHIFT                20 /* established */
#define VOUT_VPAD_ODD_FIELD_END_MASK                 0x3ffull
#define VOUT_VPAD_ODD_FIELD_END_INPLACE              (VOUT_VPAD_ODD_FIELD_END_MASK << VOUT_VPAD_ODD_FIELD_END_SHIFT)
#define VOUT_VPAD_ODD_TRAILING_BLANK_START_SHIFT     10 /* established */
#define VOUT_VPAD_ODD_TRAILING_BLANK_START_MASK      0x3ffull
#define VOUT_VPAD_ODD_TRAILING_BLANK_START_INPLACE   (VOUT_VPAD_ODD_TRAILING_BLANK_START_MASK << VOUT_VPAD_ODD_TRAILING_BLANK_START_SHIFT)
#define VOUT_VPAD_ODD_LEADING_BLANK_END_SHIFT        0 /* established */
#define VOUT_VPAD_ODD_LEADING_BLANK_END_MASK         0x3ffull
#define VOUT_VPAD_ODD_LEADING_BLANK_END_INPLACE      (VOUT_VPAD_ODD_LEADING_BLANK_END_MASK << VOUT_VPAD_ODD_LEADING_BLANK_END_SHIFT)

/* hpad_even: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_HPAD_EVEN_OFFSET                        0x40u /* established */
#define VOUT_HPAD_EVEN_FILTER_MODE_SHIFT             40 /* established */
#define VOUT_HPAD_EVEN_FILTER_MODE_MASK              0x3ull
#define VOUT_HPAD_EVEN_FILTER_MODE_INPLACE           (VOUT_HPAD_EVEN_FILTER_MODE_MASK << VOUT_HPAD_EVEN_FILTER_MODE_SHIFT)
#define VOUT_HPAD_EVEN_FILTER_MODE_NONE              0 /* established */
#define VOUT_HPAD_EVEN_FILTER_MODE_PAL_11_12         1 /* established */
#define VOUT_HPAD_EVEN_FILTER_MODE_NTSC_11_10        2 /* established */
#define VOUT_HPAD_EVEN_FILTER_MODE_DOUBLE_WIDTH      3 /* established */
#define VOUT_HPAD_EVEN_FILTER_COUNT_SHIFT            30 /* established */
#define VOUT_HPAD_EVEN_FILTER_COUNT_MASK             0x3ffull
#define VOUT_HPAD_EVEN_FILTER_COUNT_INPLACE          (VOUT_HPAD_EVEN_FILTER_COUNT_MASK << VOUT_HPAD_EVEN_FILTER_COUNT_SHIFT)
#define VOUT_HPAD_EVEN_EAV_IMAGE_SHIFT               20 /* established */
#define VOUT_HPAD_EVEN_EAV_IMAGE_MASK                0x3ffull
#define VOUT_HPAD_EVEN_EAV_IMAGE_INPLACE             (VOUT_HPAD_EVEN_EAV_IMAGE_MASK << VOUT_HPAD_EVEN_EAV_IMAGE_SHIFT)
#define VOUT_HPAD_EVEN_EAV_EAV_SHIFT                 10 /* established */
#define VOUT_HPAD_EVEN_EAV_EAV_MASK                  0x3ffull
#define VOUT_HPAD_EVEN_EAV_EAV_INPLACE               (VOUT_HPAD_EVEN_EAV_EAV_MASK << VOUT_HPAD_EVEN_EAV_EAV_SHIFT)
#define VOUT_HPAD_EVEN_EAV_SAV_SHIFT                 0 /* established */
#define VOUT_HPAD_EVEN_EAV_SAV_MASK                  0x3ffull
#define VOUT_HPAD_EVEN_EAV_SAV_INPLACE               (VOUT_HPAD_EVEN_EAV_SAV_MASK << VOUT_HPAD_EVEN_EAV_SAV_SHIFT)

/* vpad_even: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_VPAD_EVEN_OFFSET                        0x48u /* established */
#define VOUT_VPAD_EVEN_IMAGE_START_SHIFT             30 /* established */
#define VOUT_VPAD_EVEN_IMAGE_START_MASK              0x3ffull
#define VOUT_VPAD_EVEN_IMAGE_START_INPLACE           (VOUT_VPAD_EVEN_IMAGE_START_MASK << VOUT_VPAD_EVEN_IMAGE_START_SHIFT)
#define VOUT_VPAD_EVEN_FIELD_END_SHIFT               20 /* established */
#define VOUT_VPAD_EVEN_FIELD_END_MASK                0x3ffull
#define VOUT_VPAD_EVEN_FIELD_END_INPLACE             (VOUT_VPAD_EVEN_FIELD_END_MASK << VOUT_VPAD_EVEN_FIELD_END_SHIFT)
#define VOUT_VPAD_EVEN_TRAILING_BLANK_START_SHIFT    10 /* established */
#define VOUT_VPAD_EVEN_TRAILING_BLANK_START_MASK     0x3ffull
#define VOUT_VPAD_EVEN_TRAILING_BLANK_START_INPLACE  (VOUT_VPAD_EVEN_TRAILING_BLANK_START_MASK << VOUT_VPAD_EVEN_TRAILING_BLANK_START_SHIFT)
#define VOUT_VPAD_EVEN_LEADING_BLANK_END_SHIFT       0 /* established */
#define VOUT_VPAD_EVEN_LEADING_BLANK_END_MASK        0x3ffull
#define VOUT_VPAD_EVEN_LEADING_BLANK_END_INPLACE     (VOUT_VPAD_EVEN_LEADING_BLANK_END_MASK << VOUT_VPAD_EVEN_LEADING_BLANK_END_SHIFT)

/* gen_dly: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_GEN_DLY_OFFSET                          0x50u /* established */

/* vhw_cfg: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_VHW_CFG_OFFSET                          0x58u /* established */
#define VOUT_VHW_CFG_REVISION_SHIFT                  32 /* established */
#define VOUT_VHW_CFG_REVISION_MASK                   0xfull
#define VOUT_VHW_CFG_REVISION_INPLACE                (VOUT_VHW_CFG_REVISION_MASK << VOUT_VHW_CFG_REVISION_SHIFT)
#define VOUT_VHW_CFG_SOF_COUNT_EVEN_SHIFT            19 /* established */
#define VOUT_VHW_CFG_SOF_COUNT_EVEN_MASK             0xfull
#define VOUT_VHW_CFG_SOF_COUNT_EVEN_INPLACE          (VOUT_VHW_CFG_SOF_COUNT_EVEN_MASK << VOUT_VHW_CFG_SOF_COUNT_EVEN_SHIFT)
#define VOUT_VHW_CFG_GPIBO_SHIFT                     18 /* established */
#define VOUT_VHW_CFG_GPIBO_MASK                      0x1ull
#define VOUT_VHW_CFG_GPIBO_INPLACE                   (VOUT_VHW_CFG_GPIBO_MASK << VOUT_VHW_CFG_GPIBO_SHIFT)
#define VOUT_VHW_CFG_SOF_COUNT_ODD_SHIFT             14 /* established */
#define VOUT_VHW_CFG_SOF_COUNT_ODD_MASK              0xfull
#define VOUT_VHW_CFG_SOF_COUNT_ODD_INPLACE           (VOUT_VHW_CFG_SOF_COUNT_ODD_MASK << VOUT_VHW_CFG_SOF_COUNT_ODD_SHIFT)
#define VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_SHIFT         13 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_MASK          0x1ull
#define VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_INPLACE       (VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_MASK << VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_SHIFT)
#define VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_SHIFT   12 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_MASK    0x1ull
#define VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_INPLACE (VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_MASK << VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_SHIFT)
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_SHIFT      10 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_MASK       0x3ull
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_INPLACE    (VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_MASK << VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_SHIFT)
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_OUTPUT_EF  0 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_EXTERNAL   1 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_PORT_AB    2 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_PORT_CD    3 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_SHIFT       9 /* established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_MASK        0x1ull
#define VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_INPLACE     (VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_MASK << VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_SHIFT)
#define VOUT_VHW_CFG_AUDIO_SYNC_ECC_SHIFT            8 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_ECC_MASK             0x1ull
#define VOUT_VHW_CFG_AUDIO_SYNC_ECC_INPLACE          (VOUT_VHW_CFG_AUDIO_SYNC_ECC_MASK << VOUT_VHW_CFG_AUDIO_SYNC_ECC_SHIFT)
#define VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_SHIFT      7 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_MASK       0x1ull
#define VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_INPLACE    (VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_MASK << VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_SHIFT)
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_SHIFT         5 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_MASK          0x3ull
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_INPLACE       (VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_MASK << VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_SHIFT)
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_NONE          0 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_EXTERNAL      1 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_PORT_AB       2 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_PORT_CD       3 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_RESET_SHIFT          4 /* established */
#define VOUT_VHW_CFG_AUDIO_SYNC_RESET_MASK           0x1ull
#define VOUT_VHW_CFG_AUDIO_SYNC_RESET_INPLACE        (VOUT_VHW_CFG_AUDIO_SYNC_RESET_MASK << VOUT_VHW_CFG_AUDIO_SYNC_RESET_SHIFT)
#define VOUT_VHW_CFG_PORT_CD_SELECT_SHIFT            3 /* established */
#define VOUT_VHW_CFG_PORT_CD_SELECT_MASK             0x1ull
#define VOUT_VHW_CFG_PORT_CD_SELECT_INPLACE          (VOUT_VHW_CFG_PORT_CD_SELECT_MASK << VOUT_VHW_CFG_PORT_CD_SELECT_SHIFT)
#define VOUT_VHW_CFG_PORT_CD_RESET_SHIFT             2 /* established */
#define VOUT_VHW_CFG_PORT_CD_RESET_MASK              0x1ull
#define VOUT_VHW_CFG_PORT_CD_RESET_INPLACE           (VOUT_VHW_CFG_PORT_CD_RESET_MASK << VOUT_VHW_CFG_PORT_CD_RESET_SHIFT)
#define VOUT_VHW_CFG_PORT_AB_SELECT_SHIFT            1 /* established */
#define VOUT_VHW_CFG_PORT_AB_SELECT_MASK             0x1ull
#define VOUT_VHW_CFG_PORT_AB_SELECT_INPLACE          (VOUT_VHW_CFG_PORT_AB_SELECT_MASK << VOUT_VHW_CFG_PORT_AB_SELECT_SHIFT)
#define VOUT_VHW_CFG_PORT_AB_RESET_SHIFT             0 /* established */
#define VOUT_VHW_CFG_PORT_AB_RESET_MASK              0x1ull
#define VOUT_VHW_CFG_PORT_AB_RESET_INPLACE           (VOUT_VHW_CFG_PORT_AB_RESET_MASK << VOUT_VHW_CFG_PORT_AB_RESET_SHIFT)

/* dma_desc: rw64, space mace_video_out, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VOUT_DMA_DESC_OFFSET                         0x80u /* established */
#define VOUT_DMA_DESC_COUNT                          8
#define VOUT_DMA_DESC_STRIDE                         8

#endif /* VOUT_GEN_H */
