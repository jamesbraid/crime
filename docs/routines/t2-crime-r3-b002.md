# Tier-2 routine readings, crime round 3 batch 2

Routines in `usr/gfx/arch/IP32CRM/libGLcore.so`, read from the rendered instruction facts of that
build. Every role below is inferred. The rendered facts show the code paths, record offsets and
constants, but they do not name the source of the record stores, so the roles say so where it
matters. The global at 0x1010 is read as the context pointer, and the word at context +0x1384 is
read and written back on every call; the rendered facts do not show the add, so the counter's
meaning is an inference.

All 25 routines in this batch are display-list recorders for the immediate-mode vertex entry
points. Each one allocates a fixed-size record, fills it, and passes it to the append routine with an
opcode-table entry. The entries differ in argument width and record layout.

- `__gllc_Color4uiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f774
  **Inferred.** A display-list recorder for the unsigned-int color entry. It reads the context pointer from the global at 0x1010, asks the allocator at 0xd97c96c for a 0x10-byte record, writes a halfword at record +0xc, and copies four words from the argument pointer (loads at a0 +0x0 to +0xc, stores at +0x10 to +0x1c). It then passes the record to the append routine at 0xd97ca04 with opcode entry 0xd98a3d8, and the branch at 0xd97f7b4 skips the append when the allocator returns zero.
  Reviewed: 2026-11-12

- `__gllc_Color4us` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f814
  **Inferred.** The short-color recorder, with an 8-byte record from the allocator call at 0xd97f848. It stores halfwords at record +0xc, +0x10, +0x12, +0x14 and +0x16, and the rendered facts do not name the source registers for those stores. The append call at 0xd97f89c uses opcode entry 0xd98a414, and the zero-allocation branch at 0xd97f858 returns the allocator's zero instead of appending.
  Reviewed: 2026-11-12

- `__gllc_Color4usv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f8b8
  **Inferred.** The vector form of the short-color recorder, with the same 8-byte record and the same opcode entry 0xd98a414 at the append call 0xd97f93c. It loads four halfwords from the argument pointer a0 at +0x0, +0x2, +0x4 and +0x6 (lhu at 0xd97f908 to 0xd97f924) and stores them at record +0x10 to +0x16. The zero-allocation branch is at 0xd97f8f8.
  Reviewed: 2026-11-12

- `__gllc_EdgeFlag` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f958
  **Inferred.** A flag recorder with a 4-byte allocation at 0xd97f980. It writes a halfword at record +0xc and a single byte at +0x10 (sb at 0xd97f9a8), with the byte's source not named in the rendered facts. It appends the record at 0xd97f9b0 with opcode entry 0xd98a450, and the branch at 0xd97f990 returns the zero allocation when it fails.
  Reviewed: 2026-11-12

- `__gllc_EdgeFlagv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97f9cc
  **Inferred.** The vector form of the edge-flag recorder, with the same 4-byte record and opcode entry 0xd98a450. It loads one byte from a0 at +0x0 (lbu at 0xd97fa1c) and stores it at record +0x10 (sb at 0xd97fa20), with a halfword at +0xc. The append call is at 0xd97fa28 and the zero-allocation branch at 0xd97fa04.
  Reviewed: 2026-11-12

- `__gllc_Indexd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97faac
  **Inferred.** A recorder for the double-precision index entry, with an 8-byte allocation at 0xd97fad4. It writes a halfword at +0xc, a byte at +0xe, and an 8-byte double at +0x10 (sdc1 at 0xd97fb04), with the double's source register not named in the rendered facts. The append call at 0xd97fb18 uses opcode entry 0xd98a4c4, and the branch at 0xd97fae4 handles the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Indexdv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fb34
  **Inferred.** The vector form of the double index recorder, with the same 8-byte record and opcode entry 0xd98a4c4. It loads an 8-byte double from a0 at +0x0 (ldc1 at 0xd97fb88) and stores it at record +0x10 (sdc1 at 0xd97fb90), with the halfword at +0xc and the byte at +0xe. The append call is at 0xd97fba4 and the zero-allocation branch at 0xd97fb6c.
  Reviewed: 2026-11-12

