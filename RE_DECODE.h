/*
 * RE_DECODE.h - O2 CRIME rendering engine: interface buffer, linear TLBs and clip state
 *
 * Publish-safe register contract for the parts of the rendering engine window
 * (physical 0x15000000) that the memory transfer engine header does not cover:
 * the host interface buffer, the linear translation tables and the clip
 * registers. Offsets are from the start of that window. A write to the start
 * alias of a register (the same address with bit 11 set) commits the queued
 * state as one primitive.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   ENUM: <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Derivation. Offsets come from the public CRIME 1.5 draft specification and
 * the public NetBSD O2 framebuffer driver. Field layouts come from reading how
 * shipped IRIX software assembles and decodes the words: the context switch
 * that saves and replays queued writes, the clip set-up for a window, the
 * linear table loaders and the initialisation and error-recovery sequences.
 * "established" here means shipped software uses the layout exactly so; where
 * only the hardware meaning of a field is a reading, the field is "inferred".
 * The specification gives no layout for the interface buffer address RAM and
 * no reset column for the rendering registers; reset values are unknown.
 *
 * Widths. The specification describes the rendering registers as doublewords.
 * Shipped software stores the clip mode and the interface buffer control with
 * single 32-bit stores, so those two are listed at 32 bits.
 */
#ifndef RE_DECODE_H
#define RE_DECODE_H

#include <stdint.h>

#define RE_IB_ENTRIES 64 /* established: shipped software walks the buffer as a ring of 64; the specification text says 128 */
#define RE_SCRMASK_COUNT 5 /* established: five screen masks */
#define RE_LIN_TLB_REGS 16 /* established: doublewords per linear table, two page entries each */
#define RE_START_ALIAS_BIT 11 /* established: address bit that selects the start alias of a register */

/* ---- interface buffer ---- */
/*
 * The interface buffer holds 64 queued writes. The specification's table
 * names 128 entries, but its address half sits 512 bytes above the data
 * half, which leaves room for 64 doublewords of data, and shipped software
 * walks a ring of 64 (RE_IB_ENTRIES). Each queued write has a data
 * doubleword and an address doubleword; the address half is decoded below.
 * The window shares its low offsets with the CRIME CPU-interface registers,
 * so the rendering engine registers live in their own address space.
 */
/* REG: RE.ib_data 0x0000 rw64 count=64 reset=unknown established */
/* REG: RE.ib_addr 0x0200 rw64 count=64 reset=unknown established */
/* REG: RE.ib_ctl 0x400 w32 reset=unknown established */
/* REG: RE.ib_reset 0x408 w32 reset=unknown inferred */
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
/* FIELD: IBADDR_HI.index 7:0 established */
#define RE_IBADDR_HI_INDEX_SHIFT 0
#define RE_IBADDR_HI_INDEX_MASK  0xffu
/* FIELD: IBADDR_HI.group 10:8 established */
#define RE_IBADDR_HI_GROUP_SHIFT 8
#define RE_IBADDR_HI_GROUP_MASK  0x7u
/* ENUM: IBADDR_HI.group 0 interface established */
#define RE_IBADDR_HI_GROUP_INTERFACE 0
/* ENUM: IBADDR_HI.group 1 tlb established */
#define RE_IBADDR_HI_GROUP_TLB 1
/* ENUM: IBADDR_HI.group 2 pixel_pipe established */
#define RE_IBADDR_HI_GROUP_PIXEL_PIPE 2
/* ENUM: IBADDR_HI.group 3 transfer established */
#define RE_IBADDR_HI_GROUP_TRANSFER 3
/* FIELD: IBADDR_HI.lane 12:11 inferred */
#define RE_IBADDR_HI_LANE_SHIFT 11
#define RE_IBADDR_HI_LANE_MASK  0x3u
/* ENUM: IBADDR_HI.lane 0 none inferred */
#define RE_IBADDR_HI_LANE_NONE 0
/* ENUM: IBADDR_HI.lane 1 word1 inferred */
#define RE_IBADDR_HI_LANE_WORD1 1
/* ENUM: IBADDR_HI.lane 2 word0 inferred */
#define RE_IBADDR_HI_LANE_WORD0 2
/* ENUM: IBADDR_HI.lane 3 dword inferred */
#define RE_IBADDR_HI_LANE_DWORD 3
/* FIELD: IBADDR_HI.start_flag 13:13 inferred */
#define RE_IBADDR_HI_START_FLAG_SHIFT 13
#define RE_IBADDR_HI_START_FLAG_MASK  0x1u
/*
 * EXAMPLE (unverified): 0x00001a0a as IBADDR_HI => index=10, group=2, lane=3, start_flag=0
 */

