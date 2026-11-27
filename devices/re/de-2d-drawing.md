# Rendering engine: ordinary 2D drawing

What the CRIME rendering engine does for points, lines, rectangles, stipple
and tiled copies, as far as the published CRIME 1.5 specification and the
drivers pin it down. Registers and fields are in [devices/re/registers.toml](registers.toml)
and [devices/re/registers.md](registers.md). This page covers the behaviour the
fields do not show.

Source: the CRIME 1.5 Specification, revision 0.3, 2 June 1997, a copy of which
is in [references/documents/specs/crime-1.5-specification.pdf](../../references/documents/specs/crime-1.5-specification.pdf)
(SHA-256 `5420aa06a28f0a696e79512b03bf7cc9ebd5f0bbcd432ac2c79daaa9bf48c925`).
[spec] page numbers are PDF pages. Labels are established, inferred and
unknown, as in [AGENTS.md](../../AGENTS.md).

## Coordinates

- Established ([spec] PDF 175 to 176): the scissor rectangle is in window
  coordinates, with inclusive minimum edges and exclusive maximum edges, and
  DrawMode bit 20 enables it.
- Established ([spec] PDF 176): the screen masks are in framebuffer
  coordinates, with the same edge rules.
- Established ([spec] PDF 175 to 176): the WinOffset registers translate from
  window-relative to framebuffer-relative coordinates. Their x value is in bits
  31:16 and y in bits 15:0.
- Established in [software/kernel/context.md](../../software/kernel/context.md): the kernel writes the drawing
  window's offset to `0x2058` and the read window's offset to `0x2050`. It
  writes each half as the window origin minus 0x1000.
- Unknown: whether the WinOffset halves are signed. The specification does not
  say, and the 0x1000 bias in the kernel does not settle it.
- Established ([spec] PDF 197): in X mode each vertex coordinate is a 16-bit
  unsigned value in the range [0, 2^16). The origin is the upper-left corner
  (PDF 198), as above.
- Inferred (software expectation): the NetBSD driver packs X into bits 31:16
  of each X vertex word and Y into bits 15:0 (NetBSD `sys/arch/sgimips/dev/crmfb.c`
  lines 1493 and 1509). The specification does not state this packing.

## Primitives

- Established ([spec] PDF 175): the primitive opcode is 0 for a point, 1 for a
  line and 3 for a rectangle. Opcode 2 is a triangle.
- Established ([spec] PDF 175): for a line, primitive bit 18 skips the last
  endpoint pixel. The line width field is the subpixel width divided by two.
- Established ([spec] PDF 175): for a rectangle, bits 17:16 give the traversal
  order: left to right or right to left, and bottom to top or top to bottom.
  The specification does not say whether this order sets the result of a copy
  whose source and destination overlap. That is unknown.
- Established ([spec] PDF 200): points and rectangles are always flat shaded.
  Their colour comes from the foreground register alone.
- Unknown: how a point or a line is rasterized. The geometric primitives
  section is marked "TBD" (PDF 195), and its point and line subsections
  (headings on PDF 195, and a line-traversal figure on PDF 196) have no body text. The text gives no rule for
  sample positions, endpoints or width. The unit of the line width field is
  also unknown; see [devices/re/registers.toml](registers.toml) under `primitive`.

## Triangles and edge functions

- Established ([spec] PDF 190, equations 2 and 3): the rasterizer evaluates a
  linear edge function `E(x,y) = A*x + B*y + C`, with `A = dy` and `B = -dx`,
  where `dx` and `dy` are the edge's end-minus-start differences. A one-pixel
  step in x or y adds or subtracts A or B, so the value at each sample comes
  from the value at the previous one.
- Established ([spec] PDF 191): E is positive on one side of an edge and
  negative on the other, and points with E = 0 are assigned to the positive
  side.
- Conflict ([spec] PDF 191 to 193): PDF 192 says the edges of a clockwise
  convex polygon bound its interior on the negative side. It then says a point
  is inside when every edge function is at least zero, which is the positive
  side. Figure 7-10 (PDF 193) labels the triangle interior with negative edge
  values. Which sign the engine tests is not settled.
