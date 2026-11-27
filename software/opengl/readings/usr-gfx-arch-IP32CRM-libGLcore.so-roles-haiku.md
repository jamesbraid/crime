# Role readings: `usr/gfx/arch/IP32CRM/libGLcore.so`

Routine roles read from the whole body of each routine in the big-endian o32 PIC build. Each role is graded
by the reader. Routines the reader skipped, for time or because a callee could not be named, are not listed.

- `__gllc_PixelMapuiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9869bc
  **Inferred.** Records the unsigned-int pixel map call. The count in a1 is shifted left by two and checked for sign with `bgez`; a negative value goes to `__gllc_InvalidValue` and the routine returns. Otherwise `__glDlistAllocOp2` is asked for count times four plus eight bytes. The record gets opcode 0xa7 as a halfword at +0xc, a0 and a1 as words at +0x10 and +0x14, and a copy of count times four bytes from the a2 pointer at +0x18 made with `memcpy`. `__glle_PixelMapuiv` is the execute entry passed to the append.

- `__gllc_PixelMapusv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986a80
  **Inferred.** Records the 16-bit pixel map call. The copy length is the count doubled, plus three, with the low two bits cleared, so it is padded to a word multiple; that padded value is the sign-checked size. The record uses opcode 0xa8, and the same allocate, copy and append order as the unsigned-int form follows, with `__glle_PixelMapusv` as the execute entry.

- `__gllc_ReadBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986b50
  **Inferred.** Records a read-buffer selection in a four-byte record. The mode in a0 is kept in the frame at 0x30 and stored at +0x10 after the allocation succeeds. Opcode 0xa9 goes at +0xc, and the append receives `__glle_ReadBuffer`. A null allocation returns without an append.

- `__gllc_CopyPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986bc4
  **Inferred.** Records a pixel copy as a 0x14-byte payload. Arguments a0 through a3 are spilled, and the fifth argument is read from the caller's stack area at frame offset 0x40. The five words go to +0x10, +0x14, +0x18, +0x1c and +0x20 in order. Opcode 0xaa is set, and `__glle_CopyPixels` is passed as the execute entry.

- `__gllc_DepthRange` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986c64
  **Inferred.** Records the two-double depth range call. The values arrive in f12 and f14, are spilled to frame offsets 0x30 and 0x38, and are copied to +0x10 and +0x18 with `ldc1` and `sdc1`. The 16-byte record carries opcode 0xac, and the byte at +0xe is set to 1. The append uses `__glle_DepthRange`.

- `__gllc_Frustum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986cec
  **Inferred.** Records a frustum as six doubles in a 0x30-byte payload. f12 and f14 come first; the other four are read as doubles from the caller's stack at frame offsets 0x40, 0x48, 0x50 and 0x58. Each lands eight bytes further on, from +0x10 up to +0x38. The record is opcode 0xad with the flag byte at +0xe set to 1, and `__glle_Frustum` is the execute entry.

- `__gllc_LoadMatrixf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986dfc
  **Inferred.** Copies a sixteen-float matrix into a 0x40-byte record. The matrix pointer in a0 is spilled at 0x30 and passed to `memcpy` with length 0x40, the destination being record +0x10. The opcode is 0xaf and the flag byte is left alone. A failed allocation skips the copy, and `__glle_LoadMatrixf` is the execute entry.

- `__gllc_LoadMatrixd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986e80
  **Inferred.** Copies a double-precision matrix of 0x80 bytes from the a0 pointer into record +0x10 using `memcpy`. The record is opcode 0xb0 with the flag byte at +0xe set to 1. The execute entry is `__glle_LoadMatrixd`, and the append is skipped when the allocation returns zero.

- `__gllc_MatrixMode` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986f0c
  **Inferred.** Stores one word, the mode in a0, as the payload of a four-byte record. The record is opcode 0xb1 and the execute entry is `__glle_MatrixMode`.

- `__gllc_MultMatrixf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd986f80
  **Inferred.** Multiplies the current matrix by a float matrix, recorded as 0x40 bytes copied with `memcpy` from the a0 pointer to record +0x10. Opcode 0xb2, and the execute entry `__glle_MultMatrixf`. The flag byte is not written.

- `__gllc_MultMatrixd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987004
  **Inferred.** The double-precision form of the matrix multiply: 0x80 bytes copied from the a0 pointer, opcode 0xb3, and the flag byte at +0xe set to 1. The append names `__glle_MultMatrixd`.

- `__gllc_Ortho` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987090
  **Inferred.** Packs an orthographic projection as six doubles: f12 and f14 from the registers, four more from the stack at frame offsets 0x40 through 0x58, written to record +0x10 through +0x38. The allocation is 0x30 bytes, the opcode is 0xb4, and the flag byte at +0xe is 1. `__glle_Ortho` is the execute entry.

- `__gllc_Rotated` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987208
  **Inferred.** Packs the double rotation as four doubles in a 0x20-byte record: the angle from f12 and x from f14 at +0x10 and +0x18, then y and z read from the caller's stack at frame offsets 0x40 and 0x48, landing at +0x20 and +0x28. Opcode 0xb7 and flag byte 1 are written, and the append passes `__glle_Rotated`.

- `__gllc_Rotatef` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9872a0
  **Inferred.** Packs the single-precision rotation into a 16-byte record. f12 and f14 are spilled with `swc1` at 0x30 and 0x34, and a2 and a3 are spilled at 0x38 and 0x3c. All four are reloaded with `lwc1` before the stores. The four floats occupy +0x10 to +0x1c. The opcode is 0xb8 with no flag byte, and `__glle_Rotatef` is passed to the append.

- `__gllc_Scaled` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987338
  **Inferred.** Three doubles: x and y from f12 and f14, z from the caller's stack at 0x40. They are stored at +0x10, +0x18 and +0x20 inside a 0x18-byte record. The record carries opcode 0xb9 and flag byte 1, and the execute entry is `__glle_Scaled`.

- `__gllc_Scalef` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9873c8
  **Inferred.** Three floats: f12, f14 and the a2 word, spilled to frame offsets 0x30, 0x34 and 0x38 and reloaded with `lwc1`. They land at +0x10, +0x14 and +0x18 of a 0xc-byte record. The opcode is 0xba, the flag byte is not written, and `__glle_Scalef` is the execute entry.

- `__gllc_Translated` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987454
  **Inferred.** Three doubles, with the first two from f12 and f14 and the third from the stack slot at frame offset 0x40. The record is 0x18 bytes, stores the values at +0x10, +0x18 and +0x20, and has opcode 0xbb with flag byte 1. `__glle_Translated` is the execute entry.

- `__gllc_Translatef` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9874e4
  **Inferred.** The single-precision translate. f12, f14 and the spilled a2 are stored as words at +0x10, +0x14 and +0x18 of a 0xc-byte record. Opcode 0xbc; the execute entry is `__glle_Translatef`.

- `__gllc_Viewport` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987570
  **Inferred.** Four integer arguments from a0 through a3 are spilled to frame offsets 0x30 through 0x3c and stored as words at record +0x10, +0x14, +0x18 and +0x1c. The record is 0x10 bytes with opcode 0xbd, and `__glle_Viewport` is the execute entry.

- `__gllc_BlendColorEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987608
  **Inferred.** Four single-precision colour components. f12 and f14 are spilled at frame offsets 0x30 and 0x34, a2 and a3 at 0x38 and 0x3c, and all four are reloaded with `lwc1` before the stores. The floats occupy +0x10 to +0x1c in a 0x10-byte record with opcode 0xbe. `__glle_BlendColorEXT` is the execute entry.

- `__gllc_BlendEquationEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9876a0
  **Inferred.** A single enumerant. The word from a0 is written to +0x10 of a four-byte record with opcode 0xbf, and the append names `__glle_BlendEquationEXT`.

- `__gllc_PolygonOffsetEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987714
  **Inferred.** Two floats: the factor from f12 at +0x10 and the units from f14 at +0x14, in an 8-byte record with opcode 0xc0. No flag byte is set. The execute entry is `__glle_PolygonOffsetEXT`.

- `__gllc_ConvolutionParameterfEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987794
  **Inferred.** The target in a0 and the parameter name in a1 go to +0x10 and +0x14 as words. The float in a2, spilled at 0x38, is moved to +0x18 through an `lwc1`/`swc1` pair. The 0xc-byte record has opcode 0xc5, and `__glle_ConvolutionParameterfEXT` is the execute entry.

- `__gllc_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987820
  **Inferred.** The vector size comes from `__glConvolutionParameterfvEXT_size`, called with the parameter name in a1. Its result is shifted left by two and sign-checked. A negative size calls `__gllc_InvalidEnum` with the context pointer and returns. Otherwise the record is count times four plus eight bytes, with target and name at +0x10 and +0x14, and the vector copied from a2 to +0x18 with `memcpy`. Opcode 0xc6 is set, and the append passes `__glle_ConvolutionParameterfvEXT`.

- `__gllc_ConvolutionParameteriEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9878f4
  **Inferred.** The integer form stores the target at +0x10, the name at +0x14 and the a2 word, spilled to 0x38, at +0x18. Allocation is 0xc bytes and the opcode is 0xc7. The execute entry is `__glle_ConvolutionParameteriEXT`.

- `__gllc_ConvolutionParameterivEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987980
  **Inferred.** Vector integer form. `__glConvolutionParameterivEXT_size` supplies the count for the name in a1, the count is multiplied by four and sign-checked, and a negative value goes to `__gllc_InvalidEnum`. The record is count times four plus eight bytes. It carries opcode 0xc8, target and name in +0x10 and +0x14, and a `memcpy` of the a2 vector into +0x18. The append names `__glle_ConvolutionParameterivEXT`.

- `__gllc_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987a54
  **Inferred.** Five words, a0 through a3 and the caller's stack word at 0x40, go to +0x10 through +0x20 of a 0x14-byte record. The opcode is 0xc9, and `__glle_CopyConvolutionFilter1DEXT` is passed to the append.

- `__gllc_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987af4
  **Inferred.** Six words: a0 through a3, then the stack words at 0x40 and 0x44. They are stored from +0x10 to +0x24 of an 0x18-byte record with opcode 0xca. The execute entry is `__glle_CopyConvolutionFilter2DEXT`.

- `__gllc_HistogramEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987b9c
  **Inferred.** Two paths split on a0 equal to 0x8025. For that target nothing is recorded: the context word at +0x17b8 gives a table pointer, the function pointer at +0x300 of that table is called with the original arguments, and a3 has already been masked to its low byte with `andi 0xff`. Any other target gets a 0x10-byte record. a0, a1 and a2 are stored at +0x10, +0x14 and +0x18, the low byte of a3 at +0x1c, and the opcode 0xcc is written. The append passes `__glle_HistogramEXT`.

- `__gllc_MinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987c60
  **Inferred.** Target and the second argument are stored as words at +0x10 and +0x14. The low byte of a2 is read back from frame offset 0x3b (the least significant byte of the big-endian word at 0x38) and stored at +0x18. The 0xc-byte record has opcode 0xcd, and `__glle_MinmaxEXT` is the execute entry.

- `__gllc_ResetHistogramEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987cec
  **Inferred.** The histogram reset takes one argument, the a0 word, which goes to +0x10 of a four-byte record. The opcode is 0xce, and the append names `__glle_ResetHistogramEXT`.

- `__gllc_ResetMinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987d60
  **Inferred.** Same four-byte allocation as the histogram reset, with the a0 word at +0x10 and opcode 0xcf. The execute entry that the append receives is `__glle_ResetMinmaxEXT`.

- `__gllc_BindTextureEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987dd4
  **Inferred.** Target from a0 and the name from a1 go to +0x10 and +0x14 of an eight-byte record with opcode 0xd4. The append hands the record to `__glle_BindTextureEXT`.

- `__gllc_CopyTexImage1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd987f54
  **Inferred.** Seven words: a0 through a3, then the stack words at 0x40, 0x44 and 0x48. They fill +0x10 through +0x28 of a 0x1c-byte record with opcode 0xd6. `__glle_CopyTexImage1DEXT` is the execute entry.

- `__gllc_CopyTexImage2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988004
  **Inferred.** Eight words, a0 through a3 and four stack words at frame offsets 0x40 through 0x4c, stored at +0x10 through +0x2c. The 0x20-byte record has opcode 0xd7, and the append passes `__glle_CopyTexImage2DEXT`.

- `__gllc_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9880bc
  **Inferred.** Six words from a0 through a3 and the stack words at 0x40 and 0x44, written to +0x10 through +0x24. The allocation is 0x18 bytes and the opcode 0xd8. The execute entry is `__glle_CopyTexSubImage1DEXT`.

- `__gllc_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988164
  **Inferred.** The 2D sub-image copy carries eight words, the same four register arguments and four stack words as the 2D full-image copy, stored at +0x10 through +0x2c of a 0x20-byte record. Opcode 0xd9, and the append names `__glle_CopyTexSubImage2DEXT`.

- `__gllc_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98821c
  **Inferred.** Nine words: a0 through a3 and five stack words at 0x40 through 0x50. They are stored at +0x10 through +0x30 of a 0x24-byte record with opcode 0xda. `__glle_CopyTexSubImage3DEXT` is passed to the append.

- `__gllc_PolygonOffset` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9882dc
  **Inferred.** Two single-precision values, f12 at +0x10 and f14 at +0x14, in an eight-byte record with opcode 0xdc. The execute entry is `__glle_PolygonOffset`.

- `__gllc_Indexub` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98835c
  **Inferred.** Keeps only the low byte of a0, read from frame offset 0x33, and stores it as a byte at +0x10 of a four-byte record with opcode 0xdd. Before the append it sets bit 0x10 in the context word at +0x1384. The execute entry it passes is `__glle_Indexubv`, not a `__glle_Indexub` symbol.

- `__gllc_Indexubv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9883dc
  **Inferred.** Records an Indexubv call while the list is being compiled. It asks for a 4-byte node, and on success stores the halfword 0xdd at node +0xc and the byte that the pointer argument addresses at node +0x10. It then ORs 0x10 into the word at context +0x1384 and appends the node with `__glle_Indexubv` as the callback. A null node from the allocator skips all of this.

- `__gllc_SampleMaskSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988460
  **Inferred.** Queues a sample-mask record of 8 bytes. The float in f12 is written to node +0x10, and the low byte of the second argument, read from frame offset 0x37 because the target is big-endian, goes to +0x14. The opcode is 0xde and the callback is `__glle_SampleMaskSGIS`.

- `__gllc_SamplePatternSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9884e0
  **Inferred.** Stores the pattern enumerant from a0 at +0x10 of a 4-byte node tagged 0xdf, then appends it with `__glle_SamplePatternSGIS`. Unlike the Indexubv record it leaves the context flag word at +0x1384 untouched.

- `__gllc_DetailTexFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9885bc
  **Inferred.** Shifts the count in a1 left by three, and when the result is negative calls `__gllc_InvalidValue` with the context and returns. Otherwise it allocates n*8+8 bytes, writes opcode 0xe1, stores the target at +0x10 and the count at +0x14, and memcpys n*8 bytes from the point array at a2 into +0x18. The node goes to `__glle_DetailTexFuncSGIS`.

- `__gllc_SharpenTexFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988680
  **Inferred.** Same guard and layout as the detail-texture record, with the opcode 0xe2 and the callback `__glle_SharpenTexFuncSGIS`. The count in a1 is scaled by eight, a negative value goes to `__gllc_InvalidValue`, and the n*8 bytes of points from a2 are copied in at +0x18 behind the target and count words.

- `__gllc_ColorTableParameterfvSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988744
  **Inferred.** Gets the float count for the parameter name in a1 from `__glColorTableParameterfvSGI_size`, scaled to bytes by a shift of two. A negative byte count reports through `__gllc_InvalidEnum`. Otherwise the node holds the target at +0x10, the parameter name at +0x14 and a memcpy of the float array into +0x18, tagged 0xe4 and appended with `__glle_ColorTableParameterfvSGI`.

- `__gllc_ColorTableParameterivSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988818
  **Inferred.** Integer counterpart of the float color-table parameter record. The count comes from `__glColorTableParameterivSGI_size` keyed on the name in a1, a negative result goes to `__gllc_InvalidEnum`, and the node carries opcode 0xe5 with the target, name and integer array at +0x10, +0x14 and +0x18.

- `__gllc_CopyColorTableSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9888ec
  **Inferred.** Packs a color-table copy request into a 20-byte node with no range check. Target, internal format, x and y go to +0x10, +0x14, +0x18 and +0x1c, and the fifth argument, which the caller passed on the stack, lands at +0x20. The node is opcode 0xe6 and is appended with `__glle_CopyColorTableSGI`.

- `__gllc_PixelTexGenSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98898c
  **Inferred.** Places the single mode word from a0 at +0x10 of a 4-byte node and tags it 0xe9. The node is appended with `__glle_PixelTexGenSGIX`, and a failed allocation leaves the list alone.

- `__gllc_SpriteParameterfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988a00
  **Inferred.** Builds an 8-byte node that holds the parameter name from a0 at +0x10 and the float from a1 at +0x14. Opcode 0xea, callback `__glle_SpriteParameterfSGIX`.

- `__gllc_SpriteParameterfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988a80
  **Inferred.** The element count is taken from `__glSpriteParameterfvSGIX_size` for the name in a0, and a negative count goes to `__gllc_InvalidEnum`. Otherwise it allocates count*4+4 bytes, writes opcode 0xeb with the name at +0x10, and memcpys the count*4-byte array from a1 to +0x14 before appending through `__glle_SpriteParameterfvSGIX`.

- `__gllc_SpriteParameteriSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988b44
  **Inferred.** An 8-byte node with the name at +0x10 and the integer from a1 at +0x14. It is tagged 0xec and handed to `__glle_SpriteParameteriSGIX`.

- `__gllc_SpriteParameterivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988bc4
  **Inferred.** Count from `__glSpriteParameterivSGIX_size` for the name in a0, with a negative count sent to `__gllc_InvalidEnum`. The node is count*4+4 bytes, opcode 0xed, name at +0x10, and the integer array copied into the node from +0x14 by memcpy. Callback `__glle_SpriteParameterivSGIX`.

- `__gllc_TexFilterFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988c88
  **Inferred.** Checks n<<2 from a2 for a negative value and reports `__gllc_InvalidValue` when it finds one. Otherwise it allocates n*4+12 bytes and writes opcode 0xee, the target at +0x10, the filter at +0x14 and the point count at +0x18. The n floats from a3 are copied to +0x1c, and the node is appended with `__glle_TexFilterFuncSGIS`.

- `__gllc_PointParameterfSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988d58
  **Inferred.** Eight-byte node with the name from a0 at +0x10 and the float from a1 at +0x14. Opcode 0xef, callback `__glle_PointParameterfSGIS`, and there is no range check.

- `__gllc_PointParameterfvSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988dd8
  **Inferred.** Sizes the record with `__glPointParameterfvSGIS_size` for the name in a0 and sends a negative count to `__gllc_InvalidEnum`. The node is count*4+4 bytes with opcode 0xf0; the name sits at +0x10 and the float array is memcpy'd to +0x14. Appended with `__glle_PointParameterfvSGIS`.

- `__gllc_FogFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988e9c
  **Inferred.** Scales the point count in a0 by eight. A negative result reports through `__gllc_InvalidValue`. Otherwise the node is n*8+4 bytes tagged 0xf1, with n stored at +0x10 and the n*8-byte point array from a1 copied to +0x14. The callback is `__glle_FogFuncSGIS`.

- `__gllc_ReadInstrumentsSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd988f54
  **Inferred.** Four-byte node that keeps the argument from a0 at +0x10. Opcode 0xf2, appended with `__glle_ReadInstrumentsSGIX`.

- `__gllc_StopInstrumentsSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989030
  **Inferred.** Same four-byte shape as the read-instruments record, with the argument at +0x10, opcode 0xf4, and the callback `__glle_StopInstrumentsSGIX`.

- `__gllc_ReferencePlaneSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9890a4
  **Inferred.** Keeps the equation pointer from a0 in a3 across the allocation, then asks for a 32-byte node. It stores the byte 1 at +0xe and copies the four doubles at a3 into +0x10, +0x18, +0x20 and +0x28 with ldc1/sdc1 pairs. The node is tagged 0xf5 and appended with `__glle_ReferencePlaneSGIX`.

- `__gllc_FrameZoomSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989140
  **Inferred.** Places the factor in a0 at +0x10 of a four-byte node, tags it 0xf6, and appends it with `__glle_FrameZoomSGIX`.

- `__gllc_DeformSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9891b4
  **Inferred.** Writes the mode word from a0 to +0x10 of a four-byte node tagged 0xf9. The routine does no validation and stores nothing in the context. The node goes to `__glle_DeformSGIX`.

- `__gllc_LoadIdentityDeformationMapSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989228
  **Inferred.** One argument, stored at +0x10 of a four-byte node that carries opcode 0xfa. It is appended with `__glle_LoadIdentityDeformationMapSGIX`.

- `__gllc_CopyColorSubTable` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98929c
  **Inferred.** A 20-byte node with target at +0x10, start index at +0x14, x at +0x18, y at +0x1c and the stack-passed width at +0x20. Opcode 0xfc, callback `__glle_CopyColorSubTable`.

- `__gllc_PixelTexGenParameteriSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98933c
  **Inferred.** Eight-byte node: the parameter name from a0 at +0x10 and the integer from a1 at +0x14. Tagged 0xfe and appended with `__glle_PixelTexGenParameteriSGIS`.

- `__gllc_PixelTexGenParameterivSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9893bc
  **Inferred.** The count comes from `__glPixelTexGenParameterivSGIS_size` keyed on a0, and a negative value is reported through `__gllc_InvalidEnum`. Otherwise the node is count*4+4 bytes with the name at +0x10 and a memcpy of the integer array from a1 into +0x14. Opcode 0xff.

- `__gllc_PixelTexGenParameterfSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989480
  **Inferred.** Eight-byte node with the name at +0x10 and the float from a1 at +0x14, opcode 0x100, callback `__glle_PixelTexGenParameterfSGIS`.

- `__gllc_PixelTexGenParameterfvSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989500
  **Inferred.** Count from `__glPixelTexGenParameterfvSGIS_size` for the name in a0, negative counts go to `__gllc_InvalidEnum`. The node is count*4+4 bytes tagged 0x101, with the name at +0x10 and the float array copied into +0x14 before the append through `__glle_PixelTexGenParameterfvSGIS`.

- `__gllc_AsyncMarkerSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9895c4
  **Inferred.** Four-byte node holding the marker from a0 at +0x10, opcode 0x102, appended with `__glle_AsyncMarkerSGIX`.

- `__gllc_FragmentColorMaterialSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989638
  **Inferred.** Eight-byte node with the face from a0 at +0x10 and the mode from a1 at +0x14, tagged 0x103 and handed to `__glle_FragmentColorMaterialSGIX`.

- `__gllc_FragmentLightfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9896b8
  **Inferred.** A 12-byte node holding the light from a0 at +0x10, the parameter name from a1 at +0x14 and the float from a2 at +0x18. Opcode 0x104, callback `__glle_FragmentLightfSGIX`.

- `__gllc_FragmentLightfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989744
  **Inferred.** The element count comes from `__glFragmentLightfvSGIX_size` keyed on the name in a1, and a negative count goes to `__gllc_InvalidEnum`. Otherwise it allocates count*4+8 bytes, writes opcode 0x105 with the light at +0x10 and the name at +0x14, and memcpys the float array from a2 into +0x18. The callback is `__glle_FragmentLightfvSGIX`.

- `__gllc_FragmentLightiSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989818
  **Inferred.** Twelve-byte node with light, name and integer at +0x10, +0x14 and +0x18. Opcode 0x106, appended with `__glle_FragmentLightiSGIX`.

- `__gllc_FragmentLightivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9898a4
  **Inferred.** Count taken from `__glFragmentLightivSGIX_size` for the name in a1; a negative value reports through `__gllc_InvalidEnum`. The node is count*4+8 bytes with opcode 0x107, light at +0x10, name at +0x14, and the integer array memcpy'd from a2 into +0x18.

- `__gllc_FragmentLightModelfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989978
  **Inferred.** Eight-byte node: name from a0 at +0x10, float from a1 at +0x14. It is tagged 0x108 and appended with `__glle_FragmentLightModelfSGIX`.

- `__gllc_FragmentLightModelfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9899f8
  **Inferred.** Looks up the count with `__glFragmentLightModelfvSGIX_size` for the name in a0 and rejects a negative count through `__gllc_InvalidEnum`. Otherwise the node is count*4+4 bytes tagged 0x109, holding the name at +0x10 and the float array memcpy'd to +0x14.

- `__gllc_FragmentLightModeliSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989abc
  **Inferred.** Eight-byte node with the name at +0x10 and the integer from a1 at +0x14, opcode 0x10a, callback `__glle_FragmentLightModeliSGIX`.

- `__gllc_FragmentLightModelivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989b3c
  **Inferred.** Count from `__glFragmentLightModelivSGIX_size` keyed on a0; negative counts go to `__gllc_InvalidEnum`. Node is count*4+4 bytes with the name at +0x10, opcode 0x10b, and the integer array copied from a1 into +0x14 before `__glle_FragmentLightModelivSGIX` is appended.

- `__gllc_FragmentMaterialfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989c00
  **Inferred.** A 12-byte node: face at +0x10, parameter name at +0x14 and the float from a2 at +0x18. It carries opcode 0x10c and is appended with `__glle_FragmentMaterialfSGIX`.

- `__gllc_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989c8c
  **Inferred.** Validates first: `__glErrorCheckMaterial` gets the face, the name and the first word of the array at a2. A nonzero result is passed to `__gllc_Error` with the context and nothing is recorded. Otherwise the count comes from `__glFragmentMaterialfvSGIX_size`, the node is count*4+8 bytes tagged 0x10d with face at +0x10 and name at +0x14, and the array is memcpy'd into +0x18 before the append through `__glle_FragmentMaterialfvSGIX`.

- `__gllc_FragmentMaterialiSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989d94
  **Inferred.** Queues a face, pname and value command without checking any of them. It asks `__glDlistAllocOp2` for 12 bytes on the context read from the word at 0x1010; if that returns a record, the halfword opcode 0x10e goes at +0xc, the three incoming words at +0x10, +0x14 and +0x18, and the record goes to `__glDlistAppendOp` with `__glle_FragmentMaterialiSGIX` (loaded from the GOT) as the third argument.

- `__gllc_FragmentMaterialivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989e20
  **Inferred.** Queues the vector form of the material call as a variable-length record. `__glErrorCheckMaterial` receives the face, the pname and the first parameter word converted to float; a nonzero code goes to `__gllc_Error` and the routine returns. Otherwise `__glFragmentMaterialivSGIX_size` gives the element count n for the pname, and a count that is negative after shifting left by two goes to `__gllc_InvalidEnum`. The record is 8 + 4n bytes: opcode 0x10f at +0xc, face and pname at +0x10 and +0x14, and the n words copied with `memcpy` to +0x18 before `__glDlistAppendOp` is called with `__glle_FragmentMaterialivSGIX`.

- `__gllc_LightEnviSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989f38
  **Inferred.** Queues a two-word light environment command. The routine asks `__glDlistAllocOp2` for 8 bytes; on success it writes opcode 0x110 at +0xc, pname at +0x10 and param at +0x14, and appends the record with `__glle_LightEnviSGIX` as the executor. Unlike the material forms it runs no argument check.

- `__gllc_TextureColorMaskSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd989fb8
  **Inferred.** Packs the four colour-mask arguments into a four-byte payload. It asks `__glDlistAllocOp2` for 4 bytes, writes opcode 0x111 at +0xc, copies the low byte of each argument to +0x10 through +0x13 in order, and appends the record with `__glle_TextureColorMaskSGIS`. The only branch is the null check on the allocation.

- `__glle_ListBase` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a050
  **Inferred.** Reads the word that a0 points to, then passes that value to the handler at absolute 0x1068 and returns a0 + 4. The load sits in the call's delay slot, so the handler receives the dereferenced value rather than the pointer itself.

- `__glle_Color3bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a090
  **Inferred.** The argument pointer in a0 goes to the handler whose address is read from absolute 0x15dc. On return v0 is that pointer plus 4, which steps over three signed bytes.

- `__glle_Color3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a0cc
  **Inferred.** Calls through the word at absolute 0x15e4 and passes a0 along untouched. The returned pointer is the argument advanced by 0x18 to step over three doubles.

- `__glle_Color3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a108
  **Inferred.** This routine indirect-calls the handler at absolute 0x15ec with the incoming pointer. It keeps ra, gp and a0 in a 0x20-byte frame, then returns a0 + 0xc, skipping three floats.

- `__glle_Color3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a144
  **Inferred.** Hands the pointer to whatever sits at absolute 0x15f4, then advances it by 0xc bytes for three 32-bit integers before returning it in v0.

- `__glle_Color3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a180
  **Inferred.** Three 16-bit integers are consumed here: the handler at absolute 0x15fc receives a0 as-is, and the returned pointer moves forward 8 bytes.

- `__glle_Color3ubv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a1bc
  **Inferred.** Reads the handler from absolute 0x1604 and calls it with a0 unmodified. Returns a0 + 4, the size of three unsigned bytes rounded up to a word.

- `__glle_Color3uiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a1f8
  **Inferred.** Only a0 feeds the call: the callee at absolute 0x160c gets it unchanged, and the caller's pointer advances 0xc bytes past three unsigned 32-bit integers.

- `__glle_Color3usv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a234
  **Inferred.** A 0x20-byte stack frame saves a0 around an indirect call through absolute 0x1614. The value in v0 is a0 + 8, which skips three unsigned 16-bit integers.

- `__glle_Color4bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a270
  **Inferred.** The wrapper for four signed bytes calls the routine stored at absolute 0x161c and returns the argument pointer moved on by 4.