/*
 * ib_ctl is write only. Software assembles it from four 7-bit levels; the
 * kernel's boot value parks every threshold out of reach until the CPU module
 * is known. The meaning of the levels follows the names software gives them
 * and the interrupts they raise, so the fields are inferred.
 */
/* FIELD: RE.ib_ctl.count 6:0 inferred */
#define RE_IB_CTL_COUNT_SHIFT 0
#define RE_IB_CTL_COUNT_MASK  0x7fu
/* FIELD: RE.ib_ctl.stall 13:7 inferred */
#define RE_IB_CTL_STALL_SHIFT 7
#define RE_IB_CTL_STALL_MASK  0x7fu
/* FIELD: RE.ib_ctl.empty 20:14 inferred */
#define RE_IB_CTL_EMPTY_SHIFT 14
#define RE_IB_CTL_EMPTY_MASK  0x7fu
/* FIELD: RE.ib_ctl.full 27:21 inferred */
#define RE_IB_CTL_FULL_SHIFT 21
#define RE_IB_CTL_FULL_MASK  0x7fu
/*
 * TESTVEC: 0x0fefff0a as RE.ib_ctl => count=10, stall=126, empty=63, full=127
 */
/*
 * ib_reset sits in the doubleword after ib_ctl and is absent from the
 * specification's interface buffer table. Every shipped writer stores zero
 * with a 32-bit store first, waits, and then reprograms ib_ctl and the
 * tables. Inferred: it resets the interface buffer and the front end of the
 * engine. Which other units it resets is unknown.
 */

/* ---- linear translation tables ---- */
/* REG: RE.tlb_lin_a 0x1700 rw64 count=16 reset=unknown established */
/* REG: RE.tlb_lin_b 0x1780 rw64 count=16 reset=unknown established */
/*
 * Each doubleword holds two 32-bit page entries, the even page in the upper
 * word and the odd page in the lower word. Software indexes a table with
 * address bits 16:13 and stores a page number with its top bit set, which is
 * inferred to be a valid bit. LINENT describes one such entry.
 */
/* FIELD: LINENT.page 30:0 established */
#define RE_LINENT_PAGE_SHIFT 0
#define RE_LINENT_PAGE_MASK  0x7fffffffu
/* FIELD: LINENT.valid 31:31 inferred */
#define RE_LINENT_VALID_SHIFT 31
#define RE_LINENT_VALID_MASK  0x1u
/*
 * TESTVEC: 0x80000123 as LINENT => page=291, valid=1
 */

/* ---- translation tables ---- */
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
/* REG: RE.tlb_fb_a 0x1000 rw64 count=64 reset=unknown established */
/* REG: RE.tlb_fb_b 0x1200 rw64 count=64 reset=unknown established */
/* REG: RE.tlb_fb_c 0x1400 rw64 count=64 reset=unknown established */
/* REG: RE.tlb_tex 0x1600 rw64 count=28 reset=unknown established */
/* REG: RE.tlb_cid 0x16e0 rw64 count=4 reset=unknown established */
#define RE_TLB_ENTRIES_PER_REG 4 /* established: four 16-bit tile entries in each frame-buffer, texture and clip-ID doubleword */
#define RE_TLB_TILE_SHIFT 16 /* established: entry is the physical address >> 16 (64 KiB tiles) */
/* FIELD: TLBTILE.page 14:0 established */
#define RE_TLBTILE_PAGE_SHIFT 0
#define RE_TLBTILE_PAGE_MASK  0x7fffu
/* FIELD: TLBTILE.valid 15:15 inferred */
#define RE_TLBTILE_VALID_SHIFT 15
#define RE_TLBTILE_VALID_MASK  0x1u

/* ---- clip state ---- */
/* REG: RE.clipmode 0x2010 rw32 reset=unknown inferred */
/* REG: RE.scrmask 0x2020 rw64 count=5 reset=unknown established */
/*
 * clipmode pairs each screen mask with an enable bit and a mode bit. Shipped
 * software pairs mask n with enable bit 5 + n and mode bit n, so one
 * rectangle writes 0x21, two 0x63, three 0xe7, four 0x1ef and five 0x3ff. The
 * specification's table numbers the masks the opposite way round (enable of
 * its mask 0 at bit 9), which is the same bits read in reverse order, so the
 * enable and mode of one mask still travel together. The register numbering
 * of the shipped pairing is the one used here. A mode bit of 1 passes pixels
 * inside the rectangle (the polarity is inferred). Bits 10 and 11 are written
 * only for clip-ID testing and their meaning is inferred.
 */
