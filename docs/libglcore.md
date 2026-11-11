# libGLcore internal routines by unit

The internal routines of the CRIME build of `libGLcore.so` that no other chapter names, grouped by the compilation unit the debugging information assigns them to. The exported OpenGL entry points are in [gl-entry-points.md](gl-entry-points.md) and the CRIME command sequences in [opengl.md](opengl.md), [pixel-transfer.md](pixel-transfer.md) and [context.md](context.md).

Source: N32 `usr/gfx/arch/IP32CRM32/libGLcore.so` from IRIX 6.5.30, disassembled in full; routine bounds and units from its DWARF information (`libglcore/manifest.json`). The o32 build (`IP32CRM`) has the same routine names.

How each row was derived (established, from the disassembly):

- **request**: the request number in `$a1` at a call to `ioctl` or to the wrapper `__glCrmIoctl`, named as in [ioctls.md](ioctls.md).
- **writes**: stores through the register base the routine loads from the context word at `gc+0x7db8` (32184), named as in [CRIME_RE.h](../CRIME_RE.h). A store with offset bit 11 set goes through the start alias and commits. Routines that receive the base from their caller in a register are not detected, so a routine without "writes" may still write registers through a base it was handed.
- **calls**, **called by**: direct calls (`jal`, `bal` and `$t9` calls through the global offset table). **Takes the address of** and **address taken by**: a routine loads another's address without calling it, which is how procedure tables in the context and display-list executors are filled.
Routines whose code shows no register store, request or procedure-table use are not listed here: their role would rest on the name alone, which this chapter does not count as a derivation.

The role of a routine is its unit's role below, narrowed by its name and the evidence in its row. Where the evidence column shows the routine's calls, writes or table use, the role is established to that extent; otherwise it is inferred.

## CRIME driver units

The units that drive CRIME. Their routines load the register base from the context (`gc+0x7db8`, [context.md](context.md)) and store through it, send graphics requests, or sit between the two (validation, picking of span and store routines).

### `crm_aalineasm.ma`

Assembly antialiased line drawer. Established: 1 routines in the unit, 1 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmAntiAliasLineRGB` | 0xd933200 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly antialiased RGB line, 299 instructions. It writes the primitive (+0x2060), both end points, the antialiasing register through its alias (+0x2990, several times per line), the colour and its steppers (+0x20e0 to +0x2108), the foreground (+0x20d0), the depth steppers (+0x21d0, +0x21d8) and zeroes the fog steppers. |

### the CRIME GL driver source unit 1

Accumulation buffer, through the VICE media library and digital-media buffers. Established: 16 routines in the unit, 16 listed here; no routine stores through the register base.

### the CRIME GL driver attribute state source unit

OpenGL state entry points that turn state into CRIME register words: DrawMode, alpha test, blend colour and function, colour mask, fog colour and logic op. Established: 37 routines in the unit, 33 listed here; 8 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPassBlendFunc` | 0xd940420 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the OpenGL blend function to the engine, 214 instructions. It translates the source and destination factors into the engine's blend-function word and stores it to +0x21a8, with the constant 6 on one path. |
| `__glCrmPassBlendColor` | 0xd940780 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the constant blend colour, 36 instructions. It packs the four colour components into one word and stores it to +0x21a0 through the register base held at gc+0x7db8, in two stores. |
| `__glCrmEnableDither` | 0xd940810 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): turns dithering on or off, 27 instructions. It reads the draw-mode word of the context, sets or clears the dither bit (bit 8) and stores it to +0x2018, once for each of its two paths. |
| `__glCrmEnableLogicOp` | 0xd940880 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): turns the logic operation on or off, 30 instructions. It sets or clears the logic-op bit (bit 9) of the draw-mode word and stores it to +0x2018, once for each of its two paths. |
| `__glCrmPassLogicOp` | 0xd940900 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the OpenGL logic operation code, 109 instructions. It translates the sixteen operations to the engine's four-bit codes and stores the result to +0x21b0 (the logic-op register), once for the shadow and once for the hardware. |
| `__glCrmPassColorMask` | 0xd940bc0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the colour write mask, 162 instructions. It packs the channel enables into the engine's mask word and stores it to +0x21b8, writing 0 for the case where every channel is masked. |

### the CRIME GL driver bitmap source unit

Bitmaps drawn with the stipple registers. Established: 3 routines in the unit, 3 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderBitmap` | 0xd940e90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a bitmap (the bitmap routine) as stippled primitives, 786 instructions. For each strip it selects draw mode through +0x2018, stores stipple mode (+0x20c0) and the stipple pattern through the start alias (+0x28c4), sets the primitive (+0x2060) and the vertex pair (+0x2080 to +0x208c), and commits through the alias. |
| `__glCrmRenderFrontBackBitmap` | 0xd941af0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a bitmap into the front and back buffers in turn, 114 instructions. It clears bit 1 of the draw-mode word (+0x2018) for the second pass, stores the stencil mask (+0x21e8) around each pass, and calls the single-buffer bitmap routine through a table in the context. |
| `__glCrmRenderLeftRightBitmap` | 0xd941cc0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a bitmap into the left and right stereo buffers in turn, 135 instructions. It clears bit 0 of the buffer-mode word (+0x2008) between passes, stores the stencil mask (+0x21e8) around each and calls the single-buffer routine through a context table. |

### the CRIME GL driver color-index source unit

Colour-buffer fetch, store, read and clear for colour-index visuals. Established: 9 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `StoreCI` | 0xd941ee0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one colour-index pixel, 36 instructions. It writes the primitive word (+0x2060), the pixel position as a GL vertex (+0x2080 and +0x2084) and the colour through the start alias at +0x28d0 so the write commits. |
| `StoreCI2` | 0xd941f70 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one colour-index pixel from the second span form, 56 instructions. It writes the primitive (+0x2060), the position (+0x2080, +0x2084) and the colour through the start alias at +0x28d0, with a second pixel when the span is two wide. |
| `ClearCI` | 0xd9423c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): clears a colour-index buffer, 289 instructions. It sends ioctl 0x5606 to prepare the buffer, selects the buffer (+0x2008) and draw mode (+0x2018), loads the clear index into the foreground colour (+0x20d0), sets the primitive (+0x2060) and the rectangle corners (+0x2080 to +0x2088 and the alias +0x288c) and commits. |

### the CRIME GL driver source unit 2

Current and raster colour download into the foreground register. Established: 24 routines in the unit, 24 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmDownloadCurrentColor` | 0xd942aa0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): sends the current OpenGL colour to the engine, 44 instructions. It converts the colour to the packed pixel word of the buffer and stores it to the foreground colour register +0x20d0 in two stores, once for each of its two format paths. |
| `__glCrmDownloadRasterColor` | 0xd942b50 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): sends the raster colour (the colour glDrawPixels and glBitmap use) to the engine, 44 instructions. It converts it to the packed pixel word and stores it to the foreground colour register +0x20d0, in two stores for its two format paths. |
| `__glcrmim_Indexf` | 0xd942c70 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the immediate-mode glIndexf handler, 27 instructions. It converts the colour index to the buffer's pixel word and stores it to the foreground colour register +0x20d0 in two stores, one per pixel size. |
| `__glcrmim_FastColor4ub` | 0xd9435b0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the immediate-mode glColor4ub handler, 54 instructions. It packs the four bytes into the buffer's pixel word and stores it to the foreground colour register +0x20d0 in two stores, one per pixel size. |

### the CRIME GL driver context source unit

Context and drawable set-up: sends the board-information, shadow-mapping, drawable and TLB-set requests listed, and flushes (`PP_FLUSH`, `pixpipe_flush` in [RE_DECODE.h](../RE_DECODE.h)). Established: 27 routines in the unit, 21 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `GetBoardInfo` | 0xd943810 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): reads the machine's hardware inventory to learn the board configuration, 37 instructions. It calls `scaninvent` twice, once for each inventory class it needs, and returns what it found; it stores no engine register. |
| `__glCrmSetReadBuffer` | 0xd944650 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): selects the buffer glReadPixels and glCopyPixels read from, 105 instructions. It stores the source buffer mode register +0x2000 in two stores, once for each buffer-addressing path, and calls the hook at +0x14 of the context's table, which sends ioctl 0x55f7 to select the frame-buffer TLB set. |
| `__glCrmSetCurrentBuffers` | 0xd944800 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): binds the draw and read buffers after a drawable change, 109 instructions. It builds a request record in the context with the number 0x55f7 (select a frame-buffer TLB set) and a buffer code of 2, and sends it through the table hook at +0x14. |
| `DecoupleSwapBuffers` | 0xd944c90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): a short routine of 60 instructions that makes one indirect call through the hook at +0x14 of the context's table with the drawable it was given. It stores no engine register and sends no ioctl of its own. |

### the CRIME GL driver source unit 3

Triangle variants: stippled, left/right stereo and slow-path triangles. Established: 5 routines in the unit, 5 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFillCheapFogTriangle` | 0xd948160 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a triangle with per-vertex fog, 151 instructions. It calls the context routine at +0x30f4 once per vertex with the vertex colour and its fog value (word +0xb0) and swaps the three colours it returns in for the vertex colours. It then rewrites the draw-mode register +0x2018 (to both register bases) for the fill, fills through the context routine at +0x2f34, restores +0x2018 and puts the vertex colour pointers back. |
| `__glCrmFillStippledTriangle` | 0xd9483c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a polygon-stippled triangle, 51 instructions. It stores the draw-mode register +0x2018 twice to enable and then restore the stipple bits and calls the context's plain fill routine at +0x2f34 between them. |
| `__glCrmFillFrontBackTriangle` | 0xd948490 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a triangle in the front and back buffers in turn, 116 instructions. It clears bit 1 of the draw-mode register +0x2018, stores the stencil mask +0x21e8 around each pass and calls the single-buffer fill through the context table at -0x7efc. |
| `__glCrmFillLeftRightTriangle` | 0xd948660 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a triangle in the left and right stereo buffers in turn, 107 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes, stores the stencil mask +0x21e8 around each and calls the single-buffer fill through the context table at -0x7ee8. |

### the CRIME GL driver depth source unit

Depth-buffer access and clears: depth function, stencil mode, rectangle primitives and the clear-buffer request. Established: 12 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `FirstClearDepth` | 0xd94a7a0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the first clear of the depth buffer, 173 instructions. It stores stencil mode +0x21e0 and depth function +0x21c0, sets draw mode +0x2018 and the primitive +0x2060 to 0x3020000, writes the rectangle through the GL vertex registers (+0x2080 to +0x208c) and restores the three registers. |

### the CRIME GL driver source unit 4

Compatibility (IRIS GL-style) helpers; sends resource-manager command 1009. Established: 7 routines in the unit, 7 listed here; no routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmIglooFullScreen` | 0xd94aef0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): a short routine of 37 instructions that makes two indirect calls through the context hooks at +0x2e84 and +0x2e88, one after the other. It stores no engine register and sends no ioctl of its own. |

