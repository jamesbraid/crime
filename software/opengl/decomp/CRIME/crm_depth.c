? __glCrmPassStencilMode(s32);                      /* extern */
? __glInitBuffer(void *, void *);                   /* extern */
? __glNop(s32);                                     /* extern */
s32 getenv(void *, void *, s32, void *, void *, void *, void *, ?); /* extern */
s32 ioctl(s32, ?, void *, u8, ?, ?, ?, s32, s32, s32); /* extern */
? sub_0d950000(void *, ? *, ? *, s32 *, s32 *, ?, s32); /* extern */
void __glCrmPassDepthFunc(s32 arg0, s32, s32, s32, u32, u32, s32, s32); /* static */
extern ? sub_0da40000;

void __glCrmPassDepthMask(void *arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    s32 var_a2;

    var_a1 = arg1;
    var_a2 = arg2;
    if (arg0->unk7D08 != 0) {
        if ((arg0->unk664 != 0) && (arg0->unk700 & 0x10)) {
            var_a1 = arg0->unk7D58 | 2;
            arg0->unk7D58 = var_a1;
        } else {
            goto block_5;
        }
    } else {
block_5:
        var_a2 = arg0->unk7D58 & ~2;
        arg0->unk7D58 = var_a2;
    }
    __glCrmPassDepthFunc(var_a1, var_a2, -3);
}

void __glCrmPassDepthFunc(void *arg0) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a6;
    s32 temp_at;
    void *temp_a3;
    void *temp_a4;

    temp_a4 = arg0->unk7DBC;
    temp_a3 = arg0->unk7DB8;
    temp_a2 = (0xFF000000 & ((sp0 & ~0x0E000000) | ((arg0->unk660 & 7) << 0x19))) | (0xFFFFFF & ((s32) ((f64) (second half of f64) * (second half of f64)) >> 6));
    if (arg0->unk7A5C != 0) {
        goto block_1;
    }
    temp_a6 = arg0->unk7D58;
    if (temp_a6 & 4) {
        arg0->unk7D58 = (s32) (temp_a6 | 1);
        temp_at = (((((0xFF000000 & arg0->unk7A4C) | (0xFFFFFF & sp4) | 0xFF0000) & ~0xF000) | 0x5000) & ~0xFFF) | 2;
        temp_a3->unk21E0 = temp_at;
        temp_a4->unk21E0 = temp_at;
        temp_a2_2 = temp_a2 | 0x01000000;
        sp0 = temp_a2_2;
        sp4 = temp_at;
        if (!(arg0->unk7D58 & 2)) {
            spC = 0;
            temp_a3->unk21E8 = spC;
            temp_a4->unk21E8 = spC;
            temp_a3->unk21C0 = temp_a2_2;
            temp_a4->unk21C0 = sp0;
            return;
        }
        sp8 = 0xFF;
        temp_a3->unk21E8 = sp8;
        temp_a4->unk21E8 = sp8;
        temp_a3->unk21C0 = temp_a2_2;
        temp_a4->unk21C0 = sp0;
        return;
    }
block_1:
    temp_a2_3 = temp_a2 & ~0x01000000;
    sp0 = temp_a2_3;
    if (arg0->unk7A60 != 0) {
        arg0->unk7D58 = (s32) (arg0->unk7D58 & ~1);
    }
    temp_a3->unk21C0 = temp_a2_3;
    temp_a4->unk21C0 = sp0;
}

void __glCrmEnableDepthTest(void *arg0, void *arg1, s32 arg2) {
    s32 var_a2;
    void *var_a1;

    var_a1 = arg1;
    var_a2 = arg2;
    if ((arg0->unk7D08 != 0) && (arg0->unk700 & 0x10)) {
        arg0->unk7D58 = (s32) (arg0->unk7D58 | 4);
    } else {
        var_a2 = -5;
        var_a1 = (void *) (arg0->unk7D58 & ~4);
        arg0->unk7D58 = (s32) var_a1;
    }
    __glCrmPassDepthMask(var_a1, var_a2);
}

void PickDepth(void) {

}

s32 FetchDepth(void) {
    return 0;
}

s32 StoreDepth(void) {
    return 0;
}

s32 StoreDepthAlways(void) {
    return 0;
}

