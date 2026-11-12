# Tier-2 routine readings, crime batch 2

Routines in `usr/gfx/arch/IP32CRM/libGLcore.so`, read from the rendered
instruction facts of that build. Every role below is inferred. The rendered
facts show the code paths and constants but do not name the callees at
indirect call sites, so those are marked as unresolved.

- `__glce_DrawArraysEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c4e4
  **Inferred.** Wraps glDrawArraysEXT with a copy step before each call. The routine loads the word at abs 0x1010, stores into that record at +0x17b8, and calls __glMipsCopyDispatch through the pointer at 0xd9911b0 with buffer 0x1050 (calls at 0xd97c558, 0xd97c588, 0xd97c5c0 and 0xd97c5e0). It reaches glDrawArraysEXT at 0xd97c570 and 0xd97c5a8, passing a0 to a2 through, and a loop at 0xd97c534 compares a loaded value against 0x17a0 to repeat the sequence. The return at 0xd97c5f4 gives the last __glMipsCopyDispatch result.

- `__glce_DrawElements` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c5fc
  **Inferred.** The same shape as __glce_DrawArraysEXT: a copy through __glMipsCopyDispatch at 0xd97c674, 0xd97c6a8, 0xd97c6e4 and 0xd97c704, around glDrawElements calls at 0xd97c690 and 0xd97c6cc that pass a0 to a3 through. The loop at 0xd97c650 compares a loaded value against 0x17a0, and the state word is again at abs 0x1010 with stores at +0x17b8. The return at 0xd97c718 gives the last __glMipsCopyDispatch result.

- `__glce_DrawRangeElements` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c720
  **Inferred.** The same shape again, now around glDrawRangeElements at 0xd97c7c4 and 0xd97c810, which pass a0 to a3 through. The copy calls are at 0xd97c798, 0xd97c7dc, 0xd97c828 and 0xd97c848, and the loop branch at 0xd97c774 compares against 0x17a0. The return at 0xd97c85c gives the last __glMipsCopyDispatch result.

- `__glce_ArrayElementEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c864
  **Inferred.** The same shape with glArrayElementEXT at 0xd97c8e4 and 0xd97c918. Those two calls receive only a0 from the entry, and the copy calls at 0xd97c8d0, 0xd97c8fc, 0xd97c930 and 0xd97c950 carry the same buffer 0x1050. The loop branch at 0xd97c8ac compares a loaded value against 0x17a0, and the return at 0xd97c964 gives the last copy result.

- `__glDlistAllocOp2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c96c
  **Inferred.** Allocates a display-list op record and fills its header. It loads words from the context at a0+0x315c and a0+0x1394, and calls an unresolved callee at 0xd97c9a0 with a0 set to the word at a0+5012. When that result is nonzero (bne at 0xd97c9ac), the header words go in at offsets 0, 4 and 8 of the returned block and a byte at offset 0xe; when it is zero, the routine calls __glSetError at 0xd97c9bc with 0x505, the GL out-of-memory enum. The return at 0xd97c9f0 yields 0 or the block pointer.

- `__glDlistAppendOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ca04
  **Inferred.** Appends one op to the current display list and updates the list bookkeeping. It reads the list state at a0+0x1354, a0+0x1378 and abs 0x1048, and writes a0+0x17b8, a0+0x138c and a0+0x1390, plus the word that [a0+5008] points at. It calls an unresolved callee at 0xd97ca34 with its own four arguments, and __glMipsCopyDispatch at 0xd97ca58, 0xd97ca8c and 0xd97cab0. The return at 0xd97cae8 gives a0+4992, which looks like a pointer into the context.

- `__glGenericDlistOptimizer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d470
  **Inferred.** A forwarding shim. Its only call is the jalr at 0xd97d488, which passes its four argument registers to __glDlistOptimizeMaterial at 0xd97cd50, and the return at 0xd97d498 passes that call's v0 back to the caller. The 48-byte body has no other work, so it is a dispatch shim, not an optimizer.

- `__glle_FastMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d1cc
  **Inferred.** Appears to be the glMaterial fast path used while a display list is compiled, from its name and its calls to __glFreeSpecLUT at 0xd97d3a4 and __glValidateMaterial at 0xd97d428. It tests a flag at abs 0x1018 against 1 (bne at 0xd97d220), tests a register against 0x404 and 0x405 (the facts do not trace it to a0) (beq at 0xd97d264 and beql at 0xd97d270), and loads floats from [0x1010]+0x7820, +0x7824, +0x7828 and +0x7848 (lwc1 at 0xd97d334 to 0xd97d350). The role of the unresolved callee at 0xd97d23c is not determined from the facts.

- `__glle_Begin_LineLoop` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d5d4
  **Inferred.** Begin-mode entry for GL_LINE_LOOP. It loads the word at abs 0x106c and calls an unresolved callee at 0xd97d5f4 with a0 = 0x2, the GL_LINE_LOOP enum, passing a1 to a3 through. The return at 0xd97d608 gives a0, so it returns the mode constant unless the callee changes a0.

- `__glle_Begin_LineStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d610
  **Inferred.** Begin-mode entry for GL_LINE_STRIP. It loads abs 0x106c and calls an unresolved callee at 0xd97d630 with a0 = 0x3 (GL_LINE_STRIP), passing a1 to a3 through. The return at 0xd97d644 gives a0.

- `__glle_Begin_Lines` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d64c
  **Inferred.** Begin-mode entry for GL_LINES. It loads abs 0x106c and calls an unresolved callee at 0xd97d66c with a0 = 0x1 (GL_LINES), passing a1 to a3 through. The return at 0xd97d680 gives a0.

- `__glle_Begin_Points` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d688
  **Inferred.** Begin-mode entry for GL_POINTS. It loads abs 0x106c and calls an unresolved callee at 0xd97d6a8 with a0 = 0x0 (GL_POINTS), passing a1 to a3 through. The return at 0xd97d6bc gives a0.

- `__glle_Begin_Polygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d6c4
  **Inferred.** Begin-mode entry for GL_POLYGON. It loads abs 0x106c and calls an unresolved callee at 0xd97d6e4 with a0 = 0x9 (GL_POLYGON), passing a1 to a3 through. The return at 0xd97d6f8 gives a0.

