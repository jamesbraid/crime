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
| `__glCrmAntiAliasLineRGB` | 0xd933200 | Established (6.5.30 release): a CRIME driver assembly antialiased line routine (crm anti alias line rgb) that writes the primitive, vertex, colour, fog stepper, antialiasing and depth stepper registers and commits through the start alias; its address is stored by `__glCrmPickLineProcs`, which fills a procedure table. |

### `crm_accum.c`

Accumulation buffer, through the VICE media library and digital-media buffers. Established: 16 routines in the unit, 16 listed here; no routine stores through the register base.


### `crm_attrib.c`

OpenGL state entry points that turn state into CRIME register words: DrawMode, alpha test, blend colour and function, colour mask, fog colour and logic op. Established: 37 routines in the unit, 33 listed here; 8 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPassBlendFunc` | 0xd940420 | Established (6.5.30 release): a CRIME driver attribute state routine (crm pass blend func) that writes the blend function registers; called from `__glCrmEnableBlend`. |
| `__glCrmPassBlendColor` | 0xd940780 | Established (6.5.30 release): a CRIME driver attribute state routine (crm pass blend color) that writes the blend colour registers; called from `__glCrmEnableBlend`. |
| `__glCrmEnableDither` | 0xd940810 | Established (6.5.30 release): a CRIME driver attribute state routine (crm enable dither) that writes the drawing mode registers; called from `__glCrmUpdateHardwareState`. |
| `__glCrmEnableLogicOp` | 0xd940880 | Established (6.5.30 release): a CRIME driver attribute state routine (crm enable logic op) that writes the drawing mode registers; called from `__glCrmUpdateHardwareState`. |
| `__glCrmPassLogicOp` | 0xd940900 | Established (6.5.30 release): a CRIME driver attribute state routine (crm pass logic op) that writes the logic op registers; called from `__glCrmUpdateHardwareState`. |
| `__glCrmPassColorMask` | 0xd940bc0 | Established (6.5.30 release): a CRIME driver attribute state routine (crm pass color mask) that writes the colour mask registers; called from `__glCrmUpdateHardwareState`. |

### `crm_bitmap.c`

Bitmaps drawn with the stipple registers. Established: 3 routines in the unit, 3 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderBitmap` | 0xd940e90 | Established (6.5.30 release): a CRIME driver bitmaps routine (crm render bitmap) that writes the drawing mode, primitive, vertex, stipple and fog stepper registers and commits through the start alias; calls `__glCrmDownloadRasterColor`. |
| `__glCrmRenderFrontBackBitmap` | 0xd941af0 | Established (6.5.30 release): a CRIME driver bitmaps routine (crm render front back bitmap) that writes the drawing mode and stencil mask registers; calls `__glCrmSetStoreBuffer`. |
| `__glCrmRenderLeftRightBitmap` | 0xd941cc0 | Established (6.5.30 release): a CRIME driver bitmaps routine (crm render left right bitmap) that writes the destination buffer mode, drawing mode and stencil mask registers; its address is stored by `__glCrmPickRenderBitmapProcs`, which fills a procedure table. |

### `crm_ci.c`

Colour-buffer fetch, store, read and clear for colour-index visuals. Established: 9 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `StoreCI` | 0xd941ee0 | Established (6.5.30 release): a CRIME driver colour-index buffer routine (store ci) that writes the primitive, vertex and colour registers and commits through the start alias. |
| `StoreCI2` | 0xd941f70 | Established (6.5.30 release): a CRIME driver colour-index buffer routine (store) that writes the primitive, vertex and colour registers and commits through the start alias; calls `__glCrmSetStoreBuffer`. |
| `ClearCI` | 0xd9423c0 | Established (6.5.30 release): a CRIME driver colour-index buffer routine (clear ci) that writes the destination buffer mode, drawing mode, primitive, vertex and colour registers and commits through the start alias and sends ioctl 0x5606 (clear buffer); calls `__glCrmGetDstBufMode`. |

### `crm_coloropt.c`

