# MTE: copies, fills and the address word

How IRIX 6.5.30 drives the memory transfer engine beyond the kernel buffer clear. Register names and mode fields are in [devices/mte/MTE.h](MTE.h). Labels: **established** (read from the cited code), **inferred**, **unknown**. Citations of `crm.so` give lines of `software/xsgi/asm/crm/crm/crm.s` (the module is stripped, so there are no useful function bounds; the listing's `glabel` lines do not match the code that follows them). Register offsets are decimal in that listing: the MTE group is 12288 (0x3000) to 12408 (0x3078).

## Engine rules from the specification

Established, [spec] PDF 160: the engine performs byte-aligned clears and copies on both linear buffers and framebuffers. That is the whole stated alignment rule. The 32-byte alignment under "Address word" below is still inferred; the specification does not state it.

Established, [spec] PDF 186: a host commits an operation by offsetting its last parameter write by a START_OFFSET number of bytes. The specification does not give that number. The X server and NetBSD use `0x800`, the start alias in `devices/re/registers.toml`. Writes after the commit do not change the committed operation. Committed operations run in commit order, each to completion, with no interruption. The specification states these rules for primitives in the host interface buffer. MTE writes use the same buffer, so applying them to MTE operations is inferred.

## Address word

Established (read from the X server and from NetBSD `crmfb_fill_rect` and `crmfb_scroll`): each of SRC0, SRC1, DST0 and DST1 is one 32-bit word with a column in bits 31:16 and a row in bits 15:0. The column is a **byte** column, whatever the pixel size. NetBSD shifts the pixel x left by 0, 1 or 2 for 8, 16 or 32 bit pixels, and writes the last byte of the last pixel as the end column (`((x + w) << shift) - 1`). The X server does the same: its shift is 17 for 16-bit and 18 for 32-bit pixels, and the end word adds `0x10000` or `0x30000` (crm.s 26899-26900, 27045-27048). That is `x << 16` for the start and `((x + w) << shift) - 1` for the end, so the byte shift is folded into one constant.

Established: the X server leaves the MTE mode depth field at 0 (8-bit) for 16- and 32-bit drawables. Mode `0x820` (crm.s 26919, 29675, 56237) is copy, source TLB B, destination TLB A, depth field 0, no ECC bits. Inferred: because columns are bytes, the engine moves bytes and the depth field only changes how a clear value or stipple is expanded; this is not shown by the code, which only copies.

Settled in pass 7: bit 16 of an end word is the low bit of the byte column; every sender (the X server's `0x10000`/`0x30000`, NetBSD's `- 1`) uses it that way and no sender gives it another meaning. Columns that are not multiples of a transfer unit: the senders avoid them. The X server sends the MTE only 256-byte-aligned column ranges and copies the edges with the pixel pipeline (below); NetBSD's MTE copies keep the source and destination columns equal (`crmfb_scroll`); the kernel's linear copies carry the descriptor `mte_engine` (`kernel.o` `.data` `0x560`) whose last two words are `0x1f` and `0x20000`, the second being the 128 KiB chunk the copy loop uses, the first inferred to be a 32-byte alignment that source and destination must share (one 256-bit memory word, [spec] PDF 160). What the engine does when source and destination columns differ within a 32-byte word: unknown: no shipped software or published source depends on it. Routes tried: the X module, `kernel.o`, NetBSD `crmfb`, Linux, MAME, [spec] (the MTE chapter has register tables only).

## Copy sequence in the X server

Established (crm.s 26890-27051 and the identical sequences at 29640-29720 and 56225-56260):

1. Global set-up, each value written both to the hardware register and to a shadow block: BufMode (`+0x2000`, `+0x2008`), DrawMode `0x00200278` (transfer enable, logic op, all four byte-mask bits), LogicOp `3` (copy), transfer X and Y steps both 1, Primitive `0x03020000` (rectangle, edge type 2), MTE mode `0x820`, MTE BYTEMASK `-1` (or the GC plane mask), MTE source and destination Y steps both `1`.
2. For each clip box, the rows are split. A block of whole rows (the box height rounded down to a multiple of 16 rows for 16-bit pixels, 8 rows for 32-bit) goes to the MTE: write SRC0, SRC1, DST0, then DST1 through the start alias (`+0x3038 | 0x800`).
3. The remaining rows, and the edge columns outside a 128-pixel (16-bit) or 64-pixel (32-bit) multiple, are copied by the pixel pipeline's transfer path: source address and vertex pair written, committed through the start alias.
4. After the last box the code writes MTE FLUSH (`+0x3078`) with 0 and PixPipeFlush (`+0x21f8`) with 0.

Inferred: the split exists because the MTE moves only multiples of a fixed unit of rows and bytes. The masks are 16 rows by 256 bytes for 16-bit pixels and 8 rows by 256 bytes for 32-bit pixels, i.e. 256 bytes in x for both. Settled in pass 7 as far as software reaches: NetBSD's MTE fills (`crmfb_fill_rect`) take any row range and its MTE copies any multiple of the font height, so the row unit is the X server's choice for its copies, not a rule software elsewhere obeys. Whether the engine itself copies tiles faster or only correctly in such units: unknown: no shipped software or published source depends on it. Routes tried: the X module, NetBSD `crmfb`, [spec], `ide.IP32`.

Established: the MTE Y step is only ever written as `+1` here. NetBSD writes `-1` for a copy whose destination lies below the source in memory order (`crmfb_set_mte_direction`) and swaps the start and end rows. The X server does not; it orders the boxes instead (not decoded), so the descending-copy case is established only from NetBSD.

## Fills

Established (crm.s 2375-2440 and the repeated variants at 3815, 4270, 5954 and others): a rectangle fill writes MTE mode as `depth field << 8` OR'd with `TLB select << 2` (the same expression as the kernel clear), BYTEMASK from the graphics context, FG (`+0x3018`) with the fill colour, DST Y step, DST0 and DST1 with the start alias. A stippled fill makes a second pass with `MTE_MODE_STIPPLE` (bit 10) set in the mode word. STIPPLEMASK (`+0x3010`) is written 52 times in the module.

Established: several fills load an 8-bit-per-mask constant such as `0x0a0a0a0a` and `0x05050505` or `0xa0a0a0a0` (crm.s 27760-27790) into the stipple or colour path, with selection by a `movz` on a depth test. These are checkerboard-like patterns. Their purpose (a dither for sixteen-bit windows is the likeliest) is inferred only.

## Kernel clear, for comparison

The kernel clear (`crime_clear_buffer`) uses the same address word. See devices/mte/MTE.h for its sequence.

## Unknown

- MTE completion: the engine's MTE idle bit is status bit 25 (NetBSD `CRIME_DE_MTE_IDLE`); IRIX polls the combined idle bit 28 only. Interrupts, reset, host-memory transfers and ordering against pixel-pipeline primitives are settled or labelled in `software/kernel/reset.md` (pass 7): commit order, no MTE-specific interrupt, no reset value any software depends on.
- Stipple period, settled in pass 7 as a driver expectation: the X server's stippled MTE fill sends one MTE operation per row and, before each, writes STIPPLEMASK with a 32-bit word built from the pattern and rotated by a column-dependent amount (`crm.s` 2489, 2546: a right rotate of a 32-bit value by `n` and `32 - n`). A 32-bit rotation only makes sense for a 32-pixel repeat, so the engine applies the mask with a period of 32 pixels starting at the destination's start column (inferred). NetBSD never sets the MTE stipple bit (it stipples through the pixel pipeline). Bit order within the word beyond that: unknown: no other software depends on it.
- Byte mask: its polarity and bit-to-byte order are not in the specification (unknown). The X server writes all ones for full-width writes, which is the only value the shipped code is seen to use.
- Overlapping linear copies: whether a copy whose source and destination share bytes runs in a fixed order, and which order, is not stated in the specification or in any shipped software read (unknown).

## Buffer swap by copy in the kernel (`crmSwapBufd`)

Sources: the 6.5.30 kernel object `crime_retrace.o` (`crmSwapBufd`, `crm_copy_swap_boxes`) and `crime_dma.o` (`crime_clear_buffer`), read from `objdump -d` and the decompilation in `software/kernel/decomp/`; the register tables of the specification (BufMode, ClipMode, WinOffset, MTE.mode). Labels as above.

Established: the kernel swaps a double-buffered window by copying, not by flipping a display pointer. For each batch of pending swap boxes `crmSwapBufd` loads frame-buffer TLBs A and B for the drawable (`crmLoadTlbABC`, index 0 and 1), then writes a fixed register set once before copying. The set depends on the pixel size of the screen, which the function takes from the byte at offset `0x2f` of the board's mode record (value `0x20` means 32-bit pixels):

| Register | 16-bit pixels | 32-bit pixels | Reading | Grade |
|---|---|---|---|---|
| `0x2000` (BufMode.src) | `0x504` | `0x628` | tiled buffer through TLB B (bufType 1), word depth 16 or 32 bits, pixel format colour-index for 16-bit (pixType 0) or RGBA for 32-bit (pixType 2), pixel depth equal to word depth, no double-pixel | established |
| `0x2008` (BufMode.dst) | `0x104` | `0x228` | the same format through TLB A (bufType 0) | established |

The same set also holds, for both sizes, `0x2010` (ClipMode) = `0x0` (clip-ID and all five screen-mask tests off), `0x2050` and `0x2058` (WinOffset.src and WinOffset.dst) = `0x0` (box coordinates are already frame-buffer relative), `0x2018` (DrawMode) = `0x200278` (the transfer word of the X server's copy sequence above), `0x2060` (Primitive) = `0x03020000` (rectangle, edge type 2, as above), `0x21b0` (LogicOp) = `0x3` (copy), `0x3000` (MTE.mode) = `0x820`, `0x3008` (MTE.byteMask) = `0xffffffff`, and `0x3040`, `0x3048` (the MTE Y steps) = `0x1`. The MTE mode is copy (bit 11), source TLB B (bits 7:5 = 1), destination TLB A (bits 4:2 = 0), depth field 0, no ECC bits, the same value the X server uses.

Established (`crm_copy_swap_boxes`): the boxes are walked in horizontal bands, a band being 32 rows while the band start is below row 128 and 128 rows after that, in order of increasing row. The caller passes a row limit (a halfword of the mode record, read as the screen height) and the column constants: the x position shifted left by 17 (16-bit) or 18 (32-bit) forms the byte column of the address word, and the box start is aligned down to 16 (16-bit) or 8 (32-bit) pixels and its width rounded down to a multiple of 128 (16-bit) or 64 (32-bit) pixels. For each box:

1. The whole-row part, the box height rounded down to a multiple of 8 rows, goes to the MTE: wait on the interface buffer (`crmFifoWait` with the argument 4, read as the number of entries the next group needs; 1,000,000 polls), write SRC0 (`0x3020`), SRC1 (`0x3028`) and DST0 (`0x3030`), then DST1 through the start alias (`0x3038 | 0x800`). DST1 and the end word carry the extra column bit of the address word (`0x10000` for 16-bit, `0x30000` for 32-bit pixels, the constants the caller passes). The same sequence then repeats for the rows that remain, limited to the columns that span a whole number of 128 (16-bit) or 64 (32-bit) pixels with the start aligned down to 16 or 8.
2. What is left at the edges is copied through the pixel pipeline: wait the same way, write `0x3078` (MTE.flush) with `0x0`, write the vertex pair at `0x2070`, write the source address `0x20a0` through its start alias (`0x20a0 | 0x800`), and write `0x21f8` (PixPipeFlush) with `0x0`.

After the last box `crmSwapBufd` writes `0x3078` with `0x0` and waits for idle (`crmIdleWait`, 999,999 polls). The kernel buffer clear in `crime_clear_buffer` ends the same way: a write of `0x0` to `0x3078` (MTE.flush) and an idle wait, once per call and only if it started at least one rectangle.

Inferred: BufMode word depth and pixel format do not matter to an MTE copy, which moves bytes (see above); they are set because the edge copies go through the pixel pipeline, which does use them. Inferred: TLB B holds the back buffer and TLB A the front buffer, because the copy goes B to A and the swap makes the back contents visible; the code does not name them. Why the bands are 32 rows high at the top of the screen and 128 below it: unknown: no shipped software or published source depends on it; the likeliest reason is that the swap runs at retrace time, trailing the beam, and a smaller first band lets it start copying sooner (inferred).
- `0x3070` (MTE.null): the specification lists a non-global write-only "null register", the transfer engine's counterpart of PixPipeNull (`0x21f0`), which suggests a write through the start alias commits the queue without changing engine state (inferred from the name and the pixel-pipe pair). No software writes it: unknown: no shipped software or published source depends on it. Routes tried: the X module listing (`crm.s`, no store at offset 12400 or 14448 from any base), libGLcore (all N32 units), the kernel objects `crime.o`, `crime_dma.o`, `crime_retrace.o`, `crime_tiles.o` and `kernel.o`, the inventory's resolved-access table (no row for `0x3070`), the stand-alone diagnostics, and NetBSD, whose `crmfbreg.h` defines `CRIME_MTE_NULL` but whose `crmfb.c` never uses it. Linux has no transfer-engine definitions. Test that would settle it: write zero through the start alias of this register on hardware with an operation queued and read the status pointers (a start pointer that advances without a transfer means a payload-free commit); the document route is the specification's null-register row for the transfer group, which this entry only infers from its pixel-pipe counterpart.
