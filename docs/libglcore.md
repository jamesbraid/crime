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

### `crm_accum.c`

Accumulation buffer, through the VICE media library and digital-media buffers. Established: 16 routines in the unit, 16 listed here; no routine stores through the register base.


### `crm_attrib.c`

OpenGL state entry points that turn state into CRIME register words: DrawMode, alpha test, blend colour and function, colour mask, fog colour and logic op. Established: 37 routines in the unit, 33 listed here; 8 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPassBlendFunc` | 0xd940420 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the OpenGL blend function to the engine, 214 instructions. It translates the source and destination factors into the engine's blend-function word and stores it to +0x21a8, with the constant 6 on one path. |
| `__glCrmPassBlendColor` | 0xd940780 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the constant blend colour, 36 instructions. It packs the four colour components into one word and stores it to +0x21a0 through the register base held at gc+0x7db8, in two stores. |
| `__glCrmEnableDither` | 0xd940810 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): turns dithering on or off, 27 instructions. It reads the draw-mode word of the context, sets or clears the dither bit (bit 8) and stores it to +0x2018, once for each of its two paths. |
| `__glCrmEnableLogicOp` | 0xd940880 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): turns the logic operation on or off, 30 instructions. It sets or clears the logic-op bit (bit 9) of the draw-mode word and stores it to +0x2018, once for each of its two paths. |
| `__glCrmPassLogicOp` | 0xd940900 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the OpenGL logic operation code, 109 instructions. It translates the sixteen operations to the engine's four-bit codes and stores the result to +0x21b0 (the logic-op register), once for the shadow and once for the hardware. |
| `__glCrmPassColorMask` | 0xd940bc0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the colour write mask, 162 instructions. It packs the channel enables into the engine's mask word and stores it to +0x21b8, writing 0 for the case where every channel is masked. |

### `crm_bitmap.c`

Bitmaps drawn with the stipple registers. Established: 3 routines in the unit, 3 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderBitmap` | 0xd940e90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a bitmap (the bitmap routine) as stippled primitives, 786 instructions. For each strip it selects draw mode through +0x2018, stores stipple mode (+0x20c0) and the stipple pattern through the start alias (+0x28c4), sets the primitive (+0x2060) and the vertex pair (+0x2080 to +0x208c), and commits through the alias. |
| `__glCrmRenderFrontBackBitmap` | 0xd941af0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a bitmap into the front and back buffers in turn, 114 instructions. It clears bit 1 of the draw-mode word (+0x2018) for the second pass, stores the stencil mask (+0x21e8) around each pass, and calls the single-buffer bitmap routine through a table in the context. |
| `__glCrmRenderLeftRightBitmap` | 0xd941cc0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a bitmap into the left and right stereo buffers in turn, 135 instructions. It clears bit 0 of the buffer-mode word (+0x2008) between passes, stores the stencil mask (+0x21e8) around each and calls the single-buffer routine through a context table. |

### `crm_ci.c`

Colour-buffer fetch, store, read and clear for colour-index visuals. Established: 9 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `StoreCI` | 0xd941ee0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one colour-index pixel, 36 instructions. It writes the primitive word (+0x2060), the pixel position as a GL vertex (+0x2080 and +0x2084) and the colour through the start alias at +0x28d0 so the write commits. |
| `StoreCI2` | 0xd941f70 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one colour-index pixel from the second span form, 56 instructions. It writes the primitive (+0x2060), the position (+0x2080, +0x2084) and the colour through the start alias at +0x28d0, with a second pixel when the span is two wide. |
| `ClearCI` | 0xd9423c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): clears a colour-index buffer, 289 instructions. It sends ioctl 0x5606 to prepare the buffer, selects the buffer (+0x2008) and draw mode (+0x2018), loads the clear index into the foreground colour (+0x20d0), sets the primitive (+0x2060) and the rectangle corners (+0x2080 to +0x2088 and the alias +0x288c) and commits. |

### `crm_coloropt.c`

