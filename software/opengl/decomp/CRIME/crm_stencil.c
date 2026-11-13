? __glCrmForceNonTagClear(void *, void *);          /* extern */
? __glCrmSetDrawBuffer(void *, void *);             /* extern */
? __glCrmSetReadBuffer(void *, s32, void *, void *); /* extern */
? __glInitBuffer(s64, void *);                      /* extern */
? __glMakeCurrentBuffer();                          /* extern */
? crmDrawPixelsXfer(void *, void *, ?, ?, s64, s64, s32); /* extern */
s32 ioctl(s32, ?, void *, s32, ?, s64, s32, s32);   /* extern */
void __glCrmPassStencilMode(void *arg0);            /* static */
extern ? __glNop;
extern ? sub_0d970000;
extern ? sub_0da40000;

void __glCrmPassStencilMask(void *arg0) {
    s32 sp0;

    if ((arg0->unk7D09 != 0) && (arg0->unk700 & 0x8000)) {
        sp0 = (s32) arg0->unk68A;
        arg0->unk7DB8->unk21E8 = sp0;
        arg0->unk7DBC->unk21E8 = sp0;
    }
}

void __glCrmEnableStencilTest(void *arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    s32 var_a2;

    var_a1 = arg1;
    var_a2 = arg2;
    if ((arg0->unk7D09 != 0) && (arg0->unk700 & 0x8000)) {
        arg0->unk7D58 = (s32) (arg0->unk7D58 | 1);
        if (arg0->unk7A60 != 0) {
            __glCrmForceNonTagClear(arg0, arg0 + 0x79FC);
        }
        var_a1 = arg0->unk80A0;
        var_a2 = 2;
        if (var_a1 != 0) {
            arg0->unk80A0 = 0;
            arg0->unk7998 = 0;
            *(s32 *)0x1018 = 2;
            var_a1 = arg0->unk2DEC | 4;
            arg0->unk2DEC = var_a1;
        }
    } else if (arg0->unk7A5C != 0) {
        arg0->unk7D58 = (s32) (arg0->unk7D58 & ~1);
    }
    __glCrmPassStencilMask(arg0, var_a1, var_a2);
    if (arg0->unk7D58 & 1) {
        __glCrmPassStencilMode(arg0);
    }
}

void __glCrmPassStencilMode(void *arg0) {
    s32 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;

    if (arg0->unk7A5C != 0) {
        temp_a2 = arg0->unk68C;
        if (temp_a2 != 0) {
            var_a4 = 0;
            if (temp_a2 != 0x1E00) {
                var_a4 = 3;
                switch (temp_a2) {                  /* irregular */
                default:
                    var_a4 = ((temp_a2 ^ 0x150A) == 0) ? 5 : 0;
                    break;
                case 0x1E01:
                    var_a4 = 2;
                    break;
                case 0x1E02:
                    break;
                case 0x1E03:
                    var_a4 = 4;
                    break;
                }
            }
        } else {
            var_a4 = 1;
        }
        temp_a2_2 = arg0->unk690;
        var_a5 = 1;
        if (temp_a2_2 != 0) {
            var_a5 = 2;
            if (temp_a2_2 != 0x1E00) {
                if (temp_a2_2 != 0x1E01) {
                    var_a5 = 4;
                    if (temp_a2_2 != 0x1E02) {
                        if (temp_a2_2 != 0x1E03) {
                            var_a5 = ((temp_a2_2 ^ 0x150A) == 0) ? 5 : 0;
                        }
                    } else {
                        var_a5 = 3;
                    }
                }
            } else {
                var_a5 = 0;
            }
        }
        temp_a2_3 = arg0->unk694;
        var_a6 = 1;
        if (temp_a2_3 != 0) {
            if (temp_a2_3 != 0x1E00) {
                var_a6 = 2;
                if (temp_a2_3 != 0x1E01) {
                    var_a6 = 4;
                    if (temp_a2_3 != 0x1E02) {
                        if (temp_a2_3 != 0x1E03) {
                            var_a6 = ((temp_a2_3 ^ 0x150A) == 0) ? 5 : 0;
                        }
                    } else {
                        var_a6 = 3;
                    }
                }
            } else {
                var_a6 = 0;
            }
        }
        temp_a1 = (var_a6 & 0xF) | ((((((((((arg0->unk686 << 0x18) & ~0xFF0000) | ((arg0->unk688 & 0xFF) << 0x10)) & ~0xF000) | ((arg0->unk680 & 7) << 0xC)) & ~0xF00) | ((var_a4 & 0xF) << 8)) & ~0xF0) | ((var_a5 & 0xF) * 0x10)) & ~0xF);
        sp0 = temp_a1;
        arg0->unk7DB8->unk21E0 = temp_a1;
        arg0->unk7DBC->unk21E0 = sp0;
    }
}

