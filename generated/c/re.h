/* generated from devices/re/registers.toml by defs-gen - do not edit, change the source */
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

/*
 * The shipped IRIX kernel decodes the 64-bit interface-buffer address word in software: register index in bits 39:32, group in 42:40, lane in 44:43, and a marker in bit 45 that its decoder uses as the stop entry.
 */
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
 * no bit layout for these thresholds, so the field bits below stay inferred. The shipped IRIX kernel writes the first value 0x0fefff0a (full 127, empty 63, stall 126, count 10), keeps count at 10 in every later control word, and chooses the thresholds by processor module: R10000-family and RM7000 modules get full 20, empty 0 and stall 19; the other R5000-class modules get full 48, empty 24 and stall 47.
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

/*
 * The published interface-buffer address map lists the data RAM, the address
 * RAM and the control word, and no register at the doubleword after the control
 * word (established, [spec] PDF 163-164, Table 7-1). The public NetBSD driver
 * does not access that doubleword either. Its name, width and access come from
 * the shipped kernel's zero stores, so they stay inferred. See software/kernel/reset.md. The shipped IRIX kernel writes zero here, waits 10 microseconds and rewrites the interface-buffer control word. Whether that control word is ib_ctl is inferred.
 */
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

/*
 * Texture translation entries name 64 KiB tiles (established, [spec] PDF 164, Table 7-2).
 */
/* tlb_tex: rw64, space re, reset unknown; published CRIME 1.5 draft specification, PDF 164, Table 7-2 */
#define RE_TLB_TEX_OFFSET                            0x1600u /* established */
#define RE_TLB_TEX_COUNT                             28
#define RE_TLB_TEX_STRIDE                            8

/*
 * Clip-ID translation entries name 64 KiB tiles (established, [spec] PDF 164, Table 7-2).
 */
/* tlb_cid: rw64, space re, reset unknown; published CRIME 1.5 draft specification, PDF 164, Table 7-2 */
#define RE_TLB_CID_OFFSET                            0x16e0u /* established */
#define RE_TLB_CID_COUNT                             4
#define RE_TLB_CID_STRIDE                            8

/*
 * Linear translation entries name 4 KiB pages, not 64 KiB tiles (established, [spec] PDF 164, Table 7-2).
 */
/* tlb_lin_a: rw64, space re, reset unknown; published CRIME 1.5 draft specification, PDF 164, Table 7-2 */
#define RE_TLB_LIN_A_OFFSET                          0x1700u /* established */
#define RE_TLB_LIN_A_COUNT                           16
#define RE_TLB_LIN_A_STRIDE                          8

/*
 * Linear translation entries name 4 KiB pages, not 64 KiB tiles (established, [spec] PDF 164, Table 7-2).
 */
/* tlb_lin_b: rw64, space re, reset unknown; published CRIME 1.5 draft specification, PDF 164, Table 7-2 */
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
 * the queued state as one primitive. Writes after that commit do not change
 * the committed primitive, and committed primitives run in commit order, each
 * to completion (established, [spec] PDF 186, printed 7-30).
 */
/* bufmode_src: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BUFMODE_SRC_OFFSET                        0x2000u /* established */

/* bufmode_dst: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BUFMODE_DST_OFFSET                        0x2008u /* established */

