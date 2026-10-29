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
Error occurred while processing instruction: bgez $at, .L0d948364

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
Error occurred while processing instruction: bgez $a0, .L0d9491f0

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
Error occurred while processing instruction: bgez $a3, .L0d949258

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
Error occurred while processing instruction: bgez $at, .L0d948364

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
Error occurred while processing instruction: bgez $a0, .L0d9491f0

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
Error occurred while processing instruction: bgez $a3, .L0d949258

s64 __glCrmSetStoreBuffer(void *, s32, s32, s32, s32); /* extern */
s32 __glFloor(s32, f32, f64, f32, u64, s32, s32, ?, f32, f32, f32, s64, f32, f32, f32, f32); /* extern */
s32 __glPolygonOffsetZ(void *, s64, s32, s64, s32, s64, s32, f32, f32, s32, s32, s32, s32); /* extern */
? __glSnapXLeft(void *);                            /* extern */
? __glSnapXRight(void *);                           /* extern */

void __glCrmFillCheapFogTriangle(? (*arg0)(?, ?, ?, f32), void *arg1, void *arg2, void *arg3, s64 arg4) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s32 sp30;
    ? sp20(? *, ? *, ? *, f32);
    ? sp10(? *, ? *, ? *, f32);
    ? (*temp_a6)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32);
    ? (*temp_a7)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32);
    f32 temp_f15;
    s32 temp_a0;
    s32 temp_a2_2;
    s32 temp_s4;
    s32 var_a0;
    void *temp_a2;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d948364
    if (M2C_ERROR()) {
        temp_a6(sp, arg1->unk8, temp_a6, temp_f15);
        arg0->unk30F4(arg0, sp10, arg2->unk8);
        arg0->unk30F4(arg0, sp20, arg3->unk8);
    } else {
        temp_a2 = arg0->unk6DA8;
        sp38 = (s64) temp_a2;
        temp_a6(sp, temp_a2->unk8, temp_a6, temp_f15);
        arg0->unk30F4(arg0, sp10, (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) temp_a2->unk8);
        arg0->unk30F4(arg0, sp20, sp38->unk8);
    }
    sp50 = (s64) arg1->unk8;
    sp48 = (s64) arg2->unk8;
    temp_a7 = arg3->unk8;
    arg1->unk8 = (? (*)(?, ?, ?, f32)) sp;
    arg2->unk8 = (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) sp10;
    arg3->unk8 = (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) sp20;
    sp40 = (s64) temp_a7;
    temp_a0 = arg0->unk7D58;
    sp30 = temp_a0;
    temp_a2_2 = 0x20000 | (arg0->unk76E4 & ~0x2000);
    arg0->unk76E4 = temp_a2_2;
    var_a0 = 0x10000 | (temp_a0 & ~0x4000);
    arg0->unk7D58 = var_a0;
    if ((temp_s4 & 0x10) && (arg0->unk80A0 & 2)) {
        var_a0 |= 1;
        arg0->unk7D58 = var_a0;
        arg0->unk76E4 = (s32) (temp_a2_2 & ~0x10);
    }
    if (arg0->unk7D5C != var_a0) {
        arg0->unk7DB8->unk2018 = var_a0;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
    }
    arg0->unk2F34(arg0, arg1, arg2, arg3, sp58, sp20, sp10, temp_a7);
    arg0->unk7D58 = sp30;
    if (arg0->unk7D5C != sp30) {
        arg0->unk7DB8->unk2018 = sp30;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk76E4 = temp_s4;
        arg0->unk7D5C = (s32) arg0->unk7D58;
        arg1->unk8 = (? (*)(?, ?, ?, f32)) sp50;
        arg2->unk8 = (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) sp48;
        arg3->unk8 = (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) sp40;
        return;
    }
    arg0->unk76E4 = temp_s4;
    arg1->unk8 = (? (*)(?, ?, ?, f32)) sp50;
    arg2->unk8 = (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) sp48;
    arg3->unk8 = (? (*)(? (*)(?, ?, ?, f32), ? (*)(?, ?, ?, f32), ?, f32)) sp40;
}

void __glCrmFillStippledTriangle(void *arg0, s32 arg7) {
    s64 sp8;
    s32 sp0;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_v1;
    s32 var_a7;

    var_a7 = arg7;
    temp_v1 = arg0->unk76E4;
    sp8 = (s64) temp_v1;
    temp_a6 = arg0->unk7D58;
    sp0 = temp_a6;
    temp_a6_2 = temp_a6 | 1;
    arg0->unk76E4 = (s32) (temp_v1 & ~0x10);
    arg0->unk7D58 = temp_a6_2;
    if (arg0->unk7D5C != temp_a6_2) {
        arg0->unk7DB8->unk2018 = temp_a6_2;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        var_a7 = arg0->unk7D58;
        arg0->unk7D5C = var_a7;
    }
    arg0->unk2F34(arg0, -0x11, temp_a6_2, var_a7);
    arg0->unk76E4 = (s32) sp8;
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
    }
}

