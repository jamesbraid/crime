/* generated from defs/mace_video_in.toml by defs-gen - do not edit, change the source */
/* O2 MACE video input channel registers */
#ifndef VIN_GEN_H
#define VIN_GEN_H

#include <stdint.h>


/* control: rw64, space mace_video_in, reset 0x0; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_CONTROL_OFFSET                           0x0u /* established */
#define VIN_CONTROL_INT_GPIB_SHIFT                   9 /* established */
#define VIN_CONTROL_INT_GPIB_MASK                    0x1ull
#define VIN_CONTROL_INT_GPIB_INPLACE                 (VIN_CONTROL_INT_GPIB_MASK << VIN_CONTROL_INT_GPIB_SHIFT)
#define VIN_CONTROL_INT_CRIME_ERROR_SHIFT            8 /* established */
#define VIN_CONTROL_INT_CRIME_ERROR_MASK             0x1ull
#define VIN_CONTROL_INT_CRIME_ERROR_INPLACE          (VIN_CONTROL_INT_CRIME_ERROR_MASK << VIN_CONTROL_INT_CRIME_ERROR_SHIFT)
#define VIN_CONTROL_INT_FIFO_OVERFLOW_SHIFT          7 /* established */
#define VIN_CONTROL_INT_FIFO_OVERFLOW_MASK           0x1ull
#define VIN_CONTROL_INT_FIFO_OVERFLOW_INPLACE        (VIN_CONTROL_INT_FIFO_OVERFLOW_MASK << VIN_CONTROL_INT_FIFO_OVERFLOW_SHIFT)
#define VIN_CONTROL_INT_V_OVERFLOW_SHIFT             6 /* established */
#define VIN_CONTROL_INT_V_OVERFLOW_MASK              0x1ull
#define VIN_CONTROL_INT_V_OVERFLOW_INPLACE           (VIN_CONTROL_INT_V_OVERFLOW_MASK << VIN_CONTROL_INT_V_OVERFLOW_SHIFT)
#define VIN_CONTROL_INT_H_OVERFLOW_SHIFT             5 /* established */
#define VIN_CONTROL_INT_H_OVERFLOW_MASK              0x1ull
#define VIN_CONTROL_INT_H_OVERFLOW_INPLACE           (VIN_CONTROL_INT_H_OVERFLOW_MASK << VIN_CONTROL_INT_H_OVERFLOW_SHIFT)
#define VIN_CONTROL_INT_BUFFER_SHIFT                 4 /* established */
#define VIN_CONTROL_INT_BUFFER_MASK                  0x1ull
#define VIN_CONTROL_INT_BUFFER_INPLACE               (VIN_CONTROL_INT_BUFFER_MASK << VIN_CONTROL_INT_BUFFER_SHIFT)
#define VIN_CONTROL_INT_LOST_SYNC_SHIFT              3 /* established */
#define VIN_CONTROL_INT_LOST_SYNC_MASK               0x1ull
#define VIN_CONTROL_INT_LOST_SYNC_INPLACE            (VIN_CONTROL_INT_LOST_SYNC_MASK << VIN_CONTROL_INT_LOST_SYNC_SHIFT)
#define VIN_CONTROL_INT_DMA_DONE_SHIFT               2 /* established */
#define VIN_CONTROL_INT_DMA_DONE_MASK                0x1ull
#define VIN_CONTROL_INT_DMA_DONE_INPLACE             (VIN_CONTROL_INT_DMA_DONE_MASK << VIN_CONTROL_INT_DMA_DONE_SHIFT)
#define VIN_CONTROL_INT_VSYNC_SHIFT                  1 /* established */
#define VIN_CONTROL_INT_VSYNC_MASK                   0x1ull
#define VIN_CONTROL_INT_VSYNC_INPLACE                (VIN_CONTROL_INT_VSYNC_MASK << VIN_CONTROL_INT_VSYNC_SHIFT)
#define VIN_CONTROL_DMA_ENABLE_SHIFT                 0 /* established */
#define VIN_CONTROL_DMA_ENABLE_MASK                  0x1ull
#define VIN_CONTROL_DMA_ENABLE_INPLACE               (VIN_CONTROL_DMA_ENABLE_MASK << VIN_CONTROL_DMA_ENABLE_SHIFT)

