/* generated from defs/mace_periph.toml by defs-gen - do not edit, change the source */
/* O2 MACE peripheral ring base and interrupt status and mask */
#ifndef MACE_PERIPH_GEN_H
#define MACE_PERIPH_GEN_H

#include <stdint.h>


/*
 * Bit 0 asserts the external serial and parallel controller reset; it resets to one and writing zero releases it. Bits 31:15 hold the 32 KiB-aligned base of the peripheral DMA rings (established, printed page 123). Bits 14:1 are not described.
 */
/* ring_base: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PERIPH_RING_BASE_OFFSET                 0x0u /* established */
#define MACE_PERIPH_RING_BASE_DMA_RING_BASE_SHIFT    15 /* established */
#define MACE_PERIPH_RING_BASE_DMA_RING_BASE_MASK     0x1ffffull
#define MACE_PERIPH_RING_BASE_DMA_RING_BASE_INPLACE  (MACE_PERIPH_RING_BASE_DMA_RING_BASE_MASK << MACE_PERIPH_RING_BASE_DMA_RING_BASE_SHIFT)
#define MACE_PERIPH_RING_BASE_EXT_RESET_SHIFT        0 /* established */
#define MACE_PERIPH_RING_BASE_EXT_RESET_MASK         0x1ull
#define MACE_PERIPH_RING_BASE_EXT_RESET_INPLACE      (MACE_PERIPH_RING_BASE_EXT_RESET_MASK << MACE_PERIPH_RING_BASE_EXT_RESET_SHIFT)

/*
 * Level sources summed into CRIME interrupt groups. Bits 16, 22 and 28 are read/write for external parallel and serial-DMA edge requests; the other listed sources are read-only (established, printed page 125). Timer compares 0, 1 and 2 are bits 13, 14 and 15, the RTC is bit 8, serial device A is bit 20 and serial device B is bit 26 (established, printed page 125).
 */
/* periph_status: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PERIPH_PERIPH_STATUS_OFFSET             0x10u /* established */
#define MACE_PERIPH_PERIPH_STATUS_SERIAL_B_SHIFT     26 /* established */
#define MACE_PERIPH_PERIPH_STATUS_SERIAL_B_MASK      0x1ull
#define MACE_PERIPH_PERIPH_STATUS_SERIAL_B_INPLACE   (MACE_PERIPH_PERIPH_STATUS_SERIAL_B_MASK << MACE_PERIPH_PERIPH_STATUS_SERIAL_B_SHIFT)
#define MACE_PERIPH_PERIPH_STATUS_SERIAL_A_SHIFT     20 /* established */
#define MACE_PERIPH_PERIPH_STATUS_SERIAL_A_MASK      0x1ull
#define MACE_PERIPH_PERIPH_STATUS_SERIAL_A_INPLACE   (MACE_PERIPH_PERIPH_STATUS_SERIAL_A_MASK << MACE_PERIPH_PERIPH_STATUS_SERIAL_A_SHIFT)
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP2_SHIFT   15 /* established */
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP2_MASK    0x1ull
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP2_INPLACE (MACE_PERIPH_PERIPH_STATUS_TIMER_CMP2_MASK << MACE_PERIPH_PERIPH_STATUS_TIMER_CMP2_SHIFT)
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP1_SHIFT   14 /* established */
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP1_MASK    0x1ull
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP1_INPLACE (MACE_PERIPH_PERIPH_STATUS_TIMER_CMP1_MASK << MACE_PERIPH_PERIPH_STATUS_TIMER_CMP1_SHIFT)
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP0_SHIFT   13 /* established */
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP0_MASK    0x1ull
#define MACE_PERIPH_PERIPH_STATUS_TIMER_CMP0_INPLACE (MACE_PERIPH_PERIPH_STATUS_TIMER_CMP0_MASK << MACE_PERIPH_PERIPH_STATUS_TIMER_CMP0_SHIFT)
#define MACE_PERIPH_PERIPH_STATUS_RTC_SHIFT          8 /* established */
#define MACE_PERIPH_PERIPH_STATUS_RTC_MASK           0x1ull
#define MACE_PERIPH_PERIPH_STATUS_RTC_INPLACE        (MACE_PERIPH_PERIPH_STATUS_RTC_MASK << MACE_PERIPH_PERIPH_STATUS_RTC_SHIFT)

/*
 * Gates delivery of the status bits. A mask bit does not clear the device condition behind a status bit (established, printed pages 125 and 147). Reset value not stated.
 */
/* periph_mask: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PERIPH_PERIPH_MASK_OFFSET               0x18u /* established */

#define MACE_PERIPH_BLOCK_BASE                       0x1f310000u /* established */

#endif /* MACE_PERIPH_GEN_H */