void __glCrmFillFrontBackTriangle(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp4;
    u32 sp0;
    s32 temp_s8;
    u32 temp_a0;
    u32 temp_a0_2;
    void *temp_s1;
    void *temp_s2;

    temp_s2 = arg0->unk7DB8;
    sp0 = arg0->unk7D58;
    temp_s1 = arg0->unk7DBC;
    temp_s8 = temp_s1->unk21E8;
    temp_a0 = -3 & arg0->unk7D58;
    unksp50 = __glCrmSetStoreBuffer(arg0->unk77C4);
    arg0->unk7D58 = temp_a0;
    if (arg0->unk7D5C != temp_a0) {
        arg0->unk7DB8->unk2018 = temp_a0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    unksp40 = (s64) (arg0 + 0x10000);
    sp4 = 0;
    temp_s2->unk21E8 = sp4;
    temp_s1->unk21E8 = sp4;
    __glCrmSetStoreBuffer(arg0, arg1, arg2, arg3, arg4);
    __glCrmSetStoreBuffer(arg0, arg0->unk77C0);
    temp_a0_2 = (-3 & arg0->unk7D58) | (((sp0 >> 1) & 1) * 2);
    arg0->unk7D58 = temp_a0_2;
    if (arg0->unk7D5C != temp_a0_2) {
        arg0->unk7DB8->unk2018 = temp_a0_2;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    temp_s2->unk21E8 = temp_s8;
    temp_s1->unk21E8 = temp_s8;
    __glCrmSetStoreBuffer(arg0, arg1, arg2, arg3, arg4);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    __glCrmSetStoreBuffer(arg0, (s32) unksp50);
}

void __glCrmFillLeftRightTriangle(void *arg0, void *arg1, f32 *arg2, s32 arg3, s32 arg4) {
    s64 sp8;
    s32 sp4;
    u32 sp0;
    s32 temp_a0;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_v0;
    u32 temp_a3;
    u32 temp_t9;
    void *temp_s1;
    void *temp_s2;

    sp0 = arg0->unk7D58;
    temp_s1 = arg0->unk7DBC;
    temp_t0 = temp_s1->unk2008;
    temp_s2 = arg0->unk7DB8;
    temp_a7 = ~temp_t0 & 1;
    temp_a6 = (-2 & temp_t0) | temp_a7;
    temp_s1->unk2008 = temp_a6;
    temp_s2->unk2008 = temp_a6;
    sp8 = (s64) temp_s1->unk21E8;
    if (arg0->unk2F30 != __glCrmFillFrontBackTriangle) {
        temp_t9 = arg0->unk7D58 & ~2;
        arg0->unk7D58 = temp_t9;
        temp_s2->unk2018 = temp_t9;
        temp_s1->unk2018 = (u32) arg0->unk7D58;
        sp4 = 0;
        temp_s2->unk21E8 = sp4;
        temp_s1->unk21E8 = sp4;
    }
    unksp50 = (s64) (arg0 + 0x10000);
    arg0->unk8118(arg0, arg1, arg2, arg3, arg4, 0x10872C, temp_a6, temp_a7);
    temp_a0 = temp_s1->unk2008;
    temp_v0 = (-2 & temp_a0) | (~temp_a0 & 1);
    temp_s1->unk2008 = temp_v0;
    temp_s2->unk2008 = temp_v0;
    if (arg0->unk2F30 != __glCrmFillFrontBackTriangle) {
        temp_a3 = (arg0->unk7D58 & ~2) | (((sp0 >> 1) & 1) * 2);
        arg0->unk7D58 = temp_a3;
        temp_s2->unk2018 = temp_a3;
        temp_s1->unk2018 = (u32) arg0->unk7D58;
        temp_s2->unk21E8 = (s32) sp8;
        temp_s1->unk21E8 = (s32) sp8;
    }
    unksp50->unk-7EE8(arg0, arg1, arg2, arg3, arg4, -3, unksp50);
    arg0->unk7D58 = sp0;
    temp_s2->unk2018 = sp0;
    temp_s1->unk2018 = (u32) arg0->unk7D58;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x78, 0x7c], gap at: 0x50. */
void FillSubTriangle(void *arg0, s32 arg1, s32 arg2, ? arg_sp0) {
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_t0;
    s64 var_a0;
    s64 var_a2;
    s64 var_a4;
    s64 var_t1;
    s64 var_t2;
    s64 var_t3;
    s64 var_t8;
    void *temp_t2;
    void *temp_v0;

    var_a7 = arg0->unk75CC;
    var_a6 = arg0->unk75D0;
    var_t0 = arg0->unk75D4;
    unksp48 = (s64) arg0->unk75BC;
    var_a5 = arg0->unk75C0;
    var_s5 = arg0->unk75DC;
    var_s3 = arg0->unk75D8;
    var_s4 = arg0->unk75C8;
    var_s2 = arg0->unk75C4;
    temp_t9 = arg0->unk76E4;
    var_s1 = arg1;
    unksp58 = (s64) arg0->unk7410;
    unksp68 = (s64) arg0->unk75B8;
    var_a4 = temp_t9 & 0x20;
    unksp60 = (s64) arg0->unk7408;
    arg0->unk7708 = (void *) (&arg_sp0 + 0xFFFEFEE0);
    arg0->unk7704 = (void *) (&arg_sp0 + 0xFFFEFFE0);
    arg0->unk7700 = (void *) (&arg_sp0 + 0xFFFF7FE0);
    if (var_a4 != 0) {
        temp_t2 = arg0->unk7984;
        arg0->unk76F4 = (s32) ((var_s2 + (arg0->unk7994 + (arg0->unk79A0 * (var_s1 - temp_t2->unkE50)))) - temp_t2->unkE4C);
    }
    var_a0 = temp_t9 & 4;
    var_t2 = temp_t9 & 1;
    var_t3 = temp_t9 & 0x1000;
    if (var_a0 != 0) {
        temp_v0 = arg0->unk79FC;
        arg0->unk76E8 = (s32) ((arg0->unk7A0C + (arg0->unk7A18 * (var_s1 - temp_v0->unkE50) * 4) + (var_s2 * 4)) - (temp_v0->unkE4C * 4));
    }
    var_a2 = temp_t9 & 2;
    arg0->unk7710 = (s32) arg0->unk2DF0;
    if (var_s1 < arg2) {
        var_t1 = temp_t9 & 0x4000;
        unksp50 = temp_t9 & 0x2000;
        unksp70 = temp_t9 & 8;
        var_t8 = temp_t9 & 0x40000;
loop_17:
        temp_a1 = var_s3 - var_s2;
        if (temp_a1 > 0) {
            var_a3 = var_s3 + var_a6;
            if (var_s1 >= unksp60) {
                if (var_s1 < unksp58) {
                    sp80 = var_t8;
                    sp88 = var_t3;
                    sp90 = var_t2;
                    sp98 = var_t1;
                    spA0 = var_a2;
                    spB0 = (s64) var_t0;
                    spB8 = (s64) var_a7;
                    spC0 = (s64) var_a6;
                    spC8 = (s64) var_a5;
                    spD0 = var_a4;
                    arg0->unk7628 = temp_a1;
                    arg0->unk75F8 = var_s1;
                    spA8 = var_a0;
                    arg0->unk75F4 = var_s2;
                    arg0->unk2FC8(arg0, temp_a1, var_a2, var_s3 + var_a6, var_a4, var_a5, var_a6, var_a7);
                }
                goto block_20;
            }
        } else {
block_20:
            var_a3 = var_s3 + var_a6;
        }
        temp_a1_2 = var_s5 + var_t0;
        var_s4 += var_a5;
        temp_v1 = temp_a1_2 < 0;
        var_s1 += 1;
        var_s3 = (temp_v1 != 0) ? var_a3 : (var_s3 + var_a7);
        var_s5 = (temp_v1 == 0) ? temp_a1_2 : (temp_a1_2 & 0x7FFFFFFF);
        if (var_s4 >= 0) {
            var_s2 += unksp68;
            if (var_t2 != 0) {
                if (var_a2 != 0) {
                    arg0->unk760C = (f32) (arg0->unk760C + arg0->unk7638);
                    arg0->unk7608 = (f32) (arg0->unk7608 + arg0->unk7634);
                    arg0->unk7604 = (f32) (arg0->unk7604 + arg0->unk7630);
                    arg0->unk7600 = (f32) (arg0->unk7600 + arg0->unk762C);
                    if (unksp70 != 0) {
                        goto block_25;
                    }
                    goto block_9;
                }
                if (unksp70 == 0) {
                    goto block_9;
                }
block_25:
                arg0->unk7E88 = (f64) (arg0->unk7E88 + arg0->unk7EE0);
                arg0->unk7E80 = (f64) (arg0->unk7E80 + (second half of f64));
                arg0->unk7E78 = (f64) (arg0->unk7E78 + (second half of f64));
                if (var_a4 == 0) {
                    goto block_26;
                }
                goto block_10;
            }
            if (var_a2 != 0) {
                arg0->unk7600 = (f32) (arg0->unk7600 + arg0->unk762C);
            }
block_9:
            if (var_a4 != 0) {
block_10:
                arg0->unk76F4 = (s32) (arg0->unk76FC + arg0->unk76F4);
                if (var_t1 != 0) {
                    goto block_11;
                }
                goto block_27;
            }
block_26:
            if (var_t1 == 0) {
block_27:
                if (var_t8 == 0) {
                    goto block_28;
                }
                goto block_12;
            }
block_11:
            arg0->unk75FC = (s32) (arg0->unk766C + arg0->unk75FC);
            if (var_t8 != 0) {
block_12:
                arg0->unk7724 = (f32) (arg0->unk7724 + arg0->unk7730);
                arg0->unk7714 = (f32) ((f32) arg0->unk766C + arg0->unk7714);
                if (var_a0 != 0) {
                    goto block_13;
                }
            } else {
block_28:
                if (var_a0 == 0) {

                } else {
block_13:
                    arg0->unk76E8 = (s32) (arg0->unk76F0 + arg0->unk76E8);
                }
            }
            if (var_t3 != 0) {
                goto block_15;
            }
            if (unksp50 != 0) {
                if (unksp70 == 0) {

                } else {
block_15:
                    arg0->unk7624 = (f32) (arg0->unk7624 + arg0->unk76D4);
                }
            }
        } else {
            var_s4 &= 0x7FFFFFFF;
            var_s2 += unksp48;
            if (var_t2 != 0) {
                if (var_a2 != 0) {
                    arg0->unk760C = (f32) (arg0->unk760C + arg0->unk7648);
                    arg0->unk7608 = (f32) (arg0->unk7608 + arg0->unk7644);
                    arg0->unk7604 = (f32) (arg0->unk7604 + arg0->unk7640);
                    arg0->unk7600 = (f32) (arg0->unk7600 + arg0->unk763C);
                    if (unksp70 != 0) {
                        goto block_34;
                    }
                    goto block_41;
                }
                if (unksp70 == 0) {
                    goto block_41;
                }
block_34:
                arg0->unk7E88 = (f64) (arg0->unk7E88 + arg0->unk7EE8);
                arg0->unk7E80 = (f64) (arg0->unk7E80 + (second half of f64));
                arg0->unk7E78 = (f64) (arg0->unk7E78 + (second half of f64));
                if (var_a4 == 0) {
                    goto block_35;
                }
                goto block_42;
            }
            if (var_a2 != 0) {
                arg0->unk7600 = (f32) (arg0->unk7600 + arg0->unk763C);
            }
block_41:
            if (var_a4 != 0) {
block_42:
                arg0->unk76F4 = (s32) (arg0->unk76F8 + arg0->unk76F4);
                if (var_t1 != 0) {
                    goto block_43;
                }
                goto block_36;
            }
block_35:
            if (var_t1 == 0) {
block_36:
                if (var_t8 == 0) {
                    goto block_37;
                }
                goto block_44;
            }
block_43:
            arg0->unk75FC = (s32) (arg0->unk7670 + arg0->unk75FC);
            if (var_t8 != 0) {
block_44:
                arg0->unk7724 = (f32) (arg0->unk7724 + arg0->unk772C);
                arg0->unk7714 = (f32) ((f32) arg0->unk7670 + arg0->unk7714);
                if (var_a0 != 0) {
                    goto block_45;
                }
            } else {
block_37:
                if (var_a0 == 0) {

                } else {
block_45:
                    arg0->unk76E8 = (s32) (arg0->unk76EC + arg0->unk76E8);
                }
            }
            if (var_t3 != 0) {
                goto block_47;
            }
            if (unksp50 != 0) {
                if (unksp70 == 0) {

                } else {
block_47:
                    arg0->unk7624 = (f32) (arg0->unk7624 + arg0->unk76D8);
                }
            }
        }
        if (var_s1 != arg2) {
            goto loop_17;
        }
    }
    arg0->unk75DC = var_s5;
    arg0->unk75D8 = var_s3;
    arg0->unk75C8 = var_s4;
    arg0->unk75C4 = var_s2;
}

f32 SetInitialParameters(void *arg0, void *arg1, void *arg2, f64 fparg0, f64 fparg1, f64 fparg3, f32 fparg4, f32 fparg5, f64 arg_sp0) {
    s64 sp30;
    s64 sp28;
    f64 sp20;
    f32 temp_f12;
    f32 temp_f13_2;
    f32 temp_f17;
    f32 temp_f17_3;
    f32 temp_f27;
    f32 temp_f27_2;
    f32 temp_f27_3;
    f32 temp_f2;
    f32 temp_f31;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 var_f0;
    f32 var_f20;
    f32 var_f22;
    f64 temp_f10;
    f64 temp_f11;
    f64 temp_f13;
    f64 temp_f14;
    f64 temp_f21;
    f64 temp_f23;
    f64 var_f12;
    f64 var_f13;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_f17_2;
    s32 temp_f17_4;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_t0;
    s32 var_v1;
    s64 temp_a4;
    s64 temp_a6;
    void *var_a2;

    var_a2 = arg2;
    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f0 = (f32) arg0->unk75BC;
    temp_a5 = arg0->unk76E4;
    var_f20 = fparg4;
    temp_a6 = temp_a5 & 0x1000;
    temp_t0 = temp_a5 & 0x4000;
    var_f22 = fparg5;
    temp_a7 = temp_a5 & 2;
    temp_a4 = temp_a5 & 1;
    if ((f32) arg0->unk75B8 < var_f0) {
        if (temp_a4 != 0) {
            var_v1 = temp_a5 & 8;
            if (temp_a7 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f16, $f7 */);
                temp_f6 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f24, $f7 */);
                arg0->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f17, $f6 */);
                arg0->unk762C = temp_f6;
                arg0->unk763C = (f32) (temp_f6 + arg0->unk764C);
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
                temp_f23 = M2C_ERROR(/* unknown instruction: madd.d $f23, $f27, $f21, $f11 */);
                temp_f14 = M2C_ERROR(/* unknown instruction: madd.d $f14, $f25, $f13, $f11 */);
                temp_f11 = M2C_ERROR(/* unknown instruction: madd.d $f11, $f16, $f10, $f11 */);
                M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f21, $f9 */);
                M2C_ERROR(/* unknown instruction: madd.d $f12, $f19, $f13, $f9 */);
                M2C_ERROR(/* unknown instruction: madd.d $f9, $f18, $f10, $f9 */);
                arg0->unk7EE0 = temp_f23;
                arg0->unk7ED0 = temp_f14;
                M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f25, $f17 */);
                arg0->unk7EC0 = temp_f11;
                var_f20 = second half of f64;
                arg0->unk7EE8 = (f64) (arg0->unk7EB0 + temp_f23);
                var_f13 = arg0->unk7EA0 + temp_f14;
                var_f12 = second half of f64;
                arg0->unk7E88 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f27, $f17 */);
                arg0->unk7ED8 = var_f13;
                arg0->unk7E80 = (f64) (second half of f64);
                arg0->unk7EC8 = (f64) (arg0->unk7E90 + temp_f11);
                arg0->unk7E78 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f9, $f9, $f16, $f17 */);
            }
        } else if (temp_a7 != 0) {
            var_f13 = (f64) arg0->unk764C;
            temp_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f14, $f24, $f13 */);
            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f16, $f13 */);
            arg0->unk762C = temp_f12;
            var_f12 = (f64) (temp_f12 + (f32) var_f13);
            arg0->unk763C = (f32) var_f12;
            arg0->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f17, $f14 */);
        }
        if (temp_t0 != 0) {
            // Error: negative shift count
            // At instruction: bgez $a0, .L0d9491f0
            if (M2C_ERROR()) {
                sp20 = fparg3;
                sp28 = temp_a6;
                sp30 = (s64) temp_a5;
                temp_ret = __glPolygonOffsetZ(arg0, temp_a4, temp_a5, temp_a6, temp_a7, (bitwise s64) var_f12, (bitwise s32) var_f13, var_f20, var_f22, (s32) (arg0->unk7680 + temp_f17), temp_f17_2);
                var_f0 = (bitwise f32) temp_ret;
                temp_a0 = -arg0->unk7670;
                arg0->unk75FC = temp_ret;
                if ((f64) arg0->unk7680 == (second half of f64)) {
                    arg0->unk772C = (f32) ((f64) temp_a0 / 1e-05);
                    arg0->unk7730 = (f32) ((f64) -arg0->unk766C / 1e-05);
                } else {
                    arg0->unk7730 = (f32) ((f32) -arg0->unk766C / (second half of f64));
                    arg0->unk772C = (f32) ((f32) temp_a0 / (second half of f64));
                }
            } else {
                M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f20, $f4 */);
                arg0->unk75FC = (s32) (s64) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f22, $f6 */);
            }
        }
        if ((temp_a6 != 0) || ((temp_a5 & 0x2008) == 0x2008)) {
            temp_f31 = M2C_ERROR(/* unknown instruction: madd.s $f31, $f0, $f24, $f29 */);
            M2C_ERROR(/* unknown instruction: madd.s $f27, $f5, $f20, $f29 */);
            arg0->unk76D4 = temp_f31;
            arg0->unk76D8 = (f32) (arg0->unk76E0 + temp_f31);
            arg0->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f22, $f0 */);
            return arg0->unk76DC;
        }
        /* Duplicate return node #27. Try simplifying control flow for better match */
        return var_f0;
    }
    if (temp_a4 != 0) {
        if (temp_a7 != 0) {
            M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f16, $f7 */);
            temp_f6_2 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f24, $f7 */);
            arg0->unk7600 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f17, $f6 */);
            arg0->unk762C = temp_f6_2;
            arg0->unk763C = (f32) (temp_f6_2 - arg0->unk764C);
            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f16, $f3 */);
            temp_f2 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f24, $f3 */);
            var_f0 = arg0->unk7654;
            arg0->unk7604 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f17, $f2 */);
            arg0->unk7630 = temp_f2;
            arg0->unk7640 = (f32) (temp_f2 - arg0->unk7650);
            M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f16, $f0 */);
            temp_f27_2 = M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f24, $f0 */);
            arg0->unk7608 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f17, $f27 */);
            arg0->unk7634 = temp_f27_2;
            arg0->unk7644 = (f32) (temp_f27_2 - var_f0);
            temp_f27_3 = M2C_ERROR(/* unknown instruction: madd.s $f27, $f31, $f24, $f29 */);
            M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f16, $f29 */);
            arg0->unk7638 = temp_f27_3;
            arg0->unk7648 = (f32) (temp_f27_3 - arg0->unk7658);
            arg0->unk760C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f17, $f31 */);
        }
        var_a2 = (void *) (temp_a5 & 8);
        if (var_a2 != NULL) {
            var_f22 = second half of f64;
            temp_f21 = M2C_ERROR(/* unknown instruction: madd.d $f21, $f27, $f23, $f10 */);
            temp_f13 = M2C_ERROR(/* unknown instruction: madd.d $f13, $f25, $f14, $f10 */);
            temp_f10 = M2C_ERROR(/* unknown instruction: madd.d $f10, $f16, $f11, $f10 */);
            M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f23, $f9 */);
            M2C_ERROR(/* unknown instruction: madd.d $f12, $f19, $f14, $f9 */);
            M2C_ERROR(/* unknown instruction: madd.d $f9, $f18, $f11, $f9 */);
            arg0->unk7EC0 = temp_f10;
            arg0->unk7ED0 = temp_f13;
            M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f25, $f17 */);
            arg0->unk7EE0 = temp_f21;
            var_f20 = second half of f64;
            arg0->unk7EE8 = (f64) (temp_f21 - arg0->unk7EB0);
            var_f13 = temp_f13 - arg0->unk7EA0;
            var_f12 = second half of f64;
            arg0->unk7E88 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f27, $f17 */);
            arg0->unk7ED8 = var_f13;
            arg0->unk7E80 = (f64) (second half of f64);
            arg0->unk7EC8 = (f64) (temp_f10 - arg0->unk7E90);
            arg0->unk7E78 = (f64) M2C_ERROR(/* unknown instruction: madd.d $f9, $f9, $f16, $f17 */);
        }
    } else if (temp_a7 != 0) {
        temp_f13_2 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f15, $f24, $f14 */);
        M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f16, $f14 */);
        var_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f17, $f15 */);
        arg0->unk762C = temp_f13_2;
        var_f13 = (f64) (temp_f13_2 - arg0->unk764C);
        arg0->unk763C = (f32) var_f13;
        arg0->unk7600 = (bitwise f32) var_f12;
    }
    if (temp_t0 != 0) {
        // Error: negative shift count
        // At instruction: bgez $a3, .L0d949258
        if (M2C_ERROR()) {
            sp20 = fparg3;
            sp28 = temp_a6;
            sp30 = (s64) temp_a5;
            temp_ret_2 = __glPolygonOffsetZ(arg0, (s64) var_a2, (s32) ((s64) arg0->unk700 << 0x27), temp_a4, temp_a5, temp_a6, temp_a7, (f32) var_f12, (f32) var_f13, (bitwise s32) var_f20, (bitwise s32) var_f22, (s32) (temp_f17_3 - arg0->unk7680), temp_f17_4);
            var_f0 = (bitwise f32) temp_ret_2;
            temp_a0_2 = -arg0->unk7670;
            arg0->unk75FC = temp_ret_2;
            if ((f64) arg0->unk7680 == (second half of f64)) {
                arg0->unk7730 = (f32) ((f64) -arg0->unk766C / 1e-05);
                arg0->unk772C = (f32) ((f64) temp_a0_2 / 1e-05);
            } else {
                arg0->unk772C = (f32) ((f32) temp_a0_2 / (second half of f64));
                arg0->unk7730 = (f32) ((f32) -arg0->unk766C / (second half of f64));
            }
        } else {
            M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f20, $f4 */);
            var_f0 = second half of f64;
            arg0->unk75FC = (s32) (s64) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f22, $f6 */);
        }
    }
    if ((temp_a6 != 0) || ((temp_a5 & 0x2008) == 0x2008)) {
        temp_f3_2 = M2C_ERROR(/* unknown instruction: madd.s $f3, $f6, $f24, $f4 */);
        M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f20, $f4 */);
        arg0->unk76D4 = temp_f3_2;
        arg0->unk76D8 = (f32) (temp_f3_2 - arg0->unk76E0);
        arg0->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f22, $f6 */);
        return var_f0;
    }
    return var_f0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb8, 0xbc, 0xc0, 0xc4, 0xc8, 0xcc, 0xd0, 0xd4, 0xf8, 0xfc, 0x100, 0x104, 0x108, 0x10c], gap at: 0x78. */
