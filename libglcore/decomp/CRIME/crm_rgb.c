? __glCrmGetDstBufMode(void *, s64, void *);        /* extern */
? __glCrmSetDrawBuffer(void *, s64, s32, ?, s64, ?, s32, s32); /* extern */
void **__glCrmSetStoreBuffer(void *, void **);      /* extern */
? __glInitBuffer();                                 /* extern */
? __glMakeCurrentBuffer();                          /* extern */
? crmDrawPixelsXfer(void *, void *, s32, void *, void *, s32, s32, s32, s32, s32, s32); /* extern */
? crmReadPixelsXfer(void *, void *, s32, u8);       /* extern */
s32 ioctl(s32, ?, s32 *, s32, s64, ?, u32, s32);    /* extern */
void __glCrmReadSPBuffColor(void *arg0, s32 arg1, s32 arg2, void *arg3); /* static */
void __glCrmReadSPBuffRed(void *arg0, s32 arg1, s32 arg2, void *arg3); /* static */
extern ? __glCrmStoreRGBASpan;
extern ? __glCrmStoreRGBAStippledSpan;
extern ? __glDitherTable;
extern ? __glFetchSpan;
extern ? __glReadSpan;
extern ? sub_0d960000;
extern ? sub_0d970000;
extern ? sub_0da40000;

void StoreRGBA(void **arg0, void *arg1) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a5;
    void *temp_a3;
    void *temp_a4;

    temp_a4 = *arg0;
    temp_a5 = temp_a4->unk7D64;
    temp_a3 = temp_a4->unk7DB8;
    if (temp_a4->unk7D60 != temp_a5) {
        temp_a3->unk2060 = temp_a5;
        temp_a4->unk7DBC->unk2060 = (s32) temp_a4->unk7D64;
        temp_a4->unk7D60 = (s32) temp_a4->unk7D64;
    }
    sp0 = 0x7FFFF & (arg1->unk0 << 6);
    temp_a3->unk2080 = sp0;
    sp4 = 0x7FFFF & (arg1->unk4 << 6);
    temp_a3->unk2084 = sp4;
    temp_a2 = (s32) arg1->unk18 | ((s32) arg1->unkC << 0x18) | (((s32) arg1->unk10 << 0x10) | ((s32) arg1->unk14 << 8));
    sp8 = temp_a2;
    temp_a3->unk28D0 = temp_a2;
    temp_a4->unk8080 = 0;
}

void StoreRGBA2(void **arg0, void *arg1) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a7;
    void **temp_a1;
    void *temp_a4;
    void *temp_s0;

    temp_s0 = *arg0;
    temp_a0 = temp_s0->unk7D64;
    temp_a1 = __glCrmSetStoreBuffer(temp_s0, arg0);
    temp_a4 = temp_s0->unk7DB8;
    if (temp_s0->unk7D60 != temp_a0) {
        temp_a4->unk2060 = temp_a0;
        temp_s0->unk7DBC->unk2060 = (s32) temp_s0->unk7D64;
        temp_s0->unk7D60 = (s32) temp_s0->unk7D64;
    }
    sp0 = 0x7FFFF & (arg1->unk0 << 6);
    temp_a4->unk2080 = sp0;
    sp4 = 0x7FFFF & (arg1->unk4 << 6);
    temp_a4->unk2084 = sp4;
    temp_a7 = (s32) arg1->unk18 | ((s32) arg1->unkC << 0x18) | (((s32) arg1->unk10 << 0x10) | ((s32) arg1->unk14 << 8));
    sp8 = temp_a7;
    temp_a4->unk28D0 = temp_a7;
    temp_s0->unk8080 = 0;
    __glCrmSetStoreBuffer(temp_s0, temp_a1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x238, 0x23c, 0x240, 0x244, 0x248, 0x24c, 0x250, 0x254, 0x258, 0x25c, 0x260, 0x264], gap at: 0x220. */
