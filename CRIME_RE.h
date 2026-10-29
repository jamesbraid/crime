/*
 * CRIME_RE.h - SGI O2 (IP32) CRIME rendering engine.
 *
 * Labels: [E] established, [I] inferred, [U] unknown.
 * Sources:
 *   [spec]   CRIME 1.5 Specification rev 0.3, 2 June 1997 (PDF page numbers).
 *   [netbsd] netbsd/sys/arch/sgimips/dev/crmfbreg.h.
 *   [k:FILE:FUNC+OFF] IRIX 6.5.30 IP32boot crime.a member, function, byte
 *            offset in the relocated objdump listing.
 *   [gl:UNIT:FUNC] IRIX 6.5.30 N32 libGLcore (usr/gfx/arch/IP32CRM32), the
 *            unit under libglcore/asm/ and function name.
 * Offsets are from CRIME_RE_PHYS_BASE (0x15000000). The host sees five
 * 4 KiB groups; the first two are kernel-only, the rest user-mappable
 * [E, spec PDF 162-163, figure 7-3].
 */
#ifndef CRIME_RE_H
#define CRIME_RE_H

#include <stdint.h>

/* ==== Groups ============================================================== */
#define RE_IB       0x0000  /* interface buffer, kernel [E, spec] */
#define RE_TLB      0x1000  /* TLBs, kernel [E, spec] */
#define RE_PP       0x2000  /* pixel pipeline, user [E, spec] */
#define RE_MTE      0x3000  /* memory transfer engine, user; see MTE.h [E, spec] */
#define RE_STATUS   0x4000  /* status, user [E, spec] */

/*
 * Start alias. Adding 0x800 to a pixel-pipe or MTE register offset writes
 * that register and then commits the primitive [E, netbsd CRIME_DE_START;
 * spec PDF 186 calls the offset START_OFFSET without a number]. libGLcore
 * commits through whichever register it writes last, not through a fixed
 * one [E]: Shade.fgColor (0x28d0) and PixPipeNull (0x29f0) in
 * gl:crm_astri:__glCrmFlatTriangle, Depth.Zs (0x29c8) in __glCrmFlatZTriangle,
 * Shade.Bs (0x28e8) in __glCrmSmoothRGBTriangle, Texture.Qs (0x2930) in
 * gl:crm_astextri:__glCrmFillTriangle, MTE.dst1 (0x3838) in
 * k:crime_dma:crime_clear_buffer.
 */
#define RE_START    0x0800

/* ==== Interface buffer (+0x0000, kernel) ================================== */
#define IB_DATA(n)  (0x000 + 8 * (n))   /* [E, spec PDF 163]; see depth note */
#define IB_ADDR(n)  (0x200 + 8 * (n))   /* [E, spec PDF 164] */
#define IB_CTL      0x400               /* 32-bit, write-only [E, spec PDF 164] */

/*
 * IB_CTL fields. The specification names stallLevel, stallCycle and
 * intLevel without a layout [spec PDF 185]. The layout below is how the
 * 6.5.30 kernel assembles the word [E, k:crime_init:crimeInitHW+0x0..0x1b0]:
 *   ctl = count | stall << 7 | empty << 14 | full << 21
 * crmFifoWait and crimeFifoFullHandler rewrite only bits 20:14 and 27:21
 * respectively, which confirms the two field positions [E,
 * k:crime:crmFifoWait+0x124 (mask 0xffe03fff), crimeFifoFullHandler+0xfc
 * (mask ~0x0fe00000)]. Field meanings follow the kernel's variable names
 * (ib_count, ib_stall, ib_empty, ib_full) and the interrupts they raise [I].
 */
#define IB_CTL_COUNT_SHIFT  0   /* 7 bits: stall length in 66 MHz cycles [I, spec "stallCycle"] */
#define IB_CTL_STALL_SHIFT  7   /* 7 bits: stall host writes above this level [I, "stallLevel"] */
#define IB_CTL_EMPTY_SHIFT  14  /* 7 bits: input 25 asserts at or below this level [I] */
#define IB_CTL_FULL_SHIFT   21  /* 7 bits: input 26 asserts above this level [I, "intLevel"] */
#define IB_CTL_FIELD_MASK   0x7f