Current and raster colour download into the foreground register. Established: 24 routines in the unit, 24 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmDownloadCurrentColor` | 0xd942aa0 | Established (6.5.30 release): a CRIME driver colour download routine (crm download current color) that writes the colour registers; called from `ApplySetColor`. |
| `__glCrmDownloadRasterColor` | 0xd942b50 | Established (6.5.30 release): a CRIME driver colour download routine (crm download raster color) that writes the colour registers; called from `__glCrmRenderBitmap`. |
| `__glcrmim_Indexf` | 0xd942c70 | Established (6.5.30 release): a CRIME driver colour download routine (indexf) that writes the colour registers. |
| `__glcrmim_FastColor4ub` | 0xd9435b0 | Established (6.5.30 release): a CRIME driver colour download routine (fast) that writes the colour registers; called from `__glcrmim_FastColor3ub`. |

### `crm_context.c`

Context and drawable set-up: sends the board-information, shadow-mapping, drawable and TLB-set requests listed, and flushes (`PP_FLUSH`). Established: 27 routines in the unit, 21 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `GetBoardInfo` | 0xd943810 | Established (6.5.30 release): a CRIME driver context management routine (get board info) that sends ioctl 0x66 (generic board information); calls `scaninvent`; called from `MakeCurrentRead`. |
| `__glCrmSetReadBuffer` | 0xd944650 | Established (6.5.30 release): a CRIME driver context management routine (crm set read buffer) that sends ioctl 0x55f7 (frame-buffer TLB set); calls `crmGetBufMode`; called from `AssociateDMPbuffer`. |
| `__glCrmSetCurrentBuffers` | 0xd944800 | Established (6.5.30 release): a CRIME driver context management routine (crm set current buffers) that sends ioctl 0x55f7 (frame-buffer TLB set); calls `__glCrmSetReadBuffer`; called from `MakeCurrentRead`. |
| `DecoupleSwapBuffers` | 0xd944c90 | Established (6.5.30 release): a CRIME driver context management routine (decouple swap buffers) that sends ioctl 0x55f4 (window-ID entry); calls `__glCrmIoctl`. |

### `crm_ctri.c`

Triangle variants: stippled, left/right stereo and slow-path triangles. Established: 5 routines in the unit, 5 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFillCheapFogTriangle` | 0xd948160 | Established (6.5.30 release): a CRIME driver triangle variant routine (crm fill cheap fog triangle) that writes the drawing mode registers; its address is stored by `__glCrmPickTriangleProcs`, which fills a procedure table. |
| `__glCrmFillStippledTriangle` | 0xd9483c0 | Established (6.5.30 release): a CRIME driver triangle variant routine (crm fill stippled triangle) that writes the drawing mode registers; its address is stored by `__glCrmPickTriangleProcs`, which fills a procedure table. |
| `__glCrmFillFrontBackTriangle` | 0xd948490 | Established (6.5.30 release): a CRIME driver triangle variant routine (crm fill front back triangle) that writes the drawing mode and stencil mask registers; calls `__glCrmSetStoreBuffer`. |
| `__glCrmFillLeftRightTriangle` | 0xd948660 | Established (6.5.30 release): a CRIME driver triangle variant routine (crm fill left right triangle) that writes the destination buffer mode, drawing mode and stencil mask registers; its address is stored by `__glCrmPickTriangleProcs`, which fills a procedure table. |

### `crm_depth.c`

Depth-buffer access and clears: depth function, stencil mode, rectangle primitives and the clear-buffer request. Established: 12 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `FirstClearDepth` | 0xd94a7a0 | Established (6.5.30 release): a CRIME driver depth buffer routine (first clear depth) that writes the drawing mode and primitive registers; calls `ClearDepth`. |

### `crm_igloo.c`

