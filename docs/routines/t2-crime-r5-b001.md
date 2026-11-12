# Tier-2 routine readings, crime round 5 batch 1

Role entries for 25 located routines in the tier-2 reading list, ranks 25 to 49. Each role comes from the rendered facts for that exact binary range, cited by address. Labels are Inferred. The binary is the IP32CRM build of libGLcore.so.

- `__glce_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97be64
  **Inferred.** Copies 8-byte words from abs 0x1050 onto the stack [@0xd97be90] [@0xd97be98] in a loop that runs back while t7 is not 0x17a0 [@0xd97beac taken], saving a 0x750-byte block. It then calls __glMipsCopyDispatch with a0 = the context +6080 and a1 = 0x1050 [call 1] and calls glCallList with a0 from entry [call 2]. A second round uses the context +9864 [call 3] and calls glCallList again [call 4]. The saved block is copied back last [call 6].
  Role (from facts): saves the block at abs 0x1050 on the stack, copies the block at context +6080 over it [call 1] and runs glCallList [call 2], repeats with the block at context +9864 [call 3, call 4], then restores the saved block [call 6].
  Reviewed: 2026-11-12
- `DoCallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c0ec
  **Inferred.** Loads a word from the context at abs 0x1010 [@0xd97c138] and a byte from a table [@0xd97c154]. A compare of a1 against 0x1400 decides the first branch [@0xd97c134 taken]. It takes the names lock [call 1] before a call to an unresolved routine [call 2] and releases the lock [call 3].
  Role (from facts): walks a list of names under the names lock, calling an unresolved routine per element [call 2].
  Reviewed: 2026-11-12
- `__glle_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c398
  **Inferred.** Loads two words from its argument record, at +0x4 [@0xd97c3b8] and at +0x0 [@0xd97c3bc]. It calls DoCallLists with the record's fields [call 1], then compares the word at +0x4 against 0x1400 [@0xd97c3e4 taken] and looks up an element size in a byte table [@0xd97c400]. It returns the address just past the record, 8 plus the count times that size rounded up to 4 [@0xd97c428].
  Role (from facts): a list-call wrapper that reads its record, hands the list to DoCallLists [call 1] and returns the address of the next record.
  Reviewed: 2026-11-12
- `__glce_DrawArraysEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c4e4
  **Inferred.** Copies 8-byte words from abs 0x1050 onto the stack [@0xd97c518] [@0xd97c520] in a loop that runs back while t7 is not 0x17a0 [@0xd97c534 taken]. It calls __glMipsCopyDispatch with a0 = the context +6080 and a1 = 0x1050 [call 1] and calls glDrawArraysEXT with a0, a1 and a2 from entry [call 2].
  Role (from facts): the same save, copy and call shape as __glce_CallList, with glDrawArraysEXT called once per block [call 2, call 4]; the saved block is restored last [call 6].
  Reviewed: 2026-11-12
- `__glDlistAppendOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ca04
  **Inferred.** Calls the function pointer at a0 +0x1354 first [@0xd97ca2c] [call 1] and then reads the word at a0 +0x1378 [@0xd97ca3c]. Only when that word equals 0x1301 does it copy blocks through __glMipsCopyDispatch [call 2] and write a word at +0x17b8 of the context [@0xd97ca44 fall] [@0xd97ca68]. A branch-likely on v0 from abs 0x1048 passes that word when it is nonzero [@0xd97ca9c taken nonzero].
  Role (from facts): links the op in a1 onto the display-list chain in the context, storing it into the old tail when the tail word is nonzero [@0xd97cacc taken nonzero] [@0xd97cad0], setting the head at +0x138c only when the list was empty [@0xd97cad4], making it the new tail at +0x1390 [@0xd97cad8], and returning a0+4992 [@0xd97cae8].
  Reviewed: 2026-11-12
- `ApplyMatChange` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97caf0
  **Inferred.** Compares a2 with 0x1200 [@0xd97caf4 taken] and with 0x1600 [@0xd97cb10 taken], which selects one of several case blocks. The case blocks read floats from a3 [@0xd97cb40] and store floats into the record at a1 [@0xd97cb3c]. The last compare sends a2 values other than 0x1603 to the exit [@0xd97cb28 taken].
  Role (from facts): copies a set of material parameter floats from a3 into the record at a1, with the field set chosen by a2 [@0xd97cb28 fall].
  Reviewed: 2026-11-12
- `__glDlistOptimizeMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97cd50
  **Inferred.** The routine exits early when the flags word at a1 +0x4 has bit 0x100 clear [@0xd97cd98 taken] or when the word at a1 +0xc is zero [@0xd97cdc4 taken]. It allocates a display-list op with __glDlistAllocOp2 [call 4]. When the result is zero it exits [@0xd97d0e4 taken zero]. Otherwise it copies a block into the new op with memcpy [call 5, @0xd97d0e4 fall].
  Role (from facts): builds one material record on the stack from the ops it walks, applying values through ApplyMatChange [call 2], then allocates a replacement op [call 4], copies the record into it [call 5, @0xd97d0e4 fall] and frees ops with __glDlistFreeOp [call 6].
  Reviewed: 2026-11-12
