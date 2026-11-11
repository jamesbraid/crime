// generated from o2gfx 45f590324bef VICE_DECODE.h - do not edit, regenerate in o2gfx
//!
//! VICE imaging and compression engine chip, signal processor,
//! bitstream processor, mailbox and DMA channel registers.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// VICE register `bsp_out_buf`: read/write, 16-bit, 1024 consecutive registers; reset unknown; inferred.
pub const REG_BSP_OUT_BUF: u32 = 0x7000;
pub const REG_BSP_OUT_BUF_WIDTH: u32 = 16;
pub const REG_BSP_OUT_BUF_COUNT: u32 = 1024;
/// VICE register `bsp_in_buf`: read/write, 16-bit, 1024 consecutive registers; reset unknown; inferred.
pub const REG_BSP_IN_BUF: u32 = 0x7800;
pub const REG_BSP_IN_BUF_WIDTH: u32 = 16;
pub const REG_BSP_IN_BUF_COUNT: u32 = 1024;
/// VICE register `data_ram_a`: read/write, 32-bit, 512 consecutive registers; reset unknown; inferred.
pub const REG_DATA_RAM_A: u32 = 0x8000;
pub const REG_DATA_RAM_A_WIDTH: u32 = 32;
pub const REG_DATA_RAM_A_COUNT: u32 = 512;
/// VICE register `data_ram_b`: read/write, 32-bit, 512 consecutive registers; reset unknown; inferred.
pub const REG_DATA_RAM_B: u32 = 0x8800;
pub const REG_DATA_RAM_B_WIDTH: u32 = 32;
pub const REG_DATA_RAM_B_COUNT: u32 = 512;
/// VICE register `data_ram_c`: read/write, 32-bit, 512 consecutive registers; reset unknown; inferred.
pub const REG_DATA_RAM_C: u32 = 0x9000;
pub const REG_DATA_RAM_C_WIDTH: u32 = 32;
pub const REG_DATA_RAM_C_COUNT: u32 = 512;
/// VICE register `tlb`: read/write, 32-bit; reset unknown; established.
pub const REG_TLB: u32 = 0xf000;
pub const REG_TLB_WIDTH: u32 = 32;
/// VICE register `id`: read, 8-bit; reset unknown; established.
pub const REG_ID: u32 = 0x0008;
pub const REG_ID_WIDTH: u32 = 8;
/// VICE register `cfg`: read/write, 16-bit; reset unknown; established.
pub const REG_CFG: u32 = 0xe000;
pub const REG_CFG_WIDTH: u32 = 16;
/// VICE register `int`: read, 16-bit; reset unknown; established.
pub const REG_INT: u32 = 0x0160;
pub const REG_INT_WIDTH: u32 = 16;
/// VICE register `int_reset`: write, 16-bit; reset unknown; established.
pub const REG_INT_RESET: u32 = 0xe008;
pub const REG_INT_RESET_WIDTH: u32 = 16;
/// VICE register `int_en`: read/write, 16-bit; reset unknown; established.
pub const REG_INT_EN: u32 = 0xe010;
pub const REG_INT_EN_WIDTH: u32 = 16;
/// VICE register `bsp_sw_int`: write, 32-bit; reset unknown; inferred.
pub const REG_BSP_SW_INT: u32 = 0x0080;
pub const REG_BSP_SW_INT_WIDTH: u32 = 32;
/// VICE register `msp_sw_int`: write, 32-bit; reset unknown; inferred.
pub const REG_MSP_SW_INT: u32 = 0x01b8;
pub const REG_MSP_SW_INT_WIDTH: u32 = 32;
/// VICE register `msp_ctl_stat`: read/write, 32-bit; reset unknown; established.
pub const REG_MSP_CTL_STAT: u32 = 0x0040;
pub const REG_MSP_CTL_STAT_WIDTH: u32 = 32;
/// VICE register `msp_excp_flag`: read/write, 32-bit; reset unknown; established.
pub const REG_MSP_EXCP_FLAG: u32 = 0x0048;
pub const REG_MSP_EXCP_FLAG_WIDTH: u32 = 32;
/// VICE register `msp_pc`: read/write, 32-bit; reset unknown; established.
pub const REG_MSP_PC: u32 = 0x0050;
pub const REG_MSP_PC_WIDTH: u32 = 32;
/// VICE register `msp_bad_addr`: read, 32-bit; reset unknown; established.
pub const REG_MSP_BAD_ADDR: u32 = 0x0058;
pub const REG_MSP_BAD_ADDR_WIDTH: u32 = 32;
/// VICE register `msp_watchpoint`: read/write, 32-bit; reset unknown; established.
pub const REG_MSP_WATCHPOINT: u32 = 0x0060;
pub const REG_MSP_WATCHPOINT_WIDTH: u32 = 32;
/// VICE register `msp_epc`: read, 32-bit; reset unknown; established.
pub const REG_MSP_EPC: u32 = 0x0068;
pub const REG_MSP_EPC_WIDTH: u32 = 32;
/// VICE register `msp_cause`: read, 32-bit; reset unknown; established.
pub const REG_MSP_CAUSE: u32 = 0x0070;
pub const REG_MSP_CAUSE_WIDTH: u32 = 32;
/// VICE register `msp_d_ram`: read/write, 32-bit; reset unknown; established.
pub const REG_MSP_D_RAM: u32 = 0x0100;
pub const REG_MSP_D_RAM_WIDTH: u32 = 32;
/// VICE register `msp_count`: read/write, 32-bit; reset unknown; established.
pub const REG_MSP_COUNT: u32 = 0x0108;
pub const REG_MSP_COUNT_WIDTH: u32 = 32;
/// VICE register `bsp_ctl_stat`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_CTL_STAT: u32 = 0x0110;
pub const REG_BSP_CTL_STAT_WIDTH: u32 = 16;
/// VICE register `bsp_watchpoint`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_WATCHPOINT: u32 = 0x0118;
pub const REG_BSP_WATCHPOINT_WIDTH: u32 = 16;
/// VICE register `bsp_in_count`: read, 32-bit; reset unknown; established.
pub const REG_BSP_IN_COUNT: u32 = 0x0120;
pub const REG_BSP_IN_COUNT_WIDTH: u32 = 32;
/// VICE register `bsp_out_count`: read, 32-bit; reset unknown; established.
pub const REG_BSP_OUT_COUNT: u32 = 0x0128;
pub const REG_BSP_OUT_COUNT_WIDTH: u32 = 32;
/// VICE register `bsp_pc`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_PC: u32 = 0x0140;
pub const REG_BSP_PC_WIDTH: u32 = 16;
/// VICE register `bsp_epc`: read, 16-bit; reset unknown; established.
pub const REG_BSP_EPC: u32 = 0x0148;
pub const REG_BSP_EPC_WIDTH: u32 = 16;
/// VICE register `bsp_halt_reset`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_HALT_RESET: u32 = 0x0150;
pub const REG_BSP_HALT_RESET_WIDTH: u32 = 16;
/// VICE register `bsp_cause`: read, 16-bit; reset unknown; established.
pub const REG_BSP_CAUSE: u32 = 0x0158;
pub const REG_BSP_CAUSE_WIDTH: u32 = 16;
/// VICE register `bsp_fifo_ctl_stat`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_FIFO_CTL_STAT: u32 = 0x0168;
pub const REG_BSP_FIFO_CTL_STAT_WIDTH: u32 = 16;
/// VICE register `bsp_avalid_bits`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_AVALID_BITS: u32 = 0x0170;
pub const REG_BSP_AVALID_BITS_WIDTH: u32 = 16;
/// VICE register `bsp_fvalid_bits`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_FVALID_BITS: u32 = 0x0178;
pub const REG_BSP_FVALID_BITS_WIDTH: u32 = 16;
/// VICE register `bsp_in_box`: read, 16-bit; reset unknown; established.
pub const REG_BSP_IN_BOX: u32 = 0x01f0;
pub const REG_BSP_IN_BOX_WIDTH: u32 = 16;
/// VICE register `bsp_out_box`: read/write, 16-bit; reset unknown; established.
pub const REG_BSP_OUT_BOX: u32 = 0x01f8;
pub const REG_BSP_OUT_BOX_WIDTH: u32 = 16;
/// VICE register `hst_bsp_in_box`: read, 16-bit; reset unknown; established.
pub const REG_HST_BSP_IN_BOX: u32 = 0x0028;
pub const REG_HST_BSP_IN_BOX_WIDTH: u32 = 16;
/// VICE register `hst_bsp_out_box`: read, 16-bit; reset unknown; established.
pub const REG_HST_BSP_OUT_BOX: u32 = 0x0030;
pub const REG_HST_BSP_OUT_BOX_WIDTH: u32 = 16;
/// VICE register `dma_ctl_ch1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_CTL_CH1: u32 = 0x0180;
pub const REG_DMA_CTL_CH1_WIDTH: u32 = 16;
/// VICE register `dma_stat_ch1`: read, 16-bit; reset unknown; established.
pub const REG_DMA_STAT_CH1: u32 = 0x0188;
pub const REG_DMA_STAT_CH1_WIDTH: u32 = 16;
/// VICE register `dma_data_ch1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_DATA_CH1: u32 = 0x0190;
pub const REG_DMA_DATA_CH1_WIDTH: u32 = 16;
/// VICE register `dma_mem_pt_ch1`: read, 32-bit; reset unknown; established.
pub const REG_DMA_MEM_PT_CH1: u32 = 0x0198;
pub const REG_DMA_MEM_PT_CH1_WIDTH: u32 = 32;
/// VICE register `dma_vice_pt_ch1`: read, 16-bit; reset unknown; established.
pub const REG_DMA_VICE_PT_CH1: u32 = 0x01a0;
pub const REG_DMA_VICE_PT_CH1_WIDTH: u32 = 16;
/// VICE register `dma_count_ch1`: read, 16-bit; reset unknown; established.
pub const REG_DMA_COUNT_CH1: u32 = 0x01a8;
pub const REG_DMA_COUNT_CH1_WIDTH: u32 = 16;
/// VICE register `dma_ctl_ch2`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_CTL_CH2: u32 = 0x01c0;
pub const REG_DMA_CTL_CH2_WIDTH: u32 = 16;
/// VICE register `dma_stat_ch2`: read, 16-bit; reset unknown; established.
pub const REG_DMA_STAT_CH2: u32 = 0x01c8;
pub const REG_DMA_STAT_CH2_WIDTH: u32 = 16;
/// VICE register `dma_data_ch2`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_DATA_CH2: u32 = 0x01d0;
pub const REG_DMA_DATA_CH2_WIDTH: u32 = 16;
/// VICE register `dma_mem_pt_ch2`: read, 32-bit; reset unknown; established.
pub const REG_DMA_MEM_PT_CH2: u32 = 0x01d8;
pub const REG_DMA_MEM_PT_CH2_WIDTH: u32 = 32;
/// VICE register `dma_vice_pt_ch2`: read, 16-bit; reset unknown; established.
pub const REG_DMA_VICE_PT_CH2: u32 = 0x01e0;
pub const REG_DMA_VICE_PT_CH2_WIDTH: u32 = 16;
/// VICE register `dma_count_ch2`: read, 16-bit; reset unknown; established.
pub const REG_DMA_COUNT_CH2: u32 = 0x01e8;
pub const REG_DMA_COUNT_CH2_WIDTH: u32 = 16;
/// VICE register `dma_ctl_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_CTL_CH1_D1: u32 = 0x1000;
pub const REG_DMA_CTL_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_smem_hi_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_SMEM_HI_CH1_D1: u32 = 0x1008;
pub const REG_DMA_SMEM_HI_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_smem_lo_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_SMEM_LO_CH1_D1: u32 = 0x1010;
pub const REG_DMA_SMEM_LO_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_width_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_WIDTH_CH1_D1: u32 = 0x1018;
pub const REG_DMA_WIDTH_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_stride_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_STRIDE_CH1_D1: u32 = 0x1020;
pub const REG_DMA_STRIDE_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_lines_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_LINES_CH1_D1: u32 = 0x1028;
pub const REG_DMA_LINES_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_vmem_y_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_VMEM_Y_CH1_D1: u32 = 0x1030;
pub const REG_DMA_VMEM_Y_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_vmem_c_ch1_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_VMEM_C_CH1_D1: u32 = 0x1038;
pub const REG_DMA_VMEM_C_CH1_D1_WIDTH: u32 = 16;
/// VICE register `dma_ctl_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_CTL_CH2_D1: u32 = 0x1100;
pub const REG_DMA_CTL_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_smem_hi_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_SMEM_HI_CH2_D1: u32 = 0x1108;
pub const REG_DMA_SMEM_HI_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_smem_lo_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_SMEM_LO_CH2_D1: u32 = 0x1110;
pub const REG_DMA_SMEM_LO_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_width_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_WIDTH_CH2_D1: u32 = 0x1118;
pub const REG_DMA_WIDTH_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_stride_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_STRIDE_CH2_D1: u32 = 0x1120;
pub const REG_DMA_STRIDE_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_lines_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_LINES_CH2_D1: u32 = 0x1128;
pub const REG_DMA_LINES_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_vmem_y_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_VMEM_Y_CH2_D1: u32 = 0x1130;
pub const REG_DMA_VMEM_Y_CH2_D1_WIDTH: u32 = 16;
/// VICE register `dma_vmem_c_ch2_d1`: read/write, 16-bit; reset unknown; established.
pub const REG_DMA_VMEM_C_CH2_D1: u32 = 0x1138;
pub const REG_DMA_VMEM_C_CH2_D1_WIDTH: u32 = 16;

