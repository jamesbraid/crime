# Tier-2 routine readings, crime round 4 batch 5

Role entries for 25 located routines in the tier-2 reading list, ranks 125 to 149. Each role comes from the rendered facts for that exact binary range, cited by address. Labels are Inferred. The binary is the IP32CRM build of libGLcore.so.

- `__gllc_MapGrid1f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985c80
  **Inferred.** Display-list recorder for the one-dimensional map-grid call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985cb0 with size 0xc; a zero result branches to 0xd985cfc at 0xd985cc0 and skips the rest. Otherwise it stores a halfword at +0xc, a word at +0x10 and floats at +0x14 and +0x18 of the record, then calls __glDlistAppendOp at 0xd985cf0 with the constant 0xd98c050, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_MapGrid2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985d0c
  **Inferred.** Display-list recorder for the two-dimensional double map-grid call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985d3c with size 0x28; a zero result branches to 0xd985da8 at 0xd985d4c. Otherwise it stores a halfword at +0xc, a byte at +0xe, doubles at +0x10, +0x18, +0x20 and +0x28, and words at +0x30 and +0x34, then calls __glDlistAppendOp at 0xd985d9c with the constant 0xd98c09c, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_MapGrid2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985db8
  **Inferred.** Display-list recorder for the two-dimensional float map-grid call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985dec with size 0x18; a zero result branches to 0xd985e50 at 0xd985dfc. Otherwise it stores a halfword at +0xc, words at +0x10 and +0x1c, and floats at +0x14, +0x18, +0x20 and +0x24, then calls __glDlistAppendOp at 0xd985e44 with the constant 0xd98c110, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985e60
  **Inferred.** Display-list recorder for the one-dimensional double evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985e88 with size 0x8; a zero result branches to 0xd985ecc at 0xd985e98. Otherwise it stores a halfword at +0xc, a byte at +0xe and a double at +0x10, then calls __glDlistAppendOp at 0xd985ec0 with the constant 0xd98c174, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord1dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985edc
  **Inferred.** Display-list recorder for the vector form of the one-dimensional double evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985f04 with size 0x8; a zero result branches to 0xd985f4c at 0xd985f14. Otherwise it copies a double from the argument pointer a0 at +0x0 into the record at +0x10 (the store at 0xd985f38), sets a halfword at +0xc and a byte at +0xe, then calls __glDlistAppendOp at 0xd985f40 with the constant 0xd98c174, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord1f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985f5c
  **Inferred.** Display-list recorder for the one-dimensional float evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985f84 with size 0x4; a zero result branches to 0xd985fc0 at 0xd985f94. Otherwise it stores a halfword at +0xc and a float at +0x10, then calls __glDlistAppendOp at 0xd985fb4 with the constant 0xd98c1b0, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord1fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985fd0
  **Inferred.** Display-list recorder for the vector form of the one-dimensional float evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd985ff8 with size 0x4; a zero result branches to 0xd986038 at 0xd986008. Otherwise it copies a float from a0 at +0x0 into the record at +0x10 (the store at 0xd986024), sets a halfword at +0xc, then calls __glDlistAppendOp at 0xd98602c with the constant 0xd98c1b0, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986048
  **Inferred.** Display-list recorder for the two-dimensional double evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986074 with size 0x10; a zero result branches to 0xd9860c0 at 0xd986084. Otherwise it stores a halfword at +0xc, a byte at +0xe and doubles at +0x10 and +0x18, then calls __glDlistAppendOp at 0xd9860b4 with the constant 0xd98c1ec, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9860d0
  **Inferred.** Display-list recorder for the vector form of the two-dimensional double evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd9860f8 with size 0x10; a zero result branches to 0xd986148 at 0xd98610c. Otherwise it copies two doubles from a0 at +0x0 and +0x8 into the record at +0x10 and +0x18, sets a halfword at +0xc and a byte at +0xe, then calls __glDlistAppendOp at 0xd98613c with the constant 0xd98c1ec, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986158
  **Inferred.** Display-list recorder for the two-dimensional float evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986184 with size 0x8; a zero result branches to 0xd9861c8 at 0xd986194. Otherwise it stores a halfword at +0xc and floats at +0x10 and +0x14, then calls __glDlistAppendOp at 0xd9861bc with the constant 0xd98c228, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalCoord2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9861d8
  **Inferred.** Display-list recorder for the vector form of the two-dimensional float evaluator call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986200 with size 0x8; a zero result branches to 0xd986248 at 0xd986214. Otherwise it copies two floats from a0 at +0x0 and +0x4 into the record at +0x10 and +0x14, sets a halfword at +0xc, then calls __glDlistAppendOp at 0xd98623c with the constant 0xd98c228, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalMesh1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986258
  **Inferred.** Display-list recorder for the one-dimensional mesh evaluation call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986288 with size 0xc; a zero result branches to 0xd9862d4 at 0xd986298. Otherwise it stores a halfword at +0xc and words at +0x10, +0x14 and +0x18, then calls __glDlistAppendOp at 0xd9862c8 with the constant 0xd98c264, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalPoint1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9862e4
  **Inferred.** Display-list recorder for the one-dimensional point evaluation call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd98630c with size 0x4; a zero result branches to 0xd986348 at 0xd98631c. Otherwise it stores a halfword at +0xc and a word at +0x10, then calls __glDlistAppendOp at 0xd98633c with the constant 0xd98c2b0, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalMesh2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986358
  **Inferred.** Display-list recorder for the two-dimensional mesh evaluation call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd98638c with size 0x14; a zero result branches to 0xd9863e8 at 0xd98639c. Otherwise it stores a halfword at +0xc and words at +0x10, +0x14, +0x18, +0x1c and +0x20, then calls __glDlistAppendOp at 0xd9863dc with the constant 0xd98c2f0, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_EvalPoint2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9863f8
  **Inferred.** Display-list recorder for the two-dimensional point evaluation call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986424 with size 0x8; a zero result branches to 0xd986468 at 0xd986434. Otherwise it stores a halfword at +0xc and words at +0x10 and +0x14, then calls __glDlistAppendOp at 0xd98645c with the constant 0xd98c348, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_AlphaFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986478
  **Inferred.** Display-list recorder for the alpha test call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd9864a4 with size 0x8; a zero result branches to 0xd9864e8 at 0xd9864b4. Otherwise it stores a halfword at +0xc, a word at +0x10 and a float at +0x14, then calls __glDlistAppendOp at 0xd9864dc with the constant 0xd98c390, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_BlendFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9864f8
  **Inferred.** Display-list recorder for the blend function call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986524 with size 0x8; a zero result branches to 0xd986568 at 0xd986534. Otherwise it stores a halfword at +0xc and words at +0x10 and +0x14, then calls __glDlistAppendOp at 0xd98655c with the constant 0xd98c3d8, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_LogicOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986578
  **Inferred.** Display-list recorder for the logic op call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd9865a0 with size 0x4; a zero result branches to 0xd9865dc at 0xd9865b0. Otherwise it stores a halfword at +0xc and a word at +0x10, then calls __glDlistAppendOp at 0xd9865d0 with the constant 0xd98c420, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_StencilFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9865ec
  **Inferred.** Display-list recorder for the stencil function call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd98661c with size 0xc; a zero result branches to 0xd986668 at 0xd98662c. Otherwise it stores a halfword at +0xc and words at +0x10, +0x14 and +0x18, then calls __glDlistAppendOp at 0xd98665c with the constant 0xd98c460, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_StencilOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986678
  **Inferred.** Display-list recorder for the stencil operation call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd9866a8 with size 0xc; a zero result branches to 0xd9866f4 at 0xd9866b8. Otherwise it stores a halfword at +0xc and words at +0x10, +0x14 and +0x18, then calls __glDlistAppendOp at 0xd9866e8 with the constant 0xd98c4ac, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_DepthFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986704
  **Inferred.** Display-list recorder for the depth function call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd98672c with size 0x4; a zero result branches to 0xd986768 at 0xd98673c. Otherwise it stores a halfword at +0xc and a word at +0x10, then calls __glDlistAppendOp at 0xd98675c with the constant 0xd98c4f8, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_PixelZoom` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986778
  **Inferred.** Display-list recorder for the pixel zoom call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd9867a4 with size 0x8; a zero result branches to 0xd9867e8 at 0xd9867b4. Otherwise it stores a halfword at +0xc and floats at +0x10 and +0x14, then calls __glDlistAppendOp at 0xd9867dc with the constant 0xd98c538, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_PixelTransferf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9867f8
  **Inferred.** Display-list recorder for the float pixel transfer call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd986824 with size 0x8; a zero result branches to 0xd986868 at 0xd986834. Otherwise it stores a halfword at +0xc, a word at +0x10 and a float at +0x14, then calls __glDlistAppendOp at 0xd98685c with the constant 0xd98c57c, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_PixelTransferi` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986878
  **Inferred.** Display-list recorder for the integer pixel transfer call. It loads the pointer at abs 0x1010 (identity unknown) and calls __glDlistAllocOp2 at 0xd9868a4 with size 0x8; a zero result branches to 0xd9868e8 at 0xd9868b4. Otherwise it stores a halfword at +0xc and words at +0x10 and +0x14, then calls __glDlistAppendOp at 0xd9868dc with the constant 0xd98c5c4, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `__gllc_PixelMapfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9868f8
  **Inferred.** Display-list recorder for the pixel map call, with an argument check first. It tests the sign of a1 shifted left by two at 0xd986920; when that value is negative (a negative count, or one large enough to overflow the shift) it calls __gllc_InvalidValue at 0xd986930 and returns, as the unconditional branch at 0xd986938 shows. Otherwise it calls __glDlistAllocOp2 at 0xd986950 with size (a1 << 2) + 8 and returns at 0xd9869ac if that gives 0 (branch at 0xd986958); otherwise it stores a halfword at +0xc and words at +0x10 and +0x14, copies a1 << 2 bytes from a2 into the record at +24 via memcpy at 0xd986988, and calls __glDlistAppendOp at 0xd9869a0 with the constant 0xd98c60c, which is unknown.
  Reviewed: 2026-11-12 (sonnet)
