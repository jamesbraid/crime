/*
 * glcore_crime.h - CRIME-specific fields of the IRIX 6.5.30 N32 libGLcore
 * context (usr/gfx/arch/IP32CRM32/libGLcore.so).
 *
 * The library's DWARF has names and lines but no types, so these offsets
 * come from reading the code. Each is a byte offset from the context
 * pointer (first argument of the __glCrm* functions, called gc here).
 * Labels: [E] established from the cited function, [I] inferred, [U] unknown.
 */
#ifndef GLCORE_CRIME_H
#define GLCORE_CRIME_H

/* Viewport: window = clip * scale + bias. Bias includes the 135168.0 float
 * offset that turns IEEE bits into 13.6 fixed point (see CRIME_RE.h). */
#define GC_VP_XSCALE        1720    /* float [E, crm_context, mips4_vclip] */
#define GC_VP_XBIAS         1724    /* float [E] */
#define GC_VP_YSCALE        1728    /* float [E] */
#define GC_VP_YBIAS         1732    /* float [E] */
#define GC_VP_ZSCALE        1736    /* float [I, used with 1740 for z] */
#define GC_VP_ZBIAS         1740    /* float [I] */
#define GC_COORD_BIAS_X     3660    /* int 0x21000 [E, __glCrmCreateContext] */
#define GC_COORD_BIAS_Y     3664    /* int 0x21000 [E] */

#define GC_DEPTH_FUNC       1632    /* GL depth func & 7 -> Depth.func 27:25 [E, __glCrmPassDepthFunc] */
#define GC_STENCIL_FUNC     1664    /* 0x680: GL func [E, __glcrmim_StencilFunc] */
#define GC_STENCIL_REF      1670    /* 0x686 */
#define GC_STENCIL_VMASK    1672    /* 0x688 */
#define GC_STENCIL_SFAIL    1676    /* 0x68c */
#define GC_STENCIL_ZFAIL    1680    /* 0x690 */
#define GC_STENCIL_ZPASS    1684    /* 0x694 */
#define GC_LOGICOP          1856    /* 0x740: GL logic op [E, __glcrmim_LogicOp] */

/* Triangle set-up. */
#define GC_TRI_AREA         30180   /* float; its sign picks the edge type [E, crm_astri] */
#define GC_COLOR_SCALE      32016   /* float 4096.0 RGB, 256.0 CI12 [E] */
#define GC_FOG_SCALE        32020   /* float 2048.0 [E, value]; use [I] */
#define GC_DEPTH_SCALE      32024   /* float 64.0 [E] */
#define GC_TEX_SCALE        32028   /* float 16384.0 [E, value]; use [U] */

/* Register access. */
#define GC_DRAWMODE         32088   /* 0x7d58: DrawMode being built [E, crm_attrib] */
#define GC_DRAWMODE_SENT    32092   /* 0x7d5c: last DrawMode written [E] */
#define GC_PRIM_SENT        32096   /* last Primitive word written; the assembly triangle
                                       routines overwrite it with $ra to invalidate it [E, ClearDepth compares it; I, purpose] */
#define GC_HW               32184   /* 0x7db8: user mapping of the rendering
                                       window; register offsets as in CRIME_RE.h [E,
                                       __glCrmFlushAndConfirm polls +0x4000 through it] */
#define GC_SHADOW           32188   /* 0x7dbc: shadow of the global pixel-pipe
                                       registers; = (ioctl 22003 result) - 0x2000 so
                                       the same offsets index it [E, MakeCurrentRead] */
#define GC_TEXMODE_SENT     32360   /* 0x7e68: last Texture.mode [E, crmSetTextureParam] */
#define GC_TEXFMT_HI_SENT   32364   /* 0x7e6c: last Texture.format bits 63:32 [E] */
#define GC_TEXFMT_LO_SENT   32368   /* 0x7e70: last Texture.format bits 31:0 [E] */

/*
 * Every global register write goes to GC_HW and GC_SHADOW with the same
 * value [E, e.g. __glCrmPassDepthFunc, __glCrmPassStencilMode,
 * crmSetTextureParam]. Per-primitive registers go to GC_HW only [E,
 * crm_astri]. Inferred: the kernel reloads the global registers from this
 * shadow when it switches rendering contexts (kernel functions
 * crmLoadGlobalsFromShadow and crmIsGlobalRegWrite).
 */

#endif /* GLCORE_CRIME_H */
