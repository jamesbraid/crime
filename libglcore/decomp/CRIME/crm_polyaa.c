Error occurred while processing instruction: c.eq.d $f8, $f9

Error occurred while processing instruction: c.lt.d $f9, $f8

Error occurred while processing instruction: c.eq.d $f21, $f23

Error occurred while processing instruction: div.d $f21, $f21, $f23

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
Error occurred while processing instruction: bgez $a2, .L0d9611ec

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
Error occurred while processing instruction: bgez $t2, .L0d961478

Error occurred while processing instruction: c.le.d $f4, $f13

Error occurred while processing instruction: c.le.d $f5, $f13

Error occurred while processing instruction: c.le.d $f6, $f13

Error occurred while processing instruction: c.eq.d $f8, $f9

Error occurred while processing instruction: c.lt.d $f9, $f8

Error occurred while processing instruction: c.eq.d $f21, $f23

Error occurred while processing instruction: div.d $f21, $f21, $f23

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
Error occurred while processing instruction: bgez $a2, .L0d9611ec

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
Error occurred while processing instruction: bgez $t2, .L0d961478

Error occurred while processing instruction: c.le.d $f4, $f13

Error occurred while processing instruction: c.le.d $f5, $f13

Error occurred while processing instruction: c.le.d $f6, $f13

Error occurred while processing instruction: c.eq.d $f10, $f13

Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f23
Tried to use a double-precision instruction with odd-numbered float register $f23
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f23
Tried to use a double-precision instruction with odd-numbered float register $f23
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
Tried to use a double-precision instruction with odd-numbered float register $f13
f32 __glBuildAntiAliasIndex(f32, f32);              /* extern */
f32 __glCrmRenderPointDepthRGBA(s64, f32 *, f32 *, s64, s32, s64, f32, f32, f32, f32, f32); /* extern */
s32 __glFloor(s32, f32, f32, f32);                  /* extern */
s32 __glPolygonOffsetZ(void *, s64, s64, s32, s64, s64, f64, f32, f32, f32, f64, f64, f32, f32); /* extern */
? __glSnapXLeft(void *, ?, ?, f32, f32);            /* extern */
? __glSnapXRight(void *, ?, ?, f32, f32);           /* extern */
f64 powf(f32, f32, f32, f32);                       /* extern */
f32 sub_0d960000(f32, f32, s32, ?, s32);            /* extern */

s32 FindLineEquation(void *arg0, void *arg1, void *arg2, void *arg3) {
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;

    temp_f8 = arg1->unk84;
    temp_f9 = arg2->unk84;
    var_f4 = temp_f9;
    var_f7 = arg2->unk80;
    var_f5 = temp_f8;
    if (temp_f9 < temp_f8) {
        var_f5 = temp_f9;
        var_f6 = arg1->unk80;
        var_f4 = temp_f8;
    } else {
        var_f6 = arg2->unk80;
        var_f7 = arg1->unk80;
        if (temp_f9 == temp_f8) {
            var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f9, $fcc4 */);
            var_f4 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f8, $fcc4 */);
            M2C_ERROR(/* unknown instruction: movt $a5, $a2, $fcc4 */);
            var_f7 = M2C_ERROR(/* unknown instruction: movt.s $f7, $f10, $fcc4 */);
            var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f11, $fcc4 */);
        }
    }
    // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
    // At instruction: c.eq.d $f8, $f9
    if (M2C_ERROR()) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
        // At instruction: c.lt.d $f9, $f8
        if (M2C_ERROR()) {
            arg0->unkC = 1;
            return 0;
        }
        arg0->unkC = 0;
        return 0;
    }
    return 0;
}

void FindPlaneEquation(void *arg0, void *arg1, void *arg2, void *arg3, f32 fparg4, f32 fparg5, f32 fparg6) {
    f32 temp_f3;

    temp_f3 = M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f3, $f9, $f10 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f4, $f5 */);
    arg0->unk4 = (f32) (M2C_ERROR(/* unknown instruction: nmsub.s $f6, $f6, $f5, $f3 */) / temp_f3);
    arg0->unk0 = (f32) (M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f5, $f7, $f8 */) / temp_f3);
    arg0->unk8 = 1.0f;
    arg0->unkC = (f32) (-M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f16, $f3 */) / temp_f3);
}

void FindPlaneEquation2(void *arg0, void *arg1, void *arg2, void *arg3, f64 fparg4, f64 fparg5, f64 fparg6) {
    M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f3, $f5, $f11 */);
    M2C_ERROR(/* unknown instruction: nmsub.d $f6, $f6, $f9, $f10 */);
    M2C_ERROR(/* unknown instruction: nmsub.d $f5, $f5, $f7, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.d $f0, $f0, $f4, $f5 */);
    arg0->unk10 = 1.0;
    arg0->unk8 = (f64) (second half of f64);
    arg0->unk0 = (f64) (second half of f64);
    arg0->unk18 = (f64) (-M2C_ERROR(/* unknown instruction: madd.d $f0, $f0, $f16, $f3 */) / (second half of f64));
}

f32 FindP(void *arg0, f32 fparg2) {
    return -(arg0->unkC + M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f13 */));
}

f64 FindP2(void *arg0, f32 fparg1, f32 fparg2) {
    M2C_ERROR(/* unknown instruction: madd.d $f1, $f1, $f2, $f3 */);
    return -(arg0->unk18 + (second half of f64));
}

void ComputeCoverageStuff(void *arg0, s32 arg1) {
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s32 temp_lo;

    temp_f3 = 1.0f / (f32) arg1;
    temp_lo = arg1 * arg1;
    temp_f2 = M2C_ERROR(/* unknown instruction: nmsub.s $f2, $f4, $f3, $f4 */);
    arg0->unk8 = arg1;
    temp_f1 = M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f3, $f4 */);
    arg0->unkC = temp_lo;
    arg0->unk4 = temp_f3;
    arg0->unk0 = temp_f3;
    arg0->unk24 = temp_f2;
    arg0->unk20 = temp_f1;
    arg0->unk1C = temp_f2;
    arg0->unk18 = temp_f1;
    arg0->unk10 = (f32) (1.0f / (f32) temp_lo);
}

f32 Coverage(void *arg0, f32 *arg1, f32 *arg2, void *arg3) {
    f32 var_f11;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    s32 temp_a6;
    s32 var_a5;
    s32 var_f0;
    s32 var_t0;
    s32 var_t1;
    u8 temp_a5;
    u8 temp_a7;
    u8 temp_t0;

    temp_a6 = arg3->unk8;
    if ((arg3->unk14 == 0) || (M2C_ERROR(/* unknown instruction: madd.s $f16, $f12, $f11, $f8 */), temp_a7 = arg0->unk14, (temp_a7 != M2C_ERROR(/* unknown instruction: movf $v0, $zero, $fcc0 */))) || (M2C_ERROR(/* unknown instruction: madd.s $f14, $f13, $f11, $f4 */), temp_a5 = arg0->unk24, (temp_a5 != M2C_ERROR(/* unknown instruction: movf $v1, $zero, $fcc1 */))) || (M2C_ERROR(/* unknown instruction: madd.s $f18, $f14, $f11, $f16 */), temp_t0 = arg0->unk34, (temp_t0 != M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc2 */))) || (M2C_ERROR(/* unknown instruction: madd.s $f18, $f12, $f15, $f8 */), (temp_a7 != M2C_ERROR(/* unknown instruction: movf $t1, $zero, $fcc3 */))) || (M2C_ERROR(/* unknown instruction: madd.s $f19, $f13, $f15, $f4 */), (temp_a5 != M2C_ERROR(/* unknown instruction: movf $t2, $zero, $fcc4 */))) || (M2C_ERROR(/* unknown instruction: madd.s $f21, $f14, $f15, $f16 */), (temp_t0 != M2C_ERROR(/* unknown instruction: movf $t3, $zero, $fcc5 */)))) {
        if (temp_a6 > 0) {
            var_f13 = 999999.0f;
            var_f14 = -1.0f;
            var_t0 = 0;
            var_f11 = 999999.0f;
            var_t1 = 0;
            var_f12 = -1.0f;
loop_11:
            var_a5 = 0;
            var_t1 += 1;
loop_14:
            M2C_ERROR(/* unknown instruction: madd.s $f23, $f6, $f4, $f8 */);
            var_a5 += 1;
            if ((arg0->unk14 == M2C_ERROR(/* unknown instruction: movf $t8, $zero, $fcc6 */)) && (M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f10 */), (arg0->unk24 == M2C_ERROR(/* unknown instruction: movf $at, $zero, $fcc7 */)))) {
                M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f10 */);
                if (arg0->unk34 == M2C_ERROR(/* unknown instruction: movf $v1, $zero, $fcc0 */)) {
                    var_f14 = M2C_ERROR(/* unknown instruction: movt.s $f14, $f4, $fcc4 */);
                    var_f13 = M2C_ERROR(/* unknown instruction: movt.s $f13, $f4, $fcc3 */);
                    var_f12 = M2C_ERROR(/* unknown instruction: movt.s $f12, $f10, $fcc2 */);
                    var_t0 += 1;
                    var_f11 = M2C_ERROR(/* unknown instruction: movt.s $f11, $f10, $fcc1 */);
                }
            }
            if (temp_a6 != var_a5) {
                goto loop_14;
            }
            if (temp_a6 != var_t1) {
                goto loop_11;
            }
            var_f0 = var_t0;
            if (var_t0 != 0) {
                *arg1 = 0.5f * (var_f12 + var_f11);
                *arg2 = 0.5f * (var_f14 + var_f13);
                var_f0 = var_t0;
                if (arg3->unkC == var_t0) {
                    arg3->unk14 = 1U;
                    return 1.0f;
                }
            }
            /* Duplicate return node #22. Try simplifying control flow for better match */
            arg3->unk14 = 0U;
            return (f32) var_f0 * arg3->unk10;
        }
        var_f0 = 0;
        arg3->unk14 = 0U;
        return (f32) var_f0 * arg3->unk10;
    }
    return 1.0f;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x258, 0x25c, 0x2d0, 0x2d4, 0x2d8, 0x2dc, 0x2e8, 0x2ec, 0x4a8, 0x4ac, 0x4b0, 0x4b4, 0x4b8, 0x4bc, 0x4c0, 0x4c4, 0x4c8, 0x4cc, 0x4d0, 0x4d4, 0x4d8, 0x4dc, 0x4e0, 0x4e4, 0x4e8, 0x4ec, 0x4f0, 0x4f4, 0x4f8, 0x4fc], gap at: 0x260. */
