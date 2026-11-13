/* generated from devices/mte/registers.toml by defs-gen - do not edit, change the source */
/* O2 CRIME memory transfer engine registers and tile layout */
#ifndef MTE_GEN_H
#define MTE_GEN_H

#include <stdint.h>


/*
 * Table 7-15 gives the register as 32 bits, readable and writable (established, [spec] PDF 183). Bits 31:12 are reserved (established, [spec] PDF 184). Bit 11 selects clear (0) or copy (1) (established, [spec] PDF 184). Bit 10 is described as enabling stipple application during clear operations; the table prints its values as 0 and 1 with enable and disable in that order. The X server sets bit 10 for its stippled fill (established, docs/mte.md), so 1 means enabled (inferred). Pixel depth value 3 is reserved (established, [spec] PDF 184). Buffer selector value 7 is reserved in both the source and destination fields (established, [spec] PDF 184 and 185). Bits 1 and 0 ask for ECC when reading the source and when writing the destination (established, [spec] PDF 185).
 */
/* mode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_MODE_OFFSET                              0x3000u /* established */
#define MTE_MODE_COPY_SHIFT                          11 /* established */
#define MTE_MODE_COPY_MASK                           0x1u
#define MTE_MODE_COPY_INPLACE                        (MTE_MODE_COPY_MASK << MTE_MODE_COPY_SHIFT)
#define MTE_MODE_STIPPLE_SHIFT                       10 /* established */
#define MTE_MODE_STIPPLE_MASK                        0x1u
#define MTE_MODE_STIPPLE_INPLACE                     (MTE_MODE_STIPPLE_MASK << MTE_MODE_STIPPLE_SHIFT)
#define MTE_MODE_DEPTH_SHIFT                         8 /* established */
#define MTE_MODE_DEPTH_MASK                          0x3u
#define MTE_MODE_DEPTH_INPLACE                       (MTE_MODE_DEPTH_MASK << MTE_MODE_DEPTH_SHIFT)
#define MTE_MODE_DEPTH_BITS8                         0 /* established */
#define MTE_MODE_DEPTH_BITS16                        1 /* established */
#define MTE_MODE_DEPTH_BITS32                        2 /* established */
#define MTE_MODE_SRC_BUF_SHIFT                       5 /* established */
#define MTE_MODE_SRC_BUF_MASK                        0x7u
#define MTE_MODE_SRC_BUF_INPLACE                     (MTE_MODE_SRC_BUF_MASK << MTE_MODE_SRC_BUF_SHIFT)
#define MTE_MODE_SRC_BUF_FB_A                        0 /* established */
#define MTE_MODE_SRC_BUF_FB_B                        1 /* established */
#define MTE_MODE_SRC_BUF_FB_C                        2 /* established */
#define MTE_MODE_SRC_BUF_TEX                         3 /* established */
#define MTE_MODE_SRC_BUF_LIN_A                       4 /* established */
#define MTE_MODE_SRC_BUF_LIN_B                       5 /* established */
#define MTE_MODE_SRC_BUF_CID                         6 /* established */
#define MTE_MODE_DST_BUF_SHIFT                       2 /* established */
#define MTE_MODE_DST_BUF_MASK                        0x7u
#define MTE_MODE_DST_BUF_INPLACE                     (MTE_MODE_DST_BUF_MASK << MTE_MODE_DST_BUF_SHIFT)
#define MTE_MODE_DST_BUF_FB_A                        0 /* established */
#define MTE_MODE_DST_BUF_FB_B                        1 /* established */
#define MTE_MODE_DST_BUF_FB_C                        2 /* established */
#define MTE_MODE_DST_BUF_TEX                         3 /* established */
#define MTE_MODE_DST_BUF_LIN_A                       4 /* established */
#define MTE_MODE_DST_BUF_LIN_B                       5 /* established */
#define MTE_MODE_DST_BUF_CID                         6 /* established */
#define MTE_MODE_SRC_ECC_SHIFT                       1 /* established */
#define MTE_MODE_SRC_ECC_MASK                        0x1u
#define MTE_MODE_SRC_ECC_INPLACE                     (MTE_MODE_SRC_ECC_MASK << MTE_MODE_SRC_ECC_SHIFT)
#define MTE_MODE_DST_ECC_SHIFT                       0 /* established */
#define MTE_MODE_DST_ECC_MASK                        0x1u
#define MTE_MODE_DST_ECC_INPLACE                     (MTE_MODE_DST_ECC_MASK << MTE_MODE_DST_ECC_SHIFT)

