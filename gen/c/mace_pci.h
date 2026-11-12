/* generated from defs/mace_pci.toml by defs-gen - do not edit, change the source */
/* O2 MACE PCI host bridge control registers */
#ifndef MACE_PCI_GEN_H
#define MACE_PCI_GEN_H

#include <stdint.h>


/*
 * Captured address of a PCI error. Valid only while the address-valid flag is set (established, printed pages 162 and 163).
 */
/* pci_error_addr: r32, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_ERROR_ADDR_OFFSET               0x0u /* established */

/*
 * Error flags. Bits 23 to 31 and bit 4 clear when written as zero; writing one preserves them (established, printed page 162). A bad transaction size may set bit 27; the specification calls that result unexpected, so it is not named here. Each of bits 28 to 31 has an address-valid partner at bits 16 to 19 (bit 28 with 16, through bit 31 with 19). Clearing an error bit also clears its partner. The error address then keeps its value but is invalid until another qualifying error (established, printed pages 162 and 163).
 */
/* pci_error_flags: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_ERROR_FLAGS_OFFSET              0x4u /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_SHIFT  31 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_MASK   0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_INPLACE (MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_MASK << MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_TARGET_ABORT_SHIFT  30 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_TARGET_ABORT_MASK   0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_TARGET_ABORT_INPLACE (MACE_PCI_PCI_ERROR_FLAGS_TARGET_ABORT_MASK << MACE_PCI_PCI_ERROR_FLAGS_TARGET_ABORT_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_DATA_PARITY_SHIFT   29 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_DATA_PARITY_MASK    0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_DATA_PARITY_INPLACE (MACE_PCI_PCI_ERROR_FLAGS_DATA_PARITY_MASK << MACE_PCI_PCI_ERROR_FLAGS_DATA_PARITY_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_RETRY_SHIFT         28 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_RETRY_MASK          0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_RETRY_INPLACE       (MACE_PCI_PCI_ERROR_FLAGS_RETRY_MASK << MACE_PCI_PCI_ERROR_FLAGS_RETRY_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_SYSTEM_ERROR_SHIFT  26 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_SYSTEM_ERROR_MASK   0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_SYSTEM_ERROR_INPLACE (MACE_PCI_PCI_ERROR_FLAGS_SYSTEM_ERROR_MASK << MACE_PCI_PCI_ERROR_FLAGS_SYSTEM_ERROR_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_PARITY_SHIFT        24 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_PARITY_MASK         0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_PARITY_INPLACE      (MACE_PCI_PCI_ERROR_FLAGS_PARITY_MASK << MACE_PCI_PCI_ERROR_FLAGS_PARITY_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_READ_BUFFER_OVERRUN_SHIFT 23 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_READ_BUFFER_OVERRUN_MASK 0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_READ_BUFFER_OVERRUN_INPLACE (MACE_PCI_PCI_ERROR_FLAGS_READ_BUFFER_OVERRUN_MASK << MACE_PCI_PCI_ERROR_FLAGS_READ_BUFFER_OVERRUN_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_SHIFT    19 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_MASK     0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_INPLACE  (MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_MASK << MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_SHIFT)

/*
 * Enables for the PCI inputs (bits 0 to 7), SERR_N signalling (bit 8), parity-error response (bit 10) and the error interrupts (bits 24 to 31). Every bit resets to zero (established, printed pages 164 and 165, Table 85). Bit 9 is reserved on revision 0 and an arbiter control on revision 1. Input n of bits 0 to 7 reaches CRIME bit 8 plus n, and PCI error conditions reach CRIME bit 7 (established, printed page 179).
 */
/* pci_control: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_CONTROL_OFFSET                  0x8u /* established */
#define MACE_PCI_PCI_CONTROL_ERROR_ENABLE_SHIFT      24 /* established */
#define MACE_PCI_PCI_CONTROL_ERROR_ENABLE_MASK       0xffu
#define MACE_PCI_PCI_CONTROL_ERROR_ENABLE_INPLACE    (MACE_PCI_PCI_CONTROL_ERROR_ENABLE_MASK << MACE_PCI_PCI_CONTROL_ERROR_ENABLE_SHIFT)
#define MACE_PCI_PCI_CONTROL_READ_BUFFER_INVAL_SHIFT 16 /* established */
#define MACE_PCI_PCI_CONTROL_READ_BUFFER_INVAL_MASK  0xffu
#define MACE_PCI_PCI_CONTROL_READ_BUFFER_INVAL_INPLACE (MACE_PCI_PCI_CONTROL_READ_BUFFER_INVAL_MASK << MACE_PCI_PCI_CONTROL_READ_BUFFER_INVAL_SHIFT)
#define MACE_PCI_PCI_CONTROL_READ_MULTIPLE_SHIFT     11 /* established */
#define MACE_PCI_PCI_CONTROL_READ_MULTIPLE_MASK      0x1u
#define MACE_PCI_PCI_CONTROL_READ_MULTIPLE_INPLACE   (MACE_PCI_PCI_CONTROL_READ_MULTIPLE_MASK << MACE_PCI_PCI_CONTROL_READ_MULTIPLE_SHIFT)
#define MACE_PCI_PCI_CONTROL_PARITY_RESPONSE_SHIFT   10 /* established */
#define MACE_PCI_PCI_CONTROL_PARITY_RESPONSE_MASK    0x1u
#define MACE_PCI_PCI_CONTROL_PARITY_RESPONSE_INPLACE (MACE_PCI_PCI_CONTROL_PARITY_RESPONSE_MASK << MACE_PCI_PCI_CONTROL_PARITY_RESPONSE_SHIFT)
#define MACE_PCI_PCI_CONTROL_SERR_ENABLE_SHIFT       8 /* established */
#define MACE_PCI_PCI_CONTROL_SERR_ENABLE_MASK        0x1u
#define MACE_PCI_PCI_CONTROL_SERR_ENABLE_INPLACE     (MACE_PCI_PCI_CONTROL_SERR_ENABLE_MASK << MACE_PCI_PCI_CONTROL_SERR_ENABLE_SHIFT)
#define MACE_PCI_PCI_CONTROL_IRQ_ENABLE_SHIFT        0 /* established */
#define MACE_PCI_PCI_CONTROL_IRQ_ENABLE_MASK         0xffu
#define MACE_PCI_PCI_CONTROL_IRQ_ENABLE_INPLACE      (MACE_PCI_PCI_CONTROL_IRQ_ENABLE_MASK << MACE_PCI_PCI_CONTROL_IRQ_ENABLE_SHIFT)

/*
 * Read-buffer flush and revision. Reads return 1 for MACE 2.0 and 0 for the first MACE, revision 1.0 (established, printed page 165). Any write requests buffer invalidation, whatever value it carries (established, printed page 165). The reset value of the read is not stated.
 */
/* pci_rev: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_REV_OFFSET                      0xcu /* established */

/*
 * Configuration address port, PCI mechanism 1, bus zero on the directly attached bus. Access width is 32 bits for the address write (established, printed page 161).
 */
/* pci_cfg_addr: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_CFG_ADDR_OFFSET                 0xcf8u /* established */

/*
 * Configuration data port. Accepts 8-, 16-, 24- or 32-bit data access. A missing device gives a master abort, and the specification gives no value to return for it (established, printed pages 161 to 163).
 */
/* pci_cfg_data: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_CFG_DATA_OFFSET                 0xcfcu /* established */

#define MACE_PCI_BLOCK_BASE                          0x1f080000u /* established */

#endif /* MACE_PCI_GEN_H */
