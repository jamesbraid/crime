/*
 * MTE.h - SGI O2 (IP32) CRIME memory transfer engine, and the tiled buffer
 * layouts it and the rendering engine address.
 *
 * Labels: [E] established, [I] inferred, [U] unknown.
 * Sources: [spec] CRIME 1.5 Specification rev 0.3 (PDF pages);
 * [netbsd] crmfbreg.h; [k:...] IRIX 6.5.30 IP32boot crime.a;
 * [gl:...] IRIX 6.5.30 N32 libGLcore; [x:...] IRIX 6.5.30 crm.so (stripped,
 * cited by line in ddx/asm/crm/crm/crm.s).
 * Offsets are from 0x15000000; the MTE group is user-mappable [E, spec].
 */
#ifndef MTE_H
#define MTE_H

#include <stdint.h>

/* ---- Registers [E, spec PDF 183-184; netbsd] ----------------------------- */
#define MTE_MODE            0x3000  /* G  */
#define MTE_BYTEMASK        0x3008  /* G  */
#define MTE_STIPPLEMASK     0x3010  /* NG */
#define MTE_FG              0x3018  /* G, clear value */
#define MTE_SRC0            0x3020  /* G, source start */
#define MTE_SRC1            0x3028  /* G, source end */
#define MTE_DST0            0x3030  /* NG, destination start */
#define MTE_DST1            0x3038  /* NG, destination end */
#define MTE_SRC_YSTEP       0x3040  /* G  */
#define MTE_DST_YSTEP       0x3048  /* G  */
#define MTE_NULL            0x3070  /* NG */
#define MTE_FLUSH           0x3078  /* G  */
/* An operation starts on a write through the start alias (+0x800). The
 * kernel's buffer clear [E, k:crime_dma:crime_clear_buffer]:
 *   once:          MODE (+0x370), BYTEMASK (+0x358), FG (+0x348),
 *                  DST_YSTEP (+0x364)
 *   per rectangle: DST0 (+0x2cc), then DST1 | 0x800 (+0x2e4)
 *   at the end:    FLUSH = 0 (+0x388)
 * and mirrors each value into a kernel shadow block. NetBSD also starts
 * with DST1 | 0x800. */

/* ---- MTE.mode [E, spec PDF 184; netbsd] ---------------------------------- */
#define MTE_MODE_COPY       (1u << 11)  /* 0 = clear destination, 1 = copy */
#define MTE_MODE_STIPPLE    (1u << 10)
#define MTE_MODE_DEPTH_SHIFT 8          /* 0 = 8, 1 = 16, 2 = 32 bit */
#define MTE_MODE_SRC_SHIFT  5           /* buffer/TLB select, 3 bits */
#define MTE_MODE_DST_SHIFT  2           /* buffer/TLB select, 3 bits */
#define MTE_MODE_SRC_ECC    (1u << 1)
#define MTE_MODE_DST_ECC    (1u << 0)
enum mte_buf {  /* [E, spec PDF 185, MTE version of the table] */
    MTE_BUF_FB_A = 0, MTE_BUF_FB_B = 1, MTE_BUF_FB_C = 2, MTE_BUF_TEX = 3,
    MTE_BUF_LIN_A = 4, MTE_BUF_LIN_B = 5, MTE_BUF_CID = 6,
};
/*
 * Observed IRIX use [E]:
 * - Kernel clear: mode = (bytes per pixel >> 1) << 8 | buffer << 2, i.e.
 *   a clear at 8, 16 or 32 bits into the drawable's TLB
 *   [k:crime_dma:crime_clear_buffer+0xd4..0x100].
 * - X server: mode 0x820 (copy, source TLB B, destination TLB A, 8-bit) at
 *   x:crm.s lines 26919 and 29675; several clears OR in MTE_MODE_STIPPLE.
 */

/* ---- Address word [E, x:crm.s 26899-27048; netbsd crmfb_scroll] -----------
 * SRC0/SRC1/DST0/DST1: byte column in 31:16, row in 15:0, whatever the pixel
 * size. End word = last byte of the last pixel, so the X server adds 0x10000
 * (16 bit) or 0x30000 (32 bit) to (x_end - 1) << (16 + log2 bytes per pixel).
 * Full description: docs/mte.md. */
