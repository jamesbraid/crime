// generated from defs/mace_pci.toml by defs-gen - do not edit, change the source
// O2 MACE PCI host bridge control registers
#![allow(dead_code)]

/// Captured address of a PCI error. Valid only while the address-valid flag is set (established, printed pages 162 and 163). (established)
pub mod pci_error_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x0;
}
/// Error flags. Bits 23 to 31 and bit 4 clear when written as zero; writing one preserves them (established, printed page 162). A bad transaction size ma (established)
pub mod pci_error_flags {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4;
    pub mod master_abort { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod addr_valid { // bits 19:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Interrupt enables clear at reset, bits 0 to 7 for the PCI inputs and bits 24 to 31 for error enables (established, printed pages 164 and 162). Reset v (established)
pub mod pci_control {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x8;
    pub mod error_enable { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod irq_enable { // bits 7:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Read-buffer flush and revision. Reads return 1 for MACE 2.0. Writes request buffer invalidation (established, printed pages 161 to 163). The reset val (established)
pub mod pci_rev {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc;
}
/// Configuration address port, PCI mechanism 1, bus zero on the directly attached bus. Access width is 32 bits for the address write (established, printe (established)
pub mod pci_cfg_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xcf8;
}
/// Configuration data port. Accepts 8-, 16-, 24- or 32-bit data access. A missing device gives a master abort, and the specification gives no value to re (established)
pub mod pci_cfg_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xcfc;
}
pub const BLOCK_BASE: u32 = 0x1f080000; // established
