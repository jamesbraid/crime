# Tier-2 routine readings, crime round 4 batch 3

Role entries for targets 75 to 99 of the ranked tier-2 list (`located` grade, `usr/gfx/arch/IP32CRM/libGLcore.so`). Each role comes from the rendered facts for that exact address range. Labels are Inferred: the routines are named after GL entry points, and the display-list reading rests on the allocator and append callees they share.

- `__gllc_Vertex4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9835e4
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 0x10-byte record with __glDlistAllocOp2 at 0xd983610, and copies the four float words of its argument at a0 (lwc1/swc1 pairs at 0xd983638 to 0xd983654) into the record at +0x10 to +0x1c. It then appends the record with __glDlistAppendOp at 0xd983668 using the table at 0xd98b08c, and a zero allocator return at 0xd983624 skips the stores and the append. The name and the allocator and append callees suggest a display-list recorder for glVertex4fv.

- `__gllc_Vertex4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983684
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 0x10-byte record with __glDlistAllocOp2 at 0xd9836b8, and writes a halfword at +0xc and four words at +0x10 to +0x1c. It appends with __glDlistAppendOp at 0xd98370c using the table at 0xd98b0c8, and a zero allocator return at 0xd9836c8 skips the stores. The shape matches the other vertex recorders, which suggests a display-list entry for glVertex4i.

- `__gllc_Vertex4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983728
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 0x10-byte record with __glDlistAllocOp2 at 0xd983754, and copies four words from the array at a0 (lw/sw pairs at 0xd983778 to 0xd983794) into the record at +0x10 to +0x1c. It appends with __glDlistAppendOp at 0xd9837ac using the table at 0xd98b0c8, and a zero allocator return at 0xd983768 skips the copy. The array copy and the allocator and append callees suggest a display-list recorder for glVertex4iv.

- `__gllc_Vertex4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9837c8
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd9837fc, and writes a halfword at +0xc plus four halfwords at +0x10 to +0x16 (sh at 0xd983818 to 0xd98383c). It appends with __glDlistAppendOp at 0xd983850 using the table at 0xd98b104, and a zero allocator return at 0xd98380c skips the stores. The name suggests a display-list recorder for glVertex4s, the same family as glVertex4sv.

- `__gllc_Vertex4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98386c
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd983898, and copies four halfwords from the array at a0 (lh at 0xd9838bc to 0xd9838d8) into the record at +0x10 to +0x16. It appends with __glDlistAppendOp at 0xd9838f0 using the table at 0xd98b104, and a zero allocator return at 0xd9838ac skips the copy. The halfword copy from a0 and the allocator and append callees suggest a display-list recorder for glVertex4sv.

- `__gllc_ClipPlane` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98390c
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 0x28-byte record with __glDlistAllocOp2 at 0xd98393c, and copies four doubles from the plane equation at a1 (ldc1/sdc1 at 0xd983974 to 0xd983990) into the record at +0x10 to +0x28. A halfword at +0xc, a byte at +0xe and a word at +0x30 are also stored, and the word at +0x30 lies past the 0x28 size passed to the allocator, so the allocator likely adds a header. It appends with __glDlistAppendOp at 0xd983998 using the table at 0xd98b140, which suggests a display-list entry for glClipPlane.

- `__gllc_ColorMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9839b4
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd9839e0 with its a2 and a3 arguments passed through, and writes a halfword at +0xc and words at +0x10 and +0x14. It appends with __glDlistAppendOp at 0xd983a18 using the table at 0xd98b184, and a zero allocator return at 0xd9839f0 skips the stores. The two stored words and the fixed record size suggest a display-list entry for glColorMaterial.

- `__gllc_CullFace` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983a34
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 4-byte record with __glDlistAllocOp2 at 0xd983a5c, and writes a halfword at +0xc and a word at +0x10. It appends with __glDlistAppendOp at 0xd983a8c using the table at 0xd98b1cc, and a zero allocator return at 0xd983a6c skips the stores. The single-word payload suggests a display-list entry for glCullFace.

