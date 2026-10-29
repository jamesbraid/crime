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

29 October 2026, reader pass 9. Every open question that this file listed is settled or labelled in its owning chapter: the window-ID key and the display-ID table layout (`docs/gbe.md`), the texture level start table (`docs/memory.md`), the pixel-transfer step units and copy order (`docs/pixel-transfer.md`), depth, blend and texel filter arithmetic (`docs/pixel-arithmetic.md`), and fog and antialiased-line arithmetic (`docs/opengl.md`). The X module's route to the rendering registers is traced (`docs/xmodule.md`, register access). Under the per-entry grading the ioctl and token tables are fully understood, and the register-offset and specification tables are done (understood or labelled as having no software dependency).

Next, in order:

- Function rows of the kernel objects (`docs/functions.md`): most bullets name more than three routines on one line, or carry no citation, so the shared grading counts them as mentions. Split each bullet to one routine (at most three names), with its label and the object file or a callee in the same entry.
- The binaries table: twelve rows can never match by name, because the shared scan needs a dot in a file name (the extensionless programs) and stops at `@` (the dual-channel format files); the roles are in `docs/binaries.md`. The other named-only rows there need a label and citation in their own bullet.
- `libXsgivc.so` (`docs/xsgivc.md`): the request table rows need a label and the library file name in each row.
- The remaining function rows by binary: `Xsgi`, the `libGLcore` routines with no hardware effect (left out of `docs/libglcore.md` on purpose rather than given name-only roles), `glx.so`, `kernel.o`, `symmon.IP32`, `libGL.so`, `setmon`, `gfxinit`, `mvp.o`, `a3_dd.o` and the video libraries. Read call lists and bodies; a role inferred from a name alone does not count.
