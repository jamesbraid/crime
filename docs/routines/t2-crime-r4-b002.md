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

- `__gllc_TexCoord4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982790
  **Inferred.** Vector form of `__gllc_TexCoord4f`. It reads four 4-byte words from the memory a0 points
  to (0xd9827e4 to 0xd9827fc) and stores them into the record at +0x10 to +0x1c. Allocation at 0xd9827bc requests 0x10 bytes; the append at 0xd982814 is passed descriptor 0xd98adbc.

- `__gllc_TexCoord4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982830
  **Inferred.** Records a four-value integer texture coordinate. The allocation at 0xd982864 asks for 0x10
  bytes, the four word stores at 0xd98288c to 0xd9828a4 fill +0x10 to +0x1c, and the append at 0xd9828b8
  receives descriptor 0xd98adf8. The source of the stored words is unknown.

- `__gllc_TexCoord4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9828d4
  **Inferred.** Vector form of `__gllc_TexCoord4i`. It reads four words from the memory a0 points to
  (0xd982924 to 0xd982940) and copies them into the record at +0x10 to +0x1c. It requests 0x10 bytes from the allocator at 0xd982900 and passes descriptor 0xd98adf8 to the append at 0xd982958.

- `__gllc_TexCoord4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982974
  **Inferred.** Records a four-value short texture coordinate. The allocation at 0xd9829a8 asks for 0x8
  bytes, the halfword stores at 0xd9829d0 to 0xd9829e8 fill +0x10 to +0x16, and the append at 0xd9829fc
  receives descriptor 0xd98ae34. The source of the stored halfwords is unknown.

- `__gllc_TexCoord4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982a18
  **Inferred.** Vector form of `__gllc_TexCoord4s`. It loads halfwords from the memory a0 points to
  (0xd982a68 to 0xd982a84) and stores them at +0x10 to +0x16 of the record. The allocator call at 0xd982a44 takes 0x8 bytes, and the append call at 0xd982a9c gets descriptor 0xd98ae34.

- `__gllc_Vertex2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982ab8
  **Inferred.** Records a two-component double vertex. The allocation at 0xd982ae4 asks for 0x10 bytes,
  the double stores at 0xd982b14 and 0xd982b1c fill +0x10 and +0x18, a byte store at +0xe sits beside
  the short at +0xc, and the append at 0xd982b30 receives descriptor 0xd98ae70. The value stored at +0xe is unknown.

- `__gllc_Vertex2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982b4c
  **Inferred.** Vector form of `__gllc_Vertex2d`. It reads its two doubles from the memory a0 points to
  and stores them at +0x10 and +0x18 of a 0x10-byte record. The allocation at 0xd982b74 asks for 0x10 bytes, and the append at 0xd982bc4 receives descriptor 0xd98ae70.

- `__gllc_Vertex2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982be0
  **Inferred.** Records a two-component float vertex. The allocation at 0xd982c0c asks for 0x8 bytes,
  the stores at 0xd982c34 and 0xd982c3c write two 4-byte values at +0x10 and +0x14, and the append at
  0xd982c50 receives descriptor 0xd98aeac. The stored values come from floating-point argument
  registers whose numbers are unknown.

- `__gllc_Vertex2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982c6c
  **Inferred.** Vector form of `__gllc_Vertex2f`. It reads two 4-byte values from the memory a0 points to
  and stores them at +0x10 and +0x14 of an 8-byte record. Allocation at 0xd982c94 requests 0x8 bytes; the append at 0xd982cdc is passed descriptor 0xd98aeac.

- `__gllc_Vertex2i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982cf8
  **Inferred.** Records a two-component integer vertex. The allocation at 0xd982d24 asks for 0x8 bytes,
  the word stores fill +0x10 and +0x14 of the record, and the append at 0xd982d68 receives descriptor
  0xd98aee8. The source of the stored words is unknown.

- `__gllc_Vertex2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982d84
  **Inferred.** Vector form of `__gllc_Vertex2i`. It reads two words from the memory a0 points to and
  stores them at +0x10 and +0x14 of an 8-byte record. It requests 0x8 bytes from the allocator at 0xd982dac and passes descriptor 0xd98aee8 to the append at 0xd982df4.

- `__gllc_Vertex2s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982e10
  **Inferred.** Records a two-component short vertex. The allocation at 0xd982e3c asks for 0x4 bytes,
  the halfword stores at 0xd982e64 and 0xd982e6c fill +0x10 and +0x12, and the append at 0xd982e80
  receives descriptor 0xd98af24. The source of the stored halfwords is unknown.