f32 FillAASubTriangle(void *arg0, s64 arg1, s64 arg2, void *arg3, s32 arg4, s32 arg5, ? arg_sp0) {
    s64 sp500;
    s32 sp250;
    s32 sp24C;
    s32 sp248;
    s32 sp244;
    s32 sp240;
    s64 sp238;
    s64 sp230;
    s32 sp228;
    s32 sp224;
    f32 sp220;
    s64 sp218;
    f64 sp210;
    s64 sp208;
    f64 sp200;
    s64 sp1F8;
    f64 sp1F0;
    s32 sp1E8;
    s32 sp1E4;
    s32 sp1E0;
    s32 sp1DC;
    s32 sp1D8;
    s32 sp1D4;
    s32 sp1D0;
    s32 sp1CC;
    s32 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s32 sp1B0;
    s32 sp1AC;
    f32 sp1A8;
    s64 sp1A0;
    f64 sp198;
    s64 sp190;
    f64 sp188;
    s64 sp180;
    f64 sp178;
    s32 sp170;
    s32 sp16C;
    s32 sp168;
    s32 sp164;
    s32 sp160;
    s32 sp15C;
    s32 sp158;
    s32 sp154;
    s32 sp150;
    s64 sp148;
    s64 sp140;
    s32 sp138;
    s32 sp134;
    f32 sp130;
    s64 sp128;
    f64 sp120;
    s64 sp118;
    f64 sp110;
    s64 sp108;
    f64 sp100;
    s32 spF8;
    s32 spF4;
    s32 spF0;
    s32 spEC;
    s32 spE8;
    s32 spE4;
    s32 spE0;
    s32 spDC;
    s32 spD8;
    s64 spD0;
    s64 spC8;
    s32 spC0;
    s32 spBC;
    f32 spB8;
    s64 spB0;
    f64 spA8;
    s64 spA0;
    f64 sp98;
    s64 sp90;
    f64 sp88;
    s32 sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 *spC;
    u32 sp8;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_11;
    f32 temp_f0_12;
    f32 temp_f0_13;
    f32 temp_f0_14;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f15;
    f32 temp_f20;
    f32 temp_f20_3;
    f32 temp_f28;
    f32 temp_f28_3;
    f32 temp_f30;
    f32 temp_f30_3;
    f32 temp_f30_5;
    f32 temp_f30_7;
    f32 temp_f31;
    f32 temp_f31_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 var_f0;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f28;
    f32 var_f28_2;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    f64 temp_f20_2;
    f64 temp_f20_4;
    f64 temp_f28_2;
    f64 temp_f28_4;
    f64 temp_f30_2;
    f64 temp_f30_4;
    f64 temp_f30_6;
    f64 temp_f30_8;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s7_2;
    s32 temp_t3;
    s32 var_s4;
    s32 var_t2;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_s7;
    s64 temp_t1;
    s64 temp_t2_2;
    s64 temp_v0;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s2_3;
    s64 var_s2_4;
    u32 var_f5_5;
    u32 var_s2_5;
    void *temp_a0;
    void *temp_s1;
    void *temp_s3;
    void *temp_t2;

    sp8 = arg0->unk7D64;
    unksp370 = arg2;
    unksp440 = arg1;
    unksp488 = (s64) arg0;
    temp_s3 = arg0->unk7DB8;
    temp_s1 = arg3->unk178;
    var_f24 = temp_s1->unkDD4;
    unksp300 = (s64) arg0->unk7DBC;
    unksp360 = (s64) temp_s1->unk75CC;
    unksp350 = (s64) temp_s1->unk75D0;
    unksp358 = (s64) temp_s1->unk75D4;
    unksp308 = (s64) temp_s1->unk7410;
    unksp310 = (s64) temp_s1->unk7408;
    unksp3B8 = (s64) temp_s1->unk75DC;
    unksp3E8 = (s64) temp_s1->unk75D8;
    unksp3C8 = (s64) temp_s1->unk75C8;
    unksp408 = (s64) temp_s1->unk75C4;
    unksp2F8 = (s64) temp_s1->unk75BC;
    unksp340 = (s64) temp_s1->unk75B8;
    unksp368 = (s64) temp_s1->unk75C0;
    temp_a7 = temp_s1->unk76E4;
    var_f0 = temp_s1->unkDD8;
    unksp448 = (s64) temp_s1->unk12F0;
    temp_at = temp_a7 & 2;
    unksp2B0 = (bitwise f64) var_f0;
    unksp480 = temp_at;
    if (temp_at == 0) {
        spC = temp_s1->unk6DA8->unk8;
    }
    temp_a1 = temp_a7 & 0x20;
    unksp398 = temp_a1;
    temp_s1->unk7708 = (void *) (&arg_sp0 + 0xFFFEFED0);
    temp_s1->unk7704 = (void *) (&arg_sp0 + 0xFFFEFFD0);
    temp_s1->unk7700 = (void *) (&arg_sp0 + 0xFFFF7FD0);
    if (temp_a1 != 0) {
        temp_t2 = temp_s1->unk7984;
        temp_s1->unk76F4 = (s32) ((unksp408 + (temp_s1->unk7994 + (temp_s1->unk79A0 * (unksp440 - temp_t2->unkE50)))) - temp_t2->unkE4C);
    }
    temp_v0 = temp_a7 & 4;
    unksp490 = temp_v0;
    if (temp_v0 != 0) {
        temp_a0 = temp_s1->unk79FC;
        temp_s1->unk76E8 = (s32) ((temp_s1->unk7A0C + (temp_s1->unk7A18 * (unksp440 - temp_a0->unkE50) * 4) + (unksp408 * 4)) - (temp_a0->unkE4C * 4));
    }
    temp_t2_2 = temp_a7 & 8;
    unksp478 = temp_t2_2;
    if ((temp_t2_2 != 0) && (unksp488->unk7D58 & 0x8000)) {
        sp8 = (((sp8 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
    }
    if (temp_s1->unk778 == 0x1102) {
        temp_f15 = temp_s1->unk648;
        sp18 = temp_s1->unk650;
        sp10 = temp_f15;
        sp14 = temp_f15 * temp_f15;
    }
    temp_s1->unk7710 = (s32) temp_s1->unk2DF0;
    if (unksp440 < unksp370) {
        unksp430 = (s64) (arg3 + 0x60);
        unksp428 = (s64) (arg3 + 0x50);
        unksp420 = (s64) (arg3 + 0x70);
        unksp3D0 = temp_a7 & 0x2008;
        unksp3A0 = (s64) (arg3 + 0x10);
        unksp4A0 = (s64) (arg3 + 0x110);
        unksp3F0 = (s64) (arg3 + 0x40);
        unksp498 = (s64) (arg3 + 0x150);
        unksp390 = temp_a7 & 0x4000;
        unksp400 = (s64) (arg3 + 0x100);
        unksp418 = (s64) &sp2C;
        temp_s7 = temp_a7 & 1;
        unksp348 = temp_s7;
        unksp328 = (s64) (arg3 + 0xE0);
        unksp320 = (s64) (arg3 + 0xC0);
        unksp2F0 = (arg4 >> 2) | (arg5 >> 1);
        unksp438 = (s64) (arg3 + 0x90);
        unksp410 = (s64) (arg3 + 0x80);
        unksp318 = (s64) (arg3 + 0xA0);
        unksp388 = temp_a7 & 0x40000;
        unksp2A8 = (f64) sp68;
        unksp260 = (bitwise f64) sp10;
        unksp278 = (f64) sp64;
        unksp380 = (s64) sp60;
        unksp290 = (f64) sp5C;
        unksp2B8 = (f64) sp58;
        unksp3B0 = (s64) (arg3 + 0x30);
        unksp470 = temp_a7 & 0x10;
        unksp3A8 = (s64) (arg3 + 0x20);
        unksp3D8 = unksp408 + 1;
        unksp3C0 = unksp3E8 - 1;
        var_f22 = 0.0f;
        unksp3F8 = temp_a7 & 0x1000;
        temp_s7_2 = temp_s7 & 0xFF;
        unksp378 = (s64) sp8;
        temp_a1_2 = 1 << 0x2B;
        unksp330 = temp_a1_2 >> arg5;
        unksp338 = temp_a1_2 >> arg4;
        unksp3E0 = (temp_s1->unkE78 - (unksp440 - temp_s1->unkE50)) - 1;
        unksp450 = (s64) (sp8 >> 0x18);
loop_18:
        var_s2 = unksp408;
        unksp460 = unksp440 & 0x1F;
        unksp468 = unksp3E0 & 0x1F;
        var_s4 = 0;
        var_f26 = (f32) unksp440 + var_f24;
loop_38:
        sp70 = var_f26;
        sp6C = (f32) var_s2 + var_f24;
        arg3->unk164 = 0;
        temp_f0 = __glCrmRenderPointDepthRGBA(unksp4A0, &sp6C, &sp70, unksp498);
        var_f28 = temp_f0;
        if (temp_f0 != var_f22) {
            if ((unksp470 == 0) || ((temp_s1 + (((unksp448 == 0) ? unksp460 : unksp468) * 4))->unk7538 & (1 << (0x1F - (var_s2 & 0x1F))))) {
                if (var_s4 == 0) {
                    if (unksp488->unk7D60 != unksp378) {
                        unksp488->unk7DB8->unk2060 = (s32) unksp378;
                        unksp488->unk7DBC->unk2060 = sp8;
                        unksp488->unk7D60 = sp8;
                    }
                }
                temp_a2 = (s32) sp6C << 6;
                sp74 = temp_a2;
                temp_s3->unk2080 = sp74;
                sp78 = (s32) sp70 << 6;
                temp_s3->unk2084 = sp78;
                if (unksp450 != 3) {
                    if (unksp480 == 0) {
                        goto block_44;
                    }
                    goto block_21;
                }
                sp7C = (s32) sp6C << 6;
                temp_s3->unk2088 = sp7C;
                sp80 = (s32) sp70 << 6;
                temp_s3->unk208C = sp80;
                if (unksp480 != 0) {
block_21:
                    sp2C = __glCrmRenderPointDepthRGBA((s64) arg3, (f32 *) sp74, (f32 *) temp_a2, unksp480);
                    if (temp_s7_2 != 0) {
                        sp30 = __glCrmRenderPointDepthRGBA(unksp3A0);
                        sp34 = __glCrmRenderPointDepthRGBA(unksp3A8);
                        sp38 = __glCrmRenderPointDepthRGBA(unksp3B0);
                    }
                } else {
block_44:
                    sp2C = spC->unk0;
                    if (temp_s7_2 != 0) {
                        sp30 = spC->unk4;
                        sp34 = spC->unk8;
                        sp38 = spC->unkC;
                    }
                }
                if (unksp490 != 0) {
                    sp88 = (f64) (64.0f * __glCrmRenderPointDepthRGBA(unksp3F0));
                    sp90 = (s64) sp88;
                    temp_s3->unk21C8 = sp90;
                }
                if (unksp478 != 0) {
                    temp_a1_3 = unksp488->unk7D58;
                    temp_a1_4 = temp_a1_3 << 0x10;
                    if (!(temp_a1_3 & 0x8000)) {
                        temp_f20 = temp_s1->unkDD8 / __glCrmRenderPointDepthRGBA(unksp420, (f32 *) temp_a1_4);
                        unksp2C0 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp428) * temp_f20);
                        unksp2C8 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp430) * temp_f20);
                        temp_f30 = __glCrmRenderPointDepthRGBA(unksp410) * temp_f20;
                        __glCrmRenderPointDepthRGBA(unksp438);
                        temp_s1->unk30EC(temp_s1, unksp418);
                    } else {
                        temp_f20_2 = __glCrmRenderPointDepthRGBA(unksp318, (f32 *) temp_a1_4);
                        temp_f30_2 = __glCrmRenderPointDepthRGBA(unksp320);
                        temp_f0_2 = __glCrmRenderPointDepthRGBA(unksp328);
                        var_f24 = second half of f64;
                        sp98 = (f64) unksp338 * temp_f20_2;
                        var_f22 = second half of f64;
                        spA0 = (s64) sp98 + 0x800;
                        spA8 = (f64) unksp330 * temp_f30_2;
                        spB0 = (s64) (second half of f64) + 0x800;
                        spB8 = (f32) ((second half of f64) * (f64) temp_f0_2);
                        temp_s3->unk2120 = spA0;
                        temp_s3->unk2128 = spB0;
                        spBC = (s32) spB8 + 0x800;
                        temp_s3->unk2130 = spBC;
                        if (var_s4 == 0) {
                            spC0 = (s32) unksp2F0;
                            temp_s3->unk2134 = spC0;
                            unksp300->unk2134 = spC0;
                            if (unksp490 != 0) {
                                spC8 = 0;
                                spD0 = 0;
                                var_f28 = second half of f64;
                                var_f26 = second half of f64;
                                temp_s3->unk21D0 = spC8;
                                unksp300->unk21D0 = spC8;
                                temp_s3->unk21D8 = spD0;
                                unksp300->unk21D8 = spD0;
                            }
                            if (temp_s1->unk700 & 0x20) {
                                spD8 = 0;
                                temp_s3->unk2180 = spD8;
                                unksp300->unk2180 = spD8;
                                spDC = 0;
                                temp_s3->unk2188 = spDC;
                                unksp300->unk2188 = spDC;
                            }
                        }
                    }
                }
                if ((unksp3F8 != 0) || (unksp3D0 == 0x2008)) {
                    temp_f0_3 = __glCrmRenderPointDepthRGBA(unksp400);
                    var_f5 = temp_f0_3;
                    if (temp_s1->unk778 != 0x1102) {
                        unksp2B8 = (bitwise f64) temp_f0_3;
                    } else {
                        temp_a4 = temp_s1->unk634;
                        if (temp_f0_3 < var_f22) {
                            var_f5 = -temp_f0_3;
                        }
                        switch (temp_a4) {          /* switch 1; irregular */
                        case 0x2601:                /* switch 1 */
                            unksp2B8 = (bitwise f64) (temp_s1->unk654 * (sp18 - var_f5));
                            break;
                        case 0x800:                 /* switch 1 */
                            unksp2B8 = powf(1.3633e-41f, 2.7182817f, -(var_f5 * (bitwise f32) unksp260));
                            break;
                        case 0x801:                 /* switch 1 */
                            unksp2B8 = powf(1.3633e-41f, 2.7182817f, -(var_f5 * (var_f5 * sp14)));
                            break;
                        }
                        if ((bitwise f32) unksp2B8 < var_f22) {
                            unksp2B8 = (bitwise f64) var_f22;
                        } else {
                            unksp2B8 = M2C_ERROR(/* unknown instruction: movt.s $f10, $f11, $fcc2 */);
                        }
                    }
                    var_f28 = second half of f64;
                    spE0 = (s32) (4096.0f * (f32) ((f64) unksp2B8 * 255.0));
                    temp_s3->unk2178 = spE0;
                }
                if (temp_s7_2 != 0) {
                    temp_f31 = sp38 * var_f28;
                    sp38 = temp_f31;
                    spE4 = (s32) temp_f31 | ((s32) sp2C << 0x18) | (((s32) sp30 << 0x10) | ((s32) sp34 << 8));
                    temp_s3->unk28D0 = spE4;
                } else {
                    temp_f0_4 = __glBuildAntiAliasIndex(sp2C, var_f28);
                    sp2C = temp_f0_4;
                    spE8 = (s32) temp_f0_4;
                    temp_s3->unk28D0 = spE8;
                }
                var_s4 = (var_s4 == 0) ? 1 : var_s4;
            }
            var_s2 -= 1;
            goto loop_38;
        }
        var_s2_2 = unksp3D8;
loop_47:
        unksp458 = var_s2_2;
        sp70 = var_f26;
        sp6C = (f32) var_s2_2 + var_f24;
        arg3->unk164 = 0;
        var_f0 = __glCrmRenderPointDepthRGBA(unksp4A0, &sp6C, &sp70, unksp498);
        if (var_f0 != var_f22) {
            if (var_f0 != (bitwise f32) unksp2B0) {
                if ((unksp470 == 0) || ((temp_s1 + (((unksp448 == 0) ? unksp460 : unksp468) * 4))->unk7538 & (1 << (0x1F - (unksp458 & 0x1F))))) {
                    if (var_s4 == 0) {
                        if (unksp488->unk7D60 != unksp378) {
                            unksp488->unk7DB8->unk2060 = (s32) unksp378;
                            unksp488->unk7DBC->unk2060 = sp8;
                            unksp488->unk7D60 = sp8;
                        }
                    }
                    sp1DC = (s32) sp6C << 6;
                    temp_s3->unk2080 = sp1DC;
                    sp1E0 = (s32) sp70 << 6;
                    temp_s3->unk2084 = sp1E0;
                    if (unksp450 != 3) {
                        if (unksp480 != 0) {
                            goto block_54;
                        }
                        goto block_73;
                    }
                    sp1E4 = (s32) sp6C << 6;
                    temp_s3->unk2088 = sp1E4;
                    sp1E8 = (s32) sp70 << 6;
                    temp_s3->unk208C = sp1E8;
                    if (unksp480 == 0) {
block_73:
                        sp2C = spC->unk0;
                        if (temp_s7_2 != 0) {
                            sp30 = spC->unk4;
                            sp34 = spC->unk8;
                            sp38 = spC->unkC;
                        }
                    } else {
block_54:
                        sp2C = __glCrmRenderPointDepthRGBA((s64) arg3, (f32 *) unksp2B0, (bitwise f32 *) sp6C, (bitwise s64) sp70);
                        if (temp_s7_2 != 0) {
                            sp30 = __glCrmRenderPointDepthRGBA(unksp3A0);
                            sp34 = __glCrmRenderPointDepthRGBA(unksp3A8);
                            sp38 = __glCrmRenderPointDepthRGBA(unksp3B0);
                        }
                    }
                    if (unksp490 != 0) {
                        sp1F0 = (f64) (64.0f * __glCrmRenderPointDepthRGBA(unksp3F0));
                        sp1F8 = (s64) sp1F0;
                        temp_s3->unk21C8 = sp1F8;
                    }
                    if (unksp478 != 0) {
                        if (!(unksp488->unk7D58 & 0x8000)) {
                            temp_f28 = temp_s1->unkDD8 / __glCrmRenderPointDepthRGBA(unksp420);
                            unksp2A0 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp428) * temp_f28);
                            temp_f30_3 = __glCrmRenderPointDepthRGBA(unksp430) * temp_f28;
                            unksp298 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp410) * temp_f28);
                            __glCrmRenderPointDepthRGBA(unksp438);
                            __glBuildAntiAliasIndex((bitwise f32) temp_s1, (bitwise f32) unksp418);
                        } else {
                            temp_f30_4 = __glCrmRenderPointDepthRGBA(unksp318);
                            temp_f28_2 = __glCrmRenderPointDepthRGBA(unksp320);
                            temp_f0_5 = __glCrmRenderPointDepthRGBA(unksp328);
                            sp200 = (f64) unksp338 * temp_f30_4;
                            sp208 = (s64) sp200 + 0x800;
                            sp210 = (f64) unksp330 * temp_f28_2;
                            sp218 = (s64) sp210 + 0x800;
                            sp220 = (f32) (536870912.0 * (f64) temp_f0_5);
                            temp_s3->unk2120 = (s64) (second half of f64);
                            temp_s3->unk2128 = sp218;
                            sp224 = (s32) sp220 + 0x800;
                            temp_s3->unk2130 = sp224;
                            if (var_s4 == 0) {
                                sp228 = (s32) unksp2F0;
                                temp_s3->unk2134 = sp228;
                                unksp300->unk2134 = sp228;
                                if (unksp490 != 0) {
                                    sp230 = 0;
                                    sp238 = 0;
                                    temp_s3->unk21D0 = (s64) (second half of f64);
                                    unksp300->unk21D0 = sp230;
                                    temp_s3->unk21D8 = (s64) (second half of f64);
                                    unksp300->unk21D8 = sp238;
                                }
                                if (temp_s1->unk700 & 0x20) {
                                    sp240 = 0;
                                    temp_s3->unk2180 = sp240;
                                    unksp300->unk2180 = sp240;
                                    sp244 = 0;
                                    temp_s3->unk2188 = sp244;
                                    unksp300->unk2188 = sp244;
                                }
                            }
                        }
                    }
                    if (((f32 *) unksp3F8 != NULL) || (unksp3D0 == 0x2008)) {
                        temp_f0_6 = __glCrmRenderPointDepthRGBA(unksp400, (f32 *) unksp3F8, (f32 *)0x2008, unksp3D0);
                        var_f5_2 = temp_f0_6;
                        if (temp_s1->unk778 != 0x1102) {
                            unksp2A8 = (bitwise f64) temp_f0_6;
                        } else {
                            temp_a4_2 = temp_s1->unk634;
                            if (temp_f0_6 < var_f22) {
                                var_f5_2 = -temp_f0_6;
                            }
                            switch (temp_a4_2) {    /* switch 2; irregular */
                            case 0x2601:            /* switch 2 */
                                unksp2A8 = (bitwise f64) (temp_s1->unk654 * (sp18 - var_f5_2));
                                break;
                            case 0x800:             /* switch 2 */
                                unksp2A8 = powf(2.7182817f, -(var_f5_2 * (bitwise f32) unksp260));
                                break;
                            case 0x801:             /* switch 2 */
                                unksp2A8 = powf(2.7182817f, -(var_f5_2 * (var_f5_2 * sp14)));
                                break;
                            }
                            if ((bitwise f32) unksp2A8 < var_f22) {
                                unksp2A8 = (bitwise f64) var_f22;
                            } else {
                                unksp2A8 = M2C_ERROR(/* unknown instruction: movt.s $f3, $f4, $fcc6 */);
                            }
                        }
                        sp248 = (s32) (4096.0f * (f32) ((f64) unksp2A8 * 255.0));
                        temp_s3->unk2178 = sp248;
                    }
                    if (temp_s7_2 != 0) {
                        temp_f4 = sp38 * var_f0;
                        sp38 = temp_f4;
                        sp24C = (s32) temp_f4 | ((s32) sp2C << 0x18) | (((s32) sp30 << 0x10) | ((s32) sp34 << 8));
                        temp_s3->unk28D0 = sp24C;
                    } else {
                        temp_f0_7 = sub_0d960000(sp2C, var_f0);
                        sp2C = temp_f0_7;
                        sp250 = (s32) temp_f0_7;
                        temp_s3->unk28D0 = sp250;
                    }
                    var_s4 = (var_s4 == 0) ? 1 : var_s4;
                }
                var_s2_2 = unksp458 + 1;
                goto loop_47;
            }
            var_s2_3 = unksp3E8;
            if (unksp3E8 >= unksp458) {
                sp500 = unksp458;
loop_168:
                sp70 = var_f26;
                sp6C = (f32) var_s2_3 + var_f24;
                arg3->unk164 = 0;
                temp_f0_8 = __glCrmRenderPointDepthRGBA(unksp4A0, &sp6C, &sp70, unksp498);
                var_f28_2 = temp_f0_8;
                if (temp_f0_8 != var_f22) {
                    if ((unksp470 == 0) || ((temp_s1 + (((unksp448 == 0) ? unksp460 : unksp468) * 4))->unk7538 & (1 << (0x1F - (var_s2_3 & 0x1F))))) {
                        if (var_s4 == 0) {
                            if (unksp488->unk7D60 != unksp378) {
                                unksp488->unk7DB8->unk2060 = (s32) unksp378;
                                unksp488->unk7DBC->unk2060 = sp8;
                                unksp488->unk7D60 = sp8;
                            }
                        }
                        temp_a4_3 = (s32) sp6C << 6;
                        spEC = temp_a4_3;
                        temp_s3->unk2080 = spEC;
                        temp_a2_2 = (s32) sp70 << 6;
                        spF0 = temp_a2_2;
                        temp_s3->unk2084 = spF0;
                        if (unksp450 != 3) {
                            if (unksp480 == 0) {
                                goto block_174;
                            }
                            goto block_151;
                        }
                        spF4 = (s32) sp6C << 6;
                        temp_s3->unk2088 = spF4;
                        spF8 = (s32) sp70 << 6;
                        temp_s3->unk208C = spF8;
                        if (unksp480 != 0) {
block_151:
                            sp2C = __glCrmRenderPointDepthRGBA((s64) arg3, (f32 *) unksp450, (f32 *) temp_a2_2, (s64) spEC, temp_a4_3, unksp480);
                            if (temp_s7_2 != 0) {
                                sp30 = __glCrmRenderPointDepthRGBA(unksp3A0);
                                sp34 = __glCrmRenderPointDepthRGBA(unksp3A8);
                                sp38 = __glCrmRenderPointDepthRGBA(unksp3B0);
                            }
                        } else {
block_174:
                            sp2C = spC->unk0;
                            if (temp_s7_2 != 0) {
                                sp30 = spC->unk4;
                                sp34 = spC->unk8;
                                sp38 = spC->unkC;
                            }
                        }
                        if (unksp490 != 0) {
                            var_f24 = second half of f64;
                            sp100 = (f64) (64.0f * __glCrmRenderPointDepthRGBA(unksp3F0));
                            var_f22 = second half of f64;
                            sp108 = (s64) sp100;
                            temp_s3->unk21C8 = sp108;
                        }
                        if (unksp478 != 0) {
                            temp_a1_5 = unksp488->unk7D58;
                            temp_a1_6 = temp_a1_5 << 0x10;
                            if (!(temp_a1_5 & 0x8000)) {
                                temp_f20_3 = temp_s1->unkDD8 / __glCrmRenderPointDepthRGBA(unksp420, (f32 *) temp_a1_6);
                                unksp280 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp428) * temp_f20_3);
                                unksp288 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp430) * temp_f20_3);
                                temp_f30_5 = __glCrmRenderPointDepthRGBA(unksp410) * temp_f20_3;
                                __glCrmRenderPointDepthRGBA(unksp438);
                                sub_0d960000((bitwise f32) temp_s1, (bitwise f32) unksp418);
                            } else {
                                temp_f30_6 = __glCrmRenderPointDepthRGBA(unksp318, (f32 *) temp_a1_6);
                                temp_f20_4 = __glCrmRenderPointDepthRGBA(unksp320);
                                temp_f0_9 = __glCrmRenderPointDepthRGBA(unksp328);
                                var_f26 = second half of f64;
                                sp110 = (f64) unksp338 * temp_f30_6;
                                var_f24 = second half of f64;
                                sp118 = (s64) sp110 + 0x800;
                                var_f22 = second half of f64;
                                sp120 = (f64) unksp330 * temp_f20_4;
                                sp128 = (s64) sp120 + 0x800;
                                sp130 = (f32) (536870912.0 * (f64) temp_f0_9);
                                temp_s3->unk2120 = (s64) (second half of f64);
                                temp_s3->unk2128 = sp128;
                                sp134 = (s32) sp130 + 0x800;
                                temp_s3->unk2130 = sp134;
                                if (var_s4 == 0) {
                                    sp138 = (s32) unksp2F0;
                                    temp_s3->unk2134 = sp138;
                                    unksp300->unk2134 = sp138;
                                    if (unksp490 != 0) {
                                        sp140 = 0;
                                        sp148 = 0;
                                        var_f28_2 = second half of f64;
                                        temp_s3->unk21D0 = (s64) (second half of f64);
                                        unksp300->unk21D0 = sp140;
                                        temp_s3->unk21D8 = sp148;
                                        unksp300->unk21D8 = sp148;
                                    }
                                    if (temp_s1->unk700 & 0x20) {
                                        sp150 = 0;
                                        temp_s3->unk2180 = sp150;
                                        unksp300->unk2180 = sp150;
                                        sp154 = 0;
                                        temp_s3->unk2188 = sp154;
                                        unksp300->unk2188 = sp154;
                                    }
                                }
                            }
                        }
                        if ((unksp3F8 != 0) || (unksp3D0 == 0x2008)) {
                            temp_f0_10 = __glCrmRenderPointDepthRGBA(unksp400);
                            var_f5_3 = temp_f0_10;
                            if (temp_s1->unk778 != 0x1102) {
                                unksp290 = (bitwise f64) temp_f0_10;
                            } else {
                                temp_a4_4 = temp_s1->unk634;
                                if (temp_f0_10 < var_f22) {
                                    var_f5_3 = -temp_f0_10;
                                }
                                switch (temp_a4_4) { /* switch 3; irregular */
                                case 0x2601:        /* switch 3 */
                                    unksp290 = (bitwise f64) (temp_s1->unk654 * (sp18 - var_f5_3));
                                    break;
                                case 0x800:         /* switch 3 */
                                    unksp290 = powf(1.3633e-41f, 2.7182817f, -(var_f5_3 * (bitwise f32) unksp260));
                                    break;
                                case 0x801:         /* switch 3 */
                                    unksp290 = powf(1.3633e-41f, 2.7182817f, -(var_f5_3 * (var_f5_3 * sp14)));
                                    break;
                                }
                                if ((bitwise f32) unksp290 < var_f22) {
                                    unksp290 = (bitwise f64) var_f22;
                                } else {
                                    unksp290 = M2C_ERROR(/* unknown instruction: movt.s $f31, $f0, $fcc1 */);
                                }
                            }
                            var_f28_2 = second half of f64;
                            sp158 = (s32) (4096.0f * (f32) ((f64) unksp290 * 255.0));
                            temp_s3->unk2178 = sp158;
                        }
                        if (temp_s7_2 != 0) {
                            temp_f31_2 = sp38 * var_f28_2;
                            sp38 = temp_f31_2;
                            sp15C = (s32) temp_f31_2 | ((s32) sp2C << 0x18) | (((s32) sp30 << 0x10) | ((s32) sp34 << 8));
                            temp_s3->unk28D0 = sp15C;
                        } else {
                            temp_f0_11 = sub_0d960000(sp2C, var_f28_2);
                            sp2C = temp_f0_11;
                            sp160 = (s32) temp_f0_11;
                            temp_s3->unk28D0 = sp160;
                        }
                        var_s4 = (var_s4 == 0) ? 1 : var_s4;
                    }
                    var_s2_3 += 1;
                    goto loop_168;
                }
                var_s2_4 = unksp3C0;