/* FIELD: RE.clipmode.mode 4:0 established */
#define RE_CLIPMODE_MODE_SHIFT 0
#define RE_CLIPMODE_MODE_MASK  0x1fu
/* FIELD: RE.clipmode.enable 9:5 established */
#define RE_CLIPMODE_ENABLE_SHIFT 5
#define RE_CLIPMODE_ENABLE_MASK  0x1fu
/* FIELD: RE.clipmode.clip_id_map 10:10 inferred */
#define RE_CLIPMODE_CLIP_ID_MAP_SHIFT 10
#define RE_CLIPMODE_CLIP_ID_MAP_MASK  0x1u
/* FIELD: RE.clipmode.clip_id_test 11:11 inferred */
#define RE_CLIPMODE_CLIP_ID_TEST_SHIFT 11
#define RE_CLIPMODE_CLIP_ID_TEST_MASK  0x1u
/*
 * TESTVEC: 0x00000021 as RE.clipmode => mode=1, enable=1, clip_id_map=0, clip_id_test=0
 */
/*
 * TESTVEC: 0x00000063 as RE.clipmode => mode=3, enable=3
 */
/*
 * TESTVEC: 0x000003ff as RE.clipmode => mode=31, enable=31
 */
/*
 * TESTVEC: 0x00000821 as RE.clipmode => mode=1, enable=1, clip_id_test=1
 */
/*
 * Each screen mask is one clip rectangle; the end coordinates are exclusive.
 * The upper word (SCRMASK_HI, at the register's own address in big-endian
 * layout) holds the start corner and the lower word (SCRMASK_LO) the end
 * corner.
 */
/* FIELD: SCRMASK_HI.x_start 31:16 established */
#define RE_SCRMASK_HI_X_START_SHIFT 16
#define RE_SCRMASK_HI_X_START_MASK  0xffffu
/* FIELD: SCRMASK_HI.y_start 15:0 established */
#define RE_SCRMASK_HI_Y_START_SHIFT 0
#define RE_SCRMASK_HI_Y_START_MASK  0xffffu
/* FIELD: SCRMASK_LO.x_end 31:16 established */
#define RE_SCRMASK_LO_X_END_SHIFT 16
#define RE_SCRMASK_LO_X_END_MASK  0xffffu
/* FIELD: SCRMASK_LO.y_end 15:0 established */
#define RE_SCRMASK_LO_Y_END_SHIFT 0
#define RE_SCRMASK_LO_Y_END_MASK  0xffffu

