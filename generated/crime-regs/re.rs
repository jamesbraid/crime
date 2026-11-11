// generated from o2gfx 45f590324bef RE_DECODE.h - do not edit, regenerate in o2gfx
//!
//! CRIME rendering engine interface buffer, translation
//! tables, pixel pipeline registers and status.
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
/// established: four 16-bit tile entries in each frame-buffer, texture and clip-ID doubleword.
pub const TLB_ENTRIES_PER_REG: u32 = 4;

/// CRIME rendering engine register `ib_data`: read/write, 64-bit, 64 consecutive registers; reset unknown; established.
pub const REG_IB_DATA: u32 = 0x0000;
pub const REG_IB_DATA_WIDTH: u32 = 64;
pub const REG_IB_DATA_COUNT: u32 = 64;
/// CRIME rendering engine register `ib_addr`: read/write, 64-bit, 64 consecutive registers; reset unknown; established.
pub const REG_IB_ADDR: u32 = 0x0200;
pub const REG_IB_ADDR_WIDTH: u32 = 64;
pub const REG_IB_ADDR_COUNT: u32 = 64;
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
/// CRIME rendering engine register `tlb_fb_a`: read/write, 64-bit, 64 consecutive registers; reset unknown; established.
pub const REG_TLB_FB_A: u32 = 0x1000;
pub const REG_TLB_FB_A_WIDTH: u32 = 64;
pub const REG_TLB_FB_A_COUNT: u32 = 64;
/// CRIME rendering engine register `tlb_fb_b`: read/write, 64-bit, 64 consecutive registers; reset unknown; established.
pub const REG_TLB_FB_B: u32 = 0x1200;
pub const REG_TLB_FB_B_WIDTH: u32 = 64;
pub const REG_TLB_FB_B_COUNT: u32 = 64;
/// CRIME rendering engine register `tlb_fb_c`: read/write, 64-bit, 64 consecutive registers; reset unknown; established.
pub const REG_TLB_FB_C: u32 = 0x1400;
pub const REG_TLB_FB_C_WIDTH: u32 = 64;
pub const REG_TLB_FB_C_COUNT: u32 = 64;
/// CRIME rendering engine register `tlb_tex`: read/write, 64-bit, 28 consecutive registers; reset unknown; established.
pub const REG_TLB_TEX: u32 = 0x1600;
pub const REG_TLB_TEX_WIDTH: u32 = 64;
pub const REG_TLB_TEX_COUNT: u32 = 28;
/// CRIME rendering engine register `tlb_cid`: read/write, 64-bit, 4 consecutive registers; reset unknown; established.
pub const REG_TLB_CID: u32 = 0x16e0;
pub const REG_TLB_CID_WIDTH: u32 = 64;
pub const REG_TLB_CID_COUNT: u32 = 4;
/// CRIME rendering engine register `clipmode`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CLIPMODE: u32 = 0x2010;
pub const REG_CLIPMODE_WIDTH: u32 = 32;
/// CRIME rendering engine register `scrmask`: read/write, 64-bit, 5 consecutive registers; reset unknown; established.
pub const REG_SCRMASK: u32 = 0x2020;
pub const REG_SCRMASK_WIDTH: u32 = 64;
pub const REG_SCRMASK_COUNT: u32 = 5;
/// CRIME rendering engine register `bufmode_src`: read/write, 32-bit; reset unknown; established.
pub const REG_BUFMODE_SRC: u32 = 0x2000;
pub const REG_BUFMODE_SRC_WIDTH: u32 = 32;
/// CRIME rendering engine register `bufmode_dst`: read/write, 32-bit; reset unknown; established.
pub const REG_BUFMODE_DST: u32 = 0x2008;
pub const REG_BUFMODE_DST_WIDTH: u32 = 32;
/// CRIME rendering engine register `drawmode`: read/write, 32-bit; reset unknown; established.
pub const REG_DRAWMODE: u32 = 0x2018;
pub const REG_DRAWMODE_WIDTH: u32 = 32;
/// CRIME rendering engine register `scissor`: read/write, 64-bit; reset unknown; established.
pub const REG_SCISSOR: u32 = 0x2048;
pub const REG_SCISSOR_WIDTH: u32 = 64;
/// CRIME rendering engine register `winoffset_src`: read/write, 32-bit; reset unknown; established.
pub const REG_WINOFFSET_SRC: u32 = 0x2050;
pub const REG_WINOFFSET_SRC_WIDTH: u32 = 32;
/// CRIME rendering engine register `winoffset_dst`: read/write, 32-bit; reset unknown; established.
pub const REG_WINOFFSET_DST: u32 = 0x2058;
pub const REG_WINOFFSET_DST_WIDTH: u32 = 32;
/// CRIME rendering engine register `primitive`: write, 32-bit; reset unknown; established.
pub const REG_PRIMITIVE: u32 = 0x2060;
pub const REG_PRIMITIVE_WIDTH: u32 = 32;
/// CRIME rendering engine register `vertex_x`: write, 32-bit, 3 consecutive registers; reset unknown; established.
pub const REG_VERTEX_X: u32 = 0x2070;
pub const REG_VERTEX_X_WIDTH: u32 = 32;
pub const REG_VERTEX_X_COUNT: u32 = 3;
/// CRIME rendering engine register `vertex_gl`: write, 32-bit, 6 consecutive registers; reset unknown; established.
pub const REG_VERTEX_GL: u32 = 0x2080;
pub const REG_VERTEX_GL_WIDTH: u32 = 32;
pub const REG_VERTEX_GL_COUNT: u32 = 6;
/// CRIME rendering engine register `xfer_src_addr`: write, 32-bit; reset unknown; established.
pub const REG_XFER_SRC_ADDR: u32 = 0x20a0;
pub const REG_XFER_SRC_ADDR_WIDTH: u32 = 32;
/// CRIME rendering engine register `xfer_src_stride`: write, 32-bit; reset unknown; established.
pub const REG_XFER_SRC_STRIDE: u32 = 0x20a4;
pub const REG_XFER_SRC_STRIDE_WIDTH: u32 = 32;
/// CRIME rendering engine register `xfer_src_xstep`: write, 32-bit; reset unknown; established.
pub const REG_XFER_SRC_XSTEP: u32 = 0x20a8;
pub const REG_XFER_SRC_XSTEP_WIDTH: u32 = 32;
/// CRIME rendering engine register `xfer_src_ystep`: write, 32-bit; reset unknown; established.
pub const REG_XFER_SRC_YSTEP: u32 = 0x20ac;
pub const REG_XFER_SRC_YSTEP_WIDTH: u32 = 32;
/// CRIME rendering engine register `xfer_dst_addr`: write, 32-bit; reset unknown; established.
pub const REG_XFER_DST_ADDR: u32 = 0x20b0;
pub const REG_XFER_DST_ADDR_WIDTH: u32 = 32;
/// CRIME rendering engine register `xfer_dst_stride`: write, 32-bit; reset unknown; established.
pub const REG_XFER_DST_STRIDE: u32 = 0x20b4;
pub const REG_XFER_DST_STRIDE_WIDTH: u32 = 32;
/// CRIME rendering engine register `stipple_mode`: read/write, 32-bit; reset unknown; established.
pub const REG_STIPPLE_MODE: u32 = 0x20c0;
pub const REG_STIPPLE_MODE_WIDTH: u32 = 32;
/// CRIME rendering engine register `stipple_pattern`: read/write, 32-bit; reset unknown; established.
pub const REG_STIPPLE_PATTERN: u32 = 0x20c4;
pub const REG_STIPPLE_PATTERN_WIDTH: u32 = 32;
/// CRIME rendering engine register `fg_color`: write, 32-bit; reset unknown; established.
pub const REG_FG_COLOR: u32 = 0x20d0;
pub const REG_FG_COLOR_WIDTH: u32 = 32;
/// CRIME rendering engine register `bg_color`: read/write, 32-bit; reset unknown; established.
pub const REG_BG_COLOR: u32 = 0x20d8;
pub const REG_BG_COLOR_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_start`: write, 32-bit, 4 consecutive registers; reset unknown; established.
pub const REG_SHADE_START: u32 = 0x20e0;
pub const REG_SHADE_START_WIDTH: u32 = 32;
pub const REG_SHADE_START_COUNT: u32 = 4;
/// CRIME rendering engine register `shade_drdx`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DRDX: u32 = 0x20f0;
pub const REG_SHADE_DRDX_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_dgdx`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DGDX: u32 = 0x20f4;
pub const REG_SHADE_DGDX_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_drdy`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DRDY: u32 = 0x20f8;
pub const REG_SHADE_DRDY_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_dgdy`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DGDY: u32 = 0x20fc;
pub const REG_SHADE_DGDY_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_dbdx`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DBDX: u32 = 0x2100;
pub const REG_SHADE_DBDX_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_dadx`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DADX: u32 = 0x2104;
pub const REG_SHADE_DADX_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_dbdy`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DBDY: u32 = 0x2108;
pub const REG_SHADE_DBDY_WIDTH: u32 = 32;
/// CRIME rendering engine register `shade_dady`: write, 32-bit; reset unknown; established.
pub const REG_SHADE_DADY: u32 = 0x210c;
pub const REG_SHADE_DADY_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_mode`: read/write, 32-bit; reset unknown; established.
pub const REG_TEX_MODE: u32 = 0x2110;
pub const REG_TEX_MODE_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_format`: read/write, 64-bit; reset unknown; established.
pub const REG_TEX_FORMAT: u32 = 0x2118;
pub const REG_TEX_FORMAT_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_sqs`: write, 64-bit; reset unknown; established.
pub const REG_TEX_SQS: u32 = 0x2120;
pub const REG_TEX_SQS_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_tqs`: write, 64-bit; reset unknown; established.
pub const REG_TEX_TQS: u32 = 0x2128;
pub const REG_TEX_TQS_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_qs`: write, 32-bit; reset unknown; established.
pub const REG_TEX_QS: u32 = 0x2130;
pub const REG_TEX_QS_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_stflags`: write, 32-bit; reset unknown; established.
pub const REG_TEX_STFLAGS: u32 = 0x2134;
pub const REG_TEX_STFLAGS_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_dsqdx`: write, 64-bit; reset unknown; established.
pub const REG_TEX_DSQDX: u32 = 0x2138;
pub const REG_TEX_DSQDX_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_dsqdy`: write, 64-bit; reset unknown; established.
pub const REG_TEX_DSQDY: u32 = 0x2140;
pub const REG_TEX_DSQDY_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_dtqdx`: write, 64-bit; reset unknown; established.
pub const REG_TEX_DTQDX: u32 = 0x2148;
pub const REG_TEX_DTQDX_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_dtqdy`: write, 64-bit; reset unknown; established.
pub const REG_TEX_DTQDY: u32 = 0x2150;
pub const REG_TEX_DTQDY_WIDTH: u32 = 64;
/// CRIME rendering engine register `tex_dqdx`: write, 32-bit; reset unknown; established.
pub const REG_TEX_DQDX: u32 = 0x2158;
pub const REG_TEX_DQDX_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_dqdy`: write, 32-bit; reset unknown; established.
pub const REG_TEX_DQDY: u32 = 0x215c;
pub const REG_TEX_DQDY_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_border`: read/write, 32-bit; reset unknown; established.
pub const REG_TEX_BORDER: u32 = 0x2160;
pub const REG_TEX_BORDER_WIDTH: u32 = 32;
/// CRIME rendering engine register `tex_envcolor`: read/write, 32-bit; reset unknown; established.
pub const REG_TEX_ENVCOLOR: u32 = 0x2168;
pub const REG_TEX_ENVCOLOR_WIDTH: u32 = 32;
/// CRIME rendering engine register `fog_color`: read/write, 32-bit; reset unknown; established.
pub const REG_FOG_COLOR: u32 = 0x2170;
pub const REG_FOG_COLOR_WIDTH: u32 = 32;
/// CRIME rendering engine register `fog_fs`: write, 32-bit; reset unknown; established.
pub const REG_FOG_FS: u32 = 0x2178;
pub const REG_FOG_FS_WIDTH: u32 = 32;
/// CRIME rendering engine register `fog_dfdx`: write, 32-bit; reset unknown; established.
pub const REG_FOG_DFDX: u32 = 0x2180;
pub const REG_FOG_DFDX_WIDTH: u32 = 32;
/// CRIME rendering engine register `fog_dfdy`: write, 32-bit; reset unknown; established.
pub const REG_FOG_DFDY: u32 = 0x2188;
pub const REG_FOG_DFDY_WIDTH: u32 = 32;
/// CRIME rendering engine register `aa_line`: write, 32-bit; reset unknown; established.
pub const REG_AA_LINE: u32 = 0x2190;
pub const REG_AA_LINE_WIDTH: u32 = 32;
/// CRIME rendering engine register `aa_cov`: write, 32-bit; reset unknown; established.
pub const REG_AA_COV: u32 = 0x2194;
pub const REG_AA_COV_WIDTH: u32 = 32;
/// CRIME rendering engine register `alphatest`: read/write, 32-bit; reset unknown; established.
pub const REG_ALPHATEST: u32 = 0x2198;
pub const REG_ALPHATEST_WIDTH: u32 = 32;
/// CRIME rendering engine register `blend_color`: read/write, 32-bit; reset unknown; established.
pub const REG_BLEND_COLOR: u32 = 0x21a0;
pub const REG_BLEND_COLOR_WIDTH: u32 = 32;
/// CRIME rendering engine register `blend_func`: read/write, 32-bit; reset unknown; established.
pub const REG_BLEND_FUNC: u32 = 0x21a8;
pub const REG_BLEND_FUNC_WIDTH: u32 = 32;
/// CRIME rendering engine register `logicop`: read/write, 32-bit; reset unknown; established.
pub const REG_LOGICOP: u32 = 0x21b0;
pub const REG_LOGICOP_WIDTH: u32 = 32;
/// CRIME rendering engine register `colormask`: read/write, 32-bit; reset unknown; established.
pub const REG_COLORMASK: u32 = 0x21b8;
pub const REG_COLORMASK_WIDTH: u32 = 32;
/// CRIME rendering engine register `depth_func`: read/write, 32-bit; reset unknown; established.
pub const REG_DEPTH_FUNC: u32 = 0x21c0;
pub const REG_DEPTH_FUNC_WIDTH: u32 = 32;
/// CRIME rendering engine register `depth_zs`: write, 64-bit; reset unknown; established.
pub const REG_DEPTH_ZS: u32 = 0x21c8;
pub const REG_DEPTH_ZS_WIDTH: u32 = 64;
/// CRIME rendering engine register `depth_dzdx`: write, 64-bit; reset unknown; established.
pub const REG_DEPTH_DZDX: u32 = 0x21d0;
pub const REG_DEPTH_DZDX_WIDTH: u32 = 64;
/// CRIME rendering engine register `depth_dzdy`: write, 64-bit; reset unknown; established.
pub const REG_DEPTH_DZDY: u32 = 0x21d8;
pub const REG_DEPTH_DZDY_WIDTH: u32 = 64;
/// CRIME rendering engine register `stencil_mode`: read/write, 32-bit; reset unknown; established.
pub const REG_STENCIL_MODE: u32 = 0x21e0;
pub const REG_STENCIL_MODE_WIDTH: u32 = 32;
/// CRIME rendering engine register `stencil_mask`: read/write, 32-bit; reset unknown; established.
pub const REG_STENCIL_MASK: u32 = 0x21e8;
pub const REG_STENCIL_MASK_WIDTH: u32 = 32;
/// CRIME rendering engine register `pixpipe_null`: write, 32-bit; reset unknown; established.
pub const REG_PIXPIPE_NULL: u32 = 0x21f0;
pub const REG_PIXPIPE_NULL_WIDTH: u32 = 32;
/// CRIME rendering engine register `pixpipe_flush`: write, 32-bit; reset unknown; established.
pub const REG_PIXPIPE_FLUSH: u32 = 0x21f8;
pub const REG_PIXPIPE_FLUSH_WIDTH: u32 = 32;
/// CRIME rendering engine register `status`: read, 32-bit; reset unknown; established.
pub const REG_STATUS: u32 = 0x4000;
pub const REG_STATUS_WIDTH: u32 = 32;
/// CRIME rendering engine register `ib_discard`: write, 32-bit; reset unknown; established.
pub const REG_IB_DISCARD: u32 = 0x4008;
pub const REG_IB_DISCARD_WIDTH: u32 = 32;

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

/// Values of `buf_type` in `Bufmode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BufmodeBufType {
    /// established.
    FbA,
    /// established.
    FbB,
    /// established.
    FbC,
    /// established.
    LinA,
    /// established.
    LinB,
    /// A value the notes do not name.
    Other(u8),
}

