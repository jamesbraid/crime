/* generated from defs/re.toml by defs-gen - do not edit, change the source */
/* O2 CRIME rendering engine: interface buffer, linear TLBs and clip state */
#ifndef RE_GEN_H
#define RE_GEN_H

#include <stdint.h>


/*
 * The interface buffer holds 64 queued writes. The specification's table
 * names 128 entries, but its address half sits 512 bytes above the data
 * half, which leaves room for 64 doublewords of data, and shipped software
 * walks a ring of 64 (RE_IB_ENTRIES). Each queued write has a data
 * doubleword and an address doubleword; the address half is decoded below.
 * The window shares its low offsets with the CRIME CPU-interface registers,
 * so the rendering engine registers live in their own address space.
 */
/* ib_data: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_IB_DATA_OFFSET                            0x0u /* established */
#define RE_IB_DATA_COUNT                             64
#define RE_IB_DATA_STRIDE                            8

/* ib_addr: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_IB_ADDR_OFFSET                            0x200u /* established */
#define RE_IB_ADDR_COUNT                             64
#define RE_IB_ADDR_STRIDE                            8

/*
 * The specification names this word's thresholds in its interface-buffer section.
 * Above the stall level, host writes stall for the stall count, given in 66 MHz
 * cycles. Above the interrupt level, the host receives an interrupt; it then
 * either polls the status register until the level falls or enables the
 * buffer-empty interrupt (established, [spec] PDF 185). The specification gives
 * no bit layout for these thresholds, so the field bits below stay inferred.
 */
/* ib_ctl: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_IB_CTL_OFFSET                             0x400u /* established */
#define RE_IB_CTL_FULL_SHIFT                         21 /* inferred */
#define RE_IB_CTL_FULL_MASK                          0x7fu
#define RE_IB_CTL_FULL_INPLACE                       (RE_IB_CTL_FULL_MASK << RE_IB_CTL_FULL_SHIFT)
#define RE_IB_CTL_EMPTY_SHIFT                        14 /* inferred */
#define RE_IB_CTL_EMPTY_MASK                         0x7fu
#define RE_IB_CTL_EMPTY_INPLACE                      (RE_IB_CTL_EMPTY_MASK << RE_IB_CTL_EMPTY_SHIFT)
#define RE_IB_CTL_STALL_SHIFT                        7 /* inferred */
#define RE_IB_CTL_STALL_MASK                         0x7fu
#define RE_IB_CTL_STALL_INPLACE                      (RE_IB_CTL_STALL_MASK << RE_IB_CTL_STALL_SHIFT)
#define RE_IB_CTL_COUNT_SHIFT                        0 /* inferred */
#define RE_IB_CTL_COUNT_MASK                         0x7fu
#define RE_IB_CTL_COUNT_INPLACE                      (RE_IB_CTL_COUNT_MASK << RE_IB_CTL_COUNT_SHIFT)

/* ib_reset: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_IB_RESET_OFFSET                           0x408u /* inferred */

/*
 * The frame-buffer tables A, B and C each hold 64 doublewords, the texture
 * table 28 and the clip-ID table 4. Shipped software loads all of them with
 * 64-bit stores. A frame-buffer, texture or clip-ID doubleword holds four
 * 16-bit tile entries, tile column 0 in bits 63:48. The entry is the physical
 * address of a 64 KiB tile shifted right by 16 (the page number counted in
 * 64 KiB units). Shipped software sets the top bit of each frame-buffer and
 * texture entry it uses and writes clip-ID entries without it, so the top
 * bit is inferred to be a valid bit (and doubles as address bit 31 of the
 * tile). The register index of tile (x, y) in a frame-buffer table is
 * y * 4 + x / 4. The linear tables further down use 32-bit entries.
 */
/* tlb_fb_a: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_FB_A_OFFSET                           0x1000u /* established */
#define RE_TLB_FB_A_COUNT                            64
#define RE_TLB_FB_A_STRIDE                           8

/* tlb_fb_b: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_FB_B_OFFSET                           0x1200u /* established */
#define RE_TLB_FB_B_COUNT                            64
#define RE_TLB_FB_B_STRIDE                           8

/* tlb_fb_c: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_FB_C_OFFSET                           0x1400u /* established */
#define RE_TLB_FB_C_COUNT                            64
#define RE_TLB_FB_C_STRIDE                           8

/* tlb_tex: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_TEX_OFFSET                            0x1600u /* established */
#define RE_TLB_TEX_COUNT                             28
#define RE_TLB_TEX_STRIDE                            8

/* tlb_cid: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_CID_OFFSET                            0x16e0u /* established */
#define RE_TLB_CID_COUNT                             4
#define RE_TLB_CID_STRIDE                            8

/* tlb_lin_a: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_LIN_A_OFFSET                          0x1700u /* established */
#define RE_TLB_LIN_A_COUNT                           16
#define RE_TLB_LIN_A_STRIDE                          8

/* tlb_lin_b: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLB_LIN_B_OFFSET                          0x1780u /* established */
#define RE_TLB_LIN_B_COUNT                           16
#define RE_TLB_LIN_B_STRIDE                          8

/*
 * The pixel pipeline group starts at the base of its own 4 KiB window. Sizes
 * and the read/write column are the specification's register table. The
 * specification lists the vertex and stepper registers as 32 or 64 bits and
 * shipped software writes adjacent 32-bit registers with one 64-bit store
 * (the GL vertex pair, for one). The transfer source stride is absent from
 * the specification's table; the public NetBSD driver and shipped software
 * both write it, so it is established from them. Registers marked w are
 * written only; the others read back. Global registers apply once the pipe
 * has drained, non-global ones per primitive ([spec] PDF 164).
 * Writing any pixel pipeline register with the start-alias bit set commits
 * the queued state as one primitive.
 */
/* bufmode_src: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BUFMODE_SRC_OFFSET                        0x2000u /* established */

/* bufmode_dst: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BUFMODE_DST_OFFSET                        0x2008u /* established */

/*
 * The specification's table (established, [spec] PDF 173, Table 7-6) puts the
 * enable for screen mask 0 at bit 9 and for mask 4 at bit 5, with the
 * inside-select (scrMaskMode) for mask 0 at bit 4 and for mask 4 at bit 0. The
 * kernel sets bit 5 plus i and bit i for rectangle i (docs/context.md), which is
 * the reverse order. Which order the engine uses is unknown. The fields below
 * give the bit ranges only.
 */
/* clipmode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_CLIPMODE_OFFSET                           0x2010u /* inferred */
#define RE_CLIPMODE_CLIP_ID_TEST_SHIFT               11 /* inferred */
#define RE_CLIPMODE_CLIP_ID_TEST_MASK                0x1u
#define RE_CLIPMODE_CLIP_ID_TEST_INPLACE             (RE_CLIPMODE_CLIP_ID_TEST_MASK << RE_CLIPMODE_CLIP_ID_TEST_SHIFT)
#define RE_CLIPMODE_CLIP_ID_MAP_SHIFT                10 /* inferred */
#define RE_CLIPMODE_CLIP_ID_MAP_MASK                 0x1u
#define RE_CLIPMODE_CLIP_ID_MAP_INPLACE              (RE_CLIPMODE_CLIP_ID_MAP_MASK << RE_CLIPMODE_CLIP_ID_MAP_SHIFT)
#define RE_CLIPMODE_ENABLE_SHIFT                     5 /* established */
#define RE_CLIPMODE_ENABLE_MASK                      0x1fu
#define RE_CLIPMODE_ENABLE_INPLACE                   (RE_CLIPMODE_ENABLE_MASK << RE_CLIPMODE_ENABLE_SHIFT)
#define RE_CLIPMODE_MODE_SHIFT                       0 /* established */
#define RE_CLIPMODE_MODE_MASK                        0x1fu
#define RE_CLIPMODE_MODE_INPLACE                     (RE_CLIPMODE_MODE_MASK << RE_CLIPMODE_MODE_SHIFT)

/*
 * Point and rectangle primitives are always flat shaded, whatever the shade bit (16) says. Their colour is the foreground colour register alone (established, [spec] PDF 200, section 7.3.7.1). Triangles and lines are smooth shaded only when bit 16 is set.
 *
 * The specification's table gives bit 8 as logic-op enable and bit 9 as dither
 * (established, [spec] PDF 174, Table 7-7). The fields below follow the drivers,
 * which use the reverse. That conflict is not settled; see docs/pixel-arithmetic.md.
 */
