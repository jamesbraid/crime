# Tier-2 routine readings, crime round 4, batch 0

Routine role entries for the first 25 targets of the tier-2 list (rank order from
`reading_round.py --from-grade located`). Each entry is inferred from the rendered
instruction facts of the named build. Three targets were dropped because their rendered
facts give no branch, call or memory detail beyond size and an unknown return value.

- `_c_hwb` in `sbin/stand/symmon.IP32` at 0xa0023504
  **Inferred.** Selects one of three paths on the value in a0: a0 below 0x1 (unsigned) leaves through the bne at 0xa002350c, a0 equal to 0x1 leaves through the beq at 0xa0023514, and a0 equal to 0x3 leaves through the beq at 0xa0023520. Every path joins the exit at 0xa002355c, whose return value is an unknown register, -0x1 or 0x0. The routine makes no calls and writes no memory, so it reads as a pure selector over its argument.
  Reviewed: 2026-11-12 (sonnet)

- `_c_hwbinv` in `sbin/stand/symmon.IP32` at 0xa002358c
  **Inferred.** Three compares on a0: below 0x1 (unsigned) at 0xa0023594, equal to 0x1 at 0xa002359c and equal to 0x3 at 0xa00235a8, with the shared exit at 0xa00235e4. Unlike `_c_hwb` at 0xa0023504, whose three compares go to three different targets, here the branches at 0xa0023594 and 0xa00235a8 both go to 0xa00235ec and only a0 equal to 0x1 goes to 0xa00235f4. Its return value is an unknown register, -0x1 or 0x0. Role (from name): the name suggests the inverting counterpart of `_c_hwb`; the facts show only the compare shape above.
  Reviewed: 2026-11-12 (sonnet)

- `_c_hinv` in `sbin/stand/symmon.IP32` at 0xa0023604
  **Inferred.** Two compares on a0, below 0x1 at 0xa002360c and equal to 0x1 at 0xa0023614, lead to a shared exit at 0xa0023650. Its return value is an unknown register or 0x0, so it has no -0x1 result. It makes no calls, which matches the two sibling checks at 0xa0023504 and 0xa002358c.
  Reviewed: 2026-11-12 (sonnet)

- `strlen` in `sbin/stand/symmon.IP32` at 0xa00309ac
  **Inferred.** Scans a byte string from a0: the first lbu at 0xa00309ac reads from a0, and the beq at 0xa00309b4 leaves for the return at 0xa00309d0 when that byte is zero. The loop body is the second lbu at 0xa00309c0, and its back-edge at 0xa00309c8 tests v1, whose value is an unknown register. The return at 0xa00309d0 yields 0x0 or an unknown register.
  Reviewed: 2026-11-12 (sonnet)

- `block_grow_region` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b010
  **Inferred.** Works on a descriptor in a1: it reads words at offsets 0x0 through 0x24 and stores to the words at 0x4, 0x18, 0x1c and 0x24 of it; the store at +0x8 (0xd97b164) runs only when the word at +0x8 is -0x1. It makes three indirect calls, at 0xd97b058, 0xd97b098 and 0xd97b0c8, whose arguments come from descriptor words at offsets 0x14, 0x18 and 0x24, with the global pointer at [0x1010] as a0 of the second and third; the callees are unknown. The second and third calls store their results at +0x18 and +0x24, and a zero result from either, or a -0x1 result from the first, leaves for the return at 0xd97b178. The branch at 0xd97b0f4 skips the copy loop when the counter t2 is not below a3, and the loop's back-edge at 0xd97b12c repeats while its counter is below a3; the loop stores through pointers loaded from +0x18 and +0x24. The return yields 0x0 or 0x1. Role (from name): the name suggests a block-grow operation; the facts do not show it.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistIsBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b5e0
  **Inferred.** Reads the word at offset 0x8 of the object in a0 and tests v1 for zero at 0xd97b5ec; when v1 is nonzero it also reads the words at offsets 0x0 and 0x4. It returns through 0xd97b610 with v0 set from a register. Role (from name): the name points at a display-list block test; the facts show reads from a small object and one branch, nothing more.
  Reviewed: 2026-11-12 (sonnet)

