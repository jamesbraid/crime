# Role readings: `usr/lib/X11/dyDDX/crm.so`

Routine roles read from the disassembly of each routine below, in the big-endian MIPS N32 shared object. The binary is stripped, so callees appear as GOT slots from `$gp` unless the dynamic symbol table names them. Every entry is Inferred unless its text says otherwise.

- `miEllipseAngleToSlope` in `usr/lib/X11/dyDDX/crm.so` at 0x4308f0
  **Inferred.** Takes an angle in a0 and writes two signed integers through the pointers in a3 and t0. The angles
  0, 0x1680, 0x2d00 and 0x4380 are answered from a fixed table without any arithmetic: the integers written to t0 and
  a3 are (0, -1), (1, 0), (0, 1) and (-1, 0) respectively. The 0x1680 step is 90 degrees at 64 units per degree, which
  is inferred from that value. Any other angle is converted to a double, scaled by a constant reached through a
  `$gp`-relative pointer, and passed to a floating-point routine through the GOT slot at -0x6f48. The results of two
  further calls through the slot at -0x6ff0 are truncated to integers and negated under a sign test before the stores.
  The scaling constants are left unread here.

- `miClearToBackground` in `usr/lib/X11/dyDDX/crm.so` at 0x44a560
  **Inferred.** Computes the box to clear and hands it to the routines in the structure's function table at offset
  0x10. The origin comes from the halfwords at 0x8 and 0xa, offset by a1 and a2. The far corner is origin plus the
  extent in a3 and t0 or, when those are zero, the halfwords at 0xc and 0xe. The left and top edges are raised to the
  limits at 0x2c and 0x2e, and the right and bottom edges are lowered to the limits at 0x30 and 0x32. An empty box is
  stored as four zeros. The routine first calls the entry at 0x154 with that box, then the entry at 0x104 when the
  word at 0x74 is nonzero, then the entry at 0x164. After that it calls 0xd4 when the sixth argument is set, or 0xd8
  when the top two bits of the word at 0x7c are set, and then 0x160, and 0x15c when the 0x104 entry returned nonzero.
  The binary gives no label for which of those entries paints the background, so that role comes from the call order alone.

- `miRectIn` in `usr/lib/X11/dyDDX/crm.so` at 0x4395d0
  **Inferred.** Classifies the rectangle in a1 against the region in a0. It returns 0 when they do not meet, 1 when
  the rectangle lies wholly inside the region and 2 when they partly overlap. A region with no band data pointer,
  which is a single box, is tested against its extent box at offsets 0 to 6. Otherwise the count at offset 4 of the
  band data pointer at offset 8 sets how many eight-byte boxes follow it, and the routine walks them in order. A zero
  count returns 0 at once. The routine makes no calls.

- `miUnion` in `usr/lib/X11/dyDDX/crm.so` at 0x45c5f0
  **Inferred.** Combines regions a1 and a2 into the destination a0. When the two inputs are the same region it copies
  them with the routine at GOT slot -0x7e9c. When both are single boxes and one contains the other it also copies
  the larger one. In every other case it passes the destination, both inputs, the overlap callback from GOT slot
  -0x7648, a stack word for the overlap flag, and the flags 1 and 1 to the general region-combining routine at GOT
  slot -0x7448. The flags ask that the non-overlapping parts of each input be appended.

- `miIntersect` in `usr/lib/X11/dyDDX/crm.so` at 0x44a230
  **Inferred.** Forms the intersection of regions a1 and a2 into the destination a0. When the extents of the two
  inputs do not overlap, the destination gets the static empty-band block addressed from `$gp` at -0x6518 and the
  degenerate extent (x1, y1, x1, y1). When both inputs are single boxes, the destination gets the overlap box directly,
  with the larger origins and the smaller far corners, and no band data. Both of these paths return 1. Otherwise the
  routine passes both inputs to the general combining routine at GOT slot -0x7448 with the intersection callback from
  GOT slot -0x7398 and both append flags set to zero. It copies the first input with the routine at -0x7e9c when the two
  inputs are the same region.

