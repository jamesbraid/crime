void __glRenderFlatTriangle(void *arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    s32 *sp38;
    s32 *sp30;
    s32 *sp28;
    void *sp20;
    void *sp18;
    s32 sp10;
    ? (*var_t9)(void *, s32 *, s32 *, s32 *, s32);
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f9;
    f32 var_f0;
    f32 var_f1;
    f32 var_f2;
    s32 *temp_t0;
    s32 *temp_t1;
    s32 *temp_v1;
    s32 *var_a1;
    s32 *var_a2;
    s32 *var_a3;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_cond;
    s32 var_a2_2;
    s32 var_v0;
    u8 temp_a5;
    u8 temp_a5_2;
    void *temp_a1;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_f0 = var_a1->unk84;
    var_f1 = var_a2->unk84;
    var_f2 = var_a3->unk84;
    var_v0 = 0;
    if (var_f0 < var_f1) {
        if (!(var_f1 < var_f2)) {
            temp_v1 = var_a2;
            if (var_f0 < var_f2) {
                temp_f3 = var_f1;
                var_a2 = var_a3;
                var_f1 = var_f2;
                var_a3 = temp_v1;
                var_f2 = temp_f3;
                goto block_10;
            }
            temp_t0 = var_a1;
            temp_f4 = var_f0;
            var_a1 = var_a3;
            var_f0 = var_f2;
            var_a3 = var_a2;
            var_f2 = var_f1;
            var_a2 = temp_t0;
            var_f1 = temp_f4;
        }
    } else {
        temp_f5 = var_f0;
        temp_t1 = var_a1;
        if (var_f1 < var_f2) {
            temp_cond = var_f0 < var_f2;
            var_f0 = var_f1;
            var_a1 = var_a2;
            if (temp_cond) {
                var_f1 = temp_f5;
                var_a2 = temp_t1;
                goto block_10;
            }
            var_f1 = var_f2;
            var_a2 = var_a3;
            var_f2 = temp_f5;
            var_a3 = temp_t1;
        } else {
            var_a1 = var_a3;
            var_f0 = var_f2;
            var_a3 = temp_t1;
            var_f2 = temp_f5;
block_10:
            var_v0 = 1;
        }
    }
    temp_f6 = var_a3->unk80;
    temp_f7 = var_f0 - var_f2;
    temp_f9 = var_f1 - var_f2;
    temp_f11 = var_a2->unk80 - temp_f6;
    temp_f12 = var_a1->unk80 - temp_f6;
    sp20 = var_a0;
    sp28 = var_a1;
    var_a0->unk75EC = temp_f7;
    temp_f13 = temp_f11 * temp_f7;
    var_a0->unk75F0 = temp_f9;
    temp_f14 = temp_f12 * temp_f9;
    var_a0->unk75E8 = temp_f11;
    var_a0->unk75E4 = temp_f12;
    sp30 = var_a2;
    temp_f15 = M2C_ERROR(/* unknown instruction: msub.s $f15, $f13, $f12, $f9 */);
    sp38 = var_a3;
    if (temp_f14 != temp_f13) {
        var_a0->unk75E0 = temp_f15;
        temp_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $zero, $fcc0 */);
        temp_a5 = (var_a0 + (temp_a4 ^ var_v0))->unk7734;
        sp10 = temp_a4;
        if (temp_a5 != var_a0->unk7739) {
            temp_a5_2 = !(var_a0->unk76E4 & 0x400) ? 0U : temp_a5;
            temp_a6 = (var_a0 + (temp_a5_2 * 4))->unk6DB0;
            temp_a1 = var_a0->unk6DA8;
            temp_a5_3 = temp_a1 + ((temp_a5_2 * 0x10) + 0x90);
            sp18 = temp_a1;
            temp_a2 = temp_a6 & 0x1B;
            temp_a7 = ~temp_a1->unk0 & temp_a2;
            temp_a1->unk8 = temp_a5_3;
            if (temp_a7 != 0) {
                temp_a1->unkC(temp_a1, temp_a2, var_a3, temp_a4, temp_a5_3, temp_a6, temp_a7, temp_f12, temp_f13, temp_f14, temp_f15);
                var_a0 = sp20;
            }
            var_a2_2 = var_a0->unk6DAC;
            if (~sp28->unk0 & var_a2_2) {
                sp28->unkC(var_a0, sp28, var_a2_2);
                var_a0 = sp20;
                var_a2_2 = var_a0->unk6DAC;
            }
            if (~sp30->unk0 & var_a2_2) {
                sp30->unkC(var_a0, sp30, var_a2_2, sp38);
                var_a0 = sp20;
                var_a2_2 = var_a0->unk6DAC;
            }
            var_t9 = var_a0->unk2F30;
            if (~sp38->unk0 & var_a2_2) {
                sp38->unkC(var_a0, sp38, var_a2_2, sp38);
                var_a0 = sp20;
                var_t9 = var_a0->unk2F30;
            }
            var_t9(var_a0, sp28, sp30, sp38, sp10);
            sp18->unk8 = (void *) (sp18 + 0x90);
        }
    }
}