/*
 * The specification's table (established, [spec] PDF 173, Table 7-6) puts the
 * enable for screen mask 0 at bit 9 and for mask 4 at bit 5, with the
 * inside-select (scrMaskMode) for mask 0 at bit 4 and for mask 4 at bit 0. The
 * kernel sets bit 5 plus i and bit i for rectangle i (software/kernel/context.md), which is
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
 * which use the reverse. That conflict is not settled; see devices/re/pixel-arithmetic.md.
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
 * origin minus 4096 (see software/kernel/context.md), so the sign convention is unknown.
 *
 * The Y row's description in Table 7-9 repeats the X row's text. The field names
 * and bit positions give the split, X in bits 31:16 and Y in bits 15:0
 * (established, [spec] PDF 175 to 176, Table 7-9).
 *
 * The register map has no renderer register in the one-word gap after this
 * register, or in the one-word gap between the drawing window-offset register and
 * the primitive register. The specification does not say what a read or a write
 * of either gap does (established, [spec] Table 7-3, PDF 165).
 *
 * Which half of a 64-bit store reaches a 32-bit window-offset register is
 * unknown. No shipped software or published source depends on it, as far as the
 * constant-address scan shows. The scan records only 4-byte stores to the source
 * and drawing window-offset registers (evidence/inventory/mmio.tsv). Routes tried: [spec]
 * Table 7-3 and Table 7-9, which give no store-width rule for these words, and the
 * public NetBSD driver, which writes both offsets with 32-bit stores (inferred,
 * software expectation). Not checked: whether a copy loop stores doublewords across
 * these words.
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
 * the source offset (the read window's register). The store-width question in
 * that entry applies here too.
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
 *
 * The unit of the line width is unknown. The specification's six-bit subpixel precision (established, [spec] PDF 159) is listed for OpenGL rasterization, not for X lines. The public NetBSD O2 framebuffer driver's register header calls the field half pixels (inferred, software expectation). Which scale the X engine uses is unknown. See devices/re/de-2d-drawing.md.
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

/*
 * In X mode the host gives each coordinate as a 16-bit unsigned value, in the range [0, 2^16) (established, [spec] PDF 197). The specification does not say how the two coordinates share a vertex word. The public NetBSD O2 framebuffer driver puts X in bits 31:16 and Y in bits 15:0 (inferred, software expectation). See devices/re/de-2d-drawing.md. The shipped IRIX kernel writes the 16-bit X vertex form for a pixel DMA caller that is bound to the engine.
 */
/* vertex_x: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_VERTEX_X_OFFSET                           0x2070u /* established */
#define RE_VERTEX_X_COUNT                            3
#define RE_VERTEX_X_STRIDE                           4

/*
 * Table 7-3 lists each GL vertex word as 32 bits, non-global and write-only, in 13.6 fixed point (established, [spec] PDF 166). The GL-mode text on PDF 197 instead gives 13.4 unsigned fixed point over [0, 2^13) (established). The feature list on PDF 159 gives 6-bit subpixel precision, which fits the 13.6 reading. The two engine descriptions conflict. Which one the engine implements is unknown.
 *
 * Start-alias stores (inferred, software expectation, evidence/inventory/mmio.tsv). The scan records 32-bit stores through the start alias of the x and y words of Vertex.GL[0] and Vertex.GL[1]. It records 64-bit alias stores to Vertex.GL[0].x and Vertex.GL[1].x as well, and no alias store to any Vertex.GL[2] word. The 64-bit alias stores are not explained, so the alias width is unsettled.
 *
 * Readback extents (inferred, software expectation). A GL readback of a
 * rectangle writes inclusive pixel indices, not the half-open edges of the
 * scissor: the far x is the start x plus the programmed copy width minus one,
 * and the far y is the start y minus the row count plus one, each as
 * (index << 6) & 0x7ffff. A one-row readback therefore writes equal y words and
 * still copies one row. Only driver writes show this. How the engine resolves a
 * fractional edge is unknown. See software/opengl/pixel-transfer.md.
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
 * software/opengl/pixel-transfer.md. The shipped IRIX kernel names this word the pixel-transfer screen position, x in bits 26:16 and y in bits 10:0.
 */
/* xfer_src_addr: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_ADDR_OFFSET                      0x20a0u /* established */

/* xfer_src_stride: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_STRIDE_OFFSET                    0x20a4u /* established */

/* xfer_src_xstep: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_XFER_SRC_XSTEP_OFFSET                     0x20a8u /* established */