/* ---- pixel pipeline ---- */
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
/* REG: RE.bufmode_src 0x2000 rw32 reset=unknown established */
/* REG: RE.bufmode_dst 0x2008 rw32 reset=unknown established */
/* REG: RE.drawmode 0x2018 rw32 reset=unknown established */
/* REG: RE.scissor 0x2048 rw64 reset=unknown established */
/* REG: RE.winoffset_src 0x2050 rw32 reset=unknown established */
/* REG: RE.winoffset_dst 0x2058 rw32 reset=unknown established */
/* REG: RE.primitive 0x2060 w32 reset=unknown established */
/* REG: RE.vertex_x 0x2070 w32 count=3 reset=unknown established */
/* REG: RE.vertex_gl 0x2080 w32 count=6 reset=unknown established */
/* REG: RE.xfer_src_addr 0x20a0 w32 reset=unknown established */
/* REG: RE.xfer_src_stride 0x20a4 w32 reset=unknown established */
/* REG: RE.xfer_src_xstep 0x20a8 w32 reset=unknown established */
/* REG: RE.xfer_src_ystep 0x20ac w32 reset=unknown established */
/* REG: RE.xfer_dst_addr 0x20b0 w32 reset=unknown established */
/* REG: RE.xfer_dst_stride 0x20b4 w32 reset=unknown established */
/* REG: RE.stipple_mode 0x20c0 rw32 reset=unknown established */
/* REG: RE.stipple_pattern 0x20c4 rw32 reset=unknown established */
/* REG: RE.fg_color 0x20d0 w32 reset=unknown established */
/* REG: RE.bg_color 0x20d8 rw32 reset=unknown established */
/* REG: RE.shade_start 0x20e0 w32 count=4 reset=unknown established */
/* REG: RE.shade_drdx 0x20f0 w32 reset=unknown established */
/* REG: RE.shade_dgdx 0x20f4 w32 reset=unknown established */
/* REG: RE.shade_drdy 0x20f8 w32 reset=unknown established */
/* REG: RE.shade_dgdy 0x20fc w32 reset=unknown established */
/* REG: RE.shade_dbdx 0x2100 w32 reset=unknown established */
/* REG: RE.shade_dadx 0x2104 w32 reset=unknown established */
/* REG: RE.shade_dbdy 0x2108 w32 reset=unknown established */
/* REG: RE.shade_dady 0x210c w32 reset=unknown established */
/* REG: RE.tex_mode 0x2110 rw32 reset=unknown established */
/* REG: RE.tex_format 0x2118 rw64 reset=unknown established */
/* REG: RE.tex_sqs 0x2120 w64 reset=unknown established */
/* REG: RE.tex_tqs 0x2128 w64 reset=unknown established */
/* REG: RE.tex_qs 0x2130 w32 reset=unknown established */
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
/* REG: RE.tex_stflags 0x2134 w32 reset=unknown established */
/* FIELD: RE.tex_stflags.s_flag 0:0 established */
#define RE_TEX_STFLAGS_S_FLAG_SHIFT 0
#define RE_TEX_STFLAGS_S_FLAG_MASK  0x1u
/* FIELD: RE.tex_stflags.t_flag 1:1 established */
#define RE_TEX_STFLAGS_T_FLAG_SHIFT 1
#define RE_TEX_STFLAGS_T_FLAG_MASK  0x1u
/* REG: RE.tex_dsqdx 0x2138 w64 reset=unknown established */
/* REG: RE.tex_dsqdy 0x2140 w64 reset=unknown established */
/* REG: RE.tex_dtqdx 0x2148 w64 reset=unknown established */
/* REG: RE.tex_dtqdy 0x2150 w64 reset=unknown established */
/* REG: RE.tex_dqdx 0x2158 w32 reset=unknown established */
/* REG: RE.tex_dqdy 0x215c w32 reset=unknown established */
/* REG: RE.tex_border 0x2160 rw32 reset=unknown established */
/* REG: RE.tex_envcolor 0x2168 rw32 reset=unknown established */
/* REG: RE.fog_color 0x2170 rw32 reset=unknown established */
/* REG: RE.fog_fs 0x2178 w32 reset=unknown established */
/* REG: RE.fog_dfdx 0x2180 w32 reset=unknown established */
/* REG: RE.fog_dfdy 0x2188 w32 reset=unknown established */
/* REG: RE.aa_line 0x2190 w32 reset=unknown established */
/* REG: RE.aa_cov 0x2194 w32 reset=unknown established */
/* REG: RE.alphatest 0x2198 rw32 reset=unknown established */
/* REG: RE.blend_color 0x21a0 rw32 reset=unknown established */
/* REG: RE.blend_func 0x21a8 rw32 reset=unknown established */
/* REG: RE.logicop 0x21b0 rw32 reset=unknown established */
/* REG: RE.colormask 0x21b8 rw32 reset=unknown established */
/* REG: RE.depth_func 0x21c0 rw32 reset=unknown established */
/* REG: RE.depth_zs 0x21c8 w64 reset=unknown established */
/* REG: RE.depth_dzdx 0x21d0 w64 reset=unknown established */
/* REG: RE.depth_dzdy 0x21d8 w64 reset=unknown established */
/* REG: RE.stencil_mode 0x21e0 rw32 reset=unknown established */
/* REG: RE.stencil_mask 0x21e8 rw32 reset=unknown established */
/* REG: RE.pixpipe_null 0x21f0 w32 reset=unknown established */
/* REG: RE.pixpipe_flush 0x21f8 w32 reset=unknown established */

/*
 * The buffer mode words (source and destination share one layout) pick the
 * buffer, its TLB and the pixel format. buf_type chooses tiled access
 * through a frame-buffer table or linear access through a linear table;
 * buf_depth is the word size in memory and pix_depth the pixel size, which
 * must not exceed it. ycrcb is valid in the source word only. Shipped
 * software writes the values in the vectors below; other bits are reserved
 * (one shipped swap path sets bit 30 as well).
 */