impl BufmodeBufType {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::FbA,
            0x1 => Self::FbB,
            0x2 => Self::FbC,
            0x4 => Self::LinA,
            0x5 => Self::LinB,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::FbA => 0x0,
            Self::FbB => 0x1,
            Self::FbC => 0x2,
            Self::LinA => 0x4,
            Self::LinB => 0x5,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `buf_depth` in `Bufmode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BufmodeBufDepth {
    /// established.
    Bits8,
    /// established.
    Bits16,
    /// established.
    Bits32,
    /// A value the notes do not name.
    Other(u8),
}

impl BufmodeBufDepth {
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

/// Values of `pix_type` in `Bufmode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BufmodePixType {
    /// established.
    Ci,
    /// established.
    Rgb,
    /// established.
    Rgba,
    /// established.
    Abgr,
    /// established.
    Ycrcb,
    /// A value the notes do not name.
    Other(u8),
}

impl BufmodePixType {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Ci,
            0x1 => Self::Rgb,
            0x2 => Self::Rgba,
            0x3 => Self::Abgr,
            0xf => Self::Ycrcb,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Ci => 0x0,
            Self::Rgb => 0x1,
            Self::Rgba => 0x2,
            Self::Abgr => 0x3,
            Self::Ycrcb => 0xf,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `pix_depth` in `Bufmode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BufmodePixDepth {
    /// established.
    Bits8,
    /// established.
    Bits16,
    /// established.
    Bits32,
    /// A value the notes do not name.
    Other(u8),
}

impl BufmodePixDepth {
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

/// Values of `op` in `Primitive` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PrimitiveOp {
    /// established.
    Point,
    /// established.
    Line,
    /// established.
    Triangle,
    /// established.
    Rect,
    /// A value the notes do not name.
    Other(u8),
}

impl PrimitiveOp {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Point,
            0x1 => Self::Line,
            0x2 => Self::Triangle,
            0x3 => Self::Rect,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Point => 0x0,
            Self::Line => 0x1,
            Self::Triangle => 0x2,
            Self::Rect => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `edge` in `Primitive` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PrimitiveEdge {
    /// established.
    LrBt,
    /// established.
    RlBt,
    /// established.
    LrTb,
    /// established.
    RlTb,
    /// A value the notes do not name.
    Other(u8),
}

impl PrimitiveEdge {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::LrBt,
            0x1 => Self::RlBt,
            0x2 => Self::LrTb,
            0x3 => Self::RlTb,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::LrBt => 0x0,
            Self::RlBt => 0x1,
            Self::LrTb => 0x2,
            Self::RlTb => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `op` in `BlendFunc` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BlendFuncOp {
    /// established.
    Add,
    /// established.
    Min,
    /// established.
    Max,
    /// established.
    Subtract,
    /// established.
    ReverseSubtract,
    /// A value the notes do not name.
    Other(u8),
}

impl BlendFuncOp {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Add,
            0x1 => Self::Min,
            0x2 => Self::Max,
            0x3 => Self::Subtract,
            0x4 => Self::ReverseSubtract,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Add => 0x0,
            Self::Min => 0x1,
            Self::Max => 0x2,
            Self::Subtract => 0x3,
            Self::ReverseSubtract => 0x4,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `src` in `BlendFunc` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BlendFuncSrc {
    /// established.
    Zero,
    /// established.
    One,
    /// established.
    DstColor,
    /// established.
    OneMinusDstColor,
    /// established.
    SrcAlpha,
    /// established.
    OneMinusSrcAlpha,
    /// established.
    DstAlpha,
    /// established.
    OneMinusDstAlpha,
    /// established.
    ConstantColor,
    /// established.
    OneMinusConstantColor,
    /// established.
    ConstantAlpha,
    /// established.
    OneMinusConstantAlpha,
    /// established.
    SrcAlphaSaturate,
    /// A value the notes do not name.
    Other(u8),
}

impl BlendFuncSrc {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Zero,
            0x1 => Self::One,
            0x2 => Self::DstColor,
            0x3 => Self::OneMinusDstColor,
            0x4 => Self::SrcAlpha,
            0x5 => Self::OneMinusSrcAlpha,
            0x6 => Self::DstAlpha,
            0x7 => Self::OneMinusDstAlpha,
            0x8 => Self::ConstantColor,
            0x9 => Self::OneMinusConstantColor,
            0xa => Self::ConstantAlpha,
            0xb => Self::OneMinusConstantAlpha,
            0xc => Self::SrcAlphaSaturate,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Zero => 0x0,
            Self::One => 0x1,
            Self::DstColor => 0x2,
            Self::OneMinusDstColor => 0x3,
            Self::SrcAlpha => 0x4,
            Self::OneMinusSrcAlpha => 0x5,
            Self::DstAlpha => 0x6,
            Self::OneMinusDstAlpha => 0x7,
            Self::ConstantColor => 0x8,
            Self::OneMinusConstantColor => 0x9,
            Self::ConstantAlpha => 0xa,
            Self::OneMinusConstantAlpha => 0xb,
            Self::SrcAlphaSaturate => 0xc,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `dst` in `BlendFunc` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BlendFuncDst {
    /// established.
    Zero,
    /// established.
    One,
    /// established.
    SrcColor,
    /// established.
    OneMinusSrcColor,
    /// established.
    SrcAlpha,
    /// established.
    OneMinusSrcAlpha,
    /// established.
    DstAlpha,
    /// established.
    OneMinusDstAlpha,
    /// established.
    ConstantColor,
    /// established.
    OneMinusConstantColor,
    /// established.
    ConstantAlpha,
    /// established.
    OneMinusConstantAlpha,
    /// A value the notes do not name.
    Other(u8),
}

impl BlendFuncDst {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Zero,
            0x1 => Self::One,
            0x2 => Self::SrcColor,
            0x3 => Self::OneMinusSrcColor,
            0x4 => Self::SrcAlpha,
            0x5 => Self::OneMinusSrcAlpha,
            0x6 => Self::DstAlpha,
            0x7 => Self::OneMinusDstAlpha,
            0x8 => Self::ConstantColor,
            0x9 => Self::OneMinusConstantColor,
            0xa => Self::ConstantAlpha,
            0xb => Self::OneMinusConstantAlpha,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Zero => 0x0,
            Self::One => 0x1,
            Self::SrcColor => 0x2,
            Self::OneMinusSrcColor => 0x3,
            Self::SrcAlpha => 0x4,
            Self::OneMinusSrcAlpha => 0x5,
            Self::DstAlpha => 0x6,
            Self::OneMinusDstAlpha => 0x7,
            Self::ConstantColor => 0x8,
            Self::OneMinusConstantColor => 0x9,
            Self::ConstantAlpha => 0xa,
            Self::OneMinusConstantAlpha => 0xb,
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

/// The `TLBTILE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Tlbtile(u32);

impl Tlbtile {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 14:0, established.
    pub const fn page(self) -> u32 {
        self.0 & 0x7fff
    }

