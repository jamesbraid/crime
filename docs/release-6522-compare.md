# IRIX 6.5.22 against 6.5.30: the in-scope CRIME files

This chapter compares the IRIX 6.5.22 copy of every file in the scope list of
[IRIX_FILES.md](../IRIX_FILES.md) section 1 with the 6.5.30 copy. The per-item
table is [release-6522-compare.tsv](release-6522-compare.tsv): one row per
top-level file, per archive member in scope, and per CRM format file.

## Result

Established from the SHA-256 of the bytes read from the release discs.

| Group | Items | Identical | Changed |
|---|---|---|---|
| Kernel objects: `crime.a` (11 members), `gfxs.a` (2), `os.a` (`tile.o` only), `mace.o`, `gfx.o`, `rrm.o`, `kernel.o`, `mvp.o`, `a3_dd.o` | 20 | 2 | 18 |
| OpenGL libraries: `libGL.so` and `libGLcore.so`, o32 and N32 | 4 | 0 | 4 |
| X server modules: `crm.so`, `glx.so`, `Xsgi`, `libXsgivc.so` (3 builds) | 6 | 0 | 6 |
| Diagnostics and firmware: `gfxinit`, `setmon`, `ide.IP32`, `symmon.IP32`, `ip32prom.image`, `dualchannel` | 6 | 0 | 6 |
| Video and VICE: `mvp.so` (4), `libvice.so` (2), image converters (14) | 20 | 0 | 20 |
| CRM format files in `usr/gfx/ucode/CRM/vof` | 26 | 26 | 0 |
| **Total** | **82** | **28** | **54** |

- The 28 identical items are `crime.a(crime_busts.o)`, `gfxs.a(gfx_debug.o)` and
  all 26 `.vfo` files. Each has the same bytes in both releases, so the 6.5.30
  rows stand for the 6.5.22 copies too.
- The 54 changed items are the reading queue. Every one differs in bytes.
- Install paths present in both releases: all 42 top-level files exist in both.
  The 6.5.30 copies match the copies under `root/` byte for byte (SHA-256), so
  the comparison uses the same 6.5.30 bytes the inventory reads.

## How each copy was obtained

- 6.5.22: the three overlay discs of the 6.5.22 set (installation tools and
  overlays 1 of 3, overlays 2 of 3, overlays 3 of 3).
- 6.5.30: the three overlay discs of the 6.5.30 set, the same discs that
  [IRIX_FILES.md](../IRIX_FILES.md) section 2 names.
- Fallback: an install set is the 6.5 base discs with the overlays on top. Ten
  of the fourteen image converters are not on the 6.5.22 overlay discs. Their
  6.5.22 copies come from the 6.5 base discs. The other four converters
  (`vicejpeg.so` in each build) are on the 6.5.22 overlays.
- The reader was a short script over the disc and archive formats. Its output
  stayed out of this repository. Archive members were split with `ar`.

## Symbol names

Established from `nm` on each file (defined symbols, both releases). A name in
the table means the file defines it; the table does not say what a body does.

- Name sets match in every changed item except two:
  - `Xsgi`: 3697 names in 6.5.22 and 3690 in 6.5.30. The 6.5.30 build defines
    994 names that 6.5.22 lacks, and 6.5.22 defines 1001 that 6.5.30 lacks.
    Read the two lists first, to see whether the module was reorganised.
  - `setmon`: 6.5.30 adds three names: `fglrxDoFramelock`,
    `pipenumToString`, `vfmtFindSG2FormatFile`. None are removed.
- `ide.IP32` (stripped) and `ip32prom.image` (a flat PROM image) define no
  names that `nm` reads. Their comparison is by bytes only.
- The o32 `libGL.so` and `libGLcore.so` and the N32 pair define 624 and 3088
  names in both releases with no difference.

## Not in this comparison

- Out-of-scope members of `os.a`: 149 members were compared, 5 identical, 143
  changed and one present only in 6.5.22. The scope list reads
  only `tile.o` from `os.a`, so these members are not in the table or the queue.
- Patch copies: none was found. The disc listing has no IRIX 6.5 patch set,
  and its patch sets stop at 6.4.
- Installed-disk copies: the 6.5.30 installed image is not in this workspace.
  Its `crm.so` already differs from the disc copy (section 2 of
  [IRIX_FILES.md](../IRIX_FILES.md)); that difference is not measured here.
- Function bodies: unknown. This chapter reads no code. The queue's next step
  is to diff each changed body against the 6.5.30 body at the same name.

## Reading queue

Order: kernel objects first (the scope starts there), then `libGLcore` and
`libGL` (the largest files), then the X modules, the diagnostics and the video
group.

Each changed row in [release-6522-compare.tsv](release-6522-compare.tsv) is
one item. Its `status` is `changed`. Its `symbols_added_in_6.5.30` and
`symbols_removed_from_6.5.22` columns give the name difference, and `root_copy`
says whether the 6.5.30 copy is the one under `root/`.

The 6.5.22 copies are not under `root/`, so the inventory does not read them
yet. Reading them means adding them to the scope as separate files, not
replacing the 6.5.30 rows.
