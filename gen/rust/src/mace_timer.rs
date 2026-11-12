// generated from defs/mace_timer.toml by defs-gen - do not edit, change the source
// O2 MACE free-running counter, three compare registers and audio time stamps
#![allow(dead_code)]

/// One 32-bit counter, clocked every 960 ns (the 33.333 MHz PCI clock divided by 32). It starts at zero on power-on reset and wraps in 32 bits (establish (established)
pub mod counter {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x0;
    pub mod count { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// 32-bit compare. Equality sets level interrupt latch 0, which drives peripheral status bit 13. Writing the register clears the latch, and the latch res (established)
pub mod cmp0 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x8;
    pub mod value { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// 32-bit compare. Equality sets level interrupt latch 1, which drives peripheral status bit 14. Writing clears the latch. Reset value not stated (establ (established)
pub mod cmp1 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x10;
    pub mod value { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// 32-bit compare. Equality sets level interrupt latch 2, which drives peripheral status bit 15. Writing clears the latch. Reset value not stated (establ (established)
pub mod cmp2 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x18;
    pub mod value { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Audio time stamp pairs: capture at 0x20, playback 1 at 0x28 and playback 2 at 0x30. A 64-bit read of a pair returns UST in bits 63:32 and MSC in bits  (established)
pub mod audio_pair {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x20;
    pub const COUNT: u32 = 3;
    pub const STRIDE: u64 = 8;
    pub mod ust { // bits 63:32, established
        pub const SHIFT: u32 = 32;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod msc { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const BLOCK_BASE: u32 = 0x1f340000; // established
