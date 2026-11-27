/* generated from devices/re/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 5 */
/* input sha256 b3997066db69a952bd6f352b0e208ac914191e015e62c72bbe4f3cab396d8de1 */
/* O2 CRIME rendering engine: interface buffer, linear TLBs and clip state */
/* Names are IP32_RE_*; name source: ours. */
#ifndef HW_IP32_RE_REGS_H
#define HW_IP32_RE_REGS_H

#include "hw/core/registerfields.h"

REG64(IP32_RE_IB_DATA, 0x0) /* established */
#define IP32_RE_IB_DATA_COUNT 64
#define IP32_RE_IB_DATA_STRIDE 0x8

REG64(IP32_RE_IB_ADDR, 0x200) /* established */
#define IP32_RE_IB_ADDR_COUNT 64
#define IP32_RE_IB_ADDR_STRIDE 0x8

REG32(IP32_RE_IB_CTL, 0x400) /* established */
FIELD(IP32_RE_IB_CTL, FULL, 21, 7) /* inferred */
FIELD(IP32_RE_IB_CTL, EMPTY, 14, 7) /* inferred */
FIELD(IP32_RE_IB_CTL, STALL, 7, 7) /* inferred */
FIELD(IP32_RE_IB_CTL, COUNT, 0, 7) /* inferred */

REG32(IP32_RE_IB_RESET, 0x408) /* inferred */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_TLB_FB_A, 0x1000)
#define IP32_RE_TLB_FB_A_COUNT 64
#define IP32_RE_TLB_FB_A_STRIDE 0x8

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_TLB_FB_B, 0x1200)
#define IP32_RE_TLB_FB_B_COUNT 64
#define IP32_RE_TLB_FB_B_STRIDE 0x8

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_TLB_FB_C, 0x1400)
#define IP32_RE_TLB_FB_C_COUNT 64
#define IP32_RE_TLB_FB_C_STRIDE 0x8

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_TLB_TEX, 0x1600)
#define IP32_RE_TLB_TEX_COUNT 28
#define IP32_RE_TLB_TEX_STRIDE 0x8

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_TLB_CID, 0x16e0)
#define IP32_RE_TLB_CID_COUNT 4
#define IP32_RE_TLB_CID_STRIDE 0x8

REG64(IP32_RE_TLB_LIN_A, 0x1700) /* established */
#define IP32_RE_TLB_LIN_A_COUNT 16
#define IP32_RE_TLB_LIN_A_STRIDE 0x8

REG64(IP32_RE_TLB_LIN_B, 0x1780) /* established */
#define IP32_RE_TLB_LIN_B_COUNT 16
#define IP32_RE_TLB_LIN_B_STRIDE 0x8

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_BUFMODE_SRC, 0x2000)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_BUFMODE_DST, 0x2008)

REG32(IP32_RE_CLIPMODE, 0x2010) /* inferred */
FIELD(IP32_RE_CLIPMODE, CLIP_ID_TEST, 11, 1) /* inferred */
FIELD(IP32_RE_CLIPMODE, CLIP_ID_MAP, 10, 1) /* inferred */
FIELD(IP32_RE_CLIPMODE, ENABLE, 5, 5) /* established */
FIELD(IP32_RE_CLIPMODE, MODE, 0, 5) /* established */

