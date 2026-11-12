# Tier-2 round 3 batch 1 routine readings

- `__glle_FastMaterial` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d1cc
  **Inferred.** Loads the context pointer from the global at 0x1010 and a flag word from 0x1018. When that flag equals 1 and the word at [[0x1010]+28088] is nonzero (branches at 0xd97d220 and 0xd97d22c), it first calls an indirect function loaded from [[0x1010]+0x2ef4] with the context as a0 (call 1, 0xd97d23c); otherwise it skips that call. It then reads a word at a0 and branches to 0xd97d40c when it is zero (branch at 0xd97d250). Otherwise it loops over words read from the a0 buffer, comparing each against 0x404 and 0x405 (branches at 0xd97d264 and 0xd97d270), running a chain of tests on the following word's bits through 0xd97d370, and copying or scaling groups of four single-precision values between the a0 buffer and the context (lwc1/swc1 pairs). The loop returns to 0xd97d264 through the branch at 0xd97d3fc. `__glFreeSpecLUT` (call 2, 0xd97d3a4) is inside that loop, reached only when the branch at 0xd97d370 does not skip it. `__glValidateMaterial` (call 3, 0xd97d428) runs only when the branch at 0xd97d418 finds a word masked with ~0x20 nonzero (it is skipped when that is zero). Role (from name): fast material update path. What the 0x404 and 0x405 values select, and which bit enables which field, are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_LineStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d610
  **Inferred.** Loads the value at abs 0x106c and calls an unnamed function at 0xd97d630 with a0 set to 3 and a1 to a3 passed through, then returns a0. The 3 is the GL_LINE_STRIP mode number, which matches the entry name. Role (from name): begin-primitive stub for GL_LINE_STRIP. Where the callee leads is not known from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Lines` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d64c
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d66c with a0 set to 1, passing a1 to a3 through, then returns a0. The 1 is the GL_LINES mode number. Same shape as its neighbours at 0xd97d610 and 0xd97d688: only the mode constant differs. Reads like the begin-primitive stub for GL_LINES; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Points` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d688
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d6a8 with a0 set to 0, passing a1 to a3 through, then returns a0. The 0 is the GL_POINTS mode number. Same shape as the other begin stubs in this run; only the constant differs. Reads like the begin-primitive stub for GL_POINTS; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Polygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d6c4
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d6e4 with a0 set to 9, passing a1 to a3 through, then returns a0. The 9 is the GL_POLYGON mode number. Same shape as the other begin stubs; only the constant differs. Reads like the begin-primitive stub for GL_POLYGON; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_TriangleStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d700
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d720 with a0 set to 5, passing a1 to a3 through, then returns a0. The 5 is the GL_TRIANGLE_STRIP mode number. Same shape as the other begin stubs; only the constant differs. Reads like the begin-primitive stub for GL_TRIANGLE_STRIP; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_TriangleFan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d73c
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d75c with a0 set to 6, passing a1 to a3 through, then returns a0. The 6 is the GL_TRIANGLE_FAN mode number. Same shape as the other begin stubs; only the constant differs. Reads like the begin-primitive stub for GL_TRIANGLE_FAN; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Triangles` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d778
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d798 with a0 set to 4, passing a1 to a3 through, then returns a0. The 4 is the GL_TRIANGLES mode number. Same shape as the other begin stubs; only the constant differs. Reads like the begin-primitive stub for GL_TRIANGLES; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_QuadStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7b4
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d7d4 with a0 set to 8, passing a1 to a3 through, then returns a0. The 8 is the GL_QUAD_STRIP mode number. Same shape as the other begin stubs; only the constant differs. Reads like the begin-primitive stub for GL_QUAD_STRIP; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Quads` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7f0
  **Inferred.** Loads abs 0x106c and calls an unnamed function at 0xd97d810 with a0 set to 7, passing a1 to a3 through, then returns a0. The 7 is the GL_QUADS mode number. Same shape as the other begin stubs; only the constant differs. Reads like the begin-primitive stub for GL_QUADS; the callee is not named.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_InvalidValue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d82c
  **Inferred.** Calls `__glDlistAllocOp2` at 0xd97d84c with a0 passed through, a1 set to 0 and a2 and a3 passed through. If that returns 0 (branch at 0xd97d858) it returns at once with that 0; otherwise it stores a halfword at record offset +0xc (0xd97d864) and calls `__glDlistAppendOp` at 0xd97d870 with the record as a1 and the address 0xd97dab4 as a2. Role (from name): display-list compile stub for an invalid-value error op. The record layout beyond the halfword and the meaning of 0xd97dab4 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color3usv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ee98
  **Inferred.** Allocates an 8-byte op record with `__glDlistAllocOp2` at 0xd97eec4 (size 0x8), stores a halfword opcode at +0xc, copies three halfwords from a0 into the record at +0x10, +0x12 and +0x14, then appends the record with `__glDlistAppendOp` at 0xd97ef14 and the address 0xd98a234 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97eed8); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor3usv: it packs the three unsigned short components into the list. The opcode value and the table at 0xd98a234 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4b` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ef30
  **Inferred.** Allocates a 4-byte op record with `__glDlistAllocOp2` at 0xd97ef64 (size 0x4), stores a halfword opcode at +0xc, stores four byte-sized components at +0x10 to +0x13 (0xd97ef8c to 0xd97efa4), then appends the record with `__glDlistAppendOp` at 0xd97efb8 and the address 0xd98a270 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97ef74); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4b. The opcode value and the table at 0xd98a270 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97efd4
  **Inferred.** Allocates a 4-byte op record with `__glDlistAllocOp2` at 0xd97f000 (size 0x4), stores a halfword opcode at +0xc, copies four bytes from a0 into the record at +0x10 to +0x13, then appends the record with `__glDlistAppendOp` at 0xd97f058 and the address 0xd98a270 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f014); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4bv. Same record layout as `__gllc_Color4b` at 0xd97ef30; the opcode value is unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f074
  **Inferred.** Allocates a 32-byte op record with `__glDlistAllocOp2` at 0xd97f0a0 (size 0x20), stores a halfword opcode at +0xc and a byte at +0xe, stores four doubles at +0x10, +0x18, +0x20 and +0x28, then appends the record with `__glDlistAppendOp` at 0xd97f0fc and the address 0xd98a2ac as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f0b0); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4d. The opcode value and the table at 0xd98a2ac are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f118
  **Inferred.** Allocates a 32-byte op record with `__glDlistAllocOp2` at 0xd97f144 (size 0x20), stores a halfword opcode at +0xc and a byte at +0xe, copies four doubles from a0 at offsets 0x0, 0x8, 0x10 and 0x18 into the record at +0x10 to +0x28, then appends the record with `__glDlistAppendOp` at 0xd97f1a4 and the address 0xd98a2ac as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f158); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4dv: the same record as `__gllc_Color4d` at 0xd97f074, filled from a pointer. The opcode value is unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f1c0
  **Inferred.** Allocates a 16-byte op record with `__glDlistAllocOp2` at 0xd97f1f4 (size 0x10), stores a halfword opcode at +0xc, stores four single-precision values at +0x10, +0x14, +0x18 and +0x1c, then appends the record with `__glDlistAppendOp` at 0xd97f248 and the address 0xd98a2e8 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f204); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4f. The opcode value and the table at 0xd98a2e8 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f264
  **Inferred.** Allocates a 16-byte op record with `__glDlistAllocOp2` at 0xd97f290 (size 0x10), stores a halfword opcode at +0xc, copies four words from a0 at 0x0, 0x4, 0x8 and 0xc into the record at +0x10 to +0x1c, then appends the record with `__glDlistAppendOp` at 0xd97f2e8 and the address 0xd98a2e8 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f2a4); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4fv: the same record as `__gllc_Color4f` at 0xd97f1c0, filled from a pointer. The opcode value is unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f304
  **Inferred.** Allocates a 16-byte op record with `__glDlistAllocOp2` at 0xd97f338 (size 0x10), stores a halfword opcode at +0xc, stores four words at +0x10, +0x14, +0x18 and +0x1c, then appends the record with `__glDlistAppendOp` at 0xd97f38c and the address 0xd98a324 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f348); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4i. The opcode value and the table at 0xd98a324 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f3a8
  **Inferred.** Allocates a 16-byte op record with `__glDlistAllocOp2` at 0xd97f3d4 (size 0x10), stores a halfword opcode at +0xc, copies four words from a0 at 0x0, 0x4, 0x8 and 0xc into the record at +0x10 to +0x1c, then appends the record with `__glDlistAppendOp` at 0xd97f42c and the address 0xd98a324 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f3e8); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4iv: the same record as `__gllc_Color4i` at 0xd97f304, filled from a pointer. The opcode value is unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f448
  **Inferred.** Allocates an 8-byte op record with `__glDlistAllocOp2` at 0xd97f47c (size 0x8), stores a halfword opcode at +0xc and four halfwords at +0x10, +0x12, +0x14 and +0x16, then appends the record with `__glDlistAppendOp` at 0xd97f4d0 and the address 0xd98a360 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f48c); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4s. The opcode value and the table at 0xd98a360 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f4ec
  **Inferred.** Allocates an 8-byte op record with `__glDlistAllocOp2` at 0xd97f518 (size 0x8), stores a halfword opcode at +0xc, copies four halfwords from a0 at 0x0, 0x2, 0x4 and 0x6 into the record at +0x10 to +0x16, then appends the record with `__glDlistAppendOp` at 0xd97f570 and the address 0xd98a360 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f52c); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4sv: the same record as `__gllc_Color4s` at 0xd97f448, filled from a pointer. The opcode value is unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4ub` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f58c
  **Inferred.** Allocates a 4-byte op record with `__glDlistAllocOp2` at 0xd97f5c0 (size 0x4), stores a halfword opcode at +0xc, stores four byte-sized components at +0x10 to +0x13, then appends the record with `__glDlistAppendOp` at 0xd97f614 and the address 0xd98a39c as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f5d0); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4ub. The opcode value and the table at 0xd98a39c are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4ubv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f630
  **Inferred.** Allocates a 4-byte op record with `__glDlistAllocOp2` at 0xd97f65c (size 0x4), stores a halfword opcode at +0xc, copies four bytes from a0 at 0x0 to 0x3 into the record at +0x10 to +0x13, then appends the record with `__glDlistAppendOp` at 0xd97f6b4 and the address 0xd98a39c as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f670); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4ubv: the same record as `__gllc_Color4ub` at 0xd97f58c, filled from a pointer. The opcode value is unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Color4ui` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f6d0
  **Inferred.** Allocates a 16-byte op record with `__glDlistAllocOp2` at 0xd97f704 (size 0x10), stores a halfword opcode at +0xc, stores four words at +0x10, +0x14, +0x18 and +0x1c, then appends the record with `__glDlistAppendOp` at 0xd97f758 and the address 0xd98a3d8 as a2. The opcode store, the field stores and the append run only when the allocation returns nonzero (branch at 0xd97f714); on a zero return it skips them and returns. Reads like the display-list compile stub for glColor4ui. The opcode value and the table at 0xd98a3d8 are unknown from these facts.
  Reviewed: 2026-11-12 (sonnet)
