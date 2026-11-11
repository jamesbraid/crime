// generated from o2gfx 45f590324bef MACE_VIDEO_IN_DECODE.h - do not edit, regenerate in o2gfx
//!
//! MACE video input channel registers.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// MACE video input register `control`: read/write, 64-bit; reset 0; established.
pub const REG_CONTROL: u32 = 0x0000;
pub const REG_CONTROL_WIDTH: u32 = 64;
/// MACE video input register `status`: read, 64-bit; reset 0; established.
pub const REG_STATUS: u32 = 0x0008;
pub const REG_STATUS_WIDTH: u32 = 64;
/// MACE video input register `config`: read/write, 64-bit; reset unknown; established.
pub const REG_CONFIG: u32 = 0x0010;
pub const REG_CONFIG_WIDTH: u32 = 64;
/// MACE video input register `next_desc`: read/write, 64-bit; reset unknown; established.
pub const REG_NEXT_DESC: u32 = 0x0018;
pub const REG_NEXT_DESC_WIDTH: u32 = 64;
/// MACE video input register `fld_offset`: read/write, 64-bit; reset unknown; established.
pub const REG_FLD_OFFSET: u32 = 0x0020;
pub const REG_FLD_OFFSET_WIDTH: u32 = 64;
/// MACE video input register `line_width`: read/write, 64-bit; reset unknown; established.
pub const REG_LINE_WIDTH: u32 = 0x0028;
pub const REG_LINE_WIDTH_WIDTH: u32 = 64;
/// MACE video input register `hclip_odd`: read/write, 64-bit; reset unknown; established.
pub const REG_HCLIP_ODD: u32 = 0x0030;
pub const REG_HCLIP_ODD_WIDTH: u32 = 64;
/// MACE video input register `vclip_odd`: read/write, 64-bit; reset unknown; established.
pub const REG_VCLIP_ODD: u32 = 0x0038;
pub const REG_VCLIP_ODD_WIDTH: u32 = 64;
/// MACE video input register `alpha_odd`: read/write, 64-bit; reset unknown; inferred.
pub const REG_ALPHA_ODD: u32 = 0x0040;
pub const REG_ALPHA_ODD_WIDTH: u32 = 64;
/// MACE video input register `hclip_even`: read/write, 64-bit; reset unknown; established.
pub const REG_HCLIP_EVEN: u32 = 0x0048;
pub const REG_HCLIP_EVEN_WIDTH: u32 = 64;
/// MACE video input register `vclip_even`: read/write, 64-bit; reset unknown; established.
pub const REG_VCLIP_EVEN: u32 = 0x0050;
pub const REG_VCLIP_EVEN_WIDTH: u32 = 64;
/// MACE video input register `alpha_even`: read/write, 64-bit; reset unknown; inferred.
pub const REG_ALPHA_EVEN: u32 = 0x0058;
pub const REG_ALPHA_EVEN_WIDTH: u32 = 64;
/// MACE video input register `dma_desc`: read/write, 64-bit, 8 consecutive registers; reset unknown; established.
pub const REG_DMA_DESC: u32 = 0x0080;
pub const REG_DMA_DESC_WIDTH: u32 = 64;
pub const REG_DMA_DESC_COUNT: u32 = 8;

/// Values of `source` in `Config` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ConfigSource {
    /// established.
    Primary,
    /// established.
    Secondary,
    /// established.
    LoopbackE,
    /// established.
    LoopbackF,
    /// A value the notes do not name.
    Other(u8),
}

impl ConfigSource {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Primary,
            0x1 => Self::Secondary,
            0x2 => Self::LoopbackE,
            0x3 => Self::LoopbackF,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Primary => 0x0,
            Self::Secondary => 0x1,
            Self::LoopbackE => 0x2,
            Self::LoopbackF => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `pixel_format` in `Config` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ConfigPixelFormat {
    /// established.
    Rgba32,
    /// established.
    Rgba5551,
    /// established.
    Yuv4228,
    /// established.
    Yuv42210,
    /// established.
    Abgr32,
    /// established.
    Yuva4224,
    /// A value the notes do not name.
    Other(u8),
}

impl ConfigPixelFormat {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Rgba32,
            0x1 => Self::Rgba5551,
            0x2 => Self::Yuv4228,
            0x3 => Self::Yuv42210,
            0x4 => Self::Abgr32,
            0x5 => Self::Yuva4224,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Rgba32 => 0x0,
            Self::Rgba5551 => 0x1,
            Self::Yuv4228 => 0x2,
            Self::Yuv42210 => 0x3,
            Self::Abgr32 => 0x4,
            Self::Yuva4224 => 0x5,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `mem_mode` in `Config` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ConfigMemMode {
    /// established.
    Linear,
    /// established.
    Tiled,
    /// established.
    Mipmap512x128,
    /// established.
    Mipmap512x256,
    /// A value the notes do not name.
    Other(u8),
}

impl ConfigMemMode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Linear,
            0x1 => Self::Tiled,
            0x2 => Self::Mipmap512x128,
            0x3 => Self::Mipmap512x256,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Linear => 0x0,
            Self::Tiled => 0x1,
            Self::Mipmap512x128 => 0x2,
            Self::Mipmap512x256 => 0x3,
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
    pub const fn int_lost_sync(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn int_buffer(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn int_h_overflow(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn int_v_overflow(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn int_fifo_overflow(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn int_crime_error(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn int_gpib(self) -> bool {
        (self.0 >> 9) & 1 != 0
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

    /// Bit 5, established.
    pub const fn h_overflow(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn v_overflow(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn fifo_overflow(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn crime_error(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn gpib(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn sync_present(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }
}

/// The `config` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Config(u32);

impl Config {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn channel_reset(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn d1_reset(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bits 3:2, established.
    pub const fn source(self) -> ConfigSource {
        ConfigSource::from_bits((self.0 >> 2) & 0x3)
    }

    /// Bit 4, established.
    pub const fn d1_precision(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn d1_ecc(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bits 9:6, established.
    pub const fn sof_count(self) -> u32 {
        (self.0 >> 6) & 0xf
    }

    /// Bits 12:10, established.
    pub const fn pixel_format(self) -> ConfigPixelFormat {
        ConfigPixelFormat::from_bits((self.0 >> 10) & 0x7)
    }

    /// Bit 13, established.
    pub const fn dither(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bits 15:14, established.
    pub const fn mem_mode(self) -> ConfigMemMode {
        ConfigMemMode::from_bits((self.0 >> 14) & 0x3)
    }

    /// Bit 16, established.
    pub const fn interleaved(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }
}
