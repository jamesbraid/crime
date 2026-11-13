? __glInitBuffer(void *);                           /* extern */
? __glLoseCurrentBuffer(s64);                       /* extern */
? __glMakeCurrentBuffer();                          /* extern */
? close(s32, s32, s32);                             /* extern */
s32 dmBufferAllocate(s32, void *);                  /* extern */
s32 dmBufferCreatePool(s32, void *);                /* extern */
? dmBufferDestroyPool(s32);                         /* extern */
? dmBufferFree(s32, s32);                           /* extern */
s32 dmBufferMapData(s32);                           /* extern */
s32 dmBufferSetPoolDefaults(s32, ?, s32, ?, ?);     /* extern */
? dmParamsCreate(void *, s32, ?, void *);           /* extern */
? dmParamsDestroy(s32);                             /* extern */
void *gfxmapfile(s32, s32, void *);                 /* extern */
s32 open(s32, ?);                                   /* extern */
? sub_0da40000(s64);                                /* extern */
s32 vice_alloc(s32, s32);                           /* extern */
? vice_dmbuf_requirements(s32);                     /* extern */
? vice_dmbuf_settlb(s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
void *vice_etc_dramp(s32);                          /* extern */
s32 vice_gfxfile(void *);                           /* extern */
? vice_loadmspcode(s64, void *, void *, s32);       /* extern */
s32 vice_mmap(s32, s32, s32);                       /* extern */
? vice_msp_code_to_etc(s64, ?, ?, s32, ?, void *, s64); /* extern */
s32 vice_open_and_setetc(void *);                   /* extern */
? vice_put(s32, void *);                            /* extern */
extern ? PickRGBA;
extern ? StoreSPBuffRGBA;
extern ? StoreSPBuffRed;
extern ? __glCrmDumpSPBuffSpan;
extern ? __glCrmDumpSPBuffSpanRed;
extern ? __glCrmFetchSPBuffRed;
extern ? __glCrmReadSPBuffColor;
extern ? __glCrmReadSPBuffRed;
extern ? __glReadSpan;
extern ? glVasmFile;

void __viceMapSPBufCode(s64 arg0, void *arg1, s32 arg2, void *arg3, s64 arg4) {
    s32 sp0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s4_4;
    s32 temp_s4_5;
    s32 temp_s4_6;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 var_s1;
    s32 var_v0_2;
    s32 var_v0_3;
    u32 temp_s4;
    u32 temp_s5;
    void **temp_s1;
    void **temp_s1_2;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *var_s0;
    void *var_v0;

    sp0 = 0;
    temp_s4 = arg3->unk724;
    temp_s5 = arg3->unk728;
    temp_s0 = arg1 + (arg1->unk1004 * 4) + 4;
    if (arg3->unk700 & 2) {
        if (arg2 != 0) {
            var_s1 = open(vice_gfxfile(sub_0da40000 + 0x23C8), 0);
            temp_a1 = vice_gfxfile(sub_0da40000 + 0x23C8);
            unksp28 = arg4;
            var_v0 = gfxmapfile(var_s1, temp_a1, sp);
        } else {
            var_s1 = open(vice_gfxfile(sub_0da40000 + 0x23E0), 0);
            temp_a1_2 = vice_gfxfile(sub_0da40000 + 0x23E0);
            unksp28 = arg4;
            var_v0 = gfxmapfile(var_s1, temp_a1_2, sp);
        }
        vice_loadmspcode(arg0, var_v0, temp_s0, sp0);
        temp_t8 = var_v0->unk8 + arg1->unk1004;
        arg1->unk1004 = temp_t8;
        var_s0 = arg1 + (temp_t8 * 4) + 4;
        close(var_s1);
        if (temp_s4 != 0x302) {
            goto block_4;
        }
        if (temp_s5 == 0x302) {
            var_v0_2 = 0x14;
        } else {
block_4:
            if (temp_s4 >= 0x304U) {
                if (temp_s4 < 0x305U) {
                    var_v0_3 = 0xF;
                } else {
                    temp_a0 = temp_s4 < 0x307U;
                    if (temp_a0 == 0) {
                        if (temp_s4 < 0x308U) {
                            var_v0_3 = 9;
                        } else {
                            var_v0_3 = ((temp_s4 ^ 0x308) == 0) ? 0x13 : 0;
                        }
                    } else if (temp_s4 >= 0x306U) {
                        var_v0_3 = (temp_a0 == 0) ? 0 : 7;
                    } else {
                        var_v0_3 = ((temp_s4 ^ 0x305) == 0) ? 0x11 : 0;
                    }
                }
            } else if (temp_s4 >= 0x302U) {
                if (temp_s4 < 0x303U) {
                    var_v0_3 = 0xB;
                } else {
                    var_v0_3 = ((temp_s4 ^ 0x303) == 0) ? 0xD : 0;
                }
            } else {
                var_v0_3 = 3;
                if (temp_s4 != 0) {
                    var_v0_3 = (temp_s4 >= 2U) ? 0 : 5;
                }
            }
            sp0 = 0;
            temp_s1 = &glVasmFile + (var_v0_3 * 4);
            temp_s4_2 = open(vice_gfxfile(*temp_s1), 0);
            temp_v0 = gfxmapfile(temp_s4_2, vice_gfxfile(*temp_s1), sp);
            vice_loadmspcode(arg0, temp_v0, var_s0, sp0);
            temp_t8_2 = temp_v0->unk8 + arg1->unk1004;
            arg1->unk1004 = temp_t8_2;
            var_s0 = arg1 + (temp_t8_2 * 4) + 4;
            close(temp_s4_2);
            if (temp_s5 >= 0x302U) {
                if (temp_s5 < 0x303U) {
                    var_v0_2 = 0xC;
                } else if (temp_s5 >= 0x304U) {
                    var_v0_2 = 0x10;
                    if (temp_s5 < 0x305U) {

                    } else {
                        var_v0_2 = ((temp_s5 ^ 0x305) == 0) ? 0x12 : 0;
                    }
                } else {
                    var_v0_2 = ((temp_s5 ^ 0x303) == 0) ? 0xE : 0;
                }
            } else if (temp_s5 >= 0x300U) {
                if (temp_s5 < 0x301U) {
                    var_v0_2 = 8;
                } else {
                    var_v0_2 = ((temp_s5 ^ 0x301) == 0) ? 0xA : 0;
                }
            } else {
                var_v0_2 = 4;
                if (temp_s5 != 0) {
                    var_v0_2 = (temp_s5 >= 2U) ? 0 : 6;
                }
            }
        }
        sp0 = 0;
        temp_s1_2 = &glVasmFile + (var_v0_2 * 4);
        temp_s4_3 = open(vice_gfxfile(*temp_s1_2), 0);
        temp_v0_2 = gfxmapfile(temp_s4_3, vice_gfxfile(*temp_s1_2), sp);
        vice_loadmspcode(arg0, temp_v0_2, var_s0, sp0);
        temp_t8_3 = temp_v0_2->unk8 + arg1->unk1004;
        arg1->unk1004 = temp_t8_3;
        close(temp_s4_3);
        sp0 = 0;
        temp_s4_4 = open(vice_gfxfile(sub_0da40000 + 0x23F0), 0);
        temp_v0_3 = gfxmapfile(temp_s4_4, vice_gfxfile(sub_0da40000 + 0x23F0), sp);
        vice_loadmspcode(arg0, temp_v0_3, arg1 + (temp_t8_3 * 4) + 4, sp0);
        temp_t8_4 = temp_v0_3->unk8 + arg1->unk1004;
        arg1->unk1004 = temp_t8_4;
        close(temp_s4_4);
        sp0 = 0;
        temp_s4_5 = open(vice_gfxfile(sub_0da40000 + 0x2400), 0);
        temp_v0_4 = gfxmapfile(temp_s4_5, vice_gfxfile(sub_0da40000 + 0x2400), sp);
        vice_loadmspcode(arg0, temp_v0_4, arg1 + (temp_t8_4 * 4) + 4, sp0);
        temp_a2 = arg1->unk1004;
        temp_a1_3 = temp_v0_4->unk8 + temp_a2;
        arg1->unk1004 = temp_a1_3;
        close(temp_s4_5, temp_a1_3, temp_a2);
    } else {
        unksp28 = arg4;
        temp_s4_6 = open(vice_gfxfile(sub_0da40000 + 0x23B8), 0);
        temp_v0_5 = gfxmapfile(temp_s4_6, vice_gfxfile(sub_0da40000 + 0x23B8), sp);
        vice_loadmspcode(arg0, temp_v0_5, temp_s0, sp0);
        temp_a2_2 = arg1->unk1004;
        temp_a1_4 = temp_v0_5->unk8 + temp_a2_2;
        arg1->unk1004 = temp_a1_4;
        close(temp_s4_6, temp_a1_4, temp_a2_2);
    }
    vice_msp_code_to_etc(arg0, 0x2000, 0x2000, arg1->unk1004 * 4, 0, arg1 + 4, unksp28);
}

void SPbufFreeTiles(void *arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;

    temp_a2 = arg0->unk1C;
    if (temp_a2 != 0) {
        dmBufferFree(temp_a2, temp_a2);
    }
    temp_a0 = arg0->unk14;
    if (temp_a0 != 0) {
        dmBufferDestroyPool(temp_a0);
    }
    temp_a0_2 = arg0->unk18;
    if (temp_a0_2 != 0) {
        dmParamsDestroy(temp_a0_2);
    }
    arg0->unk18 = 0;
    arg0->unk14 = 0;
    arg0->unk1C = 0;
}

void SPbuffFree(void *arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    temp_v0 = arg0->unk4;
    sp10 = (s64) temp_v0;
    sp0 = arg1;
    sp8 = (s64) arg0;
    if (temp_v0 == 0) {
        return;
    }
    __viceMapSPBufCode(sp10);
    sub_0da40000(sp10);
    sp8->unk4 = 0;
}

s32 __viceAllocSPbuf(void *arg0, void *arg1, s64 arg2, s64 arg3) {
    s64 sp0;
    s32 temp_lo;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_s1;
    void *temp_a7;
    void *temp_s0;

    temp_lo = arg2 * arg3;
    temp_a7 = arg0 + 0x10000;
    temp_s0 = arg0->unk80FC;
    if (arg0->unkCBC != 0x10) {
        temp_t9 = (temp_lo * 2) + 0xFFFF;
        sp0 = (s64) temp_a7;
        var_s1 = (s32) ((temp_t9 >= 0) ? temp_t9 : (temp_t9 + 0xFFFF)) >> 0x10;
    } else {
        temp_t9_2 = (temp_lo * 8) + 0xFFFF;
        sp0 = (s64) temp_a7;
        var_s1 = (s32) ((temp_t9_2 >= 0) ? temp_t9_2 : (temp_t9_2 + 0xFFFF)) >> 0x10;
    }
    temp_s0->unk24 = var_s1;
    temp_s0->unk4 = (s32) (var_s1 << 0x10);
    dmParamsCreate(temp_s0 + 0x18, temp_lo, 0xFFFF, temp_a7);
    if ((dmBufferSetPoolDefaults(temp_s0->unk18, 1, temp_s0->unk4, 0, 1) != 0) || (vice_dmbuf_requirements(temp_s0->unk18), (dmBufferCreatePool(temp_s0->unk18, temp_s0 + 0x14) != 0))) {
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __viceMapSPBufCode((s64) temp_s0);
        temp_v0 = vice_alloc(temp_s0->unk28, var_s1);
        temp_s0->unk1C = temp_v0;
        temp_v0_2 = vice_mmap(temp_s0->unk28, temp_v0, var_s1);
        temp_s0->unk0 = temp_v0_2;
        arg1->unk10 = temp_v0_2;
        return 0;
    }
    temp_s0->unk24 = var_s1;
    if (dmBufferAllocate(temp_s0->unk14, temp_s0 + 0x1C) == 0) {
        temp_v0_3 = dmBufferMapData(temp_s0->unk1C);
        temp_s0->unk0 = temp_v0_3;
        arg1->unk10 = temp_v0_3;
        sp0->unk-7F00 = (u8) (sp0->unk-7F00 + 1);
        return 1;
    }
    __viceMapSPBufCode((s64) temp_s0);
    temp_v0 = vice_alloc(temp_s0->unk28, var_s1);
    temp_s0->unk1C = temp_v0;
    temp_v0_2 = vice_mmap(temp_s0->unk28, temp_v0, var_s1);
    temp_s0->unk0 = temp_v0_2;
    arg1->unk10 = temp_v0_2;
    return 0;
}

s32 __viceInit(void *arg0) {
    s64 sp0;
    s32 temp_v0_2;
    void *temp_s3;
    void *temp_v0;

    temp_v0 = arg0->unk7B0C->unk8(0x6C);
    temp_s3 = temp_v0;
    sp0 = (s64) (arg0 + 0x10000);
    arg0->unk80FC = temp_v0;
    temp_v0_2 = vice_open_and_setetc(sub_0da40000 + 0x2410);
    temp_s3->unk28 = temp_v0_2;
    if (temp_v0_2 >= 0) {
        sp0->unk-7F00 = 1;
        return 1;
    }
    arg0->unk14(arg0, sub_0da40000 + 0x2420);
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x10. */
void SPBuffMakeCurrent(void *arg0, s64 arg1, s64 arg2) {
    s32 *temp_a1;

    unksp8 = arg2;
    unksp10 = arg1;
    __glMakeCurrentBuffer();
    arg0->unk44->unk10 = (void *) (sub_0da40000 - 0x59C0);
    temp_a1 = *arg1;
    if (temp_a1 != NULL) {
        unksp8->unk80FC = temp_a1;
        arg0->unk10 = (s32) *temp_a1;
    }
}

void SPBuffLoseCurrent(void *arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;

    sp8 = arg1;
    sp0 = (s64) arg0->unk44;
    if (arg0->unk0 == 0) {
        return;
    }
    __glLoseCurrentBuffer(sp8);
    *sp0 = (s32) sp8->unk80FC;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x1040, 0x1044, 0x1048, 0x104c, 0x1050, 0x1054, 0x1058, 0x105c, 0x1060, 0x1064, 0x1068, 0x106c, 0x1070, 0x1074, 0x1078, 0x107c, 0x10a8, 0x10ac], gap at: 0x1088. */
s32 viceCopySPBuffer(void *arg0, void *arg1) {
    s64 sp1038;
    s64 sp1030;
    s64 sp1028;
    s64 sp1020;
    s64 sp1018;
    s32 sp1010;
    s32 sp100C;
    s32 sp1008;
    f32 temp_f4;
    f32 temp_f5;
    f64 temp_f4_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_f0;
    s32 temp_f27;
    s32 temp_f2;
    s32 temp_f31;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s1_2;
    s32 temp_s3_2;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s3;
    s32 var_s5;
    s32 var_s8;
    s32 var_v0_2;
    s64 temp_t2;
    s64 temp_v0_2;
    s64 var_a7;
    s64 var_s6;
    s64 var_v0;
    u32 temp_a3_2;
    u32 temp_a4_2;
    u32 temp_a4_3;
    u32 temp_s1;
    void *temp_a3;
    void *temp_a5_2;
    void *temp_s0;
    void *temp_s3;
    void *temp_s4;
    void *temp_v0;
    void *temp_v0_3;

    temp_s5 = arg0->unkE78;
    temp_s3 = arg0->unk7E2C;
    temp_f5 = (f32) (arg0->unkE50 + temp_s5);
    temp_f4 = (f32) arg0->unkE4C;
    temp_s0 = arg0->unk80FC;
    temp_a7 = temp_s0->unk28;
    temp_f2 = (s32) (arg1->unkBC - temp_f4);
    temp_s0->unk64 = 0x8000;
    temp_s0->unk3C = 1;
    temp_s0->unk68 = 0x30;
    var_s5 = (s32) (-1.0f + (temp_f5 - arg1->unkC0));
    temp_a5 = arg1->unkAC;
    temp_a3 = arg0->unk7E2C;
    var_s1 = (s32) (((f32) temp_s3->unk8 * (-1.0f + (temp_f5 - arg0->unk174))) / (f32) temp_s5);
    temp_f0 = (s32) (((f32) temp_s3->unk4 * (arg0->unk170 - temp_f4)) / (f32) arg0->unkE74);
    temp_a0 = temp_a3->unk4;
    sp1020 = (s64) temp_a5;
    sp1038 = (s64) arg1->unkA8;
    temp_s4 = temp_s0 + 0x2C;
    sp1028 = (s64) temp_a3->unk8;
    sp1030 = (s64) temp_a0;
    temp_s7 = (arg0->unkCBC != 0x10) ? 2 : 8;
    if ((temp_s0->unk8 == temp_a0) & (((var_s5 == temp_f2) == var_s1) != temp_f0)) {
        __viceMapSPBufCode((s64) temp_a7, sp, 0, arg0, (s64) temp_s4, temp_a5, 0x8000, temp_a7);
        temp_t8 = (temp_s0->unk24 * 2) + 0x3E;
        temp_hi = MULTU_HI(temp_t8, ((0x1041 << 0x14) | 0x4105));
        temp_s1 = (u32) (temp_hi + ((u32) (temp_t8 - temp_hi) >> 1)) >> 5;
        temp_v0 = vice_etc_dramp(temp_s0->unk28);
        temp_v0->unk0 = 0x800000;
        temp_v0->unk10 = (s32) (((s64) ((s64) (s32) arg0->unk7824 << 0x30) >> 0x30) | ((s32) arg0->unk7820 << 0x10));
        temp_v0->unk14 = (s32) (((s64) ((s64) (s32) arg0->unk7848 << 0x30) >> 0x30) | ((s32) arg0->unk7828 << 0x10));
        temp_v0->unk18 = (s32) (((s64) ((s64) (s32) arg0->unk7824 << 0x30) >> 0x30) | ((s32) arg0->unk7820 << 0x10));
        temp_v0->unk1C = (s32) (((s64) ((s64) (s32) arg0->unk7848 << 0x30) >> 0x30) | ((s32) arg0->unk7828 << 0x10));
        if ((s32) temp_s1 >= 2) {
            temp_v0_2 = temp_s1 - 1;
            var_s1_2 = 0;
            if (temp_v0_2 > 0) {
                sp1018 = temp_v0_2;
                do {
                    temp_v0->unk4 = 0x9F0000;
                    temp_v0->unk8 = (s32) (0x9F0000 - temp_v0->unk0);
                    vice_dmbuf_settlb(temp_s0->unk28, 0, temp_s0->unk1C, var_s1_2, 0x1F);
                    vice_dmbuf_settlb(temp_s0->unk28, 0x1F, temp_s0->unk1C, var_s1_2, 0x1F);
                    vice_put(temp_s0->unk28, temp_s4);
                    var_s1_2 += 0x1F;
                    var_v0 = sp1018;
                } while (var_s1_2 != (temp_v0_2 * 0x1F));
            } else {
                var_v0 = 0;
            }
            temp_t9 = temp_s0->unk4;
            temp_a3_2 = (u32) temp_t9 >> 0x1F;
            temp_a4 = (s32) MULTU_HI(((temp_a3_2 == 0) ? temp_t9 : -temp_t9), ((0x8208 << 0x10) | 0x2083)) >> 0x14;
            temp_s3_2 = temp_s0->unk24;
            temp_hi_2 = MULTU_HI(temp_s3_2, ((0x8421 << 0x11) | 0x1085));
            temp_t9_2 = temp_t9 - (((temp_a3_2 == 0) ? temp_a4 : -temp_a4) * 0x1F8000);
            sp100C = temp_t9_2;
            sp1008 = temp_t9_2;
            var_s3 = temp_s3_2 - (((u32) (temp_hi_2 + ((u32) (temp_s3_2 - temp_hi_2) >> 1)) >> 4) * 0x1F);
            sp1010 = var_s3;
        } else {
            var_s3 = sp1014;
            var_v0 = 0;
        }
        temp_a2 = temp_s0->unk1C;
        temp_a7_2 = temp_s0->unk28;
        temp_s1_2 = var_v0 * 0x1F;
        if (arg0->unk7E2C->unk8 >= temp_s0->unkC) {
            vice_dmbuf_settlb(temp_a7_2, 0, temp_a2, temp_s1_2, var_s3);
            vice_dmbuf_settlb(temp_s0->unk28, var_s3, temp_s0->unk1C, temp_s1_2, var_s3);
            temp_v0->unk8 = sp1008;
            temp_v0->unk4 = (s32) ((((var_s3 <= 0x1F) ? var_s3 : 0x1F) << 0x10) + 0x800000);
        } else {
            vice_dmbuf_settlb(temp_a7_2, 0, temp_a2, temp_s1_2, sp1010);
            vice_dmbuf_settlb(temp_s0->unk28, var_s3, temp_s0->unk1C, temp_s1_2, sp1010);
            temp_v0->unk8 = sp100C;
            temp_v0->unk4 = (s32) ((((sp1010 <= 0x1F) ? sp1010 : 0x1F) << 0x10) + 0x800000);
        }
        vice_put(temp_s0->unk28, temp_s4);
    } else {
        unksp10A0 = (s64) temp_f2;
        __viceMapSPBufCode((s64) temp_a7, sp, 1, arg0, (s64) temp_s4, temp_a5, 0x8000, temp_a7);
        temp_v0_3 = vice_etc_dramp(temp_s0->unk28);
        temp_v0_3->unk10 = (s32) (((s64) ((s64) (s32) arg0->unk7824 << 0x30) >> 0x30) | ((s32) arg0->unk7820 << 0x10));
        temp_v0_3->unk14 = (s32) (((s64) ((s64) (s32) arg0->unk7848 << 0x30) >> 0x30) | ((s32) arg0->unk7828 << 0x10));
        temp_v0_3->unk18 = (s32) (((s64) ((s64) (s32) arg0->unk7824 << 0x30) >> 0x30) | ((s32) arg0->unk7820 << 0x10));
        temp_v0_3->unk1C = (s32) (((s64) ((s64) (s32) arg0->unk7848 << 0x30) >> 0x30) | ((s32) arg0->unk7828 << 0x10));
        temp_a5_2 = arg0->unk7E2C;
        temp_a3_3 = temp_a5_2->unk4;
        temp_a2_2 = temp_s0->unk8;
        unksp1098 = (temp_a5_2->unk8 >= (var_s1 + sp1020)) ? ((sp1028 >= sp1020) ? sp1020 : sp1028) : (sp1028 - var_s1);
        var_a7 = unksp1098;
        temp_a0_2 = (temp_a2_2 >= temp_a3_3) ? (temp_a2_2 * temp_s7) : (temp_a3_3 * temp_s7);
        if (sp1038 < sp1030) {
            var_a2 = temp_s7 * sp1038;
        } else {
            var_a2 = sp1030 * temp_s7;
        }
        temp_v0_3->unk8 = var_a2;
        if (arg0->unk7E2C->unk4 < (temp_f0 + sp1038)) {
            var_a2 = temp_s7 * (sp1030 - temp_f0);
            temp_v0_3->unk8 = var_a2;
        }
        temp_f4_2 = (f64) temp_a0_2;
        temp_f27 = (s32) ((f64) 0x1F0000 / temp_f4_2);
        temp_v0_3->unkC = (s32) ((temp_s0->unk8 * temp_s7) - var_a2);
        var_v0_2 = (s32) ((f64) ((temp_f27 + unksp1098) - 1) / (f64) temp_f27);
        M2C_TRAP_IF(temp_a0_2 == 0);
        temp_v0_3->unk20 = (s32) ((arg0->unk7E2C->unk4 * temp_s7) - var_a2);
        var_a1 = temp_f27;
        M2C_TRAP_IF(temp_f27 == 0);
        if (var_v0_2 >= 2) {
            temp_f31 = (s32) ((f64) 0x1E0000 / temp_f4_2);
            var_a7 = (temp_f31 + var_a7) - 1;
            M2C_TRAP_IF(temp_a0_2 == 0);
            var_a1 = temp_f31;
            M2C_TRAP_IF(temp_f31 == 0);
            var_v0_2 = (s32) ((f64) var_a7 / (f64) temp_f31);
        }
        unksp1088 = (s64) arg0;
        unksp1090 = (s64) temp_f0;
        var_s6 = (unksp1098 < var_a1) ? unksp1098 : (s64) var_a1;
        if (var_v0_2 > 0) {
            var_s8 = 1;
            unksp1080 = var_v0_2 + 1;
            do {
                temp_lo = temp_s7 * (unksp10A0 + (temp_s0->unk8 * var_s5));
                temp_a3_4 = (s32) ((temp_lo >= 0) ? temp_lo : (temp_lo + 0xFFFF)) >> 0x10;
                temp_a6 = temp_a3_4 << 0x10;
                temp_a5_3 = (temp_lo - temp_a6) + 0x9F0000;
                temp_v0_3->unk0 = temp_a5_3;
                temp_a4_2 = temp_s0->unk24 - temp_a3_4;
                vice_dmbuf_settlb(temp_s0->unk28, 0x1F, temp_s0->unk1C, temp_a3_4, (s32) ((temp_a4_2 >= 0x20U) ? 0x1FU : temp_a4_2), temp_a5_3, temp_a6, (s32) var_a7);
                temp_lo_2 = temp_s7 * (unksp1090 + (unksp1088->unk7E2C->unk4 * var_s1));
                temp_a3_5 = (s32) ((temp_lo_2 >= 0) ? temp_lo_2 : (temp_lo_2 + 0xFFFF)) >> 0x10;
                temp_a6_2 = temp_lo_2 - (temp_a3_5 << 0x10);
                temp_a5_4 = temp_a6_2 + 0x800000;
                temp_v0_3->unk4 = temp_a5_4;
                temp_a4_3 = temp_s0->unk24 - temp_a3_5;
                temp_a7_3 = temp_a4_3 < 0x20U;
                vice_dmbuf_settlb(temp_s0->unk28, 0, temp_s0->unk1C, temp_a3_5, (s32) ((temp_a7_3 == 0) ? 0x1FU : temp_a4_3), temp_a5_4, temp_a6_2, temp_a7_3);
                temp_v0_3->unk24 = (s32) var_s6;
                vice_put(temp_s0->unk28, temp_s4);
                var_s1 += var_s6;
                temp_t3 = var_s8 * var_s6;
                var_s8 += 1;
                temp_t2 = unksp1098 - temp_t3;
                var_s5 += var_s6;
                var_a7 = (var_s6 >= temp_t2) ? temp_t2 : var_s6;
                var_s6 = var_a7;
            } while (var_s8 != unksp1080);
        }
    }
    return 1;
}

void ClearSPBuff(void *arg0) {
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a7;
    void *temp_a4;
    void *var_a3;

    temp_a4 = arg0->unk0;
    if ((temp_a4->unk80C0 != 0) && (temp_a4->unk7404 != temp_a4->unk740C) && (temp_a4->unk7408 != temp_a4->unk7410)) {
        var_a3 = arg0->unk10;
        if (arg0->unk8 > 0) {
            var_a7 = 0;
            temp_a5 = (((s64) (temp_a4->unk750 * temp_a4->unk7848) << 0) | ((s64) (temp_a4->unk74C * temp_a4->unk7828) << 0x10)) & 0xFFFF;
            temp_a6 = (((s64) (temp_a4->unk748 * (second half of f64)) << 0) | ((s64) ((second half of f64) * (second half of f64)) << 0x10)) & 0xFFFF;
            do {
                if (arg0->unk4 > 0) {
                    var_a2 = 0;
loop_7:
                    var_a3->unk4 = temp_a5;
                    var_a3->unk0 = temp_a6;
                    temp_a2 = var_a2 + 1;
                    var_a3 += 8;
                    if (temp_a2 < arg0->unk4) {
                        var_a3->unk4 = temp_a5;
                        var_a3->unk0 = temp_a6;
                        var_a2 = temp_a2 + 1;
                        var_a3 += 8;
                        if (var_a2 < arg0->unk4) {
                            goto loop_7;
                        }
                    }
                }
                var_a7 += 1;
            } while (var_a7 < arg0->unk8);
        }
    }
}

void ClearSPBuffRed(void *arg0) {
    s16 *var_a3;
    s16 temp_a5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 var_a2;
    s32 var_a6;
    void *temp_a4;

    temp_a4 = arg0->unk0;
    if ((temp_a4->unk80C0 != 0) && (temp_a4->unk7404 != temp_a4->unk740C) && (temp_a4->unk7408 != temp_a4->unk7410)) {
        var_a3 = arg0->unk10;
        temp_a5 = (s64) (temp_a4->unk744 * temp_a4->unk7820) << 0;
        if (arg0->unk8 > 0) {
            var_a6 = 0;
            do {
                if (arg0->unk4 > 0) {
                    var_a2 = 0;
loop_7:
                    *var_a3 = temp_a5;
                    temp_a2 = var_a2 + 1;
                    var_a3 += 2;
                    if (temp_a2 < arg0->unk4) {
                        *var_a3 = temp_a5;
                        temp_a2_2 = temp_a2 + 1;
                        var_a3 += 2;
                        if (temp_a2_2 < arg0->unk4) {
                            *var_a3 = temp_a5;
                            temp_a2_3 = temp_a2_2 + 1;
                            var_a3 += 2;
                            if (temp_a2_3 < arg0->unk4) {
                                *var_a3 = temp_a5;
                                var_a2 = temp_a2_3 + 1;
                                var_a3 += 2;
                                if (var_a2 < arg0->unk4) {
                                    goto loop_7;
                                }
                            }
                        }
                    }
                }
                var_a6 += 1;
            } while (var_a6 < arg0->unk8);
        }
    }
}

void __glCrmAllocSPBuff(void *arg0, s32 arg1, s32 arg2) {
    s64 sp28;
    s64 sp20;
    s32 var_a3;
    s32 var_a5;
    void *temp_s0;

    temp_s0 = arg0->unk0;
    var_a3 = arg2;
    var_a5 = arg1;
    arg0->unk8 = arg2;
    arg0->unk4 = arg1;
    arg0->unk1C = arg1;
    if (temp_s0->unk80FC == 0) {
        sp20 = (s64) arg2;
        sp28 = (s64) arg1;
        __viceInit(temp_s0, var_a3, var_a5);
        var_a5 = (s32) sp28;
        var_a3 = (s32) sp20;
    }
    __viceAllocSPbuf(temp_s0, arg0, (s64) var_a5, (s64) var_a3);
}

void __glInitSPBuff(void *arg0, void *arg2) {
    f32 var_f4;
    void *temp_v1;

    __glInitBuffer(arg2);
    arg0->unk40 = 0;
    arg0->unkB0 = &__glReadSpan;
    arg0->unkA0 = &PickRGBA;
    arg0->unk2C = (void *) (sub_0da40000 - 0x56D0);
    arg0->unk30 = (void *) (sub_0da40000 - 0x5640);
    temp_v1 = sub_0da40000 - 0x4AE0;
    arg0->unk34 = temp_v1;
    arg0->unk38 = temp_v1;
    if (arg2->unkCB8 != 0x10) {
        var_f4 = arg0->unk58;
    } else {
        arg0->unk64 = 0x7FFF;
        var_f4 = 32767.0f;
        arg0->unk48 = 0x7FFF;
        arg0->unk58 = 32767.0f;
    }
    arg0->unk88 = (f32) (1.0f / var_f4);
    if (arg2->unkCBC != 0x10) {
        arg0->unkB8 = &__glCrmDumpSPBuffSpanRed;
        arg0->unkA8 = &__glCrmFetchSPBuffRed;
        arg0->unkAC = &__glCrmReadSPBuffRed;
        arg0->unkA4 = &StoreSPBuffRed;
        arg0->unkD8 = (void *) (sub_0da40000 - 0x4BF0);
        return;
    }
    arg0->unkB8 = &__glCrmDumpSPBuffSpan;
    arg0->unkA8 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
    arg0->unkAC = &__glCrmReadSPBuffColor;
    arg0->unkA4 = &StoreSPBuffRGBA;
    arg0->unk94 = 0.00003051851f;
    arg0->unk90 = 0.00003051851f;
    arg0->unk8C = 0.00003051851f;
    arg0->unk80 = 32767.0f;
    arg0->unk60 = 32767.0f;
    arg0->unk84 = 0x7FFF;
    arg0->unk6C = 0x7FFF;
    arg0->unk68 = 0x7FFF;
    arg0->unk50 = 0x7FFF;
    arg0->unk4C = 0x7FFF;
    arg0->unk5C = 32767.0f;
    arg0->unkD8 = (void *) (sub_0da40000 - 0x4D20);
}