/*
 * The shipped IRIX kernel writes it for an unbound caller as (zoom - 1) << 28 | (stride + pixel size - width).
 */
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
 * software/opengl/pixel-transfer.md.
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

/*
 * The specification gives the pattern as one 32-bit word (established, [spec] PDF 166, Table 7-3). It does not say which bit is drawn first or where a glyph row sits in the word. The public NetBSD O2 framebuffer driver places an 8-bit font row at bits 31:24 and a 16-bit row at bits 31:16 (inferred, software expectation), so rows fill the high end of the word. Sample order within the word is unknown. See devices/re/de-2d-drawing.md.
 */
/* stipple_pattern: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_STIPPLE_PATTERN_OFFSET                    0x20c4u /* established */

/*
 * Flat-shaded colour for triangles and lines with DrawMode shade bit 16 clear, and for points and rectangles always. The engine assigns this one value to every fragment (established, [spec] PDF 200, section 7.3.7.1). Colour index flat shading loads an 8-bit index for 8-bit pixels and a 12-bit index for 16-bit and 32-bit pixels. RGBA flat shading loads an RGBA8 value whatever the pixel depth (established, [spec] PDF 200).
 */
/* fg_color: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FG_COLOR_OFFSET                           0x20d0u /* established */

/* bg_color: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_BG_COLOR_OFFSET                           0x20d8u /* established */

/*
 * The R, G, B and A colour starts here, and the eight slope registers after them (Shade.drdx through Shade.dady), are 21-bit two's complement steppers in 9.12 form, with twelve fraction bits (established, [spec] PDF 200-201 and Table 16 on printed page 7-45). The specification does not say which 21 bits of the 32-bit word hold the value. Reading the low 21 bits is inferred; software/opengl/opengl.md notes that the upper bits of the starts are ignored (inferred). One unit is 4096 (twelve fraction bits), so 255.0 is the word 255 times 4096 (established, [spec] PDF 200-201). Colour arithmetic and its clamp are in devices/re/pixel-arithmetic.md.
 *
 * Table 7-3 marks all twelve shading words as 32-bit, non-global and write-only (established, [spec] PDF 166-167).
 *
 * Flat shading gives every fragment the foreground colour, so these words do not change flat triangle, line, point or rectangle output (established, [spec] PDF 200).
 *
 * Each word also has a START alias, which sits 2048 bytes above it. The manual names the START offset without a value. The public NetBSD O2 framebuffer driver supplies 2048 (established, public NetBSD driver; [spec] PDF 186).
 */
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

/*
 * Texture mode register, 32 bits (established, [spec] PDF 178-179, Table 7-13). Bits 31:25 are reserved. The fields below carry the table's bit ranges and names. Enumerated values are the table's own; encodings it marks reserved have no name here.
 */