/*
 * Values the 6.5.30 kernel programs [E, k:crime_init:crimeInitHW,
 * .sdata r10kfifohigh = r7kfifohigh = 20]:
 *   reset value written first          0x0fefff0a: full 127, empty 63, stall 126, count 10
 *   CPU PRId implementation < 0x23     full 20, empty 0,  stall 19, count 10
 *     (R10000-family modules)
 *   implementation 0x27 (RM7000)       full 20, empty 0,  stall 19, count 10
 *   other implementation >= 0x23       full 48, empty 24, stall 47, count 10
 *     (R5000-class modules)
 */
#define IB_CTL_BOOT         0x0fefff0au
#define IB_FULL_R10K        20
#define IB_FULL_R5K         48
#define IB_EMPTY_R5K        24
#define IB_COUNT_DEFAULT    10

/*
 * FIFO depth: 64 entries [I].
 * - crimeFifoFullHandler reports "fifo Overflow! Current level at %d" when
 *   the status level reads 65 or more [E, k:crime:crimeFifoFullHandler+0x1c,
 *   compare with 65; string in crime.o .rodata].
 * - NetBSD's read and write pointers are 6 bits wide [E, netbsd].
 * - The level field is 7 bits wide [E, kernel masks with 0x7f], which a
 *   64-entry buffer needs to represent "full" (64).
 * The specification's 128-entry data RAM [spec PDF 163] and the 7-bit
 * thresholds of IB_CTL_BOOT (127) do not fit a 64-entry buffer; inferred,
 * the boot value simply parks the thresholds out of reach until the kernel
 * knows the CPU. A model that accepts more than 64 queued writes would hide
 * the overflow the kernel checks for.
 */
#define RE_FIFO_DEPTH       64

/* ==== TLB group (+0x1000, kernel) ========================================= */
#define TLB_FB_A(n)     (0x1000 + 8 * (n))  /* 64 regs [E, spec PDF 164; netbsd] */
#define TLB_FB_B(n)     (0x1200 + 8 * (n))  /* 64 regs */
#define TLB_FB_C(n)     (0x1400 + 8 * (n))  /* 64 regs */
#define TLB_TEX(n)      (0x1600 + 8 * (n))  /* 28 regs */
#define TLB_CID(n)      (0x16e0 + 8 * (n))  /* 4 regs */
#define TLB_LIN_A(n)    (0x1700 + 8 * (n))  /* 16 regs */
#define TLB_LIN_B(n)    (0x1780 + 8 * (n))  /* 16 regs */

/*
 * Frame-buffer TLB register format [E, k:crime_tiles:crmLoadTlbABC+0xc0..0x18c]:
 * each 64-bit register holds four 16-bit tile entries. For the tile at tile
 * column x and tile row y, the register index is y * 4 + x / 4 and the
 * entry sits at byte offset 2 * (x & 3) of the big-endian doubleword, so
 * column 0 occupies bits 63:48. Sixty-four registers give 16 x 16 tiles,
 * which is the 2048 x 2048 limit at 128 x 128 32-bit pixels per tile
 * [I, arithmetic with spec PDF 186].
 * Entry value: physical address >> 16 (the 64 KiB tile number). crmMapChunk
 * maps tile entry v as page frames (v << 4) .. (v << 4) + 15 [E,
 * k:crime_tiles:crmMapChunk+0xbc..0xdc]. No valid bit is set by the
 * loader [E]; whether hardware has one is [U].
 */
#define TLB_FB_TILES_PER_REG    4
#define TLB_FB_ENTRY(phys)      ((uint16_t)((phys) >> 16))  /* [I] */

/*
 * Linear TLB register format [E, k:crime_dma:loadLinearTlb]: two 32-bit
 * entries per register, even page in bits 63:32. Entry = page value from
 * the caller's list | 0x80000000. Register index = (page >> 1) & 15, so each
 * linear TLB maps 32 pages of 4 KiB. The caller's list comes from
 * crm_curproc_vtop and is taken to be a 4 KiB page-frame number [I].
 */
#define TLB_LIN_VALID           0x80000000u /* [E] */

/* The kernel waits for the FIFO to drain after every eight TLB writes in
 * crimeInitHW and writes 0 to +0x4008 after every TLB load [E,
 * k:crime_init:crimeInitHW, k:crime_tiles:crmLoadTlbABC+0xb0]. TLB writes
 * therefore pass through the interface buffer [I]. What +0x4008 does is [U]. */
