// generated from o2gfx f96d74030387 GBE_DECODE.h - do not edit, regenerate in o2gfx
//!
//! GBE display back end register words, tables and
//! offsets.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const OFF_CTRLSTAT: u32 = 0;
/// established.
pub const OFF_DOTCLOCK: u32 = 4;
/// established.
pub const OFF_I2C: u32 = 8;
/// established.
pub const OFF_SYSCLK: u32 = 12;
/// established.
pub const OFF_I2CFP: u32 = 16;
/// established.
pub const OFF_DEVICE_ID: u32 = 20;
/// established.
pub const OFF_VT_XY: u32 = 0x10000;
/// established.
pub const OFF_VT_XYMAX: u32 = 0x10004;
/// established.
pub const OFF_VT_VSYNC: u32 = 0x10008;
/// established.
pub const OFF_VT_HSYNC: u32 = 0x1000c;
/// established.
pub const OFF_VT_VBLANK: u32 = 0x10010;
/// established.
pub const OFF_VT_HBLANK: u32 = 0x10014;
/// established.
pub const OFF_VT_FLAGS: u32 = 0x10018;
/// established.
pub const OFF_VT_F2RF_LOCK: u32 = 0x1001c;
/// established.
pub const OFF_VT_INTR01: u32 = 0x10020;
/// established.
pub const OFF_VT_INTR23: u32 = 0x10024;
/// established: gbe-spec register table, pages 39 and 40.
pub const OFF_FP_HDRV: u32 = 0x10028;
/// established: gbe-spec register table, pages 39 and 40.
pub const OFF_FP_VDRV: u32 = 0x1002c;
/// established: gbe-spec register table, pages 39 and 40.
pub const OFF_FP_DE: u32 = 0x10030;
/// established.
pub const OFF_VT_HPIXEN: u32 = 0x10034;
/// established.
pub const OFF_VT_VPIXEN: u32 = 0x10038;
/// established.
pub const OFF_VT_HCMAP: u32 = 0x1003c;
/// established.
pub const OFF_VT_VCMAP: u32 = 0x10040;
/// established: gbe-spec register table, pages 39 and 40.
pub const OFF_DID_START_XY: u32 = 0x10044;
/// established: gbe-spec register table, pages 39 and 40.
pub const OFF_CRS_START_XY: u32 = 0x10048;
/// established: gbe-spec register table, pages 39 and 40.
pub const OFF_VC_START_XY: u32 = 0x1004c;
/// established.
pub const OFF_OVR_WIDTH_TILE: u32 = 0x20000;
/// established.
pub const OFF_OVR_INHWCTRL: u32 = 0x20004;
/// established.
pub const OFF_OVR_CONTROL: u32 = 0x20008;
/// established.
pub const OFF_FRM_SIZE_TILE: u32 = 0x30000;
/// established.
pub const OFF_FRM_SIZE_PIXEL: u32 = 0x30004;
/// established.
pub const OFF_FRM_INHWCTRL: u32 = 0x30008;
/// established.
pub const OFF_FRM_CONTROL: u32 = 0x3000c;
/// established.
pub const OFF_DID_INHWCTRL: u32 = 0x40000;
/// established.
pub const OFF_DID_CONTROL: u32 = 0x40004;
/// established: 32 window-ID entries.
pub const OFF_MODE_TABLE: u32 = 0x48000;
/// established: video capture region, left and right.
pub const OFF_VC_0: u32 = 0x80000;
/// established: video capture region, top and bottom.
pub const OFF_VC_1: u32 = 0x80004;
/// established: video capture control.
pub const OFF_VC_2: u32 = 0x80008;
/// established: video capture field and descriptor control.
pub const OFF_VC_3: u32 = 0x8000c;
/// established: capture tile addresses, tiles 1 and 2.
pub const OFF_VC_4: u32 = 0x80010;
/// established: capture tile addresses, tiles 3 and 4.
pub const OFF_VC_5: u32 = 0x80014;
/// established: capture tile addresses, tiles 5 and 6.
pub const OFF_VC_6: u32 = 0x80018;
/// established: capture tile addresses, tiles 7 and 8.
pub const OFF_VC_7: u32 = 0x8001c;
/// established: capture tile addresses, tiles 9 and 10; write only.
pub const OFF_VC_8: u32 = 0x80020;
/// established: colour map.
pub const OFF_CMAP: u32 = 0x50000;
/// established.
pub const OFF_CMAP_FIFO: u32 = 0x58000;
/// established: 256 gamma entries.
pub const OFF_GMAP: u32 = 0x60000;
/// established.
pub const OFF_CRS_POS: u32 = 0x70000;
/// established.
pub const OFF_CRS_CTL: u32 = 0x70004;
/// established.
pub const OFF_CRS_CMAP: u32 = 0x70008;
/// established.
pub const OFF_CRS_GLYPH: u32 = 0x78000;
/// established: the probe requires this.
pub const DEVICE_ID_VALUE: u32 = 0x666;
/// established.
pub const MODE_ENTRIES: u32 = 32;
/// established: entries are consecutive 32-bit words, so swap slot n sits at the table base plus 4 * n.
pub const MODE_ENTRY_STRIDE: u32 = 4;
/// established: VC_4 to VC_8 hold the ten tiles of one captured field, two per register.
pub const VC_TILE_REGS: u32 = 5;
/// established.
pub const GMAP_ENTRIES: u32 = 0x100;
/// established: revision 1.1.
pub const CMAP_ENTRIES_REV1: u32 = 0x1200;
/// inferred: revision 2.
pub const CMAP_ENTRIES_REV2: u32 = 0x1800;
/// established.
pub const CMAP_FIFO_DEPTH_REV1: u32 = 64;
/// inferred.
pub const CMAP_FIFO_DEPTH_REV2: u32 = 63;
/// established: free-slot threshold software waits for.
pub const CMAP_FIFO_LOW_WATER: u32 = 48;
/// established: a changed tile pointer is seen by adding this.
pub const TILE_LIST_BYTES_UNIT: u32 = 32;

