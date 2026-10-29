# IRIX files needed for SGI O2 (CRIME) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level binary directories
(`crime_kernel/`, `libglcore/`, `ddx/`, `diags/`) hold relative symlinks into
`root/`.

**Every path below is unverified.** No O2 install of IRIX 6.5.30 has been
inspected for this workspace, so the names come from the usual IRIX layout
(the IP32 kernel build directory, `usr/gfx/arch`, the dynamic X server module
directory), not from a listing. The first reader with an O2 install replaces
each directory with the exact files, fixes the `links` block below, records the
image hash and the debug level of each file (`scripts/map_binaries.py`), and
removes this paragraph.

## 1. IRIX 6.5.30 (primary, unverified)

Target: an O2 (IP32) running `uname -R` = `6.5 6.5.30m` with the graphics
subsystem and X server installed.

```files
/unix
/usr/cpu/sysgen/IP32boot
/usr/gfx
/usr/lib/X11/dyDDX
/usr/diags
```
(The block above is the machine-readable list; the table below says what to
look for in it.)

### Where each group goes

| Group | What to find | Location under `root/` |
|---|---|---|
| Kernel (`crime_kernel/`) | the CRIME and GBE graphics objects among the kernel objects and archives | `usr/cpu/sysgen/IP32boot/` (also reached as `var/sysgen/boot/`) |
| OpenGL core (`libglcore/`) | `libGLcore.so` and `libGL.so` for the O2 (one directory per ABI under `usr/gfx/arch/`) | `usr/gfx/arch/` |
| X server modules (`ddx/`) | the O2 graphics X module and `glx.so` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/Xsgi` |
| Diagnostics and tools (`diags/`) | any O2 graphics diagnostic or state-dump tool; the `kpm` tool of the InfiniteReality workspace was the most useful single file there, so look for an equivalent | `usr/gfx/`, `usr/diags/` |

The O2 graphics chip has no microcode directory comparable to other SGI
families; CRIME has no geometry engine and `libGLcore` transforms and lights on
the CPU. Check `ls /usr/gfx` for anything else.

Verify on your own system with `ls /usr/gfx/arch`, `ls /usr/lib/X11/dyDDX` and
`ls /usr/cpu/sysgen/IP32boot`. Missing paths are normal: layouts differ by
release.

## 2. Copying the files

On the IRIX host, tar the paths in the block above and unpack on your
workstation with `mkdir -p root && cd root && tar -xvf /path/to/crime_root.tar`.
`scripts/populate-root` then creates the symlinks from the block below.

Reference image: none yet. Record its file name and SHA-256 here when one
exists.

## 3. IRIX 6.5.0 (DWARF; unverified)

Dominik Behr reports that 6.5.0 binaries are unstripped with full DWARF (gr2
and gr4 work from them). No 6.5.0 O2 install has been checked. Use 6.5.0 for
names and types, 6.5.30 for shipping behaviour.

## 4. Symlinks

`scripts/populate-root` reads these blocks. `archives` lines are `ARCHIVE LINKDIR`:
the archive's members are unpacked inside `root/` and linked into `LINKDIR`.
`links` lines are `LINK TARGET`, relative to the repository root. The lines
below link whole directories and are placeholders until the exact files are
known; add one line per binary then.

```archives
# root/usr/cpu/sysgen/IP32boot/<archive>.a crime_kernel
```

```links
crime_kernel/IP32boot root/usr/cpu/sysgen/IP32boot
libglcore/arch root/usr/gfx/arch
ddx/dyDDX root/usr/lib/X11/dyDDX
diags/gfx root/usr/gfx
diags/diags root/usr/diags
```
