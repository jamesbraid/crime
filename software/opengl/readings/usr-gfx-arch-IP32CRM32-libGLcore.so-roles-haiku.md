# Role readings: `usr/gfx/arch/IP32CRM32/libGLcore.so`

Routine roles read from the disassembly of each routine listed. An independent audit of these entries removed the ones it found wrong.

- `__glCrmShadeModel` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd940e50
  **Inferred.** Sets bit 0x10000 in the state word at context +0x7d58 when the word at +0x570 equals 0x1d01, the GL_SMOOTH value, and clears that bit for any other value. It makes no calls.

- `ResizeCI` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942890
  **Inferred.** Writes the second argument to the object at +0x4 and +0x1c and the third argument to +0x8. It is a leaf routine with no calls and no other stores.

- `__glCrmClampScaleAndDownload` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942c00
  **Inferred.** Calls an indirect routine through the GOT first, with the context in a0. It then tests the byte at +0xc94. When that byte is set and the byte at +0x8088 is clear, it calls `__glCrmDownloadCurrentColor` at 0xd942aa0 with the context. Otherwise it returns without calling anything else.

- `__glcrmim_Indexd` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942ce0
  **Inferred.** Narrows the double in f12 to single precision with cvt.s.d in the delay slot of the call, then jumps through entry +0x610 of the dispatch table. The table is reached from the word at 0x1010 and then the pointer at +0x17b8.

- `__glcrmim_Indexi` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942d20
  **Inferred.** Moves the integer in a0 into f12 and widens it to float. The float is then passed to dispatch entry +0x610 of the table at +0x17b8 of the current context.

- `__glcrmim_Indexs` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942d60
  **Inferred.** The argument register a0 is converted to float in f12 through mtc1 and cvt.s.w, and the result is handed to dispatch entry +0x610. The routine saves ra and gp in a 16-byte frame.

- `__glcrmim_Indexdv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942da0
  **Inferred.** Reads a double from the address in a0 with ldc1, narrows it to single precision, and forwards it through entry +0x610.

- `__glcrmim_Indexfv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942de0
  **Inferred.** No arithmetic happens here. The float at the address in a0 is loaded into f12 in the delay slot of the jump to entry +0x610, so the callee receives the value unchanged.

- `__glcrmim_Indexiv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942e20
  **Inferred.** Loads the word that a0 points to, moves it to the FPU, and converts it from integer to single before calling entry +0x610.

- `__glcrmim_Indexsv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942e70
  **Inferred.** Loads the halfword at a0 with lh, so the value is sign-extended, converts it to single, and calls entry +0x610.

- `__glcrmim_Indexub` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942ec0
  **Inferred.** Converts the whole register a0 from integer to single without masking it, then calls entry +0x610.

- `__glcrmim_Indexubv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd942f00
  **Inferred.** Reads one unsigned byte from a0 with lbu, converts it to single, and calls entry +0x610.

- `__glcrmim_n3f` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94af90
  **Inferred.** Forwards the call without touching the argument registers. It locates the dispatch table through the word at 0x1010 and the pointer at +0x17b8, then calls entry +0x644 of that table, a different slot from the +0x610 entry the Index forms use.

- `__glcrmim_FastColor3ub` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd943690
  **Inferred.** Sets a3 to 0xff in the delay slot of the call and passes a0 to a2 through unchanged. It then calls `__glcrmim_FastColor4ub` at 0xd9435b0, so the colour is submitted with full alpha.

- `__glcrmim_FastColor3ubv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9436d0
  **Inferred.** Reads the three bytes at offsets 0, 1 and 2 of the array at a0 into a0, a1 and a2, sets a3 to 0xff, and calls `__glcrmim_FastColor4ub` at 0xd9435b0.