/* tex_mode: rw32, space re, reset unknown; published CRIME 1.5 draft specification, PDF 178-179, Table 7-13 */
#define RE_TEX_MODE_OFFSET                           0x2110u /* established */
#define RE_TEX_MODE_TILED_SHIFT                      24 /* established */
#define RE_TEX_MODE_TILED_MASK                       0x1u
#define RE_TEX_MODE_TILED_INPLACE                    (RE_TEX_MODE_TILED_MASK << RE_TEX_MODE_TILED_SHIFT)
#define RE_TEX_MODE_TEXEL_TYPE_SHIFT                 20 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_MASK                  0xfu
#define RE_TEX_MODE_TEXEL_TYPE_INPLACE               (RE_TEX_MODE_TEXEL_TYPE_MASK << RE_TEX_MODE_TEXEL_TYPE_SHIFT)
#define RE_TEX_MODE_TEXEL_TYPE_RGB                   1 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_RGBA                  2 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_RGBA4                 4 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_ALPHA                 5 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_INTENSITY             6 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_LUMINANCE             7 /* established */
#define RE_TEX_MODE_TEXEL_TYPE_LUMINANCE_ALPHA       8 /* established */
#define RE_TEX_MODE_TEXEL_DEPTH_SHIFT                18 /* established */
#define RE_TEX_MODE_TEXEL_DEPTH_MASK                 0x3u
#define RE_TEX_MODE_TEXEL_DEPTH_INPLACE              (RE_TEX_MODE_TEXEL_DEPTH_MASK << RE_TEX_MODE_TEXEL_DEPTH_SHIFT)
#define RE_TEX_MODE_TEXEL_DEPTH_BITS16               1 /* established */
#define RE_TEX_MODE_TEXEL_DEPTH_BITS32               2 /* established */
#define RE_TEX_MODE_MAP_LEVEL_SHIFT                  14 /* established */
#define RE_TEX_MODE_MAP_LEVEL_MASK                   0xfu
#define RE_TEX_MODE_MAP_LEVEL_INPLACE                (RE_TEX_MODE_MAP_LEVEL_MASK << RE_TEX_MODE_MAP_LEVEL_SHIFT)
#define RE_TEX_MODE_MAX_LEVEL_SHIFT                  10 /* established */
#define RE_TEX_MODE_MAX_LEVEL_MASK                   0xfu
#define RE_TEX_MODE_MAX_LEVEL_INPLACE                (RE_TEX_MODE_MAX_LEVEL_MASK << RE_TEX_MODE_MAX_LEVEL_SHIFT)
#define RE_TEX_MODE_MIN_FILTER_SHIFT                 7 /* established */
#define RE_TEX_MODE_MIN_FILTER_MASK                  0x7u
#define RE_TEX_MODE_MIN_FILTER_INPLACE               (RE_TEX_MODE_MIN_FILTER_MASK << RE_TEX_MODE_MIN_FILTER_SHIFT)
#define RE_TEX_MODE_MIN_FILTER_NEAREST               0 /* established */
#define RE_TEX_MODE_MIN_FILTER_LINEAR                1 /* established */
#define RE_TEX_MODE_MIN_FILTER_NEAREST_MIPMAP_NEAREST 2 /* established */
#define RE_TEX_MODE_MIN_FILTER_LINEAR_MIPMAP_NEAREST 3 /* established */
#define RE_TEX_MODE_MIN_FILTER_NEAREST_MIPMAP_LINEAR 4 /* established */
#define RE_TEX_MODE_MIN_FILTER_LINEAR_MIPMAP_LINEAR  5 /* established */
#define RE_TEX_MODE_MAG_FILTER_SHIFT                 6 /* established */
#define RE_TEX_MODE_MAG_FILTER_MASK                  0x1u
#define RE_TEX_MODE_MAG_FILTER_INPLACE               (RE_TEX_MODE_MAG_FILTER_MASK << RE_TEX_MODE_MAG_FILTER_SHIFT)
#define RE_TEX_MODE_MAG_FILTER_NEAREST               0 /* established */
#define RE_TEX_MODE_MAG_FILTER_LINEAR                1 /* established */
#define RE_TEX_MODE_WRAP_S_SHIFT                     4 /* established */
#define RE_TEX_MODE_WRAP_S_MASK                      0x3u
#define RE_TEX_MODE_WRAP_S_INPLACE                   (RE_TEX_MODE_WRAP_S_MASK << RE_TEX_MODE_WRAP_S_SHIFT)
#define RE_TEX_MODE_WRAP_S_CLAMP                     0 /* established */
#define RE_TEX_MODE_WRAP_S_REPEAT                    1 /* established */
#define RE_TEX_MODE_WRAP_S_CLAMP_TO_EDGE             2 /* established */
#define RE_TEX_MODE_WRAP_S_CLAMP_TO_BORDER           3 /* established */
#define RE_TEX_MODE_WRAP_T_SHIFT                     2 /* established */
#define RE_TEX_MODE_WRAP_T_MASK                      0x3u
#define RE_TEX_MODE_WRAP_T_INPLACE                   (RE_TEX_MODE_WRAP_T_MASK << RE_TEX_MODE_WRAP_T_SHIFT)
#define RE_TEX_MODE_WRAP_T_CLAMP                     0 /* established */
#define RE_TEX_MODE_WRAP_T_REPEAT                    1 /* established */
#define RE_TEX_MODE_WRAP_T_CLAMP_TO_EDGE             2 /* established */
#define RE_TEX_MODE_WRAP_T_CLAMP_TO_BORDER           3 /* established */
#define RE_TEX_MODE_FUNC_SHIFT                       0 /* established */
#define RE_TEX_MODE_FUNC_MASK                        0x3u
#define RE_TEX_MODE_FUNC_INPLACE                     (RE_TEX_MODE_FUNC_MASK << RE_TEX_MODE_FUNC_SHIFT)
#define RE_TEX_MODE_FUNC_MODULATE                    0 /* established */
#define RE_TEX_MODE_FUNC_DECAL                       1 /* established */
#define RE_TEX_MODE_FUNC_BLEND                       2 /* established */
#define RE_TEX_MODE_FUNC_REPLACE                     3 /* established */

