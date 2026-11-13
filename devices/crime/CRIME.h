/*
 * CRIME.h - SGI O2 (IP32) CRIME: CPU interface, ID, interrupts as graphics
 * uses them.
 *
 * Labels: [E] established, [I] inferred, [U] unknown.
 * Sources:
 *   [spec]    CRIME 1.5 Specification rev 0.3, 2 June 1997 (PDF page numbers).
 *   [netbsd]  references/code/netbsd/sys/arch/sgimips/dev/crimereg.h, crime.c.
 *   [linux]   references/code/linux/arch/mips/sgi-ip32/ip32-irq.c, crime.c,
 *             arch/mips/include/asm/ip32/crime.h.
 *   [ide:ADDR] the shipped IRIX 6.5.30 stand-alone diagnostics
 *             sbin/stand/ide.IP32 (diags/ide.IP32), stripped; ADDR is the
 *             virtual address in its objdump listing.
 *   [k:FILE:FUNC+OFF] IRIX 6.5.30 IP32boot crime.a member FILE, function and
 *             byte offset in the relocated objdump listing (the m2c-ready copy
 *             is crime_kernel/disasm/FILE/FILE.text.s).
 * All registers here are 64-bit and take doubleword accesses only [E, spec
 * PDF 113-115]. The kernel reaches them through KSEG1 at 0xB4000000.
 */
#ifndef CRIME_H
#define CRIME_H

/* ---- Address map --------------------------------------------------------- */

#define CRIME_PHYS_BASE         0x14000000u /* [E, spec PDF 47-52] */
#define CRIME_RE_PHYS_BASE      0x15000000u /* rendering engine, see CRIME_RE.h [E, spec PDF 163] */
#define CRIME_GBE_PHYS_BASE     0x16000000u /* see GBE.h [E, spec PDF 47-52] */
#define CRIME_FB_APERTURE       0x10000000u /* [E, spec] */
#define CRIME_Z_APERTURE        0x12000000u /* [E, spec] */

/* ---- ID register (+0x00) ------------------------------------------------- */

#define CRIME_ID                0x000
#define   CRIME_ID_FAMILY_MASK  0xf0        /* [E, netbsd CRIME_ID_IDBITS] */
#define   CRIME_ID_REV_MASK     0x0f        /* [E, netbsd CRIME_ID_REV] */

/*
 * Accepted IDs. crimeProbe reads the low byte of +0x00 and returns "present"
 * only when (id & 0xf0) == 0xa0 and id != 0xa0 [E, k:crime_init:crimeProbe+0x0].
 * The 6.5.30 kernel therefore attaches graphics to family 0xA, revision 1-15,
 * and refuses both the first family-A part (0xa0) and any family-B part.
 * crimeInitInfo stores (id & 0xf) as the board revision, adding one when
 * bit 0 of a per-board word at +0x400 of its first argument is set
 * [E, k:crime_init:crimeInitInfo+0x0]. That word is the rendering engine's
 * +0x400 (0x15000400; IB_CTL when written). The diagnostics read bit 0 of
 * 0xb5000400 as the rendering-engine revision: when the ID's low word reads
 * 0xa1 they name the graphics "SGI-CRM, Rev B" if the bit is 0 and
 * "SGI-CRM, Rev C" if it is 1 [E, ide:0xa010c7b0..0xa010c8bc, strings at
 * 0xa021a4b8 and 0xa021a4c8; the same strings are in the shipped
 * ip32prom.image]. The same bit steers their choice of a monitor mode from
 * the EDID [E, ide:0xa00e2c84..0xa00e2d10]. So the kernel's board revision
 * is 1 on Rev B and 2 on Rev C.
 *
 * Shipped IDs:
 *   low word 0xa0                the diagnostics record no graphics and
 *                                stop [E, ide:0xa010c7b8..0xa010c7d0]; the
 *                                kernel refuses it (above) and decodes its
 *                                errors with the revision-0 decoder
 *   low word 0xa1                the only value the diagnostics accept for
 *                                graphics [E, ide:0xa010c7d4,
 *                                ide:0xa00e4514..0xa00e451c]
 *   upper word 0, 1, other       1.1, 1.3, 1.4 [E, netbsd crime_attach;
 *                                k:kernel:get_crimerev branches the same way]
 * So every O2 that runs IRIX 6.5.30 graphics reads 0xa1 in the low byte;
 * no IRIX 6.5.30 code read here accepts the draft specification's 1.5
 * value 0xb1 [spec PDF 113-119] [E as an absence in kernel.o, crime.a and
 * ide.IP32; whether any 1.5 part was made is U, and no shipped software
 * depends on it].
 */