/* drawmode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_DRAWMODE_OFFSET                           0x2018u /* established */
#define RE_DRAWMODE_NO_CONFLICT_SHIFT                23 /* established */
#define RE_DRAWMODE_NO_CONFLICT_MASK                 0x1u
#define RE_DRAWMODE_NO_CONFLICT_INPLACE              (RE_DRAWMODE_NO_CONFLICT_MASK << RE_DRAWMODE_NO_CONFLICT_SHIFT)
#define RE_DRAWMODE_GL_SHIFT                         22 /* established */
#define RE_DRAWMODE_GL_MASK                          0x1u
#define RE_DRAWMODE_GL_INPLACE                       (RE_DRAWMODE_GL_MASK << RE_DRAWMODE_GL_SHIFT)
#define RE_DRAWMODE_PIXEL_XFER_SHIFT                 21 /* established */
#define RE_DRAWMODE_PIXEL_XFER_MASK                  0x1u
#define RE_DRAWMODE_PIXEL_XFER_INPLACE               (RE_DRAWMODE_PIXEL_XFER_MASK << RE_DRAWMODE_PIXEL_XFER_SHIFT)
#define RE_DRAWMODE_SCISSOR_SHIFT                    20 /* established */
#define RE_DRAWMODE_SCISSOR_MASK                     0x1u
#define RE_DRAWMODE_SCISSOR_INPLACE                  (RE_DRAWMODE_SCISSOR_MASK << RE_DRAWMODE_SCISSOR_SHIFT)
#define RE_DRAWMODE_LINE_STIPPLE_SHIFT               19 /* established */
#define RE_DRAWMODE_LINE_STIPPLE_MASK                0x1u
#define RE_DRAWMODE_LINE_STIPPLE_INPLACE             (RE_DRAWMODE_LINE_STIPPLE_MASK << RE_DRAWMODE_LINE_STIPPLE_SHIFT)
#define RE_DRAWMODE_POLY_STIPPLE_SHIFT               18 /* established */
#define RE_DRAWMODE_POLY_STIPPLE_MASK                0x1u
#define RE_DRAWMODE_POLY_STIPPLE_INPLACE             (RE_DRAWMODE_POLY_STIPPLE_MASK << RE_DRAWMODE_POLY_STIPPLE_SHIFT)
#define RE_DRAWMODE_OPAQUE_STIPPLE_SHIFT             17 /* established */
#define RE_DRAWMODE_OPAQUE_STIPPLE_MASK              0x1u
#define RE_DRAWMODE_OPAQUE_STIPPLE_INPLACE           (RE_DRAWMODE_OPAQUE_STIPPLE_MASK << RE_DRAWMODE_OPAQUE_STIPPLE_SHIFT)
#define RE_DRAWMODE_SHADE_SHIFT                      16 /* established */
#define RE_DRAWMODE_SHADE_MASK                       0x1u
#define RE_DRAWMODE_SHADE_INPLACE                    (RE_DRAWMODE_SHADE_MASK << RE_DRAWMODE_SHADE_SHIFT)
#define RE_DRAWMODE_TEXTURE_SHIFT                    15 /* established */
#define RE_DRAWMODE_TEXTURE_MASK                     0x1u
#define RE_DRAWMODE_TEXTURE_INPLACE                  (RE_DRAWMODE_TEXTURE_MASK << RE_DRAWMODE_TEXTURE_SHIFT)
#define RE_DRAWMODE_FOG_SHIFT                        14 /* established */
#define RE_DRAWMODE_FOG_MASK                         0x1u
#define RE_DRAWMODE_FOG_INPLACE                      (RE_DRAWMODE_FOG_MASK << RE_DRAWMODE_FOG_SHIFT)
#define RE_DRAWMODE_COVERAGE_SHIFT                   13 /* established */
#define RE_DRAWMODE_COVERAGE_MASK                    0x1u
#define RE_DRAWMODE_COVERAGE_INPLACE                 (RE_DRAWMODE_COVERAGE_MASK << RE_DRAWMODE_COVERAGE_SHIFT)
#define RE_DRAWMODE_AA_LINE_SHIFT                    12 /* established */
#define RE_DRAWMODE_AA_LINE_MASK                     0x1u
#define RE_DRAWMODE_AA_LINE_INPLACE                  (RE_DRAWMODE_AA_LINE_MASK << RE_DRAWMODE_AA_LINE_SHIFT)
#define RE_DRAWMODE_ALPHA_TEST_SHIFT                 11 /* established */
#define RE_DRAWMODE_ALPHA_TEST_MASK                  0x1u
#define RE_DRAWMODE_ALPHA_TEST_INPLACE               (RE_DRAWMODE_ALPHA_TEST_MASK << RE_DRAWMODE_ALPHA_TEST_SHIFT)
#define RE_DRAWMODE_ALPHA_BLEND_SHIFT                10 /* established */
#define RE_DRAWMODE_ALPHA_BLEND_MASK                 0x1u
#define RE_DRAWMODE_ALPHA_BLEND_INPLACE              (RE_DRAWMODE_ALPHA_BLEND_MASK << RE_DRAWMODE_ALPHA_BLEND_SHIFT)
#define RE_DRAWMODE_LOGIC_OP_SHIFT                   9 /* established */
#define RE_DRAWMODE_LOGIC_OP_MASK                    0x1u
#define RE_DRAWMODE_LOGIC_OP_INPLACE                 (RE_DRAWMODE_LOGIC_OP_MASK << RE_DRAWMODE_LOGIC_OP_SHIFT)
#define RE_DRAWMODE_DITHER_SHIFT                     8 /* established */
#define RE_DRAWMODE_DITHER_MASK                      0x1u
#define RE_DRAWMODE_DITHER_INPLACE                   (RE_DRAWMODE_DITHER_MASK << RE_DRAWMODE_DITHER_SHIFT)
#define RE_DRAWMODE_BIT_MASK_SHIFT                   7 /* established */
#define RE_DRAWMODE_BIT_MASK_MASK                    0x1u
#define RE_DRAWMODE_BIT_MASK_INPLACE                 (RE_DRAWMODE_BIT_MASK_MASK << RE_DRAWMODE_BIT_MASK_SHIFT)
#define RE_DRAWMODE_BYTE_MASK_SHIFT                  3 /* established */
#define RE_DRAWMODE_BYTE_MASK_MASK                   0xfu
#define RE_DRAWMODE_BYTE_MASK_INPLACE                (RE_DRAWMODE_BYTE_MASK_MASK << RE_DRAWMODE_BYTE_MASK_SHIFT)
#define RE_DRAWMODE_DEPTH_TEST_SHIFT                 2 /* established */
#define RE_DRAWMODE_DEPTH_TEST_MASK                  0x1u
#define RE_DRAWMODE_DEPTH_TEST_INPLACE               (RE_DRAWMODE_DEPTH_TEST_MASK << RE_DRAWMODE_DEPTH_TEST_SHIFT)
#define RE_DRAWMODE_DEPTH_MASK_SHIFT                 1 /* established */
#define RE_DRAWMODE_DEPTH_MASK_MASK                  0x1u
#define RE_DRAWMODE_DEPTH_MASK_INPLACE               (RE_DRAWMODE_DEPTH_MASK_MASK << RE_DRAWMODE_DEPTH_MASK_SHIFT)
#define RE_DRAWMODE_STENCIL_SHIFT                    0 /* established */
#define RE_DRAWMODE_STENCIL_MASK                     0x1u
#define RE_DRAWMODE_STENCIL_INPLACE                  (RE_DRAWMODE_STENCIL_MASK << RE_DRAWMODE_STENCIL_SHIFT)

/*
 * Screen mask n is one rectangle in framebuffer coordinates, not window
 * coordinates (established, [spec] PDF 176, Table 7-11). Its fields are the
 * same as the scissor's. The enable and inside-select bits are in ClipMode;
 * see the note there for the order in which the bits pair with the masks.
 */
/* scrmask: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SCRMASK_OFFSET                            0x2020u /* established */
#define RE_SCRMASK_COUNT                             5
#define RE_SCRMASK_STRIDE                            8
#define RE_SCRMASK_MIN_X_SHIFT                       48 /* established */
#define RE_SCRMASK_MIN_X_MASK                        0xffffull
#define RE_SCRMASK_MIN_X_INPLACE                     (RE_SCRMASK_MIN_X_MASK << RE_SCRMASK_MIN_X_SHIFT)
#define RE_SCRMASK_MIN_Y_SHIFT                       32 /* established */
#define RE_SCRMASK_MIN_Y_MASK                        0xffffull
#define RE_SCRMASK_MIN_Y_INPLACE                     (RE_SCRMASK_MIN_Y_MASK << RE_SCRMASK_MIN_Y_SHIFT)
#define RE_SCRMASK_MAX_X_SHIFT                       16 /* established */
#define RE_SCRMASK_MAX_X_MASK                        0xffffull
#define RE_SCRMASK_MAX_X_INPLACE                     (RE_SCRMASK_MAX_X_MASK << RE_SCRMASK_MAX_X_SHIFT)
#define RE_SCRMASK_MAX_Y_SHIFT                       0 /* established */
#define RE_SCRMASK_MAX_Y_MASK                        0xffffull
#define RE_SCRMASK_MAX_Y_INPLACE                     (RE_SCRMASK_MAX_Y_MASK << RE_SCRMASK_MAX_Y_SHIFT)