/*
Decompilation failure in function __glRenderFlatOneFaceTriangle:

Unable to determine jump table for jr instruction at mips4_poly.s line 570.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glRenderSmoothTriangle(void *arg0, void *arg1, void *arg2, void *arg3, void *arg5, f32 fparg3, f32 fparg4, f32 fparg5) {
    void *sp38;
    void *sp30;
    void *sp28;
    void *sp20;
    s32 sp18;
    s32 sp10;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f1;
    f32 temp_f3;
    f32 temp_f4;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    s32 temp_a4_2;
    s32 temp_a7;
    s32 temp_cond;
    s32 temp_v0;
    s32 temp_v1_3;
    s32 var_t2;
    u8 temp_a6;
    u8 temp_v1;
    u8 temp_v1_2;
    void *temp_a4;
    void *temp_t3;
    void *var_a0;
    void *var_a1;
    void *var_a2;
    void *var_a3;
    void *var_a5;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f12 = var_a1->unk84;
    var_f13 = var_a2->unk84;
    var_f14 = var_a3->unk84;
    var_t2 = 0;
    if (var_f12 < var_f13) {
        if (!(var_f13 < var_f14)) {
            temp_t3 = var_a2;
            if (var_f12 < var_f14) {
                var_f15 = var_f13;
                var_a2 = var_a3;
                var_f13 = var_f14;
                var_a3 = temp_t3;
                var_f14 = var_f15;
                goto block_10;
            }
            temp_a4 = var_a1;
            var_f16 = var_f12;
            var_a1 = var_a3;
            var_f12 = var_f14;
            var_a3 = var_a2;
            var_f14 = var_f13;
            var_a2 = temp_a4;
            var_f13 = var_f16;
        }
    } else {
        var_f17 = var_f12;
        var_a5 = var_a1;
        if (var_f13 < var_f14) {
            temp_cond = var_f12 < var_f14;
            var_f12 = var_f13;
            var_a1 = var_a2;
            if (temp_cond) {
                var_f13 = var_f17;
                var_a2 = var_a5;
                goto block_10;
            }
            var_f13 = var_f14;
            var_a2 = var_a3;
            var_f14 = var_f17;
            var_a3 = var_a5;
        } else {
            var_a1 = var_a3;
            var_f12 = var_f14;
            var_a3 = var_a5;
            var_f14 = var_f17;
block_10:
            var_t2 = 1;
        }
    }
    temp_f18 = var_a3->unk80;
    temp_f19 = var_f12 - var_f14;
    temp_f1 = var_f13 - var_f14;
    temp_f3 = var_a2->unk80 - temp_f18;
    temp_f4 = var_a1->unk80 - temp_f18;
    sp20 = var_a0;
    sp28 = var_a1;
    var_a0->unk75EC = temp_f19;
    var_a0->unk75F0 = temp_f1;
    var_a0->unk75E8 = temp_f3;
    var_a0->unk75E4 = temp_f4;
    sp30 = var_a2;
    sp38 = var_a3;
    temp_a6 = var_a0->unk7739;
    if ((temp_f4 * temp_f1) != (temp_f3 * temp_f19)) {
        var_a0->unk75E0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f7, $f5, $f4, $f1 */);
        temp_v0 = M2C_ERROR(/* unknown instruction: movt $v0, $zero, $fcc0 */);
        temp_v1 = (var_a0 + (temp_v0 ^ var_t2))->unk7734;
        sp10 = temp_v0;
        if (temp_v1 != temp_a6) {
            temp_v1_2 = !(var_a0->unk76E4 & 0x400) ? 0U : temp_v1;
            temp_v1_3 = temp_v1_2 * 0x10;
            temp_a7 = var_a0->unk6DAC | (var_a0 + (temp_v1_2 * 4))->unk6DB0;
            sp18 = temp_a7;
            var_a1->unk8 = (void *) (var_a1 + temp_v1_3 + 0x90);
            var_a2->unk8 = (void *) (var_a2 + temp_v1_3 + 0x90);
            temp_a4_2 = ~var_a1->unk0 & temp_a7;
            var_a3->unk8 = (void *) (var_a3 + temp_v1_3 + 0x90);
            if (temp_a4_2 != 0) {
                var_a1->unkC(var_a1, temp_a7, var_a3, temp_a4_2, var_a5, temp_a6, temp_a7, var_f12, var_f13, var_f14, var_f15, var_f16, var_f17, temp_f18, temp_f19);
                var_a0 = sp20;
            }
            if (~sp30->unk0 & sp18) {
                sp30->unkC(var_a0, sp30, sp18);
                var_a0 = sp20;
            }
            if (~sp38->unk0 & sp18) {
                sp38->unkC(var_a0, sp38, sp18);
                var_a0 = sp20;
            }
            var_a0->unk2F30(var_a0, sp28, sp30, sp38, sp10);
            sp28->unk8 = (void *) (sp28 + 0x90);
            sp30->unk8 = (void *) (sp30 + 0x90);
            sp38->unk8 = (void *) (sp38 + 0x90);
        }
    }
}

/*
Decompilation failure in function __glRenderSmoothOneFaceTriangle:

Unable to determine jump table for jr instruction at mips4_poly.s line 1212.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glRenderSmoothOneFaceTmesh:

Unable to determine jump table for jr instruction at mips4_poly.s line 1437.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/