/* FIELD: BUFMODE.buf_type 12:10 established */
#define RE_BUFMODE_BUF_TYPE_SHIFT 10
#define RE_BUFMODE_BUF_TYPE_MASK  0x7u
/* FIELD: BUFMODE.buf_depth 9:8 established */
#define RE_BUFMODE_BUF_DEPTH_SHIFT 8
#define RE_BUFMODE_BUF_DEPTH_MASK  0x3u
/* FIELD: BUFMODE.pix_type 7:4 established */
#define RE_BUFMODE_PIX_TYPE_SHIFT 4
#define RE_BUFMODE_PIX_TYPE_MASK  0xfu
/* FIELD: BUFMODE.pix_depth 3:2 established */
#define RE_BUFMODE_PIX_DEPTH_SHIFT 2
#define RE_BUFMODE_PIX_DEPTH_MASK  0x3u
/* FIELD: BUFMODE.double_pix 1:1 established */
#define RE_BUFMODE_DOUBLE_PIX_SHIFT 1
#define RE_BUFMODE_DOUBLE_PIX_MASK  0x1u
/* FIELD: BUFMODE.double_pix_sel 0:0 established */
#define RE_BUFMODE_DOUBLE_PIX_SEL_SHIFT 0
#define RE_BUFMODE_DOUBLE_PIX_SEL_MASK  0x1u
/* ENUM: BUFMODE.buf_type 0 fb_a established */
#define RE_BUFMODE_BUF_TYPE_FB_A 0
/* ENUM: BUFMODE.buf_type 1 fb_b established */
#define RE_BUFMODE_BUF_TYPE_FB_B 1
/* ENUM: BUFMODE.buf_type 2 fb_c established */
#define RE_BUFMODE_BUF_TYPE_FB_C 2
/* ENUM: BUFMODE.buf_type 4 lin_a established */
#define RE_BUFMODE_BUF_TYPE_LIN_A 4
/* ENUM: BUFMODE.buf_type 5 lin_b established */
#define RE_BUFMODE_BUF_TYPE_LIN_B 5
/* ENUM: BUFMODE.buf_depth 0 bits8 established */
#define RE_BUFMODE_BUF_DEPTH_BITS8 0
/* ENUM: BUFMODE.buf_depth 1 bits16 established */
#define RE_BUFMODE_BUF_DEPTH_BITS16 1
/* ENUM: BUFMODE.buf_depth 2 bits32 established */
#define RE_BUFMODE_BUF_DEPTH_BITS32 2
/* ENUM: BUFMODE.pix_type 0 ci established */
#define RE_BUFMODE_PIX_TYPE_CI 0
/* ENUM: BUFMODE.pix_type 1 rgb established */
#define RE_BUFMODE_PIX_TYPE_RGB 1
/* ENUM: BUFMODE.pix_type 2 rgba established */
#define RE_BUFMODE_PIX_TYPE_RGBA 2
/* ENUM: BUFMODE.pix_type 3 abgr established */
#define RE_BUFMODE_PIX_TYPE_ABGR 3
/* ENUM: BUFMODE.pix_type 15 ycrcb established */
#define RE_BUFMODE_PIX_TYPE_YCRCB 15
/* ENUM: BUFMODE.pix_depth 0 bits8 established */
#define RE_BUFMODE_PIX_DEPTH_BITS8 0
/* ENUM: BUFMODE.pix_depth 1 bits16 established */
#define RE_BUFMODE_PIX_DEPTH_BITS16 1
/* ENUM: BUFMODE.pix_depth 2 bits32 established */
#define RE_BUFMODE_PIX_DEPTH_BITS32 2
/*
 * TESTVEC: 0x00000504 as BUFMODE => buf_type=1, buf_depth=1, pix_type=0, pix_depth=1, double_pix=0
 */

/*
 * drawmode enables the pipeline stages. Bits 8 and 9 follow the shipped
 * software and both public drivers (dither at bit 8, logic op at bit 9); the
 * specification's table has the two swapped, and the drivers are what a
 * guest depends on. Byte mask bit 3 + i enables byte i of a 32-bit pixel.
 * no_conflict is named for the specification's read/write conflict check;
 * its sense (set means checking is off) is the specification's wording and
 * is not exercised here. Bits 31:24 are reserved.
 */
