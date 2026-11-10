/*
 * CRIME_DECODE.h - O2 CRIME memory controller and CPU interface registers
 *
 * Publish-safe register contract for the CRIME ASIC's CPU-interface window:
 * ID, control, interrupt, error and memory-control registers. Offsets are
 * from the start of the CRIME register window (physical 0x14000000). Every
 * register here is 64 bits wide and takes doubleword accesses only.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>             a non-register word
 *   ENUM: <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Derivation. The layouts come from the public CRIME 1.5 draft
 * specification (revision 0.3), the public Linux and NetBSD O2 drivers, and
 * reading what shipped IRIX software does with the registers: the revision
 * decode, the interrupt dispatch, the error-capture routine and the boot-time
 * control writes. "established" means two of those agree or the
 * specification states it; "inferred" means one reading with a stated
 * reason in the notes. Where the draft and the drivers disagree the drivers
 * and the specification's own tables win over its prose.
 *
 * Revisions. The draft's 1.5 part reads ID value 0xb1 and puts the CPU error
 * status in a different register position (cpu_error_stat_15). Shipped
 * systems read 0xa1 in the low byte and use the earlier position
 * (cpu_error_stat); no 1.5 part has been seen. Both are listed. The rendering engine, memory transfer engine and display back end
 * live in other windows and other headers.
 *
 * Interrupt inputs. INTBIT names the 32 interrupt inputs once. INTSTAT,
 * INTMASK, SOFTINT and HARDINT all use the same bit positions.
 */
#ifndef CRIME_DECODE_H
#define CRIME_DECODE_H

#include <stdint.h>

#define CRIME_ID_FAMILY_SHIPPED 0xa0 /* established: family nibble of every shipped part, revision nibble 1-15 */
#define CRIME_ID_LOW_BYTE_SHIPPED 0xa1 /* established: the only low byte accepted for graphics */
#define CRIME_ID_LOW_BYTE_DRAFT 0xb1 /* inferred: draft specification 1.5 value, never seen on shipped parts */
#define CRIME_MEM_BANKS 8 /* established: memory bank control registers */
#define CRIME_WATCHDOG_COUNT_BITS 20 /* established */

