? .L0d93aa10(s64, ?, f64);                          /* extern */
void *__glBeginLLoop(s64, s64, s64, s64, void *, ?); /* extern */
? __glInitAccum64(s64, void *);                     /* extern */
? __glInitBuffer();                                 /* extern */
? __glLoseCurrentBuffer(s64);                       /* extern */
? __glMakeCurrentBuffer();                          /* extern */
? __glSetError(?, s32, void *, s64, void *, ?);     /* extern */
? __glim_Accum(s64, void *, f64, void *, ?, ?, f64); /* extern */
? cacheflush(void *, ?, ?, s64, ?, s32, s32);       /* extern */
? crmDrawPixelsXfer(void *, s32 *);                 /* extern */
? crmReadPixelsXfer(s64, void *);                   /* extern */
s32 dmBufferAllocate(s32, void *);                  /* extern */
s32 dmBufferCreatePool(s32, void *);                /* extern */
? dmBufferDestroyPool(s32);                         /* extern */
? dmBufferFree(s32, s32, s64, s64, ?);              /* extern */
s32 dmBufferMapData(s32);                           /* extern */
s32 dmBufferSetPoolDefaults(s32, ?, s64, ?, ?, s32, s32, s32); /* extern */
? dmParamsCreate(s32);                              /* extern */
? dmParamsDestroy(s32);                             /* extern */
? fprintf(void *, void *);                          /* extern */
? strcat(void *, void *, s32);                      /* extern */
? sub_0d940000(s64, s64, s64);                      /* extern */
? vice_close(s32);                                  /* extern */
? vice_dmbuf_requirements(s32);                     /* extern */
? vice_dmbuf_settlb(s32, u32, s32, s32, u32, s32, ?, s32); /* extern */
void *vice_etc_dramp(s32);                          /* extern */
? vice_load_msp_code(s32, void *, void *, ?);       /* extern */
s32 vice_open_and_setetc(void *);                   /* extern */
? vice_put(s32, s64);                               /* extern */
void __glcrmim_Accum(s64 arg0, s64 fparg1, f64, s32, ?, f64); /* static */
extern ? __glCrmAllocAccum;
extern ? __iob;
extern f32 accShiftFactor;
extern ? sub_0da40000;

void *InitVICE(void *arg0) {
    s32 temp_v0_2;
    void *temp_v0;

    temp_v0 = arg0->unk7B0C->unk8(0x70);
    if (temp_v0 != NULL) {
        M2C_ERROR(/* unknown instruction: sdl $zero, ($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x7($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x8($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0xf($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x10($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x17($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x18($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x1f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x20($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x27($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x28($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x2f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x30($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x37($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x38($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x3f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x40($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x47($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x48($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x4f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x50($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x57($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x58($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x5f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x60($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x67($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x68($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x6f($v0) */);
        arg0->unk80F8 = temp_v0;
        temp_v0_2 = vice_open_and_setetc(&sub_0da40000 + 0x1830);
        temp_v0->unk0 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            strcat(sp, &sub_0da40000 + 0x1840, 0);
            strcat(sp, &sub_0da40000 + 0x1858);
            vice_load_msp_code(temp_v0->unk0, sp, temp_v0 + 0x30, 0);
            temp_v0->unk4 = 1;
            return temp_v0;
        }
        arg0->unk7B0C->unk14(temp_v0);
        arg0->unk80F8 = NULL;
        return NULL;
    }
    arg0->unk80F8 = NULL;
    return NULL;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x10. */
void AccumMakeCurrent(void *arg0, s64 arg1, s64 arg2) {
    void *temp_a1;

    unksp10 = arg2;
    unksp8 = arg1;
    __glMakeCurrentBuffer();
    arg0->unk44->unk10 = (void *) (sub_0d940000 - 0x6E50);
    temp_a1 = *arg1;
    unksp10->unk80F8 = temp_a1;
    if (temp_a1 != NULL) {
        arg0->unk10 = (s32) temp_a1->unk28;
    }
}

void AccumLoseCurrent(void *arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;

    sp8 = arg1;
    sp0 = (s64) arg0->unk44;
    if (arg0->unk0 == 0) {
        return;
    }
    __glLoseCurrentBuffer(sp8);
    *sp0 = (s32) sp8->unk80F8;
}

void AccumFreeTiles(void *arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a2;

    temp_a2 = arg0->unk18;
    if (temp_a2 != 0) {
        dmBufferFree(temp_a2, temp_a2);
    }
    temp_a0 = arg0->unk1C;
    if (temp_a0 != 0) {
        dmBufferFree(temp_a0);
    }
    temp_a0_2 = arg0->unk10;
    if (temp_a0_2 != 0) {
        dmBufferDestroyPool(temp_a0_2);
    }
    temp_a0_3 = arg0->unk14;
    if (temp_a0_3 != 0) {
        dmBufferDestroyPool(temp_a0_3);
    }
    temp_a0_4 = arg0->unk8;
    if (temp_a0_4 != 0) {
        dmParamsDestroy(temp_a0_4);
    }
    temp_a0_5 = arg0->unkC;
    if (temp_a0_5 != 0) {
        dmParamsDestroy(temp_a0_5);
    }
    arg0->unk2C = 0;
    arg0->unk28 = 0;
    arg0->unk24 = 0;
    arg0->unk20 = 0;
    arg0->unkC = 0;
    arg0->unk8 = 0;
    arg0->unk14 = 0;
    arg0->unk10 = 0;
    arg0->unk1C = 0;
    arg0->unk18 = 0;
}

void AccumFree(s32 *arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    temp_v0 = *arg0;
    sp10 = (s64) temp_v0;
    sp0 = arg1;
    sp8 = (s64) arg0;
    if (temp_v0 == 0) {
        return;
    }
    __glBeginLLoop(sp10);
    vice_close(*sp10);
    sp0->unk14(sp10);
    *sp8 = 0;
}

