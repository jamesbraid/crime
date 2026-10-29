f32 __glBuildAntiAliasIndex(f32, f32);              /* extern */
s64 __glCrmSetStoreBuffer(void *, s32);             /* extern */
s32 __glFloor(?, s64, s32, s32, f32);               /* extern */
f32 __glFogVertex(void *, void *, s32, s32, s32, s32, s32, s32); /* extern */
? __glGenericPickPointProcs(s32, s32, void *, s32, s32, ?, s32); /* extern */
void __glPoint(void *arg0, void *arg1);             /* extern */
void __glPointFast(void *arg0, void *arg1);         /* extern */
extern ? sub_0d960000;
extern ? sub_0da40000;

void __glcrmim_2DPointVertex2fv(void *arg0) {
    s32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f4;
    f32 temp_f5;
    u32 temp_a1;
    u32 temp_a4;
    u32 temp_a4_2;
    u32 temp_a4_3;
    void *temp_a2;
    void *temp_a3;

    temp_a2 = *(void **)0x1010;
    temp_f5 = temp_a2->unk7464 + M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f11, $f9 */);
    temp_a3 = temp_a2->unk7DB8;
    temp_f4 = temp_a2->unk7468 + M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f9 */);
    sp4 = temp_f4;
    sp0 = temp_f5;
    if (!(temp_f5 < temp_a2->unk7424) && !(temp_a2->unk742C <= temp_f5) && !(temp_f4 < temp_a2->unk7428) && !(temp_a2->unk7430 <= temp_f4)) {
        temp_a1 = temp_a2->unk7D60;
        temp_a4 = temp_a1 >> 0x18;
        if ((temp_a4 != 1) && (temp_a4 != 2)) {
            temp_a4_2 = temp_a2->unk7D64;
            if (temp_a1 != temp_a4_2) {
                temp_a3->unk2060 = temp_a4_2;
                temp_a2->unk7DBC->unk2060 = (u32) temp_a2->unk7D64;
                temp_a2->unk7D60 = (u32) temp_a2->unk7D64;
            }
            temp_a3->unk2080 = sp0;
            temp_a3->unk2884 = (s32) (s64) temp_f4;
            return;
        }
        temp_a4_3 = temp_a2->unk7D64;
        if (temp_a1 != temp_a4_3) {
            temp_a3->unk2060 = temp_a4_3;
            temp_a2->unk7DBC->unk2060 = (u32) temp_a2->unk7D64;
            temp_a2->unk7D60 = (u32) temp_a2->unk7D64;
        }
        temp_a3->unk2080 = sp0;
        sp8 = 0;
        temp_a3->unk2084 = sp4;
        temp_a3->unk29F0 = sp8;
    }
}

void __glCrmVertexPointFast(void *arg0, void *arg1) {
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_a5_3;
    void *temp_a3;

    temp_a3 = arg0->unk7DB8;
    if (arg1->unk4 == 0) {
        temp_a4 = arg0->unk7D60;
        temp_a5 = temp_a4 >> 0x18;
        if ((temp_a5 != 1) && (temp_a5 != 2)) {
            temp_a5_2 = arg0->unk7D64;
            if (temp_a4 != temp_a5_2) {
                temp_a3->unk2060 = temp_a5_2;
                arg0->unk7DBC->unk2060 = (u32) arg0->unk7D64;
                arg0->unk7D60 = (u32) arg0->unk7D64;
            }
            sp0 = arg1->unk80;
            sp4 = arg1->unk84;
            temp_a3->unk2880 = (f64) sp0;
            return;
        }
        temp_a5_3 = arg0->unk7D64;
        if (temp_a4 != temp_a5_3) {
            temp_a3->unk2060 = temp_a5_3;
            arg0->unk7DBC->unk2060 = (u32) arg0->unk7D64;
            arg0->unk7D60 = (u32) arg0->unk7D64;
        }
        sp8 = arg1->unk80;
        spC = arg1->unk84;
        sp10 = 0;
        temp_a3->unk29F0 = sp10;
        temp_a3->unk2080 = (f64) sp8;
    }
}

f64 RenderPoint(void *arg0, void *arg1) {
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_a5_3;
    void *temp_a3;

    temp_a4 = arg0->unk7D60;
    temp_a5 = temp_a4 >> 0x18;
    temp_a3 = arg0->unk7DB8;
    if ((temp_a5 != 1) && (temp_a5 != 2)) {
        temp_a5_2 = arg0->unk7D64;
        if (temp_a4 != temp_a5_2) {
            temp_a3->unk2060 = temp_a5_2;
            arg0->unk7DBC->unk2060 = (u32) arg0->unk7D64;
            arg0->unk7D60 = (u32) arg0->unk7D64;
        }
        sp0 = arg1->unk80;
        sp4 = arg1->unk84;
        temp_a3->unk2880 = (bitwise f64) sp0;
        return (bitwise f64) sp0;
    }
    temp_a5_3 = arg0->unk7D64;
    if (temp_a4 != temp_a5_3) {
        temp_a3->unk2060 = temp_a5_3;
        arg0->unk7DBC->unk2060 = (u32) arg0->unk7D64;
        arg0->unk7D60 = (u32) arg0->unk7D64;
    }
    sp8 = arg1->unk80;
    spC = arg1->unk84;
    sp10 = 0;
    temp_a3->unk29F0 = sp10;
    temp_a3->unk2080 = (f64) sp8;
    return second half of f64;
}

