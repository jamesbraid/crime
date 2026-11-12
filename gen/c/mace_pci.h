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
 * Error flags. Bits 23 to 31 and bit 4 clear when written as zero; writing one preserves them (established, printed page 162). A bad transaction size may set bit 27; the specification calls that result unexpected, so it is not named here.
 */
/* pci_error_flags: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_ERROR_FLAGS_OFFSET              0x4u /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_SHIFT  31 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_MASK   0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_INPLACE (MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_MASK << MACE_PCI_PCI_ERROR_FLAGS_MASTER_ABORT_SHIFT)
#define MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_SHIFT    19 /* established */
#define MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_MASK     0x1u
#define MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_INPLACE  (MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_MASK << MACE_PCI_PCI_ERROR_FLAGS_ADDR_VALID_SHIFT)

/*
 * Interrupt enables clear at reset, bits 0 to 7 for the PCI inputs and bits 24 to 31 for error enables (established, printed pages 164 and 162). Reset value of the other bits is not stated.
 */
/* pci_control: rw32, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers */
#define MACE_PCI_PCI_CONTROL_OFFSET                  0x8u /* established */
#define MACE_PCI_PCI_CONTROL_ERROR_ENABLE_SHIFT      24 /* established */
#define MACE_PCI_PCI_CONTROL_ERROR_ENABLE_MASK       0xffu
#define MACE_PCI_PCI_CONTROL_ERROR_ENABLE_INPLACE    (MACE_PCI_PCI_CONTROL_ERROR_ENABLE_MASK << MACE_PCI_PCI_CONTROL_ERROR_ENABLE_SHIFT)
#define MACE_PCI_PCI_CONTROL_IRQ_ENABLE_SHIFT        0 /* established */
#define MACE_PCI_PCI_CONTROL_IRQ_ENABLE_MASK         0xffu
#define MACE_PCI_PCI_CONTROL_IRQ_ENABLE_INPLACE      (MACE_PCI_PCI_CONTROL_IRQ_ENABLE_MASK << MACE_PCI_PCI_CONTROL_IRQ_ENABLE_SHIFT)

/*
 * Read-buffer flush and revision. Reads return 1 for MACE 2.0. Writes request buffer invalidation (established, printed pages 161 to 163). The reset value of the read is not stated.
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