Current and raster colour download into the foreground register. Established: 24 routines in the unit, 24 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmDownloadCurrentColor` | 0xd942aa0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): sends the current OpenGL colour to the engine, 44 instructions. It converts the colour to the packed pixel word of the buffer and stores it to the foreground colour register +0x20d0 in two stores, once for each of its two format paths. |
| `__glCrmDownloadRasterColor` | 0xd942b50 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): sends the raster colour (the colour glDrawPixels and glBitmap use) to the engine, 44 instructions. It converts it to the packed pixel word and stores it to the foreground colour register +0x20d0, in two stores for its two format paths. |
| `__glcrmim_Indexf` | 0xd942c70 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the immediate-mode glIndexf handler, 27 instructions. It converts the colour index to the buffer's pixel word and stores it to the foreground colour register +0x20d0 in two stores, one per pixel size. |
| `__glcrmim_FastColor4ub` | 0xd9435b0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the immediate-mode glColor4ub handler, 54 instructions. It packs the four bytes into the buffer's pixel word and stores it to the foreground colour register +0x20d0 in two stores, one per pixel size. |

### `crm_context.c`

Context and drawable set-up: sends the board-information, shadow-mapping, drawable and TLB-set requests listed, and flushes (`PP_FLUSH`). Established: 27 routines in the unit, 21 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `GetBoardInfo` | 0xd943810 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): reads the machine's hardware inventory to learn the board configuration, 37 instructions. It calls `scaninvent` twice, once for each inventory class it needs, and returns what it found; it stores no engine register. |
| `__glCrmSetReadBuffer` | 0xd944650 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): selects the buffer glReadPixels and glCopyPixels read from, 105 instructions. It stores the source buffer mode register +0x2000 in two stores, once for each buffer-addressing path, and calls the hook at +0x14 of the context's table, which sends ioctl 0x55f7 to select the frame-buffer TLB set. |
| `__glCrmSetCurrentBuffers` | 0xd944800 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): binds the draw and read buffers after a drawable change, 109 instructions. It builds a request record in the context with the number 0x55f7 (select a frame-buffer TLB set) and a buffer code of 2, and sends it through the table hook at +0x14. |
| `DecoupleSwapBuffers` | 0xd944c90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): a short routine of 60 instructions that makes one indirect call through the hook at +0x14 of the context's table with the drawable it was given. It stores no engine register and sends no ioctl of its own. |

### `crm_ctri.c`

Triangle variants: stippled, left/right stereo and slow-path triangles. Established: 5 routines in the unit, 5 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFillCheapFogTriangle` | 0xd948160 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a triangle with per-vertex fog, 151 instructions. It calls the context routine at +0x30f4 once per vertex with the vertex colour and its fog value (word +0xb0) and swaps the three colours it returns in for the vertex colours. It then rewrites the draw-mode register +0x2018 (to both register bases) for the fill, fills through the context routine at +0x2f34, restores +0x2018 and puts the vertex colour pointers back. |
| `__glCrmFillStippledTriangle` | 0xd9483c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a polygon-stippled triangle, 51 instructions. It stores the draw-mode register +0x2018 twice to enable and then restore the stipple bits and calls the context's plain fill routine at +0x2f34 between them. |
| `__glCrmFillFrontBackTriangle` | 0xd948490 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a triangle in the front and back buffers in turn, 116 instructions. It clears bit 1 of the draw-mode register +0x2018, stores the stencil mask +0x21e8 around each pass and calls the single-buffer fill through the context table at -0x7efc. |
| `__glCrmFillLeftRightTriangle` | 0xd948660 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): fills a triangle in the left and right stereo buffers in turn, 107 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes, stores the stencil mask +0x21e8 around each and calls the single-buffer fill through the context table at -0x7ee8. |

### `crm_depth.c`

Depth-buffer access and clears: depth function, stencil mode, rectangle primitives and the clear-buffer request. Established: 12 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `FirstClearDepth` | 0xd94a7a0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the first clear of the depth buffer, 173 instructions. It stores stencil mode +0x21e0 and depth function +0x21c0, sets draw mode +0x2018 and the primitive +0x2060 to 0x3020000, writes the rectangle through the GL vertex registers (+0x2080 to +0x208c) and restores the three registers. |