- `__glle_Color4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a2ac
  **Inferred.** The argument pointer in a0 goes to the handler whose address is read from absolute 0x1624. On return v0 is that pointer plus 0x20, which steps over four doubles.

- `__glle_Color4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a2e8
  **Inferred.** Calls through the word at absolute 0x162c and passes a0 along untouched. The returned pointer is the argument advanced by 0x10 to step over four floats.

- `__glle_Color4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a324
  **Inferred.** This routine indirect-calls the handler at absolute 0x1634 with the incoming pointer. It keeps ra, gp and a0 in a 0x20-byte frame, then returns a0 + 0x10, skipping four 32-bit integers.

- `__glle_Color4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a360
  **Inferred.** Hands the pointer to whatever sits at absolute 0x163c, then advances it by 8 bytes for four 16-bit integers before returning it in v0.

- `__glle_Color4ubv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a39c
  **Inferred.** Four unsigned bytes are consumed here: the handler at absolute 0x1644 receives a0 as-is, and the returned pointer moves forward 4 bytes.

- `__glle_Color4uiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a3d8
  **Inferred.** Reads the handler from absolute 0x164c and calls it with a0 unmodified. Returns a0 + 0x10, the size of four unsigned 32-bit integers.

- `__glle_Color4usv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a414
  **Inferred.** Only a0 feeds the call: the callee at absolute 0x1654 gets it unchanged, and the caller's pointer advances 8 bytes past four unsigned 16-bit integers.

- `__glle_EdgeFlagv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a450
  **Inferred.** A 0x20-byte stack frame saves a0 around an indirect call through absolute 0x1078. The value in v0 is a0 + 4, which skips one boolean byte padded to a word.

- `__glle_End` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a48c
  **Inferred.** Takes no vector and passes its incoming a0 to the handler at absolute 0x107c, then returns that same a0. It keeps the 0x20-byte frame of the vector wrappers but does not move the pointer.

- `__glle_Indexdv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a4c4
  **Inferred.** The wrapper for one double calls the routine stored at absolute 0x165c and returns the argument pointer moved on by 8.

- `__glle_Indexfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a500
  **Inferred.** The argument pointer in a0 goes to the handler whose address is read from absolute 0x1664. On return v0 is that pointer plus 4, which steps over one float.

- `__glle_Indexiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a53c
  **Inferred.** Calls through the word at absolute 0x166c and passes a0 along untouched. The returned pointer is the argument advanced by 4 to step over one 32-bit integer.

- `__glle_Indexsv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a578
  **Inferred.** This routine indirect-calls the handler at absolute 0x1674 with the incoming pointer. It keeps ra, gp and a0 in a 0x20-byte frame, then returns a0 + 4, skipping one 16-bit integer.

- `__glle_Normal3bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a5b4
  **Inferred.** Hands the pointer to whatever sits at absolute 0x1684, then advances it by 4 bytes for three signed bytes before returning it in v0.

- `__glle_Normal3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a5f0
  **Inferred.** Three doubles are consumed here: the handler at absolute 0x168c receives a0 as-is, and the returned pointer moves forward 0x18 bytes.

- `__glle_Normal3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a62c
  **Inferred.** Reads the handler from absolute 0x1694 and calls it with a0 unmodified. Returns a0 + 0xc, the size of three floats.

- `__glle_Normal3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a668
  **Inferred.** Only a0 feeds the call: the callee at absolute 0x169c gets it unchanged, and the caller's pointer advances 0xc bytes past three 32-bit integers.

- `__glle_Normal3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a6a4
  **Inferred.** A 0x20-byte stack frame saves a0 around an indirect call through absolute 0x16a4. The value in v0 is a0 + 8, which skips three 16-bit integers padded to 8 bytes.

- `__glle_RasterPos2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a6e0
  **Inferred.** The wrapper for two doubles calls the routine stored at absolute 0x172c and returns the argument pointer moved on by 0x10.

- `__glle_RasterPos2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a71c
  **Inferred.** The argument pointer in a0 goes to the handler whose address is read from absolute 0x1734. On return v0 is that pointer plus 8, which steps over two floats.

- `__glle_RasterPos2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a758
  **Inferred.** Calls through the word at absolute 0x173c and passes a0 along untouched. The returned pointer is the argument advanced by 8 to step over two 32-bit integers.

- `__glle_RasterPos2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a794
  **Inferred.** This routine indirect-calls the handler at absolute 0x1744 with the incoming pointer. It keeps ra, gp and a0 in a 0x20-byte frame, then returns a0 + 4, skipping two 16-bit integers.

- `__glle_RasterPos3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a7d0
  **Inferred.** Hands the pointer to whatever sits at absolute 0x174c, then advances it by 0x18 bytes for three doubles before returning it in v0.

- `__glle_RasterPos3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a80c
  **Inferred.** Three floats are consumed here: the handler at absolute 0x1754 receives a0 as-is, and the returned pointer moves forward 0xc bytes.

- `__glle_RasterPos3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a848
  **Inferred.** Reads the handler from absolute 0x175c and calls it with a0 unmodified. Returns a0 + 0xc, the size of three 32-bit integers.

- `__glle_RasterPos3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a884
  **Inferred.** Only a0 feeds the call: the callee at absolute 0x1764 gets it unchanged, and the caller's pointer advances 8 bytes past three 16-bit integers.

- `__glle_RasterPos4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a8c0
  **Inferred.** Hands its argument pointer to the routine whose address is in the word at 0x176c, and returns that pointer moved on by 0x20. Thirty-two bytes holds four doubles.

- `__glle_RasterPos4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a8fc
  **Inferred.** The call goes through the pointer at 0x1774, which receives the record pointer in a0. The return is that pointer plus 0x10, the width of four single-precision floats.

- `__glle_RasterPos4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a938
  **Inferred.** Passes the pointer on unchanged to the call slot at 0x177c. The routine returns the pointer plus 0x10, which is four 32-bit integers.

- `__glle_RasterPos4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98a974
  **Inferred.** Forwards the pointer to the function at 0x1784 without changing it. The result steps the pointer ahead by eight bytes, enough for four 16-bit shorts.

- `__glle_TexCoord1dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98aab0
  **Inferred.** Dispatches the record pointer through the slot at 0x16ac. It returns the pointer plus 8, the size of one double.

- `__glle_TexCoord1fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98aaec
  **Inferred.** Reads the call target from 0x16b4 and invokes it with the record pointer. Its return advances the pointer by four, one single-precision float.

- `__glle_TexCoord1iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ab28
  **Inferred.** The pointer goes to the call slot at 0x16bc. On return the routine yields the pointer plus 4, one 32-bit integer.

- `__glle_TexCoord1sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ab64
  **Inferred.** Calls the pointer stored at 0x16c4 with the record pointer. The step is 4 even though the element is one 16-bit short, so the record is padded to a full word.

- `__glle_TexCoord2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98aba0
  **Inferred.** Passes the record pointer to the target at 0x16cc. The routine returns that pointer plus 0x10, which is two doubles.

- `__glle_TexCoord2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98abdc
  **Inferred.** Calls the function whose address sits at 0x16d4 with the pointer in a0, then returns the pointer plus 8 for two floats.

- `__glle_TexCoord2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ac18
  **Inferred.** Invokes the word at 0x16dc with the record pointer. The return value is the pointer plus 8, covering two 32-bit integers.

- `__glle_TexCoord2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ac54
  **Inferred.** Feeds the record pointer to the callee in 0x16e4. The routine returns it plus four, the combined size of two packed shorts.

- `__glle_TexCoord3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ac90
  **Inferred.** Forwards the pointer to the slot at 0x16ec. Its return value is the pointer plus 0x18, the width of three doubles.

- `__glle_TexCoord3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98accc
  **Inferred.** Loads the call target from 0x16f4 and invokes it with the pointer as its only argument. The routine returns the pointer plus 0xc, which holds three floats.

- `__glle_TexCoord3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ad08
  **Inferred.** The pointer goes to the function at 0x16fc. Returned value: the pointer plus 0xc, three 32-bit words.

- `__glle_TexCoord3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ad44
  **Inferred.** Calls through 0x1704 with the record pointer. The advance of eight bytes covers three shorts and one halfword of padding.

- `__glle_TexCoord4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ad80
  **Inferred.** The callee at 0x170c receives the argument pointer, and the routine returns it moved on by 0x20, the size of four doubles.

- `__glle_TexCoord4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98adbc
  **Inferred.** Target word 0x1714 is called with the record pointer. Returns the pointer plus 0x10 for four floats.

- `__glle_TexCoord4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98adf8
  **Inferred.** Dispatches the pointer via the slot at 0x171c. The return is the pointer plus 0x10, which is four 32-bit integers.

- `__glle_TexCoord4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ae34
  **Inferred.** Through the pointer at 0x1724 the record reaches its callee, and the result is the pointer advanced by eight, covering four shorts.

- `__glle_Vertex2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ae70
  **Inferred.** Reads the call target from 0x157c, passes the argument pointer to it, and returns that pointer plus 0x10, the size of two doubles.

- `__glle_Vertex2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98aeac
  **Inferred.** An indirect call via 0x1584 receives the pointer. The pointer comes back advanced by 8, two floats.

- `__glle_Vertex2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98aee8
  **Inferred.** The callee pointer at 0x158c gets the record pointer. The routine returns it plus 8, which covers two integers.

- `__glle_Vertex2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98af24
  **Inferred.** Sends the pointer to the function in 0x1594 and yields the pointer plus four, the size of two shorts.

- `__glle_Vertex3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98af60
  **Inferred.** Calls the target in 0x159c with the record pointer. It returns the pointer plus 0x18, three doubles.

- `__glle_Vertex3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98af9c
  **Inferred.** Passes the record pointer to the routine at 0x15a4. The return is the pointer plus 0xc, which is three floats.

- `__glle_Vertex3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98afd8
  **Inferred.** Hands the pointer to the callee read from 0x15ac and then returns the pointer plus 0xc for three 32-bit integers.

- `__glle_Vertex3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b014
  **Inferred.** The callee at 0x15b4 receives the argument pointer. The return is the pointer plus 8, enough for three shorts.

- `__glle_Vertex4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b050
  **Inferred.** Gives the pointer to the target stored at 0x15bc and returns it advanced by 0x20, four doubles.

- `__glle_Vertex4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b08c
  **Inferred.** The target at 0x15c4 receives the record pointer. The routine returns the pointer plus 0x10 for four floats.

- `__glle_Vertex4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b0c8
  **Inferred.** Calls the function at 0x15cc with the pointer and returns the pointer plus 0x10, four 32-bit integers.

- `__glle_Vertex4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b104
  **Inferred.** Invokes the slot at 0x15d4 with the record pointer. The result is the pointer plus 8, the width of four shorts.

- `__glle_ClipPlane` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b140
  **Inferred.** Saves the record pointer, loads the word at p+0x20 into a0, and calls the pointer at 0x1080 with that single value. The return is p+0x28, so each record is 40 bytes.

- `__glle_ColorMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b184
  **Inferred.** Passes the words at p+0 and p+4 of the record as the first and second arguments to the pointer at 0x1084. It returns p+8.

- `__glle_CullFace` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b1cc
  **Inferred.** Reads the first word of the record, at p+0, and calls the pointer at 0x1088 with it. The saved record pointer is returned as p+4.

- `__glle_Fogf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b20c
  **Inferred.** Calls the pointer at 0x108c with the pair of words at p+0 and p+4. The second word is loaded into an integer register, so a float parameter travels as its bit pattern. The routine returns p+8.

- `__glle_Fogfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b254
  **Inferred.** Calls the pointer at 0x1090 with the word at p+0 and the address p+4. It then loads the pointer at gp-0x60dc and calls it with the word at p+0. That second call returns a count n, and the routine returns p+4+4n.

- `__glle_Fogi` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b2bc
  **Inferred.** Forwards the record's word at p+0 and word at p+4 to the pointer at 0x1094, then returns p+8.

- `__glle_Fogiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b304
  **Inferred.** Calls 0x1098 with the word at p+0 and the address p+4, then calls the pointer at gp-0x60e0 with the word at p+0. The count it returns, multiplied by four, is added to p+4 to form the result.

- `__glle_FrontFace` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b36c
  **Inferred.** Calls the pointer at 0x109c with the word at p+0 and returns p+4.

- `__glle_Hint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b3ac
  **Inferred.** Two-word forwarder. The pointer at 0x10a0 receives the word at +0 in a0 and the word at +4 in a1. The record address is kept at sp+0x20 across the call and the routine returns it plus 8.

- `__glle_Lightfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b3f4
  **Inferred.** Reads the light index, the parameter name and a float vector from +0, +4 and +8. The pointer at 0x10a8 is called with the index in a0, the name in a1 and the vector address (record plus 8) in a2. A helper in the global-pointer slot gp-0x60d8 is then called with the name, and the return is record plus 8 plus four times that helper's result, so the record length follows the parameter name.

- `__glle_Lightiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b460
  **Inferred.** The integer-vector variant of the light path. The call through 0x10b0 gets the same three operands from the same offsets. The helper at gp-0x60d4 then takes the name and returns the vector size, and the pointer advances by eight plus four times that size.

- `__glle_LightModelfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b4cc
  **Inferred.** Passes the model parameter word at +0 as a0 and the vector address (record plus 4) as a1 to the pointer at 0x10b8. The helper at gp-0x60d0 then reads the word at +0 again, and the return is record plus 4 plus four times its result.

- `__glle_LightModeliv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b534
  **Inferred.** Starts with a call through 0x10c0 whose vector argument is record plus 4. The helper at gp-0x60cc follows, reading the first word a second time, and the record advances by four plus four times what that helper returns.

- `__glle_LineStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b59c
  **Inferred.** The factor word at +0 becomes a0 and the unsigned halfword at +4 becomes a1 for the pointer at 0x10c4. No range check is made, and the return is record plus 8.

- `__glle_LineWidth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b5e4
  **Inferred.** Puts the float at +0 into f12 and calls the pointer at 0x10c8. The record address sits on the stack at sp+0x20 across that call, and the return is the record plus 4.

- `__glle_Materialfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b628
  **Inferred.** Face at +0 goes to a0, property at +4 to a1, and the float vector address (record plus 8) to a2, all sent to the pointer at 0x10d0. The helper at gp-0x60c8 takes the property, and the record advances by eight plus four times the helper's answer.

- `__glle_Materialiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b694
  **Inferred.** Integer-vector material forwarder. The call through 0x10d8 receives the same face, property and vector address, then the helper at gp-0x60c4 receives the property. The return is record plus 8 plus four times the helper's value.

- `__glle_PointSize` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b700
  **Inferred.** The single float at +0 is handed to the pointer at 0x10dc in f12, and the routine returns the record advanced by 4.

- `__glle_PolygonMode` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b744
  **Inferred.** Face word to a0 and mode word to a1 for the call at 0x10e0. The record address is held on the stack across the call, and the return is the record advanced by 8.

- `__glle_Scissor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b78c
  **Inferred.** Four consecutive words at +0, +4, +8 and +0xc land in a0 through a3 for the pointer at 0x10e8. The record address survives the call in the callee-saved register s0, and the return is s0 plus 16. The four operands match the arguments of a scissor box, which is the inferred role.

- `__glle_ShadeModel` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b7dc
  **Inferred.** The one word at +0 is the only argument to the call through 0x10ec. The record address is saved across the call and the routine returns it plus 4.

- `__glle_TexParameterfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b81c
  **Inferred.** Target at +0 goes to a0 and the parameter name at +4 to a1, with the vector address at +8 in a2, all through 0x10f4. The helper at gp-0x5f30 then receives the parameter, and the return is record plus 8 plus 4 times its result.

- `__glle_TexParameteriv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b888
  **Inferred.** The pointer at 0x10fc takes the same three operands as the float texture-parameter path. The helper at gp-0x5f2c sizes the vector, and the pointer moves past it.

- `__glle_TexEnvfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b8f4
  **Inferred.** Environment floats. The call through 0x110c receives the first word, the name and the vector address. The helper at gp-0x5f18 then returns a count, and its result times four added to record plus 8 is the return value.

- `__glle_TexEnviv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98b960
  **Inferred.** The integer environment version: the pointer at 0x1114 is called first, then the helper at gp-0x5f14 is called with the name from +4, and the result is record plus 8 plus 4 times the helper value.

- `__glle_TexGenfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ba38
  **Inferred.** The first word at +0 (a coordinate selector in the GL prototype) becomes a0, the generation name at +4 becomes a1, and the vector at +8 is passed by address in a2. The call goes through 0x1124, and the helper at gp-0x5f48 reports the vector length.

- `__glle_TexGeniv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98baa4
  **Inferred.** Integer texgen. After the call through 0x112c, the helper at gp-0x5f44 measures the vector, and the pointer moves forward by 8 plus four times that measurement.

- `__glle_InitNames` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bb10
  **Inferred.** No record fields are read. The routine calls the pointer at 0x113c with no arguments and returns the record pointer it was given, unchanged.

- `__glle_LoadName` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bb48
  **Inferred.** Hands the word at +0 to the pointer at 0x1140 as a0, and returns the record advanced by 4.

- `__glle_PassThrough` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bb88
  **Inferred.** Loads the float at +0 into f12, calls the pointer at 0x1144, and returns the record plus 4.

- `__glle_PopName` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bbcc
  **Inferred.** The pointer at 0x1148 is called without arguments. The caller gets back the record pointer that came in.

- `__glle_PushName` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bc04
  **Inferred.** The name word at +0 is the a0 argument for 0x114c. The routine returns the record plus 4 after the call.

- `__glle_DrawBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bc44
  **Inferred.** A buffer selector read from +0 becomes a0 for the call through 0x1150, and the return is the record advanced by 4.

- `__glle_Clear` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bc84
  **Inferred.** Clear mask at +0 is passed in a0 to the pointer at 0x1154, and the record plus 4 is the result.

- `__glle_ClearAccum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bcc4
  **Inferred.** Red at +0 goes to f12 and green at +4 to f14. Blue at +8 and alpha at +0xc go to a2 and a3 as raw bit patterns. The record address stays in a0 for the call through 0x1158, and the return is record plus 16.

- `__glle_ClearIndex` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bd10
  **Inferred.** The index value, a float at +0, rides in f12 into the call at 0x115c, and the record is advanced by four on return.

- `__glle_ClearColor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bd54
  **Inferred.** Reads the same four-float record as the accumulation clear, with the call going through 0x1160 and the record address left in a0. The return is record plus 16.

- `__glle_ClearStencil` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bda0
  **Inferred.** Stencil value at +0 goes to a0 for the call through 0x1164. The result is record plus 4.

- `__glle_ClearDepth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bde0
  **Inferred.** Loads the eight-byte double at +0 into f12 with ldc1, calls the pointer at 0x1168, and returns record plus 8.

- `__glle_StencilMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98be24
  **Inferred.** A write mask at +0 is a0 on the call to 0x116c, and the record advances by four.

- `__glle_ColorMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98be64
  **Inferred.** Four bytes at +0 through +3 are read unsigned and passed as a0 through a3 to 0x1170. The record address goes in the callee-saved register s0, and the return is s0 plus 4.

- `__glle_DepthMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98beb4
  **Inferred.** The unsigned byte at +0 is the lone argument for 0x1174, and the return is record plus 4.

- `__glle_IndexMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bef4
  **Inferred.** The index mask word at +0 is passed in a0 to the pointer at 0x1178, and the routine returns record plus 4.

- `__glle_Accum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bf34
  **Inferred.** Operation word at +0 goes to a0 and the value bit pattern at +4 to a1, both for the call through 0x117c. The return is record plus 8.

- `__glle_PopAttrib` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bf7c
  **Inferred.** No operands. Calls 0x1190 and returns the record pointer unchanged.

- `__glle_PushAttrib` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bfb4
  **Inferred.** The attribute mask word at +0 goes to a0, 0x1194 is called, and the return is record plus 4.

- `__glle_MapGrid1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98bff4
  **Inferred.** The integer at +0x10 goes to a0. The double at +0 is split across a2 and a3, its first word in a2, and the double at +8 is stored at sp+0x10 as the first stack argument. The call goes through 0x11a8 and the routine returns record plus 0x18.

- `__glle_MapGrid1f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c050
  **Inferred.** The integer at +0 sits in a0, and the floats at +4 and +8 are passed as raw bit patterns in a1 and a2. The pointer at 0x11ac is called, and the return is the record plus 0xc.

- `__glle_MapGrid2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c09c
  **Inferred.** Unpacks a record and calls through the word at absolute 0x11b0. The word at record +0x20 becomes a0, the
  words at +0 and +4 become a2 and a3, and a1 keeps the record pointer. The doubles at +8, +0x10 and +0x18 and the word
  at +0x24 are copied to outgoing slots at sp+0x10, sp+0x20, sp+0x28 and sp+0x18. It returns a1 plus 0x28.

- `__glle_MapGrid2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c110
  **Inferred.** Saves the record pointer in s0 and loads four words into a0 through a3 from offsets 0, 4, 8 and 0xc.
  The floats at +0x10 and +0x14 go to outgoing slots sp+0x10 and sp+0x14. The call uses the word at 0x11b4, and the
  return value is s0 plus 0x18.

- `__glle_EvalCoord1dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c174
  **Inferred.** Hands the record pointer in a0 to the routine in the word at 0x11bc without reading any field. The
  pointer is saved in the frame and reloaded after the call, and the function returns it plus 8.

- `__glle_EvalCoord1fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c1b0
  **Inferred.** Forwards the record pointer in a0, unread, to the routine at 0x11c4. The frame holds the pointer across
  the call, and the return value is that pointer plus 4.

- `__glle_EvalCoord2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c1ec
  **Inferred.** Calls the routine in the word at 0x11cc with the record pointer as its single argument, then returns
  the pointer advanced by 0x10.

- `__glle_EvalCoord2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c228
  **Inferred.** Passes the record pointer, unchanged, through a0 to the routine at 0x11d4. The return is the pointer
  plus 8.

- `__glle_EvalMesh1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c264
  **Inferred.** Copies the record pointer to a3 and loads the words at +0, +4 and +8 into a0, a1 and a2. The call goes
  through the word at 0x11d8, and the function returns the saved pointer plus 0xc.

- `__glle_EvalPoint1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c2b0
  **Inferred.** The first word of the record is loaded into a0 in the delay slot of the call through 0x11dc. The
  original pointer is kept at sp+0x20 and returned plus 4 after the call.

- `__glle_EvalMesh2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c2f0
  **Inferred.** Saves s0 and loads four words, at offsets 0, 4, 8 and 0xc, into a0 through a3. The word at +0x10 goes
  to the outgoing slot sp+0x10. The routine at 0x11e0 is called, and the function returns s0 plus 0x14.

- `__glle_EvalPoint2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c348
  **Inferred.** Keeps the record pointer in a2 and passes the word at +0 as a0 and the word at +4 as a1 to the routine
  whose slot is 0x11e4. It returns a2 plus 8.

- `__glle_AlphaFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c390
  **Inferred.** Reads two words from the record, at +0 and +4, and passes them as a0 and a1 to the routine at 0x11e8.
  The pointer, held in a2 across the call, comes back advanced by 8.

- `__glle_BlendFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c3d8
  **Inferred.** The routine in slot 0x11ec receives the word at +0 in a0 and the word at +4 in a1. The record pointer is
  saved in a2 during the call and returned plus 8.

- `__glle_LogicOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c420
  **Inferred.** Loads only the first word into a0, spills the pointer to sp+0x20, and calls slot 0x11f0. It returns the
  spilled pointer plus 4.

- `__glle_StencilFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c460
  **Inferred.** Three words from the record, at offsets 0, 4 and 8, become a0, a1 and a2 for the call through 0x11f4.
  The pointer is kept in a3 and the return value is a3 plus 0xc.

- `__glle_StencilOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c4ac
  **Inferred.** Loads the words at +0, +4 and +8 into a0 through a2, then calls the routine at 0x11f8. The record
  pointer is kept in a3 and returned plus 0xc.

- `__glle_DepthFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c4f8
  **Inferred.** The one-word record is dereferenced in the call's delay slot, so a0 holds the word at +0 when slot
  0x11fc is entered. The pointer comes back from the frame plus 4.

- `__glle_PixelZoom` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c538
  **Inferred.** Loads two floats from the record, the one at +0 into f12 and the one at +4 into f14. a0 keeps the record
  pointer, which the routine at 0x1200 receives unchanged. The return is that pointer plus 8.

- `__glle_PixelTransferf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c57c
  **Inferred.** The record's first word is placed in a0 and its second in a1 before the call through 0x1204. The
  pointer stays in a2, and the function returns it plus 8.

- `__glle_PixelTransferi` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c5c4
  **Inferred.** Forwards the words at +0 and +4 as a0 and a1 to the routine at 0x1208. The saved record pointer is
  reloaded and returned with eight added.

- `__glle_PixelMapfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c60c
  **Inferred.** Reads the count from the word at +4 into a1 and the first word into a0. The data pointer, record+8, is
  passed as a2. After the call the return value is the record pointer plus 8 plus four times the count, which covers
  the 8-byte header and four-byte entries.

- `__glle_PixelMapuiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c664
  **Inferred.** Same argument set as the float map: count in a1 from +4, index in a0 from +0, and data at record+8 in
  a2, through the routine at 0x1218. The return is the record pointer plus 8 plus 4 bytes times the count.

- `__glle_PixelMapusv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c6bc
  **Inferred.** The count from +4 goes to a1 and the first word to a0, with the data pointer at record+8 as a2, and the
  call uses the routine at 0x121c. Afterwards the code computes (2n+3) AND -4 for the halfword table, so the table is
  padded to a four-byte multiple, and returns the record pointer plus that value plus 8.

- `__glle_ReadBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c720
  **Inferred.** Places the first word of the record in a0, saves the pointer at sp+0x20, and calls the routine at
  0x1220. It returns the saved pointer plus 4.

- `__glle_CopyPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c760
  **Inferred.** Saves s0 and loads the words at +0, +4, +8 and +0xc into a0 through a3. The word at +0x10 is copied to
  the outgoing slot sp+0x10. The routine at 0x1224 is called, and the return value is s0 plus 0x14.

- `__glle_DepthRange` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c7b8
  **Inferred.** Passes the doubles at +0 and +8 in f12 and f14 and leaves a0 as the record pointer for the call through
  0x12a8. The return value is that pointer plus 0x10.

- `__glle_Frustum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c7fc
  **Inferred.** The doubles at +0 and +8 go to f12 and f14. The four doubles at +0x10, +0x18, +0x20 and +0x28 are
  copied to outgoing slots sp+0x10 through sp+0x28. Slot 0x12ac is called with the record pointer in a0, and the
  function returns that pointer plus 0x30.

- `__glle_LoadIdentity` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c860
  **Inferred.** Reads no record field. The record pointer goes unchanged to the routine at 0x12b0, and the same
  pointer is returned, so the call advances the record by zero.

- `__glle_LoadMatrixf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c898
  **Inferred.** Passes the record pointer to the routine in the word at 0x12b4 and returns it plus 0x40, the size of
  sixteen single-precision values.

- `__glle_LoadMatrixd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c8d4
  **Inferred.** Sends the record pointer through the call at 0x12b8 and returns it plus 0x80, the size of sixteen
  doubles.

- `__glle_MatrixMode` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c910
  **Inferred.** Reads the mode word at +0 into a0 in the delay slot of the call through 0x12bc. The saved pointer is
  returned plus 4.

- `__glle_MultMatrixf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c950
  **Inferred.** Hands the record pointer to the routine at 0x12c0 unchanged and returns it plus 0x40, sixteen floats.

- `__glle_MultMatrixd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c98c
  **Inferred.** The routine at 0x12c4 is called with the record pointer in a0, and the return is that pointer plus
  0x80, sixteen doubles.

- `__glle_Ortho` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98c9c8
  **Inferred.** Two doubles, at +0 and +8, become f12 and f14. Four further doubles, from +0x10 to +0x28, are copied to
  sp+0x10 through sp+0x28. The call through 0x12c8 gets the record pointer in a0, and the return is that pointer plus
  0x30.

- `__glle_PopMatrix` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ca2c
  **Inferred.** Calls slot 0x12cc with the record pointer in a0 and no field loaded. The record takes no bytes, so the
  function returns the pointer it was given.

- `__glle_PushMatrix` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ca64
  **Inferred.** Calls the routine at 0x12d0 with the record pointer in a0 and returns that same pointer.

- `__glle_Rotated` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ca9c
  **Inferred.** Four doubles travel from the record. The doubles at +0 and +8 go to f12 and f14, and the doubles at
  +0x10 and +0x18 go to outgoing slots sp+0x10 and sp+0x18. The call uses the word at 0x12d4, and the return value is
  the record pointer plus 0x20.

- `__glle_Rotatef` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98caf0
  **Inferred.** Floats at +0 and +4 go to f12 and f14, and the words at +8 and +0xc go to a2 and a3. The record pointer
  is passed in a0, and the routine at 0x12d8 is called. The return is that pointer plus 0x10.

- `__glle_Scaled` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cb3c
  **Inferred.** Doubles at +0 and +8 are passed in f12 and f14, and the double at +0x10 is copied to sp+0x10. The
  routine in slot 0x12dc receives the record pointer as a0, and the function returns that pointer plus 0x18.

- `__glle_Scalef` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cb88
  **Inferred.** The floats at +0 and +4 go to f12 and f14 and the word at +8 goes to a2. The pointer is saved in the
  frame, passed as a0 to slot 0x12e0, and returned plus 0xc.

- `__glle_Translated` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cbd0
  **Inferred.** The doubles at +0 and +8 are loaded into f12 and f14, and the double at +0x10 is placed in sp+0x10.
  The call goes through 0x12e4, and the record pointer, plus 0x18, is returned.

- `__glle_Translatef` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cc1c
  **Inferred.** Replays a 12-byte translate record. The float at +0 goes to f12, the float at +4 to f14, and the integer word at +8 to a2, since the third float travels in an integer register under o32. It calls the pointer at absolute 0x12e8 and returns the record address plus 0xc.

- `__glle_Viewport` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cc64
  **Inferred.** Forwards the four words of a 16-byte record as integer arguments: +0 in a0, +4 in a1, +8 in a2 and +0xc in a3. The record pointer stays in s0 across the call through the slot at 0x12ec. The routine returns s0 plus 0x10.

- `__glle_BlendColorEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ccb4
  **Inferred.** Replays a 16-byte colour record. Words +0 and +4 are passed in f12 and f14 as floats, while words +8 and +0xc go in a2 and a3 as integers. It calls the pointer at 0x12f0 and reloads the record pointer from sp+0x20 to return it plus 0x10.