### the CRIME GL driver source unit 5

Line set-up: wide, stippled, scissored, aliased and antialiased lines. Established: 9 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderCheapFogLine` | 0xd94bcb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a line with fog taken per vertex, 65 instructions. It calls the context routine at +0x30f4 for each end with the end's colour and fog value and swaps the returned colours in for the vertex colours. It writes the constant 0xf000 to the fog start (+0x2178) and zero to the fog x step (+0x2180) at both register bases, draws through the routine held at +0x30bc, and restores the colour pointers. |
| `__glCrmRenderFrontBackLine` | 0xd94c750 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a line into the front and back buffers in turn, 106 instructions. It clears bit 1 of the draw-mode register +0x2018 for the second pass, stores the stencil mask +0x21e8 around each pass and calls the single-buffer line routine through the context table at -0x7ef8. |
| `__glCrmRenderLeftRightLine` | 0xd94c900 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a line into the left and right stereo buffers in turn, 119 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes, stores the stencil mask +0x21e8 around each and calls the single-buffer routine through the table at -0x7ee4. |

### the CRIME GL driver line drawing source unit

Flat, fogged colour-index and polygon-offset lines. Established: 4 routines in the unit, 4 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFlatColorLine` | 0xd94cae0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a constant-colour line, 180 instructions. It writes the primitive (+0x2060), the colour through the start alias at +0x28d0 and both end points through the GL vertex registers (+0x2080, +0x2084, +0x2088 and the alias +0x288c); a stippled line also sets stipple pattern +0x20c4 and stipple mode +0x20c0. |
| `__glCrmFogCILine` | 0xd94cdb0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a fogged colour-index line, 90 instructions. It calls the context routine at +0x30f4 for each end, which returns that end's fogged colour index, and swaps those in for the vertex colours. It sets and later clears bit 16 of the draw-mode register +0x2018 around the draw, which goes through `__glCrmSmoothCILine`. |
| `__glCrmTexturedLine` | 0xd94cf20 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a textured line, 1055 instructions. It sets the primitive (+0x2060), the texture q value and steppers (+0x2130, +0x2158, +0x215c), the fog start and steppers (+0x2178 to +0x2188) and the end points (+0x2080 to +0x2088 with the alias +0x288c), rounding with `__glFloor`; the stipple registers +0x20c0 and +0x20c4 serve stippled lines. |

### `crm_linedrawasm.ma`

Assembly line drawers: colour-optimised, stippled, fogged and depth lines with the shade steppers. Established: 7 routines in the unit, 5 listed here; 6 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmColorOptLine` | 0xd937d20 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly colour-only line entry, 13 instructions. It stores the primitive register +0x2060 in two stores, one per direction of the line, and nothing else. |
| `__glCrmStippledColorOptLine` | 0xd937d54 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly stippled colour-only line, 84 instructions. It stores the primitive (+0x2060) twice, the stipple pattern (+0x20c4) twice and the stipple mode (+0x20c0) once. |
| `__glCrmFogRGBLine` | 0xd938134 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly fogged RGB line, 163 instructions. It writes both end points through the GL vertex registers, the primitive (+0x2060), the stipple pattern and mode (+0x20c4, +0x20c0), the red start (+0x20e0) and its steppers (+0x20f0, +0x20f8, +0x2900, +0x2908) and zeroes the fog steppers (+0x2180, +0x2188). |
| `__glCrmDepthLine` | 0xd9383c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly depth-tested line, 215 instructions. It writes the end points, the primitive (+0x2060), the stipple registers (+0x20c4, +0x20c0), the depth steppers (+0x21d0, +0x21d8), the colour through the alias at +0x28d0 and commits with a store to the null register through its alias (+0x29f0). |

### the CRIME GL driver line span source unit

Stippled line stored as spans. Established: 2 routines in the unit, 2 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmStoreLine` | 0xd94e020 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the general line routine of the span path, 1068 instructions. It computes texture, fog and antialias values with `__glFloor` and `powf`, then writes the first end (+0x2080, +0x2084), the colour (+0x20d0), the texture and fog registers (+0x2130 to +0x2188), the primitive (+0x2060) and the second end (+0x2088, +0x208c), committing through the null alias (+0x29f0). |
| `__glCrmStoreStippledLine` | 0xd94f0e0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the stippled variant of the general line routine, 1092 instructions. It makes the same writes as `__glCrmStoreLine` (end points, colour +0x20d0, texture and fog registers, primitive +0x2060) and builds the antialias index with `__glBuildAntiAliasIndex`. |

### the CRIME GL driver list compilation source unit

Display-list compile and execute for the texture-image commands. Established: 17 routines in the unit, 17 listed here; no routine stores through the register base.

### `crm_listexecasm.ma`

Assembly display-list executors for vertex, normal, colour and texture coordinate. Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.

### the CRIME GL driver picking source unit

Selection of the primitive and lighting procedures for the current state. Established: 11 routines in the unit, 4 listed here; 1 routine stores through the register base.

### the CRIME GL driver pixel source unit

DrawPixels, ReadPixels and CopyPixels through the linear TLBs ([pixel-transfer.md](pixel-transfer.md)). Established: 39 routines in the unit, 34 listed here; 7 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `LoadLinearTlb` | 0xd952f80 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): loads a linear TLB set for a pixel transfer, 59 instructions. It calls `__glCrmIoctl` with the request and, when that fails, prints a message and the system error text; it stores no engine register itself. |
| `__glCrmPickDrawPixels` | 0xd954000 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): selects the pixel-drawing routine for the current state, 1091 instructions. It prepares the unpack state with four helper routines, stores the foreground colour +0x20d0 for fast fills, and falls back to `__glGenericPickDrawPixels` or `__glSlowPickDrawPixels` for formats the engine cannot take. |
| `crmFastDoubleStore` | 0xd956ce0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into the front and back buffers of a double-buffered window, 109 instructions. It zeroes the stencil mask (+0x21e8) around each store, calls the span store routine through a register-held pointer and rewrites the draw-mode register +0x2018. |
| `crmCopyPixelsXfer` | 0xd9597b0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): copies pixels with the transfer path , 368 instructions. It sets draw mode +0x2018 and primitive +0x2060 to 0x600078, writes the rectangle through the GL vertex registers (+0x2080 to +0x208c), the transfer source address and steps (+0x20a0, +0x20a8, +0x28ac), selects buffers with `__glCrmSetDrawBuffer` and restores the colour mask +0x21b8. |

### the CRIME GL driver source unit 6

Point rendering through the Primitive and GL vertex registers, with fog and depth variants. Established: 13 routines in the unit, 11 listed here; 11 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glcrmim_2DPointVertex2fv` | 0xd95c340 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the immediate-mode two-dimensional point vertex handler, 76 instructions. It sets the primitive (+0x2060), stores the vertex through the GL vertex registers (+0x2080 and, through the start alias, +0x2884) and, on its second path, commits with a store to the null register alias (+0x29f0). |
| `__glCrmVertexPointFast` | 0xd95c470 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the fast point vertex routine, 50 instructions. It stores the primitive register +0x2060 in four stores, two for each of its two vertex forms, and commits through the null register alias at +0x29f0; the procedure table filled by `__glCrmPickPointProcs` holds its address. |
| `RenderPoint` | 0xd95c540 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a point with the current colour, 46 instructions. It stores the primitive register +0x2060 in four stores and commits through the null register alias at +0x29f0. |
| `RenderPointCI` | 0xd95c600 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a colour-index point, 28 instructions. It stores the primitive register +0x2060 in two stores and the colour through the start alias at +0x28d0, which commits the point. |
| `RenderPointDepth` | 0xd95c670 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a depth-cued point, 142 instructions. It sets the primitive (+0x2060) and the position (+0x2080 and +0x2084), takes the fog value from `__glFogVertex` when a context flag asks for it, and stores the fog start (+0x2178) and the depth start through its alias (+0x29c8). It then calls the context routine at +0x30f4, which returns the fogged colour, and stores that to the foreground colour (+0x20d0). |
| `RenderPointFog` | 0xd95c8b0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a fogged point, 108 instructions. It sets the primitive (+0x2060) and the position (+0x2080 and +0x2084). It takes the fog value from `__glFogVertex` when a context flag asks for it, otherwise from the vertex. In colour-index mode it calls the context routine at +0x30f4, which returns the fogged colour index, and stores that through the start alias +0x28d0. In RGB mode it packs the vertex colour into +0x20d0 unless a context flag selects fog only, and stores the scaled fog through its alias (+0x2978). |
| `RenderPointTextured` | 0xd95ca60 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a textured point, 375 instructions. It sets the primitive (+0x2060 = 0x3020000), the position as two vertices (+0x2080 to +0x208c), the fog start and steppers (+0x2178 to +0x2188), the texture q steppers (+0x2158, +0x215c) and the colour through the alias at +0x28d0, rounding positions with `__glFloor`. |
| `RenderPointN` | 0xd95d040 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a point of width above one pixel, 220 instructions. It sets the primitive (+0x2060 = 0x3020000), writes the square's corners through the GL vertex registers (+0x2080 to +0x208c), computes fog with `__glFogVertex`, stores the colour (+0x20d0) and commits with the null register alias at +0x29f0. |
| `RenderFrontBackPoint` | 0xd95dc90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a point into the front and back buffers in turn, 101 instructions. It selects each buffer with `__glCrmSetStoreBuffer`, clears bit 1 of the draw-mode register +0x2018 for the second pass and stores the stencil mask (+0x21e8) around each pass. |
| `RenderLeftRightPoint` | 0xd95de30 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a point into the left and right stereo buffers in turn, 116 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes and stores the stencil mask (+0x21e8) around each. |

### `crm_pointasm.ma`

Assembly RGBA point renderer. Established: 2 routines in the unit, 2 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderPointRGBA` | 0xd95e250 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly RGBA point, 34 instructions. It stores the primitive (+0x2060) in two stores and the colour through the start alias at +0x28d0 so the write commits. |
| `__glCrmRenderPointDepthRGBA` | 0xd95e2d8 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly depth-tested RGBA point, 42 instructions. It stores the primitive (+0x2060) in two stores and the colour to the foreground register +0x20d0. |

### the CRIME GL driver antialiased polygon source unit

Plane-equation helpers for antialiased polygons. Established: 3 routines in the unit, 2 listed here; no routine stores through the register base.

### the CRIME GL driver primitive source unit