### `crm_igloo.c`

Compatibility (IRIS GL-style) helpers; sends resource-manager command 1009. Established: 7 routines in the unit, 7 listed here; no routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmIglooFullScreen` | 0xd94aef0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): a short routine of 37 instructions that makes two indirect calls through the context hooks at +0x2e84 and +0x2e88, one after the other. It stores no engine register and sends no ioctl of its own. |

### `crm_line.c`

Line set-up: wide, stippled, scissored, aliased and antialiased lines. Established: 9 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderCheapFogLine` | 0xd94bcb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a line with fog taken per vertex, 65 instructions. It calls the context routine at +0x30f4 for each end with the end's colour and fog value and swaps the returned colours in for the vertex colours. It writes the constant 0xf000 to the fog start (+0x2178) and zero to the fog x step (+0x2180) at both register bases, draws through the routine held at +0x30bc, and restores the colour pointers. |
| `__glCrmRenderFrontBackLine` | 0xd94c750 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a line into the front and back buffers in turn, 106 instructions. It clears bit 1 of the draw-mode register +0x2018 for the second pass, stores the stencil mask +0x21e8 around each pass and calls the single-buffer line routine through the context table at -0x7ef8. |
| `__glCrmRenderLeftRightLine` | 0xd94c900 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a line into the left and right stereo buffers in turn, 119 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes, stores the stencil mask +0x21e8 around each and calls the single-buffer routine through the table at -0x7ee4. |

### `crm_linedraw.c`

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

### `crm_linespan.c`

