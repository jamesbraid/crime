# Open questions

Facts no source read so far settles. No hardware is available, so every question is settled from software and published material. Each entry gives the owning file, the routes already tried and the next route to try. Answered questions move into the owning header or chapter and are deleted from here. A fact that every route leaves open is labelled "unknown: no shipped software or published source depends on it" in its owning file, with the routes listed, and leaves this file.

Route key, used in the tables:

- **K**: the IRIX 6.5.30 kernel graphics objects (`crime*.o`, `gfx.o`, `rrm.o`, `mace.o`), read.
- **X**: the X module `crm.so` and the server `Xsgi`, read for the named routines.
- **G**: N32 and o32 `libGLcore` and N32 `libGL`, read.
- **S**: the CRIME 1.5 specification (revision 0.3) and the GBE revision 1.1 specification, read.
- **L**: Linux (`arch/mips/sgi-ip32`, `gbefb`), NetBSD `sgimips` (`crime`, `crmfb`) and MAME (`o2`, `crime`), read.
- **D**: the diagnostics shipped for the O2: `ide.IP32` (stand-alone IDE with graphics and memory tests), the IP32 PROM image and `symmon.IP32`. Not yet read for these questions; their tests carry expected register values and error-bit decoders.
- **R**: other IRIX releases (6.3 for O2, the 6.5.x overlays, and any release whose objects keep more debug information).
- **P**: published output from real O2s: `hinv`, `gfxinfo`, kernel and X server messages in newsgroup and mailing-list posts, through the Library's public roots.
- **E**: running the shipped software under an emulator to record what it writes and expects back; it shows the driver's expectation, not the hardware's behaviour.

## Public driver differences

Found by comparing the OpenBSD sgi driver and the GXemul O2 models with the entries (`docs/gbe.md`, "Public driver cross-check").

- **Colour-map FIFO polarity.** The specification and IRIX read the `0x58000` field as free entries (`GBE.h`). Linux waits while it reads 63 or more, and the OpenBSD driver (`openbsd/sys/arch/sgi/dev/gbe.c:1011-1017`) also continues only when the field reads below 63, which treats it as occupancy. Two public drivers use the opposite reading to the specification. Routes tried: S, K, X, L, and the OpenBSD driver; the diagnostics routes in `docs/gbe.md` pass 7 side with the specification. Next: the IRIX source for the colour-map write routine, and any NetBSD behaviour the model run records (route E).
- **OpenBSD frame-size remainder.** The OpenBSD driver builds the 4:0 field of `FRM_SIZE_TILE` as the remainder in pixels shifted right by depth over 16, divided by 32 (`gbe.c:749-754`). At 8 bits that is 32-byte units, as `docs/gbe.md` records. At 16 and 32 bits it gives a different count from the entry's reading (remainder pixels times bytes per pixel over 32), and GXemul decodes the field in 32-byte units at every depth (`gxemul/src/devices/dev_sgi_gbe.c:583-594`). The driver only ever runs at 8 bits (`gbe.c:294`), so a defect that never showed is the likely reason. Routes tried: the OpenBSD and GXemul sources and the entry. Next: the IRIX kernel writer of this field at 16 bits (`crimeInitInfo` with a 16-bit frame buffer) against both formulas.
- **Tile entry bit 15 in the model.** GXemul requires bit 15 of a frame-buffer tile entry to be set and then clears it, so tiles are addressed without the no-ECC alias (`gxemul/src/devices/dev_sgi_re.c:122-151`). `docs/memory.md` infers that the same bit is also physical address bit 31. The model works for the public guests with low memory, which cannot tell the two readings apart. Routes tried: the model and `docs/memory.md`. Next: the attribute `crmAllocTiles` receives, as listed in `docs/memory.md`.

## Published sources, route tried (2026-10-29)

Patents, SGI technical reports, white papers and conference papers were searched for the rendering engine, memory transfer engine, display engine and ICE entries; [published-sources.md](published-sources.md) holds the identity and facts of each source. Route key addition: **Pub**, the published sources. Result, so no later reader repeats it:

- **Blend arithmetic, dither matrix, texel filter weights, level-of-detail fraction** ([pixel-arithmetic.md](pixel-arithmetic.md)): Pub gives the 8-bit operand width, the order of the colour, texture, depth and address pipelines, the dither format list (3:3:2 and 5:5:5 only) and a candidate level fraction from a predecessor patent (inferred). No widths, rounding or matrix. Still unknown: no shipped software or published source depends on them.
- **Vertex position**: the 6 fraction bits are established (published).
- **Memory transfer engine and tiling**: 64 KB tiles, 256 translation entries per buffer (the patent has two buffers, the chip three groups: open), clears and copies at memory bandwidth, and a pixel-transfer path through the rendering pipeline with blending.
- **Shipped CRIME revision, FIFO depth (128 or 64), interrupt numbering**: no published source reaches them. The patent's slot-based arbitration differs from the fixed priority order the technical report states; the report is taken as the shipped one.
- **Antialiased lines**: two-pixel-wide, ROM-table coverage applied to alpha (report); the table contents are in no source.
- **ICE and VICE**: only the product-level description of the report and the white papers; no register or microcode source. Route not yet tried: the VICE specification and the `vice*.so` converters.
- **Display engine**: narrow pixel formats expand to RGB8 by bit replication (report).

## Where work stopped

30 October 2026, function backfill pass (the `nfb` layer, `crm.so` register routines, the X server, the o32 driver). Functions understood: 1,314 of 17,280 (7.6 %), up from 1,201 (7.0 %) at the start of the pass, counted with the same script and the same sibling workspaces. Done in this pass:

- [nfb-layer.md](nfb-layer.md): all 32 routines that were only named now have an entry (20 established, 12 inferred where a branch or a recursive walk was followed in outline: the dashed line, the screen-to-pixmap copy, the plane writer, the context validator and the tree walks).
- [xmodule.md](xmodule.md): nine `crm.so` rows that carried a template sentence and no offsets now state their own offsets, ioctls and the hand-copy fallback that the window-destroy, swap-cancel and invalidate routines repeat. The window-destroy hook is not screen set-up: it wraps the previous destroy hook and notifies the kernel.
- [xsgi.md](xsgi.md): thirteen routines of the X server on the path to the graphics driver (board attach, the resource-manager records, the double-buffer tickets), read from the decompilation.
- [libglcore-o32.md](libglcore-o32.md): 48 of the 81 o32 `libGLcore.so` routines that the register scan lists. The scan lists engine sites for routines that only call a method through the context, so each entry says which registers the body really stores; the N32 entry that credits `__glCrmGenericPickStoreProcs` with the texture registers should be re-read the same way. The o32 build uses MIPS IV reciprocal and conditional-move forms that the decompiler does not decode, so read those routines with `objdump -m mips:isa64`.

Next, in order:

- o32 `libGLcore.so`: the 33 routines still without an entry, of which 24 need the disassembly: `__glCrmFlatColorLine`, `__glCrmDepthLine`, `__glCrmSmoothRGBZTriangle`, `__glCrmSmoothRGBATriangle`, `__glCrmSmoothRGBAZTriangle`, `__glCrmSpanRenderDepth` and `..Depth2`, the `Dump*Span` routines, `__glCrmAntiAliasLineRGB`, `__glCrmFastRect`, `__glCrmStoreLine`, `__glCrmStoreStippledLine`, `__glCrmTexturedLine`, `__glCrmFillTriangle`, `__glCrmFillAATriangle`, `__glCrmPickAllProcs` and `__glCrmPickDrawPixels`. The decompilable ones left are `__glCrmFillCheapFogTriangle`, `__glCrmRenderLeftRightBitmap`, `__glCrmPassStencilMode`, `__glCrmUpdatePolyStipple`, `__glCrmRenderAntiAliasLine` and the four pixel-transfer routines `crmCopyPixelsXfer`, `crmDrawPixelsXfer`, `crmDrawPixelsXfer2` and `crmReadPixelsXfer`. The N32 build has 83 such routines and the same problem: its entries that name no build credit nothing where the two builds differ.
- Xsgi: `dbcDelayedSwapBufferDone`, `dbcSetDrawBuffer`, `ddxOpenScreens`, `ddxPostOpenScreens`, `ddxFindAvailableBoards..CGC`, `ddxRequestBoards`, `rrmUngrab`, `ddxMultiCursor` and the video-control screen routines. Their decompilations are the ones to read first.
- `crm.so`: the 51 register routines now all have a row with offsets; the inferred ones (`crmTiledFS`, `crmTileRects`, `crmFillTriangleMTE..FD`, `crmZeroPolyArc` and the line and segment routines) still need a read of the whole body.
- The kernel's remaining graphics-relevant routines (the transfer-engine users listed in `docs/functions.md`): not started.