/*
 * Scissor rectangle in window coordinates. The minimum edges are inclusive and
 * the maximum edges exclusive. DrawMode bit 20 enables the test (established,
 * [spec] PDF 176, Table 7-10).
 */
/* scissor: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SCISSOR_OFFSET                            0x2048u /* established */
#define RE_SCISSOR_MIN_X_SHIFT                       48 /* established */
#define RE_SCISSOR_MIN_X_MASK                        0xffffull
#define RE_SCISSOR_MIN_X_INPLACE                     (RE_SCISSOR_MIN_X_MASK << RE_SCISSOR_MIN_X_SHIFT)
#define RE_SCISSOR_MIN_Y_SHIFT                       32 /* established */
#define RE_SCISSOR_MIN_Y_MASK                        0xffffull
#define RE_SCISSOR_MIN_Y_INPLACE                     (RE_SCISSOR_MIN_Y_MASK << RE_SCISSOR_MIN_Y_SHIFT)
#define RE_SCISSOR_MAX_X_SHIFT                       16 /* established */
#define RE_SCISSOR_MAX_X_MASK                        0xffffull
#define RE_SCISSOR_MAX_X_INPLACE                     (RE_SCISSOR_MAX_X_MASK << RE_SCISSOR_MAX_X_SHIFT)
#define RE_SCISSOR_MAX_Y_SHIFT                       0 /* established */
#define RE_SCISSOR_MAX_Y_MASK                        0xffffull
#define RE_SCISSOR_MAX_Y_INPLACE                     (RE_SCISSOR_MAX_Y_MASK << RE_SCISSOR_MAX_Y_SHIFT)

/*
 * Window-to-framebuffer offset for the read window (established, [spec] PDF 175
 * to 176, Table 7-9, the WinOffset format). The specification does not say
 * whether the two halves are signed. The kernel writes each half as the window
 * origin minus 4096 (see docs/context.md), so the sign convention is unknown.
 */
/* winoffset_src: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_WINOFFSET_SRC_OFFSET                      0x2050u /* established */
#define RE_WINOFFSET_SRC_X_SHIFT                     16 /* established */
#define RE_WINOFFSET_SRC_X_MASK                      0xffffu
#define RE_WINOFFSET_SRC_X_INPLACE                   (RE_WINOFFSET_SRC_X_MASK << RE_WINOFFSET_SRC_X_SHIFT)
#define RE_WINOFFSET_SRC_Y_SHIFT                     0 /* established */
#define RE_WINOFFSET_SRC_Y_MASK                      0xffffu
#define RE_WINOFFSET_SRC_Y_INPLACE                   (RE_WINOFFSET_SRC_Y_MASK << RE_WINOFFSET_SRC_Y_SHIFT)

/*
 * Window-to-framebuffer offset for the drawing window (established, [spec] PDF
 * 175 to 176, Table 7-9). The layout and the sign question are the same as for
 * the source offset (the read window's register).
 */
/* winoffset_dst: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_WINOFFSET_DST_OFFSET                      0x2058u /* established */
#define RE_WINOFFSET_DST_X_SHIFT                     16 /* established */
#define RE_WINOFFSET_DST_X_MASK                      0xffffu
#define RE_WINOFFSET_DST_X_INPLACE                   (RE_WINOFFSET_DST_X_MASK << RE_WINOFFSET_DST_X_SHIFT)
#define RE_WINOFFSET_DST_Y_SHIFT                     0 /* established */
#define RE_WINOFFSET_DST_Y_MASK                      0xffffu
#define RE_WINOFFSET_DST_Y_INPLACE                   (RE_WINOFFSET_DST_Y_MASK << RE_WINOFFSET_DST_Y_SHIFT)

/*
 * The specification gives line_width as the subpixel line width divided by two
 * (established, [spec] PDF 175, Table 7-8). Bits 23:19 are reserved in the
 * specification. DrawMode bit 19, which enables line stipple, is a separate
 * control and does not appear in the primitive word.
 */
/* primitive: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PRIMITIVE_OFFSET                          0x2060u /* established */
#define RE_PRIMITIVE_OP_SHIFT                        24 /* established */
#define RE_PRIMITIVE_OP_MASK                         0xffu
#define RE_PRIMITIVE_OP_INPLACE                      (RE_PRIMITIVE_OP_MASK << RE_PRIMITIVE_OP_SHIFT)
#define RE_PRIMITIVE_OP_POINT                        0 /* established */
#define RE_PRIMITIVE_OP_LINE                         1 /* established */
#define RE_PRIMITIVE_OP_TRIANGLE                     2 /* established */
#define RE_PRIMITIVE_OP_RECT                         3 /* established */
#define RE_PRIMITIVE_LINE_SKIP_LAST_SHIFT            18 /* established */
#define RE_PRIMITIVE_LINE_SKIP_LAST_MASK             0x1u
#define RE_PRIMITIVE_LINE_SKIP_LAST_INPLACE          (RE_PRIMITIVE_LINE_SKIP_LAST_MASK << RE_PRIMITIVE_LINE_SKIP_LAST_SHIFT)
#define RE_PRIMITIVE_EDGE_SHIFT                      16 /* established */
#define RE_PRIMITIVE_EDGE_MASK                       0x3u
#define RE_PRIMITIVE_EDGE_INPLACE                    (RE_PRIMITIVE_EDGE_MASK << RE_PRIMITIVE_EDGE_SHIFT)
#define RE_PRIMITIVE_EDGE_LR_BT                      0 /* established */
#define RE_PRIMITIVE_EDGE_RL_BT                      1 /* established */
#define RE_PRIMITIVE_EDGE_LR_TB                      2 /* established */
#define RE_PRIMITIVE_EDGE_RL_TB                      3 /* established */
#define RE_PRIMITIVE_LINE_WIDTH_SHIFT                0 /* established */
#define RE_PRIMITIVE_LINE_WIDTH_MASK                 0xffffu
#define RE_PRIMITIVE_LINE_WIDTH_INPLACE              (RE_PRIMITIVE_LINE_WIDTH_MASK << RE_PRIMITIVE_LINE_WIDTH_SHIFT)

/* vertex_x: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_VERTEX_X_OFFSET                           0x2070u /* established */
#define RE_VERTEX_X_COUNT                            3
#define RE_VERTEX_X_STRIDE                           4

/*
 * GL-mode vertex coordinates are 13.6 fixed point in table 7-3 (established, [spec] PDF 166). The GL-mode text on PDF 197 instead gives 13.4 unsigned fixed point over [0, 2^13) (established). The feature list on PDF 159 gives 6-bit subpixel precision, which fits the 13.6 reading. The two engine descriptions conflict. Which one the engine implements is unknown.
 *
 * Readback extents (inferred, software expectation). A GL readback of a
 * rectangle writes inclusive pixel indices, not the half-open edges of the
 * scissor: the far x is the start x plus the programmed copy width minus one,
 * and the far y is the start y minus the row count plus one, each as
 * (index << 6) & 0x7ffff. A one-row readback therefore writes equal y words and
 * still copies one row. Only driver writes show this. How the engine resolves a
 * fractional edge is unknown. See docs/pixel-transfer.md.
 */
/* vertex_gl: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_VERTEX_GL_OFFSET                          0x2080u /* established */
#define RE_VERTEX_GL_COUNT                           6
#define RE_VERTEX_GL_STRIDE                          4

/*
 * Readback source start (inferred, software expectation). For a readback from a
 * buffer H rows high, the driver writes the x component as the window x and the
 * y component as H - 1 - window y, each masked to 11 bits. The 0x21000 window
 * bias drops out under that mask. For a 128-row buffer, y = 127 - window y. The
 * equation that combines this packed start with SrcWinOffset is unknown. See
 * docs/pixel-transfer.md.
 */
/* xfer_src_addr: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_ADDR_OFFSET                      0x20a0u /* established */

/* xfer_src_stride: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_STRIDE_OFFSET                    0x20a4u /* established */