#define RE_STATUS_4008          0x4008

/* ==== Pixel pipeline (+0x2000) ============================================ */
/* G = global (applied after the pipe drains), NG = per primitive [E, spec PDF 164]. */
#define PP_BUFMODE_SRC      0x2000  /* G  */
#define PP_BUFMODE_DST      0x2008  /* G  */
#define PP_CLIPMODE         0x2010  /* G  */
#define PP_DRAWMODE         0x2018  /* G  */
#define PP_SCRMASK(n)       (0x2020 + 8 * (n))  /* G, 64-bit, n = 0..4 */
#define PP_SCISSOR          0x2048  /* G, 64-bit */
#define PP_WINOFFSET_SRC    0x2050  /* G  */
#define PP_WINOFFSET_DST    0x2058  /* G  */
#define PP_PRIMITIVE        0x2060  /* NG */
#define PP_VERTEX_X(n)      (0x2070 + 4 * (n))  /* NG, X primitives */
#define PP_VERTEX_GL_X(n)   (0x2080 + 8 * (n))  /* NG */
#define PP_VERTEX_GL_Y(n)   (0x2084 + 8 * (n))  /* NG */
#define PP_XFER_SRC_ADDR    0x20a0
#define PP_XFER_SRC_STRIDE  0x20a4  /* [E, netbsd]; absent from spec table */
#define PP_XFER_SRC_XSTEP   0x20a8
#define PP_XFER_SRC_YSTEP   0x20ac
#define PP_XFER_DST_ADDR    0x20b0
#define PP_XFER_DST_STRIDE  0x20b4
#define PP_STIPPLE_MODE     0x20c0
#define PP_STIPPLE_PATTERN  0x20c4
#define PP_FG_COLOR         0x20d0
#define PP_BG_COLOR         0x20d8
#define PP_SHADE_RS         0x20e0  /* 9.12 */
#define PP_SHADE_GS         0x20e4
#define PP_SHADE_BS         0x20e8
#define PP_SHADE_AS         0x20ec
#define PP_SHADE_DRDX       0x20f0
#define PP_SHADE_DGDX       0x20f4
#define PP_SHADE_DRDY       0x20f8
#define PP_SHADE_DGDY       0x20fc
#define PP_SHADE_DBDX       0x2100
#define PP_SHADE_DADX       0x2104
#define PP_SHADE_DBDY       0x2108
#define PP_SHADE_DADY       0x210c
#define PP_TEX_MODE         0x2110  /* G  */
#define PP_TEX_FORMAT       0x2118  /* G, 64-bit */
#define PP_TEX_SQS          0x2120  /* 64-bit, 36.12 */
#define PP_TEX_TQS          0x2128  /* 64-bit, 36.12 */
#define PP_TEX_QS           0x2130  /* 32-bit, 18.12 */
#define PP_TEX_DSQDX        0x2138
#define PP_TEX_DSQDY        0x2140
#define PP_TEX_DTQDX        0x2148
#define PP_TEX_DTQDY        0x2150
#define PP_TEX_DQDX         0x2158
#define PP_TEX_DQDY         0x215c
#define PP_TEX_BORDER       0x2160  /* G  */
#define PP_TEX_ENVCOLOR     0x2168  /* G  */
#define PP_FOG_COLOR        0x2170  /* G  */
#define PP_FOG_FS           0x2178
#define PP_FOG_DFDX         0x2180
#define PP_FOG_DFDY         0x2188
#define PP_AA_LINE          0x2190
#define PP_AA_COV           0x2194
#define PP_ALPHATEST        0x2198  /* G  */
#define PP_BLEND_COLOR      0x21a0  /* G  */
#define PP_BLEND_FUNC       0x21a8  /* G  */
#define PP_LOGICOP          0x21b0  /* G  */
#define PP_COLORMASK        0x21b8  /* G  */
#define PP_DEPTH_FUNC       0x21c0  /* G  */
#define PP_DEPTH_ZS         0x21c8  /* 64-bit, 25.12 per spec */
#define PP_DEPTH_DZDX       0x21d0  /* 64-bit */
#define PP_DEPTH_DZDY       0x21d8  /* 64-bit */
#define PP_STENCIL_MODE     0x21e0  /* G  */
#define PP_STENCIL_MASK     0x21e8  /* G  */
#define PP_NULL             0x21f0  /* NG; commit with no state change */
#define PP_FLUSH            0x21f8  /* G  */

