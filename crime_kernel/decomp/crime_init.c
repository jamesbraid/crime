M2C_UNK cmn_err(M2C_UNK, M2C_UNK);                  /* extern */
s32 crime_i2cFpProbe(u32 *, s32, u32, s16 *);       /* extern */
M2C_UNK crmFifoWait(void *, s32, M2C_UNK);          /* extern */
M2C_UNK crmIdleWait(void *, M2C_UNK);               /* extern */
M2C_UNK crmLoadGbelists(void *, void *);            /* extern */
s32 crmResizeFb(void *);                            /* extern */
M2C_UNK crm_callvideo(u32 *, M2C_UNK);              /* extern */
M2C_UNK dki_dcache_wb(s32, s32);                    /* extern */
M2C_UNK flushbus();                                 /* extern */
M2C_UNK gbeCacheVtInfo(void *, void *);             /* extern */
s32 get_cpu_irr(void *);                            /* extern */
M2C_UNK i2cfp_DMI2_KernelEDID(u32 *, void *, M2C_UNK, s16 *); /* extern */
M2C_UNK i2cfp_DualChannelCommand(u32 *, s32, s32, M2C_UNK); /* extern */
M2C_UNK i2cfp_PanelOff(s32 *);                      /* extern */
M2C_UNK i2cfp_PanelOn(s32, void *, s32 *);          /* extern */
u8 *kopt_find(M2C_UNK, s32, s32, M2C_UNK);          /* extern */
s32 kvtophys(s32);                                  /* extern */
M2C_UNK mutex_lock(s32, M2C_UNK);                   /* extern */
M2C_UNK mutex_unlock(s32);                          /* extern */
M2C_UNK strncpy(void *, M2C_UNK, M2C_UNK, void *);  /* extern */
M2C_UNK us_delay(M2C_UNK, u16, s32, s32);           /* extern */
void gbeGmapInit(void *arg0, M2C_UNK, M2C_UNK);     /* static */
void gbeRun(u32 *arg0, void *arg1, void *arg2);     /* static */
void gbeStop(u32 *arg0, s32 *arg1, s32 *arg2, s32 *arg3); /* static */

void gbeProbe(void *arg0) {
    if (M2C_FIELD(arg0, s32 *, 0x14) != 0x666) {

    } else {
        M2C_FIELD(arg0, s32 *, 0) = 0x30000000;
        if (M2C_FIELD(arg0, s32 *, 0x10000) & 0x80000000) {
            M2C_FIELD(arg0, s32 *, 0x10000) = 0;
        }
    }
}

s32 crimeProbe(void) {
    s32 temp_v0;

    temp_v0 = (*(s64 *)0xB4000000 << 0) & 0xFF;
    if ((temp_v0 & 0xF0) != 0xA0) {
        return 0;
    }
    if (temp_v0 != 0xA0) {
        return 1;
    }
    return 0;
}