- `miRectsToRegion` in `usr/lib/X11/dyDDX/crm.so` at 0x449d90
  **Inferred.** Builds a region from a count in a0, a rectangle array in a1 and an ordering value in a2. A count of
  zero returns an empty region. A count of one returns a region whose extent is that box and which has no band data.
  Larger counts allocate a block of eight bytes plus eight per rectangle and then branch on the ordering value. When
  the ordering is 0x12 the walk takes the boxes as already banded and only fills in the band records. Any other
  ordering passes the list to the routine at GOT slot -0x7d7c first. The extent is recomputed from the boxes while the
  list is walked.

- `miPolyText8` in `usr/lib/X11/dyDDX/crm.so` at 0x448b30
  **Inferred.** Works out the pen position after an 8-bit text run. It calls the routine at GOT slot -0x6f60 with the
  structure at 0x2c of the GC in a1 and then sums the halfword at offset 4 of each entry in the list the call filled
  in. Entries are read four at a time and the sum is accumulated in s0. It then calls the drawing routine in the
  table at offset 0x48 of the GC, passing the summed value and the start position from a2. The return value is the
  start position plus the sum. The entry format and the drawing routine are not named by the binary.
- `miSubtract` in `usr/lib/X11/dyDDX/crm.so` at 0x45c8c0
  **Inferred.** Region subtraction into a destination region: a0 is the destination, a1 the minuend and a2 the subtrahend. A region's rectangle block pointer is the word at +8 and that block's rectangle count is the word at +4 of the block. When the minuend's block holds no rectangles, or the subtrahend's block is present and holds none, the minuend is copied through `miRegionCopy` at 0x439820. When both arguments are the same region and the destination's block has rectangles, `Xfree` releases that block first. The empty result sets the destination's block pointer to the constant 0x5aa988 and rewrites the extent halfwords at +4 and +6. The rectangle arithmetic goes through a generic region-op routine at 0x57fee0, called with a4 = 1, a5 = 0 and a scratch area at sp-80. I did not decode that routine, so the arithmetic itself is not described.

- `mapTypeToXDRPROC` in `usr/lib/X11/dyDDX/crm.so` at 0x491a80
  **Inferred.** Maps a type code in a0 to an XDR procedure and a small size. A code of 0x15 or more, or a zero code in one case, reaches an assert: the out-of-range path asserts on line 0xaa, a zero procedure pointer on line 0xae, a zero a3 on line 0xa3, and a zero a0 in one case on line 0x4f. The codes that are in range go through a 21-entry jump table at 0x5a6808. Most cases load a procedure pointer from a gp slot into s0 and set s1 to a constant, and the common tail stores s0 through a1 and s1 through a2. The constants seen in s1 are 1, 2, 4 and 8, which look like element sizes in bytes. I did not work out which code maps to which procedure.

- `xdr_SDBfileHeader` in `usr/lib/X11/dyDDX/crm.so` at 0x491e7c
  **Inferred.** Decodes a database file header by running a fixed sequence of XDR calls on fields of the structure at a1. The steps are an `xdr_bytes` with a 4-byte limit, two `xdr_SDBversionNumber` calls on the fields at +4 and +8, an `xdr_bytes` with a 100-byte limit, then `xdr_SDBelementIndex` at +112, `xdr_SDBfileOffset` at +116 and +120, and finally an `xdr_array` of 10 elements of 4 bytes each using `xdr_u_long`. Each step that returns zero stops the sequence and the routine returns 0. The routine returns 1 only when the whole sequence succeeds.