void ClearDepth(void *arg0, s32 arg1) {
    s64 sp98;
    s64 sp90;
    f64 sp88;
    s64 sp80;
    s64 sp78;
    s32 sp70;
    u32 sp6C;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    u32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s64 sp48;
    f64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp2C;
    u32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    u32 sp18;
    s32 sp14;
    s32 sp10;
    u8 spA;
    s8 sp9;
    s8 sp8;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f6;
    s32 temp_ra;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t9;
    s32 var_a1;
    u32 temp_a2_2;
    u32 temp_a4_2;
    u32 temp_t0;
    u32 temp_t3_2;
    u32 var_a5;
    u8 temp_a3_2;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2;
    void *var_a4;

    var_a1 = arg1;
    temp_s0 = arg0->unk0;
    var_a4 = arg0;
    temp_s2 = temp_s0->unk7DBC;
    temp_s1 = temp_s0->unk7DB8;
    if (temp_s0->unk664 != 0) {
        if (arg0->unk60 != 1) {
            temp_a6 = temp_s0->unk6A4;
            temp_t0 = var_a4->unk50 + var_a4->unk64;
            var_a5 = temp_t0 >> 0x18;
            temp_a2 = (s32) (temp_a6 * var_a5) >> 8;
            temp_a6_2 = temp_s0->unkE4C;
            temp_a3 = (s32) ((var_a5 + 1) * temp_a6) >> 8;
            temp_a0 = temp_s0->unkE50;
            var_a4->unk50 = temp_t0;
            temp_a7 = temp_s0->unk6A0 + temp_a6_2;
            if (temp_a2 != temp_a3) {
                temp_ra = temp_s2->unk21E0;
                temp_t3 = (((((0xFFFFFF & sp54) | (var_a5 << 0x18) | 0xFF0000) & ~0xF000) | 0x7000) & ~0xFFF) | 2;
                temp_s1->unk21E0 = temp_t3;
                temp_s2->unk21E0 = temp_t3;
                temp_t2 = temp_s2->unk21C0;
                sp54 = temp_t3;
                temp_t9 = (0xFFFFFF & ((s32) ((f64) (second half of f64) * (second half of f64)) >> 6)) | (temp_s2->unk21C0 & 0xFF000000) | 0x0E000000;
                temp_s1->unk21C0 = temp_t9;
                temp_s2->unk21C0 = temp_t9;
                sp14 = temp_t9;
                temp_t3_2 = ((((u32) temp_s0->unk7D58 >> 0x14) & 1) << 0x14) | 0x400007;
                sp50 = temp_ra;
                sp58 = temp_t2;
                if (temp_s0->unk7D5C != temp_t3_2) {
                    temp_s0->unk7DB8->unk2018 = temp_t3_2;
                    sp5C = temp_t3_2;
                    temp_s0->unk7DBC->unk2018 = temp_t3_2;
                    temp_s0->unk7D5C = temp_t3_2;
                }
                if (temp_s0->unk7D60 != 0x03020000) {
                    temp_s0->unk7DB8->unk2060 = 0x03020000;
                    sp60 = 0x03020000;
                    temp_s0->unk7DBC->unk2060 = 0x03020000;
                    temp_s0->unk7D60 = 0x03020000;
                }
                sp64 = temp_a6_2 << 6;
                temp_s1->unk2080 = sp64;
                sp68 = (temp_a2 + temp_a0) << 6;
                temp_s1->unk2084 = sp68;
                sp6C = temp_a7 << 6;
                var_a5 = sp6C;
                temp_s1->unk2088 = var_a5;
                sp70 = ((temp_a3 + temp_a0) - 1) << 6;
                sp78 = 0;
                sp80 = 0;
                sp88 = (f64) ((second half of f64) * 64.0f);
                temp_s1->unk208C = sp70;
                temp_s1->unk21D0 = (f64) (second half of f64);
                temp_s1->unk21D8 = (f64) (second half of f64);
                sp90 = (s64) sp88;
                temp_s1->unk29C8 = sp90;
                var_a4 = (void *) temp_s0->unk7D58;
                var_a1 = sp50;
                if (temp_s0->unk7D5C != var_a4) {
                    temp_s0->unk7DB8->unk2018 = (u32) var_a4;
                    temp_s0->unk7DBC->unk2018 = (u32) temp_s0->unk7D58;
                    temp_s0->unk7D5C = (u32) temp_s0->unk7D58;
                }
                temp_s1->unk21E0 = var_a1;
                temp_s2->unk21E0 = var_a1;
                temp_s1->unk21C0 = sp58;
                temp_s2->unk21C0 = sp58;
            }
            __glCrmPassDepthFunc((s32) temp_s0, var_a1, temp_a2, temp_a3, (u32) var_a4, var_a5, temp_a6_2, temp_a7);
        } else {
            sp9 = 2;
            temp_f6 = (s32) ((f64) (second half of f64) * (second half of f64));
            sp8 = 4;
            sp98 = (s64) temp_f6;
            temp_a7_2 = temp_f6 >> 6;
            temp_a3_2 = (temp_s0->unk7D58 << 0xB) < 0;
            spA = temp_a3_2;
            if (ioctl(temp_s0->unk7B10, 0x5606, sp, temp_a3_2, 2, 4, 0x77777777, temp_a7_2, temp_a7_2, 0x77777777) != 0) {
                temp_s0->unk14(temp_s0, &sub_0da40000 + 0x1C18, spA);
            }
            if (spA & 2) {
                temp_a5 = temp_s2->unk21C0;
                temp_a4 = temp_a5 | 0x0E000000;
                sp14 = temp_a4;
                temp_s1->unk21C0 = temp_a4;
                temp_s2->unk21C0 = temp_a4;
                temp_a2_2 = ((((u32) temp_s0->unk7D58 >> 0x14) & 1) << 0x14) | 0x400006;
                sp10 = temp_a5;
                if (temp_s0->unk7D5C != temp_a2_2) {
                    sp18 = temp_a2_2;
                    temp_s0->unk7DB8->unk2018 = temp_a2_2;
                    temp_s0->unk7DBC->unk2018 = temp_a2_2;
                    temp_s0->unk7D5C = temp_a2_2;
                }
                if (temp_s0->unk7D60 != 0x03020000) {
                    temp_s0->unk7DB8->unk2060 = 0x03020000;
                    sp1C = 0x03020000;
                    temp_s0->unk7DBC->unk2060 = 0x03020000;
                    temp_s0->unk7D60 = 0x03020000;
                }
                sp20 = temp_s0->unk7404 << 6;
                temp_s1->unk2080 = sp20;
                sp24 = temp_s0->unk7408 << 6;
                temp_s1->unk2084 = sp24;
                sp28 = temp_s0->unk740C << 6;
                temp_s1->unk2088 = sp28;
                sp2C = temp_s0->unk7410 << 6;
                sp30 = 0;
                sp38 = 0;
                sp40 = (f64) (second half of f64);
                temp_s1->unk208C = sp2C;
                temp_s1->unk21D0 = (f64) (second half of f64);
                temp_s1->unk21D8 = (f64) (second half of f64);
                sp48 = (s64) sp40;
                temp_s1->unk29C8 = sp48;
                temp_a4_2 = temp_s0->unk7D58;
                if (temp_s0->unk7D5C != temp_a4_2) {
                    temp_s0->unk7DB8->unk2018 = temp_a4_2;
                    temp_s0->unk7DBC->unk2018 = (u32) temp_s0->unk7D58;
                    temp_s0->unk7D5C = (u32) temp_s0->unk7D58;
                }
                temp_s1->unk21C0 = sp10;
                temp_s2->unk21C0 = sp10;
            }
        }
    }
}