u32 getNvramTiming(void) {
    u32 var_v0;
    u8 *temp_v0;
    u8 temp_a2;

    temp_v0 = kopt_find(0);
    if (temp_v0 != NULL) {
        temp_a2 = *temp_v0;
        switch (temp_a2) {                          /* irregular */
        case 0x6C:
        case 0x4C:
            var_v0 = 4;
            break;
        case 0x68:
        case 0x48:
            var_v0 = 9;
            break;
        }
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void crimeInitInfo(u32 *arg0, u32 *arg1, void *arg2, s32 arg3) {
    s32 *temp_t3;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_v0;
    s8 temp_v0;
    s8 temp_v0_2;
    s8 var_a2;
    u32 temp_a0;
    u32 temp_v0_3;
    u8 temp_v0_4;
    u8 temp_v0_5;
    u8 var_a2_2;
    void *temp_a2;
    void *temp_a3;
    void *var_a7;

    *arg1 = (*arg1 & 0x30000000) | 0xAA000;
    temp_v0 = (*(s64 *)0xB4000000 << 0) & 0xF;
    M2C_FIELD(arg2, s8 *, 0x29) = temp_v0;
    if (M2C_FIELD(arg0, s32 *, 0x400) & 1) {
        M2C_FIELD(arg2, s8 *, 0x29) = (s8) (temp_v0 + 1);
    }
    temp_a0 = *arg1;
    var_a2 = temp_a0 & 0xF;
    temp_a1 = (temp_a0 >> 0xE) & 4;
    temp_a0_2 = (temp_a0 >> 0xD) & 2;
    M2C_FIELD(arg2, s8 *, 0x2A) = var_a2;
    temp_v0_2 = ((temp_a0 >> 0xF) & 8) | temp_a1 | (((temp_a0 >> 0xC) & 1) | temp_a0_2);
    M2C_FIELD(arg2, s8 *, 0x28) = temp_v0_2;
    if (*saved_reg_gp != 0) {
        *saved_reg_gp = temp_v0_2 == 0;
    }
    if (arg3 != 0) {
        if (*(s16 *)0x22 != 2) {

        }
        goto block_7;
    }
    if (M2C_FIELD(arg2, u32 *, 0xE4) != 0) {
        if (*(s16 *)0x22 == 2) {

        }
        goto block_7;
    }
    temp_v0_3 = getNvramTiming(temp_a0_2, temp_a1, var_a2, 0);
    M2C_FIELD(arg2, u32 *, 0xE4) = temp_v0_3;
    if (temp_v0_3 != 0) {
        M2C_FIELD(arg2, void **, 0x30) = (void *) (temp_v0_3 * 0x30);
        var_a2 = (s8) *(s16 *)0x22;
        if (var_a2 == 2) {

        }
        goto block_7;
    }
    var_a2 = (s8) *saved_reg_gp;
    M2C_FIELD(arg2, u32 *, 0xE4) = (u32) var_a2;
    var_a0 = 0;
    M2C_FIELD(arg2, void **, 0x30) = (void *) (var_a2 * 0x30);
    if (*(s16 *)0x22 == 2) {
        temp_v0_4 = M2C_FIELD(arg2, u8 *, 0x88);
        if (temp_v0_4 != 0) {
            if (temp_v0_4 & 1) {
                M2C_FIELD(arg2, u32 *, 0xE4) = 0xBU;
            } else if (temp_v0_4 & 2) {
                M2C_FIELD(arg2, u32 *, 0xE4) = 6U;
            } else if (temp_v0_4 & 4) {
                M2C_FIELD(arg2, u32 *, 0xE4) = 5U;
            } else if (temp_v0_4 & 8) {
                M2C_FIELD(arg2, u32 *, 0xE4) = 9U;
            } else if (temp_v0_4 & 0x80) {
                M2C_FIELD(arg2, u32 *, 0xE4) = 3U;
            } else {
                temp_v0_5 = M2C_FIELD(arg2, u8 *, 0x87);
                var_a2 = temp_v0_5 & 1;
                if (var_a2 != 0) {
                    M2C_FIELD(arg2, u32 *, 0xE4) = 2U;
                } else if (temp_v0_5 & 0x20) {
                    M2C_FIELD(arg2, u32 *, 0xE4) = 1U;
                }
            }
        }
    } else {
block_7:
        var_a0 = 0;
    }
    temp_a1_2 = *NULL;
    if (temp_a1_2 != 0) {
        var_a2_2 = M2C_FIELD(arg2, u8 *, 0x2E);
    } else {
        var_a2_2 = crime_i2cFpProbe(arg1, temp_a1_2, (u32) var_a2, NULL) & 0xFF;
        var_a0 = 0;
        M2C_FIELD(arg2, u8 *, 0x2E) = var_a2_2;
    }
    switch (var_a2_2) {                             /* irregular */
    case 0x82:
        M2C_FIELD(arg2, void **, 0x30) = (void *) (var_a0 + 0xC0);
        M2C_FIELD(arg2, u32 *, 0xE4) = 4U;
        break;
    case 0x84:
        if (M2C_FIELD(M2C_FIELD(arg2, void **, 0x30), s32 *, 4) != 0x400) {
            M2C_FIELD(arg2, u32 *, 0xE4) = 0xFU;
            M2C_FIELD(arg2, void **, 0x30) = (void *) (var_a0 + 0x2D0);
        }
        if (M2C_FIELD(NULL, s16 *, 0x32) == 0) {
            i2cfp_DMI2_KernelEDID(arg1, arg2, 0, NULL);
        }
        break;
    case 0x83:
        M2C_FIELD(arg2, void **, 0x30) = (void *) (var_a0 + 0x1B0);
        M2C_FIELD(arg2, u32 *, 0xE4) = 9U;
        break;
    }
    if (*saved_reg_gp != 0x10) {
        M2C_FIELD(arg2, s8 *, 0x2F) = 0x20;
    } else {
        M2C_FIELD(arg2, s8 *, 0x2F) = 0x10;
    }
    var_a7 = arg2 + 0x38;
    if ((u32) *saved_reg_gp < 0x2001U) {
        M2C_FIELD(arg2, s8 *, 0x2B) = 0;
        M2C_FIELD(arg2, s8 *, 0x2F) = 0x10;
        var_a7 = arg2 + 0x38;
    }
    temp_a3 = M2C_FIELD(arg2, void **, 0x30);
    var_a0_2 = 0xC;
    var_v0 = 0;
    do {
        var_a0_2 -= 2;
        *(var_v0 + (arg2 + 0x34)) = *(var_v0 + temp_a3);
        temp_t3 = var_v0 + var_a7;
        temp_t2 = *(var_v0 + (temp_a3 + 4));
        var_v0 += 8;
        *temp_t3 = temp_t2;
    } while (var_a0_2 > 0);
    strncpy(arg2, 8, 0x10, temp_a3);
    temp_a2 = M2C_FIELD(arg2, void **, 0x30);
    M2C_FIELD(arg2, s16 *, 0x20) = (s16) M2C_FIELD(temp_a2, s16 *, 8);
    M2C_FIELD(arg2, s32 *, 0x24) = 0x1F0;
    M2C_FIELD(arg2, s16 *, 0x22) = (s16) M2C_FIELD(temp_a2, s16 *, 0xA);
    if ((M2C_FIELD(arg2, u8 *, 0x2C) != 0) && (M2C_FIELD(arg2, u8 *, 0x2D) != 0)) {
        M2C_FIELD(arg2, s16 *, 0x22) = (s16) ((u16) M2C_FIELD(arg2, s16 *, 0x22) * 2);
    }
}

void gbeSetTimingRegs(u32 *arg0, void *arg1) {
    M2C_UNK var_a3;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_v0;
    s32 temp_a0;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_v0_2;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    u16 temp_a1;
    u8 *temp_v0_4;
    u8 temp_v0_3;
    void *temp_s0;

    temp_s0 = M2C_FIELD(arg1, void **, 0x30);
    M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) & 0xFFFF);
    flushbus();
    M2C_FIELD(arg0, s32 *, 0x10004) = 0;
    M2C_FIELD(arg0, s32 *, 0x10008) = (s32) ((M2C_FIELD(temp_s0, s16 *, 0x26) & 0xFFF) | ((M2C_FIELD(temp_s0, s16 *, 0x24) & 0xFFF) << 0xC));
    M2C_FIELD(arg0, s32 *, 0x1000C) = (s32) ((M2C_FIELD(temp_s0, s16 *, 0x1C) & 0xFFF) | ((M2C_FIELD(temp_s0, s16 *, 0x1A) & 0xFFF) << 0xC));
    var_a2 = (M2C_FIELD(temp_s0, s16 *, 0x22) & 0xFFF) | ((M2C_FIELD(temp_s0, s16 *, 0x20) & 0xFFF) << 0xC);
    M2C_FIELD(arg0, s32 *, 0x10010) = var_a2;
    temp_v0 = M2C_FIELD(temp_s0, s16 *, 0x14);
    M2C_FIELD(arg0, s32 *, 0x10014) = (s32) (((M2C_FIELD(temp_s0, s16 *, 0x18) - 3) & 0xFFF) | (((s32) ((M2C_FIELD(temp_s0, s16 *, 0x16) + temp_v0) - 5) % temp_v0) << 0xC));
    M2C_TRAP_IF(temp_v0 == 0);
    if ((*saved_reg_gp < 9) && (M2C_FIELD(arg1, u8 *, 0x2D) != 0)) {
        M2C_FIELD(arg0, s32 *, 0x10010) = (s32) (((M2C_FIELD(temp_s0, s16 *, 0xA) & 0xFFF) << 0xC) | 0xFFF);
        M2C_FIELD(arg0, s32 *, 0x10014) = (s32) (((M2C_FIELD(temp_s0, s16 *, 8) & 0xFFF) << 0xC) | 0xFFF);
    }
    M2C_FIELD(arg0, s32 *, 0x1003C) = (s32) ((M2C_FIELD(temp_s0, s16 *, 0x18) & 0xFFF) | ((M2C_FIELD(temp_s0, s16 *, 0x16) & 0xFFF) << 0xC));
    M2C_FIELD(arg0, s32 *, 0x10040) = (s32) ((M2C_FIELD(temp_s0, s16 *, 0x22) & 0xFFF) | ((M2C_FIELD(temp_s0, s16 *, 0x20) & 0xFFF) << 0xC));
    M2C_FIELD(arg0, s32 *, 0x10018) = 0;
    temp_a0 = M2C_FIELD(temp_s0, s16 *, 0x20) & 0xFFF;
    temp_v0_2 = temp_a0 << 0xC;
    if (M2C_FIELD(temp_s0, s32 *, 4) & 0x12) {
        var_a2 = temp_a0 | temp_v0_2;
        M2C_FIELD(arg0, s32 *, 0x1001C) = var_a2;
    } else {
        M2C_FIELD(arg0, s32 *, 0x1001C) = (s32) (temp_v0_2 | 0xFFF);
    }
    temp_v0_3 = M2C_FIELD(arg1, u8 *, 0x2E);
    var_a3 = 0x82;
    var_a1 = 0xFFE;
    if (temp_v0_3 != 0x82) {
        if (temp_v0_3 != 0x83) {
            var_a4 = 0xFFE;
            if (temp_v0_3 != 0x84) {

            } else {
                var_a4 = 0x401;
                var_a1 = 0x640;
            }
        } else {
            var_a1 = 0x500;
            var_a4 = 0x400;
        }
    } else {
        var_a1 = 0x400;
        var_a4 = 0x300;
        var_a3 = 0x326;
        var_a2 = 0x303;
    }
    if (temp_v0_3 != 0x84) {
        var_v0 = 0x7F;
        if (*saved_reg_gp != 0) {
            if (M2C_FIELD(temp_s0, s32 *, 0x10) > 0x186A0) {
                var_v0 = 0xFF;
            }
            i2cfp_DualChannelCommand(arg0, var_v0 & 0xFF, var_a2, var_a3);
            var_v0_2 = 2;
            if (*saved_reg_gp >= 9) {
                var_v0_2 = 0;
            }
            M2C_FIELD(arg0, s32 *, 0x10028) = (s32) (var_v0_2 | (((M2C_FIELD(temp_s0, s16 *, 8) + var_v0_2) & 0xFFF) << 0xC));
            M2C_FIELD(arg0, s32 *, 0x1002C) = (s32) ((((M2C_FIELD(temp_s0, s16 *, 0xA) + 1) & 0xFFF) << 0xC) | 1);
        } else {
            M2C_FIELD(arg0, s32 *, 0x10030) = (s32) ((subroutine_arg0 & 0xFFF) | ((subroutine_arg0 & 0xFFF) << 0xC));
            M2C_FIELD(arg0, s32 *, 0x10028) = (s32) ((var_a1 + 1) & 0xFFF);
            M2C_FIELD(arg0, s32 *, 0x1002C) = (s32) (((var_a4 + 1) & 0xFFF) | 0x1000);
        }
    } else {
        M2C_FIELD(arg0, s32 *, 0x10028) = (s32) (var_a1 & 0xFFF);
        M2C_FIELD(arg0, s32 *, 0x1002C) = (s32) ((var_a4 & 0xFFF) | 0x1000);
        temp_v0_4 = kopt_find(0x10, var_a1, var_a2, var_a3);
        if (temp_v0_4 != NULL) {
            var_v0_3 = 2;
            if (*temp_v0_4 == 0x31) {
                var_v0_3 = 0;
            }
        } else {
            var_v0_3 = subroutine_arg1;
        }
        M2C_FIELD(arg0, s32 *, 0x10018) = (s32) (var_v0_3 | (M2C_FIELD(arg0, s32 *, 0x10018) & 0x7D));
    }
    var_v0_4 = (M2C_FIELD(temp_s0, s16 *, 0x20) - M2C_FIELD(temp_s0, s16 *, 0x22)) - 1;
    if (var_v0_4 > 0) {
        var_v0_4 = -var_v0_4;
    }
    temp_a0_2 = M2C_FIELD(temp_s0, s16 *, 0x18);
    if (temp_a0_2 >= 0x14) {
        var_v0_5 = temp_a0_2 - 0x14;
    } else {
        var_v0_5 = (M2C_FIELD(temp_s0, s16 *, 0x14) + temp_a0_2) - 0x14;
    }
    temp_v0_5 = ((var_v0_4 & 0xFFF) << 0xC) | var_v0_5;
    M2C_FIELD(arg0, s32 *, 0x10044) = temp_v0_5;
    temp_a4 = *saved_reg_gp;
    temp_a0_3 = M2C_FIELD(temp_s0, s16 *, 0x18);
    if (temp_a0_3 >= temp_a4) {
        var_v0_6 = temp_a0_3 - temp_a4;
    } else {
        var_v0_6 = M2C_FIELD(temp_s0, s16 *, 0x14) - (temp_a4 - temp_a0_3);
    }
    temp_v0_6 = (temp_v0_5 & 0xFFF000) | var_v0_6;
    M2C_FIELD(arg0, s32 *, 0x10048) = (s32) (temp_v0_6 + 0x1000);
    temp_a3 = temp_v0_6 & 0xFFF000;
    temp_a2 = (M2C_FIELD(temp_s0, s16 *, 0x18) - 4) | temp_a3;
    M2C_FIELD(arg0, s32 *, 0x1004C) = temp_a2;
    temp_a1 = M2C_FIELD(arg1, u16 *, 0x20);
    if (M2C_FIELD(arg1, u8 *, 0x2F) != 0x20) {
        temp_v1 = (s32) (((u32) ((s32) temp_a1 >> 7) >> 0x18) + temp_a1) >> 8;
        temp_a0_4 = (temp_a1 - (temp_v1 << 8)) * 2;
        var_v0_7 = ((s32) (((u32) (temp_a0_4 >> 4) >> 0x1B) + temp_a0_4) >> 5) | (temp_v1 << 5) | 0x2000;
    } else {
        temp_v1_2 = (s32) (((u32) ((s32) temp_a1 >> 6) >> 0x19) + temp_a1) >> 7;
        temp_a0_5 = (temp_a1 - (temp_v1_2 << 7)) * 4;
        var_v0_7 = ((s32) (((u32) (temp_a0_5 >> 4) >> 0x1B) + temp_a0_5) >> 5) | (temp_v1_2 << 5) | 0x4000;
    }
    M2C_FIELD(arg0, s32 *, 0x30000) = var_v0_7;
    var_v0_8 = M2C_FIELD(arg1, u16 *, 0x22) << 0x10;
    if (M2C_FIELD(arg1, u8 *, 0x2D) != 0) {
        var_v0_8 = var_v0_8 >> 1;
    }
    temp_t0 = (s32) (((u32) ((s32) temp_a1 >> 8) >> 0x17) + temp_a1) >> 9;
    temp_a7 = temp_a1 - (temp_t0 << 9);
    M2C_FIELD(arg0, s32 *, 0x30004) = var_v0_8;
    M2C_FIELD(arg0, s32 *, 0x20000) = (s32) (((s32) (((u32) (temp_a7 >> 4) >> 0x1B) + temp_a7) >> 5) | (temp_t0 << 5));
    M2C_FIELD(arg0, s32 *, 4) = (s32) (((M2C_FIELD(temp_s0, s16 *, 0x28) - 1) & 0xFF) | 0x100000 | (((M2C_FIELD(temp_s0, s16 *, 0x2C) & 3) << 0xE) | (((M2C_FIELD(temp_s0, s16 *, 0x2A) - 1) & 0x3F) << 8)));
    us_delay(0x2AF8, temp_a1, temp_a2, temp_a3);
}

