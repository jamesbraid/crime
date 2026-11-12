/* generated from defs/crime.toml by defs-gen - do not edit, change the source */
/* O2 CRIME memory controller and CPU interface registers */
#ifndef CRIME_GEN_H
#define CRIME_GEN_H

#include <stdint.h>


/* id: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_ID_OFFSET                              0x0u /* established */
#define CRIME_ID_FAMILY_SHIFT                        4 /* established */
#define CRIME_ID_FAMILY_MASK                         0xfull
#define CRIME_ID_FAMILY_INPLACE                      (CRIME_ID_FAMILY_MASK << CRIME_ID_FAMILY_SHIFT)
#define CRIME_ID_REV_SHIFT                           0 /* established */
#define CRIME_ID_REV_MASK                            0xfull
#define CRIME_ID_REV_INPLACE                         (CRIME_ID_REV_MASK << CRIME_ID_REV_SHIFT)

/* control: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_CONTROL_OFFSET                         0x8u /* established */
#define CRIME_CONTROL_SYSADC_GEN_ENABLE_SHIFT        13 /* established */
#define CRIME_CONTROL_SYSADC_GEN_ENABLE_MASK         0x1ull
#define CRIME_CONTROL_SYSADC_GEN_ENABLE_INPLACE      (CRIME_CONTROL_SYSADC_GEN_ENABLE_MASK << CRIME_CONTROL_SYSADC_GEN_ENABLE_SHIFT)
#define CRIME_CONTROL_SYSADC_CHECK_ENABLE_SHIFT      12 /* established */
#define CRIME_CONTROL_SYSADC_CHECK_ENABLE_MASK       0x1ull
#define CRIME_CONTROL_SYSADC_CHECK_ENABLE_INPLACE    (CRIME_CONTROL_SYSADC_CHECK_ENABLE_MASK << CRIME_CONTROL_SYSADC_CHECK_ENABLE_SHIFT)
#define CRIME_CONTROL_COLD_RESET_SHIFT               11 /* established */
#define CRIME_CONTROL_COLD_RESET_MASK                0x1ull
#define CRIME_CONTROL_COLD_RESET_INPLACE             (CRIME_CONTROL_COLD_RESET_MASK << CRIME_CONTROL_COLD_RESET_SHIFT)
#define CRIME_CONTROL_SOFT_RESET_SHIFT               10 /* established */
#define CRIME_CONTROL_SOFT_RESET_MASK                0x1ull
#define CRIME_CONTROL_SOFT_RESET_INPLACE             (CRIME_CONTROL_SOFT_RESET_MASK << CRIME_CONTROL_SOFT_RESET_SHIFT)
#define CRIME_CONTROL_WATCHDOG_ENABLE_SHIFT          9 /* established */
#define CRIME_CONTROL_WATCHDOG_ENABLE_MASK           0x1ull
#define CRIME_CONTROL_WATCHDOG_ENABLE_INPLACE        (CRIME_CONTROL_WATCHDOG_ENABLE_MASK << CRIME_CONTROL_WATCHDOG_ENABLE_SHIFT)
#define CRIME_CONTROL_ENDIAN_SHIFT                   8 /* established */
#define CRIME_CONTROL_ENDIAN_MASK                    0x1ull
#define CRIME_CONTROL_ENDIAN_INPLACE                 (CRIME_CONTROL_ENDIAN_MASK << CRIME_CONTROL_ENDIAN_SHIFT)

/* intstat: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_INTSTAT_OFFSET                         0x10u /* established */

/* intmask: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_INTMASK_OFFSET                         0x18u /* established */

/* softint: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_SOFTINT_OFFSET                         0x20u /* established */

/* hardint: rw64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_HARDINT_OFFSET                         0x28u /* established */

