// generated from defs/gbe.toml by defs-gen - do not edit, change the source
// O2 GBE display back end register words
#![allow(dead_code)]

/// (established)
pub mod cmap_entry {
    pub const WIDTH: u32 = 32;
    pub mod r { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod g { // bits 23:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod b { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod cmap_fifo {
    pub const WIDTH: u32 = 32;
    pub mod free { // bits 5:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod crs_ctl {
    pub const WIDTH: u32 = 32;
    pub mod enable { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod crs_start_xy {
    pub const WIDTH: u32 = 32;
    pub mod starty { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod startx { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod ctrlstat {
    pub const WIDTH: u32 = 32;
    pub mod pclk_select { // bits 29:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const EXTERNAL: u32 = 0; // established
        pub const INTERNAL: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            External,
            Internal,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::External,
                    3 => Self::Internal,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::External => 0,
                    Self::Internal => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod io6_data { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io5_data { // bits 16:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io4_data { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io3_data { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod chip_rev { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod did_control {
    pub const WIDTH: u32 = 32;
    pub mod dma_enable { // bits 16:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod did_base { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod did_frame {
    pub const WIDTH: u32 = 32;
    pub mod block { // bits 25:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod offset { // bits 18:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod yend { // bits 10:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod did_inhwctrl {
    pub const WIDTH: u32 = 32;
    pub mod dma_enable { // bits 16:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod did_base { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod did_line {
    pub const WIDTH: u32 = 32;
    pub mod did { // bits 15:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod xend { // bits 10:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod did_start_xy {
    pub const WIDTH: u32 = 32;
    pub mod starty { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod startx { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod dotclock {
    pub const WIDTH: u32 = 32;
    pub mod run { // bits 20:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod p { // bits 15:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod n_minus_1 { // bits 13:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod m_minus_1 { // bits 7:0, established
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
/// (established)
pub mod fp_de {
    pub const WIDTH: u32 = 32;
    pub mod on { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod off { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// The three flat-panel drive registers and the three start-preset registers share one layout: two 12-bit counts, "off" or "x" in the low half. The speci (established)
pub mod fp_hdrv {
    pub const WIDTH: u32 = 32;
    pub mod on { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod off { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod fp_vdrv {
    pub const WIDTH: u32 = 32;
    pub mod on { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod off { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod frm_control {
    pub const WIDTH: u32 = 32;
    pub mod tile_list_ptr { // bits 31:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x7ffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_enable { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod frm_inhwctrl {
    pub const WIDTH: u32 = 32;
    pub mod dma_enable { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod frm_size_tile {
    pub const WIDTH: u32 = 32;
    pub mod fifo_reset { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod depth { // bits 14:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BITS8: u32 = 0; // established
        pub const BITS16: u32 = 1; // established
        pub const BITS32: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Bits8,
            Bits16,
            Bits32,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Bits8,
                    1 => Self::Bits16,
                    2 => Self::Bits32,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Bits8 => 0,
                    Self::Bits16 => 1,
                    Self::Bits32 => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod width_tiles { // bits 12:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod remainder { // bits 4:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod mode_entry {
    pub const WIDTH: u32 = 32;
    pub mod aux { // bits 12:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gm { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cm { // bits 9:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod typ { // bits 4:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const I8: u32 = 0; // established
        pub const I12: u32 = 1; // established
        pub const RG3B2: u32 = 2; // established
        pub const RGB4: u32 = 3; // established
        pub const RGB5: u32 = 4; // established
        pub const RGB8: u32 = 5; // established
        pub const RGBA5: u32 = 6; // established
        pub const RGB10: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            I8,
            I12,
            Rg3b2,
            Rgb4,
            Rgb5,
            Rgb8,
            Rgba5,
            Rgb10,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::I8,
                    1 => Self::I12,
                    2 => Self::Rg3b2,
                    3 => Self::Rgb4,
                    4 => Self::Rgb5,
                    5 => Self::Rgb8,
                    6 => Self::Rgba5,
                    7 => Self::Rgb10,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::I8 => 0,
                    Self::I12 => 1,
                    Self::Rg3b2 => 2,
                    Self::Rgb4 => 3,
                    Self::Rgb5 => 4,
                    Self::Rgb8 => 5,
                    Self::Rgba5 => 6,
                    Self::Rgb10 => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod buf { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const LOWER: u32 = 1; // established
        pub const UPPER: u32 = 2; // established
        pub const BOTH: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Lower,
            Upper,
            Both,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::Lower,
                    2 => Self::Upper,
                    3 => Self::Both,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Lower => 1,
                    Self::Upper => 2,
                    Self::Both => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod ovr_control {
    pub const WIDTH: u32 = 32;
    pub mod tile_list_ptr { // bits 31:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x7ffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_enable { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod ovr_inhwctrl {
    pub const WIDTH: u32 = 32;
    pub mod dma_enable { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod ovr_width_tile {
    pub const WIDTH: u32 = 32;
    pub mod fifo_reset { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod tile_list_entry {
    pub const WIDTH: u32 = 32;
    pub mod tile { // bits 12:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vc_0 {
    pub const WIDTH: u32 = 32;
    pub mod right { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod left { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vc_1 {
    pub const WIDTH: u32 = 32;
    pub mod bottom { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod top { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vc_2 {
    pub const WIDTH: u32 = 32;
    pub mod cs_bypass { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod full_screen { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod auto_field { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flicker_filter { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_enable { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vc_3 {
    pub const WIDTH: u32 = 32;
    pub mod descr_ptr { // bits 31:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x7ffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod current_field { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod end_of_field { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_corrupt { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod descr_dma_enable { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_select { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vc_start_xy {
    pub const WIDTH: u32 = 32;
    pub mod starty { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod startx { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vc_tiles {
    pub const WIDTH: u32 = 32;
    pub mod tile_first { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tile_second { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_flags {
    pub const WIDTH: u32 = 32;
    pub mod sync_low { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_hcmap {
    pub const WIDTH: u32 = 32;
    pub mod on { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod off { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_intr01 {
    pub const WIDTH: u32 = 32;
    pub mod line0 { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod line1 { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_intr23 {
    pub const WIDTH: u32 = 32;
    pub mod line2 { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod line3 { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_vcmap {
    pub const WIDTH: u32 = 32;
    pub mod on { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod off { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_xy {
    pub const WIDTH: u32 = 32;
    pub mod freeze { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod vt_xymax {
    pub const WIDTH: u32 = 32;
    pub mod vtotal { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod htotal { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const CMAP_ENTRIES_REV1: u32 = 0x1200; // established
pub const CMAP_ENTRIES_REV2: u32 = 0x1800; // inferred
pub const CMAP_FIFO_DEPTH_REV1: u32 = 0x40; // established
pub const CMAP_FIFO_DEPTH_REV2: u32 = 0x3f; // inferred
pub const CMAP_FIFO_LOW_WATER: u32 = 0x30; // established
pub const DEVICE_ID_VALUE: u32 = 0x666; // established
pub const GMAP_ENTRIES: u32 = 0x100; // established
pub const MODE_ENTRIES: u32 = 0x20; // established
pub const MODE_ENTRY_STRIDE: u32 = 0x4; // established
pub const OFF_CMAP: u32 = 0x50000; // established
pub const OFF_CMAP_FIFO: u32 = 0x58000; // established
pub const OFF_CRS_CMAP: u32 = 0x70008; // established
pub const OFF_CRS_CTL: u32 = 0x70004; // established
pub const OFF_CRS_GLYPH: u32 = 0x78000; // established
pub const OFF_CRS_POS: u32 = 0x70000; // established
pub const OFF_CRS_START_XY: u32 = 0x10048; // established
pub const OFF_CTRLSTAT: u32 = 0x0; // established
pub const OFF_DEVICE_ID: u32 = 0x14; // established
pub const OFF_DID_CONTROL: u32 = 0x40004; // established
pub const OFF_DID_INHWCTRL: u32 = 0x40000; // established
pub const OFF_DID_START_XY: u32 = 0x10044; // established
pub const OFF_DOTCLOCK: u32 = 0x4; // established
pub const OFF_FP_DE: u32 = 0x10030; // established
pub const OFF_FP_HDRV: u32 = 0x10028; // established
pub const OFF_FP_VDRV: u32 = 0x1002c; // established
pub const OFF_FRM_CONTROL: u32 = 0x3000c; // established
pub const OFF_FRM_INHWCTRL: u32 = 0x30008; // established
pub const OFF_FRM_SIZE_PIXEL: u32 = 0x30004; // established
pub const OFF_FRM_SIZE_TILE: u32 = 0x30000; // established
pub const OFF_GMAP: u32 = 0x60000; // established
pub const OFF_I2C: u32 = 0x8; // established
pub const OFF_I2CFP: u32 = 0x10; // established
pub const OFF_MODE_TABLE: u32 = 0x48000; // established
pub const OFF_OVR_CONTROL: u32 = 0x20008; // established
pub const OFF_OVR_INHWCTRL: u32 = 0x20004; // established
pub const OFF_OVR_WIDTH_TILE: u32 = 0x20000; // established
pub const OFF_SYSCLK: u32 = 0xc; // established
pub const OFF_VC_0: u32 = 0x80000; // established
pub const OFF_VC_1: u32 = 0x80004; // established
pub const OFF_VC_2: u32 = 0x80008; // established
pub const OFF_VC_3: u32 = 0x8000c; // established
pub const OFF_VC_4: u32 = 0x80010; // established
pub const OFF_VC_5: u32 = 0x80014; // established
pub const OFF_VC_6: u32 = 0x80018; // established
pub const OFF_VC_7: u32 = 0x8001c; // established
pub const OFF_VC_8: u32 = 0x80020; // established
pub const OFF_VC_START_XY: u32 = 0x1004c; // established
pub const OFF_VT_F2RF_LOCK: u32 = 0x1001c; // established
pub const OFF_VT_FLAGS: u32 = 0x10018; // established
pub const OFF_VT_HBLANK: u32 = 0x10014; // established
pub const OFF_VT_HCMAP: u32 = 0x1003c; // established
pub const OFF_VT_HPIXEN: u32 = 0x10034; // established
pub const OFF_VT_HSYNC: u32 = 0x1000c; // established
pub const OFF_VT_INTR01: u32 = 0x10020; // established
pub const OFF_VT_INTR23: u32 = 0x10024; // established
pub const OFF_VT_VBLANK: u32 = 0x10010; // established
pub const OFF_VT_VCMAP: u32 = 0x10040; // established
pub const OFF_VT_VPIXEN: u32 = 0x10038; // established
pub const OFF_VT_VSYNC: u32 = 0x10008; // established
pub const OFF_VT_XY: u32 = 0x10000; // established
pub const OFF_VT_XYMAX: u32 = 0x10004; // established
pub const TILE_LIST_BYTES_UNIT: u32 = 0x20; // established
pub const VC_TILE_REGS: u32 = 0x5; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn cmap_entry_ff804000() {
        assert_eq!(cmap_entry::r::get(0xff804000), 255);
        assert_eq!(cmap_entry::g::get(0xff804000), 128);
        assert_eq!(cmap_entry::b::get(0xff804000), 64);
    }

    #[test]
    fn ctrlstat_30000000() {
        assert_eq!(ctrlstat::pclk_select::get(0x30000000), 3);
        assert_eq!(ctrlstat::chip_rev::get(0x30000000), 0);
    }

    #[test]
    fn did_control_10005() {
        assert_eq!(did_control::did_base::get(0x10005), 5);
        assert_eq!(did_control::dma_enable::get(0x10005), 1);
    }

    #[test]
    fn dotclock_100000() {
        assert_eq!(dotclock::run::get(0x100000), 1);
        assert_eq!(dotclock::p::get(0x100000), 0);
    }

    #[test]
    fn fp_de_303326() {
        assert_eq!(fp_de::off::get(0x303326), 806);
        assert_eq!(fp_de::on::get(0x303326), 771);
    }

    #[test]
    fn fp_hdrv_fff() {
        assert_eq!(fp_hdrv::off::get(0xfff), 4095);
        assert_eq!(fp_hdrv::on::get(0xfff), 0);
    }

    #[test]
    fn fp_vdrv_1fff() {
        assert_eq!(fp_vdrv::off::get(0x1fff), 4095);
        assert_eq!(fp_vdrv::on::get(0x1fff), 1);
    }

    #[test]
    fn mode_entry_41() {
        assert_eq!(mode_entry::buf::get(0x41), 1);
        assert_eq!(mode_entry::typ::get(0x41), 0);
        assert_eq!(mode_entry::cm::get(0x41), 2);
    }

    #[test]
    fn vt_xymax_20d320() {
        assert_eq!(vt_xymax::htotal::get(0x20d320), 800);
        assert_eq!(vt_xymax::vtotal::get(0x20d320), 525);
    }
}
