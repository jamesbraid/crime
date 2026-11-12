# Tier-2 routine readings, crime round 4, batch 0

Routine role entries for the first 25 targets of the tier-2 list (rank order from
`reading_round.py --from-grade located`). Each entry is inferred from the rendered
instruction facts of the named build. Three targets were dropped because their rendered
facts give no branch, call or memory detail beyond size and an unknown return value.

- `_c_hwb` in `sbin/stand/symmon.IP32` at 0xa0023504
  **Inferred.** Selects one of three paths on the value in a0: a0 below 0x1 (unsigned) leaves through the bne at 0xa002350c, a0 equal to 0x1 leaves through the beq at 0xa0023514, and a0 equal to 0x3 leaves through the beq at 0xa0023520. Every path joins the exit at 0xa002355c, whose return value is an unknown register, -0x1 or 0x0. The routine makes no calls and writes no memory, so it reads as a pure selector over its argument.

- `_c_hwbinv` in `sbin/stand/symmon.IP32` at 0xa002358c
  **Inferred.** Same three-way selector on a0 as `_c_hwb` at 0xa0023504, with the compares at 0xa0023594, 0xa002359c and 0xa00235a8 and the shared exit at 0xa00235e4. Its return value is an unknown register, -0x1 or 0x0. The name suggests the inverted form of the same check, and the branch layout fits that reading.

- `_c_hinv` in `sbin/stand/symmon.IP32` at 0xa0023604
  **Inferred.** Two compares on a0, below 0x1 at 0xa002360c and equal to 0x1 at 0xa0023614, lead to a shared exit at 0xa0023650. Its return value is an unknown register or 0x0, so it has no -0x1 result. It makes no calls, which matches the two sibling checks at 0xa0023504 and 0xa002358c.

- `strlen` in `sbin/stand/symmon.IP32` at 0xa00309ac
  **Inferred.** Scans a byte string from a0: the first lbu at 0xa00309ac reads from a0, and the beq at 0xa00309b4 leaves for the return at 0xa00309d0 when that byte is zero. The loop body is the second lbu at 0xa00309c0, and its back-edge at 0xa00309c8 tests v1, whose value is an unknown register. The return at 0xa00309d0 yields 0x0 or an unknown register.

- `block_grow_region` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b010
  **Inferred.** Works on a descriptor in a1: it reads words at offsets 0x0 through 0x24 and writes back the words at 0x4, 0x8, 0x18, 0x1c and 0x24. It makes three indirect calls, at 0xd97b058, 0xd97b098 and 0xd97b0c8, whose arguments come from descriptor words at offsets 0x14, 0x18 and 0x24 and from the global pointer at [0x1010]; the callees are unknown. The loops at 0xd97b0f4 and 0xd97b12c compare counters against a3, and the return at 0xd97b178 yields 0x0 or 0x1. This fits the name's block-grow operation.

- `__glDlistIsBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b5e0
  **Inferred.** Reads three words from the object in a0 at offsets 0x8, 0x0 and 0x4, then tests v1 for zero at 0xd97b5ec and returns through 0xd97b610 with v0 set from a register. The name points at a display-list block test, and the reads are consistent with a header check on a small object.

- `DoCallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bcd0
  **Inferred.** Runs a display-list call against the current context at [0x1010]. It locks the names table with a call to `__glNamesLockData` at 0xd97bd14 and unlocks it with `__glNamesUnlockData` at 0xd97bd70, with work between them that reads and writes context fields at offsets 0x1374 and 0x1340. A branch at 0xd97bcf8 compares the field at [[0x1010]+4980] against 0x40 as a signed value, and the return at 0xd97bd84 yields an unknown register or a lock or unlock result.

- `__glle_Begin_Lines` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d64c
  **Inferred.** The routine reads abs 0x106c at 0xd97d65c and calls through it at 0xd97d66c with a0 = 0x1, forwarding a1 to a3 from its own arguments. The return at 0xd97d680 gives back a0. The 0x1 value matches the lines mode in the name.

- `__glle_Begin_Points` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d688
  **Inferred.** The pointer at abs 0x106c, loaded at 0xd97d698, is called at 0xd97d6a8 with a0 = 0x0. Arguments a1 to a3 pass straight through, and the return at 0xd97d6bc gives back a0. Mode 0x0 is the one the points name refers to.

- `__glle_Begin_Polygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d6c4
  **Inferred.** Polygon dispatch: it loads abs 0x106c at 0xd97d6d4, calls through it at 0xd97d6e4 with a0 = 0x9, forwards a1 to a3, and returns a0 from 0xd97d6f8. The 0x9 value is the polygon mode.

- `__glle_Begin_TriangleStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d700
  **Inferred.** Calls at 0xd97d720 through the pointer at abs 0x106c (loaded at 0xd97d710) with a0 = 0x5. Arguments a1 to a3 are forwarded, and the return at 0xd97d734 yields a0. The constant 0x5 is the strip-of-triangles mode.

