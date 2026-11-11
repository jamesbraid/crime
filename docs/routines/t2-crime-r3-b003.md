# Routine readings for crime, tier-2 round 3, batch 3

Each entry records what the rendered instruction facts of one routine show. They describe the
software in these builds, not hardware behavior. Addresses are in the binary named in the header.

- `__gllc_RasterPos2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9805f0
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd98061c with size argument 0x8, stores a
  halfword at +0xc and two 4-byte FP-register values at +0x10 and +0x14, then passes the block to
  `__glDlistAppendOp` at 0xd980660 with 0xd98a71c as its third argument. The context word at 0x1010 and its
  field at +0x1384 are read and written around the calls. The rendered facts do not show whether the size
  argument is a byte count or a class code, and the FP-store sources are not listed.

- `__gllc_RasterPos2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98067c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9806a4 with size argument 0x8, stores a
  halfword at +0xc and copies two 4-byte values from the vector pointer in a0 (loads at 0xd9806cc and
  0xd9806d4) into the block at +0x10 and +0x14. It then calls `__glDlistAppendOp` at 0xd9806ec with
  0xd98a71c. A null allocation branches past the append at 0xd9806b8. The meaning of the context word at 0x1010
  is not settled by these facts.

- `__gllc_RasterPos2i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980708
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980734 with size argument 0x8, stores a
  halfword at +0xc and two words at +0x10 and +0x14, and appends the block with `__glDlistAppendOp` at
  0xd980778 using 0xd98a758 as the third argument. The context word at 0x1010 is read, and its field at
  +0x1384 is updated at 0xd980768 and 0xd980770. The stored word sources are not listed in the facts.

- `__gllc_RasterPos2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980794
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9807bc with size argument 0x8, copies two
  words from the pointer in a0 (loads at 0xd9807e0 and 0xd9807ec) into the block at +0x10 and +0x14, and stores
  a halfword at +0xc. It appends the block through `__glDlistAppendOp` at 0xd980804 with 0xd98a758. The
  context at 0x1010 and its +0x1384 field are read and written around the append.

- `__gllc_RasterPos2s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980820
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd98084c with size argument 0x4, stores three
  halfwords at +0xc, +0x10 and +0x12, and appends the block through `__glDlistAppendOp` at 0xd980890 with
  0xd98a794. The three halfword stores are not traced to a source in these facts, so the operand mapping is
  inferred only from the store offsets.

- `__gllc_RasterPos2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9808ac
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9808d4 with size argument 0x4, copies two
  halfwords from the pointer in a0 (loads at 0xd9808f8 and 0xd980904) into the block at +0x10 and +0x12, and
  stores a halfword at +0xc. It then appends the block through `__glDlistAppendOp` at 0xd98091c with 0xd98a794.
  The context word at 0x1010 is read and its +0x1384 field is updated.

- `__gllc_RasterPos3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980938
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980964 with size argument 0x18, stores a
  halfword at +0xc and a byte at +0xe, then stores three 8-byte FP-register values at +0x10, +0x18 and +0x20.
  It appends the block through `__glDlistAppendOp` at 0xd9809b8 with 0xd98a7d0. The 8-byte store sources are
  not listed, and the size argument does not match the highest store offset, so its unit is not settled.

- `__gllc_RasterPos3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9809d4
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980a00 with size argument 0x18 and stores a
  halfword at +0xc and a byte at +0xe. It copies three 8-byte values from the pointer in a0 (loads at 0xd980a30,
  0xd980a38 and 0xd980a40) into the block at +0x10, +0x18 and +0x20, then appends the block through
  `__glDlistAppendOp` at 0xd980a58 with 0xd98a7d0.

- `__gllc_RasterPos3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980a74
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980aa4 with size argument 0xc, stores a
  halfword at +0xc and three 4-byte FP-register values at +0x10, +0x14 and +0x18, and appends the block with
  `__glDlistAppendOp` at 0xd980af0 using 0xd98a80c. The FP-store sources are not listed in the facts.

- `__gllc_RasterPos3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980b0c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980b38 with size argument 0xc and stores a
  halfword at +0xc. It copies three 4-byte values from the pointer in a0 (loads at 0xd980b60, 0xd980b68 and
  0xd980b70) into the block at +0x10, +0x14 and +0x18, then appends the block through `__glDlistAppendOp` at
  0xd980b88 with 0xd98a80c.

- `__gllc_RasterPos3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980ba4
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980bd4 with size argument 0xc, stores a
  halfword at +0xc and three words at +0x10, +0x14 and +0x18, and appends the block through `__glDlistAppendOp`
  at 0xd980c20 with 0xd98a848. The word sources are not listed, and the context field at +0x1384 is updated
  at 0xd980c10 and 0xd980c18.

- `__gllc_RasterPos3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980c3c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980c68 with size argument 0xc and stores a
  halfword at +0xc. It copies three words from the pointer in a0 (loads at 0xd980c8c, 0xd980c98 and 0xd980ca0)
  into the block at +0x10, +0x14 and +0x18, then appends the block through `__glDlistAppendOp` at 0xd980cb8
  with 0xd98a848.