REG32(IP32_RE_DRAWMODE, 0x2018) /* established */
FIELD(IP32_RE_DRAWMODE, NO_CONFLICT, 23, 1) /* established */
FIELD(IP32_RE_DRAWMODE, GL, 22, 1) /* established */
FIELD(IP32_RE_DRAWMODE, PIXEL_XFER, 21, 1) /* established */
FIELD(IP32_RE_DRAWMODE, SCISSOR, 20, 1) /* established */
FIELD(IP32_RE_DRAWMODE, LINE_STIPPLE, 19, 1) /* established */
FIELD(IP32_RE_DRAWMODE, POLY_STIPPLE, 18, 1) /* established */
FIELD(IP32_RE_DRAWMODE, OPAQUE_STIPPLE, 17, 1) /* established */
FIELD(IP32_RE_DRAWMODE, SHADE, 16, 1) /* established */
FIELD(IP32_RE_DRAWMODE, TEXTURE, 15, 1) /* established */
FIELD(IP32_RE_DRAWMODE, FOG, 14, 1) /* established */
FIELD(IP32_RE_DRAWMODE, COVERAGE, 13, 1) /* established */
FIELD(IP32_RE_DRAWMODE, AA_LINE, 12, 1) /* established */
FIELD(IP32_RE_DRAWMODE, ALPHA_TEST, 11, 1) /* established */
FIELD(IP32_RE_DRAWMODE, ALPHA_BLEND, 10, 1) /* established */
FIELD(IP32_RE_DRAWMODE, LOGIC_OP, 9, 1) /* established */
FIELD(IP32_RE_DRAWMODE, DITHER, 8, 1) /* established */
FIELD(IP32_RE_DRAWMODE, BIT_MASK, 7, 1) /* established */
FIELD(IP32_RE_DRAWMODE, BYTE_MASK, 3, 4) /* established */
FIELD(IP32_RE_DRAWMODE, DEPTH_TEST, 2, 1) /* established */
FIELD(IP32_RE_DRAWMODE, DEPTH_MASK, 1, 1) /* established */
FIELD(IP32_RE_DRAWMODE, STENCIL, 0, 1) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_SCRMASK, 0x2020)
#define IP32_RE_SCRMASK_COUNT 5
#define IP32_RE_SCRMASK_STRIDE 0x8
FIELD(IP32_RE_SCRMASK, MIN_X, 48, 16) /* established */
FIELD(IP32_RE_SCRMASK, MIN_Y, 32, 16) /* established */
FIELD(IP32_RE_SCRMASK, MAX_X, 16, 16) /* established */
FIELD(IP32_RE_SCRMASK, MAX_Y, 0, 16) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_SCISSOR, 0x2048)
FIELD(IP32_RE_SCISSOR, MIN_X, 48, 16) /* established */
FIELD(IP32_RE_SCISSOR, MIN_Y, 32, 16) /* established */
FIELD(IP32_RE_SCISSOR, MAX_X, 16, 16) /* established */
FIELD(IP32_RE_SCISSOR, MAX_Y, 0, 16) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_WINOFFSET_SRC, 0x2050)
FIELD(IP32_RE_WINOFFSET_SRC, X, 16, 16) /* established */
FIELD(IP32_RE_WINOFFSET_SRC, Y, 0, 16) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_WINOFFSET_DST, 0x2058)
FIELD(IP32_RE_WINOFFSET_DST, X, 16, 16) /* established */
FIELD(IP32_RE_WINOFFSET_DST, Y, 0, 16) /* established */

REG32(IP32_RE_PRIMITIVE, 0x2060) /* established */
FIELD(IP32_RE_PRIMITIVE, OP, 24, 8) /* established */
#define IP32_RE_PRIMITIVE_OP_POINT 0 /* established */
#define IP32_RE_PRIMITIVE_OP_LINE 1 /* established */
#define IP32_RE_PRIMITIVE_OP_TRIANGLE 2 /* established */
#define IP32_RE_PRIMITIVE_OP_RECT 3 /* established */
FIELD(IP32_RE_PRIMITIVE, LINE_SKIP_LAST, 18, 1) /* established */
FIELD(IP32_RE_PRIMITIVE, EDGE, 16, 2) /* established */
#define IP32_RE_PRIMITIVE_EDGE_LR_BT 0 /* established */
#define IP32_RE_PRIMITIVE_EDGE_RL_BT 1 /* established */
#define IP32_RE_PRIMITIVE_EDGE_LR_TB 2 /* established */
#define IP32_RE_PRIMITIVE_EDGE_RL_TB 3 /* established */
FIELD(IP32_RE_PRIMITIVE, LINE_WIDTH, 0, 16) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_VERTEX_X, 0x2070)
#define IP32_RE_VERTEX_X_COUNT 3
#define IP32_RE_VERTEX_X_STRIDE 0x4

REG32(IP32_RE_VERTEX_GL, 0x2080) /* established */
#define IP32_RE_VERTEX_GL_COUNT 6
#define IP32_RE_VERTEX_GL_STRIDE 0x4

REG32(IP32_RE_XFER_SRC_ADDR, 0x20a0) /* established */

REG32(IP32_RE_XFER_SRC_STRIDE, 0x20a4) /* established */