- `SDBreadOpenDatabase` in `usr/lib/X11/dyDDX/crm.so` at 0x49258c
  **Inferred.** Opens a database file for reading and sets up XDR decoding of its header. The name is compared with `strcmp` against the string "-" at 0x5b5108; a match skips the `fopen` call. Otherwise `fopen` runs with the mode string "r" at 0x5b510a, and a failed `fopen` stores the constant 2 through a pointer and returns 0. After a successful open the routine makes two indirect allocation calls with arguments (1, 0xb0) and (1, 0x18), creates an XDR stdio stream with operation argument 1 through `xdrstdio_create` at 0x4926b0, and decodes the header with `xdr_SDBfileHeader`. After that it calls an unnamed helper at 0x492190 and compares four bytes at +8 of the block the helper returned with `strncmp` against the string "sdb " at 0x5b5110. The failure cleanup calls `SDBcloseReadDatabase` at 0x4924d4.

- `cfb32UnnaturalTileFS` in `usr/lib/X11/dyDDX/crm.so` at 0x4c23a0
  **Inferred.** Takes the struct in a1 and the count in a2 and returns at once when the word at +0x14 of that struct is zero. A -1 there sends the routine down a side path that compares byte 5 of the struct with 3 and uses the result to choose between the GOT slots at -0x78d0 and -0x7908 for a later call. On the main path the routine reads the word at -0x6540(gp) as an index into the table at +0x4c of the struct, follows two pointers to a list header, and walks the 8-byte records (count at +4 of the header, halfword at +2 of each record) looking for the longest run of consecutive records that share one halfword value. That run length goes in ra. The count in a2 is multiplied by it, and when the product is nonzero the routine reserves two stack buffers, each the product times 4 rounded up to 16 bytes. The first callee comes through the GOT slot at -0x7e28(gp) with the struct in a0, the caller's a3 in a1, the count in a3 and the two buffers in t0 and t1. The second callee is the slot chosen earlier, called with the return value of the first in a1, the word at +0x14 of the struct stored at 4(sp) as a stack argument, and x and y taken from halfwords at +0x28 and +0x2a of the struct and at +8 and +0xa of the caller's pointer. Byte 5 of the struct is passed in t3, and the frame is restored before returning.

- `cfb16UnnaturalTileFS` in `usr/lib/X11/dyDDX/crm.so` at 0x4c2160
  **Inferred.** Same shape as the 32-bit tile routine above: it returns when the word at +0x14 of the struct in a1 is zero, walks the same kind of record list keyed on a GOT word at -0x6534(gp), keeps the longest run of equal records in ra, and reserves two buffers of count times 4 rounded to 16 bytes before the two calls. It differs in its selection logic. The halfword at +0xc of the sub-struct at +0x20 is tested for bit 0, and the low 16 bits of the word at +0x14 are compared with 0xffff. Those two tests, together with byte 5 compared with 3, pick the GOT slot for the second call from among -0x78d4, -0x78ec, -0x7914, -0x7918. The first call goes through -0x7e28(gp) as in the 32-bit routine. I did not decode what the individual slots and the halfword flag mean, so the choice logic is recorded here as a branch structure only.

- `cfb32SolidSpansCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x4f78b0
  **Inferred.** Fills spans of a 32-bit framebuffer with one solid pixel under a plain copy. The fill value is the word at +0xc of the GC private record, found through the GC private index at gp-0x6540. Before the store loop the routine sizes a stack scratch buffer as the span count in a2, times the largest per-row clip-box count from a scan of the clip list, times four bytes. It then calls an unnamed helper through the GOT slot at gp-0x7e28 and uses the count it returns in v0 to bound the loop over the buffer. The store writes the fill word at base plus y times the row stride plus four times x, with the base taken from the word at +0x20 of the drawable record and the stride from the word at +0x1c shifted right by two. A byte of value 1 at offset zero of the first argument selects the drawable's own record; any other value looks the record up through pScreen at +0x10 and devPrivates at +0x1b4, using the screen index at gp-0x653c. I did not decode the helper's target or the clip-list fields beyond the box count.

- `cfb32FillRectSolidGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4f8e20
  **Inferred.** Applies the general and-xor raster operation to a list of boxes in a 32-bit framebuffer, so each word covered becomes (word AND m) XOR x. The mask m is the word at GC private +0x10 and x is the word at +0xc. The box count arrives in a2 and the box list in a3, eight bytes per box as four halfwords x1, y1, x2, y2, with the row count from y2 minus y1. Unaligned left and right edges are handled from the low two bits of x and of the width, and the interior is walked in four-word groups. The drawable and screen-private lookup matches the copy routine. It makes no calls.