Begin/End and primitive state, half-pixel adjustment, rectangles. Established: 23 routines in the unit, 23 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `EndLLoop` | 0xd963860 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): ends a line loop, 66 instructions. It stores the foreground colour +0x20d0 for the closing segment in two stores, resends the current colour with `__glCrmDownloadCurrentColor` and draws the closing segment through the context routine at +0x30c4. |
| `EndPoints` | 0xd963b10 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): ends a point primitive, 79 instructions. It calls `__glEndPrim`, then stores the texture mode register +0x2110 to the value the current state needs, once for each of its two paths. |
| `__glCrmBeginPoints` | 0xd963c50 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): begins a point primitive, 86 instructions. It calls `__glBeginPoints`, then stores the texture mode register +0x2110, once for each of its two paths, so points are drawn with texturing as the state requires. |

### the CRIME GL driver source unit 7

Span renderers used by the pixel paths. Established: 15 routines in the unit, 15 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmSpanDoubleStore` | 0xd963db0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one span into both buffers of a double-buffered window, 120 instructions. It selects each buffer with `__glCrmSetDrawBuffer`, zeroes the stencil mask (+0x21e8) around the store, calls the span routine held in a register and rewrites the draw-mode register +0x2018. |
| `__glCrmSpanRenderDepth` | 0xd964c80 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a span of depth values as pixels, 176 instructions. It prepares the pixel operations with `__glCrmSetupPixelRenderOps`, then for each pixel writes the primitive (+0x2060), the depth value as the foreground colour (+0x20d0) and the position, with the x position through the start alias (+0x2880) to commit. |
| `__glCrmSpanRenderDepth2` | 0xd964f50 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the second form of the depth span writer, 211 instructions. It prepares the pixel operations with `__glCrmSetupPixelRenderOps`, then stores the primitive (+0x2060), the depth value in the foreground colour (+0x20d0) and the position (+0x2080 and +0x2084) for each pixel. |

### the CRIME GL driver rectangle source unit

Fast rectangles. Established: 3 routines in the unit, 3 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFrontBackRect` | 0xd9669e0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a rectangle into the front and back buffers in turn, 116 instructions. It selects each buffer with `__glCrmSetStoreBuffer`, clears bit 1 of the draw-mode register +0x2018 for the second pass, stores the stencil mask (+0x21e8) around each and calls the rectangle routine through the table at -0x7eec. |
| `__glCrmLeftRightRect` | 0xd966bb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a rectangle into the left and right stereo buffers in turn, 129 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes, stores the stencil mask (+0x21e8) around each and calls the rectangle routine through the table at -0x7ed8. |

### the CRIME GL driver RGB source unit

Colour-buffer fetch, store, read and clear for RGBA visuals. Established: 18 routines in the unit, 18 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `StoreRGBA` | 0xd966dc0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one RGBA pixel, 52 instructions. It writes the primitive (+0x2060) in two stores, the pixel position through the GL vertex registers (+0x2080 and +0x2084) and the colour through the start alias at +0x28d0 so the write commits. |
| `StoreRGBA2` | 0xd966e90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one RGBA pixel into a selectable store buffer, 72 instructions. It brackets the same writes as `StoreRGBA` (primitive +0x2060, position +0x2080 and +0x2084, colour alias +0x28d0) with two calls of `__glCrmSetStoreBuffer`. |
| `ReturnRGBASpan` | 0xd966fb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): reads an RGBA span back for the pixel-read path, 206 instructions. It reads through the transfer routine `crmDrawPixelsXfer` and rewrites the draw-mode register +0x2018, with a context hook at +0x7e44 for the fallback. |
| `ClearRGBA` | 0xd967980 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): clears the colour buffer, 438 instructions. It reads the destination buffer mode with `__glCrmGetDstBufMode`, sends ioctl 0x5606 (clear a buffer through the transfer engine), then selects the buffer (+0x2008) and draw mode (+0x2018), sets the primitive (+0x2060), the clear colour (+0x20d0) and the rectangle (+0x2080 to +0x288c) and restores the buffer with `__glCrmSetDrawBuffer`. |

### the CRIME GL driver source unit 8

Span store routines that draw one span as a hardware primitive with colour, texture and fog steppers. Established: 14 routines in the unit, 13 listed here; 6 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmDumpPerPixelSpan` | 0xd969fb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a span pixel by pixel with per-pixel texture, fog and colour, 640 instructions. For each pixel it computes values with the power function, stores the texture q and steppers (+0x2130, +0x2158, +0x215c), the fog start and steppers (+0x2178 to +0x2188), the colour (+0x20d0), the primitive (+0x2060) and the position (+0x2080 to +0x208c), and commits with a store to the null register through its alias (+0x29f0). |
| `__glCrmDumpPerPixelStippledSpan` | 0xd96a9c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the stippled form of the per-pixel span writer, 697 instructions. It makes the same register writes as `__glCrmDumpPerPixelSpan` (texture q and steppers, fog, colour +0x20d0, primitive +0x2060, position +0x2080 to +0x208c) and calls the power function for the texture and fog values. |
| `__glCrmDumpStippledSpan` | 0xd96bb20 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a stippled span with every attribute, 656 instructions. It sets the stipple pattern through its alias (+0x28c4) and mode (+0x20c0), draw mode (+0x2018), primitive (+0x2060), both span ends (+0x2080 to +0x208c) and the colour steppers (+0x2104, +0x210c) with texture and fog. |
| `__glCrmDumpStippledFlatSpan` | 0xd96c570 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a flat-colour stippled span, 213 instructions. It stores the stipple pattern through its alias (+0x28c4) and the stipple mode (+0x20c0), the draw mode (+0x2018) twice, the primitive (+0x2060), both span ends (+0x2080 to +0x208c) and the colour (+0x20d0). |
| `__glCrmDumpStippledSmoothSpan` | 0xd96c8d0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a smooth-shaded stippled span, 227 instructions. It stores the stipple pattern through its alias (+0x28c4), the stipple mode (+0x20c0), the draw mode (+0x2018) before and after, the primitive (+0x2060) and both span ends (+0x2080 to +0x208c). |

### the CRIME GL driver source unit 9

Stencil-buffer access and clears, with the same register set as the depth unit. Established: 12 routines in the unit, 11 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPassStencilMask` | 0xd96d110 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the OpenGL stencil write mask to the engine, 19 instructions. It stores the mask to the stencil mask register +0x21e8 in two stores, once for each of its two buffer paths. |
| `__glCrmUpdatePolyStipple` | 0xd96d450 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): loads the polygon stipple pattern into the engine, 237 instructions. It saves stencil mode (+0x21e0) and mask (+0x21e8), selects a buffer through the source buffer mode (+0x2000), then uses the transfer path (draw mode and primitive 0x600040, source address and steps +0x20a0 to +0x20ac) to copy the pattern in, and restores the read and draw buffers with `__glCrmSetReadBuffer` and `__glCrmSetDrawBuffer`. |
| `ClearStencil` | 0xd96d970 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): clears the stencil planes, 171 instructions. It forces a non-tagged clear with `__glCrmForceNonTagClear`, sets the stencil mask (+0x21e8), stencil mode (+0x21e0), draw mode (+0x2018) and primitive (+0x2060 = 0x3020000), and sends ioctl 0x5606 (clear a buffer through the transfer engine) through the hook at +0x14. |

### the CRIME GL driver store source unit

Store-procedure selection and double-buffer and depth stores. Established: 6 routines in the unit, 6 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmGenericPickStoreProcs` | 0xd96e2d0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30, 224 bytes, whole body read): chooses the span-store method of the context and stores no engine register. The draw buffer name at +0x760 picks one of two paths. A name of zero, front or back takes the single-buffer path, which stores a driver method in the method slot at +0x3140 and a second one beside it. The name for both buffers takes the dither and blend bits of the word at +0x76e4 into a choice among three fixed driver methods when a context byte is set; any other name returns without a store. It writes no texture register. |
| `crmDoDoubleStore_S` | 0xd96dfc0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into both buffers with a stencil, 34 instructions. It zeroes the stencil mask (+0x21e8), calls the store routine held at +0xa4 of its argument, restores the mask and calls the routine again. |
| `crmDoDoubleStore_D` | 0xd96e050 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into both buffers with a depth test, 74 instructions. It calls the store routine at +0xa4 of its argument, rewrites the draw-mode register +0x2018 with bit 1 cleared and calls the routine a second time. |
| `crmDoDoubleStore_SD` | 0xd96e180 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into both buffers with stencil and depth, 84 instructions. It zeroes the stencil mask (+0x21e8), calls the store routine at +0xa4 of its argument, restores the mask, rewrites the draw-mode register (+0x2018) and calls the routine again. |

### the CRIME GL driver texture source unit

Texture objects: allocation, definition and binding; writes the texture mode, border and environment colour and sends the texture-set request (see [memory.md](memory.md)). Established: 54 routines in the unit, 39 listed here and two more in [Routines read in full](#routines-read-in-full-from-the-disassembly); `crmSetTextureParam` stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmSetTextureParam` | 0xd96efc0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30, 1964 bytes, whole body read from the disassembly and the DWARF-named unit the CRIME GL driver texture assembly unit): the only routine of the unit that writes the texture registers `+0x2110`, `+0x2118`, `+0x2160` and `+0x2168`; the earlier credit given to the store-procedure picker was a naming slip, because this routine sits after the picker in the file and has no symbol of its own in the export table. It marks bit 15 of the draw-mode cache word at +0x7d58, and with no current texture object (word at +0x6e30) clears the bit again and returns. Otherwise it builds the mode word from the object: texel type and depth from its first level record, the subtiled flag, the minification filter (the two basic and four mipmap forms) in bits 7 to 9, the magnification filter in bit 6, the two wrap modes in bits 4 to 5 and 2 to 3, the environment mode in bits 0 to 1, and the base and top level numbers in bits 10 to 13 and 14 to 17. It packs the 64-bit format word from the level sizes. For the wrap modes that use a border it truncates the four border floats times the context's colour scales, packs them as bytes and stores the colour to `+0x2160` of both register views at +0x7db8 and +0x7dbc; for the blend environment mode it does the same for the environment colour at `+0x2168`. It then calls the shared-tile routine and, with the object, the texture-definition routine, and on a zero result drops the current texture object. The mode word goes to `+0x2110` when the cache at +0x7e68 differs or the bit was clear on entry, and the format word to `+0x2118` when either cache word at +0x7e6c or +0x7e70 differs. |

### `crm_vapi.ma`

Assembly in-line vertex entry points. Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the VICE pixel path color-matrix source unit

VICE media-engine imaging helpers; no CRIME register store. Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### the VICE pixel path color-table source unit

VICE media-engine imaging helpers; no CRIME register store. Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.

### the VICE pixel path convolution source unit