- Established ([spec] PDF 191, figure 7-8; PDF 198): the edge-function
  figure draws x increasing to the right and y downward. The framebuffer
  origin is the upper-left corner in both X and GL mode, and pixels are
  sampled at their upper-left corner (PDF 198). The specification leaves
  conversion of the OpenGL viewport to that orientation to the host.
- Unknown: which triangle owns a sample on a shared edge. The traversal figure
  (figure 7-11, PDF 194) has no annotations, and the sections on PDF 191, 193
  and 195 are marked "TBD".
- Established ([spec] PDF 197): in the primitive list of section 7.3.6.1, the
  triangle item is a heading with no body text. The GL-mode coordinate format
  on the same page is in [devices/re/registers.toml](registers.toml) under `vertex_gl`.

## Stipple

- Established ([spec] PDF 177): the stipple mode word holds a starting index
  from 0 to 31, a repeat count from 0 to 255, a maximum index and a maximum
  repeat count.
- Inferred (conflict): the maximum index is in bits 20:16. The printed reserved
  range is 23:20, which overlaps bit 20. The layout above keeps bit 20 as part of
  the maximum index.
- Unknown: what the sequence does after the maximum index. The specification
  does not give that rule.
- Unknown: whether the sequence position carries over from one command to the
  next. The kernel saves the pattern register at a context switch
  ([software/kernel/context.md](../../software/kernel/context.md)), but nothing read so far shows that the
  sequence position is saved too.
- Inferred from the bit name (DrawMode bit 17): with opaque stipple on, a zero
  bit in the pattern is drawn in the background colour. With it off, a zero bit
  draws nothing.
- Inferred (software expectation): the NetBSD driver writes the stipple mode as
  `0x001f0000` (NetBSD `sys/arch/sgimips/dev/crmfb.c` line 1481). That sets the
  maximum index to 31 in bits 20:16, which matches the reading above. Its header
  gives the same field shifts (`crmfbreg.h` lines 393 and 394).
- Inferred (software expectation): for each glyph row, the driver places an
  8-bit row at bits 31:24 and a 16-bit row at bits 31:16 of the pattern
  (`crmfb.c` lines 1491 and 1507), so the row sits at the high end of the word.
  Which bit is drawn first is inferred, not stated by the specification: the PROM's bitmap routine (start index 16, a 16-bit row in bits 15:0) and NetBSD (start index 0, the row at the top of the word) both work only if the start index counts down from bit 31, so the first pixel drawn uses bit `31 - start index` (see "Pushing host pixels to the screen" below).

## Logic operation and plane masks

- Inferred (drivers): the 16 logic operations use the codes 0 to 15 in the GL
  order, from clear (0) to set (15). The field list in
  [devices/re/registers.toml](registers.toml) gives the names. The specification's field
  table for the register is empty.