void RenderPointCI(void *arg0, void *arg1) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a5;
    void *temp_a3;

    temp_a5 = arg0->unk7D64;
    temp_a3 = arg0->unk7DB8;
    if (arg0->unk7D60 != temp_a5) {
        temp_a3->unk2060 = temp_a5;
        arg0->unk7DBC->unk2060 = (s32) arg0->unk7D64;
        arg0->unk7D60 = (s32) arg0->unk7D64;
    }
    sp0 = arg1->unk80;
    sp4 = arg1->unk84;
    temp_a3->unk2080 = (f64) sp0;
    sp8 = (s32) *arg1->unk8;
    temp_a3->unk28D0 = sp8;
    arg0->unk8080 = 0;
}

f64 RenderPointDepth(void *arg0, void *arg1) {
    s64 sp30;
    f64 sp28;
    s32 sp24;
    s32 sp20;
    f32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f0;
    f32 var_f15;
    f64 var_f0;
    s32 temp_a0;
    s32 temp_a3;
    void *temp_a7;
    void *temp_s1;

    temp_a3 = arg0->unk7D64;
    temp_s1 = arg0->unk7DB8;
    if (arg0->unk7D60 != temp_a3) {
        temp_s1->unk2060 = temp_a3;
        arg0->unk7DBC->unk2060 = (s32) arg0->unk7D64;
        arg0->unk7D60 = (s32) arg0->unk7D64;
    }
    sp0 = arg1->unk80;
    sp4 = arg1->unk84;
    var_f0 = (bitwise f64) sp0;
    temp_s1->unk2080 = var_f0;
    temp_a0 = arg0->unk700 & 0x20;
    if (arg0->unkC94 != 0) {
        if (temp_a0 != 0) {
            if (arg0->unk76E4 & 0x1000) {
                temp_f0 = __glFogVertex(arg0, arg1, temp_a3);
                var_f15 = temp_f0;
                arg1->unkB0 = temp_f0;
            } else {
                var_f15 = arg1->unkB0;
            }
            var_f0 = second half of f64;
            sp8 = (s32) ((f32) ((f64) var_f15 * 255.0) * 4096.0f);
            temp_s1->unk2178 = sp8;
        }
        if (!(arg0->unk807C & 2)) {
            temp_a7 = arg1->unk8;
            spC = (s32) temp_a7->unkC | ((s32) temp_a7->unk0 << 0x18) | (((s32) temp_a7->unk4 << 0x10) | ((s32) temp_a7->unk8 << 8));
            temp_s1->unk20D0 = spC;
            arg0->unk8080 = 0;
        }
    } else if (temp_a0 != 0) {
        if (arg0->unk76E4 & 0x1000) {
            arg1->unkB0 = __glFogVertex(arg0, arg1, temp_a3);
        }
        var_f0 = arg0->unk30F4(arg0, &sp10, arg1->unk8);
        sp20 = (s32) sp10;
        temp_s1->unk20D0 = sp20;
        arg0->unk8080 = 0;
    } else if (!(arg0->unk807C & 2)) {
        sp24 = (s32) arg1->unk8->unk0;
        temp_s1->unk20D0 = sp24;
        arg0->unk8080 = 0;
    }
    sp28 = (f64) (arg1->unk88 * 64.0f);
    sp30 = (s64) sp28;
    temp_s1->unk29C8 = sp30;
    return var_f0;
}

void RenderPointFog(void *arg0, void *arg1) {
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    f32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f0;
    f32 var_f15;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    void *temp_a3_3;
    void *temp_s2;

    temp_s2 = arg0->unk7DB8;
    temp_a3 = arg0->unk7D64;
    if (arg0->unk7D60 != temp_a3) {
        temp_s2->unk2060 = temp_a3;
        arg0->unk7DBC->unk2060 = (s32) arg0->unk7D64;
        arg0->unk7D60 = (s32) arg0->unk7D64;
    }
    temp_a3_2 = arg1->unk84;
    temp_a4 = arg1->unk80;
    sp0 = temp_a4;
    sp4 = temp_a3_2;
    temp_s2->unk2080 = (f64) sp0;
    temp_a2 = arg0->unk76E4 & 0x1000;
    if (temp_a2 != 0) {
        temp_f0 = __glFogVertex(arg0, arg1, temp_a2, temp_a3_2, temp_a4);
        arg1->unkB0 = temp_f0;
        var_f15 = temp_f0;
    } else {
        var_f15 = arg1->unkB0;
    }
    if (arg0->unkC95 != 0) {
        arg0->unk30F4(arg0, &sp8, arg1->unk8);
        sp18 = (s32) sp8;
        temp_s2->unk28D0 = sp18;
        arg0->unk8080 = 0;
        return;
    }
    if (!(arg0->unk807C & 2)) {
        temp_a3_3 = arg1->unk8;
        sp1C = (s32) temp_a3_3->unkC | ((s32) temp_a3_3->unk0 << 0x18) | (((s32) temp_a3_3->unk4 << 0x10) | ((s32) temp_a3_3->unk8 << 8));
        temp_s2->unk20D0 = sp1C;
        arg0->unk8080 = 0;
    }
    sp20 = (s32) ((f32) ((f64) var_f15 * (second half of f64)) * 4096.0f);
    temp_s2->unk2978 = sp20;
}

