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
  Unknown: which of those bits is drawn first. The specification does not say.

## Logic operation and plane masks

- Inferred (drivers): the 16 logic operations use the codes 0 to 15 in the GL
  order, from clear (0) to set (15). The field list in
  [devices/re/registers.toml](registers.toml) gives the names. The specification's field
  table for the register is empty.
- Conflict: the specification puts logic-op enable at DrawMode bit 8 and dither
  at bit 9. The drivers use the reverse. Which is right is not settled, and the
  pipeline order in [devices/re/pixel-arithmetic.md](pixel-arithmetic.md) follows the
  drivers.
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