- Conflict: the specification puts logic-op enable at DrawMode bit 8 and dither
  at bit 9. The drivers use the reverse. Which is right is not settled, and the
  pipeline order in [devices/re/pixel-arithmetic.md](pixel-arithmetic.md) follows the
  drivers. The IRIX source headers give the drivers'
  bit positions, and the X server's use of the logic-op bit settles the chip
  to the same reading (inferred); see [refused-states.md](refused-states.md#which-bit).
- Established ([spec] PDF 211, section 7.3.7.15): the ColorMask register is the
  colour plane mask. A 1 updates the matching bit of the colour buffer and a 0
  leaves it as it was. The chip has no per-bit write, so the masking is a
  read-modify-write of the pixel.

## Clipping order

- Established ([spec] PDF 173): each screen mask has an enable bit and a mode
  bit. A mode bit of 1 passes pixels inside the mask, and 0 passes pixels
  outside it.
- Conflict, settled by the shipped software as an expectation: the
  specification's ClipMode table (PDF 173, Table 7-6) puts the enable for mask 0
  at bit 9 and for mask 4 at bit 5, with the inside-select for mask 0 at bit 4
  and for mask 4 at bit 0, and its register map labels all five ScrMask rows
  "screen mask 0". Both writers of the word in shipped software pair the
  registers the other way round: the register at `+0x2020` goes with enable bit
  5 and inside-select bit 0, `+0x2028` with bits 6 and 1, up to `+0x2040` with
  bits 9 and 4. Established as what shipped software writes: the X server's
  `crmSetSmask` (`crm.so` `0x58a930`) stores one to five masks from `+0x2020`
  upward (count 1 writes only `+0x2020`) and then ClipMode from a six-entry
  table at `0x5a2400` (`0x0`, `0x21`, `0x63`, `0xe7`, `0x1ef`, `0x3ff`), and the
  kernel's `crimeValidateClip` (`crime.o` `0x21b0`, ClipMode store at `0x23a4`)
  builds the same words for the same registers. libGLcore never writes ClipMode
  or a screen mask (no store to `+0x2010`, `+0x2020` to `+0x2040` or their start
  aliases in the N32 disassembly, the o32 build not scanned; the kernel's swap
  code writes ClipMode 0).
- Inferred (engine behaviour): the engine pairs the bits as the software does.
  With the specification's order a one-rectangle window would enable mask 4 (the
  register at `+0x2040`, which neither writer touched for a count of 1) and
  test pixels against a stale rectangle, so every single-rectangle window
  would fail. The spec table's numbering therefore runs opposite to the
  register order, or its bit labels are mirrored; an emulator that follows the
  register order of the shipped software (enable bit `5 + i` and inside-select
  bit `i` for the register at `+0x2020 + 8i`) matches both writers. No shipped
  code distinguishes the two orders for any word with a gap (an enabled mask
  above a disabled one), so the whole inference rests on the contiguous words
  the software writes.
- Inferred (combination, software expectation): enabled masks combine as a
  union for the inside-select case. A window's clip list is a set of
  non-overlapping rectangles, the X server and kernel load up to five of them
  as separate masks with every inside-select bit set, and the window must
  show every rectangle; an intersection of masks would draw nothing for two
  disjoint rectangles. Windows with more than five rectangles use the clip-ID
  plane (ClipMode bit 11, words `0x800` and `0xc00`) instead. Unknown: how
  outside-select (mode bit 0) masks combine, with each other and with inside
  ones; no shipped software sets one.

## Command sequences for a 2D driver (2026-11-27)