- `__glcrmim_FastColor4ubv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd943720
  **Inferred.** Unpacks four bytes from the array at a0: bytes 0 to 2 go to a0, a1 and a2, and byte 3 goes to a3 as alpha. It then calls `__glcrmim_FastColor4ub` at 0xd9435b0.

- `__glCrmCalcAlphaColor` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd943770
  **Inferred.** When a1 is nonzero, copies the float at a0+0x6e10 to a2+0xac. When a1 is zero, copies the float at a0+0x6de8 to a2+0x9c. It makes no calls.

- `crmScanVice` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9437d0
  **Inferred.** Returns 1 and stores the word at +0x14 of the record at a0 through the pointer in a1 when the record's word at +4 is 0xf and its word at +8 is 3. Any other record returns 0 and stores nothing.

- `__glCrmAllocAccum` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9438b0
  **Inferred.** Calls the function pointer at +0x7ab8 of the context in a0. The callee receives the caller's a1 first, then the words at context +0xe74 and +0xe78.

- `__glCrmGetSrcBufMode` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd944410
  **Inferred.** Forwards to `crmGetBufMode` at 0xd943f10 with 0xc02 in a1, the GL_READ_BUFFER value. The caller's a1 and a2 move into a2 and a3, and a0 is passed through.

- `__glCrmPassDepthMask` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94a050
  **Inferred.** Sets bit 0x2 in the state word at context +0x7d58 only when the byte at +0x7d08 is nonzero, the byte at +0x664 is nonzero, and bit 0x10 of the word at +0x700 is set. Otherwise it clears bit 0x2. It then calls `__glCrmPassDepthFunc` at 0xd94a0d0 with the context.

- `__glCrmEnableDepthTest` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94a250
  **Inferred.** Sets bit 0x4 in the word at +0x7d58 when the byte at +0x7d08 is nonzero and bit 0x10 of the word at +0x700 is set, and clears it otherwise. It finishes by calling `__glCrmPassDepthMask` at 0xd94a050.

- `__glCrmUpdateHardwareState` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd944f80
  **Inferred.** Makes 15 direct calls in a fixed order, each with the context in a0: `__glCrmEnableAlphaTest` (0xd940200) through `__glCrmPassFog` (0xd940b60), covering `__glCrmPassDepthFunc` (0xd94a0d0), `__glCrmPassDepthMask` (0xd94a050), `__glCrmEnableDepthTest` (0xd94a250) and `__glCrmShadeModel` (0xd940e50) on the way. Four indirect calls through GOT slots at gp-0x7a5c, gp-0x7a60, gp-0x7a64 and gp-0x7a48 follow the last direct call.

- `__glCrmInitDepth` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94ad20
  **Inferred.** Fills the depth record at a0 from the context in a1. It first makes an indirect call with the record in a0 and the context in a1. It copies the word at context +0xcac into record +0xc, writes fixed masks into +0x40, +0x48, +0x4c, +0x50, +0x54, +0x58 and +0x5c (0xff000000, 0x00ffffff, 0x7fffff80 and 0), and stores (word +0xcb0 + word +0xcac + 7) >> 3 at +0x18. Pointer-valued fields at +0x34 through +0x80 come from GP-table constants. A cached word at gp-0x5454 is computed by one indirect call the first time it is negative. When it is nonzero, +0x64 becomes 0x100000 and +0x60 becomes 0; when it is zero, +0x64 becomes 0 and +0x60 becomes 1.

- `__glcrmim_IglooInterfaceSGIX` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94b0f0
  **Inferred.** Dispatches on the token in a0 with a1 as its argument pointer. Token 0x81a1 clears bit 0x2 of the word at context +0x7b08 when the word at (a1) is zero. Otherwise it sets bit 0x2 and, if bit 0x1 is also set and the word at +0x2ee0 equals a GP-table value, calls an indirect routine with the context in a0. Token 0x81a0 calls `crmIglooSwaptmesh` at 0xd94ae80. Token 0x819e calls the routine at 0xd94aef0, which has no symbol in the table, with the word at (a1) and the byte at a1+7. Token 0x81a3 calls `crmIgloolmcolor` at 0xd94afd0 with the byte at a1+3. Token 0x819f returns with no effect. Token 0x81a2 stores a GP-table value minus 0x4f80 at context +0x2e10. Any other token reports 0x500 through an indirect call.

- `crmIglooSwaptmesh` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94ae80
  **Inferred.** Swaps the words at +0x3194 and +0x3198 of the current context, which is read from the word at 0x1010. It then rewrites the word at +0x2eac by swapping two pairs of GP-table constants. A value equal to one member of a pair becomes the other member, and a value that matches neither pair is left alone.

- `crmIgloolmcolor` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94afd0
  **Inferred.** Sets bit 0x1 of the word at +0x7b08 of the current context when a0 is 1, and clears it for any other a0. It then writes 2 to absolute 0x1018 and sets bit 0x1 in the word at +0x2dec.

- `crmIglooApplyColor` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94b030
  **Inferred.** Reads the word at +0x7b08 of the context in a0. When both bit 0x1 and bit 0x2 are set, it calls an indirect routine through the GOT with a0 unchanged. Otherwise it returns without calling anything.

- `crmIglooPickColorMaterialProcs` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94b080
  **Inferred.** Calls an indirect routine through the GOT first, with the context in a0, and keeps the context in fp. After that call, if bit 0x80 of the word at +0x700 is clear and bit 0x40 is set, it stores a GP-table value minus 0x4fd0 at +0x2ee0.

- `__glCrmPolygonOffsetLine` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd94dfa0
  **Inferred.** Wraps a line-drawing call with a polygon depth offset. The float at context +0x7718 is added to the float at +0x88 of both vertex records in a1 and a2, and the originals are kept in f30 and f3. The routine then calls the function pointer at context +0x30b8 with a0, a1 and a2 unchanged, and after that returns writes the saved originals back to +0x88 of a1 and a2. The offset therefore exists only for the duration of the delegated call.

- `__glCrmPolygonOffsetPoint` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd95d3b0
  **Inferred.** Single-record form of the offset wrapper. It adds the context float at +0x7718 to the float at +0x88 of the record in a1, calls the function pointer at context +0x30d0 with a0 and a1, and then restores the saved +0x88 value. The a2 argument is not read or written.

- `__glCrmPickClipProcs` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9517a0
  **Inferred.** Chooses the clip routines the context uses. When the word at +0x6db0 is zero, it stores `__glFastClipLine` at +0x30c4 and `__glClipTriangle` at +0x2f38. Otherwise it compares the word at +0x570 with 0x1d00: on a match it stores `__glFastClipFlatLine` at +0x30c4 and `__glClipTriangle` at +0x2f38, and on a mismatch it stores `__glFastClipSmoothLine` at +0x30c4 and `__glClipTriangle` at +0x2f38. The pointers are loaded from the module's global table, and the routine returns no value.

- `__glCrmValidate` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd952650
  **Inferred.** Runs three steps on the context in a fixed order: `__glCrmUnlayerColorProcs` with the context, the function pointer at context +0x2e5c with the context, and `__glCrmLayerColorProcs` with the context. The context is kept in s0 across the calls.

- `__glcrmle_TexImage1D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950520
  **Inferred.** Replays a recorded one-dimensional texture image into the execute path. The record pointer in a0 supplies the words at +0x0, +0x4, +0x8, +0xc, +0x10, +0x14 and +0x18 as arguments to `__glcrmlei_TexImage1D`, with the context first. The payload address fp+0x20 goes in a stack slot. The return value is the record pointer plus the word at +0x1c rounded up to a multiple of four, plus 0x20.

- `__glcrmlc_TexImage1D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9505a0
  **Inferred.** Compile-time entry for a one-dimensional texture image. The proxy target 0x8063 forwards its arguments unchanged through the pointer at context +0x17b8 and then the entry at +0xb0. Any target other than 0xde0 reports 0x500 through `__gllc_InvalidEnum`. For 0xde0 it calls `crmlcCheckTexImageArgs` and returns if that check is nonzero. Otherwise it takes the size from `__glImageSize`, allocates the size rounded up to four plus 0x20 bytes through `__glDlistAllocOp2`, writes halfword 0x2710 at +0xc, and copies the arguments into the record from +0x10 to +0x28, with the rounded size at +0x2c. `__glFillImage` runs only when that size is positive and the flag spilled at 0x10(sp) is nonzero. The record is then appended with `__glDlistAppendOp` and `__glcrmle_TexImage1D` as the third argument.

- `__glcrmle_TexImage2D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950740
  **Inferred.** Execute-side replay for a two-dimensional texture image. It passes the context and the record words at +0x0 through +0x18 to `__glcrmlei_TexImage2D`, puts the word at +0x1c in one stack slot and fp+0x24 in another, and returns the record pointer plus the word at +0x20 rounded up to four, plus 0x24.

