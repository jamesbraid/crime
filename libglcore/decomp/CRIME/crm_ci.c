? __glCrmGetDstBufMode(void *, s64, void *);        /* extern */
? __glCrmSetDrawBuffer(void *, s64, void *, u8, s32); /* extern */
void **__glCrmSetStoreBuffer(void *, void **);      /* extern */
? __glInitBuffer();                                 /* extern */
? __glMakeCurrentBuffer();                          /* extern */
? crmReadPixelsXfer(void *, void *, s32, s32, u32, ?, void *, u8); /* extern */
s32 ioctl(s32, ?, s32 *, s32, ?, u32, s32, s32);    /* extern */
extern ? __glCrmStoreCISpan;
extern ? __glCrmStoreCIStippledSpan;
extern ? __glFetchSpan;
extern ? __glReturnSpan;
extern ? sub_0d940000;
extern ? sub_0da40000;

void StoreCI(void **arg0, void *arg1) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
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
    sp8 = (s32) arg1->unkC;
    temp_a3->unk28D0 = sp8;
    temp_a4->unk8080 = 0;
}

void StoreCI2(void **arg0, void *arg1) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
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
    sp8 = (s32) arg1->unkC;
    temp_a4->unk28D0 = sp8;
    temp_s0->unk8080 = 0;
    __glCrmSetStoreBuffer(temp_s0, temp_a1);
}

s32 ReadCISpan(void *arg0, s32 arg1, s32 arg2, void *arg3, s32 arg4) {
    s32 sp1F8;
    f32 spC0;
    f32 spBC;
    s32 spAC;
    s32 spA8;
    s32 sp60;
    ? var_a5;
    s32 temp_a0;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    u16 *var_a0;
    u32 temp_a4;
    u32 var_a4;
    u8 *temp_a0_2;
    u8 temp_a7;
    void *temp_at;
    void *temp_s3;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_v1;
    void *var_s2;

    var_a2 = arg2;
    temp_s3 = arg0->unk0;
    spA8 = arg4;
    spAC = 1;
    sp60 = arg4 * 4;
    spBC = (f32) arg1;
    spC0 = (f32) var_a2;
    temp_s3->unk7E28 = arg0;
    var_a4 = 0x10;
    temp_a7 = temp_s3->unk7B41;
    var_s2 = arg3;
    temp_s3->unk7E58 = 0;
    var_a3 = 0xC;
    temp_s3->unk7DCE = 0;
    temp_s3->unk7DD8 = 0xC02;
    if (temp_a7 != 1) {
        var_a5 = 8;
        var_a2 = (s32) temp_a7 < 2;
        if (var_a2 == 0) {
            temp_a0 = arg0->unkC;
            switch (temp_a0) {                      /* irregular */
            case 12:
            case 16:
                sp1F8 = 1;
                temp_s3->unk7DD8 = 1;
                temp_s3->unk7E24 = (u32) (((((temp_s3->unk7E24 & ~0x300) | 0x100) & ~0xC) | 4) & ~0xF0 & ~2 & ~1);
                break;
            case 8:
                sp1F8 = 0;
                temp_s3->unk7DD8 = 1;
                temp_s3->unk7E24 = (u32) (temp_s3->unk7E24 & ~0x300 & ~0xC & ~0xF0 & ~2 & ~1);
                break;
            }
        }
    } else {
        temp_s3->unk7DD8 = 1;
        var_a5 = -2;
        var_a4 = ((((temp_s3->unk7E24 & ~0x300) | 0x200) & ~0xC) | 8) & ~0xF0 & ~2 & ~1;
        temp_s3->unk7E24 = var_a4;
        var_a3 = arg0->unkC != 8;
        sp1F8 = var_a3;
    }
    crmReadPixelsXfer(arg0->unk0, sp, var_a2, var_a3, var_a4, var_a5, arg0, temp_a7);
    temp_a4 = temp_s3->unk7E24;
    var_a0 = sp58;
    temp_a6 = (temp_a4 >> 8) & 3;
    temp_a4_2 = ((temp_a4 << 0x1E) >= 0) ? (sp1F8 < temp_a6) : ((temp_a4 & 1) == 0);
    if (temp_a6 != 2) {
        if (temp_a6 == 1) {
            if (sp1F8 == 0) {
                var_a0 = (temp_a4_2 != 0) ? (sp58 + 1) : var_a0;
            }
        }
    } else if (sp1F8 != 0) {
        if (sp1F8 == 1) {
            var_a0 = (temp_a4_2 != 0) ? (sp58 + 2) : var_a0;
        }
    } else {
        var_a0 = sp58 + 3;
    }
    if (arg4 > 0) {
        temp_a5 = 1 << temp_a6;
        var_a3_2 = 0;
        if (arg4 & 1) {
            if (sp1F8 != 0) {
                if (sp1F8 == 1) {
                    temp_t8 = var_s2 + 4;
                    var_s2 = temp_t8;
                    temp_t8->unk-4 = (f32) (*var_a0 & 0xFFF);
                }
            } else {
                temp_t2 = var_s2 + 4;
                var_s2 = temp_t2;
                temp_t2->unk-4 = (f32) (u8) *var_a0;
            }
            var_a3_2 = 1;
            var_a0 += temp_a5;
        }
        if ((arg4 >> 1) != 0) {
loop_18:
            var_a3_2 += 2;
            if (sp1F8 != 0) {
                if (sp1F8 == 1) {
                    temp_v1 = var_s2 + 4;
                    var_s2 = temp_v1;
                    temp_v1->unk-4 = (f32) (*var_a0 & 0xFFF);
                }
            } else {
                temp_at = var_s2 + 4;
                var_s2 = temp_at;
                temp_at->unk-4 = (f32) (u8) *var_a0;
            }
            temp_a0_2 = temp_a5 + var_a0;
            if (sp1F8 != 0) {
                if (sp1F8 == 1) {
                    temp_t8_2 = var_s2 + 4;
                    var_s2 = temp_t8_2;
                    temp_t8_2->unk-4 = (f32) ((u16) *temp_a0_2 & 0xFFF);
                }
            } else {
                temp_t2_2 = var_s2 + 4;
                var_s2 = temp_t2_2;
                temp_t2_2->unk-4 = (f32) *temp_a0_2;
            }
            var_a0 = temp_a5 + temp_a0_2;
            if (arg4 != var_a3_2) {
                goto loop_18;
            }
        }
    }
    temp_s3->unk7DD8 = 0;
    return 0;
}