- `cfb32FillRectSolidXor` in `usr/lib/X11/dyDDX/crm.so` at 0x4fa540
  **Inferred.** Exclusive-ors the GC value into a list of boxes in a 32-bit framebuffer. The value is the word at GC private +0xc, loaded once and XORed into each covered word with no mask step, which separates it from the general routine at 0x4f8e20. The box count in a2 and the eight-byte halfword box list in a3 are read as in that routine, and a zero count branches straight to the epilogue. The drawable-type byte at offset zero of a0 chooses the direct or screen-lookup path, and the unaligned ends are done one word at a time before the block loop. It makes no calls.

- `cfb32SolidSpansXor` in `usr/lib/X11/dyDDX/crm.so` at 0x4fb430
  **Inferred.** Exclusive-ors a solid value into the pixels of each span in a 32-bit framebuffer. The value is the word at GC private +0xc. The routine follows the solid copy at 0x4f78b0: it sizes a stack scratch buffer from the span count and a clip-list scan, calls the same unnamed helper through the GOT slot at gp-0x7e28, and runs its store loop over the count the helper returns in v0. Every stored word is the old word XORed with the fill value, with leading and trailing partial words handled from the low bits of x and the span width. I did not decode the helper's target.
- `cfb32ZeroPolyArcSSCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x513990
  **Inferred.** Draws a batch of zero-width arcs for the 32-bit copy path. It walks the 12-byte arc records from a3 up to a3 + 12 × a2,
  adds the halfword origin at +8 and +0xa of the first argument to each record, and forms the right and bottom edges. A record whose
  right edge passes 0x7fff, or whose bottom edge passes it, goes to `miZeroPolyArc` (GOT slot -0x7730) one record at a time. Square
  records go straight to a region check, which calls the function pointer at +0x17c of the object at +0x10 of the first argument;
  only a return value of 1 sends the record to `cfbZeroArcSS8Copy..NL` (slot -0x7314), and any other value falls back to `miZeroPolyArc`.

- `cfb16ZeroPolyArcSSCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x513b60
  **Inferred.** The 16-bit copy variant of the same arc walk. Here the fast callee is `cfbZeroArcSS8Copy..FM` (GOT slot -0x7360), and the
  region-check index comes from slot -0x6534. The overflow fallback to `miZeroPolyArc` at slot -0x7730 and the square and 801-pixel tests
  are unchanged from the 32-bit copy routine; records whose width and height differ with either side at or past 0x321 are handed to `miPolyArc` (slot -0x7780).

- `cfb16ZeroPolyArcSSGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x513d30
  **Inferred.** The general-rop 16-bit arc walker. It loads its fast routine, `cfbZeroArcSS8General..BM`, from GOT slot -0x72b0 and
  otherwise repeats the copy-path flow: a 0x321 test on boxes whose width and height differ, a 0x7fff overflow test on the edges, and a region-check
  return value compared against 1. The region-check index is read from slot -0x6534, the same slot the 16-bit copy path uses.

- `cfb32ZeroPolyArcSSGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x5140f0
  **Inferred.** The general-rop 32-bit arc walker, with the fast routine `cfbZeroArcSS8General..IL` at GOT slot -0x72cc. Its gp is
  rebuilt from the entry address with the constant 0x9cdb0 added, which lands on the same static gp as the other arc routines. The
  region-check index comes from slot -0x6534, as in the 16-bit general routine, so the two differ only in the fast callee and the gp constant.

