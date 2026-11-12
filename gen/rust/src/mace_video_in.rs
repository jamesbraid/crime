// generated from defs/mace_video_in.toml by defs-gen - do not edit, change the source
// O2 MACE video input channel registers
#![allow(dead_code)]

/// (established)
pub mod control {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x0;
    pub mod int_gpib { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
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
    pub mod int_fifo_overflow { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_v_overflow { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod int_h_overflow { // bits 5:5, established
        pub const SHIFT: u32 = 5;
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
    pub mod int_lost_sync { // bits 3:3, established
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
/// (established)
pub mod status {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x8;
    pub mod sync_present { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gpib { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
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
    pub mod fifo_overflow { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod v_overflow { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod h_overflow { // bits 5:5, established
        pub const SHIFT: u32 = 5;
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
/// (established)
pub mod config {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x10;
    pub mod interleaved { // bits 16:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mem_mode { // bits 15:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const LINEAR: u64 = 0; // established
        pub const TILED: u64 = 1; // established
        pub const MIPMAP_512X128: u64 = 2; // established
        pub const MIPMAP_512X256: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Linear,
            Tiled,
            Mipmap512x128,
            Mipmap512x256,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Linear,
                    1 => Self::Tiled,
                    2 => Self::Mipmap512x128,
                    3 => Self::Mipmap512x256,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Linear => 0,
                    Self::Tiled => 1,
                    Self::Mipmap512x128 => 2,
                    Self::Mipmap512x256 => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod dither { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixel_format { // bits 12:10, established
        pub const SHIFT: u32 = 10;
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
    pub mod sof_count { // bits 9:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u64 = 0xf;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod d1_ecc { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod d1_precision { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod source { // bits 3:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const PRIMARY: u64 = 0; // established
        pub const SECONDARY: u64 = 1; // established
        pub const LOOPBACK_E: u64 = 2; // established
        pub const LOOPBACK_F: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Primary,
            Secondary,
            LoopbackE,
            LoopbackF,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Primary,
                    1 => Self::Secondary,
                    2 => Self::LoopbackE,
                    3 => Self::LoopbackF,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Primary => 0,
                    Self::Secondary => 1,
                    Self::LoopbackE => 2,
                    Self::LoopbackF => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod d1_reset { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod channel_reset { // bits 0:0, established
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
    pub mod field_select { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const EITHER: u64 = 0; // established
        pub const ODD: u64 = 2; // established
        pub const EVEN: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Either,
            Odd,
            Even,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Either,
                    2 => Self::Odd,
                    3 => Self::Even,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Either => 0,
                    Self::Odd => 2,
                    Self::Even => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
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
/// (established)
pub mod line_width {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x28;
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
pub mod hclip_odd {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x30;
    pub mod filter_mode { // bits 40:39, established
        pub const SHIFT: u32 = 39;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const PAL_NONSQUARE: u64 = 1; // established
        pub const NTSC_NONSQUARE: u64 = 2; // established
        pub const HALF: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            PalNonsquare,
            NtscNonsquare,
            Half,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::PalNonsquare,
                    2 => Self::NtscNonsquare,
                    3 => Self::Half,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::PalNonsquare => 1,
                    Self::NtscNonsquare => 2,
                    Self::Half => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod scale_on { // bits 38:38, established
        pub const SHIFT: u32 = 38;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod scale_ratio { // bits 37:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0xff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod filt_count { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod end { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod start { // bits 9:0, established
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
pub mod vclip_odd {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x38;
    pub mod scale_on { // bits 38:38, established
        pub const SHIFT: u32 = 38;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod scale_ratio { // bits 37:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0xff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod end { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blank_end { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod start { // bits 9:0, established
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
/// (inferred)
pub mod alpha_odd {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x40;
}
/// (established)
pub mod hclip_even {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x48;
    pub mod filter_mode { // bits 40:39, established
        pub const SHIFT: u32 = 39;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u64 = 0; // established
        pub const PAL_NONSQUARE: u64 = 1; // established
        pub const NTSC_NONSQUARE: u64 = 2; // established
        pub const HALF: u64 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            PalNonsquare,
            NtscNonsquare,
            Half,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::PalNonsquare,
                    2 => Self::NtscNonsquare,
                    3 => Self::Half,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::None => 0,
                    Self::PalNonsquare => 1,
                    Self::NtscNonsquare => 2,
                    Self::Half => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod scale_on { // bits 38:38, established
        pub const SHIFT: u32 = 38;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod scale_ratio { // bits 37:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0xff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod filt_count { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod end { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod start { // bits 9:0, established
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
pub mod vclip_even {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x50;
    pub mod scale_on { // bits 38:38, established
        pub const SHIFT: u32 = 38;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod scale_ratio { // bits 37:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u64 = 0xff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod end { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blank_end { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x3ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod start { // bits 9:0, established
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
/// (inferred)
pub mod alpha_even {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x58;
}
/// (established)
pub mod dma_desc {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x80;
    pub const COUNT: u32 = 8;
    pub const STRIDE: u64 = 8;
}
