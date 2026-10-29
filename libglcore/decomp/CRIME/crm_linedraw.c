Error occurred while processing instruction: c.le.d $f13, $f2

Error occurred while processing instruction: c.lt.d $f15, $f13

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t9, .L0d94dc70

Error occurred while processing instruction: c.lt.d $f6, $f23

Error occurred while processing instruction: c.le.d $f13, $f2

Error occurred while processing instruction: c.lt.d $f15, $f13

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t9, .L0d94dc70

Error occurred while processing instruction: c.lt.d $f6, $f23

Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f23
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f23
? __glCrmSmoothCILine(void *, void *, void *);      /* extern */
s32 __glFloor(f32, ?, f32, f32, f32, s32, s32, ?, ?, f32, f32, ?, f32, f64, f32); /* extern */

void __glCrmFlatColorLine(void *arg0, void *arg1, void *arg2) {
    s32 sp2C;
    s32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    s32 sp0;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f9;
    s32 temp_a6;
    s32 temp_f4_3;
    void *temp_a1;
    void *temp_a5;

    sp0 = arg0->unk7D74;
    temp_a6 = (sp0 & 0xFFFF0000) | ((arg0->unk1DC << 5) & 0xFFFF);
    temp_a5 = arg0->unk7DB8;
    if (arg0->unk7D60 != temp_a6) {
        sp0 = temp_a6;
        temp_a5->unk2060 = temp_a6;
        arg0->unk7DBC->unk2060 = sp0;
        arg0->unk7D60 = sp0;
    }
    sp8 = arg1->unk80;
    spC = arg1->unk84;
    temp_a5->unk2080 = (bitwise f64) sp8;
    sp10 = arg2->unk80;
    sp14 = arg2->unk84;
    temp_a5->unk2088 = (bitwise f64) sp10;
    if (arg0->unk700 & 0x100) {
        if (arg0->unk7498 == 0) {
            temp_a5->unk20C4 = (s32) arg0->unk7D6C;
            arg0->unk7DBC->unk20C4 = (s32) arg0->unk7D6C;
            temp_a5->unk20C0 = (s32) arg0->unk7D70;
            arg0->unk7498 = 1U;
        }
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f13
        // At instruction: c.le.d $f13, $f2
        if (M2C_ERROR()) {

        }
        if (M2C_ERROR(/* Read from unset register $condition_bit */)) {

        }
        if (M2C_ERROR(/* Read from unset register $f5 */) < M2C_ERROR(/* Read from unset register $f4 */)) {
            var_f5 = -127.0f;
            if ((f64) (second half of f64) > 127.0) {
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f13
                // At instruction: c.lt.d $f15, $f13
loop_18:
                temp_f6 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f8, $f10, $f5 */);
                temp_a5->unk2084 = sp1C;
                temp_f4 = var_f5 + var_f9;
                sp20 = temp_f4;
                temp_a5->unk2080 = sp18;
                sp24 = temp_f6;
                temp_a5->unk2088 = sp20;
                temp_a5->unk288C = sp24;
                if (arg0 != NULL) {
                    if (!(temp_f4 <= (second half of f64))) {
                        var_f5_2 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f9, $fcc0 */);
                        goto block_21;
                    }
                } else if (!((second half of f64) <= temp_f4)) {
                    var_f5_2 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f12, $fcc4 */);
block_21:
                    sp18 = temp_f4;
                    sp1C = temp_f6;
                    temp_f6_2 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f10, $f5 */);
                    temp_a5->unk2084 = sp1C;
                    temp_f4_2 = var_f5_2 + temp_f4;
                    sp20 = temp_f4_2;
                    temp_a5->unk2080 = sp18;
                    sp24 = temp_f6_2;
                    temp_a5->unk2088 = sp20;
                    var_f9 = temp_f4_2;
                    temp_a5->unk288C = sp24;
                    if (arg0 == NULL) {
                        if (!((second half of f64) <= temp_f4_2)) {
                            var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f11, $fcc2 */);
                            goto block_17;
                        }
                    } else if (!(temp_f4_2 <= (second half of f64))) {
                        var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f8, $fcc6 */);
block_17:
                        sp1C = temp_f6_2;
                        sp18 = temp_f4_2;
                        goto loop_18;
                    }
                }
                return;
            }
        }
        goto block_11;
    }
block_11:
    temp_a1 = arg2->unk8;
    temp_f4_3 = (s32) temp_a1->unk0;
    if (arg0->unkC94 != 0) {
        sp28 = (s32) temp_a1->unkC | (temp_f4_3 << 0x18) | (((s32) temp_a1->unk4 << 0x10) | ((s32) temp_a1->unk8 << 8));
        temp_a5->unk28D0 = sp28;
    } else {
        sp2C = temp_f4_3;
        temp_a5->unk28D0 = sp2C;
    }
    arg0->unk8080 = 0;
}

