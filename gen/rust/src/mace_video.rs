// generated from defs/mace_video.toml by defs-gen - do not edit, change the source
// O2 MACE video output channel and chip-level configuration
#![allow(dead_code)]

/// ---- output channel registers ---- One channel set, offsets from the start of the output channel window. All are 64-bit doubleword accesses. The statu (established)
pub mod control {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x0;
    pub mod int_crime_error { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_fifo_underflow { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_buffer { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_genlock_lost { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_dma_done { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_vsync { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_enable { // bits 0:0, established
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
/// The shipped IRIX output recovery routines read it after their last write and discard the value. (established)
pub mod status {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x8;
    pub mod crime_error { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fifo_underflow { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod buffer { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod lost_sync { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_done { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod vsync { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_active { // bits 0:0, established
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
/// The shipped IRIX video driver writes it at start-up. (established)
pub mod config {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x10;
    pub mod sof_count_even { // bits 25:22, established
        pub const SHIFT: u32 = 22;
        pub const MASK: u64 = 0xf;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mem_mode { // bits 21:21, established
        pub const SHIFT: u32 = 21;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const LINEAR: u64 = 0; // established
        pub const TILED: u64 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Linear,
            Tiled,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Linear,
                    1 => Self::Tiled,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Linear => 0,
                    Self::Tiled => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod interleaved { // bits 20:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clamping { // bits 19:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const EXTENDED: u64 = 1; // established
        pub const LEGAL: u64 = 2; // established
        pub const SPECIAL_EXPANSION: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Extended,
            Legal,
            SpecialExpansion,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::Extended,
                    2 => Self::Legal,
                    3 => Self::SpecialExpansion,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::Extended => 1,
                    Self::Legal => 2,
                    Self::SpecialExpansion => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod notch_filter { // bits 17:17, established
        pub const SHIFT: u32 = 17;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixel_format { // bits 16:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u64 = 0x7;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const RGBA32: u64 = 0; // established
        pub const RGBA5551: u64 = 1; // established
        pub const YUV422_8: u64 = 2; // established
        pub const YUV422_10: u64 = 3; // established
        pub const ABGR32: u64 = 4; // established
        pub const YUVA4224: u64 = 5; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Rgba32,
            Rgba5551,
            Yuv4228,
            Yuv42210,
            Abgr32,
            Yuva4224,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Rgba32,
                    1 => Self::Rgba5551,
                    2 => Self::Yuv4228,
                    3 => Self::Yuv42210,
                    4 => Self::Abgr32,
                    5 => Self::Yuva4224,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Rgba32 => 0,
                    Self::Rgba5551 => 1,
                    Self::Yuv4228 => 2,
                    Self::Yuv42210 => 3,
                    Self::Abgr32 => 4,
                    Self::Yuva4224 => 5,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod sof_count_odd { // bits 13:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0xf;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod genlock_ecc { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod genlock_precision { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod genlock_source { // bits 7:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const EXTERNAL: u64 = 1; // established
        pub const PORT_AB: u64 = 2; // established
        pub const PORT_CD: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            External,
            PortAb,
            PortCd,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::External,
                    2 => Self::PortAb,
                    3 => Self::PortCd,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::External => 1,
                    Self::PortAb => 2,
                    Self::PortCd => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod genlock_reset { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod port_f_source { // bits 4:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const DISABLED: u64 = 0; // established
        pub const GENLOCK_PASSTHROUGH: u64 = 1; // established
        pub const YUV: u64 = 2; // established
        pub const ALPHA: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Disabled,
            GenlockPassthrough,
            Yuv,
            Alpha,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Disabled,
                    1 => Self::GenlockPassthrough,
                    2 => Self::Yuv,
                    3 => Self::Alpha,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Disabled => 0,
                    Self::GenlockPassthrough => 1,
                    Self::Yuv => 2,
                    Self::Alpha => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod port_e_source { // bits 2:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const DISABLED: u64 = 0; // established
        pub const GENLOCK_PASSTHROUGH: u64 = 1; // established
        pub const YUV: u64 = 2; // established
        pub const ALPHA: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Disabled,
            GenlockPassthrough,
            Yuv,
            Alpha,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Disabled,
                    1 => Self::GenlockPassthrough,
                    2 => Self::Yuv,
                    3 => Self::Alpha,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Disabled => 0,
                    Self::GenlockPassthrough => 1,
                    Self::Yuv => 2,
                    Self::Alpha => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod channel_enable { // bits 0:0, established
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
/// The shipped IRIX video driver holds the physical address as a zero-extended 32-bit word and ORs a flag byte into it; the output recovery routines writ (established)
pub mod next_desc {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x18;
    pub mod table_address { // bits 31:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u64 = 0x3ffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod valid { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit1 { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_to_send { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ODD: u64 = 0; // established
        pub const EVEN: u64 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Odd,
            Even,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Odd,
                    1 => Self::Even,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Odd => 0,
                    Self::Even => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// The shipped IRIX video driver writes the low halfword of a transfer-record word here. (established)
pub mod fld_offset {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x20;
    pub mod byte_offset { // bits 15:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u64 = 0x1fff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Double-buffered: a new value takes effect at the next field (revision history item 46, printed page 59). The shipped IRIX video driver takes the line  (established)
pub mod field_size {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x28;
    pub mod lines { // bits 21:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bytes { // bits 11:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u64 = 0x1ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod hpad_odd {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x30;
    pub mod filter_mode { // bits 41:40, established
        pub const SHIFT: u32 = 40;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const PAL_11_12: u64 = 1; // established
        pub const NTSC_11_10: u64 = 2; // established
        pub const DOUBLE_WIDTH: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Pal1112,
            Ntsc1110,
            DoubleWidth,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::Pal1112,
                    2 => Self::Ntsc1110,
                    3 => Self::DoubleWidth,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::Pal1112 => 1,
                    Self::Ntsc1110 => 2,
                    Self::DoubleWidth => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod filter_count { // bits 39:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod eav_image { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod eav_eav { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod eav_sav { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vpad_odd {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x38;
    pub mod image_start { // bits 39:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_end { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod trailing_blank_start { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod leading_blank_end { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod hpad_even {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x40;
    pub mod filter_mode { // bits 41:40, established
        pub const SHIFT: u32 = 40;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const PAL_11_12: u64 = 1; // established
        pub const NTSC_11_10: u64 = 2; // established
        pub const DOUBLE_WIDTH: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Pal1112,
            Ntsc1110,
            DoubleWidth,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::Pal1112,
                    2 => Self::Ntsc1110,
                    3 => Self::DoubleWidth,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::Pal1112 => 1,
                    Self::Ntsc1110 => 2,
                    Self::DoubleWidth => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod filter_count { // bits 39:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod eav_image { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod eav_eav { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod eav_sav { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vpad_even {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x48;
    pub mod image_start { // bits 39:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_end { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod trailing_blank_start { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod leading_blank_end { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod gen_dly {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x50;
}
/// The shipped IRIX video driver releases the port A/B reset (bit 0) and the port C/D reset (bit 2) whenever an input or output is set up, and its video  (established)
pub mod vhw_cfg {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x58;
    pub mod revision { // bits 35:32, established
        pub const SHIFT: u32 = 32;
        pub const MASK: u64 = 0xf;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sof_count_even { // bits 22:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u64 = 0xf;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gpibo { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sof_count_odd { // bits 17:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u64 = 0xf;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gbe_framelock_ecc { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gbe_framelock_precision { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gbe_framelock_source { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const OUTPUT_EF: u64 = 0; // established
        pub const EXTERNAL: u64 = 1; // established
        pub const PORT_AB: u64 = 2; // established
        pub const PORT_CD: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            OutputEf,
            External,
            PortAb,
            PortCd,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::OutputEf,
                    1 => Self::External,
                    2 => Self::PortAb,
                    3 => Self::PortCd,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::OutputEf => 0,
                    Self::External => 1,
                    Self::PortAb => 2,
                    Self::PortCd => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod gbe_framelock_reset { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod audio_sync_ecc { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod audio_sync_precision { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod audio_sync_source { // bits 6:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const EXTERNAL: u64 = 1; // established
        pub const PORT_AB: u64 = 2; // established
        pub const PORT_CD: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            External,
            PortAb,
            PortCd,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::External,
                    2 => Self::PortAb,
                    3 => Self::PortCd,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::External => 1,
                    Self::PortAb => 2,
                    Self::PortCd => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod audio_sync_reset { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod port_cd_select { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod port_cd_reset { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod port_ab_select { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod port_ab_reset { // bits 0:0, established
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
/// (established)
pub mod dma_desc {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x80;
    pub const COUNT: u32 = 8;
    pub const STRIDE: u64 = 8;
}
pub const IN2_OFF: u32 = 0x80000; // established
pub const OUT_OFF: u32 = 0x100000; // established
pub const WINDOW_PHYS_ADDR: u32 = 0x1f100000; // established