Stippled line stored as spans. Established: 2 routines in the unit, 2 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmStoreLine` | 0xd94e020 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the general line routine of the span path, 1068 instructions. It computes texture, fog and antialias values with `__glFloor` and `powf`, then writes the first end (+0x2080, +0x2084), the colour (+0x20d0), the texture and fog registers (+0x2130 to +0x2188), the primitive (+0x2060) and the second end (+0x2088, +0x208c), committing through the null alias (+0x29f0). |
| `__glCrmStoreStippledLine` | 0xd94f0e0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the stippled variant of the general line routine, 1092 instructions. It makes the same writes as `__glCrmStoreLine` (end points, colour +0x20d0, texture and fog registers, primitive +0x2060) and builds the antialias index with `__glBuildAntiAliasIndex`. |

### `crm_listcomp.c`

Display-list compile and execute for the texture-image commands. Established: 17 routines in the unit, 17 listed here; no routine stores through the register base.


### `crm_listexecasm.ma`

Assembly display-list executors for vertex, normal, colour and texture coordinate. Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.


### `crm_pick.c`

Selection of the primitive and lighting procedures for the current state. Established: 11 routines in the unit, 4 listed here; 1 routine stores through the register base.


### `crm_pixel.c`

DrawPixels, ReadPixels and CopyPixels through the linear TLBs ([pixel-transfer.md](pixel-transfer.md)). Established: 39 routines in the unit, 34 listed here; 7 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `LoadLinearTlb` | 0xd952f80 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): loads a linear TLB set for a pixel transfer, 59 instructions. It calls `__glCrmIoctl` with the request and, when that fails, prints a message and the system error text; it stores no engine register itself. |
| `__glCrmPickDrawPixels` | 0xd954000 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): selects the pixel-drawing routine for the current state, 1091 instructions. It prepares the unpack state with four helper routines, stores the foreground colour +0x20d0 for fast fills, and falls back to `__glGenericPickDrawPixels` or `__glSlowPickDrawPixels` for formats the engine cannot take. |
| `crmFastDoubleStore` | 0xd956ce0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into the front and back buffers of a double-buffered window, 109 instructions. It zeroes the stencil mask (+0x21e8) around each store, calls the span store routine through a register-held pointer and rewrites the draw-mode register +0x2018. |
| `crmCopyPixelsXfer` | 0xd9597b0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): copies pixels with the transfer path , 368 instructions. It sets draw mode +0x2018 and primitive +0x2060 to 0x600078, writes the rectangle through the GL vertex registers (+0x2080 to +0x208c), the transfer source address and steps (+0x20a0, +0x20a8, +0x28ac), selects buffers with `__glCrmSetDrawBuffer` and restores the colour mask +0x21b8. |

### `crm_point.c`

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

### `crm_polyaa.c`

Plane-equation helpers for antialiased polygons. Established: 3 routines in the unit, 2 listed here; no routine stores through the register base.


### `crm_prim.c`

Begin/End and primitive state, half-pixel adjustment, rectangles. Established: 23 routines in the unit, 23 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `EndLLoop` | 0xd963860 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): ends a line loop, 66 instructions. It stores the foreground colour +0x20d0 for the closing segment in two stores, resends the current colour with `__glCrmDownloadCurrentColor` and draws the closing segment through the context routine at +0x30c4. |
| `EndPoints` | 0xd963b10 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): ends a point primitive, 79 instructions. It calls `__glEndPrim`, then stores the texture mode register +0x2110 to the value the current state needs, once for each of its two paths. |
| `__glCrmBeginPoints` | 0xd963c50 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): begins a point primitive, 86 instructions. It calls `__glBeginPoints`, then stores the texture mode register +0x2110, once for each of its two paths, so points are drawn with texturing as the state requires. |

### `crm_pxspan.c`

Span renderers used by the pixel paths. Established: 15 routines in the unit, 15 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmSpanDoubleStore` | 0xd963db0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one span into both buffers of a double-buffered window, 120 instructions. It selects each buffer with `__glCrmSetDrawBuffer`, zeroes the stencil mask (+0x21e8) around the store, calls the span routine held in a register and rewrites the draw-mode register +0x2018. |
| `__glCrmSpanRenderDepth` | 0xd964c80 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a span of depth values as pixels, 176 instructions. It prepares the pixel operations with `__glCrmSetupPixelRenderOps`, then for each pixel writes the primitive (+0x2060), the depth value as the foreground colour (+0x20d0) and the position, with the x position through the start alias (+0x2880) to commit. |
| `__glCrmSpanRenderDepth2` | 0xd964f50 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the second form of the depth span writer, 211 instructions. It prepares the pixel operations with `__glCrmSetupPixelRenderOps`, then stores the primitive (+0x2060), the depth value in the foreground colour (+0x20d0) and the position (+0x2080 and +0x2084) for each pixel. |

### `crm_rect.c`

