/*
 * RE_DECODE.h - O2 CRIME rendering engine: interface buffer, linear TLBs and clip state
 *
 * Publish-safe register contract for the parts of the rendering engine window
 * (physical 0x15000000) that the memory transfer engine header does not cover:
 * the host interface buffer, the linear translation tables and the clip
 * registers. Offsets are from the start of that window. A write to the start
 * alias of a register (the same address with bit 11 set) commits the queued
 * state as one primitive.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   ENUM: <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Derivation. Offsets come from the public CRIME 1.5 draft specification and
 * the public NetBSD O2 framebuffer driver. Field layouts come from reading how
 * shipped IRIX software assembles and decodes the words: the context switch
 * that saves and replays queued writes, the clip set-up for a window, the
 * linear table loaders and the initialisation and error-recovery sequences.
 * "established" here means shipped software uses the layout exactly so; where
 * only the hardware meaning of a field is a reading, the field is "inferred".
 * The specification gives no layout for the interface buffer address RAM and
 * no reset column for the rendering registers; reset values are unknown.
 *
 * Widths. The specification describes the rendering registers as doublewords.
 * Shipped software stores the clip mode and the interface buffer control with
 * single 32-bit stores, so those two are listed at 32 bits.
 */
#ifndef RE_DECODE_H
#define RE_DECODE_H

#include <stdint.h>

#define RE_IB_ENTRIES 64 /* established: shipped software walks the buffer as a ring of 64; the specification text says 128 */
#define RE_SCRMASK_COUNT 5 /* established: five screen masks */
#define RE_LIN_TLB_REGS 16 /* established: doublewords per linear table, two page entries each */
#define RE_START_ALIAS_BIT 11 /* established: address bit that selects the start alias of a register */

/* ---- interface buffer ---- */
/*
 * The data half (64 doublewords from the window start) and the address half
 * (64 doublewords, 512 bytes above it) of each queued write cannot be REG
 * lines here, because the check compares register offsets across headers and
 * the CRIME interface registers use the same low offsets in another window.
 * Their entry count is RE_IB_ENTRIES; the address half is decoded below.
 */
/* REG: RE.ib_ctl 0x400 w32 reset=unknown established */
/* REG: RE.ib_reset 0x408 w32 reset=unknown inferred */
/*
 * ib_addr holds the address half of each queued write. Software decodes its
 * upper 32 bits (IBADDR_HI, the word at the register's own address in
 * big-endian layout) as the register's doubleword index within its group, the
 * group, a byte lane code and one flag bit; the hardware meaning of the lane
 * code and the flag is inferred. The index is address bits 10:3 and the group
 * is address bits 14:12 of the register; bit 11, the start alias, is the
 * address bit left out, so the flag is inferred to mark an entry written
 * through the start alias. Replay by software writes lane 3 as one
 * doubleword, lane 2 as the first (upper) data word at the register address,
 * lane 1 as the second data word four bytes higher, and treats lane 0 as an
 * error that writes nothing. The lower 32 bits are not decoded by any shipped
 * software read.
 */
/* FIELD: IBADDR_HI.index 7:0 established */
#define RE_IBADDR_HI_INDEX_SHIFT 0
#define RE_IBADDR_HI_INDEX_MASK  0xffu
/* FIELD: IBADDR_HI.group 10:8 established */
#define RE_IBADDR_HI_GROUP_SHIFT 8
#define RE_IBADDR_HI_GROUP_MASK  0x7u
/* ENUM: IBADDR_HI.group 0 interface established */
#define RE_IBADDR_HI_GROUP_INTERFACE 0
/* ENUM: IBADDR_HI.group 1 tlb established */
#define RE_IBADDR_HI_GROUP_TLB 1
/* ENUM: IBADDR_HI.group 2 pixel_pipe established */
#define RE_IBADDR_HI_GROUP_PIXEL_PIPE 2
/* ENUM: IBADDR_HI.group 3 transfer established */
#define RE_IBADDR_HI_GROUP_TRANSFER 3
/* FIELD: IBADDR_HI.lane 12:11 inferred */
#define RE_IBADDR_HI_LANE_SHIFT 11
#define RE_IBADDR_HI_LANE_MASK  0x3u
/* ENUM: IBADDR_HI.lane 0 none inferred */
#define RE_IBADDR_HI_LANE_NONE 0
/* ENUM: IBADDR_HI.lane 1 word1 inferred */
#define RE_IBADDR_HI_LANE_WORD1 1
/* ENUM: IBADDR_HI.lane 2 word0 inferred */
#define RE_IBADDR_HI_LANE_WORD0 2
/* ENUM: IBADDR_HI.lane 3 dword inferred */
#define RE_IBADDR_HI_LANE_DWORD 3
/* FIELD: IBADDR_HI.start_flag 13:13 inferred */
#define RE_IBADDR_HI_START_FLAG_SHIFT 13
#define RE_IBADDR_HI_START_FLAG_MASK  0x1u
/*
 * EXAMPLE (unverified): 0x00001a0a as IBADDR_HI => index=10, group=2, lane=3, start_flag=0
 */

/*
 * ib_ctl is write only. Software assembles it from four 7-bit levels; the
 * kernel's boot value parks every threshold out of reach until the CPU module
 * is known. The meaning of the levels follows the names software gives them
 * and the interrupts they raise, so the fields are inferred.
 */