/* ---- DrawMode (+0x2018) [E, spec PDF 174 unless noted] ------------------- */
#define DM_NO_CONFLICT      (1u << 23)
#define DM_GL               (1u << 22)
#define DM_XFER             (1u << 21)
#define DM_SCISSOR          (1u << 20)
#define DM_LINE_STIPPLE     (1u << 19)
#define DM_POLY_STIPPLE     (1u << 18)
#define DM_OPAQUE_STIPPLE   (1u << 17)
#define DM_SHADE            (1u << 16)
#define DM_TEXTURE          (1u << 15)
#define DM_FOG              (1u << 14)  /* also set by gl:crm_attrib:__glCrmEnableFogTest [E] */
#define DM_COVERAGE         (1u << 13)
#define DM_AA_LINE          (1u << 12)
#define DM_ALPHA_TEST       (1u << 11)  /* also __glCrmEnableAlphaTest [E] */
#define DM_BLEND            (1u << 10)  /* also __glCrmEnableBlend [E] */
/*
 * Bits 9 and 8: the specification lists bit 9 as dither and bit 8 as logic
 * op. libGLcore sets bit 9 for logic op (__glCrmEnableLogicOp, and
 * __glCrmEnableBlend for the GL 1.0 LOGIC_OP blend equation) and bit 8 for
 * dither (__glCrmEnableDither) [E]. NetBSD agrees with libGLcore
 * (DE_DRAWMODE_ROP 0x200, DE_DRAWMODE_DITHER 0x100) [E]. Follow the drivers.
 */
#define DM_LOGICOP          (1u << 9)   /* [E, driver; conflicts with spec] */
#define DM_DITHER           (1u << 8)   /* [E, driver; conflicts with spec] */
#define DM_COLORMASK        (1u << 7)
#define DM_BYTEMASK_SHIFT   3           /* 4 bits */
#define DM_DEPTH_TEST       (1u << 2)
#define DM_DEPTH_MASK       (1u << 1)
#define DM_STENCIL          (1u << 0)

/* ---- Primitive (+0x2060) [E, spec PDF 175; values from gl:crm_astri] ----- */
#define PRIM_OP_SHIFT       24
#define PRIM_POINT          0u
#define PRIM_LINE           1u
#define PRIM_TRIANGLE       2u
#define PRIM_RECT           3u
#define PRIM_LINE_SKIP_LAST (1u << 18)
#define PRIM_EDGE_SHIFT     16  /* 0 LR/BT, 1 RL/BT, 2 LR/TB, 3 RL/TB */
#define PRIM_WIDTH_MASK     0xffffu /* half the line width in subpixels */
/* Triangles: libGLcore writes 0x02000000..0x02030000; the edge type comes
 * from the sign of the triangle's area term (gc+30180) and from which vertex
 * starts the scan [E, gl:crm_astri:__glCrmFlatTriangle]. */

/*
 * GL vertex encoding [I]. libGLcore does not convert window coordinates to
 * integers. It adds 135168.0 (integer 0x21000 stored to gc+3660/3664 by
 * gl:crm_context:__glCrmCreateContext, converted to float in soft/so_context)
 * to every window x and y in the viewport bias, so for window coordinates
 * in [-4096, 4096) each single-precision value lies in [131072, 262144),
 * where one unit in the
 * last place is 1/64. The 23 mantissa bits of the float then hold
 * (coordinate + 4096) * 64. The driver stores the float's raw bits to
 * Vertex.GL[n] with a 64-bit store of the (x, y) pair [E,
 * gl:crm_astri:__glCrmFlatTriangle sdc1 to 0x2080/0x2088/0x2090], and it
 * finds the pixel corner by clearing the low six bits of those raw bits
 * [E, __glCrmFlatZTriangle "and $a7, -64"]. The specification calls the
 * register 13.6 fixed point [spec PDF 166]. Inferred: the hardware takes
 * the low 19 (or more) bits as 13.6 fixed point, which makes the effective
 * window coordinate x + 4096 and the exponent bits don't-care. Which bits
 * the rasteriser actually reads is [U].
 */
#define VTX_FLOAT_BIAS      135168.0f   /* [E, value]; meaning [I] */
#define VTX_SUBPIXEL_BITS   6           /* [E, spec; consistent with bias] */