- `__glle_Begin_TriangleStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d700
  **Inferred.** Begin-mode entry for GL_TRIANGLE_STRIP. It loads abs 0x106c and calls an unresolved callee at 0xd97d720 with a0 = 0x5 (GL_TRIANGLE_STRIP), passing a1 to a3 through. The return at 0xd97d734 gives a0.

- `__glle_Begin_TriangleFan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d73c
  **Inferred.** Begin-mode entry for GL_TRIANGLE_FAN. It loads abs 0x106c and calls an unresolved callee at 0xd97d75c with a0 = 0x6 (GL_TRIANGLE_FAN), passing a1 to a3 through. The return at 0xd97d770 gives a0.

- `__glle_Begin_Triangles` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d778
  **Inferred.** Begin-mode entry for GL_TRIANGLES. It loads abs 0x106c and calls an unresolved callee at 0xd97d798 with a0 = 0x4 (GL_TRIANGLES), passing a1 to a3 through. The return at 0xd97d7ac gives a0.

- `__glle_Begin_QuadStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7b4
  **Inferred.** Begin-mode entry for GL_QUAD_STRIP. It loads abs 0x106c and calls an unresolved callee at 0xd97d7d4 with a0 = 0x8 (GL_QUAD_STRIP), passing a1 to a3 through. The return at 0xd97d7e8 gives a0.

- `__glle_Begin_Quads` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7f0
  **Inferred.** Begin-mode entry for GL_QUADS. It loads abs 0x106c and calls an unresolved callee at 0xd97d810 with a0 = 0x7 (GL_QUADS), passing a1 to a3 through. The return at 0xd97d824 gives a0.

- `__gllc_InvalidValue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d82c
  **Inferred.** Records a GL_INVALID_VALUE-style error into the display list being compiled, from its name. It calls __glDlistAllocOp2 at 0xd97d84c with a1 = 0, and if the result is zero (beq at 0xd97d858) it returns zero without storing. Otherwise it stores a halfword at offset 0xc of the record (sh at 0xd97d864; the stored value is not visible in the rendered facts) and calls __glDlistAppendOp at 0xd97d870 with the constant address 0xd97dab4 as a2.

- `__gllc_InvalidEnum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d88c
  **Inferred.** The same shape as __gllc_InvalidValue, with a different constant. It calls __glDlistAllocOp2 at 0xd97d8ac, stores the halfword at offset 0xc (sh at 0xd97d8c4), and calls __glDlistAppendOp at 0xd97d8d0 with the constant address 0xd97daf0. The zero-result branch at 0xd97d8b8 skips the store and the append.

- `__gllc_InvalidOperation` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d8ec
  **Inferred.** The same shape as __gllc_InvalidValue, with a different constant. It calls __glDlistAllocOp2 at 0xd97d90c, stores the halfword at offset 0xc (sh at 0xd97d924), and calls __glDlistAppendOp at 0xd97d930 with the constant address 0xd97db2c. The zero-result branch at 0xd97d918 skips the store and the append.

- `__gllc_TableTooLarge` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d94c
  **Inferred.** The same shape as __gllc_InvalidValue, with a different constant. It calls __glDlistAllocOp2 at 0xd97d96c, stores the halfword at offset 0xc (sh at 0xd97d984), and calls __glDlistAppendOp at 0xd97d990 with the constant address 0xd97db68. The zero-result branch at 0xd97d978 skips the store and the append.

- `ApplyMatChange` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97caf0
  **Inferred.** Copies material parameters from a float block in a3 into a material record in a1. A chain of beq tests on a2 against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 selects the copy path (branches at 0xd97caf4 to 0xd97cb28), and these constants are the GL material parameter enums (ambient, diffuse, specular, emission, shininess, ambient-and-diffuse, color indexes). Each path loads float words from a3 at +0x0, +0x4, +0x8 and +0xc and stores them into a1 at offsets 0x8 through 0x54, and the seven paths return at 0xd97cb50 to 0xd97cc7c with v0 not determined by the facts.

- `FreeFastMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97cc84
  **Inferred.** Frees the specular lookup tables of a fast-material record. It reads a count at [a1] (branch at 0xd97ccb4 compares it unsigned), reads a flag word at [a1+4], and calls __glFreeSpecLUT at 0xd97cd08 with a0 set to the entry a0, looping back to 0xd97ccc0 while the count stays positive (bnel at 0xd97cd30). The recorded size runs past __glDlistOptimizeMaterial at 0xd97cd50, and the facts show none of that range reached from this routine's entry, so the true end is unresolved.

- `__glDlistOptimizeMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97cd50
  **Inferred.** Walks a material display-list record and builds an optimized copy of it. It calls __glMaterialfv_size at 0xd97ce94, ApplyMatChange at 0xd97cf1c, __glCreateSpecLUT at 0xd97d064, __glDlistAllocOp2 at 0xd97d0d8, memcpy at 0xd97d12c and __glDlistFreeOp at 0xd97d15c. It tests the GL face constants 0x404 (GL_FRONT), 0x405 (GL_BACK) and 0x408 (GL_FRONT_AND_BACK) at 0xd97ce38 to 0xd97ce50, and the constants 0x60 and 0x62 and mask 0x100 on the record flags are not identified from the facts.