/* watchdog: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_WATCHDOG_OFFSET                        0x30u /* established */
#define CRIME_WATCHDOG_WARM_RESET_TIMEOUT_SHIFT      20 /* established */
#define CRIME_WATCHDOG_WARM_RESET_TIMEOUT_MASK       0x1ull
#define CRIME_WATCHDOG_WARM_RESET_TIMEOUT_INPLACE    (CRIME_WATCHDOG_WARM_RESET_TIMEOUT_MASK << CRIME_WATCHDOG_WARM_RESET_TIMEOUT_SHIFT)
#define CRIME_WATCHDOG_COUNT_SHIFT                   0 /* established */
#define CRIME_WATCHDOG_COUNT_MASK                    0xfffffull
#define CRIME_WATCHDOG_COUNT_INPLACE                 (CRIME_WATCHDOG_COUNT_MASK << CRIME_WATCHDOG_COUNT_SHIFT)

/*
 * Free-running counter. The specification defines bits 31:0 as read/write with reset zero and gives no field above bit 31 (established, [spec] PDF 113 places it at offset 0x38 and Table 5-15 on PDF 119 defines the low 32 bits). The same page gives a nominal rate of about 66.7 MHz (established as spec prose; not an oscillator measurement). NetBSD's crime header masks 48 bits, so the width above bit 31 is open (see docs/open-questions.md).
 */
/* timer: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_TIMER_OFFSET                           0x38u /* established */
#define CRIME_TIMER_COUNT_SHIFT                      0 /* established */
#define CRIME_TIMER_COUNT_MASK                       0xffffffffull
#define CRIME_TIMER_COUNT_INPLACE                    (CRIME_TIMER_COUNT_MASK << CRIME_TIMER_COUNT_SHIFT)

/* cpu_error_addr: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_CPU_ERROR_ADDR_OFFSET                  0x40u /* established */

/* cpu_error_stat: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_CPU_ERROR_STAT_OFFSET                  0x48u /* established */
#define CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_SHIFT      2 /* established */
#define CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_MASK       0x1ull
#define CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_INPLACE    (CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_MASK << CRIME_CPU_ERROR_STAT_ILLEGAL_ADDR_SHIFT)
#define CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_SHIFT 1 /* established */
#define CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_MASK  0x1ull
#define CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_INPLACE (CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_MASK << CRIME_CPU_ERROR_STAT_VICE_WRITE_PARITY_SHIFT)
#define CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_SHIFT  0 /* established */
#define CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_MASK   0x1ull
#define CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_INPLACE (CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_MASK << CRIME_CPU_ERROR_STAT_CPU_WRITE_PARITY_SHIFT)

/* cpu_error_ena: rw64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_CPU_ERROR_ENA_OFFSET                   0x50u /* inferred */

/* vice_error_addr: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_VICE_ERROR_ADDR_OFFSET                 0x58u /* established */

/* mem_control: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_CONTROL_OFFSET                     0x200u /* established */
#define CRIME_MEM_CONTROL_USE_REPL_CHECK_SHIFT       1 /* established */
#define CRIME_MEM_CONTROL_USE_REPL_CHECK_MASK        0x1ull
#define CRIME_MEM_CONTROL_USE_REPL_CHECK_INPLACE     (CRIME_MEM_CONTROL_USE_REPL_CHECK_MASK << CRIME_MEM_CONTROL_USE_REPL_CHECK_SHIFT)
#define CRIME_MEM_CONTROL_ECC_ENABLE_SHIFT           0 /* established */
#define CRIME_MEM_CONTROL_ECC_ENABLE_MASK            0x1ull
#define CRIME_MEM_CONTROL_ECC_ENABLE_INPLACE         (CRIME_MEM_CONTROL_ECC_ENABLE_MASK << CRIME_MEM_CONTROL_ECC_ENABLE_SHIFT)

/*
 * Bits 7:5 are reserved and read as zero (established, [spec] PDF 150 and 152, CRIME 1.5 specification rev 0.3).
 */