- `__glcrmlc_TexImage2D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9507d0
  **Inferred.** Compile-time entry for a two-dimensional texture image. The proxy target 0x8064 forwards its arguments unchanged through the context pointer at +0x17b8 and the entry at +0xb4. Only target 0xde1 is accepted; any other value reports 0x500. After `crmlcCheckTexImageArgs` accepts the call, the size comes from `__glImageSize` and the record is `__glDlistAllocOp2` of the rounded size plus 0x24. Halfword 0x2711 goes at +0xc, the arguments fill +0x10 through +0x2c, and the rounded size is stored at +0x30. The image is filled by `__glFillImage` only when that size is positive and the word at sp+0xc4 is nonzero. The record then goes to `__glDlistAppendOp` with `__glcrmle_TexImage2D`.

- `__glcrmle_TexSubImage1DEXT` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950970
  **Inferred.** Execute-side replay for a one-dimensional subimage. The context and record words at +0x0 through +0x14 go to `__glcrmlei_TexSubImage1DEXT`, with the address fp+0x1c as its last argument. The return value is the record pointer plus the word at +0x18 rounded up to four, plus 0x1c.

- `__glcrmlc_TexSubImage1DEXT` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9509f0
  **Inferred.** Compile-time entry for a one-dimensional subimage. Target 0xde0 is the only accepted value; others report 0x500 through `__gllc_InvalidEnum`. After the argument check, the rounded size from `__glImageSize` determines an allocation of that size plus 0x1c through `__glDlistAllocOp2`. The record gets halfword 0x2712 at +0xc and the arguments from +0x10 to +0x28. `__glFillImage` runs whenever the rounded size is positive, with no flag test. Then the record is appended with `__glDlistAppendOp` and `__glcrmle_TexSubImage1DEXT`.

- `__glcrmle_TexSubImage2DEXT` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950b50
  **Inferred.** Replays a two-dimensional subimage record. It takes the context and the words at +0x0 through +0x18 as arguments to `__glcrmlei_TexSubImage2DEXT`, passes the word at +0x1c in one stack slot and the address fp+0x24 in another, and returns the record pointer plus the word at +0x20 rounded up to four, plus 0x24.

- `__glcrmlc_TexSubImage2DEXT` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950be0
  **Inferred.** Compile-time entry for a two-dimensional subimage. Target 0xde1 is accepted and anything else reports 0x500. The call runs the argument check, takes the rounded size from `__glImageSize`, and allocates that size plus 0x24. Halfword 0x2713 goes at +0xc and the arguments at +0x10 through +0x2c, with the rounded size at +0x30. Unlike the full-image entry, `__glFillImage` runs whenever the rounded size is positive, with no stack flag. The record is appended with `__glcrmle_TexSubImage2DEXT` as the third argument.

- `__glcrmlc_Vertex3f` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950d50
  **Inferred.** Records a vertex from three float arguments in f12, f13 and f14. It allocates a 12-byte record with `__glDlistAllocOp2`, writes halfword 0x2714 at +0xc, and stores x, y and z at +0x10, +0x14 and +0x18. It sets bit 0 of the word at 0x1384 and appends the record with `__glDlistAppendOp`. If the word at 0x1378 equals 0x1301 the third argument is the `__glle_Vertex3fv` entry; otherwise it is `__glcrmle_Vertex3fv`.

- `__glcrmlc_Vertex3fv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950e10
  **Inferred.** Vector form of the vertex record. The three floats are read through the pointer in a0 at offsets 0, 4 and 8 and stored in a 12-byte record with opcode 0x2714. The same 0x1384 bit 0 update and the 0x1378 == 0x1301 check select between the two execute entries as in the scalar form.

- `__glcrmlc_Color3f` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950ed0
  **Inferred.** Records a colour from three float arguments. The record is 12 bytes, carries halfword 0x2715, and holds the three values at +0x10, +0x14 and +0x18. It sets bit 2 of the word at 0x1384. The execute-entry choice follows the 0x1378 == 0x1301 test, with `__glcrmle_Color3fv` or `__glle_Color3fv` as the third argument.

- `__glcrmlc_Color3fv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd950f90
  **Inferred.** Vector colour form. It loads three floats from the pointer in a0 into the record at +0x10, +0x14 and +0x18 under opcode 0x2715, sets bit 2 of 0x1384, and appends the record with the same 0x1301 selection between `__glcrmle_Color3fv` and `__glle_Color3fv`.

- `__glcrmlc_Normal3f` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd951050
  **Inferred.** Records a normal from f12, f13 and f14. It allocates 12 bytes, writes halfword 0x2716, stores the three floats at +0x10 through +0x18, and sets bit 1 of the word at 0x1384. The third append argument is `__glle_Normal3fv` when the word at 0x1378 equals 0x1301 and `__glcrmle_Normal3fv` otherwise.

- `__glcrmlc_Normal3fv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd951110
  **Inferred.** Vector normal form. The three floats come from the pointer in a0 and go into a 12-byte record with opcode 0x2716. It sets bit 1 of 0x1384, and it appends with `__glcrmle_Normal3fv` or `__glle_Normal3fv` according to the 0x1378 test.

- `__glcrmlc_TexCoord2f` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9511d0
  **Inferred.** Records a texture coordinate pair from f12 and f13. The record is 8 bytes with opcode 0x2717, the first coordinate at +0x10 and the second at +0x14. It sets bit 3 of the word at 0x1384 and appends with `__glcrmle_TexCoord2fv` or `__glle_TexCoord2fv`, chosen by the 0x1378 == 0x1301 test.

