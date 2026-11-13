? __glCrmBeginPoints(void (*)(void *, void *, s64, s32, s32, s32)); /* extern */
? __glCrmSetDrawBuffer(void *, s64, s32, s32);      /* extern */
? __glCrmSetupPixelRenderOps(void *, void *, u8);   /* extern */
? crmDrawPixelsXfer(void *, void *, f32 *);         /* extern */
? crmReadPixelsXfer(void *, void *, s16 *, s32, s32, s16 *, s32, s32); /* extern */
s32 *sub_0d960000(void *, s64, s32, s32, s32);      /* extern */

void crmSpanDoubleStore(void *arg0, void *arg1, s32 arg2, ? (*arg3)(void *, void *, s32, s64, s64, s64, s32)) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s16 temp_a1;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a1;
    s32 var_a6;
    s64 temp_a0;
    s64 var_a4;
    void *temp_s5;
    void *temp_s6;

    temp_s5 = arg0->unk7DBC;
    temp_s6 = arg0->unk7DB8;
    temp_a5 = arg0->unk2DF0;
    temp_a6 = arg0->unk77C0;
    sp0 = arg0->unk7D58;
    var_a1 = temp_a6;
    if (temp_a6 == temp_a5) {
        var_a1 = arg0->unk77C4;
        arg0->unk2DF0 = var_a1;
    } else {
        arg0->unk2DF0 = temp_a6;
    }
    sp28 = (s64) temp_a5;
    __glCrmSetDrawBuffer(arg0, (s64) var_a1, temp_a5, temp_a6);
    temp_a0 = sp0 & 1;
    if ((temp_a0 != 0) && (arg0->unk68A != 0)) {
        temp_s6->unk21E8 = 0;
        temp_s5->unk21E8 = 0;
    }
    sp10 = sp0 << 0x1D;
    sp8 = temp_a0;
    if (sp0 & 4) {
        if (sp0 & 2) {
            temp_a0_2 = arg0->unk7D58 & ~2;
            arg0->unk7D58 = temp_a0_2;
            if (arg0->unk7D5C != temp_a0_2) {
                arg0->unk7DB8->unk2018 = temp_a0_2;
                arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
                arg0->unk7D5C = (s32) arg0->unk7D58;
            }
        }
    }
    arg0->unk77BC = 0;
    sp20 = (s64) arg1->unkDC;
    sp18 = (s64) arg1->unkD0;
    arg3(arg0, arg1, arg2);
    arg0->unk2DF0 = (s32) sp28;
    __glCrmSetDrawBuffer(arg0, sp28, (s32) sp28);
    var_a4 = sp8;
    if (var_a4 != 0) {
        temp_a1 = arg0->unk68A;
        if (temp_a1 != 0) {
            temp_s6->unk21E8 = (s32) temp_a1;
            temp_s5->unk21E8 = (s32) temp_a1;
        }
    }
    var_a6 = sp0 << 0x1E;
    if ((sp10 < 0) && (sp0 & 2)) {
        var_a6 = arg0->unk7D5C;
        temp_a0_3 = arg0->unk7D58 | 2;
        arg0->unk7D58 = temp_a0_3;
        if (var_a6 != temp_a0_3) {
            var_a6 = (s32) arg0->unk7DB8;
            var_a6->unk2018 = temp_a0_3;
            var_a4 = (s64) arg0->unk7DBC;
            var_a4->unk2018 = (s32) arg0->unk7D58;
            arg0->unk7D5C = (s32) arg0->unk7D58;
        }
    }
    arg1->unkD0 = (s32) sp18;
    arg1->unkDC = (s32) sp20;
    arg3(arg0, arg1, arg2, sp18, var_a4, sp20, var_a6);
    arg0->unk77BC = 1;
}

