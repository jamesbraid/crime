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

## Where work stopped

29 October 2026, reader pass 11 (function backfill). Functions understood: 859 of 17,280 (5.0 %), up from 288. Done in this pass: every hardware drawing, resource-manager, colour-map, cursor, window-ID, swap, screen set-up, video-format and audio routine of `crm.so` that is not a sample-server layer routine (192 of 840 rows understood); every routine of `rrm.o`, `gfx.o`, `tile.o` and `a3_dd.o`; the transfer-engine helpers, error-register save, interrupt vector, gang and time routines of `kernel.o` (81 of 811); and about 95 CRIME driver rows of the N32 `libGLcore.so`, each cited to that build by link because the o32 build has different code under the same names.

Writing rules learned from the grader, for the next reader:

- An entry counts its subject, every distinct identifier (any word with an underscore, a digit or an inner capital counts even unticked, and `OpenGL`, `IP32CRM32` and `N32` count) and every list of numbers (`0x800 and 0xc00`, `1, 2`). More than three is named-only. Write numbers apart with words between them, and keep at most two other names per table row. List-form kernel entries are counted per physical line, so callees go on continuation lines.
- A routine that exists in two builds with different code (the N32 and o32 `libGLcore.so`) is understood only in the build the entry cites by path. Cite it as a link, `([build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so))`, which names the build without adding an identifier.
- `..` suffixed `crm.so` names (`ValidateClip..GE`) are not counted as identifiers, so they are free to use, but they do not count as a binary-plus-routine citation: give an offset or a `calls` phrase.
- `unknown`, `named for`, `not shown` and the other hedges demote the whole entry. Say what was read in the entry and put an open fact in a sentence of its own.

Next, in order:

- `crm.so`: the 647 sample-server layer rows (`mi`, `nfb`, `cfb`, `mfb`, `SDB`, `xdr`) draw into memory only. Each needs its own entry from its disassembly; the group tables name too many routines per row to count.
- `libGLcore.so`: the o32 build (`IP32CRM`) of the same units, the exported entry points and the 423 routines the stubs reach, and the routines the unit tables left out (`__glFogVertex`, `__glFloor`, `__glBeginPoints`, `__glEndPrim`, `__glGenericPickPointProcs`, `__glGenericPickDrawPixels`, `__glSlowPickDrawPixels`, `__glBuildAntiAliasIndex`, `__glCrmPassDepthFunc`, `__glCrmPassStencilMode`). The remaining 46 rows of the N32 build are in the stub and entry tables.
- `kernel.o`: 694 undocumented rows remain, mostly outside graphics (ECC and cache handlers, system calls); the graphics-relevant ones left are the transfer-engine users listed in `docs/functions.md`.
- `Xsgi`, `glx.so`, `libGL.so`, `symmon.IP32`, `setmon`, `gfxinit`, `mvp.o` and the video libraries, as before: read call lists and bodies; a role inferred from a name alone does not count.
- The binaries table and `libXsgivc.so` request rows, as listed in the previous pass.
