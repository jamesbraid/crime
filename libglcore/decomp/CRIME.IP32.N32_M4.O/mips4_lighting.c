void __glClampAndScaleColor(void *arg0) {
    M2C_ERROR(/* unknown instruction: movt.s $f5, $f2, $fcc0 */);
    M2C_ERROR(/* unknown instruction: movt.s $f8, $f2, $fcc2 */);
    M2C_ERROR(/* unknown instruction: movt.s $f11, $f2, $fcc4 */);
    M2C_ERROR(/* unknown instruction: movt.s $f12, $f2, $fcc6 */);
    arg0->unkC0 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f5, $f1, $fcc1 */);
    arg0->unkC4 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f8, $f4, $fcc3 */);
    arg0->unkC8 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f11, $f4, $fcc5 */);
    arg0->unkCC = (f32) M2C_ERROR(/* unknown instruction: movt.s $f12, $f4, $fcc7 */);
}

void __glFastCalcRGBColor(f32 *arg0, void *arg1, s32 *arg2) {
    f32 temp_f9;
    void *temp_a3;
    void *var_a1;
    void *var_a2;
    void *var_v0;
    s32 phi_v1;

    var_v0 = arg0->unk6E14;
    if (arg1 == NULL) {
        var_a1 = arg2 + 0x90;
        var_a2 = arg0 + 0x6DC4;
        phi_v1 = 0;
    } else {
        var_a1 = arg2 + 0xA0;
        var_a2 = arg0 + 0x6DEC;
        phi_v1 = 0x30;
    }
    if (var_v0 != NULL) {
loop_3:
        temp_a3 = var_v0 + phi_v1;
        M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f14 */);
        M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f14 */);
        temp_f9 = temp_a3->unk8;
        var_v0 = var_v0->unkC8;
        if (!(M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f8, $f15 */) <= 0.0f) && (M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f0, $f3 */), M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f4, $f3 */), var_a1->unkC = (s32) var_a2->unk24, M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f5, $f3 */), !((M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f7, $f15 */) - var_a2->unk18) < 0.0f))) {
            if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f12, $f1, $f19 */) < 0x100) {
                M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f6, $f7 */);
                M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f8, $f7 */);
                M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f9, $f7 */);
                if (var_v0 != NULL) {
                    goto loop_3;
                }
            } else {
                goto block_10;
            }
        } else {
block_10:
            if (var_v0 == NULL) {
                goto block_11;
            }
            goto loop_3;
        }
    } else {
block_11:
        var_a1->unkC = (s32) var_a2->unk24;
    }
    M2C_ERROR(/* unknown instruction: movt.s $f16, $f11, $fcc0 */);
    M2C_ERROR(/* unknown instruction: movt.s $f17, $f11, $fcc2 */);
    var_a1->unk0 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f16, $f10, $fcc1 */);
    M2C_ERROR(/* unknown instruction: movt.s $f18, $f11, $fcc4 */);
    var_a1->unk4 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f17, $f12, $fcc3 */);
    var_a1->unk8 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f18, $f19, $fcc5 */);
}

void vvec(void *arg0, void *arg1, void *arg2) {
    f32 temp_f16;
    f32 temp_f5;
    s32 temp_t8;

    temp_t8 = arg2->unkC * 2;
    temp_f5 = arg2->unk0;
    if ((arg1->unkC * 2) != 0) {
        if (temp_t8 != 0) {
            arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f8, $f8, $f11, $f9 */);
            arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f10, $f10, $f13, $f9 */);
            arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f12, $f12, $f14, $f9 */);
            return;
        }
        arg0->unk0 = temp_f5;
        arg0->unk4 = (f32) arg2->unk4;
        arg0->unk8 = (f32) arg2->unk8;
        return;
    }
    temp_f16 = arg1->unk0;
    if (temp_t8 != 0) {
        arg0->unk0 = (f32) -temp_f16;
        arg0->unk4 = (f32) -arg1->unk4;
        arg0->unk8 = (f32) -arg1->unk8;
        return;
    }
    arg0->unk0 = (f32) (temp_f5 - temp_f16);
    arg0->unk4 = (f32) (arg2->unk4 - arg1->unk4);
    arg0->unk8 = (f32) (arg2->unk8 - arg1->unk8);
}