void __glCrmSpanRenderRGBA(void *arg0, void *arg1, s64 arg2, s32 arg5, s32 arg6, s32 arg7) {
    s64 sp258;
    s64 sp208;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 spCC;
    s32 spAC;
    s32 sp10;
    s32 *spC;
    s32 *sp8;
    s32 sp0;
    s16 *var_a0;
    s16 *var_a0_2;
    s16 temp_a5;
    s16 temp_a5_2;
    s16 temp_t1;
    s16 temp_t2;
    s16 var_a6_2;
    s32 *temp_v0;
    s32 *var_a5_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s64 var_a2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderRGBA);
    } else {
        temp_f0 = (s32) (arg1->unkA4 + arg1->unkC8);
        temp_s3 = arg1->unkEC;
        temp_s4 = arg1->unkD0;
        temp_s4_2 = (temp_s3 >= 1) ? (temp_f0 - temp_s4) : (temp_s4 - temp_f0);
        temp_s2 = arg1->unkB8;
        if (temp_s4_2 > 0) {
            var_a0 = arg1->unk138;
            sp208 = (s64) temp_f0;
            if (temp_s2 > 0) {
                var_v0 = temp_s2 & 7;
                var_s0 = 0;
                var_s7 = 0;
                if (var_v0 != 0) {
                    do {
                        temp_a5 = *var_a0;
                        var_s0 += 1;
                        var_v0 -= 1;
                        var_a0 += 2;
                        var_a5 = temp_a5 + var_s7;
                        var_s7 = var_a5;
                    } while (var_v0 != 0);
                }
                var_a6 = temp_s2 >> 3;
                var_v0_2 = var_s7;
                if (var_a6 != 0) {
                    do {
                        temp_a5_2 = var_a0->unkE;
                        var_a7 = var_a0->unkA + (var_a0->unk8 + (var_a0->unk6 + (var_a0->unk4 + (var_a0->unk2 + (var_a0->unk0 + var_v0_2)))));
                        var_s0 += 8;
                        var_a6 = var_a0->unkC + var_a7;
                        var_a0 += 0x10;
                        var_a5 = temp_a5_2 + var_a6;
                        var_v0_2 = var_a5;
                    } while (temp_s2 != var_s0);
                    var_s7 = var_a5;
                }
                sp258 = arg2;
                var_s7_2 = (var_a5 < 0) ? -var_a5 : var_s7;
            } else {
                sp258 = arg2;
                var_s7_2 = 0;
            }
            temp_v0 = sub_0d960000(arg0, var_s7_2 * 4, var_a5, var_a6, var_a7);
            var_a5_2 = temp_v0;
            var_a2 = sp258;
            var_a0_2 = arg1->unk138;
            if (temp_s2 > 0) {
                var_s0_2 = 0;
loop_18:
                temp_t2 = *var_a0_2;
                var_a6_2 = (temp_t2 >= 0) ? temp_t2 : -temp_t2;
                temp_t1 = (var_a6_2 >= 1) ? var_a6_2 : 1;
                var_a0_2 += 2;
                temp_t0 = (s32) var_a2->unk4;
                temp_t8 = (s32) var_a2->unk0 << 0x18;
                var_s0_2 += 1;
                temp_a7 = (s32) var_a2->unkC;
                temp_t3 = (s32) var_a2->unk8 << 8;
                var_a2 += 0x10;
                temp_a7_2 = temp_a7 | temp_t8 | ((temp_t0 << 0x10) | temp_t3);
                if (var_a6_2 > 0) {
                    temp_t0_2 = temp_t1 & 7;
                    var_t0 = temp_t0_2 - 1;
                    if (temp_t0_2 == 0) {

                    } else {
loop_14:
                        var_a6_2 -= 1;
                        *var_a5_2 = temp_a7_2;
                        var_a5_2 += 4;
                        if (var_t0 != 0) {
                            var_t0 -= 1;
                            goto loop_14;
                        }
                    }
                    if ((temp_t1 >> 3) != 0) {
                        do {
                            var_a5_2->unk0 = temp_a7_2;
                            var_a5_2->unk4 = temp_a7_2;
                            var_a5_2->unk8 = temp_a7_2;
                            var_a5_2->unkC = temp_a7_2;
                            var_a5_2->unk10 = temp_a7_2;
                            var_a5_2->unk14 = temp_a7_2;
                            var_a6_2 -= 8;
                            var_a5_2->unk18 = temp_a7_2;
                            var_a5_2->unk1C = temp_a7_2;
                            var_a5_2 += 0x20;
                        } while (var_a6_2 > 0);
                    }
                }
                if (temp_s2 != var_s0_2) {
                    goto loop_18;
                }
            }
            spCC = arg1->unkCC;
            spD0 = arg1->unkD0;
            spD8 = var_s7_2;
            spDC = 1;
            spAC = 1;
            spC = temp_v0;
            sp8 = temp_v0;
            sp10 = temp_s2 * 4;
            sp0 = 0x1908;
            arg0->unk7DE0 = 0;
            arg0->unk7DCE = 0;
            var_s0_3 = 0;
            arg0->unk7DD8 = 1;
            arg0->unk7E2C = (s32) arg0->unk2DF0;
            temp_s3_2 = (arg0->unk7DD1 != 0) ? (temp_s3 * 2) : temp_s3;
            arg0->unk7E24 = (s32) (((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
            do {
                crmDrawPixelsXfer(arg0, sp);
                spD0 += temp_s3_2;
                var_s0_3 += (arg0->unk7DD1 != 0) ? 2 : 1;
            } while (var_s0_3 < temp_s4_2);
            arg0->unk7DD8 = 0;
            arg1->unkD0 = (s32) sp208;
            arg1->unkDC = (s32) (arg1->unkDC - temp_s4_2);
        }
    }
}

void __glCrmSpanRenderRGBA2(void *arg0, void *arg1, s64 arg2) {
    s64 sp258;
    s64 sp210;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 *temp_v0;
    s32 *var_a0;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_f0;
    s32 temp_f6;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s7;
    s32 temp_t0;
    s32 var_s1;
    s64 temp_a1;
    s64 var_a2;

    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderRGBA2);
        return;
    }
    temp_f0 = (s32) (arg1->unkA4 + arg1->unkC8);
    temp_s2 = arg1->unkEC;
    temp_s3 = arg1->unkD0;
    sp258 = arg2;
    temp_s3_2 = (temp_s2 >= 1) ? (temp_f0 - temp_s3) : (temp_s3 - temp_f0);
    sp210 = (s64) temp_f0;
    temp_s7 = arg1->unkB8;
    if (temp_s3_2 > 0) {
        temp_a1 = temp_s7 * 4;
        unksp248 = temp_a1;
        temp_v0 = sub_0d960000((void *) temp_a1);
        var_a0 = temp_v0;
        var_a2 = sp258;
        if (temp_s7 > 0) {
            if (temp_s7 & 1) {
                var_a0 = temp_v0 + 4;
                var_a2 = sp258 + 0x10;
                *temp_v0 = (s32) sp258->unkC | ((s32) sp258->unk0 << 0x18) | (((s32) sp258->unk4 << 0x10) | ((s32) sp258->unk8 << 8));
            }
            if ((temp_s7 >> 1) != 0) {
                do {
                    *var_a0 = (s32) var_a2->unkC | ((s32) var_a2->unk0 << 0x18) | (((s32) var_a2->unk4 << 0x10) | ((s32) var_a2->unk8 << 8));
                    temp_f6 = (s32) var_a2->unk1C;
                    temp_a4 = (s32) var_a2->unk14;
                    temp_t0 = (s32) var_a2->unk10 << 0x18;
                    temp_a7 = (s32) var_a2->unk18;
                    var_a2 += 0x20;
                    var_a0 += 8;
                    var_a0->unk-4 = (s32) (temp_f6 | temp_t0 | ((temp_a4 << 0x10) | (temp_a7 << 8)));
                } while (var_a0 != (temp_v0 + unksp248));
            }
        }
        spDC = 1;
        spD8 = temp_s7;
        spD0 = arg1->unkD0;
        arg0->unk7DE0 = 0;
        arg0->unk7DCE = 0;
        var_s1 = 0;
        arg0->unk7DD8 = 1;
        arg0->unk7E2C = (s32) arg0->unk2DF0;
        temp_s2_2 = (arg0->unk7DD1 != 0) ? (temp_s2 * 2) : temp_s2;
        arg0->unk7E24 = (s32) (((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
        do {
            crmDrawPixelsXfer(arg0, sp, (f32 *) var_a2);
            spD0 += temp_s2_2;
            var_a2 = (arg0->unk7DD1 != 0) ? 2 : 1;
            var_s1 += var_a2;
        } while (var_s1 < temp_s3_2);
        arg0->unk7DD8 = 0;
        arg1->unkD0 = (s32) sp210;
        arg1->unkDC = (s32) (arg1->unkDC - temp_s3_2);
    }
}

void __glCrmSpanRenderCI(void *arg0, void *arg1, s64 arg2, s32 arg5, s32 arg6, s32 arg7) {
    s64 sp258;
    s64 sp208;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 spCC;
    s32 spAC;
    s32 sp10;
    s32 *spC;
    s32 *sp8;
    s32 sp0;
    f32 temp_f2;
    s16 *var_a0;
    s16 *var_a0_2;
    s16 temp_a5;
    s16 temp_a5_2;
    s16 temp_a7;
    s16 temp_t1;
    s16 temp_t1_2;
    s16 var_a6_2;
    s32 *temp_v0;
    s32 *var_a5_2;
    s32 temp_f0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s5;
    s32 temp_t0;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s64 var_a2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderCI);
    } else {
        temp_f0 = (s32) (arg1->unkA4 + arg1->unkC8);
        temp_s3 = arg1->unkEC;
        temp_s4 = arg1->unkD0;
        temp_s4_2 = (temp_s3 >= 1) ? (temp_f0 - temp_s4) : (temp_s4 - temp_f0);
        temp_s5 = arg0->unk7810;
        temp_s2 = arg1->unkB8;
        if (temp_s4_2 > 0) {
            var_a0 = arg1->unk138;
            sp208 = (s64) temp_f0;
            if (temp_s2 > 0) {
                var_v0 = temp_s2 & 7;
                var_s0 = 0;
                var_s7 = 0;
                if (var_v0 != 0) {
                    do {
                        temp_a5 = *var_a0;
                        var_s0 += 1;
                        var_v0 -= 1;
                        var_a0 += 2;
                        var_a5 = temp_a5 + var_s7;
                        var_s7 = var_a5;
                    } while (var_v0 != 0);
                }
                var_a6 = temp_s2 >> 3;
                var_v0_2 = var_s7;
                if (var_a6 != 0) {
                    do {
                        temp_a5_2 = var_a0->unkE;
                        var_a7 = var_a0->unkA + (var_a0->unk8 + (var_a0->unk6 + (var_a0->unk4 + (var_a0->unk2 + (var_a0->unk0 + var_v0_2)))));
                        var_s0 += 8;
                        var_a6 = var_a0->unkC + var_a7;
                        var_a0 += 0x10;
                        var_a5 = temp_a5_2 + var_a6;
                        var_v0_2 = var_a5;
                    } while (temp_s2 != var_s0);
                    var_s7 = var_a5;
                }
                sp258 = arg2;
                var_s7_2 = (var_a5 < 0) ? -var_a5 : var_s7;
            } else {
                sp258 = arg2;
                var_s7_2 = 0;
            }
            temp_v0 = sub_0d960000(arg0, var_s7_2 * 2, var_a5, var_a6, var_a7);
            var_a5_2 = temp_v0;
            var_a2 = sp258;
            var_a0_2 = arg1->unk138;
            if (temp_s2 > 0) {
                var_s0_2 = 0;
loop_17:
                temp_f2 = *var_a2;
                temp_t1 = *var_a0_2;
                var_a2 += 4;
                var_a6_2 = (temp_t1 >= 0) ? temp_t1 : -temp_t1;
                var_a0_2 += 2;
                var_s0_2 += 1;
                temp_t1_2 = (var_a6_2 >= 1) ? var_a6_2 : 1;
                temp_a7 = temp_s5 & (s32) temp_f2;
                if (var_a6_2 > 0) {
                    temp_t0 = temp_t1_2 & 7;
                    var_t0 = temp_t0 - 1;
                    if (temp_t0 == 0) {

                    } else {
loop_13:
                        var_a6_2 -= 1;
                        *var_a5_2 = temp_a7;
                        var_a5_2 += 2;
                        if (var_t0 != 0) {
                            var_t0 -= 1;
                            goto loop_13;
                        }
                    }
                    if ((temp_t1_2 >> 3) != 0) {
                        do {
                            var_a5_2->unk0 = temp_a7;
                            var_a5_2->unk2 = temp_a7;
                            var_a5_2->unk4 = temp_a7;
                            var_a5_2->unk6 = temp_a7;
                            var_a5_2->unk8 = temp_a7;
                            var_a5_2->unkA = temp_a7;
                            var_a6_2 -= 8;
                            var_a5_2->unkC = temp_a7;
                            var_a5_2->unkE = temp_a7;
                            var_a5_2 += 0x10;
                        } while (var_a6_2 > 0);
                    }
                }
                if (temp_s2 != var_s0_2) {
                    goto loop_17;
                }
            }
            spCC = arg1->unkCC;
            spD0 = arg1->unkD0;
            spD8 = var_s7_2;
            spDC = 1;
            spAC = 1;
            spC = temp_v0;
            sp8 = temp_v0;
            sp10 = temp_s2 * 2;
            sp0 = 0x1908;
            arg0->unk7DE0 = 0;
            arg0->unk7DCE = 0;
            var_s0_3 = 0;
            arg0->unk7DD8 = 1;
            arg0->unk7E2C = (s32) arg0->unk2DF0;
            temp_s3_2 = (arg0->unk7DD1 != 0) ? (temp_s3 * 2) : temp_s3;
            arg0->unk7E24 = (s32) (((((arg0->unk7E24 & ~0xF0 & ~0x300) | 0x100) & ~0xC) | 4) & ~2);
            do {
                crmDrawPixelsXfer(arg0, sp);
                spD0 += temp_s3_2;
                var_s0_3 += (arg0->unk7DD1 != 0) ? 2 : 1;
            } while (var_s0_3 < temp_s4_2);
            arg0->unk7DD8 = 0;
            arg1->unkD0 = (s32) sp208;
            arg1->unkDC = (s32) (arg1->unkDC - temp_s4_2);
        }
    }
}

void __glCrmSpanRenderCI2(void *arg0, void *arg1, s64 arg2) {
    s64 sp208;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 *temp_v0;
    s32 *var_a0;
    s32 temp_f0;
    s32 temp_ra;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s7;
    s32 temp_t8;
    s32 var_a6;
    s32 var_s1;
    s32 var_t9;
    s64 temp_a1;
    s64 var_a2;

    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderCI2);
        return;
    }
    temp_f0 = (s32) (arg1->unkA4 + arg1->unkC8);
    temp_s2 = arg1->unkEC;
    temp_s3 = arg1->unkD0;
    temp_s1 = arg0->unk7810;
    unksp228 = arg2;
    temp_s3_2 = (temp_s2 >= 1) ? (temp_f0 - temp_s3) : (temp_s3 - temp_f0);
    sp208 = (s64) temp_f0;
    temp_s7 = arg1->unkB8;
    if (temp_s3_2 > 0) {
        temp_a1 = temp_s7 * 2;
        unksp250 = temp_a1;
        temp_v0 = sub_0d960000((void *) temp_a1);
        var_a6 = temp_s7 & 3;
        var_a0 = temp_v0;
        var_a2 = unksp228;
        if (temp_s7 > 0) {
            var_t9 = temp_s7 >> 2;
            if (var_a6 != 0) {
                do {
                    var_a6 -= 1;
                    temp_t8 = (s32) *var_a2;
                    var_a0 += 2;
                    var_a2 += 4;
                    var_a0->unk-2 = (s16) (temp_s1 & temp_t8);
                } while (var_a6 != 0);
                var_t9 = temp_s7 >> 2;
            }
            if (var_t9 != 0) {
                do {
                    var_a0->unk0 = (s16) (temp_s1 & (s32) var_a2->unk0);
                    var_a0->unk2 = (s16) (temp_s1 & (s32) var_a2->unk4);
                    var_a0->unk4 = (s16) (temp_s1 & (s32) var_a2->unk8);
                    var_a0 += 8;
                    temp_ra = (s32) var_a2->unkC;
                    var_a2 += 0x10;
                    var_a0->unk-2 = (s16) (temp_s1 & temp_ra);
                } while (var_a0 != (temp_v0 + temp_a1));
            }
        }
        spDC = 1;
        spD8 = temp_s7;
        spD0 = arg1->unkD0;
        arg0->unk7DE0 = 0;
        arg0->unk7DCE = 0;
        var_s1 = 0;
        arg0->unk7DD8 = 1;
        arg0->unk7E2C = (s32) arg0->unk2DF0;
        temp_s2_2 = (arg0->unk7DD1 != 0) ? (temp_s2 * 2) : temp_s2;
        arg0->unk7E24 = (s32) (((((arg0->unk7E24 & ~0xF0 & ~0x300) | 0x100) & ~0xC) | 4) & ~2);
        do {
            crmDrawPixelsXfer(arg0, sp);
            spD0 += temp_s2_2;
            var_s1 += (arg0->unk7DD1 != 0) ? 2 : 1;
        } while (var_s1 < temp_s3_2);
        arg0->unk7DD8 = 0;
        arg1->unkD0 = (s32) sp208;
        arg1->unkDC = (s32) (arg1->unkDC - temp_s3_2);
    }
}