s32 AccumAlloc(void *arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s64 temp_a2_2;
    void *temp_s0;

    sp8 = arg1;
    temp_s0 = arg0->unk80F8;
    dmParamsCreate(temp_s0 + 8);
    dmParamsCreate(temp_s0 + 0xC);
    temp_a7 = arg0->unkE78;
    temp_a6 = arg0->unkE74;
    temp_a5 = (temp_a6 * temp_a7 * 8) + 0xFFFF;
    temp_a2 = (s32) ((temp_a5 >= 0) ? temp_a5 : (temp_a5 + 0xFFFF)) >> 0x10;
    sp10 = (s64) temp_a2;
    if (dmBufferSetPoolDefaults(temp_s0->unk8, 1, temp_a2 << 0x10, 0, 1, temp_a5, temp_a6, temp_a7) != 0) {
        goto block_1;
    }
    vice_dmbuf_requirements(temp_s0->unk8);
    if (dmBufferCreatePool(temp_s0->unk8, temp_s0 + 0x10) == 0) {
        temp_s0->unk20 = (s32) sp10;
        if (dmBufferAllocate(temp_s0->unk10, temp_s0 + 0x18) != 0) {
            fprintf(&__iob + 0x20, &sub_0da40000 + 0x1868);
            goto block_1;
        }
        temp_s0->unk28 = M2C_ERROR(/* Read from unset register $t9 */)(temp_s0->unk18);
        temp_a7_2 = (arg0->unkE74 * arg0->unkE78 * 4) + 0xFFFF;
        temp_a5_2 = (s32) ((temp_a7_2 >= 0) ? temp_a7_2 : (temp_a7_2 + 0xFFFF)) >> 0x10;
        temp_a6_2 = temp_a5_2 < 0x15;
        temp_a5_3 = (temp_a6_2 == 0) ? 0x15 : temp_a5_2;
        temp_s0->unk24 = temp_a5_3;
        temp_a2_2 = temp_a5_3 << 0x10;
        sp0 = temp_a2_2;
        if (dmBufferSetPoolDefaults(temp_s0->unkC, 1, temp_a2_2, 0, 1, temp_a5_3, temp_a6_2, 0x15) == 0) {
            vice_dmbuf_requirements(temp_s0->unkC);
            if ((dmBufferCreatePool(temp_s0->unkC, temp_s0 + 0x14) == 0) && (dmBufferAllocate(temp_s0->unk14, temp_s0 + 0x1C) == 0)) {
                temp_s0->unk2C = dmBufferMapData(temp_s0->unk1C);
                sp8->unk14 = (s32) sp0;
                sp8->unk10 = (s32) temp_s0->unk28;
                sp8->unk4 = (s32) arg0->unkE74;
                sp8->unk1C = (s32) arg0->unkE74;
                sp8->unk8 = (s32) arg0->unkE78;
                return 1;
            }
        }
        /* Duplicate return node #2. Try simplifying control flow for better match */
        return 0;
    }
block_1:
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x40, 0x44, 0x48, 0x4c], gap at: 0x28. */
void AccumResize(void **arg0, s64 arg1, s64 arg2) {
    s64 sp50;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s64 temp_a2;
    s64 var_a5;
    void *temp_s0;
    void *temp_t8;

    temp_t8 = *arg0;
    unksp38 = (s64) temp_t8;
    var_a5 = arg1 * arg2;
    unksp28 = arg2;
    temp_s0 = temp_t8->unk80F8;
    temp_a4 = (var_a5 * 8) + 0xFFFF;
    unksp20 = arg1;
    temp_a3 = temp_a4 < 0;
    unksp30 = (s64) arg0;
    temp_v1 = (s32) ((temp_a3 == 0) ? temp_a4 : (temp_a4 + 0xFFFF)) >> 0x10;
    sp8 = (s64) temp_v1;
    if ((u32) temp_s0->unk20 >= (u32) temp_v1) {
        goto block_1;
    }
    sp50 = var_a5;
    temp_s0->unk20 = (u32) sp8;
    dmBufferFree(temp_s0->unk18, temp_a3, sp8, var_a5, 0xFFFF);
    dmBufferDestroyPool(temp_s0->unk10);
    temp_a2 = sp8 << 0x10;
    sp0 = temp_a2;
    if (dmBufferSetPoolDefaults(temp_s0->unk8, 1, temp_a2, 0, 1) == 0) {
        vice_dmbuf_requirements(temp_s0->unk8);
        if ((dmBufferCreatePool(temp_s0->unk8, temp_s0 + 0x10) == 0) && (dmBufferAllocate(temp_s0->unk10, temp_s0 + 0x18) == 0)) {
            temp_v0 = dmBufferMapData(temp_s0->unk18);
            var_a5 = sp50;
            temp_s0->unk28 = temp_v0;
            unksp30->unk14 = (s32) sp0;
            unksp30->unk10 = temp_v0;
block_1:
            temp_v0_2 = (var_a5 * 4) + 0xFFFF;
            temp_ra = (s32) ((temp_v0_2 >= 0) ? temp_v0_2 : (temp_v0_2 + 0xFFFF)) >> 0x10;
            temp_ra_2 = (temp_ra >= 0x15) ? 0x15 : temp_ra;
            sp10 = (s64) temp_ra_2;
            if ((u32) temp_s0->unk24 < (u32) temp_ra_2) {
                temp_s0->unk24 = (u32) sp10;
                dmBufferFree(temp_s0->unk1C);
                dmBufferDestroyPool(temp_s0->unk14);
                if ((dmBufferSetPoolDefaults(temp_s0->unkC, 1, sp10 << 0x10, 0, 1) != 0) || (vice_dmbuf_requirements(temp_s0->unkC), (dmBufferCreatePool(temp_s0->unkC, temp_s0 + 0x14) != 0)) || (dmBufferAllocate(temp_s0->unk14, temp_s0 + 0x1C) != 0)) {
                    goto block_5;
                }
                temp_s0->unk2C = M2C_ERROR(/* Read from unset register $t9 */)(temp_s0->unk1C);
                /* Duplicate return node #7. Try simplifying control flow for better match */
                unksp30->unk8 = (s32) unksp28;
                unksp30->unk1C = (s32) unksp20;
                unksp30->unk4 = (s32) unksp20;
                return;
            }
            unksp30->unk8 = (s32) unksp28;
            unksp30->unk1C = (s32) unksp20;
            unksp30->unk4 = (s32) unksp20;
            return;
        }
    }
block_5:
    __glcrmim_Accum(unksp38, unksp30);
    sub_0d940000(unksp38 + 0x7A80, unksp20, unksp28);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x250, 0x254], gap at: 0x230. */