void RenderPointTextured(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg7) {
    s64 spD0;
    s32 spC8;
    s32 spC4;
    f32 spC0;
    s64 spB8;
    f64 spB0;
    s64 spA8;
    f64 spA0;
    s32 sp9C;
    f32 sp98;
    s32 sp94;
    s32 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s32 sp6C;
    s32 sp68;
    s64 sp60;
    s64 sp58;
    s32 sp50;
    s64 sp48;
    f64 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f64 var_f4_2;
    f64 var_f5_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a5;
    s32 var_a7;
    s64 var_a0_2;
    void *temp_s2;
    void *temp_s4_2;
    void *temp_v1;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = arg0->unk7D60;
    temp_s4 = arg0->unk76E4;
    temp_s2 = arg0->unk7DB8;
    temp_v0 = arg0->unk1D0;
    temp_s3 = temp_v0 > 1;
    if (temp_s3 != 0) {
        temp_f4 = arg1->unk84;
        temp_a0 = temp_v0 >> 1;
        temp_f5 = arg1->unk80;
        if (temp_v0 & 1) {
            var_a1 = temp_a0 + (s32) temp_f4;
            sp4 = var_a1;
            var_a5 = (s32) temp_f5 - temp_a0;
        } else {
            temp_f10 = arg0->unkDD4;
            var_a1 = temp_a0 + (s32) (temp_f4 - temp_f10);
            sp4 = var_a1;
            var_a5 = (s32) (temp_f5 + temp_f10) - temp_a0;
        }
        sp0 = var_a5;
        var_a0 = 0x03020000;
        var_a3 = (var_a1 - temp_v0) + 1;
        spC = var_a3;
        var_a2 = (temp_v0 + var_a5) - 1;
        sp8 = var_a2;
        if (temp_a4 != 0x03020000) {
            sp10 = 0x03020000;
            goto block_6;
        }
    } else {
        var_a5 = arg0->unk7D64;
        sp10 = var_a5;
        var_a0 = var_a5;
        if (temp_a4 != var_a5) {
block_6:
            temp_s2->unk2060 = var_a0;
            var_a7 = sp10;
            arg0->unk7DBC->unk2060 = var_a7;
            arg0->unk7D60 = var_a7;
        }
    }
    if (temp_s3 != 0) {
        sp14 = 0x7FFFF & (sp0 << 6);
        sp18 = 0x7FFFF & (spC << 6);
        sp1C = 0x7FFFF & (sp8 << 6);
        sp20 = 0x7FFFF & (sp4 << 6);
        temp_s2->unk208C = sp20;
        temp_s2->unk2088 = sp1C;
        temp_s2->unk2084 = sp18;
        temp_s2->unk2080 = sp14;
    } else {
        sp28 = arg1->unk80;
        sp2C = arg1->unk84;
        temp_s2->unk2080 = (bitwise f64) sp28;
    }
    temp_v1 = arg1->unk8;
    sp30 = temp_v1->unk0;
    sp34 = temp_v1->unk4;
    sp38 = temp_v1->unk8;
    sp3C = temp_v1->unkC;
    var_a0_2 = temp_s4 & 4;
    if (!(arg0->unk7D58 & 0x8000)) {
        temp_f17 = arg0->unkDD8;
        temp_f18 = temp_f17 / arg1->unk3C;
        arg0->unk30EC(arg0, &sp30, var_a2, var_a3, temp_a4, var_a5, var_a7, arg1->unk30 * temp_f18, arg1->unk34 * temp_f18, arg1->unk38 * temp_f18, temp_f17, temp_f18);
        var_a0_2 = temp_s4 & 4;
    }
    unkspE0 = var_a0_2;
    if (var_a0_2 != 0) {
        sp40 = (f64) (arg1->unk88 * 64.0f);
        sp48 = (s64) sp40;
        temp_s2->unk21C8 = sp48;
    }
    temp_a2 = temp_s4 & 0x1000;
    if (arg0->unk700 & 0x20) {
        if (temp_a2 != 0) {
            temp_f0 = __glFogVertex(arg0, arg1, temp_a2);
            var_f5 = temp_f0;
            arg1->unkB0 = temp_f0;
        } else {
            var_f5 = arg1->unkB0;
        }
        sp50 = (s32) ((f32) ((f64) var_f5 * 255.0) * 4096.0f);
        temp_s2->unk2178 = sp50;
    }
    if (temp_s3 != 0) {
        if (unkspE0 != 0) {
            sp58 = 0;
            sp60 = 0;
            temp_s2->unk21D8 = sp60;
            temp_s2->unk21D0 = sp58;
        }
        if (arg0->unk700 & 0x20) {
            sp68 = 0;
            sp6C = 0;
            temp_s2->unk2188 = sp6C;
            temp_s2->unk2180 = sp68;
        }
        if (arg0->unk7D58 & 0x8000) {
            sp70 = 0;
            sp78 = 0;
            sp80 = 0;
            sp88 = 0;
            sp90 = 0;
            sp94 = 0;
            temp_s2->unk215C = sp94;
            temp_s2->unk2158 = sp90;
            temp_s2->unk2150 = sp88;
            temp_s2->unk2148 = sp80;
            temp_s2->unk2140 = (f64) (second half of f64);
            temp_s2->unk2138 = sp70;
            goto block_27;
        }
    } else {
block_27:
        if (arg0->unk7D58 & 0x8000) {
            var_f4 = arg1->unk3C;
            temp_f5_2 = arg1->unk30;
            temp_s4_2 = arg0->unk6E30;
            temp_v0_2 = temp_s4_2->unkE8;
            if ((f64) var_f4 != 1.0) {
                if (fabsf(var_f4) < 0.0000076293945f) {
                    var_f4 = M2C_ERROR(/* unknown instruction: movf.s $f12, $f6, $fcc2 */);
                }
                temp_f6 = 1.0f / var_f4;
                spD0 = (bitwise s64) (temp_f5_2 * temp_f6);
                if (temp_v0_2 != 1) {
                    sp98 = arg1->unk34 * temp_f6;
                }
            } else {
                spD0 = (bitwise s64) temp_f5_2;
                if (temp_v0_2 != 1) {
                    sp98 = arg1->unk34;
                }
            }
            temp_v0_3 = __glFloor(1, spD0, second half of f64);
            temp_a5 = temp_v0_3 < 2;
            if (temp_s4_2->unk4 != 0x2901) {
                if (temp_v0_3 >= 0) {
                    if (temp_a5 == 0) {

                    }
                }
            }
            var_f5_2 = 1.0;
            var_f4_2 = second half of f64;
            if (temp_s4_2->unkE8 != 1) {
                unksp110 = second half of f64;
                temp_v0_4 = __glFloor(0x2901, (bitwise s64) sp98);
                temp_a5_2 = temp_v0_4 < 2;
                if (temp_s4_2->unk8 != 0x2901) {
                    if (temp_v0_4 >= 0) {
                        if (temp_a5_2 == 0) {
                            var_f6 = 7.0f;
                        } else {
                            var_f6 = sp98 + 1.0f;
                        }
                    } else {
                        var_f6 = 0.0f;
                    }
                    var_f5_2 = (f64) var_f6;
                    var_f4_2 = second half of f64;
                } else {
                    var_f5_2 = (f64) ((sp98 - (f32) temp_v0_4) + 1.0f);
                    var_f4_2 = second half of f64;
                }
            }
            sp9C = 0;
            spA0 = 8796093022208.0 * var_f4_2;
            spA8 = (s64) spA0 + 0x800;
            spB0 = 8796093022208.0 * var_f5_2;
            spB8 = (s64) spB0 + 0x800;
            spC0 = 5.368709e8f;
            temp_s2->unk2134 = sp9C;
            temp_s2->unk2120 = spA8;
            temp_s2->unk2128 = spB8;
            spC4 = (s32) spC0 + 0x800;
            temp_s2->unk2130 = spC4;
        }
    }
    if (arg0->unk807C & 2) {
        return;
    }
    spC8 = (s32) sp3C | ((s32) sp30 << 0x18) | (((s32) sp34 << 0x10) | ((s32) sp38 << 8));
    temp_s2->unk28D0 = spC8;
    arg0->unk8080 = 0;
}

