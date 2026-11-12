// generated from defs/vice.toml by defs-gen - do not edit, change the source
// O2 VICE imaging and compression engine registers
#![allow(dead_code)]

/// (established)
pub mod id {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x8;
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
/// Channel 2 repeats channel 1's registers at a fixed distance and shares the control (DMACTL) and status layouts. Only the first descriptor set of each  (established)
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
