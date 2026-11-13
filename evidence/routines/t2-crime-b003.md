# Routine readings for crime, batch 3

Each entry records what the rendered instruction facts of one routine show. They describe the
software in these builds, not hardware behavior. Addresses are in the binary named in the header.

- `__gllc_UnimplementedExtension` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d9ac
  **Inferred.** Compiles a display-list entry for an extension that is not implemented. It reads the word at
  0x1010 and calls `__glDlistAllocOp2` at 0xd97c96c with size 0. When that returns nonzero, it stores a halfword
  opcode at the new block's +0xc and calls `__glDlistAppendOp` at 0xd97ca04 with 0xd97dba4
  (`__glle_UnimplementedExtension`) as its third argument; a zero return branches past both. It returns the
  allocation or append result. The names point to display-list compilation, but the facts do not show what the
  append callee does with that address.
  Reviewed: 2026-11-12

- `__glle_InvalidValue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97dab4
  **Inferred.** Raises GL error 0x501 (GL_INVALID_VALUE in the public GL headers) by calling `__glSetError` at
  0xd9d02a4 and passes its argument registers a1 to a3 through unchanged. The return at 0xd97dae8 copies a0 into
  v0, and the facts do not show whether the callee left the error code in a0.
  Reviewed: 2026-11-12

- `__glle_InvalidEnum` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97daf0
  **Inferred.** Raises GL error 0x500 (GL_INVALID_ENUM) by calling `__glSetError` at 0xd9d02a4, passing a1 to
  a3 through unchanged. The return at 0xd97db24 copies a0 into v0, and the facts do not show what a0 holds
  after the call.
  Reviewed: 2026-11-12

- `__glle_InvalidOperation` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97db2c
  **Inferred.** Raises GL error 0x502 (GL_INVALID_OPERATION) by calling `__glSetError` at 0xd9d02a4, passing
  a1 to a3 through unchanged. The return at 0xd97db60 copies a0 into v0, and the facts do not show what a0
  holds after the call.
  Reviewed: 2026-11-12

- `__glle_TableTooLarge` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97db68
  **Inferred.** Raises GL error 0x8031 (GL_TABLE_TOO_LARGE in the public GL imaging headers) by calling
  `__glSetError` at 0xd9d02a4, passing a1 to a3 through unchanged. The return at 0xd97db9c copies a0 into v0,
  and the facts do not show what a0 holds after the call.
  Reviewed: 2026-11-12

- `__glle_UnimplementedExtension` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97dba4
  **Inferred.** Raises GL error 0x502 (GL_INVALID_OPERATION) by calling `__glSetError` at 0xd9d02a4, passing
  a1 to a3 through unchanged. `__gllc_UnimplementedExtension` passes this address to `__glDlistAppendOp` at
  0xd97d9f8, and the name matches that use. The return at 0xd97dbd8 copies a0 into v0.
  Reviewed: 2026-11-12

- `__glEmptyFreeDlist` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e22c
  **Inferred.** The routine is 12 bytes long, with no calls, no loads and no stores in the rendered facts, so
  it appears to do nothing and return. Its name suggests an empty hook for freeing a display list. The return
  at 0xd97e230 has no value derived in the facts.
  Reviewed: 2026-11-12

- `__glEmptyExecuteDlist` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e238
  **Inferred.** The routine is 12 bytes long, with no calls, no loads and no stores in the rendered facts, so
  it appears to do nothing and return. Its name suggests an empty hook for executing a display list. The return
  at 0xd97e23c has no value derived in the facts.
  Reviewed: 2026-11-12

- `__glim_DeleteLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e494
  **Inferred.** Checks the arguments of a delete-lists call and calls `__glNamesDeleteRange` at 0xd9f272c. When
  the word at 0x1018 equals 1, it calls `__glSetError` with GL_INVALID_OPERATION (0x502, call at 0xd97e4d4).
  When the range argument a1 is negative, it calls `__glSetError` with GL_INVALID_VALUE (0x501, call at
  0xd97e4f4). The branch at 0xd97e504 goes to the return at 0xd97e528 when a1 is zero. Otherwise
  `__glNamesDeleteRange` is called with a0 set to the word at 0x1010, a1 set to the word at offset 0x1340 of the
  block that word points to, a2 set to the list name (a0 at entry) and a3 set to the range (a1 at entry). The
  facts do not show whether the two error paths continue to the later checks or return, and they do not name the
  state word at 0x1018. The argument shape fits deleting a range of list names.
  Reviewed: 2026-11-12