void FirstClearDepth(void *arg0) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    f64 sp48;
    s64 sp40;
    s64 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    ? sp1C;
    ? sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f0;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v0;
    void *temp_a2;
    void *temp_s0;
    void *temp_s2;

    temp_s0 = arg0->unk0;
    temp_a2 = temp_s0->unk7DBC;
    temp_s2 = temp_s0->unk7DB8;
    if (temp_s0->unk664 != 0) {
        if (arg0->unk60 != 0) {
            __glCrmEnableDepthTest(temp_a2);
            arg0->unk78 = (void *) (sub_0d950000 - 0x5D00);
            return;
        }
        temp_a1 = temp_a2->unk21E0;
        temp_t9 = ((((sp4 | 0xFFFF0000) & ~0xF000) | 0x7000) & ~0xFFF) | 2;
        temp_s2->unk21E0 = temp_t9;
        temp_a2->unk21E0 = temp_t9;
        temp_v0 = temp_a2->unk21C0;
        temp_f0 = (s32) ((f64) (second half of f64) * (second half of f64));
        sp58 = (s64) temp_f0;
        sp60 = (s64) temp_a2;
        sp0 = temp_a1;
        temp_a7 = (temp_a2->unk21C0 & 0xFF000000) | ((temp_f0 >> 6) & 0xFFFFFF) | 0x0E000000;
        temp_s2->unk21C0 = temp_a7;
        temp_a2->unk21C0 = temp_a7;
        sp4 = temp_t9;
        sp8 = temp_v0;
        spC = temp_a7;
        if (temp_s0->unk7D5C != 0x400007) {
            temp_s0->unk7DB8->unk2018 = 0x400007;
            sp10 = 0x400007;
            temp_s0->unk7DBC->unk2018 = 0x400007;
            temp_s0->unk7D5C = 0x400007;
        }
        if (temp_s0->unk7D60 != 0x03020000) {
            temp_s0->unk7DB8->unk2060 = 0x03020000;
            sp14 = 0x03020000;
            temp_s0->unk7DBC->unk2060 = 0x03020000;
            temp_s0->unk7D60 = 0x03020000;
        }
        sub_0d950000(temp_s0, &sp18, &sp1C, &sp20, &sp24, 0x400007, temp_a7);
        temp_t2 = temp_s0->unkE4C;
        sp28 = temp_t2 << 6;
        temp_a7_2 = temp_s0->unkE50;
        sp2C = temp_a7_2 << 6;
        temp_s2->unk2084 = sp2C;
        temp_s2->unk2080 = sp28;
        sp30 = (sp20 + temp_t2) << 6;
        sp34 = (sp24 + temp_a7_2) << 6;
        temp_s2->unk208C = sp34;
        sp38 = 0;
        sp40 = 0;
        sp48 = (f64) ((second half of f64) * 64.0f);
        temp_s2->unk2088 = sp30;
        temp_s2->unk21D8 = (f64) (second half of f64);
        temp_s2->unk21D0 = (f64) (second half of f64);
        sp50 = (s64) sp48;
        temp_s2->unk29C8 = sp50;
        temp_a0 = temp_s0->unk7D58;
        if (temp_s0->unk7D5C != temp_a0) {
            temp_s0->unk7DB8->unk2018 = temp_a0;
            temp_s0->unk7DBC->unk2018 = (s32) temp_s0->unk7D58;
            temp_s0->unk7D5C = (s32) temp_s0->unk7D58;
        }
        temp_s2->unk21E0 = sp0;
        sp60->unk21E0 = sp0;
        temp_s2->unk21C0 = sp8;
        sp60->unk21C0 = sp8;
        arg0->unk78 = (void *) (sub_0d950000 - 0x5D00);
        __glCrmPassDepthFunc((s32) temp_s0);
    }
}