- `__gllc_Indexf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fbc0
  **Inferred.** A recorder for the single-precision index entry, with a 4-byte allocation at 0xd97fbe8. It writes a halfword at record +0xc and a single-precision float at +0x10 (swc1 at 0xd97fc10), with the float's source not named in the rendered facts. The append call at 0xd97fc24 uses opcode entry 0xd98a500, and the branch at 0xd97fbf8 returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Indexfv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fc40
  **Inferred.** The vector form of the float index recorder, with the same 4-byte record and opcode entry 0xd98a500. It loads one float from a0 at +0x0 (lwc1 at 0xd97fc8c) and stores it at record +0x10 (swc1 at 0xd97fc94), with the halfword at +0xc. The append call is at 0xd97fca8 and the zero-allocation branch at 0xd97fc78.
  Reviewed: 2026-11-12

- `__gllc_Indexi` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fcc4
  **Inferred.** A recorder for the integer index entry, with a 4-byte allocation at 0xd97fcec. It writes a halfword at record +0xc and a word at +0x10 (sw at 0xd97fd14), with the word's source not named in the rendered facts. The append call at 0xd97fd28 uses opcode entry 0xd98a53c, and the branch at 0xd97fcfc returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Indexiv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fd44
  **Inferred.** The vector form of the integer index recorder, with the same 4-byte record and opcode entry 0xd98a53c. It loads one word from a0 at +0x0 (lw at 0xd97fd94) and stores it at record +0x10 (sw at 0xd97fd98), with the halfword at +0xc. The append call is at 0xd97fdac and the zero-allocation branch at 0xd97fd7c.
  Reviewed: 2026-11-12

- `__gllc_Indexs` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fdc8
  **Inferred.** A recorder for the short index entry, with a 4-byte allocation at 0xd97fdf0. It writes halfwords at record +0xc and +0x10 (sh at 0xd97fe0c and 0xd97fe18), with the source not named in the rendered facts. The append call at 0xd97fe2c uses opcode entry 0xd98a578, and the branch at 0xd97fe00 handles the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Indexsv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fe48
  **Inferred.** The vector form of the short index recorder, with the same 4-byte record and opcode entry 0xd98a578. It loads one halfword from a0 at +0x0 (lh at 0xd97fe98) and stores it at record +0x10 (sh at 0xd97fe9c), with the halfword at +0xc. The append call is at 0xd97feb0 and the zero-allocation branch at 0xd97fe80.
  Reviewed: 2026-11-12

- `__gllc_Normal3b` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fecc
  **Inferred.** A recorder for the signed-byte normal entry, with a 4-byte allocation at 0xd97fefc. It writes a halfword at record +0xc and three bytes at +0x10, +0x11 and +0x12 (sb at 0xd97ff24, 0xd97ff2c and 0xd97ff34), with the byte sources not named in the rendered facts. The append call at 0xd97ff48 uses opcode entry 0xd98a5b4, and the branch at 0xd97ff0c returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Normal3bv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97ff64
  **Inferred.** The vector form of the signed-byte normal recorder, with the same 4-byte record and opcode entry 0xd98a5b4. It loads three bytes from a0 at +0x0, +0x1 and +0x2 (lb at 0xd97ffb4, 0xd97ffc0 and 0xd97ffc8) and stores them at record +0x10 to +0x12. The append call is at 0xd97ffe0 and the zero-allocation branch at 0xd97ffa4.
  Reviewed: 2026-11-12

- `__gllc_Normal3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97fffc
  **Inferred.** A recorder for the double-precision normal entry, with a 0x18-byte allocation at 0xd980028. It writes a halfword at record +0xc, a byte at +0xe, and three 8-byte doubles at +0x10, +0x18 and +0x20 (sdc1 at 0xd980058, 0xd980060 and 0xd980068), with the source registers not named in the rendered facts. The append call at 0xd98007c uses opcode entry 0xd98a5f0, and the branch at 0xd980038 returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Normal3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980098
  **Inferred.** The vector form of the double normal recorder, with the same 0x18-byte record and opcode entry 0xd98a5f0. It loads three doubles from a0 at +0x0, +0x8 and +0x10 (ldc1 at 0xd9800f4, 0xd9800fc and 0xd980104) and stores them at record +0x10, +0x18 and +0x20. The halfword at +0xc and byte at +0xe are written as in the scalar form, the append call is at 0xd98011c, and the zero-allocation branch at 0xd9800d8.
  Reviewed: 2026-11-12