/* ---- identity and control ---- */
/* REG: CRIME.id 0x000 r64 reset=unknown established */
/* FIELD: CRIME.id.rev 3:0 established */
#define CRIME_ID_REV_SHIFT 0
#define CRIME_ID_REV_MASK  0xfu
/* FIELD: CRIME.id.family 7:4 established */
#define CRIME_ID_FAMILY_SHIFT 4
#define CRIME_ID_FAMILY_MASK  0xfu
/* REG: CRIME.control 0x008 rw64 reset=0x0 established */
/* FIELD: CRIME.control.endian 8:8 established */
#define CRIME_CONTROL_ENDIAN_SHIFT 8
#define CRIME_CONTROL_ENDIAN_MASK  0x1u
/* FIELD: CRIME.control.watchdog_enable 9:9 established */
#define CRIME_CONTROL_WATCHDOG_ENABLE_SHIFT 9
#define CRIME_CONTROL_WATCHDOG_ENABLE_MASK  0x1u
/* FIELD: CRIME.control.soft_reset 10:10 established */
#define CRIME_CONTROL_SOFT_RESET_SHIFT 10
#define CRIME_CONTROL_SOFT_RESET_MASK  0x1u
/* FIELD: CRIME.control.cold_reset 11:11 established */
#define CRIME_CONTROL_COLD_RESET_SHIFT 11
#define CRIME_CONTROL_COLD_RESET_MASK  0x1u
/* FIELD: CRIME.control.sysadc_check_enable 12:12 established */
#define CRIME_CONTROL_SYSADC_CHECK_ENABLE_SHIFT 12
#define CRIME_CONTROL_SYSADC_CHECK_ENABLE_MASK  0x1u
/* FIELD: CRIME.control.sysadc_gen_enable 13:13 established */
#define CRIME_CONTROL_SYSADC_GEN_ENABLE_SHIFT 13
#define CRIME_CONTROL_SYSADC_GEN_ENABLE_MASK  0x1u
/* Bits 7:0 of control differ by revision (a filter field in the draft, queue high-water marks in the drivers) and are left undecoded. */
/* ---- interrupts ---- */
/* REG: CRIME.intstat 0x010 r64 reset=unknown established */
/* REG: CRIME.intmask 0x018 rw64 reset=0x0 established */
/* REG: CRIME.softint 0x020 rw64 reset=0x0 established */
/* REG: CRIME.hardint 0x028 rw64 reset=unknown established */
/* Edge-sensitive hardint bits are cleared by writing them to 0; level bits follow their source. */
/* FIELD: INTBIT.mace 15:0 established */
#define CRIME_INTBIT_MACE_SHIFT 0
#define CRIME_INTBIT_MACE_MASK  0xffffu
/* FIELD: INTBIT.gbe0 16:16 established */
#define CRIME_INTBIT_GBE0_SHIFT 16
#define CRIME_INTBIT_GBE0_MASK  0x1u
/* FIELD: INTBIT.gbe1 17:17 established */
#define CRIME_INTBIT_GBE1_SHIFT 17
#define CRIME_INTBIT_GBE1_MASK  0x1u
/* FIELD: INTBIT.gbe2 18:18 established */
#define CRIME_INTBIT_GBE2_SHIFT 18
#define CRIME_INTBIT_GBE2_MASK  0x1u
/* FIELD: INTBIT.gbe3 19:19 established */
#define CRIME_INTBIT_GBE3_SHIFT 19
#define CRIME_INTBIT_GBE3_MASK  0x1u
/* FIELD: INTBIT.cpu_error 20:20 established */
#define CRIME_INTBIT_CPU_ERROR_SHIFT 20
#define CRIME_INTBIT_CPU_ERROR_MASK  0x1u
/* FIELD: INTBIT.mem_error 21:21 established */
#define CRIME_INTBIT_MEM_ERROR_SHIFT 21
#define CRIME_INTBIT_MEM_ERROR_MASK  0x1u
/* FIELD: INTBIT.re_empty_edge 22:22 established */
#define CRIME_INTBIT_RE_EMPTY_EDGE_SHIFT 22
#define CRIME_INTBIT_RE_EMPTY_EDGE_MASK  0x1u
/* FIELD: INTBIT.re_full_edge 23:23 established */
#define CRIME_INTBIT_RE_FULL_EDGE_SHIFT 23
#define CRIME_INTBIT_RE_FULL_EDGE_MASK  0x1u
/* FIELD: INTBIT.re_idle_edge 24:24 established */
#define CRIME_INTBIT_RE_IDLE_EDGE_SHIFT 24
#define CRIME_INTBIT_RE_IDLE_EDGE_MASK  0x1u
/* FIELD: INTBIT.re_empty 25:25 established */
#define CRIME_INTBIT_RE_EMPTY_SHIFT 25
#define CRIME_INTBIT_RE_EMPTY_MASK  0x1u
/* FIELD: INTBIT.re_full 26:26 established */
#define CRIME_INTBIT_RE_FULL_SHIFT 26
#define CRIME_INTBIT_RE_FULL_MASK  0x1u
/* FIELD: INTBIT.re_idle 27:27 established */
#define CRIME_INTBIT_RE_IDLE_SHIFT 27
#define CRIME_INTBIT_RE_IDLE_MASK  0x1u
/* FIELD: INTBIT.soft0 28:28 established */
#define CRIME_INTBIT_SOFT0_SHIFT 28
#define CRIME_INTBIT_SOFT0_MASK  0x1u
/* FIELD: INTBIT.soft1 29:29 established */
#define CRIME_INTBIT_SOFT1_SHIFT 29
#define CRIME_INTBIT_SOFT1_MASK  0x1u
/* FIELD: INTBIT.syscorerr 30:30 established */
#define CRIME_INTBIT_SYSCORERR_SHIFT 30
#define CRIME_INTBIT_SYSCORERR_MASK  0x1u
/* FIELD: INTBIT.vice 31:31 established */
#define CRIME_INTBIT_VICE_SHIFT 31
#define CRIME_INTBIT_VICE_MASK  0x1u
/* REG: CRIME.watchdog 0x030 rw64 reset=0x0 established */
/* FIELD: CRIME.watchdog.count 19:0 established */
#define CRIME_WATCHDOG_COUNT_SHIFT 0
#define CRIME_WATCHDOG_COUNT_MASK  0xfffffu
/* FIELD: CRIME.watchdog.warm_reset_timeout 20:20 established */
#define CRIME_WATCHDOG_WARM_RESET_TIMEOUT_SHIFT 20
#define CRIME_WATCHDOG_WARM_RESET_TIMEOUT_MASK  0x1u
/* ---- CPU and VICE error capture ---- */
/* REG: CRIME.cpu_error_addr 0x040 r64 reset=unknown established */
/* REG: CRIME.cpu_error_stat 0x048 rw64 reset=0x0 established */
/* FIELD: CRIME.cpu_error_stat.cpu_write_parity 0:0 established */
#define CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_SHIFT 0
#define CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_MASK  0x1u
/* FIELD: CRIME.cpu_error_stat.vice_write_parity 1:1 established */
#define CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_SHIFT 1
#define CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_MASK  0x1u
/* FIELD: CRIME.cpu_error_stat.illegal_addr 2:2 established */
#define CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_SHIFT 2
#define CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_MASK  0x1u
/* Software clears the error bits by writing 0. */
/* REG: CRIME.cpu_error_ena 0x050 rw64 reset=unknown inferred */
/* cpu_error_ena exists on revision 0 parts only (ten status bits, meanings unknown); later parts lack it. */
/* REG: CRIME.vice_error_addr 0x058 r64 reset=unknown established */
/* REG: CRIME.cpu_error_stat_15 0x4048 rw64 reset=0x0 inferred */
/* cpu_error_stat_15 is the draft 1.5 position of cpu_error_stat; shipped software never touches it. */
/* ---- memory controller ---- */
/* REG: CRIME.mem_control 0x200 rw64 reset=0x0 established */
/* FIELD: CRIME.mem_control.ecc_enable 0:0 established */
#define CRIME_MEM_CONTROL_ECC_ENABLE_SHIFT 0
#define CRIME_MEM_CONTROL_ECC_ENABLE_MASK  0x1u
/* FIELD: CRIME.mem_control.use_repl_check 1:1 established */
#define CRIME_MEM_CONTROL_USE_REPL_CHECK_SHIFT 1
#define CRIME_MEM_CONTROL_USE_REPL_CHECK_MASK  0x1u
/* REG: CRIME.mem_bank_control 0x208 rw64 count=8 reset=unknown established */
/* FIELD: CRIME.mem_bank_control.sdram_geometry 8:8 established */
#define CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_SHIFT 8
#define CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_MASK  0x1u
/* FIELD: CRIME.mem_bank_control.base_match 4:0 established */
#define CRIME_MEM_BANK_CONTROL_BASE_MATCH_SHIFT 0
#define CRIME_MEM_BANK_CONTROL_BASE_MATCH_MASK  0x1fu
/* sdram_geometry selects 16 Mbit or 64 Mbit device geometry; base_match is compared with request address bits 29:25 for a 32 MiB bank. */
/* Reset values differ per bank, so the REG line's reset=unknown stands for none of them: bank n resets to n for n = 0 to 7
 * (established, [spec] table 6-14; no shipped software writes banks 2 to 7). With 32 MiB parts that puts bank n at n * 32 MiB. */