void gbeStartVideoTiming(u32 *arg0, void *arg1, s32 arg2, s32 arg3) {
    s16 temp_a0;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s8;
    s32 var_s4;

    *(s64 *)0xB4000028 = ((*(s64 *)0xB4000028 << 0) & 0xFFFEFFFF) << 0;
    flushbus();
    M2C_FIELD(arg0, s32 *, 0x10038) = 0xFFFFFF;
    M2C_FIELD(arg0, s32 *, 0x10034) = 0xFFFFFF;
    flushbus();
    M2C_FIELD(arg0, s32 *, 0x10004) = (s32) ((M2C_FIELD(arg1, s16 *, 0x14) & 0xFFF) | (M2C_FIELD(arg1, s16 *, 0x1E) << 0xC));
    temp_s5 = M2C_FIELD(arg0, s32 *, 0x30000);
    M2C_FIELD(arg0, s32 *, 0x30000) = (s32) (temp_s5 | 0x8000);
    flushbus();
    M2C_FIELD(arg0, s32 *, 0x30000) = temp_s5;
    temp_s5_2 = M2C_FIELD(arg0, s32 *, 0x20000);
    M2C_FIELD(arg0, s32 *, 0x20000) = (s32) (temp_s5_2 | 0x2000);
    flushbus();
    M2C_FIELD(arg0, s32 *, 0x20000) = temp_s5_2;
    M2C_FIELD(arg0, s32 *, 0x3000C) = arg2;
    M2C_FIELD(arg0, s32 *, 0x20008) = arg3;
    M2C_FIELD(arg0, s32 *, 0x40004) = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    flushbus();
    var_s4 = M2C_FIELD(arg1, s16 *, 0x18) - 0x13;
    temp_a0 = M2C_FIELD(arg1, s16 *, 0x14);
    temp_s5_3 = arg2 & 1;
    if (var_s4 < 0) {
        var_s4 += temp_a0;
    }
    M2C_TRAP_IF(temp_a0 == 0);
    temp_s8 = (M2C_FIELD(arg1, s16 *, 0x20) & 0xFFF) | ((M2C_FIELD(arg1, s16 *, 0x22) & 0xFFF) << 0xC);
    temp_s4 = ((s32) ((M2C_FIELD(arg1, s16 *, 8) + var_s4) - 2) % temp_a0) | (var_s4 << 0xC);
    if (temp_s5_3 != (M2C_FIELD(arg0, s32 *, 0x30008) & 1)) {
        do {
            us_delay(1);
        } while (temp_s5_3 != (M2C_FIELD(arg0, s32 *, 0x30008) & 1));
    }
    temp_s2 = arg3 & 1;
    if (temp_s2 != (M2C_FIELD(arg0, s32 *, 0x20004) & 1)) {
        do {
            us_delay(1);
        } while (temp_s2 != (M2C_FIELD(arg0, s32 *, 0x20004) & 1));
    }
    if ((u32) M2C_FIELD(arg0, u32 *, 0x10000) >= (u32) M2C_FIELD(arg1, s16 *, 0x20)) {
        do {
            us_delay(1);
        } while ((u32) M2C_FIELD(arg0, u32 *, 0x10000) >= (u32) M2C_FIELD(arg1, s16 *, 0x20));
    }
    if ((u32) M2C_FIELD(arg1, s16 *, 0x20) >= (u32) M2C_FIELD(arg0, u32 *, 0x10000)) {
        do {
            us_delay(1);
        } while ((u32) M2C_FIELD(arg1, s16 *, 0x20) >= (u32) M2C_FIELD(arg0, u32 *, 0x10000));
    }
    M2C_FIELD(arg0, s32 *, 0x10034) = temp_s4;
    M2C_FIELD(arg0, s32 *, 0x10038) = temp_s8;
}