void RenderPointN(void *arg0, void *arg1) {
    s64 sp68;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    f32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s64 sp20;
    f64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f9;
    f32 var_f15;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a6;
    s32 var_a7;
    u8 temp_a2;
    void *temp_a0;
    void *temp_a3_2;
    void *temp_s0;

    temp_f4 = arg1->unk84;
    temp_f5 = arg1->unk80;
    temp_a3 = arg0->unk76E4;
    temp_a4 = arg0->unk1D0;
    temp_s0 = arg0->unk7DB8;
    temp_a5 = temp_a4 >> 1;
    if (temp_a4 & 1) {
        var_a6 = (s32) temp_f5;
        var_a7 = temp_a5 + (s32) temp_f4;
    } else {
        temp_f9 = arg0->unkDD4;
        var_a6 = (s32) (temp_f5 + temp_f9);
        var_a7 = temp_a5 + (s32) (temp_f4 - temp_f9);
    }
    temp_a6 = var_a6 - temp_a5;
    if (arg0->unk7D60 != 0x03020000) {
        sp0 = 0x03020000;
        temp_s0->unk2060 = 0x03020000;
        arg0->unk7DBC->unk2060 = sp0;
        arg0->unk7D60 = sp0;
    }
    if (temp_a3 & 4) {
        sp8 = 0;
        sp10 = 0;
        temp_s0->unk21D8 = sp10;
        temp_s0->unk21D0 = (f64) (second half of f64);
        sp18 = (f64) (arg1->unk88 * 64.0f);
        sp20 = (s64) sp18;
        temp_s0->unk21C8 = sp20;
    }
    temp_t3 = 0x7FFFF & (temp_a6 << 6);
    sp28 = temp_t3;
    temp_s0->unk2080 = temp_t3;
    temp_t2 = 0x7FFFF & (((var_a7 - temp_a4) + 1) << 6);
    sp2C = temp_t2;
    sp30 = 0x7FFFF & (((temp_a4 + temp_a6) - 1) << 6);
    temp_a5_2 = var_a7 << 6;
    sp34 = 0x7FFFF & temp_a5_2;
    temp_s0->unk208C = sp34;
    temp_s0->unk2088 = sp30;
    temp_s0->unk2084 = temp_t2;
    temp_a2 = arg0->unkC95;
    temp_a4_2 = temp_a3 & 0x1000;
    temp_a0 = arg0 + 0x10000;
    temp_a1 = arg0->unk700 & 0x20;
    if (temp_a2 != 0) {
        if (temp_a1 != 0) {
            if (temp_a4_2 != 0) {
                sp68 = (s64) temp_a0;
                arg1->unkB0 = __glFogVertex(arg0, arg1, (s32) temp_a2, temp_a3, temp_a4_2, temp_a5_2, temp_a6, var_a7);
            } else {
                sp68 = (s64) temp_a0;
            }
            arg0->unk30F4(arg0, &sp38, arg1->unk8);
            sp48 = (s32) sp38;
            sp60 = 0;
            temp_s0->unk20D0 = sp48;
            sp68->unk-7F80 = 0;
            temp_s0->unk29F0 = sp60;
            return;
        }
        if (!(arg0->unk807C & 2)) {
            sp4C = (s32) arg1->unk8->unk0;
            temp_s0->unk20D0 = sp4C;
            arg0->unk8080 = 0;
        }
        /* Duplicate return node #13. Try simplifying control flow for better match */
        sp60 = 0;
        temp_s0->unk29F0 = sp60;
        return;
    }
    if (temp_a1 != 0) {
        if (temp_a3 & 0x1000) {
            sp68 = (s64) temp_a0;
            temp_f0 = __glFogVertex(arg0, arg1, (s32) temp_a2, temp_a3, temp_a4_2, temp_a5_2, temp_a6, var_a7);
            var_f15 = temp_f0;
            arg1->unkB0 = temp_f0;
        } else {
            var_f15 = arg1->unkB0;
        }
        sp50 = (s32) ((f32) ((f64) var_f15 * (second half of f64)) * 4096.0f);
        sp54 = 0;
        sp58 = 0;
        temp_s0->unk2188 = sp58;
        temp_s0->unk2180 = sp54;
        temp_s0->unk2178 = sp50;
    }
    if (!(arg0->unk807C & 2)) {
        temp_a3_2 = arg1->unk8;
        sp5C = (s32) temp_a3_2->unkC | ((s32) temp_a3_2->unk0 << 0x18) | (((s32) temp_a3_2->unk4 << 0x10) | ((s32) temp_a3_2->unk8 << 8));
        sp60 = 0;
        temp_s0->unk20D0 = sp5C;
        arg0->unk8080 = 0;
        temp_s0->unk29F0 = sp60;
        return;
    }
    sp60 = 0;
    temp_s0->unk29F0 = sp60;
}