/* xfer_src_xstep: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_XSTEP_OFFSET                     0x20a8u /* established */

/* xfer_src_ystep: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_YSTEP_OFFSET                     0x20acu /* established */

/* xfer_dst_addr: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_DST_ADDR_OFFSET                      0x20b0u /* established */

/*
 * Readback row-end increment (inferred, software expectation). With S bytes per
 * pixel, a scratch row pitch P and a programmed copy width C, the driver writes
 * S + max(P - C * S, 0). The row pitch is then (C - 1) * S + that value, which
 * equals P. The width C is the aligned width, not the requested width: the
 * driver rounds it up until the row is a multiple of eight bytes, so a
 * requested width of 15 at four bytes per pixel programs 16. See
 * docs/pixel-transfer.md.
 */
/* xfer_dst_stride: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_DST_STRIDE_OFFSET                    0x20b4u /* established */

/*
 * Stipple sequence state: the starting pattern index, the maximum pattern index,
 * the starting repeat count and the maximum repeat count (established, [spec]
 * PDF 177, Table 7-12). The specification's reserved range is 23:20, which
 * includes bit 20, the top bit of max_index. max_index is therefore inferred
 * (conflict). The specification does not say what the sequence does after
 * max_index, so that behaviour is unknown.
 */
/* stipple_mode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_STIPPLE_MODE_OFFSET                       0x20c0u /* established */
#define RE_STIPPLE_MODE_INDEX_SHIFT                  24 /* established */
#define RE_STIPPLE_MODE_INDEX_MASK                   0x1fu
#define RE_STIPPLE_MODE_INDEX_INPLACE                (RE_STIPPLE_MODE_INDEX_MASK << RE_STIPPLE_MODE_INDEX_SHIFT)
#define RE_STIPPLE_MODE_MAX_INDEX_SHIFT              16 /* inferred */
#define RE_STIPPLE_MODE_MAX_INDEX_MASK               0x1fu
#define RE_STIPPLE_MODE_MAX_INDEX_INPLACE            (RE_STIPPLE_MODE_MAX_INDEX_MASK << RE_STIPPLE_MODE_MAX_INDEX_SHIFT)
#define RE_STIPPLE_MODE_REPEAT_SHIFT                 8 /* established */
#define RE_STIPPLE_MODE_REPEAT_MASK                  0xffu
#define RE_STIPPLE_MODE_REPEAT_INPLACE               (RE_STIPPLE_MODE_REPEAT_MASK << RE_STIPPLE_MODE_REPEAT_SHIFT)
#define RE_STIPPLE_MODE_MAX_REPEAT_SHIFT             0 /* established */
#define RE_STIPPLE_MODE_MAX_REPEAT_MASK              0xffu
#define RE_STIPPLE_MODE_MAX_REPEAT_INPLACE           (RE_STIPPLE_MODE_MAX_REPEAT_MASK << RE_STIPPLE_MODE_MAX_REPEAT_SHIFT)

/* stipple_pattern: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_STIPPLE_PATTERN_OFFSET                    0x20c4u /* established */

/*
 * Flat-shaded colour for triangles and lines with DrawMode shade bit 16 clear, and for points and rectangles always. The engine assigns this one value to every fragment (established, [spec] PDF 200, section 7.3.7.1). Colour index flat shading loads an 8-bit index for 8-bit pixels and a 12-bit index for 16-bit and 32-bit pixels. RGBA flat shading loads an RGBA8 value whatever the pixel depth (established, [spec] PDF 200).
 */
/* fg_color: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FG_COLOR_OFFSET                           0x20d0u /* established */

/* bg_color: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BG_COLOR_OFFSET                           0x20d8u /* established */

/* shade_start: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_START_OFFSET                        0x20e0u /* established */
#define RE_SHADE_START_COUNT                         4
#define RE_SHADE_START_STRIDE                        4

/* shade_drdx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DRDX_OFFSET                         0x20f0u /* established */

/* shade_dgdx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DGDX_OFFSET                         0x20f4u /* established */

/* shade_drdy: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DRDY_OFFSET                         0x20f8u /* established */

/* shade_dgdy: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DGDY_OFFSET                         0x20fcu /* established */

/* shade_dbdx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DBDX_OFFSET                         0x2100u /* established */

/* shade_dadx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DADX_OFFSET                         0x2104u /* established */

/* shade_dbdy: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DBDY_OFFSET                         0x2108u /* established */

/* shade_dady: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SHADE_DADY_OFFSET                         0x210cu /* established */

/* tex_mode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_MODE_OFFSET                           0x2110u /* established */

/* tex_format: rw64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_FORMAT_OFFSET                         0x2118u /* established */

/* tex_sqs: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_SQS_OFFSET                            0x2120u /* established */

/* tex_tqs: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_TQS_OFFSET                            0x2128u /* established */

/* tex_qs: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_QS_OFFSET                             0x2130u /* established */

/*
 * tex_stflags sits between tex_qs and tex_dsqdx and is absent from the
 * specification's register table, which skips from the one to the other.
 * Shipped software computes one flag per texture coordinate for each textured
 * triangle from range tests on the vertex values, writes the s flag in bit 0
 * and the t flag in bit 1 with a 32-bit store, and scales the start and slope
 * values of a flagged coordinate by 2^39 instead of 2^43. Inferred: a set
 * flag tells the engine that coordinate's stepper carries four fewer fraction
 * bits. The layout is established; that meaning is inferred.
 */
/* tex_stflags: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_STFLAGS_OFFSET                        0x2134u /* established */
#define RE_TEX_STFLAGS_T_FLAG_SHIFT                  1 /* established */
#define RE_TEX_STFLAGS_T_FLAG_MASK                   0x1u
#define RE_TEX_STFLAGS_T_FLAG_INPLACE                (RE_TEX_STFLAGS_T_FLAG_MASK << RE_TEX_STFLAGS_T_FLAG_SHIFT)
#define RE_TEX_STFLAGS_S_FLAG_SHIFT                  0 /* established */
#define RE_TEX_STFLAGS_S_FLAG_MASK                   0x1u
#define RE_TEX_STFLAGS_S_FLAG_INPLACE                (RE_TEX_STFLAGS_S_FLAG_MASK << RE_TEX_STFLAGS_S_FLAG_SHIFT)

/* tex_dsqdx: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_DSQDX_OFFSET                          0x2138u /* established */

/* tex_dsqdy: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_DSQDY_OFFSET                          0x2140u /* established */

/* tex_dtqdx: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_DTQDX_OFFSET                          0x2148u /* established */

/* tex_dtqdy: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_DTQDY_OFFSET                          0x2150u /* established */

/* tex_dqdx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_DQDX_OFFSET                           0x2158u /* established */

/* tex_dqdy: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_DQDY_OFFSET                           0x215cu /* established */

/* tex_border: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_BORDER_OFFSET                         0x2160u /* established */

/* tex_envcolor: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_ENVCOLOR_OFFSET                       0x2168u /* established */

/* fog_color: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_COLOR_OFFSET                          0x2170u /* established */

/* fog_fs: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_FS_OFFSET                             0x2178u /* established */

/* fog_dfdx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_DFDX_OFFSET                           0x2180u /* established */

/* fog_dfdy: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_DFDY_OFFSET                           0x2188u /* established */

/*
 * Antialiasing applies only to point and line primitives and only to RGB(A) pixels. It acts on alpha after fogging and before the alpha test. For antialiased lines the specification assumes a line width of two (established, [spec] PDF 206, section 7.3.7.10). The coverage value is a 0.8 fixed-point number, computed from a 128 by 8 slope-and-distance table and a 128 by 4-bit endpoint table, both in ROM (established, [spec] PDF 206-207). The ROM contents are not published, so they are unknown.
 * The register table gives this word as a 2.12 two's complement value for both the slope and the ideal minor coordinate (established, [spec] register map, PDF 169). docs/context.md reads the slope from the same table as 2.14 in bits 31:16. That conflicts with this layout and is not resolved here.
 */
/* aa_line: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_AA_LINE_OFFSET                            0x2190u /* established */

/* aa_cov: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_AA_COV_OFFSET                             0x2194u /* established */

/*
 * Alpha test function and reference. Bits 31:12 are reserved in the specification.
 * The test runs on fragment alpha after antialias coverage and only for RGB(A)
 * pixels, and it is enabled by DrawMode bit 11. A fragment whose comparison fails
 * is discarded.
 */
