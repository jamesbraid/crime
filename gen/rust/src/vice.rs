// generated from defs/vice.toml by defs-gen - do not edit, change the source
// O2 VICE imaging and compression engine registers
#![allow(dead_code)]

/// (established)
pub mod id {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x8;
    pub mod revision { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const VICE_A: u32 = 1; // established
        pub const VICE_B: u32 = 2; // established
        pub const VICE_C: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            ViceA,
            ViceB,
            ViceC,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::ViceA,
                    2 => Self::ViceB,
                    3 => Self::ViceC,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::ViceA => 1,
                    Self::ViceB => 2,
                    Self::ViceC => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod hst_bsp_in_box {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x28;
}
/// (established)
pub mod hst_bsp_out_box {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x30;
}
/// (established)
pub mod msp_ctl_stat {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x40;
    pub mod reset_release { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod go { // bits 0:0, established
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
pub mod msp_excp_flag {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x48;
}
/// (established)
pub mod msp_pc {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x50;
    pub mod pc { // bits 15:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x3fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod msp_bad_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x58;
}
/// (established)
pub mod msp_watchpoint {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x60;
}
/// (established)
pub mod msp_epc {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x68;
    pub mod pc { // bits 15:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x3fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod msp_cause {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x70;
    pub mod branch_delay { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod code { // bits 6:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ADEL: u32 = 0; // established
        pub const ADES: u32 = 1; // established
        pub const BP: u32 = 2; // established
        pub const WP: u32 = 3; // established
        pub const SURI: u32 = 4; // established
        pub const VURI: u32 = 5; // established
        pub const CON: u32 = 6; // established
        pub const ADEI: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Adel,
            Ades,
            Bp,
            Wp,
            Suri,
            Vuri,
            Con,
            Adei,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Adel,
                    1 => Self::Ades,
                    2 => Self::Bp,
                    3 => Self::Wp,
                    4 => Self::Suri,
                    5 => Self::Vuri,
                    6 => Self::Con,
                    7 => Self::Adei,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Adel => 0,
                    Self::Ades => 1,
                    Self::Bp => 2,
                    Self::Wp => 3,
                    Self::Suri => 4,
                    Self::Vuri => 5,
                    Self::Con => 6,
                    Self::Adei => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Listed in the register map as the BSP R Page, 16 bits read and write, with no register section. The specification names an RPage register as the base  (established)
pub mod bsp_rpage {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x78;
}
/// The software-interrupt registers carry no data in the specification's register map (size 0): any write sets the matching cause bit. The 32-bit width i (inferred)
pub mod bsp_sw_int {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x80;
}
/// (established)
pub mod msp_d_ram {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x100;
    pub mod bank_c { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bank_b { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bank_a { // bits 0:0, established
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
pub mod msp_count {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x108;
}
/// (established)
pub mod bsp_ctl_stat {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x110;
    pub mod flags { // bits 15:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ext { // bits 11:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod bsp_watchpoint {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x118;
}
/// (established)
pub mod bsp_in_count {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x120;
}
/// (established)
pub mod bsp_out_count {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x128;
}
/// (established)
pub mod bsp_pc {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x140;
}
/// (established)
pub mod bsp_epc {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x148;
}
/// bsp_halt_reset: the specification's field table puts the reset bit at 0 and the go and halt bit at 1, while its prose says bit 1 releases reset and do (established)
pub mod bsp_halt_reset {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x150;
}
/// (established)
pub mod bsp_cause {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x158;
}
/// The three interrupt registers share one nine-bit cause layout (CAUSE). VICE.int reads the causes, VICE.int_reset clears the bits written as one and VI (established)
pub mod int {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x160;
}
/// (established)
pub mod bsp_fifo_ctl_stat {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x168;
    pub mod bsp_signal { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod msp_signal { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod in_reset { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod in_full { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod in_empty { // bits 0:0, established
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
pub mod bsp_avalid_bits {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x170;
    pub mod pointer { // bits 5:0, established
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
/// (established)
pub mod bsp_fvalid_bits {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x178;
    pub mod pointer { // bits 5:0, established
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
/// Channel 2 repeats channel 1's registers at a fixed distance and shares the control (DMACTL) and status layouts. The four descriptor sets of each chann (established)
pub mod dma_ctl_ch1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x180;
}
/// (established)
pub mod dma_stat_ch1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x188;
}
/// (established)
pub mod dma_data_ch1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x190;
}
/// (established)
pub mod dma_mem_pt_ch1 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x198;
}
/// (established)
pub mod dma_vice_pt_ch1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1a0;
}
/// (established)
pub mod dma_count_ch1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1a8;
}
/// (inferred)
pub mod msp_sw_int {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x1b8;
}
/// (established)
pub mod dma_ctl_ch2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1c0;
}
/// (established)
pub mod dma_stat_ch2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1c8;
}
/// (established)
pub mod dma_data_ch2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1d0;
}
/// (established)
pub mod dma_mem_pt_ch2 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x1d8;
}
/// (established)
pub mod dma_vice_pt_ch2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1e0;
}
/// (established)
pub mod dma_count_ch2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1e8;
}
/// The two mailboxes share a layout (MBOX): a 15-bit message and a signal bit that any write sets and any read clears. The host shadow registers read the (established)
pub mod bsp_in_box {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1f0;
}
/// (established)
pub mod bsp_out_box {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1f8;
}
/// (established)
pub mod dma_ctl_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1000;
}
/// (established)
pub mod dma_smem_hi_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1008;
}
/// (established)
pub mod dma_smem_lo_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1010;
}
/// (established)
pub mod dma_width_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1018;
}
/// (established)
pub mod dma_stride_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1020;
}
/// (established)
pub mod dma_lines_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1028;
}
/// (established)
pub mod dma_vmem_y_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1030;
}
/// (established)
pub mod dma_vmem_c_ch1_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1038;
}
/// (established)
pub mod dma_ctl_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1040;
}
/// (established)
pub mod dma_smem_hi_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1048;
}
/// (established)
pub mod dma_smem_lo_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1050;
}
/// (established)
pub mod dma_width_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1058;
}
/// (established)
pub mod dma_stride_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1060;
}
/// (established)
pub mod dma_lines_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1068;
}
/// (established)
pub mod dma_vmem_y_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1070;
}
/// (established)
pub mod dma_vmem_c_ch1_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1078;
}
/// (established)
pub mod dma_ctl_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1080;
}
/// (established)
pub mod dma_smem_hi_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1088;
}
/// (established)
pub mod dma_smem_lo_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1090;
}
/// (established)
pub mod dma_width_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1098;
}
/// (established)
pub mod dma_stride_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10a0;
}
/// (established)
pub mod dma_lines_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10a8;
}
/// (established)
pub mod dma_vmem_y_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10b0;
}
/// (established)
pub mod dma_vmem_c_ch1_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10b8;
}
/// (established)
pub mod dma_ctl_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10c0;
}
/// (established)
pub mod dma_smem_hi_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10c8;
}
/// (established)
pub mod dma_smem_lo_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10d0;
}
/// (established)
pub mod dma_width_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10d8;
}
/// (established)
pub mod dma_stride_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10e0;
}
/// (established)
pub mod dma_lines_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10e8;
}
/// (established)
pub mod dma_vmem_y_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10f0;
}
/// (established)
pub mod dma_vmem_c_ch1_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10f8;
}
/// (established)
pub mod dma_ctl_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1100;
}
/// (established)
pub mod dma_smem_hi_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1108;
}
/// (established)
pub mod dma_smem_lo_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1110;
}
/// (established)
pub mod dma_width_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1118;
}
/// (established)
pub mod dma_stride_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1120;
}
/// (established)
pub mod dma_lines_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1128;
}
/// (established)
pub mod dma_vmem_y_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1130;
}
/// (established)
pub mod dma_vmem_c_ch2_d1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1138;
}
/// (established)
pub mod dma_ctl_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1140;
}
/// (established)
pub mod dma_smem_hi_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1148;
}
/// (established)
pub mod dma_smem_lo_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1150;
}
/// (established)
pub mod dma_width_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1158;
}
/// (established)
pub mod dma_stride_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1160;
}
/// (established)
pub mod dma_lines_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1168;
}
/// (established)
pub mod dma_vmem_y_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1170;
}
/// (established)
pub mod dma_vmem_c_ch2_d2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1178;
}
/// (established)
pub mod dma_ctl_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1180;
}
/// (established)
pub mod dma_smem_hi_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1188;
}
/// (established)
pub mod dma_smem_lo_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1190;
}
/// (established)
pub mod dma_width_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1198;
}
/// (established)
pub mod dma_stride_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11a0;
}
/// (established)
pub mod dma_lines_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11a8;
}
/// (established)
pub mod dma_vmem_y_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11b0;
}
/// (established)
pub mod dma_vmem_c_ch2_d3 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11b8;
}
/// (established)
pub mod dma_ctl_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11c0;
}
/// (established)
pub mod dma_smem_hi_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11c8;
}
/// (established)
pub mod dma_smem_lo_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11d0;
}
/// (established)
pub mod dma_width_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11d8;
}
/// (established)
pub mod dma_stride_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11e0;
}
/// (established)
pub mod dma_lines_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11e8;
}
/// (established)
pub mod dma_vmem_y_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11f0;
}
/// (established)
pub mod dma_vmem_c_ch2_d4 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11f8;
}
/// MSP instruction RAM, 4 KB. The map gives the size and the specification says the host loads it, while the MSP itself can only fetch from it. The acces (inferred)
pub mod msp_i_ram {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2000;
    pub const COUNT: u32 = 1024;
    pub const STRIDE: u64 = 4;
}
/// BSP instruction RAM, 1K by 16 bits (2 KB). The host loads it; the BSP can only fetch from it. The unused tail of the window is not implemented and rea (established)
pub mod bsp_i_ram {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x4000;
    pub const COUNT: u32 = 1024;
    pub const STRIDE: u64 = 2;
}
/// Bitstream processor table memory, 1280 entries of 22 bits (block diagram and map). Each entry is presented as a 32-bit word, with the top ten bits rea (inferred)
pub mod table_mem {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x5000;
    pub const COUNT: u32 = 1280;
    pub const STRIDE: u64 = 4;
    pub mod value { // bits 21:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3fffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// The chip's memories sit in the same 64 KiB window as its registers. Each region's base and extent are the specification's address map: the bitstream p (inferred)
pub mod bsp_out_buf {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x7000;
    pub const COUNT: u32 = 1024;
    pub const STRIDE: u64 = 2;
}
/// (inferred)
pub mod bsp_in_buf {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x7800;
    pub const COUNT: u32 = 1024;
    pub const STRIDE: u64 = 2;
}
/// (inferred)
pub mod data_ram_a {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x8000;
    pub const COUNT: u32 = 512;
    pub const STRIDE: u64 = 4;
}
/// (inferred)
pub mod data_ram_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x8800;
    pub const COUNT: u32 = 512;
    pub const STRIDE: u64 = 4;
}
/// (inferred)
pub mod data_ram_c {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x9000;
    pub const COUNT: u32 = 512;
    pub const STRIDE: u64 = 4;
}
/// (established)
pub mod cfg {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xe000;
    pub mod msp_tlb_bypass { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod check_data { // bits 0:0, established
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
pub mod int_reset {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xe008;
}
/// (established)
pub mod int_en {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xe010;
}
/// (established)
pub mod tlb {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf000;
}
/// (established)
pub mod cause {
    pub const WIDTH: u32 = 32;
    pub mod dma2_error { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma2_done { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bad_data { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bsp_exception { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bsp_sw { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod msp_exception { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod msp_sw { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma1_error { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma1_done { // bits 0:0, established
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
pub mod dmactl {
    pub const WIDTH: u32 = 32;
    pub mod flush_buf { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tlb_bypass { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod descr_pt { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod reset { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stop { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ie { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod go { // bits 0:0, established
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
pub mod dmastat {
    pub const WIDTH: u32 = 32;
    pub mod code { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod descr_pt { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod rw { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod active { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod error { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod done { // bits 0:0, established
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
/// Control word of a DMA descriptor set. Each set of each channel uses this layout. The published field table marks the half-pel flags, the half-pel enab (established)
pub mod dma_desc_ctl {
    pub const WIDTH: u32 = 16;
    pub mod halt { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod skip { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod direction { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const WRITE: u32 = 0; // established
        pub const READ: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Write,
            Read,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Write,
                    1 => Self::Read,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Write => 0,
                    Self::Read => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod fill_source { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const SYSTEM: u32 = 0; // established
        pub const DATA_REGISTER: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            System,
            DataRegister,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::System,
                    1 => Self::DataRegister,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::System => 0,
                    Self::DataRegister => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod yc { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BLOCK: u32 = 0; // established
        pub const SPLIT_420: u32 = 1; // established
        pub const SPLIT_422: u32 = 2; // established
        pub const Y_ONLY: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Block,
            Split420,
            Split422,
            YOnly,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Block,
                    1 => Self::Split420,
                    2 => Self::Split422,
                    3 => Self::YOnly,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Block => 0,
                    Self::Split420 => 1,
                    Self::Split422 => 2,
                    Self::YOnly => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod luma_half { // bits 9:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod interleave { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BLOCK: u32 = 0; // established
        pub const INTERLEAVE: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Block,
            Interleave,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Block,
                    1 => Self::Interleave,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Block => 0,
                    Self::Interleave => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod location { // bits 6:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const RAM_A: u32 = 0; // established
        pub const RAM_B: u32 = 1; // established
        pub const RAM_C: u32 = 2; // established
        pub const MSP_I_RAM: u32 = 3; // established
        pub const BSP_I_RAM: u32 = 4; // established
        pub const BSP_TABLE: u32 = 5; // established
        pub const BSP_FIFO: u32 = 6; // established
        pub const TLB_RAM: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            RamA,
            RamB,
            RamC,
            MspIRam,
            BspIRam,
            BspTable,
            BspFifo,
            TlbRam,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::RamA,
                    1 => Self::RamB,
                    2 => Self::RamC,
                    3 => Self::MspIRam,
                    4 => Self::BspIRam,
                    5 => Self::BspTable,
                    6 => Self::BspFifo,
                    7 => Self::TlbRam,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::RamA => 0,
                    Self::RamB => 1,
                    Self::RamC => 2,
                    Self::MspIRam => 3,
                    Self::BspIRam => 4,
                    Self::BspTable => 5,
                    Self::BspFifo => 6,
                    Self::TlbRam => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod half_pel_enable { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod chroma_only { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod chroma_half { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod mbox {
    pub const WIDTH: u32 = 32;
    pub mod signal { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod message { // bits 14:0, established
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
/// A translation buffer entry is a 32-bit word written whole: valid in bit 0, writable (permits DMA writes to the page) in bit 1 and the 64 KiB physical  (established)
pub mod tlb_entry {
    pub const WIDTH: u32 = 32;
    pub mod page { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod writable { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod valid { // bits 0:0, established
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