- `__gllc_ListBase` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e530
  **Inferred.** Adds a list-base entry to the display list being built. It calls `__glDlistAllocOp2` at
  0xd97c96c for a 4-byte payload, stores a halfword opcode at +0xc and a word at +0x10 of the new block, and
  then calls `__glDlistAppendOp` at 0xd97ca04 with the data address 0xd98a050. The facts do not name the source
  register of the stored word. The branch at 0xd97e568 goes to 0xd97e594 when `__glDlistAllocOp2` returns zero,
  past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3b` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e5a4
  **Inferred.** Adds a three-component signed-byte color entry to the display list being built. It allocates a
  4-byte payload at 0xd97e5d4, stores a halfword opcode at +0xc and three single bytes at +0x10 to +0x12, and
  appends the block with `__glDlistAppendOp` using the data address 0xd98a090. The facts do not name the
  registers that supply the three bytes. The branch at 0xd97e5e4 goes to 0xd97e62c when `__glDlistAllocOp2`
  returns zero, past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e63c
  **Inferred.** The vector form of `__gllc_Color3b` copies the three bytes at a0 +0, +1 and +2 (lb at 0xd97e68c,
  0xd97e698 and 0xd97e6a0) into the payload at +0x10 to +0x12. A 4-byte block comes from 0xd97e668, and
  0xd98a090 goes to the append call at 0xd97e6b8. The branch at 0xd97e67c goes to 0xd97e6c4 when
  `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e6d4
  **Inferred.** Adds a three-component double color entry. It allocates a 24-byte payload at 0xd97e700, stores a
  halfword opcode at +0xc, a byte at +0xe, and three 8-byte floating-point values at +0x10, +0x18 and +0x20. It
  appends with `__glDlistAppendOp` using the data address 0xd98a0cc. The facts do not name the registers that
  supply the values. The branch at 0xd97e710 goes to 0xd97e760 when `__glDlistAllocOp2` returns zero, past the
  stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e770
  **Inferred.** The vector form of `__gllc_Color3d` copies three doubles from a0 +0, +8 and +0x10 (ldc1 at
  0xd97e7cc, 0xd97e7d4 and 0xd97e7dc) into the payload. A 24-byte block comes from 0xd97e79c, and 0xd98a0cc goes
  to the append call at 0xd97e7f4. The branch at 0xd97e7b0 goes to 0xd97e800 when `__glDlistAllocOp2` returns
  zero, past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e810
  **Inferred.** Adds a three-component float color entry. It allocates a 12-byte payload at 0xd97e840, stores a
  halfword opcode at +0xc and three 4-byte floating-point values at +0x10, +0x14 and +0x18, and appends with the
  data address 0xd98a108. The facts do not name the registers that supply the values. The branch at 0xd97e850
  goes to 0xd97e898 when `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only
  on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e8a8
  **Inferred.** The vector form of `__gllc_Color3f` copies three floats from a0 +0, +4 and +8 (lwc1 at
  0xd97e8fc, 0xd97e904 and 0xd97e90c) into the payload. Storage is requested at 0xd97e8d4 for 0xc bytes, and the
  block is appended at 0xd97e924 with 0xd98a108. The branch at 0xd97e8e8 goes to 0xd97e930 when
  `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e940
  **Inferred.** Adds a three-component integer color entry. It allocates a 12-byte payload at 0xd97e970, stores
  a halfword opcode at +0xc and three 4-byte words at +0x10, +0x14 and +0x18, and appends with the data address
  0xd98a144. The facts do not name the registers that supply the words. The branch at 0xd97e980 goes to
  0xd97e9c8 when `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a
  nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97e9d8
  **Inferred.** The vector form of `__gllc_Color3i` copies three words from a0 +0, +4 and +8 (lw at 0xd97ea28,
  0xd97ea34 and 0xd97ea3c) into the payload. The call at 0xd97ea04 asks for 0xc bytes, and the append call at
  0xd97ea54 takes 0xd98a144. The branch at 0xd97ea18 goes to 0xd97ea60 when `__glDlistAllocOp2` returns zero,
  past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ea70
  **Inferred.** Adds a three-component short color entry. It allocates an 8-byte payload at 0xd97eaa0, stores a
  halfword opcode at +0xc and three halfwords at +0x10, +0x12 and +0x14, and appends with the data address
  0xd98a180. The facts do not name the registers that supply the halfwords. The branch at 0xd97eab0 goes to
  0xd97eaf8 when `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a
  nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97eb08
  **Inferred.** The vector form of `__gllc_Color3s` copies three halfwords from a0 +0, +2 and +4 (lh at
  0xd97eb58, 0xd97eb64 and 0xd97eb6c) into the payload. An 8-byte block is allocated at 0xd97eb34 and appended
  at 0xd97eb84 with 0xd98a180. The branch at 0xd97eb48 goes to 0xd97eb90 when `__glDlistAllocOp2` returns zero,
  past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3ub` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97eba0
  **Inferred.** Adds a three-component unsigned-byte color entry. It allocates a 4-byte payload at 0xd97ebd0,
  stores a halfword opcode at +0xc and three single bytes at +0x10 to +0x12, and appends with the data address
  0xd98a1bc. The facts do not name the registers that supply the bytes. The branch at 0xd97ebe0 goes to
  0xd97ec28 when `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a
  nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3ubv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ec38
  **Inferred.** The vector form of `__gllc_Color3ub` copies unsigned bytes from a0 +0, +1 and +2 (lbu at
  0xd97ec88, 0xd97ec94 and 0xd97ec9c) into the payload. Four bytes are requested at 0xd97ec64, and the append
  call at 0xd97ecb4 passes 0xd98a1bc. The branch at 0xd97ec78 goes to 0xd97ecc0 when `__glDlistAllocOp2` returns
  zero, past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3ui` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ecd0
  **Inferred.** Adds a three-component unsigned-integer color entry. It allocates a 12-byte payload at
  0xd97ed00, stores a halfword opcode at +0xc and three 4-byte words at +0x10, +0x14 and +0x18, and appends with
  the data address 0xd98a1f8. The facts do not name the registers that supply the words. The branch at 0xd97ed10
  goes to 0xd97ed58 when `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only
  on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3uiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ed68
  **Inferred.** The vector form of `__gllc_Color3ui` copies unsigned words from a0 +0, +4 and +8 (lw at
  0xd97edb8, 0xd97edc4 and 0xd97edcc) into the payload. The 12-byte allocation is at 0xd97ed94, and the block is
  passed to the append at 0xd97ede4 with 0xd98a1f8. The branch at 0xd97eda8 goes to 0xd97edf0 when
  `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a nonzero return.
  Reviewed: 2026-11-12

- `__gllc_Color3us` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ee00
  **Inferred.** Adds a three-component unsigned-short color entry. It allocates an 8-byte payload at 0xd97ee30,
  stores a halfword opcode at +0xc and three halfwords at +0x10, +0x12 and +0x14, and appends with the data
  address 0xd98a234. The facts do not name the registers that supply the halfwords. The branch at 0xd97ee40 goes
  to 0xd97ee88 when `__glDlistAllocOp2` returns zero, past the stores and the append call, which run only on a
  nonzero return.
  Reviewed: 2026-11-12
