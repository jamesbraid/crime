/* generated from defs/mte.toml by defs-gen - do not edit, change the source */
/* O2 CRIME memory transfer engine registers and tile layout */
#ifndef MTE_GEN_H
#define MTE_GEN_H

#include <stdint.h>


/* mode: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_MODE_OFFSET                              0x3000u /* established */
#define MTE_MODE_COPY_SHIFT                          11 /* established */
#define MTE_MODE_COPY_MASK                           0x1ull
#define MTE_MODE_COPY_INPLACE                        (MTE_MODE_COPY_MASK << MTE_MODE_COPY_SHIFT)
#define MTE_MODE_STIPPLE_SHIFT                       10 /* established */
#define MTE_MODE_STIPPLE_MASK                        0x1ull
#define MTE_MODE_STIPPLE_INPLACE                     (MTE_MODE_STIPPLE_MASK << MTE_MODE_STIPPLE_SHIFT)
#define MTE_MODE_DEPTH_SHIFT                         8 /* established */
#define MTE_MODE_DEPTH_MASK                          0x3ull
#define MTE_MODE_DEPTH_INPLACE                       (MTE_MODE_DEPTH_MASK << MTE_MODE_DEPTH_SHIFT)
#define MTE_MODE_DEPTH_BITS8                         0 /* established */
#define MTE_MODE_DEPTH_BITS16                        1 /* established */
#define MTE_MODE_DEPTH_BITS32                        2 /* established */
#define MTE_MODE_SRC_BUF_SHIFT                       5 /* established */
#define MTE_MODE_SRC_BUF_MASK                        0x7ull
#define MTE_MODE_SRC_BUF_INPLACE                     (MTE_MODE_SRC_BUF_MASK << MTE_MODE_SRC_BUF_SHIFT)
#define MTE_MODE_SRC_BUF_FB_A                        0 /* established */
#define MTE_MODE_SRC_BUF_FB_B                        1 /* established */
#define MTE_MODE_SRC_BUF_FB_C                        2 /* established */
#define MTE_MODE_SRC_BUF_TEX                         3 /* established */
#define MTE_MODE_SRC_BUF_LIN_A                       4 /* established */
#define MTE_MODE_SRC_BUF_LIN_B                       5 /* established */
#define MTE_MODE_SRC_BUF_CID                         6 /* established */
#define MTE_MODE_DST_BUF_SHIFT                       2 /* established */
#define MTE_MODE_DST_BUF_MASK                        0x7ull
#define MTE_MODE_DST_BUF_INPLACE                     (MTE_MODE_DST_BUF_MASK << MTE_MODE_DST_BUF_SHIFT)
#define MTE_MODE_DST_BUF_FB_A                        0 /* established */
#define MTE_MODE_DST_BUF_FB_B                        1 /* established */
#define MTE_MODE_DST_BUF_FB_C                        2 /* established */
#define MTE_MODE_DST_BUF_TEX                         3 /* established */
#define MTE_MODE_DST_BUF_LIN_A                       4 /* established */
#define MTE_MODE_DST_BUF_LIN_B                       5 /* established */
#define MTE_MODE_DST_BUF_CID                         6 /* established */
#define MTE_MODE_SRC_ECC_SHIFT                       1 /* established */
#define MTE_MODE_SRC_ECC_MASK                        0x1ull
#define MTE_MODE_SRC_ECC_INPLACE                     (MTE_MODE_SRC_ECC_MASK << MTE_MODE_SRC_ECC_SHIFT)
#define MTE_MODE_DST_ECC_SHIFT                       0 /* established */
#define MTE_MODE_DST_ECC_MASK                        0x1ull
#define MTE_MODE_DST_ECC_INPLACE                     (MTE_MODE_DST_ECC_MASK << MTE_MODE_DST_ECC_SHIFT)

/* bytemask: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_BYTEMASK_OFFSET                          0x3008u /* inferred */

/* stipplemask: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_STIPPLEMASK_OFFSET                       0x3010u /* inferred */

/* fg: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_FG_OFFSET                                0x3018u /* inferred */

/* src0: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_SRC0_OFFSET                              0x3020u /* inferred */

/* src1: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_SRC1_OFFSET                              0x3028u /* inferred */

/* dst0: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_DST0_OFFSET                              0x3030u /* inferred */

/* dst1: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_DST1_OFFSET                              0x3038u /* inferred */

/* src_ystep: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_SRC_YSTEP_OFFSET                         0x3040u /* inferred */

/* dst_ystep: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_DST_YSTEP_OFFSET                         0x3048u /* inferred */

/* null: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_NULL_OFFSET                              0x3070u /* inferred */

/* flush: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_FLUSH_OFFSET                             0x3078u /* inferred */

/* word ADDR: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_ADDR_WIDTH                               32 /* established */
#define MTE_ADDR_BYTE_COL_SHIFT                      16 /* established */
#define MTE_ADDR_BYTE_COL_MASK                       0xffffu
#define MTE_ADDR_BYTE_COL_INPLACE                    (MTE_ADDR_BYTE_COL_MASK << MTE_ADDR_BYTE_COL_SHIFT)
#define MTE_ADDR_ROW_SHIFT                           0 /* established */
#define MTE_ADDR_ROW_MASK                            0xffffu
#define MTE_ADDR_ROW_INPLACE                         (MTE_ADDR_ROW_MASK << MTE_ADDR_ROW_SHIFT)

#define MTE_SUBTILE_BLOCK_BYTES                      0x20u /* inferred */
#define MTE_SUBTILE_BYTES                            0x2000u /* inferred */
#define MTE_TILE_BYTES                               0x10000u /* established */
#define MTE_TILE_ROWS                                0x80u /* established */
#define MTE_TILE_ROW_BYTES                           0x200u /* established */

#endif /* MTE_GEN_H */