- `__glcrmlc_TexCoord2fv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd951290
  **Inferred.** Vector form of the texture coordinate record. It reads two floats from the pointer in a0 at offsets 0 and 4, stores them at +0x10 and +0x14 of an 8-byte record with opcode 0x2717, and sets bit 3 of 0x1384 before the same execute-entry selection.

- `__glcrmim_DrawPixels` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd953df0
  **Inferred.** Immediate-mode wrapper for glDrawPixels-style calls. It clears the bytes at context +0x7dcf and +0x7dd0. If the word at 0x1018 is nonzero it forwards the arguments unchanged to `__glim_DrawPixels`. Otherwise two format rewrites apply: format 0x81bb with type 0x1401 becomes format 0x190a with byte +0x7dcf set to 1, and format 0x1908 with type 0xffff7fcc becomes type 0x8034 with byte +0x7dd0 set to 1. The routine then calls `__glim_DrawPixels` with the rewritten arguments.

- `__glcrmim_ReadPixels` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd953e80
  **Inferred.** Read-side counterpart of the draw wrapper. Format and type arrive in a4 and a5. It clears the same two context bytes, forwards unchanged when the word at 0x1018 is nonzero, and otherwise applies the same two rewrites: format 0x81bb with type 0x1401 sets format 0x190a and byte +0x7dcf, and format 0x1908 with type 0xffff7fcc sets type 0x8034 and byte +0x7dd0. It then calls `__glim_ReadPixels`.

- `__glcrmim_PixelZoom` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd953f10
  **Inferred.** Sets the pixel zoom factors from f12 and f13. Each factor is divided by the step float at context +0xe5c, then the rounding float at +0xdd4 is added for a positive input or subtracted otherwise. The result is truncated to an integer, converted back to float and multiplied by the step again, which rounds each zoom to a multiple of the step. The results go to +0x2e8 and +0x2ec, bit 4 is set in the word at +0x2dec, and the word at 0x1018 becomes 2. A call made while 0x1018 is 1 reports 0x502 through `__glSetError`.

- `__glcrmim_Begin` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd962df0
  **Inferred.** Immediate-mode begin. With 0x1018 equal to 0 the mode in a0 must be below 10, otherwise it reports 0x500. The mode is stored at context +0x80d4. If the byte at context +0x80dc plus the mode is nonzero, a helper at 0xd962cc0 runs first. When the flag word at +0x807c has bit 1 set and the word at +0x8080 is not 2, `__glCrmDownloadCurrentColor` runs. Then the word at +0x7db0 becomes 2, the word at 0x1018 becomes 1, and the function pointer at context +0x2efc plus four times the mode is called. With 0x1018 equal to 2 the routine calls the pointer at +0x2e08, then begins again with the same mode and leaves 0x1018 at 0. Any other state reports 0x502.

- `__glcrmim_End` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd962f20
  **Inferred.** Immediate-mode end. Only state 1 is accepted: it calls the function pointer at context +0x2f24 with the context and sets 0x1018 back to 0. If the byte at context +0x80dc plus the mode saved at +0x80d4 is nonzero, a helper at 0xd962d50 runs with the context. States 0 and 2 both report 0x502 through `__glSetError` and change nothing.

- `__glCrmRect` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd962fc0
  **Inferred.** Sets the primitive mode at ctx+0x80d4 to 7 and emits four vertices through the pointer at ctx+0x17b8 then +0x530. It calls the local routine at 0xd962cc0 before the vertices when the byte at ctx+0x80e3 is nonzero, and it calls __glCrmDownloadCurrentColor when bit 1 of the word at ctx+0x807c is set and the word at ctx+0x8080 is not 2. The hook at ctx+0x2f18 runs before the vertices, the hook at ctx+0x2f24 after them, and the local routine at 0xd962d50 closes the sequence when the byte at ctx+0x80e3 is set.

- `crmAdjustPolygonPoint` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9630e0
  **Inferred.** Shifts one vertex by half a unit around a call. It adds the float 0.5 (gp-0x55f4) to the floats at a1+0x80 and a1+0x84, calls the handler the point slot displaced, which is saved at ctx+0x80e8, and then adds -0.5 (gp-0x5604) to the same two floats.

- `crmAdjustPolygonLine` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963160
  **Inferred.** Applies the same half-unit shift to two vertices. It adds 0.5 to the floats at +0x80 and +0x84 of a1 and of a2, keeps a2 in the frame, calls the line handler saved at ctx+0x80ec with the arguments unchanged, and then subtracts 0.5 from both vertices.

- `crmAdjustPolygonFill` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963220
  **Inferred.** Applies the half-unit shift to three vertex records, a1, a2 and a3. The fill handler saved at ctx+0x80f0 runs between the two adjustments, and a2 and a3 are kept in the frame across that call.

- `crmEndPolygonMode` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963310
  **Inferred.** Runs the end hook that the begin routine saved at ctx+0x80ac, and writes that same pointer back to ctx+0x2f24 in the call's delay slot. It then puts back the adjust handler that the polygon mode displaced: for the mode word at ctx+0x80d8 equal to 0x1b00 (GL_POINT) the value at ctx+0x80e8 goes to ctx+0x30d0, for 0x1b01 (GL_LINE) the value at ctx+0x80ec goes to ctx+0x30b8, and for 0x1b02 (GL_FILL) the value at ctx+0x80f0 goes to ctx+0x2f30.

- `__glCrmBeginPolygonMode` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9633d0
  **Inferred.** Reads the primitive at ctx+0x80d4 and calls the matching begin routine: 9 goes to __glBeginPolygon, 5 to __glBeginTStrip, 6 to __glBeginTFan, 4 to __glBeginTriangles, 8 to __glBeginQStrip and 7 to __glBeginQuads. It then reads the polygon mode at ctx+0x80d8 and installs crmAdjustPolygonPoint, crmAdjustPolygonLine or crmAdjustPolygonFill (0xd9630e0, 0xd963160, 0xd963220) into the matching slot for GL_POINT, GL_LINE or GL_FILL, keeping each displaced handler at ctx+0x80e8, ctx+0x80ec or ctx+0x80f0. Every mode finishes by saving the end hook at ctx+0x2f24 into ctx+0x80ac and installing crmEndPolygonMode there.

- `__glCrmRasterPos2` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963570
  **Inferred.** Wraps __glRasterPos2, reached through the GOT entry at gp-0x6138. The local routines at 0xd962cc0 and 0xd962d50 run before and after it, reached as the table base 0xd960000 plus 0x2cc0 and 0x2d50. The context stays in a0 and the second argument a1 passes through unchanged.

- `__glCrmRasterPos3` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9635e0
  **Inferred.** Brackets a call to __glRasterPos3 (GOT entry gp-0x6134) with the local routines at 0xd962cc0 and 0xd962d50. The context is saved in s0 and a1 in fp across the call, so both survive the bracket.

- `__glCrmRasterPos4` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963650
  **Inferred.** Brackets a call to __glRasterPos4 (GOT entry gp-0x6130) with the same two local routines, 0xd962cc0 before and 0xd962d50 after. Its arguments are the context and a1, which it keeps in s0 and fp for the bracket.

- `__glcrmim_RenderMode` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9636c0
  **Inferred.** Switches the render mode between GL_RENDER (0x1c00), GL_FEEDBACK (0x1c01) and GL_SELECT (0x1c02), and swaps the raster-position hooks to match. When the word at absolute 0x1018 is 1 it reports 0x502 through __glSetError and returns 0; an unknown mode reports 0x500. Entering GL_RENDER from another mode installs __glCrmRasterPos2/3/4 at ctx+0x3148, +0x314c and +0x3150 and adds -0.5 to the floats at ctx+0x6bc and ctx+0x6c4. Leaving GL_RENDER for feedback or select installs __glRasterPos2/3/4 in those slots and adds +0.5 to the same floats. It then calls __glim_RenderMode and returns its result.

- `__glCrmBeginLLoop` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963970
  **Inferred.** Sets up state for a line loop and makes no calls. It stores ctx+0x31a8 into ctx+0x3190, clears the byte at ctx+0x7498, and loads the GOT entry at gp-0x626c (named __glMatValidateVbuf0N in the symbol table) into ctx+0x2ef4. It writes the local routine at 0xd9637f0 into ctx+0x2eac and the local routine at 0xd963860 into the slot at ctx+0x2f24 that crmEndPolygonMode uses.

- `__glCrmBeginLStrip` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9639b0
  **Inferred.** Starts a line strip. It writes -3 to ctx+0x7db0, stores ctx+0x31a8 into ctx+0x3190, and clears the byte at ctx+0x7498. The GOT entry at gp-0x7d80 (__glFirstLStripVertex) goes into ctx+0x2eac, and the GOT entry at gp-0x626c goes into ctx+0x2ef4.

- `__glCrmBeginPolygon` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd963aa0
  **Inferred.** Calls __glBeginPolygon with the context first. It then saves the current pointers at ctx+0x2eac and ctx+0x2f24 into ctx+0x80a8 and ctx+0x80ac, and replaces them with the local routines at 0xd9639f0 and 0xd963a40.

- `__glCrmReadSPBuffColor` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd968980
  **Inferred.** Reads one pixel of a buffer into four floats, with the pixel at column a1 and row a2. The record in a0 has its data pointer at +0x10 and its row stride at +0x1c, and the record its first word points to supplies the origins at +0xe4c and +0xe50. Each pixel is eight bytes, and its two words each hold two 16-bit values, written to a3[0] to a3[3] as high, low, high, low. A null data pointer returns without writing.

- `__glCrmReadSPBuffRed` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd968a10
  **Inferred.** Reads one halfword at the same column and row as __glCrmReadSPBuffColor and stores it as a float in a3[0]. The index is the row times the stride at +0x1c, plus the column, minus the origins, scaled by two bytes. It zeroes a3[1] to a3[3] and returns without writing if the data pointer at +0x10 is null.

- `__glCrmFetchSPBuffColor` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd968a80
  **Inferred.** Reads a pixel from the secondary buffer that the first word of a0 points to, at offset +0x80fc. Its base is the word at +0x0 and its stride the word at +0x10 of that secondary record. Each of its two words packs two 9-bit values, from bits 31 to 23 and from bits 15 to 7, and the four values go to a3[0] to a3[3] as floats. It returns without writing when the secondary pointer is null.

- `__glCrmFetchSPBuffRed` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd968b30
  **Inferred.** Reads one halfword from the secondary buffer at +0x80fc, using the same addressing as __glCrmFetchSPBuffColor. It keeps bits 15 to 7 of that halfword, shifts them down and masks them to nine bits, stores the result in a3[0], and zeroes a3[1] to a3[3].

- `__glCrmFetchSPBuffRed_8bit` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd968bb0
  **Inferred.** Reads the same secondary-buffer halfword as __glCrmFetchSPBuffRed, but stores the whole 16-bit value in a3[0] with no shift or mask. The name says 8-bit, but the load is a halfword load (lhu). It zeroes a3[1] to a3[3] and returns without writing when the secondary pointer is null.

- `__glCrmSpanReadColor2` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd965c20
  **Inferred.** Forwards a span request through a context hook. It truncates the floats at a1+0xbc and a1+0xc0 to integers for the second and third arguments, and passes the original a2 as the fourth. The word at a1+0xa8 becomes the fifth argument (t0), and the call goes through the pointer at ctx+0x7878 with ctx+0x2df4 as the first argument.

- `__glCrmSpanReadStencil2` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd966470
  **Inferred.** Reads a row of stencil values through crmReadPixelsXfer and converts them to floats. It copies the floats at a1+0xbc and a1+0xc0 and the count word at a1+0xa8 into the frame, sets ctx+0x7dd8 to 0xc02 before the transfer call and clears it after. After the call it takes the buffer pointer from sp+0x58, and for each counted word it stores the top byte (bits 31 to 24) as a float through the output pointer a2.

- `__glCrmEnableStencilTest` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96d160
  **Inferred.** Applies the stencil enable to the context. The work happens only when the byte at +0x7d09 is non-zero and the word at +0x700 has 0x8000 set. In that case it ORs 1 into the word at +0x7d58 and calls `__glCrmForceNonTagClear` with the context and ctx+0x79fc when the word at +0x7a60 is non-zero. If the word at ctx+0x80a0 is non-zero, that word and the word at +0x7998 are cleared, the global word at 0x1018 becomes 2, and 4 is ORed into +0x2dec. Otherwise, if the flag byte at +0x7a5c is non-zero, bit 0 of the word at +0x7d58 is cleared. Both paths then call `__glCrmPassStencilMask` with the context, and `__glCrmPassStencilMode` runs last only while bit 0 of +0x7d58 is still set.

- `crmPickPolyStippleMode` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96dc20
  **Inferred.** Chooses the polygon stipple mode and stores it in the word at ctx+0x80a0. The inputs are the byte at +0x7a5c, the word at +0x7a60 and the word at +0x14 of the argument object. The word at ctx+0x80a0 ends at 0 unless the flag at +0x7a5c equals 1, the word at +0x7a60 is 0, the argument's word at +0x14 is 1 and the word at +0x700 lacks 0x8000. In that case the final value is 1 when bit 1 of the old value is clear and the old value with 4 ORed in when it is set. When the argument's word at +0x14 is 1, that word is cleared. Only when the stored value differs from the old one does the routine set the global word at 0x1018 to 2 and OR 4 into +0x2dec. It makes no calls.

- `__glCrmInitStencil` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96de00
  **Inferred.** Fills in the stencil object given as the second argument for the context in the first. It calls `__glInitBuffer` with the object and the context first. Afterwards the word at ctx+0xcb0 is copied to the object's +0xc, and the words at +0x10, +0x14 and +0x40 are zeroed. The words at +0x2c, +0x68, +0x6c and +0x70 are loaded from GOT entries at gp-0x7a54 and gp-0x61a4. Seven slots, at +0x34, +0x38, +0x58, +0x5c, +0x60, +0x64 and +0x74, each take a GOT value at gp-0x7fdc minus a constant: 0x22b0 for +0x34 and +0x38, 0x27e0 for +0x58, 0x27c0 for +0x5c, 0x27d0 for +0x60, 0x26a0 for +0x64, and 0x2690 for +0x74. The word at +0x18 becomes the sum of the words at ctx+0xcac and ctx+0xcb0, plus 7, shifted right three.

- `crmDoDepthStore` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96dee0
  **Inferred.** Writes one depth value into two per-context buffers, then calls a routine through the context. The first argument points at a word that holds the context pointer. The word at +0x8 of the record in the second argument is shifted left six and zero-extended from 32 bits. The resulting 64-bit integer is stored as a doubleword at +0x21c8 of the two objects whose pointers sit at context +0x7db8 and +0x7dbc. The function pointer at context +0x3144 is then called with the two original arguments.

- `crmDoDoubleStore` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96df60
  **Inferred.** Forwards one call to two sub-objects of the context. The first argument points at a word that holds the context pointer. The routine loads the object at context +0x77c0 and calls the function pointer at that object's +0xa4 with the second argument. It then loads the object at context +0x77c4 and calls the function pointer at its +0xa4 with the same second argument. It returns after the second call.

- `crmCalcDMTexture` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96eb10
  **Inferred.** Calls the function pointer at context +0x7efc with the context and the second argument, then replaces the float at +0x34 of the second argument with 1.0 minus its old value. The constant 1.0 is the doubleword at 0xda4b660, read through gp-0x572c, and the subtraction runs in double precision before the result is stored as a float.

- `__glCrmFreeTexObj` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96fc00
  **Inferred.** Frees a texture object for the context. A null object returns at once. When the word at +0x12c of the object is non-zero, `crmFreeTexObj` is called with the context and the object first. Every non-null object then goes to `__glFreeTexObj` with the same two arguments.

- `__glCrmFreeTextureState` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd96fc80
  **Inferred.** Releases the texture state of the context. It calls `crmFreeTexObj` with the context and the word at +0x6e2c, then again with the context and that word plus 0x130. The counter that the word at +0x7f30 points to is then decremented. While the counter stays above zero, the routine only clears the word at +0x7f28. Once the counter reaches zero or below, it calls the function pointer at the context's +0xc with the context and clears both +0x7f28 and +0x7f30.

- `__glcrmim_TexParameterfv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd976a40
  **Inferred.** Sets a float texture parameter. The float the third argument points to is truncated to an integer, and `crmTexParameter` at 0xd976830 is called with the first two arguments and that integer. When that call returns zero, `__glim_TexParameterfv` is called with the three original arguments. A non-zero return ends the routine there.