Fast rectangles. Established: 3 routines in the unit, 3 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFrontBackRect` | 0xd9669e0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a rectangle into the front and back buffers in turn, 116 instructions. It selects each buffer with `__glCrmSetStoreBuffer`, clears bit 1 of the draw-mode register +0x2018 for the second pass, stores the stencil mask (+0x21e8) around each and calls the rectangle routine through the table at -0x7eec. |
| `__glCrmLeftRightRect` | 0xd966bb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): draws a rectangle into the left and right stereo buffers in turn, 129 instructions. It clears bit 0 of the destination buffer mode +0x2008 between passes, stores the stencil mask (+0x21e8) around each and calls the rectangle routine through the table at -0x7ed8. |

### `crm_rgb.c`

Colour-buffer fetch, store, read and clear for RGBA visuals. Established: 18 routines in the unit, 18 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `StoreRGBA` | 0xd966dc0 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one RGBA pixel, 52 instructions. It writes the primitive (+0x2060) in two stores, the pixel position through the GL vertex registers (+0x2080 and +0x2084) and the colour through the start alias at +0x28d0 so the write commits. |
| `StoreRGBA2` | 0xd966e90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores one RGBA pixel into a selectable store buffer, 72 instructions. It brackets the same writes as `StoreRGBA` (primitive +0x2060, position +0x2080 and +0x2084, colour alias +0x28d0) with two calls of `__glCrmSetStoreBuffer`. |
| `ReturnRGBASpan` | 0xd966fb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): reads an RGBA span back for the pixel-read path, 206 instructions. It reads through the transfer routine `crmDrawPixelsXfer` and rewrites the draw-mode register +0x2018, with a context hook at +0x7e44 for the fallback. |
| `ClearRGBA` | 0xd967980 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): clears the colour buffer, 438 instructions. It reads the destination buffer mode with `__glCrmGetDstBufMode`, sends ioctl 0x5606 (clear a buffer through the transfer engine), then selects the buffer (+0x2008) and draw mode (+0x2018), sets the primitive (+0x2060), the clear colour (+0x20d0) and the rectangle (+0x2080 to +0x288c) and restores the buffer with `__glCrmSetDrawBuffer`. |

### `crm_span.c`

Span store routines that draw one span as a hardware primitive with colour, texture and fog steppers. Established: 14 routines in the unit, 13 listed here; 6 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmDumpPerPixelSpan` | 0xd969fb0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a span pixel by pixel with per-pixel texture, fog and colour, 640 instructions. For each pixel it computes values with the power function, stores the texture q and steppers (+0x2130, +0x2158, +0x215c), the fog start and steppers (+0x2178 to +0x2188), the colour (+0x20d0), the primitive (+0x2060) and the position (+0x2080 to +0x208c), and commits with a store to the null register through its alias (+0x29f0). |
| `__glCrmDumpPerPixelStippledSpan` | 0xd96a9c0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the stippled form of the per-pixel span writer, 697 instructions. It makes the same register writes as `__glCrmDumpPerPixelSpan` (texture q and steppers, fog, colour +0x20d0, primitive +0x2060, position +0x2080 to +0x208c) and calls the power function for the texture and fog values. |
| `__glCrmDumpStippledSpan` | 0xd96bb20 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a stippled span with every attribute, 656 instructions. It sets the stipple pattern through its alias (+0x28c4) and mode (+0x20c0), draw mode (+0x2018), primitive (+0x2060), both span ends (+0x2080 to +0x208c) and the colour steppers (+0x2104, +0x210c) with texture and fog. |
| `__glCrmDumpStippledFlatSpan` | 0xd96c570 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a flat-colour stippled span, 213 instructions. It stores the stipple pattern through its alias (+0x28c4) and the stipple mode (+0x20c0), the draw mode (+0x2018) twice, the primitive (+0x2060), both span ends (+0x2080 to +0x208c) and the colour (+0x20d0). |
| `__glCrmDumpStippledSmoothSpan` | 0xd96c8d0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes a smooth-shaded stippled span, 227 instructions. It stores the stipple pattern through its alias (+0x28c4), the stipple mode (+0x20c0), the draw mode (+0x2018) before and after, the primitive (+0x2060) and both span ends (+0x2080 to +0x208c). |

### `crm_stencil.c`

Stencil-buffer access and clears, with the same register set as the depth unit. Established: 12 routines in the unit, 11 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPassStencilMask` | 0xd96d110 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): passes the OpenGL stencil write mask to the engine, 19 instructions. It stores the mask to the stencil mask register +0x21e8 in two stores, once for each of its two buffer paths. |
| `__glCrmUpdatePolyStipple` | 0xd96d450 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): loads the polygon stipple pattern into the engine, 237 instructions. It saves stencil mode (+0x21e0) and mask (+0x21e8), selects a buffer through the source buffer mode (+0x2000), then uses the transfer path (draw mode and primitive 0x600040, source address and steps +0x20a0 to +0x20ac) to copy the pattern in, and restores the read and draw buffers with `__glCrmSetReadBuffer` and `__glCrmSetDrawBuffer`. |
| `ClearStencil` | 0xd96d970 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): clears the stencil planes, 171 instructions. It forces a non-tagged clear with `__glCrmForceNonTagClear`, sets the stencil mask (+0x21e8), stencil mode (+0x21e0), draw mode (+0x2018) and primitive (+0x2060 = 0x3020000), and sends ioctl 0x5606 (clear a buffer through the transfer engine) through the hook at +0x14. |

### `crm_store.c`

Store-procedure selection and double-buffer and depth stores. Established: 6 routines in the unit, 6 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmDoDoubleStore_S` | 0xd96dfc0 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into both buffers with a stencil, 34 instructions. It zeroes the stencil mask (+0x21e8), calls the store routine held at +0xa4 of its argument, restores the mask and calls the routine again. |
| `crmDoDoubleStore_D` | 0xd96e050 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into both buffers with a depth test, 74 instructions. It calls the store routine at +0xa4 of its argument, rewrites the draw-mode register +0x2018 with bit 1 cleared and calls the routine a second time. |
| `crmDoDoubleStore_SD` | 0xd96e180 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): stores a span into both buffers with stencil and depth, 84 instructions. It zeroes the stencil mask (+0x21e8), calls the store routine at +0xa4 of its argument, restores the mask, rewrites the draw-mode register (+0x2018) and calls the routine again. |