/* mem_bank_control: rw64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_BANK_CONTROL_OFFSET                0x208u /* established */
#define CRIME_MEM_BANK_CONTROL_COUNT                 8
#define CRIME_MEM_BANK_CONTROL_STRIDE                8
#define CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_SHIFT  8 /* established */
#define CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_MASK   0x1ull
#define CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_INPLACE (CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_MASK << CRIME_MEM_BANK_CONTROL_SDRAM_GEOMETRY_SHIFT)
#define CRIME_MEM_BANK_CONTROL_BASE_MATCH_SHIFT      0 /* established */
#define CRIME_MEM_BANK_CONTROL_BASE_MATCH_MASK       0x1full
#define CRIME_MEM_BANK_CONTROL_BASE_MATCH_INPLACE    (CRIME_MEM_BANK_CONTROL_BASE_MATCH_MASK << CRIME_MEM_BANK_CONTROL_BASE_MATCH_SHIFT)

/*
 * Reset values differ per bank, so the REG line's reset=unknown stands for none of them: bank n resets to n for n = 0 to 7
 * (established, [spec] table 6-14; no shipped software writes banks 2 to 7). With 32 MiB parts that puts bank n at n * 32 MiB.
 * #define CRIME_MEM_BANK_CONTROL_RESET_BASE 0 / * established: reset of bank 0
 * #define CRIME_MEM_BANK_CONTROL_RESET_STEP 1 / * established: reset of bank n is BASE + n * STEP
 */
