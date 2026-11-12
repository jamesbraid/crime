# Pixel transfer: DrawPixels, ReadPixels and the kernel pixel DMA

How IRIX 6.5.30 moves pixels between user memory and the frame buffer. Registers are in [CRIME_RE.h](../CRIME_RE.h). Labels: **established** (read from the cited code), **inferred**, **unknown**. Sources: N32 `libGLcore` unit `crm_pixel` (`libglcore/decomp/CRIME/crm_pixel.c`, `libglcore/asm/CRIME/crm_pixel.s`) and the kernel's `crime_dma` unit (`crime_kernel/decomp/crime_dma.c`, `crime_kernel/disasm/crime_dma/crime_dma.text.s`). No source in this repository shows a host-memory DMA engine as such: the transfer is the pixel pipeline's transfer mode reading or writing memory through a linear TLB.

## Linear TLB loading

Established (`crime_dma:loadLinearTlb`, `crime_load_linear_tlb`; `crm_pixel:LoadLinearTlb`):

- A user process pins its buffer (`mpin`), then calls the graphics ioctl `0x5605` with `{address, length, flags}`, where `flags` is masked with `0x6c`. The kernel accepts at most 32 pages (0x20, 128 KiB including the page offset) and rejects more with an error.
- Flag bit 2 (value 4) selects linear TLB A (`+0x1700`), otherwise B (`+0x1780`). Bit 3 (value 8) set means the memory is only read by the hardware (the kernel calls its page-locking helper with direction 0); clear means the hardware writes it. Bit 6 (value 0x40) makes the kernel commit with a write through the start alias of PixPipeNull (`+0x21f0 | 0x800`) and wait for idle before unlocking. Bit 5 (value 0x20) passes the `0x6c` mask, but neither `crime_load_linear_tlb` nor `loadLinearTlb` (`crime_dma.o` `.text` 0x5cc-0x828 and 0x6bc-0x7b8 in the listing's numbering) tests it, so in IRIX 6.5.30 it has no effect (established negative over both routines).
- The kernel clears a 0x80-byte shadow image of the TLB, fills it with one entry per page, and then writes the 16 TLB doublewords. An entry is the physical page-frame value the kernel looked up for each user page with bit 31 set. Register index is `(page >> 1) & 15`; the even page sits in bits 63:32 and the odd page in bits 31:0. A start page that is odd with a full 32 pages would need a seventeenth register; `loadLinearTlb` handles it by placing the last page's frame in the even half of the first register (which `(page >> 1) & 15` wraps to) and loading 31 pages in the loop (the branch at listing offset 0x78c). The loader fails, returning -1, only when a page's frame value is zero (an unmapped page), whatever the start page (established; an earlier reading took the odd-start branch for a failure).
- On failure, or when the length is 0, the kernel zeroes all 16 registers (if this context owns the engine) and writes 0 to `+0x4008`.
- libGLcore keeps the address and length of each loaded buffer in its context (A at 0x7e48/0x7e4c, B at 0x7e50/0x7e54).

## DrawPixels and ReadPixels in libGLcore (the transfer path)

Established (`crmDrawPixelsXfer`, `crmDrawPixelsXfer2`, `crmReadPixelsXfer`, `crmCopyPixelsXferRW`): the user-space driver runs the transfer itself, with ordinary writes to the mapped rendering registers and the usual shadow copy. It does not use the kernel DMA ioctl.

Per transfer:

1. BufMode (`+0x2000` for a draw, source; `+0x2008` for a read, destination) has its bits 12:10 set to `4` (`0x1000`, linear A) when the caller's pointer falls in `[A base, A base + 0x20000)`, else to `5` (`0x1400`, linear B, loaded for the chunk). The buffer codes 4 and 5 are the same codes as the MTE buffer enum. Bits 9:8 hold the pixel size as a power of two of bytes (the code computes `1 << ((BufMode >> 8) & 3)`).
2. DrawMode (`+0x2018`): readback uses `0x600078` (GL and transfer enable, byte mask `0xf`). DrawPixels adds `0x600000`, or sets bit 21 only, and ORs in polygon stipple (bit 18) when stipple is on. For a depth image the byte mask becomes `0x38` (bytes 2:0); for a stencil image `0x40` (byte 3), with ColorMask (`+0x21b8`) set to the stencil write mask in bits 31:24 and DrawMode bit 7. Established consequence: byte-mask bit `3 + i` enables byte `i` of the 32-bit pixel, and stencil lives in byte 3, depth in bytes 2:0.
3. Primitive (`+0x2060`): rectangle opcode (3) with the edge type chosen from the vertical and horizontal order flags.
4. Vertex.GL, 32-bit halves: `+0x2080` start x, `+0x2084` start y, `+0x2088` end x, `+0x208c` end y. Each is `(coordinate << 6) & 0x7ffff`. The driver strips the 0x21000 window bias down to its low 13 integer bits before this, so only bits 18:0 are ever written. This confirms the 19-bit field inferred in CRIME_RE.h, and the integer bias for these writes is 4096 (the kernel adds 0x1000; see below).
5. Draw (user memory to screen): `+0x20a8` is the source X step, the pixel size in bytes. `+0x20ac` is the source Y step, `bytes per pixel + (stride - row bytes)` when the stride exceeds the row, masked to 17 bits. The source address `+0x20a0` is `address & 0x1ffff`, written through the start alias (`+0x28a0`) to commit. Read (screen to user memory): `+0x20a0` is the source screen position, x in bits 26:16 (masked `0x7ff`) and y in bits 10:0 (masked `0x7ff`); `+0x20a8` and `+0x20ac` are both 1; `+0x20b4` is the destination step (pixel size plus the row gap); the destination address is `address & 0x1ffff` written to `+0x20b0` through the start alias (`+0x28b0`).
6. A draw with polygon stipple writes Stipple.mode `+0x20c0 = 0x1f0000` and the pattern to `+0x20c4`.
7. Chunking: each chunk covers at most `0x1f000` bytes when the buffer is not page aligned and `0x20000` when it is, rounded to whole rows (`max(1, bytes / row stride)` rows). When the buffer is too large the driver reloads linear B and repeats.
8. After the last chunk it flushes and waits for idle (`__glCrmFlushAndConfirm`).

Inferred: the hardware uses only the low 17 bits of the linear address, so the address is an offset into the 128 KiB window the TLB describes. The code never writes more than 17 bits, which supports this but does not prove it.

## Kernel pixel DMA

Established (`crimePixelDma`, `crmpixdma`; the ioctl number is `0x55f2`, read from the kernel's ioctl dispatch in `crime.c`: below `0x55f3` and not the cursor-position request `0x55f1`, with the 0x28-byte `copyin` that precedes the call; inferred from the order of the dispatch tests, since the code carries no table of request names): a separate graphics ioctl takes a 0x28-byte request and performs the same transfer inside the kernel. Fields (byte offsets, from the code that reads them; the field names are ours): +0x00 user address; +0x04 row stride in bytes (must be at least the width); +0x08 row width in bytes (at most 0x2000); +0x0c rows (at most 0x800); +0x10, +0x14, +0x18, +0x1c the inclusive screen rectangle x0, y0, x1, y1; +0x20 the pixel size in bytes (a 32-bit word); +0x24 a byte holding the vertical zoom; +0x25 flags. The kernel rejects a request whose total span exceeds 0x180000 bytes, or whose fields are out of range, with `EINVAL` (22). An earlier reading of this page took +0x20 for an offset and +0x24 for the pixel size; the uses below settle it: +0x20 is what the kernel subtracts to start at the last pixel of a row and adds to the Y step, and +0x24 multiplies the number of rows to give the screen rows covered.

Flags in +0x25 (names from the same header): bit 0 (last line first) means rows are walked bottom to top (the start address is the last row); bit 1 (end of line first) means each row is walked from its last pixel, so the start address is moved back by the pixel size (+0x20); bit 2 selects linear TLB A, else B; bit 3 (linear source) means the hardware reads user memory (upload) and the source address is written to `+0x20a0`, otherwise the destination address goes to `+0x20b0` (download) and `+0x20a0` carries the screen coordinates.

The kernel pins the pages (`fast_userdma`), builds a page list, and for each chunk of at most 0x20000 bytes minus the page offset, whole rows only, loads the linear TLB, writes the vertex pair, and commits by writing the address through the start alias. After all chunks it waits for idle with a timeout of 500000 and calls the error path on timeout. Direction of the page lock is "read" for flag bit 3 and "write" otherwise.

Established (`crimePixelDma` `0x4a4`..`0x50c`, `crmpixdma` `0xe8`..`0x144` in `crime_dma.o`): the kernel takes one of two register forms, chosen by whether the calling context is the one the engine is currently bound to (a pointer comparison through the context record), not by a request flag. For a caller that is not bound, it first subtracts `0x21000` from the four coordinates and then adds `0x1000`, so the net bias is `-0x20000` (the libGLcore window bias removed and the 4096 integer bias added); it writes Vertex.GL as 64-bit pairs `(y << 6) | (x << 38)` at `+0x2080` and `+0x2088` (no 19-bit mask), and the source Y step `+0x20ac` as `(zoom - 1) << 28 | (stride + pixel size - width)`. It does not write `+0x20a8`. For the bound caller it writes the 16-bit X vertex form `(x0 << 48) | (y0 << 32) | (x1 << 16) | y1` at `+0x2070` and no step register. In both forms the rectangle's y extent is `rows * zoom - 1` rows from the start row, upward or downward by the order of y0 and y1 (`crmpixdma` `0x24c`..`0x2a8`).

## The step registers

Sources: the kernel request above; `libGLcore` `__glCrmPickDrawPixels` (the CRIME GL driver pixel assembly unit source lines 401-440, the zoom set-up), `crmDrawPixelsXfer2` (lines 2280-2330), `crmCopyPixelsXfer` (lines 2884-2994); the X module's unnamed copy routines (`ddx/asm/crm/crm/crm.s` lines 28440-28540 and 57267-57845).

- Established (zoom set-up, lines 412-440): for each axis libGLcore turns the GL pixel zoom into two integers. A zoom whose truncated magnitude is 1 to 16 gives a replication field of `zoom - 1` and a skip of 1. A zoom below 1 gives a replication field of 0 and a skip of `round(1 / zoom)` masked to 11 bits. Any other zoom (above 1 but not an integer up to 16) gives 0 and 1, and is drawn by a different path.
- Established (`crmDrawPixelsXfer2`, line 2286 and 2330): the source X step is `(x skip * bytes per pixel) & 0x1ffff | x replication << 28` and the source Y step carries the y replication in bits 31:28 over a 17-bit byte distance; the bytes per pixel is `1 << ((BufMode >> 8) & 3)`. The kernel puts its vertical zoom in the same bits 31:28 as `zoom - 1`.
- Inferred (from both writers): bits 31:28 of a step register are a replication count minus one, each source pixel or row being drawn that many extra times, and bits 16:0 are the step itself. The specification lists "integral zooms" among the pixel DMA features ([spec] PDF 159, the rendering engine feature list) and names only the registers.
- Established: for a source or destination in host memory (a linear TLB), the step is counted in bytes. The X step is the pixel size in bytes (times the skip), and the Y step is the byte distance from the last pixel read in a row to the first pixel of the next row, `stride - row bytes + pixel size`, in libGLcore and in the kernel alike. The destination step `+0x20b4` of a read-back follows the same rule.
- Established: for a source in the frame buffer, addressed by screen position (x in bits 26:16, y in bits 10:0 of `+0x20a0`), the steps are counted in pixels: libGLcore's read-back writes 1 and 1, `crmCopyPixelsXfer` writes the skips masked to 11 bits with the replication fields above, and the X module writes the 64-bit value `0x0000000100000001` to `+0x20a8` (both steps 1).
- Unknown: no shipped software or published source depends on it: what the engine does with bits 27:17 of a linear step, with bits 27:11 of a frame-buffer step, or with a step that is zero. Routes tried: the kernel, `libGLcore`, the X module, [spec] (register names only).

## Overlapping copies

- Established (`crmCopyPixelsXfer`, lines 2884-2919): libGLcore tests whether the source and destination rectangles of a `glCopyPixels` overlap. If they do not, it copies in the default order. If they do and no pixel operation needs the read-then-write path (`crmCopyPixelsXferRW`), it picks the traversal order: when the destination lies to the right of the source it swaps the destination's x0 and x1 and moves the source start to the source's last column; when the destination lies above the source (smaller y in the engine's coordinates) it swaps y0 and y1 and moves the source start to the other end row. It then writes Primitive `0x03000000 | edge << 16` with edge bit 0 set for the reversed x order and bit 1 for the reversed y order, the codes `CRIME_RE.h` lists as right-to-left and top-to-bottom. The source steps stay positive.
- Established (X module, crm.s lines 28483 and 28526, and eight more sites from line 57267): the X server's pixel-pipe copies use rectangle edge types 1 and 3 as well as 2; the routine at lines 28440-28540 writes both steps as +1 (the steps at the later sites were not traced).
- Inferred: the engine walks the source in the same direction as the destination traversal that the edge type selects, applying the positive step magnitudes in that direction; otherwise every reversed copy above would read the wrong pixels. So the source walk follows the Primitive edge type, not the sign of the step registers.
- Unknown: whether the kernel's memory copy through the transfer engine splits a copy into forward chunks and has no overlap handling, and whether its callers copy only between distinct pages; no 6.5.30 kernel routine has been read for this. The kernel's transfer-engine copy routine would settle it. The MTE copy direction for overlapping frame-buffer copies is covered in `docs/mte.md` (NetBSD writes a negative Y step; IRIX orders boxes instead).

## Indexed (CI8) transfers

The step rules above apply with one-byte pixels. What follows is the CI8
case, which none of the RGB paths above exercise.

- Inferred (NetBSD `crmfb` driver, `crmfb.c` around lines 1554 to 1581, as
  cited in the source review; the `netbsd/` submodule is not checked out
  here, so those lines are not re-read): an upload from a linear CI8 buffer
  goes to a tiled CI8 buffer held in 32-bit words. The logical index stays one
  byte per pixel whatever the storage width. In `BUFMODE` terms that is
  `buf_type` 0 to 2, `buf_depth` 2 (32 bits), `pix_type` 0 (CI) and
  `pix_depth` 0 (8 bits).
- Inferred (shipped 6.5.30 kernel and graphics-module callers): an upload
  programs the source X step to 1 and the Y step to the row pitch minus the
  row's valid bytes plus 1, then commits the source through the start alias.
  A download selects a tiled CI8 source with both source steps at 1, and a
  packed linear CI8 destination with its destination step at 1. These agree
  with the Y-step rule above at pixel size one.
- Established as code (`crime_kernel/decomp/crime_dma.c`, `crmpixdma`, the
  upload branch that stores through `0x20a0 | 0x800`): the kernel stores the
  chunk's source address without a mask. libGLcore masks the same register to
  17 bits. Nothing here shows a chunk address above 17 bits, so the 17-bit
  inference above is not contradicted, but it is no longer the only reading.
- Unknown: which byte of a 32-bit tiled word holds the index. Big-endian order
  would put it in the last byte, but no cited source settles that.
- Unknown: the CI16 indexed layout. Its logical index width, destination lane
  and plane-mask behaviour are not established by any cited source.

## RGBA32 readback through the GL rectangle

Every fact here is inferred: it is a software expectation of the IRIX 6.5.30 client driver (N32 `libGLcore.so`, SHA-256 `b33ef449a0ffa93afd9242bc331eeb81111e22e81e3d8b7f1b6045c666cc9492`), read from what the driver writes. No hardware capture backs it, and no public file states it.

Exposure: an author who read restricted vendor source supplied these statements. The text here is in our own words. Anyone implementing or reviewing the RGBA32 readback must work from the public material and their own evidence, not from this section.

The route moves four-byte RGBA storage from a tiled frame buffer to a linear scratch buffer. A CPU routine then copies bytes zero to two of each pixel and drops byte three. The hardware writes RGBA, not RGB.

- Extents. For start x X, start y Y, programmed copy width C and R rows, the four GL words are `(X << 6) & 0x7ffff`, `((X + C - 1) << 6) & 0x7ffff`, `(Y << 6) & 0x7ffff` and `((Y - R + 1) << 6) & 0x7ffff`. The far edges are inclusive, unlike the scissor's exclusive maximum edges. A one-row readback writes equal y words and still copies one row. See `defs/re.toml`, `vertex_gl`.
- Aligned width. The driver increases the programmed width C until a row is a multiple of eight bytes. A requested width of 15 at four bytes per pixel programs 16. The hardware touches the whole aligned pixel. The CPU routine returns only the requested pixels, so scratch must have room for the aligned row.
- Source start. The driver writes x as the window x and y as H - 1 - window y, each masked to 11 bits, with H the buffer height. For a 128-row buffer, y = 127 - window y. See `defs/re.toml`, `xfer_src_addr`.
- Row end. The row-end increment is `S + max(P - C * S, 0)`, with S the bytes per pixel and P the scratch row pitch. For C = 16, S = 4 and P = 64 it is 4, not 64. The row pitch is `(C - 1) * S + increment`, which equals P. See `defs/re.toml`, `xfer_dst_stride`.
- Primitive. For this route the driver forces the rectangle opcode to 3 and the edge field to 0 (`lr_bt`) and keeps the other fields. The driver's reading is that, under the upper-left orientation, the walk runs toward increasing x and decreasing y. This conflicts with the Primitive statement in step 3 above, which picks the edge from the order flags. Both statements are unresolved for this route. Both source steps carry literal 1, so the walk direction has to come from the Primitive edge, not from the sign of the step.

What the driver writes does not give a complete rule for the hardware. The following are unknown:

- Whether the engine resolves a fractional rectangle edge exactly on a tie, and how. No published or shipped source settles it.
- How the packed 11-bit source start combines with SrcWinOffset. The driver leaves SrcWinOffset set (window origin minus 0x1000, nonzero at the root), and the equation that combines it with the packed start is not known.
- Whether DstWinOffset affects linear addressing or clipping, or is ignored. The driver does not reset it on this route, and no source says what it does to a linear destination.
- Whether the row-end increment and aligned width are the only inputs to the row advance. The driver's constructed values are not evidence of the engine's counter.

## Unknown

- Settled: no GL entry point calls the kernel pixel DMA request; only the X module's image routines send it (`docs/ioctls.md`, senders).
- Settled: the request fields (above), the step units, the replication fields and the overlap order.
- Unknown: no shipped software or published source depends on it: the unused step bits and a zero step (above). Test that would settle it: transfer one row from a linear source with the X step set to the pixel size plus `0x20000` (bit 17 set), then again with a step of zero, and again with bits 27:17 clear, and compare the pixels written with the pixels read; repeat for a frame-buffer source with bit 11 of the step set. The routes tried above (kernel, `libGLcore`, X module, the specification) give no layout for those bits, so only a hardware run answers it, and that needs the hardware proposal the project requires.
