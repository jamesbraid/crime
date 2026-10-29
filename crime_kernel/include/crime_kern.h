/*
 * crime_kern.h - IRIX 6.5.30 IP32boot crime.a driver state, recovered from
 * code (the DWARF has names and lines, no types).
 *
 * Offsets are bytes into the structure the cited functions receive.
 * Labels: [E] read from the cited function, [I] inferred, [U] unknown.
 */
#ifndef CRIME_KERN_H
#define CRIME_KERN_H

/* ---- Globals in crime_init.o (.sbss/.sdata) [E] -------------------------- */
/* ib_full, ib_empty, ib_stall, ib_count: the IB_CTL fields (CRIME_RE.h);
 * ibctl: the last word written to IB_CTL; r10kfifohigh = r7kfifohigh = 20:
 * the full level for R10000-family and RM7000 modules; gbe_gammawar: use
 * the gamma table instead of a linear ramp; crm_fbdepth, gbemn,
 * crm_default_vtiming: uses not read [U]. */

/* ---- Board (second argument of the interrupt handlers) -------------------- */
#define CRB_RE_BASE         120     /* KSEG1 pointer to 0x15000000 [E, crimeFifoFullHandler] */
#define CRB_FIFO_WAITING    60      /* set while a writer is descheduled [E] */
#define CRB_EMPTY_TIMEOUT   316     /* timeout id for crimeEmptyWaitTimeout [E] */
#define CRB_FIFO_STATE      544     /* 1 = full-handler wait, 2 = crmFifoWait sleep [E] */
#define CRB_FIFO_FLAG       548     /* [E, written in crmFifoWait]; meaning [U] */
#define CRB_WAIT_TIMEOUT    552     /* timeout id for crimeFifoWaitTimeout [E] */
#define CRB_WAIT_SV         556     /* sync variable crmFifoWait sleeps on [E] */

/* crimeBoards (crime.o .data): +0x4 holds the GBE KSEG1 base used by
 * crime_mapcolor [E]; +0x38 is a halfword set to 1 at the end of
 * crimeInitHW [E, meaning U]. */
#define CRIMEBOARDS_GBE_BASE    0x4
#define CRIMEBOARDS_HW_READY    0x38

/* ---- Per-screen video info (third argument of crimeInitInfo) ------------- */
#define CRI_MONITOR_TYPE    0x28    /* from GBE CTRLSTAT GPIO sense bits [E]; encoding [U] */
#define CRI_CRIME_REV       0x29    /* CRIME ID & 0xf, +1 in one case [E] */
#define CRI_GBE_REV         0x2a    /* GBE CTRLSTAT & 0xf, the GBE revision [E; name I, linux] */
#define CRI_PANEL_TYPE      0x2e    /* flat-panel probe result 0x82/0x83/0x84 [E] */
#define CRI_TIMING_TABLE    0x30    /* pointer into the built-in timing table, 0x30-byte entries [E] */
#define CRI_TIMING_INDEX    0xe4    /* [E] */

#endif /* CRIME_KERN_H */