- `__gllc_RasterPos3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980cd4
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980d04 with size argument 0x8, stores four
  halfwords at +0xc, +0x10, +0x12 and +0x14, and appends the block through `__glDlistAppendOp` at 0xd980d50 with
  0xd98a884. The halfword sources are not listed, and the size argument is smaller than the store extent.

- `__gllc_RasterPos3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980d6c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980d98 with size argument 0x8, stores a
  halfword at +0xc, and copies three halfwords from the pointer in a0 (loads at 0xd980dbc, 0xd980dc8 and
  0xd980dd0) into the block at +0x10, +0x12 and +0x14. It appends the block through `__glDlistAppendOp` at
  0xd980de8 with 0xd98a884.

- `__gllc_RasterPos4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980e04
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980e30 with size argument 0x20, stores a
  halfword at +0xc and a byte at +0xe, then stores four 8-byte FP-register values at +0x10, +0x18, +0x20 and
  +0x28. It appends the block through `__glDlistAppendOp` at 0xd980e8c with 0xd98a8c0. The FP-store sources
  are not listed in the facts.

- `__gllc_RasterPos4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980ea8
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980ed4 with size argument 0x20 and stores a
  halfword at +0xc and a byte at +0xe. It copies four 8-byte values from the pointer in a0 (loads at 0xd980f04,
  0xd980f0c, 0xd980f14 and 0xd980f1c) into the block at +0x10 through +0x28, then appends the block through
  `__glDlistAppendOp` at 0xd980f34 with 0xd98a8c0.

- `__gllc_RasterPos4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980f50
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd980f84 with size argument 0x10, stores a
  halfword at +0xc and four 4-byte FP-register values at +0x10, +0x14, +0x18 and +0x1c, and appends the block
  through `__glDlistAppendOp` at 0xd980fd8 with 0xd98a8fc. The FP-store sources are not listed in the facts.

- `__gllc_RasterPos4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980ff4
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd981020 with size argument 0x10 and stores a
  halfword at +0xc. It copies four 4-byte values from the pointer in a0 (loads at 0xd981048 through 0xd981060)
  into the block at +0x10, +0x14, +0x18 and +0x1c, then appends the block through `__glDlistAppendOp` at
  0xd981078 with 0xd98a8fc.

- `__gllc_RasterPos4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981094
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9810c8 with size argument 0x10, stores a
  halfword at +0xc and four words at +0x10, +0x14, +0x18 and +0x1c, and appends the block through
  `__glDlistAppendOp` at 0xd98111c with 0xd98a938. The word sources are not listed in the facts.

- `__gllc_RasterPos4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981138
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd981164 with size argument 0x10 and stores a
  halfword at +0xc. It copies four words from the pointer in a0 (loads at 0xd981188 through 0xd98119c and
  0xd9811a4) into the block at +0x10 through +0x1c, then appends the block through `__glDlistAppendOp` at
  0xd9811bc with 0xd98a938.

- `__gllc_RasterPos4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9811d8
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd98120c with size argument 0x8, stores five
  halfwords at +0xc, +0x10, +0x12, +0x14 and +0x16, and appends the block through `__glDlistAppendOp` at
  0xd981260 with 0xd98a974. The halfword sources are not listed, and the size argument is smaller than the
  store extent.

- `__gllc_RasterPos4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98127c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9812a8 with size argument 0x8 and stores a
  halfword at +0xc. It copies four halfwords from the pointer in a0 (loads at 0xd9812cc through 0xd9812e8) into
  the block at +0x10 through +0x16, then appends the block through `__glDlistAppendOp` at 0xd981300 with
  0xd98a974.

- `__gllc_Rectd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98131c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd981348 with size argument 0x20, stores a
  halfword at +0xc and a byte at +0xe, then stores four 8-byte FP-register values at +0x10 through +0x28. It
  appends the block through `__glDlistAppendOp` at 0xd9813a4 with 0xd98a9b0. The FP-store sources are not
  listed in the facts.

- `__gllc_Rectdv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9813c0
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9813ec with size argument 0x20 and stores a
  halfword at +0xc and a byte at +0xe. It copies two 8-byte values from the pointer in a0 (loads at 0xd981420
  and 0xd981428) and two from the pointer in a1 (loads at 0xd981430 and 0xd981438) into the block at +0x10
  through +0x28, then appends the block through `__glDlistAppendOp` at 0xd981450 with 0xd98a9b0.

- `__gllc_Rectf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98146c
  **Inferred.** Allocates a block through `__glDlistAllocOp2` at 0xd9814a0 with size argument 0x10, stores a
  halfword at +0xc and four 4-byte FP-register values at +0x10 through +0x1c, and appends the block through
  `__glDlistAppendOp` at 0xd9814f4 with 0xd98a9f0. The FP-store sources are not listed in the facts.