void ReturnRGBASpan(void **arg0, s64 arg1, s64 arg2, void *arg3, s32 arg5, f32 fparg4) {
    u32 sp1F8;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f6;
    f32 temp_f7;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    s16 temp_a4;
    s16 temp_f9;
    s32 temp_a6;
    s32 temp_s3;
    u32 temp_t1;
    u8 temp_s0;
    void *temp_s1;
    void *temp_v0;
    void *var_a0;
    void *var_s0;

    unksp230 = arg2;
    temp_s1 = *arg0;
    temp_s3 = arg5 * 4;
    temp_f20 = temp_s1->unk7AE0 * fparg4;
    var_s0 = arg3;
    unksp228 = arg1;
    temp_f22 = temp_s1->unk7ADC * fparg4;
    unksp220 = (s64) arg0;
    temp_f24 = temp_s1->unk7AD8 * fparg4;
    temp_v0 = temp_s1->unk7E44(temp_s1, temp_s3);
    temp_a6 = temp_v0 + temp_s3;
    if (arg5 > 0) {
        var_a0 = temp_v0;
loop_5:
        M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc1 */);
        var_f8 = M2C_ERROR(/* unknown instruction: movz.s $f8, $f4, $a3 */);
        temp_a4 = var_s0->unk6;
        var_a0 += 4;
        temp_f6 = temp_s1->unk7824;
        if (((f32) var_s0->unk2 * temp_f22) > 0.0f) {
            var_f8 = temp_s1->unk7820;
        }
        M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc3 */);
        var_f5 = M2C_ERROR(/* unknown instruction: movz.s $f5, $f4, $a3 */);
        temp_f9 = var_s0->unk4;
        var_s0 += 8;
        if (temp_f6 < var_f5) {
            var_f5 = temp_f6;
        }
        var_f6 = temp_s1->unk7828;
        M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc5 */);
        temp_f7 = M2C_ERROR(/* unknown instruction: movz.s $f7, $f4, $a3 */);
        if (!(var_f6 < temp_f7)) {
            var_f6 = temp_f7;
        }
        var_f7 = temp_s1->unk7848;
        M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc7 */);
        if (var_f7 < M2C_ERROR(/* unknown instruction: movz.s $f10, $f4, $a3 */)) {

        } else {
            var_f7 = M2C_ERROR(/* unknown instruction: movz.s $f7, $f4, $a3 */);
        }
        var_a0->unk-4 = (s32) (((s64) var_f7 << 0) | ((s64) var_f6 << 8) | (((s64) var_f8 << 0x18) | ((s64) var_f5 << 0x10)));
        if (var_a0 != temp_a6) {
            goto loop_5;
        }
    }
    temp_t1 = temp_s1->unk7D58;
    temp_s0 = temp_s1->unk7DCA;
    temp_s1->unk7E2C = (s32) unksp220;
    temp_s1->unk7DCA = 0U;
    temp_s1->unk7E58 = 0;
    temp_s1->unk7DE0 = 0;
    temp_s1->unk7DCE = 0;
    temp_s1->unk7DD8 = 1;
    sp1F8 = temp_t1;
    temp_s1->unk7D58 = (u32) (((0x400000 | (((temp_t1 >> 7) & 1) << 7)) & ~0x78) | (((temp_t1 >> 3) & 0xF) * 8));
    temp_s1->unk7E24 = (s32) (((((((temp_s1->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
    crmDrawPixelsXfer(temp_s1, sp, 0x1908, temp_v0, temp_v0, temp_s3, 1, (s32) unksp228, (s32) unksp230, arg5, 1);
    temp_s1->unk7D58 = sp1F8;
    if (temp_s1->unk7D5C != sp1F8) {
        temp_s1->unk7DB8->unk2018 = sp1F8;
        temp_s1->unk7DBC->unk2018 = (u32) temp_s1->unk7D58;
        temp_s1->unk7DCA = temp_s0;
        temp_s1->unk7DD8 = 0;
        temp_s1->unk7D5C = (u32) temp_s1->unk7D58;
        return;
    }
    temp_s1->unk7DCA = temp_s0;
    temp_s1->unk7DD8 = 0;
}

s32 ReadRGBASpan(void *arg0, s32 arg1, s32 arg2, void *arg3, s32 arg4) {
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f4_5;
    f32 var_f4_6;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a6_2;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a3;
    u16 temp_t0_3;
    u16 temp_t0_6;
    u16 temp_t0_7;
    u32 *temp_a5;
    u32 *var_a5;
    u32 temp_a3;
    u32 temp_t0_4;
    u32 temp_t0_5;
    u32 temp_t0_8;
    u8 temp_a6;
    u8 temp_t0_2;
    u8 temp_t1;
    u8 temp_t1_2;
    void *temp_s4;
    void *temp_s5;
    void *var_s0;

    var_a2 = arg2;
    temp_s5 = arg0->unk0;
    spAC = 1;
    spA8 = arg4;
    spC0 = (f32) var_a2;
    spBC = (f32) arg1;
    temp_s5->unk7E28 = arg0;
    var_s0 = arg3;
    temp_s5->unk7E58 = 0;
    temp_a6 = temp_s5->unk7B41;
    temp_s5->unk7DCE = 0;
    temp_s5->unk7DD8 = 0xC02;
    temp_s4 = ((temp_s5->unk2DF4 ^ (s32) arg0) == 0) ? (temp_s5 + 0xD30) : (temp_s5 + 0xC90);
    if (temp_a6 != 1) {
        if ((s32) temp_a6 >= 2) {
            temp_a0 = arg0->unkC;
            var_a2 = 8;
            if (temp_a0 != 0x10) {
                if (temp_a0 == 8) {
                    temp_s5->unk7DD8 = 1;
                    temp_s5->unk7E24 = (u32) (((temp_s5->unk7E24 & ~0x300 & ~0xC & ~0xF0) | 0x10) & ~2 & ~1);
                }
            } else {
                temp_s5->unk7DD8 = 1;
                temp_s5->unk7E24 = (u32) (((((((temp_s5->unk7E24 & ~0x300) | 0x100) & ~0xC) | 4) & ~0xF0) | 0x20) & ~2 & ~1);
            }
        }
    } else {
        temp_s5->unk7DD8 = 1;
        temp_s5->unk7E24 = (u32) (((((((temp_s5->unk7E24 & ~0x300) | 0x200) & ~0xF0) | 0x20) & ~0xC) | 8) & ~2 & ~1);
    }
    crmReadPixelsXfer(arg0->unk0, sp, var_a2, temp_a6);
    temp_a3 = temp_s5->unk7E24;
    var_a5 = sp58;
    temp_t0 = (temp_a3 >> 8) & 3;
    temp_a2 = (temp_a3 >> 2) & 3;
    temp_a3_2 = ((temp_a3 << 0x1E) >= 0) ? (temp_a2 < temp_t0) : ((temp_a3 & 1) == 0);
    if (temp_t0 != 2) {
        if (temp_t0 == 1) {
            if (temp_a2 == 0) {
                var_a5 = (temp_a3_2 != 0) ? (sp58 + 1) : var_a5;
            }
        }
    } else if (temp_a2 != 0) {
        if (temp_a2 == 1) {
            var_a5 = (temp_a3_2 != 0) ? (sp58 + 2) : var_a5;
        }
    } else {
        var_a5 = sp58 + 3;
    }
    if (arg4 > 0) {
        var_a3 = 0;
        temp_a6_2 = 1 << temp_t0;
        if (arg4 & 1) {
            var_a3 = 1;
            switch (temp_a2) {                      /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                temp_t0_2 = (u8) *var_a5;
                var_s0->unk0 = (f32) *(temp_s5->unk80B0 + (((temp_t0_2 >> 5) & 7) * 4));
                var_s0->unk4 = (f32) *(temp_s5->unk80B4 + (((temp_t0_2 >> 2) & 7) * 4));
                var_s0->unk8 = (f32) *(temp_s5->unk80B8 + ((temp_t0_2 & 3) * 4));
                var_s0->unkC = (f32) arg0->unk80;
                break;
            case 1:                                 /* switch 1 */
                temp_t0_3 = (u16) *var_a5;
                var_s0->unk0 = (f32) *(temp_s5->unk80B0 + ((((s32) temp_t0_3 >> 0xA) & 0x1F) * 4));
                var_s0->unk4 = (f32) *(temp_s5->unk80B4 + ((((s32) temp_t0_3 >> 5) & 0x1F) * 4));
                var_s0->unk8 = (f32) *(temp_s5->unk80B8 + ((temp_t0_3 & 0x1F) * 4));
                if ((temp_s4->unk34 == 0) || (temp_t0_3 & 0x8000)) {
                    var_f4 = arg0->unk80;
                } else {
                    var_f4 = 0.0f;
                }
                var_s0->unkC = var_f4;
                break;
            case 2:                                 /* switch 1 */
                temp_t0_4 = *var_a5;
                var_s0->unk0 = (f32) (temp_t0_4 >> 0x18);
                var_s0->unk4 = (f32) ((temp_t0_4 >> 0x10) & 0xFF);
                var_s0->unk8 = (f32) ((temp_t0_4 >> 8) & 0xFF);
                if (temp_s4->unk34 != 0) {
                    var_f4_2 = (f32) (temp_t0_4 & 0xFF);
                } else {
                    var_f4_2 = arg0->unk80;
                }
                var_s0->unkC = var_f4_2;
                break;
            }
            var_a5 += temp_a6_2;
            var_s0 += 0x10;
        }
        if ((arg4 >> 1) != 0) {
loop_21:
            var_a3 += 2;
            switch (temp_a2) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                temp_t1 = *var_a5;
                var_s0->unk0 = (f32) *(temp_s5->unk80B0 + (((temp_t1 >> 5) & 7) * 4));
                var_s0->unk4 = (f32) *(temp_s5->unk80B4 + (((temp_t1 >> 2) & 7) * 4));
                var_s0->unk8 = (f32) *(temp_s5->unk80B8 + ((temp_t1 & 3) * 4));
                var_s0->unkC = (f32) arg0->unk80;
                break;
            case 2:                                 /* switch 3 */
                temp_t0_5 = *var_a5;
                var_s0->unk0 = (f32) (temp_t0_5 >> 0x18);
                var_s0->unk4 = (f32) ((temp_t0_5 >> 0x10) & 0xFF);
                var_s0->unk8 = (f32) ((temp_t0_5 >> 8) & 0xFF);
                if (temp_s4->unk34 != 0) {
                    var_f4_3 = (f32) (temp_t0_5 & 0xFF);
                } else {
                    var_f4_3 = arg0->unk80;
                }
                var_s0->unkC = var_f4_3;
                break;
            case 1:                                 /* switch 3 */
                temp_t0_6 = (u16) *var_a5;
                var_s0->unk0 = (f32) *(temp_s5->unk80B0 + ((((s32) temp_t0_6 >> 0xA) & 0x1F) * 4));
                var_s0->unk4 = (f32) *(temp_s5->unk80B4 + ((((s32) temp_t0_6 >> 5) & 0x1F) * 4));
                var_s0->unk8 = (f32) *(temp_s5->unk80B8 + ((temp_t0_6 & 0x1F) * 4));
                var_f4_4 = 0.0f;
                if ((temp_s4->unk34 == 0) || (temp_t0_6 & 0x8000)) {
                    var_f4_4 = arg0->unk80;
                }
                var_s0->unkC = var_f4_4;
                break;
            }
            temp_a5 = temp_a6_2 + var_a5;
            switch (temp_a2) {                      /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                temp_t1_2 = (u8) *temp_a5;
                var_s0->unk10 = (f32) *(temp_s5->unk80B0 + (((temp_t1_2 >> 5) & 7) * 4));
                var_s0->unk14 = (f32) *(temp_s5->unk80B4 + (((temp_t1_2 >> 2) & 7) * 4));
                var_s0->unk18 = (f32) *(temp_s5->unk80B8 + ((temp_t1_2 & 3) * 4));
                var_s0->unk1C = (f32) arg0->unk80;
                break;
            case 1:                                 /* switch 2 */
                temp_t0_7 = (u16) *temp_a5;
                var_s0->unk10 = (f32) *(temp_s5->unk80B0 + ((((s32) temp_t0_7 >> 0xA) & 0x1F) * 4));
                var_s0->unk14 = (f32) *(temp_s5->unk80B4 + ((((s32) temp_t0_7 >> 5) & 0x1F) * 4));
                var_s0->unk18 = (f32) *(temp_s5->unk80B8 + ((temp_t0_7 & 0x1F) * 4));
                var_f4_5 = 0.0f;
                if ((temp_s4->unk34 == 0) || (temp_t0_7 & 0x8000)) {
                    var_f4_5 = arg0->unk80;
                }
                var_s0->unk1C = var_f4_5;
                break;
            case 2:                                 /* switch 2 */
                temp_t0_8 = *temp_a5;
                var_s0->unk10 = (f32) (temp_t0_8 >> 0x18);
                var_s0->unk14 = (f32) ((temp_t0_8 >> 0x10) & 0xFF);
                var_s0->unk18 = (f32) ((temp_t0_8 >> 8) & 0xFF);
                if (temp_s4->unk34 != 0) {
                    var_f4_6 = (f32) (temp_t0_8 & 0xFF);
                } else {
                    var_f4_6 = arg0->unk80;
                }
                var_s0->unk1C = var_f4_6;
                break;
            }
            var_a5 = temp_a6_2 + temp_a5;
            var_s0 += 0x20;
            if (arg4 != var_a3) {
                goto loop_21;
            }
        }
    }
    temp_s5->unk7DD8 = 0;
    return 0;
}

/*
Decompilation failure in function ReadRGBA:

Cannot find branch target __glCrmLeftRightRect
*/

void ClearRGBA(void **arg0) {
    s64 sp80;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    u64 sp50;
    u64 sp48;
    s64 sp40;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    u32 sp24;
    s32 sp20;
    u8 sp1A;
    s8 sp19;
    s8 sp18;
    s32 sp14;
    s32 sp10;
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a7;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t1_2;
    s64 var_a4;
    u32 temp_a3_2;
    u32 temp_a3_3;
    u32 temp_a7_3;
    u32 temp_a7_4;
    u32 var_a3_2;
    u32 var_t0;
    void *temp_s0;
    void *temp_t0;
    void *temp_t2;

    temp_s0 = *arg0;
    var_a4 = temp_s0 + 0x10000;
    temp_a2 = temp_s0->unk80C0;
    if (temp_a2 != 0) {
        temp_a6 = temp_s0->unk740C;
        if (temp_s0->unk7404 != temp_a6) {
            temp_a7 = temp_s0->unk7408;
            if (temp_a7 == temp_s0->unk7410) {

            } else {
                sp68 = temp_s0->unkCC4 > 0;
                sp60 = (s64) arg0;
                sp80 = var_a4;
                if (temp_s0->unk77BC != 0) {
                    sp60 = (s64) arg0;
                    sp80 = var_a4;
                    if (temp_s0->unk2DF0 != arg0) {
                        __glCrmSetDrawBuffer(temp_s0, sp60, temp_a2, 0xE940C, var_a4, 1, temp_a6, temp_a7);
                    }
                }
                __glCrmGetDstBufMode(temp_s0, sp60, sp);
                var_a4 = sp80;
                temp_f4 = temp_s0->unk7848;
                sp48 = (s64) (temp_s0->unk74C * temp_s0->unk7828) << 0;
                sp50 = (second half of f64) << 0;
                sp58 = (s64) (second half of f64) << 0;
                if (sp68 != 0) {
                    sp40 = (s64) (temp_s0->unk750 * temp_f4) << 0;
                } else {
                    sp40 = (s64) temp_f4 << 0;
                }
                var_a3 = (sp0 >> 2) & 3;
                if (var_a3 != 2) {
                    if (var_a3 != 1) {
                        var_a7 = sp8;
                        if (var_a3 != 0) {
                            var_t0 = sp0 >> 8;
                            var_t1 = sp4;
                            goto block_19;
                        }
                        if (var_a4->unk-7F40 == -1) {
                            if (temp_s0->unk700 & 8) {
                                if ((!(sp58 & 0x1F) || (sp58 == 0xFF)) && (!(sp50 & 0x1F) || (sp50 == 0xFF))) {
                                    if (sp48 & 0x3F) {
                                        if (sp48 == 0xFF) {
                                            goto block_56;
                                        }
                                        goto block_23;
                                    }
                                    goto block_57;
                                }
                                goto block_23;
                            }
block_56:
block_57:
                            var_t0_2 = (sp0 >> 8) & 3;
                            var_a3 = ((sp48 >> 6) & 3) | ((sp58 & 0xE0) | ((sp50 >> 3) & 0x1C));
                            var_a7 = var_a3;
                            if (var_t0_2 != 2) {
                                if (var_t0_2 != 1) {
                                    temp_a7_2 = var_a3 | (var_a3 << 8);
                                    var_t1 = -1;
                                    var_a7 = temp_a7_2 | (temp_a7_2 << 0x10);
                                } else {
                                    if (!(sp0 & 2)) {
                                        goto block_72;
                                    }
                                    if (sp0 & 1) {
                                        var_a7 = var_a3 << 8;
                                        var_t1 = 0xAAAAAAAA;
                                    } else {
block_72:
                                        var_t1 = 0x55555555;
                                    }
                                    var_a7 |= var_a7 << 0x10;
                                }
                            } else {
                                var_t1 = 0x11111111;
                            }
                            goto block_20;
                        }
                        goto block_23;
                    }
                    temp_a3 = var_a4->unk-7F40;
                    if (sp68 != 0) {
                        if (temp_a3 == -1) {
                            goto block_46;
                        }
                        goto block_23;
                    }
                    if (temp_a3 == -0x100) {
block_46:
                        var_t0_2 = (sp0 >> 8) & 3;
                        var_a3 = ((sp48 >> 3) & 0x1F) | ((sp40 & 0x80) << 8) | (((sp58 & 0xF8) << 7) | ((sp50 & 0xF8) * 4));
                        var_a7 = var_a3;
                        if (var_a4->unk-7ED3 != 0) {
                            var_t1 = -1;
                            var_a7 = var_a3 | (var_a3 << 0x10);
                        } else if (var_t0_2 != 2) {
                            var_t1 = -1;
                            var_a7 = var_a3 | (var_a3 << 0x10);
                        } else {
                            if (!(sp0 & 2)) {
                                goto block_68;
                            }
                            if (sp0 & 1) {
                                var_a7 = var_a3 << 0x10;
                                var_t1 = 0xCCCCCCCC;
                            } else {
block_68:
                                var_t1 = 0x33333333;
                            }
                        }
                        goto block_20;
                    }
                    goto block_23;
                }
                var_a7 = sp40 | (sp48 << 8) | ((sp58 << 0x18) | (sp50 << 0x10));
                var_a3 = ((u32) temp_s0->unk7D58 >> 3) & 0xF;
                if (sp68 != 0) {
                    var_t1_2 = var_a3 * 0x10;
                    if (var_a3 != 0xF) {
                        goto block_41;
                    }
                    goto block_61;
                }
                var_t1_2 = var_a3 * 0x10;
                if (var_a3 == 0xE) {
block_61:
                    var_t1 = -1;
                } else {
block_41:
                    temp_t1 = var_a3 | var_t1_2;
                    temp_t1_2 = temp_t1 | (temp_t1 << 8);
                    var_t1 = temp_t1_2 | (temp_t1_2 << 0x10);
                }
                var_t0 = sp0 >> 8;
block_19:
                var_t0_2 = var_t0 & 3;
block_20:
                sp10 = var_a7;
                sp14 = var_t1;
                sp19 = (sp0 >> 0xA) & 7;
                sp18 = 1 << var_t0_2;
                sp1A = (temp_s0->unk7D58 << 0xB) < 0;
                temp_v0 = ioctl(temp_s0->unk7B10, 0x5606, &sp10, var_a3, var_a4, 1, sp0, var_a7);
                var_a4 = sp80;
                if (temp_v0 != 0) {
                    temp_s0->unk14(temp_s0, &sub_0da40000 + 0x2080);
                    var_a4 = sp80;
                }
                var_a2 = (sp1A & 2) != 0;
                if (var_a2 != 0) {
block_23:
                    temp_a7_3 = temp_s0->unk7D58;
                    temp_t1_3 = (temp_a7_3 >> 3) & 0xF;
                    temp_t2 = temp_s0->unk7DBC;
                    temp_t0 = temp_s0->unk7DB8;
                    var_a3_2 = (-0x79 & ((((((temp_a7_3 >> 8) & 1) << 8) | 0x400000) & ~0x80) | (((temp_a7_3 >> 7) & 1) << 7))) | (temp_t1_3 * 8);
                    if (sp68 == 0) {
                        var_a3_2 = ((temp_t1_3 ^ 0xE) == 0) ? ((-0x79 & var_a3_2) | (((((var_a3_2 >> 3) & 0xF) | 1) & 0xF) * 8)) : var_a3_2;
                    }
                    temp_a3_2 = (var_a3_2 & ~0x100000) | (((temp_a7_3 >> 0x14) & 1) << 0x14);
                    temp_t1_4 = (((sp20 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
                    if (var_a4->unk-7F34 != sp0) {
                        temp_t0->unk2008 = sp0;
                        temp_t2->unk2008 = sp0;
                    }
                    if (temp_s0->unk7D5C != temp_a3_2) {
                        temp_s0->unk7DB8->unk2018 = temp_a3_2;
                        sp24 = temp_a3_2;
                        temp_s0->unk7DBC->unk2018 = temp_a3_2;
                        temp_s0->unk7D5C = temp_a3_2;
                    }
                    if (temp_s0->unk7D60 != temp_t1_4) {
                        temp_s0->unk7DB8->unk2060 = temp_t1_4;
                        sp20 = temp_t1_4;
                        temp_s0->unk7DBC->unk2060 = temp_t1_4;
                        temp_s0->unk7D60 = temp_t1_4;
                    }
                    var_a2 = (sp50 << 0x10) | (sp48 << 8);
                    sp28 = sp40 | (sp58 << 0x18) | var_a2;
                    temp_t0->unk20D0 = sp28;
                    sp2C = temp_s0->unk7404 << 6;
                    temp_t0->unk2080 = sp2C;
                    sp30 = temp_s0->unk7408 << 6;
                    temp_t0->unk2084 = sp30;
                    sp34 = temp_s0->unk740C << 6;
                    temp_t0->unk2088 = sp34;
                    sp38 = temp_s0->unk7410 << 6;
                    temp_t0->unk288C = sp38;
                    temp_a3_3 = var_a4->unk-7F34;
                    if (sp0 != temp_a3_3) {
                        temp_t0->unk2008 = temp_a3_3;
                        temp_t2->unk2008 = (u32) var_a4->unk-7F34;
                    }
                    temp_a7_4 = temp_s0->unk7D58;
                    if (temp_s0->unk7D5C != temp_a7_4) {
                        temp_s0->unk7DB8->unk2018 = temp_a7_4;
                        temp_s0->unk7DBC->unk2018 = (u32) temp_s0->unk7D58;
                        temp_s0->unk7D5C = (u32) temp_s0->unk7D58;
                    }
                }
                if (temp_s0->unk77BC != 0) {
                    temp_a1 = temp_s0->unk2DF0;
                    if (temp_a1 != sp60) {
                        __glCrmSetDrawBuffer(temp_s0, (s64) temp_a1, var_a2);
                        var_a4 = sp80;
                    }
                }
            }
        }
    }
    if (*temp_s0->unk7D38 == 1) {
        temp_a0 = var_a4->unk-7F60;
        if (temp_a0 & 2) {
            var_a4->unk-7F60 = (s32) (temp_a0 | 4);
            if ((temp_s0->unk700 & 0x2000) && (*(s32 *)0x1018 != 2)) {
                *(void *)0x1018 = 2;
                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
            }
        }
    }
}

void MakeCurrentRGBA(void) {
    __glMakeCurrentBuffer();
}

void ResizeRGBA(void *arg0, s32 arg1, s32 arg2) {
    arg0->unk1C = arg1;
    arg0->unk8 = arg2;
    arg0->unk4 = arg1;
}

void FreeRGBA(void *arg1) {
    s64 sp0;
    s32 temp_a4;
    s32 var_a3;

    sp0 = arg1 + 0x10000;
    var_a3 = arg1->unk80B0;
    temp_a4 = arg1->unk80B8;
    if (var_a3 != temp_a4) {
        arg1->unkC(arg1, temp_a4, var_a3, temp_a4);
        var_a3 = sp0->unk-7F50;
    }
    arg1->unkC(arg1, var_a3);
}

void StoreSPBuffRGBA(void *arg0, void *arg1) {
    s64 sp20;
    f64 sp18;
    f32 var_f4;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s64 temp_a1;
    void *temp_a0;
    void *var_a0;

    temp_a4 = arg0->unk10;
    if (temp_a4 != 0) {
        temp_a0 = arg0->unk0;
        temp_t0 = arg1->unk4;
        temp_a7 = arg1->unk0;
        temp_a6 = temp_a0->unk700;
        temp_a1 = temp_a4 + (((temp_a7 + (arg0->unk1C * (temp_t0 - temp_a0->unkE50))) - temp_a0->unkE4C) * 2 * 4);
        if (temp_a6 & 8) {
            var_f4 = (f32) ((*((temp_a7 & 3) + ((temp_t0 & 3) * 4) + &__glDitherTable) * 2) + 1) * 0.03125f;
        } else {
            var_f4 = temp_a0->unkDD4;
        }
        if (temp_a6 & 2) {
            sp18 = (bitwise f64) var_f4;
            sp20 = temp_a1;
            temp_a0->unk30FC(temp_a0, arg0, arg1, sp, temp_a4, arg0, temp_a6, temp_a7);
            var_a0 = sp;
        } else {
            var_a0 = arg1 + 0xC;
        }
        temp_a1->unk0 = (s32) (((s32) (var_a0->unk0 + var_f4) << 0x10) | ((s32) (var_a0->unk4 + var_f4) & 0xFFFF));
        temp_a1->unk4 = (s32) (((s32) (var_a0->unk8 + var_f4) << 0x10) | ((s32) (var_a0->unkC + var_f4) & 0xFFFF));
    }
}

void StoreSPBuffRed(void *arg0, void *arg1) {
    s64 sp20;
    f64 sp18;
    f32 *var_a0;
    f32 var_f4;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s64 temp_a1;
    void *temp_a0;

    temp_a4 = arg0->unk10;
    if (temp_a4 != 0) {
        temp_a0 = arg0->unk0;
        temp_a7 = arg1->unk4;
        temp_t0 = arg1->unk0;
        temp_a6 = temp_a0->unk700;
        temp_a1 = (temp_a4 + (arg0->unk1C * (temp_a7 - temp_a0->unkE50) * 2) + (temp_t0 * 2)) - (temp_a0->unkE4C * 2);
        if (temp_a6 & 8) {
            var_f4 = (f32) ((*((temp_t0 & 3) + ((temp_a7 & 3) * 4) + &__glDitherTable) * 2) + 1) * 0.03125f;
        } else {
            var_f4 = temp_a0->unkDD4;
        }
        if (temp_a6 & 2) {
            sp18 = (bitwise f64) var_f4;
            sp20 = temp_a1;
            temp_a0->unk30FC(temp_a0, arg0, arg1, sp, temp_a4, arg0, temp_a6, temp_a7);
            var_a0 = sp;
        } else {
            var_a0 = arg1 + 0xC;
        }
        *temp_a1 = (s16) (s32) (*var_a0 + var_f4);
    }
}

void PickRGBA(void *arg0, void *arg1) {
    s32 temp_a3_2;
    void *temp_a3;
    void *temp_a4;

    if (arg0->unk77BC != 0) {
        arg1->unkA4 = (void (*)(void *, void *)) (&sub_0d960000 + 0x6E90);
    } else {
        arg1->unkA4 = (void (*)(void *, void *)) (&sub_0d960000 + 0x6DC0);
    }
    temp_a3 = arg1->unk0->unk7D38;
    if ((temp_a3->unk0 != 4) || (temp_a4 = temp_a3->unk4, (temp_a4->unk4 == 0)) || ((temp_a3_2 = temp_a4->unk2C, (temp_a4->unk28 != 0x10)) && (temp_a3_2 != 0))) {
        return;
    }
    if (temp_a3_2 != 0x10) {
        arg1->unkA4 = StoreSPBuffRed;
        return;
    }
    arg1->unkA4 = StoreSPBuffRGBA;
}

void __glCrmInitRGB(void *arg0, void *arg1) {
    f32 *temp_ra;
    f32 *temp_t0;
    f32 *temp_t2;
    f32 *temp_t8;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f23;
    f32 temp_f25;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_t3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    u8 temp_a4;
    void (*var_a0_3)(void *, s32, s32, void *);
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a3;

    __glInitBuffer();
    temp_a0 = arg1->unkCB8 + arg1->unkCBC + (arg1->unkCC0 + arg1->unkCC4);
    switch (temp_a0) {                              /* irregular */
    default:
        var_a0 = arg0->unkC;
        break;
    case 15:
    case 16:
        arg0->unkC = 0x10;
        var_a0 = 0x10;
        break;
    case 24:
    case 32:
        arg0->unkC = 0x20;
        var_a0 = 0x20;
        break;
    case 8:
        var_a0 = 8;
        arg0->unkC = 8;
        break;
    }
    temp_a2 = (s32) (var_a0 + 7) >> 3;
    arg0->unk18 = temp_a2;
    var_a0_2 = 1;
    if ((arg1->unkC96 != 0) && ((u32) temp_a2 < 4U)) {

    } else {
        var_a0_2 = 0;
    }
    temp_a4 = var_a0_2 & 0xFF;
    arg1->unk80BC = temp_a4;
    if ((temp_a4 == 0) || (*arg1->unk7D38 != 1)) {
        goto block_12;
    }
    if ((u32) ((s32) arg1->unk7B47 >> 4) < (u32) arg0->unk18) {
        arg1->unk80BC = 0U;
    } else {
block_12:
        if (temp_a4 != 0) {
            arg0->unk18 = (s32) (arg0->unk18 * 2);
        }
    }
    arg0->unkCC = &__glFetchSpan;
    arg0->unkC8 = &__glFetchSpan;
    arg0->unk2C = MakeCurrentRGBA;
    arg0->unkB4 = (void *) (&sub_0d960000 + 0x6FB0);
    temp_a1 = &sub_0d970000 - 0x7F60;
    arg0->unk38 = temp_a1;
    arg0->unk34 = temp_a1;
    arg0->unkD8 = (void *) (&sub_0d960000 + 0x7980);
    temp_a0_2 = arg1->unk7D3C;
    if (temp_a0_2->unk0 != 4) {
        goto block_16;
    }
    temp_a3 = temp_a0_2->unk4;
    if (temp_a3->unk4 != 0) {
        if ((temp_a3->unk28 == 0x10) || (temp_a3->unk2C == 0)) {
            arg0->unkB0 = &__glReadSpan;
            var_a0_3 = &sub_0d960000 + 0x7960;
            if (arg1->unkD5C != 0x10) {
                arg0->unkAC = __glCrmReadSPBuffRed;
            } else {
                arg0->unkAC = __glCrmReadSPBuffColor;
            }
        } else {
            goto block_17;
        }
    } else {
block_16:
block_17:
        var_a0_3 = &sub_0d960000 + 0x7960;
        arg0->unkAC = var_a0_3;
        arg0->unkB0 = (? *) (&sub_0d960000 + 0x72F0);
    }
    arg0->unk84 = 0xFF;
    arg0->unk6C = 0xFF;
    arg0->unk68 = 0xFF;
    arg0->unk64 = 0xFF;
    arg0->unk50 = 0xFF;
    arg0->unk4C = 0xFF;
    arg0->unk48 = 0xFF;
    arg0->unkA8 = var_a0_3;
    arg0->unkA0 = PickRGBA;
    arg0->unkBC = &__glCrmStoreRGBAStippledSpan;
    arg0->unkB8 = &__glCrmStoreRGBASpan;
    arg0->unk80 = 255.0f;
    arg0->unk60 = 255.0f;
    arg0->unk5C = 255.0f;
    arg0->unk58 = 255.0f;
    temp_a5 = arg1->unkCCC;
    temp_a4_2 = arg1->unkCD4;
    temp_a3_2 = arg1->unkCD0 | temp_a4_2;
    temp_a2_2 = arg1->unkCC8 | temp_a5 | temp_a3_2;
    arg0->unk98 = temp_a2_2;
    if ((arg1->unk80BC != 0) && (arg0 == (arg1 + 0x78A4))) {
        temp_t3 = arg0->unk18 * 4;
        arg0->unk70 = temp_t3;
        arg0->unk98 = (s32) (temp_a2_2 << temp_t3);
    } else {
        arg0->unk70 = 0;
    }
    if ((arg0 == (arg1 + 0x77C8)) && (arg0->unkC != 0x20)) {
        temp_s4 = 1 << arg1->unkCC0;
        temp_f22 = 255.0f / (f32) (temp_s4 - 1);
        temp_s1 = 1 << arg1->unkCB8;
        temp_f20 = 255.0f / (f32) (temp_s1 - 1);
        temp_v0 = arg1->unk0(arg1, temp_s1 * 4, temp_a2_2, temp_a3_2, temp_a4_2, temp_a5, 0xFF, PickRGBA);
        var_a0_4 = temp_v0;
        arg1->unk80B0 = temp_v0;
        if (temp_s1 > 0) {
            var_a0_5 = temp_s1 & 3;
            var_a3 = 0;
            var_a2 = 0;
            if (var_a0_5 != 0) {
                do {
                    temp_f23 = (f32) var_a2;
                    var_a0_5 -= 1;
                    var_a2 += 1;
                    temp_t8 = arg1->unk80B0 + var_a3;
                    var_a3 += 4;
                    *temp_t8 = temp_f23 * temp_f20;
                } while (var_a0_5 != 0);
            }
            if ((temp_s1 >> 2) != 0) {
                do {
                    *(arg1->unk80B0 + var_a3) = (f32) var_a2 * temp_f20;
                    *(arg1->unk80B0 + (var_a3 + 4)) = (f32) (var_a2 + 1) * temp_f20;
                    temp_f25 = (f32) (var_a2 + 3);
                    *(arg1->unk80B0 + (var_a3 + 8)) = (f32) (var_a2 + 2) * temp_f20;
                    var_a2 += 4;
                    temp_ra = arg1->unk80B0 + (var_a3 + 0xC);
                    var_a3 += 0x10;
                    *temp_ra = temp_f25 * temp_f20;
                } while (temp_s1 != var_a2);
            }
            var_a0_4 = arg1->unk80B0;
        }
        arg1->unk80B4 = var_a0_4;
        if ((temp_s4 == temp_s1) && (temp_f20 == temp_f22)) {
            arg1->unk80B8 = var_a0_4;
        } else {
            var_a0_6 = temp_s4 & 3;
            arg1->unk80B8 = arg1->unk0(arg1, temp_s4 * 4);
            if (temp_s4 > 0) {
                var_a2_2 = 0;
                var_a3_2 = 0;
                if (var_a0_6 != 0) {
                    do {
                        temp_f0 = (f32) var_a2_2;
                        var_a0_6 -= 1;
                        var_a2_2 += 1;
                        temp_t0 = arg1->unk80B8 + var_a3_2;
                        var_a3_2 += 4;
                        *temp_t0 = temp_f0 * temp_f22;
                    } while (var_a0_6 != 0);
                }
                if ((temp_s4 >> 2) != 0) {
                    do {
                        *(arg1->unk80B8 + var_a3_2) = (f32) var_a2_2 * temp_f22;
                        *(arg1->unk80B8 + (var_a3_2 + 4)) = (f32) (var_a2_2 + 1) * temp_f22;
                        temp_f1 = (f32) (var_a2_2 + 3);
                        *(arg1->unk80B8 + (var_a3_2 + 8)) = (f32) (var_a2_2 + 2) * temp_f22;
                        var_a2_2 += 4;
                        temp_t2 = arg1->unk80B8 + (var_a3_2 + 0xC);
                        var_a3_2 += 0x10;
                        *temp_t2 = temp_f1 * temp_f22;
                    } while (temp_s4 != var_a2_2);
                }
            }
        }
        arg0->unk40 = (void *) (&sub_0d970000 - 0x7F50);
        return;
    }
    arg0->unk40 = NULL;
}

void __glCrmReadSPBuffColor(void *arg0, s32 arg1, s32 arg2, void *arg3) {
    s32 temp_a6;
    u32 temp_at_2;
    u32 temp_v0;
    void *temp_a5;
    void *temp_at;

    temp_a6 = arg0->unk10;
    temp_a5 = arg0->unk0;
    if (temp_a6 != 0) {
        temp_at = temp_a6 + (((arg1 + (arg0->unk1C * (arg2 - temp_a5->unkE50))) - temp_a5->unkE4C) * 2 * 4);
        temp_v0 = temp_at->unk0;
        arg3->unk4 = (f32) (temp_v0 & 0xFFFF);
        arg3->unk0 = (f32) (temp_v0 >> 0x10);
        temp_at_2 = temp_at->unk4;
        arg3->unkC = (f32) (temp_at_2 & 0xFFFF);
        arg3->unk8 = (f32) (temp_at_2 >> 0x10);
    }
}

void __glCrmReadSPBuffRed(void *arg0, s32 arg1, s32 arg2, void *arg3) {
    s32 temp_a6;
    void *temp_a5;

    temp_a6 = arg0->unk10;
    temp_a5 = arg0->unk0;
    if (temp_a6 != 0) {
        arg3->unkC = 0.0f;
        arg3->unk8 = 0.0f;
        arg3->unk4 = 0.0f;
        arg3->unk0 = (f32) *((temp_a6 + (arg0->unk1C * (arg2 - temp_a5->unkE50) * 2) + (arg1 * 2)) - (temp_a5->unkE4C * 2));
    }
}

void __glCrmFetchSPBuffColor(void **arg0, s32 arg1, s32 arg2, void *arg3) {
    u32 temp_a7_2;
    u32 temp_t0;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;

    temp_a5 = *arg0;
    temp_a6 = temp_a5->unk80FC;
    if (temp_a6 != NULL) {
        temp_a7 = temp_a6->unk0 + (((arg1 + (temp_a6->unk10 * (arg2 - temp_a5->unkE50))) - temp_a5->unkE4C) * 2 * 4);
        temp_t0 = temp_a7->unk0;
        arg3->unk0 = (f32) (temp_t0 >> 0x17);
        arg3->unk4 = (f32) ((temp_t0 >> 7) & 0x1FF);
        temp_a7_2 = temp_a7->unk4;
        arg3->unk8 = (f32) (temp_a7_2 >> 0x17);
        arg3->unkC = (f32) ((temp_a7_2 >> 7) & 0x1FF);
    }
}

void __glCrmFetchSPBuffRed(void **arg0, s32 arg1, s32 arg2, void *arg3) {
    void *temp_a5;
    void *temp_a6;

    temp_a5 = *arg0;
    temp_a6 = temp_a5->unk80FC;
    if (temp_a6 != NULL) {
        arg3->unkC = 0.0f;
        arg3->unk8 = 0.0f;
        arg3->unk4 = 0.0f;
        arg3->unk0 = (f32) (((s32) *((temp_a6->unk0 + (temp_a6->unk10 * (arg2 - temp_a5->unkE50) * 2) + (arg1 * 2)) - (temp_a5->unkE4C * 2)) >> 7) & 0x1FF);
    }
}

void __glCrmFetchSPBuffRed_8bit(void **arg0, s32 arg1, s32 arg2, void *arg3) {
    void *temp_a5;
    void *temp_a6;

    temp_a5 = *arg0;
    temp_a6 = temp_a5->unk80FC;
    if (temp_a6 != NULL) {
        arg3->unkC = 0.0f;
        arg3->unk8 = 0.0f;
        arg3->unk4 = 0.0f;
        arg3->unk0 = (f32) *((temp_a6->unk0 + (temp_a6->unk10 * (arg2 - temp_a5->unkE50) * 2) + (arg1 * 2)) - (temp_a5->unkE4C * 2));
    }
}