void crimeInitHW(void *arg0, void *arg1, s64 arg3) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_s0;
    s32 temp_v1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_s0;
    void *var_a0;
    void *var_a4;
    void *var_s1;

    *saved_reg_gp = 0x3F;
    *saved_reg_gp = 0x7F;
    *saved_reg_gp = 0xA;
    *saved_reg_gp = 0x0FEFFF0A;
    unksp10 = arg3;
    *saved_reg_gp = 0x7E;
    M2C_FIELD(arg0, s32 *, 0x408) = 0;
    M2C_FIELD(arg1, s32 *, 0x70004) = 0;
    gbeGmapInit(arg1, 0x3F, 0x7E);
    var_s0 = 0;
    var_s1 = arg0;
    M2C_FIELD(arg0, s32 *, 0x400) = (s32) *saved_reg_gp;
    var_a6 = 0 & 7;
loop_1:
    M2C_FIELD(var_s1, s64 *, 0x1000) = 0;
    M2C_FIELD(var_s1, s64 *, 0x1200) = 0;
    M2C_FIELD(var_s1, s64 *, 0x1400) = 0;
    if (var_a6 == 7) {
        crmFifoWait(arg0, *saved_reg_gp, 0x1000);
        M2C_FIELD(arg0, s32 *, 0x4008) = 0;
    }
    temp_s0 = var_s0 + 1;
    if (temp_s0 < 0x40) {
        M2C_FIELD(var_s1, s64 *, 0x1008) = 0;
        M2C_FIELD(var_s1, s64 *, 0x1208) = 0;
        M2C_FIELD(var_s1, s64 *, 0x1408) = 0;
        if ((temp_s0 & 7) == 7) {
            crmFifoWait(arg0, *saved_reg_gp, 0x1000);
            M2C_FIELD(arg0, s32 *, 0x4008) = 0;
        }
        var_s0 = temp_s0 + 1;
        var_s1 += 0x10;
        var_a6 = var_s0 & 7;
        if (var_s0 < 0x40) {
            goto loop_1;
        }
    }
    var_a2 = 0;
    var_a4 = arg0;