/* status: r64, space mace_video_in, reset 0x0; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_STATUS_OFFSET                            0x8u /* established */
#define VIN_STATUS_SYNC_PRESENT_SHIFT                10 /* established */
#define VIN_STATUS_SYNC_PRESENT_MASK                 0x1ull
#define VIN_STATUS_SYNC_PRESENT_INPLACE              (VIN_STATUS_SYNC_PRESENT_MASK << VIN_STATUS_SYNC_PRESENT_SHIFT)
#define VIN_STATUS_GPIB_SHIFT                        9 /* established */
#define VIN_STATUS_GPIB_MASK                         0x1ull
#define VIN_STATUS_GPIB_INPLACE                      (VIN_STATUS_GPIB_MASK << VIN_STATUS_GPIB_SHIFT)
#define VIN_STATUS_CRIME_ERROR_SHIFT                 8 /* established */
#define VIN_STATUS_CRIME_ERROR_MASK                  0x1ull
#define VIN_STATUS_CRIME_ERROR_INPLACE               (VIN_STATUS_CRIME_ERROR_MASK << VIN_STATUS_CRIME_ERROR_SHIFT)
#define VIN_STATUS_FIFO_OVERFLOW_SHIFT               7 /* established */
#define VIN_STATUS_FIFO_OVERFLOW_MASK                0x1ull
#define VIN_STATUS_FIFO_OVERFLOW_INPLACE             (VIN_STATUS_FIFO_OVERFLOW_MASK << VIN_STATUS_FIFO_OVERFLOW_SHIFT)
#define VIN_STATUS_V_OVERFLOW_SHIFT                  6 /* established */
#define VIN_STATUS_V_OVERFLOW_MASK                   0x1ull
#define VIN_STATUS_V_OVERFLOW_INPLACE                (VIN_STATUS_V_OVERFLOW_MASK << VIN_STATUS_V_OVERFLOW_SHIFT)
#define VIN_STATUS_H_OVERFLOW_SHIFT                  5 /* established */
#define VIN_STATUS_H_OVERFLOW_MASK                   0x1ull
#define VIN_STATUS_H_OVERFLOW_INPLACE                (VIN_STATUS_H_OVERFLOW_MASK << VIN_STATUS_H_OVERFLOW_SHIFT)
#define VIN_STATUS_BUFFER_SHIFT                      4 /* established */
#define VIN_STATUS_BUFFER_MASK                       0x1ull
#define VIN_STATUS_BUFFER_INPLACE                    (VIN_STATUS_BUFFER_MASK << VIN_STATUS_BUFFER_SHIFT)
#define VIN_STATUS_LOST_SYNC_SHIFT                   3 /* established */
#define VIN_STATUS_LOST_SYNC_MASK                    0x1ull
#define VIN_STATUS_LOST_SYNC_INPLACE                 (VIN_STATUS_LOST_SYNC_MASK << VIN_STATUS_LOST_SYNC_SHIFT)
#define VIN_STATUS_DMA_DONE_SHIFT                    2 /* established */
#define VIN_STATUS_DMA_DONE_MASK                     0x1ull
#define VIN_STATUS_DMA_DONE_INPLACE                  (VIN_STATUS_DMA_DONE_MASK << VIN_STATUS_DMA_DONE_SHIFT)
#define VIN_STATUS_VSYNC_SHIFT                       1 /* established */
#define VIN_STATUS_VSYNC_MASK                        0x1ull
#define VIN_STATUS_VSYNC_INPLACE                     (VIN_STATUS_VSYNC_MASK << VIN_STATUS_VSYNC_SHIFT)
#define VIN_STATUS_DMA_ACTIVE_SHIFT                  0 /* established */
#define VIN_STATUS_DMA_ACTIVE_MASK                   0x1ull
#define VIN_STATUS_DMA_ACTIVE_INPLACE                (VIN_STATUS_DMA_ACTIVE_MASK << VIN_STATUS_DMA_ACTIVE_SHIFT)