- `__glcrmim_TexParameterf` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd976ab0
  **Inferred.** Sets a single-precision texture parameter whose value arrives in f14. The value is truncated to an integer and passed with the first two arguments to `crmTexParameter` at 0xd976830. If that returns zero, the float is stored in a stack slot and `__glim_TexParameterfv` is called with a pointer to the slot. A non-zero return from `crmTexParameter` returns at once.

- `__glcrmim_TexParameteriv` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd976b20
  **Inferred.** Sets an integer texture parameter whose value is read through the third argument pointer. The word that pointer addresses is passed with the first two arguments to `crmTexParameter` at 0xd976830. A zero return falls back to `__glim_TexParameteriv` with the original arguments, and a non-zero return ends the routine.

- `__glcrmim_TexParameteri` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd976b90
  **Inferred.** Spills its three arguments, then calls a local helper at 0xd976830 (its address is the GOT base 0xd970000 plus 0x6830). When that helper returns zero, the routine calls `__glim_TexParameteriv` with the first two arguments and a pointer to the spilled third argument; a nonzero return skips the call and only restores the frame.

- `__glcrmim_BindTextureEXT` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd976bf0
  **Inferred.** The weak GOT slot at -0x577c resolves to zero in this image, so the in-line path runs. That path reads the state word at 0x1018: 1 reports 0x502 through `__glSetError` and returns, and 2 calls the function pointer at context +0x2e08 and then clears the word. A target of 0xde0 or 0xde1 goes to `__glBindTexture` with a1 set to 0 or 1; any other target goes to `__glim_BindTextureEXT`. The texture-object path calls `__glIsTextureConsistent`, `__glLookUpTexture` and `__glLookUpTextureParams`, and it ends by setting 0x1018 to 2 and bit 0 of the context word at +0x2dec.