loop_6:
    temp_a2 = var_a2 + 1;
    M2C_FIELD(var_a4, s64 *, 0x1700) = 0;
    M2C_FIELD(var_a4, s64 *, 0x1780) = 0;
    if (temp_a2 < 0x10) {
        var_a2 = temp_a2 + 1;
        var_a4 += 0x10;
        M2C_FIELD(var_a4, s64 *, 0x16F8) = 0;
        M2C_FIELD(var_a4, s64 *, 0x1778) = 0;
        if (var_a2 >= 0x10) {

        } else {
            goto loop_6;
        }
    }
    crmFifoWait(arg0, *saved_reg_gp, 0x1000);
    M2C_FIELD(arg0, s32 *, 0x4008) = 0;
    var_a2_2 = 0;
    var_a0 = arg0;
loop_10:
    temp_a2_2 = var_a2_2 + 1;
    M2C_FIELD(var_a0, s64 *, 0x1600) = 0;
    temp_a2_3 = temp_a2_2 + 1;
    if (temp_a2_2 < 0x1C) {
        M2C_FIELD(var_a0, s64 *, 0x1608) = 0;
        var_a2_2 = temp_a2_3 + 1;
        if (temp_a2_3 < 0x1C) {
            var_a0 += 0x18;
            M2C_FIELD(var_a0, s64 *, 0x15F8) = 0;
            if (var_a2_2 < 0x1C) {
                goto loop_10;
            }
        }
    }
    M2C_FIELD(arg0, s32 *, 0x4008) = 0;
    if (unksp10 != 0) {
        var_a3 = 0;
        var_a4_2 = *saved_reg_gp;
        if ((get_cpu_irr(var_a0) >> 8) < 0x23) {
            *saved_reg_gp = 0;
        } else {
            var_a3 = 0x18;
            if ((get_cpu_irr() >> 8) != 0x27) {
                *saved_reg_gp = 0x18;
                var_a4_2 = 0x30;
            } else {
                *saved_reg_gp = 0;
                var_a4_2 = *saved_reg_gp;
                var_a3 = 0;
            }
        }
        *saved_reg_gp = var_a4_2;
        temp_v1 = var_a4_2 - 1;
        *saved_reg_gp = 0xA;
        *saved_reg_gp = temp_v1;
        *saved_reg_gp = (temp_v1 << 7) | (var_a4_2 << 0x15) | (var_a3 << 0xE) | 0xA;
        crmIdleWait(arg0, 0x1000);
        M2C_FIELD(arg0, s32 *, 0x400) = (s32) *saved_reg_gp;
        flushbus();
    }
    *(s16 *)0x38 = 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44], gap at: 0x38. */