/* config: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_CONFIG_OFFSET                            0x10u /* established */
#define VIN_CONFIG_INTERLEAVED_SHIFT                 16 /* established */
#define VIN_CONFIG_INTERLEAVED_MASK                  0x1ull
#define VIN_CONFIG_INTERLEAVED_INPLACE               (VIN_CONFIG_INTERLEAVED_MASK << VIN_CONFIG_INTERLEAVED_SHIFT)
#define VIN_CONFIG_MEM_MODE_SHIFT                    14 /* established */
#define VIN_CONFIG_MEM_MODE_MASK                     0x3ull
#define VIN_CONFIG_MEM_MODE_INPLACE                  (VIN_CONFIG_MEM_MODE_MASK << VIN_CONFIG_MEM_MODE_SHIFT)
#define VIN_CONFIG_MEM_MODE_LINEAR                   0 /* established */
#define VIN_CONFIG_MEM_MODE_TILED                    1 /* established */
#define VIN_CONFIG_MEM_MODE_MIPMAP_512X128           2 /* established */
#define VIN_CONFIG_MEM_MODE_MIPMAP_512X256           3 /* established */
#define VIN_CONFIG_DITHER_SHIFT                      13 /* established */
#define VIN_CONFIG_DITHER_MASK                       0x1ull
#define VIN_CONFIG_DITHER_INPLACE                    (VIN_CONFIG_DITHER_MASK << VIN_CONFIG_DITHER_SHIFT)
#define VIN_CONFIG_PIXEL_FORMAT_SHIFT                10 /* established */
#define VIN_CONFIG_PIXEL_FORMAT_MASK                 0x7ull
#define VIN_CONFIG_PIXEL_FORMAT_INPLACE              (VIN_CONFIG_PIXEL_FORMAT_MASK << VIN_CONFIG_PIXEL_FORMAT_SHIFT)
#define VIN_CONFIG_PIXEL_FORMAT_RGBA32               0 /* established */
#define VIN_CONFIG_PIXEL_FORMAT_RGBA5551             1 /* established */
#define VIN_CONFIG_PIXEL_FORMAT_YUV422_8             2 /* established */
#define VIN_CONFIG_PIXEL_FORMAT_YUV422_10            3 /* established */
#define VIN_CONFIG_PIXEL_FORMAT_ABGR32               4 /* established */
#define VIN_CONFIG_PIXEL_FORMAT_YUVA4224             5 /* established */
#define VIN_CONFIG_SOF_COUNT_SHIFT                   6 /* established */
#define VIN_CONFIG_SOF_COUNT_MASK                    0xfull
#define VIN_CONFIG_SOF_COUNT_INPLACE                 (VIN_CONFIG_SOF_COUNT_MASK << VIN_CONFIG_SOF_COUNT_SHIFT)
#define VIN_CONFIG_D1_ECC_SHIFT                      5 /* established */
#define VIN_CONFIG_D1_ECC_MASK                       0x1ull
#define VIN_CONFIG_D1_ECC_INPLACE                    (VIN_CONFIG_D1_ECC_MASK << VIN_CONFIG_D1_ECC_SHIFT)
#define VIN_CONFIG_D1_PRECISION_SHIFT                4 /* established */
#define VIN_CONFIG_D1_PRECISION_MASK                 0x1ull
#define VIN_CONFIG_D1_PRECISION_INPLACE              (VIN_CONFIG_D1_PRECISION_MASK << VIN_CONFIG_D1_PRECISION_SHIFT)
#define VIN_CONFIG_SOURCE_SHIFT                      2 /* established */
#define VIN_CONFIG_SOURCE_MASK                       0x3ull
#define VIN_CONFIG_SOURCE_INPLACE                    (VIN_CONFIG_SOURCE_MASK << VIN_CONFIG_SOURCE_SHIFT)
#define VIN_CONFIG_SOURCE_PRIMARY                    0 /* established */
#define VIN_CONFIG_SOURCE_SECONDARY                  1 /* established */
#define VIN_CONFIG_SOURCE_LOOPBACK_E                 2 /* established */
#define VIN_CONFIG_SOURCE_LOOPBACK_F                 3 /* established */
#define VIN_CONFIG_D1_RESET_SHIFT                    1 /* established */
#define VIN_CONFIG_D1_RESET_MASK                     0x1ull
#define VIN_CONFIG_D1_RESET_INPLACE                  (VIN_CONFIG_D1_RESET_MASK << VIN_CONFIG_D1_RESET_SHIFT)
#define VIN_CONFIG_CHANNEL_RESET_SHIFT               0 /* established */
#define VIN_CONFIG_CHANNEL_RESET_MASK                0x1ull
#define VIN_CONFIG_CHANNEL_RESET_INPLACE             (VIN_CONFIG_CHANNEL_RESET_MASK << VIN_CONFIG_CHANNEL_RESET_SHIFT)