REG32(IP32_RE_XFER_SRC_XSTEP, 0x20a8) /* established */

REG32(IP32_RE_XFER_SRC_YSTEP, 0x20ac) /* established */

REG32(IP32_RE_XFER_DST_ADDR, 0x20b0) /* established */

REG32(IP32_RE_XFER_DST_STRIDE, 0x20b4) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_STIPPLE_MODE, 0x20c0)
FIELD(IP32_RE_STIPPLE_MODE, INDEX, 24, 5) /* established */
FIELD(IP32_RE_STIPPLE_MODE, MAX_INDEX, 16, 5) /* inferred */
FIELD(IP32_RE_STIPPLE_MODE, REPEAT, 8, 8) /* established */
FIELD(IP32_RE_STIPPLE_MODE, MAX_REPEAT, 0, 8) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_STIPPLE_PATTERN, 0x20c4)

REG32(IP32_RE_FG_COLOR, 0x20d0) /* established */

REG32(IP32_RE_BG_COLOR, 0x20d8) /* established */

REG32(IP32_RE_SHADE_START, 0x20e0) /* established */
#define IP32_RE_SHADE_START_COUNT 4
#define IP32_RE_SHADE_START_STRIDE 0x4

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DRDX, 0x20f0)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DGDX, 0x20f4)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DRDY, 0x20f8)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DGDY, 0x20fc)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DBDX, 0x2100)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DADX, 0x2104)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DBDY, 0x2108)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_SHADE_DADY, 0x210c)

REG32(IP32_RE_TEX_MODE, 0x2110) /* established */
FIELD(IP32_RE_TEX_MODE, TILED, 24, 1) /* established */
FIELD(IP32_RE_TEX_MODE, TEXEL_TYPE, 20, 4) /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_RGB 1 /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_RGBA 2 /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_RGBA4 4 /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_ALPHA 5 /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_INTENSITY 6 /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_LUMINANCE 7 /* established */
#define IP32_RE_TEX_MODE_TEXEL_TYPE_LUMINANCE_ALPHA 8 /* established */
FIELD(IP32_RE_TEX_MODE, TEXEL_DEPTH, 18, 2) /* established */
#define IP32_RE_TEX_MODE_TEXEL_DEPTH_BITS16 1 /* established */
#define IP32_RE_TEX_MODE_TEXEL_DEPTH_BITS32 2 /* established */
FIELD(IP32_RE_TEX_MODE, MAP_LEVEL, 14, 4) /* established */
FIELD(IP32_RE_TEX_MODE, MAX_LEVEL, 10, 4) /* established */
FIELD(IP32_RE_TEX_MODE, MIN_FILTER, 7, 3) /* established */
#define IP32_RE_TEX_MODE_MIN_FILTER_NEAREST 0 /* established */
#define IP32_RE_TEX_MODE_MIN_FILTER_LINEAR 1 /* established */
#define IP32_RE_TEX_MODE_MIN_FILTER_NEAREST_MIPMAP_NEAREST 2 /* established */
#define IP32_RE_TEX_MODE_MIN_FILTER_LINEAR_MIPMAP_NEAREST 3 /* established */
#define IP32_RE_TEX_MODE_MIN_FILTER_NEAREST_MIPMAP_LINEAR 4 /* established */
#define IP32_RE_TEX_MODE_MIN_FILTER_LINEAR_MIPMAP_LINEAR 5 /* established */
FIELD(IP32_RE_TEX_MODE, MAG_FILTER, 6, 1) /* established */
#define IP32_RE_TEX_MODE_MAG_FILTER_NEAREST 0 /* established */
#define IP32_RE_TEX_MODE_MAG_FILTER_LINEAR 1 /* established */
FIELD(IP32_RE_TEX_MODE, WRAP_S, 4, 2) /* established */
#define IP32_RE_TEX_MODE_WRAP_S_CLAMP 0 /* established */
#define IP32_RE_TEX_MODE_WRAP_S_REPEAT 1 /* established */
#define IP32_RE_TEX_MODE_WRAP_S_CLAMP_TO_EDGE 2 /* established */
#define IP32_RE_TEX_MODE_WRAP_S_CLAMP_TO_BORDER 3 /* established */
FIELD(IP32_RE_TEX_MODE, WRAP_T, 2, 2) /* established */
#define IP32_RE_TEX_MODE_WRAP_T_CLAMP 0 /* established */
#define IP32_RE_TEX_MODE_WRAP_T_REPEAT 1 /* established */
#define IP32_RE_TEX_MODE_WRAP_T_CLAMP_TO_EDGE 2 /* established */
#define IP32_RE_TEX_MODE_WRAP_T_CLAMP_TO_BORDER 3 /* established */
FIELD(IP32_RE_TEX_MODE, FUNC, 0, 2) /* established */
#define IP32_RE_TEX_MODE_FUNC_MODULATE 0 /* established */
#define IP32_RE_TEX_MODE_FUNC_DECAL 1 /* established */
#define IP32_RE_TEX_MODE_FUNC_BLEND 2 /* established */
#define IP32_RE_TEX_MODE_FUNC_REPLACE 3 /* established */