Compatibility (IRIS GL-style) helpers; sends resource-manager command 1009. Established: 7 routines in the unit, 7 listed here; no routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmIglooFullScreen` | 0xd94aef0 | Established (6.5.30 release): a CRIME driver compatibility routine (crm igloo full screen) that sends ioctl 0x3f1 (resource-manager command 1009, Message); calls `__glCrmIoctl`; called from `__glcrmim_IglooInterfaceSGIX`. |

### `crm_line.c`

Line set-up: wide, stippled, scissored, aliased and antialiased lines. Established: 9 routines in the unit, 9 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderCheapFogLine` | 0xd94bcb0 | Established (6.5.30 release): a CRIME driver line set-up routine (crm render cheap fog line) that writes the fog stepper registers; its address is stored by `__glCrmPickLineProcs`, which fills a procedure table. |
| `__glCrmRenderFrontBackLine` | 0xd94c750 | Established (6.5.30 release): a CRIME driver line set-up routine (crm render front back line) that writes the drawing mode and stencil mask registers; calls `__glCrmSetStoreBuffer`. |
| `__glCrmRenderLeftRightLine` | 0xd94c900 | Established (6.5.30 release): a CRIME driver line set-up routine (crm render left right line) that writes the destination buffer mode, drawing mode and stencil mask registers; its address is stored by `__glCrmPickLineProcs`, which fills a procedure table. |

### `crm_linedraw.c`

Flat, fogged colour-index and polygon-offset lines. Established: 4 routines in the unit, 4 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFlatColorLine` | 0xd94cae0 | Established (6.5.30 release): a CRIME driver line drawing routine (crm flat color line) that writes the primitive, vertex, stipple and colour registers and commits through the start alias. |
| `__glCrmFogCILine` | 0xd94cdb0 | Established (6.5.30 release): a CRIME driver line drawing routine (crm fog ciline) that writes the drawing mode registers; calls `__glCrmSmoothCILine`. |
| `__glCrmTexturedLine` | 0xd94cf20 | Established (6.5.30 release): a CRIME driver line drawing routine (crm textured line) that writes the primitive, vertex, texture stepper and fog stepper registers and commits through the start alias; calls `__glFloor`. |

### `crm_linedrawasm.ma`

Assembly line drawers: colour-optimised, stippled, fogged and depth lines with the shade steppers. Established: 7 routines in the unit, 5 listed here; 6 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmColorOptLine` | 0xd937d20 | Established (6.5.30 release): a CRIME driver assembly line routine (crm color opt line) that writes the primitive registers; its address is stored by `__glCrmPickLineProcs`, which fills a procedure table. |
| `__glCrmStippledColorOptLine` | 0xd937d54 | Established (6.5.30 release): a CRIME driver assembly line routine (crm stippled color opt line) that writes the primitive and stipple registers; its address is stored by `__glCrmPickLineProcs`, which fills a procedure table. |
| `__glCrmFogRGBLine` | 0xd938134 | Established (6.5.30 release): a CRIME driver assembly line routine (crm fog rgbline) that writes the primitive, vertex, stipple, colour and fog stepper registers and commits through the start alias. |
| `__glCrmDepthLine` | 0xd9383c0 | Established (6.5.30 release): a CRIME driver assembly line routine (crm depth line) that writes the primitive, vertex, stipple, colour, fog stepper, depth stepper and null commit registers and commits through the start alias. |

### `crm_linespan.c`