/* next_desc: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_NEXT_DESC_OFFSET                         0x18u /* established */
#define VIN_NEXT_DESC_TABLE_ADDRESS_SHIFT            6 /* established */
#define VIN_NEXT_DESC_TABLE_ADDRESS_MASK             0x3ffffffull
#define VIN_NEXT_DESC_TABLE_ADDRESS_INPLACE          (VIN_NEXT_DESC_TABLE_ADDRESS_MASK << VIN_NEXT_DESC_TABLE_ADDRESS_SHIFT)
#define VIN_NEXT_DESC_VALID_SHIFT                    2 /* established */
#define VIN_NEXT_DESC_VALID_MASK                     0x1ull
#define VIN_NEXT_DESC_VALID_INPLACE                  (VIN_NEXT_DESC_VALID_MASK << VIN_NEXT_DESC_VALID_SHIFT)
#define VIN_NEXT_DESC_FIELD_SELECT_SHIFT             0 /* established */
#define VIN_NEXT_DESC_FIELD_SELECT_MASK              0x3ull
#define VIN_NEXT_DESC_FIELD_SELECT_INPLACE           (VIN_NEXT_DESC_FIELD_SELECT_MASK << VIN_NEXT_DESC_FIELD_SELECT_SHIFT)
#define VIN_NEXT_DESC_FIELD_SELECT_EITHER            0 /* established */
#define VIN_NEXT_DESC_FIELD_SELECT_ODD               2 /* established */
#define VIN_NEXT_DESC_FIELD_SELECT_EVEN              3 /* established */

/* fld_offset: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_FLD_OFFSET_OFFSET                        0x20u /* established */
#define VIN_FLD_OFFSET_BYTE_OFFSET_SHIFT             3 /* established */
#define VIN_FLD_OFFSET_BYTE_OFFSET_MASK              0x1fffull
#define VIN_FLD_OFFSET_BYTE_OFFSET_INPLACE           (VIN_FLD_OFFSET_BYTE_OFFSET_MASK << VIN_FLD_OFFSET_BYTE_OFFSET_SHIFT)

/* line_width: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_LINE_WIDTH_OFFSET                        0x28u /* established */
#define VIN_LINE_WIDTH_BYTES_SHIFT                   3 /* established */
#define VIN_LINE_WIDTH_BYTES_MASK                    0x1ffull
#define VIN_LINE_WIDTH_BYTES_INPLACE                 (VIN_LINE_WIDTH_BYTES_MASK << VIN_LINE_WIDTH_BYTES_SHIFT)

/* hclip_odd: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_HCLIP_ODD_OFFSET                         0x30u /* established */
#define VIN_HCLIP_ODD_FILTER_MODE_SHIFT              39 /* established */
#define VIN_HCLIP_ODD_FILTER_MODE_MASK               0x3ull
#define VIN_HCLIP_ODD_FILTER_MODE_INPLACE            (VIN_HCLIP_ODD_FILTER_MODE_MASK << VIN_HCLIP_ODD_FILTER_MODE_SHIFT)
#define VIN_HCLIP_ODD_FILTER_MODE_NONE               0 /* established */
#define VIN_HCLIP_ODD_FILTER_MODE_PAL_NONSQUARE      1 /* established */
#define VIN_HCLIP_ODD_FILTER_MODE_NTSC_NONSQUARE     2 /* established */
#define VIN_HCLIP_ODD_FILTER_MODE_HALF               3 /* established */
#define VIN_HCLIP_ODD_SCALE_ON_SHIFT                 38 /* established */
#define VIN_HCLIP_ODD_SCALE_ON_MASK                  0x1ull
#define VIN_HCLIP_ODD_SCALE_ON_INPLACE               (VIN_HCLIP_ODD_SCALE_ON_MASK << VIN_HCLIP_ODD_SCALE_ON_SHIFT)
#define VIN_HCLIP_ODD_SCALE_RATIO_SHIFT              30 /* established */
#define VIN_HCLIP_ODD_SCALE_RATIO_MASK               0xffull
#define VIN_HCLIP_ODD_SCALE_RATIO_INPLACE            (VIN_HCLIP_ODD_SCALE_RATIO_MASK << VIN_HCLIP_ODD_SCALE_RATIO_SHIFT)
#define VIN_HCLIP_ODD_FILT_COUNT_SHIFT               20 /* established */
#define VIN_HCLIP_ODD_FILT_COUNT_MASK                0x3ffull
#define VIN_HCLIP_ODD_FILT_COUNT_INPLACE             (VIN_HCLIP_ODD_FILT_COUNT_MASK << VIN_HCLIP_ODD_FILT_COUNT_SHIFT)
#define VIN_HCLIP_ODD_END_SHIFT                      10 /* established */
#define VIN_HCLIP_ODD_END_MASK                       0x3ffull
#define VIN_HCLIP_ODD_END_INPLACE                    (VIN_HCLIP_ODD_END_MASK << VIN_HCLIP_ODD_END_SHIFT)
#define VIN_HCLIP_ODD_START_SHIFT                    0 /* established */
#define VIN_HCLIP_ODD_START_MASK                     0x3ffull
#define VIN_HCLIP_ODD_START_INPLACE                  (VIN_HCLIP_ODD_START_MASK << VIN_HCLIP_ODD_START_SHIFT)