loop_177:
                sp70 = var_f26;
                sp6C = (f32) var_s2_4 + var_f24;
                arg3->unk164 = 0;
                var_f0 = __glCrmRenderPointDepthRGBA(unksp4A0, &sp6C, &sp70, unksp498);
                var_a2 = sp500;
                var_f20 = var_f0;
                if (var_f0 != var_f22) {
                    if (var_f0 != (bitwise f32) unksp2B0) {
                        if ((unksp470 == 0) || ((temp_s1 + (((unksp448 == 0) ? unksp460 : unksp468) * 4))->unk7538 & (1 << (0x1F - (var_s2_4 & 0x1F))))) {
                            if (var_s4 == 0) {
                                if (unksp488->unk7D60 != unksp378) {
                                    unksp488->unk7DB8->unk2060 = (s32) unksp378;
                                    unksp488->unk7DBC->unk2060 = sp8;
                                    unksp488->unk7D60 = sp8;
                                }
                            }
                            sp164 = (s32) sp6C << 6;
                            temp_s3->unk2080 = sp164;
                            sp168 = (s32) sp70 << 6;
                            temp_s3->unk2084 = sp168;
                            if (unksp450 != 3) {
                                if (unksp480 != 0) {
                                    goto block_184;
                                }
                                goto block_238;
                            }
                            sp16C = (s32) sp6C << 6;
                            temp_s3->unk2088 = sp16C;
                            sp170 = (s32) sp70 << 6;
                            temp_s3->unk208C = sp170;
                            if (unksp480 == 0) {
block_238:
                                sp2C = spC->unk0;
                                if (temp_s7_2 != 0) {
                                    sp30 = spC->unk4;
                                    sp34 = spC->unk8;
                                    sp38 = spC->unkC;
                                }
                            } else {
block_184:
                                sp2C = __glCrmRenderPointDepthRGBA((s64) arg3, (f32 *) unksp2B0, (bitwise f32 *) sp6C, (bitwise s64) sp70);
                                if (temp_s7_2 != 0) {
                                    sp30 = __glCrmRenderPointDepthRGBA(unksp3A0);
                                    sp34 = __glCrmRenderPointDepthRGBA(unksp3A8);
                                    sp38 = __glCrmRenderPointDepthRGBA(unksp3B0);
                                }
                            }
                            if (unksp490 != 0) {
                                sp178 = (f64) (64.0f * __glCrmRenderPointDepthRGBA(unksp3F0));
                                sp180 = (s64) sp178;
                                temp_s3->unk21C8 = sp180;
                            }
                            if (unksp478 != 0) {
                                temp_a1_7 = unksp488->unk7D58;
                                temp_a1_8 = temp_a1_7 << 0x10;
                                if (!(temp_a1_7 & 0x8000)) {
                                    temp_f28_3 = temp_s1->unkDD8 / __glCrmRenderPointDepthRGBA(unksp420, (f32 *) temp_a1_8);
                                    unksp268 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp428) * temp_f28_3);
                                    unksp270 = (bitwise f64) (__glCrmRenderPointDepthRGBA(unksp430) * temp_f28_3);
                                    temp_f30_7 = __glCrmRenderPointDepthRGBA(unksp410) * temp_f28_3;
                                    __glCrmRenderPointDepthRGBA(unksp438);
                                    __glBuildAntiAliasIndex((bitwise f32) temp_s1, (bitwise f32) unksp418);
                                } else {
                                    temp_f30_8 = __glCrmRenderPointDepthRGBA(unksp318, (f32 *) temp_a1_8);
                                    temp_f28_4 = __glCrmRenderPointDepthRGBA(unksp320);
                                    temp_f0_12 = __glCrmRenderPointDepthRGBA(unksp328);
                                    sp188 = (f64) unksp338 * temp_f30_8;
                                    sp190 = (s64) sp188 + 0x800;
                                    sp198 = (f64) unksp330 * temp_f28_4;
                                    sp1A0 = (s64) sp198 + 0x800;
                                    sp1A8 = (f32) (536870912.0 * (f64) temp_f0_12);
                                    temp_s3->unk2120 = (s64) (second half of f64);
                                    temp_s3->unk2128 = sp1A0;
                                    sp1AC = (s32) sp1A8 + 0x800;
                                    temp_s3->unk2130 = sp1AC;
                                    if (var_s4 == 0) {
                                        sp1B0 = (s32) unksp2F0;
                                        temp_s3->unk2134 = sp1B0;
                                        unksp300->unk2134 = sp1B0;
                                        if (unksp490 != 0) {
                                            sp1B8 = 0;
                                            var_f26 = second half of f64;
                                            var_f24 = second half of f64;
                                            sp1C0 = 0;
                                            var_f22 = second half of f64;
                                            var_f20 = second half of f64;
                                            temp_s3->unk21D0 = sp1B8;
                                            unksp300->unk21D0 = sp1B8;
                                            temp_s3->unk21D8 = sp1C0;
                                            unksp300->unk21D8 = sp1C0;
                                        }
                                        if (temp_s1->unk700 & 0x20) {
                                            sp1C8 = 0;
                                            temp_s3->unk2180 = sp1C8;
                                            unksp300->unk2180 = sp1C8;
                                            sp1CC = 0;
                                            temp_s3->unk2188 = sp1CC;
                                            unksp300->unk2188 = sp1CC;
                                        }
                                    }
                                }
                            }
                            if ((unksp3F8 != 0) || (unksp3D0 == 0x2008)) {
                                temp_f0_13 = __glCrmRenderPointDepthRGBA(unksp400);
                                var_f5_4 = temp_f0_13;
                                if (temp_s1->unk778 != 0x1102) {
                                    unksp278 = (bitwise f64) temp_f0_13;
                                } else {
                                    temp_a4_5 = temp_s1->unk634;
                                    if (temp_f0_13 < var_f22) {
                                        var_f5_4 = -temp_f0_13;
                                    }
                                    switch (temp_a4_5) { /* switch 4; irregular */
                                    case 0x2601:    /* switch 4 */
                                        unksp278 = (bitwise f64) (temp_s1->unk654 * (sp18 - var_f5_4));
                                        break;
                                    case 0x800:     /* switch 4 */
                                        unksp278 = powf(2.87e-42f, 2.871e-42f, 2.7182817f, -(var_f5_4 * (bitwise f32) unksp260));
                                        break;
                                    case 0x801:     /* switch 4 */
                                        unksp278 = powf(2.87e-42f, 2.871e-42f, 2.7182817f, -(var_f5_4 * (var_f5_4 * sp14)));
                                        break;
                                    }
                                    if ((bitwise f32) unksp278 < var_f22) {
                                        unksp278 = (bitwise f64) var_f22;
                                    } else {
                                        unksp278 = M2C_ERROR(/* unknown instruction: movt.s $f16, $f17, $fcc4 */);
                                    }
                                }
                                sp1D0 = (s32) (4096.0f * (f32) ((f64) unksp278 * 255.0));
                                temp_s3->unk2178 = sp1D0;
                            }
                            if (temp_s7_2 != 0) {
                                temp_f4_2 = sp38 * var_f20;
                                sp38 = temp_f4_2;
                                sp1D4 = (s32) temp_f4_2 | ((s32) sp2C << 0x18) | (((s32) sp30 << 0x10) | ((s32) sp34 << 8));
                                temp_s3->unk28D0 = sp1D4;
                            } else {
                                temp_f0_14 = M2C_ERROR(/* Read from unset register $t9 */)(sp2C, var_f20);
                                sp2C = temp_f0_14;
                                sp1D8 = (s32) temp_f0_14;
                                temp_s3->unk28D0 = sp1D8;
                            }
                            var_s4 = (var_s4 == 0) ? 1 : var_s4;
                        }
                        var_s2_4 -= 1;
                        goto loop_177;
                    }
                    unksp380 = var_s2_4;
                } else {
                    unksp380 = -1;
                }
            } else {
                goto block_76;
            }
        } else {
            var_a2 = -1;
            if (unksp3E8 < -1) {
block_76:
                var_a2 = -1;
            }
        }
        var_s2_5 = 0;
        if (var_a2 != -1) {
            var_s2_5 = var_a2 - unksp408;
            if (temp_s7_2 != 0) {
                if (unksp480 != 0) {
                    temp_s1->unk760C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                    temp_s1->unk7608 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f19, $f25 */);
                    temp_s1->unk7604 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f19, $f23 */);
                    temp_s1->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f19, $f21 */);
                }
                if (unksp478 != 0) {
                    if (!(unksp488->unk7D58 & 0x8000)) {
                        var_f0 = temp_s1->unk76AC;
                        temp_s1->unk7620 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f1 */);
                        temp_s1->unk761C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f31, $f0 */);
                        temp_s1->unk7618 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f31, $f2 */);
                        temp_s1->unk7614 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f31, $f1 */);
                        temp_s1->unk7610 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f31, $f0 */);
                        goto block_84;
                    }
                    unksp488->unk7E88 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f14, $f14, $f15, $f18 */);
                    unksp488->unk7E80 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f15, $f17 */);
                    unksp488->unk7E78 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f15, $f16 */);
                    if (unksp390 == 0) {

                    } else {
                        goto block_86;
                    }
                    goto block_87;
                }
                goto block_85;
            }
            if (unksp480 != 0) {
                temp_s1->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
            }