/* alphatest: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_ALPHATEST_OFFSET                          0x2198u /* established */
#define RE_ALPHATEST_FUNC_SHIFT                      8 /* established */
#define RE_ALPHATEST_FUNC_MASK                       0xfu
#define RE_ALPHATEST_FUNC_INPLACE                    (RE_ALPHATEST_FUNC_MASK << RE_ALPHATEST_FUNC_SHIFT)
#define RE_ALPHATEST_FUNC_NEVER                      0 /* established */
#define RE_ALPHATEST_FUNC_LESS                       1 /* established */
#define RE_ALPHATEST_FUNC_EQUAL                      2 /* established */
#define RE_ALPHATEST_FUNC_LEQUAL                     3 /* established */
#define RE_ALPHATEST_FUNC_GREATER                    4 /* established */
#define RE_ALPHATEST_FUNC_NOTEQUAL                   5 /* established */
#define RE_ALPHATEST_FUNC_GEQUAL                     6 /* established */
#define RE_ALPHATEST_FUNC_ALWAYS                     7 /* established */
#define RE_ALPHATEST_REF_SHIFT                       0 /* established */
#define RE_ALPHATEST_REF_MASK                        0xffu
#define RE_ALPHATEST_REF_INPLACE                     (RE_ALPHATEST_REF_MASK << RE_ALPHATEST_REF_SHIFT)

/*
 * Blend constant colour, read and written as a 32-bit word (established, [spec] register map, PDF 169, which names it "blend RGBA constant color"). The constant-color and constant-alpha factor codes of Blend.func select it. The specification does not draw its per-byte layout, so the byte order is unknown.
 */
/* blend_color: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BLEND_COLOR_OFFSET                        0x21a0u /* established */

/*
 * Blend equation and factors. The source factor table has a SRC_ALPHA_SATURATE row with no factor given, and the destination factor table has no such code (established absence, [spec] Tables 7-20 and 7-21, PDF 208-209). The specification's factor arithmetic therefore omits it. It also gives no clamp for ADD or SUBTRACT. Both are unknown here; see docs/pixel-arithmetic.md.
 */
/* blend_func: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BLEND_FUNC_OFFSET                         0x21a8u /* established */
#define RE_BLEND_FUNC_OP_SHIFT                       8 /* established */
#define RE_BLEND_FUNC_OP_MASK                        0xfu
#define RE_BLEND_FUNC_OP_INPLACE                     (RE_BLEND_FUNC_OP_MASK << RE_BLEND_FUNC_OP_SHIFT)
#define RE_BLEND_FUNC_OP_ADD                         0 /* established */
#define RE_BLEND_FUNC_OP_MIN                         1 /* established */
#define RE_BLEND_FUNC_OP_MAX                         2 /* established */
#define RE_BLEND_FUNC_OP_SUBTRACT                    3 /* established */
#define RE_BLEND_FUNC_OP_REVERSE_SUBTRACT            4 /* established */
#define RE_BLEND_FUNC_SRC_SHIFT                      4 /* established */
#define RE_BLEND_FUNC_SRC_MASK                       0xfu
#define RE_BLEND_FUNC_SRC_INPLACE                    (RE_BLEND_FUNC_SRC_MASK << RE_BLEND_FUNC_SRC_SHIFT)
#define RE_BLEND_FUNC_SRC_ZERO                       0 /* established */
#define RE_BLEND_FUNC_SRC_ONE                        1 /* established */
#define RE_BLEND_FUNC_SRC_DST_COLOR                  2 /* established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_DST_COLOR        3 /* established */
#define RE_BLEND_FUNC_SRC_SRC_ALPHA                  4 /* established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_SRC_ALPHA        5 /* established */
#define RE_BLEND_FUNC_SRC_DST_ALPHA                  6 /* established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_DST_ALPHA        7 /* established */
#define RE_BLEND_FUNC_SRC_CONSTANT_COLOR             8 /* established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_CONSTANT_COLOR   9 /* established */
#define RE_BLEND_FUNC_SRC_CONSTANT_ALPHA             10 /* established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_CONSTANT_ALPHA   11 /* established */
#define RE_BLEND_FUNC_SRC_SRC_ALPHA_SATURATE         12 /* established */
#define RE_BLEND_FUNC_DST_SHIFT                      0 /* established */
#define RE_BLEND_FUNC_DST_MASK                       0xfu
#define RE_BLEND_FUNC_DST_INPLACE                    (RE_BLEND_FUNC_DST_MASK << RE_BLEND_FUNC_DST_SHIFT)
#define RE_BLEND_FUNC_DST_ZERO                       0 /* established */
#define RE_BLEND_FUNC_DST_ONE                        1 /* established */
#define RE_BLEND_FUNC_DST_SRC_COLOR                  2 /* established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_SRC_COLOR        3 /* established */
#define RE_BLEND_FUNC_DST_SRC_ALPHA                  4 /* established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_SRC_ALPHA        5 /* established */
#define RE_BLEND_FUNC_DST_DST_ALPHA                  6 /* established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_DST_ALPHA        7 /* established */
#define RE_BLEND_FUNC_DST_CONSTANT_COLOR             8 /* established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_CONSTANT_COLOR   9 /* established */
#define RE_BLEND_FUNC_DST_CONSTANT_ALPHA             10 /* established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_CONSTANT_ALPHA   11 /* established */

/*
 * The register's own field table is empty in the specification (section 7.3.1.17). The sixteen bitwise operations are listed in Table 7-23 (established, [spec] PDF 210-211, section 7.3.7.14), and docs/pixel-arithmetic.md gives them. The operation acts on the source colour after dithering and the destination read from the frame buffer. The numeric code for each operation comes from the drivers, not the specification.
 */
/* logicop: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_LOGICOP_OFFSET                            0x21b0u /* established */
#define RE_LOGICOP_CODE_SHIFT                        0 /* inferred */
#define RE_LOGICOP_CODE_MASK                         0xfu
#define RE_LOGICOP_CODE_INPLACE                      (RE_LOGICOP_CODE_MASK << RE_LOGICOP_CODE_SHIFT)
#define RE_LOGICOP_CODE_CLEAR                        0 /* inferred */
#define RE_LOGICOP_CODE_AND                          1 /* inferred */
#define RE_LOGICOP_CODE_AND_REVERSE                  2 /* inferred */
#define RE_LOGICOP_CODE_COPY                         3 /* inferred */
#define RE_LOGICOP_CODE_AND_INVERTED                 4 /* inferred */
#define RE_LOGICOP_CODE_NOOP                         5 /* inferred */
#define RE_LOGICOP_CODE_XOR                          6 /* inferred */
#define RE_LOGICOP_CODE_OR                           7 /* inferred */
#define RE_LOGICOP_CODE_NOR                          8 /* inferred */
#define RE_LOGICOP_CODE_EQUIV                        9 /* inferred */
#define RE_LOGICOP_CODE_INVERT                       10 /* inferred */
#define RE_LOGICOP_CODE_OR_REVERSE                   11 /* inferred */
#define RE_LOGICOP_CODE_COPY_INVERTED                12 /* inferred */
#define RE_LOGICOP_CODE_OR_INVERTED                  13 /* inferred */
#define RE_LOGICOP_CODE_NAND                         14 /* inferred */
#define RE_LOGICOP_CODE_SET                          15 /* inferred */

/* colormask: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_COLORMASK_OFFSET                          0x21b8u /* established */

/*
 * Depth comparison and clear-depth word. The specification omits the field
 * encoding (established, [spec] PDF 169-170). The field layout below is inferred
 * from the words the shipped driver stores here. Bits 31:28 have no established
 * meaning.
 */
/* depth_func: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_DEPTH_FUNC_OFFSET                         0x21c0u /* established */
#define RE_DEPTH_FUNC_FUNC_SHIFT                     25 /* inferred */
#define RE_DEPTH_FUNC_FUNC_MASK                      0x7u
#define RE_DEPTH_FUNC_FUNC_INPLACE                   (RE_DEPTH_FUNC_FUNC_MASK << RE_DEPTH_FUNC_FUNC_SHIFT)
#define RE_DEPTH_FUNC_FUNC_NEVER                     0 /* inferred */
#define RE_DEPTH_FUNC_FUNC_LESS                      1 /* inferred */
#define RE_DEPTH_FUNC_FUNC_EQUAL                     2 /* inferred */
#define RE_DEPTH_FUNC_FUNC_LEQUAL                    3 /* inferred */
#define RE_DEPTH_FUNC_FUNC_GREATER                   4 /* inferred */
#define RE_DEPTH_FUNC_FUNC_NOTEQUAL                  5 /* inferred */
#define RE_DEPTH_FUNC_FUNC_GEQUAL                    6 /* inferred */
#define RE_DEPTH_FUNC_FUNC_ALWAYS                    7 /* inferred */
#define RE_DEPTH_FUNC_TAG_CLEAR_SHIFT                24 /* unknown */
#define RE_DEPTH_FUNC_TAG_CLEAR_MASK                 0x1u
#define RE_DEPTH_FUNC_TAG_CLEAR_INPLACE              (RE_DEPTH_FUNC_TAG_CLEAR_MASK << RE_DEPTH_FUNC_TAG_CLEAR_SHIFT)
#define RE_DEPTH_FUNC_CLEAR_SHIFT                    0 /* established */
#define RE_DEPTH_FUNC_CLEAR_MASK                     0xffffffu
#define RE_DEPTH_FUNC_CLEAR_INPLACE                  (RE_DEPTH_FUNC_CLEAR_MASK << RE_DEPTH_FUNC_CLEAR_SHIFT)