- `__gllc_Normal3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980138
  **Inferred.** A recorder for the single-precision normal entry, with a 0xc-byte allocation at 0xd980168. It writes a halfword at record +0xc and three single-precision floats at +0x10, +0x14 and +0x18 (swc1 at 0xd980190, 0xd980198 and 0xd9801a0), with the float sources not named in the rendered facts. The append call at 0xd9801b4 uses opcode entry 0xd98a62c, and the branch at 0xd980178 returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Normal3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9801d0
  **Inferred.** The vector form of the float normal recorder, with the same 0xc-byte record and opcode entry 0xd98a62c. It loads three floats from a0 at +0x0, +0x4 and +0x8 (lwc1 at 0xd980224, 0xd98022c and 0xd980234) and stores them at record +0x10, +0x14 and +0x18 (swc1 at 0xd980228, 0xd980230 and 0xd980238). The append call is at 0xd98024c and the zero-allocation branch at 0xd980210.
  Reviewed: 2026-11-12

- `__gllc_Normal3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980268
  **Inferred.** A recorder for the integer normal entry, with a 0xc-byte allocation at 0xd980298. It writes a halfword at record +0xc and three words at +0x10, +0x14 and +0x18 (sw at 0xd9802c0, 0xd9802c8 and 0xd9802d0), with the word sources not named in the rendered facts. The append call at 0xd9802e4 uses opcode entry 0xd98a668, and the branch at 0xd9802a8 returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Normal3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980300
  **Inferred.** The vector form of the integer normal recorder, with the same 0xc-byte record and opcode entry 0xd98a668. It loads three words from a0 at +0x0, +0x4 and +0x8 (lw at 0xd980350, 0xd98035c and 0xd980364) and stores them at record +0x10, +0x14 and +0x18 (sw at 0xd980358, 0xd980360 and 0xd980368). The append call is at 0xd98037c and the zero-allocation branch at 0xd980340.
  Reviewed: 2026-11-12

- `__gllc_Normal3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980398
  **Inferred.** A recorder for the short normal entry, with an 8-byte allocation at 0xd9803c8. It writes halfwords at record +0xc, +0x10, +0x12 and +0x14 (sh at 0xd9803e4, 0xd9803f0, 0xd9803f8 and 0xd980400), with the sources not named in the rendered facts. The append call at 0xd980414 uses opcode entry 0xd98a6a4, and the branch at 0xd9803d8 returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_Normal3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980430
  **Inferred.** The vector form of the short normal recorder, with the same 8-byte record and opcode entry 0xd98a6a4. It loads three halfwords from a0 at +0x0, +0x2 and +0x4 (lh at 0xd980480, 0xd98048c and 0xd980494) and stores them at record +0x10, +0x12 and +0x14 (sh at 0xd980488, 0xd980490 and 0xd980498). The append call is at 0xd9804ac and the zero-allocation branch at 0xd980470.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9804c8
  **Inferred.** A recorder for the double-precision raster-position entry, with a 0x10-byte allocation at 0xd9804f4. It writes a halfword at record +0xc, a byte at +0xe and two 8-byte doubles at +0x10 and +0x18 (sdc1 at 0xd980524 and 0xd98052c), with the double sources not named in the rendered facts. The append call at 0xd980540 uses opcode entry 0xd98a6e0, and the branch at 0xd980504 returns the zero allocation.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98055c
  **Inferred.** The vector form of the double raster-position recorder, with the same 0x10-byte record and opcode entry 0xd98a6e0. It loads two doubles from a0 at +0x0 and +0x8 (ldc1 at 0xd9805b4 and 0xd9805bc) and stores them at record +0x10 and +0x18 (sdc1 at 0xd9805b8 and 0xd9805c0). The halfword at +0xc and byte at +0xe are written as in the scalar form, the append call is at 0xd9805d4, and the zero-allocation branch at 0xd980598.
  Reviewed: 2026-11-12