/*
 * Colour (Shade.fgColor): R in 31:24, G 23:16, B 15:8, A 7:0, each an
 * integer 0..255 truncated from the float colour [E, gl:crm_astri,
 * trunc.w.s then shift]. Colour index mode stores the index unshifted [E].
 * Smooth-shading starts and slopes: libGLcore multiplies 0..255 colours by
 * 4096.0 (gc+32016) and truncates toward zero, giving the spec's 9.12 format
 * [E, value 0x45800000 at gl:crm_context:MakeCurrentRead; I, interpretation]. In the
 * 12-bit colour-index visual (gc+3252 == 12) the multiplier is 256.0 instead,
 * i.e. 8 fraction bits [E, value; I, meaning].
 */
#define SHADE_RGB_SCALE     4096.0f
#define SHADE_CI12_SCALE    256.0f

/*
 * Depth slopes: Zs, dz/dx, dz/dy are 64-bit integers made by truncating
 * (window z * 64.0) toward zero (gc+32024 = 0x42800000) [E,
 * gl:crm_astri:__glCrmFlatZTriangle trunc.l.s]. Zs is evaluated at the
 * pixel corner below and left of the start vertex [E, same function]. The
 * window-z range, and so how this maps onto the spec's 25.12 format, is [U].
 */
#define DEPTH_SCALE         64.0f

/* ---- Texture.mode (+0x2110) ---------------------------------------------- */
/* Layout per [spec PDF 178-179]; every value below is how
 * gl:crm_texture:crmSetTextureParam fills it [E]. */
#define TM_SUBTILED         (1u << 24)
#define TM_TEXEL_TYPE_SHIFT 20  /* driver: per-format table value & 0xf */
#define TM_TEXEL_DEPTH_SHIFT 18 /* driver: per-format table value & 3 */
#define TM_MAP_LEVEL_SHIFT  14  /* driver: 10 - (level count field), 4 bits */
#define TM_MAX_LEVEL_SHIFT  10  /* driver: level count field, 4 bits */
#define TM_MIN_SHIFT        7   /* GL_NEAREST 0, LINEAR 1, N_MIPMAP_N 2, L_MIPMAP_N 3,
                                   N_MIPMAP_L 4, L_MIPMAP_L 5: identity with the spec [E] */
#define TM_MAG_LINEAR       (1u << 6)
#define TM_WRAP_S_SHIFT     4
#define TM_WRAP_T_SHIFT     2
#define TM_FUNC_SHIFT       0   /* MODULATE 0, DECAL 1, BLEND 2, REPLACE 3 [E];
                                   BLEND also loads Texture.envColor */
/*
 * Wrap encodings the 6.5.30 driver writes, with the global
 * __TEXFORCECLAMPTOEDGE clear [E, crmSetTextureParam branches]:
 *   GL_REPEAT                 1
 *   GL_CLAMP                  0, and loads Texture.borderColor
 *   GL_CLAMP_TO_EDGE_SGIS     2
 *   GL_CLAMP_TO_BORDER_SGIS   1, and loads Texture.borderColor
 * With __TEXFORCECLAMPTOEDGE set, GL_CLAMP and CLAMP_TO_BORDER become 2.
 * The specification assigns 3 to CLAMP_TO_BORDER and 1 to REPEAT; the
 * driver never writes 3. Why the driver sends REPEAT's code for border
 * clamping is [U]; a model should accept the codes above before trusting
 * the specification's names.
 */
#define TM_WRAP_CLAMP       0u
#define TM_WRAP_REPEAT      1u
#define TM_WRAP_EDGE        2u

/* ---- Texture.format (+0x2118, 64-bit) ------------------------------------ */
/*
 * Built in crmSetTextureParam from log2 width (w) and log2 height (h) [E]:
 *   bits 47:44  uShift      = 10 - w
 *   bits 43:40  vShift      = 10 - h
 *   bits 39:36  uWrapShift  = w
 *   bits 35:32  vWrapShift  = h
 *   bits 31:16  uIndexMask  = (1 << (w + 4)) - 1
 *   bits 15:0   vIndexMask  = (1 << (h + 4)) - 1
 * Inferred precision: after the perspective divide a texture coordinate of
 * 1.0 is 2^14 (the s/w and 1/w setup scales differ by 2^43 / 2^29 = 2^14 in
 * gl:crm_astextri:__glCrmFillTriangle). Shifting right by 10 - w leaves a
 * texel index with 4 fraction bits, and the index masks keep w + 4 bits,
 * so: maximum texture size 1024 (shift >= 0), and 4 sub-texel bits feed
 * the bilinear weights. Hardware rounding of those weights is [U].
 */