void __glCrmSpanRenderDepth(void *arg0, void *arg1, f32 *arg2) {
    s64 sp28;
    s32 sp20;
    s64 sp18;
    f64 sp10;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 *var_a7;
    s16 *var_t0;
    s16 temp_a6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a6_2;
    s32 temp_f4;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_t1;
    s64 var_t2;
    u8 temp_a2;
    u8 temp_v1;
    void *temp_s0;
    void *temp_s3;
    void *temp_s5;
    void *var_a1;

    var_a1 = arg1;
    temp_s3 = arg0->unk7DBC;
    temp_s0 = arg0->unk7DB8;
    temp_s5 = var_a1;
    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderDepth);
        return;
    }
    temp_s4 = var_a1->unkB8;
    temp_s1 = var_a1->unkF0;
    temp_s8 = var_a1->unkEC;
    temp_a0 = arg0->unk7D64;
    sp28 = (s64) var_a1->unkD0;
    temp_s6 = (s32) (var_a1->unkA4 + var_a1->unkC8);
    if (arg0->unk7D60 != temp_a0) {
        temp_s0->unk2060 = temp_a0;
        var_a1 = arg0->unk7DBC;
        var_a1->unk2060 = (s32) arg0->unk7D64;
        arg0->unk7D60 = (s32) arg0->unk7D64;
    }
    temp_a2 = arg0->unk7DCA;
    if (temp_a2 != 0) {
        __glCrmSetupPixelRenderOps(arg0, var_a1, temp_a2);
    }
    temp_f4 = (s32) arg0->unk180;
    if (arg0->unkC94 != 0) {
        sp0 = (s32) arg0->unk18C | (temp_f4 << 0x18) | (((s32) arg0->unk184 << 0x10) | ((s32) arg0->unk188 << 8));
        temp_s0->unk20D0 = sp0;
        var_a4 = sp0;
    } else {
        sp4 = temp_f4;
        temp_s0->unk20D0 = sp4;
        var_a4 = sp4;
    }
    temp_s3->unk20D0 = var_a4;
    var_a0 = temp_s5->unkDC;
    var_t2 = sp28;
    if (sp28 != temp_s6) {
loop_10:
        if (var_a0 != 0) {
            var_a4_2 = temp_s5->unkCC;
            var_t0 = temp_s5->unk138;
            sp8 = 0x7FFFF & (var_t2 << 6);
            temp_s0->unk2084 = sp8;
            var_a7 = arg2;
            temp_a0_2 = var_a0 - 1;
            temp_s3->unk2084 = sp8;
            if (temp_s4 > 0) {
                var_t1 = 0;
                do {
                    sp10 = (f64) (64.0f * ((f32) ((u64) ((s64) arg0->unk7A48 << 0x20) >> 0x20) * *var_a7));
                    temp_a6 = *var_t0;
                    sp18 = (s64) sp10;
                    var_t0 += 2;
                    temp_s0->unk21C8 = (f64) (second half of f64);
                    var_a7 += 4;
                    temp_a6_2 = temp_a6 + var_a4_2;
                    temp_s3->unk21C8 = sp18;
loop_14:
                    temp_t9 = var_a4_2 << 6;
                    var_a4_2 += temp_s1;
                    sp20 = 0x7FFFF & temp_t9;
                    temp_s0->unk2880 = sp20;
                    temp_v0 = var_a4_2 << 6;
                    if (var_a4_2 != temp_a6_2) {
                        var_a4_2 += temp_s1;
                        sp20 = 0x7FFFF & temp_v0;
                        temp_s0->unk2880 = sp20;
                        if (var_a4_2 != temp_a6_2) {
                            goto loop_14;
                        }
                    }
                    var_t1 += 1;
                } while (temp_s4 != var_t1);
            }
            temp_v1 = arg0->unk7DD1;
            var_t2 = temp_s8 + ((temp_v1 == 0) ? var_t2 : (temp_s8 + var_t2));
            var_a0 = (temp_v1 != 0) ? (temp_a0_2 - 1) : temp_a0_2;
            if (temp_s6 == var_t2) {

            } else {
                goto loop_10;
            }
        }
    }
    temp_s5->unkDC = var_a0;
    temp_s5->unkD0 = temp_s6;
    arg0->unk8080 = 0;
}