void __glCrmPolygonOffsetPoint(void *arg0, void *arg1) {
    f32 temp_f30;

    temp_f30 = arg1->unk88;
    arg1->unk88 = (f32) (arg0->unk7718 + temp_f30);
    arg0->unk30D0();
    arg1->unk88 = temp_f30;
}

f32 Coverage(f32 fparg0, f32 fparg1) {
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f11;
    f32 temp_f11_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 var_f0;

    temp_f10 = fparg1 + -0.375f;
    temp_f8 = temp_f10 + 0.25f;
    temp_f11 = temp_f8 + 0.25f;
    temp_f10_2 = temp_f10 * temp_f10;
    temp_f8_2 = temp_f8 * temp_f8;
    temp_f9 = temp_f11 + 0.25f;
    temp_f11_2 = temp_f11 * temp_f11;
    var_f0 = 0.0f;
    temp_f9_2 = temp_f9 * temp_f9;
    temp_f5 = M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f14, $f6, $f6 */);
    if (temp_f11_2 <= temp_f5) {
        var_f0 = 0.0f + 0.0625f;
    }
    if (temp_f8_2 <= temp_f5) {
        var_f0 += 0.0625f;
    }
    if (temp_f8_2 <= temp_f5) {
        var_f0 += 0.0625f;
    }
    if (temp_f8_2 <= temp_f5) {
        var_f0 += 0.0625f;
    }
    temp_f5_2 = M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f14, $f6, $f6 */);
    if (temp_f10_2 <= temp_f5_2) {
        var_f0 += 0.0625f;
    }
    if (temp_f8_2 <= temp_f5_2) {
        var_f0 += 0.0625f;
    }
    if (temp_f11_2 <= temp_f5_2) {
        var_f0 += 0.0625f;
    }
    if (temp_f9_2 <= temp_f5_2) {
        var_f0 += 0.0625f;
    }
    temp_f5_3 = M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f14, $f6, $f6 */);
    if (temp_f10_2 <= temp_f5_3) {
        var_f0 += 0.0625f;
    }
    if (temp_f8_2 <= temp_f5_3) {
        var_f0 += 0.0625f;
    }
    temp_f5_4 = M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f14, $f6, $f6 */);
    if (temp_f11_2 <= temp_f5_3) {
        var_f0 += 0.0625f;
    }
    if (temp_f11_2 <= temp_f5_3) {
        var_f0 += 0.0625f;
    }
    if (temp_f10_2 <= temp_f5_4) {
        var_f0 += 0.0625f;
    }
    if (temp_f8_2 <= temp_f5_4) {
        var_f0 += 0.0625f;
    }
    if (temp_f11_2 <= temp_f5_4) {
        var_f0 += 0.0625f;
    }
    if (temp_f9_2 <= temp_f5_4) {
        return var_f0 + 0.0625f;
    }
    return var_f0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xb0, 0xb4, 0xf0, 0xf4, 0xf8, 0xfc, 0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x148, 0x14c, 0x150, 0x154, 0x158, 0x15c, 0x160, 0x164, 0x168, 0x16c], gap at: 0xb8. */