void __glCrmFillSlowTriangle(void *arg0, void *arg1, void *arg2, void *arg3, u64 arg4, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f64 sp58;
    f32 sp54;
    f32 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 *temp_a0;
    f32 *temp_s6;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f21;
    f32 temp_f25;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f29;
    f32 var_a1;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f11;
    f32 var_f11_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f12_3;
    f32 var_f12_4;
    f32 var_f13;
    f32 var_f13_2;
    f32 var_f14;
    f32 var_f14_2;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f7_2;
    f32 var_f8;
    f32 var_f8_2;
    f32 var_f9;
    f32 var_f9_2;
    f32 var_f9_3;
    f64 temp_f1;
    f64 temp_f31;
    f64 var_f12_5;
    f64 var_f13_3;
    f64 var_f20;
    f64 var_f26;
    f64 var_f28;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_f23;
    s32 temp_f27;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s5_2;
    s32 temp_s7;
    s32 var_s5;
    s32 var_s7;
    s32 var_t1;
    s32 var_t3;
    u32 var_f14_3;
    u64 var_a4;
    void *temp_a1;
    void *temp_s5;
    s32 phi_a0;

    var_a4 = arg4;
    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    var_f5 = arg0->unk75E8;
    unksp78 = (s64) arg2->unk8;
    temp_s6 = arg1->unk8;
    unkspB0 = var_a4;
    temp_s4 = arg0->unk76E4;
    temp_a6 = temp_s4 & 2;
    var_f6 = arg0->unkDD8 / arg0->unk75E0;
    if (temp_s4 & 1) {
        if (temp_a6 != 0) {
            temp_a1 = arg3->unk8;
            var_f13 = var_f6 * arg0->unk75E4;
            var_f19 = M2C_ERROR(/* unknown instruction: msub.s $f19, $f19, $f13, $f23 */);
            arg0->unk765C = var_f19;
            arg0->unk764C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f21, $f21, $f11, $f19 */);
            var_f18 = unksp78->unk4 - temp_a1->unk4;
            var_f17 = M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f16, $f11 */);
            var_f16 = M2C_ERROR(/* unknown instruction: msub.s $f16, $f16, $f18, $f13 */);
            arg0->unk7660 = var_f16;
            arg0->unk7650 = var_f17;
            var_f15 = unksp78->unk8 - temp_a1->unk8;
            arg0->unk7664 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f12, $f12, $f15, $f13 */);
            arg0->unk7654 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f14, $f14, $f12, $f11 */);
            var_f14 = temp_a1->unkC;
            var_f12 = unksp78->unkC - var_f14;
            arg0->unk7668 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f9, $f9, $f12, $f13 */);
            arg0->unk7658 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f8, $f8, $f10, $f11 */);
        } else {
            temp_a0 = arg0->unk6DA8->unk8;
            arg0->unk7600 = (f32) temp_a0->unk0;
            arg0->unk7604 = (f32) temp_a0->unk4;
            arg0->unk7608 = (f32) temp_a0->unk8;
            var_f19 = temp_a0->unkC;
            arg0->unk760C = var_f19;
        }
        temp_a2 = temp_s4 & 8;
        var_t1 = temp_s4 & 0x4000;
        if (temp_a2 != 0) {
            var_f11 = arg1->unk3C;
            var_f14_2 = second half of f64;
            var_f10 = arg3->unk3C;
            var_f9 = arg2->unk3C;
            temp_s5 = arg0->unk6E30;
            if ((f64) var_f11 == 1.0) {
                if ((f64) var_f9 == 1.0) {
                    if ((f64) var_f10 != 1.0) {
                        goto block_7;
                    }
                    temp_a1_2 = temp_s5->unkE8;
                    var_f7 = arg3->unk30;
                    var_f28 = (f64) arg3->unk8C;
                    var_f8 = arg2->unk30;
                    var_f26 = (f64) arg2->unk8C;
                    var_f4 = arg1->unk30;
                    var_f20 = (f64) arg1->unk8C;
                    phi_a0 = temp_a1_2;
                    if (temp_a1_2 != 1) {
                        sp14 = arg2->unk34;
                        sp18 = arg3->unk34;
                        sp10 = arg1->unk34;
                    }
                } else {
                    goto block_8;
                }
            } else {
block_7:
block_8:
                if (fabsf(var_f11) < 0.0000076293945f) {
                    var_f11 = M2C_ERROR(/* unknown instruction: movf.s $f0, $f4, $fcc4 */);
                }
                if (fabsf(var_f9) < 0.0000076293945f) {
                    var_f9 = M2C_ERROR(/* unknown instruction: movf.s $f3, $f4, $fcc6 */);
                }
                if (fabsf(var_f10) < 0.0000076293945f) {
                    var_f10 = M2C_ERROR(/* unknown instruction: movf.s $f12, $f4, $fcc0 */);
                }
                temp_f12 = 1.0f / var_f10;
                var_f14_2 = 1.0f / var_f9;
                var_f13 = 1.0f / var_f11;
                var_a4 = (u64) temp_s5->unkE8;
                var_f28 = (f64) (arg3->unk8C * var_f10);
                var_f7 = arg3->unk30 * temp_f12;
                var_f26 = (f64) (arg2->unk8C * var_f9);
                var_f8 = arg2->unk30 * var_f14_2;
                var_f20 = (f64) (arg1->unk8C * var_f11);
                var_f4 = arg1->unk30 * var_f13;
                phi_a0 = (s32) var_a4;
                if (var_a4 != 1) {
                    var_f18 = arg3->unk34 * temp_f12;
                    sp18 = var_f18;
                    var_f17 = arg2->unk34 * var_f14_2;
                    sp14 = var_f17;
                    var_f16 = arg1->unk34 * var_f13;
                    sp10 = var_f16;
                }
            }
            temp_a5 = temp_s5->unk4;
            if (temp_a5 != 0x2901) {
                var_f8_2 = var_f8 + 1.0f;
                var_f7_2 = var_f7 + 1.0f;
                var_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc2 */);
                var_f4_2 = var_f4 + 1.0f;
                var_f10_2 = M2C_ERROR(/* unknown instruction: movz.s $f10, $f7, $a1 */);
                var_f9_2 = var_f4_2;
                if (var_f10_2 < var_f4_2) {
                    var_f10_2 = var_f4_2;
                }
                var_s7 = 1;
                if (!(var_f10_2 > 7.0f)) {
                    var_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc5 */);
                    temp_f10 = M2C_ERROR(/* unknown instruction: movz.s $f10, $f11, $a1 */);
                    if (!(var_f9_2 < temp_f10)) {
                        var_f9_2 = temp_f10;
                    }
                    var_s7 = 1;
                    if (!(var_f9_2 < -7.0f)) {
                        var_s7 = 0;
                    }
                }
                var_f9_3 = 1.0f;
                if (phi_a0 != 1) {
                    goto block_24;
                }
                goto block_77;
            }
            var_f12_2 = M2C_ERROR(/* unknown instruction: movz.s $f12, $f7, $a1 */);
            if (var_f4 < var_f12_2) {
                unkspE8 = (bitwise f64) var_f4;
                unkspD8 = (bitwise f64) var_f8;
                unkspE0 = (bitwise f64) var_f7;
                unkspF0 = (bitwise f64) var_f6;
                var_f12_2 = var_f4;
            } else {
                unkspD8 = (bitwise f64) var_f8;
                unkspE0 = (bitwise f64) var_f7;
                unkspE8 = (bitwise f64) var_f4;
                unkspF0 = (bitwise f64) var_f6;
            }
            sp58 = (bitwise f64) var_f5;
            var_f8_2 = (bitwise f32) unkspD8 - (f32) (s32) ((f32) __glFloor(phi_a0, M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc7 */), (bitwise f64) temp_a2, 1e-45f, var_a4, temp_a5, temp_a6, 0x2901, var_f12_2, var_f13, var_f14_2, 0x3FF0000000000000, var_f16, var_f17, var_f18, 1.0f) + -1.0f);
            var_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc1 */);
            var_f4_2 = second half of f64;
            var_f6 = (bitwise f32) unkspF0;
            var_f7_2 = second half of f64;
            var_f14_2 = second half of f64;
            if (M2C_ERROR(/* unknown instruction: movz.s $f10, $f7, $a1 */) < (second half of f64)) {

            }
            var_s7 = M2C_ERROR(/* unknown instruction: movf $s7, $zero, $fcc2 */);
            if (temp_s5->unkE8 == 1) {
                var_f9_3 = 1.0f;
block_77:
                var_f11_2 = 1.0f;
                var_s5 = 0;
                var_f10_3 = 1.0f;
            } else {
block_24:
                if (temp_s5->unk8 != 0x2901) {
                    var_f10_3 = sp14 + 1.0f;
                    var_f11_2 = sp18 + 1.0f;
                    M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc0 */);
                    var_f9_3 = sp10 + 1.0f;
                    var_f13_2 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f11, $a0 */);
                    var_f12_3 = var_f9_3;
                    if (var_f13_2 < var_f9_3) {
                        var_f13_2 = var_f9_3;
                    }
                    var_s5 = 1;
                    if (!(var_f13_2 > 7.0f)) {
                        M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc3 */);
                        temp_f13 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f16, $a0 */);
                        if (!(var_f12_3 < temp_f13)) {
                            var_f12_3 = temp_f13;
                        }
                        var_s5 = 1;
                        if (!(var_f12_3 < -7.0f)) {
                            var_s5 = 0;
                        }
                    }
                } else {
                    temp_f13_2 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f11, $a0 */);
                    unkspD8 = (bitwise f64) var_f8_2;
                    unkspE0 = (bitwise f64) var_f7_2;
                    var_f12_4 = sp10;
                    unkspE8 = (bitwise f64) var_f4_2;
                    if (sp10 < temp_f13_2) {
                        unkspF0 = (bitwise f64) var_f6;
                    } else {
                        unkspF0 = (bitwise f64) var_f6;
                        var_f12_4 = temp_f13_2;
                    }
                    sp58 = (bitwise f64) var_f5;
                    temp_f0 = (f32) (s32) ((f32) __glFloor(M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc4 */), var_a1, (f64) var_f12_4, temp_f13_2, (bitwise u64) var_f14_2, (s32) 1.0) + -1.0f);
                    var_f10_3 = sp14 - temp_f0;
                    var_f11_2 = sp18 - temp_f0;
                    M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc6 */);
                    var_f4_2 = (bitwise f32) unkspE8;
                    var_f5 = second half of f64;
                    var_f7_2 = (bitwise f32) unkspE0;
                    var_f6 = second half of f64;
                    var_f8_2 = (bitwise f32) unkspD8;
                    var_f9_3 = second half of f64;
                    if (!(M2C_ERROR(/* unknown instruction: movz.s $f13, $f11, $a0 */) < (sp10 - temp_f0))) {

                    }
                    var_s5 = M2C_ERROR(/* unknown instruction: movf $s5, $zero, $fcc7 */);
                }
            }
            var_f14_3 = 0;
            if ((var_f20 <= GLUE_F64(0x3FF0000000000000U, 0U)) || (var_f26 <= GLUE_F64(0x3FF0000000000000U, 0U)) || (var_f28 <= GLUE_F64(0x3FF0000000000000U, 0U))) {
                var_f13_3 = M2C_ERROR(/* unknown instruction: movz.d $f13, $f28, $a0 */);
                if (var_f20 < var_f13_3) {
                    sp18 = var_f11_2;
                    sp14 = var_f10_3;
                    sp10 = var_f9_3;
                    unkspD8 = (bitwise f64) var_f8_2;
                    unkspE0 = (bitwise f64) var_f7_2;
                    unkspE8 = (bitwise f64) var_f4_2;
                    unkspF0 = (bitwise f64) var_f6;
                    var_f13_3 = var_f20;
                } else {
                    sp18 = var_f11_2;
                    sp14 = var_f10_3;
                    sp10 = var_f9_3;
                    unkspD8 = (bitwise f64) var_f8_2;
                    unkspE0 = (bitwise f64) var_f7_2;
                    unkspE8 = (bitwise f64) var_f4_2;
                    unkspF0 = (bitwise f64) var_f6;
                }
                sp58 = (bitwise f64) var_f5;
                var_f5 = second half of f64;
                var_f6 = second half of f64;
                var_f8_2 = (bitwise f32) unkspD8;
                temp_f31 = (f64) (0.0000076293945f - (f32) __glFloor(M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc1 */), (f32) var_f13_3, var_f13_3, 0.0f, 0x3FF0000000000000U));
                var_f9_3 = sp10;
                var_f10_3 = sp14;
                var_f26 += temp_f31;
                var_f14_3 = second half of f64;
                var_f20 += temp_f31;
            }
            M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc3 */);
            var_f12_5 = M2C_ERROR(/* unknown instruction: movz.d $f12, $f28, $a0 */);
            if (var_f12_5 < var_f20) {
                var_f12_5 = var_f20;
            }
            if (var_f12_5 != (bitwise f64) var_f14_3) {
                if (var_f12_5 != 1.0) {
                    temp_f1 = 1.0 / var_f12_5;
                    var_f26 *= temp_f1;
                    sp28 = var_f26;
                    var_f20 *= temp_f1;
                } else {
                    sp28 = var_f26;
                }
            } else {
                sp28 = var_f26;
            }
            sp20 = var_f20;
            M2C_ERROR(/* unknown instruction: nmsub.d $f27, $f25, $f12, $f28 */);
            M2C_ERROR(/* unknown instruction: nmsub.d $f12, $f29, $f12, $f28 */);
            var_f17 = M2C_ERROR(/* unknown instruction: msub.d $f17, $f17, $f14, $f21 */);
            var_f19 = second half of f64;
            var_f15 = second half of f64;
            var_f14 = M2C_ERROR(/* unknown instruction: msub.d $f14, $f14, $f16, $f15 */);
            var_f16 = M2C_ERROR(/* unknown instruction: nmsub.d $f16, $f19, $f18, $f28 */);
            var_f18 = M2C_ERROR(/* unknown instruction: nmsub.d $f18, $f23, $f18, $f28 */);
            arg0->unk7EF0 = (s32) ((var_s7 == 0) ? 0 : 4);
            M2C_ERROR(/* unknown instruction: msub.d $f13, $f13, $f21, $f12 */);
            arg0->unk7EF4 = (s32) ((var_s5 == 0) ? 0 : 4);
            var_f13 = second half of f64;
            sp48 = (f64) var_f10_3 * var_f26;
            var_f12 = M2C_ERROR(/* unknown instruction: msub.d $f12, $f12, $f15, $f27 */);
            sp40 = (f64) var_f9_3 * var_f20;
            sp38 = (f64) var_f8_2 * var_f26;
            M2C_ERROR(/* unknown instruction: msub.d $f3, $f3, $f21, $f18 */);
            sp30 = (bitwise f64) (second half of f64);
            arg0->unk7EB8 = (bitwise f64) var_f17;
            arg0->unk7EB0 = (bitwise f64) var_f14;
            arg0->unk7EA8 = (bitwise f64) (second half of f64);
            arg0->unk7EA0 = (bitwise f64) var_f12;
            arg0->unk7E98 = (f64) (second half of f64);
            arg0->unk7E90 = (f64) M2C_ERROR(/* unknown instruction: msub.d $f2, $f2, $f15, $f16 */);
            goto block_45;
        }
    } else {
        if (temp_a6 != 0) {
            var_f18 = temp_s6->unk0 - arg3->unk8->unk0;
            var_f17 = M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f16, $f19 */);
            var_f19 = var_f6 * arg0->unk75F0;
            var_f16 = M2C_ERROR(/* unknown instruction: msub.s $f16, $f16, $f18, $f19 */);
            arg0->unk765C = var_f17;
            arg0->unk764C = var_f16;
        } else {
            var_f17 = *arg0->unk6DA8->unk8;
            arg0->unk7600 = var_f17;
        }