void __glCrmUpdatePolyStipple(void *arg0) {
    s64 sp30;
    u64 sp28;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_f0;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a2;
    s32 var_a4_2;
    s32 var_a7_2;
    s32 var_t0;
    s32 var_t1;
    s32 var_v0;
    u32 temp_a0;
    u32 var_a3;
    u64 temp_v0_2;
    u64 var_a4;
    void *temp_s0;
    void *temp_s1;
    void *var_a3_2;
    void *var_a7;

    temp_s1 = arg0->unk7DBC;
    temp_s0 = arg0->unk7DB8;
    if ((arg0->unk7D09 != 0) && !(arg0->unk700 & 0x8000)) {
        temp_v0 = arg0->unk80A0;
        if (temp_v0 & 2) {
            sp30 = (s64) (arg0 + 0x10000);
            if (temp_v0 & 4) {
                temp_a6 = (((sp0 | 0xFFFF0000) & ~0xF000) | 0x2000) & ~0xFFF;
                temp_s0->unk21E0 = temp_a6;
                sp0 = temp_a6;
                temp_s1->unk21E0 = sp0;
                sp4 = 0xFF;
                temp_s0->unk21E8 = sp4;
                temp_s1->unk21E8 = sp4;
                temp_v0_2 = arg0->unk7E44(arg0, 0x1000, sp4, sp4, 0xFF, sp0, temp_a6, -0x1000);
                if (temp_v0_2 != 0) {
                    temp_a0 = arg0->unk7E40;
                    if ((temp_a0 != 0) && (temp_v0_2 >= temp_a0)) {
                        var_a4 = temp_v0_2;
                        if (temp_v0_2 < (u32) (temp_a0 + 0x20000)) {
                            var_a7 = arg0;
                            sp28 = temp_v0_2;
                            var_a3 = 0x80000000;
                            do {
                                temp_a6_2 = var_a7->unk7538;
                                var_a7 += 4;
loop_10:
                                temp_t8 = temp_a6_2 & var_a3;
                                var_a3 = var_a3 >> 1;
                                var_a4 += 4;
                                var_a4->unk-4 = (s32) ((temp_t8 != 0) ? 0xFF000000 : 0);
                                if (var_a3 != 0) {
                                    goto loop_10;
                                }
                                var_a3 = 0x80000000;
                            } while (var_a7 != (arg0 + 0x80));
                            sp8 = 0x1228;
                            temp_s0->unk2000 = 0x1228;
                            temp_s1->unk2000 = 0x1228;
                            __glCrmSetDrawBuffer(arg0, arg0 + 0x7984);
                            if (arg0->unk7D5C != 0x600040) {
                                arg0->unk7DB8->unk2018 = 0x600040;
                                spC = 0x600040;
                                arg0->unk7DBC->unk2018 = 0x600040;
                                arg0->unk7D5C = 0x600040;
                            }
                            var_a2 = 0x03000000;
                            var_a3_2 = arg0->unk7D60;
                            temp_a0_2 = ((sp10 & 0xFFFFFF) | 0x03000000) & ~0x30000;
                            if (var_a3_2 != temp_a0_2) {
                                sp10 = temp_a0_2;
                                arg0->unk7DB8->unk2060 = temp_a0_2;
                                var_a3_2 = arg0->unk7DBC;
                                var_a3_2->unk2060 = temp_a0_2;
                                arg0->unk7D60 = (void *) temp_a0_2;
                            }
                            temp_s0->unk20A8 = 4;
                            temp_s1->unk20A8 = 4;
                            temp_s0->unk20AC = 4;
                            temp_s1->unk20AC = 4;
                            temp_t8_2 = sp28 & 0x1FFFF;
                            temp_s0->unk20A0 = temp_t8_2;
                            temp_s1->unk20A0 = temp_t8_2;
                            temp_t3 = arg0->unkE78;
                            temp_t3_2 = (s32) (temp_t3 + 0x1F) >> 5;
                            temp_f0 = (s32) arg0->unkE54;
                            var_a7_2 = (s32) (((f32) temp_t3 + arg0->unkE58) - arg0->unkE5C);
                            temp_a6_3 = (s32) (arg0->unkE74 + 0x1F) >> 5;
                            var_t0 = var_a7_2 - 0x1F;
                            if (temp_t3_2 != 0) {
                                var_t1 = 0;
                                var_a0 = 0x7FFFF & (var_a7_2 << 6);
                                do {
                                    var_a4_2 = temp_f0 + 0x1F;
                                    sp14 = var_a0;
                                    temp_s0->unk2084 = sp14;
                                    temp_s1->unk2084 = sp14;
                                    sp18 = 0x7FFFF & (var_t0 << 6);
                                    temp_s0->unk208C = sp18;
                                    var_v0 = temp_f0;
                                    temp_s1->unk208C = sp18;
                                    if (temp_a6_3 != 0) {
                                        var_a3_2 = NULL;
                                        do {
                                            sp1C = 0x7FFFF & (var_v0 << 6);
                                            sp20 = 0x7FFFF & (var_a4_2 << 6);
                                            var_a3_2 += 1;
                                            var_a2 = sp20;
                                            var_a4_2 += 0x20;
                                            temp_s0->unk2888 = var_a2;
                                            var_v0 += 0x20;
                                            temp_s0->unk2080 = sp1C;
                                        } while (temp_a6_3 != var_a3_2);
                                    }
                                    var_t1 += 1;
                                    var_a7_2 -= 0x20;
                                    var_t0 -= 0x20;
                                    var_a0 = 0x7FFFF & (var_a7_2 << 6);
                                } while (temp_t3_2 != var_t1);
                            }
                            temp_v0_3 = arg0->unk7D58;
                            if (arg0->unk7D5C != temp_v0_3) {
                                var_a2 = (s32) arg0->unk7DB8;
                                var_a2->unk2018 = temp_v0_3;
                                arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
                                arg0->unk7D5C = (s32) arg0->unk7D58;
                            }
                            __glCrmSetReadBuffer(arg0, arg0->unk2DF4, (void *) var_a2, var_a3_2);
                            __glCrmSetDrawBuffer(arg0, arg0->unk2DF0);
                            sp30->unk-7F60 = (s32) (sp30->unk-7F60 & ~4);
                            return;
                        }
                    }
                }
                arg0->unk7E44(arg0, 0);
                sp30->unk-7F60 = (s32) (sp30->unk-7F60 & ~6);
            }
        }
    }
}