#define CRIME_ID_FAMILY_SHIPPED 0xa0        /* [E, kernel probe, ide] */
#define CRIME_ID_SHIPPED        0xa1        /* low byte of 1.1, 1.3, 1.4 [E, ide:0xa010c7d4] */
#define CRIME_RE_REV_ADDR       0x15000400u /* read bit 0: 0 Rev B, 1 Rev C [E, ide:0xa010c834] */
#define CRIME_ID_REJECTED_EARLY 0xa0        /* [E] refused by crimeProbe */

/* ---- Interrupt registers ------------------------------------------------- */

#define CRIME_INTSTAT           0x010       /* [E, netbsd]; read by crimeFifoFullHandler+0x34 [E] */
#define CRIME_INTMASK           0x018       /* [E, netbsd] */
#define CRIME_SOFTINT           0x020       /* [E, netbsd] */
#define CRIME_HARDINT           0x028       /* [E, netbsd] */
/*
 * The retrace handler clears bit 16 and the preblank handler bit 17 of
 * +0x028 with a read-modify-write before servicing GBE [E,
 * k:crime_retrace:crimeRetraceHandler+0x38, crimePreblankHandler+0x1c].
 * Established [spec PDF 116-118, tables 5-10 and 5-13]: +0x028 is the
 * hardware interrupt register. Its edge-sensitive bits are read/write and
 * software clears a latched edge by writing the bit to 0: bit 30 (CPU
 * SysCorErr), 24 to 22 (rendering idle, full, empty, edge forms), 19 to 16
 * (GBE). Bits 27 to 25 (level forms), 21 and 20 (memory and CPU-interface
 * errors), 31 (VICE) and 15 to 0 (MACE) are read-only there and follow
 * their source. INTSTAT (+0x010) is read-only. CRIME interrupts the CPU on
 * any change of an enabled bit, assertion or deassertion [spec PDF 106].
 * Every IRIX writer clears bits there with a read-modify-write
 * [E, k:crime_retrace; k:crime_retrace:crime_hli_handler].
 * No source reads the register to clear it: clearing is by write only
 * [E as the software's use; nothing suggests read-to-clear].
 * IRIX's start-up writes 0 to INTSTAT after INTMASK [E, k:kernel:mlreset];
 * by the specification that write has no effect [I].
 */

/*
 * Interrupt input numbers (bit positions in INTSTAT/INTMASK).
 * Vector registration in crime_init [E, k:crime:crime_init+0x248..0x2e4]:
 *   16  crimeRetraceHandler      (GBE line 0)
 *   17  crimePreblankHandler     (GBE line 1)
 *   18, 19 crimeInterrupt -> crime_hli_handler with line - 16 (GBE lines 2, 3)
 *   25  crimeFifoEmptyHandler    (rendering FIFO at or below the empty level)
 *   26  crimeFifoFullHandler     (rendering FIFO at or above the full level)
 * crmFifoWait enables input 25 itself before sleeping [E,
 * k:crime:crmFifoWait+0x19c]. [linux] names 22-24 the edge forms and 25-27
 * the level forms of empty, full and idle; IRIX graphics uses only the level
 * forms 25 and 26 [E for IRIX use]. The edge/level split and the input
 * numbers 20 to 31 are established by the specification's assignment table
 * [spec PDF 106-107, table 5-5], which agrees with linux and netbsd:
 * 20 CPU-interface error, 21 memory error,
 * 22/23/24 rendering empty/full/idle edge, 25/26/27 the same as levels,
 * 28/29 software, 30 CPU SysCorErr, 31 VICE. Only the specification's
 * prose about the memory-error interrupt (PDF 109) disagrees; the table
 * and both public drivers outvote it.
 */