- `__glcrmim_TexImage1D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9779f0
  **Inferred.** The immediate-mode entry reads the current context from absolute 0x1010 and gates on the state word at 0x1018 in the same way as the bind routine. It then passes its eight arguments (a0 to a7) to `__glCheckTexImage1DArgs` and returns without storing when that reports failure. A zero t0 takes the `__glLookUpTextureObject` path, which runs helpers at 0xd9710c0 and 0xd974f90 and ends by setting 0x1018 to 2. A nonzero t0 with target 0xde0 checks the entry at +0xe4 of the texture object, may call the helper at 0xd96f8a0 first, and then calls `__glim_TexImage1D`.

- `__glcrmlei_TexImage1D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd977c70
  **Inferred.** The display-list variant takes the context in a0 and does not read 0x1010. It applies the same 0x1018 gate (1 gives 0x502, 2 calls the context function at +0x2e08 and clears the word), then calls `__glCheckTexImage1DArgs`. It copies the caller's stack argument at 0xc4(sp) into the callee's stack slot at 4(sp) and calls `__gllei_TexImage1D`, using the same zero-t0 lookup path as the immediate variant.

- `__glcrmim_TexImage2D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd977ef0
  **Inferred.** The immediate-mode 2D entry reads the context from 0x1010 and applies the 0x1018 gate with the same three outcomes. It calls `__glCheckTexImage2DArgs` and returns when that fails. A zero t1 (a5) takes the `__glLookUpTextureObject` path with target 0xde1, and a nonzero t1 with target 0xde1 checks the entry at +0xe4 before calling `__glim_TexImage2D`; other targets call `__glim_TexImage2D` directly with the level and the stack arguments.

- `__glcrmlei_TexImage2D` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9781b0
  **Inferred.** The list-execute 2D entry takes its context in a0 and gates on 0x1018 with the 0x502, callback and clear outcomes. It calls `__glCheckTexImage2DArgs`, and a zero t2 sends it to `__glLookUpTextureObject` with 0xde1. Otherwise it calls `__gllei_TexImage2D` with the stack argument from 0xd4(sp) copied into the callee's slot at 4(sp).

- `__glcrmlei_TexSubImage1DEXT` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd978650
  **Inferred.** The list-execute sub-image entry takes the context in a0 and reads its state from the word at context +0xc80, not from 0x1018. A 2 there calls the context function at +0x2e08 and clears +0xc80, and a 1 reports 0x502. It then calls `__glCheckTexSubImage1DArgs` and, when the table entry is set, `__gllei_TexSubImage1DEXT`; otherwise it runs the same helper path as the immediate variant.

- `__glDTP_LEQUAL` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9923e0
  **Inferred.** Depth fragment with an unsigned test. `sltu` on `a3` and `t4` sends a value above the stored `a3` to the fail block; a value at most `a3` passes, is stored to the buffer at `t3`, and branches to `0xd992348`. The fail block increments `v1` and ORs `t2` into `t7`, and `t1` is decremented on both paths.

- `__glDTP_LEQUAL_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992400
  **Inferred.** Signed form of the less-or-equal fragment. `slt` on `a3` and `t4` rejects a `t4` above `a3` as signed values; accepted values store `t4` at `t3` and jump to `0xd992348`, and rejected ones bump `v1` and set the `t2` bit in `t7`.

- `__glDTP_LESS` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992420
  **Inferred.** Unsigned less-than fragment. `sltu` on `t4` and `a3` lets the value pass only when it is below `a3`, storing `t4` at `t3`. Every other value falls to the block that increments `v1` and ORs `t2` into `t7`, with `t1` decremented first.