- `__gllc_Fogf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983aa8
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd983ad4, and writes a halfword at +0xc, a word at +0x10 and a float word at +0x14 (swc1 at 0xd983b04). It appends with __glDlistAppendOp at 0xd983b0c using the table at 0xd98b20c, and a zero allocator return at 0xd983ae4 skips the stores. The parameter-plus-float layout suggests a display-list entry for glFogf.

- `__gllc_Fogfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983b28
  **Inferred.** Reads the context pointer at absolute 0x1010 and asks __glFogfv_size at 0xd983b50 for the element count of its vector argument. A negative byte count (the bgez test at 0xd983b5c) goes to __gllc_InvalidEnum at 0xd983b6c, and otherwise it allocates count*4+4 bytes at 0xd983b88, copies count*4 bytes from a1 into the record at +20 through memcpy at 0xd983bb8, and appends with __glDlistAppendOp at 0xd983bd0 using the table at 0xd98b254. The size-query and error-path shape suggests a display-list entry for glFogfv.

- `__gllc_Fogi` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983bec
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd983c18, and writes a halfword at +0xc and words at +0x10 and +0x14. It appends with __glDlistAppendOp at 0xd983c50 using the table at 0xd98b2bc, and a zero allocator return at 0xd983c28 skips the stores. The integer form of the Fogf layout suggests a display-list entry for glFogi.

- `__gllc_Fogiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983c6c
  **Inferred.** Reads the context pointer at absolute 0x1010 and asks __glFogiv_size at 0xd983c94 for the element count of its vector argument. A negative byte count (bgez at 0xd983ca0) goes to __gllc_InvalidEnum at 0xd983cb0, and otherwise it allocates count*4+4 bytes at 0xd983ccc, copies count*4 bytes from a1 at +20 with memcpy at 0xd983cfc, and appends with __glDlistAppendOp at 0xd983d14 using the table at 0xd98b304. The layout matches Fogfv, which suggests a display-list entry for glFogiv.

- `__gllc_FrontFace` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983d30
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 4-byte record with __glDlistAllocOp2 at 0xd983d58, and writes a halfword at +0xc and a word at +0x10. It appends with __glDlistAppendOp at 0xd983d88 using the table at 0xd98b36c, and a zero allocator return at 0xd983d68 skips the stores. The single-word payload suggests a display-list entry for glFrontFace.

- `__gllc_Hint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983da4
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd983dd0, and writes a halfword at +0xc and words at +0x10 and +0x14. It appends with __glDlistAppendOp at 0xd983e08 using the table at 0xd98b3ac, and a zero allocator return at 0xd983de0 skips the stores. The two-word payload suggests a display-list entry for glHint.

- `__gllc_LightModelfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98414c
  **Inferred.** Reads the context pointer at absolute 0x1010 and asks __glLightModelfv_size at 0xd984174 for the element count of its vector argument. A negative byte count (bgez at 0xd984180) goes to __gllc_InvalidEnum at 0xd984190, and otherwise it allocates count*4+4 bytes at 0xd9841ac, copies count*4 bytes from a1 at +20 with memcpy at 0xd9841dc, and appends with __glDlistAppendOp at 0xd9841f4 using the table at 0xd98b4cc. The size-query and error-path shape suggests a display-list entry for glLightModelfv.

- `__gllc_LightModeliv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984288
  **Inferred.** Reads the context pointer at absolute 0x1010 and asks __glLightModeliv_size at 0xd9842b0 for the element count of its vector argument. A negative byte count (bgez at 0xd9842bc) goes to __gllc_InvalidEnum at 0xd9842cc, and otherwise it allocates count*4+4 bytes at 0xd9842e8, copies count*4 bytes from a1 at +20 with memcpy at 0xd984318, and appends with __glDlistAppendOp at 0xd984330 using the table at 0xd98b534. The layout matches LightModelfv, which suggests a display-list entry for glLightModeliv.