REG64(IP32_RE_TEX_FORMAT, 0x2118) /* established */
FIELD(IP32_RE_TEX_FORMAT, U_SHIFT, 44, 4) /* established */
FIELD(IP32_RE_TEX_FORMAT, V_SHIFT, 40, 4) /* established */
FIELD(IP32_RE_TEX_FORMAT, U_WRAP_SHIFT, 36, 4) /* established */
FIELD(IP32_RE_TEX_FORMAT, V_WRAP_SHIFT, 32, 4) /* established */
FIELD(IP32_RE_TEX_FORMAT, U_INDEX_MASK, 16, 16) /* established */
FIELD(IP32_RE_TEX_FORMAT, V_INDEX_MASK, 0, 16) /* established */

REG64(IP32_RE_TEX_SQS, 0x2120) /* established */

REG64(IP32_RE_TEX_TQS, 0x2128) /* established */

REG32(IP32_RE_TEX_QS, 0x2130) /* established */

REG32(IP32_RE_TEX_STFLAGS, 0x2134) /* established */
FIELD(IP32_RE_TEX_STFLAGS, T_FLAG, 1, 1) /* established */
FIELD(IP32_RE_TEX_STFLAGS, S_FLAG, 0, 1) /* established */

REG64(IP32_RE_TEX_DSQDX, 0x2138) /* established */

REG64(IP32_RE_TEX_DSQDY, 0x2140) /* established */

REG64(IP32_RE_TEX_DTQDX, 0x2148) /* established */

REG64(IP32_RE_TEX_DTQDY, 0x2150) /* established */

REG32(IP32_RE_TEX_DQDX, 0x2158) /* established */

REG32(IP32_RE_TEX_DQDY, 0x215c) /* established */

REG32(IP32_RE_TEX_BORDER, 0x2160) /* established */

REG32(IP32_RE_TEX_ENVCOLOR, 0x2168) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_FOG_COLOR, 0x2170)
FIELD(IP32_RE_FOG_COLOR, RGB, 8, 24) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_FOG_FS, 0x2178)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_FOG_DFDX, 0x2180)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_FOG_DFDY, 0x2188)

REG32(IP32_RE_AA_LINE, 0x2190) /* established */
FIELD(IP32_RE_AA_LINE, SLOPE, 16, 16) /* established */
FIELD(IP32_RE_AA_LINE, IDEAL, 0, 16) /* established */

REG32(IP32_RE_AA_COV, 0x2194) /* established */
FIELD(IP32_RE_AA_COV, START, 8, 8) /* inferred */
FIELD(IP32_RE_AA_COV, END, 0, 8) /* inferred */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_ALPHATEST, 0x2198)
FIELD(IP32_RE_ALPHATEST, FUNC, 8, 4) /* established */
#define IP32_RE_ALPHATEST_FUNC_NEVER 0 /* established */
#define IP32_RE_ALPHATEST_FUNC_LESS 1 /* established */
#define IP32_RE_ALPHATEST_FUNC_EQUAL 2 /* established */
#define IP32_RE_ALPHATEST_FUNC_LEQUAL 3 /* established */
#define IP32_RE_ALPHATEST_FUNC_GREATER 4 /* established */
#define IP32_RE_ALPHATEST_FUNC_NOTEQUAL 5 /* established */
#define IP32_RE_ALPHATEST_FUNC_GEQUAL 6 /* established */
#define IP32_RE_ALPHATEST_FUNC_ALWAYS 7 /* established */
FIELD(IP32_RE_ALPHATEST, REF, 0, 8) /* established */