VICE media-engine imaging helpers; no CRIME register store. Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

### the VICE pixel path histogram source unit

VICE media-engine imaging helpers; no CRIME register store. Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

### the VICE pixel path pixel-buffer source unit

VICE media-engine imaging helpers; no CRIME register store. Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.

### the VICE pixel path pixel source unit

VICE media-engine imaging helpers; no CRIME register store. Established: 26 routines in the unit, 26 listed here; no routine stores through the register base.

## Assembly units built for this target

Hand-written assembly fast paths: the API dispatch stubs, transform, clip-check, lighting and fast primitive and vertex routines. The two triangle units (the CRIME GL driver assembly unit 3, the CRIME GL driver assembly unit 2) store to the rendering registers directly; the others do arithmetic in memory and call the CRIME units through the context.

### the CRIME GL driver assembly unit 3

Assembly triangle renderers that write the rendering registers directly. Established: 8 routines in the unit, 7 listed here; 8 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFlatZTriangle` | 0xd9364f8 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly flat-colour depth-tested triangle, 102 instructions. It sets the primitive (+0x2060 = 0x2030000), stores the three vertices through the GL vertex registers (+0x2080, +0x2088, +0x2090) and the colour through the start alias at +0x28d0 to commit. |
| `__glCrmSmoothCITriangle` | 0xd936690 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly smooth colour-index triangle, 74 instructions. Its only direct register store is the primitive word at +0x2060; the vertex and colour data are set by the routines it chains to. |
| `__glCrmSmoothRGBTriangle` | 0xd9367b8 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly smooth RGB triangle, 112 instructions. It sets the primitive (+0x2060 = 0x2030000) and stores the three vertices through the 64-bit GL vertex registers (+0x2080, +0x2088, +0x2090). |
| `__glCrmSmoothRGBATriangle` | 0xd936978 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly smooth RGBA triangle, 135 instructions. It sets the primitive (+0x2060) with words from 0x2000000 to 0x2030000 for the edge cases and stores the three vertices through the 64-bit GL vertex registers (+0x2080, +0x2088, +0x2090). |
| `__glCrmSmoothCIZTriangle` | 0xd936b94 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly smooth colour-index depth-tested triangle, 96 instructions. It sets the primitive (+0x2060) and stores the three vertices through the 64-bit GL vertex registers (+0x2080, +0x2088, +0x2090). |
| `__glCrmSmoothRGBZTriangle` | 0xd936d14 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly smooth RGB depth-tested triangle, 134 instructions. It sets the primitive (+0x2060) with words from 0x2000000 to 0x2030000 and stores the three vertices through the 64-bit GL vertex registers (+0x2080, +0x2088, +0x2090). |
| `__glCrmSmoothRGBAZTriangle` | 0xd936f2c | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the assembly smooth RGBA depth-tested triangle, 157 instructions. It sets the primitive (+0x2060) with words from 0x2000000 to 0x2030000 and stores the three vertices through the 64-bit GL vertex registers (+0x2080, +0x2088, +0x2090). |

### the MIPS assembly fast path lighting assembly unit

Established: 3 routines in the unit, 2 listed here; no routine stores through the register base.

### the MIPS assembly fast path polygon assembly unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the MIPS assembly fast path assembly unit 1

Established: 13 routines in the unit, 11 listed here; no routine stores through the register base.

### the MIPS assembly fast path transform assembly unit

Established: 15 routines in the unit, 15 listed here; no routine stores through the register base.

### the MIPS assembly fast path fast API assembly unit

Established: 8 routines in the unit, 8 listed here; no routine stores through the register base.

### the MIPS assembly fast path polygon finish assembly unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the MIPS assembly fast path primitive assembly unit

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.

### the MIPS assembly fast path vertex assembly unit

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

## Pixmap back end

The software back end for rendering into X pixmaps. No routine stores through the register base; the store and fetch routines move pixels of 8, 16 and 32 bits in memory.

### the pixel path color-index source unit

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### the pixel path color source unit

Pixmap context set-up; sends resource-manager command 1005. Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `SwapBuffers` | 0xd944b90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the swap entry of the context unit the pixel path color source unit, 62 instructions. Its only external call is `fprintf`, and it stores no engine register and sends no ioctl, so in this build the entry only reports. |

### the pixel path picking source unit

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### the pixel path RGB source unit

Established: 11 routines in the unit, 11 listed here; no routine stores through the register base.

## Shared software implementation

The device-independent OpenGL implementation: state, validation, matrix and lighting code and the software rasteriser (spans, lines, polygons, fog, texture, blending, depth and stencil operations). These are the fallbacks the CRIME units select when the hardware cannot do an operation.

### the software renderer accumulation source unit

Established: 7 routines in the unit, 7 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `Return` | 0xd939d60 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): returns accumulation values to the framebuffer, 265 instructions. It sets the video-engine DMA buffer TLB with `vice_dmbuf_settlb` twice, moves the data through two further video-engine calls, flushes the cache and calls `crmDrawPixelsXfer` to write the pixels. |

### the software renderer alpha test source unit

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### the software renderer asynchronous source unit

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

### the software renderer attribute state source unit

Established: 65 routines in the unit, 58 listed here; no routine stores through the register base.

### the software renderer bitmap drawing source unit

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer bitmap source unit

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### the software renderer blending source unit

Established: 50 routines in the unit, 49 listed here; no routine stores through the register base.

### the software renderer buffer source unit

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.

### the software renderer immediate-mode API source unit

Established: 38 routines in the unit, 38 listed here; no routine stores through the register base.

### the software renderer clear source unit

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### the software renderer clipping source unit

Established: 21 routines in the unit, 21 listed here; no routine stores through the register base.

### the software renderer color-table source unit

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.

### the software renderer context source unit

Established: 18 routines in the unit, 17 listed here; no routine stores through the register base.

### the software renderer convolution source unit

Established: 19 routines in the unit, 19 listed here; no routine stores through the register base.

### the software renderer deformation source unit

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer depth operations source unit

Established: 32 routines in the unit, 31 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `Fix_zbuffer` | 0xd94aa70 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes the depth clear value over a rectangle, 138 instructions. It returns at once when a context flag byte is set. It saves stencil mode (+0x21e0), stencil mask (+0x21e8) and depth function (+0x21c0), sets the mask to 0xff and adds one field to the depth function, then draws a rectangle with draw mode 0x400007 and primitive +0x2060 = 0x3020000 through the GL vertex registers. The depth steppers (+0x21d0, +0x21d8) are zeroed and the depth value, scaled from a word of the second argument, goes to the depth alias (+0x29c8). The three saved registers are then restored. |

### the software renderer display-list source unit

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

### the software renderer evaluator source unit

Established: 56 routines in the unit, 56 listed here; no routine stores through the register base.

### the software renderer feedback source unit

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

### the software renderer finish source unit

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### the software renderer fog source unit

Established: 8 routines in the unit, 7 listed here; no routine stores through the register base.

### the software renderer state query source unit

Established: 33 routines in the unit, 33 listed here; no routine stores through the register base.

### the software renderer histogram source unit

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.

### the software renderer image source unit

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.

### the software renderer lighting source unit

Established: 25 routines in the unit, 24 listed here; no routine stores through the register base.

### the software renderer line clipping source unit

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer line drawing source unit

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.

### the software renderer line finish source unit

Established: 8 routines in the unit, 8 listed here; no routine stores through the register base.

### the software renderer line span source unit

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.

### the software renderer list compilation source unit

Established: 54 routines in the unit, 54 listed here; no routine stores through the register base.

### the software renderer math source unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the software renderer memory management source unit

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.

### the software renderer name tables source unit

Established: 37 routines in the unit, 37 listed here; no routine stores through the register base.

### the software renderer normal-mode API source unit

Established: 8 routines in the unit, 8 listed here; no routine stores through the register base.

### the software renderer picking source unit

Established: 15 routines in the unit, 13 listed here; no routine stores through the register base.

### the software renderer antialiased point source unit

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer point drawing source unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the software renderer point finish source unit

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### the software renderer antialiased polygon source unit

Established: 7 routines in the unit, 5 listed here; 1 routine stores through the register base.

### the software renderer polygon clipping source unit

Established: 5 routines in the unit, 4 listed here; no routine stores through the register base.

### the software renderer polygon drawing source unit

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

### the software renderer polygon finish source unit

Established: 29 routines in the unit, 29 listed here; no routine stores through the register base.

### the software renderer polygon mode source unit

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### the software renderer polygon span source unit

Established: 32 routines in the unit, 32 listed here; no routine stores through the register base.

### the software renderer primitive source unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the software renderer raster API source unit

Established: 24 routines in the unit, 24 listed here; no routine stores through the register base.

### the software renderer raster position source unit

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer rectangle source unit

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

### the software renderer selection source unit

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

### the software renderer size source unit

Established: 24 routines in the unit, 24 listed here; no routine stores through the register base.

### the software renderer slow span source unit

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer specular cache source unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the software renderer stencil operations source unit

Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.

### the software renderer store source unit

Established: 11 routines in the unit, 11 listed here; no routine stores through the register base.

### the software renderer subdivision source unit

Established: 29 routines in the unit, 29 listed here; no routine stores through the register base.

### the software renderer texture API source unit

Established: 30 routines in the unit, 30 listed here; no routine stores through the register base.

### the software renderer source unit 1

Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.

### the software renderer texture source unit

Established: 207 routines in the unit, 207 listed here; no routine stores through the register base.

### the software renderer vertex API source unit

Established: 26 routines in the unit, 26 listed here; no routine stores through the register base.

### the software renderer vertex-array source unit

Established: 35 routines in the unit, 19 listed here; no routine stores through the register base.

### the software renderer vertex source unit

Established: 4 routines in the unit, 3 listed here; no routine stores through the register base.

### the software renderer transform source unit

Established: 55 routines in the unit, 53 listed here; no routine stores through the register base.

## Pixel paths

Pixel packing, unpacking, conversion and the imaging subset (convolution, histogram, colour tables) in software.

### `px_api.c`

Established: 18 routines in the unit, 18 listed here; no routine stores through the register base.

### the pixel path color-matrix source unit

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### the pixel path convolution source unit

Established: 35 routines in the unit, 35 listed here; no routine stores through the register base.

### the pixel path histogram source unit

Established: 21 routines in the unit, 21 listed here; no routine stores through the register base.

### the pixel path modification source unit

Established: 19 routines in the unit, 19 listed here; no routine stores through the register base.

### `px_pack.c`

Established: 56 routines in the unit, 56 listed here; no routine stores through the register base.

### `px_paths.c`

Established: 43 routines in the unit, 43 listed here; no routine stores through the register base.

### `px_read.c`

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

### the pixel path rendering source unit

Established: 27 routines in the unit, 27 listed here; no routine stores through the register base.

### the pixel path unpacking source unit

Established: 101 routines in the unit, 101 listed here; no routine stores through the register base.

## Display-list storage

Display-list memory, block and page management and the list optimiser.

### `dl_block.c`

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

### `dl_init.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the display-list code interpretation assembly unit

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### `dl_list.c`

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.