/* FIELD: RE.drawmode.stencil 0:0 established */
#define RE_DRAWMODE_STENCIL_SHIFT 0
#define RE_DRAWMODE_STENCIL_MASK  0x1u
/* FIELD: RE.drawmode.depth_mask 1:1 established */
#define RE_DRAWMODE_DEPTH_MASK_SHIFT 1
#define RE_DRAWMODE_DEPTH_MASK_MASK  0x1u
/* FIELD: RE.drawmode.depth_test 2:2 established */
#define RE_DRAWMODE_DEPTH_TEST_SHIFT 2
#define RE_DRAWMODE_DEPTH_TEST_MASK  0x1u
/* FIELD: RE.drawmode.byte_mask 6:3 established */
#define RE_DRAWMODE_BYTE_MASK_SHIFT 3
#define RE_DRAWMODE_BYTE_MASK_MASK  0xfu
/* FIELD: RE.drawmode.bit_mask 7:7 established */
#define RE_DRAWMODE_BIT_MASK_SHIFT 7
#define RE_DRAWMODE_BIT_MASK_MASK  0x1u
/* FIELD: RE.drawmode.dither 8:8 established */
#define RE_DRAWMODE_DITHER_SHIFT 8
#define RE_DRAWMODE_DITHER_MASK  0x1u
/* FIELD: RE.drawmode.logic_op 9:9 established */
#define RE_DRAWMODE_LOGIC_OP_SHIFT 9
#define RE_DRAWMODE_LOGIC_OP_MASK  0x1u
/* FIELD: RE.drawmode.alpha_blend 10:10 established */
#define RE_DRAWMODE_ALPHA_BLEND_SHIFT 10
#define RE_DRAWMODE_ALPHA_BLEND_MASK  0x1u
/* FIELD: RE.drawmode.alpha_test 11:11 established */
#define RE_DRAWMODE_ALPHA_TEST_SHIFT 11
#define RE_DRAWMODE_ALPHA_TEST_MASK  0x1u
/* FIELD: RE.drawmode.aa_line 12:12 established */
#define RE_DRAWMODE_AA_LINE_SHIFT 12
#define RE_DRAWMODE_AA_LINE_MASK  0x1u
/* FIELD: RE.drawmode.coverage 13:13 established */
#define RE_DRAWMODE_COVERAGE_SHIFT 13
#define RE_DRAWMODE_COVERAGE_MASK  0x1u
/* FIELD: RE.drawmode.fog 14:14 established */
#define RE_DRAWMODE_FOG_SHIFT 14
#define RE_DRAWMODE_FOG_MASK  0x1u
/* FIELD: RE.drawmode.texture 15:15 established */
#define RE_DRAWMODE_TEXTURE_SHIFT 15
#define RE_DRAWMODE_TEXTURE_MASK  0x1u
/* FIELD: RE.drawmode.shade 16:16 established */
#define RE_DRAWMODE_SHADE_SHIFT 16
#define RE_DRAWMODE_SHADE_MASK  0x1u
/* FIELD: RE.drawmode.opaque_stipple 17:17 established */
#define RE_DRAWMODE_OPAQUE_STIPPLE_SHIFT 17
#define RE_DRAWMODE_OPAQUE_STIPPLE_MASK  0x1u
/* FIELD: RE.drawmode.poly_stipple 18:18 established */
#define RE_DRAWMODE_POLY_STIPPLE_SHIFT 18
#define RE_DRAWMODE_POLY_STIPPLE_MASK  0x1u
/* FIELD: RE.drawmode.line_stipple 19:19 established */
#define RE_DRAWMODE_LINE_STIPPLE_SHIFT 19
#define RE_DRAWMODE_LINE_STIPPLE_MASK  0x1u
/* FIELD: RE.drawmode.scissor 20:20 established */
#define RE_DRAWMODE_SCISSOR_SHIFT 20
#define RE_DRAWMODE_SCISSOR_MASK  0x1u
/* FIELD: RE.drawmode.pixel_xfer 21:21 established */
#define RE_DRAWMODE_PIXEL_XFER_SHIFT 21
#define RE_DRAWMODE_PIXEL_XFER_MASK  0x1u
/* FIELD: RE.drawmode.gl 22:22 established */
#define RE_DRAWMODE_GL_SHIFT 22
#define RE_DRAWMODE_GL_MASK  0x1u
/* FIELD: RE.drawmode.no_conflict 23:23 established */
#define RE_DRAWMODE_NO_CONFLICT_SHIFT 23
#define RE_DRAWMODE_NO_CONFLICT_MASK  0x1u

/*
 * primitive selects the operation and the traversal order. Shipped software
 * writes triangles as the operation 2 with the edge order from the sign of
 * the triangle's area and rectangles as the operation 3. line_width is half
 * the line width in subpixels.
 */