#define CRIME_INT_GBE0          16          /* [E] */
#define CRIME_INT_GBE1          17          /* [E] */
#define CRIME_INT_GBE2          18          /* [E] */
#define CRIME_INT_GBE3          19          /* [E] */
#define CRIME_INT_CPUERR        20          /* [E, spec table 5-5; netbsd; linux] */
#define CRIME_INT_MEMERR        21          /* [E, same]; only the spec prose (PDF 109) disagrees */
#define CRIME_INT_RE_EMPTY_EDGE 22          /* [E, spec table 5-5] */
#define CRIME_INT_RE_FULL_EDGE  23          /* [E, spec table 5-5] */
#define CRIME_INT_RE_IDLE_EDGE  24          /* [E, spec table 5-5] */
#define CRIME_INT_RE_EMPTY      25          /* [E] IRIX vector */
#define CRIME_INT_RE_FULL       26          /* [E] IRIX vector */
#define CRIME_INT_RE_IDLE       27          /* [E, spec table 5-5]; no IRIX graphics object unmasks 24 or 27 */
#define CRIME_INT_SYSCORERR     30          /* [E, spec table 5-5; linux] */
#define CRIME_INT_VICE          31          /* [E, netbsd; spec PDF 109, section 5.7.2: a registered copy of
                                                the VICE interrupt pin, read-only] */
/*
 * Inputs 15 to 0 are routed from MACE [E, spec PDF 107-108, table 5-5]; the
 * MACE video channels are the first three. All sixteen are read-only in the
 * hardware interrupt register. IRIX registers only the MACE ISA and
 * miscellaneous inputs (devices/re/memory.md); the video numbers below are from the
 * specification and agree with netbsd's grouping, no IRIX object in scope
 * names them.
 */
#define CRIME_INT_MACE_VID_IN1  0           /* [E, spec table 5-5] video input channel 1 */
#define CRIME_INT_MACE_VID_IN2  1           /* [E, spec table 5-5] video input channel 2 */
#define CRIME_INT_MACE_VID_OUT  2           /* [E, spec table 5-5] video output channel */
#define CRIME_INT_MACE_ETHERNET 3           /* [E, spec table 5-5] */
#define CRIME_INT_MACE_SERIAL   4           /* [E, spec table 5-5] peripheral controller, serial and parallel */
#define CRIME_INT_MACE_MISC     5           /* [E, spec table 5-5] peripheral controller, keyboard, mouse, timer */
#define CRIME_INT_MACE_AUDIO    6           /* [E, spec table 5-5] peripheral controller, audio */
#define CRIME_INT_MACE_PCI_BRIDGE 7         /* [E, spec table 5-5] PCI error conditions */
/*
 * Error interrupts in IRIX 6.5.30 [E, k:kernel:mlreset+0x100..0x124]:
 * mlreset installs the same handler, buserror_intr, on input 21 and on
 * input 20, both at the same priority (3). Its capture routine reads every
 * CRIME error register and decides from their contents, not from the input
 * number [E, kernel.o static routine at 0xff08, called from dobuserr]:
 *   reads  +0x048 CPU error status, +0x040 CPU error address,
 *          +0x058 VICE error address, +0x250 memory error status,
 *          +0x258 memory error address, +0x260, +0x268 (ECC syndrome and
 *          check bits per netbsd names)
 *   clears +0x048 and +0x250 by writing zero
 * kernel.o also carries separate decoders print_buserr_rev0 and
 * print_buserr_rev1; rev0 serves the revision-0 part and rev1 every later
 * one (devices/re/memory.md). Bit meanings:
 *   CPU error status, revision 1 and later (3 bits) [E, spec PDF 118
 *     table 5-17; linux crime.h]: 2 CPU illegal address, 1 VICE write
 *     parity, 0 CPU write parity; software clears them by writing. The
 *     two parity bits are fed by the SysAD check bits SysADC(7:0) [spec].
 *   CPU error status, revision 0: 10 bits, with an enable register at
 *     +0x050 that later parts lack. mlreset writes 0x3ff to +0x050 only
 *     when the revision code is 0 [E, k:kernel:mlreset, the store after
 *     get_crimerev returns 0], and print_buserr_rev0 tests bits 0 to 9.
 *     The meaning of each bit is unknown: no shipped software or
 *     published source depends on it (the decoder's messages are in data
 *     the listing does not resolve; routes: kernel.o, crime_busts.o,
 *     the specification, linux, netbsd). No IRIX 6.5.30 graphics attaches
 *     to a revision-0 part.
 *   Memory error status (+0x250, 28 bits) [E, linux crime.h; spec
 *     chapter 6]: 6:0 MACE requester id, 7 MACE
 *     access, 14:8 rendering-engine requester id, 15 rendering access,
 *     16 GBE access, 17 VICE access, 18 CPU access, 19 reserved, 20 soft
 *     (correctable) error, 21 hard error, 22 multiple errors, 23 ECC error
 *     on a read, 24 ECC error on a read-modify-write, 25/26/27 invalid
 *     address on a read, write or read-modify-write.
 * IRIX installs one handler on both inputs and decides from the status
 * registers, so it would also cope with a model that swapped them; the
 * hardware assignment is the one above.
 *
 * IRIX reads the CPU error status at +0x048, never at the 1.5 draft's
 * +0x4048 [E, no access to +0x4048 anywhere in kernel.o]. That agrees with
 * the ID probe: the shipped part behaves like the pre-1.5 layout [I].
 */