/*
Decompilation failure in function ReadCI:

Cannot find branch target __glCrmRenderLeftRightBitmap
*/

void ClearCI(void **arg0) {
    s64 sp38;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    u32 sp1C;
    s32 sp18;
    u8 sp12;
    s8 sp11;
    s8 sp10;
    s32 spC;
    s32 sp8;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a6;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t0;
    u32 temp_a3_3;
    u32 temp_a5;
    u32 temp_t1;
    u32 temp_t3;
    u8 temp_a6;
    void *temp_a3_2;
    void *temp_s0;
    void *temp_t2;

    temp_s0 = *arg0;
    if (temp_s0->unk80C0 != 0) {
        if (temp_s0->unk7404 != temp_s0->unk740C) {
            if (temp_s0->unk7408 == temp_s0->unk7410) {

            } else {
                temp_a6 = temp_s0->unk77BC;
                sp38 = (s64) arg0;
                if (temp_a6 != 0) {
                    temp_a7 = temp_s0->unk2DF0;
                    sp38 = (s64) arg0;
                    if (temp_a7 != arg0) {
                        __glCrmSetDrawBuffer(temp_s0, sp38, (void *)1, temp_a6, temp_a7);
                    }
                }
                __glCrmGetDstBufMode(temp_s0, sp38, sp);
                var_t0 = temp_s0->unk80C0;
                temp_a3 = (sp0 >> 2) & 3;
                var_a7 = (s64) temp_s0->unk754 << 0;
                var_a6 = var_a7 & var_t0;
                if (temp_a3 != 1) {
                    if (temp_a3 != 0) {
                        var_a7_2 = (sp0 >> 8) & 3;
                        goto block_16;
                    }
                    if (var_t0 == 0xFF) {
                        var_a7_2 = (sp0 >> 8) & 3;
                        if (var_a7_2 != 2) {
                            if (var_a7_2 != 1) {
                                temp_a6_2 = var_a6 | (var_a6 << 8);
                                var_t0 = -1;
                                var_a6 = temp_a6_2 | (temp_a6_2 << 0x10);
                            } else {
                                if (!(sp0 & 2)) {
                                    goto block_46;
                                }
                                if (sp0 & 1) {
                                    var_a6 <<= 8;
                                    var_t0 = 0xAAAAAAAA;
                                } else {
block_46:
                                    var_t0 = 0x55555555;
                                }
                                var_a6 |= var_a6 << 0x10;
                            }
                        } else {
                            var_t0 = 0x11111111;
                        }
                        goto block_16;
                    }
                    goto block_20;
                }
                if (var_t0 == 0xFFF) {
                    var_a7_2 = (sp0 >> 8) & 3;
                    if (temp_s0->unk812D != 0) {
                        var_t0 = -1;
                        var_a6 |= var_a6 << 0x10;
                    } else if (var_a7_2 != 2) {
                        var_t0 = -1;
                        var_a6 |= var_a6 << 0x10;
                    } else {
                        if (!(sp0 & 2)) {
                            goto block_50;
                        }
                        if (sp0 & 1) {
                            var_a6 <<= 0x10;
                            var_t0 = 0xCCCCCCCC;
                        } else {
block_50:
                            var_t0 = 0x33333333;
                        }
                    }
block_16:
                    sp8 = var_a6;
                    spC = var_t0;
                    sp11 = (sp0 >> 0xA) & 7;
                    sp10 = 1 << var_a7_2;
                    sp12 = (temp_s0->unk7D58 << 0xB) < 0;
                    if (ioctl(temp_s0->unk7B10, 0x5606, &sp8, temp_a3, 1, sp0, var_a6, var_a7_2) != 0) {
                        temp_s0->unk14(temp_s0, &sub_0da40000 + 0x1890);
                    }
                    var_a2 = (sp12 & 2) != 0;
                    if (var_a2 != 0) {
                        var_a7 = (s64) temp_s0->unk754 << 0;
                        goto block_20;
                    }
                } else {
block_20:
                    temp_t3 = temp_s0->unk7D58;
                    temp_t0 = (((sp18 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
                    temp_a3_2 = temp_s0->unk7DB8;
                    temp_t2 = temp_s0->unk7DBC;
                    temp_t1 = (((((((temp_t3 >> 7) & 1) << 7) | 0x400000) & ~0x78) | (((temp_t3 >> 3) & 0xF) * 8)) & ~0x100000) | (((temp_t3 >> 0x14) & 1) << 0x14);
                    if (temp_s0->unk80CC != sp0) {
                        temp_a3_2->unk2008 = sp0;
                        temp_t2->unk2008 = sp0;
                    }
                    if (temp_s0->unk7D5C != temp_t1) {
                        temp_s0->unk7DB8->unk2018 = temp_t1;
                        sp1C = temp_t1;
                        temp_s0->unk7DBC->unk2018 = temp_t1;
                        temp_s0->unk7D5C = temp_t1;
                    }
                    if (temp_s0->unk7D60 != temp_t0) {
                        temp_s0->unk7DB8->unk2060 = temp_t0;
                        sp18 = temp_t0;
                        temp_s0->unk7DBC->unk2060 = temp_t0;
                        temp_s0->unk7D60 = temp_t0;
                    }
                    sp20 = var_a7;
                    temp_a3_2->unk20D0 = sp20;
                    sp24 = temp_s0->unk7404 << 6;
                    temp_a3_2->unk2080 = sp24;
                    sp28 = temp_s0->unk7408 << 6;
                    temp_a3_2->unk2084 = sp28;
                    sp2C = temp_s0->unk740C << 6;
                    temp_a3_2->unk2088 = sp2C;
                    sp30 = temp_s0->unk7410 << 6;
                    var_a2 = sp30;
                    temp_a3_2->unk288C = var_a2;
                    temp_a5 = temp_s0->unk80CC;
                    if (sp0 != temp_a5) {
                        temp_a3_2->unk2008 = temp_a5;
                        temp_t2->unk2008 = (u32) temp_s0->unk80CC;
                    }
                    temp_a3_3 = temp_s0->unk7D58;
                    if (temp_s0->unk7D5C != temp_a3_3) {
                        temp_s0->unk7DB8->unk2018 = temp_a3_3;
                        var_a2 = (s32) temp_s0->unk7DBC;
                        var_a2->unk2018 = (u32) temp_s0->unk7D58;
                        temp_s0->unk7D5C = (u32) temp_s0->unk7D58;
                    }
                }
                if (temp_s0->unk77BC != 0) {
                    temp_a1 = temp_s0->unk2DF0;
                    if (temp_a1 != sp38) {
                        __glCrmSetDrawBuffer(temp_s0, (s64) temp_a1, (void *) var_a2);
                    }
                }
            }
        }
    }
    if (*temp_s0->unk7D38 == 1) {
        temp_a0 = temp_s0->unk80A0;
        if (temp_a0 & 2) {
            temp_s0->unk80A0 = (s32) (temp_a0 | 4);
            if (temp_s0->unk700 & 0x2000) {
                if (*(s32 *)0x1018 != 2) {
                    *(void *)0x1018 = 2;
                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                }
            }
        }
    }
}

void MakeCurrentCI(void) {
    __glMakeCurrentBuffer();
}

void ResizeCI(void *arg0, s32 arg1, s32 arg2) {
    arg0->unk1C = arg1;
    arg0->unk8 = arg2;
    arg0->unk4 = arg1;
}

void PickCI(void *arg0, void *arg1) {
    if (arg0->unk77BC != 0) {
        arg1->unkA4 = (void *) (&sub_0d940000 + 0x1F70);
        return;
    }
    arg1->unkA4 = (void *) (&sub_0d940000 + 0x1EE0);
}

void __glCrmInitCI(void *arg0, void *arg1) {
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_t9;
    s32 temp_v0;
    u8 temp_a2_2;
    void *temp_t3;

    __glInitBuffer();
    temp_a2 = arg1->unkCB4;
    arg0->unkC = temp_a2;
    arg0->unk18 = (s32) ((s32) (temp_a2 + 7) >> 3);
    temp_a2_2 = arg1->unkC96;
    temp_t3 = &sub_0d940000 + 0x23A0;
    arg1->unk80BC = temp_a2_2;
    if (temp_a2_2 != 0) {
        if (*arg1->unk7D38 != 1) {
            goto block_2;
        }
        if ((u32) ((s32) arg1->unk7B47 >> 4) < (u32) arg0->unk18) {
            arg1->unk80BC = 0U;
        } else {
block_2:
            if (temp_a2_2 != 0) {
                arg0->unk18 = (s32) (arg0->unk18 * 2);
            }
        }
    }
    arg0->unkB8 = &__glCrmStoreCISpan;
    arg0->unkC8 = &__glFetchSpan;
    arg0->unkCC = &__glFetchSpan;
    arg0->unk40 = 0;
    arg0->unkBC = &__glCrmStoreCIStippledSpan;
    arg0->unkA0 = (void *) (&sub_0d940000 + 0x28A0);
    arg0->unkA4 = (void *) (&sub_0d940000 + 0x1EE0);
    arg0->unkAC = temp_t3;
    arg0->unkA8 = temp_t3;
    arg0->unk2C = (void *) (&sub_0d940000 + 0x2850);
    arg0->unkB0 = (void *) (&sub_0d940000 + 0x2050);
    arg0->unkB4 = &__glReturnSpan;
    arg0->unkD8 = (void *) (&sub_0d940000 + 0x23C0);
    temp_t9 = M2C_ERROR(/* Read from unset register $t9 */) + 0x2890;
    arg0->unk34 = temp_t9;
    arg0->unk38 = temp_t9;
    arg0->unk58 = 1.0f;
    arg0->unk5C = 1.0f;
    arg0->unk60 = 1.0f;
    arg0->unk80 = 1.0f;
    arg0->unk48 = (s32) ((1 << arg1->unkCB4) - 1);
    temp_a2_3 = (1 << arg1->unkCB4) - 1;
    arg0->unk98 = temp_a2_3;
    if (arg1->unk80BC != 0) {
        if (arg0 == (arg1 + 0x78A4)) {
            temp_v0 = arg0->unk18 * 4;
            arg0->unk70 = temp_v0;
            arg0->unk98 = (s32) (temp_a2_3 << temp_v0);
            return;
        }
        /* Duplicate return node #9. Try simplifying control flow for better match */
        arg0->unk70 = 0;
        return;
    }
    arg0->unk70 = 0;
}