/* FIELD: RE.primitive.op 31:24 established */
#define RE_PRIMITIVE_OP_SHIFT 24
#define RE_PRIMITIVE_OP_MASK  0xffu
/* FIELD: RE.primitive.line_skip_last 18:18 established */
#define RE_PRIMITIVE_LINE_SKIP_LAST_SHIFT 18
#define RE_PRIMITIVE_LINE_SKIP_LAST_MASK  0x1u
/* FIELD: RE.primitive.edge 17:16 established */
#define RE_PRIMITIVE_EDGE_SHIFT 16
#define RE_PRIMITIVE_EDGE_MASK  0x3u
/* FIELD: RE.primitive.line_width 15:0 established */
#define RE_PRIMITIVE_LINE_WIDTH_SHIFT 0
#define RE_PRIMITIVE_LINE_WIDTH_MASK  0xffffu
/* ENUM: RE.primitive.op 0 point established */
#define RE_PRIMITIVE_OP_POINT 0
/* ENUM: RE.primitive.op 1 line established */
#define RE_PRIMITIVE_OP_LINE 1
/* ENUM: RE.primitive.op 2 triangle established */
#define RE_PRIMITIVE_OP_TRIANGLE 2
/* ENUM: RE.primitive.op 3 rect established */
#define RE_PRIMITIVE_OP_RECT 3
/* ENUM: RE.primitive.edge 0 lr_bt established */
#define RE_PRIMITIVE_EDGE_LR_BT 0
/* ENUM: RE.primitive.edge 1 rl_bt established */
#define RE_PRIMITIVE_EDGE_RL_BT 1
/* ENUM: RE.primitive.edge 2 lr_tb established */
#define RE_PRIMITIVE_EDGE_LR_TB 2
/* ENUM: RE.primitive.edge 3 rl_tb established */
#define RE_PRIMITIVE_EDGE_RL_TB 3
/*
 * TESTVEC: 0x03020000 as RE.primitive => op=3, line_skip_last=0, edge=2, line_width=0
 */

/*
 * blend_func holds the equation and the two factors. The driver substitutes
 * constants when the drawable has no alpha bits: destination alpha becomes
 * one, its inverse becomes zero and the source alpha saturate factor becomes
 * zero, so the hardware need not invent destination alpha. Source and
 * destination factor codes agree except that colour factors name the other
 * side's colour and only the source has alpha saturate.
 */
/* FIELD: RE.blend_func.op 11:8 established */
#define RE_BLEND_FUNC_OP_SHIFT 8
#define RE_BLEND_FUNC_OP_MASK  0xfu
/* FIELD: RE.blend_func.src 7:4 established */
#define RE_BLEND_FUNC_SRC_SHIFT 4
#define RE_BLEND_FUNC_SRC_MASK  0xfu
/* FIELD: RE.blend_func.dst 3:0 established */
#define RE_BLEND_FUNC_DST_SHIFT 0
#define RE_BLEND_FUNC_DST_MASK  0xfu
/* ENUM: RE.blend_func.op 0 add established */
#define RE_BLEND_FUNC_OP_ADD 0
/* ENUM: RE.blend_func.op 1 min established */
#define RE_BLEND_FUNC_OP_MIN 1
/* ENUM: RE.blend_func.op 2 max established */
#define RE_BLEND_FUNC_OP_MAX 2
/* ENUM: RE.blend_func.op 3 subtract established */
#define RE_BLEND_FUNC_OP_SUBTRACT 3
/* ENUM: RE.blend_func.op 4 reverse_subtract established */
#define RE_BLEND_FUNC_OP_REVERSE_SUBTRACT 4
/* ENUM: RE.blend_func.src 0 zero established */
#define RE_BLEND_FUNC_SRC_ZERO 0
/* ENUM: RE.blend_func.src 1 one established */
#define RE_BLEND_FUNC_SRC_ONE 1
/* ENUM: RE.blend_func.src 2 dst_color established */
#define RE_BLEND_FUNC_SRC_DST_COLOR 2
/* ENUM: RE.blend_func.src 3 one_minus_dst_color established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_DST_COLOR 3
/* ENUM: RE.blend_func.src 4 src_alpha established */
#define RE_BLEND_FUNC_SRC_SRC_ALPHA 4
/* ENUM: RE.blend_func.src 5 one_minus_src_alpha established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_SRC_ALPHA 5
/* ENUM: RE.blend_func.src 6 dst_alpha established */
#define RE_BLEND_FUNC_SRC_DST_ALPHA 6
/* ENUM: RE.blend_func.src 7 one_minus_dst_alpha established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_DST_ALPHA 7
/* ENUM: RE.blend_func.src 8 constant_color established */
#define RE_BLEND_FUNC_SRC_CONSTANT_COLOR 8
/* ENUM: RE.blend_func.src 9 one_minus_constant_color established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_CONSTANT_COLOR 9
/* ENUM: RE.blend_func.src 10 constant_alpha established */
#define RE_BLEND_FUNC_SRC_CONSTANT_ALPHA 10
/* ENUM: RE.blend_func.src 11 one_minus_constant_alpha established */
#define RE_BLEND_FUNC_SRC_ONE_MINUS_CONSTANT_ALPHA 11
/* ENUM: RE.blend_func.src 12 src_alpha_saturate established */
#define RE_BLEND_FUNC_SRC_SRC_ALPHA_SATURATE 12
/* ENUM: RE.blend_func.dst 0 zero established */
#define RE_BLEND_FUNC_DST_ZERO 0
/* ENUM: RE.blend_func.dst 1 one established */
#define RE_BLEND_FUNC_DST_ONE 1
/* ENUM: RE.blend_func.dst 2 src_color established */
#define RE_BLEND_FUNC_DST_SRC_COLOR 2
/* ENUM: RE.blend_func.dst 3 one_minus_src_color established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_SRC_COLOR 3
/* ENUM: RE.blend_func.dst 4 src_alpha established */
#define RE_BLEND_FUNC_DST_SRC_ALPHA 4
/* ENUM: RE.blend_func.dst 5 one_minus_src_alpha established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_SRC_ALPHA 5
/* ENUM: RE.blend_func.dst 6 dst_alpha established */
#define RE_BLEND_FUNC_DST_DST_ALPHA 6
/* ENUM: RE.blend_func.dst 7 one_minus_dst_alpha established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_DST_ALPHA 7
/* ENUM: RE.blend_func.dst 8 constant_color established */
#define RE_BLEND_FUNC_DST_CONSTANT_COLOR 8
/* ENUM: RE.blend_func.dst 9 one_minus_constant_color established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_CONSTANT_COLOR 9
/* ENUM: RE.blend_func.dst 10 constant_alpha established */
#define RE_BLEND_FUNC_DST_CONSTANT_ALPHA 10
/* ENUM: RE.blend_func.dst 11 one_minus_constant_alpha established */
#define RE_BLEND_FUNC_DST_ONE_MINUS_CONSTANT_ALPHA 11

