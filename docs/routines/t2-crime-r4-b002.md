# Tier-2 routine readings, crime round 4 batch 2

Routines in `usr/gfx/arch/IP32CRM/libGLcore.so`, read from the rendered instruction facts of that
build. Every role below is inferred. The rendered facts show the code paths, record offsets,
allocation sizes and constants, but they do not name the source registers of the floating-point
stores, and they do not give the value of the stored opcode halfword or what the descriptor
addresses hold. Those are open sub-facts and are named where they matter.

The global at 0x1010 is read as the context pointer, and the word at context +0x1384 is read and
written back on every call. Its meaning is an inference from the code shape, not a settled fact.

All 25 routines are immediate-mode vertex and texture-coordinate entry points. Each one loads the
context pointer, allocates a record through the pointer at 0xd97c96c, writes a short at +0xc and the
argument payload from +0x10, bumps the context counter at +0x1384, and passes the record to the
append routine through the pointer at 0xd97ca04 with a descriptor address. When the allocation
returns zero, the append is skipped and the routine returns that zero. The scalar forms never read memory
through a0; their values come from argument registers that the facts do not name. The vector forms
(`...v`) read their values from the memory a0 points to. The allocation size and the descriptor address are the same for the scalar and vector
form of one type, which suggests that the descriptor identifies the coordinate type and dimension.

- `__gllc_TexCoord4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9826ec
  **Inferred.** Records a four-value float texture coordinate. The allocation at 0xd982720 asks for 0x10
  bytes, the stores at 0xd982748 to 0xd982760 write four 4-byte words at +0x10 to +0x1c, and the
  append at 0xd982774 receives descriptor 0xd98adbc. The value stored at +0xc and the contents of the
  descriptor are unknown.
  Reviewed: 2026-11-12

- `__gllc_TexCoord4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982790
  **Inferred.** Vector form of `__gllc_TexCoord4f`. It loads four 4-byte float values at +0x0 to +0xc (0xd9827e4 to 0xd9827fc); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 to +0x1c. Allocation at 0xd9827bc requests 0x10 bytes; the append at 0xd982814 is passed descriptor 0xd98adbc.
  Reviewed: 2026-11-12

- `__gllc_TexCoord4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982830
  **Inferred.** Records a four-value integer texture coordinate. The allocation at 0xd982864 asks for 0x10
  bytes, the four word stores at 0xd98288c to 0xd9828a4 fill +0x10 to +0x1c, and the append at 0xd9828b8
  receives descriptor 0xd98adf8. The source of the stored words is unknown.
  Reviewed: 2026-11-12

- `__gllc_TexCoord4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9828d4
  **Inferred.** Vector form of `__gllc_TexCoord4i`. It loads four 4-byte word values at +0x0 to +0xc (0xd982924 to 0xd982940); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 to +0x1c. Allocation at 0xd982900 requests 0x10 bytes; the append at 0xd982958 is passed descriptor 0xd98adf8.
  Reviewed: 2026-11-12

- `__gllc_TexCoord4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982974
  **Inferred.** Records a four-value short texture coordinate. The allocation at 0xd9829a8 asks for 0x8
  bytes, the halfword stores at 0xd9829d0 to 0xd9829e8 fill +0x10 to +0x16, and the append at 0xd9829fc
  receives descriptor 0xd98ae34. The source of the stored halfwords is unknown.
  Reviewed: 2026-11-12

- `__gllc_TexCoord4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982a18
  **Inferred.** Vector form of `__gllc_TexCoord4s`. It loads four halfword values at +0x0 to +0x6 (0xd982a68 to 0xd982a84); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 to +0x16. Allocation at 0xd982a44 requests 0x8 bytes; the append at 0xd982a9c is passed descriptor 0xd98ae34.
  Reviewed: 2026-11-12