void __glCrmFogCILine(void *arg0, void *arg1, void *arg2) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    ? sp18;
    ? sp8;
    s32 sp0;
    ? *temp_a2;
    ? *temp_at;
    s32 temp_a0;
    s32 temp_a0_2;

    temp_at = arg1->unk8;
    sp28 = (s64) temp_at;
    sp0 = arg0->unk7D58;
    arg1->unk8 = &sp8;
    arg0->unk30F4(arg0, &sp8, temp_at, arg1->unkB0);
    temp_a2 = arg2->unk8;
    arg2->unk8 = &sp18;
    sp30 = (s64) temp_a2;
    arg0->unk30F4(arg0, &sp18, temp_a2);
    sp38 = sp0 << 0xF;
    if (!(sp0 & 0x10000)) {
        temp_a0 = arg0->unk7D58 | 0x10000;
        arg0->unk7D58 = temp_a0;
        if (arg0->unk7D5C != temp_a0) {
            arg0->unk7DB8->unk2018 = temp_a0;
            arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
            arg0->unk7D5C = (s32) arg0->unk7D58;
        }
    }
    __glCrmSmoothCILine(arg0, arg1, arg2);
    if (sp38 >= 0) {
        temp_a0_2 = arg0->unk7D58 & ~0x10000;
        arg0->unk7D58 = temp_a0_2;
        if (arg0->unk7D5C != temp_a0_2) {
            arg0->unk7DB8->unk2018 = temp_a0_2;
            arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
            arg0->unk7D5C = (s32) arg0->unk7D58;
            arg1->unk8 = (? *) sp28;
            arg2->unk8 = (? *) sp30;
            return;
        }
    }
    arg1->unk8 = (? *) sp28;
    arg2->unk8 = (? *) sp30;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x2b0, 0x2b4, 0x2b8, 0x2bc, 0x2c0, 0x2c4, 0x2c8, 0x2cc, 0x2d8, 0x2dc, 0x2f0, 0x2f4, 0x308, 0x30c, 0x318, 0x31c], gap at: 0x2e0. */