### the display-list code matrix optimization source unit

Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.

### `dl_opt.c`

Established: 23 routines in the unit, 23 listed here; no routine stores through the register base.

### the display-list code paging source unit

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.

### `dl_table.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.

## Display-list compile and execute

Generated display-list code. Each compile routine (`__gllc_` prefix) allocates a list operation (`__glDlistAllocOp2`), stores its arguments, records the address of its executor (`__glle_` prefix, the matching unit) and appends the operation (`__glDlistAppendOp`); each executor replays one operation.

### the GL front end list compile source unit

Established: 318 routines in the unit, 318 listed here; no routine stores through the register base.

### the GL front end list execute source unit

Established: 230 routines in the unit, 230 listed here; no routine stores through the register base.

### the GL front end vertex-array source unit

Established: 33 routines in the unit, 33 listed here; no routine stores through the register base.

## MIPS helpers

Assembly helpers: the per-function depth tests (`__glDT_` prefix), vertex API stubs and vertex save routines.

### `mips4_material.ma`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.

### `mips4_matrix.ma`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### `mips4_texture.ma`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### the MIPS assembly fast path copy/display assembly unit

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### `mips_sspan.ma`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.

### the MIPS assembly fast path texture utility assembly unit

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.

### `mips_vapi.ma`

Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.

### `mips_vsave.ma`

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

### `mips_zfuncs.ma`

Established: 23 routines in the unit, 23 listed here; no routine stores through the register base.

### `mips_zline.ma`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.

### `mips_zspan.ma`

Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.

## Entry labels and lazy-binding stubs

Established from the N32 symbol tables and disassembly.

Established (release 6.5.30): `_stub` at 0xd931010 marks the run-time linker's lazy-binding stubs, one short stub per external routine, not graphics code.

Each stub loads the linker's resolver from the first entry of the global offset table, saves the return address in `$t3`, puts the symbol index in `$t8` (`0xbee` for the first stub) and jumps. In all 14 in-scope binaries that have a `_stub` symbol, its address falls in the `.MIPS.stubs` section (checked with the section headers).

The depth-test names below are exported labels inside two assembly routines, not routines of their own: the `__glDTP_` labels lie inside `__glDepthTestLine_asm` (unit `mips_zline.ma`) and the `__glDTS_` labels inside `__glDepthTestSpan_asm` (unit `mips_zspan.ma`). Each name carries an OpenGL depth function (`NEVER` to `ALWAYS`), so each label is inferred to be that function's entry into the shared line or span loop. The `_M` and `_s` suffixes mark variants whose difference was not decoded.

| Label | Address | Role and derivation |
|---|---|---|
| `__glDTP_ALWAYS` | 0xd992518 | Inferred from the name: the entry for the always depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x2d0. |
| `__glDTP_ALWAYS_M` | 0xd99265c | Inferred from the name: the entry for the always depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x414. |
| `__glDTP_EQUAL` | 0xd992460 | Inferred from the name: the entry for the equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x218. |
| `__glDTP_EQUAL_M` | 0xd9925a4 | Inferred from the name: the entry for the equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x35c. |
| `__glDTP_GEQUAL` | 0xd9924d8 | Inferred from the name: the entry for the greater-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x290. |
| `__glDTP_GEQUAL_M` | 0xd99261c | Inferred from the name: the entry for the greater-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x3d4. |
| `__glDTP_GEQUAL_M_s` | 0xd99263c | Inferred from the name: the entry for the greater-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x3f4. |
| `__glDTP_GEQUAL_s` | 0xd9924f8 | Inferred from the name: the entry for the greater-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x2b0. |
| `__glDTP_GREATER` | 0xd99247c | Inferred from the name: the entry for the greater depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x234. |
| `__glDTP_GREATER_M` | 0xd9925c0 | Inferred from the name: the entry for the greater depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x378. |
| `__glDTP_GREATER_M_s` | 0xd9925e0 | Inferred from the name: the entry for the greater depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x398. |
| `__glDTP_GREATER_s` | 0xd99249c | Inferred from the name: the entry for the greater depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x254. |
| `__glDTP_LEQUAL` | 0xd9923e0 | Inferred from the name: the entry for the less-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x198. |
| `__glDTP_LEQUAL_M` | 0xd992524 | Inferred from the name: the entry for the less-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x2dc. |
| `__glDTP_LEQUAL_M_s` | 0xd992544 | Inferred from the name: the entry for the less-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x2fc. |
| `__glDTP_LEQUAL_s` | 0xd992400 | Inferred from the name: the entry for the less-or-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x1b8. |
| `__glDTP_LESS` | 0xd992420 | Inferred from the name: the entry for the less depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x1d8. |
| `__glDTP_LESS_M` | 0xd992564 | Inferred from the name: the entry for the less depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x31c. |
| `__glDTP_LESS_M_s` | 0xd992584 | Inferred from the name: the entry for the less depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x33c. |
| `__glDTP_LESS_s` | 0xd992440 | Inferred from the name: the entry for the less depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x1f8. |
| `__glDTP_NEVER` | 0xd9923d4 | Inferred from the name: the entry for the never depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x18c. |
| `__glDTP_NOTEQUAL` | 0xd9924bc | Inferred from the name: the entry for the not-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x274. |
| `__glDTP_NOTEQUAL_M` | 0xd992600 | Inferred from the name: the entry for the not-equal depth function into the shared line loop. Established: a label inside `__glDepthTestLine_asm` at offset +0x3b8. |
| `__glDTS_ALWAYS` | 0xd9928d4 | Inferred from the name: the entry for the always depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x264. |
| `__glDTS_ALWAYS_M` | 0xd992a18 | Inferred from the name: the entry for the always depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x3a8. |
| `__glDTS_EQUAL` | 0xd9927ec | Inferred from the name: the entry for the equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x17c. |
| `__glDTS_EQUAL_M` | 0xd992960 | Inferred from the name: the entry for the equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x2f0. |
| `__glDTS_GEQUAL` | 0xd992884 | Inferred from the name: the entry for the greater-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x214. |
| `__glDTS_GEQUAL_M` | 0xd9929d8 | Inferred from the name: the entry for the greater-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x368. |
| `__glDTS_GEQUAL_M_s` | 0xd9929f8 | Inferred from the name: the entry for the greater-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x388. |
| `__glDTS_GEQUAL_s` | 0xd9928ac | Inferred from the name: the entry for the greater-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x23c. |
| `__glDTS_GREATER` | 0xd992810 | Inferred from the name: the entry for the greater depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x1a0. |
| `__glDTS_GREATER_M` | 0xd99297c | Inferred from the name: the entry for the greater depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x30c. |
| `__glDTS_GREATER_M_s` | 0xd99299c | Inferred from the name: the entry for the greater depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x32c. |
| `__glDTS_GREATER_s` | 0xd992838 | Inferred from the name: the entry for the greater depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x1c8. |
| `__glDTS_LEQUAL` | 0xd99274c | Inferred from the name: the entry for the less-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0xdc. |
| `__glDTS_LEQUAL_M` | 0xd9928e0 | Inferred from the name: the entry for the less-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x270. |
| `__glDTS_LEQUAL_M_s` | 0xd992900 | Inferred from the name: the entry for the less-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x290. |
| `__glDTS_LEQUAL_s` | 0xd992774 | Inferred from the name: the entry for the less-or-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x104. |
| `__glDTS_LESS` | 0xd99279c | Inferred from the name: the entry for the less depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x12c. |
| `__glDTS_LESS_M` | 0xd992920 | Inferred from the name: the entry for the less depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x2b0. |
| `__glDTS_LESS_M_s` | 0xd992940 | Inferred from the name: the entry for the less depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x2d0. |
| `__glDTS_LESS_s` | 0xd9927c4 | Inferred from the name: the entry for the less depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x154. |
| `__glDTS_NEVER` | 0xd99273c | Inferred from the name: the entry for the never depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0xcc. |
| `__glDTS_NOTEQUAL` | 0xd992860 | Inferred from the name: the entry for the not-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x1f0. |
| `__glDTS_NOTEQUAL_M` | 0xd9929bc | Inferred from the name: the entry for the not-equal depth function into the shared span loop. Established: a label inside `__glDepthTestSpan_asm` at offset +0x34c. |

## Buffer and pixel helpers of the CRIME driver (read by hand)