29 October 2026, libGLcore against the public sample implementation. Functions understood: 4,916 of 17,280 (28.4 %), up from 1,476 (8.5 %) at the start of the pass. [sample-implementation.md](sample-implementation.md) now holds 1,844 entries for the N32 library and 1,614 for the o32 library: 141 N32 entries established after reading the whole body against the public source (most of them differ from it, and each difference is stated), the rest inferred from name, direct calls and source extent. The generated list-compile and list-replay routines are matched to the generator specification the sample carries, `generated/listcomp.ls`, with the record size checked against its layout rule and each replay routine tied to the public entry point that jumps through the same dispatch-table slot.

Next, in order:

- Read more of the inferred N32 entries against the public body, the short ones first; the 141 established entries show the shipped code differs from the sample in many small ways (fixed routines where the sample reads context slots, extension forms that forward, assembly depth tests that take the stored value in a register), so a name match alone cannot stand for a read.
- The o32 routines whose call count differs from the N32 build once tail calls and branch-and-link calls are counted, and those with a duplicated name that the pairing by order could not settle, still have no entry of their own.
- About 460 routines of `so_texture.s`, `so_stubs.s`, `so_blend.s`, `so_subdiv.s`, `px_convolve.s`, the SGIS and SGIX extension code and the texture-fast-path spans have no counterpart in the public sample, whose version is 1.2.1. Route tried: the sample's own source and its generator specifications, by name with vendor suffixes dropped.
- The 33 `g_vertarray.s` draw-array routines and the 64 list-compile and 41 list-replay routines of `g_lcomp.s` and `g_lexec.s` that do not follow the plain allocate-store-append shape.

29 October 2026, reader pass 13 (the `nfb` layer and sample-server promotion). Functions understood: 1,476 of 17,280 (8.5 %), up from 1,343 (7.8 %) at the start of the pass. Done in this pass:

- [nfb-layer.md](nfb-layer.md): 133 of the 165 `nfb` routines of `crm.so` now have an entry (107 established after reading the whole body, 26 inferred from calls and method slots). Searches of the public indexes found no copy of the layer or of the X server, so each routine is matched to the public X.Org routine it modifies where one exists and described from its body otherwise. Vendor changes found: the cursor recolour omits the unrealize and realize steps, the best-size query clamps cursors to 32 instead of the screen size, the clip release goes through the screen's region method, the window marker records a per-slot flag before the public steps, the position hook does nothing, and the layer adds a stereo path (twenty wrappers that draw once per eye) and a draw-through-children path (twelve wrappers and one recursive worker).
- [sample-server.md](sample-server.md): 27 inferred entries read in full against the public body and promoted to established (74 established, 409 inferred in total). Differences from the public body: the context destroy keeps the rotated pixmap and composite clip in a private record, the region box allocator and region creator allocate under the must-have-memory flag instead of returning the broken region, and the screen-private allocator for the monochrome code installs no window-pixmap methods.

Next, in order:

- `crm.so` `nfb`: the 32 routines still named only, among them `nfbLineSD` (16,984 bytes), `nfbStippledFS`, `nfbOpStippledFS`, `nfbStippledFillRects`, `nfbOpStippledFillRects`, `nfbPolyPoint`, `nfbGetLayerWindow`, `nfbChangeWindowAttributes`, `nfbRealizeWindow`, `nfbRealizeCursor`, `nfbChangeClip..DJ`, `nfbChangeSaveUnder`, `nfbShmPutImage`, `nfbSetStereoBuffer`, `nfbCreateStereoGC`, `nfbStereoFillSpans`, `nfbStereoSetSpans`, `nfbStereoCopyWindow..GI`, the stereo clip and swap validators, and `nfbDoBitBltSS`, `nfbDoBitBltSP`, `nfbSetSpans`, `nfbPolyFillRect`, `nfbSolidZeroSeg`. Then read the 26 inferred `nfb` entries in full.
- `crm.so` sample-server: 409 inferred entries remain; the small ones (under 400 bytes) of `mibstore.c`, `miregion.c`, `migc.c` and the `cfb` allocators are the cheapest to read against the public body next (`miRegionCopy`, `miBSFree..BBB`, `miTileVirtualBS..PBB`, `miBSImageText8..IAB` and its sibling text wrappers).
- `Xsgi` CRIME paths and the o32 `libGLcore.so` routines whose code differs from the N32 build: not started this pass. For the o32 build, list the routines of the units already read for N32 whose `code_sha` differs and write entries for those only.