Stippled line stored as spans. Established: 2 routines in the unit, 2 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmStoreLine` | 0xd94e020 | Established (6.5.30 release): a CRIME driver line span routine (crm store line) that writes the primitive, vertex, colour, texture stepper, fog stepper and null commit registers and commits through the start alias; calls `__glFloor`. |
| `__glCrmStoreStippledLine` | 0xd94f0e0 | Established (6.5.30 release): a CRIME driver line span routine (crm store stippled line) that writes the primitive, vertex, colour, texture stepper, fog stepper and null commit registers and commits through the start alias; calls `__glFloor`. |

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
| `LoadLinearTlb` | 0xd952f80 | Established (6.5.30 release): a CRIME driver pixel paths routine (load linear tlb) that sends ioctl 0x5605 (load linear TLB); calls `__glCrmIoctl`; called from `crmDrawPixelsXfer`. |
| `__glCrmPickDrawPixels` | 0xd954000 | Established (6.5.30 release): a CRIME driver pixel paths routine (crm pick draw pixels) that writes the colour registers; calls `__glInitDrawPixelsInfo`. |
| `crmFastDoubleStore` | 0xd956ce0 | Established (6.5.30 release): a CRIME driver pixel paths routine (crm fast double store) that writes the drawing mode and stencil mask registers; called from `crmDrawPixelsXfer`. |
| `crmCopyPixelsXfer` | 0xd9597b0 | Established (6.5.30 release): a CRIME driver pixel paths routine (crm copy pixels xfer) that writes the drawing mode and primitive registers; calls `__glCrmSetDrawBuffer`. |

### `crm_point.c`

Point rendering through the Primitive and GL vertex registers, with fog and depth variants. Established: 13 routines in the unit, 11 listed here; 11 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glcrmim_2DPointVertex2fv` | 0xd95c340 | Established (6.5.30 release): a CRIME driver point routine (unnamed) that writes the primitive, vertex and null commit registers and commits through the start alias. |
| `__glCrmVertexPointFast` | 0xd95c470 | Established (6.5.30 release): a CRIME driver point routine (crm vertex point fast) that writes the primitive and null commit registers and commits through the start alias; its address is stored by `__glCrmPickPointProcs`, which fills a procedure table. |
| `RenderPoint` | 0xd95c540 | Established (6.5.30 release): a CRIME driver point routine (render point) that writes the primitive and null commit registers and commits through the start alias. |
| `RenderPointCI` | 0xd95c600 | Established (6.5.30 release): a CRIME driver point routine (render point ci) that writes the primitive and colour registers and commits through the start alias. |
| `RenderPointDepth` | 0xd95c670 | Established (6.5.30 release): a CRIME driver point routine (render point depth) that writes the primitive and fog stepper registers; calls `__glFogVertex`. |
| `RenderPointFog` | 0xd95c8b0 | Established (6.5.30 release): a CRIME driver point routine (render point fog) that writes the primitive and colour registers and commits through the start alias; calls `__glFogVertex`. |
| `RenderPointTextured` | 0xd95ca60 | Established (6.5.30 release): a CRIME driver point routine (render point textured) that writes the primitive, vertex and fog stepper registers; calls `__glFogVertex`. |
| `RenderPointN` | 0xd95d040 | Established (6.5.30 release): a CRIME driver point routine (render point) that writes the primitive, vertex, colour and null commit registers and commits through the start alias; calls `__glFogVertex`. |
| `RenderFrontBackPoint` | 0xd95dc90 | Established (6.5.30 release): a CRIME driver point routine (render front back point) that writes the drawing mode and stencil mask registers; calls `__glCrmSetStoreBuffer`. |
| `RenderLeftRightPoint` | 0xd95de30 | Established (6.5.30 release): a CRIME driver point routine (render left right point) that writes the destination buffer mode, drawing mode and stencil mask registers. |

### `crm_pointasm.ma`

Assembly RGBA point renderer. Established: 2 routines in the unit, 2 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmRenderPointRGBA` | 0xd95e250 | Established (6.5.30 release): a CRIME driver assembly point routine (crm render point rgba) that writes the primitive and colour registers and commits through the start alias. |
| `__glCrmRenderPointDepthRGBA` | 0xd95e2d8 | Established (6.5.30 release): a CRIME driver assembly point routine (crm render point depth rgba) that writes the primitive and colour registers. |

### `crm_polyaa.c`

Plane-equation helpers for antialiased polygons. Established: 3 routines in the unit, 2 listed here; no routine stores through the register base.


### `crm_prim.c`

Begin/End and primitive state, half-pixel adjustment, rectangles. Established: 23 routines in the unit, 23 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `EndLLoop` | 0xd963860 | Established (6.5.30 release): a CRIME driver primitive assembly routine (end lloop) that writes the colour registers; calls `__glCrmDownloadCurrentColor`. |
| `EndPoints` | 0xd963b10 | Established (6.5.30 release): a CRIME driver primitive assembly routine (end points) that writes the texture mode registers; calls `__glEndPrim`. |
| `__glCrmBeginPoints` | 0xd963c50 | Established (6.5.30 release): a CRIME driver primitive assembly routine (crm begin points) that writes the texture mode registers; calls `__glBeginPoints`. |

### `crm_pxspan.c`

Span renderers used by the pixel paths. Established: 15 routines in the unit, 15 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmSpanDoubleStore` | 0xd963db0 | Established (6.5.30 release): a CRIME driver pixel span routine (crm span double store) that writes the drawing mode and stencil mask registers; calls `__glCrmSetDrawBuffer`; called from `__glCrmSpanRenderCI`. |
| `__glCrmSpanRenderDepth` | 0xd964c80 | Established (6.5.30 release): a CRIME driver pixel span routine (crm span render depth) that writes the primitive, vertex and colour registers and commits through the start alias; calls `__glCrmSetupPixelRenderOps`. |
| `__glCrmSpanRenderDepth2` | 0xd964f50 | Established (6.5.30 release): a CRIME driver pixel span routine (crm span render) that writes the primitive, vertex and colour registers; calls `__glCrmSetupPixelRenderOps`. |