void ResizeSz(void *arg0, s32 arg1, s32 arg2) {
    arg0->unk1C = arg1;
    arg0->unk8 = arg2;
    arg0->unk4 = arg1;
}

void Fix_zbuffer(void *arg0, void *arg1, s32 arg2) {
    s64 sp50;
    s64 sp48;
    f64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a5;
    void *temp_a6;

    temp_a6 = arg0->unk7DBC;
    temp_a5 = arg0->unk7DB8;
    if (arg0->unk7A5C != 0) {
        return;
    }
    sp0 = temp_a6->unk21E0;
    temp_t0 = arg0->unkE4C;
    temp_t2 = temp_a6->unk21E8;
    temp_v0 = temp_a6->unk21C0;
    temp_t3 = arg0->unkE50;
    temp_a4 = (((((((spC & 0xFFFFFF) | (arg2 & 0xFF000000) | 0xFF0000) & ~0xF000) | 0x5000) & ~0xFF0) | 0x20) & ~0xF) | 2;
    temp_a5->unk21E0 = temp_a4;
    temp_a6->unk21E0 = temp_a4;
    sp10 = 0xFF;
    spC = temp_a4;
    temp_v1 = temp_v0 | 0x0E000000;
    temp_a5->unk21E8 = sp10;
    temp_a6->unk21E8 = sp10;
    temp_a5->unk21C0 = temp_v1;
    temp_a6->unk21C0 = temp_v1;
    sp4 = temp_v0;
    sp8 = temp_v1;
    sp50 = 0x400007;
    if (arg0->unk7D5C != 0x400007) {
        sp14 = 0x400007;
        arg0->unk7DB8->unk2018 = 0x400007;
        arg0->unk7DBC->unk2018 = sp14;
        arg0->unk7D5C = sp14;
    }
    if (arg0->unk7D60 != 0x03020000) {
        arg0->unk7DB8->unk2060 = 0x03020000;
        sp18 = 0x03020000;
        arg0->unk7DBC->unk2060 = 0x03020000;
        arg0->unk7D60 = 0x03020000;
    }
    sp1C = temp_t0 << 6;
    sp20 = temp_t3 << 6;
    temp_a5->unk2084 = sp20;
    sp24 = ((arg0->unkE74 + temp_t0) - 1) << 6;
    temp_a5->unk2088 = sp24;
    sp28 = ((arg0->unkE78 + temp_t3) - 1) << 6;
    temp_a5->unk208C = sp28;
    temp_a5->unk2080 = sp1C;
    sp30 = 0;
    sp38 = 0;
    temp_a5->unk21D0 = sp30;
    temp_a5->unk21D8 = sp38;
    sp40 = (f64) ((f32) ((f64) (second half of f64) * (second half of f64)) * 64.0f);
    sp48 = (s64) sp40;
    temp_a5->unk29C8 = sp48;
    temp_a2 = arg0->unk7D58;
    if (arg0->unk7D5C != temp_a2) {
        arg0->unk7DB8->unk2018 = temp_a2;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
    }
    temp_a5->unk21E0 = sp0;
    temp_a6->unk21E0 = sp0;
    temp_a5->unk21C0 = sp4;
    temp_a6->unk21C0 = sp4;
    temp_a5->unk21E8 = temp_t2;
    temp_a6->unk21E8 = temp_t2;
}

