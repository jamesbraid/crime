/* generated from defs/mace_timer.toml by defs-gen - do not edit, change the source */
/* O2 MACE free-running counter and three compare registers */
#ifndef MACE_TIMER_GEN_H
#define MACE_TIMER_GEN_H

#include <stdint.h>


/*
 * One 32-bit counter, clocked every 960 ns (the 33.333 MHz PCI clock divided by 32). It starts at zero on power-on reset and wraps in 32 bits (established, printed page 147). The prose calls it read-only while the register table labels it read/write (printed page 148); the access is open (see docs/open-questions.md).
 */
/* counter: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_COUNTER_OFFSET                    0x0u /* established */
#define MACE_TIMER_COUNTER_COUNT_SHIFT               0 /* established */
#define MACE_TIMER_COUNTER_COUNT_MASK                0xffffffffull
#define MACE_TIMER_COUNTER_COUNT_INPLACE             (MACE_TIMER_COUNTER_COUNT_MASK << MACE_TIMER_COUNTER_COUNT_SHIFT)

/*
 * 32-bit compare. Equality sets level interrupt latch 0, which drives peripheral status bit 13. Writing the register clears the latch, and the latch resets low. The reset value of the compare is not stated (established, printed page 147).
 */
/* cmp0: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_CMP0_OFFSET                       0x8u /* established */
#define MACE_TIMER_CMP0_VALUE_SHIFT                  0 /* established */
#define MACE_TIMER_CMP0_VALUE_MASK                   0xffffffffull
#define MACE_TIMER_CMP0_VALUE_INPLACE                (MACE_TIMER_CMP0_VALUE_MASK << MACE_TIMER_CMP0_VALUE_SHIFT)

/*
 * 32-bit compare. Equality sets level interrupt latch 1, which drives peripheral status bit 14. Writing clears the latch. Reset value not stated (established, printed page 147).
 */
/* cmp1: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_CMP1_OFFSET                       0x10u /* established */
#define MACE_TIMER_CMP1_VALUE_SHIFT                  0 /* established */
#define MACE_TIMER_CMP1_VALUE_MASK                   0xffffffffull
#define MACE_TIMER_CMP1_VALUE_INPLACE                (MACE_TIMER_CMP1_VALUE_MASK << MACE_TIMER_CMP1_VALUE_SHIFT)

/*
 * 32-bit compare. Equality sets level interrupt latch 2, which drives peripheral status bit 15. Writing clears the latch. Reset value not stated (established, printed page 147).
 */
/* cmp2: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_CMP2_OFFSET                       0x18u /* established */
#define MACE_TIMER_CMP2_VALUE_SHIFT                  0 /* established */
#define MACE_TIMER_CMP2_VALUE_MASK                   0xffffffffull
#define MACE_TIMER_CMP2_VALUE_INPLACE                (MACE_TIMER_CMP2_VALUE_MASK << MACE_TIMER_CMP2_VALUE_SHIFT)

#define MACE_TIMER_BLOCK_BASE                        0x1f340000u /* established */

#endif /* MACE_TIMER_GEN_H */