### `crm_rect.c`

Fast rectangles. Established: 3 routines in the unit, 3 listed here; 2 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmFrontBackRect` | 0xd9669e0 | Established (6.5.30 release): a CRIME driver rectangles routine (crm front back rect) that writes the drawing mode and stencil mask registers; calls `__glCrmSetStoreBuffer`. |
| `__glCrmLeftRightRect` | 0xd966bb0 | Established (6.5.30 release): a CRIME driver rectangles routine (crm left right rect) that writes the destination buffer mode, drawing mode and stencil mask registers; its address is stored by `__glCrmPickVertexProcs`, which fills a procedure table. |

### `crm_rgb.c`

Colour-buffer fetch, store, read and clear for RGBA visuals. Established: 18 routines in the unit, 18 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `StoreRGBA` | 0xd966dc0 | Established (6.5.30 release): a CRIME driver RGB stores routine (store rgba) that writes the primitive, vertex and colour registers and commits through the start alias. |
| `StoreRGBA2` | 0xd966e90 | Established (6.5.30 release): a CRIME driver RGB stores routine (store) that writes the primitive, vertex and colour registers and commits through the start alias; calls `__glCrmSetStoreBuffer`. |
| `ReturnRGBASpan` | 0xd966fb0 | Established (6.5.30 release): a CRIME driver RGB stores routine (return rgbaspan) that writes the drawing mode registers; calls `crmDrawPixelsXfer`. |
| `ClearRGBA` | 0xd967980 | Established (6.5.30 release): a CRIME driver RGB stores routine (clear rgba) that writes the destination buffer mode, drawing mode, primitive, vertex and colour registers and commits through the start alias and sends ioctl 0x5606 (clear buffer); calls `__glCrmGetDstBufMode`. |

### `crm_span.c`

Span store routines that draw one span as a hardware primitive with colour, texture and fog steppers. Established: 14 routines in the unit, 13 listed here; 6 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmDumpPerPixelSpan` | 0xd969fb0 | Established (6.5.30 release): a CRIME driver span routine (crm dump per pixel span) that writes the primitive, vertex, colour, texture stepper, fog stepper and null commit registers and commits through the start alias; calls `powf`; called from `__glCrmDumpSpan`. |
| `__glCrmDumpPerPixelStippledSpan` | 0xd96a9c0 | Established (6.5.30 release): a CRIME driver span routine (crm dump per pixel stippled span) that writes the primitive, vertex, colour, texture stepper, fog stepper and null commit registers and commits through the start alias; calls `powf`; called from `__glCrmDumpStippledSpan`. |
| `__glCrmDumpStippledSpan` | 0xd96bb20 | Established (6.5.30 release): a CRIME driver span routine (crm dump stippled span) that writes the drawing mode, primitive, vertex, stipple and fog stepper registers and commits through the start alias; calls `__glCrmDumpPerPixelStippledSpan`. |
| `__glCrmDumpStippledFlatSpan` | 0xd96c570 | Established (6.5.30 release): a CRIME driver span routine (crm dump stippled flat span) that writes the drawing mode, primitive, vertex, stipple and colour registers and commits through the start alias; its address is stored by `__glCrmPickSpanProcs`, which fills a procedure table. |
| `__glCrmDumpStippledSmoothSpan` | 0xd96c8d0 | Established (6.5.30 release): a CRIME driver span routine (crm dump stippled smooth span) that writes the drawing mode, primitive, vertex and stipple registers and commits through the start alias; its address is stored by `__glCrmPickSpanProcs`, which fills a procedure table. |