void __glCrmSpanRenderDepth2(void *arg0, void *arg1, f32 *arg2) {
    s64 sp20;
    s64 sp18;
    f64 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 *var_a5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a6;
    s32 temp_f4;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_s8;
    s32 var_a0;
    s32 var_a4;
    s32 var_a6;
    s64 var_t0;
    u8 temp_a2;
    u8 temp_v0;
    void *temp_s2;
    void *temp_s4;
    void *temp_s7;
    void *var_a1;

    var_a1 = arg1;
    temp_s7 = arg0->unk7DBC;
    temp_s2 = arg0->unk7DB8;
    temp_s4 = var_a1;
    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderDepth2);
        return;
    }
    temp_s1 = var_a1->unkB8;
    temp_s3 = var_a1->unkF0;
    temp_s8 = var_a1->unkEC;
    temp_a0 = arg0->unk7D64;
    sp20 = (s64) var_a1->unkD0;
    temp_s6 = (s32) (var_a1->unkA4 + var_a1->unkC8);
    if (arg0->unk7D60 != temp_a0) {
        temp_s2->unk2060 = temp_a0;
        var_a1 = arg0->unk7DBC;
        var_a1->unk2060 = (s32) arg0->unk7D64;
        arg0->unk7D60 = (s32) arg0->unk7D64;
    }
    temp_a2 = arg0->unk7DCA;
    if (temp_a2 != 0) {
        __glCrmSetupPixelRenderOps(arg0, var_a1, temp_a2);
    }
    temp_f4 = (s32) arg0->unk180;
    if (arg0->unkC94 != 0) {
        sp0 = (s32) arg0->unk18C | (temp_f4 << 0x18) | (((s32) arg0->unk184 << 0x10) | ((s32) arg0->unk188 << 8));
        temp_s2->unk20D0 = sp0;
        temp_s7->unk20D0 = sp0;
    } else {
        sp4 = temp_f4;
        temp_s2->unk20D0 = sp4;
        temp_s7->unk20D0 = sp4;
    }
    var_a0 = temp_s4->unkDC;
    var_t0 = sp20;
    if (sp20 != temp_s6) {
loop_10:
        if (var_a0 != 0) {
            var_a6 = temp_s4->unkCC;
            sp8 = 0x7FFFF & (var_t0 << 6);
            var_a5 = arg2;
            temp_s2->unk2084 = sp8;
            temp_a0_2 = var_a0 - 1;
            temp_s7->unk2084 = sp8;
            if (temp_s1 > 0) {
                var_a4 = 0;
                if (temp_s1 & 1) {
                    spC = 0x7FFFF & (var_a6 << 6);
                    sp10 = (f64) (64.0f * ((f32) ((u64) ((s64) arg0->unk7A48 << 0x20) >> 0x20) * *arg2));
                    temp_s2->unk2080 = spC;
                    sp18 = (s64) sp10;
                    var_a4 = 1;
                    var_a6 += temp_s3;
                    var_a5 = arg2 + 4;
                    temp_s2->unk29C8 = sp18;
                }
                if ((temp_s1 >> 1) != 0) {
                    do {
                        spC = 0x7FFFF & (var_a6 << 6);
                        sp10 = (f64) (64.0f * ((f32) ((u64) ((s64) arg0->unk7A48 << 0x20) >> 0x20) * var_a5->unk0));
                        temp_s2->unk2080 = spC;
                        sp18 = (s64) sp10;
                        temp_s2->unk29C8 = sp18;
                        temp_a6 = temp_s3 + var_a6;
                        spC = 0x7FFFF & (temp_a6 << 6);
                        sp10 = (f64) (64.0f * ((f32) ((u64) ((s64) arg0->unk7A48 << 0x20) >> 0x20) * var_a5->unk4));
                        temp_s2->unk2080 = spC;
                        sp18 = (s64) sp10;
                        var_a4 += 2;
                        var_a5 += 8;
                        var_a6 = temp_s3 + temp_a6;
                        temp_s2->unk29C8 = sp18;
                    } while (temp_s1 != var_a4);
                }
            }
            temp_v0 = arg0->unk7DD1;
            var_t0 = temp_s8 + ((temp_v0 == 0) ? var_t0 : (temp_s8 + var_t0));
            var_a0 = (temp_v0 != 0) ? (temp_a0_2 - 1) : temp_a0_2;
            if (temp_s6 == var_t0) {

            } else {
                goto loop_10;
            }
        }
    }
    temp_s4->unkDC = var_a0;
    temp_s4->unkD0 = temp_s6;
    arg0->unk8080 = 0;
}

