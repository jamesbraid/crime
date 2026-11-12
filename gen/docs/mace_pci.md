# O2 MACE PCI host bridge control registers

<!-- generated from defs/mace_pci.toml by defs-gen - do not edit, change the source -->

MACE PCI control block: error capture, interrupt and error enables, read-buffer revision, and the configuration address and data ports. Offsets are from the block base (constant BLOCK_BASE). Unlisted offsets in the block are not implemented.

Unit `mace_pci`, macro prefix `MACE_PCI`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `pci_error_addr` | 0x0 | r | 32 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |
| `pci_error_flags` | 0x4 | rw | 32 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |
| `pci_control` | 0x8 | rw | 32 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |
| `pci_rev` | 0xc | rw | 32 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |
| `pci_cfg_addr` | 0xcf8 | rw | 32 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |
| `pci_cfg_data` | 0xcfc | rw | 32 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |

### Register `pci_error_addr`

Captured address of a PCI error. Valid only while the address-valid flag is set (established, printed pages 162 and 163).

### Register `pci_error_flags`

Error flags. Bits 23 to 31 and bit 4 clear when written as zero; writing one preserves them (established, printed page 162). A bad transaction size may set bit 27; the specification calls that result unexpected, so it is not named here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `master_abort` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |  |
| 19 | `addr_valid` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |  |

### Register `pci_control`

Interrupt enables clear at reset, bits 0 to 7 for the PCI inputs and bits 24 to 31 for error enables (established, printed pages 164 and 162). Reset value of the other bits is not stated.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `error_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |  |
| 7:0 | `irq_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |  |

### Register `pci_rev`

Read-buffer flush and revision. Reads return 1 for MACE 2.0. Writes request buffer invalidation (established, printed pages 161 to 163). The reset value of the read is not stated.

### Register `pci_cfg_addr`

Configuration address port, PCI mechanism 1, bus zero on the directly attached bus. Access width is 32 bits for the address write (established, printed page 161).

### Register `pci_cfg_data`

Configuration data port. Accepts 8-, 16-, 24- or 32-bit data access. A missing device gives a master abort, and the specification gives no value to return for it (established, printed pages 161 to 163).

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f080000 | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers | physical base of the PCI control block (printed page 161) |