The sequences a driver writes for a solid fill, a screen-to-screen copy, a thin line and a host-to-screen push, with the writes in order, what commits them, and what it waits for. Sources, in rank order: the IRIX 6.5.7 stand-alone graphics library (`stand/arcs/lib/libsk/graphics/CRIME/crm_tp.c` and `crm_init.c`, the PROM's console), its diagnostics (`stand/arcs/ide/IP32/graphics/crmRECommands.c`), the 6.5.7 kernel's transfer-engine routines (`irix/kern/ml/MOOSEHEAD/mte_copy.c`, `mte_zero.c`), the X module and kernel readings in [xmodule.md](../../software/xsgi/xmodule.md), [mte.md](../mte/mte.md) and [pixel-transfer.md](../../software/opengl/pixel-transfer.md), and NetBSD `sys/arch/sgimips/dev/crmfb.c` (revision `07004b2a9dac`). Register names are those of [registers.md](registers.md). Labels as above. Established means the sequence is what shipped IRIX code writes, so it is a software expectation of the hardware and not a measurement of it.

### Rules that apply to every sequence

- Established ([spec] PDF 164-170, table 7-3, and PDF 183-184, table 7-15; PDF 186): a register is global or non-global. A write to a global register (`BufMode.src/dst`, `ClipMode`, `DrawMode`, `ScrMask`, `Scissor`, `WinOffset`, `Shade.bgColor`, `LogicOp`, `ColorMask`, `PixPipeFlush`, and the transfer engine's `mode`, `byteMask`, `fgValue`, `src0/1`, the Y steps, `flush`) is applied only after the pixels already in the pipeline have been written. A write to a non-global register (`Primitive`, the vertices, `PixelXfer`, `Stipple`, `Shade.fgColor`, `MTE.dst0/dst1/stippleMask`) is applied as soon as the front of the pipeline is idle. So a driver does not wait for idle between primitives to change the mode, the colour or the clip; the interface buffer keeps the writes in order.
- Established ([spec] PDF 186; the shipped writers below): a write to any register at its offset plus `0x800` (the start alias) is the commit. The primitive runs with the registers as written, later writes do not change it, and committed primitives run in commit order. Shipped code commits with the last vertex (NetBSD, the diagnostics), with a write to `PixPipeNull` (`+0x21f0 | 0x800`, the PROM), with the source address of a transfer (`+0x20a0 | 0x800`, the PROM and libGLcore), or with the transfer engine's last address or mode (`MTE.dst1`, `MTE.mode`). Which register is the commit is the driver's choice; the primitive must be fully specified before it.
- Established (the shipped writers): the X-mode vertex word is `(x << 16) | y`, both 16-bit, origin at the top left, end vertices inclusive. A rectangle's two vertices are two opposite corners, and the primitive's edge field (bits 17:16: 0 left-right bottom-top, 1 right-left bottom-top, 2 left-right top-bottom, 3 right-left top-bottom) names the order the engine walks them (`0x03020000` is a rectangle, left to right, top to bottom). The PROM flips every `y` (`ypmax - y`) because its console works in a bottom-left origin; a driver with a top-left origin does not.
- Established (the PROM, the diagnostics, the X module, the kernel): the usual `DrawMode` words are `0x2f8` (colour mask, logic op, byte mask `0xf`), `0xf8` (colour mask and byte mask, no logic op: the PROM's first clear in `initFramebuffer` and the X module's `crmValidateVisual`), `0x2002f8` (the same plus transfer, for a copy), `0x200278` (transfer and logic op without the colour mask: the kernel's swap copy and the X module's MTE-assisted copy sequence). `LogicOp` is written to `3` (copy) when bit 9 is set, and `ColorMask` to `0xffffffff`. The transfer bit is bit 21, the logic-op enable bit 9 and the colour-mask enable bit 7, as shipped code writes them, against the specification's table which swaps 8 and 9 ([devices/re/CRIME_RE.h](CRIME_RE.h)).
- Established (`BufMode` words shipped code writes): 8-bit colour index in tiles A `0x000` (the console), 16-bit tiles A `0x104` (kernel swap, X module: raw 16-bit words, type colour index) or `0x124` (NetBSD: RGBA type), 32-bit RGBA tiles A `0x228` (kernel, X module, NetBSD), tiles B at 32 bits `0x628` (source of a swap). A fill or copy that only moves bits uses the same word for source and destination.
- Established (NetBSD `crmfb_setup_video`, the kernel's swap copy in [mte.md](../mte/mte.md)): `ClipMode`, `WinOffset.src` and `WinOffset.dst` are written as 0 for drawing in frame-buffer coordinates, and `ColorMask` as `0xffffffff`. The PROM's initialisation clears both window offsets with doubleword stores of zero (`crm_init.c`), so they are zero for every shipped drawing path.
- Established (the PROM): a colour narrower than 32 bits is replicated across the word before it goes to `Shade.fgColor` or `MTE.fgValue` (the PROM does it for 8-bit colours; a 16-bit colour in both halves is inferred). At 32 bits the pixel is `(r << 24) | (g << 16) | (b << 8) | a` for the RGBA type (NetBSD `crmfb_setup_palette`).
- Established (the stand-alone library's register macros and the inventory): a register is stored with one 32-bit store, and adjacent pairs (the two X vertices, the two GL vertices, `ScrMask`, the translation tables) with one doubleword. [memory.md](memory.md#cpu-access-widths-and-a-little-endian-processor-2026-11-27) has the exact list and what a little-endian processor does differently: it flips the half or uses the doubleword, never swaps the value under the lane reading, and reads the machine's rule first.
- Established (the X module, the kernel, libGLcore): wait for room in the interface buffer by reading the status word (`+0x4000`, a 32-bit load) and checking `level` (bits 24:18) against the room the next group needs; the buffer holds 64 entries as shipped code counts them ([interface-buffer.md](interface-buffer.md)). The PROM waits for `level < 10` before every primitive (a static it never changes); the diagnostics wait for `< 20` at four sites and `< 10` at one. NetBSD waits until `60 - level` exceeds the number of writes it is about to queue. A driver that does not check can stall the processor on a full buffer ([interface-buffer.md](interface-buffer.md), "What a CPU sees when the buffer fills") and gains nothing.
- Established as the shipped finish: after the last primitive of a batch, store `0` to `PixPipeFlush` (`+0x21f8`) and, after a transfer-engine batch, to `MTE.flush` (`+0x3078`), then poll status bit 28 for idle (and `level` 0 where the kernel does, `crmIdleWait`). libGLcore, the X module, the diagnostics and the kernel's copy and clear routines end this way; the PROM's console flushes after every primitive and waits only for room before the next. What the flush adds to the ordering the interface buffer already provides is unknown (the specification calls it "pipeline flush command"); what the idle poll gives is established: all queued primitives have been written to memory, so a CPU read after it (with the cache invalidation [memory.md](memory.md#who-keeps-the-cpu-caches-coherent-with-rendering-and-display-writes) describes) or a GBE scan sees the result. The PROM's own idle macro tests bit 27 or bit 25, not bit 28, and so returns on either; do not copy it.
- Established as NetBSD's practice only: it waits for full idle before it writes `BufMode` after the buffer mode changed (`crmfb_src_mode`, `crmfb_make_room`: "writes to `DE_MODE_*` only take effect when the engine is idle"). The specification's global-register rule above makes that wait unnecessary; the IRIX writers never idle for it. Inferred: the NetBSD wait is a conservative choice.

### Solid fill

| Step | Pixel pipeline (rectangle) | Transfer engine (rectangle) |
|---|---|---|
| Set-up, once per target | `BufMode.dst` for the target; `DrawMode = 0x2f8`; `LogicOp = 3`; `ColorMask = 0xffffffff`; `ClipMode = 0` or the clip words ([clip-id.md](clip-id.md)) | `MTE.mode` = clear op (bit 11 clear), destination tile table in bits 4:2 (0 for tiles A) and the depth field in bits 9:8; the two ECC bits (1 source, 0 destination) are set for host memory by the kernel and for tiles by NetBSD (destination), and clear in the X module's tile copies, and their effect is unknown; `MTE.byteMask = 0xffffffff`; `MTE.dstYStep = 1` |
| Per rectangle | `Shade.fgColor` = colour (replicated); `Primitive = 0x03020000` (or `0x03000000 \| edge << 16`); `Vertex.X[0] = (x0 << 16) \| y0`; `Vertex.X[1] = (x1 << 16) \| y1`, last write at `+0x2074 \| 0x800`, or both vertices as one doubleword at `+0x2070 \| 0x800` | `MTE.fgValue` = colour (replicated); `MTE.dst0 = (xbyte0 << 16) \| y0`; `MTE.dst1 = (xbyte1 << 16) \| y1` at `+0x3038 \| 0x800`; the column is a byte column (`x << 0/1/2` for 8/16/32 bits) and `xbyte1` is the last byte, `((x1 + 1) << shift) - 1` |
| Finish | `PixPipeFlush = 0`, poll idle | `MTE.flush = 0`, poll idle |
| Sources | PROM `CrmTpSboxfi`, `initFramebuffer` (clear), diagnostics `crmClearFramebuffer`; X module `crmSolidPolyFillRect` | NetBSD `crmfb_fill_rect`; X module `crmSolidPolyFillRect` (large fills); kernel `mte_zero` (linear buffers) |
| Grade | established | established; the 256-byte column alignment the X module keeps is its choice, NetBSD fills any rectangle ([mte.md](../mte/mte.md)) |

Rectangle ends are inclusive in both engines. The PROM picks the edge order from the vertices (left to right, bottom to top when its first vertex has the larger `y` after its flip, else top to bottom). A fill writes every pixel once, so the order should not change the result and `0x03020000` is enough (inferred). Clip with the five screen masks and the clip-ID plane exactly as the X module does ([Clipping order](#clipping-order) above, [clip-id.md](clip-id.md)); a driver without clip regions writes `ClipMode = 0` and `ScrMask` is not read.

### Screen-to-screen copy

| Step | Pixel pipeline transfer | Transfer engine copy |
|---|---|---|
| Set-up | `BufMode.src` and `BufMode.dst` the same word; `DrawMode = 0x2002f8`; `LogicOp = 3`; `ColorMask = 0xffffffff`; `PixelXfer.src.xStep = 1` and `yStep = 1` (counted in pixels for a frame-buffer source), or the 64-bit store `0x0000000100000001` to `+0x20a8` | `MTE.mode` = copy (bit 11), source tile table in bits 7:5, destination in bits 4:2, ECC bits as above (`0x800` for tiles A to tiles A with the ECC bits clear, `0x820` for B to A); `MTE.byteMask = 0xffffffff`; `MTE.srcYStep` and `dstYStep` = `+1` for a downward walk, `-1` for an upward one |
| Choice of walk | Destination right of the source (`xdst > xsrc`): right to left; destination below the source (`ydst > ysrc`, top-left origin): bottom to top; otherwise left to right and top to bottom. Pick the edge order for `Primitive` accordingly | Same rule on rows; NetBSD negates the Y step and swaps the start and end rows for a bottom-to-top copy, and keeps source and destination columns equal |
| Per rectangle | `Primitive = 0x03000000 \| edge << 16`; `Vertex.X[0]` the destination corner the walk starts at, `Vertex.X[1]` the opposite corner (both inclusive), as one doubleword at `+0x2070`; then write `PixelXfer.src.addr = (xs << 16) \| ys`, the source pixel that corresponds to the first vertex, at `+0x20a0 \| 0x800` | `MTE.src0 = (xb0 << 16) \| y0`; `MTE.src1 = (xb1 << 16) \| y1`; `MTE.dst0`; `MTE.dst1` at `+0x3038 \| 0x800` |
| Finish | `PixPipeFlush = 0`, poll idle | `MTE.flush = 0`, poll idle |
| Sources | PROM `CrmTpBmove` (all four walks), NetBSD `crmfb_bitblt`, X module `crmCopyRect`, libGLcore `crmCopyPixelsXfer` | NetBSD `crmfb_scroll`, X module copy sequence and kernel `crmSwapBufd` ([mte.md](../mte/mte.md)) |
| Grade | established as shipped practice; that the walk follows the edge order and not the step sign is inferred ([pixel-transfer.md](../../software/opengl/pixel-transfer.md), "Overlapping copies") | established; overlapping copies in one buffer are NetBSD's `-1` step only, unknown for the X module |

The PROM's four cases: `ydst > ysrc` with `xdst > xsrc` uses right-to-left, bottom-to-top, first vertex the destination's lower right corner and source the pixel `(xe - xoff, ye - yoff)` that lies under it; `ydst > ysrc` with `xdst <= xsrc` uses left-to-right, bottom-to-top; the two `ydst <= ysrc` cases use top-to-bottom. A copy between a tile table and itself needs the walk rule; a copy between two different tables (A to B) does not.

### Thin line

| Step | Pixel pipeline line |
|---|---|
| Set-up | `BufMode.dst`; `DrawMode = 0x2f8`; `LogicOp = 3`; `ColorMask = 0xffffffff`; `Shade.fgColor` = colour |
| Per line | `Primitive = 0x01000020` (line, the width field `0x20` the shipped "zero width"); `Vertex.X[0] = (x0 << 16) \| y0`; `Vertex.X[1] = (x1 << 16) \| y1` committed at `+0x2074 \| 0x800`; the X module writes `0x01040020`, bit 18 set to skip the last pixel so that joined segments do not draw their shared end twice |
| Finish | `PixPipeFlush = 0`, poll idle |
| Dashes and stipples | `DrawMode` bit 19 (line stipple) plus `Stipple.mode` and `Stipple.pattern` before the commit; see form 2 of "Pushing host pixels to the screen" below |
| Sources | diagnostics `crmREDrawLine` and `crmREDrawPoint` (point: `Primitive = 0`, one vertex at `+0x2070 \| 0x800`), PROM `CrmTpDrawbitmap`, X module `crmLineSS`, `crmSegmentSS`, `crmPolyPoint` |
| Grade | established as shipped practice; inferred: the width field is in 1/64 pixel units divided by two, so `0x20` is one pixel (the `Vertex.GL` coordinates carry six fraction bits, `<< 6`, in [pixel-transfer.md](../../software/opengl/pixel-transfer.md); the specification gives the unit as "subpixel width / 2" and prints no subpixel size; NetBSD's header comment says half pixels, which would make `0x20` sixteen pixels wide, but no NetBSD code writes a width, so the comment is a guess) |

Unknown, and open for any claim that hardware lines match a software rasteriser: which pixels a line covers (the specification's point and line subsections are empty, [Primitives](#primitives) above), whether both end pixels are always drawn when bit 18 is clear (every shipped use is built on that), and what the width field does above `0x20`. Shipped code uses hardware lines for thin solid lines and dashes only, and the X module sends wide lines to its software path. A driver that needs pixel-exact lines draws them in software and uses the engine for fills and copies.

### Pushing host pixels to the screen

The engine has no host-addressable pixel port; a host push is either a transfer from host memory or a stipple fed row by row. There are three forms.

1. **Colour pixels from host memory, through a linear table.** Established (kernel `crime_load_linear_tlb`, libGLcore `crmDrawPixelsXfer`, the X module's `crmDrawImage`, [pixel-transfer.md](../../software/opengl/pixel-transfer.md)). Pin the host pages and load linear table A with up to 32 pages (128 KiB window), the first page an even one, each entry the page frame with bit 31 set, as one doubleword per two pages: even page in bits 63:32. Then: `BufMode.src` = linear A (`0x1000` for the buffer type) with the host buffer's pixel size and type; `BufMode.dst` the screen; `DrawMode` with the transfer bit (`0x2002f8` in the X module's `crmDrawImage`); `Primitive = 0x03020000`; `PixelXfer.src.xStep` = pixel size in bytes; `PixelXfer.src.yStep` = pitch minus the row's bytes plus one pixel, masked to 17 bits; the destination rectangle as the two X-mode vertices (one doubleword at `+0x2070`, the kernel's form); commit with the byte offset inside the window (low 17 bits) at `PixelXfer.src.addr \| 0x800`. A rectangle is split into chunks of whole rows of at most `0x20000` bytes, reloading the table per chunk. Finish with the flush and the idle poll before the pages are unpinned. Grade: established as shipped practice. The pixel word the engine reads from the window is the buffer's pixel type: 32-bit RGBA is `0xRRGGBBAA` and the alpha byte stays in the destination if the byte mask excludes it. The specification prints RGBA8 as `R G B A` from bit 31 down and gives no layout for pixel types RGB (1) or ABGR (3), so whether either matches a Windows `0x00RRGGBB` word is unknown. With RGBA the CPU first shifts each pixel left by 8; 8-bit indices and 5-5-5 pixels (bit 15 unused) need no conversion. Under the lane reading of [memory.md](memory.md#cpu-access-widths-and-a-little-endian-processor-2026-11-27) a little-endian host buffer has its pixels permuted inside each doubleword, so the engine cannot read a mirror written with narrow stores; the push buffer is written as doublewords, which is the same work as the CPU storing straight into the tiles. That is inferred and decides whether this form is worth having on a little-endian host.
2. **One-bit images and glyphs, row by row through the stipple.** Established (PROM `CrmTpDrawbitmap`, NetBSD `crmfb_putchar`, X module `crmDrawMonoImage` and `crmDrawOpaqueMonoImage`). For each row: write `Stipple.pattern` (`+0x20c4`), then the line or rectangle primitive across the row (one pixel tall), commit at `Vertex.X[1] \| 0x800`. Set-up: `DrawMode` with line stipple (bit 19, the PROM's line) or polygon stipple (bit 18, NetBSD's rectangle) plus opaque stipple (bit 17) when the background is drawn; `Shade.fgColor`, and `Shade.bgColor` for the opaque case; `Stipple.mode = 0x001f0000` (maximum index 31, start index 0; the PROM's bitmaps of up to 16 pixels use maximum 31 and start index 16 with the row in bits 15:0). The pattern is 32 bits: a row of up to 32 pixels per primitive, wider rows in chunks of 16 or 32 (the PROM). The leftmost pixel is bit 31 for start index 0 and bit 15 for start index 16 in both writers, so the index counts down from bit 31 and the leftmost pixel is drawn first (inferred, software expectation: two independent writers agree, the specification does not say). Grade: established as shipped practice.
3. **The CPU stores straight into the tiles.** Established as software expectation (Linux `gbefb` draws into the mapped tiles with the generic frame-buffer routines; the PROM's `clearTile` zeroes a test tile): the tiles are ordinary memory, so any pixel can be written by the processor. The cache must be written back before the display sees it ([memory.md](memory.md#who-keeps-the-cpu-caches-coherent-with-rendering-and-display-writes)), and the processor must not read tile memory that the engine wrote without the invalidation and the idle poll. A little-endian processor stores doublewords as in [gbe.md](../gbe/gbe.md#tile-and-pixel-layout-by-depth-and-what-a-little-endian-processor-stores-2026-11-27).

Unknown: the specification reserves primitive opcodes 4 to 255 ([spec] PDF 175), and the IRIX 6.5.7 stand-alone header names opcode 4 `flush` without any software in that tree or the 6.5.30 binaries issuing it; whether the chip accepts it is unknown (no shipped software or published source depends on it). Routes tried: the stand-alone library, the kernel source, `crm.so` and `crime.a` stores to `+0x2060`, the specification, NetBSD.

## What is not here

Behaviour that the 6.5.30 graphics software is said to show, such as span
endpoints and the choice of copy direction, is left out. It has no image
address or registry entry, so it cannot be cited yet. Stipple wrap-around and
copy ordering rules that appear in no published source are left out for the
same reason.

## Review (2026-11-24): screen-mask and ClipMode order

An independent re-read against `crm.so` and `crime.o` (6.5.30).

- Confirmed: the six-entry table at `crm.so` `0x5a2400` holds `0x0`, `0x21`, `0x63`, `0xe7`, `0x1ef`, `0x3ff`, and the pointer `crmSetSmask` loads (`gp - 0x724c`) reaches it at table base plus `0x140`, indexed by the mask count.
- Confirmed: `crmSetSmask` (`crm.so` `0x58a930`) stores one to five 64-bit masks, highest first, at `+0x2040`, `+0x2038`, `+0x2030`, `+0x2028` and `+0x2020`, falling through by count (count 1 writes `+0x2020` only), then the ClipMode word at `+0x2010`; each store has a twin at the start alias.
- Confirmed: `crimeValidateClip` (`crime.o` `0x21b0`) starts the ClipMode accumulator at `0x21` and ORs in `0x21 << i` per rectangle, stores the word at `0x23a4` and the masks at `+0x2020` to `+0x2040` in index order, with the rectangle's own bounds in each. The pairing (register `+0x2020 + 8i` with enable bit `5 + i` and inside-select bit `i`) holds in both writers.
- Grade: both writers are shipped software, so "established as what software writes" is right and the engine's behaviour stays inferred, as the page says. The union reading for inside-select masks is inferred from disjoint clip lists, which is sound. The specification's register map prints all five rows as "screen mask 0" (checked in the PDF text), which supports a labelling defect in the specification, not an engine fact.
- Not re-checked: that libGLcore never writes ClipMode or a screen mask. A scan of the N32 disassembly for stores at these offsets finds only stores into the library's own state words (for example the texture-environment copies at `0x0d9735dc`), which the page's claim already excludes in its wording; no register-window store was found, but no register-window provenance check was made for every store.
