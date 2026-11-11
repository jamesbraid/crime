// generated from o2gfx f96d74030387 CRIME_DECODE.h - do not edit, regenerate in o2gfx
//!
//! CRIME memory controller and CPU-interface registers,
//! and the interrupt input bit positions.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established: family nibble of every shipped part, revision nibble 1-15.
pub const ID_FAMILY_SHIPPED: u32 = 160;
/// established: the only low byte accepted for graphics.
pub const ID_LOW_BYTE_SHIPPED: u32 = 161;
/// inferred: draft specification 1.5 value, never seen on shipped parts.
pub const ID_LOW_BYTE_DRAFT: u32 = 177;
/// established: memory bank control registers.
pub const MEM_BANKS: u32 = 8;
/// established.
pub const WATCHDOG_COUNT_BITS: u32 = 20;
/// established: first 256 MiB, so KSEG0 needs no TLB entry.
pub const PHYS_LOW_ALIAS_BASE: u32 = 0;
/// established.
pub const PHYS_LOW_ALIAS_BYTES: u32 = 0x10000000;
/// established as a window; its responder is open in the specification.
pub const PHYS_HIGH_ALIAS_BASE: u32 = 0x20000000;
/// established: 512 MiB; inferred to be the upper half of the full window.
pub const PHYS_HIGH_ALIAS_BYTES: u32 = 0x20000000;
/// established: all memory, up to 1 GiB; the only memory window GBE and (with the no-ECC alias) VICE see.
pub const PHYS_FULL_MEM_BASE: u32 = 0x40000000;
/// established.
pub const PHYS_FULL_MEM_BYTES: u32 = 0x40000000;
/// established: skips ECC check and correction on reads and writes; ECC is still generated on writes.
pub const PHYS_NOECC_MEM_BASE: u32 = 0x80000000;
/// established.
pub const PHYS_NOECC_MEM_BYTES: u32 = 0x40000000;
/// established: reset of bank 0.
pub const MEM_BANK_CONTROL_RESET_BASE: u32 = 0;
/// established: reset of bank n is BASE + n * STEP.
pub const MEM_BANK_CONTROL_RESET_STEP: u32 = 1;

