/* generated from devices/crime/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 5 */
/* input sha256 475ae8eab2315b4e1f89a9a4e5e3c302a70b6dd9df45c811f426d6a2bf22d22c */
/* O2 CRIME memory controller and CPU interface registers */
/* Names are IP32_CRIME_*; name source: ours. */
#ifndef HW_SGI_GPU_IP32_CRIME_REGS_H
#define HW_SGI_GPU_IP32_CRIME_REGS_H

#include "hw/core/registerfields.h"

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_ID, 0x0)
FIELD(IP32_CRIME_ID, FAMILY, 4, 4) /* established */
FIELD(IP32_CRIME_ID, REV, 0, 4) /* established */

REG64(IP32_CRIME_CONTROL, 0x8) /* established */
#define IP32_CRIME_CONTROL_RESET 0x0ull /* inferred */
FIELD(IP32_CRIME_CONTROL, SYSADC_GEN_ENABLE, 13, 1) /* established */
FIELD(IP32_CRIME_CONTROL, SYSADC_CHECK_ENABLE, 12, 1) /* established */
FIELD(IP32_CRIME_CONTROL, COLD_RESET, 11, 1) /* established */
FIELD(IP32_CRIME_CONTROL, SOFT_RESET, 10, 1) /* established */
FIELD(IP32_CRIME_CONTROL, WATCHDOG_ENABLE, 9, 1) /* established */
FIELD(IP32_CRIME_CONTROL, ENDIAN, 8, 1) /* established */
FIELD(IP32_CRIME_CONTROL, JUICE_MODE, 5, 3) /* established */

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_INTSTAT, 0x10)

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_INTMASK, 0x18)
#define IP32_CRIME_INTMASK_RESET 0x0ull /* established */
FIELD(IP32_CRIME_INTMASK, ENABLE, 0, 32) /* established */

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_SOFTINT, 0x20)
#define IP32_CRIME_SOFTINT_RESET 0x0ull /* established */

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_HARDINT, 0x28)

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_WATCHDOG, 0x30)
#define IP32_CRIME_WATCHDOG_RESET 0x0ull /* established */
FIELD(IP32_CRIME_WATCHDOG, WARM_RESET_TIMEOUT, 20, 1) /* established */
FIELD(IP32_CRIME_WATCHDOG, COUNT, 0, 20) /* established */

/* established; name source: public (CRIME 1.5 Specification, revision 0.3 (2
 * June 1997), register tables) */
REG64(IP32_CRIME_TIMER, 0x38)
#define IP32_CRIME_TIMER_RESET 0x0ull /* established */
FIELD(IP32_CRIME_TIMER, COUNT, 0, 32) /* established */

REG64(IP32_CRIME_CPU_ERROR_ADDR, 0x40) /* established */
FIELD(IP32_CRIME_CPU_ERROR_ADDR, ADDR_33_2, 0, 32) /* established */

REG64(IP32_CRIME_CPU_ERROR_STAT, 0x48) /* established */
#define IP32_CRIME_CPU_ERROR_STAT_RESET 0x0ull /* inferred */
FIELD(IP32_CRIME_CPU_ERROR_STAT, ADDR_39_34, 3, 6) /* unknown */
FIELD(IP32_CRIME_CPU_ERROR_STAT, ILLEGAL_ADDR, 2, 1) /* established */
FIELD(IP32_CRIME_CPU_ERROR_STAT, VICE_WRITE_PARITY, 1, 1) /* established */
FIELD(IP32_CRIME_CPU_ERROR_STAT, CPU_WRITE_PARITY, 0, 1) /* established */

/* inferred; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_CPU_ERROR_ENA, 0x50)

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_VICE_ERROR_ADDR, 0x58)

REG64(IP32_CRIME_MEM_CONTROL, 0x200) /* established */
#define IP32_CRIME_MEM_CONTROL_RESET 0x0ull /* established */
FIELD(IP32_CRIME_MEM_CONTROL, USE_REPL_CHECK, 1, 1) /* established */
FIELD(IP32_CRIME_MEM_CONTROL, ECC_ENABLE, 0, 1) /* established */