/*
 * Texture format word, 64 bits (established, [spec] PDF 179, Table 7-14). Bits 63:48 are reserved. The table names six fields and their bit ranges but gives no description for any of them, so what each field computes is unknown here.
 */
/* tex_format: rw64, space re, reset unknown; published CRIME 1.5 draft specification, PDF 179, Table 7-14 */
#define RE_TEX_FORMAT_OFFSET                         0x2118u /* established */
#define RE_TEX_FORMAT_U_SHIFT_SHIFT                  44 /* established */
#define RE_TEX_FORMAT_U_SHIFT_MASK                   0xfull
#define RE_TEX_FORMAT_U_SHIFT_INPLACE                (RE_TEX_FORMAT_U_SHIFT_MASK << RE_TEX_FORMAT_U_SHIFT_SHIFT)
#define RE_TEX_FORMAT_V_SHIFT_SHIFT                  40 /* established */
#define RE_TEX_FORMAT_V_SHIFT_MASK                   0xfull
#define RE_TEX_FORMAT_V_SHIFT_INPLACE                (RE_TEX_FORMAT_V_SHIFT_MASK << RE_TEX_FORMAT_V_SHIFT_SHIFT)
#define RE_TEX_FORMAT_U_WRAP_SHIFT_SHIFT             36 /* established */
#define RE_TEX_FORMAT_U_WRAP_SHIFT_MASK              0xfull
#define RE_TEX_FORMAT_U_WRAP_SHIFT_INPLACE           (RE_TEX_FORMAT_U_WRAP_SHIFT_MASK << RE_TEX_FORMAT_U_WRAP_SHIFT_SHIFT)
#define RE_TEX_FORMAT_V_WRAP_SHIFT_SHIFT             32 /* established */
#define RE_TEX_FORMAT_V_WRAP_SHIFT_MASK              0xfull
#define RE_TEX_FORMAT_V_WRAP_SHIFT_INPLACE           (RE_TEX_FORMAT_V_WRAP_SHIFT_MASK << RE_TEX_FORMAT_V_WRAP_SHIFT_SHIFT)
#define RE_TEX_FORMAT_U_INDEX_MASK_SHIFT             16 /* established */
#define RE_TEX_FORMAT_U_INDEX_MASK_MASK              0xffffull
#define RE_TEX_FORMAT_U_INDEX_MASK_INPLACE           (RE_TEX_FORMAT_U_INDEX_MASK_MASK << RE_TEX_FORMAT_U_INDEX_MASK_SHIFT)
#define RE_TEX_FORMAT_V_INDEX_MASK_SHIFT             0 /* established */
#define RE_TEX_FORMAT_V_INDEX_MASK_MASK              0xffffull
#define RE_TEX_FORMAT_V_INDEX_MASK_INPLACE           (RE_TEX_FORMAT_V_INDEX_MASK_MASK << RE_TEX_FORMAT_V_INDEX_MASK_SHIFT)