- `__glle_Begin_TriangleFan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d73c
  **Inferred.** Reads abs 0x106c at 0xd97d74c and calls through it at 0xd97d75c with a0 = 0x6, forwarding a1 to a3. Its return at 0xd97d770 returns a0. The 0x6 value fits the fan mode the name gives.

- `__glle_Begin_Triangles` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d778
  **Inferred.** Loads abs 0x106c at 0xd97d788 and calls through it at 0xd97d798 with a0 = 0x4. The arguments a1 to a3 are passed unchanged, and the return at 0xd97d7ac yields a0. The 0x4 mode value matches the separate-triangles mode.

- `__glle_Begin_QuadStrip` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7b4
  **Inferred.** The pointer at abs 0x106c, read at 0xd97d7c4, is called at 0xd97d7d4 with a0 = 0x8. Arguments a1 to a3 pass through, and the return at 0xd97d7e8 gives a0. Mode 0x8 is the quad-strip value the name refers to.

- `__glle_Begin_Quads` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d7f0
  **Inferred.** Reads abs 0x106c at 0xd97d800, calls through it at 0xd97d810 with a0 = 0x7, forwards a1 to a3, and returns a0 from 0xd97d824. The 0x7 value is the separate-quads mode.

- `__gllc_InvalidValue` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97d82c
  **Inferred.** Allocates an op through `__glDlistAllocOp2` at 0xd97c96c with a0 passed through and a1 set to 0x0. When the allocation is nonzero it stores a halfword at +0xc of the new op (sh at 0xd97d864), then appends the op through `__glDlistAppendOp` at 0xd97ca04 with the constant address 0xd97dab4 as its third argument. When the allocation returns zero, the beq at 0xd97d858 branches to the return at 0xd97d884. The name suggests an invalid-value error recorded into the list, which fits a constant error argument.

- `__gllc_Rectfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981510
  **Inferred.** Copies the two float pairs at offsets 0x0 and 0x4 of a0 and a1 (lwc1 at 0xd981568 through 0xd981580) into words at offsets 0x10 through 0x1c of a new op. The op is allocated through `__glDlistAllocOp2` at 0xd97c96c with size 0x10 and appended through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98a9f0. The halfword store at +0xc (sh at 0xd981560) is probably the op code. The name fits a rectangle given by two float corners.

- `__gllc_Recti` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9815b4
  **Inferred.** Allocates a 0x10-size op through `__glDlistAllocOp2` at 0xd97c96c, stores a halfword at +0xc and four words at +0x10 through +0x1c, and appends it through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa30. The four stored words come from registers the facts leave as unknown. The shape fits an integer rectangle given by two corner points.

- `__gllc_Rectiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981658
  **Inferred.** Copies the two word pairs at offsets 0x0 and 0x4 of a0 and a1 into words at offsets 0x10 through 0x1c of a new op. The op is allocated through `__glDlistAllocOp2` at 0xd97c96c with size 0x10 and appended through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa30. The halfword store at +0xc (sh at 0xd9816a8) is probably the op code. The name fits an integer rectangle given by two corner vectors.

- `__gllc_Rects` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9816fc
  **Inferred.** Allocates an op through `__glDlistAllocOp2` at 0xd97c96c with the size argument 0x8, stores a halfword at +0xc and four halfwords at +0x10 through +0x16, and appends it through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa70. The stored halfwords come from registers the facts leave as unknown. The size argument 0x8 does not cover the highest offset written, so it is a size code rather than a byte count.

- `__gllc_Rectsv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9817a0
  **Inferred.** Copies the two halfword pairs at offsets 0x0 and 0x2 of a0 and a1 (lh at 0xd9817f4 through 0xd981810) into halfwords at offsets 0x10 through 0x16 of a new op. The op is allocated through `__glDlistAllocOp2` at 0xd97c96c with size argument 0x8 and appended through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aa70. The halfword store at +0xc (sh at 0xd9817f0) is probably the op code. The size argument does not cover the highest offset written, so it is a size code rather than a byte count.

- `__gllc_TexCoord1d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981844
  **Inferred.** Allocates an op through `__glDlistAllocOp2` at 0xd97c96c with the size argument 0x8, stores a halfword at +0xc, a byte at +0xe and an 8-byte double at +0x10 (sdc1 at 0xd98189c), and appends it through `__glDlistAppendOp` at 0xd97ca04 with the constant 0xd98aab0. The double's source register is an unknown register. The name points at a one-coordinate double texture coordinate, which matches the 8-byte store.