- `DoCallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bcd0
  **Inferred.** Works on the current context at [0x1010]. It reads the context field at offset 0x1340 and calls `__glNamesLockData` at 0xd97bd14. A branch at 0xd97bcf8 compares the field at [[0x1010]+4980] against 0x40 as a signed value and skips the store to offset 0x1374 at 0xd97bd08 when the field is below 0x40. When the lock call returns zero, the beq at 0xd97bd24 leaves for 0xd97bd7c and skips the rest. Otherwise it stores to offset 0x1374, makes an indirect call at 0xd97bd48 with the lock result as a1 (callee unknown), stores to offset 0x1374 again and calls `__glNamesUnlockData` at 0xd97bd70 with the lock result as a1. The return at 0xd97bd84 yields an unknown register or the lock or unlock result. Role (from name): a display-list call; the facts do not show it.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Lines` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d64c
  **Inferred.** The routine reads abs 0x106c at 0xd97d65c and calls through it at 0xd97d66c with a0 = 0x1, forwarding a1 to a3 from its own arguments. The return at 0xd97d680 gives back a0. The 0x1 value matches the lines mode in the name.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Points` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d688
  **Inferred.** The pointer at abs 0x106c, loaded at 0xd97d698, is called at 0xd97d6a8 with a0 = 0x0. Arguments a1 to a3 pass straight through, and the return at 0xd97d6bc gives back a0. Role (from name): the 0x0 value is taken to be the points mode the name refers to; the facts do not show that.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Polygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d6c4
  **Inferred.** It loads abs 0x106c at 0xd97d6d4, calls through it at 0xd97d6e4 with a0 = 0x9, forwards a1 to a3, and returns a0 from 0xd97d6f8. Role (from name): a polygon dispatch, with 0x9 taken to be the polygon mode; the facts do not show that.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_TriangleStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d700
  **Inferred.** Calls at 0xd97d720 through the pointer at abs 0x106c (loaded at 0xd97d710) with a0 = 0x5. Arguments a1 to a3 are forwarded, and the return at 0xd97d734 yields a0. Role (from name): 0x5 is taken to be the triangle-strip mode; the facts do not show that.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_TriangleFan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d73c
  **Inferred.** Reads abs 0x106c at 0xd97d74c and calls through it at 0xd97d75c with a0 = 0x6, forwarding a1 to a3. Its return at 0xd97d770 returns a0. The 0x6 value fits the fan mode the name gives.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Triangles` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d778
  **Inferred.** Loads abs 0x106c at 0xd97d788 and calls through it at 0xd97d798 with a0 = 0x4. The arguments a1 to a3 are passed unchanged, and the return at 0xd97d7ac yields a0. The 0x4 mode value matches the separate-triangles mode.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_QuadStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7b4
  **Inferred.** The pointer at abs 0x106c, read at 0xd97d7c4, is called at 0xd97d7d4 with a0 = 0x8. Arguments a1 to a3 pass through, and the return at 0xd97d7e8 gives a0. Role (from name): 0x8 is taken to be the quad-strip mode; the facts do not show that.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Begin_Quads` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7f0
  **Inferred.** Reads abs 0x106c at 0xd97d800, calls through it at 0xd97d810 with a0 = 0x7, forwards a1 to a3, and returns a0 from 0xd97d824. Role (from name): 0x7 is taken to be the separate-quads mode; the facts do not show that.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_InvalidValue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d82c
  **Inferred.** Allocates an op through `__glDlistAllocOp2` at 0xd97c96c with a0 passed through and a1 set to 0x0. When the allocation is nonzero it stores a halfword at +0xc of the new op (sh at 0xd97d864), then appends the op through `__glDlistAppendOp` at 0xd97ca04 with the constant address 0xd97dab4 as its third argument. When the allocation returns zero, the beq at 0xd97d858 branches to the epilogue and the return at 0xd97d884. Role (from name): an invalid-value error recorded into the list; the facts show an op allocated, tagged with a halfword and appended, and no error value.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Rectfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981510
  **Inferred.** Copies the two float pairs at offsets 0x0 and 0x4 of a0 and a1 (lwc1 at 0xd981568 through 0xd981580) into words at offsets 0x10 through 0x1c of a new op. The op is allocated through `__glDlistAllocOp2` at 0xd97c96c with size 0x10 and appended through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98a9f0. The halfword store at +0xc (sh at 0xd981560) is probably the op code. The name fits a rectangle given by two float corners.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Recti` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9815b4
  **Inferred.** Allocates a 0x10-size op through `__glDlistAllocOp2` at 0xd97c96c, stores a halfword at +0xc and four words at +0x10 through +0x1c, and appends it through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa30. The four stored words come from registers the facts leave as unknown. The shape fits an integer rectangle given by two corner points.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Rectiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981658
  **Inferred.** Copies the two word pairs at offsets 0x0 and 0x4 of a0 and a1 into words at offsets 0x10 through 0x1c of a new op. The op is allocated through `__glDlistAllocOp2` at 0xd97c96c with size 0x10 and appended through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa30. The halfword store at +0xc (sh at 0xd9816a8) is probably the op code. The name fits an integer rectangle given by two corner vectors.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Rects` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9816fc
  **Inferred.** Allocates an op through `__glDlistAllocOp2` at 0xd97c96c with the size argument 0x8, stores a halfword at +0xc and four halfwords at +0x10 through +0x16, and appends it through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa70. The stored halfwords come from registers the facts leave as unknown. The size argument 0x8 is smaller than the highest offset written (+0x16); the facts do not show what the argument counts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_Rectsv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9817a0
  **Inferred.** Copies the two halfword pairs at offsets 0x0 and 0x2 of a0 and a1 (lh at 0xd9817f4 through 0xd981810) into halfwords at offsets 0x10 through 0x16 of a new op. The op is allocated through `__glDlistAllocOp2` at 0xd97c96c with size argument 0x8 and appended through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa70. The halfword store at +0xc (sh at 0xd9817f0) is probably the op code. The size argument 0x8 is smaller than the highest offset written (+0x16); the facts do not show what the argument counts.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_TexCoord1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981844
  **Inferred.** Allocates an op through `__glDlistAllocOp2` at 0xd97c96c with the size argument 0x8, stores a halfword at +0xc, a byte at +0xe and an 8-byte double at +0x10 (sdc1 at 0xd98189c), and appends it through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aab0. The double's source register is an unknown register. The name points at a one-coordinate double texture coordinate, which matches the 8-byte store.
  Reviewed: 2026-11-12 (sonnet)
