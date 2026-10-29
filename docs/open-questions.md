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

## Rendering engine and memory transfer engine

| Question | Owner | Tried | Next |
|---|---|---|---|
| Whether pixel-transfer step registers count bytes or pixels; overlap of copy source and destination | `docs/pixel-transfer.md` | G, K | X copy paths (direction choice for overlapping copies); S |
| Hardware fog: the blend of fog colour and pixel colour, clamping of the 8.12 stepper, and state-word bits `0x8` and `0x10` | `docs/opengl.md` | G, S | The software fog path in `libGLcore` (`__glFogFragmentSlow`, `__glFogColorSlow`) as the intended formula; then label |
| AA lines: how slope, position and the two end coverage fractions combine, how coverage meets blending, and whether DrawMode bit 13 is ever set | `docs/opengl.md` | G, S | G: a scan of every DrawMode store for bit 13; the software AA line code as the intended weighting |

## Display back end

| Question | Owner | Tried | Next |
|---|---|---|---|
| The bits of the window flag word the reserved window-ID slots compare against (the `0x3c0n` key) and the two mask words | `docs/gbe.md` | X (`StealID`, `crmInvalidate`, `rrmSetReservedDID`) | X: `rrmInit` (`Xsgi` `0x101ec4d0`) for the slot-table header masks, and the writers of window private `+0x20` in `Xsgi` |
| How `gbeLoadDispIDs` assigns a window its window-ID index in the display-ID plane; where the frame table sits in the 64 KiB table; why the last entry carries `width - 1` | `docs/gbe.md` | X (`gbeLoadDispIDs` structure), S | X: finish reading `gbeLoadDispIDs` (`crm.so` `0x45a350`) |

## CRIME memory controller

| Question | Owner | Tried | Next |
|---|---|---|---|
| How the texture level start table is derived | `docs/memory.md` | K, G | G: the texture-TLB fill in `crmDefineTexture` and the kernel `crmDefineTex` path |

## Where work stopped

29 October 2026, reader pass 8 (inventory backfill). Done: every constant word in the rendering-register table, every register in the specification tables and every register-offset row is documented or labelled (the kernel swap by copy, the window clip set-up, the linear TLB load, the bank control registers, the capture block's tile-address registers, the colour and texture steppers of lines, and the transfer engine's null register, labelled as having no software dependency; `docs/mte.md`, `docs/context.md`, `docs/memory.md`, `docs/gbe.md`, `docs/opengl.md`). Function index so far: the kernel objects of `crime.a` and `mace.o` (`docs/functions.md`), the X module `crm.so` (`docs/xmodule.md`, group roles mostly inferred from names and the sample server) and the exported OpenGL entry points of `libGLcore` (`docs/gl-entry-points.md`).

Next, in order:

- The register scan of `crm.so` still resolves no sites. The module reaches the rendering window through the first word of a per-pipe record that it finds by indexing an array hanging off the screen record with a global index, and the scan's base kinds (constant, field at a fixed displacement, global, argument, return) cannot express a pointer chain without matching every load at displacement 0. Next route: read the module's pipe-record set-up (the routine that stores that first word at screen start-up) and, if it has its own symbol, configure its return value as a base.
- Function index, remaining: the internal `__gl*` routines of `libGLcore` (about 2,700 names, by prefix: spans, textures, display lists, depth, rendering, set-up), `kernel.o`, `tile.o`, `mvp.o`, `rrm.o`, `gfx.o`, `a3_dd.o`, the video and image-converter libraries, `libXsgivc`, `setmon`, `gfxinit`, `Xsgi` and `glx.so`. Read call lists and bodies as done for `crime.a`; mark names-only roles as inferred.
- The seven undocumented ioctl rows, then the open questions above: the window-ID key bits (`rrmInit` masks) and `gbeLoadDispIDs`, the texture level start table (`crmDefineTexture`), the pixel-transfer step unit and overlap direction in the X copy paths, and the four arithmetic questions (read `libGLcore`'s software span, fog, antialiased-line and texture code as the intended formulas before labelling the hardware arithmetic).
