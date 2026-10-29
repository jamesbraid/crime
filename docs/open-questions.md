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
| Depth and blend arithmetic: precision and rounding of window z, of the 13.6 vertex field, and of the blend factors | `CRIME_RE.h`, `docs/rendering.md` | G, S | The software rasteriser in `libGLcore` (`so_*` span code) as the reference the hardware path was meant to match; then label unknown |
| Hardware fog: the blend of fog colour and pixel colour, clamping of the 8.12 stepper, and state-word bits `0x8` and `0x10` | `docs/opengl.md` | G, S | The software fog path in `libGLcore` (`__glFogFragmentSlow`, `__glFogColorSlow`) as the intended formula; then label |
| AA lines: how slope, position and the two end coverage fractions combine, how coverage meets blending, and whether DrawMode bit 13 is ever set | `docs/opengl.md` | G, S | G: a scan of every DrawMode store for bit 13; the software AA line code as the intended weighting |
| Texel filter weights, precision and rounding | `CRIME_RE.h` | G, S | The software texture path in `libGLcore` (`so_texture.s`) as the intended arithmetic; then label |

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

29 October 2026, reader pass 7. Settled or labelled from the specifications' own register tables, the shipped 6.5.30 `ide.IP32`, `kernel.o`, `crime_i2c.o`, `crime_init.o`, `mvp.o`, the X module and libGLcore strings and listings, Linux and NetBSD: every GBE question except the two window-ID ones, every CRIME ID, interrupt, control, ECC, error-status, TLB-validity and FIFO-depth question, the MTE and context questions, and the aperture and alias questions (see pass 7 in `docs/gbe.md`, `docs/memory.md`, `docs/reset.md`, `docs/mte.md`, `docs/context.md`, `docs/opengl.md`, and `CRIME.h`). `docs/inventory/` was not regenerated in these commits, because another change is rewriting the inventory script; the next run will pick up the newly documented offsets and words.

Next, in order: the window-ID key (`rrmInit` masks) and `gbeLoadDispIDs`; the texture level start table (`crmDefineTexture`); the pixel-transfer step unit and overlap direction in the X copy paths; then the four arithmetic questions, reading libGLcore's software span, fog, antialiased-line and texture code as the intended formulas before labelling the hardware arithmetic. After that, the undocumented rows of the register-offset and token inventory tables (GBE cursor rows from `crime_tpinit`, `+0x70008` to `+0x78088`).