/*
 * Other inputs IRIX registers [E, k:kernel:mlreset, mace:setmaceisavector]:
 * 4 or 5 MACE ISA/misc (caller's choice), 28 and 29 (priority 1 and 2,
 * the software interrupts, from the netbsd names; the dispatcher forces SOFTINT bits 28
 * and 29 under two kernel flags). All other inputs are never registered.
 * CONTROL (+0x08) at boot: bits 13:12 and 9 cleared for CPU implementation
 * < 0x23, else bit 9 cleared and 13:12 set [E]. Fields [E, spec PDF
 * 114-115, table 5-9; names agree with netbsd]: bit 13 enables parity
 * (SysADC check-bit) generation from CRIME to an R5000-class CPU, bit 12
 * enables CRIME's check of SysADC on incoming data cycles; both reset 0
 * and are unused on CRIME 1.5. So IRIX turns SysAD parity on for R5000-
 * class modules and leaves it off for R10000-family ones. Bit 11 cold
 * reset and bit 10 soft reset (set by software or the watchdog, cleared by
 * hardware), bit 9 watchdog enable (reset 0), bit 8 endianness (read only).
 * Bits 7:0 differ by revision: the 1.5 draft has a coherent-load filter in
 * 7:5 (reset 001), while netbsd and linux name 7:4 and 3:0 as
 * write-buffer and command-queue high-water marks (netbsd, linux names).
 * Watchdog (+0x030) [spec table 5-14]: bit 20 warm-reset time-out flag,
 * 19:0 count, both reset 0. See devices/re/memory.md.
 */
#define CRIME_CONTROL           0x008       /* [E, k:kernel:mlreset] */
#define CRIME_INT_MACE_A        4           /* [E] */
#define CRIME_INT_MACE_B        5           /* [E] */
#define CRIME_INT_SOFT0         28          /* [E vector; netbsd name] */
#define CRIME_INT_SOFT1         29          /* [E vector; netbsd name] */

#define CRIME_CPU_ERROR_ADDR    0x040       /* [E, kernel.o] */
#define CRIME_CPU_ERROR_STAT    0x048       /* [E, kernel.o] used by IRIX, linux, netbsd */
#define CRIME_CPU_ERROR_ENA     0x050       /* revision 0 only: written 0x3ff [E, k:kernel:mlreset] */
#define CRIME_VICE_ERROR_ADDR   0x058       /* [E, kernel.o; name netbsd] */
#define CRIME_MEM_ERROR_STAT    0x250       /* [E, kernel.o] */
#define CRIME_MEM_ERROR_ADDR    0x258       /* [E, kernel.o] */
#define CRIME_MEM_ERROR_ECC_SYN 0x260       /* [E read; name netbsd] */
#define CRIME_MEM_ERROR_ECC_CHK 0x268       /* [E read; name netbsd] */
#define CRIME_MEM_ERROR_ECC_REPL 0x270      /* bits 7:0, replicated four times as the check bits written when MEM_CONTROL bit 1 is set [E, spec PDF 145, 151 table 6-20]; read by symmon.IP32's exception path [E, inventory] */
#define CRIME_MEM_CONTROL       0x200       /* bit 0 ECC enable, bit 1 use +0x270 as check bits; both reset 0 [E, spec table 6-13] */
#define CRIME_CPU_ERROR_STAT_15 0x4048      /* 1.5 draft offset [E, spec PDF 49]; unused by IRIX */

#endif /* CRIME_H */