/* mem_error_stat: rw64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_ERROR_STAT_OFFSET                  0x250u /* established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_SHIFT  27 /* established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_MASK   0x1ull
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_INPLACE (CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_MASK << CRIME_MEM_ERROR_STAT_INVALID_ADDR_RMW_SHIFT)
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_SHIFT 26 /* established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_MASK 0x1ull
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_INPLACE (CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_MASK << CRIME_MEM_ERROR_STAT_INVALID_ADDR_WRITE_SHIFT)
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_SHIFT 25 /* established */
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_MASK  0x1ull
#define CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_INPLACE (CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_MASK << CRIME_MEM_ERROR_STAT_INVALID_ADDR_READ_SHIFT)
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_SHIFT     24 /* established */
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_MASK      0x1ull
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_INPLACE   (CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_MASK << CRIME_MEM_ERROR_STAT_ECC_ERROR_RMW_SHIFT)
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_SHIFT    23 /* established */
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_MASK     0x1ull
#define CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_INPLACE  (CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_MASK << CRIME_MEM_ERROR_STAT_ECC_ERROR_READ_SHIFT)
#define CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_SHIFT   22 /* established */
#define CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_MASK    0x1ull
#define CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_INPLACE (CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_MASK << CRIME_MEM_ERROR_STAT_MULTIPLE_ERRORS_SHIFT)
#define CRIME_MEM_ERROR_STAT_HARD_ERROR_SHIFT        21 /* established */
#define CRIME_MEM_ERROR_STAT_HARD_ERROR_MASK         0x1ull
#define CRIME_MEM_ERROR_STAT_HARD_ERROR_INPLACE      (CRIME_MEM_ERROR_STAT_HARD_ERROR_MASK << CRIME_MEM_ERROR_STAT_HARD_ERROR_SHIFT)
#define CRIME_MEM_ERROR_STAT_SOFT_ERROR_SHIFT        20 /* established */
#define CRIME_MEM_ERROR_STAT_SOFT_ERROR_MASK         0x1ull
#define CRIME_MEM_ERROR_STAT_SOFT_ERROR_INPLACE      (CRIME_MEM_ERROR_STAT_SOFT_ERROR_MASK << CRIME_MEM_ERROR_STAT_SOFT_ERROR_SHIFT)
#define CRIME_MEM_ERROR_STAT_CPU_ACCESS_SHIFT        18 /* established */
#define CRIME_MEM_ERROR_STAT_CPU_ACCESS_MASK         0x1ull
#define CRIME_MEM_ERROR_STAT_CPU_ACCESS_INPLACE      (CRIME_MEM_ERROR_STAT_CPU_ACCESS_MASK << CRIME_MEM_ERROR_STAT_CPU_ACCESS_SHIFT)
#define CRIME_MEM_ERROR_STAT_VICE_ACCESS_SHIFT       17 /* established */
#define CRIME_MEM_ERROR_STAT_VICE_ACCESS_MASK        0x1ull
#define CRIME_MEM_ERROR_STAT_VICE_ACCESS_INPLACE     (CRIME_MEM_ERROR_STAT_VICE_ACCESS_MASK << CRIME_MEM_ERROR_STAT_VICE_ACCESS_SHIFT)
#define CRIME_MEM_ERROR_STAT_GBE_ACCESS_SHIFT        16 /* established */
#define CRIME_MEM_ERROR_STAT_GBE_ACCESS_MASK         0x1ull
#define CRIME_MEM_ERROR_STAT_GBE_ACCESS_INPLACE      (CRIME_MEM_ERROR_STAT_GBE_ACCESS_MASK << CRIME_MEM_ERROR_STAT_GBE_ACCESS_SHIFT)
#define CRIME_MEM_ERROR_STAT_RE_ACCESS_SHIFT         15 /* established */
#define CRIME_MEM_ERROR_STAT_RE_ACCESS_MASK          0x1ull
#define CRIME_MEM_ERROR_STAT_RE_ACCESS_INPLACE       (CRIME_MEM_ERROR_STAT_RE_ACCESS_MASK << CRIME_MEM_ERROR_STAT_RE_ACCESS_SHIFT)
#define CRIME_MEM_ERROR_STAT_RE_ID_SHIFT             8 /* established */
#define CRIME_MEM_ERROR_STAT_RE_ID_MASK              0x7full
#define CRIME_MEM_ERROR_STAT_RE_ID_INPLACE           (CRIME_MEM_ERROR_STAT_RE_ID_MASK << CRIME_MEM_ERROR_STAT_RE_ID_SHIFT)
#define CRIME_MEM_ERROR_STAT_MACE_ACCESS_SHIFT       7 /* established */
#define CRIME_MEM_ERROR_STAT_MACE_ACCESS_MASK        0x1ull
#define CRIME_MEM_ERROR_STAT_MACE_ACCESS_INPLACE     (CRIME_MEM_ERROR_STAT_MACE_ACCESS_MASK << CRIME_MEM_ERROR_STAT_MACE_ACCESS_SHIFT)
#define CRIME_MEM_ERROR_STAT_MACE_ID_SHIFT           0 /* established */
#define CRIME_MEM_ERROR_STAT_MACE_ID_MASK            0x7full
#define CRIME_MEM_ERROR_STAT_MACE_ID_INPLACE         (CRIME_MEM_ERROR_STAT_MACE_ID_MASK << CRIME_MEM_ERROR_STAT_MACE_ID_SHIFT)

/* mem_error_addr: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_ERROR_ADDR_OFFSET                  0x258u /* established */

/* mem_error_ecc_syn: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_ERROR_ECC_SYN_OFFSET               0x260u /* established */

/* mem_error_ecc_chk: r64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_ERROR_ECC_CHK_OFFSET               0x268u /* established */

/* mem_error_ecc_repl: rw64, reset unknown; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_MEM_ERROR_ECC_REPL_OFFSET              0x270u /* established */
#define CRIME_MEM_ERROR_ECC_REPL_CHECK_SHIFT         0 /* established */
#define CRIME_MEM_ERROR_ECC_REPL_CHECK_MASK          0xffull
#define CRIME_MEM_ERROR_ECC_REPL_CHECK_INPLACE       (CRIME_MEM_ERROR_ECC_REPL_CHECK_MASK << CRIME_MEM_ERROR_ECC_REPL_CHECK_SHIFT)