Earlier pass, 29 October 2026, reader pass 12 (audit and sample-server code). Functions understood: 1,343 of 17,280 (7.8 %), up from 859 at the start of that pass. Done in that pass:

- An audit of the function backfill: 20 entries sampled from the 258 labelled established, each read against its full body, graded 12 real, 3 shallow and 5 wrong (`docs/inventory/audits.tsv`). The wrong ones, and three sibling entries that shared one fault, were rewritten; entries built from call lists or register-store summaries and not read in full are now labelled inferred.
- [sample-server.md](sample-server.md): one entry for each of the 483 sample-server routines of `crm.so` (`mi`, backing store, `cfb`, `mfb`, arc and region helpers, symbol database and conversion). Each names the public X.Org file that holds the same routine. 47 were read in full and are established; the rest are matched by calls and shape and are inferred. Two differences from the public body turned up in the small routines read: the block-transfer selectors and the plane-copy routines of `cfb16` and `cfb32` differ from the public body (the plane copy forwards to a global hook).

Writing rules learned from the grader, for the next reader:

- An entry counts its subject, every distinct identifier (any word with an underscore, a digit or an inner capital counts even unticked, and `OpenGL`, `IP32CRM32` and `N32` count) and every list of numbers (`0x800 and 0xc00`, `1, 2`). More than three is named-only. Write numbers apart with words between them, and keep at most two other names per table row. List-form kernel entries are counted per physical line, so callees go on continuation lines.
- A routine that exists in two builds with different code (the N32 and o32 `libGLcore.so`) is understood only in the build the entry cites by path. Cite it as a link, `([build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so))`, which names the build without adding an identifier.
- `..` suffixed `crm.so` names (`ValidateClip..GE`) are not counted as identifiers, so they are free to use, but they do not count as a binary-plus-routine citation: give an offset or a `calls` phrase.
- An entry that names the subject, `crm.so` and more than one other backticked routine, or a list of more than two offsets, is graded named-only: name one callee in code and describe the rest in words.
- `unknown`, `named for`, `not shown` and the other hedges demote the whole entry. Say what was read in the entry and put an open fact in a sentence of its own.

Next, in order (list from the earlier pass; the `crm.so` item is superseded by the list above):

- `crm.so`: the 165 `nfb` routines (SGI's own frame-buffer layer: no public source; read each disassembly and cite callers and callees), then read the inferred sample-server entries in full, largest first, against the public body, noting every SGI change like the ones already found in the `cfb` selectors.
- `libGLcore.so`: the o32 build (`IP32CRM`) of the same units, the exported entry points and the 423 routines the stubs reach, and the routines the unit tables left out (`__glFogVertex`, `__glFloor`, `__glBeginPoints`, `__glEndPrim`, `__glGenericPickPointProcs`, `__glGenericPickDrawPixels`, `__glSlowPickDrawPixels`, `__glBuildAntiAliasIndex`, `__glCrmPassDepthFunc`, `__glCrmPassStencilMode`). The remaining 46 rows of the N32 build are in the stub and entry tables. Read the libGLcore entries still labelled inferred in full.
- `Xsgi`, `glx.so`: the same sample-server identification as for `crm.so`, against the public source (`dix`, `mi`, `os`, `Xext`, `GL` and the GLX extension).
- `kernel.o`: 694 undocumented rows remain, mostly outside graphics (ECC and cache handlers, system calls); the graphics-relevant ones left are the transfer-engine users listed in `docs/functions.md`.
- `libGL.so`, `symmon.IP32`, `setmon`, `gfxinit`, `mvp.o` and the video libraries, as before: read call lists and bodies; a role inferred from a name alone does not count.
- The binaries table and `libXsgivc.so` request rows, as listed in the previous pass.
