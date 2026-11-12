// generated from defs/re.toml by defs-gen - do not edit, change the source
// O2 CRIME rendering engine: interface buffer, linear TLBs and clip state
#![allow(dead_code)]

/// The interface buffer holds 64 queued writes. The specification's table names 128 entries, but its address half sits 512 bytes above the data half, whi (established)
pub mod ib_data {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x0;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod ib_addr {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x200;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod ib_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x400;
    pub mod full { // bits 27:21, inferred
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod empty { // bits 20:14, inferred
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stall { // bits 13:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod count { // bits 6:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod ib_reset {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x408;
}
/// The frame-buffer tables A, B and C each hold 64 doublewords, the texture table 28 and the clip-ID table 4. Shipped software loads all of them with 64- (established)
pub mod tlb_fb_a {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x1000;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod tlb_fb_b {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x1200;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod tlb_fb_c {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x1400;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod tlb_tex {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x1600;
    pub const COUNT: u32 = 28;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod tlb_cid {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x16e0;
    pub const COUNT: u32 = 4;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod tlb_lin_a {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x1700;
    pub const COUNT: u32 = 16;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod tlb_lin_b {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x1780;
    pub const COUNT: u32 = 16;
    pub const STRIDE: u64 = 8;
}
/// The pixel pipeline group starts at the base of its own 4 KiB window. Sizes and the read/write column are the specification's register table. The speci (established)
pub mod bufmode_src {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2000;
}
/// (established)
pub mod bufmode_dst {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2008;
}
/// (inferred)
pub mod clipmode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2010;
    pub mod clip_id_test { // bits 11:11, inferred
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clip_id_map { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable { // bits 9:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mode { // bits 4:0, established
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
/// Point and rectangle primitives are always flat shaded, whatever the shade bit (16) says. Their colour is the foreground colour register alone (establi (established)
pub mod drawmode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2018;
    pub mod no_conflict { // bits 23:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gl { // bits 22:22, established
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixel_xfer { // bits 21:21, established
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod scissor { // bits 20:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod line_stipple { // bits 19:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod poly_stipple { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod opaque_stipple { // bits 17:17, established
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod shade { // bits 16:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod texture { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fog { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod coverage { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod aa_line { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha_test { // bits 11:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha_blend { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod logic_op { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dither { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit_mask { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod byte_mask { // bits 6:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod depth_test { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod depth_mask { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stencil { // bits 0:0, established
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
pub mod scrmask {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2020;
    pub const COUNT: u32 = 5;
    pub const STRIDE: u64 = 8;
}
/// (established)
pub mod scissor {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2048;
}
/// (established)
pub mod winoffset_src {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2050;
}
/// (established)
pub mod winoffset_dst {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2058;
}
/// (established)
pub mod primitive {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2060;
    pub mod op { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const POINT: u32 = 0; // established
        pub const LINE: u32 = 1; // established
        pub const TRIANGLE: u32 = 2; // established
        pub const RECT: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Point,
            Line,
            Triangle,
            Rect,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Point,
                    1 => Self::Line,
                    2 => Self::Triangle,
                    3 => Self::Rect,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Point => 0,
                    Self::Line => 1,
                    Self::Triangle => 2,
                    Self::Rect => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod line_skip_last { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod edge { // bits 17:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const LR_BT: u32 = 0; // established
        pub const RL_BT: u32 = 1; // established
        pub const LR_TB: u32 = 2; // established
        pub const RL_TB: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            LrBt,
            RlBt,
            LrTb,
            RlTb,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::LrBt,
                    1 => Self::RlBt,
                    2 => Self::LrTb,
                    3 => Self::RlTb,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::LrBt => 0,
                    Self::RlBt => 1,
                    Self::LrTb => 2,
                    Self::RlTb => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod line_width { // bits 15:0, established
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
pub mod vertex_x {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2070;
    pub const COUNT: u32 = 3;
    pub const STRIDE: u64 = 4;
}
/// (established)
pub mod vertex_gl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2080;
    pub const COUNT: u32 = 6;
    pub const STRIDE: u64 = 4;
}
/// (established)
pub mod xfer_src_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20a0;
}
/// (established)
pub mod xfer_src_stride {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20a4;
}
/// (established)
pub mod xfer_src_xstep {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20a8;
}
/// (established)
pub mod xfer_src_ystep {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20ac;
}
/// (established)
pub mod xfer_dst_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20b0;
}
/// (established)
pub mod xfer_dst_stride {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20b4;
}
/// (established)
pub mod stipple_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20c0;
}
/// (established)
pub mod stipple_pattern {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20c4;
}
/// (established)
pub mod fg_color {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20d0;
}
/// (established)
pub mod bg_color {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20d8;
}
/// (established)
pub mod shade_start {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20e0;
    pub const COUNT: u32 = 4;
    pub const STRIDE: u64 = 4;
}
/// (established)
pub mod shade_drdx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20f0;
}
/// (established)
pub mod shade_dgdx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20f4;
}
/// (established)
pub mod shade_drdy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20f8;
}
/// (established)
pub mod shade_dgdy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x20fc;
}
/// (established)
pub mod shade_dbdx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2100;
}
/// (established)
pub mod shade_dadx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2104;
}
/// (established)
pub mod shade_dbdy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2108;
}
/// (established)
pub mod shade_dady {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x210c;
}
/// (established)
pub mod tex_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2110;
}
/// (established)
pub mod tex_format {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2118;
}
/// (established)
pub mod tex_sqs {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2120;
}
/// (established)
pub mod tex_tqs {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2128;
}
/// (established)
pub mod tex_qs {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2130;
}
/// tex_stflags sits between tex_qs and tex_dsqdx and is absent from the specification's register table, which skips from the one to the other. Shipped so (established)
pub mod tex_stflags {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2134;
    pub mod t_flag { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_flag { // bits 0:0, established
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
pub mod tex_dsqdx {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2138;
}
/// (established)
pub mod tex_dsqdy {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2140;
}
/// (established)
pub mod tex_dtqdx {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2148;
}
/// (established)
pub mod tex_dtqdy {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x2150;
}
/// (established)
pub mod tex_dqdx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2158;
}
/// (established)
pub mod tex_dqdy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x215c;
}
/// (established)
pub mod tex_border {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2160;
}
/// (established)
pub mod tex_envcolor {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2168;
}
/// (established)
pub mod fog_color {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2170;
}
/// (established)
pub mod fog_fs {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2178;
}
/// (established)
pub mod fog_dfdx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2180;
}
/// (established)
pub mod fog_dfdy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2188;
}
/// Antialiasing applies only to point and line primitives and only to RGB(A) pixels. It acts on alpha after fogging and before the alpha test. For antial (established)
pub mod aa_line {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2190;
}
/// (established)
pub mod aa_cov {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2194;
}
/// Alpha test function and reference. Bits 31:12 are reserved in the specification. The test runs on fragment alpha after antialias coverage and only for (established)
pub mod alphatest {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2198;
    pub mod func { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NEVER: u32 = 0; // established
        pub const LESS: u32 = 1; // established
        pub const EQUAL: u32 = 2; // established
        pub const LEQUAL: u32 = 3; // established
        pub const GREATER: u32 = 4; // established
        pub const NOTEQUAL: u32 = 5; // established
        pub const GEQUAL: u32 = 6; // established
        pub const ALWAYS: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Never,
            Less,
            Equal,
            Lequal,
            Greater,
            Notequal,
            Gequal,
            Always,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Never,
                    1 => Self::Less,
                    2 => Self::Equal,
                    3 => Self::Lequal,
                    4 => Self::Greater,
                    5 => Self::Notequal,
                    6 => Self::Gequal,
                    7 => Self::Always,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Never => 0,
                    Self::Less => 1,
                    Self::Equal => 2,
                    Self::Lequal => 3,
                    Self::Greater => 4,
                    Self::Notequal => 5,
                    Self::Gequal => 6,
                    Self::Always => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod r#ref { // bits 7:0, established
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
/// Blend constant colour, read and written as a 32-bit word (established, [spec] register map, PDF 169, which names it "blend RGBA constant color"). The  (established)
pub mod blend_color {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21a0;
}
/// Blend equation and factors. The source factor table has a SRC_ALPHA_SATURATE row with no factor given, and the destination factor table has no such co (established)
pub mod blend_func {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21a8;
    pub mod op { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ADD: u32 = 0; // established
        pub const MIN: u32 = 1; // established
        pub const MAX: u32 = 2; // established
        pub const SUBTRACT: u32 = 3; // established
        pub const REVERSE_SUBTRACT: u32 = 4; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Add,
            Min,
            Max,
            Subtract,
            ReverseSubtract,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Add,
                    1 => Self::Min,
                    2 => Self::Max,
                    3 => Self::Subtract,
                    4 => Self::ReverseSubtract,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Add => 0,
                    Self::Min => 1,
                    Self::Max => 2,
                    Self::Subtract => 3,
                    Self::ReverseSubtract => 4,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod src { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ZERO: u32 = 0; // established
        pub const ONE: u32 = 1; // established
        pub const DST_COLOR: u32 = 2; // established
        pub const ONE_MINUS_DST_COLOR: u32 = 3; // established
        pub const SRC_ALPHA: u32 = 4; // established
        pub const ONE_MINUS_SRC_ALPHA: u32 = 5; // established
        pub const DST_ALPHA: u32 = 6; // established
        pub const ONE_MINUS_DST_ALPHA: u32 = 7; // established
        pub const CONSTANT_COLOR: u32 = 8; // established
        pub const ONE_MINUS_CONSTANT_COLOR: u32 = 9; // established
        pub const CONSTANT_ALPHA: u32 = 10; // established
        pub const ONE_MINUS_CONSTANT_ALPHA: u32 = 11; // established
        pub const SRC_ALPHA_SATURATE: u32 = 12; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Zero,
            One,
            DstColor,
            OneMinusDstColor,
            SrcAlpha,
            OneMinusSrcAlpha,
            DstAlpha,
            OneMinusDstAlpha,
            ConstantColor,
            OneMinusConstantColor,
            ConstantAlpha,
            OneMinusConstantAlpha,
            SrcAlphaSaturate,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Zero,
                    1 => Self::One,
                    2 => Self::DstColor,
                    3 => Self::OneMinusDstColor,
                    4 => Self::SrcAlpha,
                    5 => Self::OneMinusSrcAlpha,
                    6 => Self::DstAlpha,
                    7 => Self::OneMinusDstAlpha,
                    8 => Self::ConstantColor,
                    9 => Self::OneMinusConstantColor,
                    10 => Self::ConstantAlpha,
                    11 => Self::OneMinusConstantAlpha,
                    12 => Self::SrcAlphaSaturate,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Zero => 0,
                    Self::One => 1,
                    Self::DstColor => 2,
                    Self::OneMinusDstColor => 3,
                    Self::SrcAlpha => 4,
                    Self::OneMinusSrcAlpha => 5,
                    Self::DstAlpha => 6,
                    Self::OneMinusDstAlpha => 7,
                    Self::ConstantColor => 8,
                    Self::OneMinusConstantColor => 9,
                    Self::ConstantAlpha => 10,
                    Self::OneMinusConstantAlpha => 11,
                    Self::SrcAlphaSaturate => 12,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod dst { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ZERO: u32 = 0; // established
        pub const ONE: u32 = 1; // established
        pub const SRC_COLOR: u32 = 2; // established
        pub const ONE_MINUS_SRC_COLOR: u32 = 3; // established
        pub const SRC_ALPHA: u32 = 4; // established
        pub const ONE_MINUS_SRC_ALPHA: u32 = 5; // established
        pub const DST_ALPHA: u32 = 6; // established
        pub const ONE_MINUS_DST_ALPHA: u32 = 7; // established
        pub const CONSTANT_COLOR: u32 = 8; // established
        pub const ONE_MINUS_CONSTANT_COLOR: u32 = 9; // established
        pub const CONSTANT_ALPHA: u32 = 10; // established
        pub const ONE_MINUS_CONSTANT_ALPHA: u32 = 11; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Zero,
            One,
            SrcColor,
            OneMinusSrcColor,
            SrcAlpha,
            OneMinusSrcAlpha,
            DstAlpha,
            OneMinusDstAlpha,
            ConstantColor,
            OneMinusConstantColor,
            ConstantAlpha,
            OneMinusConstantAlpha,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Zero,
                    1 => Self::One,
                    2 => Self::SrcColor,
                    3 => Self::OneMinusSrcColor,
                    4 => Self::SrcAlpha,
                    5 => Self::OneMinusSrcAlpha,
                    6 => Self::DstAlpha,
                    7 => Self::OneMinusDstAlpha,
                    8 => Self::ConstantColor,
                    9 => Self::OneMinusConstantColor,
                    10 => Self::ConstantAlpha,
                    11 => Self::OneMinusConstantAlpha,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Zero => 0,
                    Self::One => 1,
                    Self::SrcColor => 2,
                    Self::OneMinusSrcColor => 3,
                    Self::SrcAlpha => 4,
                    Self::OneMinusSrcAlpha => 5,
                    Self::DstAlpha => 6,
                    Self::OneMinusDstAlpha => 7,
                    Self::ConstantColor => 8,
                    Self::OneMinusConstantColor => 9,
                    Self::ConstantAlpha => 10,
                    Self::OneMinusConstantAlpha => 11,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// The register's own field table is empty in the specification (section 7.3.1.17). The sixteen bitwise operations are listed in Table 7-23 (established, (established)
pub mod logicop {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21b0;
}
/// (established)
pub mod colormask {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21b8;
}
/// (established)
pub mod depth_func {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21c0;
}
/// (established)
pub mod depth_zs {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x21c8;
}
/// (established)
pub mod depth_dzdx {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x21d0;
}
/// (established)
pub mod depth_dzdy {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x21d8;
}
/// (established)
pub mod stencil_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21e0;
}
/// (established)
pub mod stencil_mask {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21e8;
}
/// (established)
pub mod pixpipe_null {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21f0;
}
/// (established)
pub mod pixpipe_flush {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x21f8;
}
/// The status register is read with 32-bit loads. Shipped software polls the combined idle bit (28), reads the interface-buffer fill level from bits 24:1 (established)
pub mod status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4000;
    pub mod idle { // bits 28:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod setup_idle { // bits 27:27, established
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixpipe_idle { // bits 26:26, established
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mte_idle { // bits 25:25, inferred
        pub const SHIFT: u32 = 25;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod level { // bits 24:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod rd_ptr { // bits 17:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod wr_ptr { // bits 11:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod start { // bits 5:0, inferred
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
/// ib_discard sits two doublewords above the status register. Shipped kernel code stores zero to it with a 32-bit store, never reads it, and does so afte (established)
pub mod ib_discard {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4008;
}
/// The buffer mode words (source and destination share one layout) pick the buffer, its TLB and the pixel format. buf_type chooses tiled access through a (established)
pub mod bufmode {
    pub const WIDTH: u32 = 32;
    pub mod buf_type { // bits 12:10, established
        pub const SHIFT: u32 = 10;
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
        pub const LIN_A: u32 = 4; // established
        pub const LIN_B: u32 = 5; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            FbA,
            FbB,
            FbC,
            LinA,
            LinB,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::FbA,
                    1 => Self::FbB,
                    2 => Self::FbC,
                    4 => Self::LinA,
                    5 => Self::LinB,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::FbA => 0,
                    Self::FbB => 1,
                    Self::FbC => 2,
                    Self::LinA => 4,
                    Self::LinB => 5,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod buf_depth { // bits 9:8, established
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
    pub mod pix_type { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const CI: u32 = 0; // established
        pub const RGB: u32 = 1; // established
        pub const RGBA: u32 = 2; // established
        pub const ABGR: u32 = 3; // established
        pub const YCRCB: u32 = 15; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Ci,
            Rgb,
            Rgba,
            Abgr,
            Ycrcb,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Ci,
                    1 => Self::Rgb,
                    2 => Self::Rgba,
                    3 => Self::Abgr,
                    15 => Self::Ycrcb,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Ci => 0,
                    Self::Rgb => 1,
                    Self::Rgba => 2,
                    Self::Abgr => 3,
                    Self::Ycrcb => 15,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod pix_depth { // bits 3:2, established
        pub const SHIFT: u32 = 2;
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
    pub mod double_pix { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod double_pix_sel { // bits 0:0, established
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
/// ib_addr holds the address half of each queued write. Software decodes its upper 32 bits (IBADDR_HI, the word at the register's own address in big-endi (inferred)
pub mod ibaddr_hi {
    pub const WIDTH: u32 = 32;
    pub mod start_flag { // bits 13:13, inferred
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod lane { // bits 12:11, inferred
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u32 = 0; // inferred
        pub const WORD1: u32 = 1; // inferred
        pub const WORD0: u32 = 2; // inferred
        pub const DWORD: u32 = 3; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Word1,
            Word0,
            Dword,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::Word1,
                    2 => Self::Word0,
                    3 => Self::Dword,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::None => 0,
                    Self::Word1 => 1,
                    Self::Word0 => 2,
                    Self::Dword => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod group { // bits 10:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const INTERFACE: u32 = 0; // established
        pub const TLB: u32 = 1; // established
        pub const PIXEL_PIPE: u32 = 2; // established
        pub const TRANSFER: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Interface,
            Tlb,
            PixelPipe,
            Transfer,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Interface,
                    1 => Self::Tlb,
                    2 => Self::PixelPipe,
                    3 => Self::Transfer,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Interface => 0,
                    Self::Tlb => 1,
                    Self::PixelPipe => 2,
                    Self::Transfer => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod index { // bits 7:0, established
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
/// Each doubleword holds two 32-bit page entries, the even page in the upper word and the odd page in the lower word. Software indexes a table with addre (inferred)
pub mod linent {
    pub const WIDTH: u32 = 32;
    pub mod valid { // bits 31:31, inferred
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod page { // bits 30:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7fffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// 16-bit RGB(A) colour pixel, named A1_RGB5 in the specification: alpha in bit 15, red in bits 14:10, green in bits 9:5 and blue in bits 4:0 (establishe (established)
pub mod pixel_a1_rgb5 {
    pub const WIDTH: u32 = 16;
    pub mod alpha { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod red { // bits 14:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 9:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 4:0, established
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
/// 32-bit RGBA colour pixel, named RGBA8 in the specification (8888): red in bits 31:24, green in bits 23:16, blue in bits 15:8 and alpha in bits 7:0 (es (established)
pub mod pixel_rgba8 {
    pub const WIDTH: u32 = 32;
    pub mod red { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 23:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha { // bits 7:0, established
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
/// Each screen mask is one clip rectangle; the end coordinates are exclusive. The upper word (SCRMASK_HI, at the register's own address in big-endian lay (established)
pub mod scrmask_hi {
    pub const WIDTH: u32 = 32;
    pub mod x_start { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod y_start { // bits 15:0, established
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
pub mod scrmask_lo {
    pub const WIDTH: u32 = 32;
    pub mod x_end { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod y_end { // bits 15:0, established
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
/// (inferred)
pub mod tlbtile {
    pub const WIDTH: u32 = 32;
    pub mod valid { // bits 15:15, inferred
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod page { // bits 14:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const IB_ENTRIES: u32 = 0x40; // established
pub const LIN_TLB_REGS: u32 = 0x10; // established
pub const START_ALIAS_BIT: u32 = 0xb; // established
pub const TLB_ENTRIES_PER_REG: u32 = 0x4; // established
pub const TLB_TILE_SHIFT: u32 = 0x10; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn ib_ctl_fefff0a() {
        assert_eq!(ib_ctl::count::get(0xfefff0a), 10);
        assert_eq!(ib_ctl::stall::get(0xfefff0a), 126);
        assert_eq!(ib_ctl::empty::get(0xfefff0a), 63);
        assert_eq!(ib_ctl::full::get(0xfefff0a), 127);
    }

    #[test]
    fn clipmode_21() {
        assert_eq!(clipmode::mode::get(0x21), 1);
        assert_eq!(clipmode::enable::get(0x21), 1);
        assert_eq!(clipmode::clip_id_map::get(0x21), 0);
        assert_eq!(clipmode::clip_id_test::get(0x21), 0);
    }

    #[test]
    fn clipmode_63() {
        assert_eq!(clipmode::mode::get(0x63), 3);
        assert_eq!(clipmode::enable::get(0x63), 3);
    }

    #[test]
    fn clipmode_3ff() {
        assert_eq!(clipmode::mode::get(0x3ff), 31);
        assert_eq!(clipmode::enable::get(0x3ff), 31);
    }

    #[test]
    fn clipmode_821() {
        assert_eq!(clipmode::mode::get(0x821), 1);
        assert_eq!(clipmode::enable::get(0x821), 1);
        assert_eq!(clipmode::clip_id_test::get(0x821), 1);
    }

    #[test]
    fn primitive_3020000() {
        assert_eq!(primitive::op::get(0x3020000), 3);
        assert_eq!(primitive::line_skip_last::get(0x3020000), 0);
        assert_eq!(primitive::edge::get(0x3020000), 2);
        assert_eq!(primitive::line_width::get(0x3020000), 0);
    }

    #[test]
    fn bufmode_504() {
        assert_eq!(bufmode::buf_type::get(0x504), 1);
        assert_eq!(bufmode::buf_depth::get(0x504), 1);
        assert_eq!(bufmode::pix_type::get(0x504), 0);
        assert_eq!(bufmode::pix_depth::get(0x504), 1);
        assert_eq!(bufmode::double_pix::get(0x504), 0);
    }

    #[test]
    fn linent_80000123() {
        assert_eq!(linent::page::get(0x80000123), 291);
        assert_eq!(linent::valid::get(0x80000123), 1);
    }
}