/* FIELD: RE.ib_ctl.count 6:0 inferred */
#define RE_IB_CTL_COUNT_SHIFT 0
#define RE_IB_CTL_COUNT_MASK  0x7fu
/* FIELD: RE.ib_ctl.stall 13:7 inferred */
#define RE_IB_CTL_STALL_SHIFT 7
#define RE_IB_CTL_STALL_MASK  0x7fu
/* FIELD: RE.ib_ctl.empty 20:14 inferred */
#define RE_IB_CTL_EMPTY_SHIFT 14
#define RE_IB_CTL_EMPTY_MASK  0x7fu
/* FIELD: RE.ib_ctl.full 27:21 inferred */
#define RE_IB_CTL_FULL_SHIFT 21
#define RE_IB_CTL_FULL_MASK  0x7fu
/*
 * TESTVEC: 0x0fefff0a as RE.ib_ctl => count=10, stall=126, empty=63, full=127
 */
/*
 * ib_reset sits in the doubleword after ib_ctl and is absent from the
 * specification's interface buffer table. Every shipped writer stores zero
 * with a 32-bit store first, waits, and then reprograms ib_ctl and the
 * tables. Inferred: it resets the interface buffer and the front end of the
 * engine. Which other units it resets is unknown.
 */

/* ---- linear translation tables ---- */
/* REG: RE.tlb_lin_a 0x1700 rw64 count=16 reset=unknown established */
/* REG: RE.tlb_lin_b 0x1780 rw64 count=16 reset=unknown established */
/*
 * Each doubleword holds two 32-bit page entries, the even page in the upper
 * word and the odd page in the lower word. Software indexes a table with
 * address bits 16:13 and stores a page number with its top bit set, which is
 * inferred to be a valid bit. LINENT describes one such entry.
 */
/* FIELD: LINENT.page 30:0 established */
#define RE_LINENT_PAGE_SHIFT 0
#define RE_LINENT_PAGE_MASK  0x7fffffffu
/* FIELD: LINENT.valid 31:31 inferred */
#define RE_LINENT_VALID_SHIFT 31
#define RE_LINENT_VALID_MASK  0x1u
/*
 * TESTVEC: 0x80000123 as LINENT => page=291, valid=1
 */

/* ---- clip state ---- */
/* REG: RE.clipmode 0x2010 rw32 reset=unknown inferred */
/* REG: RE.scrmask 0x2020 rw64 count=5 reset=unknown established */
/*
 * clipmode pairs each screen mask with an enable bit and a mode bit. Shipped
 * software pairs mask n with enable bit 5 + n and mode bit n, so one
 * rectangle writes 0x21, two 0x63, three 0xe7, four 0x1ef and five 0x3ff. The
 * specification's table numbers the masks the opposite way round (enable of
 * its mask 0 at bit 9), which is the same bits read in reverse order, so the
 * enable and mode of one mask still travel together. The register numbering
 * of the shipped pairing is the one used here. A mode bit of 1 passes pixels
 * inside the rectangle (the polarity is inferred). Bits 10 and 11 are written
 * only for clip-ID testing and their meaning is inferred.
 */
/* FIELD: RE.clipmode.mode 4:0 established */
#define RE_CLIPMODE_MODE_SHIFT 0
#define RE_CLIPMODE_MODE_MASK  0x1fu
/* FIELD: RE.clipmode.enable 9:5 established */
#define RE_CLIPMODE_ENABLE_SHIFT 5
#define RE_CLIPMODE_ENABLE_MASK  0x1fu
/* FIELD: RE.clipmode.clip_id_map 10:10 inferred */
#define RE_CLIPMODE_CLIP_ID_MAP_SHIFT 10
#define RE_CLIPMODE_CLIP_ID_MAP_MASK  0x1u
/* FIELD: RE.clipmode.clip_id_test 11:11 inferred */
#define RE_CLIPMODE_CLIP_ID_TEST_SHIFT 11
#define RE_CLIPMODE_CLIP_ID_TEST_MASK  0x1u
/*
 * TESTVEC: 0x00000021 as RE.clipmode => mode=1, enable=1, clip_id_map=0, clip_id_test=0
 */
/*
 * TESTVEC: 0x00000063 as RE.clipmode => mode=3, enable=3
 */
/*
 * TESTVEC: 0x000003ff as RE.clipmode => mode=31, enable=31
 */
/*
 * TESTVEC: 0x00000821 as RE.clipmode => mode=1, enable=1, clip_id_test=1
 */
/*
 * Each screen mask is one clip rectangle; the end coordinates are exclusive.
 * The upper word (SCRMASK_HI, at the register's own address in big-endian
 * layout) holds the start corner and the lower word (SCRMASK_LO) the end
 * corner.
 */
/* FIELD: SCRMASK_HI.x_start 31:16 established */
#define RE_SCRMASK_HI_X_START_SHIFT 16
#define RE_SCRMASK_HI_X_START_MASK  0xffffu
/* FIELD: SCRMASK_HI.y_start 15:0 established */
#define RE_SCRMASK_HI_Y_START_SHIFT 0
#define RE_SCRMASK_HI_Y_START_MASK  0xffffu
/* FIELD: SCRMASK_LO.x_end 31:16 established */
#define RE_SCRMASK_LO_X_END_SHIFT 16
#define RE_SCRMASK_LO_X_END_MASK  0xffffu
/* FIELD: SCRMASK_LO.y_end 15:0 established */
#define RE_SCRMASK_LO_Y_END_SHIFT 0
#define RE_SCRMASK_LO_Y_END_MASK  0xffffu

#endif /* RE_DECODE_H */