/*
 * Start depth of a triangle or depth span, a 25.12 two's complement value with
 * the fraction in the low 12 bits (established, [spec] PDF 169-170 and 212-213).
 * Written through its start alias, which commits the queued primitive.
 * The depth derivatives below use the same format.
 */
/* depth_zs: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_DEPTH_ZS_OFFSET                           0x21c8u /* established */

/*
 * Depth step in x, 25.12 two's complement (established, [spec] PDF 169-170).
 * Written through its start alias, as for the start depth.
 */
/* depth_dzdx: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_DEPTH_DZDX_OFFSET                         0x21d0u /* established */

/*
 * Depth step in y, 25.12 two's complement (established, [spec] PDF 169-170).
 * Written through its start alias, as for the start depth.
 */
/* depth_dzdy: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_DEPTH_DZDY_OFFSET                         0x21d8u /* established */

/*
 * Stencil test and update word. The specification leaves its field table empty
 * (established, [spec] PDF 182). The field positions below are inferred from the
 * words the shipped driver stores here. The six operation names are established
 * from [spec] Table 7-27 (PDF 214), but the specification's stencil section is
 * marked TBD. Its orientation of the comparison conflicts with the API and the
 * driver; see docs/pixel-arithmetic.md. Written through its start alias.
 */
/* stencil_mode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_STENCIL_MODE_OFFSET                       0x21e0u /* established */
#define RE_STENCIL_MODE_REF_SHIFT                    24 /* inferred */
#define RE_STENCIL_MODE_REF_MASK                     0xffu
#define RE_STENCIL_MODE_REF_INPLACE                  (RE_STENCIL_MODE_REF_MASK << RE_STENCIL_MODE_REF_SHIFT)
#define RE_STENCIL_MODE_VALUE_MASK_SHIFT             16 /* inferred */
#define RE_STENCIL_MODE_VALUE_MASK_MASK              0xffu
#define RE_STENCIL_MODE_VALUE_MASK_INPLACE           (RE_STENCIL_MODE_VALUE_MASK_MASK << RE_STENCIL_MODE_VALUE_MASK_SHIFT)
#define RE_STENCIL_MODE_FUNC_SHIFT                   12 /* inferred */
#define RE_STENCIL_MODE_FUNC_MASK                    0xfu
#define RE_STENCIL_MODE_FUNC_INPLACE                 (RE_STENCIL_MODE_FUNC_MASK << RE_STENCIL_MODE_FUNC_SHIFT)
#define RE_STENCIL_MODE_FUNC_NEVER                   0 /* inferred */
#define RE_STENCIL_MODE_FUNC_LESS                    1 /* inferred */
#define RE_STENCIL_MODE_FUNC_EQUAL                   2 /* inferred */
#define RE_STENCIL_MODE_FUNC_LEQUAL                  3 /* inferred */
#define RE_STENCIL_MODE_FUNC_GREATER                 4 /* inferred */
#define RE_STENCIL_MODE_FUNC_NOTEQUAL                5 /* inferred */
#define RE_STENCIL_MODE_FUNC_GEQUAL                  6 /* inferred */
#define RE_STENCIL_MODE_FUNC_ALWAYS                  7 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_SHIFT                8 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_MASK                 0xfu
#define RE_STENCIL_MODE_FAIL_OP_INPLACE              (RE_STENCIL_MODE_FAIL_OP_MASK << RE_STENCIL_MODE_FAIL_OP_SHIFT)
#define RE_STENCIL_MODE_FAIL_OP_KEEP                 0 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_ZERO                 1 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_REPLACE              2 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_INCR                 3 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_DECR                 4 /* inferred */
#define RE_STENCIL_MODE_FAIL_OP_INVERT               5 /* inferred */
#define RE_STENCIL_MODE_DEPTH_FAIL_OP_SHIFT          4 /* inferred */
#define RE_STENCIL_MODE_DEPTH_FAIL_OP_MASK           0xfu
#define RE_STENCIL_MODE_DEPTH_FAIL_OP_INPLACE        (RE_STENCIL_MODE_DEPTH_FAIL_OP_MASK << RE_STENCIL_MODE_DEPTH_FAIL_OP_SHIFT)
#define RE_STENCIL_MODE_PASS_OP_SHIFT                0 /* inferred */
#define RE_STENCIL_MODE_PASS_OP_MASK                 0xfu
#define RE_STENCIL_MODE_PASS_OP_INPLACE              (RE_STENCIL_MODE_PASS_OP_MASK << RE_STENCIL_MODE_PASS_OP_SHIFT)

/*
 * Stencil write mask. The driver writes either 0 or 0xff here on its depth path
 * (inferred). Only bits 7:0 are the mask; bits 31:8 have no established meaning.
 * Written through its start alias, as for the start depth.
 */
/* stencil_mask: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_STENCIL_MASK_OFFSET                       0x21e8u /* established */
#define RE_STENCIL_MASK_WRITE_MASK_SHIFT             0 /* inferred */
#define RE_STENCIL_MASK_WRITE_MASK_MASK              0xffu
#define RE_STENCIL_MASK_WRITE_MASK_INPLACE           (RE_STENCIL_MASK_WRITE_MASK_MASK << RE_STENCIL_MASK_WRITE_MASK_SHIFT)

/* pixpipe_null: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PIXPIPE_NULL_OFFSET                       0x21f0u /* established */

/* pixpipe_flush: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PIXPIPE_FLUSH_OFFSET                      0x21f8u /* established */

/*
 * The status register is read with 32-bit loads. Shipped software polls the
 * combined idle bit (28), reads the interface-buffer fill level from bits
 * 24:18 to count free slots (64 minus the level) and reads the start and write
 * pointers when saving queued writes on a context switch. The read pointer
 * (17:12) and the setup and pixel-pipe idle bits (27, 26) are taken from the
 * public NetBSD driver and no shipped software reads them. Bit 25 is the
 * memory transfer engine idle bit in the NetBSD driver; the OpenBSD driver
 * names the same bit ready and never reads it. The kernel's transfer-wait
 * routine tests bit 25, which fits an idle reading, so the position is
 * established and the meaning inferred. The start field (5:0) is where the
 * entries not yet committed begin; its meaning is inferred. The specification's
 * register map lists the status registers as a user-space region, placed after
 * the MTE registers in the rendering block (established, [spec] PDF 162).
 */
/* status: r32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_STATUS_OFFSET                             0x4000u /* established */
#define RE_STATUS_IDLE_SHIFT                         28 /* established */
#define RE_STATUS_IDLE_MASK                          0x1u
#define RE_STATUS_IDLE_INPLACE                       (RE_STATUS_IDLE_MASK << RE_STATUS_IDLE_SHIFT)
#define RE_STATUS_SETUP_IDLE_SHIFT                   27 /* established */
#define RE_STATUS_SETUP_IDLE_MASK                    0x1u
#define RE_STATUS_SETUP_IDLE_INPLACE                 (RE_STATUS_SETUP_IDLE_MASK << RE_STATUS_SETUP_IDLE_SHIFT)
#define RE_STATUS_PIXPIPE_IDLE_SHIFT                 26 /* established */
#define RE_STATUS_PIXPIPE_IDLE_MASK                  0x1u
#define RE_STATUS_PIXPIPE_IDLE_INPLACE               (RE_STATUS_PIXPIPE_IDLE_MASK << RE_STATUS_PIXPIPE_IDLE_SHIFT)
#define RE_STATUS_MTE_IDLE_SHIFT                     25 /* inferred */
#define RE_STATUS_MTE_IDLE_MASK                      0x1u
#define RE_STATUS_MTE_IDLE_INPLACE                   (RE_STATUS_MTE_IDLE_MASK << RE_STATUS_MTE_IDLE_SHIFT)
#define RE_STATUS_LEVEL_SHIFT                        18 /* established */
#define RE_STATUS_LEVEL_MASK                         0x7fu
#define RE_STATUS_LEVEL_INPLACE                      (RE_STATUS_LEVEL_MASK << RE_STATUS_LEVEL_SHIFT)
#define RE_STATUS_RD_PTR_SHIFT                       12 /* established */
#define RE_STATUS_RD_PTR_MASK                        0x3fu
#define RE_STATUS_RD_PTR_INPLACE                     (RE_STATUS_RD_PTR_MASK << RE_STATUS_RD_PTR_SHIFT)
#define RE_STATUS_WR_PTR_SHIFT                       6 /* established */
#define RE_STATUS_WR_PTR_MASK                        0x3fu
#define RE_STATUS_WR_PTR_INPLACE                     (RE_STATUS_WR_PTR_MASK << RE_STATUS_WR_PTR_SHIFT)
#define RE_STATUS_START_SHIFT                        0 /* inferred */
#define RE_STATUS_START_MASK                         0x3fu
#define RE_STATUS_START_INPLACE                      (RE_STATUS_START_MASK << RE_STATUS_START_SHIFT)