    /// Bit 15, inferred.
    pub const fn valid(self) -> bool {
        (self.0 >> 15) & 1 != 0
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

/// The `tex_stflags` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TexStflags(u32);

impl TexStflags {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn s_flag(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn t_flag(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }
}

/// The `BUFMODE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Bufmode(u32);

impl Bufmode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:10, established.
    pub const fn buf_type(self) -> BufmodeBufType {
        BufmodeBufType::from_bits((self.0 >> 10) & 0x7)
    }

    /// Bits 9:8, established.
    pub const fn buf_depth(self) -> BufmodeBufDepth {
        BufmodeBufDepth::from_bits((self.0 >> 8) & 0x3)
    }

    /// Bits 7:4, established.
    pub const fn pix_type(self) -> BufmodePixType {
        BufmodePixType::from_bits((self.0 >> 4) & 0xf)
    }

    /// Bits 3:2, established.
    pub const fn pix_depth(self) -> BufmodePixDepth {
        BufmodePixDepth::from_bits((self.0 >> 2) & 0x3)
    }

    /// Bit 1, established.
    pub const fn double_pix(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 0, established.
    pub const fn double_pix_sel(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `drawmode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Drawmode(u32);

impl Drawmode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn stencil(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn depth_mask(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn depth_test(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bits 6:3, established.
    pub const fn byte_mask(self) -> u32 {
        (self.0 >> 3) & 0xf
    }

    /// Bit 7, established.
    pub const fn bit_mask(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn dither(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn logic_op(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn alpha_blend(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn alpha_test(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }

    /// Bit 12, established.
    pub const fn aa_line(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn coverage(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bit 14, established.
    pub const fn fog(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bit 15, established.
    pub const fn texture(self) -> bool {
        (self.0 >> 15) & 1 != 0
    }

    /// Bit 16, established.
    pub const fn shade(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }

    /// Bit 17, established.
    pub const fn opaque_stipple(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, established.
    pub const fn poly_stipple(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bit 19, established.
    pub const fn line_stipple(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }

    /// Bit 20, established.
    pub const fn scissor(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }

    /// Bit 21, established.
    pub const fn pixel_xfer(self) -> bool {
        (self.0 >> 21) & 1 != 0
    }

    /// Bit 22, established.
    pub const fn gl(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 23, established.
    pub const fn no_conflict(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }
}

/// The `primitive` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Primitive(u32);

impl Primitive {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 31:24, established.
    pub const fn op(self) -> PrimitiveOp {
        PrimitiveOp::from_bits(self.0 >> 24)
    }

    /// Bit 18, established.
    pub const fn line_skip_last(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bits 17:16, established.
    pub const fn edge(self) -> PrimitiveEdge {
        PrimitiveEdge::from_bits((self.0 >> 16) & 0x3)
    }

    /// Bits 15:0, established.
    pub const fn line_width(self) -> u32 {
        self.0 & 0xffff
    }
}

/// The `blend_func` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BlendFunc(u32);

impl BlendFunc {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:8, established.
    pub const fn op(self) -> BlendFuncOp {
        BlendFuncOp::from_bits((self.0 >> 8) & 0xf)
    }

    /// Bits 7:4, established.
    pub const fn src(self) -> BlendFuncSrc {
        BlendFuncSrc::from_bits((self.0 >> 4) & 0xf)
    }

    /// Bits 3:0, established.
    pub const fn dst(self) -> BlendFuncDst {
        BlendFuncDst::from_bits(self.0 & 0xf)
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

    /// Bit 28, established.
    pub const fn idle(self) -> bool {
        (self.0 >> 28) & 1 != 0
    }

    /// Bit 27, established.
    pub const fn setup_idle(self) -> bool {
        (self.0 >> 27) & 1 != 0
    }

    /// Bit 26, established.
    pub const fn pixpipe_idle(self) -> bool {
        (self.0 >> 26) & 1 != 0
    }

    /// Bit 25, inferred.
    pub const fn mte_idle(self) -> bool {
        (self.0 >> 25) & 1 != 0
    }

    /// Bits 24:18, established.
    pub const fn level(self) -> u32 {
        (self.0 >> 18) & 0x7f
    }

    /// Bits 17:12, established.
    pub const fn rd_ptr(self) -> u32 {
        (self.0 >> 12) & 0x3f
    }

    /// Bits 11:6, established.
    pub const fn wr_ptr(self) -> u32 {
        (self.0 >> 6) & 0x3f
    }

    /// Bits 5:0, inferred.
    pub const fn start(self) -> u32 {
        self.0 & 0x3f
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

    #[test]
    fn testvec_bufmode_504() {
        let w = Bufmode::new(0x504);
        assert_eq!(w.buf_type().bits(), 1, "buf_type");
        assert_eq!(w.buf_depth().bits(), 1, "buf_depth");
        assert_eq!(w.pix_type().bits(), 0, "pix_type");
        assert_eq!(w.pix_depth().bits(), 1, "pix_depth");
        assert_eq!(w.double_pix() as u32, 0, "double_pix");
    }

    #[test]
    fn testvec_re_primitive_3020000() {
        let w = Primitive::new(0x3020000);
        assert_eq!(w.op().bits(), 3, "op");
        assert_eq!(w.line_skip_last() as u32, 0, "line_skip_last");
        assert_eq!(w.edge().bits(), 2, "edge");
        assert_eq!(w.line_width(), 0, "line_width");
    }
}