- `__glle_FastMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d1cc
  **Inferred.** Reads the word at abs 0x1018 [@0xd97d20c] and the word at abs 0x1010 [@0xd97d218]. The branch at 0xd97d220 is taken when the word at 0x1018 is not 1 [@0xd97d220 taken]. It loops back while v0 is nonzero [@0xd97d3fc taken nonzero]. It calls __glFreeSpecLUT [call 2] and calls __glValidateMaterial [call 3, @0xd97d418 fall].
  Role (from facts): walks the parameter list passed in a0, freeing the old specular lookup table when a parameter replaces it [call 2], then validates the material when the accumulated flags masked with ~0x20 are nonzero [call 3, @0xd97d418 fall]. It returns the list cursor [@0xd97d460].
  Reviewed: 2026-11-12
- `__glle_Begin_LineLoop` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d5d4
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d5e4] and calls through it with a0 = 0x2 (the closed-line mode) [call 1]. It returns the a0 it was given [@0xd97d608].
  Role (from facts): forwards a closed-line begin with the mode value 0x2, the value the GL begin enum uses for this primitive, through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__glle_Begin_LineStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d610
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d620] and calls through it with a0 = 0x3 (GL_LINE_STRIP) [call 1]. It returns the a0 it was given [@0xd97d644].
  Role (from facts): forwards a line-strip begin with the mode value 0x3 through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__glle_Begin_Points` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d688
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d698] and calls through it with a0 = 0x0 (GL_POINTS) [call 1]. It returns the a0 it was given [@0xd97d6bc].
  Role (from facts): forwards a points begin with the mode value 0x0 through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__glle_Begin_Polygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d6c4
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d6d4] and calls through it with a0 = 0x9 (GL_POLYGON) [call 1]. It returns the a0 it was given [@0xd97d6f8].
  Role (from facts): forwards a polygon begin with the mode value 0x9 through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__glle_Begin_TriangleStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d700
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d710] and calls through it with a0 = 0x5 (GL_TRIANGLE_STRIP) [call 1]. It returns the a0 it was given [@0xd97d734].
  Role (from facts): forwards a triangle-strip begin with the mode value 0x5 through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__glle_Begin_QuadStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7b4
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d7c4] and calls through it with a0 = 0x8 (GL_QUAD_STRIP) [call 1]. It returns the a0 it was given [@0xd97d7e8].
  Role (from facts): forwards a quad-strip begin with the mode value 0x8 through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__glle_Begin_Quads` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7f0
  **Inferred.** Loads the pointer at abs 0x106c [@0xd97d800] and calls through it with a0 = 0x7 (GL_QUADS) [call 1]. It returns the a0 it was given [@0xd97d824].
  Role (from facts): forwards a quads begin with the mode value 0x7 through the pointer at abs 0x106c [call 1].
  Reviewed: 2026-11-12
- `__gllc_InvalidValue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d82c
  **Inferred.** Allocates a display-list op with a1 = 0x0 [call 1]. When the result is zero it skips the rest [@0xd97d858 taken zero]. Otherwise it writes a halfword at +0xc of the op [@0xd97d864] and appends the op [call 2, @0xd97d858 fall].
  Role (from facts): records a no-argument entry in the display list, allocating the op [call 1] and appending it through __glDlistAppendOp [call 2, @0xd97d858 fall]. It returns the op or the append result [@0xd97d884].
  Reviewed: 2026-11-12
- `__gllc_Color4b` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ef30
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97ef48]. It allocates an op with a1 = 0x4 [call 1] and skips the rest when the result is zero [@0xd97ef74 taken zero]. Otherwise it writes a halfword at +0xc [@0xd97ef80] and four bytes from +0x10 to +0x13 [@0xd97ef8c] [@0xd97efa4], then reads the word at +0x1384 [@0xd97efa8], ORs in bit 0x4 and stores it back [@0xd97efb0] and appends the op [call 2, @0xd97ef74 fall].
  Role (from facts): stores a 4-byte record in a new display-list op and appends it [call 2, @0xd97ef74 fall].
  Reviewed: 2026-11-12