block_84:
block_85:
            var_t2 = var_s2_5 * 4;
            if (unksp390 != 0) {
block_86:
                temp_s1->unk75FC = (s32) (temp_s1->unk75FC + (temp_s1->unk7674 * var_s2_5));
block_87:
                var_t2 = var_s2_5 * 4;
            }
            if (unksp388 != 0) {
                temp_lo = temp_s1->unk7674 * var_s2_5;
                var_f0 = temp_s1->unk7680;
                temp_s1->unk7714 = (f32) ((f32) temp_lo + temp_s1->unk7714);
                if ((f64) var_f0 != GLUE_F64(var_s2_5, 0U)) {
                    temp_s1->unk7724 = (f32) (temp_s1->unk7724 + ((f32) -temp_lo / var_f0));
                    if (unksp490 == 0) {
                        goto block_92;
                    }
                    goto block_96;
                }
            }
            if (unksp490 != 0) {
block_96:
                temp_s1->unk76E8 = (s32) (temp_s1->unk76E8 + var_t2);
                if (unksp398 != 0) {
                    goto block_97;
                }
            } else {
block_92:
                if (unksp398 == 0) {

                } else {
block_97:
                    temp_s1->unk76F4 = (s32) (var_s2_5 + temp_s1->unk76F4);
                }
            }
            if (unksp3F8 != 0) {
                goto block_99;
            }
            if (unksp3D0 == 0x2008) {
block_99:
                temp_s1->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
            }
            if ((unksp380 != -1) && (temp_a4_6 = (unksp380 - var_a2) + 1, (temp_a4_6 > 0))) {
                if (unksp440 >= unksp310) {
                    if (unksp440 < unksp308) {
                        temp_s1->unk7628 = temp_a4_6;
                        temp_s1->unk75F4 = (s32) var_a2;
                        temp_s1->unk75F8 = (s32) unksp440;
                        var_f0 = temp_s1->unk2FC8(temp_s1, unksp440, var_a2);
                    }
                }
            }
        }
        unksp3E0 -= 1;
        temp_t1 = unksp3C8 + unksp368;
        temp_at_2 = unksp3B8 + unksp358;
        unksp440 += 1;
        temp_t3 = temp_at_2 < 0;
        unksp3C8 = temp_t1;
        unksp3B8 = (temp_t3 == 0) ? temp_at_2 : (temp_at_2 & 0x7FFFFFFF);
        unksp3E8 = (temp_t3 != 0) ? (unksp3E8 + unksp350) : (unksp3E8 + unksp360);
        unksp3C0 = (temp_t3 != 0) ? (unksp3C0 + unksp350) : (unksp3C0 + unksp360);
        if (temp_t1 >= 0) {
            unksp3D8 += unksp340;
            unksp408 += unksp340;
            if (unksp348 != 0) {
                if (unksp480 != 0) {
                    temp_s1->unk760C = (f32) (temp_s1->unk760C + M2C_ERROR(/* unknown instruction: nmsub.s $f13, $f13, $f8, $f15 */));
                    temp_s1->unk7608 = (f32) (temp_s1->unk7608 + M2C_ERROR(/* unknown instruction: nmsub.s $f11, $f11, $f8, $f14 */));
                    temp_s1->unk7604 = (f32) (temp_s1->unk7604 + M2C_ERROR(/* unknown instruction: nmsub.s $f9, $f9, $f8, $f12 */));
                    temp_s1->unk7600 = (f32) (temp_s1->unk7600 + M2C_ERROR(/* unknown instruction: nmsub.s $f7, $f7, $f8, $f10 */));
                }
                if (unksp478 != 0) {
                    if (!(unksp488->unk7D58 & 0x8000)) {
                        temp_s1->unk7620 = (f32) (temp_s1->unk7620 + M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f21, $f11, $f23 */));
                        temp_s1->unk761C = (f32) (temp_s1->unk761C + M2C_ERROR(/* unknown instruction: nmsub.s $f16, $f16, $f11, $f18 */));
                        temp_s1->unk7618 = (f32) (temp_s1->unk7618 + M2C_ERROR(/* unknown instruction: nmsub.s $f14, $f14, $f11, $f17 */));
                        temp_s1->unk7614 = (f32) (temp_s1->unk7614 + M2C_ERROR(/* unknown instruction: nmsub.s $f12, $f12, $f11, $f15 */));
                        temp_s1->unk7610 = (f32) (temp_s1->unk7610 + M2C_ERROR(/* unknown instruction: nmsub.s $f10, $f10, $f11, $f13 */));
                        goto block_112;
                    }
                    M2C_ERROR(/* unknown instruction: nmsub.d $f6, $f6, $f5, $f9 */);
                    M2C_ERROR(/* unknown instruction: nmsub.d $f4, $f4, $f5, $f7 */);
                    unksp488->unk7E88 = (f64) (unksp488->unk7E88 + M2C_ERROR(/* unknown instruction: nmsub.d $f8, $f8, $f5, $f10 */));
                    unksp488->unk7E80 = (f64) (unksp488->unk7E80 + (second half of f64));
                    unksp488->unk7E78 = (f64) (unksp488->unk7E78 + (second half of f64));
                    if (unksp398 == 0) {
                        goto block_142;
                    }
                    goto block_114;
                }
                goto block_112;
            }
            if (unksp480 != 0) {
                temp_s1->unk7600 = (f32) (temp_s1->unk7600 + M2C_ERROR(/* unknown instruction: nmsub.s $f10, $f10, $f11, $f12 */));
block_112:
            }
            if (unksp398 != 0) {
block_114:
                temp_s1->unk76F4 = (s32) (temp_s1->unk76FC + temp_s1->unk76F4);
                if (unksp390 != 0) {
                    goto block_115;
                }
            } else {
block_142:
                if (unksp390 == 0) {

                } else {
block_115:
                    temp_s1->unk75FC = (s32) (temp_s1->unk75FC + (temp_s1->unk766C - (temp_s1->unk7674 * var_s2_5)));
                }
            }
            if (unksp388 != 0) {
                temp_lo_2 = temp_s1->unk7674 * var_s2_5;
                temp_a5 = temp_s1->unk766C;
                var_f0 = temp_s1->unk7680;
                temp_f5 = temp_s1->unk7724;
                temp_s1->unk7714 = (f32) ((f32) (temp_a5 - temp_lo_2) + temp_s1->unk7714);
                if ((f64) var_f0 == (second half of f64)) {
                    temp_s1->unk7724 = (f32) ((f64) temp_f5 + ((f64) -temp_a5 / (second half of f64)));
                    if (unksp490 == 0) {

                    } else {
                        goto block_13;
                    }
                } else {
                    temp_s1->unk7724 = (f32) (temp_f5 + ((f32) (temp_lo_2 - temp_a5) / var_f0));
                    goto block_12;
                }
            } else {
block_12:
                if (unksp490 != 0) {
block_13:
                    temp_s1->unk76E8 = (s32) (temp_s1->unk76F0 + (temp_s1->unk76E8 - (var_s2_5 * 4)));
                }
            }
            if (unksp3F8 != 0) {
                goto block_15;
            }
            if (unksp3D0 == 0x2008) {
block_15:
                temp_s1->unk7624 = (f32) (temp_s1->unk7624 + M2C_ERROR(/* unknown instruction: nmsub.s $f8, $f8, $f9, $f10 */));
            }
        } else {
            var_f5_5 = var_s2_5;
            unksp3C8 &= 0x7FFFFFFF;
            var_a2_2 = unksp3D8 + unksp2F8;
            unksp3D8 = var_a2_2;
            unksp408 += unksp2F8;
            if (unksp348 != 0) {
                if (unksp480 != 0) {
                    temp_s1->unk760C = (f32) (temp_s1->unk760C + M2C_ERROR(/* unknown instruction: nmsub.s $f19, $f19, $f14, $f23 */));
                    temp_s1->unk7608 = (f32) (temp_s1->unk7608 + M2C_ERROR(/* unknown instruction: nmsub.s $f17, $f17, $f14, $f21 */));
                    temp_s1->unk7604 = (f32) (temp_s1->unk7604 + M2C_ERROR(/* unknown instruction: nmsub.s $f15, $f15, $f14, $f18 */));
                    temp_s1->unk7600 = (f32) (temp_s1->unk7600 + M2C_ERROR(/* unknown instruction: nmsub.s $f13, $f13, $f14, $f16 */));
                }
                if (unksp478 != 0) {
                    var_a2_2 = unksp488;
                    if (!(unksp488->unk7D58 & 0x8000)) {
                        var_f0 = M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f0, $f17, $f1 */);
                        temp_s1->unk7620 = (f32) (temp_s1->unk7620 + var_f0);
                        temp_s1->unk761C = (f32) (temp_s1->unk761C + M2C_ERROR(/* unknown instruction: nmsub.s $f25, $f25, $f17, $f29 */));
                        temp_s1->unk7618 = (f32) (temp_s1->unk7618 + M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f21, $f17, $f27 */));
                        temp_s1->unk7614 = (f32) (temp_s1->unk7614 + M2C_ERROR(/* unknown instruction: nmsub.s $f18, $f18, $f17, $f23 */));
                        temp_s1->unk7610 = (f32) (temp_s1->unk7610 + M2C_ERROR(/* unknown instruction: nmsub.s $f16, $f16, $f17, $f19 */));
                        goto block_209;
                    }
                    M2C_ERROR(/* unknown instruction: nmsub.d $f12, $f12, $f11, $f15 */);
                    M2C_ERROR(/* unknown instruction: nmsub.d $f10, $f10, $f11, $f13 */);
                    var_a2_2->unk7E88 = (f64) (var_a2_2->unk7E88 + M2C_ERROR(/* unknown instruction: nmsub.d $f14, $f14, $f11, $f16 */));
                    var_a2_2->unk7E80 = (f64) (var_a2_2->unk7E80 + (second half of f64));
                    var_a2_2->unk7E78 = (f64) (var_a2_2->unk7E78 + (second half of f64));
                    if (unksp398 == 0) {
                        goto block_268;
                    }
                    goto block_211;
                }
                goto block_209;
            }
            if (unksp480 != 0) {
                var_f5_5 = (bitwise u32) (f32) var_f5_5;
                temp_s1->unk7600 = (f32) (temp_s1->unk7600 + M2C_ERROR(/* unknown instruction: nmsub.s $f4, $f4, $f5, $f6 */));
block_209:
            }
            if (unksp398 != 0) {
block_211:
                temp_s1->unk76F4 = (s32) (temp_s1->unk76F8 + temp_s1->unk76F4);
                if (unksp390 != 0) {
                    goto block_212;
                }
            } else {
block_268:
                if (unksp390 == 0) {

                } else {
block_212:
                    temp_s1->unk75FC = (s32) (temp_s1->unk75FC + (temp_s1->unk7670 - (temp_s1->unk7674 * var_s2_5)));
                }
            }
            if (unksp388 != 0) {
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f23
                // At instruction: c.eq.d $f21, $f23
                if (M2C_ERROR()) {
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f23
                    // At instruction: div.d $f21, $f21, $f23
                    if (M2C_ERROR()) {

                    } else {
                        goto block_220;
                    }
                } else {
                    temp_s1->unk7724 = (f32) ((bitwise f32) var_f5_5 + ((f32) var_a2_2 / var_f0));
                    goto block_219;
                }
            } else {
block_219:
                if (unksp490 != 0) {
block_220:
                    temp_s1->unk76E8 = (s32) (temp_s1->unk76EC + (temp_s1->unk76E8 - (var_s2_5 * 4)));
                }
            }
            if (unksp3F8 != 0) {
                goto block_223;
            }
            if (unksp3D0 == 0x2008) {
block_223:
                temp_s1->unk7624 = (f32) (temp_s1->unk7624 + M2C_ERROR(/* unknown instruction: nmsub.s $f27, $f27, $f29, $f31 */));
            }
        }
        if (unksp440 != unksp370) {
            goto loop_18;
        }
    }
    temp_s1->unk75DC = (s32) unksp3B8;
    temp_s1->unk75D8 = (s32) unksp3E8;
    temp_s1->unk75C8 = (s32) unksp3C8;
    temp_s1->unk75C4 = (s32) unksp408;
    return var_f0;
}