void __glCrmForceNonTagClear(s32 arg0, void *arg1) {
    arg1->unk6C(arg1->unk50);
    arg1->unk50 = 0;
    arg1->unk64 = 0;
    arg1->unk60 = 1;
    arg1->unk6C = __glNop;
    __glCrmPassDepthFunc(arg0);
    __glCrmPassStencilMode(arg0);
}

void __glCrmInitDepth(void *arg0, void *arg1) {
    s32 temp_a0;
    s32 var_a2;
    void *temp_a1;
    void *temp_a3;
    void *temp_a4;
    void *temp_a5;
    void *temp_a6;
    void *temp_gp;
    void *temp_v1;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x10606C;
    __glInitBuffer(arg1, arg0);
    temp_a0 = arg0->unkCAC;
    arg1->unkC = temp_a0;
    arg1->unk54 = 0xFF000000;
    arg1->unk50 = 0xFF000000;
    arg1->unk48 = 0xFFFFFF;
    arg1->unk5C = 0xFFFFFF;
    arg1->unk58 = 0;
    arg1->unk4C = 0x7FFFFF80;
    arg1->unk40 = 0;
    temp_a6 = sub_0d950000 - 0x5D30;
    arg1->unk80 = temp_a6;
    temp_a5 = sub_0d950000 - 0x5D10;
    arg1->unk7C = temp_a5;
    temp_a4 = sub_0d950000 - 0x5D20;
    arg1->unk74 = temp_a4;
    temp_a3 = sub_0d950000 - 0x5D00;
    arg1->unk78 = temp_a3;
    temp_a1 = sub_0d950000 - 0x5590;
    arg1->unk6C = temp_a1;
    arg1->unk70 = (void *) (sub_0d950000 - 0x5D40);
    var_a2 = temp_gp->unk-5454;
    temp_v1 = sub_0d950000 - 0x55A0;
    arg1->unk38 = temp_v1;
    arg1->unk34 = temp_v1;
    arg1->unk18 = (s32) ((s32) (arg0->unkCB0 + temp_a0 + 7) >> 3);
    if (var_a2 < 0) {
        var_a2 = getenv(&sub_0da40000 + 0x1C38, temp_a1, var_a2, temp_a3, temp_a4, temp_a5, temp_a6, 0x7FFFFF80) != 0;
        temp_gp->unk-5454 = var_a2;
    }
    if (var_a2 != 0) {
        arg1->unk64 = 0x01000000;
        arg1->unk60 = 0;
        arg1->unk78 = (void *) (sub_0d950000 - 0x5860);
        return;
    }
    arg1->unk64 = 0;
    arg1->unk60 = 1;
}
