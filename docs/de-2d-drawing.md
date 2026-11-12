# Rendering engine: ordinary 2D drawing

What the CRIME rendering engine does for points, lines, rectangles, stipple
and tiled copies, as far as the published CRIME 1.5 specification and the
drivers pin it down. Registers and fields are in [defs/re.toml](../defs/re.toml)
and [gen/docs/re.md](../gen/docs/re.md). This page covers the behaviour the
fields do not show.

Source: the CRIME 1.5 Specification, revision 0.3, 2 June 1997, a copy of which
is in [docs/sources/specs/crime-1.5-specification.pdf](sources/specs/crime-1.5-specification.pdf)
(SHA-256 `5420aa06a28f0a696e79512b03bf7cc9ebd5f0bbcd432ac2c79daaa9bf48c925`).
[spec] page numbers are PDF pages. Labels are established, inferred and
unknown, as in [AGENTS.md](../AGENTS.md).

## Coordinates

- Established ([spec] PDF 175 to 176): the scissor rectangle is in window
  coordinates, with inclusive minimum edges and exclusive maximum edges, and
  DrawMode bit 20 enables it.
- Established ([spec] PDF 176): the screen masks are in framebuffer
  coordinates, with the same edge rules.
- Established ([spec] PDF 175 to 176): the WinOffset registers translate from
  window-relative to framebuffer-relative coordinates. Their x value is in bits
  31:16 and y in bits 15:0.
- Established in [docs/context.md](context.md): the kernel writes the drawing
  window's offset to `0x2058` and the read window's offset to `0x2050`. It
  writes each half as the window origin minus 0x1000.
- Unknown: whether the WinOffset halves are signed. The specification does not
  say, and the 0x1000 bias in the kernel does not settle it.

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
  ([docs/context.md](context.md)), but nothing read so far shows that the
  sequence position is saved too.
- Inferred from the bit name (DrawMode bit 17): with opaque stipple on, a zero
  bit in the pattern is drawn in the background colour. With it off, a zero bit
  draws nothing.

## Logic operation and plane masks

- Inferred (drivers): the 16 logic operations use the codes 0 to 15 in the GL
  order, from clear (0) to set (15). The field list in
  [defs/re.toml](../defs/re.toml) gives the names. The specification's field
  table for the register is empty.
- Conflict: the specification puts logic-op enable at DrawMode bit 8 and dither
  at bit 9. The drivers use the reverse. Which is right is not settled, and the
  pipeline order in [docs/pixel-arithmetic.md](pixel-arithmetic.md) follows the
  drivers.

## Clipping order

- Established ([spec] PDF 173): each screen mask has an enable bit and a mode
  bit. A mode bit of 1 passes pixels inside the mask, and 0 passes pixels
  outside it.
- Conflict: the specification's table puts mask 0 at enable bit 9 and mode bit
  4, and mask 4 at enable bit 5 and mode bit 0. The kernel sets bit 5 plus i and
  bit i for rectangle i ([docs/context.md](context.md)), which is the reverse
  order. Which order the engine uses is unknown.
- Unknown: how the engine combines several enabled masks. The specification
  states the per-mask test and not the combination.

## What is not here

Behaviour that the 6.5.30 graphics software is said to show, such as span
endpoints and the choice of copy direction, is left out. It has no image
address or registry entry, so it cannot be cited yet. Stipple wrap-around and
copy ordering rules that appear in no published source are left out for the
same reason.