Routines of the CRIME driver units that the unit tables above call: buffer selection, the pixel transfer writer, the point procedure picker and the colour-index line.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPickPointProcs` | 0xd95e000 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): chooses the point routines for the current state, 146 instructions. It calls `__glGenericPickPointProcs` and then stores the address of one of the point routines into the context's procedure table at +0x30d0 and +0x30d8, setting a flag byte at +0x2eb0. |
| `__glCrmSmoothCILine` | 0xd938028 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a smooth-shaded colour-index line, 67 instructions. It stores both end points through the GL vertex registers (+0x2080, +0x2088), the primitive (+0x2060) twice, the stipple pattern (+0x20c4) and mode (+0x20c0) and zeroes the alpha steppers through their aliases (+0x2904, +0x290c). |
| `__glCrmGetDstBufMode` | 0xd944460 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): returns the destination buffer mode of the current drawable, 17 instructions. It loads a routine from the local table at 0xd940000 plus 0x3f10 and jumps to it with the request code 3073, passing its two arguments on. |
| `__glCrmSetStoreBuffer` | 0xd9449c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): selects the buffer that stores go to, 21 instructions. When the double-buffer byte at gc+0x77bc is set and the requested buffer differs from the current one at gc+0x2df0, it records it there and tail-calls `__glCrmSetDrawBuffer`. |
| `__glCrmForceNonTagClear` | 0xd94aca0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): forces the next clear to use untagged planes, 32 instructions. It calls the context hook at +0x6c with the stored depth word, zeroes the fields at +0x50 and +0x64, sets the flag byte at +0x60, replaces the hook with a no-op and re-runs `__glCrmPassDepthFunc` and `__glCrmPassStencilMode`. |
| `__glCrmSetDrawBuffer` | 0xd9444b0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): selects the buffer drawing goes to, 104 instructions. It stores the destination buffer mode register +0x2008 in two stores, once for each addressing path, and calls the hook at +0x14 of the context's buffer table, which sends the TLB selection request. |
| `crmDrawPixelsXfer` | 0xd956ea0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes host pixels to the framebuffer with the transfer path, 623 instructions. It sets draw mode +0x2018, the source buffer mode (+0x2000), the primitive (+0x2060), the rectangle (+0x2080 to +0x208c), the transfer source address and steps (+0x20a0 to +0x20ac, +0x28a0) and the stipple registers (+0x20c0, +0x20c4), selects buffers with `__glCrmSetDrawBuffer` and confirms with `__glCrmFlushAndConfirm`. |

## Triangle, pixel-transfer and pick routines of the N32 driver (reading pass)

Offsets are numeric. "View 1" and "view 2" mean the two engine register windows whose addresses the context keeps at +32184 and +32188. Every entry in this section was read through a decompilation checked against the routine's fact sheet (calls, stores, exits), not instruction by instruction, and is marked Inferred.

- `FillAASubTriangle` in `libGLcore.so` ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so)):
  steps one half of an antialiased triangle from one scan line to the next, 9836 bytes at address 0xd95e920.
  The first argument is the context, the second and third are the first and one-past-last scan line, the fourth is a record whose word at +376 points to the set-up state the routine reads and advances, and the fifth and sixth are 64-bit step values.
  The routine is written out four times, so it calls `FindP` 44 times, `FindP2` 12 times, `powf` 8 times and `__glBuildAntiAliasIndex` 4 times, and makes nine calls through pointers: four to the span method held at state +376 and five to the coverage routine.
  A span call follows the storing of the run's start column, line and length to state +30196, +30200 and +30248. It loads the edge accumulators from state +30148, +30152, +30168 and +30172 and writes them back before its single return at 0xd960e40.
  The stores to view 1 are the primitive word `+0x2060` (also to view 2, behind a cache test on +32096), the position words `+0x2080` to `+0x208c`, the colour, depth, fog and texture steppers `+0x21c8`, `+0x2178` and `+0x2120` to `+0x2134`, and the pixel word `+0x28d0`; exponential fog uses `powf`.
  The o32 build's routine of the same name, at 0xd95dbec in its own library, has the same call counts.
  Inferred: the four copies were not compared with one another instruction by instruction.
- `__glCrmFillAATriangle` in `libGLcore.so` ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so)):
  draws one antialiased triangle in software, 5688 bytes at address 0xd961680. The first argument is the context and the next three are the vertex records.
  It snaps each vertex's x and y (the floats at +128 and +132) to a grid of 2 to the power of the word at +3736, forms the signed area, and returns at once when it is zero (exit 0xd961c54).
  Otherwise it builds three edge equations with `FindLineEquation` (three call sites, the vertices rotated each time), the coverage tables with `ComputeCoverageStuff` (one call, argument 4, or 8 when the word at +1912 equals 0x1102) and the plane equations for colour, depth, fog and texture with `FindPlaneEquation` (13 call sites) and `FindPlaneEquation2` (three).
  It calls `__glSnapXLeft` and `__glSnapXRight` three times each, the routine at 0xd960f90 three times, context methods at +12520 and +12536 three times each, and draws the sub-triangles with `FillAASubTriangle` (0xd95e920, four call sites).
  With texturing it calls `__glFloor` three times (two with the repeat wrap 0x2901), and when the environment word is 0x1e01 or 0x8062 it forces the low two bits of the cached texture mode word at +32360 to 1 and stores it to `+0x2110` of both views.
  The normal end is at 0xd962908. Inferred: how the calls divide among the cases was read from the decompilation only.
- `crmDrawPixelsXfer2` in `libGLcore.so` ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so)):
  writes a block of host pixels to the frame buffer through the engine's pixel-transfer path, 4888 bytes at address 0xd957870. The arguments are the context and the draw-pixels record.
  A zero source pointer returns 0 (exit 0xd95864c) and a zero width or height returns 1. When the byte at +32211 is set it first calls `crmFastDoubleStore` and returns 0 if that fails.
  The record's format word chooses the draw mode (0x1901 and 0x1902 take their own cases; 0x600078
  and 0x600000 are the pixel-transfer words the routine writes), the pixel size is 1 shifted left by bits 9:8 of the word at +32292, and the x and y replication goes into bits 31:28 of the source steps.
  It then chooses among pinning the user buffer (`pinBuffer`, released by `unpinBuffer`), mapping a scratch area (`mapScratch`, rows copied
  with `bcopy`) and loading the linear translation table (`LoadLinearTlb`, three call sites).
  For each strip it stores the rectangle `+0x2080` to `+0x208c`, the source address and steps `+0x20a0`, `+0x20a8` and `+0x20ac` to both views, calls `__glCrmSetupPixelRenderOps` when the byte at +32202 is set, scales spans with `__GL_CRM_SCALE_PIXEL_SPAN` and ends with `__glCrmFlushAndConfirm`, `__glCrmSetReadBuffer`
  and two `__glCrmSetDrawBuffer` calls.
  Of its six exits, 0xd9585d0, 0xd95864c and 0xd95882c return 0,
  0xd958670 and 0xd958ac0 return 1, and 0xd958568 leaves a register value that is not a constant.
  Inferred: the strip arithmetic and the choice among the three transfer methods were read from the decompilation.
- `crmReadPixelsXfer` in `libGLcore.so` ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so)):
  reads a block of frame-buffer pixels back to host memory, 3100 bytes at address 0xd958b90.
  The arguments are the context and the read-pixels record.
  A zero width or height returns 1 (exit 0xd959470) and a zero destination returns 0 (exit 0xd958d20).
  It calls `__glCrmSetReadBuffer` when the cached read-buffer word differs, takes the pixel size as 1 shifted left by bits 9:8 of the word at +32292 and widens the row until its byte count is a multiple of 8. Unless the user buffer is already usable, the method at +32324 supplies a bounce buffer (it is called again with 0 at the end to release it), and the method at +32344, or `memcpy` when that word is zero, copies each row from it into the user buffer.
  It writes draw mode 0x600078 through the cache at +32092 and the buffer mode word from +32292 to `+0x2008` of both views.
  Per strip of at most 0x1f000 bytes (0x20000 when the buffer starts on a 4096-byte boundary) it writes the primitive word through the cache at +32096 and `+0x2080` and `+0x2088` to both views, `+0x2084` and `+0x208c` to view 1, source steps to `+0x20a8` and `+0x20ac`, the destination step to `+0x20b4`, the source position to `+0x20a0` and the host offset to `+0x28b0` (or to `+0x20b0` after a `LoadLinearTlb` call when the buffer was pinned).
  It ends with `__glCrmFlushAndConfirm`, restores draw mode, the read buffer (`__glCrmSetReadBuffer`) and the draw buffer (`__glCrmSetDrawBuffer`); for a read of format 0x1901 it first clears the destination
  with `bzero`.
  A successful read returns 1 (exits 0xd959378 and 0xd959470) and a failed buffer or TLB load 0 (0xd9596a4).
  Inferred: the strip arithmetic and the bounce-buffer choice rest on the decompilation.
- `__glCrmFillTriangle` in `libGLcore.so` ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so)):
  sets the engine up for one general (possibly shaded, textured, fogged or depth-tested) triangle, 2668 bytes at address 0xd9372b0.
  The first argument is the context, the next three are the vertex records and the fifth selects the winding.
  It chooses the primitive word by the sign of the word at +30180: 0x2010000 or 0x2020000 for negative and 0x2030000
  or 0x2000000 otherwise, with the vertex taken as origin chosen alongside it, and writes it to `+0x2060` of view 1 through the cache at +32096. According to the enable word at +30436 it then writes a flat colour to `+0x20d0` or the colour steppers `+0x20e0` to `+0x210c`, depth steppers `+0x21c8`, `+0x21d0` and `+0x21d8` as 64-bit integers (with a polygon-offset case for bit 18), fog steppers `+0x2178`, `+0x2180` and `+0x2188`, and, for bit 3, the texture set-up: s, t and q divided by q, with q clamped to a magnitude of 7.6293945e-06, a range flag per coordinate stored to `+0x2134`, steppers `+0x2138` to `+0x215c` scaled by 2^43 or 2^39 and start values with 0x800 added at `+0x2120`, `+0x2128` and `+0x2930`.
  Its exit at 0xd937d08 returns nothing; the exit at 0xd937d14, taken when texturing is off, leaves the word at +28208 in the result register as a side effect.
  Inferred: the sign test, the winding choice and the per-feature store lists come from the decompilation.
- `__glCrmPickAllProcs` in `libGLcore.so` ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so)):
  re-validates the context after a state change, 2008 bytes at address 0xd9527a0.
  It takes the context and reads the enable word at +1792 and the dirty word at +11756. It rebuilds the pick-state word at +30436 from the enable bits (the byte flags at +3220 and +3221, fog when the word at +1912 equals 0x1102, polygon offset, stipple, alpha test, logic operations) and derives the mask words at +28076 to +28088 and the flags at +32192. It then calls the context's validation methods in a fixed order under the dirty bits (+11796, +11864, +11836, +11840, +11804, `__glCrmValidateLighting`, +11792, +11788, +11800, +11832, +11828, +12656, `__glCrmUpdatePolyStipple`, +11808, +11812, +11844, +11816, +11824, +11820, `__glValidateAlphaTest`, +11916, +11848,
  `crmSetupPrimAdjustment` and +11840 again), clears the dirty words at +11752 and +11756, rewrites the draw mode to `+0x2018` of both views when the cache differs and the word at +3204 is 0x1c00, and stores a new flush word to `+0x21f0` of view 2. Its single exit at 0xd952d9c returns nothing.
  Inferred: the bit assignments of the pick-state word were read from the decompilation and not re-derived here.

## Routines read in full from the N32 disassembly (point, line, span, clear and scissor)

Each entry below was written from the whole body in `usr/gfx/arch/IP32CRM32/libGLcore.so` (IRIX 6.5.30) and a fact sheet of its calls, stores and branches. "The first view" and "the second view" are the engine register mappings the context holds at +32184 and +32188; "the state word" is the word at +30436 and "the draw-mode word" the word at +32088, whose copy at +32092 records what the engine last received.

- `RenderAntiAliasedPoint` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: draws one antialiased point as a square of pixels, asking the local `Coverage` routine at 0xd95d410 how much of each pixel the round point covers, a 1828-byte routine at address 0xd95d560. Established; what the context words mean is inferred.
  Its first argument is the context and its second the vertex record. It reads the window position as the floats at vertex +128 and +132 and the depth float at +136, copies the four floats of the colour record that vertex +8 points to onto the stack, and takes a radius as the float at context +460 times the float at context +3540.
  When state bit 3 (texture) is set and bit 15 of the draw-mode word is clear, it scales the three texture coordinates at vertex +48, +52 and +56 by the float at +3544 over the one at vertex +60 and calls the context method at +12524 with the stack colour copy.
  When bit 15 is set it divides the first two coordinates by the float at vertex +60, unless that float equals 1.0 and replacing a magnitude below 2^-17 by 2^-17 with its sign, calls `__glFloor` (local GOT entry 987) on each, and wraps the result by the word at +4 (then +8 for the second coordinate) of the texture record at context +28208: 0x2901 gives the fraction plus 1.0, any other value gives 0.0 for a floor below zero, the value plus 1.0 for a floor of 0 or 1, and 7.0 above. A record word at +232 equal to 1 skips the second coordinate and leaves it at 1.0.
  When the word at the pointer in context +2484 is 0x8062 or 7681 it also sets texture mode `+0x2110` of both views to the word at context +32360 with its low two bits replaced by 1, and takes the alpha from the float at +30792. The unmodified word at +32360 goes back to `+0x2110` of both views at the end, when state bit 3, draw-mode bit 15 and that mode all hold.
  When enable-word bit 5 (0x20) is set it calls `__glFogVertex` (local GOT entry 1670) if state bit 12 is set and stores the result at vertex +176, then calls the context method at +12532 if the byte at +3221 is non-zero.
  With state bit 0 set it packs red, green and blue as the integers `r<<24 | g<<16 | b<<8` and later ORs in coverage times alpha; with the bit clear it asks `__glBuildAntiAliasIndex` (local GOT entry 1869) for a colour index per pixel.
  When the primitive word at +32096 differs from the one at +32100 it stores the newer one to `+0x2060` of both views and copies it.
  It then walks the box from the truncated x minus radius to the truncated x plus radius, row by row from y minus radius to y plus radius, calling `Coverage` with the offset to the pixel centre and the squared radius. For a pixel with coverage above zero it stores position `+0x2080` (column shifted left by 6) and `+0x2084` (row shifted left by 6) to the first view only.
  The first covered pixel also writes, to both views, depth `+0x21c8` (depth times 64.0, as a doubleword) when state bit 2 is set; fog `+0x2178` when the byte at +3220 and the fog enable are set; and, when draw-mode bit 15 is set, `+0x2134` as zero, `+0x2120` and `+0x2128` (the two wrapped coordinates times 2^43, as doublewords, plus 0x800) and `+0x2130` (the float 2^29 as an integer plus 0x800).
  The pixel is then committed with the colour word through the start alias `+0x28d0` of the first view when state bit 0 is set, or, for colour index, with `+0x29f0` stored before `+0x20d0` as the code issues them. Control returns through two exits, both of which zero the word at context +32896; no value is returned.

- `__glCrmRenderAntiAliasLine` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: sets up and draws a hardware antialiased line, a 1780-byte routine at address 0xd94c050. Established; the meaning of the context words is inferred.
  Its arguments are the context and the two vertex records. It first calls `__glInitAALineData` (local GOT entry 1754) with the context, then returns without drawing when the float at context +29864 is zero. Otherwise it forms the scale as the float at +3544 over that float.
  State bit 14 (0x4000) stores the depth step as an integer at +30324 and the same step shifted left by 5 at +30328, and the start depth at +30204. State bit 12 (0x1000) takes the fog start from the floats at vertex +104 directly when the word at +1912 is 4354, and otherwise from the context method at +12536 called on each vertex; it stores the start at +29940, the step at +30432 and the extrapolated value at +30244. When state bit 15 (0x8000) is set and the byte at +29848 is clear it sets that byte and zeroes the words at +29844 and +29840.
  State bit 1 stores the first colour step at +30284 and, when the byte at +3220 is non-zero, three more at +30288 to +30296. Whatever that bit says, the start colour at +30208 and, with that byte, +30212 to +30220 comes from the colour record of the first vertex when the bit is set and of the second vertex when it is clear, because the load at 0xd94c1cc sits in the delay slot of the branch that skips the step stores.
  A non-zero byte at +28216 stores the steps of the floats at vertex +48, +52 and +60 at +30380, +30384 and +30392 and their starts from the first vertex at +30224, +30228 and +30236, and copies the floats at vertex +140 of the first and second vertex into +32164 and +32168. When the word at the pointer in context +2484 is 0x8062 or 7681 it also sets texture mode `+0x2110` of both views as the point routine does, zeroes the step at +30296 and takes the alpha start at +30220 from the float at +30792.
  The loop then loads its stepping data from +29868 to +29988, positions the walk by stepping back while the first edge value is above minus the float at +3540 and forward until it is above it again, and for each position stores the counters and edge values to +29872, +29868, +29896, +29892, +29996 and +29992, copies the word at +29856 to +30248 and calls the context method at +12380. The word at +29852 decides which counter and which pair of floats advance the walk. A zero count at +29944 skips the loop.
  When state bit 15 was set it calls `ceilf` on the float at +29956, adds the result to the word at +29844 and, with the halfword at +482 as divisor, stores the sum of the word at +29840 and the quotient of the result alone, masked to 4 bits, back to +29840, and the remainder of the sum back to +29844 (the divisor is trapped when zero). It ends by restoring `+0x2110` from the word at +32360 in both views when the texture setting was changed, and returns no value.

- `__glCrmDumpSpan` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: writes one horizontal span of the current colour, depth, texture and fog to the engine, a 1612-byte routine at address 0xd96b4d0. Established.
  It takes only the context. It reads the start column at +30196, the row at +30200, the length at +30248 and the state word at +30436. Let the flag be set when state bit 17 is set, or when bit 13 is set and bit 3 is clear. With texture (bit 3), the flag, a mode word behind the pointer at +2484 other than 0x8062 or 7681 and a non-zero colour step among the floats at +30284 to +30296, the routine hands the whole span to `__glCrmDumpPerPixelSpan` (the call at 0xd96b9c8 goes to 0xd969fb0) and returns that routine's result. With texture off and the flag set it takes a variant that sends the draw-mode word with bits 12, 13 and 19 cleared, the primitive word at +32116 with its low half replaced by 0x20, a smooth-colour or scaled colour-index set-up, and it skips the decrement of the length, so the end column is the start plus the length.
  A second flag, called fresh here, is 0 in the variant, and otherwise 0 when bit 1 of the word at +32892 is set and the word at +32896 equals 2, and 1 in the remaining cases.
  The routine brings the draw-mode register `+0x2018` of both views up to date when the cached word at +32092 differs, and the primitive register `+0x2060` of both when +32096 differs from 0x3020000 (in the variant, from the changed primitive word). It stores the end points to the first view in the order `+0x2084`, `+0x2080`, `+0x208c`, `+0x2088` (each value shifted left by 6, the end column being the start plus the length minus one in the plain form).
  Depth (state bit 2) writes `+0x21c8`, then `+0x21d8` as zero, then `+0x21d0`, each a doubleword taken from the integer words at +30204 and +30324 times 64.0.
  Colour with state bit 0 set and the variant off stores the packed word `r<<24 | g<<16 | b<<8 | a` to `+0x20d0` from the floats at +30208, +30212, +30216 and +30220, only when fresh is set. In the variant it stores the starts times 4096 as the doublewords `+0x20e0` and `+0x20e8`, then, in this order, the slope pair `+0x20f0`, a zero doubleword to `+0x2108`, a zero doubleword to `+0x20f8` and the slope pair `+0x2100`, the slopes being the floats at +30284 to +30296 times 4096. With the bit clear it stores the integer part of the float at +30208 to `+0x20d0` when fresh is set; in the variant it stores the start and the step at +30284 times 4096 (or 256 when the word at +3252 is not 8) to `+0x20ec` and `+0x2104`, with zero to `+0x210c` between them.
  With state bit 3 set it stores the texture shift flags `+0x2134` (from the words at +32496 and +32500), then `+0x2120`, `+0x2128`, `+0x2130`, `+0x2138`, `+0x2148`, `+0x2158`, `+0x2140`, `+0x2150` and `+0x215c` from the doubles at +32376 to +32440 scaled by those shifts, and, with state bit 13, fog `+0x2178`, `+0x2188` and `+0x2180` from the floats at +30244 and +30432.
  The routine then stores zero to `+0x29f0` to start the span, restores `+0x2018` of both views if the draw-mode word changed, clears the word at +32896 when fresh is set, and returns 0.

- `ClearDepth` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: clears the depth buffer of a drawable, either in bands through the engine or through a kernel request, a 1180-byte routine at address 0xd94a300. Established; the purpose of the bands is inferred.
  Its argument is the depth-buffer record whose first word is the context. It returns at once when the byte at context +1636 is zero. When the byte at record +96 is 1 it takes the kernel path below. Otherwise it adds the word at record +100 to the one at +80, stores the sum back, and takes its top byte as a band number; the band is the rows from the word at +1700 times that number over 256 to the same times the number plus one over 256, offset by the origin words at +3660 and +3664, and when the two row bounds are equal it skips straight to the final call.
  For a band it saves stencil mode `+0x21e0` and depth function `+0x21c0` as read from the second view, writes stencil mode as the band number in the top byte, 0xff0000, 0x7000 and 2 in the low bits, and depth function as the old top byte with 0x0e000000 set, the low 24 bits being the clear depth (the unsigned word at record +76 times the double at context +1640, truncated, shifted right by 6). It sets draw mode `+0x2018` to 0x400007 with bit 20 of the old word, and primitive `+0x2060` to 0x3020000, only when the cached copies differ. It stores the rectangle `+0x2080`, `+0x2084`, `+0x2088` and `+0x208c` to the first view (x from +3660 across the word at +1696, rows as above, all shifted left by 6), `+0x21d0` and `+0x21d8` as zero, and the depth through the alias `+0x29c8`. It then restores the draw-mode register if it differs, and stencil mode and depth function in both views. The banded path ends by calling `__glCrmPassDepthFunc` (local GOT entry 238) with the context, also when the band was empty.
  The kernel path builds a 12-byte record on the stack (the depth shifted right by 6, the word 0x77777777, the bytes 4 and 2, and a byte holding bit 20 of the draw-mode word) and sends request 22022 (the buffer clear of [ioctls.md](ioctls.md)) on the descriptor at context +31504. When the call fails it calls the context method at +20 with the text "ClearDepth buffer failed" (at 0xda41c18). It then reads byte 10 of the record back and returns unless bit 1 of it is set; the routine stores 0 or 1 there, so only the request can set that bit.
  The software clear that follows sets `+0x21c0` to its old value with 0x0e000000, draw mode to 0x400006 with bit 20, primitive `+0x2060` to 0x3020000 when the caches differ, writes the window rectangle from the words at +29700 to +29712 to the first view, zeroes `+0x21d0` and `+0x21d8`, writes the depth through `+0x29c8` and restores the draw mode and `+0x21c0`. The kernel path returns without calling `__glCrmPassDepthFunc`. The routine returns no value.

- `ApplyScissor` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: loads the scissor rectangle into the engine and keeps the depth state in step with it, a 656-byte routine at address 0xd943c80. Established.
  Its argument is the context. Before anything else, when the halfword read from `+0x2284` of the second view has bit 0 set, the words at +2524 and +2528 are zero and the halfword at `+0x227e` equals the word at +2536, it stores 20 to +2528.
  Enable-word bit 14 (0x4000, the scissor test) then decides the box. Off, the box is 0 to 2048 in both directions and bit 16 of the draw-mode word is cleared. On, bit 16 is set and the left edge is the word at +2524 (floored at 0), the right edge that plus the width at +2532 (capped at 2048), the lower row the window height at +3704 minus the word at +2528 (capped at 2048) and the upper row the window height minus the sum of the words at +2528 and +2536 (floored at 0).
  The box goes out as one doubleword, each field plus 4096 in a 16-bit half (left in the high half and the upper row in the low half of the first word; right and the lower row in the second), to `+0x2048` of the first view and then of the second.
  When the words at +31228 and +31328 are both non-zero it then reconciles the depth state, using bit 20 of the draw-mode word. With bit 20 clear it returns. With bit 20 set, a box that covers the whole window (left 0, upper row 0, right equal to +3700, lower row equal to +3704) and the byte at +31324 set zeroes +31308 and the byte and calls `__glCrmPassDepthFunc` (local GOT entry 238). A smaller box with the byte clear and the words at +31308 and +31312 different calls the context method at +31336 with the address context +31228 and zero, sets the byte to 1, calls `__glCrmPassDepthFunc` and copies +31308 to +31312. Every other case returns, and the result is that of the last call, if any.

- `__glCrmPassStencilMode` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: passes the stencil test to the engine, a 500-byte routine at address 0xd96d250. Established.
  It returns at once, storing nothing, when the byte at context +31324 is zero. Otherwise it maps each of the three operation words at +1676, +1680 and +1684 to a code: 0 (GL_ZERO) gives 1, 7680 (GL_KEEP) 0, 7681 (GL_REPLACE) 2, 7682 (GL_INCR) 3, 7683 (GL_DECR) 4, 5386 (GL_INVERT) 5, and any other value 0.
  The mode word is the low byte of the halfword at +1670 in bits 31 to 24, the low byte of the halfword at +1672 in bits 23 to 16, the low three bits of the word at +1664 in bits 14 to 12 (bit 15 is zero), and the codes of the words at +1676, +1680 and +1684 in bits 11 to 8, 7 to 4 and 3 to 0. It stores the word to stencil mode `+0x21e0` of the first view and then, in the return's delay slot, of the second view. It returns no value.

- `__glCrmSmoothRGBLine` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: draws a Gouraud-shaded RGBA line, a 388-byte routine at address 0xd937ea4. Established.
  Arguments are the context and the two vertex records. It stores the first vertex's doubleword at record +128 to `+0x2080` of the first view, takes the absolute differences of the x and y floats at +128 and +132 and picks the longer axis (x when the y difference is not greater). An x-major line with a zero x difference returns there, with only `+0x2080` stored; otherwise the delay slot forms the reciprocal of the longer difference with `recip.s`.
  It stores the second vertex's doubleword to `+0x2088`, and the primitive word at +32116 to `+0x2060` of both views when it differs from +32096. When enable-word bit 8 (0x100) is set it stores the stipple pattern at +32108 to `+0x20c4` of both views and the word at +32112 to `+0x20c0` of the first view the first time (the byte at +29848 is then set); in that case an x-major line whose x difference is 127.0 or more continues in the code at 0xd93871c instead.
  The start colour is each float of the first vertex's colour record plus the float at +32020, stored as raw bits to `+0x20e8`, `+0x20ec` and then red and green together to `+0x20e0`. The slopes are the colour differences times the reciprocal times the float at +32016, truncated to integers. Two doublewords are zeroed first. For x-major lines the stores are `+0x20f0`, `+0x20f4` and `+0x2100` and, last, the alpha slope through the alias `+0x2904`, with `+0x20f8` and `+0x2108` zeroed; for y-major lines `+0x20f8`, `+0x20fc`, `+0x2108` and the alias `+0x290c`, with `+0x20f0` and `+0x2100` zeroed. It returns no value.

## Routines read in full from the disassembly

One entry each, for routines of the N32 build that were read from first instruction to last. An argument is named by its position (first argument first). The two register views of the context at +32184 and +32188 are the pair every driver routine writes, in that order.

- `__glCrmPassDepthFunc` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: writes the depth function register +0x21c0, and in one case the stencil registers, a 372-byte routine at 0xd94a0d0. Established.
  It takes the context as its only argument, calls nothing and returns no value.
  The function field is bits 27:25, from the low three bits of the context word at +1632.
  The clear value is bits 23:0, from the unsigned word at +31304 converted to a double and multiplied by the double at +1640.
  The product is cut with `trunc.w.d`, shifted right by 6 and masked to 24 bits.
  Bits 31:28 are not computed: they come from the stack word at offset 0, loaded at 0xd94a0fc before any store to it.
  If the byte at +31324 is zero and bit 2 of the draw-mode word at +32088 is set, it builds a stencil word.
  That word is the top byte of the context word at +31308, with bits 23:16 set, bits 15:12 set to 5 and bit 1 set; bits 11:0 and bit 0 are cleared.
  Each of those constants is formed by an instruction between 0xd94a120 and 0xd94a1c8.
  In this case it also stores the draw-mode word back with bit 0 set, sets bit 24 of the depth word, and writes the stencil word to +0x21e0.
  It then writes +0x21e8 as 255 when bit 1 of the new draw-mode word is set and 0 when clear.
  In every other case it clears bit 24 of the depth word, and when the word at +31328 is nonzero it clears bit 0 of the draw-mode word.
  All paths end by writing the depth word to +0x21c0, through the first view and then, in the delay slot of the return, the second.
- `__glCrmFlatTriangle` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: draws one flat-coloured triangle, a 232-byte routine at 0xd936410. Established.
  The arguments are the context, three vertex records and a flag; it calls nothing and returns no value.
  The primitive word depends on the sign of the context word at +30180 and on the flag, chosen with `movn`.
  A negative sign gives 0x02020000 for a nonzero flag and 0x02010000 for zero; a non-negative sign gives 0x02000000 and 0x02030000.
  It saves its return address at +32096 and writes the primitive word to +0x2060 through the first view only.
  The doubles at +128 of the three vertex records go to +0x2080, +0x2088 and +0x2090, the third on every path.
  When bit 1 of the context word at +32892 is set it then writes zero to +0x29f0, the start alias of +0x21f0, and returns with no colour written.
  Otherwise it reads the colour record whose pointer is at +28072, and its float array through the pointer at record +8.
  It clears the word at +32896.
  When bit 0 of the word at +30436 is set it truncates four floats and ORs them, shifted left by 24, 16, 8 and 0, into one word.
  When clear it writes the first float, truncated, as one word.
  Either word goes to +0x28d0, the start alias of the foreground colour +0x20d0, and that write starts the triangle.
- `__glCrmPassAlphaFunc` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: writes the alpha test register +0x2198, a 116-byte routine at 0xd9402a0. Established.
  It takes the context, calls nothing, has no early exit and returns no value.
  The test function is the context word at +1820 minus 512, masked with 15 and placed in bits 11:8.
  The reference is the float at +1824 times 255.0 (the literal at 0xda4b77c), cut with `trunc.w.s` and masked to bits 7:0.
  Bits 31:12 are not computed: they come from the stack word at offset 0, loaded at 0xd9402c0 before any store.
  The word is written through the first view and then, in the delay slot of the return, the second.
- `__glCrmPassFog` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: writes the fog colour register +0x2170, a 96-byte routine at 0xd940b60. Established.
  It takes the context, calls nothing and returns no value.
  A nonzero byte at +3221 returns at once with nothing written.
  Otherwise it truncates the floats at +1592, +1596 and +1600 to 64-bit integers with `trunc.l.s`.
  The word is the first shifted left by 24, the second by 16 and the third by 8, ORed together, so the low byte is zero.
  There is no clamp, so a value outside 0 to 255 spills into the next field.
  It is written through the first view and then, in the delay slot of the return, the second.
- `__glCrmFlushAndConfirm` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: flushes the engine and waits until it is idle, a 60-byte routine at 0xd944d80. Established.
  It takes the context, calls nothing and returns no value.
  It writes zero (through a stack slot) to the flush register +0x21f8 of the first view only.
  It then reads the status word at +0x4000 of the same view until bit 28 is set, testing the word shifted left by 3 for a negative sign.
  The loop has no count and no timeout.
- `__glCrmTexIoctl` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: sends one texture request to the driver and can print it, a 324-byte routine at 0xd96e3b0. Established.
  The arguments are the descriptor, the request number and the request argument; the first two go to `ioctl` unchanged.
  Two global words steer it, both set by the texture reset routine from `getenv`.
  The word at gp-22412 (0xda4b600) holds the result for `GLCRMTEXNODEALLOC`, and the word at gp-21560 (0xda4b954) holds the result for `GLCRMTEXDUMP`.
  With the first word nonzero and request 22018 (0x5602, free) it returns 0 without calling `ioctl`.
  Otherwise it calls `ioctl` and keeps the result.
  A nonzero result with the dump word nonzero calls `perror` with `__glCrmTexIoctl Error`; with the dump word zero it returns -1 at once.
  With the dump word nonzero it prints one line after success or failure, chosen by the request.
  Request 22017 (0x5601) prints the texture allocate request with the argument words at +4, +8, +0 and +12.
  Request 22018 prints the texture dealloc request with the argument itself.
  Request 22019 (0x5603) prints the texture define request with the words at +0, +4 and +8, then a second line with the six words at +12, +16, +20, +24, +28 and +32.
  Other requests print nothing.
  It returns 0 when the `ioctl` result was zero and -1 otherwise, chosen by `movz` in the return's delay slot.
- `texIoctlBind` in `usr/gfx/arch/IP32CRM32/libGLcore.so`: binds a texture slot through the driver, a 120-byte routine at 0xd96e540. Established.
  The arguments are the context and the slot number, which it keeps on the stack.
  With the dump word at gp-21560 nonzero it first prints `the texture ioctl bind request: slotId %d`.
  It calls `ioctl` with the descriptor at context +31504, request 22096 (0x5650) and the address of the saved slot number.
  A nonzero result calls `perror` with `GL Error : texIoctlBind ` whatever the dump word is, and returns -1.
  A zero result returns 0. It writes no engine register.