/* vclip_odd: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_VCLIP_ODD_OFFSET                         0x38u /* established */
#define VIN_VCLIP_ODD_SCALE_ON_SHIFT                 38 /* established */
#define VIN_VCLIP_ODD_SCALE_ON_MASK                  0x1ull
#define VIN_VCLIP_ODD_SCALE_ON_INPLACE               (VIN_VCLIP_ODD_SCALE_ON_MASK << VIN_VCLIP_ODD_SCALE_ON_SHIFT)
#define VIN_VCLIP_ODD_SCALE_RATIO_SHIFT              30 /* established */
#define VIN_VCLIP_ODD_SCALE_RATIO_MASK               0xffull
#define VIN_VCLIP_ODD_SCALE_RATIO_INPLACE            (VIN_VCLIP_ODD_SCALE_RATIO_MASK << VIN_VCLIP_ODD_SCALE_RATIO_SHIFT)
#define VIN_VCLIP_ODD_END_SHIFT                      20 /* established */
#define VIN_VCLIP_ODD_END_MASK                       0x3ffull
#define VIN_VCLIP_ODD_END_INPLACE                    (VIN_VCLIP_ODD_END_MASK << VIN_VCLIP_ODD_END_SHIFT)
#define VIN_VCLIP_ODD_BLANK_END_SHIFT                10 /* established */
#define VIN_VCLIP_ODD_BLANK_END_MASK                 0x3ffull
#define VIN_VCLIP_ODD_BLANK_END_INPLACE              (VIN_VCLIP_ODD_BLANK_END_MASK << VIN_VCLIP_ODD_BLANK_END_SHIFT)
#define VIN_VCLIP_ODD_START_SHIFT                    0 /* established */
#define VIN_VCLIP_ODD_START_MASK                     0x3ffull
#define VIN_VCLIP_ODD_START_INPLACE                  (VIN_VCLIP_ODD_START_MASK << VIN_VCLIP_ODD_START_SHIFT)

/* alpha_odd: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_ALPHA_ODD_OFFSET                         0x40u /* inferred */