REG64(IP32_CRIME_MEM_BANK_CONTROL, 0x208) /* established */
#define IP32_CRIME_MEM_BANK_CONTROL_COUNT 8
#define IP32_CRIME_MEM_BANK_CONTROL_STRIDE 0x8
FIELD(IP32_CRIME_MEM_BANK_CONTROL, SDRAM_GEOMETRY, 8, 1) /* established */
FIELD(IP32_CRIME_MEM_BANK_CONTROL, BASE_MATCH, 0, 5) /* established */

REG64(IP32_CRIME_MEM_REFRESH, 0x248) /* established */
FIELD(IP32_CRIME_MEM_REFRESH, REFRESH_COUNT, 0, 11) /* established */

REG64(IP32_CRIME_MEM_ERROR_STAT, 0x250) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, INVALID_ADDR_RMW, 27, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, INVALID_ADDR_WRITE, 26, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, INVALID_ADDR_READ, 25, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, ECC_ERROR_RMW, 24, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, ECC_ERROR_READ, 23, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, MULTIPLE_ERRORS, 22, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, HARD_ERROR, 21, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, SOFT_ERROR, 20, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, CPU_ACCESS, 18, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, VICE_ACCESS, 17, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, GBE_ACCESS, 16, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, RE_ACCESS, 15, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, RE_ID, 8, 7) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, MACE_ACCESS, 7, 1) /* established */
FIELD(IP32_CRIME_MEM_ERROR_STAT, MACE_ID, 0, 7) /* established */

/* established; name source: ours (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_MEM_ERROR_ADDR, 0x258)
FIELD(IP32_CRIME_MEM_ERROR_ADDR, ADDRESS, 0, 30) /* established */

/* established; name source: ours (CRIME 1.5 specification, Table 6-18 (ECC
 * Syndrome Bits)) */
REG64(IP32_CRIME_MEM_ERROR_ECC_SYN, 0x260)
FIELD(IP32_CRIME_MEM_ERROR_ECC_SYN, SYN_255_192, 24, 8) /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_SYN, SYN_191_128, 16, 8) /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_SYN, SYN_127_64, 8, 8) /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_SYN, SYN_63_0, 0, 8) /* established */

/* established; name source: ours (CRIME 1.5 specification, Table 6-19 (ECC
 * Generated Check Bits)) */
REG64(IP32_CRIME_MEM_ERROR_ECC_CHK, 0x268)
FIELD(IP32_CRIME_MEM_ERROR_ECC_CHK, CHK_255_192, 24, 8) /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_CHK, CHK_191_128, 16, 8) /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_CHK, CHK_127_64, 8, 8) /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_CHK, CHK_63_0, 0, 8) /* established */

/* established; name source: public (public NetBSD sgimips crimereg.h and Linux
 * ip32/crime.h register macro names) */
REG64(IP32_CRIME_MEM_ERROR_ECC_REPL, 0x270)
#define IP32_CRIME_MEM_ERROR_ECC_REPL_RESET 0x0ull /* established */
FIELD(IP32_CRIME_MEM_ERROR_ECC_REPL, CHECK, 0, 8) /* established */

REG64(IP32_CRIME_CPU_ERROR_STAT_15, 0x4048) /* inferred */
#define IP32_CRIME_CPU_ERROR_STAT_15_RESET 0x0ull /* inferred */
FIELD(IP32_CRIME_CPU_ERROR_STAT_15, ADDR_39_34, 3, 6) /* established */
FIELD(IP32_CRIME_CPU_ERROR_STAT_15, ILLEGAL_ADDR, 2, 1) /* established */
FIELD(IP32_CRIME_CPU_ERROR_STAT_15, VICE_WRITE_PARITY, 1, 1) /* established */
FIELD(IP32_CRIME_CPU_ERROR_STAT_15, CPU_WRITE_PARITY, 0, 1) /* established */

