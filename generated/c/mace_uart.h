/* generated from devices/mace_uart/registers.toml by defs-gen - do not edit, change the source */
/* O2 MACE external 16550-compatible serial port: modem control and scratch registers */
#ifndef MACE_UART_GEN_H
#define MACE_UART_GEN_H

#include <stdint.h>


/*
 * Modem control register of one port. Master reset clears every bit, and bits 6 and 7 are permanently zero (inferred, printed page 25). Bit 3 enables the port's external serial interrupt output (inferred, printed page 30).
 */
/* mcr: rw8, reset 0x0; TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996) */
#define MACE_UART_MCR_OFFSET                         0x400u /* inferred */
#define MACE_UART_MCR_EXT_INT_ENABLE_SHIFT           3 /* inferred */
#define MACE_UART_MCR_EXT_INT_ENABLE_MASK            0x1u
#define MACE_UART_MCR_EXT_INT_ENABLE_INPLACE         (MACE_UART_MCR_EXT_INT_ENABLE_MASK << MACE_UART_MCR_EXT_INT_ENABLE_SHIFT)

/*
 * Scratch byte for programmer use, with DLAB clear. Master reset has no effect on it (inferred, printed page 25). With DLAB set, the same position holds the clock prescaler and the infrared select. That use has no field here: the sources disagree on the infrared bit, which docs/mace-base.md records.
 */
/* scratch: rw8, reset unknown; TI TL16PIR552PH data sheet, SLLS222A (December 1995, revised August 1996) */
#define MACE_UART_SCRATCH_OFFSET                     0x700u /* inferred */

#endif /* MACE_UART_GEN_H */