/* hclip_even: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_HCLIP_EVEN_OFFSET                        0x48u /* established */
#define VIN_HCLIP_EVEN_FILTER_MODE_SHIFT             39 /* established */
#define VIN_HCLIP_EVEN_FILTER_MODE_MASK              0x3ull
#define VIN_HCLIP_EVEN_FILTER_MODE_INPLACE           (VIN_HCLIP_EVEN_FILTER_MODE_MASK << VIN_HCLIP_EVEN_FILTER_MODE_SHIFT)
#define VIN_HCLIP_EVEN_FILTER_MODE_NONE              0 /* established */
#define VIN_HCLIP_EVEN_FILTER_MODE_PAL_NONSQUARE     1 /* established */
#define VIN_HCLIP_EVEN_FILTER_MODE_NTSC_NONSQUARE    2 /* established */
#define VIN_HCLIP_EVEN_FILTER_MODE_HALF              3 /* established */
#define VIN_HCLIP_EVEN_SCALE_ON_SHIFT                38 /* established */
#define VIN_HCLIP_EVEN_SCALE_ON_MASK                 0x1ull
#define VIN_HCLIP_EVEN_SCALE_ON_INPLACE              (VIN_HCLIP_EVEN_SCALE_ON_MASK << VIN_HCLIP_EVEN_SCALE_ON_SHIFT)
#define VIN_HCLIP_EVEN_SCALE_RATIO_SHIFT             30 /* established */
#define VIN_HCLIP_EVEN_SCALE_RATIO_MASK              0xffull
#define VIN_HCLIP_EVEN_SCALE_RATIO_INPLACE           (VIN_HCLIP_EVEN_SCALE_RATIO_MASK << VIN_HCLIP_EVEN_SCALE_RATIO_SHIFT)
#define VIN_HCLIP_EVEN_FILT_COUNT_SHIFT              20 /* established */
#define VIN_HCLIP_EVEN_FILT_COUNT_MASK               0x3ffull
#define VIN_HCLIP_EVEN_FILT_COUNT_INPLACE            (VIN_HCLIP_EVEN_FILT_COUNT_MASK << VIN_HCLIP_EVEN_FILT_COUNT_SHIFT)
#define VIN_HCLIP_EVEN_END_SHIFT                     10 /* established */
#define VIN_HCLIP_EVEN_END_MASK                      0x3ffull
#define VIN_HCLIP_EVEN_END_INPLACE                   (VIN_HCLIP_EVEN_END_MASK << VIN_HCLIP_EVEN_END_SHIFT)
#define VIN_HCLIP_EVEN_START_SHIFT                   0 /* established */
#define VIN_HCLIP_EVEN_START_MASK                    0x3ffull
#define VIN_HCLIP_EVEN_START_INPLACE                 (VIN_HCLIP_EVEN_START_MASK << VIN_HCLIP_EVEN_START_SHIFT)

/* vclip_even: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_VCLIP_EVEN_OFFSET                        0x50u /* established */
#define VIN_VCLIP_EVEN_SCALE_ON_SHIFT                38 /* established */
#define VIN_VCLIP_EVEN_SCALE_ON_MASK                 0x1ull
#define VIN_VCLIP_EVEN_SCALE_ON_INPLACE              (VIN_VCLIP_EVEN_SCALE_ON_MASK << VIN_VCLIP_EVEN_SCALE_ON_SHIFT)
#define VIN_VCLIP_EVEN_SCALE_RATIO_SHIFT             30 /* established */
#define VIN_VCLIP_EVEN_SCALE_RATIO_MASK              0xffull
#define VIN_VCLIP_EVEN_SCALE_RATIO_INPLACE           (VIN_VCLIP_EVEN_SCALE_RATIO_MASK << VIN_VCLIP_EVEN_SCALE_RATIO_SHIFT)
#define VIN_VCLIP_EVEN_END_SHIFT                     20 /* established */
#define VIN_VCLIP_EVEN_END_MASK                      0x3ffull
#define VIN_VCLIP_EVEN_END_INPLACE                   (VIN_VCLIP_EVEN_END_MASK << VIN_VCLIP_EVEN_END_SHIFT)
#define VIN_VCLIP_EVEN_BLANK_END_SHIFT               10 /* established */
#define VIN_VCLIP_EVEN_BLANK_END_MASK                0x3ffull
#define VIN_VCLIP_EVEN_BLANK_END_INPLACE             (VIN_VCLIP_EVEN_BLANK_END_MASK << VIN_VCLIP_EVEN_BLANK_END_SHIFT)
#define VIN_VCLIP_EVEN_START_SHIFT                   0 /* established */
#define VIN_VCLIP_EVEN_START_MASK                    0x3ffull
#define VIN_VCLIP_EVEN_START_INPLACE                 (VIN_VCLIP_EVEN_START_MASK << VIN_VCLIP_EVEN_START_SHIFT)

/* alpha_even: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_ALPHA_EVEN_OFFSET                        0x58u /* inferred */

/* dma_desc: rw64, space mace_video_in, reset unknown; published MACE 2.0 specification, video chapter, and shipped IRIX software readings */
#define VIN_DMA_DESC_OFFSET                          0x80u /* established */
#define VIN_DMA_DESC_COUNT                           8
#define VIN_DMA_DESC_STRIDE                          8

#endif /* VIN_GEN_H */