/*
 * ib_discard sits two doublewords above the status register. Shipped kernel
 * code stores zero to it with a 32-bit store, never reads it, and does so after
 * saving the outgoing client's queued writes on a context switch, after the
 * incoming client's loads, and at the end of each translation table loader.
 * The user-mode library and the X server never write it. Inferred: the write
 * discards the queued writes not yet committed. The register's position and
 * its write-zero use are established; that effect is inferred.
 */
/* ib_discard: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_IB_DISCARD_OFFSET                         0x4008u /* established */

/*
 * The buffer mode words (source and destination share one layout) pick the
 * buffer, its TLB and the pixel format. buf_type chooses tiled access
 * through a frame-buffer table or linear access through a linear table;
 * buf_depth is the word size in memory and pix_depth the pixel size, which
 * must not exceed it. ycrcb is valid in the source word only. Shipped
 * software writes the values in the vectors below; other bits are reserved
 * (one shipped swap path sets bit 30 as well). The specification's register
 * tables (established, [spec] PDF 171-172) mark bits 31:13 reserved and give
 * them no function. They also mark buf_type 3 and 6 and pix_type 4 to 14
 * reserved, and list only depth values 0 to 2 for buf_depth and pix_depth, so
 * value 3 of either depth field is not defined. Whether the hardware ignores
 * bits 31:13 on write or returns them on read is unknown; no shipped software
 * or published source depends on it.
 * When doublePix is set, doublePixSel says which half of the word is selected (established, [spec] PDF 171-172). The specification does not say which bit value picks the front half and which the back, so that mapping is unknown.
 */
/* word BUFMODE: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BUFMODE_WIDTH                             32 /* established */
#define RE_BUFMODE_BUF_TYPE_SHIFT                    10 /* established */
#define RE_BUFMODE_BUF_TYPE_MASK                     0x7u
#define RE_BUFMODE_BUF_TYPE_INPLACE                  (RE_BUFMODE_BUF_TYPE_MASK << RE_BUFMODE_BUF_TYPE_SHIFT)
#define RE_BUFMODE_BUF_TYPE_FB_A                     0 /* established */
#define RE_BUFMODE_BUF_TYPE_FB_B                     1 /* established */
#define RE_BUFMODE_BUF_TYPE_FB_C                     2 /* established */
#define RE_BUFMODE_BUF_TYPE_LIN_A                    4 /* established */
#define RE_BUFMODE_BUF_TYPE_LIN_B                    5 /* established */
#define RE_BUFMODE_BUF_DEPTH_SHIFT                   8 /* established */
#define RE_BUFMODE_BUF_DEPTH_MASK                    0x3u
#define RE_BUFMODE_BUF_DEPTH_INPLACE                 (RE_BUFMODE_BUF_DEPTH_MASK << RE_BUFMODE_BUF_DEPTH_SHIFT)
#define RE_BUFMODE_BUF_DEPTH_BITS8                   0 /* established */
#define RE_BUFMODE_BUF_DEPTH_BITS16                  1 /* established */
#define RE_BUFMODE_BUF_DEPTH_BITS32                  2 /* established */
#define RE_BUFMODE_PIX_TYPE_SHIFT                    4 /* established */
#define RE_BUFMODE_PIX_TYPE_MASK                     0xfu
#define RE_BUFMODE_PIX_TYPE_INPLACE                  (RE_BUFMODE_PIX_TYPE_MASK << RE_BUFMODE_PIX_TYPE_SHIFT)
#define RE_BUFMODE_PIX_TYPE_CI                       0 /* established */
#define RE_BUFMODE_PIX_TYPE_RGB                      1 /* established */
#define RE_BUFMODE_PIX_TYPE_RGBA                     2 /* established */
#define RE_BUFMODE_PIX_TYPE_ABGR                     3 /* established */
#define RE_BUFMODE_PIX_TYPE_YCRCB                    15 /* established */
#define RE_BUFMODE_PIX_DEPTH_SHIFT                   2 /* established */
#define RE_BUFMODE_PIX_DEPTH_MASK                    0x3u
#define RE_BUFMODE_PIX_DEPTH_INPLACE                 (RE_BUFMODE_PIX_DEPTH_MASK << RE_BUFMODE_PIX_DEPTH_SHIFT)
#define RE_BUFMODE_PIX_DEPTH_BITS8                   0 /* established */
#define RE_BUFMODE_PIX_DEPTH_BITS16                  1 /* established */
#define RE_BUFMODE_PIX_DEPTH_BITS32                  2 /* established */
#define RE_BUFMODE_DOUBLE_PIX_SHIFT                  1 /* established */
#define RE_BUFMODE_DOUBLE_PIX_MASK                   0x1u
#define RE_BUFMODE_DOUBLE_PIX_INPLACE                (RE_BUFMODE_DOUBLE_PIX_MASK << RE_BUFMODE_DOUBLE_PIX_SHIFT)
#define RE_BUFMODE_DOUBLE_PIX_SEL_SHIFT              0 /* established */
#define RE_BUFMODE_DOUBLE_PIX_SEL_MASK               0x1u
#define RE_BUFMODE_DOUBLE_PIX_SEL_INPLACE            (RE_BUFMODE_DOUBLE_PIX_SEL_MASK << RE_BUFMODE_DOUBLE_PIX_SEL_SHIFT)

/*
 * ib_addr holds the address half of each queued write. Software decodes its
 * upper 32 bits (IBADDR_HI, the word at the register's own address in
 * big-endian layout) as the register's doubleword index within its group, the
 * group, a byte lane code and one flag bit; the hardware meaning of the lane
 * code and the flag is inferred. The index is address bits 10:3 and the group
 * is address bits 14:12 of the register; bit 11, the start alias, is the
 * address bit left out, so the flag is inferred to mark an entry written
 * through the start alias. Replay by software writes lane 3 as one
 * doubleword, lane 2 as the first (upper) data word at the register address,
 * lane 1 as the second data word four bytes higher, and treats lane 0 as an
 * error that writes nothing. The lower 32 bits are not decoded by any shipped
 * software read.
 */
/* word IBADDR_HI: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_IBADDR_HI_WIDTH                           32 /* inferred */
#define RE_IBADDR_HI_START_FLAG_SHIFT                13 /* inferred */
#define RE_IBADDR_HI_START_FLAG_MASK                 0x1u
#define RE_IBADDR_HI_START_FLAG_INPLACE              (RE_IBADDR_HI_START_FLAG_MASK << RE_IBADDR_HI_START_FLAG_SHIFT)
#define RE_IBADDR_HI_LANE_SHIFT                      11 /* inferred */
#define RE_IBADDR_HI_LANE_MASK                       0x3u
#define RE_IBADDR_HI_LANE_INPLACE                    (RE_IBADDR_HI_LANE_MASK << RE_IBADDR_HI_LANE_SHIFT)
#define RE_IBADDR_HI_LANE_NONE                       0 /* inferred */
#define RE_IBADDR_HI_LANE_WORD1                      1 /* inferred */
#define RE_IBADDR_HI_LANE_WORD0                      2 /* inferred */
#define RE_IBADDR_HI_LANE_DWORD                      3 /* inferred */
#define RE_IBADDR_HI_GROUP_SHIFT                     8 /* established */
#define RE_IBADDR_HI_GROUP_MASK                      0x7u
#define RE_IBADDR_HI_GROUP_INPLACE                   (RE_IBADDR_HI_GROUP_MASK << RE_IBADDR_HI_GROUP_SHIFT)
#define RE_IBADDR_HI_GROUP_INTERFACE                 0 /* established */
#define RE_IBADDR_HI_GROUP_TLB                       1 /* established */
#define RE_IBADDR_HI_GROUP_PIXEL_PIPE                2 /* established */
#define RE_IBADDR_HI_GROUP_TRANSFER                  3 /* established */
#define RE_IBADDR_HI_INDEX_SHIFT                     0 /* established */
#define RE_IBADDR_HI_INDEX_MASK                      0xffu
#define RE_IBADDR_HI_INDEX_INPLACE                   (RE_IBADDR_HI_INDEX_MASK << RE_IBADDR_HI_INDEX_SHIFT)