/*
 * The START alias of this 64-bit word is 2048 bytes above it (established, the NetBSD O2 framebuffer driver's register definitions, `CRIME_DE_START` 0x0800; the specification, PDF 186, names a START_OFFSET without giving its value). Its write width is unknown: the public manual gives no START width for the texture plane words, and the survey of shipped software records no 8-byte START store to any of the 64-bit texture plane words (unknown).
 */
/* tex_sqs: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_SQS_OFFSET                            0x2120u /* established */

/* tex_tqs: w64, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_TEX_TQS_OFFSET                            0x2128u /* established */

/*
 * The textured triangle set-up commits the primitive with a 4-byte write to this word's START alias, which is the last texture write it makes. It writes the other texture words at their ordinary addresses first (inferred, software expectation: the `__glCrmFillTriangle` entry in software/opengl/libglcore.md, whose texture set-up stores the S and T numerators at their ordinary addresses and then this word through its START alias). The public manual does not say which register commits a textured primitive.
 */
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

/*
 * The shipped IRIX library keeps three 8-bit colour components in bits 31:8.
 */
/* fog_color: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_COLOR_OFFSET                          0x2170u /* established */
#define RE_FOG_COLOR_RGB_SHIFT                       8 /* established */
#define RE_FOG_COLOR_RGB_MASK                        0xffffffu
#define RE_FOG_COLOR_RGB_INPLACE                     (RE_FOG_COLOR_RGB_MASK << RE_FOG_COLOR_RGB_SHIFT)

/* fog_fs: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_FS_OFFSET                             0x2178u /* established */

/* fog_dfdx: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_DFDX_OFFSET                           0x2180u /* established */

/* fog_dfdy: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_FOG_DFDY_OFFSET                           0x2188u /* established */

/*
 * Antialiasing applies only to point and line primitives and only to RGB(A) pixels. It acts on alpha after fogging and before the alpha test. For antialiased lines the specification assumes a line width of two (established, [spec] PDF 206, section 7.3.7.10). The coverage value is a 0.8 fixed-point number, computed from a 128 by 8 slope-and-distance table and a 128 by 4-bit endpoint table, both in ROM (established, [spec] PDF 206-207). The ROM contents are not published, so they are unknown.
 * The register map gives this word as a 2.12 two's complement value for both the slope and the ideal minor coordinate (established, [spec] register map, PDF 169). The antialiasing register table on PDF 180 gives the same bit split but calls both halves 2.14 (established), and the prose on PDF 207 says 2.12. software/opengl/opengl.md reads both halves as 2.14, the precision the driver's arithmetic uses. The precision is not resolved here. The bit split below is the one PDF 180 and the driver reads share. The driver reduces the ideal minor coordinate modulo four pixels (inferred, software/opengl/opengl.md). The shipped IRIX library writes the minor-axis slope in bits 31:16 and the start position with 8 fraction bits in bits 15:0.
 */
/* aa_line: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_AA_LINE_OFFSET                            0x2190u /* established */
#define RE_AA_LINE_SLOPE_SHIFT                       16 /* established */
#define RE_AA_LINE_SLOPE_MASK                        0xffffu
#define RE_AA_LINE_SLOPE_INPLACE                     (RE_AA_LINE_SLOPE_MASK << RE_AA_LINE_SLOPE_SHIFT)
#define RE_AA_LINE_IDEAL_SHIFT                       0 /* established */
#define RE_AA_LINE_IDEAL_MASK                        0xffffu
#define RE_AA_LINE_IDEAL_INPLACE                     (RE_AA_LINE_IDEAL_MASK << RE_AA_LINE_IDEAL_SHIFT)

