# Pixel transfer: DrawPixels, ReadPixels and the kernel pixel DMA

How IRIX 6.5.30 moves pixels between user memory and the frame buffer. Registers are in [CRIME_RE.h](../CRIME_RE.h). Labels: **established** (read from the cited code), **inferred**, **unknown**. Sources: N32 `libGLcore` unit `crm_pixel` (`libglcore/decomp/CRIME/crm_pixel.c`, `libglcore/asm/CRIME/crm_pixel.s`) and the kernel's `crime_dma` unit (`crime_kernel/decomp/crime_dma.c`, `crime_kernel/disasm/crime_dma/crime_dma.text.s`). No source in this repository shows a host-memory DMA engine as such: the transfer is the pixel pipeline's transfer mode reading or writing memory through a linear TLB.

## Linear TLB loading

Established (`crime_dma:loadLinearTlb`, `crime_load_linear_tlb`; `crm_pixel:LoadLinearTlb`):

- A user process pins its buffer (`mpin`), then calls the graphics ioctl `0x5605` with `{address, length, flags}`, where `flags` is masked with `0x6c`. The kernel accepts at most 32 pages (0x20, 128 KiB including the page offset) and rejects more with an error.
- Flag bit 2 (value 4) selects linear TLB A (`+0x1700`), otherwise B (`+0x1780`). Bit 3 (value 8) set means the memory is only read by the hardware (the kernel calls its page-locking helper with direction 0); clear means the hardware writes it. Bit 6 (value 0x40) makes the kernel commit with a write through the start alias of PixPipeNull (`+0x21f0 | 0x800`) and wait for idle before unlocking. Bit 5 (value 0x20) is passed through, and the kernel code read here does not test it (unknown).
- The kernel clears a 0x80-byte shadow image of the TLB, fills it with one entry per page, and then writes the 16 TLB doublewords. An entry is the physical page-frame value the kernel looked up for each user page with bit 31 set. Register index is `(page >> 1) & 15`; the even page sits in bits 63:32 and the odd page in bits 31:0. A start page that is odd with a full 32 pages makes the loader fail; the reason is unknown.
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

Established (`crimePixelDma`, `crmpixdma`; the ioctl number is `0x55f2`, read from the kernel's ioctl dispatch in `crime.c`: below `0x55f3` and not the cursor-position request `0x55f1`, with the 0x28-byte `copyin` that precedes the call; inferred from the order of the dispatch tests, since the code carries no table of request names): a separate graphics ioctl takes a 0x28-byte request and performs the same transfer inside the kernel. Fields (byte offsets, from the code that reads them): +0x00 user address; +0x04 row stride in bytes (must be at least the width); +0x08 row width in bytes (at most 0x2000); +0x0c rows (at most 0x800); +0x10, +0x14, +0x18, +0x1c four coordinates; +0x20 a further offset used with flag 2; +0x24 pixel size in bytes; +0x25 flags. The kernel rejects a request whose total span exceeds 0x180000 bytes, or whose fields are out of range, with `EINVAL` (22).

Flags in +0x25: bit 0 means rows are walked bottom to top (the start address is the last row); bit 1 means use the GL vertex registers; bit 2 selects linear TLB A, else B; bit 3 means the hardware reads user memory (upload) and the source address is written to `+0x20a0`, otherwise the destination address goes to `+0x20b0` (download) and `+0x20a0` carries the screen coordinates.

The kernel pins the pages (`fast_userdma`), builds a page list, and for each chunk of at most 0x20000 bytes minus the page offset, whole rows only, loads the linear TLB, writes the vertex pair, and commits by writing the address through the start alias. After all chunks it waits for idle with a timeout of 500000 and calls the error path on timeout. Direction of the page lock is "read" for flag bit 3 and "write" otherwise.

Established differences from libGLcore: with flag bit 1 the kernel adds `0x1000` to all four coordinates and writes Vertex.GL as 64-bit pairs `(y << 6) | (x << 38)` at `+0x2080` and `+0x2088` (no 19-bit mask). When the calling context is not the engine's current owner, the kernel first subtracts `0x21000` from the coordinates, so the net bias is `-0x20000`: the libGLcore bias is removed and the 4096 bias added. Without flag bit 1 it writes the 16-bit X vertex form `(x0 << 48) | (y0 << 32) | (x1 << 16) | y1` at `+0x2070`. In the GL form the kernel writes `+0x20ac` as `((bytes per pixel - 1) << 28) | (stride + field_0x20 - width)` and does not write `+0x20a8`, where libGLcore writes `+0x20a8 = bytes per pixel` and a Y step without the high nibble. Whether the high nibble is a real field or the two encodings are equivalent is unknown.

## Unknown

- Which GL entry points call the kernel pixel DMA request (libGLcore's `crm_pixel` uses its own path). Needs a capture: trace the graphics ioctls a GL program issues, with the ioctl number below, while it calls DrawPixels, ReadPixels and CopyPixels.
- What fields +0x10..+0x20 hold exactly (screen x and y, of source and destination, are likely).
- Whether source and destination steps are counted in bytes or pixels in hardware (libGLcore: bytes, as the pixel size is its X step).
- Overlap handling between a copy's source and destination.