void crmInitTp(void *arg0, void *arg1, void *arg2, void *arg3) {
    s16 *var_a7;
    s16 temp_a0_2;
    s16 temp_v0_3;
    s32 temp_a0;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s2;
    s32 temp_s6;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a3;
    s32 var_a5;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_t1;
    s32 var_t3;
    u16 *temp_a4;
    void *temp_s5;

    temp_s5 = M2C_FIELD(arg2, void **, 0x30);
    temp_v0 = 0 & 0x3F;
    var_s1 = temp_v0;
    if (temp_v0 != 0) {
        var_s1 = (s32) (0x40 - temp_v0) >> 1;
    }
    temp_a0 = var_s1 * 2;
    *saved_reg_gp = temp_a0;
    temp_v0_2 = kvtophys(temp_a0);
    temp_s2 = temp_v0_2 & ~1;
    M2C_FIELD(arg1, s32 *, 0x3000C) = temp_s2;
    M2C_FIELD(arg1, s32 *, 0x20008) = temp_s2;
    flushbus();
    var_s1_2 = temp_s2 + 0x20;
    if (M2C_FIELD(arg1, s32 *, 0x20004) & 1) {
        do {
            us_delay(0xA);
        } while (M2C_FIELD(arg1, s32 *, 0x20004) & 1);
        var_s1_2 = temp_s2 + 0x20;
    }
    M2C_FIELD(arg1, s32 *, 0x20008) = var_s1_2;
    if (M2C_FIELD(arg1, s32 *, 0x20004) != var_s1_2) {
        do {
            us_delay(0xA);
        } while (M2C_FIELD(arg1, s32 *, 0x20004) != var_s1_2);
    }
    var_s1_3 = 0;
    var_a0 = 0;
    if ((s32) M2C_FIELD(arg3, u8 *, 0x19) > 0) {
loop_11:
        var_a5 = 0;
        if ((s32) M2C_FIELD(arg3, u8 *, 0x18) > 0) {
            var_a3 = var_s1_3 * 2;
            var_t3 = 0 & 3;
            var_t1 = 0 >> 2;
            var_a7 = *saved_reg_gp + var_a3;
loop_15:
            *var_a7 = *(M2C_FIELD(arg3, s32 *, 8) + var_a3) & 0x1FFF;
            var_s1_3 += 1;
            temp_a4 = M2C_FIELD(arg3, s32 *, 8) + var_a3;
            var_a3 += 2;
            *(sp + (var_t3 * 2)) = *temp_a4;
            if (var_t3 != 3) {
                if (var_a5 == (M2C_FIELD(arg3, u8 *, 0x18) - 1)) {
                    goto block_13;
                }
            } else {
block_13:
                M2C_FIELD((arg0 + (((var_a0 * 4) | var_t1) * 8)), s64 *, 0x1400) = (s64) subroutine_arg0;
            }
            var_a5 += 1;
            var_t3 = var_a5 & 3;
            var_t1 = var_a5 >> 2;
            var_a7 = *saved_reg_gp + var_a3;
            if (var_a5 < (s32) M2C_FIELD(arg3, u8 *, 0x18)) {
                goto loop_15;
            }
        }
        var_a0 += 1;
        if (var_a0 < (s32) M2C_FIELD(arg3, u8 *, 0x19)) {
            goto loop_11;
        }
    }
    dki_dcache_wb(*saved_reg_gp, M2C_FIELD(arg3, s32 *, 4) * 2);
    M2C_FIELD(arg1, s32 *, 0x48000) = 3;
    M2C_FIELD(arg1, s32 *, 0x10038) = 0xFFFFFF;
    M2C_FIELD(arg1, s32 *, 0x10034) = 0xFFFFFF;
    temp_s1 = M2C_FIELD(arg1, s32 *, 0x30000);
    M2C_FIELD(arg1, s32 *, 0x30000) = (s32) (temp_s1 | 0x8000);
    flushbus();
    M2C_FIELD(arg1, s32 *, 0x30000) = temp_s1;
    temp_s1_2 = M2C_FIELD(arg1, s32 *, 0x20000);
    M2C_FIELD(arg1, s32 *, 0x20000) = (s32) (temp_s1_2 | 0x2000);
    flushbus();
    M2C_FIELD(arg1, s32 *, 0x20000) = temp_s1_2;
    M2C_FIELD(arg1, s32 *, 0x20008) = (s32) (temp_v0_2 | 1);
    flushbus();
    temp_s1_3 = temp_v0_2 & 1;
    if (temp_s1_3 != (M2C_FIELD(arg1, s32 *, 0x20004) & 1)) {
        do {
            us_delay(1);
        } while (temp_s1_3 != (M2C_FIELD(arg1, s32 *, 0x20004) & 1));
    }
    temp_v0_3 = M2C_FIELD(temp_s5, s16 *, 0x20);
    var_s1_4 = M2C_FIELD(temp_s5, s16 *, 0x18) - 0x13;
    temp_a0_2 = M2C_FIELD(temp_s5, s16 *, 0x14);
    if (var_s1_4 < 0) {
        var_s1_4 += temp_a0_2;
    }
    M2C_TRAP_IF(temp_a0_2 == 0);
    temp_s6 = (temp_v0_3 & 0xFFF) | ((M2C_FIELD(temp_s5, s16 *, 0x22) & 0xFFF) << 0xC);
    temp_s1_4 = ((s32) ((M2C_FIELD(temp_s5, s16 *, 8) + var_s1_4) - 2) % temp_a0_2) | (var_s1_4 << 0xC);
    if ((u32) M2C_FIELD(arg1, u32 *, 0x10000) >= (u32) temp_v0_3) {
        do {
            us_delay(1);
        } while ((u32) M2C_FIELD(arg1, u32 *, 0x10000) >= (u32) M2C_FIELD(temp_s5, s16 *, 0x20));
    }
    if ((u32) M2C_FIELD(temp_s5, s16 *, 0x20) >= (u32) M2C_FIELD(arg1, u32 *, 0x10000)) {
        do {
            us_delay(1);
        } while ((u32) M2C_FIELD(temp_s5, s16 *, 0x20) >= (u32) M2C_FIELD(arg1, u32 *, 0x10000));
    }
    M2C_FIELD(arg1, s32 *, 0x10034) = temp_s1_4;
    M2C_FIELD(arg1, s32 *, 0x10038) = temp_s6;
    crmIdleWait(arg0, 0x186A0);
}