- `__gllc_Lightfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983ea8
  **Inferred.** Reads the context pointer at absolute 0x1010 and asks __glLightfv_size at 0xd983ed8 for the element count of its vector argument, passing its light-number argument through. A negative byte count (bgez at 0xd983ee4) goes to __gllc_InvalidEnum at 0xd983ef4, and otherwise it allocates count*4+8 bytes at 0xd983f10, writes a halfword at +0xc and words at +0x10 and +0x14, copies count*4 bytes from a2 at +24 with memcpy at 0xd983f48, and appends with __glDlistAppendOp at 0xd983f60 using the table at 0xd98b3f4. The layout suggests a display-list entry for glLightfv.

- `__gllc_Lightiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984000
  **Inferred.** Reads the context pointer at absolute 0x1010 and asks __glLightiv_size at 0xd984030 for the element count of its vector argument. A negative byte count (bgez at 0xd98403c) goes to __gllc_InvalidEnum at 0xd98404c, and otherwise it allocates count*4+8 bytes at 0xd984068, writes a halfword at +0xc and words at +0x10 and +0x14, copies count*4 bytes from a2 at +24 with memcpy at 0xd9840a0, and appends with __glDlistAppendOp at 0xd9840b8 using the table at 0xd98b460. The layout matches Lightfv, which suggests a display-list entry for glLightiv.

- `__gllc_LineStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98434c
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd984378, and writes a halfword at +0xc, a word at +0x10 and a halfword at +0x14. It appends with __glDlistAppendOp at 0xd9843b0 using the table at 0xd98b59c, and a zero allocator return at 0xd984388 skips the stores. The factor-and-pattern layout suggests a display-list entry for glLineStipple.

- `__gllc_LineWidth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9843cc
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 4-byte record with __glDlistAllocOp2 at 0xd9843f4, and writes a halfword at +0xc and a float word at +0x10 (swc1 at 0xd98441c). It appends with __glDlistAppendOp at 0xd984424 using the table at 0xd98b5e4, and a zero allocator return at 0xd984404 skips the stores. The single float payload suggests a display-list entry for glLineWidth.

- `__gllc_Materialfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9844c4
  **Inferred.** Reads the context pointer at absolute 0x1010 and passes its arguments and the word loaded from a2 to __glErrorCheckMaterial at 0xd9844f4. A nonzero check result goes to __gllc_Error at 0xd984510 and returns, and otherwise it asks __glMaterialfv_size at 0xd984528 for the count, sends a negative count to __gllc_InvalidEnum at 0xd984544, allocates count*4+8 bytes at 0xd984560, copies count*4 bytes from a2 at +24 with memcpy at 0xd984598, and appends with __glDlistAppendOp at 0xd9845bc using the table at 0xd98b628. The check-then-record shape suggests a display-list entry for glMaterialfv, with validation before recording.

- `__gllc_Materialiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98465c
  **Inferred.** Reads the context pointer at absolute 0x1010 and passes its arguments through __glErrorCheckMaterial at 0xd98469c. A nonzero check result goes to __gllc_Error at 0xd9846b8 and returns, and otherwise it asks __glMaterialiv_size at 0xd9846d0 for the count, sends a negative count to __gllc_InvalidEnum at 0xd9846ec, allocates count*4+8 bytes at 0xd984708, copies count*4 bytes from a2 at +24 with memcpy at 0xd984740, and appends with __glDlistAppendOp at 0xd984764 using the table at 0xd98b694. The layout matches Materialfv, which suggests a display-list entry for glMaterialiv.

- `__gllc_PointSize` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984780
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 4-byte record with __glDlistAllocOp2 at 0xd9847a8, and writes a halfword at +0xc and a float word at +0x10 (swc1 at 0xd9847d0). It appends with __glDlistAppendOp at 0xd9847d8 using the table at 0xd98b700, and a zero allocator return at 0xd9847b8 skips the stores. The single float payload suggests a display-list entry for glPointSize.

- `__gllc_PolygonMode` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9847f4
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates an 8-byte record with __glDlistAllocOp2 at 0xd984820, and writes a halfword at +0xc and words at +0x10 and +0x14. It appends with __glDlistAppendOp at 0xd984858 using the table at 0xd98b744, and a zero allocator return at 0xd984830 skips the stores. The two-word payload suggests a display-list entry for glPolygonMode.

- `__gllc_Scissor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984874
  **Inferred.** Reads the context pointer at absolute 0x1010, allocates a 0x10-byte record with __glDlistAllocOp2 at 0xd9848a8, and writes a halfword at +0xc and four words at +0x10 to +0x1c. It appends with __glDlistAppendOp at 0xd9848f0 using the table at 0xd98b78c, and a zero allocator return at 0xd9848b8 skips the stores. The four-word payload suggests a display-list entry for glScissor.