### `crm_stencil.c`

Stencil-buffer access and clears, with the same register set as the depth unit. Established: 12 routines in the unit, 11 listed here; 4 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `__glCrmPassStencilMask` | 0xd96d110 | Established (6.5.30 release): a CRIME driver stencil buffer routine (crm pass stencil mask) that writes the stencil mask registers; called from `__glCrmEnableStencilTest`. |
| `__glCrmUpdatePolyStipple` | 0xd96d450 | Established (6.5.30 release): a CRIME driver stencil buffer routine (crm update poly stipple) that writes the source buffer mode, drawing mode, primitive, vertex, transfer address, transfer step, stencil mode and stencil mask registers and commits through the start alias; calls `__glCrmSetDrawBuffer`; called from `__glCrmPickAllProcs`. |
| `ClearStencil` | 0xd96d970 | Established (6.5.30 release): a CRIME driver stencil buffer routine (clear stencil) that writes the drawing mode, primitive, vertex, stencil mode and stencil mask registers and commits through the start alias and sends ioctl 0x5606 (clear buffer); calls `__glCrmForceNonTagClear`. |

### `crm_store.c`

Store-procedure selection and double-buffer and depth stores. Established: 6 routines in the unit, 6 listed here; 3 routines store through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `crmDoDoubleStore_S` | 0xd96dfc0 | Established (6.5.30 release): a CRIME driver pixel stores routine (crm do double store) that writes the stencil mask registers. |
| `crmDoDoubleStore_D` | 0xd96e050 | Established (6.5.30 release): a CRIME driver pixel stores routine (crm do double store) that writes the drawing mode registers. |
| `crmDoDoubleStore_SD` | 0xd96e180 | Established (6.5.30 release): a CRIME driver pixel stores routine (crm do double store sd) that writes the drawing mode and stencil mask registers. |

### `crm_texture.c`

Texture objects: allocation, definition and binding; writes the texture mode, border and environment colour and sends the texture-set request (see [memory.md](memory.md)). Established: 54 routines in the unit, 40 listed here; 1 routine stores through the register base.

| Routine | Address | Role and derivation |
|---|---|---|
| `texIoctlBind` | 0xd96e540 | Established (6.5.30 release): a CRIME driver texturing routine (tex ioctl bind) that sends ioctl 0x5650 (load texture TLB set); called from `crmDefineTexture`. |

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
| `__glCrmFlatZTriangle` | 0xd9364f8 | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm flat ztriangle) that writes the primitive, vertex and colour registers and commits through the start alias. |
| `__glCrmSmoothCITriangle` | 0xd936690 | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm smooth citriangle) that writes the primitive registers. |
| `__glCrmSmoothRGBTriangle` | 0xd9367b8 | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm smooth rgbtriangle) that writes the primitive and vertex registers. |
| `__glCrmSmoothRGBATriangle` | 0xd936978 | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm smooth rgbatriangle) that writes the primitive and vertex registers. |
| `__glCrmSmoothCIZTriangle` | 0xd936b94 | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm smooth ciztriangle) that writes the primitive and vertex registers. |
| `__glCrmSmoothRGBZTriangle` | 0xd936d14 | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm smooth rgbztriangle) that writes the primitive and vertex registers. |
| `__glCrmSmoothRGBAZTriangle` | 0xd936f2c | Established (6.5.30 release): a assembly fast-path assembly triangle routine (crm smooth rgbaztriangle) that writes the primitive and vertex registers. |

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
| `SwapBuffers` | 0xd944b90 | Established (6.5.30 release): a pixmap back-end context routine (swap buffers) that sends ioctl 0x3ed (resource-manager command 1005, SwapBuf); calls `__glCrmIoctl`. |

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
| `Return` | 0xd939d60 | Established (6.5.30 release): a software implementation accumulation-buffer operations routine (return) that writes the drawing mode registers; calls `vice_dmbuf_settlb`. |

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
| `Fix_zbuffer` | 0xd94aa70 | Established (6.5.30 release): a software implementation depth operations routine (fix zbuffer) that writes the drawing mode, primitive, vertex, depth function, stencil mode and stencil mask registers. |

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