- `__gllc_Vertex2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982ab8
  **Inferred.** Records a two-component double vertex. The allocation at 0xd982ae4 asks for 0x10 bytes,
  the double stores at 0xd982b14 and 0xd982b1c fill +0x10 and +0x18, a byte store at +0xe sits beside
  the short at +0xc, and the append at 0xd982b30 receives descriptor 0xd98ae70. The value stored at +0xe is unknown.
  Reviewed: 2026-11-12

- `__gllc_Vertex2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982b4c
  **Inferred.** Vector form of `__gllc_Vertex2d`. It loads two 8-byte double values at +0x0 and +0x8 (0xd982ba4 and 0xd982bac); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 and +0x18. Allocation at 0xd982b74 requests 0x10 bytes; the append at 0xd982bc4 is passed descriptor 0xd98ae70.
  Reviewed: 2026-11-12

- `__gllc_Vertex2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982be0
  **Inferred.** Records a two-component float vertex. The allocation at 0xd982c0c asks for 0x8 bytes, the stores at 0xd982c34 and 0xd982c3c write two 4-byte values at +0x10 and +0x14, and the append at 0xd982c50 receives descriptor 0xd98aeac. The source of the stored values is not shown by the facts.
  Reviewed: 2026-11-12

- `__gllc_Vertex2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982c6c
  **Inferred.** Vector form of `__gllc_Vertex2f`. It loads two 4-byte float values at +0x0 and +0x4 (0xd982cbc and 0xd982cc4); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 and +0x14. Allocation at 0xd982c94 requests 0x8 bytes; the append at 0xd982cdc is passed descriptor 0xd98aeac.
  Reviewed: 2026-11-12

- `__gllc_Vertex2i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982cf8
  **Inferred.** Records a two-component integer vertex. The allocation at 0xd982d24 asks for 0x8 bytes,
  the word stores fill +0x10 and +0x14 of the record, and the append at 0xd982d68 receives descriptor
  0xd98aee8. The source of the stored words is unknown.
  Reviewed: 2026-11-12

- `__gllc_Vertex2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982d84
  **Inferred.** Vector form of `__gllc_Vertex2i`. It loads two 4-byte word values at +0x0 and +0x4 (0xd982dd0 and 0xd982ddc); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 and +0x14. Allocation at 0xd982dac requests 0x8 bytes; the append at 0xd982df4 is passed descriptor 0xd98aee8.
  Reviewed: 2026-11-12

- `__gllc_Vertex2s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982e10
  **Inferred.** Records a two-component short vertex. The allocation at 0xd982e3c asks for 0x4 bytes,
  the halfword stores at 0xd982e64 and 0xd982e6c fill +0x10 and +0x12, and the append at 0xd982e80
  receives descriptor 0xd98af24. The source of the stored halfwords is unknown.
  Reviewed: 2026-11-12

- `__gllc_Vertex2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982e9c
  **Inferred.** Vector form of `__gllc_Vertex2s`. It loads two halfword values at +0x0 and +0x2 (0xd982ee8 and 0xd982ef4); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 and +0x12. Allocation at 0xd982ec4 requests 0x4 bytes; the append at 0xd982f0c is passed descriptor 0xd98af24.
  Reviewed: 2026-11-12

- `__gllc_Vertex3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982f28
  **Inferred.** Records a three-component double vertex. The allocation at 0xd982f54 asks for 0x18
  bytes, the double stores at 0xd982f84, 0xd982f8c and 0xd982f94 fill +0x10, +0x18 and +0x20, which is
  exactly the 24-byte payload, and the append at 0xd982fa8 receives descriptor 0xd98af60. The value stored at
  +0xe is unknown, as in `__gllc_Vertex2d`.
  Reviewed: 2026-11-12

- `__gllc_Vertex3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982fc4
  **Inferred.** Vector form of `__gllc_Vertex3d`. It loads three 8-byte double values at +0x0, +0x8 and +0x10 (0xd983020 to 0xd983030); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10, +0x18 and +0x20. Allocation at 0xd982ff0 requests 0x18 bytes; the append at 0xd983048 is passed descriptor 0xd98af60.
  Reviewed: 2026-11-12