#define MTE_ADDR(col_byte, row)   (((uint32_t)(col_byte) << 16) | ((row) & 0xffff))

/* ---- Frame-buffer tiles [E, spec PDF 186-187] ----------------------------- */
/*
 * A tile is 64 KiB, 64 KiB aligned, laid out as 128 rows of 512 bytes:
 * 128 x 128 at 32 bits, 256 x 128 at 16 bits, 512 x 128 at 8 bits. Buffers
 * are whole tiles, up to 2048 x 2048 pixels. The TLB maps tile (tx, ty) as
 * described in CRIME_RE.h. Within a tile the specification's figure shows a
 * plain row-major array [E]; byte order within a 32-bit pixel follows the
 * pixel-format figures below [E, spec PDF 188-189].
 */
#define TILE_BYTES          0x10000
#define TILE_ROW_BYTES      512
#define TILE_ROWS           128
#define TILE_OFFSET(x, y, bytes_pp) \
    (((y) % TILE_ROWS) * TILE_ROW_BYTES + ((x) % (TILE_ROW_BYTES / (bytes_pp))) * (bytes_pp))

/* Pixel formats [E, spec PDF 188-189]: RGBA8 is R 31:24, G 23:16, B 15:8,
 * A 7:0; A1_RGB5 is A 15, R 14:10, G 9:5, B 4:0; RG3_B2 is R 7:5, G 4:2,
 * B 1:0; CI12 uses bits 11:0. Stencil-depth pixels pack 8-bit S in 31:24
 * and 24-bit Z in 23:0. */
#define SZ_STENCIL_SHIFT    24
#define SZ_DEPTH_MASK       0x00ffffffu

/* ---- Subtiled textures (Texture.mode bit 24) [I] -------------------------- */
/*
 * gl:crm_texture:crmSubtileSpan writes a span of 16-bit texels eight bytes
 * at a time. After each eight-byte group the destination advances by 32
 * bytes, and when address bits 8:5 wrap to zero it adds a further 0x1e00
 * [E, the stepping code]. Reading that as a layout: 4 x 4-texel blocks of
 * 32 bytes (one 8-byte row of four texels per 8 bytes), sixteen blocks
 * across a 512-byte block row covering 64 texels, and sixteen block rows
 * per 8 KiB, giving 64 x 64-texel 8 KiB subtiles at 16 bits [I].
 * Other depths: there are no 8-bit texels (Texture.mode texelDepth is 16
 * or 32 only [E, spec PDF 178]). crmSubtileTexels and crmSubtileSpan use
 * the same byte-address stepping (8, +0x18, +0x1e00) whatever the format
 * and move texels as 16-bit halfwords with a per-halfword write mask [E].
 * The full address of a texel is set by the store routine that calls
 * crmSubtileSpan [E, gl:crm_texture:crmTexSubImageStore 0x0d9751f8-
 * 0x0d9752a4]: with y the row and b = x << log2(bytes per texel) the byte
 * column, the 64 KiB tile is (y >> 7) * tiles_across + (b >> 9) and the
 * offset in it is, with yl = y & 0x7f and bl = b & 0x1ff:
 *   bits  2:0  bl bits 2:0      bits 10:9  yl bits 5:4
 *   bits  4:3  yl bits 1:0      bits 12:11 yl bits 3:2
 *   bits  8:5  bl bits 6:3      bits 14:13 bl bits 8:7
 *   bit  15    yl bit 6
 * So a 32-byte cell is 8 bytes by 4 rows, an 8 KiB subtile is 128 bytes by
 * 64 rows, and the eight subtiles of a tile are numbered
 * (yl >> 6) * 4 + (bl >> 7): four across, two down [E for what the driver
 * writes; inferred that the engine reads the same layout when Texture.mode
 * bit 24 is set]. The layout is in bytes, so a 32-bit subtiled texture
 * holds 2 x 4 texels per cell and 32 x 64 per subtile [E, same code].
 * The driver subtiles every level it creates, 16- and 32-bit alike,
 * unless GLCRMTEXUSEONCE is set [E, crmComputeTexLevelSize; docs/opengl.md].
 */
#define SUBTILE_BLOCK_BYTES 32      /* [E] 8 bytes x 4 rows */
#define SUBTILE_BYTES       0x2000  /* [E] 128 bytes x 64 rows */

#endif /* MTE_H */