f32 __glCrmTexturedLine(void *arg0, void *arg1, void *arg2, s32 arg3, f32 fparg2, f32 fparg3, f32 fparg5, f64 fparg6, f32 fparg7) {
    s64 sp2A8;
    f64 sp298;
    f64 sp290;
    f64 sp288;
    f64 sp280;
    f64 sp278;
    f64 sp270;
    f64 sp268;
    s32 sp260;
    s64 sp258;
    s64 sp250;
    s32 sp24C;
    f32 sp248;
    s64 sp240;
    f64 sp238;
    s64 sp230;
    f64 sp228;
    s32 sp220;
    s64 sp218;
    s64 sp210;
    s32 sp20C;
    f32 sp208;
    s64 sp200;
    f64 sp1F8;
    s64 sp1F0;
    f64 sp1E8;
    s32 sp1E4;
    f32 sp1E0;
    s64 sp1D8;
    f64 sp1D0;
    s64 sp1C8;
    f64 sp1C0;
    s32 sp1BC;
    s32 sp1B8;
    s32 sp1B4;
    s32 sp1B0;
    s32 sp1A8;
    s64 sp1A0;
    f64 sp198;
    f32 sp178;
    s64 sp170;
    f64 sp168;
    s64 sp160;
    f64 sp158;
    s32 sp154;
    f32 sp150;
    s64 sp148;
    f64 sp140;
    s64 sp138;
    f64 sp130;
    s32 sp128;
    f32 sp124;                                      /* compiler-managed */
    f32 sp120;
    s32 sp11C;
    s32 sp118;
    s32 sp108;
    s32 sp104;
    s32 sp100;
    s32 spFC;
    s32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    s64 spE0;
    s64 spD8;
    s32 spD4;
    s32 spD0;
    s32 spCC;
    s32 spC8;
    s64 spC0;
    s64 spB8;
    s32 spB4;
    s32 spB0;
    s32 spAC;
    s32 spA8;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    s32 sp90;
    f32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    s32 sp7C;
    f32 sp78;
    s64 sp70;
    f64 sp68;
    f32 sp60;
    s64 sp58;
    f64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    f64 sp30;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    s32 sp0;
    ? var_f13;
    f32 temp_f10_3;
    f32 temp_f11;
    f32 temp_f11_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f13;
    f32 temp_f17;
    f32 temp_f19;
    f32 temp_f20;
    f32 temp_f21;
    f32 temp_f22;
    f32 temp_f23;
    f32 temp_f24;
    f32 temp_f25;
    f32 temp_f27;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_4;
    f32 temp_f6;
    f32 temp_f6_3;
    f32 var_f0;
    f32 var_f14;
    f32 var_f14_2;
    f32 var_f15;
    f32 var_f15_2;
    f32 var_f17;
    f32 var_f19;
    f32 var_f22;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f6_3;
    f32 var_f7;
    f32 var_f9;
    f64 temp_f10;
    f64 temp_f13_2;
    f64 temp_f15;
    f64 temp_f17_2;
    f64 temp_f21_2;
    f64 temp_f3;
    f64 temp_f6_2;
    f64 var_f18;
    f64 var_f26;
    f64 var_f28;
    f64 var_f8;
    s32 temp_a0;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_f10_2;
    s32 temp_f4_2;
    s32 temp_f4_3;
    s32 temp_f5_3;
    s32 temp_f7;
    s32 temp_s1;
    s32 temp_s3;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_f16;
    s32 var_s4;
    s32 var_s6;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s64 temp_f0;
    s64 temp_t3;
    s64 var_a1;
    u32 var_f30;
    void *temp_at;
    void *temp_ra;
    void *temp_s0;
    void *temp_s6;
    void *temp_t2;
    void *temp_v0;
    void *var_a0;
    void *var_a7;

    var_a3 = arg3;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    var_a4 = arg0->unk76E4;
    temp_s6 = arg0->unk6E30;
    temp_s0 = arg0->unk7DB8;
    temp_a7 = arg0->unk1DC;
    temp_a6 = arg0->unk7D74;
    sp0 = temp_a6;
    var_a5 = arg0->unk700 & 0x200;
    temp_a6_2 = 0xFFFF0000 & temp_a6;
    temp_a6_3 = (var_a5 == 0) ? (temp_a6_2 | ((temp_a7 << 5) & 0xFFFF)) : (temp_a6_2 | ((temp_a7 << 6) & 0xFFFF));
    var_a7 = arg0->unk7DBC;
    if (arg0->unk7D60 != temp_a6_3) {
        sp0 = temp_a6_3;
        temp_s0->unk2060 = temp_a6_3;
        arg0->unk7DBC->unk2060 = sp0;
        arg0->unk7D60 = sp0;
    }
    sp8 = arg1->unk80;
    spC = arg1->unk84;
    temp_s0->unk2080 = (bitwise f64) sp8;
    sp10 = arg2->unk80;
    sp14 = arg2->unk84;
    temp_s0->unk2088 = (bitwise f64) sp10;
    if (arg0->unk700 & 0x100) {
        if (arg0->unk7498 == 0) {
            temp_s0->unk20C4 = (s32) arg0->unk7D6C;
            var_a7->unk20C4 = (s32) arg0->unk7D6C;
            temp_s0->unk20C0 = (s32) arg0->unk7D70;
            arg0->unk7498 = 1U;
        }
    }
    temp_f24 = arg2->unk80;
    temp_f22 = arg1->unk80;
    temp_f4 = temp_f24 - temp_f22;
    temp_f6 = arg2->unk84;
    var_f30 = 0;
    sp24 = temp_f6;
    temp_f20 = arg1->unk84;
    sp20 = temp_f24;
    sp1C = temp_f20;
    sp18 = temp_f22;
    if (GLUE_F64(saved_reg_f31, 0U) <= (f64) temp_f4) {
        var_f9 = temp_f4;
    } else {
        var_f9 = -temp_f4;
    }
    temp_f5 = temp_f6 - temp_f20;
    var_f6 = temp_f5;
    if (GLUE_F64(saved_reg_f31, 0U) <= (f64) temp_f5) {

    } else {
        var_f6 = -temp_f5;
    }
    var_f8 = 1.0;
    temp_s1 = var_a4 & 4;
    if (var_f6 <= var_f9) {
        temp_f10 = (f64) temp_f4;
        sp280 = (bitwise f64) temp_f4;
        sp278 = second half of f64;
        sp288 = (f64) temp_f5;
        if (temp_f10 == GLUE_F64(saved_reg_f31, 0U)) {
            var_f6_2 = 1.0f;
        } else {
            var_f6_2 = (f32) (1.0 / temp_f10);
        }
        var_s4 = 1;
        sp298 = (bitwise f64) (temp_f22 - (f32) (s32) temp_f22);
        if (temp_s1 != 0) {
            temp_f27 = var_f6_2 * (arg2->unk88 - arg1->unk88);
            sp30 = (f64) (64.0f * temp_f27);
            sp28 = temp_f27;
            sp38 = (s64) sp30;
            var_f8 = second half of f64;
            sp40 = 0;
            temp_s0->unk21D8 = sp40;
            var_s4 = 1;
            temp_s0->unk21D0 = sp38;
            goto block_18;
        }
    } else {
        sp288 = (f64) temp_f5;
        sp278 = second half of f64;
        sp280 = (bitwise f64) temp_f4;
        var_s4 = 0;
        sp298 = (bitwise f64) (temp_f20 - (f32) (s32) temp_f20);
        var_f6_2 = (f32) (1.0 / (f64) temp_f5);
        if (temp_s1 != 0) {
            sp48 = 0;
            sp50 = (f64) (second half of f64);
            temp_s0->unk21D0 = (s64) (second half of f64);
            sp28 = var_f6_2 * (arg2->unk88 - arg1->unk88);
            var_f8 = second half of f64;
            sp58 = (s64) sp50;
            var_f6_2 = second half of f64;
            var_s4 = 0;
            temp_s0->unk21D8 = sp58;
block_18:
            sp68 = (f64) (64.0f * M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f27 */));
            sp60 = second half of f64;
            sp70 = (s64) sp68;
            var_f30 = second half of f64;
            temp_s0->unk21C8 = sp70;
        }
    }
    temp_s3 = var_a4 & 0x2000;
    temp_f3 = (f64) var_f6_2;
    sp290 = temp_f3;
    if (temp_s3 != 0) {
        var_f8 = second half of f64;
        var_f6_2 = second half of f64;
        temp_f5_2 = (f32) (temp_f3 * M2C_ERROR(/* unknown instruction: msub.d $f7, $f7, $f9, $f10 */));
        sp78 = temp_f5_2;
        temp_f4_2 = (s32) (temp_f5_2 * 4096.0f);
        if (var_s4 != 0) {
            sp7C = temp_f4_2;
            sp80 = 0;
            var_a3 = sp80;
            temp_s0->unk2188 = var_a3;
            temp_s0->unk2180 = sp7C;
        } else {
            sp84 = 0;
            temp_s0->unk2180 = sp84;
            sp88 = temp_f4_2;
            temp_s0->unk2188 = sp88;
        }
        temp_f12 = (f32) ((f64) arg1->unkB0 * 255.0);
        sp8C = temp_f12;
        sp90 = (s32) (4096.0f * temp_f12);
        var_a7 = (void *) sp90;
        temp_s0->unk2178 = var_a7;
    }
    // Error: negative shift count
    // At instruction: bgez $t9, .L0d94dc70
    if (M2C_ERROR()) {
        temp_at = arg2->unk8;
        temp_ra = arg1->unk8;
        temp_f12_2 = var_f6_2 * (temp_at->unkC - temp_ra->unkC);
        var_f15 = temp_ra->unk0;
        temp_f11 = var_f6_2 * (temp_at->unk8 - temp_ra->unk8);
        var_f14 = var_f6_2 * (temp_at->unk4 - temp_ra->unk4);
        temp_f13 = var_f6_2 * (temp_at->unk0 - var_f15);
        temp_f4_3 = (s32) (temp_f12_2 * 4096.0f);
        temp_f10_2 = (s32) (temp_f11 * 4096.0f);
        spA0 = temp_f12_2;
        temp_f7 = (s32) (var_f14 * 4096.0f);
        sp9C = temp_f11;
        temp_f5_3 = (s32) (temp_f13 * 4096.0f);
        sp98 = var_f14;
        sp94 = temp_f13;
        if (var_s4 != 0) {
            spA8 = temp_f5_3;
            spAC = temp_f7;
            temp_s0->unk20F0 = (s64) spA8;
            spB0 = temp_f10_2;
            spB4 = temp_f4_3;
            spB8 = 0;
            var_f15 = (bitwise f32) spB8;
            var_f14 = second half of f64;
            spC0 = 0;
            var_f17 = second half of f64;
            temp_s0->unk2108 = spC0;
            temp_s0->unk20F8 = (bitwise f64) var_f15;
            temp_s0->unk2100 = (bitwise s64) (second half of f64);
        } else {
            spC8 = temp_f5_3;
            spCC = temp_f7;
            temp_s0->unk20F8 = (f64) spC8;
            spD0 = temp_f10_2;
            spD4 = temp_f4_3;
            spD8 = 0;
            spE0 = 0;
            temp_s0->unk2100 = spE0;
            temp_s0->unk20F0 = spD8;
            temp_s0->unk2108 = (s64) spD0;
        }
        temp_v0 = arg1->unk8;
        temp_f25 = temp_v0->unk0;
        temp_f23 = temp_v0->unk4;
        spE8 = temp_f25;
        spEC = temp_f23;
        temp_f21 = temp_v0->unk8;
        temp_f19 = temp_v0->unkC;
        spF0 = temp_f21;
        spF4 = temp_f19;
        spF8 = (s32) (4096.0f * temp_f25);
        spFC = (s32) (4096.0f * temp_f23);
        temp_s0->unk20E0 = (f64) spF8;
        sp100 = (s32) (4096.0f * temp_f21);
        sp104 = (s32) (4096.0f * temp_f19);
        var_f18 = (bitwise f64) sp100;
        var_f19 = second half of f64;
        temp_s0->unk20E8 = var_f18;
    } else if (!(arg0->unk807C & 2)) {
        temp_t2 = arg2->unk8;
        var_a7 = (void *) (((s32) temp_t2->unk4 << 0x10) | ((s32) temp_t2->unk8 << 8));
        var_a4 = (s32) temp_t2->unkC | ((s32) temp_t2->unk0 << 0x18) | (s32) var_a7;
        sp108 = var_a4;
        var_a3 = sp108;
        temp_s0->unk20D0 = var_a3;
        arg0->unk8080 = 0;
    }
    if (var_a5 != 0) {
        temp_a0 = (bitwise s32) sp18 & 0x7FFFF;
        temp_a5 = (bitwise s32) sp1C & 0x7FFFF;
        if (var_s4 != 0) {
            if ((f32) sp278 == 0.0f) {
                var_a4 = 0;
            } else {
                var_a4 = (s32) ((f32) sp288 * var_f6_2 * 16384.0f);
            }
            var_f30 = second half of f64;
            var_t2 = M2C_ERROR(/* unknown instruction: movf $t2, $zero, $fcc5 */);
            var_t1 = ((s32) ((((var_t2 == 0) ? (-0x40 & (temp_a0 + 0x1F)) : (-0x40 & (temp_a0 + 0x20))) - temp_a0) * var_a4) >> 6) + (temp_a5 << 8);
            if (var_s4 != 0) {
                goto block_33;
            }
            var_f18 = sp288;
            var_f19 = second half of f64;
            var_t2_2 = M2C_ERROR(/* unknown instruction: movf $t2, $zero, $fcc0 */);
            goto block_93;
        }
        var_f8 = second half of f64;
        var_t2_2 = M2C_ERROR(/* unknown instruction: movf $t2, $zero, $fcc3 */);
        var_a4 = (s32) ((bitwise f32) sp280 * var_f6_2 * 16384.0f);
        var_t1 = ((s32) (var_a4 * (((var_t2_2 == 0) ? (-0x40 & (temp_a5 + 0x1F)) : (-0x40 & (temp_a5 + 0x20))) - temp_a5)) >> 6) + (temp_a0 << 8);
        if (var_s4 != 0) {
            var_t2 = M2C_ERROR(/* unknown instruction: movf $t2, $zero, $fcc4 */);
block_33:
            var_a7 = (void *) ((temp_a0 + 0x20) & 0x3F);
            var_t0 = (((bitwise s32) sp20 & 0x7FFFF) + 0x20) & 0x3F;
            if (var_t2 != 0) {
                goto block_34;
            }
            var_a0 = var_a7;
            if (var_s4 != 0) {
                goto block_96;
            }
            var_a3 = M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc1 */);
            var_t2_3 = var_t0 == 0;
            if (var_a3 == 0) {
                var_a0 = var_a7;
                goto block_96;
            }
            goto block_35;
        }