f32 SetInitialParameters(void *arg0, void *arg1, void *arg2, f32 fparg0, f32 fparg1, f64 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7, f64 arg_sp0) {
    s64 sp30;
    s64 sp28;
    f64 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f11_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f18;
    f32 temp_f23;
    f32 temp_f25;
    f32 temp_f27;
    f32 temp_f29;
    f32 temp_f29_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f8_2;
    f32 var_f0;
    f32 var_f12;
    f32 var_f13;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f20;
    f32 var_f22;
    f64 temp_f11;
    f64 temp_f14_4;
    f64 temp_f17;
    f64 temp_f29_2;
    f64 temp_f8;
    f64 var_f6;
    s32 temp_a5;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_t0;
    s32 var_v1;
    s64 temp_a4;
    s64 temp_a6;
    s64 var_a7;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    var_f0 = (f32) arg0->unk75BC;
    temp_a5 = arg0->unk76E4;
    var_f6 = fparg3;
    var_f20 = var_f16;
    temp_a6 = temp_a5 & 0x1000;
    temp_t0 = temp_a5 & 0x4000;
    var_f22 = var_f17;
    var_a7 = temp_a5 & 2;
    temp_a4 = temp_a5 & 1;
    if ((f32) arg0->unk75B8 < var_f0) {
        if (temp_a4 != 0) {
            var_v1 = temp_a5 & 8;
            if (var_a7 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f16, $f7 */);
                temp_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f24, $f7 */);
                arg0->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f17, $f5 */);
                arg0->unk762C = temp_f5;
                arg0->unk763C = (f32) (temp_f5 + arg0->unk764C);
                M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f16, $f2 */);
                temp_f3 = M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f24, $f2 */);
                arg0->unk7630 = temp_f3;
                arg0->unk7604 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f17, $f3 */);
                arg0->unk7640 = (f32) (arg0->unk7650 + temp_f3);
                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f16, $f27 */);
                var_f0 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f24, $f27 */);
                arg0->unk7634 = var_f0;
                arg0->unk7608 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f17, $f0 */);
                arg0->unk7644 = (f32) (arg0->unk7654 + var_f0);
                temp_f27 = M2C_ERROR(/* unknown instruction: madd.s $f27, $f31, $f24, $f29 */);
                M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f16, $f29 */);
                arg0->unk7638 = temp_f27;
                arg0->unk7648 = (f32) (arg0->unk7658 + temp_f27);
                arg0->unk760C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f17, $f31 */);
                var_v1 = temp_a5 & 8;
            }
            if (var_v1 != 0) {
                if (!(arg0->unk7D58 & 0x8000)) {
                    var_f16 = arg1->unk8C;
                    M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f16 */);
                    var_f0 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f24, $f31 */);
                    arg0->unk7684 = var_f0;
                    arg0->unk7610 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f22, $f0 */);
                    arg0->unk7698 = (f32) (arg0->unk76AC + var_f0);
                    M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f16 */);
                    temp_f25 = M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f24, $f23 */);
                    arg0->unk7688 = temp_f25;
                    arg0->unk7614 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f22, $f25 */);
                    arg0->unk769C = (f32) (arg0->unk76B0 + temp_f25);
                    M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f16 */);
                    var_f19 = M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f22, $f18 */);
                    var_f18 = M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f24, $f17 */);
                    arg0->unk768C = var_f18;
                    arg0->unk7618 = var_f19;
                    var_f17 = arg0->unk76B4 + var_f18;
                    arg0->unk76A0 = var_f17;
                    M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                    var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f24, $f10 */);
                    var_f12 = arg0->unk76D0;
                    arg0->unk7690 = var_f13;
                    arg0->unk761C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f22, $f13 */);
                    arg0->unk76A4 = (f32) (arg0->unk76B8 + var_f13);
                    temp_f10 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f12, $f24, $f11 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f20, $f11 */);
                    arg0->unk7694 = temp_f10;
                    arg0->unk76A8 = (f32) (arg0->unk76BC + temp_f10);
                    arg0->unk7620 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f22, $f12 */);
                } else {
                    var_f20 = second half of f64;
                    M2C_ERROR(/* unknown instruction: madd.d $f16, $f21, $f15, $f8 */);
                    var_f17 = (bitwise f32) arg0->unk7EA8;
                    var_f16 = second half of f64;
                    temp_f11 = M2C_ERROR(/* unknown instruction: madd.d $f11, $f17, $f10, $f8 */);
                    temp_f8 = M2C_ERROR(/* unknown instruction: madd.d $f8, $f13, $f7, $f8 */);
                    var_f13 = second half of f64;
                    M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f15, $f5 */);
                    M2C_ERROR(/* unknown instruction: madd.d $f9, $f19, $f10, $f5 */);
                    M2C_ERROR(/* unknown instruction: madd.d $f5, $f18, $f7, $f5 */);
                    var_f12 = M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f21, $f14 */);
                    arg0->unk7EE0 = (f64) (second half of f64);
                    arg0->unk7ED0 = temp_f11;
                    arg0->unk7EC0 = temp_f8;
                    arg0->unk7EE8 = (f64) ((second half of f64) + (f64) (second half of f64));
                    arg0->unk7E88 = (bitwise f64) var_f12;
                    arg0->unk7ED8 = (f64) (arg0->unk7EA0 + temp_f11);
                    var_f6 = second half of f64;
                    arg0->unk7E80 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f9, $f9, $f17, $f14 */);
                    arg0->unk7EC8 = (f64) (arg0->unk7E90 + temp_f8);
                    arg0->unk7E78 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f13, $f14 */);
                }
            }
        } else if (var_a7 != 0) {
            temp_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f7, $f24, $f5 */);
            M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f16, $f5 */);
            arg0->unk762C = temp_f4;
            arg0->unk763C = (f32) (temp_f4 + arg0->unk764C);
            arg0->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f17, $f7 */);
        }
        if (temp_t0 != 0) {
            // Error: negative shift count
            // At instruction: bgez $a2, .L0d9611ec
            if (M2C_ERROR()) {
                sp20 = var_f6;
                sp28 = temp_a6;
                sp30 = (s64) temp_a5;
                temp_ret = __glPolygonOffsetZ(arg0, (s64) arg0->unk700 << 0x27, temp_a4, temp_a5, temp_a6, var_a7, (f64) var_f12, var_f13, var_f20, var_f22, (f64) var_f16, (bitwise f64) var_f17, var_f18, var_f19);
                var_f0 = (bitwise f32) temp_ret;
                arg0->unk75FC = temp_ret;
            } else {
                M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f20, $f5 */);
                arg0->unk75FC = (s32) (s64) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f22, $f4 */);
            }
            temp_f8_2 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f24, $f5 */);
            arg0->unk766C = (s32) temp_f8_2;
            arg0->unk7670 = (s32) (arg0->unk7680 + temp_f8_2);
        }
        if ((temp_a6 != 0) || ((temp_a5 & 0x2008) == 0x2008)) {
            temp_f11_2 = M2C_ERROR(/* unknown instruction: madd.s $f11, $f12, $f24, $f10 */);
            M2C_ERROR(/* unknown instruction: madd.s $f9, $f6, $f20, $f10 */);
            arg0->unk76D4 = temp_f11_2;
            arg0->unk76D8 = (f32) (arg0->unk76E0 + temp_f11_2);
            arg0->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f22, $f12 */);
            return var_f0;
        }
        /* Duplicate return node #29. Try simplifying control flow for better match */
        return var_f0;
    }
    if (temp_a4 != 0) {
        var_a7 = temp_a5 & 8;
        if (var_a7 != 0) {
            M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f16, $f31 */);
            var_f0 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f17, $f29 */);
            temp_f29 = M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f24, $f31 */);
            arg0->unk7600 = var_f0;
            arg0->unk762C = temp_f29;
            arg0->unk763C = (f32) (temp_f29 - arg0->unk764C);
            M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f16, $f25 */);
            temp_f23 = M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f24, $f25 */);
            var_f17 = arg0->unk7654;
            arg0->unk7604 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f17, $f23 */);
            arg0->unk7630 = temp_f23;
            arg0->unk7640 = (f32) (temp_f23 - arg0->unk7650);
            M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f16, $f17 */);
            temp_f14 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f24, $f17 */);
            var_f16 = arg0->unk7668;
            arg0->unk7608 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f22, $f14 */);
            arg0->unk7634 = temp_f14;
            arg0->unk7644 = (f32) (temp_f14 - var_f17);
            temp_f14_2 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f16, $f24, $f15 */);
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f20, $f15 */);
            var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f22, $f16 */);
            arg0->unk7638 = temp_f14_2;
            arg0->unk7648 = (f32) (temp_f14_2 - arg0->unk7658);
            arg0->unk760C = var_f13;
            var_a7 = temp_a5 & 8;
        }
        if (var_a7 != 0) {
            if (!(arg0->unk7D58 & 0x8000)) {
                var_f19 = arg0->unk76AC;
                M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f9 */);
                temp_f18 = M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f24, $f19 */);
                arg0->unk7610 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f22, $f18 */);
                arg0->unk7684 = temp_f18;
                var_f18 = temp_f18 - var_f19;
                arg0->unk7698 = var_f18;
                var_f17 = arg1->unk34;
                M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f9 */);
                var_f16 = M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f22, $f14 */);
                temp_f14_3 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f24, $f15 */);
                arg0->unk7614 = var_f16;
                arg0->unk7688 = temp_f14_3;
                arg0->unk769C = (f32) (temp_f14_3 - arg0->unk76B0);
                var_f13 = arg1->unk38;
                M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f9 */);
                var_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f22, $f10 */);
                temp_f10_2 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f24, $f11 */);
                arg0->unk7618 = var_f12;
                arg0->unk768C = temp_f10_2;
                arg0->unk76A0 = (f32) (temp_f10_2 - arg0->unk76B4);
                M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                temp_f2 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f24, $f5 */);
                arg0->unk761C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f22, $f2 */);
                arg0->unk7690 = temp_f2;
                arg0->unk76A4 = (f32) (temp_f2 - arg0->unk76B8);
                temp_f2_2 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f4, $f24, $f3 */);
                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f20, $f3 */);
                arg0->unk7694 = temp_f2_2;
                arg0->unk76A8 = (f32) (temp_f2_2 - arg0->unk76BC);
                arg0->unk7620 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f22, $f4 */);
            } else {
                var_f20 = second half of f64;
                temp_f29_2 = M2C_ERROR(/* unknown instruction: madd.d $f29, $f1, $f31, $f14 */);
                var_f0 = (bitwise f32) arg0->unk7EA8;
                temp_f17 = M2C_ERROR(/* unknown instruction: madd.d $f17, $f0, $f21, $f14 */);
                var_f12 = second half of f64;
                temp_f14_4 = M2C_ERROR(/* unknown instruction: madd.d $f14, $f25, $f15, $f14 */);
                var_f22 = second half of f64;
                M2C_ERROR(/* unknown instruction: madd.d $f23, $f23, $f31, $f13 */);
                M2C_ERROR(/* unknown instruction: madd.d $f16, $f19, $f21, $f13 */);
                M2C_ERROR(/* unknown instruction: madd.d $f13, $f18, $f15, $f13 */);
                arg0->unk7EC0 = temp_f14_4;
                arg0->unk7ED0 = temp_f17;
                M2C_ERROR(/* unknown instruction: madd.d $f16, $f16, $f0, $f27 */);
                arg0->unk7EE0 = temp_f29_2;
                var_f13 = M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f25, $f27 */);
                arg0->unk7EE8 = (f64) (temp_f29_2 - arg0->unk7EB0);
                var_f17 = (f32) (temp_f17 - arg0->unk7EA0);
                var_f16 = second half of f64;
                arg0->unk7E88 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f23, $f23, $f1, $f27 */);
                arg0->unk7ED8 = (f64) var_f17;
                arg0->unk7E80 = (bitwise f64) (second half of f64);
                arg0->unk7EC8 = (f64) (temp_f14_4 - arg0->unk7E90);
                arg0->unk7E78 = (bitwise f64) var_f13;
            }
        }
    } else if (var_a7 != 0) {
        temp_f5_2 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f8, $f24, $f7 */);
        M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f16, $f7 */);
        arg0->unk762C = temp_f5_2;
        arg0->unk763C = (f32) (temp_f5_2 - arg0->unk764C);
        arg0->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f17, $f8 */);
    }
    if (temp_t0 != 0) {
        // Error: negative shift count
        // At instruction: bgez $t2, .L0d961478
        if (M2C_ERROR()) {
            sp20 = var_f6;
            sp28 = temp_a6;
            sp30 = (s64) temp_a5;
            temp_ret_2 = __glPolygonOffsetZ(arg0, temp_a4, (s64) temp_a5, (s32) temp_a6, var_a7, (bitwise s64) var_f12, (f64) var_f13, var_f20, var_f22, var_f16, (f64) var_f17, (bitwise f64) var_f18, var_f19);
            var_f0 = (bitwise f32) temp_ret_2;
            arg0->unk75FC = temp_ret_2;
        } else {
            M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f20, $f5 */);
            arg0->unk75FC = (s32) (s64) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f22, $f4 */);
        }
        temp_f29_3 = M2C_ERROR(/* unknown instruction: madd.s $f29, $f4, $f24, $f5 */);
        arg0->unk766C = (s32) temp_f29_3;
        arg0->unk7670 = (s32) (temp_f29_3 - arg0->unk7680);
    }
    if ((temp_a6 != 0) || ((temp_a5 & 0x2008) == 0x2008)) {
        temp_f0_2 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f2, $f24, $f1 */);
        M2C_ERROR(/* unknown instruction: madd.s $f31, $f6, $f20, $f1 */);
        arg0->unk76D4 = temp_f0_2;
        temp_f0 = temp_f0_2 - arg0->unk76E0;
        arg0->unk76D8 = temp_f0;
        arg0->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f22, $f2 */);
        return temp_f0;
    }
    return var_f0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x348, 0x34c, 0x350, 0x354, 0x358, 0x35c, 0x360, 0x364, 0x368, 0x36c, 0x388, 0x38c], gap at: 0x378. */