- `__gllc_Color4bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97efd4
  **Inferred.** Allocates an op with a1 = 0x4 [call 1]. When the result is zero it skips the rest [@0xd97f014 taken zero]. On the nonzero path [@0xd97f014 fall] it reads four bytes from the argument pointer a0 [@0xd97f024] [@0xd97f040] and stores them at +0x10 to +0x13 of the op [@0xd97f02c] [@0xd97f044]. It appends the op [call 2, @0xd97f014 fall].
  Role (from facts): copies the four bytes behind a0 into a new display-list op and appends it [call 2, @0xd97f014 fall].
  Reviewed: 2026-11-12
- `__gllc_Color4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f074
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97f090]. It allocates an op with a1 = 0x20 [call 1] and skips the rest when the result is zero [@0xd97f0b0 taken zero]. Otherwise it writes a halfword at +0xc [@0xd97f0c0] and a byte at +0xe [@0xd97f0c4], stores 8-byte values at +0x10 to +0x28 [@0xd97f0d0] [@0xd97f0e8], and appends the op [call 2, @0xd97f0b0 fall].
  Role (from facts): fills a 0x20-byte display-list op with doubles and appends it [call 2, @0xd97f0b0 fall].
  Reviewed: 2026-11-12
- `__gllc_Color4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f1c0
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97f1dc]. It allocates an op with a1 = 0x10 [call 1] and skips the rest when the result is zero [@0xd97f204 taken zero]. Otherwise it writes a halfword at +0xc [@0xd97f210] and four single-precision values at +0x10 to +0x1c [@0xd97f21c] [@0xd97f234], then appends the op [call 2, @0xd97f204 fall].
  Role (from facts): stores four single-precision words in a new display-list op and appends it [call 2, @0xd97f204 fall].
  Reviewed: 2026-11-12
- `__gllc_Color4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f304
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97f31c]. It allocates an op with a1 = 0x10 [call 1] and skips the rest when the result is zero [@0xd97f348 taken zero]. Otherwise it writes a halfword at +0xc [@0xd97f354] and four words at +0x10 to +0x1c [@0xd97f360] [@0xd97f378], then appends the op [call 2, @0xd97f348 fall].
  Role (from facts): stores four integer words in a new display-list op and appends it [call 2, @0xd97f348 fall].
  Reviewed: 2026-11-12
- `__gllc_Color4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f448
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97f460]. It allocates an op with a1 = 0x8 [call 1] and skips the rest when the result is zero [@0xd97f48c taken zero]. Otherwise it writes a halfword at +0xc [@0xd97f498] and four halfwords at +0x10 to +0x16 [@0xd97f4a4] [@0xd97f4bc], then appends the op [call 2, @0xd97f48c fall].
  Role (from facts): stores four halfword components in a new display-list op and appends it [call 2, @0xd97f48c fall].
  Reviewed: 2026-11-12
- `__gllc_Color4ub` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f58c
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97f5a4]. It allocates an op with a1 = 0x4 [call 1] and skips the rest when the result is zero [@0xd97f5d0 taken zero]. Otherwise it writes a halfword at +0xc [@0xd97f5dc] and four bytes at +0x10 to +0x13 [@0xd97f5e8] [@0xd97f600], then appends the op [call 2, @0xd97f5d0 fall].
  Role (from facts): stores a 4-byte record in a new display-list op and appends it [call 2, @0xd97f5d0 fall].
  Reviewed: 2026-11-12
- `__gllc_Color4ui` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f6d0
  **Inferred.** Loads the context word at abs 0x1010 [@0xd97f6e8]. It allocates an op with a1 = 0x10 [call 1] and skips the rest when the result is zero [@0xd97f714 taken zero]. Otherwise it writes a halfword at +0xc [@0xd97f720] and four words at +0x10 to +0x1c [@0xd97f72c] [@0xd97f744], then appends the op [call 2, @0xd97f714 fall].
  Role (from facts): stores four words in a new display-list op and appends it [call 2, @0xd97f714 fall].
  Reviewed: 2026-11-12
- `__gllc_RasterPos2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9805f0
  **Inferred.** Loads the context word at abs 0x1010 [@0xd98060c]. It allocates an op with a1 = 0x8 [call 1] and skips the rest when the result is zero [@0xd98062c taken zero]. Otherwise it writes a halfword at +0xc [@0xd980638] and two single-precision values at +0x10 and +0x14 [@0xd980644] [@0xd98064c], then appends the op [call 2, @0xd98062c fall].
  Role (from facts): stores a raster position of two single-precision words in a new display-list op and appends it [call 2, @0xd98062c fall].
  Reviewed: 2026-11-12