### `crm_texture.c`

Texture objects: allocation, definition and binding; writes the texture mode, border and environment colour and sends the texture-set request (see [memory.md](memory.md)). Established: 54 routines in the unit, 40 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `texIoctlBind` | 0xd96e540 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): binds a texture through the driver, 30 instructions. It sends ioctl 0x5650 and, on failure, prints a message with `printf` and the system error text with `perror`; it stores no engine register. |

### `crm_vapi.ma`

Assembly in-line vertex entry points. Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `vice_colormatrix.c`

VICE media-engine imaging helpers; no CRIME register store. Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.


### `vice_colortable.c`

VICE media-engine imaging helpers; no CRIME register store. Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.


### `vice_convolve.c`

VICE media-engine imaging helpers; no CRIME register store. Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.


### `vice_histogram.c`

VICE media-engine imaging helpers; no CRIME register store. Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


### `vice_pbuffer.c`

VICE media-engine imaging helpers; no CRIME register store. Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.


### `vice_pixel.c`

VICE media-engine imaging helpers; no CRIME register store. Established: 26 routines in the unit, 26 listed here; no routine stores through the register base.


## Assembly units built for this target

Hand-written assembly fast paths: the API dispatch stubs, transform, clip-check, lighting and fast primitive and vertex routines. The two triangle units (`crm_astri.s`, `crm_astextri.s`) store to the rendering registers directly; the others do arithmetic in memory and call the CRIME units through the context.

### `crm_astri.s`

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

### `mips4_lighting.s`

Established: 3 routines in the unit, 2 listed here; no routine stores through the register base.


### `mips4_poly.s`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `mips4_vclip.s`

Established: 13 routines in the unit, 11 listed here; no routine stores through the register base.


### `mips4_xform.s`

Established: 15 routines in the unit, 15 listed here; no routine stores through the register base.


### `mips_fastapi.s`

Established: 8 routines in the unit, 8 listed here; no routine stores through the register base.


### `mips_polyfin.s`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `mips_prim.s`

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.


### `mips_vertex.s`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


## Pixmap back end

The software back end for rendering into X pixmaps. No routine stores through the register base; the store and fetch routines move pixels of 8, 16 and 32 bits in memory.

### `pix_ci.c`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `pix_cx.c`

Pixmap context set-up; sends resource-manager command 1005. Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `SwapBuffers` | 0xd944b90 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): the swap entry of the context unit `pix_cx.c`, 62 instructions. Its only external call is `fprintf`, and it stores no engine register and sends no ioctl, so in this build the entry only reports. |

### `pix_pick.c`

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.


### `pix_rgb.c`

Established: 11 routines in the unit, 11 listed here; no routine stores through the register base.


## Shared software implementation

The device-independent OpenGL implementation: state, validation, matrix and lighting code and the software rasteriser (spans, lines, polygons, fog, texture, blending, depth and stencil operations). These are the fallbacks the CRIME units select when the hardware cannot do an operation.

### `so_accumop.c`