- `__glle_BlendEquationEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cd00
  **Inferred.** Reads one word at +0 into a0 and calls the pointer at 0x12f4 with it. The record pointer is parked at sp+0x20 across the call, and the routine returns that pointer advanced by 4.

- `__glle_PolygonOffsetEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cd40
  **Inferred.** Passes two floats from an 8-byte record: +0 in f12 and +4 in f14. The call goes to the pointer at 0x12f8, and the routine returns the record address plus 8.

- `__glle_ConvolutionParameterfEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cd84
  **Inferred.** Copies a 12-byte record into three integer arguments: the target word from +0 into a0, the parameter name from +4 into a1, and the value word from +8 into a2 as raw bits. It calls the pointer at 0x130c and returns the record address plus 0xc.

- `__glle_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cdd0
  **Inferred.** Handles a counted float array. The first call goes to the pointer at 0x1310 with the target word in a0, the name word from +4 in a1, and the array at record+8 in a2. A second call through the GOT slot at gp-0x66f0 takes the name word and returns a count, and the routine returns record + 4*count + 8.

- `__glle_ConvolutionParameteriEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ce3c
  **Inferred.** Integer scalar form of the convolution-parameter record. Words +0, +4 and +8 go in a0, a1 and a2, the record pointer is kept at sp+0x20, and the call goes to 0x1314. The return value is the record address plus 0xc.

- `__glle_ConvolutionParameterivEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ce88
  **Inferred.** Integer array form. The call to the pointer at 0x1318 gets the target word, the name word and the array at record+8. The count comes from the GOT slot at gp-0x66ec applied to the name word, and the routine returns record + 4*count + 8.

- `__glle_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cef4
  **Inferred.** Reads a five-word, 20-byte record. Words +0, +4, +8 and +0xc go to a0 through a3, and word +0x10 is stored at sp+0x10 as the fifth argument. It calls the pointer at 0x131c and returns s0 plus 0x14.

- `__glle_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cf4c
  **Inferred.** Passes a six-word, 24-byte record. Words +0 through +0xc fill a0 through a3, and words +0x10 and +0x14 are copied to sp+0x10 and sp+0x14. The call goes to 0x1320, and the routine returns s0 plus 0x18.

- `__glle_HistogramEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cfac
  **Inferred.** Three words and one byte make a 16-byte record. Words +0, +4 and +8 go to a0, a1 and a2, and the byte at +0xc is zero-extended into a3. It calls the pointer at 0x1350 and returns the record address plus 0x10.

- `__glle_MinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98cffc
  **Inferred.** The 12-byte minmax record gives two words, +0 into a0 and +4 into a1, plus a byte at +8 into a2. The record pointer is saved at sp+0x20 across the call to 0x1354, and the routine returns it plus 0xc.

- `__glle_ResetHistogramEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d048
  **Inferred.** Consumes one word from the record and passes it in a0 to the pointer at 0x1358. The saved record pointer comes back from sp+0x20, advanced by 4 for the return.

- `__glle_ResetMinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d088
  **Inferred.** Takes the single word at +0 as its only argument for the call through 0x135c. The routine then returns the record address it saved, with 4 added.

- `__glle_BindTextureEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d0c8
  **Inferred.** Eight-byte record holding a target word at +0 and a texture name at +4, which go to a0 and a1. The call uses the pointer at 0x1390. The record pointer is kept in a2 and the routine returns a2 plus 8.

- `__glle_PrioritizeTexturesEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d110
  **Inferred.** Counted record whose first word is n. The call through 0x13a0 gets a0 = n, a1 = record+4 (the n names), and a2 = record+4+4n (the n float priorities). The routine returns record + 8n + 4, with the sizes formed by shifts of n by 2 and 3.

- `__glle_CopyTexImage1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d174
  **Inferred.** Seven-word, 28-byte record. Words +0 to +0xc fill a0 through a3, and words +0x10, +0x14 and +0x18 are copied to sp+0x10 through sp+0x18 as stack arguments. The call goes to 0x13a4, and the routine returns s0 plus 0x1c.

- `__glle_CopyTexImage2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d1dc
  **Inferred.** Eight words, 32 bytes. The first four go to a0 through a3 and the last four are stored at sp+0x10 through sp+0x1c. It calls the pointer at 0x13a8 and returns s0 plus 0x20.

- `__glle_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d250
  **Inferred.** Six-word record: a0 to a3 from +0 through +0xc, then two stack arguments copied from +0x10 and +0x14. It calls 0x13ac and returns the record address plus 0x18.

- `__glle_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d2b0
  **Inferred.** The record runs 32 bytes across eight words, four in a0 through a3 and four on the stack at sp+0x10 through sp+0x1c. The pointer at 0x13b0 receives them, and the routine returns record+0x20.

- `__glle_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d324
  **Inferred.** Nine-word, 36-byte record. The first four words go to registers, words +0x10 through +0x1c are copied to the stack, and the word at +0x20 is loaded into t0 and stored at sp+0x20. The call goes to 0x13b4, and the return is s0 plus 0x24.

- `__glle_PolygonOffset` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d39c
  **Inferred.** Passes a float from +0 in f12 and a float from +4 in f14 to the call. The call goes through the pointer at 0x13e0, and the routine returns the record address plus 8.

- `__glle_Indexubv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d3e0
  **Inferred.** Reads no field of the record. It hands the record address itself in a0 to the pointer at 0x167c, so the callee receives a pointer rather than a byte. The routine returns that address plus 4.

- `__glle_SampleMaskSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d41c
  **Inferred.** Eight-byte record with a float at +0, loaded into f12, and a byte at +4, zero-extended into a1. The call goes to 0x13ec, and the routine returns the record address plus 8.

- `__glle_SamplePatternSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d460
  **Inferred.** Loads the word at +0 into a0 and calls 0x13f0. The record is one word, and the routine returns the saved record address with 4 added.

- `__glle_TagSampleBufferSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d4a0
  **Inferred.** Does not load any field. It forwards the record address it was given, unchanged, to the pointer at 0x13f4 and returns that same address from sp+0x20, so the record occupies no bytes in the stream.

- `__glle_DetailTexFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d4d8
  **Inferred.** Variable-length record. Word +0 goes to a0, the count word n at +4 to a1, and record+8 to a2 as the point list. The call goes to 0x13f8. After it returns, n is reloaded from +4 and the routine returns record + 8n + 8, so each point entry is eight bytes.

- `__glle_SharpenTexFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d530
  **Inferred.** Uses the same record layout as the detail-function routine, dispatched through the pointer at 0x1400. The count is reread from +4 after the call, and the return is record + 8*count + 8.

- `__glle_ColorTableParameterfvSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d588
  **Inferred.** Counted float record with the name word at +4. The call to 0x140c receives the target word, the name word and record+8. The GOT slot at gp-0x60c0 maps the name word to a count, and the routine returns record + 4*count + 8.

- `__glle_ColorTableParameterivSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d5f4
  **Inferred.** Integer form of the color-table parameter record. The call through 0x1410 takes the same three arguments, and the count is read through the GOT slot at gp-0x60bc.

- `__glle_CopyColorTableSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d660
  **Inferred.** Five-word, 20-byte record. Words +0 through +0xc go to a0 through a3, and word +0x10 is stored at sp+0x10. The call goes to 0x1414, and the routine returns record + 0x14.

- `__glle_PixelTexGenSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d6b8
  **Inferred.** Passes the single word at +0 as a0 to the pointer at 0x142c. The record pointer is reloaded from sp+0x20 and the routine returns it plus 4.

- `__glle_SpriteParameterfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d6f8
  **Inferred.** Two-word record. Word +0 goes to a0 and word +4 to a1, and the call goes to 0x1430. The saved pointer in a2 is reloaded and returned plus 8.

- `__glle_SpriteParameterfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d740
  **Inferred.** Variable-length record whose first word is the parameter name. The name goes to a0 and the value array at record+4 to a1, and the call is made through 0x1434. The GOT slot at gp-0x60b8 maps the name word to a count, and the routine returns record + 4*count + 4.

- `__glle_SpriteParameteriSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d7a8
  **Inferred.** Integer two-word sprite record. The name at +0 goes to a0 and the value at +4 to a1, and the call uses the pointer at 0x1438. The return is the record address plus 8.

- `__glle_SpriteParameterivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d7f0
  **Inferred.** Integer array form. The call through 0x143c takes the name word and the array at record+4. The count comes from the GOT slot at gp-0x60b4 on the name word, and the routine returns record + 4*count + 4.

- `__glle_TexFilterFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d858
  **Inferred.** Record of a target word at +0, a filter word at +4 and a count n at +8. The call through 0x1444 passes those words in a0, a1 and a2, plus the float array at record+0xc in a3. The routine then returns record + 4n + 0xc.

- `__glle_PointParameterfSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d8b4
  **Inferred.** Two-word point-parameter record: word +0 goes to a0 and word +4 to a1. The call uses the pointer at 0x1448, and the routine returns the record address plus 8.

- `__glle_PointParameterfvSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d8fc
  **Inferred.** Variable-length record with the name at +0 and the value array at record+4. The call through 0x144c takes both, and the GOT slot at gp-0x60b0 maps the name word to a count. The routine returns record + 4*count + 4.

- `__glle_FogFuncSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d964
  **Inferred.** Forwards a variable-length FogFuncSGIS record. The head word is loaded into a0, the address of the data after it goes into a1, and the dispatch word at 0x1450 is called. The return value is the head pointer plus eight times the head word plus four, so the head word counts eight-byte entries.

- `__glle_ReadInstrumentsSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d9b8
  **Inferred.** One-word record. The head word is passed in a0 to the dispatch word at 0x1460, and the return pointer is the head pointer plus four.

- `__glle_StartInstrumentsSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98d9f8
  **Inferred.** Takes no operand words. The record pointer is forwarded unchanged to the dispatch word at 0x1464 and handed back unchanged, so the return does not advance.

- `__glle_StopInstrumentsSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98da30
  **Inferred.** Loads the head word into a0 for the dispatch word at 0x1468, then steps the saved pointer over that single word with an addiu of four.

- `__glle_ReferencePlaneSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98da70
  **Inferred.** Passes the record pointer itself to the dispatch word at 0x1470 without loading anything from it, and returns that pointer advanced by 0x20, which is the length of a 32-byte record.

- `__glle_FrameZoomSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98daac
  **Inferred.** Dereferences the head word into a0 and calls the dispatch word at 0x1474. The saved head pointer is reloaded afterwards and the routine returns it plus four.

- `__glle_DeformSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98daec
  **Inferred.** Spills the head pointer to the frame, calls the dispatch word at 0x1484 with the head word as its only argument, and returns the reloaded pointer plus four.

- `__glle_LoadIdentityDeformationMapSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98db2c
  **Inferred.** Hands the head word to the dispatch word at 0x1488 and returns the head pointer plus four bytes.

- `__glle_CopyColorSubTable` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98db6c
  **Inferred.** Five-word record. Words 0 to 3 go to a0 through a3, and word 4 is stored in the outgoing argument slot at sp+0x10 before the call to the dispatch word at 0x14a8. The return is the record pointer plus 0x14.

- `__glle_PixelTexGenParameteriSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dbc4
  **Inferred.** Two-word record: the head word goes to a0 and the word at offset 4 to a1, both through the dispatch word at 0x14b4. The return pointer is the record plus eight.

- `__glle_PixelTexGenParameterivSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dc0c
  **Inferred.** Sends the head word and the pointer to the data after it through the dispatch word at 0x14b8. It then calls `__glPixelTexGenParameterivSGIS_size` with the head word and returns the head pointer plus four times that count plus four.

- `__glle_PixelTexGenParameterfSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dc74
  **Inferred.** Two words, head and offset 4, passed to the dispatch word at 0x14bc. Advances the pointer by eight.

- `__glle_PixelTexGenParameterfvSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dcbc
  **Inferred.** Same shape as the integer-vector entry: dispatch word 0x14c0 takes the head word and the trailing data pointer, then `__glPixelTexGenParameterfvSGIS_size` on the head word sets the stride to four bytes per count plus a four-byte header.

- `__glle_AsyncMarkerSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dd24
  **Inferred.** Single word forwarded to the dispatch word at 0x14cc. Returns the head pointer plus four.

- `__glle_FragmentColorMaterialSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dd64
  **Inferred.** Two-word record, head and offset 4, through the dispatch word at 0x14e4. The return is the head pointer plus eight.

- `__glle_FragmentLightfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ddac
  **Inferred.** Three-word record: the head word, the word at offset 4 and the word at offset 8 go to a0, a1 and a2 for the dispatch word at 0x14e8. Returns the record pointer plus 0xc.

- `__glle_FragmentLightfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98ddf8
  **Inferred.** The head word goes to a0 and the word at offset 4 to a1, while a2 receives the address of the data at offset 8. After the dispatch word at 0x14ec returns, `__glFragmentLightfvSGIX_size` is called on the word at offset 4, and the return is that pointer plus four times the count plus eight.

- `__glle_FragmentLightiSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98de64
  **Inferred.** Three words into a0 to a2 for the dispatch word at 0x14f0. Returns the record pointer plus twelve.

- `__glle_FragmentLightivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98deb0
  **Inferred.** Head word and trailing data pointer go to the dispatch word at 0x14f4. The word at offset 4 is then the argument to `__glFragmentLightivSGIX_size`, and the return adds four times that count and eight to the head pointer.

- `__glle_FragmentLightModelfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98df1c
  **Inferred.** Two words through the dispatch word at 0x14f8, returning the record pointer plus eight.

- `__glle_FragmentLightModelfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98df64
  **Inferred.** Calls the dispatch word at 0x14fc with the head word and a pointer to the data after it. The head word is then the argument to `__glFragmentLightModelfvSGIX_size`, and the return is the head pointer plus four times that count plus four.

- `__glle_FragmentLightModeliSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98dfcc
  **Inferred.** Two words, head and offset 4, handed to the dispatch word at 0x1500. Returns the head pointer plus eight.

- `__glle_FragmentLightModelivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e014
  **Inferred.** Dispatch word 0x1504 receives the head word and the data pointer. The head word then goes to `__glFragmentLightModelivSGIX_size`, and the return is the head pointer plus four times that count plus four.

- `__glle_FragmentMaterialfSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e07c
  **Inferred.** Three-word record. Head, offset 4 and offset 8 are loaded into a0 to a2 for the dispatch word at 0x1508, and the routine returns the record pointer plus 0xc.

- `__glle_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e0c8
  **Inferred.** Head word in a0, offset-4 word in a1, and a2 set to the data at offset 8, all for the dispatch word at 0x150c. The offset-4 word then sizes the record through `__glFragmentMaterialfvSGIX_size`, and the return is the head pointer plus four times that count plus eight.

- `__glle_FragmentMaterialiSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e134
  **Inferred.** Three words to the dispatch word at 0x1510, returning the record pointer plus 0xc.

- `__glle_FragmentMaterialivSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e180
  **Inferred.** Dispatch word 0x1514 gets the head word, the offset-4 word and a pointer to offset 8. The offset-4 word is then passed to `__glFragmentMaterialivSGIX_size`, and the return adds four times that count and eight to the head pointer.

- `__glle_LightEnviSGIX` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e1ec
  **Inferred.** Two words through the dispatch word at 0x1528. Returns the record pointer plus eight.

- `__glle_TextureColorMaskSGIS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98e234
  **Inferred.** Reads four bytes at offsets 0 to 3 with lbu, passes them as a0 to a3 to the dispatch word at 0x152c, and returns the record pointer plus four.

- `__glMipsNormalize` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9910e0
  **Inferred.** Normalizes the three-float vector at a1 into the three words at a0. It squares and sums the components in f12, then takes a bit-trick reciprocal square root seed from 0x5f375a00 minus half the bit pattern of that sum. When the sum's bit pattern equals 0x3f800000 the input is copied through unchanged. When the exponent field (mask 0x7f800000) is zero or all ones, the routine stores three zeros. Otherwise it builds a scale from the seed, the constant 0x3d800029 and the two constants 3.0 (0x40400000) and 12.0 (0x41400000), and multiplies each component by it.

- `__glMipsCopyDispatch` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9911b0
  **Inferred.** Copies a fixed block from a0 to a1. The counter in v0 starts at 0x1c5 and drops by 0x14 per pass, and each pass moves ten doubles (80 bytes, f0 to f18) while the counter stays positive, which is 23 passes. The leftover count of 12 then enters a compare chain at its 12 case, which stores six doubles from f10 down to f0. The routine copies 1888 bytes in total and returns no value.

- `__glDT_LESS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991858
  **Established.** sltu of a0 against a1 at 0xd991858 decides the branch. When a0 is below a1 unsigned, it stores a0 to the word at a2 and returns 1 (0x1); otherwise it returns 0 (0x0) and stores nothing.

- `__glDT_GREATER` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9918b4
  **Established.** sltu of a1 against a0 at 0xd9918b4 decides the branch. When a1 is below a0 unsigned, it stores a0 to the word at a2 and returns 1 (0x1); otherwise it returns 0 (0x0) and stores nothing.

- `__glDTP_LEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991e98
  **Inferred.** Fragment of the line routine at 0xd991d00 that ends in a branch to 0xd991e00. The counter t5 drops by one on both paths. If a3 is below t0 unsigned, the routine adds one to v1 and ORs t6 into t3; otherwise it stores t0 to the word at t7.

- `__glDTP_LEQUAL_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991eb8
  **Inferred.** Signed variant of the previous fragment. The test is a3 less than t0 as signed values, which selects the v1 increment and the t3 OR. Otherwise t0 is stored at t7. Both paths drop t5 by one and branch to 0xd991e00.

- `__glDTP_LESS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991ed8
  **Inferred.** Fragment that branches to 0xd991e00. Unsigned t0 less than a3 stores t0 at t7. A t0 that is not below a3 takes the v1 increment and t6 OR path, and t5 drops by one on both paths.

- `__glDTP_LESS_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991ef8
  **Inferred.** Signed form of the less-than fragment. Signed t0 below a3 stores t0 at t7 and otherwise takes the v1 increment and t3 OR path, ending in a branch to 0xd991e00.

- `__glDTP_EQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991f18
  **Inferred.** Fragment with a bne on t0 against a3. Equal values store t0 at t7; unequal values take the v1 increment and t6 OR path. The counter t5 drops by one on both paths before the branch to 0xd991e00.

- `__glDTP_GREATER` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991f34
  **Inferred.** Unsigned test on a3 and t0 over 32 bytes. sltu sets at when a3 is below t0, and beqz at 0xd991f38 sends the at-zero case to the count path at 0xd991f48. The fall-through stores t0 to (t7) in the delay slot of the b at 0xd991f40. The count path adds 1 to v1 and ORs t6 into t3 in the delay slot of the b at 0xd991f4c. t5 drops by one before either branch.

- `__glDTP_GREATER_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991f54
  **Inferred.** slt replaces sltu, so the comparison is signed. A3 below t0 as signed values falls through and stores t0 to (t7) at 0xd991f64. The other case branches to 0xd991f68, adds 1 to v1, and ORs t6 into t3 at 0xd991f70. t5 is decremented in the delay slot of the beqz at 0xd991f58.

- `__glDTP_NOTEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991f74
  **Inferred.** beq compares t0 with a3. Equal values branch to 0xd991f84, which adds 1 to v1 and then ORs t6 into t3 in the delay slot of the b at 0xd991f88. Unequal values store t0 to (t7) in the delay slot of the b at 0xd991f7c. The decrement of t5 is the delay slot of the beq itself, so it runs on both paths.

- `__glDTP_GEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991f90
  **Inferred.** sltu sets at when t0 is below a3. bnez at 0xd991f94 jumps to the count path at 0xd991fa4 when at is set. Otherwise the routine decrements t5 in the delay slot and stores t0 to (t7) from the delay slot of the b at 0xd991f9c.

- `__glDTP_GEQUAL_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991fb0
  **Inferred.** With slt, a t0 that is below a3 as signed values sends control to 0xd991fc4, which adds 1 to v1 and ORs t6 into t3. The clear case stores t0 at (t7) through the delay slot of the b at 0xd991fbc.

- `__glDTP_LEQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991fdc
  **Inferred.** Write-free unsigned test. sltu compares a3 with t0, and bnez sends a3 below t0 to the count path at 0xd991ff0, which adds 1 to v1 and ORs t6 into t3. Every other value decrements t5 and branches to 0xd991e00 with a nop in the delay slot, so nothing reaches memory through t7.

- `__glDTP_LEQUAL_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd991ffc
  **Inferred.** slt version of the previous routine. Signed a3 below t0 goes to the count path at 0xd992010. Every other case decrements t5 and branches out without a store.

- `__glDTP_LESS_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99201c
  **Inferred.** sltu sets at when t0 is below a3. beqz at 0xd992020 sends the at-zero case (t0 at least a3) to the count path at 0xd992030, so a pass needs t0 strictly below a3. Nothing is stored, and t5 is decremented in the beqz delay slot.

- `__glDTP_LESS_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99203c
  **Inferred.** Signed test: slt at,t0,a3 followed by beqz at 0xd992040. Signed t0 at least a3 reaches the count path at 0xd992050. The t5 decrement sits in the beqz delay slot, and no store is made on either side.

- `__glDTP_EQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99205c
  **Inferred.** bne at 0xd99205c checks t0 against a3. Unequal values jump to 0xd99206c and take the count path. t5 is decremented in the bne delay slot on both paths, and equal values fall through to a branch to 0xd991e00 with no store.

- `__glDTP_GREATER_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992078
  **Inferred.** sltu sets at when a3 is below t0. beqz at 0xd99207c sends the at-zero case (a3 at least t0) to the count path at 0xd99208c. The fall-through branches out with a nop in its delay slot and no store.

- `__glDTP_GREATER_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992098
  **Inferred.** Here slt is the comparison. Signed a3 at least t0 takes the beqz at 0xd99209c to 0xd9920ac, which adds 1 to v1 and ORs t6 into t3 at 0xd9920b4. The other case decrements t5 and branches with no store.

- `__glDTP_NOTEQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9920b8
  **Inferred.** beq at 0xd9920b8 takes equal a3 and t0 to 0xd9920c8, the count path. Unequal values decrement t5 and branch out with a nop, without a store.

- `__glDTP_GEQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9920d4
  **Inferred.** sltu sets at when t0 is below a3, and bnez at 0xd9920d8 sends that case to the count path at 0xd9920e8. Otherwise the routine branches to 0xd991e00 with a nop in the delay slot and writes nothing. t5 drops by one on both paths.

- `__glDTP_GEQUAL_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9920f4
  **Inferred.** The slt form of the t0 >= a3 test above. Its count path is 0xd992108, entered through the bnez at 0xd9920f8, and the fall-through writes nothing.

- `__glDepthTestSpan_asm` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992120
  **Inferred.** Walks the span in blocks of up to 32 pixels. It reads the shift count from +0x7a54 into v1, the step from +0x7674 into t3 (shifted right arithmetically by v1), the pixel count from +0x7628 into a3, the depth base from +0x75fc into v0, the bias from +0x7a4c into a1, the per-block advance from +0x7678 into a2, the stored-depth pointer from +0x76e8 into t2, the comparator address from +0x2fcc into t7, and the mask output pointer from +0x7708 into s0. Each block starts with t0 = (v0 >> v1) + a1 and t5 = 0x80000000. Each pixel loads the stored depth into t1, calls the comparator through t7, then advances t2 and shifts t5 right by one. At block end the inverted fail mask t4 is stored to the mask pointer, which advances by 4, and v0 gains a2. The routine returns 0 when t6 is zero. When t6 equals the pixel count it stores the byte 1 at +0x770c and returns 1. Otherwise it returns 1 with no store.

- `__glDTS_LEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9921fc
  **Inferred.** The stored value t1 is compared with the incoming t0 unsigned: sltu sets at when t1 is below t0. bnez at 0xd992200 then takes the fail block at 0xd992214, which adds 1 to t6, steps t0 by t3, and ORs t5 into t4 in the jr ra delay slot at 0xd992220. Otherwise t0 is stored to (t2) at 0xd992208, and the step runs in the jr delay slot.

- `__glDTS_LEQUAL_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992224
  **Inferred.** slt at,t1,t0 in place of sltu, so a stored t1 below t0 as signed values is the fail case. The fail block is 0xd99223c and the store of t0 to (t2) at 0xd992230 is the passing path.

- `__glDTS_LESS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99224c
  **Inferred.** A pass needs t0 below t1 unsigned. sltu at,t0,t1 and beqz at 0xd992250 send t0 at least t1 to the fail block at 0xd992264. The passing path stores t0 at (t2) at 0xd992258 and steps t0 by t3 in the jr delay slot.

- `__glDTS_LESS_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992274
  **Inferred.** Signed compare: slt at,t0,t1 with beqz at 0xd992278. Signed t0 at least t1 reaches the fail block at 0xd99228c. The store of t0 at (t2) is at 0xd992280, and the step addu sits in the delay slot of the jr at 0xd992284.

- `__glDTS_EQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99229c
  **Inferred.** The whole test is bne t0,t1 at 0xd99229c. A mismatch goes to the fail block at 0xd9922b0. Equal values store t0 at (t2) at 0xd9922a4 and return through jr ra at 0xd9922a8 with t0 stepped in the delay slot.

- `__glDTS_GREATER` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9922c0
  **Inferred.** sltu at,t1,t0 at 0xd9922c0 feeds beqz at 0xd9922c4, which sends t1 at least t0 to the fail block at 0xd9922d8. Otherwise t0 is stored at (t2) at 0xd9922cc before the jr ra at 0xd9922d0.

- `__glDTS_GREATER_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9922e8
  **Inferred.** Signed form: slt at,t1,t0 at 0xd9922e8 and beqz at 0xd9922ec. The fail block starts at 0xd992300 and the passing store to (t2) is at 0xd9922f4.

- `__glDTS_NOTEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992310
  **Inferred.** beq t0,t1 at 0xd992310 sends equal values to the fail block at 0xd992324. Unequal values store t0 at (t2) at 0xd992318 and return with the step in the jr delay slot.

- `__glDTS_GEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992334
  **Inferred.** sltu at,t0,t1 at 0xd992334 with bnez at 0xd992338. A t0 below t1 jumps to the fail block at 0xd99234c. Otherwise the store to (t2) at 0xd992340 runs and the routine returns.

- `__glDTS_GEQUAL_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99235c
  **Inferred.** slt at,t0,t1 at 0xd99235c and bnez at 0xd992360 send signed t0 below t1 to the fail block at 0xd992374. The passing store is at 0xd992368.

- `__glDTS_LEQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992390
  **Inferred.** No store on this variant. sltu at,t1,t0 and bnez at 0xd992394 send t1 below t0 to 0xd9923a4, which adds 1 to t6 and ORs t5 into t4. t0 steps by t3 in the bnez delay slot on both paths.

- `__glDTS_LEQUAL_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9923b0
  **Inferred.** Signed version of the previous entry with slt. Signed t1 below t0 branches to 0xd9923c4 for the fail update, and the step addu at 0xd9923b8 is in the bnez delay slot.

- `__glDTS_LESS_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9923d0
  **Inferred.** sltu at,t0,t1 and beqz at 0xd9923d4. The at-zero case (t0 at least t1) takes the fail block at 0xd9923e4. The step addu at 0xd9923d8 executes before the branch.

- `__glDTS_LESS_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9923f0
  **Inferred.** slt at,t0,t1 then beqz at 0xd9923f4. Signed t0 at least t1 reaches the fail block at 0xd992404. The step addu sits at 0xd9923f8 in the beqz delay slot.

- `__glDTS_EQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992410
  **Inferred.** bne t0,t1 at 0xd992410 is the test, with the fail block at 0xd992420. The step addu at 0xd992414 runs in the delay slot on both paths. Equal values return through jr ra at 0xd992418 and never update t4.

- `__glDTS_GREATER_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99242c
  **Inferred.** sltu at,t1,t0 at 0xd99242c with beqz at 0xd992430. t1 at least t0 takes the fail block at 0xd992440. The step addu at 0xd992434 is in the beqz delay slot.

- `__glDTS_GREATER_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99244c
  **Inferred.** slt at,t1,t0 at 0xd99244c and beqz at 0xd992450. Signed t1 at least t0 reaches 0xd992460. The step addu at 0xd992454 runs before the branch.

- `__glDTS_NOTEQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd99246c
  **Inferred.** beq t0,t1 at 0xd99246c sends equal values to the fail block at 0xd99247c. The step addu at 0xd992470 is in the delay slot.

- `__glDTS_GEQUAL_M` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992488
  **Inferred.** sltu at,t0,t1 at 0xd992488 and bnez at 0xd99248c. t0 below t1 jumps to 0xd99249c, which is the fail update. The step addu at 0xd992490 runs in the bnez delay slot.

