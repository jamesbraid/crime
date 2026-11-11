// generated from o2gfx f96d74030387 RE_DECODE.h - do not edit, regenerate in o2gfx
//!
//! CRIME rendering engine interface buffer, linear
//! translation tables and clip registers.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established: shipped software walks the buffer as a ring of 64; the specification text says 128.
pub const IB_ENTRIES: u32 = 64;
/// established: five screen masks.
pub const SCRMASK_COUNT: u32 = 5;
/// established: doublewords per linear table, two page entries each.
pub const LIN_TLB_REGS: u32 = 16;
/// established: address bit that selects the start alias of a register.
pub const START_ALIAS_BIT: u32 = 11;

/// CRIME rendering engine register `ib_ctl`: write, 32-bit; reset unknown; established.
pub const REG_IB_CTL: u32 = 0x0400;
pub const REG_IB_CTL_WIDTH: u32 = 32;
/// CRIME rendering engine register `ib_reset`: write, 32-bit; reset unknown; inferred.
pub const REG_IB_RESET: u32 = 0x0408;
pub const REG_IB_RESET_WIDTH: u32 = 32;
/// CRIME rendering engine register `tlb_lin_a`: read/write, 64-bit, 16 consecutive registers; reset unknown; established.
pub const REG_TLB_LIN_A: u32 = 0x1700;
pub const REG_TLB_LIN_A_WIDTH: u32 = 64;
pub const REG_TLB_LIN_A_COUNT: u32 = 16;
/// CRIME rendering engine register `tlb_lin_b`: read/write, 64-bit, 16 consecutive registers; reset unknown; established.
pub const REG_TLB_LIN_B: u32 = 0x1780;
pub const REG_TLB_LIN_B_WIDTH: u32 = 64;
pub const REG_TLB_LIN_B_COUNT: u32 = 16;
/// CRIME rendering engine register `clipmode`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CLIPMODE: u32 = 0x2010;
pub const REG_CLIPMODE_WIDTH: u32 = 32;
/// CRIME rendering engine register `scrmask`: read/write, 64-bit, 5 consecutive registers; reset unknown; established.
pub const REG_SCRMASK: u32 = 0x2020;
pub const REG_SCRMASK_WIDTH: u32 = 64;
pub const REG_SCRMASK_COUNT: u32 = 5;

/// Values of `group` in `IbaddrHi` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum IbaddrHiGroup {
    /// established.
    Interface,
    /// established.
    Tlb,
    /// established.
    PixelPipe,
    /// established.
    Transfer,
    /// A value the notes do not name.
    Other(u8),
}

impl IbaddrHiGroup {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Interface,
            0x1 => Self::Tlb,
            0x2 => Self::PixelPipe,
            0x3 => Self::Transfer,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Interface => 0x0,
            Self::Tlb => 0x1,
            Self::PixelPipe => 0x2,
            Self::Transfer => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `lane` in `IbaddrHi` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum IbaddrHiLane {
    /// inferred.
    None,
    /// inferred.
    Word1,
    /// inferred.
    Word0,
    /// inferred.
    Dword,
    /// A value the notes do not name.
    Other(u8),
}

impl IbaddrHiLane {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::None,
            0x1 => Self::Word1,
            0x2 => Self::Word0,
            0x3 => Self::Dword,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::None => 0x0,
            Self::Word1 => 0x1,
            Self::Word0 => 0x2,
            Self::Dword => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `IBADDR_HI` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IbaddrHi(u32);

impl IbaddrHi {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, established.
    pub const fn index(self) -> u32 {
        self.0 & 0xff
    }

    /// Bits 10:8, established.
    pub const fn group(self) -> IbaddrHiGroup {
        IbaddrHiGroup::from_bits((self.0 >> 8) & 0x7)
    }

    /// Bits 12:11, inferred.
    pub const fn lane(self) -> IbaddrHiLane {
        IbaddrHiLane::from_bits((self.0 >> 11) & 0x3)
    }

    /// Bit 13, inferred.
    pub const fn start_flag(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }
}

/// The `ib_ctl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IbCtl(u32);

impl IbCtl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, inferred.
    pub const fn count(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bits 13:7, inferred.
    pub const fn stall(self) -> u32 {
        (self.0 >> 7) & 0x7f
    }

    /// Bits 20:14, inferred.
    pub const fn empty(self) -> u32 {
        (self.0 >> 14) & 0x7f
    }

    /// Bits 27:21, inferred.
    pub const fn full(self) -> u32 {
        (self.0 >> 21) & 0x7f
    }
}

/// The `LINENT` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Linent(u32);

impl Linent {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 30:0, established.
    pub const fn page(self) -> u32 {
        self.0 & 0x7fffffff
    }

    /// Bit 31, inferred.
    pub const fn valid(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// The `clipmode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Clipmode(u32);

impl Clipmode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, established.
    pub const fn mode(self) -> u32 {
        self.0 & 0x1f
    }

    /// Bits 9:5, established.
    pub const fn enable(self) -> u32 {
        (self.0 >> 5) & 0x1f
    }

    /// Bit 10, inferred.
    pub const fn clip_id_map(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, inferred.
    pub const fn clip_id_test(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }
}

/// The `SCRMASK_HI` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ScrmaskHi(u32);

impl ScrmaskHi {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 31:16, established.
    pub const fn x_start(self) -> u32 {
        self.0 >> 16
    }

    /// Bits 15:0, established.
    pub const fn y_start(self) -> u32 {
        self.0 & 0xffff
    }
}

/// The `SCRMASK_LO` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ScrmaskLo(u32);

impl ScrmaskLo {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 31:16, established.
    pub const fn x_end(self) -> u32 {
        self.0 >> 16
    }

    /// Bits 15:0, established.
    pub const fn y_end(self) -> u32 {
        self.0 & 0xffff
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_re_ib_ctl_fefff0a() {
        let w = IbCtl::new(0xfefff0a);
        assert_eq!(w.count(), 10, "count");
        assert_eq!(w.stall(), 126, "stall");
        assert_eq!(w.empty(), 63, "empty");
        assert_eq!(w.full(), 127, "full");
    }

    #[test]
    fn testvec_linent_80000123() {
        let w = Linent::new(0x80000123);
        assert_eq!(w.page(), 291, "page");
        assert_eq!(w.valid() as u32, 1, "valid");
    }

    #[test]
    fn testvec_re_clipmode_21() {
        let w = Clipmode::new(0x21);
        assert_eq!(w.mode(), 1, "mode");
        assert_eq!(w.enable(), 1, "enable");
        assert_eq!(w.clip_id_map() as u32, 0, "clip_id_map");
        assert_eq!(w.clip_id_test() as u32, 0, "clip_id_test");
    }

    #[test]
    fn testvec_re_clipmode_63() {
        let w = Clipmode::new(0x63);
        assert_eq!(w.mode(), 3, "mode");
        assert_eq!(w.enable(), 3, "enable");
    }

    #[test]
    fn testvec_re_clipmode_3ff() {
        let w = Clipmode::new(0x3ff);
        assert_eq!(w.mode(), 31, "mode");
        assert_eq!(w.enable(), 31, "enable");
    }

    #[test]
    fn testvec_re_clipmode_821() {
        let w = Clipmode::new(0x821);
        assert_eq!(w.mode(), 1, "mode");
        assert_eq!(w.enable(), 1, "enable");
        assert_eq!(w.clip_id_test() as u32, 1, "clip_id_test");
    }
}
