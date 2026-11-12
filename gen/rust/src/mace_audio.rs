// generated from defs/mace_audio.toml by defs-gen - do not edit, change the source
// O2 MACE audio interface: codec command, stereo DMA ring control and pointers
#![allow(dead_code)]

pub mod enums {
    pub mod codec_direction {
        pub const WRITE: u32 = 0; // established
        pub const READ: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Write,
            Read,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Write,
                    1 => Self::Read,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Write => 0,
                    Self::Read => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod ring_threshold {
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

/// Codec reset and presence, the mirrored ring pointers of the two engines and the two volume-button latches. Bits not listed read zero (established, pri (established)
pub mod ctl_status {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x0;
    pub mod volume_edge_24 { // bits 24:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod volume_edge_23 { // bits 23:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod playback2_read_alias { // bits 22:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod playback1_read_alias { // bits 15:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod capture_write_alias { // bits 8:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod codec_present { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod codec_reset { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Codec register access. The word written here is sent to the codec on every serial frame and repeats until it is replaced. A read request makes the cod (established)
pub mod codec_cmd {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x8;
    pub mod codec_addr { // bits 23:17, established
        pub const SHIFT: u32 = 17;
        pub const MASK: u64 = 0x7f;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod codec_direction { // bits 16:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::codec_direction::Value;
    }
    pub mod codec_data { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Mask applied to the last codec response. The codec-response interrupt cause is set when any masked bit of the response is one (established, printed pa (established)
pub mod response_mask {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x10;
    pub mod mask { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// The most recent 16-bit register word the codec returned, whichever register was addressed (established, printed page 63, table 30). The table describe (established)
pub mod codec_response {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x18;
    pub mod word { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Control of the three stereo DMA channels, in order: capture at 0x20, playback 1 at 0x40 and playback 2 at 0x60. Writable bits are 10, 9 and 7:5. Bit 8 (established)
pub mod ring_control {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x20;
    pub const COUNT: u32 = 3;
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
        pub use super::super::enums::ring_threshold::Value;
    }
}
/// Read pointer of each channel, in 32-byte blocks. The playback engines own it, so software owns it only on the capture channel. The printed register ta (established)
pub mod ring_read {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x28;
    pub const COUNT: u32 = 3;
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
/// Write pointer of each channel, in 32-byte blocks. The capture engine owns it, so software owns it on the two playback channels. The same table and tex (established)
pub mod ring_write {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x30;
    pub const COUNT: u32 = 3;
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
/// Blocks of ring data in use, computed as write pointer minus read pointer. Zero is empty and 127 is full, so one of the 128 blocks is never used (estab (established)
pub mod ring_depth {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x38;
    pub const COUNT: u32 = 3;
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
pub const BLOCK_BASE: u32 = 0x1f300000; // established
