/*
 * MTE_DECODE.h - O2 CRIME memory transfer engine registers and tile layout
 *
 * Publish-safe register contract for the memory transfer engine, the copy and
 * fill unit inside the CRIME rendering window. Offsets are from the start of
 * that window (physical 0x15000000); the transfer group is user-mappable. An
 * operation starts when software writes the destination end word through the
 * start alias, the same address with bit 11 set.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>             a non-register word
 *   ENUM: <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Derivation. The register list and the mode layout come from the public
 * CRIME 1.5 draft specification, the public NetBSD O2 framebuffer driver, and
 * reading how shipped IRIX software programs the engine: the buffer clear in
 * the kernel and the rectangle copy and fill paths in the X driver. Register
 * widths are inferred from the CPU-interface rule for the rest of CRIME.
 * Reset values are not stated by any source and are left unknown.
 *
 * Address words. Source and destination words carry a byte column in bits
 * 31:16 and a row in bits 15:0 whatever the pixel size. An end word names the
 * last byte of the last pixel.
 *
 * Tiles. A tile is 64 KiB, 64 KiB aligned, 128 rows of 512 bytes. Subtiled
 * textures use a finer layout that is only inferred from what the driver
 * writes.
 */
#ifndef MTE_DECODE_H
#define MTE_DECODE_H

#include <stdint.h>

#define MTE_TILE_BYTES 0x10000 /* established */
#define MTE_TILE_ROW_BYTES 512 /* established */
#define MTE_TILE_ROWS 128 /* established */
#define MTE_SUBTILE_BLOCK_BYTES 32 /* inferred: 8 bytes by 4 rows */
#define MTE_SUBTILE_BYTES 8192 /* inferred: 128 bytes by 64 rows */


/* REG: MTE.mode 0x3000 rw64 reset=unknown established */
/* REG: MTE.bytemask 0x3008 rw64 reset=unknown inferred */
/* REG: MTE.stipplemask 0x3010 rw64 reset=unknown inferred */
/* REG: MTE.fg 0x3018 rw64 reset=unknown inferred */
/* REG: MTE.src0 0x3020 rw64 reset=unknown inferred */
/* REG: MTE.src1 0x3028 rw64 reset=unknown inferred */
/* REG: MTE.dst0 0x3030 rw64 reset=unknown inferred */
/* REG: MTE.dst1 0x3038 rw64 reset=unknown inferred */
/* REG: MTE.src_ystep 0x3040 rw64 reset=unknown inferred */
/* REG: MTE.dst_ystep 0x3048 rw64 reset=unknown inferred */
/* REG: MTE.null 0x3070 rw64 reset=unknown inferred */
/* REG: MTE.flush 0x3078 rw64 reset=unknown inferred */
/* FIELD: MTE.mode.dst_ecc 0:0 established */
#define MTE_MODE_DST_ECC_SHIFT 0
#define MTE_MODE_DST_ECC_MASK  0x1u
/* FIELD: MTE.mode.src_ecc 1:1 established */
#define MTE_MODE_SRC_ECC_SHIFT 1
#define MTE_MODE_SRC_ECC_MASK  0x1u
/* FIELD: MTE.mode.dst_buf 4:2 established */
#define MTE_MODE_DST_BUF_SHIFT 2
#define MTE_MODE_DST_BUF_MASK  0x7u
/* ENUM: MTE.mode.dst_buf 0 fb_a established */
#define MTE_MODE_DST_BUF_FB_A 0
/* ENUM: MTE.mode.dst_buf 1 fb_b established */
#define MTE_MODE_DST_BUF_FB_B 1
/* ENUM: MTE.mode.dst_buf 2 fb_c established */
#define MTE_MODE_DST_BUF_FB_C 2
/* ENUM: MTE.mode.dst_buf 3 tex established */
#define MTE_MODE_DST_BUF_TEX 3
/* ENUM: MTE.mode.dst_buf 4 lin_a established */
#define MTE_MODE_DST_BUF_LIN_A 4
/* ENUM: MTE.mode.dst_buf 5 lin_b established */
#define MTE_MODE_DST_BUF_LIN_B 5
/* ENUM: MTE.mode.dst_buf 6 cid established */
#define MTE_MODE_DST_BUF_CID 6
/* FIELD: MTE.mode.src_buf 7:5 established */
#define MTE_MODE_SRC_BUF_SHIFT 5
#define MTE_MODE_SRC_BUF_MASK  0x7u
/* ENUM: MTE.mode.src_buf 0 fb_a established */
#define MTE_MODE_SRC_BUF_FB_A 0
/* ENUM: MTE.mode.src_buf 1 fb_b established */
#define MTE_MODE_SRC_BUF_FB_B 1
/* ENUM: MTE.mode.src_buf 2 fb_c established */
#define MTE_MODE_SRC_BUF_FB_C 2
/* ENUM: MTE.mode.src_buf 3 tex established */
#define MTE_MODE_SRC_BUF_TEX 3
/* ENUM: MTE.mode.src_buf 4 lin_a established */
#define MTE_MODE_SRC_BUF_LIN_A 4
/* ENUM: MTE.mode.src_buf 5 lin_b established */
#define MTE_MODE_SRC_BUF_LIN_B 5
/* ENUM: MTE.mode.src_buf 6 cid established */
#define MTE_MODE_SRC_BUF_CID 6
/* FIELD: MTE.mode.depth 9:8 established */
#define MTE_MODE_DEPTH_SHIFT 8
#define MTE_MODE_DEPTH_MASK  0x3u
/* ENUM: MTE.mode.depth 0 bits8 established */
#define MTE_MODE_DEPTH_BITS8 0
/* ENUM: MTE.mode.depth 1 bits16 established */
#define MTE_MODE_DEPTH_BITS16 1
/* ENUM: MTE.mode.depth 2 bits32 established */
#define MTE_MODE_DEPTH_BITS32 2
/* FIELD: MTE.mode.stipple 10:10 established */
#define MTE_MODE_STIPPLE_SHIFT 10
#define MTE_MODE_STIPPLE_MASK  0x1u
/* FIELD: MTE.mode.copy 11:11 established */
#define MTE_MODE_COPY_SHIFT 11
#define MTE_MODE_COPY_MASK  0x1u
/* copy=0 clears the destination with fg; copy=1 copies from the source range. */
/* FIELD: ADDR.row 15:0 established */
#define MTE_ADDR_ROW_SHIFT 0
#define MTE_ADDR_ROW_MASK  0xffffu
/* FIELD: ADDR.byte_col 31:16 established */
#define MTE_ADDR_BYTE_COL_SHIFT 16
#define MTE_ADDR_BYTE_COL_MASK  0xffffu

/*
 * TESTVEC: 0x00000820 as MTE.mode => copy=1, stipple=0, depth=0, src_buf=1, dst_buf=0
 */
/*
 * TESTVEC: 0x0000010b as MTE.mode => copy=0, depth=1, dst_buf=2, src_ecc=1, dst_ecc=1
 */
/*
 * TESTVEC: 0x00400020 as ADDR => byte_col=64, row=32
 */

#endif /* MTE_DECODE_H */
