# IRIX files needed for SGI O2 (CRIME) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level binary directories
(`crime_kernel/`, `libglcore/`, `ddx/`, `diags/`) hold relative symlinks into
`root/`.

Every path below was checked against a real IRIX 6.5.30 O2 install and against the
IRIX 6.5.30 install media (section 2 has the hashes). The files are
read-only inputs: copy them, never edit them.

## 1. IRIX 6.5.30 (primary)

Target: an O2 (IP32) running `uname -R` = `6.5 6.5.30m` with the graphics
subsystem and X server installed (the `eoe` and `x_eoe` products).

```files
/usr/cpu/sysgen/IP32boot/crime.a
/usr/cpu/sysgen/IP32boot/mace.o
/usr/cpu/sysgen/IP32boot/gfx.o
/usr/cpu/sysgen/IP32boot/gfxs.a
/usr/cpu/sysgen/IP32boot/rrm.o
/usr/gfx/arch/IP32CRM/libGL.so
/usr/gfx/arch/IP32CRM/libGLcore.so
/usr/gfx/arch/IP32CRM32/libGL.so
/usr/gfx/arch/IP32CRM32/libGLcore.so
/usr/lib/X11/dyDDX/crm.so
/usr/lib/X11/dyDDX/glx.so
/usr/gfx/arch/GENERIC/Xsgi
/usr/gfx/gfxinit
/usr/gfx/ucode/CRM/vof
/sbin/stand/ide.IP32
```

### Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`crime_kernel/`) | `crime.a` (11 members: `crime.o`, `crime_dma.o`, `crime_tiles.o`, `crime_zbuf.o`, ...), `mace.o`, `gfx.o`, `rrm.o`; `gfxs.a` (`gfx.o`, `gfx_debug.o`) | `usr/cpu/sysgen/IP32boot/` |
| OpenGL core (`libglcore/`) | `libGL.so` and `libGLcore.so`, o32 in `IP32CRM/` and N32 in `IP32CRM32/` | `usr/gfx/arch/` |
| X server modules (`ddx/`) | the CRIME module `crm.so`, `glx.so`, the server `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` |
| Diagnostics and tools (`diags/`) | `gfxinit`, the CRM video format files (`vof/*.vfo`), the standalone `ide.IP32` | `usr/gfx/`, `usr/gfx/ucode/CRM/`, `sbin/stand/` |

CRIME has no geometry engine and no microcode: the CRM ucode directory holds
only video format files, and `libGLcore` transforms and lights on the CPU. The
O2 has no `kpm`-style state-dump tool among these files. `ide.IP32` is the
standalone diagnostic monitor; it is not installed by default (it ships in the
`nfs` product, so the installed disk below lacks it).

## 2. Source of the files

The files in `root/` are byte-for-byte the ones on the IRIX 6.5.30 overlay
disc `Instalation_Tools_and_Overlays1.image` (SHA-256
`0e8b0610955686f3be551b73f17b80c6748ed7e6ff8898dd66766898b4c8222b`), unpacked
with their `inst` paths: kernel objects and libraries from product `eoe`, X
server files from `x_eoe`, `ide.IP32` from `nfs`.

They were checked against a completed O2 install of the same release (an 8 GiB
disk image, SHA-256
`76a7dd1e83b95d27ae5cea91bca93ef020def895a063401f4f7464171a0c08cf`). Every path above
exists on it with the same size, except `ide.IP32`. The installed `crm.so`
differs from the disc copy in about 22000 scattered bytes, the quickstart
relinking `inst` does at install time; the debug sections are untouched. Prefer the
disc copy for stable offsets, and the disk copy when a run-time address must match
a live guest.

To use a different source, tar the paths in the block above from an installed O2
and unpack with `mkdir -p root && cd root && tar -xvf /path/to/crime_root.tar`.
`scripts/populate-root` then creates the symlinks from section 4.