s32 crmInvalidVideoTiming(s32 *arg0) {
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_v0;

    temp_a4 = M2C_FIELD(arg0, s16 *, 0x2C);
    temp_a3 = M2C_FIELD(arg0, s16 *, 0x28);
    temp_v0 = M2C_FIELD(arg0, s16 *, 0x2A);
    if ((temp_a3 > 0) && (temp_a3 < 0x101)) {
        if ((temp_v0 > 0) && (temp_v0 < 0x41) && (temp_a4 >= 0)) {
            if (temp_a4 >= 4) {
                goto block_6;
            }
            return 0;
        }
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return 1;
    }
block_6:
    return 1;
}

s32 crime_setvideotiming(void *arg0, void *arg1, s32 *arg2) {
    s64 sp30;
    M2C_UNK sp4;
    s32 *temp_t2;
    s32 *temp_t8_2;
    s32 *temp_t9;
    s32 temp_t1_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a5;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    u32 *temp_s3;
    u32 *temp_s4;
    u32 var_a6;
    void *temp_a0;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_t1;
    void *var_a5_2;
    void *var_v0_4;

    var_v0_2 = 0;
    var_a5 = 0xC;
    temp_t1 = M2C_FIELD(arg1, void **, 0x30);
    temp_s3 = *(u32 **)4;
    do {
        temp_t8 = *(var_v0_2 + (temp_t1 + 4));
        var_a5 -= 2;
        temp_t9 = var_v0_2 + &sp4;
        *(var_v0_2 + sp) = *(var_v0_2 + temp_t1);
        var_v0_2 += 8;
        *temp_t9 = temp_t8;
    } while (var_a5 > 0);
    temp_s4 = *NULL;
    temp_v0 = *arg2;
    sp30 = (s64) M2C_FIELD(arg1, u32 *, 0xE4);
    if (temp_v0 != 0xD) {
        goto block_3;
    }
    if ((arg0 == NULL) || (M2C_FIELD(arg0, u8 *, 0x98) & 2)) {
        if (M2C_FIELD(arg1, u8 *, 0x2B) != 0) {
            var_v0 = 0x16;
        } else {
block_3:
            if ((temp_v0 > 0) && (temp_v0 < 0x10)) {
                var_a6 = 1;
                var_a5_2 = (void *)0x30;
loop_6:
                if (M2C_FIELD(var_a5_2, s32 *, 0) != temp_v0) {
                    var_a6 += 1;
                    var_a5_2 += 0x30;
                    if (var_a6 >= 0x10U) {
                        goto block_8;
                    }
                    goto loop_6;
                }
                var_v0 = 0x16;
                if (M2C_FIELD(var_a5_2, s16 *, 0x14) != 0) {
                    M2C_FIELD(arg1, void **, 0x30) = var_a5_2;
                    M2C_FIELD(arg1, u32 *, 0xE4) = var_a6;
                    goto block_13;
                }
            } else {
block_8:
                temp_a7 = arg1 + 0x34;
                if (crmInvalidVideoTiming(arg2) != 0) {
                    var_v0 = 0x16;
                } else {
                    var_a5_3 = 0;
                    var_v0_3 = 0xC;
                    do {
                        var_v0_3 -= 2;
                        *(var_a5_3 + temp_a7) = *(var_a5_3 + arg2);
                        temp_t2 = var_a5_3 + (arg1 + 0x38);
                        temp_t1_2 = *(var_a5_3 + (arg2 + 4));
                        var_a5_3 += 8;
                        *temp_t2 = temp_t1_2;
                    } while (var_v0_3 > 0);
                    M2C_FIELD(arg1, void **, 0x30) = temp_a7;
                    M2C_FIELD(arg1, u32 *, 0xE4) = 0x10U;
block_13:
                    crimeInitInfo(temp_s4, temp_s3, arg1, 1);
                    temp_v0_2 = crmResizeFb(M2C_FIELD(arg1, void **, 0x30));
                    if (temp_v0_2 != 0) {
                        var_a2 = 0;
                        var_a5_4 = 0xC;
                        temp_a7_2 = M2C_FIELD(arg1, void **, 0x30);
                        do {
                            temp_t3 = *(var_a2 + &sp4);
                            var_a5_4 -= 2;
                            temp_t8_2 = var_a2 + (temp_a7_2 + 4);
                            *(var_a2 + temp_a7_2) = *(var_a2 + sp);
                            var_a2 += 8;
                            *temp_t8_2 = temp_t3;
                        } while (var_a5_4 > 0);
                        M2C_FIELD(arg1, u32 *, 0xE4) = (u32) sp30;
                        crimeInitInfo(temp_s4, temp_s3, arg1, 1);
                        var_v0 = temp_v0_2;
                    } else {
                        if (arg0 != NULL) {
                            var_v0_4 = M2C_FIELD(arg0, void **, 0x1C4);
                            if (var_v0_4 != NULL) {
loop_29:
                                M2C_FIELD(M2C_FIELD(var_v0_4, void **, 0x4C), s16 *, 0x27C) = (s16) M2C_FIELD(M2C_FIELD(arg1, void **, 0x30), s16 *, 8);
                                M2C_FIELD(M2C_FIELD(var_v0_4, void **, 0x4C), s16 *, 0x27E) = (s16) M2C_FIELD(M2C_FIELD(arg1, void **, 0x30), s16 *, 0xA);
                                M2C_FIELD(M2C_FIELD(var_v0_4, void **, 0x4C), s32 *, 0x280) = (s32) M2C_FIELD(M2C_FIELD(arg1, void **, 0x30), s32 *, 0xC);
                                temp_a0 = M2C_FIELD(var_v0_4, void **, 0x4C);
                                if (!(M2C_FIELD(M2C_FIELD(arg1, void **, 0x30), s32 *, 4) & 2)) {
                                    M2C_FIELD(temp_a0, u16 *, 0x284) = (u16) (-2 & M2C_FIELD(temp_a0, u16 *, 0x284));
                                } else {
                                    M2C_FIELD(temp_a0, u16 *, 0x284) = (u16) (M2C_FIELD(temp_a0, u16 *, 0x284) | 1);
                                }
                                var_v0_4 = M2C_FIELD(var_v0_4, void **, 0x14);
                                if (var_v0_4 != NULL) {
                                    goto loop_29;
                                }
                            }
                        }
                        gbeRun(temp_s3, arg1, arg0);
                        var_v0 = 0;
                    }
                }
            }
        }
    } else {
        cmn_err(4, 0x20);
        var_v0 = 0x16;
    }
    return var_v0;
}