- `__glDTS_GEQUAL_M_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9924a8
  **Inferred.** slt at,t0,t1 at 0xd9924a8 and bnez at 0xd9924ac. Signed t0 below t1 reaches 0xd9924bc. The step addu at 0xd9924b0 is in the delay slot.

- `__glDepthTestStippledSpan_asm` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9924d0
  **Inferred.** Span walk in blocks of up to 32 pixels with a stipple word per block. It reads the shift count from +0x7a54 (t9), the step from +0x7674 (t3), the pixel count from +0x7628 (a1), the depth base from +0x75fc (t8), the bias from +0x7a4c (v0), the stored-depth pointer from +0x76e8 (t2), the per-block advance from +0x7678 (v1), the comparator from +0x2fcc (a2) and the mask pointer from +0x7708 (a3). Each block loads the stipple word from (a3) into a0. A pixel whose bit in t5 is set calls the comparator with t1 loaded from (t2). A clear bit adds t3 to t0 and increments t6. At block end the routine stores (~t4 & a0) to (a3), advances a3 by 4, and adds v1 to t8. It returns 1 when t6 equals the pixel count and 0 otherwise. It does not store to the context.

- `__glDepthTestStencilSpan_asm` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9925b4
  **Inferred.** The span walk with a byte stencil array. It reads the shift count from +0x7a54 (s0), the step from +0x7674 (t3), the pixel count from +0x7628 (t9), the depth base from +0x75fc (t7), the bias from +0x7a4c (s1), the stored-depth pointer from +0x76e8 (t2), the stencil pointer from +0x76f4 (s2), table bases from +0x79d4 (s3) and +0x79d8 (s4), the per-block advance from +0x7678 (t8), the comparator from +0x2fcc (v0) and the mask pointer from +0x7708 (v1). After each comparator call the routine tests t4 & t5 for that pixel. A set bit reads the byte at s3 + old stencil value, and a clear bit reads it at s4 + old stencil value, and the result replaces the stencil byte. t2 advances by 4 and s2 by 1 for every pixel. Each block stores ~t4 to the mask pointer. The routine returns 0 when t6 is zero, and when t6 equals the pixel count it stores 1 at +0x770c and returns 1. Otherwise it returns 1 with no store.

- `__glDepthTestStencilStippledSpan_asm` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9926e0
  **Inferred.** Stippled form of the stencil span. The stipple word is loaded per block from the mask pointer at +0x7708 into a3. A pixel with a clear bit in a3 & t5 adds t3 to t0, increments t6 and leaves the stencil byte alone. A set bit calls the comparator and updates the stencil byte through the same s3 and s4 tables. Both cases advance t2 and s2. Each block stores (~t4 & a3). The return address is kept in a0 and the routine returns 1 when t6 equals the pixel count, 0 otherwise, with no store to the context.

- `Fetch_8` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992dc4
  **Inferred.** Loads one unsigned byte from a buffer and stores it as a single float through a3. The descriptor in a0 holds a pointer to a state block at +0x0, the base address at +0x10 and a row stride at +0x1c. The byte address is base + (a2 - word at state+0xe50) * stride + a1 - word at state+0xe4c. The byte is read with lbu and converted with cvt.s.w. The 2^32 correction at the bgez branch (0xd992e08) can never run here, because an lbu result is never negative.

- `Fetch_16` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992e24
  **Inferred.** Same shape as the byte fetch, but for halfwords. The row term and the column term are each doubled before they are summed (sll by 1), and the origin word at state+0xe4c is doubled as well. The value is read with lhu, converted to float, and stored at a3. The unsigned correction branch at 0xd992e70 is dead for the same reason as in the byte fetch.

- `Fetch_32` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992e90
  **Inferred.** Word variant of the fetch. Indices are scaled by four (sll 2) and the word is read with a signed lw. When the loaded word is negative, the code at 0xd992ee4 adds the constant 0x4f800000 (2^32 as a single) to the converted value, so a negative word becomes its unsigned value as a float before it is stored at a3.

- `Pick` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9931a4
  **Inferred.** Splits the word at a1+0x48 into a1+0x98 and a1+0x9c. When the flag word at context+0x760 is nonzero, +0x98 takes the word ANDed with context+0x758 and +0x9c takes it ANDed with the complement of that mask. When the flag is zero, +0x98 becomes 0 and +0x9c takes the whole word. The element-width code at a1+0x18 then picks one of three routines. Code 2 gives return value 1, code 4 gives 2, and code 1 or anything else gives 0. The return value indexes a three-pointer table, and the chosen pointer is stored at a1+0xa4. Table entry 0 is 0xd992820, entry 1 is Store_16 at 0xd992a0c and entry 2 is Store_32 at 0xd992c04.

- `StoreSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992fe8
  **Inferred.** Runs a per-pixel loop of the count at a0+0x7628, starting at the index word at a0+0x75f4. Each iteration builds a 16-byte record on the stack: the index at record+0, the word at a0+0x75f8 at record+4, and the first word of the next 16-byte entry of the array at a0+0x7700, read as a float, at record+0xc. The array pointer advances by 0x10 per pixel. The routine then calls the function stored at +0xa4 of the object at a0+0x7710, passing that object and the record. It returns 0 in v0.

- `Clear` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd992efc
  **Inferred.** Clears the rectangle named by the state block (the pointer at a0+0x0). Bit 2 (mask 0xfffffffb) is cleared in the word at state+0x700 for the duration and the original word is written back on return. The outer loop runs y from the word at state+0x7404 up to, not including, state+0x740c. The inner loop runs x from state+0x7408 up to, not including, state+0x7410. Each pixel gets a 16-byte record {y at +0, x at +4, the float at state+0x754 at +0xc}, and the routine calls the function at a0+0xa4 with the descriptor and that record. The same +0xa4 slot is where Pick stores its routine.

- `__glim_PixelTransferi` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd996a1c
  **Inferred.** Converts the integer in a1 to a single float with cvt.s.w and calls __glim_PixelTransferf (0xd99674c, reached through the GOT slot at gp-0x6f18) with a0 unchanged and the float's bit pattern in a1. Nothing after the call touches v0, so the callee's return value is the one returned.

- `__glim_PixelZoom` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd996634
  **Inferred.** Sets the pixel zoom pair in the current context. The current context pointer is at absolute 0x1010 and the state word is at 0x1018. A state word of 1 reports 0x502 through __glSetError (GOT gp-0x6750, 0xd9d02a4) and returns. Otherwise the x zoom (f12) and y zoom (f14) are each divided by the float at context+0xe5c. The bias float at context+0xdd4 is added when the zoom is greater than 0.0 and subtracted otherwise, the sum is truncated toward zero, and the integer is converted back and multiplied by the +0xe5c float. The two products are stored at context+0x2e8 (x) and +0x2ec (y). The state word becomes 2 and bit 4 is ORed into the word at context+0x2dec.

