- `__gllc_ShadeModel` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98490c
  **Inferred.** Records a one-value state command into a display list. It takes the pointer in the global at 0x1010, allocates a 4-byte record with `__glDlistAllocOp2` (a1=0x4), stores a halfword at record +0xc and a word at +0x10, and appends the record with `__glDlistAppendOp` using the descriptor at 0xd98b7dc. A null allocation (beq at 0xd984944) skips the append and returns null.

- `__gllc_TexParameterfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984a04
  **Inferred.** Records a texture-parameter command whose payload size comes from `__glTexParameterfv_size` at 0xda1f1f0. A negative scaled size goes to `__gllc_InvalidEnum` at 0xd97d88c (jalr at 0xd984a50) and exits. Otherwise it allocates the scaled size plus 8 bytes, copies the caller's array into the record at +0x18 with memcpy, and appends it with descriptor 0xd98b81c.

- `__gllc_TexParameteriv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984b5c
  **Inferred.** Same shape as the float variant: payload size from `__glTexParameteriv_size` at 0xda1f33c, the negative-size path to `__gllc_InvalidEnum` at 0xd97d88c (jalr at 0xd984ba8), allocation of the scaled size plus 8, a memcpy into the record at +0x18, and an append with descriptor 0xd98b888.

- `__gllc_TexEnvfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984cb4
  **Inferred.** Records a texture-environment command. The payload size comes from `__glTexEnvfv_size` at 0xda1f6d0, a negative scaled size takes the `__gllc_InvalidEnum` call at 0xd984d00, and a non-negative one allocates the scaled size plus 8 bytes, copies the array to record +0x18 with memcpy, and appends with descriptor 0xd98b8f4.

- `__gllc_TexEnviv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984e0c
  **Inferred.** Integer-array form of the texture-environment recorder. The size helper is `__glTexEnviv_size` at 0xda1f704, the error path is the `__gllc_InvalidEnum` call at 0xd984e58, the record is the scaled size plus 8 bytes with the array copied at +0x18, and the descriptor is 0xd98b960.

- `__gllc_TexGendv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd984f68
  **Inferred.** Records a texture-generation command with double-precision values. The size helper `__glTexGendv_size` at 0xda1e588 is scaled by 8 (shift by 3), the record is that size plus 8 bytes, the array is copied to +0x18 by memcpy, the error path is the `__gllc_InvalidEnum` call at 0xd984fb4, and the descriptor is 0xd98b9cc.

- `__gllc_TexGenfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9850c8
  **Inferred.** Single-precision texture-generation recorder. It uses `__glTexGenfv_size` at 0xda1e5c4 scaled by 4, allocates that plus 8 bytes, copies the array to +0x18 with memcpy, takes the `__gllc_InvalidEnum` path at 0xd985114 for a negative size, and appends with descriptor 0xd98ba38.

- `__gllc_TexGeniv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985220
  **Inferred.** Integer-array texture-generation recorder. It uses `__glTexGeniv_size` at 0xda1e5f4 scaled by 4, allocates that plus 8 bytes, copies the array to +0x18 with memcpy, takes the `__gllc_InvalidEnum` path at 0xd98526c for a negative size, and appends with descriptor 0xd98baa4.

- `__gllc_LoadName` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98535c
  **Inferred.** Records a one-word name command into a display list. It takes the pointer at 0x1010, allocates a 4-byte record with `__glDlistAllocOp2` (a1=0x4), stores a halfword at +0xc and a word at +0x10, and appends with `__glDlistAppendOp` and descriptor 0xd98bb48. A zero allocation result branches from 0xd985394 past the append to 0xd9853c0, so no record is appended; the facts do not show what that exit block returns.

- `__gllc_PassThrough` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9853d0
  **Inferred.** Records a pass-through marker with one single-precision value. It allocates a 4-byte record (a1=0x4), stores a halfword at +0xc and a float at +0x10 (swc1 at 0xd985420), then appends with descriptor 0xd98bb88. A null allocation (beq at 0xd985408) returns without appending.

- `__gllc_PushName` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9854ac
  **Inferred.** Records a one-word push-name command into a display list. The shape matches the other single-word recorders: 4-byte allocation through `__glDlistAllocOp2` at 0xd97c96c, halfword at +0xc and word at +0x10, append through `__glDlistAppendOp` at 0xd97ca04 with descriptor 0xd98bc04, and a null allocation branch at 0xd9854e4.

- `__gllc_DrawBuffer` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985520
  **Inferred.** Queues a draw-buffer command. It requests a 4-byte record from `__glDlistAllocOp2`, fills a halfword at +0xc and a word at +0x10, and hands the record to `__glDlistAppendOp` with the descriptor at 0xd98bc44. The beq at 0xd985558 returns early when the allocator gives back zero.

- `__gllc_Clear` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985594
  **Inferred.** Queues a clear command. Its 4-byte record is allocated at a1=0x4, the halfword and word fields are written, and descriptor 0xd98bc84 goes to `__glDlistAppendOp`. The beq at 0xd9855cc skips that append when the allocator returns zero.

- `__gllc_ClearAccum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985608
  **Inferred.** Records a clear-accumulation command with four single-precision values. It allocates a 16-byte record through `__glDlistAllocOp2` (a1=0x10), stores a halfword at +0xc and four floats at +0x10, +0x14, +0x18 and +0x1c, then appends with descriptor 0xd98bcc4. A null allocation (beq at 0xd98564c) skips the append.