/* ---- status ---- */
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
 * entries not yet committed begin; its meaning is inferred.
 */
/* REG: RE.status 0x4000 r32 reset=unknown established */
/* FIELD: RE.status.idle 28:28 established */
#define RE_STATUS_IDLE_SHIFT 28
#define RE_STATUS_IDLE_MASK  0x1u
/* FIELD: RE.status.setup_idle 27:27 established */
#define RE_STATUS_SETUP_IDLE_SHIFT 27
#define RE_STATUS_SETUP_IDLE_MASK  0x1u
/* FIELD: RE.status.pixpipe_idle 26:26 established */
#define RE_STATUS_PIXPIPE_IDLE_SHIFT 26
#define RE_STATUS_PIXPIPE_IDLE_MASK  0x1u
/* FIELD: RE.status.mte_idle 25:25 inferred */
#define RE_STATUS_MTE_IDLE_SHIFT 25
#define RE_STATUS_MTE_IDLE_MASK  0x1u
/* FIELD: RE.status.level 24:18 established */
#define RE_STATUS_LEVEL_SHIFT 18
#define RE_STATUS_LEVEL_MASK  0x7fu
/* FIELD: RE.status.rd_ptr 17:12 established */
#define RE_STATUS_RD_PTR_SHIFT 12
#define RE_STATUS_RD_PTR_MASK  0x3fu
/* FIELD: RE.status.wr_ptr 11:6 established */
#define RE_STATUS_WR_PTR_SHIFT 6
#define RE_STATUS_WR_PTR_MASK  0x3fu
/* FIELD: RE.status.start 5:0 inferred */
#define RE_STATUS_START_SHIFT 0
#define RE_STATUS_START_MASK  0x3fu

/*
 * ib_discard sits two doublewords above the status register. Shipped kernel
 * code stores zero to it with a 32-bit store, never reads it, and does so after
 * saving the outgoing client's queued writes on a context switch, after the
 * incoming client's loads, and at the end of each translation table loader.
 * The user-mode library and the X server never write it. Inferred: the write
 * discards the queued writes not yet committed. The register's position and
 * its write-zero use are established; that effect is inferred.
 */
/* REG: RE.ib_discard 0x4008 w32 reset=unknown established */

#endif /* RE_DECODE_H */
