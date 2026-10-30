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

29 October 2026, reader pass 12 (audit and sample-server code). Functions understood: 1,343 of 17,280 (7.8 %), up from 859 at the start of the pass. Done in this pass:

- An audit of the function backfill: 20 entries sampled from the 258 labelled established, each read against its full body, graded 12 real, 3 shallow and 5 wrong (`docs/inventory/audits.tsv`). The wrong ones, and three sibling entries that shared one fault, were rewritten; entries built from call lists or register-store summaries and not read in full are now labelled inferred.
- [sample-server.md](sample-server.md): one entry for each of the 483 sample-server routines of `crm.so` (`mi`, backing store, `cfb`, `mfb`, arc and region helpers, symbol database and conversion). Each names the public X.Org file that holds the same routine. 47 were read in full and are established; the rest are matched by calls and shape and are inferred. Two differences from the public body turned up in the small routines read: the block-transfer selectors and the plane-copy routines of `cfb16` and `cfb32` differ from the public body (the plane copy forwards to a global hook).

Writing rules learned from the grader, for the next reader:

- An entry counts its subject, every distinct identifier (any word with an underscore, a digit or an inner capital counts even unticked, and `OpenGL`, `IP32CRM32` and `N32` count) and every list of numbers (`0x800 and 0xc00`, `1, 2`). More than three is named-only. Write numbers apart with words between them, and keep at most two other names per table row. List-form kernel entries are counted per physical line, so callees go on continuation lines.
- A routine that exists in two builds with different code (the N32 and o32 `libGLcore.so`) is understood only in the build the entry cites by path. Cite it as a link, `([build](../root/usr/gfx/arch/IP32CRM32/libGLcore.so))`, which names the build without adding an identifier.
- `..` suffixed `crm.so` names (`ValidateClip..GE`) are not counted as identifiers, so they are free to use, but they do not count as a binary-plus-routine citation: give an offset or a `calls` phrase.
- `unknown`, `named for`, `not shown` and the other hedges demote the whole entry. Say what was read in the entry and put an open fact in a sentence of its own.

Next, in order:

- `crm.so`: the 165 `nfb` routines (SGI's own frame-buffer layer: no public source; read each disassembly and cite callers and callees), then read the inferred sample-server entries in full, largest first, against the public body, noting every SGI change like the ones already found in the `cfb` selectors.
- `libGLcore.so`: the o32 build (`IP32CRM`) of the same units, the exported entry points and the 423 routines the stubs reach, and the routines the unit tables left out (`__glFogVertex`, `__glFloor`, `__glBeginPoints`, `__glEndPrim`, `__glGenericPickPointProcs`, `__glGenericPickDrawPixels`, `__glSlowPickDrawPixels`, `__glBuildAntiAliasIndex`, `__glCrmPassDepthFunc`, `__glCrmPassStencilMode`). The remaining 46 rows of the N32 build are in the stub and entry tables. Read the libGLcore entries still labelled inferred in full.
- `Xsgi`, `glx.so`: the same sample-server identification as for `crm.so`, against the public source (`dix`, `mi`, `os`, `Xext`, `GL` and the GLX extension).
- `kernel.o`: 694 undocumented rows remain, mostly outside graphics (ECC and cache handlers, system calls); the graphics-relevant ones left are the transfer-engine users listed in `docs/functions.md`.
- `libGL.so`, `symmon.IP32`, `setmon`, `gfxinit`, `mvp.o` and the video libraries, as before: read call lists and bodies; a role inferred from a name alone does not count.
- The binaries table and `libXsgivc.so` request rows, as listed in the previous pass.