- `cfb16ZeroPolyArcSSXor` in `usr/lib/X11/dyDDX/crm.so` at 0x5142d0
  **Inferred.** The exclusive-or 16-bit arc walker. The fast routine is `cfbZeroArcSS8Xor..EM` (GOT slot -0x7348), and the miPolyArc
  and miZeroPolyArc fallbacks use the same slots as the copy variants. The region-check index is read from slot -0x6534, and the
  instruction order differs from the copy routine because the compiler scheduled the loads differently.

- `cfb32ZeroPolyArcSSXor` in `usr/lib/X11/dyDDX/crm.so` at 0x5144b0
  **Inferred.** The exclusive-or 32-bit arc walker. It calls `cfbZeroArcSS8Xor..ML` through GOT slot -0x7328 for records that pass the
  region check, and falls back to the generic arc code for every other record, as the 32-bit copy routine does.

- `mfbBlackSolidFS` in `usr/lib/X11/dyDDX/crm.so` at 0x529ee0
  **Inferred.** Clears the monochrome bits covered by a list of spans, using the clip region taken from the second argument's +0x4c
  pointer table. The routine returns early unless bit 0 of the word at +0x14 of the second argument is set. It builds a clip list from the
  rectangle table, reserves a point buffer and a width buffer on the stack (the span count times a value from the clip scan, rounded
  to 16 bytes), and calls `miClipSpans` (slot -0x7e28) to clip the spans. It then walks the clipped spans, computes the word address
  from the framebuffer base at +0x20 and the row pitch from +0x1c of the first argument, and clears whole 32-bit words in an unrolled
  eight-store loop. Partial words take their masks from a table loaded at offset 0x3170.
  I did not decode the table at +0x2f98 or the GOT index at slot -0x652c, so the mask semantics are inferred from the store pattern.

- `mfbWhiteSolidFS` in `usr/lib/X11/dyDDX/crm.so` at 0x526650
  **Inferred.** The set-bits twin of `mfbBlackSolidFS`. The same clip, `miClipSpans` call and span walk run, but each word is merged with
  `or` and the full-word stores write all ones (-1) instead of zeros. The partial-word merge uses the same +0x3170 edge table, and the
  routine uses the same early exit on bit 0 of +0x14. The two routines differ only in the gp constant and that store direction, so I
  graded them from the same body reading, with the same unresolved table and GOT index caveats as the black version.

- `miAppendSpans` in `usr/lib/X11/dyDDX/crm.so` at 0x5478b0
  **Inferred.** Appends one three-word record to the span array at a0 and widens that array's running y-bounds. The source list at a2 has its count in word 0 and two pointers in words 4 and 8. The record stored at buffer+12*used is (count, pointer at word 4, pointer at word 8), and the used count at a0+4 goes up by one. When used equals capacity (words a0+4 and a0+0), the capacity becomes twice the old value plus 16 and the buffer is grown through the GOT slot at gp-0x70ec, called with the old buffer and 12 times the new capacity. The halfword at offset 2 of the word-4 pointer lowers the word at a0+0xc when it is smaller, and the halfword at the word-4 pointer plus 4*count-2 raises the word at a0+0x10 when it is larger. When a1 is non-null and its range at +0xc and +0x10 overlaps the new range, the routine calls miSubtractSpans at 0x547460 with (a1, a2). A zero or negative count skips all of this and calls the one-pointer slot at gp-0x7100 on each of the two pointers instead.

- `miCleanupSpanData` in `usr/lib/X11/dyDDX/crm.so` at 0x54d170
  **Inferred.** Tears down the span work attached to a group record. The top two bits of the word at a1+0x10 choose one of two sequences. The common sequence calls miFillUniqueSpanGroup at 0x547a00 with (a0, a1, a2), then calls the one-pointer slot at gp-0x7100 on the pointer at a2+8 when it is nonzero. The sequence for value 2 compares the words at a1+0x18 and a1+0x1c, calls miFillUniqueSpanGroup with a2+0x14, and releases a2+0x1c. When the two words differ it first calls two GOT helpers at gp-0x6fcc and gp-0x6fec, which I did not decode. If the saved words still match after the release it runs the common sequence, and otherwise it runs the common call after the helpers. I did not resolve those helpers, so the claim covers the branch structure only.