/*
 * Each doubleword holds two 32-bit page entries, the even page in the upper
 * word and the odd page in the lower word. Software indexes a table with
 * address bits 16:13 and stores a page number with its top bit set, which is
 * inferred to be a valid bit. LINENT describes one such entry.
 */
/* word LINENT: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_LINENT_WIDTH                              32 /* inferred */
#define RE_LINENT_VALID_SHIFT                        31 /* inferred */
#define RE_LINENT_VALID_MASK                         0x1u
#define RE_LINENT_VALID_INPLACE                      (RE_LINENT_VALID_MASK << RE_LINENT_VALID_SHIFT)
#define RE_LINENT_PAGE_SHIFT                         0 /* established */
#define RE_LINENT_PAGE_MASK                          0x7fffffffu
#define RE_LINENT_PAGE_INPLACE                       (RE_LINENT_PAGE_MASK << RE_LINENT_PAGE_SHIFT)

/*
 * 16-bit RGB(A) colour pixel, named A1_RGB5 in the specification: alpha in bit 15, red in bits 14:10, green in bits 9:5 and blue in bits 4:0 (established, [spec] PDF 188, figure 5 in section 7.3.4.3). The NetBSD crmfb driver describes 16-bit raster operations as 5:5:5 with red at bit 11, green at 6 and blue at 1 (software expectation, public driver). That places the fields differently. The conflict is not resolved here.
 */
/* word PIXEL_A1_RGB5: 16 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PIXEL_A1_RGB5_WIDTH                       16 /* established */
#define RE_PIXEL_A1_RGB5_ALPHA_SHIFT                 15 /* established */
#define RE_PIXEL_A1_RGB5_ALPHA_MASK                  0x1u
#define RE_PIXEL_A1_RGB5_ALPHA_INPLACE               (RE_PIXEL_A1_RGB5_ALPHA_MASK << RE_PIXEL_A1_RGB5_ALPHA_SHIFT)
#define RE_PIXEL_A1_RGB5_RED_SHIFT                   10 /* established */
#define RE_PIXEL_A1_RGB5_RED_MASK                    0x1fu
#define RE_PIXEL_A1_RGB5_RED_INPLACE                 (RE_PIXEL_A1_RGB5_RED_MASK << RE_PIXEL_A1_RGB5_RED_SHIFT)
#define RE_PIXEL_A1_RGB5_GREEN_SHIFT                 5 /* established */
#define RE_PIXEL_A1_RGB5_GREEN_MASK                  0x1fu
#define RE_PIXEL_A1_RGB5_GREEN_INPLACE               (RE_PIXEL_A1_RGB5_GREEN_MASK << RE_PIXEL_A1_RGB5_GREEN_SHIFT)
#define RE_PIXEL_A1_RGB5_BLUE_SHIFT                  0 /* established */
#define RE_PIXEL_A1_RGB5_BLUE_MASK                   0x1fu
#define RE_PIXEL_A1_RGB5_BLUE_INPLACE                (RE_PIXEL_A1_RGB5_BLUE_MASK << RE_PIXEL_A1_RGB5_BLUE_SHIFT)

/*
 * 32-bit RGBA colour pixel, named RGBA8 in the specification (8888): red in bits 31:24, green in bits 23:16, blue in bits 15:8 and alpha in bits 7:0 (established, [spec] PDF 188, figure 5 in section 7.3.4.3).
 */
/* word PIXEL_RGBA8: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PIXEL_RGBA8_WIDTH                         32 /* established */
#define RE_PIXEL_RGBA8_RED_SHIFT                     24 /* established */
#define RE_PIXEL_RGBA8_RED_MASK                      0xffu
#define RE_PIXEL_RGBA8_RED_INPLACE                   (RE_PIXEL_RGBA8_RED_MASK << RE_PIXEL_RGBA8_RED_SHIFT)
#define RE_PIXEL_RGBA8_GREEN_SHIFT                   16 /* established */
#define RE_PIXEL_RGBA8_GREEN_MASK                    0xffu
#define RE_PIXEL_RGBA8_GREEN_INPLACE                 (RE_PIXEL_RGBA8_GREEN_MASK << RE_PIXEL_RGBA8_GREEN_SHIFT)
#define RE_PIXEL_RGBA8_BLUE_SHIFT                    8 /* established */
#define RE_PIXEL_RGBA8_BLUE_MASK                     0xffu
#define RE_PIXEL_RGBA8_BLUE_INPLACE                  (RE_PIXEL_RGBA8_BLUE_MASK << RE_PIXEL_RGBA8_BLUE_SHIFT)
#define RE_PIXEL_RGBA8_ALPHA_SHIFT                   0 /* established */
#define RE_PIXEL_RGBA8_ALPHA_MASK                    0xffu
#define RE_PIXEL_RGBA8_ALPHA_INPLACE                 (RE_PIXEL_RGBA8_ALPHA_MASK << RE_PIXEL_RGBA8_ALPHA_SHIFT)

/*
 * Each screen mask is one clip rectangle; the end coordinates are exclusive.
 * The upper word (SCRMASK_HI, at the register's own address in big-endian
 * layout) holds the start corner and the lower word (SCRMASK_LO) the end
 * corner.
 */
/* word SCRMASK_HI: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SCRMASK_HI_WIDTH                          32 /* established */
#define RE_SCRMASK_HI_X_START_SHIFT                  16 /* established */
#define RE_SCRMASK_HI_X_START_MASK                   0xffffu
#define RE_SCRMASK_HI_X_START_INPLACE                (RE_SCRMASK_HI_X_START_MASK << RE_SCRMASK_HI_X_START_SHIFT)
#define RE_SCRMASK_HI_Y_START_SHIFT                  0 /* established */
#define RE_SCRMASK_HI_Y_START_MASK                   0xffffu
#define RE_SCRMASK_HI_Y_START_INPLACE                (RE_SCRMASK_HI_Y_START_MASK << RE_SCRMASK_HI_Y_START_SHIFT)

/* word SCRMASK_LO: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_SCRMASK_LO_WIDTH                          32 /* established */
#define RE_SCRMASK_LO_X_END_SHIFT                    16 /* established */
#define RE_SCRMASK_LO_X_END_MASK                     0xffffu
#define RE_SCRMASK_LO_X_END_INPLACE                  (RE_SCRMASK_LO_X_END_MASK << RE_SCRMASK_LO_X_END_SHIFT)
#define RE_SCRMASK_LO_Y_END_SHIFT                    0 /* established */
#define RE_SCRMASK_LO_Y_END_MASK                     0xffffu
#define RE_SCRMASK_LO_Y_END_INPLACE                  (RE_SCRMASK_LO_Y_END_MASK << RE_SCRMASK_LO_Y_END_SHIFT)

/* word TLBTILE: 32 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TLBTILE_WIDTH                             32 /* inferred */
#define RE_TLBTILE_VALID_SHIFT                       15 /* inferred */
#define RE_TLBTILE_VALID_MASK                        0x1u
#define RE_TLBTILE_VALID_INPLACE                     (RE_TLBTILE_VALID_MASK << RE_TLBTILE_VALID_SHIFT)
#define RE_TLBTILE_PAGE_SHIFT                        0 /* established */
#define RE_TLBTILE_PAGE_MASK                         0x7fffu
#define RE_TLBTILE_PAGE_INPLACE                      (RE_TLBTILE_PAGE_MASK << RE_TLBTILE_PAGE_SHIFT)

#define RE_IB_ENTRIES                                0x40u /* established */
#define RE_LIN_TLB_REGS                              0x10u /* established */
#define RE_START_ALIAS_BIT                           0xbu /* established */
#define RE_TLB_ENTRIES_PER_REG                       0x4u /* established */
#define RE_TLB_TILE_SHIFT                            0x10u /* established */

#endif /* RE_GEN_H */