/* cpu_error_stat_15: rw64, reset 0x0; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_CPU_ERROR_STAT_15_OFFSET               0x4048u /* inferred */

/* word INTBIT: 32 bits; published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings */
#define CRIME_INTBIT_WIDTH                           32 /* established */
#define CRIME_INTBIT_VICE_SHIFT                      31 /* established */
#define CRIME_INTBIT_VICE_MASK                       0x1u
#define CRIME_INTBIT_VICE_INPLACE                    (CRIME_INTBIT_VICE_MASK << CRIME_INTBIT_VICE_SHIFT)
#define CRIME_INTBIT_SYSCORERR_SHIFT                 30 /* established */
#define CRIME_INTBIT_SYSCORERR_MASK                  0x1u
#define CRIME_INTBIT_SYSCORERR_INPLACE               (CRIME_INTBIT_SYSCORERR_MASK << CRIME_INTBIT_SYSCORERR_SHIFT)
#define CRIME_INTBIT_SOFT1_SHIFT                     29 /* established */
#define CRIME_INTBIT_SOFT1_MASK                      0x1u
#define CRIME_INTBIT_SOFT1_INPLACE                   (CRIME_INTBIT_SOFT1_MASK << CRIME_INTBIT_SOFT1_SHIFT)
#define CRIME_INTBIT_SOFT0_SHIFT                     28 /* established */
#define CRIME_INTBIT_SOFT0_MASK                      0x1u
#define CRIME_INTBIT_SOFT0_INPLACE                   (CRIME_INTBIT_SOFT0_MASK << CRIME_INTBIT_SOFT0_SHIFT)
#define CRIME_INTBIT_RE_IDLE_SHIFT                   27 /* established */
#define CRIME_INTBIT_RE_IDLE_MASK                    0x1u
#define CRIME_INTBIT_RE_IDLE_INPLACE                 (CRIME_INTBIT_RE_IDLE_MASK << CRIME_INTBIT_RE_IDLE_SHIFT)
#define CRIME_INTBIT_RE_FULL_SHIFT                   26 /* established */
#define CRIME_INTBIT_RE_FULL_MASK                    0x1u
#define CRIME_INTBIT_RE_FULL_INPLACE                 (CRIME_INTBIT_RE_FULL_MASK << CRIME_INTBIT_RE_FULL_SHIFT)
#define CRIME_INTBIT_RE_EMPTY_SHIFT                  25 /* established */
#define CRIME_INTBIT_RE_EMPTY_MASK                   0x1u
#define CRIME_INTBIT_RE_EMPTY_INPLACE                (CRIME_INTBIT_RE_EMPTY_MASK << CRIME_INTBIT_RE_EMPTY_SHIFT)
#define CRIME_INTBIT_RE_IDLE_EDGE_SHIFT              24 /* established */
#define CRIME_INTBIT_RE_IDLE_EDGE_MASK               0x1u
#define CRIME_INTBIT_RE_IDLE_EDGE_INPLACE            (CRIME_INTBIT_RE_IDLE_EDGE_MASK << CRIME_INTBIT_RE_IDLE_EDGE_SHIFT)
#define CRIME_INTBIT_RE_FULL_EDGE_SHIFT              23 /* established */
#define CRIME_INTBIT_RE_FULL_EDGE_MASK               0x1u
#define CRIME_INTBIT_RE_FULL_EDGE_INPLACE            (CRIME_INTBIT_RE_FULL_EDGE_MASK << CRIME_INTBIT_RE_FULL_EDGE_SHIFT)
#define CRIME_INTBIT_RE_EMPTY_EDGE_SHIFT             22 /* established */
#define CRIME_INTBIT_RE_EMPTY_EDGE_MASK              0x1u
#define CRIME_INTBIT_RE_EMPTY_EDGE_INPLACE           (CRIME_INTBIT_RE_EMPTY_EDGE_MASK << CRIME_INTBIT_RE_EMPTY_EDGE_SHIFT)
#define CRIME_INTBIT_MEM_ERROR_SHIFT                 21 /* established */
#define CRIME_INTBIT_MEM_ERROR_MASK                  0x1u
#define CRIME_INTBIT_MEM_ERROR_INPLACE               (CRIME_INTBIT_MEM_ERROR_MASK << CRIME_INTBIT_MEM_ERROR_SHIFT)
#define CRIME_INTBIT_CPU_ERROR_SHIFT                 20 /* established */
#define CRIME_INTBIT_CPU_ERROR_MASK                  0x1u
#define CRIME_INTBIT_CPU_ERROR_INPLACE               (CRIME_INTBIT_CPU_ERROR_MASK << CRIME_INTBIT_CPU_ERROR_SHIFT)
#define CRIME_INTBIT_GBE3_SHIFT                      19 /* established */
#define CRIME_INTBIT_GBE3_MASK                       0x1u
#define CRIME_INTBIT_GBE3_INPLACE                    (CRIME_INTBIT_GBE3_MASK << CRIME_INTBIT_GBE3_SHIFT)
#define CRIME_INTBIT_GBE2_SHIFT                      18 /* established */
#define CRIME_INTBIT_GBE2_MASK                       0x1u
#define CRIME_INTBIT_GBE2_INPLACE                    (CRIME_INTBIT_GBE2_MASK << CRIME_INTBIT_GBE2_SHIFT)
#define CRIME_INTBIT_GBE1_SHIFT                      17 /* established */
#define CRIME_INTBIT_GBE1_MASK                       0x1u
#define CRIME_INTBIT_GBE1_INPLACE                    (CRIME_INTBIT_GBE1_MASK << CRIME_INTBIT_GBE1_SHIFT)
#define CRIME_INTBIT_GBE0_SHIFT                      16 /* established */
#define CRIME_INTBIT_GBE0_MASK                       0x1u
#define CRIME_INTBIT_GBE0_INPLACE                    (CRIME_INTBIT_GBE0_MASK << CRIME_INTBIT_GBE0_SHIFT)
#define CRIME_INTBIT_MACE_SHIFT                      0 /* established */
#define CRIME_INTBIT_MACE_MASK                       0xffffu
#define CRIME_INTBIT_MACE_INPLACE                    (CRIME_INTBIT_MACE_MASK << CRIME_INTBIT_MACE_SHIFT)