- `__gllc_Vertex2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982e9c
  **Inferred.** Vector form of `__gllc_Vertex2s`. It reads two halfwords from the memory a0 points to and
  stores them at +0x10 and +0x12 of a 4-byte record. The allocator call at 0xd982ec4 takes 0x4 bytes, and the append call at 0xd982f0c gets descriptor 0xd98af24.

- `__gllc_Vertex3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982f28
  **Inferred.** Records a three-component double vertex. The allocation at 0xd982f54 asks for 0x18
  bytes, the double stores at 0xd982f84, 0xd982f8c and 0xd982f94 fill +0x10, +0x18 and +0x20, which is
  exactly the 24-byte payload, and the append at 0xd982fa8 receives descriptor 0xd98af60. The value stored at
  +0xe is unknown, as in `__gllc_Vertex2d`.

- `__gllc_Vertex3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd982fc4
  **Inferred.** Vector form of `__gllc_Vertex3d`. It reads three doubles from the memory a0 points to and
  stores them into the 0x18-byte payload. The allocation at 0xd982ff0 asks for 0x18 bytes, and the
  append at 0xd983048 receives descriptor 0xd98af60.

- `__gllc_Vertex3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983064
  **Inferred.** Records a three-component float vertex. Its allocation at 0xd983094 takes 0xc bytes, and its append at 0xd9830e0 gets descriptor 0xd98af9c. The three 4-byte payload stores fill +0x10
  to +0x18, and their source registers are unknown.

- `__gllc_Vertex3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9830fc
  **Inferred.** Vector form of `__gllc_Vertex3f`. It reads three 4-byte values from the memory a0 points
  to and stores them into the 0xc-byte payload. The allocation at 0xd983128 asks for 0xc bytes, and the
  append at 0xd983178 receives descriptor 0xd98af9c.

- `__gllc_Vertex3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983194
  **Inferred.** Records a three-component integer vertex. Allocation at 0xd9831c4 requests 0xc bytes; the append at 0xd983210 is passed descriptor 0xd98afd8. The three word stores fill the 0xc-byte
  payload at +0x10, and their source is unknown.

- `__gllc_Vertex3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98322c
  **Inferred.** Vector form of `__gllc_Vertex3i`. It reads three words from the memory a0 points to and
  stores them into the 0xc-byte payload. The allocation at 0xd983258 asks for 0xc bytes, and the append
  at 0xd9832a8 receives descriptor 0xd98afd8.

- `__gllc_Vertex3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9832c4
  **Inferred.** Records a three-component short vertex. The allocation at 0xd9832f4 asks for 0x8 bytes,
  the halfword stores at 0xd98331c, 0xd983324 and 0xd98332c write +0x10, +0x12 and +0x14, and the append
  at 0xd983340 receives descriptor 0xd98b014. Three halfwords are 6 bytes, so the 8-byte request is two
  bytes more than the stores fill. I have not settled whether that is padding or a different size
  convention, and the source of the stored halfwords is unknown.

- `__gllc_Vertex3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98335c
  **Inferred.** Vector form of `__gllc_Vertex3s`. It reads three halfwords from the memory a0 points to
  (0xd9833ac to 0xd9833c0) and stores them at +0x10 to +0x14. The allocation at 0xd983388 asks for 0x8
  bytes, the same 2-byte gap over the 6 bytes stored as in `__gllc_Vertex3s`, and the append at 0xd9833d8
  receives descriptor 0xd98b014.

- `__gllc_Vertex4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9833f4
  **Inferred.** Records a four-component double vertex. The allocation at 0xd983420 asks for 0x20 bytes,
  the double stores fill the 32-byte payload from +0x10, and the append at 0xd98347c receives descriptor
  0xd98b050. The value stored at +0xe is unknown, as in `__gllc_Vertex2d`.

- `__gllc_Vertex4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983498
  **Inferred.** Vector form of `__gllc_Vertex4d`. It reads four doubles from the memory a0 points to and
  stores them into the 0x20-byte payload. The allocation at 0xd9834c4 asks for 0x20 bytes, and the
  append at 0xd983524 receives descriptor 0xd98b050.

- `__gllc_Vertex4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd983540
  **Inferred.** Records a four-component float vertex. The allocation at 0xd983574 asks for 0x10 bytes,
  the four 4-byte stores fill the payload, and the append at 0xd9835c8 receives descriptor 0xd98b08c.
  The source registers of the stores are unknown.
