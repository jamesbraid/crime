/* generated from defs/mace_i2c.toml by defs-gen - do not edit, change the source */
/* O2 MACE two-wire (I2C) bus interface */
#ifndef MACE_I2C_GEN_H
#define MACE_I2C_GEN_H

#include <stdint.h>


/*
 * Bus configuration and reset, bits 5:0 (established, printed pages 150 and 151, tables 76 and 79). Bits 0 to 3 are read/write and reset to zero. Bits 4 and 5 are read-only input levels with no fixed reset value, so the register has no single reset value (table 79 marks them X).
 */
/* config: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) */
#define MACE_I2C_CONFIG_OFFSET                       0x0u /* established */
#define MACE_I2C_CONFIG_CLOCK_IN_SHIFT               5 /* established */
#define MACE_I2C_CONFIG_CLOCK_IN_MASK                0x1ull
#define MACE_I2C_CONFIG_CLOCK_IN_INPLACE             (MACE_I2C_CONFIG_CLOCK_IN_MASK << MACE_I2C_CONFIG_CLOCK_IN_SHIFT)
#define MACE_I2C_CONFIG_DATA_IN_SHIFT                4 /* established */
#define MACE_I2C_CONFIG_DATA_IN_MASK                 0x1ull
#define MACE_I2C_CONFIG_DATA_IN_INPLACE              (MACE_I2C_CONFIG_DATA_IN_MASK << MACE_I2C_CONFIG_DATA_IN_SHIFT)
#define MACE_I2C_CONFIG_CLOCK_PIN_OVERRIDE_SHIFT     3 /* established */
#define MACE_I2C_CONFIG_CLOCK_PIN_OVERRIDE_MASK      0x1ull
#define MACE_I2C_CONFIG_CLOCK_PIN_OVERRIDE_INPLACE   (MACE_I2C_CONFIG_CLOCK_PIN_OVERRIDE_MASK << MACE_I2C_CONFIG_CLOCK_PIN_OVERRIDE_SHIFT)
#define MACE_I2C_CONFIG_DATA_PIN_OVERRIDE_SHIFT      2 /* established */
#define MACE_I2C_CONFIG_DATA_PIN_OVERRIDE_MASK       0x1ull
#define MACE_I2C_CONFIG_DATA_PIN_OVERRIDE_INPLACE    (MACE_I2C_CONFIG_DATA_PIN_OVERRIDE_MASK << MACE_I2C_CONFIG_DATA_PIN_OVERRIDE_SHIFT)
#define MACE_I2C_CONFIG_FAST_MODE_SHIFT              1 /* established */
#define MACE_I2C_CONFIG_FAST_MODE_MASK               0x1ull
#define MACE_I2C_CONFIG_FAST_MODE_INPLACE            (MACE_I2C_CONFIG_FAST_MODE_MASK << MACE_I2C_CONFIG_FAST_MODE_SHIFT)
#define MACE_I2C_CONFIG_RESET_SHIFT                  0 /* established */
#define MACE_I2C_CONFIG_RESET_MASK                   0x1ull
#define MACE_I2C_CONFIG_RESET_INPLACE                (MACE_I2C_CONFIG_RESET_MASK << MACE_I2C_CONFIG_RESET_SHIFT)

/*
 * Labelled reserved in the register table, with the note that it aliases the configuration register above. Bits 5:0 only (established, printed page 150, table 76). This section records no access to it.
 */
/* config_alias: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) */
#define MACE_I2C_CONFIG_ALIAS_OFFSET                 0x8u /* established */

/*
 * Control and status, bits 7:0. Bits 0, 1 and 2 are read/write; bits 4, 5 and 7 are read-only status; bits 3 and 6 are reserved read-only, kept for compatibility with the VINO interface (established, printed page 150, table 77). Every bit resets to zero.
 */
/* control: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) */
#define MACE_I2C_CONTROL_OFFSET                      0x10u /* established */
#define MACE_I2C_CONTROL_BUS_ERROR_SHIFT             7 /* established */
#define MACE_I2C_CONTROL_BUS_ERROR_MASK              0x1ull
#define MACE_I2C_CONTROL_BUS_ERROR_INPLACE           (MACE_I2C_CONTROL_BUS_ERROR_MASK << MACE_I2C_CONTROL_BUS_ERROR_SHIFT)
#define MACE_I2C_CONTROL_ACK_MISSING_SHIFT           5 /* established */
#define MACE_I2C_CONTROL_ACK_MISSING_MASK            0x1ull
#define MACE_I2C_CONTROL_ACK_MISSING_INPLACE         (MACE_I2C_CONTROL_ACK_MISSING_MASK << MACE_I2C_CONTROL_ACK_MISSING_SHIFT)
#define MACE_I2C_CONTROL_TRANSFER_BUSY_SHIFT         4 /* established */
#define MACE_I2C_CONTROL_TRANSFER_BUSY_MASK          0x1ull
#define MACE_I2C_CONTROL_TRANSFER_BUSY_INPLACE       (MACE_I2C_CONTROL_TRANSFER_BUSY_MASK << MACE_I2C_CONTROL_TRANSFER_BUSY_SHIFT)
#define MACE_I2C_CONTROL_HOLD_SHIFT                  2 /* established */
#define MACE_I2C_CONTROL_HOLD_MASK                   0x1ull
#define MACE_I2C_CONTROL_HOLD_INPLACE                (MACE_I2C_CONTROL_HOLD_MASK << MACE_I2C_CONTROL_HOLD_SHIFT)
#define MACE_I2C_CONTROL_DIRECTION_SHIFT             1 /* established */
#define MACE_I2C_CONTROL_DIRECTION_MASK              0x1ull
#define MACE_I2C_CONTROL_DIRECTION_INPLACE           (MACE_I2C_CONTROL_DIRECTION_MASK << MACE_I2C_CONTROL_DIRECTION_SHIFT)
#define MACE_I2C_CONTROL_FORCE_IDLE_SHIFT            0 /* established */
#define MACE_I2C_CONTROL_FORCE_IDLE_MASK             0x1ull
#define MACE_I2C_CONTROL_FORCE_IDLE_INPLACE          (MACE_I2C_CONTROL_FORCE_IDLE_MASK << MACE_I2C_CONTROL_FORCE_IDLE_SHIFT)

/*
 * Bus data, bits 7:0, reset to zero (established, printed page 150, table 78). The register text says a write starts a write cycle when control bit 1 is one, and a read starts a new read cycle. Control bit 1 is one for read in table 77 (printed page 150), so the two tables disagree about the write case. The disagreement is not resolved here (see docs/mace-video.md).
 */
/* data: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 149 to 151 and 181) */
#define MACE_I2C_DATA_OFFSET                         0x18u /* established */
#define MACE_I2C_DATA_BYTE_SHIFT                     0 /* established */
#define MACE_I2C_DATA_BYTE_MASK                      0xffull
#define MACE_I2C_DATA_BYTE_INPLACE                   (MACE_I2C_DATA_BYTE_MASK << MACE_I2C_DATA_BYTE_SHIFT)

#define MACE_I2C_BLOCK_BASE                          0x1f330000u /* established */

#endif /* MACE_I2C_GEN_H */