#define CRIME_ID_FAMILY_SHIPPED                      0xa0u /* established */
#define CRIME_ID_LOW_BYTE_DRAFT                      0xb1u /* inferred */
#define CRIME_ID_LOW_BYTE_SHIPPED                    0xa1u /* established */
#define CRIME_MEM_BANKS                              0x8u /* established */
#define CRIME_MEM_BANK_CONTROL_RESET_BASE            0x0u /* established */
#define CRIME_MEM_BANK_CONTROL_RESET_STEP            0x1u /* established */
#define CRIME_PHYS_FULL_MEM_BASE                     0x40000000u /* established */
#define CRIME_PHYS_FULL_MEM_BYTES                    0x40000000u /* established */
#define CRIME_PHYS_HIGH_ALIAS_BASE                   0x20000000u /* established */
#define CRIME_PHYS_HIGH_ALIAS_BYTES                  0x20000000u /* established */
#define CRIME_PHYS_LOW_ALIAS_BASE                    0x0u /* established */
#define CRIME_PHYS_LOW_ALIAS_BYTES                   0x10000000u /* established */
#define CRIME_PHYS_NOECC_MEM_BASE                    0x80000000u /* established */
#define CRIME_PHYS_NOECC_MEM_BYTES                   0x40000000u /* established */
#define CRIME_WATCHDOG_COUNT_BITS                    0x14u /* established */

#endif /* CRIME_GEN_H */