/// Values of `pclk_select` in `Ctrlstat` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CtrlstatPclkSelect {
    /// established.
    External,
    /// established.
    Internal,
    /// A value the notes do not name.
    Other(u8),
}

impl CtrlstatPclkSelect {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::External,
            0x3 => Self::Internal,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::External => 0x0,
            Self::Internal => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `depth` in `FrmSizeTile` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum FrmSizeTileDepth {
    /// established.
    Bits8,
    /// established.
    Bits16,
    /// established.
    Bits32,
    /// A value the notes do not name.
    Other(u8),
}

impl FrmSizeTileDepth {
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

/// Values of `buf` in `ModeEntry` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ModeEntryBuf {
    /// established.
    Lower,
    /// established.
    Upper,
    /// established.
    Both,
    /// A value the notes do not name.
    Other(u8),
}

impl ModeEntryBuf {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x1 => Self::Lower,
            0x2 => Self::Upper,
            0x3 => Self::Both,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Lower => 0x1,
            Self::Upper => 0x2,
            Self::Both => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `typ` in `ModeEntry` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ModeEntryTyp {
    /// established.
    I8,
    /// established.
    I12,
    /// established.
    Rg3b2,
    /// established.
    Rgb4,
    /// established.
    Rgb5,
    /// established.
    Rgb8,
    /// established.
    Rgba5,
    /// established.
    Rgb10,
    /// A value the notes do not name.
    Other(u8),
}

impl ModeEntryTyp {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::I8,
            0x1 => Self::I12,
            0x2 => Self::Rg3b2,
            0x3 => Self::Rgb4,
            0x4 => Self::Rgb5,
            0x5 => Self::Rgb8,
            0x6 => Self::Rgba5,
            0x7 => Self::Rgb10,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::I8 => 0x0,
            Self::I12 => 0x1,
            Self::Rg3b2 => 0x2,
            Self::Rgb4 => 0x3,
            Self::Rgb5 => 0x4,
            Self::Rgb8 => 0x5,
            Self::Rgba5 => 0x6,
            Self::Rgb10 => 0x7,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `CTRLSTAT` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Ctrlstat(u32);

impl Ctrlstat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn chip_rev(self) -> u32 {
        self.0 & 0xf
    }

