# MTE: copies, fills and the address word

How IRIX 6.5.30 drives the memory transfer engine beyond the kernel buffer clear. Register names and mode fields are in [MTE.h](../MTE.h). Labels: **established** (read from the cited code), **inferred**, **unknown**. Citations of `crm.so` give lines of `ddx/asm/crm/crm/crm.s` (the module is stripped, so there are no useful function bounds; the listing's `glabel` lines do not match the code that follows them). Register offsets are decimal in that listing: the MTE group is 12288 (0x3000) to 12408 (0x3078).

## Address word

Established (read from the X server and from NetBSD `crmfb_fill_rect` and `crmfb_scroll`): each of SRC0, SRC1, DST0 and DST1 is one 32-bit word with a column in bits 31:16 and a row in bits 15:0. The column is a **byte** column, whatever the pixel size. NetBSD shifts the pixel x left by 0, 1 or 2 for 8, 16 or 32 bit pixels, and writes the last byte of the last pixel as the end column (`((x + w) << shift) - 1`). The X server does the same: its shift is 17 for 16-bit and 18 for 32-bit pixels, and the end word adds `0x10000` or `0x30000` (crm.s 26899-26900, 27045-27048). That is `x << 16` for the start and `((x + w) << shift) - 1` for the end, so the byte shift is folded into one constant.

Established: the X server leaves the MTE mode depth field at 0 (8-bit) for 16- and 32-bit drawables. Mode `0x820` (crm.s 26919, 29675, 56237) is copy, source TLB B, destination TLB A, depth field 0, no ECC bits. Inferred: because columns are bytes, the engine moves bytes and the depth field only changes how a clear value or stipple is expanded; this is not shown by the code, which only copies.

Unknown: what the engine does with a start column that is not a multiple of the transfer width, and whether bit 16 of an end word carries any meaning besides the low column bit.

## Copy sequence in the X server

Established (crm.s 26890-27051 and the identical sequences at 29640-29720 and 56225-56260):

1. Global set-up, each value written both to the hardware register and to a shadow block: BufMode (`+0x2000`, `+0x2008`), DrawMode `0x00200278` (transfer enable, logic op, all four byte-mask bits), LogicOp `3` (copy), transfer X and Y steps both 1, Primitive `0x03020000` (rectangle, edge type 2), MTE mode `0x820`, MTE BYTEMASK `-1` (or the GC plane mask), MTE source and destination Y steps both `1`.
2. For each clip box, the rows are split. A block of whole rows (the box height rounded down to a multiple of 16 rows for 16-bit pixels, 8 rows for 32-bit) goes to the MTE: write SRC0, SRC1, DST0, then DST1 through the start alias (`+0x3038 | 0x800`).
3. The remaining rows, and the edge columns outside a 128-pixel (16-bit) or 64-pixel (32-bit) multiple, are copied by the pixel pipeline's transfer path: source address and vertex pair written, committed through the start alias.
4. After the last box the code writes MTE FLUSH (`+0x3078`) with 0 and PixPipeFlush (`+0x21f8`) with 0.

Inferred: the split exists because the MTE moves only multiples of a fixed unit of rows and bytes. The masks are 16 rows by 256 bytes for 16-bit pixels and 8 rows by 256 bytes for 32-bit pixels, i.e. 256 bytes in x for both; the row unit is not a constant number of bytes and its reason is unknown.

Established: the MTE Y step is only ever written as `+1` here. NetBSD writes `-1` for a copy whose destination lies below the source in memory order (`crmfb_set_mte_direction`) and swaps the start and end rows. The X server does not; it orders the boxes instead (not decoded), so the descending-copy case is established only from NetBSD.

## Fills

Established (crm.s 2375-2440 and the repeated variants at 3815, 4270, 5954 and others): a rectangle fill writes MTE mode as `depth field << 8` OR'd with `TLB select << 2` (the same expression as the kernel clear), BYTEMASK from the graphics context, FG (`+0x3018`) with the fill colour, DST Y step, DST0 and DST1 with the start alias. A stippled fill makes a second pass with `MTE_MODE_STIPPLE` (bit 10) set in the mode word. STIPPLEMASK (`+0x3010`) is written 52 times in the module.

Established: several fills load an 8-bit-per-mask constant such as `0x0a0a0a0a` and `0x05050505` or `0xa0a0a0a0` (crm.s 27760-27790) into the stipple or colour path, with selection by a `movz` on a depth test. These are checkerboard-like patterns. Their purpose (a dither for sixteen-bit windows is the likeliest) is inferred only.

## Kernel clear, for comparison

The kernel clear (`crime_clear_buffer`) uses the same address word. See MTE.h for its sequence.

## Unknown

- MTE completion. The engine's idle bit is status bit 25 (NetBSD `CRIME_DE_MTE_IDLE`); IRIX polls the combined idle bit 28 only.
- MTE interrupts, reset, any DMA to host memory, and ordering of an MTE operation against pixel-pipeline primitives beyond "write FLUSH at the end".
- Whether the stipple pattern repeats every 8 or every 32 bits.