void __glCrmSpanRenderStencil(void *arg0, void *arg1, s64 arg2, s32 arg5, s32 arg6, s32 arg7) {
    s64 sp268;
    s64 sp210;
    s64 sp1F8;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 spCC;
    s32 spAC;
    s32 sp10;
    s32 *spC;
    s32 *sp8;
    s32 sp0;
    s16 *var_a0;
    s16 *var_a0_2;
    s16 temp_a5;
    s16 temp_a5_2;
    s16 temp_t1;
    s16 temp_t1_2;
    s16 var_a6_2;
    s32 *temp_v0;
    s32 *var_a5_2;
    s32 temp_a7;
    s32 temp_f4;
    s32 temp_f6;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s5;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a1;
    s64 var_a2;
    u8 temp_t9;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderStencil);
    } else {
        temp_f4 = (s32) (arg1->unkA4 + arg1->unkC8);
        temp_s3 = arg1->unkEC;
        temp_s4 = arg1->unkD0;
        temp_s4_2 = (temp_s3 >= 1) ? (temp_f4 - temp_s4) : (temp_s4 - temp_f4);
        temp_s2 = arg1->unkB8;
        temp_s5 = (1 << arg0->unkCB0) - 1;
        if (temp_s4_2 > 0) {
            if (arg0->unk68A != 0) {
                var_a0 = arg1->unk138;
                sp210 = (s64) temp_f4;
                if (temp_s2 > 0) {
                    var_v0 = temp_s2 & 7;
                    var_s0 = 0;
                    var_s7 = 0;
                    if (var_v0 != 0) {
                        do {
                            temp_a5 = *var_a0;
                            var_s0 += 1;
                            var_v0 -= 1;
                            var_a0 += 2;
                            var_a5 = temp_a5 + var_s7;
                            var_s7 = var_a5;
                        } while (var_v0 != 0);
                    }
                    var_a6 = temp_s2 >> 3;
                    var_v0_2 = var_s7;
                    if (var_a6 != 0) {
                        do {
                            temp_a5_2 = var_a0->unkE;
                            var_a7 = var_a0->unkA + (var_a0->unk8 + (var_a0->unk6 + (var_a0->unk4 + (var_a0->unk2 + (var_a0->unk0 + var_v0_2)))));
                            var_s0 += 8;
                            var_a6 = var_a0->unkC + var_a7;
                            var_a0 += 0x10;
                            var_a5 = temp_a5_2 + var_a6;
                            var_v0_2 = var_a5;
                        } while (temp_s2 != var_s0);
                        var_s7 = var_a5;
                    }
                    sp268 = arg2;
                    var_s7_2 = (var_a5 < 0) ? -var_a5 : var_s7;
                } else {
                    sp268 = arg2;
                    var_s7_2 = 0;
                }
                temp_a1 = var_s7_2 * 4;
                unksp250 = temp_a1;
                temp_v0 = sub_0d960000(arg0, temp_a1, var_a5, var_a6, var_a7);
                var_a5_2 = temp_v0;
                var_a2 = sp268;
                var_a0_2 = arg1->unk138;
                if (temp_s2 > 0) {
                    var_s0_2 = 0;
loop_20:
                    temp_t1 = *var_a0_2;
                    temp_f6 = (s32) *var_a2;
                    var_a2 += 4;
                    var_a6_2 = (temp_t1 >= 0) ? temp_t1 : -temp_t1;
                    var_a0_2 += 2;
                    var_s0_2 += 1;
                    temp_a7 = (temp_s5 & temp_f6) << 0x18;
                    if (var_a6_2 > 0) {
                        temp_t1_2 = (var_a6_2 >= 1) ? var_a6_2 : 1;
                        var_t0 = temp_t1_2 & 7;
                        if (var_t0 == 0) {

                        } else {
                            do {
                                var_t0 -= 1;
                                var_a6_2 -= 1;
                                *var_a5_2 = temp_a7;
                                var_a5_2 += 4;
                            } while (var_t0 != 0);
                        }
                        if ((temp_t1_2 >> 3) != 0) {
                            do {
                                var_a5_2->unk0 = temp_a7;
                                var_a5_2->unk4 = temp_a7;
                                var_a5_2->unk8 = temp_a7;
                                var_a5_2->unkC = temp_a7;
                                var_a5_2->unk10 = temp_a7;
                                var_a5_2->unk14 = temp_a7;
                                var_a6_2 -= 8;
                                var_a5_2->unk18 = temp_a7;
                                var_a5_2->unk1C = temp_a7;
                                var_a5_2 += 0x20;
                            } while (var_a6_2 > 0);
                        }
                    }
                    if (temp_s2 != var_s0_2) {
                        goto loop_20;
                    }
                }
                spCC = arg1->unkCC;
                sp0 = 0x1901;
                sp10 = (s32) temp_a1;
                sp8 = temp_v0;
                spC = temp_v0;
                spAC = 1;
                spDC = 1;
                spD8 = var_s7_2;
                spD0 = arg1->unkD0;
                temp_t9 = arg0->unk7DCA;
                arg0->unk7DCA = 0U;
                var_s0_3 = 0;
                arg0->unk7DE0 = 0;
                arg0->unk7DCE = 1;
                sp1F8 = (s64) temp_t9;
                arg0->unk7E2C = (void *) (arg0 + 0x7984);
                arg0->unk7DD8 = 1;
                temp_s3_2 = (arg0->unk7DD1 != 0) ? (temp_s3 * 2) : temp_s3;
                arg0->unk7E24 = (s32) (((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
                do {
                    crmDrawPixelsXfer(arg0, sp, (f32 *) var_a2);
                    spD0 += temp_s3_2;
                    var_a2 = (s64) arg0->unk7DD1;
                    var_s0_3 += (var_a2 != 0) ? 2 : 1;
                } while (var_s0_3 < temp_s4_2);
                arg0->unk7DCE = 0;
                arg0->unk7DD8 = 0;
                arg0->unk7DCA = (u8) sp1F8;
                arg1->unkD0 = (s32) sp210;
                arg1->unkDC = (s32) (arg1->unkDC - temp_s4_2);
                return;
            }
            arg1->unkD0 = temp_f4;
            arg1->unkDC = (s32) (arg1->unkDC - temp_s4_2);
        }
    }
}

void __glCrmSpanRenderStencil2(void *arg0, void *arg1, s64 arg2) {
    s64 sp210;
    s64 sp1F8;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 spCC;
    s32 spAC;
    s32 sp10;
    s32 *spC;
    s32 *sp8;
    s32 sp0;
    s32 *temp_v0;
    s32 *var_a0;
    s32 temp_at;
    s32 temp_f4;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s7;
    s32 temp_t9;
    s32 var_a6;
    s32 var_s1;
    s64 temp_a1;
    s64 var_a2;
    u8 temp_a7;

    if (arg0->unk77BC != 0) {
        __glCrmBeginPoints(__glCrmSpanRenderStencil2);
    } else {
        temp_f4 = (s32) (arg1->unkA4 + arg1->unkC8);
        temp_s2 = arg1->unkEC;
        temp_s3 = arg1->unkD0;
        temp_s3_2 = (temp_s2 >= 1) ? (temp_f4 - temp_s3) : (temp_s3 - temp_f4);
        temp_s1 = (1 << arg0->unkCB0) - 1;
        temp_s7 = arg1->unkB8;
        if (temp_s3_2 > 0) {
            sp210 = (s64) temp_f4;
            unksp230 = arg2;
            if (arg0->unk68A != 0) {
                temp_a1 = temp_s7 * 4;
                unksp258 = temp_a1;
                temp_v0 = sub_0d960000(arg0, temp_a1);
                var_a6 = temp_s7 & 3;
                var_a0 = temp_v0;
                var_a2 = unksp230;
                if (temp_s7 > 0) {
                    if (var_a6 != 0) {
                        do {
                            var_a6 -= 1;
                            var_a0 += 4;
                            temp_t9 = (temp_s1 & (s32) *var_a2) << 0x18;
                            var_a2 += 4;
                            var_a0->unk-4 = temp_t9;
                        } while (var_a6 != 0);
                    }
                    if ((temp_s7 >> 2) != 0) {
                        do {
                            var_a0->unk0 = (temp_s1 & (s32) var_a2->unk0) << 0x18;
                            var_a0->unk4 = (s32) ((temp_s1 & (s32) var_a2->unk4) << 0x18);
                            var_a0->unk8 = (s32) ((temp_s1 & (s32) var_a2->unk8) << 0x18);
                            var_a0 += 0x10;
                            temp_at = (temp_s1 & (s32) var_a2->unkC) << 0x18;
                            var_a2 += 0x10;
                            var_a0->unk-4 = temp_at;
                        } while (var_a0 != &temp_v0[temp_s7]);
                    }
                }
                spCC = arg1->unkCC;
                spD8 = temp_s7;
                spDC = 1;
                spAC = 1;
                spC = temp_v0;
                sp8 = temp_v0;
                sp10 = (s32) temp_a1;
                sp0 = 0x1901;
                spD0 = arg1->unkD0;
                temp_a7 = arg0->unk7DCA;
                arg0->unk7DCA = 0U;
                var_s1 = 0;
                arg0->unk7DE0 = 0;
                arg0->unk7DCE = 1;
                sp1F8 = (s64) temp_a7;
                arg0->unk7E2C = (void *) (arg0 + 0x7984);
                arg0->unk7DD8 = 1;
                temp_s2_2 = (arg0->unk7DD1 != 0) ? (temp_s2 * 2) : temp_s2;
                arg0->unk7E24 = (s32) (((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
                do {
                    crmDrawPixelsXfer(arg0, sp);
                    spD0 += temp_s2_2;
                    var_s1 += (arg0->unk7DD1 != 0) ? 2 : 1;
                } while (var_s1 < temp_s3_2);
                arg0->unk7DCE = 0;
                arg0->unk7DD8 = 0;
                arg0->unk7DCA = (u8) sp1F8;
                arg1->unkD0 = (s32) sp210;
                arg1->unkDC = (s32) (arg1->unkDC - temp_s3_2);
                return;
            }
            arg1->unkD0 = temp_f4;
            arg1->unkDC = (s32) (arg1->unkDC - temp_s3_2);
        }
    }
}

void __glCrmSpanReadColor(void *arg0, void *arg1, void *arg2, s32 arg4, s32 arg5) {
    s16 *var_a7;
    s16 *var_a7_2;
    s16 temp_a4;
    s16 temp_a5;
    s16 temp_v1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_t0;
    s32 temp_t3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_s5;
    s32 var_v0;
    void *temp_s0;
    void *temp_s1;
    void *temp_v0;
    void *var_s0;
    void *var_s1;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a7 = arg1->unk138;
    var_a6 = 0;
    var_s0 = arg2;
    temp_s4 = arg1->unkB4;
    temp_s2 = (arg0->unkC94 != 0) ? 4 : 1;
    var_v0 = temp_s4 & 7;
    if (temp_s4 > 0) {
        var_s5 = 0;
        if (var_v0 != 0) {
            do {
                var_v0 -= 1;
                temp_v1 = *var_a7;
                var_a6 += 1;
                var_a7 += 2;
                var_s5 += temp_v1;
            } while (var_v0 != 0);
        }
        var_a4 = var_s5;
        if ((temp_s4 >> 3) != 0) {
            do {
                temp_a5 = var_a7->unkC;
                var_a6 += 8;
                temp_a4 = var_a7->unkE;
                temp_t0 = var_a7->unkA + (var_a7->unk8 + (var_a7->unk6 + (var_a7->unk4 + (var_a7->unk2 + (var_a7->unk0 + var_a4)))));
                var_a7 += 0x10;
                var_a5 = temp_a5 + temp_t0;
                var_a4 = temp_a4 + var_a5;
            } while (temp_s4 != var_a6);
            var_s5 = var_a4;
        }
    } else {
        var_s5 = 0;
    }
    temp_v0 = arg0->unk0(arg0, temp_s2 * var_s5 * 4, var_a4, var_a5, var_a6, var_a7);
    var_s1 = temp_v0;
    arg0->unk7878(arg0->unk2DF4, (s32) arg1->unkBC, (s32) arg1->unkC0, temp_v0, var_s5);
    temp_a2 = temp_s4 & 1;
    var_a7_2 = arg1->unk138;
    if (temp_s4 > 0) {
        temp_a4_2 = temp_s2 * 4;
        var_a6_2 = 0;
        if (temp_a2 != 0) {
            var_a6_2 = 1;
            var_s0->unk0 = (f32) var_s1->unk0;
            if (temp_s2 == 4) {
                var_s0->unk4 = (f32) var_s1->unk4;
                var_s0->unk8 = (f32) var_s1->unk8;
                var_s0->unkC = (f32) var_s1->unkC;
            }
            var_s0 += temp_a4_2;
            temp_a3 = *var_a7_2 * temp_s2 * 4;
            var_a7_2 += 2;
            var_s1 += temp_a3;
        }
        if ((temp_s4 >> 1) != 0) {
loop_16:
            var_a6_2 += 2;
            var_s0->unk0 = (f32) var_s1->unk0;
            if (temp_s2 == 4) {
                var_s0->unk4 = (f32) var_s1->unk4;
                var_s0->unk8 = (f32) var_s1->unk8;
                var_s0->unkC = (f32) var_s1->unkC;
            }
            temp_s1 = var_s1 + (var_a7_2->unk0 * temp_s2 * 4);
            temp_s0 = temp_a4_2 + var_s0;
            temp_s0->unk0 = (f32) temp_s1->unk0;
            if (temp_s2 == 4) {
                temp_s0->unk4 = (f32) temp_s1->unk4;
                temp_s0->unk8 = (f32) temp_s1->unk8;
                temp_s0->unkC = (f32) temp_s1->unkC;
            }
            var_s0 = temp_a4_2 + temp_s0;
            temp_t3 = var_a7_2->unk2 * temp_s2;
            var_a7_2 += 4;
            var_s1 = temp_s1 + (temp_t3 * 4);
            if (temp_s4 != var_a6_2) {
                goto loop_16;
            }
        }
    }
    arg0->unkC(arg0, temp_v0, temp_a2);
}

void __glCrmSpanReadColor2(void *arg0, void *arg1, s32 arg2) {
    arg0->unk7878(arg0->unk2DF4, (s32) arg1->unkBC, (s32) arg1->unkC0, arg2, arg1->unkA8, 0xEB16C);
}

void __glCrmSpanReadDepth(void *arg0, void *arg1, s16 *arg2, s32 arg3, s32 arg6, s32 arg7) {
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    s32 sp50;
    f32 temp_f4;
    s16 *temp_s5;
    s16 *temp_t1;
    s16 *temp_t3;
    s16 *temp_t8;
    s16 *temp_t9;
    s16 *temp_v1_2;
    s16 *var_a2;
    s16 *var_a2_2;
    s16 *var_a2_3;
    s16 *var_a5;
    s16 *var_a5_2;
    s16 *var_t8;
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_t0;
    s16 temp_v0;
    s16 temp_v1;
    s32 *temp_a4;
    s32 *var_a4_2;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a7;
    s32 temp_s1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    u32 temp_at;
    u32 temp_t0_2;
    u32 temp_v0_2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a5 = arg1->unk138;
    var_a4 = 0;
    temp_s5 = var_a2;
    temp_s1 = arg1->unkA8;
    if (temp_s1 > 0) {
        var_a0 = temp_s1 & 7;
        var_a6 = 0;
        var_a4 = 0;
        if (var_a0 != 0) {
            do {
                var_a0 -= 1;
                temp_v0 = *var_a5;
                var_a6 += 1;
                var_a5 += 2;
                var_a4 += temp_v0;
            } while (var_a0 != 0);
        }
        var_a0_2 = var_a4;
        if ((temp_s1 >> 3) != 0) {
            do {
                var_a7 = var_a5->unk4 + (var_a5->unk2 + (var_a5->unk0 + var_a0_2));
                temp_a1 = var_a5->unkC;
                var_a3 = var_a5->unk8 + (var_a5->unk6 + var_a7);
                var_a6 += 8;
                temp_a0 = var_a5->unkE;
                var_a2 = var_a5->unkA + var_a3;
                var_a5 += 0x10;
                var_a0_2 = temp_a0 + (temp_a1 + var_a2);
            } while (temp_s1 != var_a6);
            var_a4 = var_a0_2;
        }
    }
    spBC = arg1->unkBC;
    sp50 = 0x1902;
    spAC = 1;
    spA8 = var_a4;
    spC0 = arg1->unkC0;
    arg0->unk7E28 = (s32) (arg0 + 0x79FC);
    arg0->unk7E58 = 0;
    arg0->unk7DCE = 1;
    arg0->unk7DD8 = 0xC02;
    crmReadPixelsXfer(arg0, sp, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    arg0->unk7DD8 = 0;
    arg0->unk7DCE = 0;
    var_a4_2 = sp58;
    var_a2_2 = temp_s5;
    var_a1 = 1;
    var_a5_2 = arg1->unk138;
    temp_t3 = var_a2_2 + 4;
    temp_f4 = arg0->unkDD8 / (f32) ((u64) ((s64) arg0->unk7A48 << 0x20) >> 0x20);
    if ((arg0->unk7A60 == 0) || (arg0->unk7A5C != 0)) {
        var_a1 = 0;
    }
    if (temp_s1 > 0) {
        temp_a7 = var_a1 & 0xFF;
        var_a6_2 = 0;
        if (temp_s1 & 1) {
            temp_t0 = *var_a5_2;
            temp_t8 = var_a2_2 + 4;
            var_a5_2 += 2;
            var_a6_2 = 1;
            temp_a1_2 = *var_a4_2;
            var_a4_2 = &var_a4_2[temp_t0];
            if ((temp_a7 != 0) && (arg0->unk7A4C != (0xFF000000 & temp_a1_2))) {
                var_a2_2 = temp_t3;
                temp_t3->unk-4 = (f32) arg0->unk668;
            } else {
                temp_at = arg0->unk7A58 & temp_a1_2;
                var_a2_2 = temp_t8;
                temp_t8->unk-4 = (f32) ((f32) ((u64) ((((temp_at >> 0x12) & 0x3F) | (temp_at << 6)) << 0x20) >> 0x20) * temp_f4);
            }
        }
        var_t8 = var_a2_2 + 4;
        if ((temp_s1 >> 1) != 0) {
loop_21:
            temp_t9 = var_a2_2 + 4;
            var_a6_2 += 2;
            temp_a1_3 = *var_a4_2;
            temp_a4 = &var_a4_2[var_a5_2->unk0];
            if ((temp_a7 != 0) && (arg0->unk7A4C != (0xFF000000 & temp_a1_3))) {
                var_a2_3 = var_t8;
                var_t8->unk-4 = (f32) arg0->unk668;
            } else {
                temp_v0_2 = arg0->unk7A58 & temp_a1_3;
                var_a2_3 = temp_t9;
                temp_t9->unk-4 = (f32) ((f32) ((u64) ((((temp_v0_2 >> 0x12) & 0x3F) | (temp_v0_2 << 6)) << 0x20) >> 0x20) * temp_f4);
            }
            temp_v1 = var_a5_2->unk2;
            var_a5_2 += 4;
            temp_t1 = var_a2_3 + 4;
            temp_a1_4 = *temp_a4;
            var_a4_2 = &temp_a4[temp_v1];
            if ((temp_a7 != 0) && (arg0->unk7A4C != (0xFF000000 & temp_a1_4))) {
                var_a2_2 = temp_t1;
                temp_t1->unk-4 = (f32) arg0->unk668;
            } else {
                temp_t0_2 = arg0->unk7A58 & temp_a1_4;
                temp_v1_2 = var_a2_3 + 4;
                var_a2_2 = temp_v1_2;
                temp_v1_2->unk-4 = (f32) ((f32) ((u64) ((((temp_t0_2 >> 0x12) & 0x3F) | (temp_t0_2 << 6)) << 0x20) >> 0x20) * temp_f4);
            }
            var_t8 = var_a2_2 + 4;
            if (temp_s1 != var_a6_2) {
                goto loop_21;
            }
        }
    }
}

void __glCrmSpanReadDepth2(void *arg0, void *arg1, void *arg2) {
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    f32 temp_f4;
    s32 *var_a3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a6;
    s32 temp_s1;
    s32 var_a1;
    s32 var_a5;
    u32 temp_a0;
    u32 temp_t8;
    u32 temp_t9;
    void *temp_t2;
    void *temp_v0;
    void *var_a2;
    void *var_a2_2;
    void *var_t1;
    void *var_t2;
    void *var_t3;
    void *var_v0;

    spBC = arg1->unkBC;
    spC0 = arg1->unkC0;
    temp_s1 = arg1->unkA8;
    spAC = 1;
    spA8 = temp_s1;
    arg0->unk7E58 = 0;
    arg0->unk7DCE = 1;
    arg0->unk7E28 = (void *) (arg0 + 0x79FC);
    arg0->unk7DD8 = 0xC02;
    crmReadPixelsXfer(sp, (void *)0x1902);
    arg0->unk7DD8 = 0;
    arg0->unk7DCE = 0;
    var_a3 = sp58;
    var_a1 = 1;
    var_a2 = arg2;
    temp_f4 = arg0->unkDD8 / (f32) ((u64) ((s64) arg0->unk7A48 << 0x20) >> 0x20);
    if ((arg0->unk7A60 == 0) || (arg0->unk7A5C != 0)) {
        var_a1 = 0;
    }
    temp_a6 = var_a1 & 0xFF;
    if (temp_s1 > 0) {
        var_a5 = 0;
        if (temp_s1 & 1) {
            temp_a1 = *var_a3;
            var_a3 += 4;
            if (temp_a6 != 0) {
                var_t3 = var_a2 + 4;
                if (arg0->unk7A4C != (0xFF000000 & temp_a1)) {
                    temp_t2 = var_a2 + 4;
                    var_a2 = temp_t2;
                    temp_t2->unk-4 = (f32) arg0->unk668;
                } else {
                    goto block_9;
                }
            } else {
                var_t3 = var_a2 + 4;
block_9:
                temp_t9 = arg0->unk7A58 & temp_a1;
                var_a2 = var_t3;
                var_t3->unk-4 = (f32) ((f32) ((u64) ((((temp_t9 >> 0x12) & 0x3F) | (temp_t9 << 6)) << 0x20) >> 0x20) * temp_f4);
            }
            var_a5 = 1;
        }
        var_t1 = var_a2 + 4;
        if ((temp_s1 >> 1) != 0) {
loop_16:
            temp_a1_2 = var_a3->unk0;
            if (temp_a6 != 0) {
                var_t2 = var_a2 + 4;
                if (arg0->unk7A4C != (0xFF000000 & temp_a1_2)) {
                    var_a2_2 = var_t1;
                    var_t1->unk-4 = (f32) arg0->unk668;
                } else {
                    goto block_20;
                }
            } else {
                var_t2 = var_a2 + 4;
block_20:
                temp_t8 = arg0->unk7A58 & temp_a1_2;
                var_a2_2 = var_t2;
                var_t2->unk-4 = (f32) ((f32) ((u64) ((((temp_t8 >> 0x12) & 0x3F) | (temp_t8 << 6)) << 0x20) >> 0x20) * temp_f4);
            }
            temp_a1_3 = var_a3->unk4;
            var_a3 += 8;
            if (temp_a6 != 0) {
                var_v0 = var_a2_2 + 4;
                if (arg0->unk7A4C != (0xFF000000 & temp_a1_3)) {
                    temp_v0 = var_a2_2 + 4;
                    var_a2 = temp_v0;
                    temp_v0->unk-4 = (f32) arg0->unk668;
                } else {
                    goto block_14;
                }
            } else {
                var_v0 = var_a2_2 + 4;
block_14:
                temp_a0 = arg0->unk7A58 & temp_a1_3;
                var_a2 = var_v0;
                var_v0->unk-4 = (f32) ((f32) ((u64) ((((temp_a0 >> 0x12) & 0x3F) | (temp_a0 << 6)) << 0x20) >> 0x20) * temp_f4);
            }
            var_a5 += 2;
            var_t1 = var_a2 + 4;
            if (temp_s1 != var_a5) {
                goto loop_16;
            }
        }
    }
}

void __glCrmSpanReadStencil(void *arg0, void *arg1, f32 *arg2, s32 arg6, s16 *arg7) {
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    s32 sp50;
    f32 *var_a2;
    s16 *var_a4;
    s16 *var_a4_2;
    s16 *var_a7;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a5;
    s16 temp_a6;
    s16 temp_v0;
    s32 temp_s0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    u32 *temp_a0;
    u32 *temp_a0_2;
    u32 *temp_a0_3;
    u32 *var_a0;

    var_a6 = arg6;
    var_a7 = arg7;
    var_a4 = arg1->unk138;
    var_a5 = 0;
    temp_s0 = arg1->unkA8;
    if (temp_s0 > 0) {
        var_a6 = temp_s0 & 7;
        var_a1 = 0;
        var_a5 = 0;
        if (var_a6 != 0) {
            do {
                var_a6 -= 1;
                temp_v0 = *var_a4;
                var_a1 += 1;
                var_a4 += 2;
                var_a5 += temp_v0;
            } while (var_a6 != 0);
        }
        if ((temp_s0 >> 3) != 0) {
            do {
                temp_a6 = var_a4->unkC;
                var_a1 += 8;
                temp_a5 = var_a4->unkE;
                var_a7 = var_a4->unkA + (var_a4->unk8 + (var_a4->unk6 + (var_a4->unk4 + (var_a4->unk2 + (var_a4->unk0 + var_a5)))));
                var_a4 += 0x10;
                var_a6 = temp_a6 + var_a7;
                var_a5 = temp_a5 + var_a6;
            } while (temp_s0 != var_a1);
        }
    }
    spBC = arg1->unkBC;
    sp50 = 0x1901;
    spAC = 1;
    spA8 = var_a5;
    spC0 = arg1->unkC0;
    arg0->unk7E28 = (s32) (arg0 + 0x7984);
    arg0->unk7E58 = 0;
    arg0->unk7DCE = 1;
    arg0->unk7DD8 = 0xC02;
    crmReadPixelsXfer(arg0, sp, var_a4, var_a5, var_a6, var_a7);
    arg0->unk7DCE = 0;
    arg0->unk7DD8 = 0;
    var_a4_2 = arg1->unk138;
    var_a2 = arg2;
    var_a5_2 = temp_s0 & 3;
    var_a1_2 = 0;
    var_a0 = sp58;
    if (temp_s0 > 0) {
        if (var_a5_2 != 0) {
            do {
                *var_a2 = (f32) ((u32) *var_a0 >> 0x18);
                var_a1_2 += 1;
                temp_a3 = *var_a4_2;
                var_a4_2 += 2;
                var_a5_2 -= 1;
                var_a2 += 4;
                var_a0 = &var_a0[temp_a3];
            } while (var_a5_2 != 0);
        }
        if ((temp_s0 >> 2) != 0) {
            do {
                var_a2->unk0 = (f32) ((u32) *var_a0 >> 0x18);
                temp_a0 = &var_a0[var_a4_2->unk0];
                var_a2->unk4 = (f32) ((u32) *temp_a0 >> 0x18);
                temp_a0_2 = &temp_a0[var_a4_2->unk2];
                var_a2->unk8 = (f32) ((u32) *temp_a0_2 >> 0x18);
                temp_a0_3 = &temp_a0_2[var_a4_2->unk4];
                var_a2->unkC = (f32) ((u32) *temp_a0_3 >> 0x18);
                temp_a3_2 = var_a4_2->unk6;
                var_a4_2 += 8;
                var_a1_2 += 4;
                var_a2 += 0x10;
                var_a0 = &temp_a0_3[temp_a3_2];
            } while (temp_s0 != var_a1_2);
        }
    }
}

void __glCrmSpanReadStencil2(void *arg0, void *arg1, void *arg2) {
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    f32 temp_f2;
    f32 temp_f3;
    s32 temp_s0;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    u32 *var_a1;
    void *var_a2;

    spBC = arg1->unkBC;
    spC0 = arg1->unkC0;
    temp_s0 = arg1->unkA8;
    spAC = 1;
    spA8 = temp_s0;
    arg0->unk7E58 = 0;
    arg0->unk7DCE = 1;
    arg0->unk7E28 = (void *) (arg0 + 0x7984);
    arg0->unk7DD8 = 0xC02;
    crmReadPixelsXfer(sp, (void *)0x1901);
    arg0->unk7DD8 = 0;
    arg0->unk7DCE = 0;
    var_a1 = sp58;
    var_a4 = temp_s0 & 3;
    var_a3 = 0;
    var_a2 = arg2;
    if (temp_s0 > 0) {
        var_a6 = temp_s0 >> 2;
        if (var_a4 != 0) {
            do {
                temp_f2 = (f32) ((u32) *var_a1 >> 0x18);
                var_a4 -= 1;
                var_a3 += 1;
                var_a2 += 4;
                var_a1 += 4;
                var_a2->unk-4 = temp_f2;
            } while (var_a4 != 0);
            var_a6 = temp_s0 >> 2;
        }
        if (var_a6 != 0) {
            do {
                var_a2->unk0 = (f32) ((u32) var_a1->unk0 >> 0x18);
                var_a2->unk4 = (f32) ((u32) var_a1->unk4 >> 0x18);
                var_a2->unk8 = (f32) ((u32) var_a1->unk8 >> 0x18);
                temp_f3 = (f32) ((u32) var_a1->unkC >> 0x18);
                var_a3 += 4;
                var_a2 += 0x10;
                var_a1 += 0x10;
                var_a2->unk-4 = temp_f3;
            } while (temp_s0 != var_a3);
        }
    }
}
