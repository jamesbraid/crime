// generated from devices/mace_serial_dma/registers.toml by defs-gen - do not edit, change the source
// O2 MACE serial port DMA channels: channel control, ring pointers and depth
#![allow(dead_code)]

pub mod enums {
    pub mod serial_ring {
        pub const SCRATCH: u32 = 3; // established
        pub const PORT1_TX: u32 = 4; // established
        pub const PORT1_RX: u32 = 5; // established
        pub const PORT2_TX: u32 = 6; // established
        pub const PORT2_RX: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Scratch,
            Port1Tx,
            Port1Rx,
            Port2Tx,
            Port2Rx,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    3 => Self::Scratch,
                    4 => Self::Port1Tx,
                    5 => Self::Port1Rx,
                    6 => Self::Port2Tx,
                    7 => Self::Port2Rx,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Scratch => 3,
                    Self::Port1Tx => 4,
                    Self::Port1Rx => 5,
                    Self::Port2Tx => 6,
                    Self::Port2Rx => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod serial_threshold {
        pub const OFF: u32 = 0; // established
        pub const DEPTH_QUARTER: u32 = 1; // established
        pub const DEPTH_HALF: u32 = 2; // established
        pub const DEPTH_THREE_QUARTER: u32 = 3; // established
        pub const EMPTY: u32 = 4; // established
        pub const NOT_EMPTY: u32 = 5; // established
        pub const FULL: u32 = 6; // established
        pub const NOT_FULL: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Off,
            DepthQuarter,
            DepthHalf,
            DepthThreeQuarter,
            Empty,
            NotEmpty,
            Full,
            NotFull,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Off,
                    1 => Self::DepthQuarter,
                    2 => Self::DepthHalf,
                    3 => Self::DepthThreeQuarter,
                    4 => Self::Empty,
                    5 => Self::NotEmpty,
                    6 => Self::Full,
                    7 => Self::NotFull,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Off => 0,
                    Self::DepthQuarter => 1,
                    Self::DepthHalf => 2,
                    Self::DepthThreeQuarter => 3,
                    Self::Empty => 4,
                    Self::NotEmpty => 5,
                    Self::Full => 6,
                    Self::NotFull => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
}

/// Control of the transmit channel (index 0, offset 0x00) and the receive channel (index 1, offset 0x20). Bits not listed read zero and ignore writes (es (established)
pub mod channel_control {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x0;
    pub const COUNT: u32 = 2;
    pub const STRIDE: u64 = 32;
    pub mod channel_reset { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_enable { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod threshold { // bits 7:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x7;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::serial_threshold::Value;
    }
}
/// Read pointer of each channel, in 32-byte blocks. On the transmit channel the DMA engine owns it, and on the receive channel software owns it (establis (established)
pub mod channel_read {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x8;
    pub const COUNT: u32 = 2;
    pub const STRIDE: u64 = 32;
    pub mod block_index { // bits 11:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Write pointer of each channel, in 32-byte blocks. On the transmit channel software owns it, and on the receive channel the DMA engine owns it (establi (established)
pub mod channel_write {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x10;
    pub const COUNT: u32 = 2;
    pub const STRIDE: u64 = 32;
    pub mod block_index { // bits 11:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Blocks of ring data in use, computed as the write pointer minus the read pointer. Zero is empty and 127 is full (established, printed page 127, table  (established)
pub mod channel_depth {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x18;
    pub const COUNT: u32 = 2;
    pub const STRIDE: u64 = 32;
    pub mod blocks { // bits 11:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const BLOCK_BASE: u32 = 0x1f318000; // established
pub const PORT2_BLOCK_BASE: u32 = 0x1f31c000; // established
pub const RING_BASE_ALIGN: u32 = 0x8000; // established
pub const RING_BYTES: u32 = 0x1000; // established
