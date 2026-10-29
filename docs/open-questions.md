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

29 October 2026, reader pass 10 (backfill). The register-offset, ioctl and specification tables are done: every `mmio` and `ioctls` row is understood, and every specification register is understood or labelled as having no software dependency (eleven rows: the nine capture-block registers and two others). The `crime.o`, `crime_init.o`, `crime_retrace.o`, `crime_tp.o`, `crime_tiles.o`, `crime_dma.o`, `crime_zbuf.o`, `crime_db.o` and `crime_debug.o` routines each have their own entry in `docs/functions.md`. The inventory config now also resolves the GBE pointer at board record `+128`, which showed that the kernel writes the flat-panel timing words `VT_11` and `VT_12`.

Next, in order:

- Function rows of the remaining kernel objects (`docs/functions.md`): `mace.o`, `tile.o`, `gfx.o`, `rrm.o`, `a3_dd.o`, `crime_i2c.o` and the CRIME-touching routines of `kernel.o`. The older group bullets there name several routines per line, so the shared grading counts them as mentions: give each routine its own entry with its binary, a label, a role and a callee or offset, at most three names per line and hexadecimal offsets (`+0x18`) so that they count as citations. The entries for `crime.o` and the other converted objects show the form.
- The binaries table: twelve rows can never match by name, because the shared scan needs a dot in a file name (the extensionless programs) and stops at `@` (the dual-channel format files); the roles are in `docs/binaries.md`. The other named-only rows there need a label and citation in their own bullet.
- `libXsgivc.so` (`docs/xsgivc.md`): the request table rows need a label and the library file name in each row.
- The remaining function rows by binary: `Xsgi`, the `libGLcore` routines with no hardware effect (left out of `docs/libglcore.md` on purpose rather than given name-only roles), `glx.so`, `kernel.o`, `symmon.IP32`, `libGL.so`, `setmon`, `gfxinit`, `mvp.o`, `a3_dd.o` and the video libraries. Read call lists and bodies; a role inferred from a name alone does not count.