REG32(IP32_RE_BLEND_COLOR, 0x21a0) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_BLEND_FUNC, 0x21a8)
FIELD(IP32_RE_BLEND_FUNC, OP, 8, 4) /* established */
#define IP32_RE_BLEND_FUNC_OP_ADD 0 /* established */
#define IP32_RE_BLEND_FUNC_OP_MIN 1 /* established */
#define IP32_RE_BLEND_FUNC_OP_MAX 2 /* established */
#define IP32_RE_BLEND_FUNC_OP_SUBTRACT 3 /* established */
#define IP32_RE_BLEND_FUNC_OP_REVERSE_SUBTRACT 4 /* established */
FIELD(IP32_RE_BLEND_FUNC, SRC, 4, 4) /* established */
#define IP32_RE_BLEND_FUNC_SRC_ZERO 0 /* established */
#define IP32_RE_BLEND_FUNC_SRC_ONE 1 /* established */
#define IP32_RE_BLEND_FUNC_SRC_DST_COLOR 2 /* established */
#define IP32_RE_BLEND_FUNC_SRC_ONE_MINUS_DST_COLOR 3 /* established */
#define IP32_RE_BLEND_FUNC_SRC_SRC_ALPHA 4 /* established */
#define IP32_RE_BLEND_FUNC_SRC_ONE_MINUS_SRC_ALPHA 5 /* established */
#define IP32_RE_BLEND_FUNC_SRC_DST_ALPHA 6 /* established */
#define IP32_RE_BLEND_FUNC_SRC_ONE_MINUS_DST_ALPHA 7 /* established */
#define IP32_RE_BLEND_FUNC_SRC_CONSTANT_COLOR 8 /* established */
#define IP32_RE_BLEND_FUNC_SRC_ONE_MINUS_CONSTANT_COLOR 9 /* established */
#define IP32_RE_BLEND_FUNC_SRC_CONSTANT_ALPHA 10 /* established */
#define IP32_RE_BLEND_FUNC_SRC_ONE_MINUS_CONSTANT_ALPHA 11 /* established */
#define IP32_RE_BLEND_FUNC_SRC_SRC_ALPHA_SATURATE 12 /* established */
FIELD(IP32_RE_BLEND_FUNC, DST, 0, 4) /* established */
#define IP32_RE_BLEND_FUNC_DST_ZERO 0 /* established */
#define IP32_RE_BLEND_FUNC_DST_ONE 1 /* established */
#define IP32_RE_BLEND_FUNC_DST_SRC_COLOR 2 /* established */
#define IP32_RE_BLEND_FUNC_DST_ONE_MINUS_SRC_COLOR 3 /* established */
#define IP32_RE_BLEND_FUNC_DST_SRC_ALPHA 4 /* established */
#define IP32_RE_BLEND_FUNC_DST_ONE_MINUS_SRC_ALPHA 5 /* established */
#define IP32_RE_BLEND_FUNC_DST_DST_ALPHA 6 /* established */
#define IP32_RE_BLEND_FUNC_DST_ONE_MINUS_DST_ALPHA 7 /* established */
#define IP32_RE_BLEND_FUNC_DST_CONSTANT_COLOR 8 /* established */
#define IP32_RE_BLEND_FUNC_DST_ONE_MINUS_CONSTANT_COLOR 9 /* established */
#define IP32_RE_BLEND_FUNC_DST_CONSTANT_ALPHA 10 /* established */
#define IP32_RE_BLEND_FUNC_DST_ONE_MINUS_CONSTANT_ALPHA 11 /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_LOGICOP, 0x21b0)
FIELD(IP32_RE_LOGICOP, CODE, 0, 4) /* inferred */
#define IP32_RE_LOGICOP_CODE_CLEAR 0 /* inferred */
#define IP32_RE_LOGICOP_CODE_AND 1 /* inferred */
#define IP32_RE_LOGICOP_CODE_AND_REVERSE 2 /* inferred */
#define IP32_RE_LOGICOP_CODE_COPY 3 /* inferred */
#define IP32_RE_LOGICOP_CODE_AND_INVERTED 4 /* inferred */
#define IP32_RE_LOGICOP_CODE_NOOP 5 /* inferred */
#define IP32_RE_LOGICOP_CODE_XOR 6 /* inferred */
#define IP32_RE_LOGICOP_CODE_OR 7 /* inferred */
#define IP32_RE_LOGICOP_CODE_NOR 8 /* inferred */
#define IP32_RE_LOGICOP_CODE_EQUIV 9 /* inferred */
#define IP32_RE_LOGICOP_CODE_INVERT 10 /* inferred */
#define IP32_RE_LOGICOP_CODE_OR_REVERSE 11 /* inferred */
#define IP32_RE_LOGICOP_CODE_COPY_INVERTED 12 /* inferred */
#define IP32_RE_LOGICOP_CODE_OR_INVERTED 13 /* inferred */
#define IP32_RE_LOGICOP_CODE_NAND 14 /* inferred */
#define IP32_RE_LOGICOP_CODE_SET 15 /* inferred */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_COLORMASK, 0x21b8)