- `__glDTP_LESS_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992440
  **Inferred.** Signed less-than fragment that compares `t4` with `a3` through `slt`. A pass writes `t4` to the buffer at `t3`; a fail increments `v1` and updates `t7`, and both paths leave through `0xd992348`.

- `__glDTP_EQUAL` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992460
  **Inferred.** Equality fragment. `bne` on `t4` and `a3` routes unequal values to the fail block (`v1` up, `t2` into `t7`); equal values store `t4` at `t3` and branch to `0xd992348`.

- `__glDTP_GREATER` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd99247c
  **Inferred.** Unsigned greater-than fragment. The `sltu` tests whether `a3` is below `t4`, so only values strictly above `a3` pass and write `t4` to `t3`. The rest take the `v1` and `t7` update before branching to `0xd992348`.

- `__glDTP_GREATER_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd99249c
  **Inferred.** Signed greater-than fragment using `slt` with `a3` as the left operand. Passing values store `t4` at `t3`; rejected values increment `v1` and set bit `t2` in `t7`.

- `__glDTP_NOTEQUAL` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9924bc
  **Inferred.** Inequality fragment. `beq` on `t4` and `a3` sends equal values to the fail block that increments `v1`; any other value stores `t4` at `t3` and goes on to `0xd992348`.

- `__glDTP_GEQUAL` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9924d8
  **Inferred.** Unsigned at-least fragment. A `t4` below `a3` by `sltu` takes the fail block; every other value is stored at `t3`, and `t1` is decremented on the way out.

- `__glDTP_GEQUAL_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9924f8
  **Inferred.** Signed at-least fragment, testing `t4` against `a3` with `slt`. Rejected pixels go through the `v1` and `t7` update, and accepted pixels store `t4` at `t3`.

- `__glDTP_LEQUAL_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992524
  **Inferred.** Masked less-or-equal fragment. It makes the same unsigned `sltu` test as the store-writing form, but its pass path ends in a `nop` in place of the `sw`, so `t3` is never written. Failing pixels still increment `v1` and set bit `t2` in `t7`.

- `__glDTP_LEQUAL_M_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992544
  **Inferred.** Signed masked less-or-equal fragment. `slt` on `a3` and `t4` picks the branch; a `t4` above `a3` goes to the fail block at `0xd992558`, and the pass path falls through with no store.

- `__glDTP_LESS_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992564
  **Inferred.** Masked unsigned less-than fragment. `sltu` on `t4` and `a3` passes values below `a3` with no store to `t3`; the others increment `v1` and set the `t2` bit in `t7`.

- `__glDTP_LESS_M_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992584
  **Inferred.** Signed masked less-than fragment built on `slt`. A `beqz` sends values not below `a3` to the fail block at `0xd992598`; the pass path falls through and never writes the buffer.

- `__glDTP_EQUAL_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9925a4
  **Inferred.** Masked equality fragment. `bne` on `t4` and `a3` sends unequal values to the fail block at `0xd9925b4`; equal values fall through and pass with no store.

- `__glDTP_GREATER_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9925c0
  **Inferred.** Masked unsigned greater-than fragment. Only values above `a3`, tested with `sltu`, pass, with no write to `t3`; the others update `v1` and `t7`.

- `__glDTP_GREATER_M_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9925e0
  **Inferred.** Signed masked greater-than fragment using `slt` with `a3` on the left. Values not above `a3` take the fail block at `0xd9925f4`; passing values fall through with no store.

- `__glDTP_NOTEQUAL_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd992600
  **Inferred.** Masked inequality fragment. `beq` on `t4` and `a3` sends equal values to the fail path at `0xd992610`; unequal values pass without writing the buffer.

- `__glDTP_GEQUAL_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd99261c
  **Inferred.** Masked unsigned at-least fragment. A `t4` below `a3` by `sltu` goes to the fail block at `0xd992630`; the rest fall through and pass with no `sw`.

- `__glDTP_GEQUAL_M_s` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd99263c
  **Inferred.** Signed masked at-least fragment. `slt` on `t4` and `a3` sends a `t4` below `a3` to the fail block at `0xd992650`, which bumps `v1` and updates `t7`; the other values fall through with no store.

- `__glDTP_ALWAYS_M` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd99265c
  **Inferred.** Unconditional fragment with no comparison. It decrements `t1` and branches to `0xd992348` with a `nop` in the delay slot, leaving `v1`, `t7` and the buffer alone.

- `__glDTS_NEVER` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd99273c
  **Inferred.** Leaf routine with no comparison. It adds 1 to `t2`, adds `t7` into `t4`, returns through `ra`, and ORs `t1` into `t0` in the return delay slot.

- `__glPixmapAllocAccum` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd993950
  **Inferred.** Forwards its call to a routine chosen at run time. It loads the function pointer stored at +0x7ab8 of the block in a0, moves a1 into a0, and loads two words from +0xe74 and +0xe78 of the block as the second and third arguments. It calls through $t9 and returns that routine's result after restoring ra and gp from its 16-byte frame.

- `__glLookUpTextureParams` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda1e410
  **Inferred.** Returns a word from the block in a0, with the choice made by the target in a1. The base is the word at +0x9b0. Target 0xde0 returns the base unchanged, 0xde1 returns it plus 0xe0, and 0x806f returns it plus 0x1c0. Any other target returns zero.

- `__glLookUpTextureTexobjs` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda1e460
  **Inferred.** Reads the same word at +0x9b0 of the block in a0 as its base, then adds an offset picked by the target in a1. The offsets are 0xd8 for target 0xde0, 0x1b8 for 0xde1 and 0x298 for 0x806f. Other targets return zero.

- `__glLookUpTexture` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda1e4b0
  **Inferred.** Loads the pointer at +0x6e24 of the block in a0 and returns one word from it. The target in a1 picks the offset: 0xde0 gives +0, 0xde1 gives +4, 0x806f gives +8, 0x8063 gives +0xc, 0x8064 gives +0x10 and 0x8070 gives +0x14. Any other target returns zero.

- `__glLookUpTextureObject` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda1e540
  **Inferred.** Goes through the pointer at +0x6e28 of the block in a0. Target 0xde0 returns the word at offset 0 of that pointer, 0xde1 the word at +4 and 0x806f the word at +8. Other targets return zero.

- `__glTexInitTextureObject` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda1e640
  **Inferred.** Sets fixed fields of a new texture object in a1. It stores a2 at +0xec, a3 at +8 and a zero byte at +0xc. Three words and one float come from a constant table reached through $t9 and the GOT, and are stored at +4, +0x108, +0x10c and +0xf0.

- `__glim_TextureColorMaskSGIS` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda20c50
  **Inferred.** Records four colour-channel flags for the current texture state. The context pointer is read from the word at 0x1010, and a0 to a3 are stored as single bytes at +0x9d8, +0x9d9, +0x9da and +0x9db. If the word at 0x1018 is 1, the routine instead passes 0x502 to an indirect call and returns. On success the word at 0x1018 becomes 2 and bit 0 is set in the word at +0x2dec of the context.