## 3. IRIX 6.5.0 (names and lines only)

The 6.5 Foundation 1 disc carries the same graphics files at the same paths
(`gfxinit` and `ide.IP32` were not checked there). It is not richer than 6.5.30 (section 5): the
same names-and-lines DWARF in the kernel objects and N32 libraries, `.mdebug` in
the o32 libraries, a stripped X module. Use 6.5.30; 6.5.0 is an earlier build,
useful for diffing.

## 4. Symlinks

`scripts/populate-root` reads these blocks. `archives` lines are `ARCHIVE LINKDIR`:
the archive's members are unpacked inside `root/` and linked into `LINKDIR`.
`links` lines are `LINK TARGET`, relative to the repository root, one per binary
(the same file-level style as gr4).

```archives
root/usr/cpu/sysgen/IP32boot/crime.a crime_kernel
root/usr/cpu/sysgen/IP32boot/gfxs.a crime_kernel/gfxs
```

```links
crime_kernel/mace.o root/usr/cpu/sysgen/IP32boot/mace.o
crime_kernel/gfx.o root/usr/cpu/sysgen/IP32boot/gfx.o
crime_kernel/rrm.o root/usr/cpu/sysgen/IP32boot/rrm.o
libglcore/libGL_o32.so root/usr/gfx/arch/IP32CRM/libGL.so
libglcore/libGLcore_o32.so root/usr/gfx/arch/IP32CRM/libGLcore.so
libglcore/libGL_n32.so root/usr/gfx/arch/IP32CRM32/libGL.so
libglcore/libGLcore_n32.so root/usr/gfx/arch/IP32CRM32/libGLcore.so
ddx/crm.so root/usr/lib/X11/dyDDX/crm.so
ddx/glx.so root/usr/lib/X11/dyDDX/glx.so
ddx/Xsgi root/usr/gfx/arch/GENERIC/Xsgi
diags/gfxinit root/usr/gfx/gfxinit
diags/ide.IP32 root/sbin/stand/ide.IP32
diags/crm_vof root/usr/gfx/ucode/CRM/vof
```

## 5. Debug information by release

Measured on the IRIX 6.5 Foundation 1 disc (6.5.0) and the 6.5.30 overlay disc with
`readelf -S` and `dwarfdump -i` (host `readelf` and `pyelftools` cannot walk this
DWARF). Releases between them were not measured for IP32. Neither release has DWARF
with types or structure members for this board: every unstripped file has compile
units, function and variable names and line tables only (`dwarfdump -i` shows no
structure, member or typedef entries; for example N32 `libGLcore.so` has 3410
subprograms, 176 variables and 164 compile units in 6.5.30, and 3280, 172 and 160 in
6.5.0). The o32 libraries hold ECOFF `.mdebug`, which carries no member or typedef
symbols either.

| File | Debug level (6.5.30) | 6.5.0 |
|---|---|---|
| `crime.a` members (all but `crime_busts.o` have lines), `gfx.o`, `mace.o`, `rrm.o`, `gfxs.a` members (`gfx_debug.o` has no lines) | symbols, DWARF with lines (names and lines, no types) | same, slightly smaller |
| `libGLcore.so`, `libGL.so` N32 (`IP32CRM32`) | DWARF with lines, no `.symtab` (no types) | same for `libGLcore.so`; `libGL.so` not measured |
| `libGLcore.so`, `libGL.so` o32 (`IP32CRM`) | symbols (`.mdebug`), no lines | `.mdebug` |
| `crm.so`, `glx.so`, `Xsgi`, `gfxinit` | stripped (`.dynsym` and unwind frames only) | `crm.so` stripped; others absent or not measured |
| `ide.IP32` | stripped | absent |
| `vof/*.vfo` | not code | not measured |

Types must come from the CRIME specification, the Linux and NetBSD drivers and these
notes, not from debug sections. Run `scripts/map_binaries.py` for per-file detail.