REG32(IP32_RE_DEPTH_FUNC, 0x21c0) /* established */
FIELD(IP32_RE_DEPTH_FUNC, FUNC, 25, 3) /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_NEVER 0 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_LESS 1 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_EQUAL 2 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_LEQUAL 3 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_GREATER 4 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_NOTEQUAL 5 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_GEQUAL 6 /* inferred */
#define IP32_RE_DEPTH_FUNC_FUNC_ALWAYS 7 /* inferred */
FIELD(IP32_RE_DEPTH_FUNC, TAG_CLEAR, 24, 1) /* unknown */
FIELD(IP32_RE_DEPTH_FUNC, CLEAR, 0, 24) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_DEPTH_ZS, 0x21c8)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_DEPTH_DZDX, 0x21d0)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG64(IP32_RE_DEPTH_DZDY, 0x21d8)

REG32(IP32_RE_STENCIL_MODE, 0x21e0) /* established */
FIELD(IP32_RE_STENCIL_MODE, REF, 24, 8) /* inferred */
FIELD(IP32_RE_STENCIL_MODE, VALUE_MASK, 16, 8) /* inferred */
FIELD(IP32_RE_STENCIL_MODE, FUNC, 12, 4) /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_NEVER 0 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_LESS 1 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_EQUAL 2 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_LEQUAL 3 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_GREATER 4 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_NOTEQUAL 5 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_GEQUAL 6 /* inferred */
#define IP32_RE_STENCIL_MODE_FUNC_ALWAYS 7 /* inferred */
FIELD(IP32_RE_STENCIL_MODE, FAIL_OP, 8, 4) /* inferred */
#define IP32_RE_STENCIL_MODE_FAIL_OP_KEEP 0 /* inferred */
#define IP32_RE_STENCIL_MODE_FAIL_OP_ZERO 1 /* inferred */
#define IP32_RE_STENCIL_MODE_FAIL_OP_REPLACE 2 /* inferred */
#define IP32_RE_STENCIL_MODE_FAIL_OP_INCR 3 /* inferred */
#define IP32_RE_STENCIL_MODE_FAIL_OP_DECR 4 /* inferred */
#define IP32_RE_STENCIL_MODE_FAIL_OP_INVERT 5 /* inferred */
FIELD(IP32_RE_STENCIL_MODE, DEPTH_FAIL_OP, 4, 4) /* inferred */
FIELD(IP32_RE_STENCIL_MODE, PASS_OP, 0, 4) /* inferred */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_STENCIL_MASK, 0x21e8)
FIELD(IP32_RE_STENCIL_MASK, WRITE_MASK, 0, 8) /* inferred */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_PIXPIPE_NULL, 0x21f0)

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), rendering engine register tables) */
REG32(IP32_RE_PIXPIPE_FLUSH, 0x21f8)