void PickStencil(void) {

}

s32 FetchStencil(void) {
    return 0;
}

void StoreStencil(void **arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp218;
    s64 sp210;
    s64 sp208;
    s64 sp200;
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
    s32 temp_a6;
    u8 temp_a0;
    void *temp_s0;

    sp218 = arg3;
    temp_s0 = *arg0;
    sp210 = arg2;
    sp208 = arg1;
    sp200 = (s64) arg0;
    if (temp_s0->unk68A != 0) {
        temp_v0 = temp_s0->unk7E44(temp_s0, 4);
        temp_a6 = sp218 << 0x18;
        *temp_v0 = temp_a6;
        sp0 = 0x1901;
        sp10 = 4;
        sp8 = temp_v0;
        spC = temp_v0;
        spAC = 1;
        spDC = 1;
        spD8 = 1;
        spD0 = (s32) sp210;
        spCC = (s32) sp208;
        temp_a0 = temp_s0->unk7DCA;
        temp_s0->unk7DCA = 0U;
        temp_s0->unk7DE0 = 0;
        temp_s0->unk7DCE = 1;
        temp_s0->unk7E2C = (s32) sp200;
        temp_s0->unk7DD8 = 1;
        sp1F8 = (s64) temp_a0;
        temp_s0->unk7E24 = (s32) ((((((temp_s0->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8);
        crmDrawPixelsXfer(temp_s0, sp, 1, 4, sp210, sp208, temp_a6);
        temp_s0->unk7DD8 = 0;
        temp_s0->unk7DCE = 0;
        temp_s0->unk7DCA = (u8) sp1F8;
    }
}

s32 TestFunc(void) {
    return 1;
}

void ClearStencil(void **arg0) {
    s64 sp38;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    u32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    u8 spA;
    s8 sp9;
    s8 sp8;
    s16 temp_a2;
    s32 temp_a6;
    s32 temp_t0;
    s32 var_a3;
    u32 temp_a0;
    u32 temp_a5;
    void *temp_a2_2;
    void *temp_a4;
    void *temp_s0;

    temp_s0 = *arg0;
    sp38 = (s64) arg0;
    if (temp_s0->unk7A60 != 0) {
        temp_s0->unk7A5C = 0;
        __glCrmForceNonTagClear(temp_s0, temp_s0 + 0x79FC);
    }
    if (temp_s0->unk80A0 != 0) {
        temp_s0->unk80A0 = 0;
        sp38->unk14 = 0;
        *(s32 *)0x1018 = 2;
        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
    }
    temp_a2 = temp_s0->unk68A;
    if (temp_a2 != 0) {
        var_a3 = (temp_a2 & 0xFF) != 0xFF;
        if (var_a3 == 0) {
            sp9 = 2;
            sp8 = 4;
            spA = (temp_s0->unk7D58 << 0xB) < 0;
            if (ioctl(temp_s0->unk7B10, 0x5606, sp, var_a3, 2, sp38, sp38->unk0->unk684 << 0x18, 0x88888888) != 0) {
                temp_s0->unk14(temp_s0, &sub_0da40000 + 0x20A0);
            }
            var_a3 = (spA & 2) != 0;
        }
        if (var_a3 != 0) {
            temp_a4 = temp_s0->unk7DBC;
            temp_t0 = temp_a4->unk21E0;
            temp_a2_2 = temp_s0->unk7DB8;
            sp18 = (s32) temp_s0->unk68A;
            temp_a2_2->unk21E8 = sp18;
            temp_a4->unk21E8 = sp18;
            temp_a6 = (((((((((temp_t0 & 0xFFFFFF) | (sp38->unk0->unk684 << 0x18) | 0xFF0000) & ~0xF000) | 0x7000) & ~0xF00) | 0x200) & ~0xF0) | 0x20) & ~0xF) | 2;
            temp_a2_2->unk21E0 = temp_a6;
            temp_a4->unk21E0 = temp_a6;
            temp_a5 = ((((u32) temp_s0->unk7D58 >> 0x14) & 1) << 0x14) | 0x400001;
            sp10 = temp_t0;
            sp14 = temp_a6;
            if (temp_s0->unk7D5C != temp_a5) {
                temp_s0->unk7DB8->unk2018 = temp_a5;
                sp1C = temp_a5;
                temp_s0->unk7DBC->unk2018 = temp_a5;
                temp_s0->unk7D5C = temp_a5;
            }
            if (temp_s0->unk7D60 != 0x03020000) {
                temp_s0->unk7DB8->unk2060 = 0x03020000;
                sp20 = 0x03020000;
                temp_s0->unk7DBC->unk2060 = 0x03020000;
                temp_s0->unk7D60 = 0x03020000;
            }
            sp24 = temp_s0->unk7404 << 6;
            temp_a2_2->unk2080 = sp24;
            sp28 = temp_s0->unk7408 << 6;
            temp_a2_2->unk2084 = sp28;
            sp2C = temp_s0->unk740C << 6;
            temp_a2_2->unk2088 = sp2C;
            sp30 = temp_s0->unk7410 << 6;
            temp_a2_2->unk288C = sp30;
            temp_a0 = temp_s0->unk7D58;
            if (temp_s0->unk7D5C != temp_a0) {
                temp_s0->unk7DB8->unk2018 = temp_a0;
                temp_s0->unk7DBC->unk2018 = (u32) temp_s0->unk7D58;
                temp_s0->unk7D5C = (u32) temp_s0->unk7D58;
            }
            temp_a2_2->unk21E0 = sp10;
            temp_a4->unk21E0 = sp10;
        }
    }
}

void crmPickPolyStippleMode(void *arg0, void *arg1) {
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a4;

    temp_a5 = arg0->unk80A0;
    if (arg0->unk7A5C != 1) {
        goto block_1;
    }
    var_a4 = 0;
    if ((arg0->unk7A60 == 0) && (var_a4 = 0, (arg1->unk14 == 1))) {
        if (!(arg0->unk700 & 0x8000)) {
            temp_a4 = temp_a5 | 4;
            if (temp_a5 & 2) {
                arg0->unk80A0 = temp_a4;
                if (temp_a4 != temp_a5) {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    *(s32 *)0x1018 = 2;
                    arg0->unk2DEC = (s32) (arg0->unk2DEC | 4);
                }
            } else {
                var_a4 = 1;
                arg0->unk80A0 = 1;
                goto block_3;
            }
        } else {
block_1:
            var_a4 = 0;
            goto block_2;
        }
    } else {
block_2:
        arg0->unk80A0 = 0;
        if (arg1->unk14 == 1) {
            arg1->unk14 = 0;
            var_a4 = arg0->unk80A0;
        }
block_3:
        if (var_a4 != temp_a5) {
            *(s32 *)0x1018 = 2;
            arg0->unk2DEC = (s32) (arg0->unk2DEC | 4);
        }
    }
}

void MakeCurrentStencil(void *arg0, void *arg2) {
    __glMakeCurrentBuffer();
    if ((arg0->unk4 == 0) && (arg0->unk8 == 0)) {
        arg0->unk14 = 1;
    }
    __glCrmUpdatePolyStipple(arg2, arg0);
}

void ResizeStencil(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a6;
    void *temp_a4;
    void *var_a5;

    temp_a4 = arg0->unk0;
    if ((arg0->unk4 != arg1) || (var_a5 = temp_a4 + 0x10000, (arg0->unk8 != arg2))) {
        var_a5 = temp_a4 + 0x10000;
        if (arg0->unk14 == 1) {
            temp_a6 = temp_a4->unk80A0;
            if (temp_a6 & 2) {
                temp_a4->unk80A0 = (s32) (temp_a6 | 4);
            }
        }
    }
    arg0->unk1C = arg1;
    arg0->unk8 = arg2;
    arg0->unk4 = arg1;
    if ((var_a5->unk-7F60 & 4) && (temp_a4->unk700 & 0x2000) && (*(s32 *)0x1018 != 2)) {
        *(void *)0x1018 = 2;
        temp_a4->unk2DEC = (s32) (temp_a4->unk2DEC | 4);
    }
}

void __glCrmInitStencil(void *arg0, s64 arg1) {
    s64 sp18;
    s32 temp_a1;
    void *temp_a0;

    sp18 = arg1;
    __glInitBuffer(arg1, arg0);
    temp_a1 = arg0->unkCB0;
    sp18->unkC = temp_a1;
    sp18->unk70 = &__glNop;
    sp18->unk6C = &__glNop;
    sp18->unk68 = &__glNop;
    sp18->unk14 = 0;
    sp18->unk10 = 0;
    sp18->unk40 = 0;
    sp18->unk2C = MakeCurrentStencil;
    sp18->unk64 = (void *) (&sub_0d970000 - 0x26A0);
    sp18->unk60 = (void *) (&sub_0d970000 - 0x27D0);
    sp18->unk5C = (void *) (&sub_0d970000 - 0x27C0);
    sp18->unk74 = (void *) (&sub_0d970000 - 0x2690);
    sp18->unk58 = (void *) (&sub_0d970000 - 0x27E0);
    temp_a0 = &sub_0d970000 - 0x22B0;
    sp18->unk38 = temp_a0;
    sp18->unk34 = temp_a0;
    sp18->unk18 = (s32) ((s32) (arg0->unkCAC + temp_a1 + 7) >> 3);
}
