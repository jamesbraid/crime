# Routine role entries, crime round r5, batch 2

- `__gllc_RasterPos2f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9805f0
  **Inferred.** Reads the word at 0x1010 [@0xd98060c] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd98062c fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980638], a 4-byte field at +0x10 of the block [@0xd980644], a 4-byte field at +0x14 of the block [@0xd98064c]; it then reads the word at +0x1384 of the context [@0xd980650] and stores to that word again [@0xd980658].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a71c [call 2, @0xd98062c fall nonzero], and when the allocation is zero [@0xd98062c taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd98062c fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98067c
  **Inferred.** Reads the word at 0x1010 [@0xd980694] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd9806b8 fall nonzero] it reads a0 at +0x0 [@0xd9806cc], a0 at +0x4 [@0xd9806d4]; it writes a 2-byte field at +0xc of the block [@0xd9806c4], a 4-byte field at +0x10 of the block [@0xd9806d0], a 4-byte field at +0x14 of the block [@0xd9806d8]; it then reads the word at +0x1384 of the context [@0xd9806dc] and stores to that word again [@0xd9806e4].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a71c [call 2, @0xd9806b8 fall nonzero], and when the allocation is zero [@0xd9806b8 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd9806b8 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980708
  **Inferred.** Reads the word at 0x1010 [@0xd980720] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd980744 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980750], a 4-byte field at +0x10 of the block [@0xd98075c], a 4-byte field at +0x14 of the block [@0xd980764]; it then reads the word at +0x1384 of the context [@0xd980768] and stores to that word again [@0xd980770].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a758 [call 2, @0xd980744 fall nonzero], and when the allocation is zero [@0xd980744 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980744 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980794
  **Inferred.** Reads the word at 0x1010 [@0xd9807ac] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd9807d0 fall nonzero] it reads a0 at +0x0 [@0xd9807e0], a0 at +0x4 [@0xd9807ec]; it writes a 2-byte field at +0xc of the block [@0xd9807dc], a 4-byte field at +0x10 of the block [@0xd9807e8], a 4-byte field at +0x14 of the block [@0xd9807f0]; it then reads the word at +0x1384 of the context [@0xd9807f4] and stores to that word again [@0xd9807fc].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a758 [call 2, @0xd9807d0 fall nonzero], and when the allocation is zero [@0xd9807d0 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd9807d0 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980820
  **Inferred.** Reads the word at 0x1010 [@0xd980838] and calls `__glDlistAllocOp2` with a1 = 0x4 [call 1].
  On the nonzero side [@0xd98085c fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980868], a 2-byte field at +0x10 of the block [@0xd980874], a 2-byte field at +0x12 of the block [@0xd98087c]; it then reads the word at +0x1384 of the context [@0xd980880] and stores to that word again [@0xd980888].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a794 [call 2, @0xd98085c fall nonzero], and when the allocation is zero [@0xd98085c taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd98085c fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos2sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9808ac
  **Inferred.** Reads the word at 0x1010 [@0xd9808c4] and calls `__glDlistAllocOp2` with a1 = 0x4 [call 1].
  On the nonzero side [@0xd9808e8 fall nonzero] it reads a0 at +0x0 [@0xd9808f8], a0 at +0x2 [@0xd980904]; it writes a 2-byte field at +0xc of the block [@0xd9808f4], a 2-byte field at +0x10 of the block [@0xd980900], a 2-byte field at +0x12 of the block [@0xd980908]; it then reads the word at +0x1384 of the context [@0xd98090c] and stores to that word again [@0xd980914].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a794 [call 2, @0xd9808e8 fall nonzero], and when the allocation is zero [@0xd9808e8 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd9808e8 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980938
  **Inferred.** Reads the word at 0x1010 [@0xd980954] and calls `__glDlistAllocOp2` with a1 = 0x18 [call 1].
  On the nonzero side [@0xd980974 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980984], a 1-byte field at +0xe of the block [@0xd980988], an 8-byte field at +0x10 of the block [@0xd980994], an 8-byte field at +0x18 of the block [@0xd98099c], an 8-byte field at +0x20 of the block [@0xd9809a4]; it then reads the word at +0x1384 of the context [@0xd9809a8] and stores to that word again [@0xd9809b0].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a7d0 [call 2, @0xd980974 fall nonzero], and when the allocation is zero [@0xd980974 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980974 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9809d4
  **Inferred.** Reads the word at 0x1010 [@0xd9809ec] and calls `__glDlistAllocOp2` with a1 = 0x18 [call 1].
  On the nonzero side [@0xd980a14 fall nonzero] it reads a0 at +0x0 [@0xd980a30], a0 at +0x8 [@0xd980a38], a0 at +0x10 [@0xd980a40]; it writes a 2-byte field at +0xc of the block [@0xd980a24], a 1-byte field at +0xe of the block [@0xd980a28], an 8-byte field at +0x10 of the block [@0xd980a34], an 8-byte field at +0x18 of the block [@0xd980a3c], an 8-byte field at +0x20 of the block [@0xd980a44]; it then reads the word at +0x1384 of the context [@0xd980a48] and stores to that word again [@0xd980a50].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a7d0 [call 2, @0xd980a14 fall nonzero], and when the allocation is zero [@0xd980a14 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980a14 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980a74
  **Inferred.** Reads the word at 0x1010 [@0xd980a90] and calls `__glDlistAllocOp2` with a1 = 0xc [call 1].
  On the nonzero side [@0xd980ab4 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980ac0], a 4-byte field at +0x10 of the block [@0xd980acc], a 4-byte field at +0x14 of the block [@0xd980ad4], a 4-byte field at +0x18 of the block [@0xd980adc]; it then reads the word at +0x1384 of the context [@0xd980ae0] and stores to that word again [@0xd980ae8].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a80c [call 2, @0xd980ab4 fall nonzero], and when the allocation is zero [@0xd980ab4 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980ab4 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980b0c
  **Inferred.** Reads the word at 0x1010 [@0xd980b24] and calls `__glDlistAllocOp2` with a1 = 0xc [call 1].
  On the nonzero side [@0xd980b4c fall nonzero] it reads a0 at +0x0 [@0xd980b60], a0 at +0x4 [@0xd980b68], a0 at +0x8 [@0xd980b70]; it writes a 2-byte field at +0xc of the block [@0xd980b58], a 4-byte field at +0x10 of the block [@0xd980b64], a 4-byte field at +0x14 of the block [@0xd980b6c], a 4-byte field at +0x18 of the block [@0xd980b74]; it then reads the word at +0x1384 of the context [@0xd980b78] and stores to that word again [@0xd980b80].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a80c [call 2, @0xd980b4c fall nonzero], and when the allocation is zero [@0xd980b4c taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980b4c fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980ba4
  **Inferred.** Reads the word at 0x1010 [@0xd980bbc] and calls `__glDlistAllocOp2` with a1 = 0xc [call 1].
  On the nonzero side [@0xd980be4 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980bf0], a 4-byte field at +0x10 of the block [@0xd980bfc], a 4-byte field at +0x14 of the block [@0xd980c04], a 4-byte field at +0x18 of the block [@0xd980c0c]; it then reads the word at +0x1384 of the context [@0xd980c10] and stores to that word again [@0xd980c18].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a848 [call 2, @0xd980be4 fall nonzero], and when the allocation is zero [@0xd980be4 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980be4 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980c3c
  **Inferred.** Reads the word at 0x1010 [@0xd980c54] and calls `__glDlistAllocOp2` with a1 = 0xc [call 1].
  On the nonzero side [@0xd980c7c fall nonzero] it reads a0 at +0x0 [@0xd980c8c], a0 at +0x4 [@0xd980c98], a0 at +0x8 [@0xd980ca0]; it writes a 2-byte field at +0xc of the block [@0xd980c88], a 4-byte field at +0x10 of the block [@0xd980c94], a 4-byte field at +0x14 of the block [@0xd980c9c], a 4-byte field at +0x18 of the block [@0xd980ca4]; it then reads the word at +0x1384 of the context [@0xd980ca8] and stores to that word again [@0xd980cb0].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a848 [call 2, @0xd980c7c fall nonzero], and when the allocation is zero [@0xd980c7c taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980c7c fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980cd4
  **Inferred.** Reads the word at 0x1010 [@0xd980cec] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd980d14 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980d20], a 2-byte field at +0x10 of the block [@0xd980d2c], a 2-byte field at +0x12 of the block [@0xd980d34], a 2-byte field at +0x14 of the block [@0xd980d3c]; it then reads the word at +0x1384 of the context [@0xd980d40] and stores to that word again [@0xd980d48].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a884 [call 2, @0xd980d14 fall nonzero], and when the allocation is zero [@0xd980d14 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980d14 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos3sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980d6c
  **Inferred.** Reads the word at 0x1010 [@0xd980d84] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd980dac fall nonzero] it reads a0 at +0x0 [@0xd980dbc], a0 at +0x2 [@0xd980dc8], a0 at +0x4 [@0xd980dd0]; it writes a 2-byte field at +0xc of the block [@0xd980db8], a 2-byte field at +0x10 of the block [@0xd980dc4], a 2-byte field at +0x12 of the block [@0xd980dcc], a 2-byte field at +0x14 of the block [@0xd980dd4]; it then reads the word at +0x1384 of the context [@0xd980dd8] and stores to that word again [@0xd980de0].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a884 [call 2, @0xd980dac fall nonzero], and when the allocation is zero [@0xd980dac taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980dac fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4d` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980e04
  **Inferred.** Reads the word at 0x1010 [@0xd980e20] and calls `__glDlistAllocOp2` with a1 = 0x20 [call 1].
  On the nonzero side [@0xd980e40 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980e50], a 1-byte field at +0xe of the block [@0xd980e54], an 8-byte field at +0x10 of the block [@0xd980e60], an 8-byte field at +0x18 of the block [@0xd980e68], an 8-byte field at +0x20 of the block [@0xd980e70], an 8-byte field at +0x28 of the block [@0xd980e78]; it then reads the word at +0x1384 of the context [@0xd980e7c] and stores to that word again [@0xd980e84].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a8c0 [call 2, @0xd980e40 fall nonzero], and when the allocation is zero [@0xd980e40 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980e40 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4dv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980ea8
  **Inferred.** Reads the word at 0x1010 [@0xd980ec0] and calls `__glDlistAllocOp2` with a1 = 0x20 [call 1].
  On the nonzero side [@0xd980ee8 fall nonzero] it reads a0 at +0x0 [@0xd980f04], a0 at +0x8 [@0xd980f0c], a0 at +0x10 [@0xd980f14], a0 at +0x18 [@0xd980f1c]; it writes a 2-byte field at +0xc of the block [@0xd980ef8], a 1-byte field at +0xe of the block [@0xd980efc], an 8-byte field at +0x10 of the block [@0xd980f08], an 8-byte field at +0x18 of the block [@0xd980f10], an 8-byte field at +0x20 of the block [@0xd980f18], an 8-byte field at +0x28 of the block [@0xd980f20]; it then reads the word at +0x1384 of the context [@0xd980f24] and stores to that word again [@0xd980f2c].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a8c0 [call 2, @0xd980ee8 fall nonzero], and when the allocation is zero [@0xd980ee8 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980ee8 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4f` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980f50
  **Inferred.** Reads the word at 0x1010 [@0xd980f6c] and calls `__glDlistAllocOp2` with a1 = 0x10 [call 1].
  On the nonzero side [@0xd980f94 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd980fa0], a 4-byte field at +0x10 of the block [@0xd980fac], a 4-byte field at +0x14 of the block [@0xd980fb4], a 4-byte field at +0x18 of the block [@0xd980fbc], a 4-byte field at +0x1c of the block [@0xd980fc4]; it then reads the word at +0x1384 of the context [@0xd980fc8] and stores to that word again [@0xd980fd0].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a8fc [call 2, @0xd980f94 fall nonzero], and when the allocation is zero [@0xd980f94 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd980f94 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4fv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd980ff4
  **Inferred.** Reads the word at 0x1010 [@0xd98100c] and calls `__glDlistAllocOp2` with a1 = 0x10 [call 1].
  On the nonzero side [@0xd981034 fall nonzero] it reads a0 at +0x0 [@0xd981048], a0 at +0x4 [@0xd981050], a0 at +0x8 [@0xd981058], a0 at +0xc [@0xd981060]; it writes a 2-byte field at +0xc of the block [@0xd981040], a 4-byte field at +0x10 of the block [@0xd98104c], a 4-byte field at +0x14 of the block [@0xd981054], a 4-byte field at +0x18 of the block [@0xd98105c], a 4-byte field at +0x1c of the block [@0xd981064]; it then reads the word at +0x1384 of the context [@0xd981068] and stores to that word again [@0xd981070].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a8fc [call 2, @0xd981034 fall nonzero], and when the allocation is zero [@0xd981034 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd981034 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4i` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981094
  **Inferred.** Reads the word at 0x1010 [@0xd9810ac] and calls `__glDlistAllocOp2` with a1 = 0x10 [call 1].
  On the nonzero side [@0xd9810d8 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd9810e4], a 4-byte field at +0x10 of the block [@0xd9810f0], a 4-byte field at +0x14 of the block [@0xd9810f8], a 4-byte field at +0x18 of the block [@0xd981100], a 4-byte field at +0x1c of the block [@0xd981108]; it then reads the word at +0x1384 of the context [@0xd98110c] and stores to that word again [@0xd981114].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a938 [call 2, @0xd9810d8 fall nonzero], and when the allocation is zero [@0xd9810d8 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd9810d8 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4iv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd981138
  **Inferred.** Reads the word at 0x1010 [@0xd981150] and calls `__glDlistAllocOp2` with a1 = 0x10 [call 1].
  On the nonzero side [@0xd981178 fall nonzero] it reads a0 at +0x0 [@0xd981188], a0 at +0x4 [@0xd981194], a0 at +0x8 [@0xd98119c], a0 at +0xc [@0xd9811a4]; it writes a 2-byte field at +0xc of the block [@0xd981184], a 4-byte field at +0x10 of the block [@0xd981190], a 4-byte field at +0x14 of the block [@0xd981198], a 4-byte field at +0x18 of the block [@0xd9811a0], a 4-byte field at +0x1c of the block [@0xd9811a8]; it then reads the word at +0x1384 of the context [@0xd9811ac] and stores to that word again [@0xd9811b4].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a938 [call 2, @0xd981178 fall nonzero], and when the allocation is zero [@0xd981178 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd981178 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4s` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9811d8
  **Inferred.** Reads the word at 0x1010 [@0xd9811f0] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd98121c fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd981228], a 2-byte field at +0x10 of the block [@0xd981234], a 2-byte field at +0x12 of the block [@0xd98123c], a 2-byte field at +0x14 of the block [@0xd981244], a 2-byte field at +0x16 of the block [@0xd98124c]; it then reads the word at +0x1384 of the context [@0xd981250] and stores to that word again [@0xd981258].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a974 [call 2, @0xd98121c fall nonzero], and when the allocation is zero [@0xd98121c taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd98121c fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_RasterPos4sv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98127c
  **Inferred.** Reads the word at 0x1010 [@0xd981294] and calls `__glDlistAllocOp2` with a1 = 0x8 [call 1].
  On the nonzero side [@0xd9812bc fall nonzero] it reads a0 at +0x0 [@0xd9812cc], a0 at +0x2 [@0xd9812d8], a0 at +0x4 [@0xd9812e0], a0 at +0x6 [@0xd9812e8]; it writes a 2-byte field at +0xc of the block [@0xd9812c8], a 2-byte field at +0x10 of the block [@0xd9812d4], a 2-byte field at +0x12 of the block [@0xd9812dc], a 2-byte field at +0x14 of the block [@0xd9812e4], a 2-byte field at +0x16 of the block [@0xd9812ec]; it then reads the word at +0x1384 of the context [@0xd9812f0] and stores to that word again [@0xd9812f8].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a974 [call 2, @0xd9812bc fall nonzero], and when the allocation is zero [@0xd9812bc taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd9812bc fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_Rectd` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98131c
  **Inferred.** Reads the word at 0x1010 [@0xd981338] and calls `__glDlistAllocOp2` with a1 = 0x20 [call 1].
  On the nonzero side [@0xd981358 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd981368], a 1-byte field at +0xe of the block [@0xd98136c], an 8-byte field at +0x10 of the block [@0xd981378], an 8-byte field at +0x18 of the block [@0xd981380], an 8-byte field at +0x20 of the block [@0xd981388], an 8-byte field at +0x28 of the block [@0xd981390]; it then reads the word at +0x1384 of the context [@0xd981394] and stores to that word again [@0xd98139c].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a9b0 [call 2, @0xd981358 fall nonzero], and when the allocation is zero [@0xd981358 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd981358 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_Rectdv` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9813c0
  **Inferred.** Reads the word at 0x1010 [@0xd9813d8] and calls `__glDlistAllocOp2` with a1 = 0x20 [call 1].
  On the nonzero side [@0xd981404 fall nonzero] it reads a0 at +0x0 [@0xd981420], a0 at +0x8 [@0xd981428], a1 at +0x0 [@0xd981430], a1 at +0x8 [@0xd981438]; it writes a 2-byte field at +0xc of the block [@0xd981414], a 1-byte field at +0xe of the block [@0xd981418], an 8-byte field at +0x10 of the block [@0xd981424], an 8-byte field at +0x18 of the block [@0xd98142c], an 8-byte field at +0x20 of the block [@0xd981434], an 8-byte field at +0x28 of the block [@0xd98143c]; it then reads the word at +0x1384 of the context [@0xd981440] and stores to that word again [@0xd981448].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a9b0 [call 2, @0xd981404 fall nonzero], and when the allocation is zero [@0xd981404 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd981404 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12

- `__gllc_Rectf` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd98146c
  **Inferred.** Reads the word at 0x1010 [@0xd981488] and calls `__glDlistAllocOp2` with a1 = 0x10 [call 1].
  On the nonzero side [@0xd9814b0 fall nonzero] it writes a 2-byte field at +0xc of the block [@0xd9814bc], a 4-byte field at +0x10 of the block [@0xd9814c8], a 4-byte field at +0x14 of the block [@0xd9814d0], a 4-byte field at +0x18 of the block [@0xd9814d8], a 4-byte field at +0x1c of the block [@0xd9814e0]; it then reads the word at +0x1384 of the context [@0xd9814e4] and stores to that word again [@0xd9814ec].
  On that side it passes the block to `__glDlistAppendOp` with a2 = 0xd98a9f0 [call 2, @0xd9814b0 fall nonzero], and when the allocation is zero [@0xd9814b0 taken zero] the block is neither filled nor appended.
  Role (from facts): allocates a block through `__glDlistAllocOp2` [call 1], fills it, and hands it to `__glDlistAppendOp` [call 2, @0xd9814b0 fall nonzero] only when that allocation is nonzero.
  Reviewed: 2026-11-12