#define CRIME_MEM_BANK_CONTROL_RESET_BASE 0 /* established: reset of bank 0 */
#define CRIME_MEM_BANK_CONTROL_RESET_STEP 1 /* established: reset of bank n is BASE + n * STEP */
/* REG: CRIME.mem_error_stat 0x250 rw64 reset=unknown established */
/* The single hard/soft/multiple bits are cleared by writing 0. */
/* FIELD: CRIME.mem_error_stat.mace_id 6:0 established */
#define CRIME_MEM_ERROR_STAT_MACE_ID_SHIFT 0
#define CRIME_MEM_ERROR_STAT_MACE_ID_MASK  0x7fu
/* FIELD: CRIME.mem_error_stat.mace_access 7:7 established */
#define CRIME_MEM_ERROR_STAT_MACE_ACCESS_SHIFT 7
#define CRIME_MEM_ERROR_STAT_MACE_ACCESS_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.re_id 14:8 established */
#define CRIME_MEM_ERROR_STAT_RE_ID_SHIFT 8
#define CRIME_MEM_ERROR_STAT_RE_ID_MASK  0x7fu
/* FIELD: CRIME.mem_error_stat.re_access 15:15 established */
#define CRIME_MEM_ERROR_STAT_RE_ACCESS_SHIFT 15
#define CRIME_MEM_ERROR_STAT_RE_ACCESS_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.gbe_access 16:16 established */
#define CRIME_MEM_ERROR_STAT_GBE_ACCESS_SHIFT 16
#define CRIME_MEM_ERROR_STAT_GBE_ACCESS_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.vice_access 17:17 established */
#define CRIME_MEM_ERROR_STAT_VICE_ACCESS_SHIFT 17
#define CRIME_MEM_ERROR_STAT_VICE_ACCESS_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.cpu_access 18:18 established */
#define CRIME_MEM_ERROR_STAT_CPU_ACCESS_SHIFT 18
#define CRIME_MEM_ERROR_STAT_CPU_ACCESS_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.soft_error 20:20 established */
#define CRIME_MEM_ERROR_STAT_SOFT_ERROR_SHIFT 20
#define CRIME_MEM_ERROR_STAT_SOFT_ERROR_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.hard_error 21:21 established */
#define CRIME_MEM_ERROR_STAT_HARD_ERROR_SHIFT 21
#define CRIME_MEM_ERROR_STAT_HARD_ERROR_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.multiple_errors 22:22 established */
#define CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_SHIFT 22
#define CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.ecc_error_read 23:23 established */
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_SHIFT 23
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.ecc_error_rmw 24:24 established */
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_SHIFT 24
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.invalid_addr_read 25:25 established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_SHIFT 25
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.invalid_addr_write 26:26 established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_SHIFT 26
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_MASK  0x1u
/* FIELD: CRIME.mem_error_stat.invalid_addr_rmw 27:27 established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_SHIFT 27
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_MASK  0x1u
/* REG: CRIME.mem_error_addr 0x258 r64 reset=unknown established */
/* REG: CRIME.mem_error_ecc_syn 0x260 r64 reset=unknown established */
/* REG: CRIME.mem_error_ecc_chk 0x268 r64 reset=unknown established */
/* REG: CRIME.mem_error_ecc_repl 0x270 rw64 reset=unknown established */
/* FIELD: CRIME.mem_error_ecc_repl.check 7:0 established */
#define CRIME_MEM_ERROR_ECC_REPL_CHECK_SHIFT 0
#define CRIME_MEM_ERROR_ECC_REPL_CHECK_MASK  0xffu
/* check is replicated four times as the check bits written when mem_control.use_repl_check is set. */

/*
 * TESTVEC: 0x000000a1 as CRIME.id => family=10, rev=1
 */
/*
 * TESTVEC: 0x00002200 as CRIME.control => sysadc_gen_enable=1, sysadc_check_enable=0, watchdog_enable=1
 */
/*
 * TESTVEC: 0x00010000 as INTBIT => gbe0=1, gbe1=0, mace=0
 */
/*
 * TESTVEC: 0x04000000 as INTBIT => re_full=1, re_empty=0
 */
/*
 * TESTVEC: 0x00000004 as CRIME.cpu_error_stat => illegal_addr=1, cpu_write_parity=0
 */

#endif /* CRIME_DECODE_H */
