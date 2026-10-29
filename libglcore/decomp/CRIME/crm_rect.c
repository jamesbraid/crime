? __glCrmDownloadCurrentColor(s64);                 /* extern */
s64 __glCrmSetStoreBuffer(void *, s32);             /* extern */
f64 ceilf(s32, s32, f32, f32, f32, f32, f32, f32);  /* extern */

void __glCrmFastRect(void *arg0) {
    s64 sp150;
    s64 sp148;
    s64 sp140;
    f64 sp138;
    f64 sp130;
    f64 sp128;
    f64 sp120;
    f64 sp118;
    f64 sp110;
    s32 sp10C;
    s32 sp108;
    s32 sp104;
    s32 sp100;
    f32 spA8;
    ? sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f64 sp20;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f21;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f10;
    f32 var_f11;
    f32 var_f17;
    f32 var_f5;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f2;
    f64 temp_f3;
    f64 temp_f4;
    s32 temp_a2;
    s32 temp_a3;

    temp_f5 = arg0->unkDD8;
    temp_f0 = arg0->unk746C;
    temp_a3 = arg0->unk76E4;
    temp_a2 = arg0->unk7DB8;
    if (!(temp_f0 < -temp_f5) && !(temp_f5 < temp_f0)) {
        temp_f18 = M2C_ERROR(/* unknown instruction: madd.s $f18, $f8, $f16, $f6 */);
        temp_f19 = M2C_ERROR(/* unknown instruction: madd.s $f19, $f9, $f13, $f7 */);
        temp_f21 = M2C_ERROR(/* unknown instruction: madd.s $f21, $f9, $f15, $f7 */);
        temp_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f8, $f14, $f6 */);
        spC = temp_f18;
        var_f11 = temp_f18;
        sp8 = temp_f21;
        var_f5 = temp_f21;
        sp4 = temp_f12;
        var_f17 = temp_f12;
        sp0 = temp_f19;
        var_f10 = temp_f19;
        if (temp_f21 < temp_f19) {
            var_f10 = temp_f21;
            sp8 = temp_f19;
            var_f5 = temp_f19;
            sp0 = temp_f21;
        }
        if (temp_f18 < temp_f12) {
            var_f17 = temp_f18;
            spC = temp_f12;
            var_f11 = temp_f12;
            sp4 = temp_f18;
        }
        temp_f8 = arg0->unk6C0;
        temp_f7 = arg0->unk6B8;
        temp_f9 = arg0->unk6C4;
        temp_f6 = arg0->unk6BC;
        if (!(var_f5 < var_f10) && !(var_f11 < var_f17) && !(var_f5 < (temp_f6 - temp_f7))) {
            temp_f13 = temp_f9 + temp_f8;
            if (!(var_f11 < temp_f13)) {
                temp_f14 = temp_f6 + temp_f7;
                if (!(temp_f14 < var_f10)) {
                    sp120 = (bitwise f64) var_f17;
                    sp128 = (bitwise f64) var_f11;
                    sp130 = (bitwise f64) var_f5;
                    sp138 = (bitwise f64) temp_f0;
                    sp140 = (s64) temp_a3;
                    sp148 = (s64) temp_a2;
                    sp150 = (s64) arg0;
                    if (!((temp_f9 - temp_f8) < var_f17)) {
                        temp_f12_2 = M2C_ERROR(/* unknown instruction: movf.s $f12, $f10, $fcc2 */);
                        sp0 = temp_f12_2;
                        temp_f4 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f6, $fcc5 */);
                        temp_f3 = M2C_ERROR(/* unknown instruction: movt.s $f3, $f14, $fcc4 */);
                        sp128 = temp_f4;
                        sp130 = temp_f3;
                        temp_f2 = M2C_ERROR(/* unknown instruction: movt.s $f2, $f13, $fcc3 */);
                        spC = (bitwise f32) temp_f4;
                        sp120 = temp_f2;
                        sp8 = (bitwise f32) temp_f3;
                        sp4 = (bitwise f32) temp_f2;
                        temp_f0_2 = ceilf(temp_a2, temp_a3, temp_f12_2, temp_f13, temp_f14, var_f17, temp_f18, temp_f19);
                        sp118 = temp_f0_2;
                        sp0 = (f32) temp_f0_2;
                        temp_f6_2 = (f32) ((f64) ceilf((s32) sp130, second half of f64) + (second half of f64));
                        sp130 = (bitwise f64) temp_f6_2;
                        sp8 = temp_f6_2;
                        temp_f0_3 = ceilf((s32) sp120, second half of f64);
                        sp110 = temp_f0_3;
                        sp4 = (f32) temp_f0_3;
                        temp_f5_2 = (f32) ((f64) ceilf((s32) sp128, second half of f64) + -1.0);
                        spC = temp_f5_2;
                        if (!((second half of f64) < (f32) sp118) && !(temp_f5_2 < (f32) sp110)) {
                            if (sp150->unk7D60 != 0x03020000) {
                                sp148->unk2060 = 0x03020000;
                                sp10 = 0x03020000;
                                sp150->unk7DBC->unk2060 = 0x03020000;
                                sp150->unk7D60 = 0x03020000;
                            }
                            sp148->unk2080 = sp0;
                            sp148->unk2088 = sp8;
                            sp148->unk2084 = sp4;
                            sp148->unk208C = spC;
                            if (sp150->unk807C & 2) {
                                if (sp150->unk8080 != 2) {
                                    __glCrmDownloadCurrentColor(sp150);
                                }
                            } else {
                                if (sp150->unkC95 != 0) {
                                    sp14 = sp150->unk7810 & ((s64) sp150->unk1C0 << 0);
                                    sp148->unk20D0 = sp14;
                                } else {
                                    sp18 = (s32) sp150->unkCC | ((s32) sp150->unkC0 << 0x18) | (((s32) sp150->unkC4 << 0x10) | ((s32) sp150->unkC8 << 8));
                                    sp148->unk20D0 = sp18;
                                }
                                sp150->unk8080 = 0;
                            }
                            if (sp140 & 4) {
                                sp20 = (f64) (M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */) * 64.0f);
                                sp28 = (s64) sp20;
                                sp30 = 0;
                                sp38 = 0;
                                sp148->unk21D8 = sp38;
                                sp148->unk21D0 = sp30;
                                sp148->unk21C8 = (f64) (second half of f64);
                            }
                            if (sp140 & 0x2000) {
                                spA8 = sp150->unk73DC->unk38;
                                sp100 = (s32) (sp150->unk30F8(sp150, &sp40) * 255.0f * 4096.0f);
                                sp104 = 0;
                                sp108 = 0;
                                sp148->unk2188 = sp108;
                                sp148->unk2180 = sp104;
                                sp148->unk2178 = sp100;
                            }
                            sp10C = 0;
                            sp148->unk29F0 = sp10C;
                        }
                    }
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x50, 0x54, 0x60, 0x64], gap at: 0x48. */
void __glCrmFrontBackRect(void *arg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4) {
    s32 sp4;
    u32 sp0;
    s32 temp_a2_2;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a1;
    u32 temp_a2;
    void *temp_s1;
    void *temp_s2;

    temp_s1 = arg0->unk7DB8;
    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    unksp40 = (s64) temp_s2->unk21E8;
    temp_a2 = arg0->unk7D58;
    temp_a1 = arg0->unk7D5C;
    temp_a0 = -3 & temp_a2;
    unksp58 = __glCrmSetStoreBuffer(arg0->unk77C0);
    arg0->unk7D58 = temp_a0;
    if (temp_a1 != temp_a0) {
        arg0->unk7DB8->unk2018 = temp_a0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    unksp48 = (s64) (arg0 + 0x10000);
    sp4 = 0;
    temp_s1->unk21E8 = sp4;
    temp_s2->unk21E8 = sp4;
    arg0->unk8114(arg0, temp_a1, temp_a2);
    __glCrmSetStoreBuffer(arg0, arg0->unk77C4);
    temp_a2_2 = ((sp0 >> 1) & 1) * 2;
    temp_a0_2 = (-3 & arg0->unk7D58) | temp_a2_2;
    arg0->unk7D58 = temp_a0_2;
    if (arg0->unk7D5C != temp_a0_2) {
        arg0->unk7DB8->unk2018 = temp_a0_2;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    temp_s1->unk21E8 = (s32) unksp40;
    temp_s2->unk21E8 = (s32) unksp40;
    unksp48->unk-7EEC(arg0, unksp48, temp_a2_2, arg0->unk7D58);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    __glCrmSetStoreBuffer(arg0, (s32) unksp58);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x30, 0x34, 0x38, 0x3c, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x28. */
void __glCrmLeftRightRect(void *arg0, void *arg6, void *arg7, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4) {
    void *sp4;
    u32 sp0;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_v0;
    u32 var_a2;
    u32 var_a3;
    u32 var_a4;
    void *temp_s1;
    void *temp_s2;
    void *var_a5;
    void *var_a6;
    void *var_a7;

    var_a6 = arg6;
    var_a7 = arg7;
    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    var_a4 = temp_s2->unk2008;
    temp_s1 = arg0->unk7DB8;
    var_a5 = temp_s2->unk21E8;
    var_a3 = ~var_a4 & 1;
    var_a2 = (-2 & var_a4) | var_a3;
    temp_s2->unk2008 = var_a2;
    temp_s1->unk2008 = var_a2;
    unksp28 = (s64) var_a5;
    if (arg0->unk2F44 != __glCrmFrontBackRect) {
        temp_a0 = arg0->unk7D58 & ~2;
        arg0->unk7D58 = temp_a0;
        if (arg0->unk7D5C != temp_a0) {
            var_a5 = arg0->unk7DB8;
            var_a5->unk2018 = temp_a0;
            var_a4 = (u32) arg0->unk7DBC;
            var_a3 = arg0->unk7D58;
            var_a4->unk2018 = var_a3;
            var_a2 = arg0->unk7D58;
            arg0->unk7D5C = var_a2;
        }
        sp4 = NULL;
        var_a7 = sp4;
        var_a6 = sp4;
        temp_s1->unk21E8 = var_a7;
        temp_s2->unk21E8 = var_a6;
    }
    unksp40 = (s64) (arg0 + 0x10000);
    arg0->unk8128(arg0, -3, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7, fparg1, fparg2, fparg3, fparg4);
    temp_a0_2 = temp_s2->unk2008;
    temp_v0 = (-2 & temp_a0_2) | (~temp_a0_2 & 1);
    temp_s2->unk2008 = temp_v0;
    temp_s1->unk2008 = temp_v0;
    if (arg0->unk2F44 != __glCrmFrontBackRect) {
        temp_a0_3 = (arg0->unk7D58 & ~2) | (((sp0 >> 1) & 1) * 2);
        arg0->unk7D58 = temp_a0_3;
        if (arg0->unk7D5C != temp_a0_3) {
            arg0->unk7DB8->unk2018 = temp_a0_3;
            arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
            arg0->unk7D5C = (u32) arg0->unk7D58;
        }
        temp_s1->unk21E8 = (void *) unksp28;
        temp_s2->unk21E8 = (void *) unksp28;
    }
    unksp40->unk-7ED8(arg0);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
}