- `miPostChangeSaveUnder` in `usr/lib/X11/dyDDX/crm.so` at 0x54e120
  **Inferred.** Walks a tree of window records and, for each record whose flag word at +0x7c passes a test, calls a function from the screen record at +0x10 with the record and the flag value 0x40. The walk starts at the entry at a0+0x18 and moves through the links at +0x24, +0x1c and +0x18, stopping when it climbs back to where it started. The test passes when bit 24 of the flag word is clear, bits 26 and 27 are zero, and the word at +0x74 of the record is nonzero. The function pointer is the word at offset 0xc0 of the screen record. A zero a1 ends the routine after the first record. I did not identify what the link fields hold, so the entry describes the loads and branches only.
- `miDsin..PCB` in `usr/lib/X11/dyDDX/crm.so` at 0x577f80
  **Inferred.** Sine of an angle in degrees that returns exact values at multiples of 90. The double in f12 is divided by a
  constant read through the table pointer at gp -0x724c (offset 0x44e8). The quotient goes to `floor` (GOT slot gp -0x6ff0), and
  when that result differs from the quotient the routine tail-calls `sin` (GOT slot gp -0x71c4) with the argument multiplied by the
  constant at 0x44f0 and divided by the one at 0x44c0, a degree-to-radian step. When the quotient is an integer, the truncated
  quotient modulo 4, taken with its sign, selects the result: residues 0 and 2 return 0.0, residue 1 returns the double at 0x1dd0
  of the same table, and residue 3 returns the double at 0x11b0. The value of the residue 1 and residue 3 table entries is unknown,
  so the signs of those two results are open.

- `realFindSpan..NEB` in `usr/lib/X11/dyDDX/crm.so` at 0x577540
  **Inferred.** Maps an index to the address of its slot in a cache of 4-byte words that covers one contiguous window of indexes.
  The window's first index is the global at gp -0x6344 and its last index is the global at gp +0x4264. The array pointer is the global
  at gp -0x6348, and its size is kept at gp -0x6340. An index inside the window returns the array pointer plus four times the offset
  from the first index. An index outside it reallocates the array with `Xalloc` to the new range plus a margin of about 100 slots,
  copies the surviving slots with `memmove`, zeroes the new slots at each end with `bzero`, releases the old array with `Xfree`, and
  resets the window bounds. It returns 0 when the allocation fails. An empty cache starts with the window bounds set to the index
  and one less than it.

- `newFinalSpan..OEB` in `usr/lib/X11/dyDDX/crm.so` at 0x56f5a0
  **Inferred.** Adds a range from the second and third arguments to the span list held in the window cache for the index in a0. The
  list head is the word that the cache slot points to. When a0 is outside the cache window the routine calls `realFindSpan` at 0x577540
  with a branch-and-link to get that slot. It walks a singly linked list whose nodes hold a next pointer at +0 and two words at +4 and
  +8. A node that overlaps the new range has its bounds widened to the smaller start and larger end, and the routine moves on, so a
  successful add merges the ranges. When nothing is absorbed, a new node is taken from the free list at gp -0x6338, or from a call through
  the GOT slot at gp -0x7778, which points to a routine at 0x543cd0 that has no symbol here. The live node count at gp -0x633c is
  maintained on insertion. The return value is unknown, and so is whether the absorbed nodes return to the free list.