void RenderAntiAliasedPoint(void *arg0, void *arg1) {
    f64 spA8;
    s32 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp94;
    f32 sp90;
    s64 sp88;
    f64 sp80;
    s64 sp78;
    f64 sp70;
    s32 sp6C;
    s32 sp68;
    s64 sp60;
    f64 sp58;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f14;
    f32 temp_f17;
    f32 temp_f20;
    f32 temp_f24;
    f32 temp_f29;
    f32 temp_f5;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f6;
    f64 var_f20;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_f23;
    s32 temp_f27;
    s32 temp_s0;
    s32 temp_s8_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 var_s3;
    s32 var_v0;
    s64 temp_a2_2;
    s64 temp_a2_3;
    s64 temp_at;
    s64 temp_f7;
    s64 temp_t9;
    s64 var_a0;
    s64 var_s0;
    void *temp_s2;
    void *temp_s6;
    void *temp_s8;
    void *temp_v1;

    temp_a3 = arg0->unk700;
    unkspE0 = (s64) temp_a3;
    temp_f20 = arg1->unk80;
    temp_s6 = arg0->unk7DBC;
    temp_s2 = arg0->unk7DB8;
    temp_f7 = (s64) arg1->unk88;
    temp_s0 = arg0->unk76E4;
    sp8 = (s32) temp_f7;
    temp_v1 = arg1->unk8;
    spC = temp_v1->unk0;
    spA8 = second half of f64;
    sp10 = temp_v1->unk4;
    temp_at = temp_s0 & 8;
    unkspE8 = temp_at;
    sp14 = temp_v1->unk8;
    unkspB8 = (bitwise f64) (arg0->unk1CC * arg0->unkDD4);
    sp18 = temp_v1->unkC;
    if (temp_at != 0) {
        temp_a4 = arg0->unk7D58;
        temp_a4_2 = temp_a4 << 0x10;
        temp_f5 = arg1->unk30;
        temp_f0 = arg1->unk3C;
        if (temp_a4 & 0x8000) {
            temp_s8 = arg0->unk6E30;
            var_f6 = temp_f0;
            temp_v0 = temp_s8->unkE8;
            if ((f64) temp_f0 != (second half of f64)) {
                if (fabsf(temp_f0) < 0.0000076293945f) {
                    var_f6 = M2C_ERROR(/* unknown instruction: movf.s $f6, $f7, $fcc2 */);
                }
                temp_f0_2 = 1.0f / var_f6;
                var_f22 = temp_f5 * temp_f0_2;
                if (temp_v0 != 1) {
                    sp38 = arg1->unk34 * temp_f0_2;
                }
            } else {
                var_f22 = temp_f5;
                if (temp_v0 != 1) {
                    sp38 = arg1->unk34;
                }
            }
            temp_v0_2 = __glFloor(1, temp_f7, temp_a3, temp_a4_2, var_f22);
            temp_a2 = temp_s8->unk4;
            if (temp_a2 != 0x2901) {
                if (temp_v0_2 >= 0) {
                    if (temp_v0_2 >= 2) {
                        var_f0 = 7.0f;
                    } else {
                        var_f0 = var_f22 + 1.0f;
                    }
                } else {
                    var_f0 = 0.0f;
                }
                sp3C = var_f0;
            } else {
                sp3C = (var_f22 - (f32) temp_v0_2) + 1.0f;
            }
            if (temp_s8->unkE8 == 1) {
                sp40 = 1.0f;
            } else {
                temp_v0_3 = __glFloor(1, 0x2901, temp_a2, (bitwise s32) sp38);
                if (temp_s8->unk8 != 0x2901) {
                    if (temp_v0_3 >= 0) {
                        if (temp_v0_3 >= 2) {
                            var_f0_2 = 7.0f;
                        } else {
                            var_f0_2 = sp38 + 1.0f;
                        }
                    } else {
                        var_f0_2 = 0.0f;
                    }
                    sp40 = var_f0_2;
                } else {
                    sp40 = (sp38 - (f32) temp_v0_3) + 1.0f;
                }
            }
            temp_v0_4 = *arg0->unk9B4;
            if ((temp_v0_4 == 0x8062) || (temp_v0_4 == 0x1E01)) {
                temp_a0 = (arg0->unk7E68 & ~3) | 1;
                temp_s2->unk2110 = temp_a0;
                temp_s6->unk2110 = temp_a0;
                sp44 = temp_a0;
                sp18 = arg0->unk7848;
            }
        } else {
            temp_f17 = arg0->unkDD8;
            temp_f14 = temp_f17 / temp_f0;
            arg0->unk30EC(arg0, &spC, temp_f7, temp_a3, temp_a4_2, temp_f5 * temp_f14, arg1->unk34 * temp_f14, arg1->unk38 * temp_f14, temp_f17);
        }
    }
    temp_a2_2 = unkspE0 & 0x20;
    unksp138 = temp_a2_2;
    if (temp_a2_2 != 0) {
        temp_a3_2 = temp_s0 & 0x1000;
        if (temp_a3_2 != 0) {
            arg1->unkB0 = __glFogVertex(arg0, arg1, (s32) temp_a2_2, temp_a3_2);
        }
        if (arg0->unkC95 != 0) {
            arg0->unk30F4(arg0, sp + 0xC, arg1->unk8);
        }
    }
    temp_s8_2 = temp_s0 & 1;
    if (temp_s8_2 != 0) {
        sp48 = ((second half of f64) << 0x10) | ((s64) (second half of f64) << 8) | ((s64) spC << 0x18);
    }
    temp_v0_5 = arg0->unk7D64;
    if (arg0->unk7D60 != temp_v0_5) {
        arg0->unk7DB8->unk2060 = temp_v0_5;
        arg0->unk7DBC->unk2060 = (s32) arg0->unk7D64;
        arg0->unk7D60 = (s32) arg0->unk7D64;
    }
    temp_f23 = (s32) (temp_f20 - (bitwise f32) unkspB8);
    temp_f27 = (s32) ((bitwise f32) spA8 - (bitwise f32) unkspB8);
    temp_f29 = arg0->unkDD4;
    temp_f24 = arg0->unkDD8;
    var_v0 = temp_f27;
    sp4 = temp_f27;
    unksp128 = (s64) temp_f23;
    var_a0 = (s32) ((bitwise f32) unkspB8 + (bitwise f32) spA8) - var_v0;
    unksp130 = var_a0;
    var_f22_2 = ((f32) temp_f27 + temp_f29) - (bitwise f32) spA8;
    unkspC0 = (bitwise f64) (((f32) temp_f23 + temp_f29) - temp_f20);
    if (var_a0 >= 0) {
        unksp140 = temp_s0 & 4;
        unkspD0 = (bitwise f64) sp40;
        var_s3 = 1;
        unkspC8 = (bitwise f64) sp3C;
        temp_a2_3 = (s32) ((bitwise f32) unkspB8 + temp_f20) - unksp128;
        unksp120 = temp_a2_3;
        unkspD8 = temp_a2_3 + 1;
loop_21:
        var_f20 = unkspC0;
        sp0 = (s32) unksp128;
        var_s0 = unksp120;
        if (unksp120 >= 0) {
loop_26:
            temp_f0_3 = (bitwise f32) __glCrmPolygonOffsetPoint((void *) var_a0, (void *) var_f20, var_f22_2, (bitwise f32) unkspB8 * (bitwise f32) unkspB8);
            if (temp_f0_3 > 0.0f) {
                sp4C = sp0 << 6;
                sp18 *= temp_f0_3;
                temp_s2->unk2080 = sp4C;
                sp50 = sp4 << 6;
                temp_s2->unk2084 = sp50;
                if (var_s3 != 0) {
                    var_s3 = 0;
                    if (unksp140 != 0) {
                        sp58 = (f64) (arg1->unk88 * 64.0f);
                        sp60 = (s64) sp58;
                        temp_s2->unk21C8 = (f64) (second half of f64);
                        temp_s6->unk21C8 = sp60;
                    }
                    if ((arg0->unkC94 != 0) && (unksp138 != 0)) {
                        sp68 = (s32) (4096.0f * (f32) ((f64) arg1->unkB0 * (second half of f64)));
                        temp_s2->unk2178 = sp68;
                        temp_s6->unk2178 = sp68;
                    }
                    if (arg0->unk7D58 & 0x8000) {
                        sp6C = 0;
                        temp_s2->unk2134 = sp6C;
                        temp_s6->unk2134 = sp6C;
                        sp70 = (f64) ((bitwise f32) unkspC8 * 8.796093e12f);
                        sp78 = (s64) sp70 + 0x800;
                        sp80 = (f64) ((bitwise f32) unkspD0 * (second half of f64));
                        sp88 = (s64) sp80 + 0x800;
                        sp90 = 5.368709e8f;
                        temp_s2->unk2120 = (f64) (second half of f64);
                        temp_s6->unk2120 = sp78;
                        temp_s2->unk2128 = sp88;
                        temp_s6->unk2128 = sp88;
                        sp94 = (s32) sp90 + 0x800;
                        temp_s2->unk2130 = sp94;
                        temp_s6->unk2130 = sp94;
                    }
                }
                if (temp_s8_2 != 0) {
                    sp98 = ((s64) sp18 << 0) | sp48;
                    temp_s2->unk28D0 = sp98;
                } else {
                    sp9C = (s32) __glBuildAntiAliasIndex(spC, temp_f0_3);
                    spA0 = 0;
                    temp_s2->unk29F0 = spA0;
                    temp_s2->unk20D0 = sp9C;
                }
            }
            var_s0 -= 1;
            var_f20 = (bitwise f64) (temp_f24 + (bitwise f32) var_f20);
            var_a0 = sp0 + 1;
            sp0 = (s32) var_a0;
            if (var_s0 != -1) {
                goto loop_26;
            }
            var_v0 = sp4;
        }
        temp_t9 = unksp130 - 1;
        var_v0 += 1;
        sp4 = var_v0;
        var_f22_2 += temp_f24;
        unksp130 = temp_t9;
        if (temp_t9 != -1) {
            goto loop_21;
        }
    }
    if ((unkspE8 == 0) || !(arg0->unk7D58 & 0x8000) || ((temp_v0_6 = *arg0->unk9B4, (temp_v0_6 != 0x8062)) && (temp_v0_6 != 0x1E01))) {
        arg0->unk8080 = 0;
        return;
    }
    temp_s2->unk2110 = (s32) arg0->unk7E68;
    temp_s6->unk2110 = (s32) arg0->unk7E68;
    arg0->unk8080 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c, 0x48, 0x4c], gap at: 0x30. */
