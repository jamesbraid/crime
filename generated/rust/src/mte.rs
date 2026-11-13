// generated from devices/mte/registers.toml by defs-gen - do not edit, change the source
// O2 CRIME memory transfer engine registers and tile layout
#![allow(dead_code)]

/// Table 7-15 gives the register as 32 bits, readable and writable (established, [spec] PDF 183). Bits 31:12 are reserved (established, [spec] PDF 184).  (established)
pub mod mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3000;
    pub mod copy { // bits 11:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stipple { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod depth { // bits 9:8, established
        pub const SHIFT: u32 = 8;
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
    pub mod src_buf { // bits 7:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FB_A: u32 = 0; // established
        pub const FB_B: u32 = 1; // established
        pub const FB_C: u32 = 2; // established
        pub const TEX: u32 = 3; // established
        pub const LIN_A: u32 = 4; // established
        pub const LIN_B: u32 = 5; // established
        pub const CID: u32 = 6; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            FbA,
            FbB,
            FbC,
            Tex,
            LinA,
            LinB,
            Cid,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
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
            pub const fn raw(self) -> u32 {
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
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FB_A: u32 = 0; // established
        pub const FB_B: u32 = 1; // established
        pub const FB_C: u32 = 2; // established
        pub const TEX: u32 = 3; // established
        pub const LIN_A: u32 = 4; // established
        pub const LIN_B: u32 = 5; // established
        pub const CID: u32 = 6; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            FbA,
            FbB,
            FbC,
            Tex,
            LinA,
            LinB,
            Cid,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
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
            pub const fn raw(self) -> u32 {
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
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dst_ecc { // bits 0:0, established
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
/// Table 7-15 gives the byte mask as 32 bits, readable and writable (established, [spec] PDF 183). Its bit polarity and bit-to-byte order are not stated  (established)
pub mod bytemask {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3008;
}
/// Write-only, and marked non-global in Table 7-15 (established, [spec] PDF 183). Reads are not defined. (established)
pub mod stipplemask {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3010;
}
/// The clear value, 32 bits, readable and writable (established, [spec] PDF 183). (established)
pub mod fg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3018;
}
/// Source start address, framebuffer or linear, 32 bits, readable and writable (established, [spec] PDF 183). (established)
pub mod src0 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3020;
}
/// Second source address word, framebuffer or linear, 32 bits, readable and writable. Table 7-15 describes it as a start address, the same as src0 (estab (established)
pub mod src1 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3028;
}
/// Destination start address, framebuffer or linear, 32 bits, write-only and marked non-global (established, [spec] PDF 183). (established)
pub mod dst0 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3030;
}
/// Destination end address, framebuffer or linear, 32 bits, write-only and marked non-global (established, [spec] PDF 183). (established)
pub mod dst1 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3038;
}
/// Source row step, 32 bits, readable and writable (established, [spec] PDF 184). (established)
pub mod src_ystep {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3040;
}
/// Destination row step, 32 bits, readable and writable (established, [spec] PDF 184). (established)
pub mod dst_ystep {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3048;
}
/// Null register, write-only and marked non-global (established, [spec] PDF 184). Its effect is not stated (see devices/mte/mte.md). (established)
pub mod null {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3070;
}
/// Flush command, 32 bits, write-only (established, [spec] PDF 184). (established)
pub mod flush {
    pub const WIDTH: u32 = 32;
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
pub const HOST_CHUNK_BYTES: u32 = 0x20000; // established
pub const MODE_HOST_CLEAR: u32 = 0x11; // established
pub const MODE_HOST_COPY: u32 = 0x897; // established
pub const MODE_X_COPY: u32 = 0x820; // established
pub const SUBTILE_BLOCK_BYTES: u32 = 0x20; // inferred
pub const SUBTILE_BYTES: u32 = 0x2000; // inferred
pub const TILE_BYTES: u32 = 0x10000; // established
pub const TILE_ROWS: u32 = 0x80; // established
pub const TILE_ROW_BYTES: u32 = 0x200; // established
pub const X_BLOCK_BYTES: u32 = 0x100; // established
pub const X_ROWS_16: u32 = 0x10; // established
pub const X_ROWS_32: u32 = 0x8; // established

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