REG32(IP32_RE_STATUS, 0x4000) /* established */
FIELD(IP32_RE_STATUS, IDLE, 28, 1) /* established */
FIELD(IP32_RE_STATUS, SETUP_IDLE, 27, 1) /* established */
FIELD(IP32_RE_STATUS, PIXPIPE_IDLE, 26, 1) /* established */
FIELD(IP32_RE_STATUS, MTE_IDLE, 25, 1) /* inferred */
FIELD(IP32_RE_STATUS, LEVEL, 18, 7) /* established */
FIELD(IP32_RE_STATUS, RD_PTR, 12, 6) /* established */
FIELD(IP32_RE_STATUS, WR_PTR, 6, 6) /* established */
FIELD(IP32_RE_STATUS, START, 0, 6) /* inferred */

REG32(IP32_RE_SET_STARTPTR, 0x4008) /* established */

#define IP32_RE_BUFMODE_WIDTH 32 /* established; word */
FIELD(IP32_RE_BUFMODE, BUF_TYPE, 10, 3) /* established */
#define IP32_RE_BUFMODE_BUF_TYPE_FB_A 0 /* established */
#define IP32_RE_BUFMODE_BUF_TYPE_FB_B 1 /* established */
#define IP32_RE_BUFMODE_BUF_TYPE_FB_C 2 /* established */
#define IP32_RE_BUFMODE_BUF_TYPE_LIN_A 4 /* established */
#define IP32_RE_BUFMODE_BUF_TYPE_LIN_B 5 /* established */
FIELD(IP32_RE_BUFMODE, BUF_DEPTH, 8, 2) /* established */
#define IP32_RE_BUFMODE_BUF_DEPTH_BITS8 0 /* established */
#define IP32_RE_BUFMODE_BUF_DEPTH_BITS16 1 /* established */
#define IP32_RE_BUFMODE_BUF_DEPTH_BITS32 2 /* established */
FIELD(IP32_RE_BUFMODE, PIX_TYPE, 4, 4) /* established */
#define IP32_RE_BUFMODE_PIX_TYPE_CI 0 /* established */
#define IP32_RE_BUFMODE_PIX_TYPE_RGB 1 /* established */
#define IP32_RE_BUFMODE_PIX_TYPE_RGBA 2 /* established */
#define IP32_RE_BUFMODE_PIX_TYPE_ABGR 3 /* established */
#define IP32_RE_BUFMODE_PIX_TYPE_YCRCB 15 /* established */
FIELD(IP32_RE_BUFMODE, PIX_DEPTH, 2, 2) /* established */
#define IP32_RE_BUFMODE_PIX_DEPTH_BITS8 0 /* established */
#define IP32_RE_BUFMODE_PIX_DEPTH_BITS16 1 /* established */
#define IP32_RE_BUFMODE_PIX_DEPTH_BITS32 2 /* established */
FIELD(IP32_RE_BUFMODE, DOUBLE_PIX, 1, 1) /* established */
FIELD(IP32_RE_BUFMODE, DOUBLE_PIX_SEL, 0, 1) /* established */

#define IP32_RE_IBADDR_HI_WIDTH 32 /* inferred; word */
FIELD(IP32_RE_IBADDR_HI, START_FLAG, 13, 1) /* inferred */
FIELD(IP32_RE_IBADDR_HI, LANE, 11, 2) /* inferred */
#define IP32_RE_IBADDR_HI_LANE_NONE 0 /* inferred */
#define IP32_RE_IBADDR_HI_LANE_WORD1 1 /* inferred */
#define IP32_RE_IBADDR_HI_LANE_WORD0 2 /* inferred */
#define IP32_RE_IBADDR_HI_LANE_DWORD 3 /* inferred */
FIELD(IP32_RE_IBADDR_HI, GROUP, 8, 3) /* established */
#define IP32_RE_IBADDR_HI_GROUP_INTERFACE 0 /* established */
#define IP32_RE_IBADDR_HI_GROUP_TLB 1 /* established */
#define IP32_RE_IBADDR_HI_GROUP_PIXEL_PIPE 2 /* established */
#define IP32_RE_IBADDR_HI_GROUP_TRANSFER 3 /* established */
FIELD(IP32_RE_IBADDR_HI, INDEX, 0, 8) /* established */

#define IP32_RE_LINENT_WIDTH 32 /* inferred; word */
FIELD(IP32_RE_LINENT, VALID, 31, 1) /* inferred */
FIELD(IP32_RE_LINENT, PAGE, 0, 31) /* established */