void __glCalcRGBColor(void *arg0, s32 arg1, void *arg2, f32 *arg3, f32 fparg1) {
    f32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp60;
    f32 sp50;
    f32 sp40;
    f32 sp30;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp10;
    f32 *var_a3;
    f32 temp_f16;
    f32 temp_f3;
    f32 var_f10;
    f32 var_f11;
    f32 var_f11_2;
    f32 var_f12;
    f32 var_f13;
    f32 var_f19;
    s32 temp_f7;
    void *temp_a2;
    void *var_t2;

    var_a3 = arg3;
    var_f13 = fparg1;
    sp10 = 1.0f;
    var_f10 = arg2->unk20;
    var_f11 = arg2->unk24;
    var_f12 = arg2->unk28;
    if (arg1 != 0) {
        var_f10 = -var_f10;
        var_f11 = -var_f11;
        var_f12 = -var_f12;
    }
    sp20 = var_f10;
    sp24 = var_f11;
    sp28 = var_f12;
    var_t2 = arg0->unk6E14;
    if (var_t2 != NULL) {
loop_4:
        if ((var_t2->unkDC | M2C_ERROR(/* Read from unset register $a6 */)) != 0) {
            __glFastCalcRGBColor(&sp40, arg2 + 0x60, var_t2 + 0x74, var_a3, var_f12, var_f13);
            arg0->unk2E80(&sp50, &sp40);
            if (arg0->unk584 != 0) {
                sp80 = 0;
                sp84 = 0;
                sp88 = 0;
                sp8C = sp10;
                __glFastCalcRGBColor(&sp60, arg2 + 0x60, &sp80);
                arg0->unk2E80(&sp60, &sp60);
                sp70 = sp50 + sp60;
                sp74 = sp54 + sp64;
                sp78 = sp58 + sp68;
            } else {
                sp70 = sp50;
                sp74 = sp54;
                sp78 = sp58 + sp10;
            }
            arg0->unk2E80(&sp30, &sp70);
            var_f19 = sp10;
            if (var_t2->unk80 != 0) {
                var_f19 = var_t2->unk98;
                if ((var_t2->unk68 | var_t2->unk6C) != 0) {
                    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f3, $f3 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f5, $f5 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f19, $f9, $f7, $f6 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f8, $f10 */);
                    var_f19 = M2C_ERROR(/* unknown instruction: recip.s $f19, $f19 */);
                }
            }
            var_f11_2 = var_f19;
            var_f12 = sp50;
            var_f13 = var_t2->unk84;
            if (var_t2->unk9C != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f14, $f15 */);
                var_f11_2 = 0.0f;
                temp_f16 = M2C_ERROR(/* unknown instruction: nmadd.s $f16, $f16, $f17, $f18 */);
                temp_f3 = var_t2->unk94;
                if (!(temp_f16 < temp_f3) && !(temp_f16 < temp_f3)) {
                    temp_f7 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f6, $f16, $f5 */);
                    if (temp_f7 < 0x100) {
                        var_f11_2 = *(var_t2->unkCC + (temp_f7 * 4)) * var_f19;
                    }
                }
            }
            temp_a2 = var_t2->unkC8;
            var_a3 = &sp30;
            if ((bitwise s32) var_f11_2 == 0) {
                var_t2 = temp_a2;
                if (temp_a2 == NULL) {

                } else {
                    goto loop_4;
                }
            } else {
                goto block_20;
            }
        } else {
            var_a3 = var_t2 + 0xA0;
block_20:
            var_f12 = sp24;
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f12, $f14 */);
            M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f12, $f16 */);
            var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f17, $f18 */) - M2C_ERROR(/* Read from unset register $a5 */)->unk18;
            if (!(M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f17, $f19 */) <= 0.0f)) {
                if (!(var_f13 <= 0.0f)) {
                    var_f12 = sp10;
                    if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f9, $f13, $f8 */) < 0x100) {

                    }
                    var_f13 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f12, $v1 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f13, $f14 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f13, $f16 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f13, $f17 */);
                }
                M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f15, $f18 */);
                M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f15, $f19 */);
                M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f15, $f1 */);
            }
            var_t2 = var_t2->unkC8;
            M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f11, $f3 */);
            M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f11, $f5 */);
            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f11, $f7 */);
            if (var_t2 != NULL) {
                goto loop_4;
            }
        }
    }
    M2C_ERROR(/* Read from unset register $a4 */)->unkC = (s32) M2C_ERROR(/* Read from unset register $a5 */)->unk24;
    M2C_ERROR(/* unknown instruction: movt.s $f0, $f7, $fcc0 */);
    M2C_ERROR(/* unknown instruction: movt.s $f2, $f7, $fcc2 */);
    *M2C_ERROR(/* Read from unset register $a4 */) = M2C_ERROR(/* unknown instruction: movt.s $f0, $f3, $fcc1 */);
    M2C_ERROR(/* Read from unset register $a4 */)->unk4 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f2, $f5, $fcc3 */);
    M2C_ERROR(/* unknown instruction: movt.s $f4, $f7, $fcc4 */);
    M2C_ERROR(/* Read from unset register $a4 */)->unk8 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f4, $f6, $fcc5 */);
}