#define TF_USHIFT_SHIFT     44
#define TF_VSHIFT_SHIFT     40
#define TF_UWRAP_SHIFT      36
#define TF_VWRAP_SHIFT      32
#define TF_UMASK_SHIFT      16
#define TEX_COORD_ONE_LOG2  14  /* [I] */
#define TEX_SUBTEXEL_BITS   4   /* [I] */
#define TEX_MAX_LOG2        10  /* [I] */

/* ---- AlphaTest (+0x2198) [E, spec PDF 180; __glCrmPassAlphaFunc] --------- */
/* bits 11:8 = GL func - GL_NEVER; bits 7:0 = trunc(ref * 255). */

/* ---- LogicOp (+0x21b0) [E, gl:crm_attrib:__glCrmPassLogicOp jump table] -- */
/* bits 3:0 = GL op - GL_CLEAR (0x1500); identity for all 16 ops. The spec
 * table is empty [spec PDF 182]. */

/* ---- Depth.func (+0x21c0) [E, gl:crm_depth:__glCrmPassDepthFunc] --------- */
#define DF_FUNC_SHIFT       25  /* 3 bits: GL func - GL_NEVER */
#define DF_BIT24            (1u << 24)  /* set when the driver uses the depth
                                           unit for stencil-only drawing [E]; meaning [U] */
#define DF_VALUE_MASK       0x00ffffffu /* (u32 gc+31304 * double gc+1640) >> 6;
                                           purpose [U], likely a depth reference */

/* ---- Stencil.mode (+0x21e0) [E, gl:crm_stencil:__glCrmPassStencilMode] --- */
/* The spec table is empty [spec PDF 182]. */
#define SM_REF_SHIFT        24  /* 8 bits */
#define SM_VALMASK_SHIFT    16  /* 8 bits */
#define SM_FUNC_SHIFT       12  /* GL func - GL_NEVER */
#define SM_SFAIL_SHIFT      8
#define SM_ZFAIL_SHIFT      4
#define SM_ZPASS_SHIFT      0
enum crime_stencil_op {     /* [E] */
    SOP_KEEP = 0, SOP_ZERO = 1, SOP_REPLACE = 2, SOP_INCR = 3,
    SOP_DECR = 4, SOP_INVERT = 5,
};
/* Stencil.mask (+0x21e8): stencil write mask, 0 or 0xff in the depth path [E]. */

/* ==== Status (+0x4000) ==================================================== */
#define ST_IDLE             (1u << 28)  /* [E, netbsd; kernel crmIdleWait, gl __glCrmFlushAndConfirm] */
#define ST_SETUP_IDLE       (1u << 27)  /* [E, netbsd] */
#define ST_PIXPIPE_IDLE     (1u << 26)  /* [E, netbsd] */
#define ST_MTE_IDLE         (1u << 25)  /* [E, netbsd] */
#define ST_LEVEL_SHIFT      18          /* 7 bits [E, kernel masks 0x7f] */
#define ST_RDPTR_SHIFT      12          /* 6 bits [E, netbsd] */
#define ST_WRPTR_SHIFT      6           /* 6 bits [E, netbsd] */

/*
 * Flow control as IRIX uses it [E]:
 * - libGLcore never reads the FIFO level. It writes without checks and
 *   relies on the hardware stall (IB_CTL stall level) plus the kernel's
 *   full-level interrupt. Its only status reads poll ST_IDLE after a write
 *   to PP_FLUSH (gl:crm_context:__glCrmFlushAndConfirm) or in picking.
 * - On input 26 the kernel raises the full threshold to level + 1, enables
 *   input 25 and deschedules the writer; input 25 restores the empty
 *   threshold and wakes it [E, k:crime:crimeFifoFullHandler,
 *   crimeFifoEmptyHandler].
 * - crmFifoWait(n) polls until level <= ib_full - n, and falls back to
 *   sleeping on input 25 after a timeout [E].
 */

#endif /* CRIME_RE_H */