#define IP32_CRIME_INTBIT_WIDTH 32 /* established; word */
FIELD(IP32_CRIME_INTBIT, VICE, 31, 1) /* established */
FIELD(IP32_CRIME_INTBIT, SYSCORERR, 30, 1) /* established */
FIELD(IP32_CRIME_INTBIT, SOFT1, 29, 1) /* established */
FIELD(IP32_CRIME_INTBIT, SOFT0, 28, 1) /* established */
FIELD(IP32_CRIME_INTBIT, RE_IDLE, 27, 1) /* established */
FIELD(IP32_CRIME_INTBIT, RE_FULL, 26, 1) /* established */
FIELD(IP32_CRIME_INTBIT, RE_EMPTY, 25, 1) /* established */
FIELD(IP32_CRIME_INTBIT, RE_IDLE_EDGE, 24, 1) /* established */
FIELD(IP32_CRIME_INTBIT, RE_FULL_EDGE, 23, 1) /* established */
FIELD(IP32_CRIME_INTBIT, RE_EMPTY_EDGE, 22, 1) /* established */
FIELD(IP32_CRIME_INTBIT, MEM_ERROR, 21, 1) /* established */
FIELD(IP32_CRIME_INTBIT, CPU_ERROR, 20, 1) /* established */
FIELD(IP32_CRIME_INTBIT, GBE3, 19, 1) /* established */
FIELD(IP32_CRIME_INTBIT, GBE2, 18, 1) /* established */
FIELD(IP32_CRIME_INTBIT, GBE1, 17, 1) /* established */
FIELD(IP32_CRIME_INTBIT, GBE0, 16, 1) /* established */
FIELD(IP32_CRIME_INTBIT, MACE, 0, 16) /* established */

#define IP32_CRIME_BLOCK_ADDR 0x14000000u /* established */
#define IP32_CRIME_DEPTH_APERTURE_ADDR 0x12000000u /* inferred */
#define IP32_CRIME_FRAME_APERTURE_ADDR 0x10000000u /* inferred */
#define IP32_CRIME_GBE_WINDOW_ADDR 0x16000000u /* inferred */
#define IP32_CRIME_ID_FAMILY_ACCEPTED 0xau /* established */
#define IP32_CRIME_ID_FAMILY_SHIPPED 0xa0u /* established */
#define IP32_CRIME_ID_LOW_BYTE_DRAFT 0xb1u /* inferred */
#define IP32_CRIME_ID_LOW_BYTE_SHIPPED 0xa1u /* established */
#define IP32_CRIME_ID_REFUSED_BYTE 0xa0u /* established */
#define IP32_CRIME_IP2_CAUSES 0x8fc00038u /* established */
#define IP32_CRIME_IP3_CAUSES 0xfff07u /* established */
#define IP32_CRIME_IP4_CAUSES 0x10000000u /* established */
#define IP32_CRIME_IP5_CAUSES 0x20000040u /* established */
#define IP32_CRIME_IP6_CAUSES 0x40300080u /* established */
#define IP32_CRIME_IRQ_MACE_ISA_A 0x4u /* established */
#define IP32_CRIME_IRQ_MACE_ISA_B 0x5u /* established */
#define IP32_CRIME_LINE_MATCH_LATCHES 0x4u /* inferred */
#define IP32_CRIME_MACE_WINDOW_ADDR 0x18000000u /* inferred */
#define IP32_CRIME_MEM_BANKS 0x8u /* established */
#define IP32_CRIME_MEM_BANK_CONTROL_RESET_BASE 0x0u /* established */
#define IP32_CRIME_MEM_BANK_CONTROL_RESET_STEP 0x1u /* established */
#define IP32_CRIME_PHYS_FULL_MEM_BASE 0x40000000u /* established */
#define IP32_CRIME_PHYS_FULL_MEM_BYTES 0x40000000u /* established */
#define IP32_CRIME_PHYS_HIGH_ALIAS_BASE 0x20000000u /* established */
#define IP32_CRIME_PHYS_HIGH_ALIAS_BYTES 0x20000000u /* established */
#define IP32_CRIME_PHYS_LOW_ALIAS_BASE 0x0u /* established */
#define IP32_CRIME_PHYS_LOW_ALIAS_BYTES 0x10000000u /* established */
#define IP32_CRIME_PHYS_NOECC_MEM_BASE 0x80000000u /* established */
#define IP32_CRIME_PHYS_NOECC_MEM_BYTES 0x40000000u /* established */
#define IP32_CRIME_TIME_RESOLUTION 0x3a98u /* established */
#define IP32_CRIME_WATCHDOG_COUNT_BITS 0x14u /* established */

#endif /* HW_SGI_GPU_IP32_CRIME_REGS_H */