/*
 * The register map gives this word as the start and end endpoint coverage values, each a 7-bit value (established, [spec] register map, PDF 169). The published text does not place them within the word. The split below is a software reading (inferred, software/opengl/opengl.md): the driver writes values from 1 to 64, which fit in 7 bits, with the start value in bits 15:8 and the end value in bits 7:0.
 */
/* aa_cov: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_AA_COV_OFFSET                             0x2194u /* established */
#define RE_AA_COV_START_SHIFT                        8 /* inferred */
#define RE_AA_COV_START_MASK                         0xffu
#define RE_AA_COV_START_INPLACE                      (RE_AA_COV_START_MASK << RE_AA_COV_START_SHIFT)
#define RE_AA_COV_END_SHIFT                          0 /* inferred */
#define RE_AA_COV_END_MASK                           0xffu
#define RE_AA_COV_END_INPLACE                        (RE_AA_COV_END_MASK << RE_AA_COV_END_SHIFT)

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
 * Blend equation and factors. The source factor table has a SRC_ALPHA_SATURATE row with no factor given, and the destination factor table has no such code (established absence, [spec] Tables 7-20 and 7-21, PDF 208-209). The specification's factor arithmetic therefore omits it. It also gives no clamp for ADD or SUBTRACT. Both are unknown here; see devices/re/pixel-arithmetic.md.
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
 * The register's own field table is empty in the specification (section 7.3.1.17). The sixteen bitwise operations are listed in Table 7-23 (established, [spec] PDF 210-211, section 7.3.7.14), and devices/re/pixel-arithmetic.md gives them. The operation acts on the source colour after dithering and the destination read from the frame buffer. The numeric code for each operation comes from the drivers, not the specification. The shipped IRIX library writes the GL logic operation code minus GL_CLEAR, a value in 0 to 15.
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

/*
 * A 1 in the mask updates the matching colour bit and a 0 leaves it unchanged. The
 * engine has no per-bit write, so it does a read-modify-write of the pixel
 * (established, [spec] PDF 211, section 7.3.7.15). The mask applies to colour-index
 * and RGB(A) pixels alike. Its use with DrawMode bit 7 is in devices/re/de-2d-drawing.md.
 */
/* colormask: rw32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_COLORMASK_OFFSET                          0x21b8u /* established */

/*
 * Depth comparison and clear-depth word. The specification omits the field
 * encoding: the register map names the register (PDF 169) and its field table is empty (established, [spec] PDF 182). The field layout below is inferred
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
 * driver; see devices/re/pixel-arithmetic.md. Written through its start alias.
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

/*
 * The shipped IRIX kernel treats this null pixel-pipeline register as global.
 */
/* pixpipe_null: w32, space re, reset unknown; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PIXPIPE_NULL_OFFSET                       0x21f0u /* established */

/*
 * The shipped IRIX library writes zero and then polls the idle bit.
 */
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
 * the MTE registers in the rendering block (established, [spec] PDF 162 and figure 7-3 on PDF 163).
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
 * The pixel figure (established, [spec] PDF 188, figure 7-5 in section 7.3.4.3) draws no 32-bit RGB layout. It shows CI8, CI12, RG3_B2, A1_RGB5 and RGBA8 only. So the bit positions of red, green and blue for pix_type 1 at 32 bits are unknown, and so is whether the low byte is unused. Routes tried: that figure. Not yet tried: the 32-bit RGB paths in the public NetBSD driver and in shipped libGLcore readbacks.
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
 * 16-bit RGB(A) colour pixel, named A1_RGB5 in the specification: alpha in bit 15, red in bits 14:10, green in bits 9:5 and blue in bits 4:0 (established, [spec] PDF 188, figure 5 in section 7.3.4.3). The NetBSD crmfb driver describes 16-bit raster operations as 5:5:5 with red at bit 11, green at 6 and blue at 1 (software expectation, public driver). That places the fields differently. The conflict is not resolved here. Its pixel type and depth codes are rgba and bits16 in BUFMODE (inferred, on the same basis as RG3_B2).
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
 * 8-bit RGB colour pixel, named RG3_B2 (332) in the specification: red in bits 7:5, green in bits 4:2 and blue in bits 1:0, with no alpha field (established, [spec] PDF 188, figure 7-5 in section 7.3.4.3). Its pixel type and depth codes are rgb and bits8 in BUFMODE (inferred: the figure gives the name and depth but does not print the codes).
 */