/// CRIME CPU-interface register `id`: read, 64-bit; reset unknown; established.
pub const REG_ID: u32 = 0x0000;
pub const REG_ID_WIDTH: u32 = 64;
/// CRIME CPU-interface register `control`: read/write, 64-bit; reset 0x0; established.
pub const REG_CONTROL: u32 = 0x0008;
pub const REG_CONTROL_WIDTH: u32 = 64;
/// CRIME CPU-interface register `intstat`: read, 64-bit; reset unknown; established.
pub const REG_INTSTAT: u32 = 0x0010;
pub const REG_INTSTAT_WIDTH: u32 = 64;
/// CRIME CPU-interface register `intmask`: read/write, 64-bit; reset 0x0; established.
pub const REG_INTMASK: u32 = 0x0018;
pub const REG_INTMASK_WIDTH: u32 = 64;
/// CRIME CPU-interface register `softint`: read/write, 64-bit; reset 0x0; established.
pub const REG_SOFTINT: u32 = 0x0020;
pub const REG_SOFTINT_WIDTH: u32 = 64;
/// CRIME CPU-interface register `hardint`: read/write, 64-bit; reset unknown; established.
pub const REG_HARDINT: u32 = 0x0028;
pub const REG_HARDINT_WIDTH: u32 = 64;
/// CRIME CPU-interface register `watchdog`: read/write, 64-bit; reset 0x0; established.
pub const REG_WATCHDOG: u32 = 0x0030;
pub const REG_WATCHDOG_WIDTH: u32 = 64;
/// CRIME CPU-interface register `cpu_error_addr`: read, 64-bit; reset unknown; established.
pub const REG_CPU_ERROR_ADDR: u32 = 0x0040;
pub const REG_CPU_ERROR_ADDR_WIDTH: u32 = 64;
/// CRIME CPU-interface register `cpu_error_stat`: read/write, 64-bit; reset 0x0; established.
pub const REG_CPU_ERROR_STAT: u32 = 0x0048;
pub const REG_CPU_ERROR_STAT_WIDTH: u32 = 64;
/// CRIME CPU-interface register `cpu_error_ena`: read/write, 64-bit; reset unknown; inferred.
pub const REG_CPU_ERROR_ENA: u32 = 0x0050;
pub const REG_CPU_ERROR_ENA_WIDTH: u32 = 64;
/// CRIME CPU-interface register `vice_error_addr`: read, 64-bit; reset unknown; established.
pub const REG_VICE_ERROR_ADDR: u32 = 0x0058;
pub const REG_VICE_ERROR_ADDR_WIDTH: u32 = 64;
/// CRIME CPU-interface register `cpu_error_stat_15`: read/write, 64-bit; reset 0x0; inferred.
pub const REG_CPU_ERROR_STAT_15: u32 = 0x4048;
pub const REG_CPU_ERROR_STAT_15_WIDTH: u32 = 64;
/// CRIME CPU-interface register `mem_control`: read/write, 64-bit; reset 0x0; established.
pub const REG_MEM_CONTROL: u32 = 0x0200;
pub const REG_MEM_CONTROL_WIDTH: u32 = 64;
/// CRIME CPU-interface register `mem_bank_control`: read/write, 64-bit, 8 consecutive registers; reset unknown; established.
pub const REG_MEM_BANK_CONTROL: u32 = 0x0208;
pub const REG_MEM_BANK_CONTROL_WIDTH: u32 = 64;
pub const REG_MEM_BANK_CONTROL_COUNT: u32 = 8;
/// CRIME CPU-interface register `mem_error_stat`: read/write, 64-bit; reset unknown; established.
pub const REG_MEM_ERROR_STAT: u32 = 0x0250;
pub const REG_MEM_ERROR_STAT_WIDTH: u32 = 64;
/// CRIME CPU-interface register `mem_error_addr`: read, 64-bit; reset unknown; established.
pub const REG_MEM_ERROR_ADDR: u32 = 0x0258;
pub const REG_MEM_ERROR_ADDR_WIDTH: u32 = 64;
/// CRIME CPU-interface register `mem_error_ecc_syn`: read, 64-bit; reset unknown; established.
pub const REG_MEM_ERROR_ECC_SYN: u32 = 0x0260;
pub const REG_MEM_ERROR_ECC_SYN_WIDTH: u32 = 64;
/// CRIME CPU-interface register `mem_error_ecc_chk`: read, 64-bit; reset unknown; established.
pub const REG_MEM_ERROR_ECC_CHK: u32 = 0x0268;
pub const REG_MEM_ERROR_ECC_CHK_WIDTH: u32 = 64;
/// CRIME CPU-interface register `mem_error_ecc_repl`: read/write, 64-bit; reset unknown; established.
pub const REG_MEM_ERROR_ECC_REPL: u32 = 0x0270;
pub const REG_MEM_ERROR_ECC_REPL_WIDTH: u32 = 64;

/// The `id` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Id(u32);

