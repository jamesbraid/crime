// generated from o2gfx 45f590324bef MACE_VIDEO_DECODE.h - do not edit, regenerate in o2gfx
//!
//! MACE video output channel registers and the chip-level
//! hardware configuration word.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// MACE video register `control`: read/write, 64-bit; reset 0; established.
pub const REG_CONTROL: u32 = 0x0000;
pub const REG_CONTROL_WIDTH: u32 = 64;
/// MACE video register `status`: read, 64-bit; reset 0; established.
pub const REG_STATUS: u32 = 0x0008;
pub const REG_STATUS_WIDTH: u32 = 64;
/// MACE video register `config`: read/write, 64-bit; reset unknown; established.
pub const REG_CONFIG: u32 = 0x0010;
pub const REG_CONFIG_WIDTH: u32 = 64;
/// MACE video register `next_desc`: read/write, 64-bit; reset unknown; established.
pub const REG_NEXT_DESC: u32 = 0x0018;
pub const REG_NEXT_DESC_WIDTH: u32 = 64;
/// MACE video register `fld_offset`: read/write, 64-bit; reset unknown; established.
pub const REG_FLD_OFFSET: u32 = 0x0020;
pub const REG_FLD_OFFSET_WIDTH: u32 = 64;
/// MACE video register `field_size`: read/write, 64-bit; reset unknown; established.
pub const REG_FIELD_SIZE: u32 = 0x0028;
pub const REG_FIELD_SIZE_WIDTH: u32 = 64;
/// MACE video register `hpad_odd`: read/write, 64-bit; reset unknown; established.
pub const REG_HPAD_ODD: u32 = 0x0030;
pub const REG_HPAD_ODD_WIDTH: u32 = 64;
/// MACE video register `vpad_odd`: read/write, 64-bit; reset unknown; established.
pub const REG_VPAD_ODD: u32 = 0x0038;
pub const REG_VPAD_ODD_WIDTH: u32 = 64;
/// MACE video register `hpad_even`: read/write, 64-bit; reset unknown; established.
pub const REG_HPAD_EVEN: u32 = 0x0040;
pub const REG_HPAD_EVEN_WIDTH: u32 = 64;
/// MACE video register `vpad_even`: read/write, 64-bit; reset unknown; established.
pub const REG_VPAD_EVEN: u32 = 0x0048;
pub const REG_VPAD_EVEN_WIDTH: u32 = 64;
/// MACE video register `gen_dly`: read/write, 64-bit; reset unknown; established.
pub const REG_GEN_DLY: u32 = 0x0050;
pub const REG_GEN_DLY_WIDTH: u32 = 64;
/// MACE video register `dma_desc`: read/write, 64-bit, 8 consecutive registers; reset unknown; established.
pub const REG_DMA_DESC: u32 = 0x0080;
pub const REG_DMA_DESC_WIDTH: u32 = 64;
pub const REG_DMA_DESC_COUNT: u32 = 8;
/// MACE video register `vhw_cfg`: read/write, 64-bit; reset unknown; established.
pub const REG_VHW_CFG: u32 = 0x0058;
pub const REG_VHW_CFG_WIDTH: u32 = 64;

/// Values of `audio_sync_source` in `VhwCfg` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum VhwCfgAudioSyncSource {
    /// established.
    None,
    /// established.
    External,
    /// established.
    PortAb,
    /// established.
    PortCd,
    /// A value the notes do not name.
    Other(u8),
}

impl VhwCfgAudioSyncSource {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::None,
            0x1 => Self::External,
            0x2 => Self::PortAb,
            0x3 => Self::PortCd,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::None => 0x0,
            Self::External => 0x1,
            Self::PortAb => 0x2,
            Self::PortCd => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `gbe_framelock_source` in `VhwCfg` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum VhwCfgGbeFramelockSource {
    /// established.
    OutputEf,
    /// established.
    External,
    /// established.
    PortAb,
    /// established.
    PortCd,
    /// A value the notes do not name.
    Other(u8),
}

impl VhwCfgGbeFramelockSource {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::OutputEf,
            0x1 => Self::External,
            0x2 => Self::PortAb,
            0x3 => Self::PortCd,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::OutputEf => 0x0,
            Self::External => 0x1,
            Self::PortAb => 0x2,
            Self::PortCd => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Control(u32);

impl Control {
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
    pub const fn int_vsync(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn int_dma_done(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn int_genlock_lost(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn int_buffer(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn int_fifo_underflow(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn int_crime_error(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }
}

/// The `status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Status(u32);

impl Status {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma_active(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn vsync(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn dma_done(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn lost_sync(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn buffer(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn fifo_underflow(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn crime_error(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }
}

/// The `vhw_cfg` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VhwCfg(u64);

impl VhwCfg {
    pub const fn new(word: u64) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u64 {
        self.0
    }

    /// Bit 0, established.
    pub const fn port_ab_reset(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn port_ab_select(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn port_cd_reset(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn port_cd_select(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn audio_sync_reset(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bits 6:5, established.
    pub const fn audio_sync_source(self) -> VhwCfgAudioSyncSource {
        VhwCfgAudioSyncSource::from_bits(((self.0 >> 5) & 0x3) as u32)
    }

    /// Bit 7, established.
    pub const fn audio_sync_precision(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn audio_sync_ecc(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn gbe_framelock_reset(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bits 11:10, established.
    pub const fn gbe_framelock_source(self) -> VhwCfgGbeFramelockSource {
        VhwCfgGbeFramelockSource::from_bits(((self.0 >> 10) & 0x3) as u32)
    }

    /// Bit 12, established.
    pub const fn gbe_framelock_precision(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn gbe_framelock_ecc(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bits 17:14, established.
    pub const fn sof_count_odd(self) -> u64 {
        (self.0 >> 14) & 0xf
    }

    /// Bit 18, established.
    pub const fn gpibo(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bits 22:19, established.
    pub const fn sof_count_even(self) -> u64 {
        (self.0 >> 19) & 0xf
    }

    /// Bits 35:32, established.
    pub const fn revision(self) -> u64 {
        (self.0 >> 32) & 0xf
    }
}