    /// Bit 12, established.
    pub const fn io3_data(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 14, established.
    pub const fn io4_data(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bit 16, established.
    pub const fn io5_data(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }

    /// Bit 18, established.
    pub const fn io6_data(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bits 29:28, established.
    pub const fn pclk_select(self) -> CtrlstatPclkSelect {
        CtrlstatPclkSelect::from_bits((self.0 >> 28) & 0x3)
    }
}

/// The `DOTCLOCK` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dotclock(u32);

impl Dotclock {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, established.
    pub const fn m_minus_1(self) -> u32 {
        self.0 & 0xff
    }

    /// Bits 13:8, established.
    pub const fn n_minus_1(self) -> u32 {
        (self.0 >> 8) & 0x3f
    }

    /// Bits 15:14, established.
    pub const fn p(self) -> u32 {
        (self.0 >> 14) & 0x3
    }

    /// Bit 20, established.
    pub const fn run(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }
}

/// The `VT_XY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtXy(u32);

impl VtXy {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 31, established.
    pub const fn freeze(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// The `VT_XYMAX` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtXymax(u32);

impl VtXymax {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn htotal(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn vtotal(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VT_INTR01` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtIntr01(u32);

impl VtIntr01 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn line1(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn line0(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VT_INTR23` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtIntr23(u32);

impl VtIntr23 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn line3(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn line2(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `FP_HDRV` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FpHdrv(u32);

impl FpHdrv {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn off(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn on(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `FP_VDRV` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FpVdrv(u32);

impl FpVdrv {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn off(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn on(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `FP_DE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FpDe(u32);

impl FpDe {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn off(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn on(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `DID_START_XY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidStartXy(u32);

impl DidStartXy {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn startx(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn starty(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `CRS_START_XY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CrsStartXy(u32);

impl CrsStartXy {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn startx(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn starty(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VT_FLAGS` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtFlags(u32);

impl VtFlags {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 5, established.
    pub const fn sync_low(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }
}

/// The `VT_HCMAP` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtHcmap(u32);

impl VtHcmap {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn off(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn on(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VT_VCMAP` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VtVcmap(u32);

impl VtVcmap {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn off(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn on(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VC_START_XY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VcStartXy(u32);

impl VcStartXy {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn startx(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn starty(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `OVR_WIDTH_TILE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OvrWidthTile(u32);

impl OvrWidthTile {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 13, established.
    pub const fn fifo_reset(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }
}

/// The `FRM_SIZE_TILE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FrmSizeTile(u32);

impl FrmSizeTile {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, established.
    pub const fn remainder(self) -> u32 {
        self.0 & 0x1f
    }

    /// Bits 12:5, established.
    pub const fn width_tiles(self) -> u32 {
        (self.0 >> 5) & 0xff
    }

    /// Bits 14:13, established.
    pub const fn depth(self) -> FrmSizeTileDepth {
        FrmSizeTileDepth::from_bits((self.0 >> 13) & 0x3)
    }

    /// Bit 15, established.
    pub const fn fifo_reset(self) -> bool {
        (self.0 >> 15) & 1 != 0
    }
}

/// The `OVR_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OvrControl(u32);

impl OvrControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma_enable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 31:5, established.
    pub const fn tile_list_ptr(self) -> u32 {
        self.0 >> 5
    }
}

/// The `OVR_INHWCTRL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OvrInhwctrl(u32);

impl OvrInhwctrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma_enable(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `FRM_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FrmControl(u32);

impl FrmControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma_enable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 31:5, established.
    pub const fn tile_list_ptr(self) -> u32 {
        self.0 >> 5
    }
}

/// The `FRM_INHWCTRL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FrmInhwctrl(u32);

impl FrmInhwctrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma_enable(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `DID_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidControl(u32);

impl DidControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn did_base(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bit 16, established.
    pub const fn dma_enable(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }
}

/// The `DID_INHWCTRL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidInhwctrl(u32);

impl DidInhwctrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn did_base(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bit 16, established.
    pub const fn dma_enable(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }
}

/// The `MODE_ENTRY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ModeEntry(u32);

impl ModeEntry {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn buf(self) -> ModeEntryBuf {
        ModeEntryBuf::from_bits(self.0 & 0x3)
    }

    /// Bits 4:2, established.
    pub const fn typ(self) -> ModeEntryTyp {
        ModeEntryTyp::from_bits((self.0 >> 2) & 0x7)
    }

    /// Bits 9:5, established.
    pub const fn cm(self) -> u32 {
        (self.0 >> 5) & 0x1f
    }

    /// Bit 10, established.
    pub const fn gm(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bits 12:11, established.
    pub const fn aux(self) -> u32 {
        (self.0 >> 11) & 0x3
    }
}

/// The `DID_FRAME` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidFrame(u32);

impl DidFrame {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 10:0, established.
    pub const fn yend(self) -> u32 {
        self.0 & 0x7ff
    }

    /// Bits 18:11, established.
    pub const fn offset(self) -> u32 {
        (self.0 >> 11) & 0xff
    }

    /// Bits 25:19, established.
    pub const fn block(self) -> u32 {
        (self.0 >> 19) & 0x7f
    }
}

/// The `DID_LINE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidLine(u32);

impl DidLine {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 10:0, established.
    pub const fn xend(self) -> u32 {
        self.0 & 0x7ff
    }

    /// Bits 15:11, established.
    pub const fn did(self) -> u32 {
        (self.0 >> 11) & 0x1f
    }
}

/// The `TILE_LIST_ENTRY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TileListEntry(u32);

impl TileListEntry {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:0, established.
    pub const fn tile(self) -> u32 {
        self.0 & 0x1fff
    }
}

/// The `VC_0` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Vc0(u32);

impl Vc0 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn left(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn right(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VC_1` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Vc1(u32);

impl Vc1 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn top(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn bottom(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `VC_2` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Vc2(u32);

impl Vc2 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma_enable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn flicker_filter(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn auto_field(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn full_screen(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn cs_bypass(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `VC_3` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Vc3(u32);

impl Vc3 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn field_select(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn descr_dma_enable(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn field_corrupt(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn end_of_field(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn current_field(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bits 31:5, established.
    pub const fn descr_ptr(self) -> u32 {
        self.0 >> 5
    }
}

/// The `VC_TILES` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VcTiles(u32);

impl VcTiles {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 31:16, established.
    pub const fn tile_first(self) -> u32 {
        self.0 >> 16
    }

    /// Bits 15:0, established.
    pub const fn tile_second(self) -> u32 {
        self.0 & 0xffff
    }
}

/// The `CMAP_FIFO` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CmapFifo(u32);

impl CmapFifo {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:0, established.
    pub const fn free(self) -> u32 {
        self.0 & 0x3f
    }
}

/// The `CMAP_ENTRY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CmapEntry(u32);

impl CmapEntry {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:8, established.
    pub const fn b(self) -> u32 {
        (self.0 >> 8) & 0xff
    }

    /// Bits 23:16, established.
    pub const fn g(self) -> u32 {
        (self.0 >> 16) & 0xff
    }

    /// Bits 31:24, established.
    pub const fn r(self) -> u32 {
        self.0 >> 24
    }
}

/// The `CRS_CTL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CrsCtl(u32);

impl CrsCtl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn enable(self) -> bool {
        self.0 & 1 != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_vt_xymax_20d320() {
        let w = VtXymax::new(0x20d320);
        assert_eq!(w.htotal(), 800, "htotal");
        assert_eq!(w.vtotal(), 525, "vtotal");
    }

    #[test]
    fn testvec_ctrlstat_30000000() {
        let w = Ctrlstat::new(0x30000000);
        assert_eq!(w.pclk_select().bits(), 3, "pclk_select");
        assert_eq!(w.chip_rev(), 0, "chip_rev");
    }

    #[test]
    fn testvec_dotclock_100000() {
        let w = Dotclock::new(0x100000);
        assert_eq!(w.run() as u32, 1, "run");
        assert_eq!(w.p(), 0, "p");
    }

    #[test]
    fn testvec_did_control_10005() {
        let w = DidControl::new(0x10005);
        assert_eq!(w.did_base(), 5, "did_base");
        assert_eq!(w.dma_enable() as u32, 1, "dma_enable");
    }

    #[test]
    fn testvec_mode_entry_41() {
        let w = ModeEntry::new(0x41);
        assert_eq!(w.buf().bits(), 1, "buf");
        assert_eq!(w.typ().bits(), 0, "typ");
        assert_eq!(w.cm(), 2, "cm");
    }

    #[test]
    fn testvec_cmap_entry_ff804000() {
        let w = CmapEntry::new(0xff804000);
        assert_eq!(w.r(), 255, "r");
        assert_eq!(w.g(), 128, "g");
        assert_eq!(w.b(), 64, "b");
    }

    #[test]
    fn testvec_fp_hdrv_fff() {
        let w = FpHdrv::new(0xfff);
        assert_eq!(w.off(), 4095, "off");
        assert_eq!(w.on(), 0, "on");
    }

    #[test]
    fn testvec_fp_vdrv_1fff() {
        let w = FpVdrv::new(0x1fff);
        assert_eq!(w.off(), 4095, "off");
        assert_eq!(w.on(), 1, "on");
    }

    #[test]
    fn testvec_fp_de_303326() {
        let w = FpDe::new(0x303326);
        assert_eq!(w.off(), 806, "off");
        assert_eq!(w.on(), 771, "on");
    }
}
