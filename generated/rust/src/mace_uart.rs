// generated from devices/mace_uart/registers.toml by defs-gen - do not edit, change the source
// O2 MACE external 16550-compatible serial port: modem control and scratch registers
#![allow(dead_code)]

/// Modem control register of one port. Master reset clears every bit, and bits 6 and 7 are permanently zero (inferred, printed page 25). Bit 3 enables th (inferred)
pub mod mcr {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x400;
    pub mod ext_int_enable { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Scratch byte for programmer use, with DLAB clear. Master reset has no effect on it (inferred, printed page 25). With DLAB set, the same position holds (inferred)
pub mod scratch {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x700;
}
