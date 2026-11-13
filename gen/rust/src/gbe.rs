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
/// The shipped IRIX text port writes 1 after the glyph and colours are loaded; what the other bits mean there is unknown. (established)
pub mod crs_ctl {
    pub const WIDTH: u32 = 32;
    pub mod crosshair { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
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
/// Cursor position, CRS_0. The table gives 16-bit X in bits 15:0 and Y in bits 31:16, reset zero. The spec's functional text (pp. 20-22) calls positions  (established)
pub mod crs_pos {
    pub const WIDTH: u32 = 32;
    pub mod y { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod x { // bits 15:0, established
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
/// The shipped IRIX kernel writes the same vertical part as DID_START_XY, with one line added (0x1000), and the horizontal blank end minus 54 with total  (established)
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
/// Pin pair n is data at bit 6+2n and an active-low output enable at bit 7+2n, for n = 0 to 9. Reset is 11 for every pair (data high, output disabled), s (established)
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
        pub const DIFFERENTIAL: u32 = 1; // established
        pub const INTERNAL: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            External,
            Differential,
            Internal,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::External,
                    1 => Self::Differential,
                    3 => Self::Internal,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::External => 0,
                    Self::Differential => 1,
                    Self::Internal => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod csync_polarity { // bits 27:27, established
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod half_phase { // bits 26:26, established
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io9_oe_n { // bits 25:25, established
        pub const SHIFT: u32 = 25;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io9_data { // bits 24:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io8_oe_n { // bits 23:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io8_data { // bits 22:22, established
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io7_oe_n { // bits 21:21, established
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io7_data { // bits 20:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io6_oe_n { // bits 19:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
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
    pub mod io5_oe_n { // bits 17:17, established
        pub const SHIFT: u32 = 17;
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
    pub mod io4_oe_n { // bits 15:15, established
        pub const SHIFT: u32 = 15;
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
    pub mod io3_oe_n { // bits 13:13, established
        pub const SHIFT: u32 = 13;
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
    pub mod io2_oe_n { // bits 11:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io2_data { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io1_oe_n { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io1_data { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io0_oe_n { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod io0_data { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod monitor_sense { // bits 4:4, established
        pub const SHIFT: u32 = 4;
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
/// The shipped IRIX stop routine tests the enable bit at entry, clears it and leaves the word otherwise unwritten; the kernel never writes the table addr (established)
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
/// The shipped IRIX X module packs a frame entry as block << 19 | offset << 11 | yend, one per horizontal band of lines. (established)
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
/// The shipped IRIX X module packs a line-table entry as index << 11 | xend, one per rectangle in a band and sorted by its last column, in 16-bit units i (established)
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
/// The shipped IRIX kernel writes a vertical part of minus (vertical blank start minus vertical blank end minus 1) when that difference is positive, else (established)
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
/// Bits 22 (out of range) and 23 (out of lock) are status bits. The table leaves their reset contents unspecified, and the spec gives no PLL lock time or (established)
pub mod dotclock {
    pub const WIDTH: u32 = 32;
    pub mod test { // bits 25:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod out_of_lock { // bits 23:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod out_of_range { // bits 22:22, established
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
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
/// The shipped IRIX timing routine writes it only for the default set-up and panel set-ups 130 and 131, and only when no dual-channel option is fitted. (established)
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
/// The value the shipped IRIX timing routine writes depends on the board's panel set-up byte and on whether a dual-channel option is fitted. (established)
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
/// The shipped IRIX stop routine saves it, clears its enable bit, and later writes it back with its pointer field bumped by one unit. (established)
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
/// The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the frame control word. (established)
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
/// Frame height in pixels, shared by the normal and overlay planes. Reset zero. (established)
pub mod frm_size_pixel {
    pub const WIDTH: u32 = 32;
    pub mod height { // bits 31:16, established
        pub const SHIFT: u32 = 16;
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
/// Monitor DDC bus. Bit 0 is the data line and bit 1 the clock line; both reset to 1. The spec gives separate output and synchronized input pins (page 22 (established)
pub mod i2c {
    pub const WIDTH: u32 = 32;
    pub mod sdc { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sda { // bits 0:0, established
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
/// Flat-panel DDC bus, same layout as I2C: data at bit 0 and clock at bit 1, both reset to 1. The spec places external pullups on the flat-panel clock an (established)
pub mod i2cfp {
    pub const WIDTH: u32 = 32;
    pub mod sdc { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sda { // bits 0:0, established
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
/// The shipped IRIX kernel rejects window indices of 32 or more and writes entry 0 with 3 at text-port set-up. Its compare mask (0x7fc) leaves the auxili (established)
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
/// The shipped IRIX stop routine clears its enable bit and leaves the word otherwise unwritten; reading the enable as a DMA enable is inferred. (established)
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
/// The shipped IRIX start-up sequence polls bit 0 until it equals bit 0 of the value it has just written to the overlay control word. (established)
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
/// Overlay width must be a multiple of 32 pixels, so the 32-byte remainder is whole pixels at 8 bits (GBE 1.1 pp. 13-14). (established)
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
/// System PLL test controls, gains and divider. Reset has bit 3 set (test control 0) and every other defined bit zero. (established)
pub mod sysclk {
    pub const WIDTH: u32 = 32;
    pub mod divider { // bits 14:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod current_gain { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod voltage_gain { // bits 9:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tm { // bits 3:0, established
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
/// The shipped IRIX video driver clears VC_0 to VC_3 (written as zero when a capture path stops); bit 0 of VC_2 enabling DMA is inferred from its start r (established)
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
/// The shipped IRIX video driver clears it when a capture path stops and holds a path byte in it; that reading is inferred from the start routine. (established)
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
/// The shipped IRIX kernel writes the same vertical part as DID_START_XY without the extra line, and the horizontal blank end minus 4. The placement of t (established)
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
/// Field-to-frame lock line, VT_7. The page 21 diagram and the NetBSD encoding name a stereo toggle line and a frame-lock line. Which half holds which is (inferred)
pub mod vt_f2rf_lock {
    pub const WIDTH: u32 = 32;
    pub mod frame_lock_y { // bits 23:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stereo_toggle_y { // bits 11:0, inferred
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
/// Output polarity and control bits 6:0 (VT_6). Composite sync low is bit 5. The other bits follow the public Linux and NetBSD encodings, which are softw (established)
pub mod vt_flags {
    pub const WIDTH: u32 = 32;
    pub mod stereo_forced_high { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
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
    pub mod composite_sync_high { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod horizontal_forced_low { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod horizontal_invert { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod vertical_forced_low { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod vertical_invert { // bits 0:0, inferred
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
/// Horizontal blanking turns off and on at these pixel counts (VT_5). The shipped IRIX timing routine stores it in the interlace case and when no dual-ch (established)
pub mod vt_hblank {
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
/// The shipped IRIX kernel writes the horizontal blank window: start in the high field, end in the low field, in pixels. (established)
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
/// Horizontal pixel-enable window, VT_13. The spec prose says the horizontal and vertical enables combine with OR. The table does not settle that rule. T (established)
pub mod vt_hpixen {
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
/// Horizontal sync turns off and on at these pixel counts (VT_3). (established)
pub mod vt_hsync {
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
/// Vertical blanking turns off and on at these lines (VT_4). The shipped IRIX timing routine stores it in the interlace case and when no dual-channel opt (established)
pub mod vt_vblank {
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
/// The shipped IRIX kernel writes the vertical blank window: start in the high field, end in the low field, in lines. (established)
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
/// Vertical pixel-enable window, VT_14. The shipped IRIX kernel parks 0xffffff here and writes it last in the start-up sequence with the vertical blank e (established)
pub mod vt_vpixen {
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
/// Vertical sync turns off and on at these lines (VT_2). The page 38 text for the on row repeats the off comparator, so the positions are established but (established)
pub mod vt_vsync {
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
/// The shipped IRIX start-up sequence compares its whole unmasked value with the vertical blank start line; the stop sequence reads bit 31 as the freeze  (established)
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
    pub mod y { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod x { // bits 11:0, established
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
/// The shipped IRIX timing routine writes 0 here, and the start-up sequence writes the totals once the frame buffer is set up. The kernel stores the reco (established)
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
pub const CMFIFO_BATCH: u32 = 0x21; // established
pub const DEVICE_ID_VALUE: u32 = 0x666; // established
pub const DID_BLOCK_BYTES: u32 = 0x200; // established
pub const DID_BLOCK_ENTRIES: u32 = 0x100; // established
pub const DID_END_BLOCK: u32 = 0x80; // established
pub const DID_LAST_XEND: u32 = 0x7ff; // established
pub const DID_LINE_TABLE_OFFSET: u32 = 0x2000; // established
pub const DID_TABLE_BYTES: u32 = 0x10000; // established
pub const DOTCLK_SETTLE_MS: u32 = 0xb; // established
pub const GBE_LINE_IRQ_BASE: u32 = 0x10; // established
pub const GMAP_ENTRIES: u32 = 0x100; // established
pub const MODE_ENTRIES: u32 = 0x20; // established
pub const MODE_ENTRY_STRIDE: u32 = 0x4; // established
pub const OFF_CMAP: u32 = 0x50000; // established
pub const OFF_CMAP_FIFO: u32 = 0x58000; // established
pub const OFF_CRS_CMAP: u32 = 0x70008; // established
pub const OFF_CRS_COLOR2: u32 = 0x7000c; // established
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
pub const OPT_CMD_CLOCK_KHZ: u32 = 0x186a0; // established
pub const OPT_CMD_ID_HIGH: u32 = 0xff; // established
pub const OPT_CMD_ID_LOW: u32 = 0x7f; // established
pub const OPT_DELAY_SMALL: u32 = 0x2; // established
pub const OPT_ID_MASK: u32 = 0x60; // established
pub const OPT_ID_RESTORE: u32 = 0x70; // established
pub const OPT_INSTALLED_LIMIT: u32 = 0x9; // established
pub const OPT_PORT_ADDR: u32 = 0x7e; // established
pub const OVERLAY_TRANSPARENT_INDEX: u32 = 0x0; // inferred
pub const REF_CLOCK_KHZ: u32 = 0x4e20; // inferred
pub const TILE_LIST_ALIGN_BYTES: u32 = 0x200; // inferred
pub const TILE_LIST_BYTES_UNIT: u32 = 0x20; // established
pub const TILE_LIST_OUTSTANDING: u32 = 0x8; // inferred
pub const TILE_LIST_PAGE_BYTES: u32 = 0x2000; // inferred
pub const TILE_NUMBER_MASK: u32 = 0x1fff; // established
pub const TWO_WIRE_WAIT_BIT: u32 = 0x1; // established
pub const TWO_WIRE_WAIT_LIMIT: u32 = 0x3c; // established
pub const VC_TILE_REGS: u32 = 0x5; // established
pub const VT_XY_FREEZE: u32 = 0x80000000; // established

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
    fn ctrlstat_10000000() {
        assert_eq!(ctrlstat::pclk_select::get(0x10000000), 1);
        assert_eq!(ctrlstat::chip_rev::get(0x10000000), 0);
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
    fn sysclk_8() {
        assert_eq!(sysclk::tm::get(0x8), 8);
    }

    #[test]
    fn vt_xymax_20d320() {
        assert_eq!(vt_xymax::htotal::get(0x20d320), 800);
        assert_eq!(vt_xymax::vtotal::get(0x20d320), 525);
    }
}