block_93:
        var_a7 = (void *) ((temp_a5 + 0x20) & 0x3F);
        var_t0 = (((bitwise s32) sp24 & 0x7FFFF) + 0x20) & 0x3F;
        if (var_t2_2 == 0) {
            var_a0 = var_a7;
block_96:
            var_a5 = 0x40 - var_t0;
            var_a0_2 = (s32) ((var_a7 == NULL) ? (void *)0x40 : var_a0);
        } else {
block_34:
            var_t2_3 = var_t0 == 0;
block_35:
            var_a0_2 = 0x40 - var_a7;
            var_a5 = (var_t2_3 == 0) ? var_t0 : 0x40;
        }
        sp118 = (var_t1 & 0xFFFF) | (0xFFFF0000 & ((sp110 & 0xFFFF) | (var_a4 << 0x10)));
        sp11C = (var_a5 & 0xFF) | (((sp114 & ~0xFF00) | ((var_a0_2 & 0xFF) << 8)) & ~0xFF);
        temp_s0->unk2190 = (f64) sp118;
    }
    var_f7 = arg1->unk3C;
    var_f6_3 = arg2->unk3C;
    if (((f64) var_f7 != var_f8) || ((f64) var_f6_3 != var_f8)) {
        if (fabsf(var_f7) < 0.0000076293945f) {
            var_f7 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f4, $fcc1 */);
        }
        if (fabsf(var_f6_3) < 0.0000076293945f) {
            var_f6_3 = M2C_ERROR(/* unknown instruction: movf.s $f11, $f4, $fcc3 */);
        }
        temp_f11_2 = 1.0f / var_f6_3;
        temp_f10_3 = 1.0f / var_f7;
        var_f28 = (f64) (arg2->unk8C * var_f6_3);
        var_f5 = arg2->unk30 * temp_f11_2;
        var_f26 = (f64) (arg1->unk8C * var_f7);
        var_f4 = arg1->unk30 * temp_f10_3;
        if (temp_s6->unkE8 != 1) {
            sp124 = arg2->unk34 * temp_f11_2;
            sp120 = arg1->unk34 * temp_f10_3;
        }
    } else {
        var_f5 = arg2->unk30;
        var_f28 = (f64) arg2->unk8C;
        var_f4 = arg1->unk30;
        var_f26 = (f64) arg1->unk8C;
        if (temp_s6->unkE8 != 1) {
            sp124 = arg2->unk34;
            sp120 = arg1->unk34;
        }
    }
    var_f16 = 0x3F800000;
    if (temp_s6->unk4 != 0x2901) {
        var_f5_2 = var_f5 + 1.0f;
        var_f4_2 = var_f4 + 1.0f;
        var_f14_2 = 7.0f;
        var_f15_2 = M2C_ERROR(/* unknown instruction: movf.s $f15, $f5, $fcc5 */);
        var_a1 = 1;
        if (!(var_f15_2 > 7.0f)) {
            var_a1 = 1;
            if (!(M2C_ERROR(/* unknown instruction: movf.s $f17, $f5, $fcc7 */) < -7.0f)) {
                var_a1 = 0;
            }
        }
        sp2A8 = var_a1;
        if (temp_s6->unkE8 != 1) {
            goto block_49;
        }
        goto block_80;
    }
    sp270 = (bitwise f64) var_f5;
    sp268 = (bitwise f64) var_f4;
    var_f16 = 0xBF800000;
    var_f15_2 = (f32) (s32) ((f32) __glFloor((bitwise f32) temp_s6->unkE8, 0x2901, (bitwise f32) var_a3, (bitwise f32) var_a4, (bitwise f32) var_a5, 1, (s32) var_a7, M2C_ERROR(/* unknown instruction: movf.s $f12, $f1, $fcc0 */), second half of f64, var_f14, var_f15, 0x3F800000, var_f17, var_f18, var_f19) + -1.0f);
    var_f5_2 = (second half of f64) - var_f15_2;
    var_f4_2 = var_f4 - var_f15_2;
    var_f14_2 = M2C_ERROR(/* unknown instruction: movf.s $f14, $f5, $fcc2 */);
    var_f8 = 1.0;
    sp2A8 = M2C_ERROR(/* unknown instruction: movf $a7, $zero, $fcc1 */);
    if (temp_s6->unkE8 == 1) {
block_80:
        var_f16 = 0x3F800000;
        sp124 = 1.0f;
        var_s6 = 0;
        sp120 = 1.0f;
    } else {
block_49:
        if (temp_s6->unk8 != 0x2901) {
            sp124 += 1.0f;
            sp120 += 1.0f;
            if ((M2C_ERROR(/* unknown instruction: movf.s $f21, $f7, $fcc1 */) > 7.0f) || (var_s6 = 0, (M2C_ERROR(/* unknown instruction: movf.s $f25, $f7, $fcc3 */) < -7.0f))) {
                var_s6 = 1;
            }
        } else {
            sp270 = (bitwise f64) var_f5_2;
            sp268 = (bitwise f64) var_f4_2;
            temp_f17 = (f32) (s32) ((f32) __glFloor((bitwise f32) temp_s6->unkE8, M2C_ERROR(/* unknown instruction: movf.s $f12, $f7, $fcc5 */), sp124, var_f14_2, var_f15_2, var_f16) + -1.0f);
            var_f16 = (bitwise s32) (sp124 - temp_f17);
            sp124 = var_f16;
            var_f14_2 = 15.0f;
            sp120 -= temp_f17;
            var_f15_2 = M2C_ERROR(/* unknown instruction: movf.s $f15, $f16, $fcc7 */);
            var_f4_2 = second half of f64;
            var_f8 = 1.0;
            var_s6 = M2C_ERROR(/* unknown instruction: movf $s6, $zero, $fcc6 */);
        }
    }
    var_f13 = second half of f64;
    if (!(var_f26 <= (bitwise f64) var_f30)) {
        if (var_f28 <= (bitwise f64) var_f30) {
            var_f13 = second half of f64;
            goto block_56;
        }
    } else {
block_56:
        sp270 = (bitwise f64) var_f5_2;
        sp268 = (bitwise f64) var_f4_2;
        temp_f13_2 = (f64) (0.0000076293945f - (f32) __glFloor((f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f28, $fcc6 */), var_f13, var_f14_2, var_f15_2, (bitwise f32) var_f16));
        var_f28 += temp_f13_2;
        var_f8 = 1.0;
        var_f26 += temp_f13_2;
    }
    temp_f6_2 = M2C_ERROR(/* unknown instruction: movf.d $f6, $f28, $fcc0 */);
    if ((temp_f6_2 != (bitwise f64) var_f30) && (temp_f6_2 != var_f8)) {
        temp_f15 = var_f8 / temp_f6_2;
        var_f28 *= temp_f15;
        var_f26 *= temp_f15;
    }
    temp_t3 = 1 << 0x2B;
    temp_f21_2 = (second half of f64) * M2C_ERROR(/* unknown instruction: nmsub.d $f21, $f21, $f7, $f26 */);
    M2C_ERROR(/* unknown instruction: nmsub.d $f18, $f18, $f9, $f26 */);
    sp128 = (sp2A8 & 1) | ((var_s6 & 1) * 2);
    sp130 = (f64) (temp_t3 >> ((sp2A8 != 0) ? 4 : sp2A8)) * M2C_ERROR(/* unknown instruction: madd.d $f7, $f7, $f8, $f21 */);
    temp_f17_2 = (f64) (temp_t3 >> ((var_s6 == 0) ? var_s6 : 4));
    sp138 = (s64) sp130 + 0x800;
    sp140 = temp_f17_2 * M2C_ERROR(/* unknown instruction: madd.d $f9, $f9, $f8, $f18 */);
    sp148 = (s64) sp140 + 0x800;
    sp150 = (f32) (536870912.0 * M2C_ERROR(/* unknown instruction: madd.d $f8, $f26, $f8, $f19 */));
    temp_s0->unk2134 = sp128;
    temp_s0->unk2120 = sp138;
    temp_s0->unk2128 = sp148;
    sp154 = (s32) sp150 + 0x800;
    temp_s0->unk2130 = sp154;
    if (arg0->unk700 & 0x100) {
        if (var_s4 != 0) {
            var_f22 = second half of f64;
            if (!((f64) sp278 <= 127.0)) {
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f23
                // At instruction: c.lt.d $f6, $f23
loop_68:
                temp_f6_3 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f20, $f23, $f4 */);
                temp_s0->unk2084 = sp1C;
                temp_f5_4 = var_f4_3 + var_f22;
                sp20 = temp_f5_4;
                temp_s0->unk2080 = sp18;
                sp24 = temp_f6_3;
                temp_s0->unk2088 = sp20;
                var_f22 = temp_f5_4;
                temp_s0->unk288C = sp24;
                if (M2C_ERROR(/* Read from unset register $a0 */) != 0) {
                    if (!(temp_f5_4 <= (second half of f64))) {
                        M2C_ERROR(/* unknown instruction: movt.s $f4, $f0, $fcc5 */);
                        goto block_71;
                    }
                } else if (!((second half of f64) <= temp_f5_4)) {
                    M2C_ERROR(/* unknown instruction: movt.s $f4, $f0, $fcc7 */);
block_71:
                    sp1C = temp_f6_3;
                    sp18 = temp_f5_4;
                    if (temp_s1 != 0) {
                        sp198 = (f64) (64.0f * M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f4, $f27 */));
                        sp1A0 = (s64) sp198;
                        temp_s0->unk21C8 = sp1A0;
                        if (temp_s3 == 0) {
                            goto block_73;
                        }
                        goto block_65;
                    }
                    if (temp_s3 != 0) {
block_65:
                        sp1A8 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f4, $f28 */));
                        temp_s0->unk2178 = (void *) sp1A8;
                        if (0x20000 != 0) {
                            goto block_66;
                        }
                    } else {
block_73:
                        if (0x20000 == 0) {

                        } else {
block_66:
                            sp1B0 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f4, $f30 */));
                            sp1B4 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f4, $f31 */));
                            temp_s0->unk20E0 = (f64) sp1B0;
                            sp1B8 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f4, $f26 */));
                            sp1BC = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f4, $f0 */));
                            temp_s0->unk20E8 = (bitwise f64) sp1B8;
                        }
                    }
                    sp1C0 = (second half of f64) * M2C_ERROR(/* unknown instruction: madd.d $f7, $f7, $f0, $f21 */);
                    sp1C8 = (s64) sp1C0 + 0x800;
                    sp1D0 = temp_f17_2 * M2C_ERROR(/* unknown instruction: madd.d $f1, $f7, $f0, $f18 */);
                    var_f4_3 = second half of f64;
                    sp1D8 = (s64) sp1D0 + 0x800;
                    var_f0 = second half of f64;
                    sp1E0 = (f32) (536870912.0 * M2C_ERROR(/* unknown instruction: madd.d $f8, $f8, $f0, $f19 */));
                    temp_s0->unk2120 = sp1C8;
                    temp_s0->unk2128 = sp1D8;
                    sp1E4 = (s32) sp1E0 + 0x800;
                    temp_s0->unk2130 = sp1E4;
                    goto loop_68;
                }
                return var_f0;
            }
            /* Duplicate return node #82. Try simplifying control flow for better match */
            sp1E8 = (second half of f64) * (second half of f64);
            temp_f0 = (s64) sp1E8;
            sp1F0 = temp_f0;
            sp1F8 = temp_f17_2 * (second half of f64);
            temp_s0->unk2138 = sp1F0;
            sp200 = (s64) sp1F8;
            sp208 = (f32) ((second half of f64) * ((second half of f64) * (var_f28 - var_f26)));
            temp_s0->unk2148 = sp200;
            sp20C = (s32) sp208;
            sp210 = 0;
            sp218 = 0;
            sp220 = 0;
            temp_s0->unk295C = sp220;
            temp_s0->unk2158 = sp20C;
            temp_s0->unk2150 = sp218;
            temp_s0->unk2140 = (f64) (second half of f64);
            return (bitwise f32) temp_f0;
        }
        /* Duplicate return node #103. Try simplifying control flow for better match */
        sp228 = (second half of f64) * temp_f21_2;
        sp230 = (s64) sp228;
        sp238 = temp_f17_2 * (second half of f64);
        temp_s0->unk2140 = (f64) (second half of f64);
        sp240 = (s64) sp238;
        sp248 = second half of f64;
        temp_s0->unk2150 = sp240;
        sp24C = (s32) sp248;
        sp250 = 0;
        sp258 = 0;
        sp260 = 0;
        temp_s0->unk2958 = sp260;
        temp_s0->unk215C = sp24C;
        temp_s0->unk2148 = sp258;
        temp_s0->unk2138 = sp250;
        return (bitwise f32) sp240;
    }
    if (var_s4 != 0) {
        sp1E8 = (second half of f64) * (second half of f64);
        temp_f0 = (s64) sp1E8;
        sp1F0 = temp_f0;
        sp1F8 = temp_f17_2 * (second half of f64);
        temp_s0->unk2138 = sp1F0;
        sp200 = (s64) sp1F8;
        sp208 = (f32) ((second half of f64) * ((second half of f64) * (var_f28 - var_f26)));
        temp_s0->unk2148 = sp200;
        sp20C = (s32) sp208;
        sp210 = 0;
        sp218 = 0;
        sp220 = 0;
        temp_s0->unk295C = sp220;
        temp_s0->unk2158 = sp20C;
        temp_s0->unk2150 = sp218;
        temp_s0->unk2140 = (f64) (second half of f64);
        return (bitwise f32) temp_f0;
    }
    sp228 = (second half of f64) * temp_f21_2;
    sp230 = (s64) sp228;
    sp238 = temp_f17_2 * (second half of f64);
    temp_s0->unk2140 = (f64) (second half of f64);
    sp240 = (s64) sp238;
    sp248 = second half of f64;
    temp_s0->unk2150 = sp240;
    sp24C = (s32) sp248;
    sp250 = 0;
    sp258 = 0;
    sp260 = 0;
    temp_s0->unk2958 = sp260;
    temp_s0->unk215C = sp24C;
    temp_s0->unk2148 = sp258;
    temp_s0->unk2138 = sp250;
    return (bitwise f32) sp240;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void __glCrmPolygonOffsetLine(void *arg0, void *arg1, void *arg2) {
    s64 sp28;
    f32 temp_f30;
    f32 temp_f3;

    temp_f30 = arg1->unk88;
    temp_f3 = arg2->unk88;
    arg1->unk88 = (f32) (arg0->unk7718 + temp_f30);
    sp28 = (s64) arg2;
    arg2->unk88 = (f32) (arg2->unk88 + arg0->unk7718);
    unksp8 = (bitwise f64) temp_f3;
    arg0->unk30B8();
    arg1->unk88 = temp_f30;
    sp28->unk88 = temp_f3;
}