Established: 7 routines in the unit, 7 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `Return` | 0xd939d60 | Inferred ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): returns accumulation values to the framebuffer, 265 instructions. It sets the video-engine DMA buffer TLB with `vice_dmbuf_settlb` twice, moves the data through two further video-engine calls, flushes the cache and calls `crmDrawPixelsXfer` to write the pixels. |

### `so_alphatst.c`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `so_async.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


### `so_attrib.c`

Established: 65 routines in the unit, 58 listed here; no routine stores through the register base.


### `so_bitdraw.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_bitmap.c`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `so_blend.c`

Established: 50 routines in the unit, 49 listed here; no routine stores through the register base.


### `so_buffers.c`

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.


### `so_capi.c`

Established: 38 routines in the unit, 38 listed here; no routine stores through the register base.


### `so_clear.c`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `so_clip.c`

Established: 21 routines in the unit, 21 listed here; no routine stores through the register base.


### `so_colortable.c`

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.


### `so_context.c`

Established: 18 routines in the unit, 17 listed here; no routine stores through the register base.


### `so_convolve.c`

Established: 19 routines in the unit, 19 listed here; no routine stores through the register base.


### `so_deform.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_depthop.c`

Established: 32 routines in the unit, 31 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `Fix_zbuffer` | 0xd94aa70 | Established ([CRIME build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so), 6.5.30): writes the depth clear value over a rectangle, 138 instructions. It returns at once when a context flag byte is set. It saves stencil mode (+0x21e0), stencil mask (+0x21e8) and depth function (+0x21c0), sets the mask to 0xff and adds one field to the depth function, then draws a rectangle with draw mode 0x400007 and primitive +0x2060 = 0x3020000 through the GL vertex registers. The depth steppers (+0x21d0, +0x21d8) are zeroed and the depth value, scaled from a word of the second argument, goes to the depth alias (+0x29c8). The three saved registers are then restored. |

### `so_dlist.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


### `so_eval.c`

Established: 56 routines in the unit, 56 listed here; no routine stores through the register base.


### `so_feedback.c`

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.


### `so_finish.c`

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.


### `so_fog.c`

Established: 8 routines in the unit, 7 listed here; no routine stores through the register base.


### `so_get.c`

Established: 33 routines in the unit, 33 listed here; no routine stores through the register base.


### `so_histogram.c`

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.


### `so_image.c`

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.


### `so_lighting.c`

Established: 25 routines in the unit, 24 listed here; no routine stores through the register base.


### `so_lineclip.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_linedraw.c`

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.


### `so_linefin.c`

Established: 8 routines in the unit, 8 listed here; no routine stores through the register base.


### `so_linespan.c`

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.


### `so_listcomp.c`

Established: 54 routines in the unit, 54 listed here; no routine stores through the register base.


### `so_math.c`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `so_memmgr.c`

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.


### `so_names.c`

Established: 37 routines in the unit, 37 listed here; no routine stores through the register base.


### `so_napi.c`

Established: 8 routines in the unit, 8 listed here; no routine stores through the register base.


### `so_pick.c`

Established: 15 routines in the unit, 13 listed here; no routine stores through the register base.


### `so_pntaa.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_pntdraw.c`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `so_pntfin.c`

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.


### `so_polyaa.c`

Established: 7 routines in the unit, 5 listed here; 1 routine stores through the register base.


### `so_polyclip.c`

Established: 5 routines in the unit, 4 listed here; no routine stores through the register base.


### `so_polydraw.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


### `so_polyfin.c`

Established: 29 routines in the unit, 29 listed here; no routine stores through the register base.


### `so_polymode.c`

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.


### `so_polyspan.c`

Established: 32 routines in the unit, 32 listed here; no routine stores through the register base.


### `so_prim.c`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `so_rapi.c`

Established: 24 routines in the unit, 24 listed here; no routine stores through the register base.


### `so_rasterpos.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_rect.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


### `so_select.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


### `so_size.c`

Established: 24 routines in the unit, 24 listed here; no routine stores through the register base.


### `so_slowspan.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_speccache.c`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `so_stencilop.c`

Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.


