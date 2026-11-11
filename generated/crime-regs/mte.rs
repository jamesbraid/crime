// generated from o2gfx 4893c3f9552a MTE_DECODE.h - do not edit, regenerate in o2gfx
//!
//! CRIME memory transfer engine registers, address word
//! and tile geometry.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const TILE_BYTES: u32 = 0x10000;
/// established.
pub const TILE_ROW_BYTES: u32 = 0x200;
/// established.
pub const TILE_ROWS: u32 = 128;
/// inferred: 8 bytes by 4 rows.
pub const SUBTILE_BLOCK_BYTES: u32 = 32;
/// inferred: 128 bytes by 64 rows.
pub const SUBTILE_BYTES: u32 = 0x2000;

/// Memory transfer engine register `mode`: read/write, 64-bit; reset unknown; established.
pub const REG_MODE: u32 = 0x3000;
pub const REG_MODE_WIDTH: u32 = 64;
/// Memory transfer engine register `bytemask`: read/write, 64-bit; reset unknown; inferred.
pub const REG_BYTEMASK: u32 = 0x3008;
pub const REG_BYTEMASK_WIDTH: u32 = 64;
/// Memory transfer engine register `stipplemask`: read/write, 64-bit; reset unknown; inferred.
pub const REG_STIPPLEMASK: u32 = 0x3010;
pub const REG_STIPPLEMASK_WIDTH: u32 = 64;
/// Memory transfer engine register `fg`: read/write, 64-bit; reset unknown; inferred.
pub const REG_FG: u32 = 0x3018;
pub const REG_FG_WIDTH: u32 = 64;
/// Memory transfer engine register `src0`: read/write, 64-bit; reset unknown; inferred.
pub const REG_SRC0: u32 = 0x3020;
pub const REG_SRC0_WIDTH: u32 = 64;
/// Memory transfer engine register `src1`: read/write, 64-bit; reset unknown; inferred.
pub const REG_SRC1: u32 = 0x3028;
pub const REG_SRC1_WIDTH: u32 = 64;
/// Memory transfer engine register `dst0`: read/write, 64-bit; reset unknown; inferred.
pub const REG_DST0: u32 = 0x3030;
pub const REG_DST0_WIDTH: u32 = 64;
/// Memory transfer engine register `dst1`: read/write, 64-bit; reset unknown; inferred.
pub const REG_DST1: u32 = 0x3038;
pub const REG_DST1_WIDTH: u32 = 64;
/// Memory transfer engine register `src_ystep`: read/write, 64-bit; reset unknown; inferred.
pub const REG_SRC_YSTEP: u32 = 0x3040;
pub const REG_SRC_YSTEP_WIDTH: u32 = 64;
/// Memory transfer engine register `dst_ystep`: read/write, 64-bit; reset unknown; inferred.
pub const REG_DST_YSTEP: u32 = 0x3048;
pub const REG_DST_YSTEP_WIDTH: u32 = 64;
/// Memory transfer engine register `null`: read/write, 64-bit; reset unknown; inferred.
pub const REG_NULL: u32 = 0x3070;
pub const REG_NULL_WIDTH: u32 = 64;
/// Memory transfer engine register `flush`: read/write, 64-bit; reset unknown; inferred.
pub const REG_FLUSH: u32 = 0x3078;
pub const REG_FLUSH_WIDTH: u32 = 64;

/// Values of `dst_buf` in `Mode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ModeDstBuf {
    /// established.
    FbA,
    /// established.
    FbB,
    /// established.
    FbC,
    /// established.
    Tex,
    /// established.
    LinA,
    /// established.
    LinB,
    /// established.
    Cid,
    /// A value the notes do not name.
    Other(u8),
}

impl ModeDstBuf {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::FbA,
            0x1 => Self::FbB,
            0x2 => Self::FbC,
            0x3 => Self::Tex,
            0x4 => Self::LinA,
            0x5 => Self::LinB,
            0x6 => Self::Cid,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::FbA => 0x0,
            Self::FbB => 0x1,
            Self::FbC => 0x2,
            Self::Tex => 0x3,
            Self::LinA => 0x4,
            Self::LinB => 0x5,
            Self::Cid => 0x6,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `src_buf` in `Mode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ModeSrcBuf {
    /// established.
    FbA,
    /// established.
    FbB,
    /// established.
    FbC,
    /// established.
    Tex,
    /// established.
    LinA,
    /// established.
    LinB,
    /// established.
    Cid,
    /// A value the notes do not name.
    Other(u8),
}

impl ModeSrcBuf {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::FbA,
            0x1 => Self::FbB,
            0x2 => Self::FbC,
            0x3 => Self::Tex,
            0x4 => Self::LinA,
            0x5 => Self::LinB,
            0x6 => Self::Cid,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::FbA => 0x0,
            Self::FbB => 0x1,
            Self::FbC => 0x2,
            Self::Tex => 0x3,
            Self::LinA => 0x4,
            Self::LinB => 0x5,
            Self::Cid => 0x6,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `depth` in `Mode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ModeDepth {
    /// established.
    Bits8,
    /// established.
    Bits16,
    /// established.
    Bits32,
    /// A value the notes do not name.
    Other(u8),
}

impl ModeDepth {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Bits8,
            0x1 => Self::Bits16,
            0x2 => Self::Bits32,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Bits8 => 0x0,
            Self::Bits16 => 0x1,
            Self::Bits32 => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Mode(u32);

impl Mode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dst_ecc(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn src_ecc(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bits 4:2, established.
    pub const fn dst_buf(self) -> ModeDstBuf {
        ModeDstBuf::from_bits((self.0 >> 2) & 0x7)
    }

    /// Bits 7:5, established.
    pub const fn src_buf(self) -> ModeSrcBuf {
        ModeSrcBuf::from_bits((self.0 >> 5) & 0x7)
    }

    /// Bits 9:8, established.
    pub const fn depth(self) -> ModeDepth {
        ModeDepth::from_bits((self.0 >> 8) & 0x3)
    }

    /// Bit 10, established.
    pub const fn stipple(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn copy(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }
}

/// The `ADDR` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Addr(u32);

impl Addr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn row(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bits 31:16, established.
    pub const fn byte_col(self) -> u32 {
        self.0 >> 16
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_mte_mode_820() {
        let w = Mode::new(0x820);
        assert_eq!(w.copy() as u32, 1, "copy");
        assert_eq!(w.stipple() as u32, 0, "stipple");
        assert_eq!(w.depth().bits(), 0, "depth");
        assert_eq!(w.src_buf().bits(), 1, "src_buf");
        assert_eq!(w.dst_buf().bits(), 0, "dst_buf");
    }

    #[test]
    fn testvec_mte_mode_10b() {
        let w = Mode::new(0x10b);
        assert_eq!(w.copy() as u32, 0, "copy");
        assert_eq!(w.depth().bits(), 1, "depth");
        assert_eq!(w.dst_buf().bits(), 2, "dst_buf");
        assert_eq!(w.src_ecc() as u32, 1, "src_ecc");
        assert_eq!(w.dst_ecc() as u32, 1, "dst_ecc");
    }

    #[test]
    fn testvec_addr_400020() {
        let w = Addr::new(0x400020);
        assert_eq!(w.byte_col(), 64, "byte_col");
        assert_eq!(w.row(), 32, "row");
    }
}
