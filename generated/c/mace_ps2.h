/* generated from devices/mace_ps2/registers.toml by defs-gen - do not edit, change the source */
/* O2 MACE PS/2 keyboard and mouse ports */
#ifndef MACE_PS2_GEN_H
#define MACE_PS2_GEN_H

#include <stdint.h>


/*
 * Transmit buffer, bits 7:0: the byte currently shifted out of the data line (established, printed page 140, table 71). Write only. Reset zero (established, printed page 141).
 */
/* transmit: w64, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) */
#define MACE_PS2_TRANSMIT_OFFSET                     0x0u /* established */
#define MACE_PS2_TRANSMIT_BYTE_SHIFT                 0 /* established */
#define MACE_PS2_TRANSMIT_BYTE_MASK                  0xffull
#define MACE_PS2_TRANSMIT_BYTE_INPLACE               (MACE_PS2_TRANSMIT_BYTE_MASK << MACE_PS2_TRANSMIT_BYTE_SHIFT)

/*
 * Receive buffer. Bits 7:0 are the byte currently shifted in from the data line; bits 15:8 are an alias of the status register (established, printed page 140, table 72). Read only. Both parts reset to zero (established, printed page 140). The status table resets status bit 1, which this alias mirrors at bit 9, to one (printed page 142), so the alias reset conflicts between the two tables (established as printed; the reset level of bit 9 is unknown).
 */
/* receive: r64, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) */
#define MACE_PS2_RECEIVE_OFFSET                      0x8u /* established */
#define MACE_PS2_RECEIVE_STATUS_ALIAS_SHIFT          8 /* established */
#define MACE_PS2_RECEIVE_STATUS_ALIAS_MASK           0xffull
#define MACE_PS2_RECEIVE_STATUS_ALIAS_INPLACE        (MACE_PS2_RECEIVE_STATUS_ALIAS_MASK << MACE_PS2_RECEIVE_STATUS_ALIAS_SHIFT)
#define MACE_PS2_RECEIVE_BYTE_SHIFT                  0 /* established */
#define MACE_PS2_RECEIVE_BYTE_MASK                   0xffull
#define MACE_PS2_RECEIVE_BYTE_INPLACE                (MACE_PS2_RECEIVE_BYTE_MASK << MACE_PS2_RECEIVE_BYTE_SHIFT)

/*
 * Command and control, bits 5:0 (established, printed page 141, table 73). Reset to 0x10, which sets only the clock-permit bit (established, printed page 141). Bits 7:6 are not defined.
 */
/* control: rw64, reset 0x10; published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) */
#define MACE_PS2_CONTROL_OFFSET                      0x10u /* established */
#define MACE_PS2_CONTROL_INTERNAL_RESET_SHIFT        5 /* established */
#define MACE_PS2_CONTROL_INTERNAL_RESET_MASK         0x1ull
#define MACE_PS2_CONTROL_INTERNAL_RESET_INPLACE      (MACE_PS2_CONTROL_INTERNAL_RESET_MASK << MACE_PS2_CONTROL_INTERNAL_RESET_SHIFT)
#define MACE_PS2_CONTROL_CLOCK_PERMIT_SHIFT          4 /* established */
#define MACE_PS2_CONTROL_CLOCK_PERMIT_MASK           0x1ull
#define MACE_PS2_CONTROL_CLOCK_PERMIT_INPLACE        (MACE_PS2_CONTROL_CLOCK_PERMIT_MASK << MACE_PS2_CONTROL_CLOCK_PERMIT_SHIFT)
#define MACE_PS2_CONTROL_RECEIVE_INTERRUPT_ENABLE_SHIFT 3 /* established */
#define MACE_PS2_CONTROL_RECEIVE_INTERRUPT_ENABLE_MASK 0x1ull
#define MACE_PS2_CONTROL_RECEIVE_INTERRUPT_ENABLE_INPLACE (MACE_PS2_CONTROL_RECEIVE_INTERRUPT_ENABLE_MASK << MACE_PS2_CONTROL_RECEIVE_INTERRUPT_ENABLE_SHIFT)
#define MACE_PS2_CONTROL_TRANSMIT_INTERRUPT_ENABLE_SHIFT 2 /* established */
#define MACE_PS2_CONTROL_TRANSMIT_INTERRUPT_ENABLE_MASK 0x1ull
#define MACE_PS2_CONTROL_TRANSMIT_INTERRUPT_ENABLE_INPLACE (MACE_PS2_CONTROL_TRANSMIT_INTERRUPT_ENABLE_MASK << MACE_PS2_CONTROL_TRANSMIT_INTERRUPT_ENABLE_SHIFT)
#define MACE_PS2_CONTROL_TRANSMIT_ENABLE_SHIFT       1 /* established */
#define MACE_PS2_CONTROL_TRANSMIT_ENABLE_MASK        0x1ull
#define MACE_PS2_CONTROL_TRANSMIT_ENABLE_INPLACE     (MACE_PS2_CONTROL_TRANSMIT_ENABLE_MASK << MACE_PS2_CONTROL_TRANSMIT_ENABLE_SHIFT)
#define MACE_PS2_CONTROL_INHIBIT_AFTER_TRANSMIT_SHIFT 0 /* established */
#define MACE_PS2_CONTROL_INHIBIT_AFTER_TRANSMIT_MASK 0x1ull
#define MACE_PS2_CONTROL_INHIBIT_AFTER_TRANSMIT_INPLACE (MACE_PS2_CONTROL_INHIBIT_AFTER_TRANSMIT_MASK << MACE_PS2_CONTROL_INHIBIT_AFTER_TRANSMIT_SHIFT)