void RenderFrontBackPoint(void *arg0, s32 arg1) {
    s32 sp4;
    u32 sp0;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a2;
    void *temp_s2;
    void *temp_s3;

    temp_s3 = arg0->unk7DB8;
    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    unksp28 = (s64) temp_s2->unk21E8;
    temp_a2 = arg0->unk7D58;
    temp_a0 = -3 & temp_a2;
    unksp40 = __glCrmSetStoreBuffer(arg0->unk77C0);
    arg0->unk7D58 = temp_a0;
    if (arg0->unk7D5C != temp_a0) {
        arg0->unk7DB8->unk2018 = temp_a0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    unksp30 = (s64) (arg0 + 0x10000);
    sp4 = 0;
    temp_s3->unk21E8 = sp4;
    temp_s2->unk21E8 = sp4;
    arg0->unk810C(arg0, arg1, temp_a2);
    __glCrmSetStoreBuffer(arg0, arg0->unk77C4);
    temp_a0_2 = (-3 & arg0->unk7D58) | (((sp0 >> 1) & 1) * 2);
    arg0->unk7D58 = temp_a0_2;
    if (arg0->unk7D5C != temp_a0_2) {
        arg0->unk7DB8->unk2018 = temp_a0_2;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    temp_s3->unk21E8 = (s32) unksp28;
    temp_s2->unk21E8 = (s32) unksp28;
    unksp30->unk-7EF4(arg0, arg1, arg0->unk7D58);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    __glCrmSetStoreBuffer(arg0, (s32) unksp40);
}

void RenderLeftRightPoint(void *arg0, s32 arg1, void *arg6, void *arg7) {
    s64 sp8;
    void *sp4;
    u32 sp0;
    s32 var_a4;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a4;
    u32 temp_v0;
    u32 var_a2;
    u32 var_a2_2;
    u32 var_a3;
    u32 var_a3_2;
    void *temp_s1;
    void *temp_s2;
    void *var_a5;
    void *var_a6;
    void *var_a7;

    var_a6 = arg6;
    var_a7 = arg7;
    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    temp_s1 = arg0->unk7DB8;
    var_a2 = 0xF2F5C;
    temp_a4 = temp_s2->unk2008;
    var_a5 = temp_s2->unk21E8;
    var_a4 = ~temp_a4 & 1;
    var_a3 = (-2 & temp_a4) | var_a4;
    temp_s2->unk2008 = var_a3;
    temp_s1->unk2008 = var_a3;
    sp8 = (s64) var_a5;
    if (arg0->unk30D0 != (&sub_0d960000 - 0x2370)) {
        temp_a0 = arg0->unk7D58 & ~2;
        arg0->unk7D58 = temp_a0;
        if (arg0->unk7D5C != temp_a0) {
            var_a5 = arg0->unk7DB8;
            var_a5->unk2018 = temp_a0;
            var_a4 = (s32) arg0->unk7DBC;
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
    unksp20 = (s64) (arg0 + 0x10000);
    arg0->unk8120(arg0, arg1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    temp_a0_2 = temp_s2->unk2008;
    temp_v0 = (-2 & temp_a0_2) | (~temp_a0_2 & 1);
    temp_s2->unk2008 = temp_v0;
    temp_s1->unk2008 = temp_v0;
    var_a3_2 = -3U;
    var_a2_2 = sp0 >> 1;
    if (arg0->unk30D0 != (&sub_0d960000 - 0x2370)) {
        var_a2_2 = (var_a2_2 & 1) * 2;
        temp_a0_3 = (arg0->unk7D58 & ~2) | var_a2_2;
        arg0->unk7D58 = temp_a0_3;
        if (arg0->unk7D5C != temp_a0_3) {
            arg0->unk7DB8->unk2018 = temp_a0_3;
            arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
            var_a3_2 = arg0->unk7D58;
            arg0->unk7D5C = var_a3_2;
        }
        temp_s1->unk21E8 = (void *) sp8;
        temp_s2->unk21E8 = (void *) sp8;
    }
    unksp20->unk-7EE0(arg0, arg1, var_a2_2, var_a3_2);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
}

void __glCrmPickPointProcs(void *arg0, s32 arg1, s32 arg5) {
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a1;
    s32 var_a3;
    s32 var_a5;
    s32 var_a7;
    void (*var_a2)(void *, void *, f32, f32);
    void *temp_a3;

    var_a1 = arg1;
    var_a5 = arg5;
    temp_a2 = arg0->unk76E4;
    temp_a4 = temp_a2 & 8;
    if ((temp_a4 != 0) && (arg0->unk7D58 & 0x8000)) {
        arg0->unk7DC0 = (s32) (arg0->unk7DC0 | 8);
    }
    var_a3 = temp_a2 & 0x2300;
    if (temp_a2 & 0x24) {
        var_a1 = arg0->unk7DC0 | 0x20;
        arg0->unk7DC0 = var_a1;
        var_a3 = temp_a2 & 0x2300;
    }
    if (var_a3 != 0) {
        var_a5 = arg0->unk7DC0 | 0x40;
        arg0->unk7DC0 = var_a5;
    }
    temp_a3 = arg0 + 0x10000;
    arg0->unk80DC = 1;
    if (arg0->unk6DB0 & ~0x20) {
        var_a5 = (s32) __glPoint;
        arg0->unk2EB0 = (s32) __glPoint;
    } else {
        if (arg0->unk1D0 != 1) {
            goto block_22;
        }
        var_a5 = arg0->unk807C & 2;
        if ((var_a5 != 0) && (arg0->unk77BC == 0) && !(temp_a2 & 0x200C)) {
            arg0->unk2EB0 = (s32) __glCrmVertexPointFast;
        } else {
block_22:
            arg0->unk2EB0 = (s32) __glPointFast;
        }
    }
    temp_a7 = arg0->unkC84;
    if (temp_a7 != 0x1C00) {
        __glGenericPickPointProcs(var_a1, temp_a2, temp_a3, temp_a4, var_a5, 1, temp_a7);
    } else {
        if (arg0->unk7D0B != 0) {
            __glGenericPickPointProcs(var_a1, temp_a2, temp_a3, temp_a4, var_a5, 1, temp_a7);
            return;
        }
        temp_a5 = arg0->unk700;
        if (temp_a5 & 0x400) {
            var_a2 = &sub_0d960000 - 0x2AA0;
        } else {
            arg0->unk7D64 = 0;
            if (temp_a4 != 0) {
                var_a2 = &sub_0d960000 - 0x35A0;
            } else {
                temp_a4_2 = temp_a2 & 4;
                if (arg0->unk807C & 2) {
                    var_a7 = temp_a5 & 0x20;
                    if (temp_a4_2 != 0) {
                        goto block_33;
                    }
                    if ((var_a7 == 0) && (arg0->unk1D0 == 1)) {
                        var_a2 = &sub_0d960000 - 0x3AC0;
                    } else {
                        goto block_34;
                    }
                } else {
                    var_a7 = temp_a5 & 0x20;
block_33:
block_34:
                    temp_t8 = (arg0->unkC95 == 0) ? 1 : 0;
                    temp_t3 = (temp_a4_2 == 0) ? temp_t8 : (temp_t8 + 2);
                    temp_t2 = (var_a7 == 0) ? temp_t3 : (temp_t3 + 4);
                    var_a2 = *(&sub_0da40000 + 0x63D8 + ((((arg0->unk1D0 ^ 1) == 0) ? temp_t2 : (temp_t2 + 8)) * 4));
                }
            }
        }
        arg0->unk30D0 = var_a2;
        if (arg0->unk812D != 0) {
            arg0->unk8120 = var_a2;
            var_a2 = &sub_0d960000 - 0x21D0;
            arg0->unk30D0 = var_a2;
        }
        if (arg0->unk77BC != 0) {
            arg0->unk810C = var_a2;
            var_a2 = &sub_0d960000 - 0x2370;
            arg0->unk30D0 = var_a2;
        }
        if (arg0->unk704 & 0x200) {
            arg0->unk30D8 = __glCrmPolygonOffsetPoint;
            return;
        }
        arg0->unk30D8 = var_a2;
    }
}