/// Values of `code` in `MspCause` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MspCauseCode {
    /// established.
    Adel,
    /// established.
    Ades,
    /// established.
    Bp,
    /// established.
    Wp,
    /// established.
    Suri,
    /// established.
    Vuri,
    /// established.
    Con,
    /// established.
    Adei,
    /// A value the notes do not name.
    Other(u8),
}

impl MspCauseCode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Adel,
            0x1 => Self::Ades,
            0x2 => Self::Bp,
            0x3 => Self::Wp,
            0x4 => Self::Suri,
            0x5 => Self::Vuri,
            0x6 => Self::Con,
            0x7 => Self::Adei,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Adel => 0x0,
            Self::Ades => 0x1,
            Self::Bp => 0x2,
            Self::Wp => 0x3,
            Self::Suri => 0x4,
            Self::Vuri => 0x5,
            Self::Con => 0x6,
            Self::Adei => 0x7,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `TLB_ENTRY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TlbEntry(u32);

impl TlbEntry {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn valid(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn writable(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bits 31:16, established.
    pub const fn page(self) -> u32 {
        self.0 >> 16
    }
}

/// The `cfg` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Cfg(u32);

impl Cfg {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn check_data(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn msp_tlb_bypass(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }
}

/// The `CAUSE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Cause(u32);