### `so_store.c`

Established: 11 routines in the unit, 11 listed here; no routine stores through the register base.


### `so_subdiv.c`

Established: 29 routines in the unit, 29 listed here; no routine stores through the register base.


### `so_tapi.c`

Established: 30 routines in the unit, 30 listed here; no routine stores through the register base.


### `so_texoptspan.c`

Established: 12 routines in the unit, 12 listed here; no routine stores through the register base.


### `so_texture.c`

Established: 207 routines in the unit, 207 listed here; no routine stores through the register base.


### `so_vapi.c`

Established: 26 routines in the unit, 26 listed here; no routine stores through the register base.


### `so_vertarray.c`

Established: 35 routines in the unit, 19 listed here; no routine stores through the register base.


### `so_vertex.c`

Established: 4 routines in the unit, 3 listed here; no routine stores through the register base.


### `so_xform.c`

Established: 55 routines in the unit, 53 listed here; no routine stores through the register base.


## Pixel paths

Pixel packing, unpacking, conversion and the imaging subset (convolution, histogram, colour tables) in software.

### `px_api.c`

Established: 18 routines in the unit, 18 listed here; no routine stores through the register base.


### `px_colormatrix.c`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `px_convolve.c`

Established: 35 routines in the unit, 35 listed here; no routine stores through the register base.


### `px_histogram.c`

Established: 21 routines in the unit, 21 listed here; no routine stores through the register base.


### `px_modify.c`

Established: 19 routines in the unit, 19 listed here; no routine stores through the register base.


### `px_pack.c`

Established: 56 routines in the unit, 56 listed here; no routine stores through the register base.


### `px_paths.c`

Established: 43 routines in the unit, 43 listed here; no routine stores through the register base.


### `px_read.c`

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.


### `px_render.c`

Established: 27 routines in the unit, 27 listed here; no routine stores through the register base.


### `px_unpack.c`

Established: 101 routines in the unit, 101 listed here; no routine stores through the register base.


## Display-list storage

Display-list memory, block and page management and the list optimiser.

### `dl_block.c`

Established: 10 routines in the unit, 10 listed here; no routine stores through the register base.


### `dl_init.c`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `dl_interp.s`

Established: 2 routines in the unit, 2 listed here; no routine stores through the register base.


### `dl_list.c`

Established: 20 routines in the unit, 20 listed here; no routine stores through the register base.


### `dl_matopt.c`

Established: 4 routines in the unit, 4 listed here; no routine stores through the register base.


### `dl_opt.c`

Established: 23 routines in the unit, 23 listed here; no routine stores through the register base.


### `dl_page.c`

Established: 6 routines in the unit, 6 listed here; no routine stores through the register base.


### `dl_table.c`

Established: 9 routines in the unit, 9 listed here; no routine stores through the register base.


## Display-list compile and execute

Generated display-list code. Each compile routine (`__gllc_` prefix) allocates a list operation (`__glDlistAllocOp2`), stores its arguments, records the address of its executor (`__glle_` prefix, the matching unit) and appends the operation (`__glDlistAppendOp`); each executor replays one operation.

### `g_lcomp.c`

Established: 318 routines in the unit, 318 listed here; no routine stores through the register base.


### `g_lexec.c`

Established: 230 routines in the unit, 230 listed here; no routine stores through the register base.


### `g_vertarray.c`

Established: 33 routines in the unit, 33 listed here; no routine stores through the register base.


## MIPS helpers

Assembly helpers: the per-function depth tests (`__glDT_` prefix), vertex API stubs and vertex save routines.

### `mips4_material.ma`

Established: 5 routines in the unit, 5 listed here; no routine stores through the register base.


### `mips4_matrix.ma`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `mips4_texture.ma`

Established: 3 routines in the unit, 3 listed here; no routine stores through the register base.


### `mips_copydisp.s`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `mips_sspan.ma`

Established: 1 routines in the unit, 1 listed here; no routine stores through the register base.


### `mips_texutil.s`

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