void gbeGmapInit(void *arg0) {
    s32 *var_a3;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2_2;
    u8 *var_a2;
    u8 temp_a4;

    var_a1 = 0;
    var_a3 = arg0 + 0x60000;
    var_a2 = (u8 *)0x300;
    if (*saved_reg_gp != 0) {
        do {
            temp_a4 = *var_a2;
            var_a2 += 1;
            var_a3 += 4;
            var_a1 += 1;
            M2C_FIELD(var_a3, s32 *, -4) = (s32) ((temp_a4 << 8) | ((temp_a4 << 0x10) | (temp_a4 << 0x18)));
        } while (var_a1 < 0x100);
    } else {
        var_a2_2 = 0;
        var_a1_2 = 0;
loop_4:
        temp_a1 = var_a1_2 + 1;
        *var_a3 = var_a2_2;
        temp_a2 = var_a2_2 + 0x01010100;
        var_a1_2 = temp_a1 + 1;
        if (temp_a1 < 0x100) {
            var_a3 += 8;
            M2C_FIELD(var_a3, s32 *, -4) = temp_a2;
            var_a2_2 = temp_a2 + 0x01010100;
            if (var_a1_2 >= 0x100) {

            } else {
                goto loop_4;
            }
        }
    }
}

void gbeRun(u32 *arg0, void *arg1, void *arg2) {
    s32 sp8;
    s32 sp4;
    void *temp_a1;
    void *temp_a2;

    crm_callvideo((u32 *)1);
    gbeStop(arg0, sp, &sp4, &sp8);
    gbeSetTimingRegs(arg0, arg1);
    temp_a1 = M2C_FIELD(arg1, void **, 0x30);
    if (arg2 != NULL) {
        crmLoadGbelists(arg2, temp_a1);
        gbeCacheVtInfo(arg2, M2C_FIELD(arg1, void **, 0x30));
        temp_a2 = M2C_FIELD(arg2, void **, 0x84);
        gbeStartVideoTiming(arg0, M2C_FIELD(arg1, void **, 0x30), M2C_FIELD(temp_a2, s32 *, 0x4C), M2C_FIELD(temp_a2, s32 *, 4));
    } else {
        gbeStartVideoTiming(arg0, temp_a1, subroutine_arg0, sp4);
    }
    crm_callvideo(arg0, 2);
}

void gbeBlankScreen(s32 arg0, void *arg1, s32 *arg2, s32 arg3) {
    s16 temp_s5;
    s32 temp_s4;
    s32 var_s3;

    temp_s4 = M2C_ERROR(/* Read from unset register $a4 */);
    var_s3 = 0;
    if ((arg1 != NULL) && (M2C_FIELD(arg1, u8 *, 0x2E) != 0)) {
        var_s3 = 1;
    }
    temp_s5 = *(s16 *)0x38;
    if ((M2C_FIELD(arg1, u8 *, 0x2D) != 0) && (arg0 != 0)) {
        mutex_lock(arg0 + 0x1D4, 0x19);
    }
    if (arg3 != 0) {
        if ((temp_s4 != 0) && (var_s3 != 0) && (temp_s5 != 0)) {
            i2cfp_PanelOff(arg2);
        }
        *arg2 = 0xAA000;
    } else {
        if (temp_s4 == 0) {
            if ((var_s3 != 0) && (temp_s5 != 0)) {
                i2cfp_PanelOn(arg0, arg1, arg2);
            }
        }
        *arg2 = 0x300AA000;
    }
    if ((M2C_FIELD(arg1, u8 *, 0x2D) != 0) && (arg0 != 0)) {
        mutex_unlock(arg0 + 0x1D4);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44], gap at: 0x38. */
void gbeStop(u32 *arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_s0;
    s32 var_s0_2;

    gbeCacheVtInfo(*(void **)0xC, NULL);
    temp_a1 = M2C_FIELD(arg0, s32 *, 0x3000C);
    *arg1 = temp_a1;
    M2C_FIELD(arg0, s32 *, 0x3000C) = (s32) (-2 & temp_a1);
    flushbus();
    temp_t8 = M2C_FIELD(arg0, s32 *, 0x20008);
    *arg2 = temp_t8;
    M2C_FIELD(arg0, s32 *, 0x20008) = (s32) (-2 & temp_t8);
    flushbus();
    temp_t8_2 = M2C_FIELD(arg0, s32 *, 0x40004);
    *arg3 = temp_t8_2;
    M2C_FIELD(arg0, s32 *, 0x40004) = (s32) (temp_t8_2 & ~0x10000);
    flushbus();
    var_s0 = 0;
    if (!(*arg2 & 1)) {
        return;
    }
loop_4:
    if (!(M2C_FIELD(arg0, s32 *, 0x30008) & 1)) {
        if (M2C_FIELD(arg0, s32 *, 0x20004) & 1) {
            us_delay(0xA);
            goto block_3;
        }
        if (0x10000 & M2C_FIELD(arg0, s32 *, 0x40000)) {
            us_delay(0xA);
            goto block_3;
        }
    } else {
        us_delay(0xA);
block_3:
        var_s0 += 1;
        if (var_s0 < 0x4E20) {
            goto loop_4;
        }
    }
    M2C_FIELD(arg0, s32 *, 0x3000C) = (s32) ((-2 & *arg1) + 0x20);
    flushbus();
    var_s0_2 = 0;
loop_11:
    temp_a1_2 = M2C_FIELD(arg0, s32 *, 0x30008);
    temp_a2 = (-2 & *arg1) + 0x20;
    if (temp_a1_2 != temp_a2) {
        us_delay(0xA, (u16) temp_a1_2, temp_a2);
        var_s0_2 += 1;
        if (var_s0_2 < 0x4E20) {
            goto loop_11;
        }
    }
}