#define IP32_RE_PIXEL_A1_RGB5_WIDTH 16 /* established; word */
FIELD(IP32_RE_PIXEL_A1_RGB5, ALPHA, 15, 1) /* established */
FIELD(IP32_RE_PIXEL_A1_RGB5, RED, 10, 5) /* established */
FIELD(IP32_RE_PIXEL_A1_RGB5, GREEN, 5, 5) /* established */
FIELD(IP32_RE_PIXEL_A1_RGB5, BLUE, 0, 5) /* established */

#define IP32_RE_PIXEL_RG3_B2_WIDTH 8 /* established; word */
FIELD(IP32_RE_PIXEL_RG3_B2, RED, 5, 3) /* established */
FIELD(IP32_RE_PIXEL_RG3_B2, GREEN, 2, 3) /* established */
FIELD(IP32_RE_PIXEL_RG3_B2, BLUE, 0, 2) /* established */

#define IP32_RE_PIXEL_RGBA8_WIDTH 32 /* established; word */
FIELD(IP32_RE_PIXEL_RGBA8, RED, 24, 8) /* established */
FIELD(IP32_RE_PIXEL_RGBA8, GREEN, 16, 8) /* established */
FIELD(IP32_RE_PIXEL_RGBA8, BLUE, 8, 8) /* established */
FIELD(IP32_RE_PIXEL_RGBA8, ALPHA, 0, 8) /* established */

#define IP32_RE_SCRMASK_HI_WIDTH 32 /* established; word */
FIELD(IP32_RE_SCRMASK_HI, X_START, 16, 16) /* established */
FIELD(IP32_RE_SCRMASK_HI, Y_START, 0, 16) /* established */

#define IP32_RE_SCRMASK_LO_WIDTH 32 /* established; word */
FIELD(IP32_RE_SCRMASK_LO, X_END, 16, 16) /* established */
FIELD(IP32_RE_SCRMASK_LO, Y_END, 0, 16) /* established */

#define IP32_RE_TLBTILE_WIDTH 32 /* inferred; word */
FIELD(IP32_RE_TLBTILE, VALID, 15, 1) /* inferred */
FIELD(IP32_RE_TLBTILE, PAGE, 0, 15) /* established */

#define IP32_RE_GL_UNBOUND_BIAS 0x21000u /* established */
#define IP32_RE_GL_VERTEX_BIAS 0x1000u /* established */
#define IP32_RE_IB_ENTRIES 0x40u /* established */
#define IP32_RE_LINEAR_WINDOW_MASK 0x1ffffu /* established */
#define IP32_RE_LIN_TLB_MAX_PAGES 0x20u /* established */
#define IP32_RE_LIN_TLB_REGS 0x10u /* established */
#define IP32_RE_PRIM_RECT 0x3020000u /* established */
#define IP32_RE_PRIM_TRIANGLE 0x2000000u /* established */
#define IP32_RE_RENDER_COUNT_INIT 0xau /* established */
#define IP32_RE_RENDER_CTL_INIT 0xfefff0au /* established */
#define IP32_RE_RENDER_R10K_EMPTY 0x0u /* established */
#define IP32_RE_RENDER_R10K_FULL 0x14u /* established */
#define IP32_RE_RENDER_R10K_STALL 0x13u /* established */
#define IP32_RE_RENDER_R5K_EMPTY 0x18u /* established */
#define IP32_RE_RENDER_R5K_FULL 0x30u /* established */
#define IP32_RE_RENDER_R5K_STALL 0x2fu /* established */
#define IP32_RE_START_ALIAS_BIT 0xbu /* established */
#define IP32_RE_TEX_MAX_TEXELS 0x400u /* inferred */
#define IP32_RE_TEX_SUBTILE_CELL_BYTES 0x20u /* inferred */
#define IP32_RE_TILE_PAGES 0x10u /* established */
#define IP32_RE_TLB_ENTRIES_PER_REG 0x4u /* established */
#define IP32_RE_TLB_TILE_SHIFT 0x10u /* established */
#define IP32_RE_VTX_DEPTH_BASE 0x840000u /* established */
#define IP32_RE_VTX_STEP 0x40u /* established */
#define IP32_RE_VTX_TRI_BASE 0x48040000u /* established */

#endif /* HW_IP32_RE_REGS_H */