- `__gllc_ClearIndex` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9856a0
  **Inferred.** Records a clear-index command with one single-precision value. It allocates a 4-byte record (a1=0x4), stores a halfword at +0xc and a float at +0x10 (swc1 at 0xd9856f0), and appends with `__glDlistAppendOp` using descriptor 0xd98bd10. A null allocation (beq at 0xd9856d8) skips the append.

- `__gllc_ClearColor` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985714
  **Inferred.** Records a clear-color command with four single-precision values. It allocates a 16-byte record through `__glDlistAllocOp2` (a1=0x10), stores a halfword at +0xc and four floats at +0x10 through +0x1c, and appends with descriptor 0xd98bd54. A null allocation (beq at 0xd985758) skips the append.

- `__gllc_ClearStencil` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9857ac
  **Inferred.** Queues a clear-stencil command with a single word value. The allocator supplies a 4-byte record (a1=0x4), the code writes the halfword at +0xc and the word at +0x10, and descriptor 0xd98bda0 goes to the appender. A zero allocation at 0xd9857e4 jumps past the append.

- `__gllc_ClearDepth` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985820
  **Inferred.** Records a clear-depth command with a double-precision value. It allocates an 8-byte record through `__glDlistAllocOp2` (a1=0x8), stores a halfword at +0xc, a byte at +0xe and a double at +0x10 (sdc1 at 0xd985878), and appends with descriptor 0xd98bde0. A null allocation (beq at 0xd985858) skips the append.

- `__gllc_StencilMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98589c
  **Inferred.** Queues a stencil-write-mask command. The 4-byte record from the allocator receives a halfword at +0xc and a word at +0x10. Descriptor 0xd98be24 is then passed to `__glDlistAppendOp`, and the zero check at 0xd9858d4 bypasses that append when allocation fails.

- `__gllc_ColorMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985910
  **Inferred.** Records a color-write-mask command with four flags. It allocates a 4-byte record through `__glDlistAllocOp2` (a1=0x4), stores a halfword at +0xc and four bytes at +0x10 through +0x13, and appends with descriptor 0xd98be64. A null allocation (beq at 0xd985954) skips the append.

- `__gllc_DepthMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9859a8
  **Inferred.** Records a depth-write-mask command with one flag byte. It allocates a 4-byte record through `__glDlistAllocOp2` (a1=0x4), stores a halfword at +0xc and a byte at +0x10, and appends with `__glDlistAppendOp` using descriptor 0xd98beb4. A null allocation (beq at 0xd9859e0) skips the append.

- `__gllc_IndexMask` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985a1c
  **Inferred.** Queues an index-write-mask command. Here the allocator's 4-byte record gets the halfword at +0xc and a word at +0x10 (sw at 0xd985a6c), and the appender receives descriptor 0xd98bef4. Allocation failure is caught by the beq at 0xd985a54, which skips the append.

- `__gllc_Accum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985a90
  **Inferred.** Records an accumulation-operation command with an operation code and a single-precision value. It allocates an 8-byte record through `__glDlistAllocOp2` (a1=0x8), stores a halfword at +0xc, a word at +0x10 and a float at +0x14 (swc1 at 0xd985aec), and appends with descriptor 0xd98bf34. A null allocation (beq at 0xd985acc) skips the append.

- `__gllc_PushAttrib` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985b78
  **Inferred.** Queues an attribute-stack push. Its 4-byte record holds a halfword at +0xc and a word at +0x10, and the appender gets descriptor 0xd98bfb4. A failed allocation branches over the append at 0xd985bb0.

- `__gllc_MapGrid1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd985bec
  **Inferred.** Records a one-dimensional map-grid command with two doubles and an integer count. It allocates a 24-byte record through `__glDlistAllocOp2` (a1=0x18), stores a halfword at +0xc, a byte at +0xe, a word at +0x20 and doubles at +0x10 and +0x18 (sdc1 at 0xd985c54 and 0xd985c5c), and appends with descriptor 0xd98bff4. A null allocation (beq at 0xd985c2c) skips the append.