- `__glim_ReadBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9973a0
  **Inferred.** Selects the read buffer for the current context. A state word at 0x1018 equal to 1 reports 0x502 and returns. Otherwise the mode in a0 is checked against 0x400 to 0x40c through a 13-entry jump table at 0xda43e70 whose entries are gp-relative targets. Modes 0x400, 0x404 and 0x406 store 0x404 at context+0x4d4. Modes 0x402 and 0x405 store 0x405 there if the byte at context+0xc96 is nonzero, and report 0x502 otherwise. Modes 0x401, 0x403 and 0x407 report 0x502. Mode 0x408 and anything outside the range report 0x500. Modes 0x409 to 0x40c store a0 at context+0x4d4 when a0 - 0x409 is less than the word at context+0xce0, and report 0x502 when it is not. Each successful arm then stores a0 at context+0x4d8, sets the state word at 0x1018 to 2 and ORs 0x10 into the word at context+0x2dec.

- `__glim_DrawPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd997bb0
  **Inferred.** Front end for the pixel-draw call, which takes a0 to a3 and one stack argument. The state word at 0x1018 chooses the path. When it is 0, the routine calls __glCheckDrawPixelArgs (GOT gp-0x6f00, 0xd9974e0) with the context and the four argument words, and returns if that gives zero. On a nonzero result, a byte at context+0x1c4 gates the rest. If the word at context+0xc84 is 0x1c01, the routine calls __glFeedbackDrawPixels (GOT gp-0x6604, 0xd9d9a1c) with the context and context+0xf0. If it is 0x1c00, it calls the routine at context+0x3110 with the context, three argument words, and three stack words (the caller's stack argument and a zero among them). When the state word is 2, the routine calls the function at context+0x2e08, sets the state word to 0, and calls glDrawPixels (GOT gp-0x57a4, 0xd9308fc) with the same arguments. Any other state word reports 0x502.

- `__glInitDefaultPixelMap` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd995640
  **Inferred.** Initialises the default value of one pixel map in the state block a0, for the map enum a1 in 0xc70 to 0xc79. The record for map i is 12 bytes at a0+0x400+12*i. Each map first calls the function pointer stored in the first word of the state with a1 = 4, to get a one-element array. A null result leaves the record alone. Otherwise the pointer goes to record+8, the element is zeroed, and record+0 becomes 1. Maps 0xc70 and 0xc71 zero the element as an integer (sw zero). Maps 0xc72 to 0xc79 zero it as a float by storing 0.0 from f4. Any other a1 reports 0x500 through __glSetError.

- `__glSpanHistogramL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a0e78
  **Inferred.** Counts the first component of each span pixel and copies the four floats of every pixel
  to the output. For each of the pixels counted in the word at offset 0xb8 of the argument in a1, the
  float at the source pointer is multiplied by the context float at +0x7850, the product goes to
  __glFClamp, and the result is multiplied by the integer at context +0x504 after conversion. A double
  constant from the image's read-only data is added, and the sum is truncated to a bin index. The word
  at index times 4 in the table whose pointer sits at context +0x4dc is incremented.

- `__glSpanHistogramRGB` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a10f0
  **Inferred.** Histograms red, green and blue for each four-float pixel. The three channels use the
  context floats at +0x7850, +0x7854 and +0x7858 as their scales, each clamped through __glFClamp and
  turned into an index the same way. The index is multiplied by 3 and then by 4, so each bin holds three
  consecutive counters at offsets 0, 4 and 8. All four components are copied to the output unchanged.

- `__glSpanHistogramRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a12f0
  **Inferred.** Histograms all four components of each pixel, one counter per component. Red, green,
  blue and alpha are scaled by the context floats at +0x7850, +0x7854, +0x7858 and +0x785c in turn, and
  each product is clamped through __glFClamp before the integer at +0x504 scales it. Each index times 16
  selects a bin with counters at offsets 0, 4, 8 and 12. The source floats are copied to the output as
  each channel is counted.

- `__glSpanHistogramSinkL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a1608
  **Inferred.** Counts only the first float of each pixel and writes nothing back. The float is scaled by
  the context float at +0x7850 and passed to __glFClamp. The result is scaled by the integer at +0x504,
  offset by the double constant and truncated, and the 32-bit counter at four bytes per bin in the table
  at context +0x4dc is incremented. The source pointer advances sixteen bytes per pixel.

- `__glSpanHistogramSinkA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a1534
  **Inferred.** Counts the alpha value of each pixel and writes nothing back. The source pointer starts at
  offset 0xc, the fourth float of the first pixel, and steps sixteen bytes. Each alpha is scaled by the
  context float at +0x785c before the clamp, and the index times four selects a counter in the table at
  +0x4dc that is incremented.

- `__glSpanHistogramSinkLA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a16dc
  **Inferred.** Counts the first and fourth floats of each four-float pixel and writes nothing back. The
  first float is scaled by +0x7850 and the fourth by +0x785c, and each goes through __glFClamp. Bins are
  eight bytes wide, so the first counter is at offset 0 of the bin and the fourth-component counter at
  offset 4.

- `__glSpanHistogramSinkRGB` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a181c
  **Inferred.** Counts red, green and blue of each pixel and never reads the fourth float. Scales come from
  +0x7850, +0x7854 and +0x7858, and the clamped values are indexed with the index multiplied by 12 in
  total. Each bin holds three counters, one per channel, and nothing is written to the output.

- `__glSpanHistogramSinkRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a19e4
  **Inferred.** Counts all four components into four counters per bin, with no output written. The
  components are scaled by +0x7850, +0x7854, +0x7858 and +0x785c in order, and each goes through
  __glFClamp. Each index times 16 addresses the bin, and the counters sit at offsets 0, 4, 8 and 12.

- `__glSpanPackUbyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a7018
  **Inferred.** Packs a span of floats into unsigned bytes with no call. The element count is the product
  of the words at a1+0xb8 and a1+0x6c. Each element is multiplied by the float at context +0xddc, and the
  float at +0xdd4 is added as the addend of a multiply-add. The value is converted with a truncation that
  first subtracts 2^32 when the value is at least 2^31, and the low byte goes to the destination.

- `__glSpanPackByte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a70a8
  **Inferred.** Packs a span into signed bytes through a rounding call. Each element is multiplied by the
  context float at +0xddc, the product is multiplied again by the float at +0xdd4, and the result goes to
  floorf. The truncated value is stored as one byte. The loop runs for the element count from a1+0xb8
  times a1+0x6c, and it leaves early when that count is zero or less.

- `__glSpanPackUshort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a715c
  **Inferred.** Same unsigned conversion as the byte pack, but with the context float at +0xde4 as the
  scale and a store of one halfword per element. The destination pointer advances two bytes each time.

- `__glSpanPackShort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a71ec
  **Inferred.** The signed form of the halfword pack. It scales by the float at +0xde4, multiplies by
  +0xdd4, passes the product to floorf and stores the truncated value as a halfword.

- `__glSpanPackUint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a72a0
  **Inferred.** Unsigned 32-bit pack. Each element is scaled by the float at context +0xdec, the float at
  +0xdd4 is added through a multiply-add, and the truncated value is stored as a word. The destination
  advances four bytes per element.

- `__glSpanPackInt` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a7330
  **Inferred.** Signed 32-bit pack. The element is multiplied by the context float at +0xdec, then by
  +0xdd4, and passed to floorf. The result is stored as a word.

- `__glSpanPack332Ubyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a73e4
  **Inferred.** Packs an RGB triple into one byte as 3, 3 and 2 bits. Red and green are each multiplied by
  7.0 and truncated; red is shifted left by 5, green is masked to bits 2 to 4 after a shift by 2, and blue
  is multiplied by 3.0 and masked to two bits. Each channel uses the same guarded truncation as the
  unsigned packs, and the byte is written once per pixel.

- `__glSpanPack233RevUbyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a7520
  **Inferred.** Packs an RGB triple into one byte with the 3-bit fields at the bottom: the first channel
  is scaled by 7.0 and masked to three bits, the second by 7.0 and shifted to bits 3 to 5, and the third
  by 3.0 and shifted to bits 6 and 7.

- `__glSpanPack565Ushort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a7660
  **Inferred.** Packs three floats into a 5-6-5 halfword. The first channel is scaled by 31.0 and placed
  at bits 11 to 15, the second is scaled by 63.0 and placed at bits 5 to 10, and the third is scaled by
  31.0 and kept in bits 0 to 4. The halfword is stored once per pixel, and the source pointer advances
  twelve bytes per pixel.

- `__glSpanPack565RevUshort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a779c
  **Inferred.** The reverse-order 5-6-5 pack. The first channel is scaled by 31.0 into bits 0 to 4, the
  second by 63.0 into bits 5 to 10, and the third by 31.0 into bits 11 to 15.

- `__glSpanReduceRGB` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a5fec
  **Inferred.** Drops the alpha float from a span of four-float pixels. Red is multiplied by the context
  float at +0x7850, green by +0x7854 and blue by +0x7858, and the three products are written as three
  floats per pixel. The loop runs four pixels at a time and handles the remainder one pixel at a time.

- `__glSpanReduceBGR` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a61d0
  **Inferred.** The reversed-scale form of the RGB reduce. The first input float is scaled by +0x7858 and
  the third by +0x7850, with the middle float scaled by +0x7854 as before. Alpha is dropped, and the loop
  is unrolled by four with a single-pixel remainder.

- `__glSpanPackNonCompUbyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8c8c
  **Inferred.** Copies a float span to unsigned bytes with no scaling and no clamping. The element count is the word at a1+0xb8 times the word at a1+0x6c, the floats are read from a2 and the bytes go to a3. A value at or above 2^31 (compared against 0x4f000000) has 2^32 (0x4f800000) subtracted before truncation, which keeps the low eight bits; smaller values are truncated directly. Each byte is stored with sb.

- `__glSpanPackNonCompByte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8d14
  **Inferred.** Signed-byte form of the same span copy, with the same count from a1+0xb8 and a1+0x6c and the same source a2 and destination a3. There is no 2^31 adjustment: each float goes straight through trunc.w.s and is stored with sb. The loop uses branch-likely delay slots, and the destination advances one byte per element.

- `__glSpanPackNonCompUshort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8d90
  **Inferred.** Unsigned-halfword copy of a float span. It takes the 2^31 path that __glSpanPackNonCompUbyte uses, subtracting 2^32 from values at or above 2^31 before truncation, and stores each result with sh at a two-byte stride from a3.

- `__glSpanPackNonCompShort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8e18
  **Inferred.** Signed-halfword copy of a float span. Each float is truncated with trunc.w.s and written with sh, and the destination moves two bytes per element. Nothing is done for values above the 2^31 boundary.

- `__glSpanPackNonCompUint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8e94
  **Inferred.** Unsigned-word copy of a float span with the 2^31 check. Values at or above 2^31 have 2^32 subtracted first, and every result is stored with sw at a four-byte stride. The element count is the product of a1+0xb8 and a1+0x6c.

- `__glSpanPackNonCompInt` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8f1c
  **Inferred.** Signed-word copy of a float span. It truncates each float directly, with no 2^31 comparison, and stores the word with sw while stepping the destination by four bytes.

- `__glSpanPack4444Ushort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a78dc
  **Inferred.** Packs an RGBA float span into 4444 halfwords. Each of the four channels, read from a2 at a four-byte stride, is multiplied by 15.0 (constant 0x41700000) and truncated. The first channel is shifted to bits 12 to 15, the second to bits 8 to 11, the third to bits 4 to 7, and the fourth is masked to bits 0 to 3 before being or-ed in. The pixel count is the word at a1+0xb8 and the store is one sh per pixel.

- `__glSpanPack4444RevUshort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a7a68
  **Inferred.** Reversed-order 4444 packer using the same 15.0 scale and per-channel truncation as the forward form. Here the first channel is masked into the low nibble, the second is shifted left 4 and masked with 0xf0, the third is shifted left 8 and masked with 0xf00, and the fourth is shifted left 12 and masked with 0xf000. Each halfword is stored with sh.

- `__glSpanPack8888Uint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a7f04
  **Inferred.** Packs an RGBA float span into 32-bit words with the first channel in the top byte. The scale is 255.0 (constant 0x437f0000). The channels are shifted left 24, 16, 8 and 0 and masked with 0xff000000, 0xff0000, 0xff00 and 0xff, then or-ed together and stored with sw. The count comes from the word at a1+0xb8.

- `__glSpanPack8888RevUint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9a8088
  **Inferred.** Packs an RGBA float span into 32-bit words with the first channel in the low byte, using the 255.0 scale from constant 0x437f0000. The second, third and fourth channels are shifted into bytes 1, 2 and 3, the second through a mask of 0xff00, and the result is stored with sw at a four-byte stride.

- `__glLoadUnpackModes` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9af3d4
  **Inferred.** Fills the unpack-mode record at a1 from the context at a0. The flag in the low byte of a2 selects one of two paths. When it is nonzero, the record gets 1 at +0x44, zeros at +0x28, +0x2c, +0x30, +0x34 and +0x38, and copies its own words at +0xa8 and +0xac into +0x3c and +0x40. When it is zero, it copies the context words at +0x4b4, +0x4b0, +0x4ac and +0x4b8 into +0x44, +0x30, +0x34 and +0x38, the bytes at +0x4a5 and +0x4a4 into +0x2c and +0x28, and the words at +0x4a8 and +0x4bc into +0x3c and +0x40. Those last two fall back to the record's own +0xa8 and +0xac when the context value is not greater than zero.

- `__glLoadPackModes` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b0500
  **Inferred.** Copies the pack-mode fields of the context at a0 into the record at a1. The words at +0x488, +0x484, +0x480 and +0x48c go to record offsets +0x94, +0x80, +0x84 and +0x88, and the bytes at +0x479 and +0x478 go to +0x7c and +0x78. The words at +0x47c and +0x490 go to +0x8c and +0x90, and when either is not greater than zero the record's own +0xa8 or +0xac is copied instead.

- `__glSlowPickDrawPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b00fc
  **Inferred.** Slow-path dispatcher for glDrawPixels. It builds a 0x230-byte frame, with the info record at sp+0x3c, then calls __glInitDrawPixelsInfo and __glLoadUnpackModes, passing the byte stack argument at sp+0x24b as the flag. If any bit in 0x3e000000 is set in the context word at +0x700, it calls __glInitLateScissor first, and a nonzero result goes straight to __glInitUnpacker and __glGenericPickDrawPixels. Otherwise, or when that call returns zero, it calls __glClipDrawPixels, and a nonzero clip result leads to the same pair of calls. A zero clip result returns without further calls.

- `__glSlowPickReadPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b0b6c
  **Inferred.** Slow-path wrapper for glReadPixels. It calls __glInitReadPixelsInfo to fill a local record at sp+0x3c, then calls __glClipReadPixels on the context and that record. Only when the clip returns nonzero does it call __glInitPacker and then __glGenericPickReadPixels, both with the context and the record.

- `__glSlowPickCopyPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b28fc
  **Inferred.** Slow-path wrapper for glCopyPixels. It calls __glInitCopyPixelsInfo to fill a record at sp+0x34, then __glClipCopyPixels. When the clip returns nonzero, it calls __glGenericPickCopyPixels with the same context and record. It has no unpacker setup step.

- `__glReadPixels0` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b0ab4
  **Inferred.** Steps a read-pixel loop through the count held at a1+0xac. Each pass calls the function pointer loaded from a1+0x164 with the context, a1 and the word at a1+0x5c as its third argument. Afterwards it adds the integer at context +0x12f4, converted to float, to the float at a1+0xc0, and adds the word at a1+0x60 to the word at a1+0x5c.

- `__glReadPixels1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b0990
  **Inferred.** Read-pixel loop with two callees and a stack buffer. The buffer is the word at a1+0xa8 times 16 bytes, rounded up to 8. Each pass calls the pointer at a1+0x164 to fill the buffer, then the pointer at a1+0x168 with the buffer and the word at a1+0x5c as its fourth argument. It advances the float at a1+0xc0 by the context float from +0x12f4 and the word at a1+0x5c by the word at a1+0x60. The word at context +0x77b8, read on entry, is written back on each pass.

- `__glReadPixels2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b083c
  **Inferred.** Read-pixel loop with three callees and two stack buffers, each the word at a1+0xa8 times 16 bytes. Each pass calls the pointer at a1+0x164 with the first buffer, the pointer at a1+0x168 with both buffers, and the pointer at a1+0x16c with the second buffer and the word at a1+0x5c. Then the float at a1+0xc0 gets the context +0x12f4 value added and the word at a1+0x5c gets the word at a1+0x60 added. The context word at +0x77b8 is written back from its entry value.

Skipped, not described: PickSpanModifiers (81728 bytes) was too long for the time box. The routines __glSpanPackBitmap, __glClipDrawPixels, __glClipCopyPixels, __glCopyPixelsOverlapping, __glClipReadPixels, __glComputeSpanPixelArray, __glInitDrawPixelsInfo, __glInitReadPixelsInfo, __glInitCopyPixelsInfo, __glDrawPixels0, __glDrawPixels1, __glDrawPixels2, __glCopyPixels0, __glCopyPixels1 and __glCopyPixels2 were longer than the time box and were not read in full.

Skipped because the callee could not be named honestly: __glGenericPickDrawPixels and __glGenericPickReadPixels. Their call goes through the GOT slot at gp-0x7fc8, which resolves to a computed address (0xd9a4280) that does not start a symbol.

Skipped because a constant is not in the binary: __glSpanPack_10_10_10_2_Uint and __glSpanPack_2_10_10_10_RevUint load their scale from the computed addresses 0x40404040 and 0x40404044 (lui 0x4040 plus offset), so the scale value is unknown.

Skipped because the bit placement is unfinished: __glSpanPack5551Ushort and __glSpanPack1555RevUshort. Their alpha channel skips the scale multiply, and I did not finish establishing where its bits go.

- `__glGenericPickCopyPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b2994
  **Inferred.** Selects the copy-pixels routine. It calls a local helper with the context, the state and a pointer to the words 4, 4, 3, then stores the helper result at state +0x160 and the result minus one at state +0x108. The first word of the descriptor at state +0x1b4 decides the table: 0x8011 and 0x8012 load fixed pointers from gp-0x6e5c and gp-0x6e58, and any other value takes the pointer for helper result 0, 1, 2 or other from gp-0x6c64, -0x6c68, -0x6c6c or -0x6c70. When descriptor word 1 is 0x8016, state +0xb8 becomes state +0xb4 minus descriptor +0x40 plus one, or zero when that is negative. The routine stores a2 at +0x164 and a3 at +0x19c, then calls the chosen pointer with the saved context.

- `__glCopyImage1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b2ab8
  **Inferred.** Runs a row loop over the count at state +0xac. Each pass calls the pointer at state +0x168 with the context, the state, the word at +0xc and the word at +0x5c, then adds +0x10 to +0xc and +0x60 to +0x5c. The context word at +0x77b8 is read on entry and written back after every pass, so a change the callee makes to it is undone. A count of zero or less leaves the context word untouched.

- `__glCopyImage2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b2b70
  **Inferred.** Copies a rectangle through a stack buffer. It reserves 16 bytes for each unit of the word at state +0xa8, rounded up to eight bytes. For each of the count at +0xac rows, it calls the pointer at +0x168 with the source word at +0xc and the buffer as a3, stores the sum of the words at +0xc and +0x10 back at +0xc, then calls the pointer at +0x16c with the buffer as a2 and the word at +0x5c as a3. Each sum of the word at +0x5c and the word at +0x60 is stored back at +0x5c. The context word at +0x77b8 is saved on entry and restored after each row.

- `__glCopyImage3D` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b2ee0
  **Inferred.** Loops over the count at state +0xb0 and calls the function pointer passed in a2 with the context and the state on each pass. After each call the word at +0xc gains the word at +0x18 and the word at +0x5c gains the word at +0x68. The pointer stays in s6 across the loop.

- `__glGenericPickCopyImage` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b2f90
  **Inferred.** Picks the copy-image routine. It writes -1 to state +0x108 and calls the helper at the gp-0x6c48 slot with the context, the state and the low byte of the caller's a2. When +0x108 still holds -1 the helper result becomes both the index and the new +0x108 value (result minus one). Otherwise the index is the +0x108 value plus one. Index 1 selects gp-0x6c54, index 2 gp-0x6c50, and anything else gp-0x6c4c. For a nonzero flag byte, descriptor word 0x8011 switches the pointer to gp-0x6e54 and 0x8012 to gp-0x6e50, while 0x8010 leaves it. The index is stored at +0x160. If state +0x18 or +0x68 is positive the routine calls the helper at gp-0x6c44, otherwise it calls the selected pointer.

- `__glInitReadImageSrcInfo` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b30bc
  **Inferred.** Fills a read-source descriptor from the context. The float at +0xbc is context +0xe4c plus a2, and the float at +0xc0 is context +0xe50 plus a3. When the byte at context +0x12f0 is set, +0xc0 is context +0xe78 minus a3, plus context +0xe50, minus one. The word at +0x0 is 0x1908 when the byte at context +0xc94 is set and 0x1900 otherwise, and +0x4 is 0x1406. The two stack arguments go to +0xa8, +0xac, +0x3c and +0x40. The routine also sets +0xa0 from context +0xdd8, zeroes +0xc4, +0x8, +0x28, +0x2c, +0x30, +0x34, +0x38 and the byte at +0x48, and writes 1 to +0x44 and 4 to +0x24.

- `__glGenericPickReadImage` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b31ac
  **Inferred.** Selects the read-image routine with the same descriptor logic as the copy picker, but the helper table holds 1, 3 and 5. The fifth stack argument goes to +0x164. The counter at +0x108 is rewritten only when it holds -1; otherwise the index is the counter plus one. Descriptor word 0x8011 picks gp-0x6e6c and 0x8012 picks gp-0x6e68. Otherwise index 0, 1, 2 or other picks gp-0x6c84, -0x6c88, -0x6c8c or -0x6c90. The index is stored at +0x160, and descriptor word 1 equal to 0x8016 sets +0xb8 the same way as in the copy picker. The chosen routine is then called with the saved context in a0.

- `__glInitMemLoad` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b32e0
  **Inferred.** Sets the load-side pixel state for the format in a2. It zeroes the floats at +0x14c, +0x150, +0x154 and +0x158, sets the floats at +0x13c, +0x140, +0x144 and +0x148 to 1.0, stores a3 at +0x58, clears +0x78, +0x80, +0x84 and +0x88, sets +0x7c to 1, and copies the words at +0xa8 and +0xac into +0x8c and +0x90. For a2 from 0x1906 to 0x190a a five-way jump table keyed on a2 minus 0x1906 writes a base format to +0x50, 0x1406 to +0x54 and 4 to +0x94. The base format is 0x1903, 1, 0x1907, 0x1908 or 0x1906 by case. The value 0x8049 writes 0x1903, 0x1406 and 4 to the same three words. Other formats return after the common stores.

- `__glInitMemGet` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3440
  **Inferred.** Sets the read-back pixel state. The format is the fifth argument, taken from the stack slot at 0x10, and the sixth argument goes to +0x8. It clears +0x28, +0x30, +0x34, +0x38 and +0x1b0, sets +0x2c to 1, and stores a2 at +0x3c and a3 at +0x40. Formats 0x1906 to 0x190a take the same five-case table as the load initializer and write the base format to +0x0, 0x1406 to +0x4 and 4 to +0x44. The value 0x8049 writes 0x1903, 0x1406 and 4 to those three words. Any other format returns after the common stores.

- `__glInitMemUnpack` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3574
  **Inferred.** Stores the unpack-side state and then calls a helper through the gp-0x6cc4 slot. It writes 0.0 to +0xc4, copies the float at context +0xdd8 to +0xa0, and stores the spilled a2 at +0xa8, +0xb4 and +0xb8. The a3 argument goes to +0xac, the stack words at 0x30 to +0xb0, and the words at 0x34, 0x38 and 0x3c to +0x0, +0x4 and +0x8. The helper receives the context, the state and the low byte of the stack word at 0x40 as its third argument.

- `__glInitMemPack` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b35fc
  **Inferred.** The pack-side setup, with the same float initialisation as the unpack side. It zeroes +0xc4, copies context +0xdd8 to +0xa0, and stores a2 at +0xa8, +0xb4 and +0xb8. It stores a3 at +0xac, the stack word at 0x30 at +0xb0, and the words at 0x34, 0x38 and 0x3c at +0x50, +0x54 and +0x58. It then calls the helper at the gp-0x6c98 slot with the context and the state passed through unchanged.

- `__glSpanReadRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3670
  **Inferred.** Reads a row of RGBA pixels into the destination in a2. The start x and y are the truncated floats at +0xbc and +0xc0, and the count is the word at +0xb4. For each pixel it calls the function at context +0x7874 with the word at context +0x2df4 as a0, x as a1, y as a2 and the destination as a3. The destination then advances by 16 bytes, and x advances by the signed halfword from the table at +0x138, which steps two bytes per pixel.

- `__glSpanReadRGBA2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3734
  **Inferred.** Forwards the whole span in one call. It truncates the floats at +0xbc and +0xc0 to x and y, loads the word at context +0x2df4 as a0, and passes the destination and the count from the state at +0xa8 as the fifth argument on the stack. It calls the function at context +0x7878 once and returns without a loop of its own.

- `__glSpanReadCI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b379c
  **Inferred.** Reads a row of colour indices. It uses the same loop shape as the RGBA reader: count from +0xb4, x stepping through the halfword table at +0x138, and a call to the function at context +0x7874 with the word at context +0x2df4 as a0. The difference is that the destination advances four bytes per pixel, so each index lands in one word.

- `__glSpanReadCI2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3860
  **Inferred.** Colour-index span read over the count in +0xa8. For each pixel it calls the function at context +0x7874 with x, y and the destination, then advances the destination by four bytes and x by one. Unlike the table-stepped reader, x is not taken from the halfword table at +0x138.

- `__glSpanReadDepth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3910
  **Inferred.** Reads a depth span and converts it to floats. It forms a scale of the float at context +0xdd8 divided by the word at context +0x7a48 read as unsigned, adding 2^32 when the signed value is negative. Each of the +0xb4 pixels calls the function at context +0x7a7c with a0 set to context +0x79fc, x and y, takes the returned word as unsigned, multiplies by the scale and stores the float at four-byte steps. The x step comes from the halfword table at +0x138.

- `__glSpanReadDepth2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3a2c
  **Inferred.** The unit-step depth reader. It computes the same scale as the first depth reader from context +0xdd8 and context +0x7a48, calls the function at context +0x7a7c with a0 set to context +0x79fc, and stores each unsigned result as a float. The count comes from +0xa8 and x advances by one per pixel.

- `__glSpanReadDepthUint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3c20
  **Inferred.** Reads depth as integer words. The shift count is 32 minus the words at context +0x7a08 and context +0x7a54, computed with negu and subu, and each word returned by the function at context +0x7a7c (with a0 set to context +0x79fc) is shifted left by that count. The shift uses sllv, so only the low five bits count. The count comes from the word at +0xa8. The shifted words are stored at four-byte steps, and x moves up by one per pixel.

- `__glSpanReadStencil` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3cf8
  **Inferred.** Reads a stencil span. Each call goes to the function at context +0x79e4 with a0 set to context +0x7984, x and y. The signed integer it returns is converted to a float and stored at four-byte steps. The count is the word at +0xb4, and x steps through the halfword table at +0x138.

- `__glSpanReadStencil2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3dcc
  **Inferred.** Stencil reader for the unit-step case. The count comes from +0xa8 and x advances by one. Each signed result from the function at context +0x79e4, called with a0 set to context +0x7984, is converted to a float and stored.

- `__glSlowDrawPixelsStore` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3e90
  **Inferred.** Copies a 0x34-byte pixel-store record from the state into a stack copy at sp+0x34. When the byte at context +0x6e38 is set, it divides the float at context +0xdd8 by the float at context +0x12c to get a scale, and calls the function at +0x30ec with the stack copy's address at sp+0x40 and the three floats at context +0x120, +0x124 and +0x128 multiplied by that scale. Then, if the word at context +0x700 has bit 0x20 set, it calls the function at +0x30f0 with the copy at sp+0x34 and the word at +0x158. Finally it calls the function at +0x3140 with the original first argument and the copy at sp+0x34.

- `__glSpanRenderRGBubyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b3f90
  **Inferred.** Turns a span of packed RGB bytes into floats and passes each pixel to the sink at context +0x3124. Each byte indexes one of the float tables at context +0x776c (red), +0x7770 (green) and +0x7774 (blue), and the three lookups land at sp+0x60, sp+0x64 and sp+0x68. The sink is called with a0 set to the word at context +0x2df0 and a1 set to a record at sp+0x54. Rows step by +0xec from +0xd0. The end row is the truncated sum of the floats at +0xa4 and +0xc8, and the row count at +0xdc is counted down and written back, along with the end row at +0xd0.

- `__glSpanRenderBGRubyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b4180
  **Inferred.** The blue-first variant of the RGB renderer, with the same row and span walk. Byte 0 indexes the table at +0x7774 and lands at sp+0x68, byte 1 indexes +0x7770 at sp+0x64, and byte 2 indexes +0x776c at sp+0x60. The outer tables are swapped, so the sink sees the channels in red-first order.

- `__glSpanRenderRGBubyte2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b4370
  **Inferred.** Packed RGB renderer over a source pointer in a2 with its own end column. It runs rows from +0xd0 to the end row in a3 and steps the column from +0xcc by +0xf0 until it reaches +0xd4. Each three-byte pixel goes through the tables at +0x776c, +0x7770 and +0x7774 to sp+0x5c, sp+0x60 and sp+0x64. The sink at context +0x3124 is called with a0 set to the word at context +0x2df0 and a1 set to sp+0x50, and the row count at +0xdc is written back.

- `__glSpanRenderBGRubyte2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b4510
  **Inferred.** The blue-first form of the previous routine, with the same row and column walk. Byte 0 indexes the table at +0x7774 and lands at sp+0x64, byte 1 indexes +0x7770 and lands at sp+0x60, and byte 2 indexes +0x776c and lands at sp+0x5c. The sink call and the write-back of +0xd0 and +0xdc are unchanged.

- `__glSpanRenderRGBAubyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b46b0
  **Inferred.** Span renderer for four-byte packed pixels. Four table lookups per pixel run through context +0x776c, +0x7770, +0x7774 and +0x7778, and their floats land at sp+0x5c, sp+0x60, sp+0x64 and sp+0x68. The source advances four bytes per pixel, x steps through the halfword table at +0x138, and the sink at context +0x3124 receives a1 set to sp+0x50.

- `__glSpanRenderRGBAubyte2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b48bc
  **Inferred.** The four-byte pixel renderer in the column-stepped form. It loads the same four tables at context +0x776c, +0x7770, +0x7774 and +0x7778, with the sink pointer at context +0x3124 held in v0 across the loop. The x step comes from +0xf0 rather than the halfword table, and the sink's record is at sp+0x54.

- `__glSpanRenderDepthUint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b4a78
  **Inferred.** Writes an integer depth span. The four floats at context +0x180, +0x184, +0x188 and +0x18c are copied once to sp+0x64 through sp+0x70. Each source word read from the pointer in a2 is shifted right by a count computed as 32 minus the words at context +0x7a08 and context +0x7a54, using srlv, and stored at sp+0x60. The sink at context +0x3124 is called with a0 set to the word at context +0x2df0 and a1 set to the record at sp+0x58, and the row and column walk follows the halfword table at +0x138.

- `__glSpanRenderStencilUshort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b4da0
  **Inferred.** Writes a span of unsigned 16-bit stencil values. The sink is the pointer at context +0x79e0, called with a0 set to context +0x7984, x as a1, the row as a2 and the halfword as a3. The source advances two bytes per pixel, the row step is +0xec, the column count is +0xb8, and x steps through the halfword table at +0x138. The row count at +0xdc and the end row at +0xd0 are written back at the end.

- `__glSpanRenderStencilUshort2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b4f0c
  **Inferred.** Unsigned 16-bit stencil writer for the column-stepped form. It walks rows from +0xd0 by +0xec and columns from +0xcc to +0xd4 by +0xf0. Each pixel calls the sink at context +0x79e0 with a0 set to context +0x7984, x and the row, and a3 set to the halfword at the source pointer, which advances by two. The remaining count at +0xdc is decremented once per row and stored back at the end.

- `__glSpanRenderStencilUbyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5030
  **Inferred.** The byte-source version of the unsigned 16-bit stencil writer. It uses the same sink at context +0x79e0, the same context +0x7984 argument, and the same halfword-table column walk, but reads one byte per pixel with lbu and advances the source by one.

- `__glSpanRenderStencilUbyte2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b519c
  **Inferred.** The byte-source column-stepped stencil writer. It matches the unsigned 16-bit column-stepped writer, with lbu on a one-byte step in place of lhu on a two-byte step. The sink at context +0x79e0 and the row and column limits at +0xd0, +0xcc and +0xd4 are the same.

- `__glSpanRenderCIushort` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b52c0
  **Inferred.** Writes a span of colour indices read as halfwords. Each index is masked with the word at context +0x7810 and converted to a float at sp+0x5c. The sink is the pointer at context +0x3124, called with a0 set to the word at context +0x2df0 and a1 set to the record at sp+0x50. Columns step through the halfword table at +0x138 and rows through +0xec. The count is +0xb8 per row, and the end row and remaining count are written back.

- `__glSpanRenderCIushort2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5450
  **Inferred.** The column-stepped form of the masked colour-index writer. Each halfword is ANDed with the mask at context +0x7810, converted to a float and stored at sp+0x54. The column runs from +0xcc to +0xd4 with step +0xf0, and the record for the sink is at sp+0x48. The source advances by two bytes per pixel.

- `__glSpanRenderCIubyte` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b55a0
  **Inferred.** Writes a span of colour indices read as bytes. Each byte indexes the float table whose pointer is at context +0x7768, and the looked-up float lands at sp+0x58. The sink is the pointer at context +0x3124, called with a0 set to the word at context +0x2df0 and a1 set to the record at sp+0x4c. The walk uses the halfword table at +0x138 for columns, and the source advances one byte per pixel.

- `__glSpanRenderCIubyte2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5730
  **Inferred.** The unit-step byte colour-index writer. It looks each byte up in the float table at context +0x7768 and stores the result at sp+0x50. The sink at context +0x3124 receives a1 set to sp+0x44. Columns run from +0xcc to +0xd4 by the step at +0xf0, and the source pointer advances one byte per pixel.

- `__glSpanRenderCIubyte3` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5880
  **Inferred.** Expands each byte colour index into four floats. The byte indexes four float tables whose pointers are at context +0x776c, +0x7770, +0x7774 and +0x7778, and the four results land at sp+0x5c, sp+0x60, sp+0x64 and sp+0x68. Columns step through the halfword table at +0x138, and the sink at context +0x3124 receives a1 set to sp+0x50 with a0 set to the word at context +0x2df0.

- `__glSpanRenderCIubyte4` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5a54
  **Inferred.** Four-channel byte colour-index writer in the unit-step form. Each byte drives the same four tables at context +0x776c through +0x7778, and the floats are stored at sp+0x50, sp+0x54, sp+0x58 and sp+0x5c. The sink pointer is loaded from context +0x3124 once and called through t9 with a1 set to sp+0x44, and the column step is +0xf0 up to the end column at +0xd4.

- `__glSpanRenderRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5bec
  **Inferred.** Writes a span of float RGBA pixels. Each source pixel is four floats at 16-byte steps, copied to sp+0x5c, sp+0x60, sp+0x64 and sp+0x68 as R, G, B and A. Columns step through the halfword table at +0x138, and the sink at context +0x3124 is called with a0 set to the word at context +0x2df0 and a1 set to sp+0x50. The row step is the word at +0xec, and rows run to the end row.

- `__glSpanRenderRGBA2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5d70
  **Inferred.** The unit-step form of the float RGBA writer. Four floats are read from the source per pixel, stored at sp+0x58, sp+0x5c, sp+0x60 and sp+0x64, and the sink is called with a1 set to sp+0x4c. The column step is the word at +0xf0 applied once per pixel, and the row count from +0xb8 limits each row.

- `__glSpanRenderDepth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b5ec8
  **Inferred.** Resumable span emitter for per-row depth. The outer loop starts at the word at +0xd0 of the record in a1 and steps by the word at +0xec, ending at the truncated sum of the floats at +0xa4 and +0xc8. Each row takes one float from the a2 array (4 bytes per row), multiplies it by the context word at +0x7a48 read as unsigned, and truncates the product to an integer depth; values from 2^31 upward are reduced by 2^32 before truncation. A halfword run length comes from the table at +0x138 (2 bytes per row). x keeps the value the previous row left and steps by the stride word at +0xf0 until it reaches the end of this row's run. Each step calls the pointer at context +0x3124 with a0 set to the word at context +0x2df0 and a1 set to a record at sp+0x50 holding x, the depth at +8, and the four colour floats copied from context +0x180 to +0x18c. On exit the count word at +0xdc is written back, and the row word at +0xd0 is set to the end row.

- `__glSpanRenderDepth2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b60ac
  **Inferred.** Per-pixel depth variant of the span emitter. Each row holds the number of pixels in the word at +0xb8, and each pixel reads its own float from the a2 array, 4 bytes at a time. The depth is the same unsigned product with the word at context +0x7a48, truncated the same way. After every pixel the value loaded from +0xf0 is added to x. The call uses the pointer at context +0x3124 with a0 from context +0x2df0 and a record at sp+0x4c that holds x at offset 0, the depth at +8, and the colour floats from context +0x180 at +0xc to +0x18. The row word at +0xd0 steps by +0xec and the count word at +0xdc is stored back at exit.

- `__glSpanRenderCI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b625c
  **Inferred.** Colour-index span emitter. It walks rows from the word at +0xd0 to the end row with the same halfword run table at +0x138 and x stride at +0xf0. For each run the float from the a2 array is truncated to an integer, ANDed with the index mask word at context +0x7810, and converted back to a float. The record at sp+0x50 holds x at offset 0, the word at +0xf8 at +8, and that index float at +0xc. The call goes through the pointer at context +0x3124 with a0 from context +0x2df0.

- `__glSpanRenderCI2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b63f0
  **Inferred.** Per-pixel colour-index variant. The count of pixels per row is the word at +0xb8, and each pixel consumes one float from the a2 array. The value is truncated and ANDed with the mask at context +0x7810, then stored as a float at +0xc of the record at sp+0x4c. The record also carries x at offset 0 and the word at +0xf8 at +8. The callee is the pointer at context +0x3124, called with the context word at +0x2df0 as its first argument. The row word at +0xd0 steps by +0xec.

- `__glSpanRenderStencil` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b6554
  **Inferred.** Stencil span emitter with a halfword run table at +0x138. The stencil mask is 1 shifted left by the bit count at context +0xcb0, minus one. For each run the float from the a2 array is truncated and ANDed with that mask. Every pixel in the run calls the pointer at context +0x79e0, which is the object at context +0x7984 plus 0x5c, with a0 set to the object, a1 set to x, a2 set to the row, and a3 set to the masked value. The row word at +0xd0 steps by +0xec and x steps by +0xf0.

- `__glSpanRenderStencil2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b66dc
  **Inferred.** Per-pixel stencil variant that takes no run table. Each row has as many pixels as the word at +0xb8, and each pixel reads its own float from the a2 array. The value is truncated and masked with the same (1 << context +0xcb0) - 1 mask. The call goes to the pointer at context +0x79e0 with a0 set to the object at context +0x7984, x in a1, the row in a2, and the masked value in a3. x steps by the stride at +0xf0 after each pixel.

- `__glElementsPerGroup` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b6830
  **Inferred.** Maps a pixel format enumerant in a0 to a component count returned in v0. The values 0x80e0 and 0x80e1 return 3 and 4, and 0x8000 returns 4. Values from 0x1900 to 0x190a go through a jump table: 0x1907 returns 3, 0x1908 returns 4, 0x190a returns 2, and 0x1900 to 0x1906 and 0x1909 return 1. The input 1 returns 2 and 0 returns 1. Every other value returns 1.

- `__glBytesPerElement` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9b68f8
  **Inferred.** Returns a single-precision float in f0 selected by the enumerant in a0. Values 0x1400 and 0x1401 give 1.0, 0x1402 and 0x1403 give 2.0, and 0x1404 to 0x1406 give 4.0. The value 0x1a00 gives 0.125. For 0x8032 the result is the constant stored at 0xda44498 (0x3eaaaaab), 0x8033 and 0x8034 give 0.5, and 0x8035 and 0x8036 give 1.0. For 0x8362 the result is also 0x3eaaaaab, 0x8363 and 0x8364 give the constant at 0xda4449c (0x3f2aaaab), 0x8365 and 0x8366 give 0.5, and 0x8367 and 0x8368 give 1.0. Every other input gives 4.0.

- `__glSpanClampRed` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ba52c
  **Inferred.** Clamps the red channel of RGBA float pixels to the range from 0.0 up to the float at context +0x7820. Pixels are 16 bytes apart. Green, blue and alpha are copied from the source unchanged. The count is the word at +0xb8 of the record in a1, the source is a2, and the destination is a3.

- `__glSpanClampGreen` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ba6e8
  **Inferred.** Clamps the green channel of 16-byte RGBA float pixels to the range from 0.0 up to the float at context +0x7824. The other three channels pass through. The count comes from the word at +0xb8 of the record in a1.

- `__glSpanClampBlue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ba8ac
  **Inferred.** Clamps blue in a stream of 16-byte RGBA float pixels, with the upper limit taken from the float at context +0x7828 and the lower limit 0.0. Red, green and alpha are copied unchanged. The count is the word at +0xb8 of the record in a1.

- `__glSpanClampAlpha` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9baa70
  **Inferred.** Clamps the alpha channel of 16-byte RGBA float pixels between 0.0 and the float at context +0x7848. Red, green and blue are copied from the source. The count is the word at +0xb8 of the record in a1.

- `__glSpanClampRGB` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bac2c
  **Inferred.** Clamps three-component float pixels, 12 bytes apart. Each channel is limited to the range from 0.0 up to its own context float: red at +0x7820, green at +0x7824 and blue at +0x7828. The count is the word at +0xb8 of the record in a1, the source is a2 and the destination is a3.

- `__glSpanClampRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bae54
  **Inferred.** Clamps all four channels of 16-byte RGBA float pixels. The upper limits are the context floats at +0x7820 for red, +0x7824 for green, +0x7828 for blue and +0x7848 for alpha, and the lower limit is 0.0 for every channel. The count is the word at +0xb8 of the record in a1.

- `__glSpanExpandRed` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb154
  **Inferred.** Expands one red float per pixel into a 16-byte RGBA record. Red is the source value times the context float at +0x7820, green and blue are 0.0, and alpha is the context float at +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandGreen` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb240
  **Inferred.** Places each source float in the green slot, multiplied by the context float at +0x7824. Red and blue are written as 0.0, and alpha comes from the context float at +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandBlue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb3a0
  **Inferred.** Writes the source float into blue after scaling by the context float at +0x7828. Red and green are 0.0, and alpha is the context float at +0x7848.

- `__glSpanExpandAlpha` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb528
  **Inferred.** Produces alpha only: each source float is multiplied by the context float at +0x7848 and stored in the fourth slot of the record. Red, green and blue are 0.0. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandRGB` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb6ac
  **Inferred.** Reads three floats per pixel, 12 bytes apart, and writes 16-byte RGBA records. Red, green and blue are multiplied by the context floats at +0x7820, +0x7824 and +0x7828, and alpha is the context float at +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandBGR` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb7dc
  **Inferred.** Converts three-float pixels stored in BGR order into RGBA. The first source float is scaled by +0x7828 into blue, the second by +0x7824 into green, and the third by +0x7820 into red. Alpha is the context float at +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandLuminance` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bb90c
  **Inferred.** Turns one luminance float into a 16-byte RGBA record. Red, green and blue each take the luminance times their own context scale, at +0x7820, +0x7824 and +0x7828. Alpha is the context float at +0x7848 with no multiplication. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandLuminanceAlpha` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bba08
  **Inferred.** Reads luminance and alpha pairs, 8 bytes apart. The luminance is multiplied by the context floats at +0x7820, +0x7824 and +0x7828 to make red, green and blue, and the alpha is multiplied by the context float at +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandRedAlpha` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bbc14
  **Inferred.** Reads red and alpha pairs and writes RGBA. Red is multiplied by the context float at +0x7820, green and blue are 0.0, and alpha is multiplied by the context float at +0x7848. The pairs are 8 bytes apart.

- `__glSpanExpandIntensity` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bbd28
  **Inferred.** Expands one intensity float into all four channels. Each channel is that value times its own context float: red at +0x7820, green at +0x7824, blue at +0x7828 and alpha at +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandRedNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bbf14
  **Inferred.** Unscaled red expansion. Each source float goes straight to red, green and blue are 0.0, and alpha is the constant 1.0 built from 0x3f800000. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandGreenNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bbff8
  **Inferred.** Unscaled green expansion. The source float goes to the green word at record offset 4 of each 16-byte output. Red at offset 0 and blue at offset 8 are 0.0, alpha at offset 12 is 1.0, and the context is not read. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandBlueNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc0dc
  **Inferred.** Places each source float in the blue word at record offset 8 with no scale factor. Red at offset 0 and green at offset 4 are 0.0, and alpha at offset 12 is 1.0. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandAlphaNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc1c0
  **Inferred.** Copies each source float into the alpha slot of a 16-byte record without scaling. The first three slots are 0.0.

- `__glSpanExpandRGBNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc2c0
  **Inferred.** Copies three-float RGB pixels into 16-byte RGBA records unchanged and writes alpha as 1.0. The source stride is 12 bytes and the count is the word at +0xb4 of the record in a1.

- `__glSpanExpandBGRNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc474
  **Inferred.** Reorders three-float BGR pixels, 12 bytes apart, into RGB. The third source float becomes red at offset 0, the second becomes green at offset 4, and the first becomes blue at offset 8. Alpha at offset 12 is 1.0, and no context scale is applied.

- `__glSpanExpandLuminanceNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc574
  **Inferred.** Writes one luminance float into red, green and blue of a 16-byte record and stores 1.0 in alpha. The routine does not read the context.

- `__glSpanExpandLuminanceAlphaNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc64c
  **Inferred.** Takes luminance and alpha pairs, 8 bytes apart, and writes the luminance to red, green and blue at offsets 0, 4 and 8 of each 16-byte record. Alpha is copied to offset 12. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandRedAlphaNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc714
  **Inferred.** Takes red and alpha pairs, 8 bytes apart. Red goes to offset 0, zero goes to offsets 4 and 8, and alpha goes to offset 12, all unscaled. The count is the word at +0xb4 of the record in a1.

- `__glSpanExpandIntensityNS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bc7fc
  **Inferred.** Copies one intensity float into all four channels of the 16-byte record with no scaling.

- `__glSpanScaleRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bca68
  **Inferred.** Multiplies each channel of RGBA float pixels by its own context scale: red by the float at +0x7820, green by +0x7824, blue by +0x7828 and alpha by +0x7848. Pixels are 16 bytes apart, and the count is the word at +0xb4 of the record in a1.

- `__glSpanScaleABGR` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bcce0
  **Inferred.** Converts ABGR float pixels to RGBA while scaling. Output red is source component 3 times +0x7820, green is component 2 times +0x7824, blue is component 1 times +0x7828, and alpha is component 0 times +0x7848. The count is the word at +0xb4 of the record in a1.

- `__glSpanScaleBGRA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bce40
  **Inferred.** Converts BGRA float pixels to RGBA while scaling. Output red is source component 2 times +0x7820, green is component 1 times +0x7824, blue is component 0 times +0x7828, and alpha is component 3 times +0x7848.

Skipped: `__glInitUnpacker`, `__glSpanUnpackBitmap`, `__glSpanUnpackBitmap2`. The two bitmap unpackers are 2872 and 2056 bytes, and `__glInitUnpacker` calls the `__glSpecElementsPerGroup` and `__glSpecBytesPerElement` routines through the GOT, whose bodies I did not decode.

- `__glSpanPreReorderABGR` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bcfa0
  **Inferred.** Copies a run of four-float elements from the source in a2 to the destination in a3 with the four words of each element reversed, so source word 0 lands at destination word 3 and source word 3 at destination word 0. The element count is the word at +0xb4 of the second argument. A remainder loop handles the count modulo four before an unrolled loop of four elements per pass, and a zero or negative count returns at once.

- `__glSpanPreReorderBGRA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bd090
  **Inferred.** Copies four-float elements from a2 to a3 and swaps the first and third words while leaving the other two in place, which turns RGBA elements into BGRA order. The count is read from +0xb4 of the second argument, with the same modulo-four remainder handling and unrolled body as its ABGR sibling.

- `__glSpanPreUnscaleRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bd180
  **Inferred.** Multiplies each four-float element by a per-channel scale held in the first argument's context at +0x7850, +0x7854, +0x7858 and +0x785c, writing the products to the destination in the same channel order. The loaded scales stay in f0, f2, f12 and f14 for the whole loop. The element count comes from +0xb4 of the second argument, and it saves and restores f20 and f22 around the body.

- `__glSpanPostUnscaleRGBA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bd3f8
  **Inferred.** Performs the same per-channel multiply as the pre-unscale routine, with the same four context scales and the same loop shape. The only difference found is the count field: this variant reads the element count from +0xb8 of the second argument where the pre variant reads +0xb4.

- `__glSpanUnscaleABGR` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bd670
  **Inferred.** Scales and reverses in one pass: destination word 0 receives source word 3 times the context scale at +0x785c, and destination word 3 receives source word 0 times the scale at +0x7850. Words 1 and 2 follow the same pairing through the scales at +0x7858 and +0x7854. The count is the word at +0xb8 of the second argument, and f20 and f22 are saved on entry and restored on exit.

- `__glSpanUnscaleBGRA` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bd7d0
  **Inferred.** Scales the four words of each element and swaps the red and blue slots. Destination word 0 is source word 2 times the scale at +0x7858, destination word 2 is source word 0 times +0x7850, and the green and alpha words keep their positions with the scales at +0x7854 and +0x785c. The count is read from +0xb8 of the second argument.

- `__glim_AlphaFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9bfd40
  **Inferred.** Sets the alpha-test comparison and reference. The comparison code in a0 must lie in 0x200 to 0x207, otherwise the routine reports 0x500 through the error reporter at the GOT slot gp-0x6750. The float reference in f12 is clamped to 0.0 below and to the float at context +0xdd8 above, and then stored at +0x720 with the code stored at +0x71c. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 0 is set in both context words at +0x2dec and +0x2de8.

- `__glim_ClearColor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c01f0
  **Inferred.** Stores the four clear colour components. Red and green arrive in f12 and f14, blue and alpha are spilled from a2 and a3 and reloaded as floats. Each component is clamped to the range from 0.0 up to the float at context +0xdd8, then stored at +0x744, +0x748, +0x74c and +0x750. A call made while the word at 0x1018 is 1 reports 0x502. The routine does not touch the state word or any of the context flag words.

- `__glim_ClearDepth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c02fc
  **Inferred.** Sets the depth clear value as a double. The value in f12 is raised to 0.0 when negative, then lowered to the double constant loaded from the GOT-addressed table at 0x46c0 when it exceeds it, and stored at context +0x668. A call made while the word at 0x1018 is 1 reports 0x502 through the error reporter. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2dec.

- `__glim_ClearIndex` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c0398
  **Inferred.** Quantises the colour-index clear value to four fractional bits. The float in f12 is multiplied by 16.0 (the constant 0x41800000), truncated to an integer, ANDed with the index mask at context +0x7810 shifted left four with 0xf OR'd in, converted back to float and divided by 16.0. The result is stored at +0x754. A call made while the word at 0x1018 is 1 reports 0x502. The routine leaves the state word and the context flag words unchanged.

- `__glim_ClearStencil` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c0428
  **Inferred.** Stores the stencil clear value masked to the stencil width. The mask is one shifted left by the bit count at context +0xcb0, minus one, and it is ANDed with the integer in a0. The masked value is stored as a halfword at +0x684. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2dec.

- `__glim_ColorMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c04ac
  **Inferred.** Records the four colour-channel write enables. Each of a0 to a3 is reduced to its low byte and stored as one byte at +0x75c, +0x75d, +0x75e and +0x75f in argument order. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2dec.

- `__glim_ColorMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c0544
  **Inferred.** Selects which material property follows the current colour. The face in a0 must be 0x404, 0x405 or 0x408, and the property in a1 one of 0x1200, 0x1201, 0x1202, 0x1600 or 0x1602. Anything else reports 0x500 through the error reporter, and a call made while the word at 0x1018 is 1 reports 0x502. The accepted pair is stored at +0x568 and +0x56c. When bit 7 of the context word at +0x700 is set, the routine calls the function pointers at +0x2e10 and +0x2ee0 in turn with the context as argument. It does not write the state word.

- `__glim_CullFace` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c0650
  **Inferred.** Chooses the faces to cull. Only 0x404, 0x405 and 0x408 are stored, at context +0x1ec, and any other value reports 0x500 through the error reporter. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 2 is set in the context word at +0x2dec.

- `__glim_DepthMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c0858
  **Inferred.** Sets the depth write enable as a byte at context +0x664, taking the low byte of a0. When the word at +0x700 has bit 0x4000 clear, the byte is stored directly. When that bit is set and the new value is nonzero and different from the old byte, the word at +0x7a4c is copied to +0x7a50 first. When the bit is set and the new value is zero, the routine calls the helper at the GOT slot gp-0x5b88 with the context before storing. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 7 is set in the context word at +0x2dec.

- `__glim_FrontFace` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c0f90
  **Inferred.** Chooses the winding order that marks front-facing polygons. Only 0x900 and 0x901 are stored, at context +0x1f0. Any other value reports 0x500 through the error reporter, and a call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 2 is set in the context word at +0x2dec.

- `__glim_IndexMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c11bc
  **Inferred.** Sets the colour-index write mask. The argument in a0 is ANDed with the index mask word at context +0x7810 and stored at +0x758. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2dec.

- `__glim_LightModelf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c1b94
  **Inferred.** Forwards a single-float light model parameter to the vector form. The name in a0 must be 0xb51, 0xb52 or 0x81f8, which are the local viewer, two-side and colour control light model names. The value in a1 is spilled to the stack and its address is passed to the vector routine reached through the GOT slot gp-0x69b4. Any other name reports 0x500 through the error reporter. The routine reads no state word and writes nothing to the context itself.

- `__glim_LightModeli` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c1d34
  **Inferred.** Forwards a single-integer light model parameter to the integer vector form. The same three names as the float variant are accepted, 0xb51, 0xb52 and 0x81f8, and the integer in a1 is spilled and passed by address to the helper at the GOT slot gp-0x69ac. Other names report 0x500 through the error reporter. It has no state-word check and writes no context field.

- `__glim_LineStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c1da8
  **Inferred.** Sets the line stipple pattern and repeat count. The pattern in a1 is stored as a halfword at context +0x1e0. The repeat count in a0 is forced to 1 when it is zero or negative and capped at 0x100 when it reaches 0x101 or more, then stored as a halfword at +0x1e2. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 1 is set in the context word at +0x2dec.

- `__glim_LogicOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c1fd4
  **Inferred.** Selects the logical raster operation. The code in a0 must lie in 0x1500 to 0x150f, the range of the sixteen logic-op enumerants, and is stored at context +0x740. Anything outside that range reports 0x500 through the error reporter. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2dec.

- `__glErrorCheckMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c21e0
  **Established.** Checks the arguments of a material call and returns a code without storing anything. The face in a0 must be 0x404, 0x405 or 0x408, otherwise it returns 0x500. The property in a1 must be 0x1200, 0x1201, 0x1202, 0x1600, 0x1602 or 0x1603, or 0x1601, otherwise it returns 0x500. For 0x1601 the float in a2 is moved into f12 and tested against 0.0 and 128.0: below 0.0 or above 128.0 returns 0x501. Success returns 0.

- `__glim_Materialfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c229c
  **Inferred.** Updates the material blocks for one face from a float vector. It first calls `__glErrorCheckMaterial` with the face, the property and the first word of the vector, and a nonzero result goes to `__glSetError`. If the word at 0x1018 is 1 and the word at context +0x6db8 is nonzero, it calls the pointer at context +0x2ef4 with the context. Face 0x404 calls the routine at 0xd9c2068 on context +0x590, face 0x405 on +0x5e0, and 0x408 calls it on +0x5e0 first and then +0x590. Unless the property is 0x1603, both results go to `__glValidateMaterial`. Bit 7 of the word at +0x700 set means it calls the pointer at +0x2ee0 last.

- `__glim_Materialf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c244c
  **Inferred.** The single-float form of the material call. Only property 0x1601 is accepted: the float is spilled to the stack and passed by address to `__glim_Materialfv` with the same face. Any other property reports 0x500 through `__glSetError` and stores nothing.

- `__glim_Materiali` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c29c4
  **Inferred.** Integer counterpart of `__glim_Materialf`. The property must be 0x1601; the integer value is spilled and its address goes to `__glim_Materialiv` at 0xd9c2808. Other properties report 0x500 through `__glSetError`.

- `__glim_PolygonMode` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c2bc0
  **Inferred.** Records the rasterisation mode per face. The mode in a1 must be 0x1b00, 0x1b01 or 0x1b02, otherwise 0x500 with nothing stored. For 0x1b00 the routine writes 2 to 0x1018 and ORs 8 into the word at context +0x2dec; for 0x1b01 it writes 2 and ORs 2. Both happen before the face is checked, so a bad face after them still returns 0x500 with 0x1018 already changed. Face 0x404 stores the mode at context +0x1e4, 0x405 at +0x1e8, and 0x408 writes both. Any other face returns 0x500. Success writes 2 to 0x1018 and ORs 4 into +0x2dec. A call while 0x1018 is 1 reports 0x502.

- `__glim_PolygonStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c2cec
  **Inferred.** Uploads a 32 by 32 stipple pattern. The pattern pointer in a0 goes to `__glFillImage` as the seventh argument, with context, 0x20, 0x20, format 0x1900, type 0x1a00 and the destination at context +0x200 before it. The routine then calls the pointer at context +0x3170 with the context. Success writes 2 to 0x1018 and ORs 4 into +0x2dec. A call while 0x1018 is 1 reports 0x502 and does nothing else.

- `__glim_ShadeModel` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c2da0
  **Inferred.** Accepts only 0x1d00 and 0x1d01 and stores the value at context +0x570. Anything else, including values from 0x1d02 up, reports 0x500 and stores nothing. A call while 0x1018 is 1 reports 0x502. On success 0x1018 becomes 2 and bit 0 is set in the word at +0x2dec.

- `__glim_StencilMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c2e34
  **Inferred.** Applies the stencil write mask with no argument check. The mask is ANDed with (1 shifted left by the bit count at context +0xcb0) minus 1, and the result is stored as a halfword at +0x68a. A call while 0x1018 is 1 reports 0x502. On success 0x1018 becomes 2, bit 0 is set in the word at +0x2dec and bit 1 in the word at +0x2de8.

- `__glim_StencilFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c2ec4
  **Inferred.** Stores the stencil test function, reference and mask. The function in a0 must lie in 0x200 to 0x207, otherwise 0x500. A negative reference is clamped to 0. The stencil maximum is (1 shifted left by the bit count at +0xcb0) minus 1; a reference above it is clamped to it, and the mask is ANDed with it. The function is stored as a word at +0x680, the reference as a halfword at +0x686 and the mask as a halfword at +0x688. Success writes 2 to 0x1018 and sets bit 0 of +0x2dec and bit 1 of +0x2de8.

- `__glim_StencilOp` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c2f98
  **Inferred.** Stores the three stencil operation codes for stencil fail, depth fail and depth pass, at +0x68c, +0x690 and +0x694. Each code in a0, a1 and a2 must be 0, 0x150a or 0x1e00 through 0x1e03; a bad code in any position returns 0x500 and nothing is stored. A call while 0x1018 is 1 reports 0x502. On success 0x1018 becomes 2, bit 0 is set in +0x2dec and bit 2 in +0x2de8.

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c6ce0
  **Inferred.** Stores the two polygon offset floats as given: f12 at context +0x1f4 and f14 at +0x1f8. No scaling is applied. A call while 0x1018 is 1 reports 0x502 through `__glSetError`. On success 0x1018 becomes 2 and bit 2 is set in the word at +0x2dec.

- `__glim_PolygonOffset` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c6d50
  **Inferred.** Stores the factor in f12 at context +0x1f4 and multiplies the units in f14 by the float at +0x1fc, storing the product at +0x1f8. A call while 0x1018 is 1 reports 0x502. On success 0x1018 becomes 2 and bit 2 is set in +0x2dec.

- `__glFreeAttributeState` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c6dc8
  **Inferred.** Drains two attribute stacks. The first loop calls `__glim_PopAttrib` with the context while the pointer at +0x3180 is below the end at +0x3184. The base at +0x3180 is then walked for the count at +0xec0 words: each nonzero word is passed as the second argument to the pointer at context +0xc, and the base itself is passed to the same pointer last. The second loop does the same with `__glim_PopClientAttrib`, the pointer +0x3188, end +0x318c and count +0xec4. Both bases are reset to 0 along the way; the second is reset at the end.

- `__glim_EnableClientState` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c6f4c
  **Inferred.** Turns one client array or enable on. The values 0x8074 through 0x8079 go through a jump table: 0x8074 ORs 0xff into +0x14e0 and 0x20 into +0x14ec; 0x8075 ORs 0xf00 and 1; 0x8076 ORs 0xff000 and 2; 0x8077 ORs 0xf0000000 and 8; 0x8078 ORs 1 shifted by (the word at +0x6e34 minus 0x83c7) into +0x14e4, and only when that shift is zero also ORs 0x07f00000 into +0x14e0 and 4 into +0x14ec; 0x8079 ORs 0x08000000 and 0x10. The values 0x8439 and 0x843a set bit 0 and bit 1 of +0x14e8. Anything else reports 0x500. A call while 0x1018 is 1 reports 0x502.

- `__glInitBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c9f40
  **Established.** Fills a buffer object with function pointers. Four GOT words are read and stored: the one at gp-0x6850 goes to +0x34 and +0x38, the one at gp-0x6858 to +0x2c, the one at gp-0x6854 to +0x30, and the one at gp-0x684c to +0x3c. Their values are 0xd9c9ff4, `__glMakeCurrentBuffer` at 0xd9c9f78, `__glLoseCurrentBuffer` at 0xd9c9fb4 and 0xd9ca0d0. The second argument is only spilled.

- `__glMakeCurrentBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c9f78
  **Established.** Copies state into a buffer object. Words 0, 4, 8 and 12 of the source in a1 go to object offsets +0x10, +0x14, +0x1c and +0x28. Context words at +0xe78 and +0xe74 go to object +0x8 and +0x4. The context pointer goes to object +0x0 and the source pointer to +0x44.

- `__glLoseCurrentBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9c9fb4
  **Established.** The reverse of `__glMakeCurrentBuffer`. If the word at object +0x0 is nonzero, it clears that word and copies the saved words at +0x10, +0x14, +0x1c and +0x28 back to the saved block whose pointer is at +0x44, at offsets 0, 4, 8 and 12. A zero word at +0x0 leaves everything alone.

- `Clip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cb6d0
  **Established.** Interpolates between two vertices in single precision, with t as the float bits in a3. The vertex in a1 and the vertex in a2 are blended into the destination a0 at offsets +0x7c, +0x70, +0x74 and +0x78, each word as out = a2 + t * (a1 - a2). After the +0x7c word is stored, the routine stores 1.0 divided by that new value at +0x8c.

- `ClipC` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cb74c
  **Established.** The same interpolation as `Clip`, extended by four more floats at +0x90, +0x94, +0x98 and +0x9c, each computed from the two source vertices with the same t.

- `ClipI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cb818
  **Established.** `Clip` with one extra interpolated word at +0x90, using the same formula. The reciprocal of the new +0x7c value at +0x8c is still stored, and no other offset is touched.

- `ClipBC` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cb8a4
  **Established.** Interpolates eight words from +0x90 through +0xac after the `Clip` block, in steps of four. The pattern is the same out = a2 + t * (a1 - a2) for each word; the reciprocal at +0x8c is included.

- `ClipBI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cb9c0
  **Established.** The `Clip` block with two extra interpolated words, at +0x90 and +0xa0. Nothing from +0x94 through +0x9c or +0xa4 through +0xac is read or written.

- `ClipT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cba64
  **Established.** The `Clip` block followed by four interpolated words at +0x30, +0x34, +0x38 and +0x3c. The +0x90 offset is not touched.

- `ClipIT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cbb30
  **Established.** Combines `ClipI` and `ClipT`: the `Clip` block, then the word at +0x90, then the four words at +0x30 through +0x3c. Every store uses the interpolation out = a2 + t * (a1 - a2).

- `ClipBIT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cbc0c
  **Established.** Interpolates the `Clip` block, the two words at +0x90 and +0xa0, and the four words at +0x30 through +0x3c. The last store is the word at +0x3c.

- `ClipCT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cbd00
  **Inferred.** Blends the vertex record at a1 toward the one at a2 by the float t in a3, writing the result into the record at a0. Twelve words are blended as a2 + t times (a1 minus a2): +0x7c, +0x70, +0x74, +0x78, +0x90, +0x94, +0x98, +0x9c, +0x30, +0x34, +0x38 and +0x3c. The reciprocal of the new word at +0x7c is then stored at +0x8c. No flag word is read, so every call performs the same blend.

- `ClipBCT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cbe1c
  **Inferred.** Blends sixteen words of a vertex record by the parameter t in a3, using a2 plus t times (a1 minus a2). The set is the twelve offsets of 0xd9cbd00 plus the block at +0xa0, +0xa4, +0xa8 and +0xac. It then stores 1.0 divided by the new +0x7c word at +0x8c, and it reads no flag word.

- `ClipF` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cbf88
  **Inferred.** Blends four words at +0x7c, +0x70, +0x74 and +0x78 and stores 1.0 divided by the new +0x7c word at +0x8c. It then tests bit 0x40 of the word at offset 0 of the source at a1. When that bit is set it blends only the word at +0xb0, and when it is clear it blends only the word at +0x68. The blend is a2 plus t times (a1 minus a2), with t arriving in a3.

- `ClipIF` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc040
  **Inferred.** Blends +0x7c, +0x70, +0x74, +0x78 and +0x90 in that order, then stores the reciprocal of the new +0x7c word at +0x8c. A final choice follows the flag bit 0x40 in the word at offset 0 of the source at a1. A set bit blends +0xb0 and a clear bit blends +0x68, and each uses a2 as the base and t from a3.

- `ClipBIF` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc10c
  **Inferred.** Blends +0x7c, +0x70, +0x74, +0x78, +0x90 and +0xa0 unconditionally, then stores the reciprocal of the new +0x7c word at +0x8c. The routine then picks one of +0xb0 or +0x68 by testing bit 0x40 in the first word of the source at a1. Each blend is a2 plus t times (a1 minus a2).

- `ClipCF` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc1ec
  **Inferred.** Blends the block +0x90, +0x94, +0x98 and +0x9c after the four words +0x7c, +0x70, +0x74 and +0x78. It stores the reciprocal of the new +0x7c word at +0x8c. The last blend targets either +0xb0 or +0x68, chosen by the 0x40 bit of the word at offset 0 of the source at a1.

- `ClipBCF` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc2f4
  **Inferred.** Blends the widest set of the flag-selected clip family: +0x7c, +0x70, +0x74, +0x78, the block +0x90 to +0x9c, and the block +0xa0 to +0xac. It stores the reciprocal of the new +0x7c word at +0x8c. The final blend is +0xb0 when bit 0x40 of the first word at a1 is set and +0x68 when it is clear.

- `ClipFT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc44c
  **Inferred.** Blends +0x7c, +0x70, +0x74 and +0x78 and stores the reciprocal of the new +0x7c word at +0x8c. It then branches on bit 0x40 of the first source word to choose the +0xb0 blend or the +0x68 blend. Both paths join at a fixed point where the four words +0x30, +0x34, +0x38 and +0x3c are blended with the same a2 plus t times (a1 minus a2) arithmetic.

- `ClipIFT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc554
  **Inferred.** Blends +0x7c, +0x70, +0x74, +0x78 and +0x90, then stores the reciprocal at +0x8c. A bit-0x40 test on the first word at a1 selects the +0xb0 or +0x68 blend, which join a final run that blends +0x30, +0x34, +0x38 and +0x3c.

- `ClipBIFT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc670
  **Inferred.** Blends +0x7c through +0x78, then +0x90 and +0xa0, and writes the reciprocal at +0x8c. The flag bit 0x40 from the first word of the source at a1 picks +0xb0 or +0x68. The trailing four blends at +0x30, +0x34, +0x38 and +0x3c run on both branches.

- `ClipCFT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cc7a0
  **Inferred.** Blends the four words at +0x7c to +0x78, then the four words at +0x90, +0x94, +0x98 and +0x9c, and stores the reciprocal at +0x8c. A flag-selected blend of +0xb0 or +0x68 follows, decided by the first word of a1. The routine ends with the four blends at +0x30 through +0x3c.

- `__glGenericPickParameterClipProcs` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ccaa0
  **Inferred.** Chooses two clip routines from a pointer table at 0xda4e7c0 and stores them in the context at +0x30c8 and +0x2f40. The selection indices are built from the word at +0x700 (bit 0x40), the byte at +0x585, the byte at +0xc94, the word at +0x76e4 (bits 0x1000 and 0x2000), the word at +0x570 (compared with 0x1d00) and the byte at +0x6e38. Each index is a sum of small constants, with additions of 2, 1, 5 and 10 among others. Entries 5 to 9 of that table are ClipF, ClipIF, ClipCF, ClipBIF and ClipBCF.

- `__glCheckColorTableArgs` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ccb90
  **Inferred.** Validates the arguments of a colour-table call and returns the error as its value without calling `__glSetError`. The target in a1 selects through a jump table indexed by a1 minus 0x80bc (bounded by 0x1a), and an out-of-range target returns 0x500. On the path for internal format 0x2a10, a negative width returns 0x501, a width above 0x8000 divided by four times the `__glElementsPerGroup` result for the format at stack slot 0x30 returns 0x8031, and a width that is neither zero nor a power of two returns 0x501. Zero is the success value.

- `__glim_ColorTableSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cd604
  **Inferred.** Handles a colour-table definition request. It checks the begin-state word at 0x1018: a value of 2 calls the callback at context +0x2e08 and clears the word, and any other non-zero value reports 0x502 through `__glSetError`. The argument check `__glCheckColorTableArgs` runs next, and for targets 0x80bd, 0x80d3, 0x80d4 and 0x80d5 an error of 0x8031 clears the saved internal-format word at sp+0x34 and still reaches the driver. On success the driver pointer at context +0x3178 is called, 0x1018 becomes 2, and 0x11 is ORed into the word at +0x2dec.

- `__glim_ColorSubTable` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cd99c
  **Inferred.** Replaces part of an existing colour table. The same begin-state handling as the full table definition applies, with a 0x502 report for a non-zero begin state other than 2. The check is `__glCheckColorSubTableArgs`, and a zero count or a null data pointer returns without calling the driver. The driver at context +0x317c receives the target, start index, count, format, type and data, and then the state update sets 0x1018 to 2 and ORs 0x11 into the word at +0x2dec.

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ce01c
  **Inferred.** Passes a colour-table parameter request to a local routine at 0xd9cdf20 with the context, target, parameter name, the integer params pointer in a3 and a zero stack slot. The begin-state word at 0x1018 is checked first, and a value of 1 reports 0x502 through `__glSetError` instead.

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ce0a0
  **Inferred.** Hands a colour-table parameter request with float values to the local routine at 0xd9cdf20. The float pointer goes on the stack at sp+0x10 and a3 is zeroed. A begin-state value of 1 reports 0x502 instead of forwarding.

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ce22c
  **Inferred.** Reads a colour-table parameter into an integer array. It rejects a begin-state value of 1 with 0x502 through `__glSetError`. Otherwise it calls the local routine at 0xd9ce12c with the context, target, parameter name, the integer output pointer in a3, and a zero stack slot.

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ce2b0
  **Inferred.** Reads a colour-table parameter as floats. A begin-state value of 1 reports 0x502, and otherwise the local routine at 0xd9ce12c receives the float output pointer on the stack and a zeroed a3.

- `__glContextSetColorScales` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9cf03c
  **Inferred.** Recomputes the colour scale factors when any of the four floats at context +0x7820, +0x7824, +0x7828 and +0x7848 differs from its cached copy at +0xe64, +0xe68, +0xe6c or +0xe70. It divides the float at +0xdd8 by each of the four new values and stores the quotients at +0x7850, +0x7854, +0x7858 and +0x785c, and new over old ratios at +0x7820, +0x7824, +0x7828 and +0x7848. Each colour record in the list at +0x3180 to +0x3184 is then scaled through `__glScaleColorf` at fixed offsets and in a loop over the count at +0xe04 with a stride of 0x74, and the context arrays at +0x574, +0x5c0 and +0x610 are scaled the same way. The routine copies the new values back into the cache at +0xe64, +0xe68, +0xe6c and +0xe70, calls `__glPixelSetColorScales` through the GOT, and returns early when all four values already match.

- `__glSetError` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d02a4
  **Inferred.** Records an error code and runs the error callbacks. It calls `getenv` on the name at 0xda45904, and when a value is present it prints a line through `fprintf` to stderr and calls `abort`. Otherwise it stores the code at context +0xc88 when that word is zero, calls the callback at +0x2e00 with the context and the code if it is set, and then calls the callback at +0x18 with the same arguments.

- `__glim_RenderMode` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d0360
  **Inferred.** Switches the render mode between 0x1c00 (render), 0x1c01 (feedback) and 0x1c02 (select), stored at context +0xc84. A begin-state value of 1 reports 0x502 and returns zero, and any other mode outside those three reports 0x500. Entering feedback with the buffer pointer at +0x1308 zero, or select with the buffer at +0x1328 zero, reports 0x502. The returned value describes the mode being left, with the word count from +0x130c minus +0x1308 shifted right by two for feedback, and the count at +0x1334 for select, or -1 when the overflow byte at +0x1304 or +0x1324 is set.

- `__glFreeBufData` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d09c8
  **Inferred.** Runs a sequence of optional release callbacks in the context. The callback at +0x7808 is called with the block at +0x77c8 and then, if the word at +0x78e4 is set, with the block at +0x78a4. The pointer at +0x79c4 is called with the block at +0x7984, the pointer at +0x7a3c with the block at +0x79fc, and the pointer at +0x7ac0 with the block at +0x7a80. Each call passes the context as the second argument, and a null pointer skips its call.

- `__glim_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d0eb0
  **Inferred.** Defines a one-dimensional convolution filter. Target 0x8010 is the only one accepted and any other value reports 0x500 through `__glSetError`. The argument check runs first, and it writes its out value through a pointer to the stack slot at sp+0x34. The internal format, width and the `__glElementsPerGroup` result go to context +0x308, +0x340 and +0x30c. The driver at context +0x3128 then runs with width, height one, format, type and image.

- `__glim_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d100c
  **Inferred.** Defines a two-dimensional convolution filter with target 0x8011 as the only accepted value. It runs the same begin-state check as the one-dimensional filter, and the check `__glCheckConvolutionFilterArgs` must succeed before any state is written. The driver at context +0x3128 is called, the words at +0x35c, +0x360, +0x394 and +0x398 are stored, and bit 0x10 is ORed into the word at +0x2dec.

- `__glim_SeparableFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1170
  **Inferred.** Defines a separable two-dimensional filter. Only target 0x8012 is accepted, and any other value reports 0x500. The stored words are at context +0x3b0, +0x3b4, +0x3e8 and +0x3ec, followed by the driver at +0x312c, and the function then sets begin state 2 and bit 0x10 in the word at +0x2dec.

- `__glim_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d12dc
  **Inferred.** Fills a one-dimensional convolution filter from the framebuffer. Target 0x8010 is required, and the check receives GL_RGBA (0x1908) and GL_FLOAT (0x1406) in place of the caller's format and type. The stored words are at +0x308, +0x340 and +0x30c as in the uploading variant, and the driver at context +0x3138 receives the target, internal format, x, y and width.

- `__glim_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d142c
  **Inferred.** Fills a two-dimensional convolution filter from the framebuffer. Target 0x8011 is required, and the argument check gets the constant format 0x1908 and type 0x1406. The routine then stores the words at +0x35c, +0x360, +0x394 and +0x398 and calls the driver at context +0x313c before setting begin state 2 and ORing 0x10 into +0x2dec.

- `__glim_GetConvolutionFilterEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d158c
  **Inferred.** Reads a convolution filter back to the caller. The check gets a seeded out-value of 0x1908 (GL_RGBA) at sp+0x3c, so a failed or partial check leaves that default. Once the check succeeds, the driver at context +0x3130 receives the target, format, type and image pointer. A begin-state value of 2 runs the callback at +0x2e08 and clears 0x1018 before the check.

- `__glim_GetSeparableFilterEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d167c
  **Inferred.** Reads a separable filter back, with the argument check first and then a target test for 0x8012 that reports 0x500 on mismatch. The driver at context +0x3134 is called with the target, format, type, the row image, column image and span pointers. The begin-state handling matches the other filter entry points.

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1a28
  **Inferred.** Sets one integer convolution parameter by delegating to `__GLconvolutionParameter` with type 0x1404. Only pname 0x8013 is accepted, and any other name reports 0x500 through `__glSetError`. The value is spilled to the stack and passed by address, and the routine does not check the begin-state word.

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1a88
  **Inferred.** Sets an integer parameter array for a convolution. The names 0x8013, 0x8014 and 0x8015 are accepted, and the call passes the array pointer straight through to `__GLconvolutionParameter` with type 0x1404. Any other name reports 0x500.

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1af8
  **Inferred.** Sets one float convolution parameter. Only pname 0x8013 is accepted, and the spilled float is passed by address to `__GLconvolutionParameter` with type 0x1406. Any other pname reports 0x500 through `__glSetError`.

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1b58
  **Inferred.** Sets a float parameter array for a convolution. The names 0x8013, 0x8014 and 0x8015 pass through to `__GLconvolutionParameter` with a3 set to 0x1406, and any other name reports 0x500.

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1f34
  **Inferred.** Returns the integer parameter value by forwarding all arguments to `__GLgetConvolutionParameter` with type 0x1404. It performs no name check and no state check of its own.

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1f68
  **Inferred.** Returns the float parameter value by forwarding all arguments to `__GLgetConvolutionParameter` with type 0x1406. It has no name check and no state check.

- `__glConvolutionParameterfvEXT_size` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d1f9c
  **Inferred.** Returns the element count for a convolution parameter name. The name 0x8013 gives 4, 0x8014 and 0x8015 each give 0x10, and any other name gives -1.

- `StoreNEVER` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2740
  **Inferred.** Writes the four argument registers a0 to a3 into the caller's argument save area at sp+0, sp+4, sp+8 and sp+0xc, then returns zero in v0. It has no branches and reads no context.

- `StoreLESS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2758
  **Inferred.** Writes the incoming depth into the buffer word only when it is below the stored word, compared unsigned at 0xd9d27a8. The word sits at the base pointer from +0x10 plus four times ((row minus the origin row at sub-block +0xe50) times the stride at +0x1c, plus column minus the origin column at +0xe4c). The depth is the argument shifted right by the count at sub-block +0x7a54 and offset by the word at sub-block +0x7a4c. The return is 1 after a write and 0 when the stored word is kept.

- `StoreLESS_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d27c8
  **Inferred.** Signed form of the less-than store. The compare at 0xd9d2818 is slt rather than sltu, so a stored word with the top bit set compares as negative. Address and depth arithmetic are the same as the unsigned form, and the return is 1 on a write and 0 otherwise.

- `StoreEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2838
  **Inferred.** Commits the depth only on exact equality. The bne at 0xd9d2888 jumps to the return-0 exit when the new depth differs from the stored word; on a match the word is written and 1 is returned.

- `StoreLEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d28a4
  **Inferred.** Keeps the write when the new depth is not greater than the stored word. It sltu-tests stored against new at 0xd9d28f4 and branches to the return-0 exit when the stored word is smaller, so only new values at or below the old one reach the store at 0xd9d2900.

- `StoreLEQUAL_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2914
  **Inferred.** The not-greater test with signed ordering: slt on stored against new at 0xd9d2964 decides the branch, and the store at 0xd9d2970 runs only when the stored word is not below the new depth.

- `StoreGREATER` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2984
  **Inferred.** Writes only when the new depth is strictly above the stored word, in unsigned order. The sltu at 0xd9d29d4 yields stored-less-than-new, and beqz skips the write when that result is zero.

- `StoreGREATER_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d29f4
  **Inferred.** Strictly-greater store with signed compare. The slt at 0xd9d2a44 is stored-against-new, and the write at 0xd9d2a50 happens only when that is true.

- `StoreNOTEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2a64
  **Inferred.** Writes when the depth differs from the buffer word. A beq at 0xd9d2ab4 sends equal values to the return-0 exit before the store at 0xd9d2abc; any other pair stores the depth and returns 1.

- `StoreGEQUAL` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2ad0
  **Inferred.** The at-least store. Unsigned sltu of new against stored at 0xd9d2b20 gives a nonzero value when the new depth is below the word, and bnez takes the exit that returns 0 in that case.

- `StoreGEQUAL_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2b40
  **Inferred.** Signed at-least store. slt of new against stored at 0xd9d2b90 feeds a bnez to the return-0 exit at 0xd9d2ba8, so the store at 0xd9d2b9c is reached only for depths not less than the word.

- `StoreALWAYS` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2bb0
  **Inferred.** Stores the depth without reading the buffer word. The store sw at 0xd9d2c00 sits in the delay slot of the return, and v0 is set to 1 just before, so every call returns 1.

- `StoreLESS_W` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2c04
  **Inferred.** Test-only form of the less-than store. It loads the buffer word and returns a byte that is 1 when the new depth is below it (sltu at 0xd9d2c50, masked with andi 0xff). The buffer is never written.

- `StoreLESS_W_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2c5c
  **Inferred.** Signed test of the same comparison: slt at 0xd9d2ca8 gives the byte result. No store is made, and the address comes from the same origin and stride fields.

- `StoreEQUAL_W` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2cb4
  **Inferred.** Reports whether the new depth equals the buffer word and writes nothing. An xor at 0xd9d2d00 followed by sltiu against 1 gives the byte.

- `StoreLEQUAL_W` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2d10
  **Inferred.** Returns the not-greater result as a byte with no write. sltu of stored against new at 0xd9d2d5c is inverted with xori 1 at 0xd9d2d60.

- `StoreLEQUAL_W_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2d6c
  **Inferred.** Signed not-greater test. slt of stored against new at 0xd9d2db8 is inverted with xori at 0xd9d2dbc and masked to a byte. The word is left alone.

- `StoreGREATER_W` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2dc8
  **Inferred.** Returns, as a byte, whether the stored word is below the new depth (sltu at 0xd9d2e14). It is a read of the buffer that never stores.

- `StoreGREATER_W_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2e20
  **Inferred.** Signed strictly-greater probe: slt of stored against new at 0xd9d2e6c, masked with andi 0xff at 0xd9d2e74. Nothing is written.

- `StoreNOTEQUAL_W` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2e78
  **Inferred.** Probe for inequality. The xor of depth and stored word at 0xd9d2ec4 is turned into a boolean by sltu against the zero register, and that byte is returned without a write.

- `StoreGEQUAL_W` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2ed4
  **Inferred.** At-least probe with unsigned order. sltu of new against stored at 0xd9d2f20 is inverted with xori at 0xd9d2f24, so the byte is 1 when the new depth is not below the word.

- `StoreGEQUAL_W_s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d2f30
  **Inferred.** Signed at-least probe. slt of new against stored at 0xd9d2f7c, inverted at 0xd9d2f80, gives the byte; the buffer is not touched.

- `__glInitDepth24` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d38a4
  **Inferred.** Sets up a 24-bit depth descriptor at a0. It first calls `__glInitBuffer` at 0xd9d38c0 with the four argument registers, then writes the bit count 24 at +0xc and the constant 4 at +0x18. The function-table pointers are set at +0x2c (MakeCurrent), +0x30 (LoseCurrent), +0x38 (Resize), +0x6c (Fix_zbuffer), +0x70 (Pick), +0x78 (Clear), +0x7c (StoreALWAYS) and +0x80 (FetchNon32). The masks are 0x7fffff80 at +0x4c, 7 at +0x58, 0xff000000 at +0x50 and +0x64, 0xffffff at +0x5c, all-ones at +0x48, and a zero byte at +0x60. It returns 0xff000000 whatever `__glInitBuffer` returned.

- `__glInitDepth32` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d3988
  **Inferred.** The 32-bit counterpart. It calls `__glInitBuffer` at 0xd9d39a4 first, then writes 0x20 at +0xc and 4 at +0x18. The table pointers go to +0x2c (MakeCurrent), +0x30 (LoseCurrent), +0x38 (Resize), +0x70 (Pick), +0x78 (Clear), +0x7c (StoreALWAYS), +0x80 (Fetch32) and +0x74 (StoreNEVER). It zeroes the words at +0x50, +0x58 and +0x64, sets all-ones at +0x5c and +0x48, stores 1 in the byte at +0x60, and copies a word from the global at gp-0x61a0 into +0x6c. The return value is -1.

- `__glInitDepth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d3a68
  **Inferred.** Chooses the depth format from the environment. getenv is called with the name at 0xda45aa0 (GLFORCEZBITS); when it returns a value, atoi of a second getenv of the same name gives the bit count, and when it returns null the count is the word at +0xcac of the second argument. A count of 25 or more calls `__glInitDepth32` at 0xd9d3b04, and a smaller count calls `__glInitDepth24` at 0xd9d3aec, each with the caller's a0 and a1. The routine returns the value that call returned.

- `__glGenericFreeDlist` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d3b20
  **Inferred.** Frees a list block whose count word is at +0x10 and whose first payload pointer is at +0xc. A nonzero count makes it call the context function at +0x13a0 with the payload, which takes one from the count. The remaining count entries are read as (callback, argument) pairs from +0x14, and each callback is called with the context and its argument. Last, +0x13a0 is called with the block itself.

- `__glGenericAllocDlist` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d3c24
  **Inferred.** Builds a display-list block sized 0x14 plus 8 bytes for each entry. The first allocation goes through the context slot at +0x1398, and the same slot is called again with the payload pointer and the count to produce the value stored at block +0xc. Word +0 is set to 1 and +4 takes a word from the global at gp-0x66cc. Word +8 comes from gp-0x66c8 when a payload is given and from gp-0x7930 otherwise. The count at +0x10 is the entry count, plus one when a payload is given. A failed first allocation returns 0.

- `__glEvalComputeK` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d40e0
  **Inferred.** Maps an evaluator target to its component count. Keys 0xd90 through 0xdb8 index a 41-entry jump table at 0xda45bc8, and the handler returns from that table: 4, 1, 3, 1, 2, 3, 4, 3 and 4 for keys 0xd90 to 0xd98, the same nine values again from 0xdb0 to 0xdb8, and -1 for the keys between them. Keys outside the range return -1 without the table.

- `__glFreeEvaluatorState` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4384
  **Inferred.** Clears a grid of evaluator slots held in the context at +0x708c. The grid is nine words along each column, four bytes apart, and five columns 0x24 bytes apart. For each nonzero slot the routine calls the context function at +0xc with the context and the slot value, then writes zero to the slot.

- `__glim_Map1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4498
  **Inferred.** Installs a one-dimensional double evaluator map. The word at 0x1018 equal to 1 reports 0x502. Otherwise it calls `__glSetUpMap1` at 0xd9d4510 with the context, target, order and both bounds as floats, and takes back a record whose first word is the component count. A stride below that count reports 0x501. Otherwise `__glFillMap1d` at 0xd9d4570 receives the count, order, stride, the points pointer and the per-target pointer at context +0x3a4c plus four times the target.

- `__glim_Map1f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d458c
  **Inferred.** Single-precision one-dimensional map. It repeats the 0x1018 check, the `__glSetUpMap1` call and the stride-against-count test of the double form. The bounds arrive as floats in a1 and a2 and go to the setup call unconverted, with the stride in a3. The fill step is `__glFillMap1f` at 0xd9d465c, which takes the order from the fifth argument slot and the points pointer from the sixth.

- `__glim_MapGrid1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4b10
  **Inferred.** Sets the one-dimensional grid. The word at 0x1018 equal to 1 reports 0x502, and a count in a0 that is zero or negative reports 0x501; neither error stores anything. Otherwise the two doubles are converted to float and stored at context +0x78c and +0x790, and the count at +0x798.

- `__glim_MapGrid1f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4ba4
  **Inferred.** Single-precision grid setter with the same two error checks. The bounds come in as floats in a1 and a2 and are stored unconverted at +0x78c and +0x790, with the count from a0 at +0x798.

- `__glim_MapGrid2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4c2c
  **Inferred.** Sets the two-dimensional grid. After the 0x1018 check (0x502), both counts must be positive: the count from a0 and the count read from the stack must each exceed zero, or the routine reports 0x501. On success the four doubles are converted to float and stored at +0x79c (u1), +0x7a0 (u2), +0x7ac (v1) and +0x7b0 (v2), and the counts go to +0x7a8 (un) and +0x7b8 (vn).

- `__glim_MapGrid2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4ce4
  **Inferred.** Single-precision two-dimensional grid setter. un comes in a0, u1 and u2 in a1 and a2, vn in a3, and v1 and v2 are read from the stack as floats. Both counts are checked against zero with the 0x501 report, and the stores land at the same offsets as the double form: +0x79c, +0x7a0, +0x7ac, +0x7b0, +0x7a8 and +0x7b8.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4d88
  **Inferred.** Runs a one-dimensional mesh over the mode in a0. The word at 0x1018 selects the path: zero dispatches directly, two first calls the context function at +0x2e08 and then clears the word, and any other nonzero value reports 0x502. Dispatch sends mode 0x1b00 (GL_POINT) to `__glEvalMesh1Point` and 0x1b01 (GL_LINE) to `__glEvalMesh1Line`, both with the context in a0 and the two range arguments passed through in a1 and a2. Any other mode reports 0x500.

- `__glim_EvalPoint1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d4e78
  **Inferred.** Turns a grid index in a0 into a parameter u. The low bound is the float at context +0x78c, the high bound is the float at +0x790, and the count is the integer at +0x798, converted with cvt.s.w. The step is (high - low) / count, and u is low + index * step. An index equal to the count returns the high bound exactly (the beql at 0xd9d4eb0 takes that branch). The routine then calls the function pointer at context +0x2ed4 with the context in a0 and u in a1.

- `__glim_EvalPoint2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d5014
  **Inferred.** Turns two grid indices into a point on a two-dimensional map. The u index in a1 uses the bounds at context +0x79c and +0x7a0 with the count at +0x7a8. The v index in a2 uses the bounds at +0x7ac and +0x7b0 with the count at +0x7b8. An index equal to its count takes the upper bound directly, and otherwise the value is the lower bound plus index times step, computed with madd.s. The routine calls the function pointer at +0x2ed8 with a1 holding u and a2 holding v.

- `__glFillMap1f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d50c8
  **Inferred.** Copies single-precision control points from the fourth argument into the fifth argument, which is a destination array. The test is the bne at 0xd9d50f8: when the row length in a0 equals the row stride in a2, the rows are contiguous. The routine then calls __glMap1_size (the jalr at 0xd9d5104) with the original a0 and a1, and calls memcpy (the jalr at 0xd9d511c) with the destination, the source in a3, and four times the returned count. Otherwise it loops a1 times over rows of a0 floats, advancing the source by a2 floats per row and the destination by a0 floats per row, using lwc1 and swc1 with an inner loop unrolled by four.

- `__glFillMap1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d51e8
  **Inferred.** Converts double-precision control points to single precision, with no memcpy and no size call. The source is the fourth argument, read in rows of a0 doubles with a row stride of a2 doubles. The destination is the fifth argument, written in rows of a0 floats. Each value goes through cvt.s.d (at 0xd9d5238 in the remainder loop and at 0xd9d552c in the unrolled loop, which takes groups of four). The row loop runs a1 times and skips everything when a1 is zero or less (the blez at 0xd9d51f4), and the a0 values left after the groups of four go through the remainder loop.

- `__glFillMap2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d52ec
  **Inferred.** Copies single-precision patch data in blocks. A fast path runs when a0 equals the fifth argument (the bne at 0xd9d5328) and a3 equals a0 times a2 (the multu and bne at 0xd9d5330 and 0xd9d5338), meaning the block is contiguous. It calls __glMap2_size (the jalr at 0xd9d5340) with a0 and a1, then passes four times its result to memcpy (the jalr at 0xd9d535c), copying from the sixth argument into the seventh. The general path nests three loops. The outer loop runs a1 blocks, the middle loop runs a2 rows per block, and the inner loop copies a0 floats. The source moves by the fifth argument per row and by the block stride in a3 per block, and the destination moves by a0 floats per row.

- `__glFillMap2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d545c
  **Inferred.** Converts double-precision patch data to single precision using the same block layout as __glFillMap2f. Its arguments are the row length in a0, the block count in a1, the rows per block in a2 and the block stride in a3 (counted in doubles). The fifth argument is the source row stride in doubles, the sixth is the source pointer, and the seventh is the float destination. Every element goes through cvt.s.d (the one at 0xd9d552c in the unrolled loop), the outer loop exits when a1 is zero or less (the blez at 0xd9d5474), and the routine makes no calls and has no contiguous shortcut.

- `__glSetUpMap1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d55bc
  **Inferred.** Stores a one-dimensional evaluator. Targets 0xd90 to 0xd98 go through a nine-entry jump table keyed on a1 minus 0xd90, and any other target reports 0x500 through __glSetError. u1 is the a3 bit pattern and u2 is the stack slot at 0x48. The routine reports 0x501 when u1 equals u2, when the order in a2 is zero or negative, or when the order is greater than the limit word at context +0xeb8. On success it writes the order at +0x6e50 + 24 * index, u1 at +0x6e54 and u2 at +0x6e58. It then calls __glMap1_size with the word at +0x6e4c and the order. The routine at the function pointer in the context at +8 gets the old pointer from the slot at +0x708c + 4 * index, plus four times the returned size, and its return value is stored back into that slot.

- `__glSetUpMap2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d5700
  **Inferred.** Stores a two-dimensional evaluator. Targets 0xdb0 to 0xdb8 go through a nine-entry jump table, and anything else reports 0x500 through __glSetError. The u order is in a2 and the v order in a3, and both must be positive and at most the limit at context +0xeb8, else 0x501 is reported. The stack slots 0x48 to 0x54 hold u1, u2, v1 and v2, and the routine reports 0x501 when u1 equals u2 or v1 equals v2. The record at context +0x6f24 + 40 * index holds the u order at +0x6f28, the v order at +0x6f2c, u1 at +0x6f30, u2 at +0x6f34, v1 at +0x6f38 and v2 at +0x6f3c. __glMap2_size receives the word at +0x6f24 with the two orders. The pointer at context +8 is then called with the old pointer from the slot at +0x70b0 + 4 * index, and the return value is stored back there.

- `__glim_PassThrough` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d946c
  **Inferred.** Emits a pass-through feedback token when the render mode is feedback. The state word at 0x1018 equal to 1 reports 0x502 through __glSetError. Otherwise the context is loaded from 0x1010, and if the render mode word at context +0xc84 equals 0x1c01 (GL_FEEDBACK), the routine calls __glFeedbackTag twice: first with the float 1792.0 (bit pattern 0x44e00000, the pass-through token 0x700), then with the float argument from f12 that it spilled to its frame. Any other render mode returns without writing anything.

- `__glFeedbackPoint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d9ad4
  **Inferred.** Writes the point feedback token and passes its arguments on. It calls __glFeedbackTag with the float 1793.0 (bit pattern 0x44e02000, the point token 0x701) and the incoming a0. Afterwards it reloads a0 and a1 from its frame at sp+0x20 and sp+0x24 and calls the routine at 0xd9d9550, the code directly after __glFeedbackTag.

- `__glFeedbackBitmap` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d9a78
  **Inferred.** Tags a bitmap record. The routine calls __glFeedbackTag with 0x44e08000, which is the float 1796.0 and token 0x704, and the incoming a0. It then restores a0 and a1 and tail-calls the routine at 0xd9d9550 with them.

- `__glFeedbackDrawPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d9a1c
  **Inferred.** Tags a draw-pixels record with the constant 0x44e0a000 (the float 1797.0, token 0x705) through __glFeedbackTag, then hands the two saved arguments to the routine at 0xd9d9550. The frame layout matches the point and bitmap variants, with a0 saved at sp+0x20 and a1 at sp+0x24.

- `__glFeedbackCopyPixels` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d99c0
  **Inferred.** Tags a copy-pixels record. Its first call to __glFeedbackTag passes the constant 0x44e0c000 (the float 1798.0, token 0x706). The second call forwards a0 and a1, saved on entry, to the routine at 0xd9d9550 that follows __glFeedbackTag.

- `__glFogVertexLinear` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9dabc4
  **Inferred.** Computes a linear fog factor from the vertex value at a1+0x68. The routine takes the absolute value of that float, subtracts it from the float at context +0x650, and multiplies by the float at +0x654. A negative product returns 0.0. Otherwise the result is clamped above by the float at context +0xdd8, and the clamped value is returned in f0.

- `__glim_ResetHistogramEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e1044
  **Inferred.** Clears the histogram accumulator. It reports 0x502 through __glSetError when the state word at 0x1018 is 1, and 0x500 when the target in a0 is not 0x8024 (GL_HISTOGRAM). Otherwise it calls __glElementsPerGroup with the word at context +0x4fc, multiplies the returned count by the word at +0x4e0, and calls memset on the buffer whose pointer sits at +0x4dc. The fill is zero for four bytes per element.

- `__glDoEvalCoord1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d62f4
  **Inferred.** A save-and-restore wrapper around the one-parameter evaluator. It copies the 16-byte vectors at context +0xc0, +0xd0 and +0xe0 to the stack, then calls the routine at 0xd9d5f40 (DoEvalCoord1) through the GOT slot at gp-0x7fc0 plus 0x5f40. The arguments are the context in a0, the float u in a1, the address context +0xe0 in a2, and a3 unchanged. After the call the three saved vectors are copied back, so any writes the callee made to those vectors are discarded.

- `__glDoEvalCoord2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9d71e4
  **Inferred.** The two-parameter version of the same save-and-restore wrapper, and the only difference is what it passes on. The float u arrives in a1 and the float v in a2. The routine sets a3 to zero and calls the routine at 0xd9d69c4 (DoEvalCoord2) through the GOT slot at gp-0x7fc0 plus 0x69c4, then restores the vectors at context +0xc0, +0xd0 and +0xe0.

- `__glim_HistogramEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e1100
  **Inferred.** Configures the histogram. A word at 0x1018 equal to 1 reports 0x502 through `__glSetError`, and only targets 0x8024 and 0x8025 are accepted, with 0x500 for anything else. The routine calls `__glProcessHistogramArguments` with the saved width in a0 and the saved internal format in a1, and a nonzero return goes to `__glSetError`, except that the proxy target 0x8025 with return 0x8031 clears eight words at context +0x50c through +0x528 instead. On the normal path it stores width minus one at +0x504, the output word from sp+0x30 at +0x4fc, and calls the function pointer at context +8 for a block sized from the word at sp+0x4c times the width, then clears that block with `memset`. The record the routine finishes on receives the width, the format, the low byte of the sink argument, and the five processed words.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e1d70
  **Inferred.** Forwards a histogram query to `__glGetHistogramParameters`. It sets up a 0x20-byte frame, loads the callee from its GOT slot, and passes the caller's first three argument registers through unchanged with 0x1404 (GL_INT) in a3.

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e1da4
  **Inferred.** Float variant of the histogram parameter query. It makes the same call to `__glGetHistogramParameters` as the integer variant, with 0x1406 (GL_FLOAT) in a3 and the caller's a0 to a2 left as they arrived.

- `__glim_MinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e203c
  **Inferred.** Configures the minmax operation. It rejects a 0x1018 word equal to 1 (0x502) and any target other than 0x802e (0x500). It calls `__glProcessHistogramArguments` with a0 set to 2, the saved internal format in a1, and two stack outputs, and a nonzero return goes to `__glSetError`. On success it writes 1 to the byte at context +0x554, the internal format to +0x558, the processed word from sp+0x24 to +0x55c, and the low byte of the sink argument to +0x560, then calls `__glResetMinmax` with the context.

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e2128
  **Inferred.** Clears the minmax state for the current context. The context pointer is read from the word at 0x1010, and a 0x1018 word of 1 reports 0x502. Target 0x802e is the only accepted value, and any other target reports 0x500 before `__glResetMinmax` is called on the context.

- `__glim_GetMinmaxEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e21b4
  **Inferred.** Copies the minmax result back to the caller. A 0x1018 word of 0 leaves the routine free to continue, a value of 2 calls the function pointer at context +0x2e08 and then clears 0x1018, and any other nonzero value reports 0x502. A target other than 0x802e reports 0x501, and a nonzero return from `__glCheckGetArguments` on the saved format and type ends the call. If the byte at context +0x554 is zero the routine returns without copying. Otherwise it initialises the memory-get, pack and unpack state from the block at +0x534, stores 0x1406 (GL_FLOAT) as the type of a local record, runs `__glGenericPickCopyImage` on that record, and calls `__glResetArray` on the pointer at +0x55c when the low byte of the reset argument, at sp+0x247, is set.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e24bc
  **Inferred.** Reads one minmax parameter as integers. It calls `__glGetMinmaxParameters` through a GOT-loaded pointer, with 0x1404 (GL_INT) in a3, after a 0x20-byte frame is set up and before it is torn down again.

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e24f0
  **Inferred.** Reads one minmax parameter as floats through `__glGetMinmaxParameters`, passing 0x1406 (GL_FLOAT) in a3 and nothing else of its own.

- `__glConvertStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e2530
  **Inferred.** Copies the 128-byte polygon stipple pattern from context +0x200 to context +0x7538. The loop runs eight times over 16-byte blocks and rebuilds each 4-byte word from four byte loads, first byte in the high bits. On this big-endian target that leaves the bytes in their original order, so the routine is a plain copy. No state is checked.

- `__glImageSize` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e2608
  **Inferred.** Returns the byte count of an image. It asks `__glSpecElementsPerGroup` for the element count of the format in a2, and for the type in a3 it asks `__glSpecBytesPerElement` unless the type is 0x1a00 (GL_BITMAP). For bitmaps a row takes (width + 7) >> 3 bytes, otherwise bytes per element times width. The result is row bytes times height times the element count.

- `__glScaleColorf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e38c0
  **Inferred.** Multiplies a four-float colour from a2 by four context factors and writes the products to a1. Red, green and blue use the floats at +0x7820, +0x7824 and +0x7828, and alpha uses the float at +0x7848. Nothing is clamped.

- `__glUnScaleColorf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e3e20
  **Inferred.** Multiplies a four-float colour from a2 by a separate set of context factors at +0x7850, +0x7854, +0x7858 and +0x785c, storing the products in a1. Nothing is clamped and no other context fields are read.

- `__glClampColorf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e3a10
  **Inferred.** Clamps a four-float colour from a2 into a1. Each component is compared with zero and then with the upper bound at context +0xdd8, which is the same bound for all four, and the value is stored clamped to that range.

- `__glScaleColori` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e3abc
  **Inferred.** Converts a four-integer colour from a2 to floats in a1. Each integer c is turned into 2c+1 with a convert and a multiply-add by 2.0 and 1.0, then multiplied by the float at +0xdf0 and by its channel factor, which is +0x7820, +0x7824, +0x7828 or +0x7848 for alpha.

- `__glClampRGBColor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e3fa8
  **Inferred.** Clamps a four-float colour from a2 into a1, with a different ceiling for each channel. The floor is zero, and the ceiling is the channel factor read from context +0x7820, +0x7824, +0x7828 or +0x7848 for alpha.

- `__glClampAndScaleColorf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e3908
  **Inferred.** Multiplies each component of the colour in a2 by its context scale, at +0x7820 for red through +0x7848 for alpha, then clamps the product to the range from zero up to that same scale. The result is stored in a1.

- `__glUnScaleColori` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e3e68
  **Inferred.** Turns a four-float colour from a2 into four integers in a1. Each component is multiplied by its channel factor at +0x7850, +0x7854, +0x7858 or +0x785c, then by the float at +0xdec and by the float at +0xdd4. Each product goes through `floorf`, and the truncated result is stored as an integer.

- `__glChangeOneMaterialColor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e4a18
  **Inferred.** Refreshes one material colour record. When the word at 0x1018 is 1 and the word at context +0x6db8 is nonzero, it first calls the function pointer at +0x2ef4. It then calls the pointer at +0x2ef0 with the context, the word at +0x6e18 and the word at +0x6e1c. Unless bit 0x40 of the word at +0x700 is set, it finishes with a call to `__glClampAndScaleColor`.

- `__glChangeBothMaterialColors` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e4ab0
  **Inferred.** Refreshes both front and back material records. It takes the same pre-call through +0x2ef4 when 0x1018 is 1 and +0x6db8 is nonzero, then calls the pointer at +0x2ef0 twice, once with the addresses of the context blocks at +0x590 and +0x6dc4 and once with +0x5e0 and +0x6dec. It ends with the same conditional `__glClampAndScaleColor` call gated on bit 0x40 at +0x700.

- `__glValidateMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e5294
  **Inferred.** Checks the front and back material records. It calls `ComputeMaterialState` on the context with the blocks at +0x590 and +0x6dc4, passing the caller's a1 as the last argument, then calls it again on +0x5e0 and +0x6dec with the caller's a2. Last, it calls `ComputeLightMaterialState` with the context and the caller's a1 and a2.

- `__glGenericPickColorMaterialProcs` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e53b4
  **Inferred.** Chooses the colour-material handlers after a colour-material change. When the byte at context +0xc94 is zero it stores `__glNop` at +0x2ee0 and returns. Otherwise, with bit 0x80 of the word at +0x700 set, the face in +0x568 selects the update routine at +0x2ee0: 0x404 and 0x405 pick `__glChangeOneMaterialColor` with the front or back blocks, and 0x408 picks `__glChangeBothMaterialColors`. The property in +0x56c then selects one of five routines for +0x2ef0, with 0x1200 giving ambient, 0x1201 diffuse, 0x1202 specular, 0x1600 emission and 0x1602 ambient and diffuse together. Any other property leaves +0x2ef0 unchanged.

- `__glStippleLine` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9e8694
  **Inferred.** Packs the line stipple pattern into 32-bit words, one word per chunk of up to 32 pixels, with the
  first pixel in the most significant bit. The 16-bit pattern is the halfword at context +0x1e0 and the repeat
  factor is the signed halfword at +0x1e2. The pattern bit index and the repeat counter come from the words at
  +0x7490 and +0x7494 and are written back on exit. The pixel count is the word at +0x7628 and the output pointer
  is the word at +0x7708. The routine counts the pixels whose pattern bit is zero; it returns 0 when that count
  is zero and 1 otherwise, and sets the byte at +0x770c to 1 when every pixel was zero.

- `__glle_Bitmap` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ea108
  **Inferred.** Replays a bitmap record from a display list. The context pointer is read from absolute address
  0x1010 and the state word at absolute 0x1018 is tested first. A value of 1 reports 0x502 through the GOT slot
  at -0x6750(gp) and skips the dispatch. A value of 2 calls the function at context +0x2e08, then stores zero to
  0x1018. The dispatch then calls the function at context +0x30e0 with the context and the record address plus
  0x20 as its data pointer. Every path returns the record address plus the size word at +0x18 plus 0x20.

- `__gllei_PolygonStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ea1cc
  **Inferred.** Hands a 128-byte block (32 by 32 stipple bits) to the context. A state word at 0x1018 equal to 1 reports 0x502
  through the GOT slot at -0x6750(gp) and returns without storing anything. Otherwise the routine passes
  context +0x200, the caller's second argument unchanged, and 0x80 to the GOT slot at -0x5964(gp), then calls the
  function at context +0x3170 with the context.

- `__gllc_PolygonStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ea248
  **Inferred.** Compiles a polygon stipple into a display-list record. It first calls the GOT slot at
  -0x64fc(gp) with 32, 32, 0x1900 and 0x1a00, the last two being GL_COLOR_INDEX and GL_BITMAP. The context pointer
  from absolute 0x1010 and the caller's pointer are kept on the stack. The result goes into the call at
  -0x79a8(gp) with the context, and when that returns zero the routine stops. A nonzero result gets the halfword
  0x65 at offset +0xc. The GOT slot at -0x64f0(gp) then receives the context, 32, 32, 0x1900, and on the stack
  0x1a00, the caller's pointer and the result plus 0x10. The final call goes to the GOT slot at -0x79a0(gp) with
  the context, the saved result and the word loaded from the GOT slot at -0x6418(gp).

- `__glle_PolygonStipple` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ea30c
  **Inferred.** Replays a polygon stipple record. It calls the GOT slot at -0x6420(gp) with the context from
  absolute 0x1010 and the record pointer, then calls the GOT slot at -0x64fc(gp) with 32, 32, 0x1900 and 0x1a00.
  The return value is the record pointer plus that second call's result. The routine writes only its own stack
  frame.

- `__glle_TexImage1D` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9eb490
  **Inferred.** Forwards seven record words, offsets +0x0 through +0x18, to the GOT slot at -0x5e7c(gp) after the
  context from absolute 0x1010. The first three go in a1 to a3 and the rest on the stack. The fifth stack argument
  is the record address plus 0x20. The word at +0x1c is the pixel byte count, and the routine returns the record
  address plus that count rounded up to a multiple of four, plus 0x20.

- `__glle_TexImage2D` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9eb520
  **Inferred.** Hands record words +0x0 through +0x1c to the GOT slot at -0x5e74(gp), again with the context from
  0x1010 first. The data pointer passed is the record address plus 0x24. The byte count is the word at +0x20, and
  the return value is the record address plus that count rounded up to four, plus 0x24.

- `__glle_TexImage3DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ebcf4
  **Inferred.** Passes record words +0x0 through +0x20 and the context from absolute 0x1010 to the GOT slot at
  -0x5e6c(gp). The pointer argument is the record address plus 0x28, on the stack. The count word is +0x24, and
  the routine returns the record address plus that count rounded up to four plus 0x28.

- `__glle_TexSubImage1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ec110
  **Inferred.** Calls the GOT slot at -0x5cfc(gp) with the context from 0x1010 and record words +0x0 through +0x14.
  The pointer argument is the record address plus 0x1c. The return value is the record address, plus the word at
  +0x18 rounded up to four, plus 0x1c.

- `__glle_TexSubImage2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ec4b0
  **Inferred.** Calls the GOT slot at -0x5cf4(gp) with the context from absolute 0x1010 and record words +0x0
  through +0x1c. The pointer argument is the record address plus 0x24. The count is the word at +0x20, and the
  return value is the record address plus that count rounded up to four plus 0x24.

- `__glle_TexSubImage3DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ec87c
  **Inferred.** Passes the context from absolute 0x1010 and record words +0x0 through +0x24 to the GOT slot at
  -0x5cec(gp). The pointer argument is the record address plus 0x2c, placed on the stack. The word at +0x28
  gives the count, and the routine returns the record address plus that count rounded up to four plus 0x2c.

- `__glle_Map1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ea4d0
  **Inferred.** Gets a component count for the target word at record +0x0 from the GOT slot at -0x66ac(gp). It then
  calls the function at +0x14c of the table pointed to by the context word at +0x17b8, with the record's words at
  +0x0, +0x4 and +0x8 and that count as the fourth argument. The word at +0xc and the record address plus 0x10 go
  on the stack. A second GOT call at -0x6648(gp) takes the count and the word at +0xc. The routine returns the
  record address plus four times that second result, rounded up to four, plus 0x10.

- `__glle_Map2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ea8a8
  **Inferred.** Obtains the same kind of target count from the GOT slot at -0x66ac(gp). The word at +0x18 is
  multiplied by that count, and the product becomes the fourth argument of the function at +0x154 in the table at
  context +0x17b8. The two float words at +0x10 and +0x14 and the word at +0xc go on the stack, followed by the
  count and the word at +0x18. A second GOT call at -0x663c(gp) takes the count, the word at +0xc and the word at
  +0x18. The return value is the record address plus four times that result, rounded up, plus 0x1c.

- `__glMakeIdentity` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9eea80
  **Inferred.** Writes an identity matrix into the 4x4 float block at a0. The sixteen words sit at offsets 0x0 through 0x3c. The diagonal entries at 0x0, 0x14, 0x28 and 0x3c get 1.0, built from the immediate 0x3f80, and the other twelve get 0.0. The integer 4 goes to offset 0x40 after them. The routine has no frame and makes no calls.

- `NewBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef2d0
  **Inferred.** Allocates one arena block. A 16-byte header comes from the allocator whose function pointer is the first word of a0, and the data area of the requested size a1 comes from the same allocator. The header keeps the size at +0, zero at +4, the data pointer at +8 and zero at +0xc. If the data allocation returns 0, the header goes back through the free slot at +0xc of a0 and the routine returns 0.

- `__glNewArena` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef3d4
  **Inferred.** Creates an arena whose allocator is the struct at a0. A 12-byte control record comes from the allocator's alloc slot, and its first word is set to a0. NewBlock then makes the first block at 0x40000 bytes. On success the block pointer is stored at both +4 and +8 of the record and the record is returned. If the block cannot be made, the record goes back through the free slot at +0xc and the routine returns 0.

- `__glArenaAlloc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef504
  **Inferred.** A bump allocator over the control record a0. The request in a1 is rounded to (a1 & ~7) + 8 bytes. The current block, the pointer at a0+8, holds capacity at +0, used bytes at +4 and data at +8. When the remaining room covers the rounded size, the routine returns the data plus the used count and advances the used count. Otherwise it asks NewBlock for a block of the larger of the rounded size and 0x40000, links it through +0xc of the old block, makes it current, and serves the request from its start. It returns 0 if NewBlock fails.

- `__glArenaFreeAll` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef5c8
  **Inferred.** Rewinds the arena control record a0 to its first block, which is the pointer at a0+4. That block keeps its capacity and data, but its used count at +4 and its next link at +0xc are cleared, and it becomes current at a0+8. Every later block in the chain is passed to DeleteBlock with the allocator from the first word of a0.

- `__glDeleteArena` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef47c
  **Inferred.** Destroys the arena control record a0. It walks the block chain from the first block at +4 and passes each block to DeleteBlock, with the allocator from the first word of a0. Then it frees the control record itself through the free slot at +0xc of that allocator. A chain with no blocks still reaches the final free.

- `freeLeafData` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef790
  **Inferred.** Passes its two arguments unchanged to the free slot at +0xc of a0. Its only other work is saving and restoring ra and gp around that one indirect call.

- `reallocLeafData` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9eff00
  **Inferred.** Resizes the entry array of the leaf record a1. The entry count is the word at +8 minus the word at +4, plus one. The old array pointer from +0xc goes to the realloc slot at +8 of a0, with a byte size of four times the count. On success the new pointer is stored at +0xc and the routine returns 1. When the realloc returns 0, the routine returns 0 and leaves +0xc as it was.

- `allocLeafData` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9efdf4
  **Inferred.** Gives the leaf record a1 a fresh entry array. The count is the word at +8 minus the word at +4, plus one. The array is taken from the alloc slot of a0 at four bytes per entry and stored at +0xc of the leaf. A null allocation makes the routine return 0. Otherwise every entry in a positive count is filled with the word at +4 of the record that the leaf's +0x10 pointer names, and the routine returns 1.

- `__glNamesUnlockDataList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9f2350
  **Inferred.** Drops one lock on each record named in the pointer array at a2. The count is a1, and a count of zero or less does nothing. For each pointer the word at offset 0 of the record is decremented. When that count reaches zero the record goes back through the free slot at +0xc of the allocator a0.

- `__gllc_DrawRangeElements` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ee984
  **Inferred.** Rejects a range whose end a2 is below its start a1. In that case it calls the GOT entry at gp-0x7964 with the context pointer and returns. Otherwise it forwards mode in a0, the spilled count from a3, and the two stack arguments for type and indices to the GOT entry at gp-0x636c.

- `__gllc_DrawElements` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ee804
  **Inferred.** Checks an element draw before emitting it. A negative count calls the GOT entry at gp-0x7964 with the context pointer. A mode of 10 or more, or a type other than 0x1401, 0x1403 or 0x1405, calls the GOT entry at gp-0x7960 the same way. Otherwise it calls the GOT entry at gp-0x5894 with the four arguments unchanged. It then reads each index as a byte, a halfword or a word, by type, and passes each to the GOT entry at gp-0x57a0. A count of zero or less skips that loop. The routine ends with a call to the GOT entry at gp-0x584c.

- `__glle_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ecc30
  **Inferred.** Records a one-dimensional convolution filter for the context. A state word at 0x1018 of 2 makes the routine call the context function at +0x2e08 and then clear the word. Any other nonzero state reports 0x502 through `__glSetError` and only computes the end of the record. In the normal case the word at +4 of the record goes to context +0x308, and the same word goes to __glElementsPerGroup, whose result goes to +0x30c. The word at +8 also goes to context +0x340. The context function at +0x3128 receives the context, the word at +8, the count 1, the word at +0xc, the word at +0x10, the payload at a0+0x18, the enumerant 0x8010 and the count 1 again. The return value is the address past the record: a0 plus the byte length at +0x14 rounded up to four, plus 0x18.

- `__glle_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ed120
  **Inferred.** Records a two-dimensional convolution filter with a 0x1c-byte record header. The state word at 0x1018 is handled as in the one-dimensional entry. The format word at +4 goes to context +0x35c, and __glElementsPerGroup's result goes to +0x360. The words at +8 and +0xc go to context +0x394 and +0x398. The enumerant the context function at +0x3128 receives is the record's first word, not a constant, and the payload starts at a0+0x1c. The return value is a0 plus the byte length at +0x18 rounded up to four, plus 0x1c.

- `__glle_SeparableFilter2DEXT` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ed604
  **Inferred.** Records a separable two-dimensional filter that carries two payloads. A state word at 0x1018 of 2 flushes through the context function at +0x2e08 and clears the word, and any other nonzero value reports 0x502. The format at +4 goes to context +0x3b0 and through __glElementsPerGroup to +0x3b4. The words at +8 and +0xc go to +0x3e8 and +0x3ec. The context function at +0x312c gets the enumerant 0x8012 and the count 1 on the stack, the row payload at a0+0x20, and a column payload that starts after the row payload. The row byte length is at +0x18 and the column byte length is at +0x1c. The return value is a0 plus those two lengths summed, rounded up to four, plus 0x20.

- `__glNamesNewArray` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9ef650
  **Inferred.** Builds a 100-byte names record from the allocator at a0. A failed allocation reports 0x505 through `__glSetError` and returns 0. On success the word at +8 is set to 1, the words at +0 and +4 to zero, and +0xc to a 24-byte-stride table entry indexed by a1. The words at +0x10 and +0x14 start as 16 and 3. Sixteen 24-byte blocks are then allocated into the slots at +0x18 through +0x54. A failed block allocation stores the count made so far at +0x10 and stops that loop. Three 20-byte blocks fill the slots at +0x58 through +0x60, and a failure there stores the count at +0x14. The record is returned.

- `__glRenderAliasedPoint1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9f64c0
  **Inferred.** Draws one aliased point from the vertex in a1. The floats at vertex +0x80, +0x84 and +0x88 are
  truncated to integers and stored at sp+0x3c, sp+0x40 and sp+0x44. A value at or above 2^31 (constant 0x4f000000)
  has 2^32 (0x4f800000) subtracted before truncation. When the byte at +0x7738 is set, the float at +0x7718 is
  converted the same way and added to the z word. Four words from the record that the vertex word at +8 points to
  are copied to sp+0x48. When bit 3 of the word at +0x76e4 is set, the float at +0xdd8 is divided by the vertex w at
  +0x3c, x, y and z at +0x30, +0x34 and +0x38 are multiplied by that quotient, and the pointer at +0x30ec is called
  with a0 = context, a1 = sp+0x48, a2 = scaled x, a3 = scaled y, 5th argument = scaled z and 6th argument = the
  +0xdd8 float. Last, the pointer at +0x3140 is called with the word at +0x2df0 as a0 and sp+0x3c as a1.

- `__glRenderAliasedPointN` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9f66c0
  **Inferred.** Draws a point of the size in the word at +0x1d0 as a square of pixels around the vertex in a1. The
  low bit of that word picks the rounding. When it is set, the truncated x and y are used as they are. When it is
  clear, the float at +0xdd4 is added to x and y before truncation. The size half (the word shifted right one bit)
  is subtracted from each truncated coordinate to give the lower bounds, and the full word is added to each lower
  bound to give the upper bounds. The z conversion and the +0x30ec call match the single-pixel routine, with the
  four-word block at sp+0x70. The pointer at +0x3140 is then called for every x in [lower, upper) and every y in the
  same range, with the word at +0x2df0 as a0 and a three-word block of x, y and z as a1. Nothing is called when either
  range is empty.

- `__glBeginPoints` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9f6950
  **Inferred.** Point-mode setup. It writes the address of context +0x31a8 to +0x3190, copies the word at +0x2eb0 into
  +0x2eac, and stores two GOT-slot words (gp-0x6294 and gp-0x61a0) into +0x2f24 and +0x2ef4. It makes no call.

- `__glEndPoints` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9f6980
  **Inferred.** Closes point mode by writing two words loaded from GOT slots gp-0x61a0 and gp-0x619c into +0x2eac and
  +0x2f24. It does not touch +0x3190 and makes no call.

- `__glClipPolygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9facb8
  **Inferred.** Records the vertex list in a1 at context +0x6da8, then builds a stack array of record pointers for the
  a2 records, stepping 0xc0 bytes per record. The word at offset 4 of each record is ANDed into an accumulator that
  starts at -1 and ORed into a second accumulator that starts at 0. If the AND is zero, the routine calls the pointer
  in GOT word gp-0x628c with a0 = context, a1 = the stack array, a2 = the count and a3 = the OR accumulator. It makes
  no call when the AND is nonzero or the count is zero.

- `__glFillFlatFogTriangle` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fc9e0
  **Inferred.** Fills one flat-fogged triangle from the vertices in a1, a2 and a3. It calls the pointer at +0x30f4
  three times, once per vertex, each time with a temporary block (sp+0x68, sp+0x58, then sp+0x48), the context, the
  word at +8 of the list entry named by the pointer at +0x6da8, and the word at +0xb0 of that vertex. It then saves
  the word at +8 of each vertex, points those words at the three temporary blocks, and calls the pointer at +0x2f34
  with the context, the three vertices and the byte at sp+0x8b (stored as the 5th argument). The saved +8 words are
  written back afterwards.

- `__glMatValidateVbuf0N` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcb10
  **Inferred.** Walks 0xc0-byte records from context +0x31a8 up to the end pointer in the word at +0x3190. The first
  word of each record is compared with the mask at +0x6db8. When some mask bit is clear in that word, the pointer at
  record +0xc is called with the context, the record and the mask. Records whose word already covers the mask are
  skipped. No value is returned.

- `__glMatValidateVbuf0V1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcba4
  **Inferred.** Tests two records in order: the fixed record at context +0x31a8, and the record whose pointer sits at
  +0x3194. A record whose first word lacks a mask bit gets its +0xc pointer called with the context as a0 and the
  record as a1. The mask is kept on the stack across the first call.

- `__glMatValidateV1` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcc2c
  **Inferred.** Single-record check for the record whose pointer is in the word at +0x3194. If the mask at +0x6db8 has
  a bit that the record's first word lacks, the pointer at record +0xc is called with the context still in a0 and the
  record in a1.

- `__glMatValidateV1V2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcc80
  **Inferred.** Two-record check over the pointers at +0x3194 and +0x3198, in that order. The context and mask are kept
  on the stack across the first call. Each record runs the same mask test and +0xc call.

- `__glMatValidateV1V2V3` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcd0c
  **Inferred.** Three-record check over the pointers at +0x3194, +0x3198 and +0x319c, tested in that order. The mask
  test and the record's +0xc call are the same for each of the three.

- `__glMatValidateV2V3` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcdd0
  **Inferred.** Covers only the records at +0x3198 and +0x319c. The pointer at +0x3194 is never read.

- `__glBeginTFan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcf60
  **Inferred.** Fan-mode start. It sets +0x3190 to context +0x31a8, writes the byte 1 at +0x773a, stores the GOT
  word at gp-0x7fb4 minus 0x30cc into +0x2eac, and stores the GOT word at gp-0x6268 into +0x2ef4. No call is made.

- `__glBeginTStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcff8
  **Inferred.** Strip-mode start. It points +0x3190 at context +0x31a8, sets the byte at +0x773a to 1, and writes the
  gp-0x7fb4 word minus 0x3038 to +0x2eac and the gp-0x6268 word to +0x2ef4.

- `__glBeginQStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fd31c
  **Inferred.** Quad-strip start. Context +0x31a8 goes to +0x3190 and byte 1 to +0x773a. The gp-0x7fb4 word minus
  0x2d14 goes to +0x2eac, and the gp-0x6268 word goes to +0x2ef4.

- `__glBeginTriangles` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fd130
  **Inferred.** Triangle-list start. It writes context +0x31a8 to +0x3190, the gp-0x7fb4 word minus 0x2efc to +0x2eac
  and the gp-0x6268 word to +0x2ef4. No flag byte is set.

- `__glBeginQuads` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fd3d0
  **Inferred.** Quad-list start. The word at gp-0x6240 is copied to +0x2eac and the word at gp-0x6268 to +0x2ef4, and
  +0x3190 is set to context +0x31a8. The routine sets no flag byte and makes no call.

- `__glBeginPolygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fd580
  **Inferred.** Polygon start. It clears the byte at +0x7498, sets +0x3190 to context +0x31a8, and stores the gp-0x7fb4
  word minus 0x2c08 at +0x2eac, the gp-0x6238 word at +0x2f24 and the gp-0x6268 word at +0x2ef4.

- `FirstTStripVertex` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fcfc8
  **Inferred.** Handles the first vertex of a triangle strip. It sets the byte at vertex +0xb8 to 1, points +0x3190 at
  the vertex plus 0xc0, stores the vertex pointer a1 at +0x3198, and writes the gp-0x7fb4 word minus 0x306c to +0x2eac.

- `SecondQuadsVertex` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fd378
  **Inferred.** Handles the second vertex of a quad. It copies the byte at context +0x1c5 into the vertex byte at +0xb8,
  sets +0x3190 to the vertex plus 0xc0, and writes the gp-0x7fb4 word minus 0x2cb0 to +0x2eac. The code ends at
  0xd9fd3a0; the instructions from 0xd9fd3a4 belong to a different routine.

- `__glProcessSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fda80
  **Inferred.** Dispatches the per-span stage pointers. It clears the byte at +0x770c, then calls the pointers in the
  table at +0x2f48, indexed by position, for the count word at +0x2fc4, stopping after the first call that returns
  nonzero. If the byte at +0x770c is still zero and entries remain, it calls the table at +0x2f84 from that position
  under the same stop rule. It returns 0 on every path.

- `__glStippleSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fe400
  **Inferred.** Selects one 32-bit stipple word from the table at +0x7538 and rotates it left by the count at +0x75f4.
  The table index comes from the word at +0x75f8 when the byte at +0x12f0 is zero. Otherwise the index is the word at
  +0xe78, minus the word at +0x75f8, plus the word at +0xe50, minus one, and the index is masked to five bits. A zero
  rotated word sets the byte at +0x770c to 1 and returns 1. Otherwise, for a span length at +0x7628 above zero, the
  rotated word is stored once per 32 pixels through the buffer pointer read from +0x7708, and the routine returns 1.

- `__glStippleStippledSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9fe4b4
  **Inferred.** Uses the same index and rotation as the plain stipple span. A zero rotated word sets the byte at +0x770c
  to 1 and returns 1. Otherwise the rotated word is ANDed into the buffer words at +0x7708, one per 32 pixels of the
  span length, and the routine returns 0.

- `__glDepthPassSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda001bc
  **Inferred.** Remaps the span bytes in place. The pointer at +0x76f4 addresses the bytes, and the word at +0x79d8 is
  a table base. Each byte b is replaced by the table byte at base plus b. The loop runs once per pixel of the length
  at +0x7628 and returns 0.

- `__glDepthPassStippledSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00208
  **Inferred.** Remaps span bytes only where a stipple bit is set. The stipple words start at the pointer in +0x7708
  and are read one per 32 pixels, most significant bit first. Where the bit is set, the byte at +0x76f4 is replaced by
  the table byte at the +0x79d8 base plus its old value. Where the bit is clear the byte is left alone. It returns 0
  at once when the count at +0x7628 is zero.

- `__glShadeCISpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00294
  **Inferred.** Fills a run of float values into the buffer at the pointer in +0x7700, 16 bytes per entry. The count is
  the word at +0x7628. The first value is the float at +0x7600. The step is read from +0x764c and added to the running value
  after each store. It returns 0 and writes nothing when the count is zero.

- `__glShadeRGBASpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda002dc
  **Inferred.** Writes a linearly interpolated RGBA span. The loop count is the word at context +0x7628, so zero or less writes nothing. Starting values come from the floats at +0x7600, +0x7604, +0x7608 and +0x760c, and the per-pixel steps from +0x764c, +0x7650, +0x7654 and +0x7658. Each 16-byte record at the pointer in +0x7700 receives f0, f2, f12 and f14 at offsets 0, 4, 8 and 12, and the steps are added after every pixel. It makes no calls and returns 0.

- `__glDitherCISpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00680
  **Inferred.** Dithers a colour-index span in place. The dither byte comes from a 4x4 signed table whose address is read from the word at gp-0x5a00, indexed by (x and 3) plus four times (y and 3). Here x starts at +0x75f4 and steps per pixel, while y is fixed at +0x75f8. Each value is multiplied by 16.0, offset by the float bias at +0xdd4, truncated, added to the dither byte and shifted right four bits. The result is clamped above to (1 << the word at +0xcb4) minus one and stored back as a float on a 16-byte stride.

- `__glDitherCIStippledSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00738
  **Inferred.** Applies the colour-index dither only to stippled pixels, in place. The stipple words start at +0x7708 and are read 32 pixels at a time with the first pixel in bit 31. A set bit runs the same scale, bias, dither, shift and clamp sequence as the unstippled routine. A clear bit stores nothing, but the output pointer at +0x7700 and x still advance by one record and one pixel.

- `__glDitherRGBAStippledSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda009bc
  **Inferred.** Dithers the stippled pixels of an RGBA span in place. One dither byte, taken from the same gp-0x5a00 table with the x and y bases at +0x75f4 and +0x75f8, is added to all four channels of a set pixel. The channels at offsets 0, 4, 8 and 12 are each clamped above to their own maximum: the words at +0x782c, +0x7830, +0x7834 and +0x784c respectively.

- `__glRoundCISpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00b98
  **Inferred.** Rounds each float of a colour-index span to a whole number in place. The float bias at +0xdd4 is added before truncation, and the integer is clamped above to (1 << the word at +0xcb4) minus one. The clamp has no lower bound, so a negative value is only truncated. The loop runs count times over 16-byte records from the pointer at +0x7700 and makes no calls.

- `__glRoundCIStippledSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00c18
  **Inferred.** Rounds the stippled entries of a colour-index span. Stipple words from +0x7708 are consumed one bit per pixel, first pixel in bit 31, and only set bits run the bias, truncate, clamp and store sequence. The record pointer at +0x7700 moves 16 bytes for every pixel whether its bit is set or not.

- `__glRoundRGBASpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00cdc
  **Inferred.** Rounds all four channels of each RGBA record in place. Each float at offsets 0, 4, 8 and 12 has the +0xdd4 bias added, is truncated, and is clamped above to a channel maximum read from +0x782c, +0x7830, +0x7834 and +0x784c, in that order. The record count is the word at +0x7628, and the routine returns 0.

- `__glRoundRGBAStippledSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda00df4
  **Inferred.** Rounds the RGBA channels of set pixels only. Stipple bits come from +0x7708, bit 31 first, 32 per word, and a clear bit leaves the record untouched. The channel maxima come from +0x782c, +0x7830, +0x7834 and +0x784c as in the unstippled routine. The record pointer moves 16 bytes per pixel whether the pixel is set or not.

- `__glMaskCISpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda012b0
  **Inferred.** Builds a colour-index value from two operands. Each float in the record array at +0x7700 is converted to an integer, and a value of 2^31 or more is wrapped by subtracting 2^32 before truncation. The converted first operand is ANDed with the mask word loaded from +0x758. The second operand is the float at the pointer in +0x7704, read again for every pixel and converted the same way, then ANDed with the complement of that mask and with the word at +0x7810. The two terms are ORed, a negative sum has 2^32 added, and the result is stored back as a float. The count is the word at +0x7628.

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01550
  **Inferred.** Takes a pointer to two doubles and makes a raster position with them. The current context is read from the word at 0x1010. The begin-state word at 0x1018 is tested first: zero goes straight on, two runs the routine at +0x2e08 and clears the word, and any other value reports 0x502 through the error routine in the GOT slot at gp-0x6750 and returns. The two doubles are narrowed into a stack pair of floats, which goes to the routine at +0x3148.

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda0160c
  **Inferred.** Forwards a pointer to two floats to the two-component routine at +0x3148 of the current context, with no conversion. The state word at 0x1018 decides first: a value of 2 runs the +0x2e08 flush and resets the word to zero, and a value other than 0 or 2 reports 0x502 and skips the call.

- `__glim_RasterPos2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda016a4
  **Inferred.** Takes two double arguments in f12 and f14 and narrows them to single precision in a stack pair. Both values are kept in the frame across the flush at +0x2e08, which runs only when the state word at 0x1018 is 2. The pair then goes to +0x3148. Any state word apart from 0 or 2 reports 0x502 and makes no call.

- `__glim_RasterPos2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01754
  **Inferred.** Copies the float arguments from f12 and f14 into a stack pair and calls the two-component slot at +0x3148 with that pair. Before the call, the state word at 0x1018 is compared with 0 and 2; a 2 triggers the flush and a reset, and any other nonzero value raises 0x502.

- `__glim_RasterPos2i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda017fc
  **Inferred.** Stores the integer arguments a0 and a1 in the frame, converts each with mtc1 and cvt.s.w, and calls +0x3148 with the float pair. The begin-state gate runs before the conversion. State 2 flushes through +0x2e08 first, and an invalid state reports 0x502 and returns without converting.

- `__glim_RasterPos2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda018bc
  **Inferred.** Reads two 32-bit integers from offsets 0 and 4 of the argument pointer, converts each to float, and calls the two-component routine at +0x3148 with the stack array. The argument pointer is spilled across the flush, which only happens when the state word at 0x1018 reads 2.

- `__glim_RasterPos2s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01984
  **Inferred.** Takes two 16-bit arguments from the frame spills at sp+0x30 and sp+0x34 and reads their low halves at sp+0x32 and sp+0x36, the big-endian position, converts them to float and calls +0x3148. Begin-state handling is the usual one: 0 proceeds, 2 flushes first, any other value raises 0x502.

- `__glim_RasterPos2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01a44
  **Inferred.** Loads two halfwords from offsets 0 and 2 of the argument pointer, converts each to float, and dispatches to the two-component slot at +0x3148 with the stack array. Only a begin state of 0 or 2 reaches the dispatch; other states report 0x502 and return.

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01b0c
  **Inferred.** Narrows three doubles from the argument pointer, at offsets 0, 8 and 16, into a stack array of floats and calls the three-component slot at +0x314c of the context at 0x1010. The state word at 0x1018 is checked before the conversion. A value other than 0 or 2 sends the 0x502 report through gp-0x6750 and skips the call.

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01bd4
  **Inferred.** Passes the argument pointer as-is to the three-component routine at +0x314c, leaving the data unconverted. Begin state 2 causes the +0x2e08 flush followed by a store of zero to 0x1018, and any state other than 0 or 2 reports 0x502 without dispatching.

- `__glim_RasterPos3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01c6c
  **Inferred.** Uses f12 and f14 for x and y and reads z from the stack argument at frame offset 0x48. All three narrow to single precision in a stack array, which goes to +0x314c. The f12 and f14 values are saved around the flush that runs on state 2, and states other than 0 or 2 report 0x502.

- `__glim_RasterPos3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01d28
  **Inferred.** Takes x and y from f12 and f14 and z from a2, where the third float arrives as raw bits in an integer register. It saves all three into the frame, copies them to the call array and dispatches to +0x314c. The begin state at 0x1018 gates the call exactly as in the other scalar entries.

- `__glim_RasterPos3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01ddc
  **Inferred.** Spills the integer arguments a0, a1 and a2 to the frame, converts them with mtc1 and cvt.s.w, and calls the three-component slot at +0x314c with the float triple. The state check comes first: 2 flushes through +0x2e08 and resets, and an unrecognised value reports 0x502 and returns.

- `__glim_RasterPos3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01eb0
  **Inferred.** Reads three 32-bit integers at offsets 0, 4 and 8 of the argument pointer, converts each to float and calls +0x314c with the stack array. The argument pointer is kept in the frame so the flush at +0x2e08 can run before the reads when the state word is 2.

- `__glim_RasterPos3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda01f8c
  **Inferred.** Takes three halfword arguments from the frame spills at sp+0x38, sp+0x3c and sp+0x40, reading the low halves at sp+0x3a, sp+0x3e and sp+0x42, converts them to float and dispatches to the three-component slot at +0x314c. An invalid begin state reports 0x502 and skips the dispatch.

- `__glim_RasterPos3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda02060
  **Inferred.** Reads three halfwords at offsets 0, 2 and 4 of the argument pointer, converts each to float, and calls the three-component routine at +0x314c. The begin-state word is checked before any load, and a state other than 0 or 2 raises 0x502 and returns.

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda0213c
  **Inferred.** Narrows four doubles from the argument pointer, at offsets 0, 8, 16 and 24, into a stack array of floats and calls the four-component slot at +0x3150. The state word at 0x1018 is tested first, with the usual flush on 2 and the 0x502 report on any other nonzero value.

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda02210
  **Inferred.** Hands the argument pointer unchanged to the four-component routine at +0x3150. The state word at 0x1018 is inspected before the hand-off: a 2 runs the flush at +0x2e08 and clears the word, and a value outside 0 and 2 reports 0x502 and makes no call.

- `__glim_RasterPos4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda022a8
  **Inferred.** Uses f12 and f14 as the first two doubles and reads the last two from the stack arguments at frame offsets 0x48 and 0x50. All four are narrowed to single precision in a stack array before the call to +0x3150. The f12 and f14 values are kept across the state-2 flush, and any other nonzero state reports 0x502.

- `__glim_RasterPos4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda02370
  **Inferred.** Stores the four float arguments f12, f14, a2 and a3 as raw words in the frame, reloads them into the call array, and dispatches to +0x3150. The begin-state check runs first; state 2 flushes and resets the word, and other nonzero values report 0x502.

- `__glim_RasterPos4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda02430
  **Inferred.** Keeps the current context in the saved register s0 through the state check, then converts the four integer arguments a0 to a3, spilled at sp+0x38 to sp+0x44, to floats and calls +0x3150. An invalid state reports 0x502 and returns without dispatching.

- `__glim_RasterPos4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda02514
  **Inferred.** Loads four 32-bit integers from offsets 0, 4, 8 and 12 of the argument pointer, converts each to float and dispatches to +0x3150 with the stack array. The argument pointer is saved in the frame across the flush at +0x2e08, which runs only on state 2.

- `__glim_RasterPos4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda02604
  **Inferred.** Converts four halfword arguments, read from the low halves at sp+0x3a, sp+0x3e, sp+0x42 and sp+0x46 of the frame spills, to float and calls the four-component slot at +0x3150. The flush at +0x2e08 runs first when the state word is 2, and any state other than 0 or 2 reports 0x502.

- `__glim_RasterPos4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda026e8
  **Inferred.** Reads halfwords at offsets 0, 2, 4 and 6 of the argument pointer, converts each to float, and calls +0x3150. Only a state word of 0 or 2 reaches the dispatch. Any other value stops the call and reports 0x502.

- `__glim_InitNames` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda0346c
  **Inferred.** Resets the select-mode name stack. A state word of 1 reports 0x502 and nothing else runs. Otherwise the render mode at context +0xc84 is compared with GL_SELECT (0x1c02). Only in that mode does the routine clear the byte at +0x1318, then set the pointer at +0x1320 to the value loaded from +0x131c. No flush runs at this entry.

- `__glim_LoadName` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda034dc
  **Inferred.** Pushes a name onto the select-mode name stack. A state word of 1 reports 0x502. When the render mode at +0xc84 is GL_SELECT (0x1c02) and the pointer loaded from +0x1320 differs from the limit loaded from +0x131c, the name is stored at the word four bytes below that pointer, the pointer is not advanced, and the byte at +0x1318 is cleared. If the two words are equal the call reports 0x502 and stores nothing. In any other render mode it returns with no effect.

- `__glSelectLine` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda039c0
  **Inferred.** Calls the routine in the GOT slot at gp-0x60f0 twice, once per endpoint. The first call passes the context and the word at offset 0x88 of the first vertex. The second call passes the same context and the word at offset 0x88 of the second vertex, which the routine saves in the frame across the first call.

- `__glSelectPoint` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda03a14
  **Inferred.** Makes one call to the routine in the GOT slot at gp-0x60f0, passing the context and the word at offset 0x88 of the vertex in a1. It keeps no state of its own and returns the callee's result.

- `__glReadSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda041b0
  **Inferred.** Calls the context routine at +0xac once per pixel of a span. The count is the fifth argument, read from the caller's stack slot at 0x40. Each call receives the context, an x that grows by one per pixel from the second argument, the y from the third argument, and a destination pointer from the fourth argument that moves 16 bytes per pixel. It returns 0.

- `__glReturnSpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xda04250
  **Inferred.** Walks count records of four halfwords, where count is the sixth argument and the fifth argument is a float scale. Each halfword is converted to float and multiplied by the scale and by one of the floats at +0x7a80 offsets 0x58, 0x5c, 0x60 and 0x64. The four products form a stack array, which goes with the context read from the first argument's first word to the GOT routine at gp-0x64cc. The routine at +0xa4 of the first argument is then called with a pointer to a counter that starts at the second argument and grows per pixel. When bit 1 of the flags word at +0x700 is set, the routine clears that bit, sets the state word to 2 and bit 0 of +0x2dec, and runs the +0x2e08 flush before the loop. It restores the flags and repeats the flush afterward.
