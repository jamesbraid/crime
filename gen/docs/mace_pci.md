# O2 MACE PCI host bridge control registers

<!-- generated from defs/mace_pci.toml by defs-gen - do not edit, change the source -->

MACE PCI control block: error capture, interrupt and error enables, read-buffer revision, and the configuration address and data ports. Offsets are from the block base (constant BLOCK_BASE). Only these six registers exist in the block, and they are not repeated across it (established, printed pages 161 and 181). A read of any other offset in the block returns 0xff in each byte position it covers, and a write to one is discarded (established, printed pages 161 and 162).

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

Enables for the PCI inputs (bits 0 to 7), SERR_N signalling (bit 8), parity-error response (bit 10) and the error interrupts (bits 24 to 31). Every bit resets to zero (established, printed pages 164 and 165, Table 85). Bit 9 is reserved on revision 0 and an arbiter control on revision 1. Input n of bits 0 to 7 reaches CRIME bit 8 plus n, and PCI error conditions reach CRIME bit 7 (established, printed page 179).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `error_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |  |
| 10 | `parity_response` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers | Parity-error response enable (printed page 164). |
| 8 | `serr_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers | SERR_N signalling enable (printed page 164). |
| 7:0 | `irq_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers |  |

### Register `pci_rev`

Read-buffer flush and revision. Reads return 1 for MACE 2.0 and 0 for the first MACE, revision 1.0 (established, printed page 165). Any write requests buffer invalidation, whatever value it carries (established, printed page 165). The reset value of the read is not stated.

### Register `pci_cfg_addr`

Configuration address port, PCI mechanism 1, bus zero on the directly attached bus. Access width is 32 bits for the address write (established, printed page 161).

### Register `pci_cfg_data`

Configuration data port. Accepts 8-, 16-, 24- or 32-bit data access. A missing device gives a master abort, and the specification gives no value to return for it (established, printed pages 161 to 163).

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f080000 | established | published MACE 2.0 I/O ASIC specification (printed pages 161 to 165), public Linux MACE PCI accessor, and OpenBSD and NetBSD O2 MACE drivers | physical base of the PCI control block (printed page 161) |