- `miIntersectO..NM` in `usr/lib/X11/dyDDX/crm.so` at 0x58a3f0
  **Inferred.** Intersects two bands of rectangles and writes the overlaps into the region structure in a0. The region holds an extents
  box of four halfwords at +0 to +6 and a list pointer at +8. The list is a header with capacity at +0 and count at +4, followed by
  8-byte records of four halfwords. The walk steps through the two input lists together, and for each overlapping pair it stores the
  intersection as one record, taking the larger start and smaller end with `slt` and `movz`. An empty result is handled by allocating a
  fresh header with `Xalloc`, 0x10 bytes in one path and 0x18 bytes when the region has no list. Growth calls `Xrealloc` with 8 times the new
  capacity plus 8 bytes. The capacity doubles until it passes 500 and then grows by 250. The routine returns 1 when the walk completes. The
  0x18-byte allocation gets count 1 at +4 and one record at +8 copied from the region's extents.
- `miLineOnePoint..AO` in `usr/lib/X11/dyDDX/crm.so` at 0x59b500
  **Inferred.** Draws a single point through the graphics context's ops vector. The word at context +0x18 is compared with the value in a2, and when they differ the routine calls DoChangeGC with mask 4 (the foreground bit) and that value, then ValidateGC. It saves the original word on the stack and restores it the same way on return if it changed. The two-bit field at bits 24-25 of the context word at +0x10 picks the path: zero sends one point to ops slot 5 (PolyPoint, offset 0x14) with mode 0 and count 1; non-zero sends one span of width 1 to ops slot 0 (FillSpans, offset 0x0). Only the FillSpans path first adds the drawable's x (+8) and y (+0xa) when bit 17 of the context word at +0x10 is set. The point is taken from the fifth and sixth arguments. Not decoded: the internal layout of the structures the words come from, beyond the offsets cited.

- `miBSPolySegment..AAB` in `usr/lib/X11/dyDDX/crm.so` at 0x590cd0
  **Inferred.** Backing-store wrapper for PolySegment. It copies the segment list into a stack buffer, unrolled two segments per pass. Each segment's x1 and x2 are translated by the origin halfword at +4 and y1 and y2 by the halfword at +6, both read from the structure the first argument reaches through its +0x74 pointer. The routine then calls PolySegment (ops slot 7, offset 0x1c) on the context's ops vector and again on the object whose pointer comes from the backing-store table entry. For the calls it loads the context words at +0x44 and +0x48 from that table entry. On return it stores the previous +0x48 into the entry at +0x10 and leaves the module's static table address in +0x48. Not decoded: which object the second call targets is inferred from the load chain only.

- `miBSPolyArc..CAB` in `usr/lib/X11/dyDDX/crm.so` at 0x597190
  **Inferred.** Backing-store wrapper for PolyArc with the same frame and table handling as the PolySegment wrapper. It copies the arc list into a stack buffer of 12-byte records, the six 16-bit fields of an arc, and subtracts the two origin halfwords from x and y only. Width, height and both angle fields are copied unchanged. It calls PolyArc (ops slot 9, offset 0x24) on the context's ops vector, then again on the object held in the table entry, and returns the table entry's context words the way the PolySegment wrapper does. Not decoded: the origin source is read from the same +0x74 structure as the segment wrapper, which I took from the load chain without tracing the structure.

- `miResizeBackingStore..CBB` in `usr/lib/X11/dyDDX/crm.so` at 0x5905d0
  **Inferred.** Brings a window's backing-store pixmap in line with the window's bounds after a resize. It returns at once when the table entry at +0x74 of the first argument is null. Otherwise it asks a function in the screen vtable at offset 0x18c for the window rectangle, takes width and height from its halfwords, and compares them with the pixmap's 16-bit fields at +0xc and +0xe. A match takes the update path. A mismatch with a zero fourth argument calls the screen slot at 0xf0 on the old pixmap and clears the table entry. A mismatch with a non-zero fourth argument calls the screen slot at 0xec to create a new pixmap, then copies the old contents with CopyArea (ops slot 3, offset 0xc) through a scratch graphics context from GetScratchGC, freed afterwards with FreeScratchGC. The serial number at the GOT entry for globalSerialNumber is advanced on the paths that replace the pixmap. Not decoded: the screen slots at 0x18c, 0xec and 0xf0 are identified by offset only, and the meaning of the fourth argument is inferred from the branch.
