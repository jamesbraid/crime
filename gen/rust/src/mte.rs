// generated from defs/mte.toml by defs-gen - do not edit, change the source
// O2 CRIME memory transfer engine registers and tile layout
#![allow(dead_code)]

/// (established)
pub mod mode {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3000;
    pub mod copy { // bits 11:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stipple { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod depth { // bits 9:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u64 = 0x3;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BITS8: u64 = 0; // established
        pub const BITS16: u64 = 1; // established
        pub const BITS32: u64 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Bits8,
            Bits16,
            Bits32,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::Bits8,
                    1 => Self::Bits16,
                    2 => Self::Bits32,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::Bits8 => 0,
                    Self::Bits16 => 1,
                    Self::Bits32 => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod src_buf { // bits 7:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u64 = 0x7;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FB_A: u64 = 0; // established
        pub const FB_B: u64 = 1; // established
        pub const FB_C: u64 = 2; // established
        pub const TEX: u64 = 3; // established
        pub const LIN_A: u64 = 4; // established
        pub const LIN_B: u64 = 5; // established
        pub const CID: u64 = 6; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            FbA,
            FbB,
            FbC,
            Tex,
            LinA,
            LinB,
            Cid,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::FbA,
                    1 => Self::FbB,
                    2 => Self::FbC,
                    3 => Self::Tex,
                    4 => Self::LinA,
                    5 => Self::LinB,
                    6 => Self::Cid,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::FbA => 0,
                    Self::FbB => 1,
                    Self::FbC => 2,
                    Self::Tex => 3,
                    Self::LinA => 4,
                    Self::LinB => 5,
                    Self::Cid => 6,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod dst_buf { // bits 4:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u64 = 0x7;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FB_A: u64 = 0; // established
        pub const FB_B: u64 = 1; // established
        pub const FB_C: u64 = 2; // established
        pub const TEX: u64 = 3; // established
        pub const LIN_A: u64 = 4; // established
        pub const LIN_B: u64 = 5; // established
        pub const CID: u64 = 6; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            FbA,
            FbB,
            FbC,
            Tex,
            LinA,
            LinB,
            Cid,
            Other(u64),
        }
        impl Value {
            pub const fn from_raw(v: u64) -> Self {
                match v {
                    0 => Self::FbA,
                    1 => Self::FbB,
                    2 => Self::FbC,
                    3 => Self::Tex,
                    4 => Self::LinA,
                    5 => Self::LinB,
                    6 => Self::Cid,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u64 {
                match self {
                    Self::FbA => 0,
                    Self::FbB => 1,
                    Self::FbC => 2,
                    Self::Tex => 3,
                    Self::LinA => 4,
                    Self::LinB => 5,
                    Self::Cid => 6,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod src_ecc { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dst_ecc { // bits 0:0, established
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
/// (inferred)
pub mod bytemask {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3008;
}
/// (inferred)
pub mod stipplemask {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3010;
}
/// (inferred)
pub mod fg {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3018;
}
/// (inferred)
pub mod src0 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3020;
}
/// (inferred)
pub mod src1 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3028;
}
/// (inferred)
pub mod dst0 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3030;
}
/// (inferred)
pub mod dst1 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3038;
}
/// (inferred)
pub mod src_ystep {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3040;
}
/// (inferred)
pub mod dst_ystep {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3048;
}
/// (inferred)
pub mod null {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3070;
}
/// (inferred)
pub mod flush {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x3078;
}
/// (established)
pub mod addr {
    pub const WIDTH: u32 = 32;
    pub mod byte_col { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod row { // bits 15:0, established
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
pub const SUBTILE_BLOCK_BYTES: u32 = 0x20; // inferred
pub const SUBTILE_BYTES: u32 = 0x2000; // inferred
pub const TILE_BYTES: u32 = 0x10000; // established
pub const TILE_ROWS: u32 = 0x80; // established
pub const TILE_ROW_BYTES: u32 = 0x200; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn mode_10b() {
        assert_eq!(mode::copy::get(0x10b), 0);
        assert_eq!(mode::depth::get(0x10b), 1);
        assert_eq!(mode::dst_buf::get(0x10b), 2);
        assert_eq!(mode::src_ecc::get(0x10b), 1);
        assert_eq!(mode::dst_ecc::get(0x10b), 1);
    }

    #[test]
    fn mode_820() {
        assert_eq!(mode::copy::get(0x820), 1);
        assert_eq!(mode::stipple::get(0x820), 0);
        assert_eq!(mode::depth::get(0x820), 0);
        assert_eq!(mode::src_buf::get(0x820), 1);
        assert_eq!(mode::dst_buf::get(0x820), 0);
    }

    #[test]
    fn addr_400020() {
        assert_eq!(addr::byte_col::get(0x400020), 64);
        assert_eq!(addr::row::get(0x400020), 32);
    }
}