/* word PIXEL_RG3_B2: 8 bits; published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings */
#define RE_PIXEL_RG3_B2_WIDTH                        8 /* established */
#define RE_PIXEL_RG3_B2_RED_SHIFT                    5 /* established */
#define RE_PIXEL_RG3_B2_RED_MASK                     0x7u
#define RE_PIXEL_RG3_B2_RED_INPLACE                  (RE_PIXEL_RG3_B2_RED_MASK << RE_PIXEL_RG3_B2_RED_SHIFT)
#define RE_PIXEL_RG3_B2_GREEN_SHIFT                  2 /* established */
#define RE_PIXEL_RG3_B2_GREEN_MASK                   0x7u
#define RE_PIXEL_RG3_B2_GREEN_INPLACE                (RE_PIXEL_RG3_B2_GREEN_MASK << RE_PIXEL_RG3_B2_GREEN_SHIFT)
#define RE_PIXEL_RG3_B2_BLUE_SHIFT                   0 /* established */
#define RE_PIXEL_RG3_B2_BLUE_MASK                    0x3u
#define RE_PIXEL_RG3_B2_BLUE_INPLACE                 (RE_PIXEL_RG3_B2_BLUE_MASK << RE_PIXEL_RG3_B2_BLUE_SHIFT)

/*
 * 32-bit RGBA colour pixel, named RGBA8 in the specification (8888): red in bits 31:24, green in bits 23:16, blue in bits 15:8 and alpha in bits 7:0 (established, [spec] PDF 188, figure 5 in section 7.3.4.3). Its pixel type and depth codes are rgba and bits32 in BUFMODE (inferred, on the same basis as RG3_B2).
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

#define RE_GL_UNBOUND_BIAS                           0x21000u /* established */
#define RE_GL_VERTEX_BIAS                            0x1000u /* established */
#define RE_IB_ENTRIES                                0x40u /* established */
#define RE_LINEAR_WINDOW_MASK                        0x1ffffu /* established */
#define RE_LIN_TLB_MAX_PAGES                         0x20u /* established */
#define RE_LIN_TLB_REGS                              0x10u /* established */
#define RE_PRIM_RECT                                 0x3020000u /* established */
#define RE_PRIM_TRIANGLE                             0x2000000u /* established */
#define RE_RENDER_COUNT_INIT                         0xau /* established */
#define RE_RENDER_CTL_INIT                           0xfefff0au /* established */
#define RE_RENDER_R10K_EMPTY                         0x0u /* established */
#define RE_RENDER_R10K_FULL                          0x14u /* established */
#define RE_RENDER_R10K_STALL                         0x13u /* established */
#define RE_RENDER_R5K_EMPTY                          0x18u /* established */
#define RE_RENDER_R5K_FULL                           0x30u /* established */
#define RE_RENDER_R5K_STALL                          0x2fu /* established */
#define RE_START_ALIAS_BIT                           0xbu /* established */
#define RE_TEX_MAX_TEXELS                            0x400u /* inferred */
#define RE_TEX_SUBTILE_CELL_BYTES                    0x20u /* inferred */
#define RE_TILE_PAGES                                0x10u /* established */
#define RE_TLB_ENTRIES_PER_REG                       0x4u /* established */
#define RE_TLB_TILE_SHIFT                            0x10u /* established */
#define RE_VTX_DEPTH_BASE                            0x840000u /* established */
#define RE_VTX_STEP                                  0x40u /* established */
#define RE_VTX_TRI_BASE                              0x48040000u /* established */

#endif /* RE_GEN_H */