- `__glTextureSBModulateA` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda28290
  **Inferred.** Computes one alpha factor for the texture environment. With the state block pointer taken from +0x6e30 of a0, it forms the float at +0xc8 plus the float at +0xb8 times a2+0x10, and passes that as the first argument to the unnamed routine at 0xda27db0. The float at +0xdd8 of a0 is passed in f14. The routine's result is stored at a2+0x10 and then multiplies the word at a1+0xc.

- `__glTextureSBBlendA` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda28c40
  **Inferred.** The instruction stream matches `__glTextureSBModulateA` except for the GOT displacement in its gp setup (-0x7eb4 here, -0x7504 there).

- `__glTextureSBDecalRGB` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda28450
  **Inferred.** Writes three scaled colour components. For i from 0 to 2 it takes the float at a2+4i, combines it with the float at +0xbc+4i of the state block (the pointer loaded from +0x6e30 of a0) and the float at +0xac+4i of that block, and passes the sum and the float at +0xdd8 of a0 to the unnamed routine at 0xda27db0. The result replaces a2[i]. Then each a2[i] is multiplied by the float at +0x7820+4i of a0 and stored at a1[i].

- `__glTextureSBReplaceRGB` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda290a0
  **Inferred.** The instruction stream matches `__glTextureSBDecalRGB` except for the GOT displacement in its gp setup (lui 2 with +0x7cec here, lui 3 with -0x76c4 there).

- `__glTextureSBReplaceA` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda292f0
  **Inferred.** Computes the output alpha for the replace combine. The float at a2 +0x10 is the input; one call to `__GL_TEXENV_CLAMP` takes the bias word at the parameter block's +0xc8 plus the input times the scale word at +0xb8, with f13 zeroed and the upper bound word at context +0xdd8 in f14. The clamp result replaces the word at a2 +0x10. The output alpha at a1 +0xc is the context float at +0x7848 times that result.

- `__glTextureSBReplaceI` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda29370
  **Inferred.** Expands an intensity input into four channels. The float at a2 +0x14 is copied into a2 +0, +4, +8 and +0x10. Four clamps follow: the k-th uses the scale word at the parameter block +0xac+4k and the bias word at +0xbc+4k, and its result replaces a2 at offset 0, 4, 8 or 0x10 in that order. Each result is then multiplied by one context float (+0x7820, +0x7824, +0x7828, and +0x7848 for the fourth) and stored at a1 +0, +4, +8 and +0xc.

- `__glTextureCTModulateL` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda294c0
  **Inferred.** Modulate combine for luminance-style and colour textures, selected by the format word at context +0x1724. The alpha at a2 +0xc is copied into a2 +0, +4 and +8. LUMINANCE (0x1909), LUMINANCE_ALPHA (0x190a) and INTENSITY (0x8049) share one path: three clamps take the alpha as input, each result indexes a float table at context +0x16e0 by the stride word at +0x1728 times a rounded index built from the count at +0x16e8, and the lookups replace a2 +0, +4, +8. The RGB (0x1907) and RGBA (0x1908) path runs the same three alpha-driven clamps and multiplies a1 +0, +4, +8 by the results itself. Any other format multiplies a1 +0, +4, +8 by the copied alpha.

- `__glTextureCTModulateRGB` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda29eb0
  **Inferred.** Modulate combine that feeds each colour channel through its own clamp. For channel k the clamp input is a2 +4k, the scale word is at parameter block +0xac+4k and the bias at +0xbc+4k. The clamp result indexes the context table at +0x16e0 and the looked-up word replaces a2 +4k. RGB (0x1907) and RGBA (0x1908) multiply a1 +0, +4, +8 by the three replaced values and return. LUMINANCE, LUMINANCE_ALPHA and INTENSITY do the same lookups and then branch to the plain multiply. Any other format multiplies a1 +0, +4, +8 by a2 +0, +4, +8 without a clamp.

- `__glTextureCTModulateA` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda2a870
  **Inferred.** Modulate combine for the alpha output only, touching a1 +0xc. The alpha input is the word at a2 +0x10. ALPHA (0x1906) and INTENSITY (0x8049) run one clamp with the scale word at +0xb8 and bias at +0xc8 of the parameter block, read a table entry at offset 0, store it back to a2 +0x10 and multiply a1 +0xc by it. RGBA (0x1908) runs the same clamp, reads the table at offset 0xc, and does the same store and multiply. LUMINANCE_ALPHA (0x190a) multiplies a1 +0xc by the table word from offset 4 and returns without touching a2 +0x10 beyond the store. Any other format multiplies a1 +0xc by a2 +0x10.

- `__glTextureCTBlendA` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda2cee0
  **Inferred.** The code is identical, instruction for instruction and offset for offset, to `__glTextureCTModulateA` at 0xda2a870. It therefore has the same format split (ALPHA and INTENSITY, RGBA, LUMINANCE_ALPHA, and a default that multiplies the alpha output by a2 +0x10) and the same single clamp against the parameter block at +0xb8 and +0xc8.

- `__glTextureCTReplaceA` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda2eb20
  **Inferred.** Replace combine for the alpha output. ALPHA (0x1906), INTENSITY (0x8049), RGBA (0x1908) and LUMINANCE_ALPHA (0x190a) each clamp the input word at a2 +0x10 with the scale word at +0xb8 and bias at +0xc8, look up a table entry, and store it back to a2 +0x10. Every format then ends in one tail that stores to a1 +0xc the product of the word at a2 +0x10 and the float loaded from context +0x7848. Any other format skips the clamp and runs that tail directly.

- `__glim_SelectTextureCoordSetSGIS` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda328c0
  **Inferred.** Stores the coordinate-set selector in the current context at +0x6e34. The context pointer is the word at absolute address 0x1010. If the word at 0x1018 is 1 the routine calls `__glSetError` with 0x502. Otherwise a0 must be at least 0x83c7 and at most 0x83c7 plus the word at context +0xe1c; outside that range it calls `__glSetError` with 0x500 and stores nothing. On success it returns with the value stored.

- `__glim_InterleavedTextureCoordSetsSGIS` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda34b10
  **Inferred.** Stores a count in the current context at +0x14f0. The context pointer is the word at absolute address 0x1010. A word of 1 at 0x1018 makes it call `__glSetError` with 0x502. Otherwise a0 must be positive and no larger than the word at context +0xe1c; a value outside that range calls `__glSetError` with 0x501 and stores nothing.

- `__glCrmAllocSPBuff` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xda3b520
  **Inferred.** Records the two arguments on the object at a0 (a1 at +0x4 and +0x1c, a2 at +0x8) and then obtains a buffer. The first word of the object points to a block whose word at +0x80fc is checked. If that word is zero, `__viceInit` at 0xda3a870 runs on the block first. The routine then calls `__viceAllocSPbuf` at 0xda3a6b0 with the block pointer, the object pointer and the original a1, and returns that call's result.
