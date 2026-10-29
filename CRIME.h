/*
 * CRIME.h - SGI O2 (IP32) CRIME: CPU interface, ID, interrupts as graphics
 * uses them.
 *
 * Labels: [E] established, [I] inferred, [U] unknown.
 * Sources:
 *   [spec]    CRIME 1.5 Specification rev 0.3, 2 June 1997 (PDF page numbers).
 *   [netbsd]  netbsd/sys/arch/sgimips/dev/crimereg.h, crime.c.
 *   [linux]   linux/arch/mips/sgi-ip32/ip32-irq.c, crime.c,
 *             arch/mips/include/asm/ip32/crime.h.
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
 * [E, k:crime_init:crimeInitInfo+0x0; meaning of that bit U].
 *
 * Inferred: the silicon in shipping O2s reads family 0xA. The draft
 * specification's 1.5 value 0xb1 [spec PDF 113-119] would fail this probe,
 * so if any 1.5 part shipped, IRIX 6.5.30 could not drive its graphics.
 * NetBSD names family 0xA "1.1", "1.3" or "1.4" by the upper 32 bits of the
 * register and family 0xB "1.5" [netbsd crime.c crime_attach]; this
 * repository has no capture showing which value a given O2 returns [U].
 */
#define CRIME_ID_FAMILY_SHIPPED 0xa0        /* [I] */
#define CRIME_ID_REJECTED_EARLY 0xa0        /* [E] refused by crimeProbe */

/* ---- Interrupt registers ------------------------------------------------- */

#define CRIME_INTSTAT           0x010       /* [E, netbsd]; read by crimeFifoFullHandler+0x34 [E] */
#define CRIME_INTMASK           0x018       /* [E, netbsd] */
#define CRIME_SOFTINT           0x020       /* [E, netbsd] */
#define CRIME_HARDINT           0x028       /* [E, netbsd] */
/*
 * The retrace handler clears bit 16 and the preblank handler bit 17 of
 * +0x028 with a read-modify-write before servicing GBE [E,
 * k:crime_retrace:crimeRetraceHandler+0x38, crimePreblankHandler+0x1c]. Inferred:
 * +0x028 holds the latch for edge-triggered sources and software acks a GBE
 * interrupt by clearing its bit there.
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
 * forms 25 and 26 [E for IRIX use; I for the edge/level split, linux only].
 */
#define CRIME_INT_GBE0          16          /* [E] */
#define CRIME_INT_GBE1          17          /* [E] */
#define CRIME_INT_GBE2          18          /* [E] */
#define CRIME_INT_GBE3          19          /* [E] */
#define CRIME_INT_CPUERR        20          /* [I] netbsd and linux agree; not in the IRIX graphics objects */
#define CRIME_INT_MEMERR        21          /* [I] same; spec prose says 20, spec table 21 */
#define CRIME_INT_RE_EMPTY_EDGE 22          /* [I, linux] */
#define CRIME_INT_RE_FULL_EDGE  23          /* [I, linux] */
#define CRIME_INT_RE_IDLE_EDGE  24          /* [I, linux] */
#define CRIME_INT_RE_EMPTY      25          /* [E] IRIX vector */
#define CRIME_INT_RE_FULL       26          /* [E] IRIX vector */
#define CRIME_INT_RE_IDLE       27          /* [I, linux] */
#define CRIME_INT_VICE          31          /* [E, netbsd] */
/*
 * The memory and CPU error vectors live in the base IRIX kernel, which this
 * repository does not hold, so IRIX gives no evidence on the 20/21 question
 * yet [U]. Both public drivers assign CPU 20 and memory 21, matching the
 * specification's table rather than its prose.
 */

#define CRIME_CPU_ERROR_STAT_15 0x4048      /* 1.5 draft offset [E, spec PDF 49] */
#define CRIME_CPU_ERROR_STAT_11 0x0048      /* earlier offset, used by linux and netbsd [E] */

#endif /* CRIME_H */