block_45:
        var_t1 = temp_s4 & 0x4000;
    }
    var_t3 = temp_s4 & 0x1000;
    if (var_t1 != 0) {
        temp_f29 = M2C_ERROR(/* unknown instruction: nmsub.s $f29, $f29, $f0, $f3 */);
        temp_f27 = (s32) temp_f29;
        arg0->unk767C = (f32) M2C_ERROR(/* unknown instruction: msub.s $f31, $f31, $f0, $f1 */);
        arg0->unk7680 = temp_f29;
        arg0->unk7674 = temp_f27;
        arg0->unk7678 = (s32) (temp_f27 << 5);
        var_t3 = temp_s4 & 0x1000;
    }
    if (var_t3 != 0) {
        goto block_49;
    }
    if ((temp_s4 & 0x2008) == 0x2008) {
block_49:
        if (arg0->unk778 == 0x1102) {
            sp54 = arg2->unk68;
            sp50 = arg1->unk68;
        } else {
            unkspF0 = (bitwise f64) var_f6;
            sp58 = (bitwise f64) var_f5;
            sp50 = arg0->unk30F8(arg0, arg1, var_f12, var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
            sp54 = arg0->unk30F8(arg0, arg2);
            arg0->unk30F8(arg0, arg3);
        }
        arg0->unk76DC = (f32) M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f2, $f0 */);
        arg0->unk76E0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f2, $f3 */);
    }
    temp_f20 = arg0->unkDD4;
    temp_f21 = arg1->unk84;
    temp_f25 = arg2->unk84;
    temp_f23 = (s32) (temp_f21 + temp_f20);
    temp_f26 = temp_f21 - temp_f25;
    temp_s7 = (s32) (arg3->unk84 + temp_f20);
    temp_f28 = arg1->unk80 - arg2->unk80;
    temp_s4_2 = (s32) (temp_f20 + temp_f25);
    sp58 = (bitwise f64) var_f5;
    temp_s5_2 = temp_f23;
    temp_f20_2 = (temp_f20 + (f32) temp_f23) - temp_f21;
    if (unkspB0 != 0) {
        M2C_ERROR(/* unknown instruction: madd.s $f13, $f4, $f14, $f20 */);
        __glSnapXLeft(arg0);
        __glCrmFillLeftRightTriangle(arg0, arg1, temp_s6, (bitwise s32) sp20);
        if (temp_s5_2 != temp_s4_2) {
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f20 */);
            __glSnapXRight(arg0 + 0x75B8);
            __glCrmFillLeftRightTriangle(arg0, (void *) temp_s5_2, (f32 *) temp_s4_2);
        }
        if (temp_s4_2 != temp_s7) {
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f16 */);
            __glSnapXRight(arg0 + 0x75B8);
            __glCrmFillLeftRightTriangle(arg0, (void *) temp_s4_2, (f32 *) temp_s7);
        }
    } else {
        M2C_ERROR(/* unknown instruction: madd.s $f13, $f4, $f14, $f20 */);
        __glSnapXRight(arg0 + 0x75B8);
        if (temp_s5_2 != temp_s4_2) {
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f20 */);
            __glSnapXLeft(arg0);
            __glCrmFillLeftRightTriangle(arg0, arg1, temp_s6, (bitwise s32) sp20);
            __glCrmFillLeftRightTriangle(arg0, (void *) temp_s5_2, (f32 *) temp_s4_2);
        }
        if (temp_s4_2 != temp_s7) {
            temp_f20_3 = ((f32) temp_s4_2 + arg0->unkDD4) - arg2->unk84;
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f20, $f15 */);
            __glSnapXLeft(arg0);
            __glCrmFillLeftRightTriangle(arg0, arg2, (f32 *) unksp78, (bitwise s32) sp28);
            __glCrmFillLeftRightTriangle(arg0, (void *) temp_s4_2, (f32 *) temp_s7);
        }
    }
}