/*
 * Table 7-15 gives the byte mask as 32 bits, readable and writable (established, [spec] PDF 183). Its bit polarity and bit-to-byte order are not stated in the specification (unknown).
 */
/* bytemask: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_BYTEMASK_OFFSET                          0x3008u /* established */

/*
 * Write-only, and marked non-global in Table 7-15 (established, [spec] PDF 183). Reads are not defined.
 */
/* stipplemask: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_STIPPLEMASK_OFFSET                       0x3010u /* established */

/*
 * The clear value, 32 bits, readable and writable (established, [spec] PDF 183).
 */
/* fg: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_FG_OFFSET                                0x3018u /* established */

/*
 * Source start address, framebuffer or linear, 32 bits, readable and writable (established, [spec] PDF 183).
 */
/* src0: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_SRC0_OFFSET                              0x3020u /* established */

/*
 * Second source address word, framebuffer or linear, 32 bits, readable and writable. Table 7-15 describes it as a start address, the same as src0 (established, [spec] PDF 183).
 */
/* src1: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_SRC1_OFFSET                              0x3028u /* established */

/*
 * Destination start address, framebuffer or linear, 32 bits, write-only and marked non-global (established, [spec] PDF 183).
 */
/* dst0: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_DST0_OFFSET                              0x3030u /* established */

/*
 * Destination end address, framebuffer or linear, 32 bits, write-only and marked non-global (established, [spec] PDF 183).
 */
/* dst1: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_DST1_OFFSET                              0x3038u /* established */

/*
 * Source row step, 32 bits, readable and writable (established, [spec] PDF 184).
 */
/* src_ystep: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_SRC_YSTEP_OFFSET                         0x3040u /* established */

/*
 * Destination row step, 32 bits, readable and writable (established, [spec] PDF 184).
 */
/* dst_ystep: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_DST_YSTEP_OFFSET                         0x3048u /* established */

/*
 * Null register, write-only and marked non-global (established, [spec] PDF 184). Its effect is not stated (see docs/mte.md).
 */
/* null: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_NULL_OFFSET                              0x3070u /* established */

/*
 * Flush command, 32 bits, write-only (established, [spec] PDF 184).
 */
/* flush: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_FLUSH_OFFSET                             0x3078u /* established */

/* word ADDR: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define MTE_ADDR_WIDTH                               32 /* established */
#define MTE_ADDR_BYTE_COL_SHIFT                      16 /* established */
#define MTE_ADDR_BYTE_COL_MASK                       0xffffu
#define MTE_ADDR_BYTE_COL_INPLACE                    (MTE_ADDR_BYTE_COL_MASK << MTE_ADDR_BYTE_COL_SHIFT)
#define MTE_ADDR_ROW_SHIFT                           0 /* established */
#define MTE_ADDR_ROW_MASK                            0xffffu
#define MTE_ADDR_ROW_INPLACE                         (MTE_ADDR_ROW_MASK << MTE_ADDR_ROW_SHIFT)

#define MTE_HOST_CHUNK_BYTES                         0x20000u /* established */
#define MTE_MODE_HOST_CLEAR                          0x11u /* established */
#define MTE_MODE_HOST_COPY                           0x897u /* established */
#define MTE_MODE_X_COPY                              0x820u /* established */
#define MTE_SUBTILE_BLOCK_BYTES                      0x20u /* inferred */
#define MTE_SUBTILE_BYTES                            0x2000u /* inferred */
#define MTE_TILE_BYTES                               0x10000u /* established */
#define MTE_TILE_ROWS                                0x80u /* established */
#define MTE_TILE_ROW_BYTES                           0x200u /* established */
#define MTE_X_BLOCK_BYTES                            0x100u /* established */
#define MTE_X_ROWS_16                                0x10u /* established */
#define MTE_X_ROWS_32                                0x8u /* established */

#endif /* MTE_GEN_H */