impl Cause {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn dma1_done(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn dma1_error(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn msp_sw(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn msp_exception(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn bsp_sw(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn bsp_exception(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn bad_data(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn dma2_done(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn dma2_error(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }
}

/// The `msp_ctl_stat` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MspCtlStat(u32);

impl MspCtlStat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn go(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn reset_release(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }
}

/// The `msp_pc` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MspPc(u32);

impl MspPc {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:2, established.
    pub const fn pc(self) -> u32 {
        (self.0 >> 2) & 0x3fff
    }
}

/// The `msp_epc` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MspEpc(u32);

impl MspEpc {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:2, established.
    pub const fn pc(self) -> u32 {
        (self.0 >> 2) & 0x3fff
    }
}

/// The `msp_cause` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MspCause(u32);

impl MspCause {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:2, established.
    pub const fn code(self) -> MspCauseCode {
        MspCauseCode::from_bits((self.0 >> 2) & 0x1f)
    }

    /// Bit 31, established.
    pub const fn branch_delay(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// The `msp_d_ram` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MspDRam(u32);

impl MspDRam {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn bank_a(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn bank_b(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn bank_c(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }
}

/// The `bsp_ctl_stat` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BspCtlStat(u32);

impl BspCtlStat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:12, established.
    pub const fn flags(self) -> u32 {
        (self.0 >> 12) & 0xf
    }

    /// Bits 11:9, established.
    pub const fn ext(self) -> u32 {
        (self.0 >> 9) & 0x7
    }
}

/// The `bsp_fifo_ctl_stat` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BspFifoCtlStat(u32);

impl BspFifoCtlStat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn in_empty(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn in_full(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn in_reset(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn msp_signal(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn bsp_signal(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `bsp_avalid_bits` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BspAvalidBits(u32);

impl BspAvalidBits {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:0, established.
    pub const fn pointer(self) -> u32 {
        self.0 & 0x3f
    }
}

/// The `bsp_fvalid_bits` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BspFvalidBits(u32);

impl BspFvalidBits {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:0, established.
    pub const fn pointer(self) -> u32 {
        self.0 & 0x3f
    }
}

/// The `MBOX` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Mbox(u32);

impl Mbox {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 14:0, established.
    pub const fn message(self) -> u32 {
        self.0 & 0x7fff
    }

    /// Bit 15, established.
    pub const fn signal(self) -> bool {
        (self.0 >> 15) & 1 != 0
    }
}

/// The `DMACTL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dmactl(u32);

impl Dmactl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn go(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn ie(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn stop(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn reset(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bits 7:4, established.
    pub const fn descr_pt(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bit 8, established.
    pub const fn tlb_bypass(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn flush_buf(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }
}

/// The `DMASTAT` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dmastat(u32);

impl Dmastat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn done(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn error(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn active(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn rw(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bits 7:4, established.
    pub const fn descr_pt(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bits 11:8, established.
    pub const fn code(self) -> u32 {
        (self.0 >> 8) & 0xf
    }
}