impl Id {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn rev(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 7:4, established.
    pub const fn family(self) -> u32 {
        (self.0 >> 4) & 0xf
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

    /// Bit 8, established.
    pub const fn endian(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn watchdog_enable(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn soft_reset(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn cold_reset(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }

    /// Bit 12, established.
    pub const fn sysadc_check_enable(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn sysadc_gen_enable(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }
}

/// The `INTBIT` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Intbit(u32);

impl Intbit {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn mace(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bit 16, established.
    pub const fn gbe0(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }

    /// Bit 17, established.
    pub const fn gbe1(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, established.
    pub const fn gbe2(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bit 19, established.
    pub const fn gbe3(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }

    /// Bit 20, established.
    pub const fn cpu_error(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }

    /// Bit 21, established.
    pub const fn mem_error(self) -> bool {
        (self.0 >> 21) & 1 != 0
    }

    /// Bit 22, established.
    pub const fn re_empty_edge(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 23, established.
    pub const fn re_full_edge(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }

    /// Bit 24, established.
    pub const fn re_idle_edge(self) -> bool {
        (self.0 >> 24) & 1 != 0
    }

    /// Bit 25, established.
    pub const fn re_empty(self) -> bool {
        (self.0 >> 25) & 1 != 0
    }

    /// Bit 26, established.
    pub const fn re_full(self) -> bool {
        (self.0 >> 26) & 1 != 0
    }

    /// Bit 27, established.
    pub const fn re_idle(self) -> bool {
        (self.0 >> 27) & 1 != 0
    }

    /// Bit 28, established.
    pub const fn soft0(self) -> bool {
        (self.0 >> 28) & 1 != 0
    }

    /// Bit 29, established.
    pub const fn soft1(self) -> bool {
        (self.0 >> 29) & 1 != 0
    }

    /// Bit 30, established.
    pub const fn syscorerr(self) -> bool {
        (self.0 >> 30) & 1 != 0
    }

    /// Bit 31, established.
    pub const fn vice(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// The `watchdog` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Watchdog(u32);

impl Watchdog {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 19:0, established.
    pub const fn count(self) -> u32 {
        self.0 & 0xfffff
    }

    /// Bit 20, established.
    pub const fn warm_reset_timeout(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }
}

/// The `cpu_error_stat` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CpuErrorStat(u32);

impl CpuErrorStat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn cpu_write_parity(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn vice_write_parity(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn illegal_addr(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }
}

/// The `mem_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MemControl(u32);

impl MemControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn ecc_enable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn use_repl_check(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }
}

/// The `mem_bank_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MemBankControl(u32);

impl MemBankControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 8, established.
    pub const fn sdram_geometry(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bits 4:0, established.
    pub const fn base_match(self) -> u32 {
        self.0 & 0x1f
    }
}

/// The `mem_error_stat` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MemErrorStat(u32);

impl MemErrorStat {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, established.
    pub const fn mace_id(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bit 7, established.
    pub const fn mace_access(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bits 14:8, established.
    pub const fn re_id(self) -> u32 {
        (self.0 >> 8) & 0x7f
    }

    /// Bit 15, established.
    pub const fn re_access(self) -> bool {
        (self.0 >> 15) & 1 != 0
    }

    /// Bit 16, established.
    pub const fn gbe_access(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }

    /// Bit 17, established.
    pub const fn vice_access(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, established.
    pub const fn cpu_access(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bit 20, established.
    pub const fn soft_error(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }

    /// Bit 21, established.
    pub const fn hard_error(self) -> bool {
        (self.0 >> 21) & 1 != 0
    }

    /// Bit 22, established.
    pub const fn multiple_errors(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 23, established.
    pub const fn ecc_error_read(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }

    /// Bit 24, established.
    pub const fn ecc_error_rmw(self) -> bool {
        (self.0 >> 24) & 1 != 0
    }

    /// Bit 25, established.
    pub const fn invalid_addr_read(self) -> bool {
        (self.0 >> 25) & 1 != 0
    }

    /// Bit 26, established.
    pub const fn invalid_addr_write(self) -> bool {
        (self.0 >> 26) & 1 != 0
    }

    /// Bit 27, established.
    pub const fn invalid_addr_rmw(self) -> bool {
        (self.0 >> 27) & 1 != 0
    }
}

/// The `mem_error_ecc_repl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MemErrorEccRepl(u32);

impl MemErrorEccRepl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, established.
    pub const fn check(self) -> u32 {
        self.0 & 0xff
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_crime_id_a1() {
        let w = Id::new(0xa1);
        assert_eq!(w.family(), 10, "family");
        assert_eq!(w.rev(), 1, "rev");
    }

    #[test]
    fn testvec_crime_control_2200() {
        let w = Control::new(0x2200);
        assert_eq!(w.sysadc_gen_enable() as u32, 1, "sysadc_gen_enable");
        assert_eq!(w.sysadc_check_enable() as u32, 0, "sysadc_check_enable");
        assert_eq!(w.watchdog_enable() as u32, 1, "watchdog_enable");
    }

    #[test]
    fn testvec_intbit_10000() {
        let w = Intbit::new(0x10000);
        assert_eq!(w.gbe0() as u32, 1, "gbe0");
        assert_eq!(w.gbe1() as u32, 0, "gbe1");
        assert_eq!(w.mace(), 0, "mace");
    }

    #[test]
    fn testvec_intbit_4000000() {
        let w = Intbit::new(0x4000000);
        assert_eq!(w.re_full() as u32, 1, "re_full");
        assert_eq!(w.re_empty() as u32, 0, "re_empty");
    }

    #[test]
    fn testvec_crime_cpu_error_stat_4() {
        let w = CpuErrorStat::new(0x4);
        assert_eq!(w.illegal_addr() as u32, 1, "illegal_addr");
        assert_eq!(w.cpu_write_parity() as u32, 0, "cpu_write_parity");
    }
}