- `__gllc_Vertex3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983064
  **Inferred.** Records a three-component float vertex. Its allocation at 0xd983094 takes 0xc bytes, and its append at 0xd9830e0 gets descriptor 0xd98af9c. The three 4-byte payload stores fill +0x10
  to +0x18, and their source registers are unknown.
  Reviewed: 2026-11-12

- `__gllc_Vertex3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9830fc
  **Inferred.** Vector form of `__gllc_Vertex3f`. It loads three 4-byte float values at +0x0, +0x4 and +0x8 (0xd983150 to 0xd983160); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 to +0x18. Allocation at 0xd983128 requests 0xc bytes; the append at 0xd983178 is passed descriptor 0xd98af9c.
  Reviewed: 2026-11-12

- `__gllc_Vertex3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983194
  **Inferred.** Records a three-component integer vertex. Allocation at 0xd9831c4 requests 0xc bytes; the append at 0xd983210 is passed descriptor 0xd98afd8. The three word stores fill the 0xc-byte
  payload at +0x10, and their source is unknown.
  Reviewed: 2026-11-12

- `__gllc_Vertex3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98322c
  **Inferred.** Vector form of `__gllc_Vertex3i`. It loads three 4-byte word values at +0x0, +0x4 and +0x8 (0xd98327c to 0xd983290); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10 to +0x18. Allocation at 0xd983258 requests 0xc bytes; the append at 0xd9832a8 is passed descriptor 0xd98afd8.
  Reviewed: 2026-11-12

- `__gllc_Vertex3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9832c4
  **Inferred.** Records a three-component short vertex. The allocation at 0xd9832f4 asks for 0x8 bytes,
  the halfword stores at 0xd98331c, 0xd983324 and 0xd98332c write +0x10, +0x12 and +0x14, and the append
  at 0xd983340 receives descriptor 0xd98b014. Three halfwords are 6 bytes, so the 8-byte request is two
  bytes more than the stores fill. I have not settled whether that is padding or a different size
  convention, and the source of the stored halfwords is unknown.
  Reviewed: 2026-11-12

- `__gllc_Vertex3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98335c
  **Inferred.** Vector form of `__gllc_Vertex3s`. It loads three halfword values at +0x0, +0x2 and +0x4 (0xd9833ac to 0xd9833c0); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10, +0x12 and +0x14. Allocation at 0xd983388 requests 0x8 bytes; the append at 0xd9833d8 is passed descriptor 0xd98b014. Three halfwords are 6 bytes, so the 8-byte request is two bytes more than the stores fill, as in `__gllc_Vertex3s`.
  Reviewed: 2026-11-12

- `__gllc_Vertex4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9833f4
  **Inferred.** Records a four-component double vertex. The allocation at 0xd983420 asks for 0x20 bytes,
  the double stores fill the 32-byte payload from +0x10, and the append at 0xd98347c receives descriptor
  0xd98b050. The value stored at +0xe is unknown, as in `__gllc_Vertex2d`.
  Reviewed: 2026-11-12

- `__gllc_Vertex4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983498
  **Inferred.** Vector form of `__gllc_Vertex4d`. It loads four 8-byte double values at +0x0, +0x8, +0x10 and +0x18 (0xd9834f4 to 0xd98350c); the facts do not name the base register of those loads, but the append call receives a0 at entry in a3, so the base is probably the memory a0 points to. It stores them at +0x10, +0x18, +0x20 and +0x28. Allocation at 0xd9834c4 requests 0x20 bytes; the append at 0xd983524 is passed descriptor 0xd98b050.
  Reviewed: 2026-11-12

- `__gllc_Vertex4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983540
  **Inferred.** Records a four-component float vertex. The allocation at 0xd983574 asks for 0x10 bytes,
  the four 4-byte stores fill the payload, and the append at 0xd9835c8 receives descriptor 0xd98b08c.
  The source registers of the stores are unknown.
  Reviewed: 2026-11-12