void __glCrmFillAATriangle(void *arg0, f32 *arg1, f32 *arg2, f32 *arg3, s64 arg4) {
    s64 sp3A0;
    s64 sp398;
    s64 sp390;
    s64 sp340;
    s64 sp338;
    s64 sp330;
    s64 sp328;
    s64 sp320;
    s64 sp318;
    s64 sp310;
    s64 sp308;
    s64 sp300;
    s64 sp2F8;
    s64 sp2F0;
    s64 sp2E8;
    s64 sp2E0;
    s64 sp2D8;
    f64 sp2D0;
    f64 sp2C8;
    f64 sp2C0;
    f64 sp2B8;
    f64 sp2B0;
    f64 sp2A8;
    f64 sp2A0;
    f64 sp298;
    f64 sp290;
    f64 sp288;
    f64 sp280;
    f64 sp278;
    f64 sp270;
    f64 sp268;
    f64 sp260;
    f64 sp258;
    f64 sp250;
    f64 sp248;
    f64 sp240;
    f64 sp238;
    f64 sp230;
    f64 sp228;
    f64 sp220;
    f64 sp218;
    f64 sp210;
    f64 sp208;
    f32 sp204;
    f32 sp200;
    s32 sp1FC;
    s32 sp1F8;
    f64 sp1F0;
    f64 sp1E8;
    f64 sp1E0;
    f64 sp1D8;
    f64 sp1D0;
    f64 sp1C8;
    f32 sp1C0;
    f32 sp1BC;
    f32 sp1B8;
    f32 sp1B4;
    f32 sp1B0;
    f32 sp1AC;
    f32 sp1A8;
    f32 sp1A4;
    f32 sp1A0;
    f32 sp19C;
    f32 sp198;
    s32 sp190;
    void *sp188;
    ? sp10;
    f32 *temp_a3;
    f32 temp_f0_5;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f11;
    f32 temp_f11_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f18_3;
    f32 temp_f25;
    f32 temp_f27;
    f32 temp_f29;
    f32 temp_f31;
    f32 temp_f5;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f11;
    f32 var_f11_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f12_3;
    f32 var_f12_4;
    f32 var_f7;
    f32 var_f7_2;
    f32 var_f8;
    f32 var_f8_2;
    f32 var_f9;
    f32 var_f9_2;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f4;
    f64 var_f10_4;
    f64 var_f11_3;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_f21;
    s32 temp_f31_2;
    s32 temp_ra;
    s64 temp_a1_3;
    s64 temp_a2_2;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a1;
    s64 var_a7;
    void *temp_a1;
    void *var_a3;

    temp_f12 = arg0->unk75F0;
    temp_f13 = arg0->unk75EC;
    temp_f14 = arg0->unk75E8;
    temp_f15 = arg0->unk75E4;
    temp_a5 = arg0->unk7DBC;
    temp_a6 = arg0->unk7DB8;
    sp188 = arg0;
    sp330 = (s64) temp_a6;
    sp338 = (s64) temp_a5;
    sp340 = arg4;
    temp_f5 = M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f5, $f6, $f7 */);
    sp2B8 = (f64) temp_f15;
    sp2D0 = (f64) temp_f14;
    sp2C0 = (f64) temp_f13;
    sp2C8 = (f64) temp_f12;
    if ((temp_f5 != 0.0f) && (temp_f16 = arg0->unkDD8 / temp_f5, sp318 = (s64) arg1->unk8, sp328 = (s64) arg0->unk76E4, sp320 = (s64) arg2->unk8, sp2B0 = (bitwise f64) temp_f16, ((bitwise s32) __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x118), arg1, arg2, (s64) arg3, temp_a5, (s64) temp_a6, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16) != 0)) && ((bitwise s32) __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x128), arg2, arg3, (s64) arg1) != 0) && ((bitwise s32) __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x138), arg3, arg1, (s64) arg2) != 0)) {
        sp2F0 = 4;
        temp_a2 = arg0->unk774 == 0x1102;
        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x150), (temp_a2 != 0) ? (f32 *)8 : (f32 *)4, (f32 *) temp_a2, 8);
        sp310 = sp328 & 8;
        var_a0 = sp328 & 2;
        if (sp328 & 1) {
            if (var_a0 != 0) {
                arg0->unk765C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f21, $f4 */);
                arg0->unk764C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f3, $f3, $f25, $f2 */);
                arg0->unk7660 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f31, $f31, $f1, $f21 */);
                arg0->unk7650 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f31, $f25 */);
                arg0->unk7664 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f23, $f23, $f29, $f21 */);
                arg0->unk7654 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f27, $f27, $f23, $f25 */);
                sp3A0 = var_a0;
                sp308 = (s64) arg3->unk8;
                arg0->unk7668 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f19, $f21 */);
                arg0->unk7658 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f18, $f18, $f23, $f25 */);
                __glCrmRenderPointDepthRGBA((s64) &sp10, arg1, arg2, (s64) arg3, (s32) sp318);
                __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x10), arg1, arg2, (s64) arg3);
                __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x20), arg1, arg2, (s64) arg3);
                __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x30), arg1, arg2, (s64) arg3);
                var_a0 = sp3A0;
            } else {
                temp_a3 = arg0->unk6DA8->unk8;
                arg0->unk7600 = (f32) temp_a3->unk0;
                arg0->unk7604 = (f32) temp_a3->unk4;
                arg0->unk7608 = (f32) temp_a3->unk8;
                arg0->unk760C = (f32) temp_a3->unkC;
            }
            if ((sp310 == 0) || (temp_a5_2 = arg0->unk7D58, !(temp_a5_2 & 0x8000))) {
                if (arg0->unk6E38 != 0) {
                    if (!(arg0->unk7D58 & 0x8000)) {
                        M2C_ERROR(/* unknown instruction: msub.s $f5, $f3, $f5, $f0 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f3, $f3, $f4, $f18 */);
                        arg0->unk76C0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f3, $f3, $f5, $f25 */);
                        arg0->unk76AC = (f32) M2C_ERROR(/* unknown instruction: msub.s $f4, $f4, $f3, $f29 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f4, $f2, $f4, $f0 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f3, $f18 */);
                        arg0->unk76C4 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f4, $f25 */);
                        arg0->unk76B0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f3, $f3, $f2, $f29 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f3, $f1, $f3, $f0 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f2, $f18 */);
                        sp290 = (bitwise f64) arg3->unk8C;
                        arg0->unk76C8 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f3, $f25 */);
                        arg0->unk76B4 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f1, $f29 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f23, $f27, $f23, $f0 */);
                        M2C_ERROR(/* unknown instruction: msub.s $f27, $f27, $f31, $f18 */);
                        sp270 = (bitwise f64) ((bitwise f32) sp2D0 * (bitwise f32) sp2B0);
                        sp268 = (bitwise f64) ((bitwise f32) sp2C0 * (bitwise f32) sp2B0);
                        temp_a1 = arg0 + 0x75B8;
                        sp2E8 = (s64) temp_a1;
                        sp2A8 = (bitwise f64) arg2->unk8C;
                        arg0->unk76CC = (f32) M2C_ERROR(/* unknown instruction: msub.s $f19, $f19, $f23, $f25 */);
                        arg0->unk76B8 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f21, $f21, $f27, $f29 */);
                        sp298 = (bitwise f64) (second half of f64);
                        sp260 = (bitwise f64) ((bitwise f32) sp2C8 * (bitwise f32) sp2B0);
                        sp258 = (bitwise f64) ((bitwise f32) sp2B8 * (bitwise f32) sp2B0);
                        temp_f18 = (second half of f64) * ((second half of f64) * sub_0d960000((bitwise f32) arg0, (bitwise f32) temp_a1));
                        arg1->unkB4 = temp_f18;
                        sp248 = (bitwise f64) temp_f18;
                        temp_f18_2 = (bitwise f32) sp2A8 * ((second half of f64) * arg0->unk30E8(arg0, temp_a1));
                        arg2->unkB4 = temp_f18_2;
                        sp250 = (bitwise f64) temp_f18_2;
                        M2C_ERROR(/* unknown instruction: nmsub.s $f27, $f27, $f19, $f25 */);
                        M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f21, $f19, $f25 */);
                        arg3->unkB4 = (f32) ((bitwise f32) sp290 * (arg3->unk3C * arg0->unk30E8(arg0, temp_a1)));
                        arg0->unk76BC = (f32) M2C_ERROR(/* unknown instruction: msub.s $f23, $f23, $f21, $f29 */);
                        arg0->unk76D0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f21, $f21, $f27, $f29 */);
                        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x50), arg1, arg2, (s64) arg3);
                        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x60), arg1, arg2, (s64) arg3);
                        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x80), arg1, arg2, (s64) arg3);
                        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x70), arg1, arg2, (s64) arg3);
                        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x90), arg1, arg2, (s64) arg3);
                    }
                }
            } else {
                temp_a1_2 = *arg0->unk9B4;
                var_a3 = arg0->unk6E30;
                if ((temp_a1_2 == 0x8062) || (temp_a1_2 == 0x1E01)) {
                    temp_f18_3 = arg0->unk7848;
                    temp_ra = (arg0->unk7E68 & ~3) | 1;
                    sp190 = temp_ra;
                    sp330->unk2110 = temp_ra;
                    sp338->unk2110 = temp_ra;
                    arg0->unk760C = temp_f18_3;
                    if (var_a0 != 0) {
                        sp198 = sp318->unk0;
                        sp19C = sp318->unk4;
                        sp1A4 = temp_f18_3;
                        sp1A0 = sp318->unk8;
                        sp398 = (s64) var_a3;
                        sp1A8 = sp320->unk0;
                        sp1AC = sp320->unk4;
                        sp1B4 = temp_f18_3;
                        sp1B0 = sp320->unk8;
                        __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x30), arg1, arg2, (s64) arg3, (s32) sp310, temp_a5_2 << 0x10);
                        sp318 = (s64) &sp198;
                        sp320 = (s64) &sp1A8;
                        arg0->unk7668 = 0.0f;
                        arg0->unk7658 = 0.0f;
                    }
                }
                var_f12 = arg1->unk3C;
                var_f11 = arg3->unk3C;
                var_f10 = arg2->unk3C;
                if ((f64) var_f12 == 1.0) {
                    if ((f64) var_f10 == 1.0) {
                        if ((f64) var_f11 != 1.0) {
                            goto block_44;
                        }
                        var_f9 = arg3->unk30;
                        var_f6 = (f64) arg3->unk8C;
                        var_f8 = arg2->unk30;
                        var_f7 = arg1->unk30;
                        var_f4 = (f64) (second half of f64);
                        var_f5 = second half of f64;
                        if (var_a3->unkE8 != 1) {
                            sp1C0 = arg3->unk34;
                            sp1BC = arg2->unk34;
                            sp1B8 = arg1->unk34;
                        }
                    } else {
                        goto block_45;
                    }
                } else {
block_44:
block_45:
                    if (fabsf(var_f12) < 0.0000076293945f) {
                        var_f12 = M2C_ERROR(/* unknown instruction: movf.s $f29, $f4, $fcc5 */);
                    }
                    if (fabsf(var_f10) < 0.0000076293945f) {
                        var_f10 = M2C_ERROR(/* unknown instruction: movf.s $f1, $f4, $fcc7 */);
                    }
                    if (fabsf(var_f11) < 0.0000076293945f) {
                        var_f11 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f4, $fcc1 */);
                    }
                    temp_f13_2 = 1.0f / var_f11;
                    temp_f14_2 = 1.0f / var_f10;
                    temp_f15_2 = 1.0f / var_f12;
                    var_f6 = (f64) (arg3->unk8C * var_f11);
                    var_f9 = arg3->unk30 * temp_f13_2;
                    var_f8 = arg2->unk30 * temp_f14_2;
                    var_f4 = (f64) (second half of f64);
                    var_f5 = second half of f64;
                    var_f7 = (second half of f64) * temp_f15_2;
                    if (var_a3->unkE8 != 1) {
                        sp1C0 = arg3->unk34 * temp_f13_2;
                        sp1BC = arg2->unk34 * temp_f14_2;
                        sp1B8 = arg1->unk34 * temp_f15_2;
                    }
                }
                if (var_a3->unk4 != 0x2901) {
                    var_f8_2 = var_f8 + 1.0f;
                    var_f9_2 = var_f9 + 1.0f;
                    M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc3 */);
                    var_f7_2 = var_f7 + 1.0f;
                    var_f11_2 = M2C_ERROR(/* unknown instruction: movz.s $f11, $f9, $a1 */);
                    var_f10_2 = var_f7_2;
                    if (var_f11_2 < var_f7_2) {
                        var_f11_2 = var_f7_2;
                    }
                    var_a1 = 1;
                    if (!(var_f11_2 > 7.0f)) {
                        M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc6 */);
                        temp_f11 = M2C_ERROR(/* unknown instruction: movz.s $f11, $f13, $a1 */);
                        if (!(var_f10_2 < temp_f11)) {
                            var_f10_2 = temp_f11;
                        }
                        var_a1 = 1;
                        if (!(var_f10_2 < -7.0f)) {
                            var_a1 = 0;
                        }
                    }
                    sp2D8 = var_a1;
                    if (var_a3->unkE8 != 1) {
                        goto block_61;
                    }
                    goto block_99;
                }
                var_f12_2 = M2C_ERROR(/* unknown instruction: movz.s $f12, $f9, $a1 */);
                sp240 = var_f6;
                sp278 = var_f5;
                sp280 = var_f4;
                sp398 = (s64) var_a3;
                if (var_f7 < var_f12_2) {
                    sp238 = (bitwise f64) var_f7;
                    unksp370 = (bitwise f64) var_f9;
                    var_f12_2 = var_f7;
                    unksp378 = (bitwise f64) var_f8;
                } else {
                    unksp370 = (bitwise f64) var_f9;
                    unksp378 = (bitwise f64) var_f8;
                    sp238 = (bitwise f64) var_f7;
                }
                temp_f31 = (f32) (s32) ((f32) __glFloor(var_a3->unkE8, M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc0 */), var_f12_2) + -1.0f);
                var_f8_2 = (second half of f64) - temp_f31;
                var_f9_2 = (bitwise f32) unksp370 - temp_f31;
                var_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc2 */);
                if (M2C_ERROR(/* unknown instruction: movz.s $f11, $f9, $a1 */) < ((bitwise f32) sp238 - temp_f31)) {

                }
                var_a3 = (void *) sp398;
                var_f5 = sp278;
                var_f4 = second half of f64;
                var_f6 = sp240;
                var_f7_2 = second half of f64;
                sp2D8 = M2C_ERROR(/* unknown instruction: movf $t0, $zero, $fcc3 */);
                if (var_a3->unkE8 == 1) {
block_99:
                    sp1C0 = 1.0f;
                    sp1BC = 1.0f;
                    var_a7 = 0;
                    sp1B8 = 1.0f;
                } else {
block_61:
                    if (var_a3->unk8 != 0x2901) {
                        M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc1 */);
                        temp_f11_2 = sp1B8 + 1.0f;
                        temp_f14_3 = M2C_ERROR(/* unknown instruction: movz.s $f14, $f13, $a0 */);
                        sp1C0 += 1.0f;
                        var_f12_3 = temp_f11_2;
                        sp1BC += 1.0f;
                        sp1B8 = temp_f11_2;
                        if (temp_f14_3 < temp_f11_2) {
                            var_f10_3 = temp_f11_2;
                        } else {
                            var_f10_3 = temp_f14_3;
                        }
                        var_a0_2 = 1;
                        if (!(var_f10_3 > 7.0f)) {
                            M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc4 */);
                            temp_f10 = M2C_ERROR(/* unknown instruction: movz.s $f10, $f15, $a0 */);
                            if (!(var_f12_3 < temp_f10)) {
                                var_f12_3 = temp_f10;
                            }
                            var_a0_2 = 1;
                            if (!(var_f12_3 < -7.0f)) {
                                var_a0_2 = 0;
                            }
                        }
                        var_a7 = var_a0_2;
                    } else {
                        var_f12_4 = sp1B8;
                        unksp370 = (bitwise f64) var_f9_2;
                        temp_f10_2 = M2C_ERROR(/* unknown instruction: movz.s $f10, $f13, $a0 */);
                        unksp378 = (bitwise f64) var_f8_2;
                        sp238 = (bitwise f64) var_f7_2;
                        sp240 = var_f6;
                        sp278 = var_f5;
                        sp280 = var_f4;
                        if (!(var_f12_4 < temp_f10_2)) {
                            var_f12_4 = temp_f10_2;
                        }
                        temp_f13_3 = (f32) (s32) ((f32) __glFloor(M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc5 */), (bitwise f32) var_a1, var_f12_4, sp1C0) + -1.0f);
                        sp1C0 -= temp_f13_3;
                        sp1BC -= temp_f13_3;
                        M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc7 */);
                        temp_f12_2 = sp1B8 - temp_f13_3;
                        sp1B8 = temp_f12_2;
                        if (!(M2C_ERROR(/* unknown instruction: movz.s $f10, $f15, $a0 */) < temp_f12_2)) {

                        }
                        var_f5 = sp278;
                        var_f4 = second half of f64;
                        var_f7_2 = (bitwise f32) sp238;
                        var_f6 = second half of f64;
                        var_f9_2 = (bitwise f32) unksp370;
                        var_f8_2 = second half of f64;
                        var_a7 = M2C_ERROR(/* unknown instruction: movf $a7, $zero, $fcc0 */);
                    }
                }
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f13
                // At instruction: c.le.d $f4, $f13
                if (M2C_ERROR() || (// Error: Tried to use a double-precision instruction with odd-numbered float register $f13, // At instruction: c.le.d $f5, $f13, M2C_ERROR()) || (// Error: Tried to use a double-precision instruction with odd-numbered float register $f13, // At instruction: c.le.d $f6, $f13, M2C_ERROR())) {
                    var_f11_3 = M2C_ERROR(/* unknown instruction: movz.d $f11, $f6, $a0 */);
                    if (var_f4 < var_f11_3) {
                        sp280 = var_f4;
                        unksp370 = (bitwise f64) var_f9_2;
                        unksp378 = (bitwise f64) var_f8_2;
                        sp238 = (bitwise f64) var_f7_2;
                        sp240 = var_f6;
                        sp278 = var_f5;
                        var_f11_3 = var_f4;
                    } else {
                        unksp370 = (bitwise f64) var_f9_2;
                        unksp378 = (bitwise f64) var_f8_2;
                        sp238 = (bitwise f64) var_f7_2;
                        sp240 = var_f6;
                        sp278 = var_f5;
                        sp280 = var_f4;
                    }
                    sp390 = var_a7;
                    temp_f0 = (f64) (0.0000076293945f - (f32) __glFloor(M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc2 */), (f32) var_f11_3, 0.0f));
                    var_f6 = temp_f0 + sp240;
                    var_f7_2 = second half of f64;
                    var_f4 = temp_f0 + (second half of f64);
                    var_f5 = second half of f64;
                }
                M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc4 */);
                var_f10_4 = M2C_ERROR(/* unknown instruction: movz.d $f10, $f6, $a0 */);
                if (var_f10_4 < var_f4) {
                    var_f10_4 = var_f4;
                }
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f13
                // At instruction: c.eq.d $f10, $f13
                if (M2C_ERROR()) {
                    if (var_f10_4 != 1.0) {
                        temp_f2 = 1.0 / var_f10_4;
                        sp238 = (bitwise f64) var_f7_2;
                        sp278 = temp_f2 * var_f5;
                        temp_f4 = temp_f2 * (second half of f64);
                        sp1D0 = second half of f64;
                        sp280 = temp_f4;
                        sp240 = temp_f2 * var_f6;
                        sp1C8 = temp_f4;
                    } else {
                        sp280 = var_f4;
                        sp278 = var_f5;
                        sp1D0 = var_f5;
                        sp1C8 = var_f4;
                        sp238 = (bitwise f64) var_f7_2;
                        goto block_84;
                    }
                } else {
                    sp280 = var_f4;
                    sp278 = var_f5;
                    sp1D0 = var_f5;
                    sp1C8 = var_f4;
                    sp238 = (bitwise f64) var_f7_2;
block_84:
                    sp240 = var_f6;
                }
                temp_f0_2 = (f64) sp1B8 * sp280;
                M2C_ERROR(/* unknown instruction: nmsub.d $f1, $f0, $f23, $f19 */);
                M2C_ERROR(/* unknown instruction: nmsub.d $f6, $f16, $f18, $f19 */);
                sp218 = temp_f0_2;
                M2C_ERROR(/* unknown instruction: nmsub.d $f8, $f17, $f18, $f19 */);
                sp1E8 = temp_f0_2;
                temp_f2_2 = (f64) sp1BC * (second half of f64);
                sp1E0 = second half of f64;
                M2C_ERROR(/* unknown instruction: nmsub.d $f25, $f2, $f23, $f19 */);
                temp_a1_3 = (sp2D8 != 0) ? sp2F0 : sp2D8;
                sp1D8 = (second half of f64) * (second half of f64);
                temp_a2_2 = (var_a7 == 0) ? var_a7 : sp2F0;
                arg0->unk7EF4 = (s32) temp_a2_2;
                sp1FC = (s32) temp_a2_2;
                arg0->unk7EF0 = (s32) temp_a1_3;
                sp1F8 = (s32) temp_a1_3;
                arg0->unk7EB8 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f7, $f7, $f29, $f31 */);
                arg0->unk7EB0 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f29, $f29, $f2, $f5 */);
                sp220 = temp_f2_2;
                sp1F0 = temp_f2_2;
                sp210 = (f64) sp1C0 * (second half of f64);
                arg0->unk7E98 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f21, $f21, $f31, $f8 */);
                arg0->unk7EA8 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f27, $f27, $f31, $f25 */);
                arg0->unk7EA0 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f25, $f25, $f5, $f1 */);
                arg0->unk7E90 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f4, $f4, $f5, $f6 */);
                __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0xA0), arg1, arg2, (s64) arg3);
                __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0xC0), arg1, arg2, (s64) arg3);
                __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0xE0), arg1, arg2, (s64) arg3);
            }
        } else if (var_a0 != 0) {
            arg0->unk764C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f18, $f18, $f17, $f21 */);
            arg0->unk765C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f19, $f21 */);
            __glCrmRenderPointDepthRGBA((s64) &sp10, arg1, arg2, (s64) arg3);
        } else {
            arg0->unk7600 = (f32) *arg0->unk6DA8->unk8;
        }
        if (sp328 & 0x4000) {
            temp_f25 = M2C_ERROR(/* unknown instruction: nmsub.s $f25, $f25, $f27, $f29 */);
            temp_f21 = (s32) temp_f25;
            arg0->unk7680 = temp_f25;
            arg0->unk7674 = temp_f21;
            arg0->unk7678 = (s32) (temp_f21 << 5);
            arg0->unk767C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f23, $f23, $f27, $f29 */);
            __glCrmRenderPointDepthRGBA((s64) (&sp10 + 0x40), arg1, arg2, (s64) arg3);
        }
        temp_a2_3 = sp328 & 0x1000;
        if (temp_a2_3 != 0) {
            goto block_28;
        }
        if ((sp328 & 0x2008) == 0x2008) {
block_28:
            temp_a4 = arg0->unk778;
            if (temp_a4 == 0x1102) {
                sp204 = arg2->unk68;
                sp200 = arg1->unk68;
            } else {
                temp_f0_3 = sub_0d960000((bitwise f32) arg0, (bitwise f32) arg1, temp_a2_3, 0x1102, temp_a4);
                sp288 = temp_f0_3;
                sp200 = (bitwise f32) temp_f0_3;
                temp_f0_4 = arg0->unk30F8(arg0, arg2);
                unksp380 = temp_f0_4;
                sp204 = (bitwise f32) temp_f0_4;
                arg0->unk30F8(arg0, arg3);
            }
            arg0->unk76E0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f25, $f25, $f27, $f23 */);
            arg0->unk76DC = (f32) M2C_ERROR(/* unknown instruction: msub.s $f23, $f23, $f27, $f29 */);
            __glCrmRenderPointDepthRGBA(&sp10 + 0x100, arg1, arg2, (s64) arg3);
        }
        temp_f0_5 = arg2->unk84;
        temp_f29 = arg1->unk84;
        temp_f27 = arg0->unkDD4;
        temp_f31_2 = (s32) (temp_f29 + temp_f27);
        sp230 = (bitwise f64) (temp_f29 - temp_f0_5);
        sp300 = (s64) (s32) (arg3->unk84 + temp_f27);
        sp228 = (bitwise f64) (arg1->unk80 - arg2->unk80);
        sp2E0 = (s64) (s32) (temp_f0_5 + temp_f27);
        sp2F8 = (s64) temp_f31_2;
        temp_f14_4 = (bitwise f32) sp2B8 / (second half of f64);
        sp2A0 = (bitwise f64) ((temp_f27 + (f32) temp_f31_2) - temp_f29);
        if (sp340 != 0) {
            __glSnapXLeft(arg0, second half of f64, M2C_ERROR(/* unknown instruction: madd.s $f13, $f4, $f14, $f13 */), temp_f14_4, second half of f64);
            __glCrmRenderPointDepthRGBA((s64) arg0, arg1, (f32 *) sp318, (bitwise s64) sp1C8);
            if (sp2F8 != sp2E0) {
                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f16 */);
                __glSnapXRight(arg0 + 0x75B8);
                __glCrmRenderPointDepthRGBA((s64) arg0, (f32 *) sp2F8, (f32 *) sp2E0, (s64) &sp10, sp1F8, (s64) sp1FC);
            }
            if (sp2E0 != sp300) {
                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f16 */);
                __glSnapXRight(arg0 + 0x75B8);
                __glCrmRenderPointDepthRGBA((s64) arg0, (f32 *) sp2E0, (f32 *) sp300, (s64) &sp10, sp1F8, (s64) sp1FC);
            }
        } else {
            __glSnapXRight(arg0 + 0x75B8, second half of f64, M2C_ERROR(/* unknown instruction: madd.s $f13, $f4, $f14, $f13 */), temp_f14_4, second half of f64);
            if (sp2F8 != sp2E0) {
                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f16 */);
                __glSnapXLeft(arg0);
                __glCrmRenderPointDepthRGBA((s64) arg0, arg1, (f32 *) sp318, (bitwise s64) sp1C8);
                __glCrmRenderPointDepthRGBA((s64) arg0, (f32 *) sp2F8, (f32 *) sp2E0, (s64) &sp10, sp1F8, (s64) sp1FC);
            }
            if (sp2E0 != sp300) {
                sp208 = (bitwise f64) (((f32) sp2E0 + arg0->unkDD4) - arg2->unk84);
                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f16 */);
                __glSnapXLeft(arg0);
                __glCrmRenderPointDepthRGBA((s64) arg0, arg2, (f32 *) sp320, (bitwise s64) sp1D0);
                __glCrmRenderPointDepthRGBA((s64) arg0, (f32 *) sp2E0, (f32 *) sp300, (s64) &sp10, sp1F8, (s64) sp1FC);
            }
        }
        arg0->unk8080 = 0;
        if (sp310 != 0) {
            if (arg0->unk7D58 & 0x8000) {
                temp_a1_4 = *arg0->unk9B4;
                if ((temp_a1_4 != 0x8062) && (temp_a1_4 != 0x1E01)) {

                } else {
                    sp330->unk2110 = (s32) arg0->unk7E68;
                    sp338->unk2110 = (s32) arg0->unk7E68;
                }
            }
        }
    }
}