## Not described

Named by the reads but not described here, because the bodies were not finished or the calls could not be resolved:

miHandleValidateExposures, miPolyText16, miPolyGlyphBlt, miPushPixels, miFillConvexPoly, 
cfbSolidSpansCopy, cfbCopyPlane1to8, cfbCopyPlane, mfbDoBitblt, mfbDoBitbltGeneral, 
mfbPolyFillRect, mfbSolidBlackArea, mfbPolyGlyphBltWhite, mfbSetSpans, miCopyPlane, 
miOpqStipDrawable, miPolyFillRect, cfb32UnnaturalStippleFS, mfbSolidWhiteArea, mfbCopyRotatePixmap, 
mfbTileAreaPPWGeneral, cfb16UnnaturalStippleFS, cfb16ValidateGC, miSetShape, cfbCopyPlane8to1, 
cfb32LineSS1RectPreviousCopy, cfb16LineSS1RectPreviousCopy, cfb8LineSS1RectPreviousCopy, 
cfb16BitBlt, cfb16DoBitbltCopy, cfb32DoBitbltGeneral, cfb16DoBitbltGeneral, cfbDoBitbltGeneral, 
cfbDoBitbltCopy, SDBprocessOneUserMethod, cfb16CopyRotatePixmap, cfbXRotatePixmap, 
cfb32XRotatePixmap, cfbPolyPoint, cfb16PolyPoint, cfb32PolyPoint, cfb16PolyGlyphBlt8, 
cfbPolyGlyphRop8, cfb32DoBitbltOr, cfb32DoBitbltXor, cfbDoBitbltOr, cfbDoBitbltXor, 
cfb16DoBitbltOr, cfb16DoBitbltXor, cfb16PolyFillArcSolidCopy, cfb32PolyFillArcSolidCopy, 
cfb32PolyFillArcSolidGeneral, cfbPolyFillArcSolidGeneral, cfb16PolyFillArcSolidGeneral, 
cfb16PolyFillRect, cfb8Stipple32FS, cfb8OpaqueStipple32FS, cfbUnnaturalStippleFS, 
cfb8FillRectTransparentStippled32, cfb8FillRectOpaqueStippled32, cfb8FillRectStippledUnnatural, 
cfb32FillPoly1RectCopy, cfb16FillPoly1RectCopy, cfb32FillPoly1RectGeneral, cfbFillPoly1RectGeneral, 
cfb16FillPoly1RectGeneral, cfbPushPixels8, cfb16SetSpans, cfb16LineSS, cfb32LineSS, cfb16LineSD, 
cfb32LineSD, cfb16FillSpanTile32sGeneral, cfbFillSpanTileOddGeneral, cfbFillBoxTileOddGeneral, 
cfbFillSpanTile32sGeneral, cfb16FillBoxTile32sGeneral, cfb32FillBoxTile32sGeneral, 
cfb16FillSpanTileOddGeneral, cfb32FillSpanTile32sGeneral, cfb16FillBoxTileOddGeneral, 
mfbDoBitbltXor, mfbPolyFillArcSolid, mfbInvertSolidFS, mfbUnnaturalStippleFS, mfbBlackStippleFS, 
mfbUnnaturalTileFS, mfbInvertStippleFS, mfbTileFS, mfbWhiteStippleFS, mfbImageGlyphBltBlack, 
mfbImageGlyphBltWhite, mfbLineSD, mfbLineSS, mfbStippleBlackArea, mfbStippleInvertArea, 
mfbSolidInvertArea, mfbStippleWhiteArea, mfbPolyGlyphBltBlack, mfbPolyGlyphBltInvert, 
mfbXRotatePixmap, mfbFillPolyBlack, mfbFillPolyInvert, mfbFillPolyWhite.

