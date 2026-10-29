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
| Role of the engine register at `+0x408` (written 0 first at initialisation and during error recovery; no public source names it) | `docs/reset.md` | K, S, L | D: the IDE rendering-engine tests, then R |
| Reset values of the rendering and MTE registers | `docs/reset.md` | K, S, L | D: IDE register tests compare read-backs with expected values. If none, label unknown: every driver writes these registers before use |
| Whether the MTE keeps the interface buffer's order with rendering primitives, and whether MTE reads see linear-TLB entries changed while a primitive is in flight | `docs/reset.md` | K, X, S | S again for the interface-buffer chapter's ordering text; then E to record the order the X server relies on |
| Whether the hardware raises an interrupt for MTE completion (Linux names engine-idle interrupts at inputs 24 and 27 without saying whether they cover the MTE) | `docs/reset.md`, `CRIME.h` | K, L, S | D, then R; IRIX 6.5.30 masks both, so if no software unmasks them, label unknown |
| MTE behaviour for a start column that is not a multiple of the transfer width, and bit 16 of an end word | `docs/mte.md` | K, X, L | X: the copy paths that send unaligned columns (`crmBitBlt*`, `crmCopyWindow`) and what they correct in software |
| Row unit of the MTE (16 rows at 16 bit, 8 at 32 bit in the X server's split) | `docs/mte.md` | X, K | S rendering chapter; L (NetBSD `crmfb` copy) for the unit it assumes |
| Stipple repeat period of the MTE stipple mode (8 or 32 bits) | `docs/mte.md` | X, K | X: the stippled-fill senders and the pattern they build; L (NetBSD `crmfb`) |
| Whether the engine treats `0x20d0` as non-global and `0x21f0` as global, as the kernel's save logic assumes; address-word bit 45 in the saved interface buffer | `docs/context.md` | K, S | S interface-buffer chapter; R for other kernel releases' save code |
| What the engine does to a primitive begun when the context is switched mid-primitive | `docs/context.md` | K | The kernel switches only after an idle wait, so no shipped software reaches this state; after S is re-read, label unknown: no shipped software depends on it |
| Whether the shipped CRIME reads ID `0xb1` or another value IRIX 6.5.30 accepts (family `0xA`, revision non-zero) | `CRIME.h` | K, S, L | P: `hinv` and boot messages; the kernel's revision decoder strings; D |
| Which CRIME error input (20 or 21) is the CPU error and which the memory error; whether edge bits clear on read, on a write to `+0x28`, or both | `docs/memory.md`, `CRIME.h` | K, S, L | D (IDE error tests), R |
| The function of CONTROL bits 13:12 and 9, and of the write to `+0x10` | `docs/memory.md` | K, S, L | D, the PROM image's start-up code |
| Which TLB entry bit marks validity, and what a lookup through an invalid entry does | `docs/memory.md` | K, G, S, L | S translation chapter again; D |
| Whether pixel-transfer step registers count bytes or pixels; overlap of copy source and destination | `docs/pixel-transfer.md` | G, K | X copy paths (direction choice for overlapping copies); S |
| Real depth of the rendering FIFO (64 inferred from the kernel overflow check, 128 in the specification text) | `CRIME_RE.h` | K, S, L | D, R |
| Depth and blend arithmetic: precision and rounding of window z, of the 13.6 vertex field, and of the blend factors | `CRIME_RE.h`, `docs/rendering.md` | G, S | The software rasteriser in `libGLcore` (`so_*` span code) as the reference the hardware path was meant to match; then label unknown |
| Hardware fog: the blend of fog colour and pixel colour, clamping of the 8.12 stepper, and state-word bits `0x8` and `0x10` | `docs/opengl.md` | G, S | The software fog path in `libGLcore` (`__glFogFragmentSlow`, `__glFogColorSlow`) as the intended formula; then label |
| AA lines: how slope, position and the two end coverage fractions combine, how coverage meets blending, and whether DrawMode bit 13 is ever set | `docs/opengl.md` | G, S | G: a scan of every DrawMode store for bit 13; the software AA line code as the intended weighting |
| Texel filter weights, precision and rounding | `CRIME_RE.h` | G, S | The software texture path in `libGLcore` (`so_texture.s`) as the intended arithmetic; then label |

## Display back end

| Question | Owner | Tried | Next |
|---|---|---|---|
| Reset values of every GBE register on shipped revisions (the rev 1.1 specification gives them for 1.1), and which revision has the 6144-entry colour map | `docs/gbe.md` | K, X, S, L | D, the PROM image's GBE start-up, P (`gfxinfo` revision lines) |
| What the board strap value in `CTRLSTAT` `io_3` to `io_6` encodes, what `crm_dc_board_installed` records, and why `gbemn` defaults to 54 | `docs/gbe.md` | K, S | K: the writers of `crm_dc_board_installed` in the other IP32 kernel objects for the flat-panel and dual-channel options; D |
| Whether `VT_XYMAX` totals give a period of total or total plus one; whether `VT_INTR01` fires at `F20 - 32` and `F20 + 4` | `docs/gbe.md` | K, S, L | P: published refresh rates for the shipped formats against the programmed totals |
| `DOTCLK` bit 20, which IRIX sets to run the PLL and clears to stop it, but which the rev 1.1 specification leaves undefined | `docs/gbe.md`, `GBE.h` | K, S, L | R, D |
| Whether a GBE line interrupt fires again when its line is rewritten to a line the beam has passed or is on | `docs/gbe.md` | K, S | S again (interrupt chapter); the scheduler never programs a line within three of a busy one, so if S is silent, label unknown: no shipped software depends on it |
| What the `.vfo` state tables (28 line types and signal edge tables) drive; no GBE register consumes them | `docs/gbe.md` | K, X, S | The other format consumers on the install (`setmon`, the dual-channel tool); then label |
| The video-capture registers `VC_0` to `VC_4` (`+0x80000`) | `docs/gbe.md` | K, X, S | The O2 video drivers and `libXsgivc` |
| Whether `CMFIFO` counts free entries (specification, X server) or occupied entries (Linux) on shipped silicon, and whether an empty FIFO reads 0 or 64 | `docs/gbe.md`, `GBE.h` | X, S, L | The kernel textport's colour-map writes (`crime_tp`); D |
| The bits of the window flag word the reserved window-ID slots compare against (the `0x3c0n` key) and the two mask words | `docs/gbe.md` | X (`StealID`, `crmInvalidate`, `rrmSetReservedDID`) | X: `rrmInit` (`Xsgi` `0x101ec4d0`) for the slot-table header masks, and the writers of window private `+0x20` in `Xsgi` |
| Whether the overlay rule of the rev 1.1 specification holds on later revisions, and which colour-map window the overlay uses on the 6144-entry revision | `docs/gbe.md` | K, X, S | K and X: the colour-map index ranges loaded per revision |
| How `gbeLoadDispIDs` assigns a window its window-ID index in the display-ID plane; where the frame table sits in the 64 KiB table; why the last entry carries `width - 1` | `docs/gbe.md` | X (`gbeLoadDispIDs` structure), S | X: finish reading `gbeLoadDispIDs` (`crm.so` `0x45a350`) |

## CRIME memory controller

| Question | Owner | Tried | Next |
|---|---|---|---|
| How an offset in the frame-buffer (`0x10000000`) and depth (`0x12000000`) apertures maps to pixels, and what a read returns while the engine draws | `docs/memory.md` | K, X, G, S, L | X and G: any use of the apertures (none found so far); if none, label unknown |
| Which device answers the high alias (`0x20000000`) and whether it equals the upper 512 MiB of the full window; the response to the reserved ranges | `docs/memory.md` | K, S, L | K: the IP32 memory-sizing code in the kernel proper and the PROM image |
| Whether GBE can fetch below `0x40000000`, and what tile-entry bit 15 selects on the GBE side | `docs/gbe.md`, `docs/memory.md` | K, X, S, L | Both IRIX and Linux use low addresses for GBE tiles, which shows the expectation; S again for the decode table |
| Reset values of CONTROL, the watchdog register and the memory control register; what SysAD bits 13:12 change | `docs/memory.md` | K, S, L | D, the PROM image |
| Whether the memory-control write of 1 enables ECC checking and nothing else; `+0x270` | `docs/memory.md`, `CRIME.h` | K, S, L | D (memory tests), R |
| The meaning of each CPU and memory error status bit in the rev 0 and rev 1 layouts | `docs/memory.md` | K | K: resolve the message-string relocations of the bus-error decoders in `crime_busts.o`; then D |
| How the texture level start table is derived | `docs/memory.md` | K, G | G: the texture-TLB fill in `crmDefineTexture` and the kernel `crmDefineTex` path |

## Where work stopped

The measured inventory (`docs/inventory/`) was added in this commit series; no area has been worked from it yet. The entries above replace the old hardware-capture list (`docs/captures.md`, renamed to this file); the libGLcore command and GBE interrupt rows were closed from the binaries on 29 October 2026, and the colour-map write batch read. Next, in order: the window-ID key (`rrmInit` masks), `gbeLoadDispIDs`, the error-bit strings in `crime_busts.o`, route D for the reset-value and error questions, then the undocumented rows of the register-offset and ioctl inventory tables.