s32 AccumulateLoad(void **arg0, s64 arg2, f32 fparg1) {
    s64 sp1F8;
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    s32 sp64;
    u32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp50;
    f32 temp_f4;
    s32 temp_a6;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_f7;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_s8_2;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a7;
    u32 var_a4;
    void *temp_s0;
    void *temp_t8;
    void *temp_v0;

    temp_t8 = *arg0;
    temp_a6 = temp_t8->unk7404;
    temp_s8 = temp_t8->unkE4C;
    temp_s0 = temp_t8->unk80F8;
    temp_s3 = (temp_t8->unk740C - temp_s8) - (temp_a6 - temp_s8);
    temp_a5 = temp_s3 * 4;
    temp_a7 = temp_s0->unk24 << 0x10;
    unksp248 = (s64) temp_t8;
    temp_t8_2 = temp_t8->unkE50;
    var_s2 = temp_t8->unk7408 - temp_t8_2;
    temp_s8_2 = (temp_t8->unk7410 - temp_t8_2) - var_s2;
    var_a4 = temp_a7 / temp_a5;
    M2C_TRAP_IF(temp_a5 == 0);
    temp_f4 = accShiftFactor * fparg1;
    M2C_TRAP_IF(var_a4 == 0);
    if ((s32) ((f64) ((temp_s8_2 + var_a4) - 1) / (f64) var_a4) >= 2) {
        M2C_TRAP_IF(temp_a5 == 0);
        var_a4 = (u32) (temp_a7 + 0xFFFF0000) / temp_a5;
    }
    spA8 = temp_s3;
    spBC = (f32) temp_a6;
    sp58 = temp_s0->unk2C;
    sp50 = 0x1908;
    sp64 = 4;
    sp60 = temp_a5;
    sp5C = temp_s0->unk2C;
    unksp248->unk7E58 = 0;
    unksp248->unk7DCE = 0;
    unksp248->unk7DD8 = 0;
    var_s1 = (temp_s8_2 < (s32) var_a4) ? temp_s8_2 : (s32) var_a4;
    unksp248->unk7E28 = (s32) unksp248->unk2DF4;
    unksp248->unk7E24 = (s32) (((((((unksp248->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0x1176DC)->unk-5794 != 0) {
        return 0;
    }
    temp_f7 = (s32) ((f64) ((temp_s8_2 + var_a4) - 1) / (f64) var_a4);
    M2C_TRAP_IF(var_a4 == 0);
    if (temp_f7 > 0) {
        unksp240 = (s64) (temp_s0 + 0x30);
        sp1F8 = arg2;
        unksp228 = temp_f7 + 1;
        unksp230 = second half of f64;
        var_s4 = 1;
        unksp238 = (s64) (s32) ((f64) (temp_f4 - (f32) (s32) temp_f4) * 32768.0);
        do {
            spAC = var_s1;
            spC0 = (f32) ((unksp248->unkE50 + (unksp248->unkE78 - var_s2)) - 1);
            crmReadPixelsXfer(unksp248, sp);
            vice_dmbuf_settlb(temp_s0->unk0, 0U, temp_s0->unk1C, 0, temp_s0->unk24);
            temp_s5 = temp_s3 * var_s2 * 8;
            temp_t8_3 = (s32) ((temp_s5 >= 0) ? temp_s5 : (temp_s5 + 0xFFFF)) >> 0x10;
            temp_a4 = temp_s0->unk20 - temp_t8_3;
            vice_dmbuf_settlb(temp_s0->unk0, temp_s0->unk24, temp_s0->unk18, temp_t8_3, (temp_a4 >= 0x2BU) ? 0x2AU : temp_a4);
            temp_s0->unk68 = 0x8000;
            temp_s0->unk6C = 0x1C;
            temp_s0->unk40 = 1;
            temp_v0 = vice_etc_dramp(temp_s0->unk0);
            temp_v0->unkC = 0;
            temp_v0->unk4 = 0x800000;
            temp_v0->unk18 = (s32) unksp230;
            temp_v0->unk14 = (s32) unksp238;
            temp_v0->unk10 = (s32) sp1F8;
            temp_v0->unk0 = (s32) ((temp_s5 - (temp_t8_3 << 0x10)) + (temp_s0->unk24 << 0x10) + 0x800000);
            temp_v0->unk8 = (s32) (temp_s3 * var_s1 * 4);
            cacheflush(temp_v0, 0x24, 3, unksp230);
            vice_put(temp_s0->unk0, unksp240);
            temp_a7_2 = var_s4 * var_s1;
            var_s4 += 1;
            temp_a7_3 = temp_s8_2 - temp_a7_2;
            var_s2 += var_s1;
            var_s1 = (var_s1 >= temp_a7_3) ? temp_a7_3 : var_s1;
        } while (var_s4 != unksp228);
    }
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x50, 0x54], gap at: 0x38. */
s32 AddMultiply(void **arg0, s64 arg2, s32 arg7, f32 fparg1) {
    s64 sp0;
    f64 temp_f4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_f1;
    s32 temp_f3;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    u32 temp_a4;
    void *temp_at;
    void *temp_s0;
    void *temp_v0_2;

    var_a7 = arg7;
    temp_at = *arg0;
    temp_v0 = temp_at->unkE4C;
    temp_s3 = (temp_at->unk740C - temp_v0) - (temp_at->unk7404 - temp_v0);
    temp_a6 = temp_s3 * 8;
    temp_f4 = (f64) temp_a6;
    temp_t8 = temp_at->unkE50;
    temp_f1 = (s32) ((f64) 0x3F0000 / temp_f4);
    var_s2 = temp_at->unk7408 - temp_t8;
    temp_s8 = (temp_at->unk7410 - temp_t8) - var_s2;
    var_a5 = (s32) ((f64) (second half of f64) / (second half of f64));
    M2C_TRAP_IF(temp_a6 == 0);
    temp_s0 = temp_at->unk80F8;
    var_a4 = temp_f1;
    M2C_TRAP_IF(temp_f1 == 0);
    if (var_a5 >= 2) {
        temp_f3 = (s32) ((f64) 0x3E0000 / temp_f4);
        M2C_TRAP_IF(temp_a6 == 0);
        var_a4 = temp_f3;
        M2C_TRAP_IF(temp_f3 == 0);
        var_a5 = (s32) ((f64) (second half of f64) / (second half of f64));
    }
    var_s1 = (temp_s8 < var_a4) ? temp_s8 : var_a4;
    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0x11731C)->unk-5794 != 0) {
        return 0;
    }
    if (var_a5 > 0) {
        unksp48 = var_a5 + 1;
        unksp40 = temp_s0 + 0x30;
        sp0 = arg2;
        unksp30 = second half of f64;
        var_s4 = 1;
        unksp38 = (s64) (s32) ((f64) (fparg1 - (f32) (s32) fparg1) * 32768.0);
        do {
            temp_s5 = temp_s3 * var_s2 * 8;
            temp_t8_2 = (s32) ((temp_s5 >= 0) ? temp_s5 : (temp_s5 + 0xFFFF)) >> 0x10;
            temp_a4 = temp_s0->unk20 - temp_t8_2;
            temp_a5 = temp_a4 < 0x40U;
            vice_dmbuf_settlb(temp_s0->unk0, 0U, temp_s0->unk18, temp_t8_2, (temp_a5 == 0) ? 0x3FU : temp_a4, temp_a5, 0x3F, var_a7);
            temp_s0->unk68 = 0x8000;
            temp_s0->unk6C = 0x1C;
            temp_s0->unk40 = 1;
            temp_v0_2 = vice_etc_dramp(temp_s0->unk0);
            temp_v0_2->unkC = 0;
            temp_v0_2->unk4 = 0x800000;
            temp_v0_2->unk0 = (s32) ((temp_s5 - (temp_t8_2 << 0x10)) + 0x800000);
            temp_v0_2->unk18 = (s32) unksp30;
            temp_v0_2->unk14 = (s32) unksp38;
            temp_v0_2->unk10 = (s32) sp0;
            temp_v0_2->unk8 = (s32) (temp_s3 * var_s1 * 4);
            cacheflush(temp_v0_2, 0x24, 3, unksp30);
            vice_put(temp_s0->unk0, unksp40);
            temp_a7 = var_s4 * var_s1;
            var_s4 += 1;
            var_a7 = temp_s8 - temp_a7;
            var_s2 += var_s1;
            var_s1 = (var_s1 >= var_a7) ? var_a7 : var_s1;
        } while (var_s4 != unksp48);
    }
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x228, 0x22c, 0x268, 0x26c], gap at: 0x238. */
s32 Return(void **arg0, s64 arg2, f32 fparg1) {
    s64 sp200;
    s32 spE4;
    s32 spE0;
    s32 spD8;
    s32 spD4;
    s32 spB4;
    u32 sp18;
    s32 sp14;
    s32 sp8;
    u32 sp0;
    s32 temp_a6;
    s32 temp_f1;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_s2;
    s32 var_s4;
    s64 temp_t1;
    s64 var_s1;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a7;
    u32 var_a4;
    u8 var_t0;
    u8 var_t1;
    void *temp_s0;
    void *temp_s8;
    void *temp_v0;

    temp_s8 = *arg0;
    temp_a6 = temp_s8->unkE4C;
    temp_s0 = temp_s8->unk80F8;
    temp_s3 = (temp_s8->unk740C - temp_a6) - (temp_s8->unk7404 - temp_a6);
    temp_a5 = temp_s3 * 4;
    temp_a7 = temp_s0->unk24 << 0x10;
    temp_t8 = temp_s8->unkE50;
    var_s2 = temp_s8->unk7408 - temp_t8;
    var_a4 = temp_a7 / temp_a5;
    unksp250 = (temp_s8->unk7410 - temp_t8) - var_s2;
    var_t0 = temp_s8->unk7DCC;
    var_t1 = temp_s8->unk7DCA;
    sp0 = temp_s8->unk7D58;
    M2C_TRAP_IF(temp_a5 == 0);
    M2C_TRAP_IF(var_a4 == 0);
    if ((s32) ((f64) (second half of f64) / (second half of f64)) >= 2) {
        M2C_TRAP_IF(temp_a5 == 0);
        var_a4 = (u32) (temp_a7 + 0xFFFF0000) / temp_a5;
    }
    spD4 = temp_a6;
    spE0 = temp_s3;
    sp14 = temp_s0->unk2C;
    sp8 = 0x1908;
    sp18 = temp_a5;
    temp_s8->unk7DCC = 1U;
    temp_s8->unk7DCA = 0U;
    temp_s8->unk7E58 = 0;
    var_s1 = (unksp250 < (s32) var_a4) ? unksp250 : (s64) var_a4;
    temp_s8->unk7DE0 = 0;
    temp_s8->unk7DCE = 0;
    temp_s8->unk7DD8 = 0;
    temp_s8->unk7E2C = (s32) temp_s8->unk2DF0;
    temp_s8->unk7D58 = (u32) (((0x400000 | (((sp0 >> 7) & 1) << 7)) & ~0x78) | (((sp0 >> 3) & 0xF) * 8));
    temp_s8->unk7E24 = (s32) (((((((temp_s8->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0x11702C)->unk-5794 != 0) {
        return 0;
    }
    temp_f1 = (s32) ((f64) ((unksp250 + var_a4) - 1) / (f64) var_a4);
    M2C_TRAP_IF(var_a4 == 0);
    if (temp_f1 > 0) {
        unksp238 = temp_f1 + 1;
        unksp248 = (s64) (temp_s0 + 0x30);
        unksp258 = (s64) var_t1;
        unksp260 = (s64) var_t0;
        sp200 = arg2;
        unksp230 = second half of f64;
        var_s4 = 1;
        unksp240 = (s64) (s32) ((f64) (fparg1 - (f32) (s32) fparg1) * 32768.0);
        do {
            vice_dmbuf_settlb(temp_s0->unk0, 0U, temp_s0->unk1C, 0, temp_s0->unk24);
            temp_s5 = temp_s3 * var_s2 * 8;
            temp_t8_2 = (s32) ((temp_s5 >= 0) ? temp_s5 : (temp_s5 + 0xFFFF)) >> 0x10;
            temp_a4 = temp_s0->unk20 - temp_t8_2;
            vice_dmbuf_settlb(temp_s0->unk0, temp_s0->unk24, temp_s0->unk18, temp_t8_2, (temp_a4 >= 0x2BU) ? 0x2AU : temp_a4);
            temp_s0->unk68 = 0x8000;
            temp_s0->unk6C = 0x1C;
            temp_s0->unk40 = 1;
            temp_v0 = vice_etc_dramp(temp_s0->unk0);
            temp_v0->unkC = 0;
            temp_v0->unk4 = 0x800000;
            temp_v0->unk18 = (s32) unksp230;
            temp_v0->unk14 = (s32) unksp240;
            temp_v0->unk10 = (s32) sp200;
            temp_v0->unk0 = (s32) ((temp_s5 - (temp_t8_2 << 0x10)) + (temp_s0->unk24 << 0x10) + 0x800000);
            temp_v0->unk8 = (s32) (temp_s3 * var_s1 * 4);
            cacheflush(temp_v0, 0x24, 3, unksp230);
            vice_put(temp_s0->unk0, unksp248);
            spB4 = (s32) var_s1;
            spE4 = (s32) var_s1;
            spD8 = (temp_s8->unkE50 + (temp_s8->unkE78 - var_s2)) - 1;
            crmDrawPixelsXfer(temp_s8, &sp8);
            temp_t2 = var_s4 * var_s1;
            var_s4 += 1;
            temp_t1 = unksp250 - temp_t2;
            var_s2 += var_s1;
            var_s1 = (var_s1 >= temp_t1) ? temp_t1 : var_s1;
        } while (var_s4 != unksp238);
        var_t0 = (u8) unksp260;
        var_t1 = (u8) unksp258;
    }
    temp_s8->unk7DCC = var_t0;
    temp_s8->unk7DCA = var_t1;
    temp_s8->unk7D58 = sp0;
    if (temp_s8->unk7D5C != sp0) {
        temp_s8->unk7DB8->unk2018 = sp0;
        temp_s8->unk7DBC->unk2018 = (u32) temp_s8->unk7D58;
        temp_s8->unk7D5C = (u32) temp_s8->unk7D58;
    }
    return 1;
}

void AccumPick(void) {

}

void SlowSoftClear(void *arg0) {
    s64 sp30;
    s64 sp28;
    s64 sp0;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_f2;
    s32 temp_f3;
    s32 temp_s1;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_s0;
    s32 var_t0;
    s64 temp_a0;
    void *temp_s3;
    void *var_a1_2;
    void *var_a7;
    void *var_t1;

    temp_s3 = arg0->unk0;
    var_a1 = arg0->unk10;
    temp_s1 = temp_s3->unk7410;
    var_s0 = temp_s3->unk7408;
    temp_t0 = temp_s3->unk7404;
    var_a7 = temp_s3;
    if (var_a1 == 0) {
        sp30 = (s64) temp_t0;
        arg0->unk84(temp_s3, arg0, var_a7);
        var_a1 = arg0->unk10;
        var_a7 = arg0->unk0;
    }
    temp_t8 = temp_s3->unkE50;
    temp_t3 = arg0->unk1C;
    temp_t2 = temp_s3->unk740C - temp_t0;
    temp_a0 = temp_t2 & 3;
    temp_t2_2 = temp_t2 >> 2;
    temp_f3 = (s32) (arg0->unk54 * (temp_s3->unk67C * temp_s3->unk7848));
    sp0 = (s64) -temp_t3;
    temp_f2 = (s32) (arg0->unk50 * (temp_s3->unk678 * temp_s3->unk7828));
    temp_f1 = (s32) (arg0->unk4C * (temp_s3->unk674 * temp_s3->unk7824));
    temp_f0 = (s32) (arg0->unk48 * (temp_s3->unk670 * temp_s3->unk7820));
    var_t1 = (var_a1 + (temp_t3 * ((temp_t8 + ((temp_s3->unkE78 + temp_t8) - var_s0)) - var_a7->unkE50) * 8) + (temp_t0 * 8)) - (var_a7->unkE4C * 8);
    if (var_s0 < temp_s1) {
        temp_t3_2 = temp_a0 - 1;
        sp28 = temp_a0;
        temp_t8_2 = temp_t2_2 - 1;
        var_t0 = temp_t2_2 & 3;
loop_12:
        var_a1_2 = var_t1;
        var_a0 = temp_t8_2;
        if (temp_t8_2 >= 0) {
            if (var_t0 == 0) {

            } else {
                do {
                    var_a1_2 += 0x20;
                    var_a1_2->unk-2 = (s16) temp_f3;
                    var_a1_2->unk-4 = (s16) temp_f2;
                    var_a1_2->unk-6 = (s16) temp_f1;
                    var_a1_2->unk-8 = (s16) temp_f0;
                    var_a1_2->unk-A = (s16) temp_f3;
                    var_a1_2->unk-C = (s16) temp_f2;
                    var_a1_2->unk-E = (s16) temp_f1;
                    var_a1_2->unk-10 = (s16) temp_f0;
                    var_a1_2->unk-12 = (s16) temp_f3;
                    var_a1_2->unk-14 = (s16) temp_f2;
                    var_a1_2->unk-16 = (s16) temp_f1;
                    var_a1_2->unk-18 = (s16) temp_f0;
                    var_a1_2->unk-1A = (s16) temp_f3;
                    var_a1_2->unk-1C = (s16) temp_f2;
                    var_t0 -= 1;
                    var_a1_2->unk-1E = (s16) temp_f1;
                    var_a0 -= 1;
                    var_a1_2->unk-20 = (s16) temp_f0;
                } while (var_t0 != 0);
            }
            if ((temp_t2_2 >> 2) != 0) {
                do {
                    var_a1_2 += 0x80;
                    var_a1_2->unk-2 = (s16) temp_f3;
                    var_a1_2->unk-4 = (s16) temp_f2;
                    var_a1_2->unk-6 = (s16) temp_f1;
                    var_a1_2->unk-8 = (s16) temp_f0;
                    var_a1_2->unk-A = (s16) temp_f3;
                    var_a1_2->unk-C = (s16) temp_f2;
                    var_a1_2->unk-E = (s16) temp_f1;
                    var_a1_2->unk-10 = (s16) temp_f0;
                    var_a1_2->unk-12 = (s16) temp_f3;
                    var_a1_2->unk-14 = (s16) temp_f2;
                    var_a1_2->unk-16 = (s16) temp_f1;
                    var_a1_2->unk-18 = (s16) temp_f0;
                    var_a1_2->unk-1A = (s16) temp_f3;
                    var_a1_2->unk-1C = (s16) temp_f2;
                    var_a1_2->unk-1E = (s16) temp_f1;
                    var_a1_2->unk-20 = (s16) temp_f0;
                    var_a1_2->unk-22 = (s16) temp_f3;
                    var_a1_2->unk-24 = (s16) temp_f2;
                    var_a1_2->unk-26 = (s16) temp_f1;
                    var_a1_2->unk-28 = (s16) temp_f0;
                    var_a1_2->unk-2A = (s16) temp_f3;
                    var_a1_2->unk-2C = (s16) temp_f2;
                    var_a1_2->unk-2E = (s16) temp_f1;
                    var_a1_2->unk-30 = (s16) temp_f0;
                    var_a1_2->unk-32 = (s16) temp_f3;
                    var_a1_2->unk-34 = (s16) temp_f2;
                    var_a1_2->unk-36 = (s16) temp_f1;
                    var_a1_2->unk-38 = (s16) temp_f0;
                    var_a1_2->unk-3A = (s16) temp_f3;
                    var_a1_2->unk-3C = (s16) temp_f2;
                    var_a1_2->unk-3E = (s16) temp_f1;
                    var_a1_2->unk-40 = (s16) temp_f0;
                    var_a1_2->unk-42 = (s16) temp_f3;
                    var_a1_2->unk-44 = (s16) temp_f2;
                    var_a1_2->unk-46 = (s16) temp_f1;
                    var_a1_2->unk-48 = (s16) temp_f0;
                    var_a1_2->unk-4A = (s16) temp_f3;
                    var_a1_2->unk-4C = (s16) temp_f2;
                    var_a1_2->unk-4E = (s16) temp_f1;
                    var_a1_2->unk-50 = (s16) temp_f0;
                    var_a1_2->unk-52 = (s16) temp_f3;
                    var_a1_2->unk-54 = (s16) temp_f2;
                    var_a1_2->unk-56 = (s16) temp_f1;
                    var_a1_2->unk-58 = (s16) temp_f0;
                    var_a1_2->unk-5A = (s16) temp_f3;
                    var_a1_2->unk-5C = (s16) temp_f2;
                    var_a1_2->unk-5E = (s16) temp_f1;
                    var_a1_2->unk-60 = (s16) temp_f0;
                    var_a1_2->unk-62 = (s16) temp_f3;
                    var_a1_2->unk-64 = (s16) temp_f2;
                    var_a1_2->unk-66 = (s16) temp_f1;
                    var_a1_2->unk-68 = (s16) temp_f0;
                    var_a1_2->unk-6A = (s16) temp_f3;
                    var_a1_2->unk-6C = (s16) temp_f2;
                    var_a1_2->unk-6E = (s16) temp_f1;
                    var_a1_2->unk-70 = (s16) temp_f0;
                    var_a1_2->unk-72 = (s16) temp_f3;
                    var_a1_2->unk-74 = (s16) temp_f2;
                    var_a1_2->unk-76 = (s16) temp_f1;
                    var_a1_2->unk-78 = (s16) temp_f0;
                    var_a1_2->unk-7A = (s16) temp_f3;
                    var_a1_2->unk-7C = (s16) temp_f2;
                    var_a0 -= 4;
                    var_a1_2->unk-7E = (s16) temp_f1;
                    var_a1_2->unk-80 = (s16) temp_f0;
                } while (var_a0 != -1);
            }
        }
        var_s0 += 1;
        var_t0 = temp_t2_2 & 3;
        var_a0_2 = temp_t3_2;
        if (temp_t3_2 >= 0) {
            do {
                var_a1_2 += 8;
                var_a1_2->unk-2 = (s16) temp_f3;
                var_a1_2->unk-4 = (s16) temp_f2;
                var_a0_2 -= 1;
                var_a1_2->unk-6 = (s16) temp_f1;
                var_a1_2->unk-8 = (s16) temp_f0;
            } while (var_a0_2 != -1);
        }
        var_t1 += sp0 * 8;
        if (var_s0 != temp_s1) {
            goto loop_12;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x58, 0x5c, 0x60, 0x64], gap at: 0x48. */
void AccumClear(void **arg0) {
    s64 sp80;
    s64 sp8;
    s64 sp0;
    f64 temp_f4;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_f1;
    s32 temp_f3;
    s32 temp_f7;
    s32 temp_s3;
    s32 temp_s5_2;
    s32 temp_s8;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s64 temp_a5;
    u32 temp_a4;
    void *temp_s5;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s0;

    temp_s5 = *arg0;
    temp_s3 = temp_s5->unk740C - temp_s5->unk7404;
    temp_a5 = temp_s3 * 8;
    temp_f4 = (f64) temp_a5;
    temp_t8 = temp_s5->unkE50;
    temp_f1 = (s32) ((f64) 0x3F0000 / temp_f4);
    var_s1 = temp_s5->unk7408 - temp_t8;
    temp_s8 = (temp_s5->unk7410 - temp_t8) - var_s1;
    sp0 = (s64) arg0;
    var_a4 = (s32) ((f64) (second half of f64) / (second half of f64));
    M2C_TRAP_IF(temp_a5 == 0);
    var_s0 = temp_s5->unk80F8;
    var_a3 = temp_f1;
    M2C_TRAP_IF(temp_f1 == 0);
    if (var_a4 >= 2) {
        temp_f3 = (s32) ((f64) 0x3E0000 / temp_f4);
        M2C_TRAP_IF(temp_a5 == 0);
        var_a3 = temp_f3;
        M2C_TRAP_IF(temp_f3 == 0);
        var_a4 = (s32) ((f64) (second half of f64) / (second half of f64));
    }
    var_s2 = (temp_s8 < var_a3) ? temp_s8 : var_a3;
    if (var_s0 != NULL) {
        goto block_3;
    }
    sp80 = (s64) var_a4;
    temp_v0 = __glBeginLLoop((s64) temp_s5, (s64) var_a3, (s64) var_a4, temp_a5);
    var_s0 = temp_v0;
    if (temp_v0 == NULL) {
        __glcrmim_Accum((s64) temp_s5, sp0);
        sub_0d940000(sp0);
    } else {
block_3:
        if (var_s0->unk4 != 0) {
            if (var_s0->unk20 != 0) {
                goto block_5;
            }
            sp80 = (s64) var_a4;
            if (__glBeginLLoop((s64) temp_s5, sp0) == NULL) {
                __glcrmim_Accum((s64) temp_s5, sp0);
                sub_0d940000(sp0);
            } else {
block_5:
                if ((temp_s5->unk7D58 & 0x100000) || ((M2C_ERROR(/* Read from unset register $t9 */) + 0x11689C)->unk-5794 != 0)) {
                    __glBeginLLoop(sp0);
                } else {
                    var_s4 = 1;
                    if (var_a4 > 0) {
                        unksp48 = var_a4 + 1;
                        unksp40 = (s64) (var_s0 + 0x30);
                        sp8 = (s64) temp_s5;
                        do {
                            temp_s5_2 = temp_s3 * var_s1 * 8;
                            temp_t8_2 = (s32) ((temp_s5_2 >= 0) ? temp_s5_2 : (temp_s5_2 + 0xFFFF)) >> 0x10;
                            temp_a4 = var_s0->unk20 - temp_t8_2;
                            vice_dmbuf_settlb(var_s0->unk0, 0U, var_s0->unk18, temp_t8_2, (temp_a4 >= 0x40U) ? 0x3FU : temp_a4);
                            var_s0->unk68 = 0x8000;
                            var_s0->unk6C = 0x20;
                            var_s0->unk40 = 1;
                            temp_v0_2 = vice_etc_dramp(var_s0->unk0);
                            temp_v0_2->unk10 = 5;
                            temp_v0_2->unkC = 0;
                            temp_v0_2->unk4 = 0x800000;
                            temp_a6 = (temp_s5_2 - (temp_t8_2 << 0x10)) + 0x800000;
                            temp_v0_2->unk0 = temp_a6;
                            temp_a5_2 = temp_s3 * var_s2 * 4;
                            temp_v0_2->unk8 = temp_a5_2;
                            temp_f7 = (s32) ((f64) sp8->unk670 * 32767.0);
                            temp_v0_2->unk18 = (s16) temp_f7;
                            temp_v0_2->unk1A = (s16) (s32) ((f64) sp8->unk674 * 32767.0);
                            temp_v0_2->unk1C = (s16) (s32) ((f64) sp8->unk678 * 32767.0);
                            temp_v0_2->unk1E = (s16) (s32) ((f64) sp8->unk67C * 32767.0);
                            cacheflush(temp_v0_2, 0x24, 3, (s64) temp_f7, 5, temp_a5_2, temp_a6);
                            vice_put(var_s0->unk0, unksp40);
                            temp_t2 = var_s4 * var_s2;
                            var_s4 += 1;
                            temp_t2_2 = temp_s8 - temp_t2;
                            var_s1 += var_s2;
                            var_s2 = (var_s2 >= temp_t2_2) ? temp_t2_2 : var_s2;
                        } while (var_s4 != unksp48);
                    }
                }
            }
        } else {
            __glcrmim_Accum((s64) temp_s5, sp0);
            sp0->unk6C(sp0);
        }
    }
}

void __glCrmInitAccum64(void *arg0, s64 arg1) {
    s64 sp18;
    f32 temp_f1;
    f32 temp_f3;
    f32 temp_f6;
    f32 temp_f7;

    sp18 = arg1;
    __glInitBuffer();
    arg0->unk40 = 0;
    arg0->unk18 = 8;
    arg0->unk30 = (void *) (sub_0d940000 - 0x6F80);
    arg0->unk2C = (void *) (sub_0d940000 - 0x7010);
    arg0->unk68 = (void *) (sub_0d940000 - 0x5E70);
    arg0->unk38 = (void *) (sub_0d940000 - 0x6BC0);
    arg0->unk6C = (void *) (sub_0d940000 - 0x5B10);
    if (arg1->unkC94 != 0) {
        temp_f3 = 32767.0f / arg1->unk7820;
        arg0->unk48 = temp_f3;
        temp_f7 = 32767.0f / arg1->unk7828;
        arg0->unk50 = temp_f7;
        temp_f6 = 32767.0f / arg1->unk7824;
        arg0->unk4C = temp_f6;
        temp_f1 = 32767.0f / arg1->unk7848;
        arg0->unk60 = (f32) (1.0f / temp_f7);
        arg0->unk58 = (f32) (1.0f / temp_f3);
        arg0->unk5C = (f32) (1.0f / temp_f6);
        arg0->unk54 = temp_f1;
        arg0->unk64 = (f32) (1.0f / temp_f1);
    }
}

void __glcrmim_Accum(s64 arg0, f64 fparg1) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    f64 sp0;
    ? var_a2;
    s32 (*var_t9)(s64, s64, ?, s32, ?, f64);
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 var_a5;
    void *temp_a2;
    void *temp_v0;
    void *var_a6;

    temp_a1 = *(s32 *)0x1018;
    var_a5 = arg0;
    temp_a2 = *(void **)0x1010;
    var_a6 = temp_a2->unk80F8;
    if (temp_a1 != 0) {
        sp0 = fparg1;
        sp10 = arg0;
        sp18 = (s64) temp_a2;
        if (temp_a1 != 2) {
            __glSetError(0x502, temp_a1, temp_a2, var_a5, var_a6, 0x11637C);
        } else {
            sp18->unk2E08(sp18, temp_a1, temp_a2, var_a5, var_a6, 0x11637C);
            *(void *)0x1018 = 0;
            .L0d93aa10(sp10, second half of f64, sp0);
        }
    } else {
        sp0 = fparg1;
        if (temp_a2->unk7D0A != 0) {
            if ((temp_a2->unkC98 == 0) || (temp_a2->unkC95 != 0)) {
                __glSetError(0x502, temp_a1, temp_a2, var_a5, var_a6, 0x11637C);
            } else {
                sp18 = (s64) temp_a2;
                if (var_a6 != NULL) {
                    goto block_10;
                }
                sp10 = arg0;
                temp_v0 = __glBeginLLoop(sp18, (s64) temp_a1, (s64) temp_a2, var_a5, var_a6, 0x11637C);
                var_a5 = sp10;
                var_a6 = temp_v0;
                if (temp_v0 == NULL) {
                    __glcrmim_Accum(sp18, sp18 + 0x7A80);
                    __glim_Accum(sp10, second half of f64, sp0);
                } else {
block_10:
                    if (var_a6->unk4 != 0) {
                        if (var_a6->unk20 != 0) {
                            goto block_12;
                        }
                        sp10 = var_a5;
                        temp_a1_2 = sp18 + 0x7A80;
                        sp8 = temp_a1_2;
                        if (__glBeginLLoop(sp18, temp_a1_2) == NULL) {
                            __glcrmim_Accum(sp18, sp8);
                            __glim_Accum(sp10, second half of f64, sp0);
                        } else {
block_12:
                            switch (var_a5) {       /* irregular */
                            default:
                                __glSetError(0x500, 0x103, (void *)0x104);
                                break;
                            case 0x104:
                                var_a2 = 3;
block_19:
                                var_t9 = M2C_ERROR(/* Read from unset register $t9 */) - 0x6590;
block_20:
                                if (sp18->unkC84 == 0x1C00) {
                                    temp_a3 = sp18->unk7D58;
                                    temp_a3_2 = temp_a3 << 0xB;
                                    temp_a1_3 = sp18 + 0x7A80;
                                    if (!(temp_a3 & 0x100000)) {
                                        sp10 = var_a5;
                                        sp8 = temp_a1_3;
                                        if (var_t9(sp8, temp_a1_3, var_a2, temp_a3_2, second half of f64, sp0) == 0) {
                                            __glcrmim_Accum(sp8, second half of f64, sp0);
                                        }
                                    } else {
                                        __glcrmim_Accum(temp_a1_3, temp_a1_3, (bitwise f64) var_a5, temp_a3_2, second half of f64, sp0);
                                    }
                                }
                                break;
                            case 0x100:
                                var_a2 = 2;
                                var_t9 = M2C_ERROR(/* Read from unset register $t9 */) - 0x6950;
                                goto block_20;
                            case 0x101:
                                var_a2 = 0;
                                var_t9 = M2C_ERROR(/* Read from unset register $t9 */) - 0x6950;
                                goto block_20;
                            case 0x102:
                                var_a2 = 1;
                                var_t9 = M2C_ERROR(/* Read from unset register $t9 */) - 0x62A0;
                                goto block_20;
                            case 0x103:
                                var_a2 = 4;
                                goto block_19;
                            }
                        }
                    } else {
                        sp10 = var_a5;
                        __glcrmim_Accum(sp18, sp18 + 0x7A80);
                        __glim_Accum(sp10, second half of f64, sp0);
                    }
                }
            }
        } else {
            __glim_Accum((s64) temp_a1, temp_a2, (bitwise f64) var_a5, var_a6, 0x11637C, second half of f64, sp0);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac], gap at: 0x50. */
void SoftAccumOp(void *arg0, s32 arg2, f32 fparg1, ? arg_sp0) {
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    s32 sp8;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f21;
    f32 temp_f23;
    f32 temp_f25;
    f32 temp_f27;
    f32 temp_f29;
    f32 temp_f31;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    s16 temp_a5_2;
    s16 temp_f4;
    s16 temp_f5;
    s16 temp_t0_3;
    s16 temp_t8_2;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_f0;
    s32 temp_f18;
    s32 temp_f19;
    s32 temp_f1;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s64 temp_t0_5;
    s64 temp_v1;
    s64 var_a1;
    s64 var_s0;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s1_3;
    s64 var_s1_4;
    s64 var_s1_5;
    void *temp_a6;
    void *var_a7;
    void *var_a7_2;

    temp_a6 = arg0->unk0;
    temp_t0 = temp_a6->unk7408;
    temp_a5 = arg0->unk1C;
    spB0 = (s64) temp_a6;
    temp_a7 = temp_a6->unk7404;
    spF8 = (s64) temp_t0;
    var_s1 = temp_a6->unk740C - temp_a7;
    spC8 = (s64) temp_a7;
    spF0 = (s64) temp_a6->unk7410;
    spB8 = var_s1;
    var_a1 = (arg0->unk10 + (temp_a5 * ((temp_a6->unkE78 + temp_a6->unkE50) - temp_t0) * 8) + (temp_a7 * 8)) - (temp_a6->unkE4C * 8);
    switch (arg2) {                                 /* switch 1; irregular */
    case 0x100:                                     /* switch 1 */
        /* fallthrough */
    case 0x101:                                     /* switch 1 */
        sp8 = ((void *) spB0)->unk2DF4;
        sp24 = arg0->unk54 * fparg1;
        sp20 = arg0->unk50 * fparg1;
        sp1C = arg0->unk4C * fparg1;
        sp18 = arg0->unk48 * fparg1;
        break;
    case 0x104:                                     /* switch 1 */
        sp16 = (s16) (s32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f10, $f13, $f15 */);
        sp14 = (s16) (s32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f10, $f12, $f14 */);
        sp12 = (s16) (s32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f10, $f11, $f16 */);
        sp10 = (s16) (s32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f14, $f15 */);
        break;
    case 0x102:                                     /* switch 1 */
        temp_ra = spB0->unk2DF0;
        spC0 = (s64) temp_ra;
        sp8 = temp_ra;
        if (spB0->unk77BC != 0) {
            temp_at = spB0 + 0x77C8;
            spC = ((temp_at ^ spC0) == 0) ? (spB0 + 0x78A4) : temp_at;
        } else {
            spC = 0;
        }
        break;
    }
    if (spF8 < spF0) {
        spE8 = temp_a5 * -8;
        spC0 = (s64) sp8;
        temp_v1 = spB8 & 3;
        temp_v0 = spB8 >> 2;
        unksp58 = (s64) temp_v0;
        spD0 = temp_v1;
        spE0 = temp_v1 - 1;
        spD8 = temp_v0 - 1;
loop_9:
        var_s0 = var_a1;
        switch (arg2) {                             /* switch 2; irregular */
        case 0x104:                                 /* switch 2 */
            var_s1_2 = spD8;
            if (spD8 >= 0) {
                do {
                    var_s0 += 0x20;
                    var_s0->unk-2 = (s16) (var_s0->unk-2 + sp16);
                    var_s0->unk-4 = (s16) (var_s0->unk-4 + sp14);
                    var_s0->unk-6 = (s16) (var_s0->unk-6 + sp12);
                    var_s0->unk-8 = (s16) (var_s0->unk-8 + sp10);
                    var_s0->unk-A = (s16) (var_s0->unk-A + sp16);
                    var_s0->unk-C = (s16) (var_s0->unk-C + sp14);
                    var_s0->unk-E = (s16) (var_s0->unk-E + sp12);
                    var_s0->unk-10 = (s16) (var_s0->unk-10 + sp10);
                    var_s0->unk-12 = (s16) (var_s0->unk-12 + sp16);
                    var_s0->unk-14 = (s16) (var_s0->unk-14 + sp14);
                    var_s0->unk-16 = (s16) (var_s0->unk-16 + sp12);
                    var_s0->unk-18 = (s16) (var_s0->unk-18 + sp10);
                    var_s0->unk-1A = (s16) (var_s0->unk-1A + sp16);
                    var_s0->unk-1C = (s16) (var_s0->unk-1C + sp14);
                    var_s1_2 -= 1;
                    var_s0->unk-1E = (s16) (var_s0->unk-1E + sp12);
                    var_s0->unk-20 = (s16) (var_s0->unk-20 + sp10);
                } while (var_s1_2 != -1);
            }
            var_s1 = spE0;
            if (spE0 >= 0) {
                do {
                    var_s0 += 8;
                    var_s0->unk-2 = (s16) (var_s0->unk-2 + sp16);
                    var_s0->unk-4 = (s16) (var_s0->unk-4 + sp14);
                    var_s1 -= 1;
                    var_s0->unk-6 = (s16) (var_s0->unk-6 + sp12);
                    var_s0->unk-8 = (s16) (var_s0->unk-8 + sp10);
                } while (var_s1 != -1);
            }
            break;
        case 0x103:                                 /* switch 2 */
            var_s1_3 = spD8;
            if (spD8 >= 0) {
                do {
                    temp_a2 = (s32) ((f32) var_s0->unk1E * fparg1);
                    temp_v1_2 = (s32) ((f32) var_s0->unk1C * fparg1);
                    temp_ra_2 = (s32) ((f32) var_s0->unk1A * fparg1);
                    temp_f9 = (f32) var_s0->unk12;
                    temp_t8 = (s32) ((f32) var_s0->unk18 * fparg1);
                    temp_f8 = (f32) var_s0->unk10;
                    temp_f5 = var_s0->unkA;
                    temp_t0_2 = (s32) ((f32) var_s0->unk16 * fparg1);
                    temp_f7 = (f32) var_s0->unkE;
                    temp_f4 = var_s0->unk8;
                    temp_a7_2 = (s32) ((f32) var_s0->unk14 * fparg1);
                    temp_f6 = (f32) var_s0->unkC;
                    var_s0 += 0x20;
                    var_s0->unk-2 = (s16) temp_a2;
                    var_s0->unk-4 = (s16) temp_v1_2;
                    var_s0->unk-6 = (s16) temp_ra_2;
                    var_s0->unk-8 = (s16) temp_t8;
                    var_s0->unk-A = (s16) temp_t0_2;
                    var_s0->unk-C = (s16) temp_a7_2;
                    var_s0->unk-E = (s16) (s32) (temp_f9 * fparg1);
                    var_s0->unk-10 = (s16) (s32) (temp_f8 * fparg1);
                    var_s0->unk-12 = (s16) (s32) (temp_f7 * fparg1);
                    var_s0->unk-14 = (s16) (s32) (temp_f6 * fparg1);
                    var_s0->unk-16 = (s16) (s32) ((f32) temp_f5 * fparg1);
                    var_s0->unk-18 = (s16) (s32) ((f32) temp_f4 * fparg1);
                    var_s0->unk-1A = (s16) (s32) ((f32) var_s0->unk-1A * fparg1);
                    var_s1_3 -= 1;
                    var_s0->unk-1C = (s16) (s32) ((f32) var_s0->unk-1C * fparg1);
                    var_s0->unk-1E = (s16) (s32) ((f32) var_s0->unk-1E * fparg1);
                    var_s0->unk-20 = (s16) (s32) ((f32) var_s0->unk-20 * fparg1);
                } while (var_s1_3 != -1);
            }
            var_s1 = spE0;
            if (spE0 >= 0) {
                if (spD0 & 1) {
                    temp_f17 = (f32) var_s0->unk2 * fparg1;
                    temp_f19 = (s32) ((f32) var_s0->unk6 * fparg1);
                    temp_f16 = (f32) var_s0->unk0 * fparg1;
                    temp_f18 = (s32) ((f32) var_s0->unk4 * fparg1);
                    var_s0 += 8;
                    var_s0->unk-2 = (s16) temp_f19;
                    var_s0->unk-4 = (s16) temp_f18;
                    var_s0->unk-6 = (s16) (s32) temp_f17;
                    var_s1 = spE0 - 1;
                    var_s0->unk-8 = (s16) (s32) temp_f16;
                }
                if ((spD0 >> 1) != 0) {
                    do {
                        temp_f21 = (f32) var_s0->unk0 * fparg1;
                        temp_f23 = (f32) var_s0->unk2 * fparg1;
                        temp_f25 = (f32) var_s0->unk4 * fparg1;
                        temp_f27 = (f32) var_s0->unk6 * fparg1;
                        temp_f31 = (f32) var_s0->unkA * fparg1;
                        temp_f1 = (s32) ((f32) var_s0->unkE * fparg1);
                        temp_f29 = (f32) var_s0->unk8 * fparg1;
                        temp_f0 = (s32) ((f32) var_s0->unkC * fparg1);
                        var_s0 += 0x10;
                        var_s0->unk-2 = (s16) temp_f1;
                        var_s0->unk-4 = (s16) temp_f0;
                        var_s0->unk-6 = (s16) (s32) temp_f31;
                        var_s0->unk-8 = (s16) (s32) temp_f29;
                        var_s0->unk-A = (s16) (s32) temp_f27;
                        var_s1 -= 2;
                        var_s0->unk-C = (s16) (s32) temp_f25;
                        var_s0->unk-E = (s16) (s32) temp_f23;
                        var_s0->unk-10 = (s16) (s32) temp_f21;
                    } while (var_s1 != -1);
                }
            }
            break;
        case 0x100:                                 /* switch 2 */
            unksp50 = var_a1;
            spC0->unkB0(spC0, spC8, spF8, &arg_sp0 + 0xFFFEFFE0, spB8);
            var_s1_4 = spD8;
            if (spD8 >= 0) {
                var_a7 = &arg_sp0 + 0xFFFEFFE0;
                do {
                    var_s0->unk0 = (s16) (var_s0->unk0 + (s32) (var_a7->unk0 * sp18));
                    var_s0->unk2 = (s16) (var_s0->unk2 + (s32) (var_a7->unk4 * sp1C));
                    var_s0->unk4 = (s16) (var_s0->unk4 + (s32) (var_a7->unk8 * sp20));
                    var_s0->unk6 = (s16) (var_s0->unk6 + (s32) (var_a7->unkC * sp24));
                    var_s0->unk8 = (s16) (var_s0->unk8 + (s32) (var_a7->unk10 * sp18));
                    var_s0->unkA = (s16) (var_s0->unkA + (s32) (var_a7->unk14 * sp1C));
                    var_s0->unkC = (s16) (var_s0->unkC + (s32) (var_a7->unk18 * sp20));
                    var_s0->unkE = (s16) (var_s0->unkE + (s32) (var_a7->unk1C * sp24));
                    var_s0->unk10 = (s16) (var_s0->unk10 + (s32) (var_a7->unk20 * sp18));
                    var_s0->unk12 = (s16) (var_s0->unk12 + (s32) (var_a7->unk24 * sp1C));
                    var_s0->unk14 = (s16) (var_s0->unk14 + (s32) (var_a7->unk28 * sp20));
                    var_s0->unk16 = (s16) (var_s0->unk16 + (s32) (var_a7->unk2C * sp24));
                    var_s0->unk18 = (s16) (var_s0->unk18 + (s32) (var_a7->unk30 * sp18));
                    var_s0->unk1A = (s16) (var_s0->unk1A + (s32) (var_a7->unk34 * sp1C));
                    var_s0->unk1C = (s16) (var_s0->unk1C + (s32) (var_a7->unk38 * sp20));
                    var_s1_4 -= 1;
                    temp_t3 = (s32) (var_a7->unk3C * sp24);
                    temp_t0_3 = var_s0->unk1E;
                    var_a7 += 0x40;
                    var_s0 += 0x20;
                    var_s0->unk-2 = (s16) (temp_t0_3 + temp_t3);
                } while (var_s1_4 != -1);
            } else {
                var_a7 = &arg_sp0 + 0xFFFEFFE0;
            }
            var_s1 = spE0;
            if (spE0 >= 0) {
                if (spD0 & 1) {
                    var_s0->unk0 = (s16) (var_s0->unk0 + (s32) (var_a7->unk0 * sp18));
                    var_s0->unk2 = (s16) (var_s0->unk2 + (s32) (var_a7->unk4 * sp1C));
                    var_s0->unk4 = (s16) (var_s0->unk4 + (s32) (var_a7->unk8 * sp20));
                    temp_t8_2 = var_s0->unk6;
                    temp_t9 = (s32) (var_a7->unkC * sp24);
                    var_s0 += 8;
                    var_a7 += 0x10;
                    var_s1 = spE0 - 1;
                    var_s0->unk-2 = (s16) (temp_t8_2 + temp_t9);
                }
                if ((spD0 >> 1) != 0) {
                    do {
                        var_s0->unk0 = (s16) (var_s0->unk0 + (s32) (var_a7->unk0 * sp18));
                        var_s0->unk2 = (s16) (var_s0->unk2 + (s32) (var_a7->unk4 * sp1C));
                        var_s0->unk4 = (s16) (var_s0->unk4 + (s32) (var_a7->unk8 * sp20));
                        var_s0->unk6 = (s16) (var_s0->unk6 + (s32) (var_a7->unkC * sp24));
                        var_s0->unk8 = (s16) (var_s0->unk8 + (s32) (var_a7->unk10 * sp18));
                        var_s0->unkA = (s16) (var_s0->unkA + (s32) (var_a7->unk14 * sp1C));
                        var_s0->unkC = (s16) (var_s0->unkC + (s32) (var_a7->unk18 * sp20));
                        var_s1 -= 2;
                        temp_a6_2 = (s32) (var_a7->unk1C * sp24);
                        temp_a5_2 = var_s0->unkE;
                        var_a7 += 0x20;
                        var_s0 += 0x10;
                        var_s0->unk-2 = (s16) (temp_a5_2 + temp_a6_2);
                    } while (var_s1 != -1);
                }
            }
            break;
        case 0x101:                                 /* switch 2 */
            unksp50 = var_a1;
            spC0->unkB0(spC0, spC8, spF8, &arg_sp0 + 0xFFFEFFE0, spB8);
            var_s1_5 = spD8;
            if (spD8 >= 0) {
                var_a7_2 = &arg_sp0 + 0xFFFEFFE0;
                do {
                    var_s0->unk0 = (s16) (s32) (var_a7_2->unk0 * sp18);
                    var_s0->unk2 = (s16) (s32) (var_a7_2->unk4 * sp1C);
                    var_s0->unk4 = (s16) (s32) (var_a7_2->unk8 * sp20);
                    var_s0->unk6 = (s16) (s32) (var_a7_2->unkC * sp24);
                    var_s0->unk8 = (s16) (s32) (var_a7_2->unk10 * sp18);
                    var_s0->unkA = (s16) (s32) (var_a7_2->unk14 * sp1C);
                    var_s0->unkC = (s16) (s32) (var_a7_2->unk18 * sp20);
                    var_s0->unkE = (s16) (s32) (var_a7_2->unk1C * sp24);
                    var_s0->unk10 = (s16) (s32) (var_a7_2->unk20 * sp18);
                    var_s0->unk12 = (s16) (s32) (var_a7_2->unk24 * sp1C);
                    var_s0->unk14 = (s16) (s32) (var_a7_2->unk28 * sp20);
                    var_s0->unk16 = (s16) (s32) (var_a7_2->unk2C * sp24);
                    var_s0->unk18 = (s16) (s32) (var_a7_2->unk30 * sp18);
                    var_s0->unk1A = (s16) (s32) (var_a7_2->unk34 * sp1C);
                    var_s0->unk1C = (s16) (s32) (var_a7_2->unk38 * sp20);
                    var_s1_5 -= 1;
                    var_s0 += 0x20;
                    temp_t0_4 = (s32) (var_a7_2->unk3C * sp24);
                    var_a7_2 += 0x40;
                    var_s0->unk-2 = (s16) temp_t0_4;
                } while (var_s1_5 != -1);
            } else {
                var_a7_2 = &arg_sp0 + 0xFFFEFFE0;
            }
            var_s1 = spE0;
            if (spE0 >= 0) {
                if (spD0 & 1) {
                    var_s0->unk0 = (s16) (s32) (var_a7_2->unk0 * sp18);
                    var_s0->unk2 = (s16) (s32) (var_a7_2->unk4 * sp1C);
                    var_s0->unk4 = (s16) (s32) (var_a7_2->unk8 * sp20);
                    var_s0 += 8;
                    temp_v1_3 = (s32) (var_a7_2->unkC * sp24);
                    var_a7_2 += 0x10;
                    var_s1 = spE0 - 1;
                    var_s0->unk-2 = (s16) temp_v1_3;
                }
                if ((spD0 >> 1) != 0) {
                    do {
                        var_s0->unk0 = (s16) (s32) (var_a7_2->unk0 * sp18);
                        var_s0->unk2 = (s16) (s32) (var_a7_2->unk4 * sp1C);
                        var_s0->unk4 = (s16) (s32) (var_a7_2->unk8 * sp20);
                        var_s0->unk6 = (s16) (s32) (var_a7_2->unkC * sp24);
                        var_s0->unk8 = (s16) (s32) (var_a7_2->unk10 * sp18);
                        var_s0->unkA = (s16) (s32) (var_a7_2->unk14 * sp1C);
                        var_s0->unkC = (s16) (s32) (var_a7_2->unk18 * sp20);
                        var_s1 -= 2;
                        var_s0 += 0x10;
                        temp_v0_2 = (s32) (var_a7_2->unk1C * sp24);
                        var_a7_2 += 0x20;
                        var_s0->unk-2 = (s16) temp_v0_2;
                    } while (var_s1 != -1);
                }
            }
            break;
        case 0x102:                                 /* switch 2 */
            unksp50 = var_a1;
            spC0->unkB4(spC0, spC8, spF8, unksp50, 0x103, var_s1);
            if (spB0->unk77BC != 0) {
                spC->unkB4(spC, spC8, spF8, unksp50, 0x103, var_s1);
                var_a1 = unksp50;
            }
            break;
        }
        temp_t0_5 = spF8 + 1;
        spF8 = temp_t0_5;
        var_a1 += spE8;
        if (temp_t0_5 != spF0) {
            goto loop_9;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void SetupForSoftPathFallBack(void *arg0, s64 arg1) {
    s32 temp_a0;
    s64 var_a3;
    s64 var_a4;
    u8 temp_a5;
    void *temp_s0;

    var_a3 = arg0 + 0x10000;
    temp_s0 = arg0->unk80F8;
    var_a4 = arg1;
    if (temp_s0 != NULL) {
        temp_a5 = temp_s0->unk4;
        if (temp_a5 != 0) {
            unksp10 = arg1;
            unksp18 = var_a3;
            __glBeginLLoop((s64) temp_s0, var_a3, var_a4, (s64) temp_a5);
            temp_a0 = temp_s0->unk0;
            if (temp_a0 >= 0) {
                vice_close(temp_a0);
            }
            arg0->unk7B0C->unk14(temp_s0);
            var_a3 = unksp18;
            var_a4 = unksp10;
        }
    }
    var_a3->unk-7F08 = 0;
    __glInitAccum64(var_a4, arg0);
    arg0->unk7D0A = 0;
    arg0->unk7B04 = &__glCrmAllocAccum;
}