/*
 * Transmit and receive status and error flags, bits 7:0 (established, printed page 142, table 74). Read only. The table gives bit 0 an unknown reset level and bit 3 a reset of zero, which the table prints although the transmitter is idle; bit 1 resets to one. No single reset word is given, so the register has no fixed reset value (unknown).
 */
/* status: r64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 139 to 142 and 181) */
#define MACE_PS2_STATUS_OFFSET                       0x18u /* established */
#define MACE_PS2_STATUS_FRAMING_ERROR_SHIFT          7 /* established */
#define MACE_PS2_STATUS_FRAMING_ERROR_MASK           0x1ull
#define MACE_PS2_STATUS_FRAMING_ERROR_INPLACE        (MACE_PS2_STATUS_FRAMING_ERROR_MASK << MACE_PS2_STATUS_FRAMING_ERROR_SHIFT)
#define MACE_PS2_STATUS_PARITY_ERROR_SHIFT           6 /* established */
#define MACE_PS2_STATUS_PARITY_ERROR_MASK            0x1ull
#define MACE_PS2_STATUS_PARITY_ERROR_INPLACE         (MACE_PS2_STATUS_PARITY_ERROR_MASK << MACE_PS2_STATUS_PARITY_ERROR_SHIFT)
#define MACE_PS2_STATUS_RECEPTION_IN_PROGRESS_SHIFT  5 /* established */
#define MACE_PS2_STATUS_RECEPTION_IN_PROGRESS_MASK   0x1ull
#define MACE_PS2_STATUS_RECEPTION_IN_PROGRESS_INPLACE (MACE_PS2_STATUS_RECEPTION_IN_PROGRESS_MASK << MACE_PS2_STATUS_RECEPTION_IN_PROGRESS_SHIFT)
#define MACE_PS2_STATUS_RECEIVE_FULL_SHIFT           4 /* established */
#define MACE_PS2_STATUS_RECEIVE_FULL_MASK            0x1ull
#define MACE_PS2_STATUS_RECEIVE_FULL_INPLACE         (MACE_PS2_STATUS_RECEIVE_FULL_MASK << MACE_PS2_STATUS_RECEIVE_FULL_SHIFT)
#define MACE_PS2_STATUS_TRANSMIT_EMPTY_SHIFT         3 /* established */
#define MACE_PS2_STATUS_TRANSMIT_EMPTY_MASK          0x1ull
#define MACE_PS2_STATUS_TRANSMIT_EMPTY_INPLACE       (MACE_PS2_STATUS_TRANSMIT_EMPTY_MASK << MACE_PS2_STATUS_TRANSMIT_EMPTY_SHIFT)
#define MACE_PS2_STATUS_TRANSMIT_IN_PROGRESS_SHIFT   2 /* established */
#define MACE_PS2_STATUS_TRANSMIT_IN_PROGRESS_MASK    0x1ull
#define MACE_PS2_STATUS_TRANSMIT_IN_PROGRESS_INPLACE (MACE_PS2_STATUS_TRANSMIT_IN_PROGRESS_MASK << MACE_PS2_STATUS_TRANSMIT_IN_PROGRESS_SHIFT)
#define MACE_PS2_STATUS_CLOCK_PERMITTED_SHIFT        1 /* established */
#define MACE_PS2_STATUS_CLOCK_PERMITTED_MASK         0x1ull
#define MACE_PS2_STATUS_CLOCK_PERMITTED_INPLACE      (MACE_PS2_STATUS_CLOCK_PERMITTED_MASK << MACE_PS2_STATUS_CLOCK_PERMITTED_SHIFT)
#define MACE_PS2_STATUS_CLOCK_LEVEL_SHIFT            0 /* established */
#define MACE_PS2_STATUS_CLOCK_LEVEL_MASK             0x1ull
#define MACE_PS2_STATUS_CLOCK_LEVEL_INPLACE          (MACE_PS2_STATUS_CLOCK_LEVEL_MASK << MACE_PS2_STATUS_CLOCK_LEVEL_SHIFT)

#define MACE_PS2_BLOCK_BASE                          0x1f320000u /* established */
#define MACE_PS2_DEVICE_POLL_INTERVAL_US             0x64u /* established */
#define MACE_PS2_FRAME_BITS                          0xbu /* established */
#define MACE_PS2_KEYBOARD_BASE                       0x0u /* established */
#define MACE_PS2_MOUSE_BASE                          0x20u /* established */

#endif /* MACE_PS2_GEN_H */
