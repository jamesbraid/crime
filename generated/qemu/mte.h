/* generated from devices/mte/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 5 */
/* input sha256 13ecc6567984307c9c298025a4a617560d9d1dccbd1bea5f87664debe460f641 */
/* O2 CRIME memory transfer engine registers and tile layout */
/* Names are IP32_MTE_*; name source: ours. */
#ifndef HW_SGI_GPU_IP32_MTE_REGS_H
#define HW_SGI_GPU_IP32_MTE_REGS_H

#include "hw/core/registerfields.h"

REG32(IP32_MTE_MODE, 0x3000) /* established */
FIELD(IP32_MTE_MODE, COPY, 11, 1) /* established */
FIELD(IP32_MTE_MODE, STIPPLE, 10, 1) /* established */
FIELD(IP32_MTE_MODE, DEPTH, 8, 2) /* established */
#define IP32_MTE_MODE_DEPTH_BITS8 0 /* established */
#define IP32_MTE_MODE_DEPTH_BITS16 1 /* established */
#define IP32_MTE_MODE_DEPTH_BITS32 2 /* established */
FIELD(IP32_MTE_MODE, SRC_BUF, 5, 3) /* established */
#define IP32_MTE_MODE_SRC_BUF_FB_A 0 /* established */
#define IP32_MTE_MODE_SRC_BUF_FB_B 1 /* established */
#define IP32_MTE_MODE_SRC_BUF_FB_C 2 /* established */
#define IP32_MTE_MODE_SRC_BUF_TEX 3 /* established */
#define IP32_MTE_MODE_SRC_BUF_LIN_A 4 /* established */
#define IP32_MTE_MODE_SRC_BUF_LIN_B 5 /* established */
#define IP32_MTE_MODE_SRC_BUF_CID 6 /* established */
FIELD(IP32_MTE_MODE, DST_BUF, 2, 3) /* established */
#define IP32_MTE_MODE_DST_BUF_FB_A 0 /* established */
#define IP32_MTE_MODE_DST_BUF_FB_B 1 /* established */
#define IP32_MTE_MODE_DST_BUF_FB_C 2 /* established */
#define IP32_MTE_MODE_DST_BUF_TEX 3 /* established */
#define IP32_MTE_MODE_DST_BUF_LIN_A 4 /* established */
#define IP32_MTE_MODE_DST_BUF_LIN_B 5 /* established */
#define IP32_MTE_MODE_DST_BUF_CID 6 /* established */
FIELD(IP32_MTE_MODE, SRC_ECC, 1, 1) /* established */
FIELD(IP32_MTE_MODE, DST_ECC, 0, 1) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_BYTEMASK, 0x3008)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_STIPPLEMASK, 0x3010)

REG32(IP32_MTE_FG, 0x3018) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_SRC0, 0x3020)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_SRC1, 0x3028)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_DST0, 0x3030)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_DST1, 0x3038)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_SRC_YSTEP, 0x3040)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_DST_YSTEP, 0x3048)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_NULL, 0x3070)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine and MTE register tables) */
REG32(IP32_MTE_FLUSH, 0x3078)

#define IP32_MTE_ADDR_WIDTH 32 /* established; word */
FIELD(IP32_MTE_ADDR, BYTE_COL, 16, 16) /* established */
FIELD(IP32_MTE_ADDR, ROW, 0, 16) /* established */

#define IP32_MTE_HOST_CHUNK_BYTES 0x20000u /* established */
#define IP32_MTE_MODE_HOST_CLEAR 0x11u /* established */
#define IP32_MTE_MODE_HOST_COPY 0x897u /* established */
#define IP32_MTE_MODE_X_COPY 0x820u /* established */
#define IP32_MTE_SUBTILE_BLOCK_BYTES 0x20u /* inferred */
#define IP32_MTE_SUBTILE_BYTES 0x2000u /* inferred */
#define IP32_MTE_TILE_BYTES 0x10000u /* established */
#define IP32_MTE_TILE_ROWS 0x80u /* established */
#define IP32_MTE_TILE_ROW_BYTES 0x200u /* established */
#define IP32_MTE_X_BLOCK_BYTES 0x100u /* established */
#define IP32_MTE_X_ROWS_16 0x10u /* established */
#define IP32_MTE_X_ROWS_32 0x8u /* established */

#endif /* HW_SGI_GPU_IP32_MTE_REGS_H */
