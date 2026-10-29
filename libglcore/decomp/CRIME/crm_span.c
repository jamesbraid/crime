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
Error occurred while processing instruction: bgez $v0, .L0d96b9e0

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
Error occurred while processing instruction: bgez $at, .L0d96c424

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
Error occurred while processing instruction: bgez $v0, .L0d96b9e0

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
Error occurred while processing instruction: bgez $at, .L0d96c424

? crmDrawPixelsXfer(void *, void *, s32 *, s32 *, s32 *, s32 *, s32, s32 *, s32, s32, s32, s32 *, s32, s32); /* extern */
f32 powf(s32, s64, s64, s32, s32, s32, s32, s32, f32, f32, f32, f64); /* extern */
extern ? __glDitherTable;

s32 __glCrmStoreCISpan(void *arg0) {
    f32 *var_a5_2;
    f32 *var_s0;
    s32 *temp_v0;
    s32 *var_a4;
    s32 temp_s1;
    s32 temp_s3;
    s32 var_a5;
    s64 temp_a1;
    s64 temp_v1;
    u8 temp_s8;

    var_s0 = arg0->unk7700;
    temp_s1 = arg0->unk7628;
    temp_s3 = temp_s1 * 2;
    temp_v0 = arg0->unk7E44(temp_s3);
    var_a5 = temp_s1 & 3;
    if (temp_s1 > 0) {
        var_a4 = temp_v0;
        if (var_a5 != 0) {
            do {
                temp_v1 = (s64) *var_s0;
                var_a4 += 2;
                var_a5 -= 1;
                var_s0 += 0x10;
                var_a4->unk-2 = (s16) ((temp_v1 << 0) & 0xFFF);
            } while (var_a5 != 0);
        }
        var_a5_2 = var_s0;
        if ((temp_s1 >> 2) != 0) {
            do {
                var_a4->unk0 = (s16) (((s64) var_a5_2->unk0 << 0) & 0xFFF);
                var_a4->unk2 = (s16) (((s64) var_a5_2->unk10 << 0) & 0xFFF);
                var_a4->unk4 = (s16) (((s64) var_a5_2->unk20 << 0) & 0xFFF);
                temp_a1 = (s64) var_a5_2->unk30;
                var_a4 += 8;
                var_a5_2 += 0x40;
                var_a4->unk-2 = (s16) ((temp_a1 << 0) & 0xFFF);
            } while (var_a4 != (temp_v0 + temp_s3));
        }
    }
    temp_s8 = arg0->unk7DCA;
    arg0->unk7DCA = 0U;
    arg0->unk7DE0 = 0;
    arg0->unk7DCE = 0;
    arg0->unk7DD8 = 1;
    arg0->unk7E2C = (s32) arg0->unk7710;
    arg0->unk7E24 = (s32) (((((arg0->unk7E24 & ~0xF0 & ~0x300) | 0x100) & ~0xC) | 4) & ~2);
    crmDrawPixelsXfer(arg0, sp, (s32 *)0x1900, (s32 *)0x1403, temp_v0, temp_v0, temp_s3, (s32 *)1, arg0->unk75F4, arg0->unk75F8, temp_s1, (s32 *)1);
    arg0->unk7DCA = temp_s8;
    arg0->unk7DD8 = 0;
    return 0;
}

s32 __glCrmStoreCIStippledSpan(void *arg0) {
    s64 sp1F8;
    f32 *var_a4;
    f32 *var_s1;
    s32 *temp_v0;
    s32 *var_a1;
    s32 *var_s1_2;
    s32 *var_s2;
    s32 *var_s4;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_s0;
    s64 temp_a2;
    s64 temp_v1;
    u8 temp_v1_2;

    var_s4 = arg0->unk7708;
    var_s1 = arg0->unk7700;
    var_s0 = arg0->unk7628;
    temp_s2 = var_s0 * 2;
    temp_v0 = arg0->unk7E44(temp_s2);
    if (var_s0 > 0) {
        var_a0 = var_s0 & 3;
        var_a1 = temp_v0;
        if (var_a0 != 0) {
            do {
                temp_v1 = (s64) *var_s1;
                var_a1 += 2;
                var_a0 -= 1;
                var_s1 += 0x10;
                var_a1->unk-2 = (s16) ((temp_v1 << 0) & 0xFFF);
            } while (var_a0 != 0);
        }
        var_a4 = var_s1;
        if ((var_s0 >> 2) != 0) {
            do {
                var_a1->unk0 = (s16) (((s64) var_a4->unk0 << 0) & 0xFFF);
                var_a1->unk2 = (s16) (((s64) var_a4->unk10 << 0) & 0xFFF);
                var_a1->unk4 = (s16) (((s64) var_a4->unk20 << 0) & 0xFFF);
                temp_a2 = (s64) var_a4->unk30;
                var_a1 += 8;
                var_a4 += 0x40;
                var_a1->unk-2 = (s16) ((temp_a2 << 0) & 0xFFF);
            } while (var_a1 != (temp_v0 + temp_s2));
        }
        var_s2 = arg0->unk75F4;
        temp_v1_2 = arg0->unk7DCA;
        arg0->unk7DCA = 0U;
        arg0->unk7DCE = 0;
        arg0->unk7DD8 = 1;
        sp1F8 = (s64) temp_v1_2;
        var_s1_2 = temp_v0;
        arg0->unk7E2C = (s32) arg0->unk7710;
        arg0->unk7E24 = (s32) (-3 & ((-0xD & ((-0x301 & (-0xF1 & arg0->unk7E24)) | 0x100)) | 4));
loop_7:
        temp_v0_2 = *var_s4;
        var_s4 += 4;
        temp_s3 = (var_s0 > 0x20) ? 0x20 : var_s0;
        if (temp_v0_2 == 0) {
            var_s0 -= temp_s3;
            var_s2 += temp_s3;
            var_s1_2 += temp_s3 * 2;
            if (var_s0 > 0) {
                goto loop_7;
            }
        } else {
            temp_s5 = temp_s3 * 2;
            arg0->unk7DE0 = temp_v0_2;
            crmDrawPixelsXfer(arg0, sp, var_s1_2, var_s1_2, (s32 *) temp_s5, var_s2, temp_s3);
            var_s0 -= temp_s3;
            var_s1_2 += temp_s5;
            var_s2 += temp_s3;
            if (var_s0 > 0) {
                goto loop_7;
            }
        }
        arg0->unk7DD8 = 0;
        arg0->unk7DE0 = 0;
        arg0->unk7DCA = (u8) sp1F8;
        return 0;
    }
    arg0->unk7DD8 = 0;
    arg0->unk7DE0 = 0;
    arg0->unk7DCE = 0;
    arg0->unk7DCA = (u8) arg0->unk7DCA;
    arg0->unk7E2C = (s32) arg0->unk7710;
    arg0->unk7E24 = (s32) (-3 & ((-0xD & ((-0x301 & (-0xF1 & arg0->unk7E24)) | 0x100)) | 4));
    return 0;
}

s32 __glCrmStoreRGBASpan(void *arg0) {
    s32 *temp_a2;
    s32 *temp_a3;
    s32 *temp_v0;
    s32 *var_a5;
    s32 temp_s0;
    s32 temp_s3;
    u8 temp_s8;
    void *temp_s1;

    temp_s1 = arg0->unk7700;
    temp_s0 = arg0->unk7628;
    temp_s3 = temp_s0 * 4;
    temp_v0 = arg0->unk7E44(temp_s3);
    if (temp_s0 > 0) {
        var_a5 = temp_v0;
        if (temp_s0 & 1) {
            var_a5 = temp_v0 + 4;
            *temp_v0 = (((second half of f64) << 0) & 0xFF) | ((((s64) (second half of f64) << 0) & 0xFF) << 8) | (((s64) temp_s1->unk0 << 0x18) | ((((s64) temp_s1->unk4 << 0) & 0xFF) << 0x10));
        }
        if ((temp_s0 >> 1) != 0) {
            do {
                *var_a5 = (((s64) (second half of f64) << 0) & 0xFF) | ((((second half of f64) << 0) & 0xFF) << 8) | (((s64) (second half of f64) << 0x18) | ((((second half of f64) << 0) & 0xFF) << 0x10));
                var_a5 += 8;
                var_a5->unk-4 = (s32) ((((s64) (second half of f64) << 0) & 0xFF) | ((((second half of f64) << 0) & 0xFF) << 8) | (((s64) (second half of f64) << 0x18) | ((((second half of f64) << 0) & 0xFF) << 0x10)));
            } while (var_a5 != (temp_v0 + temp_s3));
        }
    }
    temp_a3 = arg0->unk75F4;
    temp_a2 = arg0->unk75F8;
    temp_s8 = arg0->unk7DCA;
    arg0->unk7DCA = 0U;
    arg0->unk7DE0 = 0;
    arg0->unk7DCE = 0;
    arg0->unk7DD8 = 1;
    arg0->unk7E2C = (s32) arg0->unk7710;
    arg0->unk7E24 = (s32) (((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0x300) | 0x200) & ~0xC) | 8) & ~2);
    crmDrawPixelsXfer(arg0, sp, temp_a2, temp_a3, (s32 *)0x1908, (s32 *)0x1401, (s32) temp_v0, temp_v0, temp_s3, 1, (s32) temp_a3, temp_a2, temp_s0, 1);
    arg0->unk7DCA = temp_s8;
    arg0->unk7DD8 = 0;
    return 0;
}

s32 __glCrmStoreRGBAStippledSpan(void *arg0) {
    s64 sp1F8;
    s32 *temp_v0;
    s32 *var_a1;
    s32 *var_s1;
    s32 *var_s4;
    s32 temp_a2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_2;
    s32 var_s0;
    s32 var_s2;
    u8 temp_v1;
    void *temp_s1;

    var_s4 = arg0->unk7708;
    temp_s1 = arg0->unk7700;
    var_s0 = arg0->unk7628;
    temp_s2 = var_s0 * 4;
    temp_v0 = arg0->unk7E44(temp_s2);
    if (var_s0 > 0) {
        var_a1 = temp_v0;
        if (var_s0 & 1) {
            var_a1 = temp_v0 + 4;
            *temp_v0 = (((second half of f64) << 0) & 0xFF) | ((((s64) (second half of f64) << 0) & 0xFF) << 8) | (((s64) temp_s1->unk0 << 0x18) | ((((s64) temp_s1->unk4 << 0) & 0xFF) << 0x10));
        }
        if ((var_s0 >> 1) != 0) {
            do {
                *var_a1 = (((s64) (second half of f64) << 0) & 0xFF) | ((((second half of f64) << 0) & 0xFF) << 8) | (((s64) (second half of f64) << 0x18) | ((((second half of f64) << 0) & 0xFF) << 0x10));
                var_a1 += 8;
                var_a1->unk-4 = (s32) ((((s64) (second half of f64) << 0) & 0xFF) | ((((second half of f64) << 0) & 0xFF) << 8) | (((s64) (second half of f64) << 0x18) | ((((second half of f64) << 0) & 0xFF) << 0x10)));
            } while (var_a1 != (temp_v0 + temp_s2));
        }
        var_s2 = arg0->unk75F4;
        temp_v1 = arg0->unk7DCA;
        arg0->unk7DCA = 0U;
        arg0->unk7DCE = 0;
        arg0->unk7DD8 = 1;
        sp1F8 = (s64) temp_v1;
        var_s1 = temp_v0;
        arg0->unk7E2C = (s32) arg0->unk7710;
        arg0->unk7E24 = (s32) (-3 & ((-0xD & ((-0x301 & ((-0xF1 & arg0->unk7E24) | 0x20)) | 0x200)) | 8));
loop_8:
        temp_v0_2 = *var_s4;
        var_s4 += 4;
        temp_a2 = var_s0 > 0x20;
        temp_s3 = (temp_a2 != 0) ? 0x20 : var_s0;
        if (temp_v0_2 == 0) {
            var_s0 -= temp_s3;
            var_s2 += temp_s3;
            var_s1 = &var_s1[temp_s3];
            if (var_s0 > 0) {
                goto loop_8;
            }
        } else {
            arg0->unk7DE0 = temp_v0_2;
            crmDrawPixelsXfer(arg0, sp, (s32 *) temp_a2, var_s1, var_s1, (s32 *) (temp_s3 * 4), var_s2, (s32 *) temp_s3);
            var_s0 -= temp_s3;
            var_s1 = &var_s1[temp_s3];
            var_s2 += temp_s3;
            if (var_s0 > 0) {
                goto loop_8;
            }
        }
        arg0->unk7DD8 = 0;
        arg0->unk7DE0 = 0;
        arg0->unk7DCA = (u8) sp1F8;
        return 0;
    }
    arg0->unk7DD8 = 0;
    arg0->unk7DE0 = 0;
    arg0->unk7DCE = 0;
    arg0->unk7DCA = (u8) arg0->unk7DCA;
    arg0->unk7E2C = (s32) arg0->unk7710;
    arg0->unk7E24 = (s32) (-3 & ((-0xD & ((-0x301 & ((-0xF1 & arg0->unk7E24) | 0x20)) | 0x200)) | 8));
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54], gap at: 0x20. */
void __glCrmOffsetSpan(void *arg0, s64 arg7) {
    s64 sp8;
    f64 sp0;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 var_f7;
    s32 temp_a2;
    s32 temp_f10;
    s32 temp_f13;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s3;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_at;
    s64 temp_f8;
    s64 var_a7;
    u64 var_f7_2;
    void *temp_s1;

    var_a7 = arg7;
    temp_f5 = arg0->unk7728;
    temp_f4 = arg0->unk7724;
    temp_s2 = arg0->unk7628;
    temp_s1 = arg0 + (arg0->unk2FC0 * 4);
    temp_at = (s64) arg0->unk7714 << 0;
    unksp38 = temp_at;
    arg0->unk75FC = (s32) temp_at;
    if (temp_f4 < temp_f5) {
        var_v0 = 1;
        if (temp_f4 > 0.0f) {
            temp_f7 = temp_f4 - (f32) temp_s2;
            if ((temp_f7 < temp_f5) && (temp_f7 > 0.0f)) {

            } else {
                var_v0 = 0;
            }
            var_a7 = var_v0 & 0xFF;
            if (var_a7 != 0) {
                temp_s1->unk2F48(arg0, var_a7);
                arg0->unk770C = 1;
                return;
            }
            if (temp_f5 < temp_f4) {
                var_f7 = (f32) ((u64) ((s64) arg0->unk771C << 0x20) >> 0x20);
            } else {
                var_f7 = (f32) ((u64) ((s64) arg0->unk7720 << 0x20) >> 0x20);
            }
            goto block_13;
        }
    }
    temp_f7_2 = temp_f4 - (f32) temp_s2;
    var_v0_2 = 1;
    if ((temp_f7_2 < temp_f5) && (temp_f7_2 > 0.0f)) {

    } else {
        var_v0_2 = 0;
    }
    if (temp_f5 < temp_f4) {
        var_f7_2 = (u64) ((s64) arg0->unk771C << 0x20) >> 0x20;
    } else {
        var_f7_2 = (u64) ((s64) arg0->unk7720 << 0x20) >> 0x20;
    }
    var_f7 = (f32) var_f7_2;
    if (var_v0_2 & 0xFF) {
block_13:
        unksp30 = (s64) arg0->unk7674;
        sp0 = (f64) arg0->unk7680;
        temp_s3 = (s64) var_f7 << 0;
        if (temp_f5 <= temp_f4) {
            arg0->unk75FC = temp_s3;
            temp_f10 = (s32) ((f64) (second half of f64) + (second half of f64));
            temp_ra = arg0->unk75F4;
            sp8 = (s64) temp_ra;
            unksp18 = (s64) temp_f10;
            arg0->unk75F4 = (s32) (temp_f10 + temp_ra);
            arg0->unk7628 = (s32) (temp_s2 - temp_f10);
            temp_s1->unk2F48(arg0, var_a7);
            arg0->unk75FC = temp_s3;
            arg0->unk7674 = 0;
            arg0->unk75F4 = (s32) sp8;
            arg0->unk7628 = (s32) unksp18;
            arg0->unk7680 = 0.0f;
            temp_s1->unk2F48(arg0);
            arg0->unk75FC = (s32) unksp38;
            arg0->unk7674 = (s32) unksp30;
            arg0->unk7680 = (f32) sp0;
        } else {
            temp_f13 = (s32) temp_f4;
            arg0->unk7628 = temp_f13;
            unksp20 = (s64) temp_f13;
            temp_s1->unk2F48(arg0, (s64) temp_f13, (s32) var_a7, temp_f13);
            arg0->unk75FC = temp_s3;
            arg0->unk7674 = 0;
            arg0->unk7680 = 0.0f;
            arg0->unk75F4 = (s32) (arg0->unk75F4 + unksp20);
            arg0->unk7628 = (s32) (temp_s2 - unksp20);
            temp_s1->unk2F48(arg0);
            arg0->unk75FC = (s32) unksp38;
            arg0->unk7674 = (s32) unksp30;
            arg0->unk7680 = (f32) sp0;
        }
        arg0->unk770C = 1;
    } else {
        temp_a2 = arg0->unk7674;
        temp_f8 = (s64) var_f7;
        arg0->unk7674 = 0;
        arg0->unk7680 = 0.0f;
        arg0->unk75FC = (s32) temp_f8;
        unksp30 = (s64) temp_a2;
        sp0 = second half of f64;
        temp_s1->unk2F48(arg0, temp_f8, temp_a2);
        arg0->unk770C = 1;
        arg0->unk75FC = (s32) unksp38;
        arg0->unk7674 = (s32) unksp30;
        arg0->unk7680 = (f32) sp0;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x208, 0x20c, 0x218, 0x21c, 0x220, 0x224, 0x228, 0x22c, 0x230, 0x234, 0x238, 0x23c, 0x240, 0x244, 0x248, 0x24c], gap at: 0x210. */
void __glCrmOffsetStippledSpan(void *arg0) {
    s64 sp258;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 var_f6;
    s32 *temp_s2;
    s32 *var_a3_2;
    s32 *var_a3_4;
    s32 *var_a4;
    s32 *var_a4_2;
    s32 *var_a4_3;
    s32 *var_a4_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f23;
    s32 temp_f8;
    s32 temp_s1;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a3;
    s32 var_a3_3;
    s64 temp_f7;
    u64 var_f6_2;
    void *temp_s3;

    temp_s1 = arg0->unk7628;
    temp_s2 = arg0->unk7708;
    temp_f4 = arg0->unk7728;
    temp_f20 = arg0->unk7724;
    temp_s3 = arg0 + (arg0->unk2FC0 * 4);
    temp_s6 = (s64) arg0->unk7714 << 0;
    arg0->unk75FC = temp_s6;
    if (temp_f20 < temp_f4) {
        var_a0 = 1;
        if (temp_f20 > 0.0f) {
            temp_f6 = temp_f20 - (f32) temp_s1;
            if ((temp_f6 < temp_f4) && (temp_f6 > 0.0f)) {

            } else {
                var_a0 = 0;
            }
            if (var_a0 & 0xFF) {
                temp_s3->unk2F84(arg0);
                arg0->unk770C = 1;
                return;
            }
            if (temp_f4 < temp_f20) {
                var_f6 = (f32) ((u64) ((s64) arg0->unk771C << 0x20) >> 0x20);
            } else {
                var_f6 = (f32) ((u64) ((s64) arg0->unk7720 << 0x20) >> 0x20);
            }
            goto block_13;
        }
    }
    temp_f6_2 = temp_f20 - (f32) temp_s1;
    var_a0_2 = 0;
    if (temp_f6_2 < temp_f4) {
        var_a0_2 = 1;
        if (temp_f6_2 > 0.0f) {

        } else {
            var_a0_2 = 0;
        }
    }
    if (temp_f4 < temp_f20) {
        var_f6_2 = (u64) ((s64) arg0->unk771C << 0x20) >> 0x20;
    } else {
        var_f6_2 = (u64) ((s64) arg0->unk7720 << 0x20) >> 0x20;
    }
    var_f6 = (f32) var_f6_2;
    if (var_a0_2 & 0xFF) {
block_13:
        temp_s7 = arg0->unk7674;
        temp_s5 = temp_s1 >> 5;
        temp_f22 = arg0->unk7680;
        temp_a2 = (s64) var_f6 << 0;
        if (temp_f4 <= temp_f20) {
            arg0->unk75FC = temp_a2;
            temp_f20_2 = (f32) ((f64) (second half of f64) + (second half of f64));
            arg0->unk7674 = 0;
            arg0->unk7680 = 0.0f;
            temp_f8 = (s32) temp_f20_2;
            arg0->unk7628 = temp_f8;
            temp_s3->unk2F84(arg0, (s64) temp_a2);
            arg0->unk7628 = temp_s1;
            arg0->unk75FC = temp_s6;
            var_a0_3 = temp_f8 >> 5;
            arg0->unk7674 = temp_s7;
            arg0->unk7680 = temp_f22;
            if (var_a0_3 > 0) {
                var_a4 = sp;
                var_a3 = var_a0_3 & 3;
                if (var_a3 != 0) {
                    do {
                        var_a3 -= 1;
                        var_a4 += 4;
                        var_a4->unk-4 = 0;
                    } while (var_a3 != 0);
                }
                if ((var_a0_3 >> 2) != 0) {
                    do {
                        var_a4->unkC = 0;
                        var_a4->unk8 = 0;
                        var_a4 += 0x10;
                        var_a4->unk-C = 0;
                        var_a4->unk-10 = 0;
                    } while (var_a4 != (sp + (var_a0_3 * 4)));
                }
            } else {
                var_a0_3 = 0;
            }
            temp_a0 = var_a0_3 + 1;
            temp_a4 = temp_a0 * 4;
            var_a3_2 = temp_a4 + temp_s2;
            var_a4_2 = temp_a4 + sp;
            var_a4_2->unk-4 = (s32) (*var_a3_2 & (-1U >> (s32) (temp_f20_2 - (f32) (temp_f8 & ~0x1F))));
            if (temp_s5 >= temp_a0) {
                temp_a6 = (temp_s5 - temp_a0) + 1;
                if (temp_a6 & 1) {
                    var_a4_2 += 4;
                    temp_a7 = *var_a3_2;
                    var_a3_2 += 4;
                    var_a4_2->unk-4 = temp_a7;
                }
                if ((temp_a6 >> 1) != 0) {
                    do {
                        temp_t2 = *var_a3_2;
                        var_a3_2 += 8;
                        *var_a4_2 = temp_t2;
                        var_a4_2 += 8;
                        var_a4_2->unk-4 = (s32) var_a3_2->unk-4;
                    } while (var_a3_2 != (temp_s2 + ((temp_s5 + 1) * 4)));
                }
            }
            arg0->unk7708 = (s32 *) sp;
            temp_s3->unk2F84(arg0);
            arg0->unk7708 = temp_s2;
            arg0->unk75FC = temp_s6;
            arg0->unk7674 = temp_s7;
        } else {
            temp_f23 = (s32) temp_f20;
            arg0->unk7628 = temp_f23;
            sp258 = (s64) temp_a2;
            temp_s3->unk2F84(arg0, (s64) temp_a2);
            var_a0_4 = temp_f23 >> 5;
            if (var_a0_4 > 0) {
                var_a3_3 = var_a0_4 & 3;
                var_a4_3 = &sp100[0];
                if (var_a3_3 != 0) {
                    do {
                        var_a3_3 -= 1;
                        var_a4_3 += 4;
                        var_a4_3->unk-4 = 0;
                    } while (var_a3_3 != 0);
                }
                if ((var_a0_4 >> 2) != 0) {
                    do {
                        var_a4_3->unkC = 0;
                        var_a4_3->unk8 = 0;
                        var_a4_3 += 0x10;
                        var_a4_3->unk-C = 0;
                        var_a4_3->unk-10 = 0;
                    } while (var_a4_3 != &(&sp100[0])[var_a0_4]);
                }
            } else {
                var_a0_4 = 0;
            }
            temp_a0_2 = var_a0_4 + 1;
            temp_a4_2 = temp_a0_2 * 4;
            var_a3_4 = temp_a4_2 + temp_s2;
            var_a4_4 = temp_a4_2 + &sp100[0];
            var_a4_4->unk-4 = (s32) (*var_a3_4 & (-1U >> (s32) (temp_f20 - (f32) (temp_f23 & ~0x1F))));
            if (temp_s5 >= temp_a0_2) {
                temp_a7_2 = (temp_s5 - temp_a0_2) + 1;
                if (temp_a7_2 & 1) {
                    var_a4_4 += 4;
                    temp_t0 = *var_a3_4;
                    var_a3_4 += 4;
                    var_a4_4->unk-4 = temp_t0;
                }
                if ((temp_a7_2 >> 1) != 0) {
                    do {
                        temp_t3 = *var_a3_4;
                        var_a3_4 += 8;
                        *var_a4_4 = temp_t3;
                        var_a4_4 += 8;
                        var_a4_4->unk-4 = (s32) var_a3_4->unk-4;
                    } while (var_a3_4 != (temp_s2 + ((temp_s5 + 1) * 4)));
                }
            }
            arg0->unk7628 = temp_s1;
            arg0->unk7708 = &sp100[0];
            arg0->unk75FC = (s32) sp258;
            arg0->unk7674 = 0;
            arg0->unk7680 = 0.0f;
            temp_s3->unk2F84(arg0);
            arg0->unk7708 = temp_s2;
            arg0->unk75FC = temp_s6;
            arg0->unk7674 = temp_s7;
        }
        arg0->unk7680 = temp_f22;
        arg0->unk770C = 1;
        return;
    }
    temp_f22_2 = arg0->unk7680;
    arg0->unk7680 = 0.0f;
    temp_f7 = (s64) var_f6;
    temp_s7_2 = arg0->unk7674;
    arg0->unk7674 = 0;
    arg0->unk75FC = (s32) temp_f7;
    temp_s3->unk2F84(arg0, temp_f7);
    arg0->unk770C = 1;
    arg0->unk75FC = temp_s6;
    arg0->unk7674 = temp_s7_2;
    arg0->unk7680 = temp_f22_2;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x130, 0x134, 0x138, 0x13c, 0x140, 0x144, 0x148, 0x14c, 0x150, 0x154, 0x1b8, 0x1bc, 0x1c0, 0x1c4, 0x1c8, 0x1cc, 0x1d0, 0x1d4, 0x1d8, 0x1dc, 0x1e8, 0x1ec, 0x1f0, 0x1f4, 0x1f8, 0x1fc, 0x200, 0x204, 0x208, 0x20c], gap at: 0x160. */
s32 __glCrmDumpPerPixelSpan(void *arg0) {
    f64 sp128;
    s32 sp124;
    s32 sp120;
    s32 sp11C;
    s32 sp118;
    s32 sp114;
    s32 sp110;
    f32 sp10C;
    f32 sp108;
    f32 sp104;
    f32 sp100;
    s32 spFC;
    f32 spF8;
    s64 spF0;
    f64 spE8;
    s64 spE0;
    f64 spD8;
    s64 spD0;
    f64 spC8;
    s32 spC4;
    s32 spC0;
    s64 spB8;
    s64 spB0;
    s32 spAC;
    f32 spA8;
    s64 spA0;
    f64 sp98;
    s64 sp90;
    f64 sp88;
    s32 sp84;
    f32 sp80;
    s64 sp78;
    f64 sp70;
    s64 sp68;
    f64 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp24;
    s32 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f32 sp4;
    u32 sp0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 var_f14;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f28;
    f32 var_f30;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f64 temp_f27;
    f64 temp_f2;
    f64 var_f7;
    f64 var_f8;
    f64 var_f9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s6;
    s32 var_s7;
    s64 temp_t9;
    void *temp_s0;

    temp_s0 = arg0->unk7DB8;
    var_s3 = arg0->unk75F4;
    temp_t1 = arg0->unk76E4;
    var_s6 = 0;
    unksp180 = (s64) arg0->unk7DBC;
    temp_s8 = temp_t1 & 4;
    sp0 = arg0->unk7D64;
    if (temp_s8 != 0) {
        sp4 = (f32) ((u64) ((s64) arg0->unk75FC << 0x20) >> 0x20);
    }
    var_f20 = arg0->unk7600;
    var_f22 = arg0->unk7604;
    var_f24 = arg0->unk7608;
    var_f26 = arg0->unk760C;
    if (temp_t1 & 8) {
        var_s7 = arg0->unk6E30->unkE8;
        if ((arg0->unk6E38 == 0) || (arg0->unk7D58 & 0x8000)) {
            var_s6 = 1;
        }
        if (var_s6 != 0) {
            sp24 = arg0->unk7EF4;
            sp20 = arg0->unk7EF0;
            sp18 = arg0->unk7E88;
            sp10 = second half of f64;
            sp8 = arg0->unk7E78;
            sp0 = (((sp0 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
        } else {
            sp38 = arg0->unk7620;
            sp34 = arg0->unk761C;
            sp30 = arg0->unk7618;
            sp2C = arg0->unk7614;
            sp28 = arg0->unk7610;
        }
    } else {
        var_s7 = 0;
        var_s6 = 0;
    }
    temp_a0 = arg0->unk778;
    var_f30 = arg0->unk7624;
    var_f7 = sp8;
    temp_t9 = 1 << 0x2B;
    unksp198 = (s64) temp_a0;
    if (temp_a0 == 0x1102) {
        temp_f14 = arg0->unk648;
        sp44 = arg0->unk650;
        sp3C = temp_f14;
        sp40 = temp_f14 * temp_f14;
    }
    var_s4 = arg0->unk7628 - 1;
    var_f9 = sp10;
    var_f8 = second half of f64;
    var_f14 = second half of f64;
    if (var_s4 >= 0) {
        var_f6 = sp4;
        var_f28 = sp48;
        unksp170 = arg0->unk75F8 << 6;
        unksp168 = temp_t1 & 0x2000;
        unksp160 = temp_t1 & 0x3000;
        unksp1A0 = temp_t1 & 0x1000;
        var_s2 = 0;
        unksp178 = (s64) sp0;
        sp128 = (bitwise f64) sp3C;
        unksp190 = temp_t9 >> sp24;
        unksp1A8 = (s64) (sp0 >> 0x18);
        temp_s5 = temp_t1 & 1;
        unksp188 = temp_t9 >> sp20;
        unksp158 = (sp20 >> 2) | (sp24 >> 1);
loop_29:
        if (var_s2 == 0) {
            if (arg0->unk7D60 != unksp178) {
                arg0->unk7DB8->unk2060 = (s32) unksp178;
                arg0->unk7DBC->unk2060 = sp0;
                arg0->unk7D60 = sp0;
            }
            sp4C = (s32) unksp170;
            temp_s0->unk2084 = sp4C;
            unksp180->unk2084 = sp4C;
        }
        temp_a0_2 = var_s3 << 6;
        sp50 = temp_a0_2;
        temp_s0->unk2080 = sp50;
        if (unksp1A8 != 3) {
            if (var_s2 == 0) {
                goto block_32;
            }
            goto block_12;
        }
        sp54 = temp_a0_2;
        temp_s0->unk2088 = sp54;
        if (var_s2 != 0) {
            goto block_12;
        }
        sp58 = (s32) unksp170;
        temp_s0->unk208C = sp58;
        unksp180->unk208C = sp58;
        if (var_s2 == 0) {
block_32:
            if (var_s6 != 0) {
                sp5C = (s32) unksp158;
                temp_s0->unk2134 = sp5C;
                unksp180->unk2134 = sp5C;
                temp_f2 = (f64) unksp188;
                sp60 = arg0->unk7E90 * temp_f2;
                sp68 = (s64) sp60;
                temp_s0->unk2138 = sp68;
                unksp180->unk2138 = sp68;
                temp_f27 = (f64) unksp190;
                var_f26 = second half of f64;
                sp70 = arg0->unk7EA0 * temp_f27;
                sp78 = (s64) sp70;
                temp_s0->unk2148 = sp78;
                unksp180->unk2148 = sp78;
                sp80 = (f32) (arg0->unk7EB0 * 536870912.0);
                sp84 = (s32) sp80;
                temp_s0->unk2158 = sp84;
                unksp180->unk2158 = sp84;
                sp88 = arg0->unk7E98 * temp_f2;
                sp90 = (s64) sp88;
                var_f30 = second half of f64;
                var_f28 = second half of f64;
                temp_s0->unk2140 = sp90;
                unksp180->unk2140 = sp90;
                var_f24 = second half of f64;
                sp98 = arg0->unk7EA8 * temp_f27;
                var_f22 = second half of f64;
                spA0 = (s64) sp98;
                var_f20 = second half of f64;
                temp_s0->unk2150 = spA0;
                unksp180->unk2150 = spA0;
                spA8 = (f32) (arg0->unk7EB8 * 536870912.0);
                spAC = (s32) spA8;
                temp_s0->unk215C = spAC;
                unksp180->unk215C = spAC;
                if (temp_s8 != 0) {
                    spB0 = 0;
                    spB8 = 0;
                    temp_s0->unk21D0 = spB0;
                    unksp180->unk21D0 = (f64) (second half of f64);
                    temp_s0->unk21D8 = spB8;
                    unksp180->unk21D8 = spB8;
                }
                if (arg0->unk700 & 0x20) {
                    spC0 = 0;
                    temp_s0->unk2180 = spC0;
                    unksp180->unk2180 = spC0;
                    spC4 = 0;
                    temp_s0->unk2188 = spC4;
                    unksp180->unk2188 = spC4;
                }
                if (temp_s8 == 0) {

                } else {
                    goto block_13;
                }
            } else {
                goto block_12;
            }
        } else {
block_12:
            if (temp_s8 != 0) {
block_13:
                spC8 = (f64) (64.0f * var_f6);
                spD0 = (s64) spC8;
                temp_s0->unk21C8 = spD0;
                var_f6 += (f32) arg0->unk7674;
            }
        }
        if (var_s7 != 0) {
            if (var_s6 != 0) {
                spD8 = (f64) unksp188 * var_f7;
                spE0 = (s64) spD8 + 0x800;
                var_f28 = second half of f64;
                spE8 = (f64) unksp190 * var_f9;
                var_f30 = second half of f64;
                spF0 = (s64) spE8 + 0x800;
                var_f24 = second half of f64;
                spF8 = (f32) (536870912.0 * var_f8);
                temp_s0->unk2120 = spE0;
                temp_s0->unk2128 = spF0;
                spFC = (s32) spF8 + 0x800;
                temp_s0->unk2130 = spFC;
                var_f22 = second half of f64;
                var_f20 = second half of f64;
                var_f9 = arg0->unk7EA0 + (second half of f64);
                var_f8 = second half of f64;
                var_f7 += arg0->unk7E90;
                var_f6 = second half of f64;
            } else {
                sp10 = var_f9;
                sp18 = var_f8;
                sp8 = var_f7;
                sp4 = var_f6;
                temp_f14_2 = arg0->unkDD8 / sp34;
                sp10C = var_f26;
                sp108 = var_f24;
                sp104 = var_f22;
                sp100 = var_f20;
                arg0->unk30EC(arg0, &sp100, -1, 3, 1, 0x1102, 0x800, 0x801, 255.0, 4096.0f, temp_f14_2 * sp28, temp_f14_2 * sp2C, temp_f14_2 * sp30, temp_f14_2 * sp38, sp28);
                var_f8 = sp18;
                var_f9 = second half of f64;
                var_f7 = sp8;
                var_f6 = sp4;
                sp110 = (s32) sp10C | ((s32) sp100 << 0x18) | (((s32) sp104 << 0x10) | ((s32) sp108 << 8));
                temp_s0->unk20D0 = sp110;
                sp38 += arg0->unk76BC;
                sp34 += arg0->unk76B8;
                sp30 += arg0->unk76B4;
                sp2C += arg0->unk76B0;
                var_f14 = second half of f64;
                sp28 += arg0->unk76AC;
            }
        }
        var_f5 = var_f30;
        if (unksp1A0 != 0) {
            goto block_19;
        }
        if ((unksp168 == 0) || (var_s6 == 0)) {
            if (temp_s5 == 0) {
                goto block_43;
            }
            goto block_24;
        }
block_19:
        if (unksp198 != 0x1102) {
            var_f28 = var_f30;
            goto block_21;
        }
        var_f5 = var_f30;
        temp_a0_3 = arg0->unk634;
        var_f4 = var_f30;
        if (var_f30 < var_f14) {
            var_f4 = -var_f30;
        }
        if (temp_a0_3 != 0x800) {
            if (temp_a0_3 != 0x801) {
                if (temp_a0_3 == 0x2601) {
                    var_f28 = arg0->unk654 * (sp44 - var_f4);
                }
            } else {
                sp10 = var_f9;
                sp18 = var_f8;
                sp8 = var_f7;
                sp4 = var_f6;
                unksp1E0 = (bitwise f64) var_f5;
                temp_f0 = powf(temp_a0_3, unksp168, -1, 3, 1, 0x1102, 0x800, 0x801, 2.7182817f, -(var_f4 * (var_f4 * sp40)), var_f14, 1.0);
                var_f6 = second half of f64;
                var_f8 = second half of f64;
                var_f14 = second half of f64;
                var_f28 = temp_f0;
            }
        } else {
            sp10 = var_f9;
            sp18 = var_f8;
            sp8 = var_f7;
            sp4 = var_f6;
            unksp1E0 = (bitwise f64) var_f5;
            temp_f0_2 = powf(temp_a0_3, unksp168, -1, 3, 1, 0x1102, 0x800, 0x801, 2.7182817f, -(var_f4 * (bitwise f32) sp128), var_f14, 1.0);
            var_f6 = second half of f64;
            var_f8 = second half of f64;
            var_f14 = second half of f64;
            var_f28 = temp_f0_2;
        }
        if (var_f28 < var_f14) {
            var_f28 = var_f14;
            if (temp_s5 == 0) {

            } else {
                goto block_22;
            }
        } else {
            var_f28 = M2C_ERROR(/* unknown instruction: movt.s $f28, $f21, $fcc2 */);
block_21:
            if (temp_s5 != 0) {
block_22:
                var_f5 = second half of f64;
                sp118 = (s32) (4096.0f * (f32) ((f64) var_f28 * 255.0));
                temp_s0->unk2178 = sp118;
            }
        }
        var_f30 = arg0->unk76E0 + var_f5;
        if (temp_s5 != 0) {
block_24:
            if ((var_s7 == 0) || (var_s6 != 0)) {
                sp114 = (s32) var_f26 | ((s32) var_f20 << 0x18) | (((s32) var_f22 << 0x10) | ((s32) var_f24 << 8));
                temp_s0->unk20D0 = sp114;
            }
            var_f26 += arg0->unk7658;
            var_f24 += arg0->unk7654;
            var_f22 += arg0->unk7650;
            var_f20 += arg0->unk764C;
        } else {
block_43:
            if (unksp160 != 0) {
                sp11C = (s32) (f32) M2C_ERROR(/* unknown instruction: madd.d $f17, $f17, $f18, $f19 */);
                temp_s0->unk20D0 = sp11C;
            } else {
                sp120 = (s32) var_f20;
                temp_s0->unk20D0 = sp120;
            }
            var_f20 += arg0->unk764C;
        }
        sp124 = 0;
        var_s4 -= 1;
        var_s2 = (var_s2 == 0) ? 1 : var_s2;
        var_s3 += 1;
        temp_s0->unk29F0 = sp124;
        if (var_s4 != -1) {
            goto loop_29;
        }
    }
    arg0->unk8080 = 0;
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x140, 0x144, 0x148, 0x14c, 0x150, 0x154, 0x158, 0x15c, 0x1e8, 0x1ec, 0x1f0, 0x1f4, 0x1f8, 0x1fc, 0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x228, 0x22c, 0x230, 0x234], gap at: 0x168. */
s32 __glCrmDumpPerPixelStippledSpan(void *arg0, f32 fparg7) {
    s64 sp240;
    s64 sp238;
    s64 sp138;
    f64 sp130;
    s32 sp12C;
    s32 sp128;
    s32 sp124;
    s32 sp120;
    s32 sp11C;
    s32 sp118;
    f32 sp114;
    f32 sp110;
    f32 sp10C;
    f32 sp108;
    s32 sp104;
    f32 sp100;
    s64 spF8;
    f64 spF0;
    s64 spE8;
    f64 spE0;
    s32 spDC;
    s32 spD8;
    s64 spD0;
    s64 spC8;
    s32 spC4;
    f32 spC0;
    s64 spB8;
    f64 spB0;
    s64 spA8;
    f64 spA0;
    s32 sp9C;
    f32 sp98;
    s64 sp90;
    f64 sp88;
    s64 sp80;
    f64 sp78;
    s32 sp70;
    s64 sp68;
    f64 sp60;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp24;
    s32 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f32 sp4;
    u32 sp0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 var_f10;
    f32 var_f15;
    f32 var_f19;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f28;
    f32 var_f30;
    f32 var_f4;
    f32 var_f5;
    f64 temp_f16;
    f64 temp_f4;
    f64 var_f14;
    f64 var_f6;
    f64 var_f7;
    f64 var_f8;
    f64 var_f9;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_s0;
    s32 temp_s7;
    s32 temp_t9;
    s32 var_s4;
    s32 var_s5;
    s32 var_s8;
    s64 temp_a3_2;
    s64 temp_at;
    s64 temp_t2;
    s64 temp_v1;
    s64 var_a0;
    s64 var_a2;
    s64 var_s6;
    u32 var_s3;
    void *temp_s1;

    var_f19 = fparg7;
    unksp168 = (s64) arg0->unk7708;
    unksp1A0 = (s64) arg0->unk7DBC;
    temp_s1 = arg0->unk7DB8;
    var_s4 = arg0->unk75F4;
    temp_a3 = arg0->unk76E4;
    unksp170 = (s64) arg0->unk7628;
    var_a2 = temp_a3 & 4;
    sp0 = arg0->unk7D64;
    if (var_a2 != 0) {
        sp4 = (f32) ((u64) ((s64) arg0->unk75FC << 0x20) >> 0x20);
    }
    var_f26 = arg0->unk760C;
    var_f28 = arg0->unk7608;
    var_f24 = arg0->unk7604;
    var_f22 = arg0->unk7600;
    if (temp_a3 & 8) {
        if ((arg0->unk6E38 == 0) || (var_s5 = 0, (arg0->unk7D58 & 0x8000))) {
            var_s5 = 1;
        }
        if (var_s5 != 0) {
            sp24 = arg0->unk7EF4;
            sp20 = arg0->unk7EF0;
            sp18 = arg0->unk7E88;
            sp10 = arg0->unk7E80;
            sp8 = arg0->unk7E78;
            sp0 = (((sp0 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
        } else {
            sp38 = arg0->unk7620;
            var_f19 = arg0->unk761C;
            sp34 = var_f19;
            sp30 = arg0->unk7618;
            sp2C = arg0->unk7614;
            sp28 = arg0->unk7610;
        }
        var_s8 = 1;
    } else {
        var_s8 = 0;
        var_s5 = 0;
    }
    temp_t9 = arg0->unk778;
    var_f20 = arg0->unk7624;
    unksp1B8 = (s64) temp_t9;
    if (temp_t9 == 0x1102) {
        temp_f14 = arg0->unk648;
        sp44 = arg0->unk650;
        sp3C = temp_f14;
        sp40 = temp_f14 * temp_f14;
    }
    if (unksp170 != 0) {
        var_f14 = 1.0;
        var_f15 = second half of f64;
        var_f10 = 4096.0f;
        var_f30 = sp48;
        unksp1C0 = 0;
        var_f6 = sp10;
        var_f7 = second half of f64;
        var_f8 = sp18;
        var_f9 = second half of f64;
        var_f5 = sp4;
        unksp190 = temp_a3 & 0x2000;
        unksp188 = arg0->unk75F8 << 6;
        unksp198 = (s64) sp0;
        sp130 = (bitwise f64) sp3C;
        temp_v1 = 1 << 0x2B;
        unksp1B0 = temp_v1 >> sp24;
        var_a0 = 0;
        unksp1C8 = (s64) (sp0 >> 0x18);
        unksp180 = temp_a3 & 0x3000;
        temp_s7 = temp_a3 & 1;
        unksp1A8 = temp_v1 >> sp20;
        unksp1D0 = temp_a3 & 0x1000;
        unksp178 = (sp20 >> 2) | (sp24 >> 1);
        var_s3 = 0x80000000;
loop_14:
        temp_at = unksp168 + 4;
        unksp168 = temp_at;
        temp_t2 = (unksp170 > 0x20) ? 0x20 : unksp170;
        temp_a3_2 = temp_t2 - 1;
        unksp1D8 = (s64) temp_at->unk-4;
        unksp170 -= temp_t2;
        var_s6 = temp_a3_2;
        if (temp_a3_2 >= 0) {
            unksp160 = (s64) var_s4;
            sp138 = temp_a3_2;
loop_33:
            temp_s0 = unksp1D8 & var_s3;
            if (var_a0 != 0) {
                if (temp_s0 != 0) {
                    goto block_35;
                }
            } else if (temp_s0 != 0) {
                if (arg0->unk7D60 != unksp198) {
                    arg0->unk7DB8->unk2060 = (s32) unksp198;
                    arg0->unk7DBC->unk2060 = sp0;
                    arg0->unk7D60 = sp0;
                }
                sp4C = (s32) unksp188;
                temp_s1->unk2084 = sp4C;
                var_a0 = 1;
                unksp1A0->unk2084 = sp4C;
                if (unksp1C8 == 3) {
                    sp50 = (s32) unksp188;
                    temp_s1->unk208C = sp50;
                    unksp1A0->unk208C = sp50;
                }
block_35:
                temp_a3_3 = var_s4 << 6;
                sp54 = temp_a3_3;
                temp_s1->unk2080 = sp54;
                if (unksp1C8 == 3) {
                    sp58 = temp_a3_3;
                    temp_s1->unk2088 = sp58;
                }
            }
            if (var_a2 != 0) {
                if (temp_s0 != 0) {
                    temp_f4 = (f64) (64.0f * var_f5);
                    var_f5 = second half of f64;
                    sp60 = temp_f4;
                    sp68 = (s64) sp60;
                    temp_s1->unk21C8 = sp68;
                }
                var_f15 = (f32) arg0->unk7674;
                var_f5 += var_f15;
            }
            if (var_s8 != 0) {
                if (unksp1C0 != 0) {
                    goto block_42;
                }
                if (temp_s0 != 0) {
                    if (var_s5 != 0) {
                        sp70 = (s32) unksp178;
                        temp_s1->unk2134 = sp70;
                        unksp1A0->unk2134 = sp70;
                        temp_f16 = (f64) unksp1A8;
                        sp78 = arg0->unk7E90 * temp_f16;
                        sp80 = (s64) sp78;
                        temp_s1->unk2138 = (f64) (second half of f64);
                        unksp1A0->unk2138 = sp80;
                        sp88 = arg0->unk7EA0 * (f64) unksp1B0;
                        var_f22 = second half of f64;
                        sp90 = (s64) sp88;
                        var_f20 = second half of f64;
                        temp_s1->unk2148 = sp90;
                        unksp1A0->unk2148 = sp90;
                        var_f19 = second half of f64;
                        sp98 = (f32) (arg0->unk7EB0 * 536870912.0);
                        sp9C = (s32) sp98;
                        temp_s1->unk2158 = sp9C;
                        unksp1A0->unk2158 = sp9C;
                        var_f14 = second half of f64;
                        spA0 = arg0->unk7E98 * temp_f16;
                        var_f5 = second half of f64;
                        spA8 = (s64) spA0;
                        temp_s1->unk2140 = (f64) (second half of f64);
                        unksp1A0->unk2140 = spA8;
                        spB0 = arg0->unk7EA8 * (second half of f64);
                        var_f30 = second half of f64;
                        spB8 = (s64) spB0;
                        var_f28 = second half of f64;
                        var_f26 = second half of f64;
                        temp_s1->unk2150 = spB8;
                        unksp1A0->unk2150 = spB8;
                        var_f24 = second half of f64;
                        spC0 = (f32) (arg0->unk7EB8 * 536870912.0);
                        spC4 = (s32) spC0;
                        temp_s1->unk215C = spC4;
                        unksp1A0->unk215C = spC4;
                        if (var_a2 != 0) {
                            spC8 = 0;
                            var_f20 = second half of f64;
                            spD0 = 0;
                            var_f19 = second half of f64;
                            temp_s1->unk21D0 = spC8;
                            unksp1A0->unk21D0 = (bitwise f64) (second half of f64);
                            temp_s1->unk21D8 = spD0;
                            unksp1A0->unk21D8 = spD0;
                        }
                        if (arg0->unk700 & 0x20) {
                            spD8 = 0;
                            temp_s1->unk2180 = spD8;
                            unksp1A0->unk2180 = spD8;
                            spDC = 0;
                            temp_s1->unk2188 = spDC;
                            unksp1A0->unk2188 = spDC;
                        }
                        unksp1C0 = 1;
block_42:
                        if (temp_s0 != 0) {
                            if (var_s5 != 0) {
                                var_f26 = second half of f64;
                                spE0 = (f64) unksp1A8 * var_f7;
                                var_f24 = second half of f64;
                                spE8 = (s64) spE0 + 0x800;
                                var_f22 = second half of f64;
                                spF0 = (f64) unksp1B0 * var_f6;
                                var_f20 = second half of f64;
                                spF8 = (s64) spF0 + 0x800;
                                var_f19 = (f32) (536870912.0 * var_f8);
                                sp100 = var_f19;
                                temp_s1->unk2120 = (f64) (second half of f64);
                                temp_s1->unk2128 = spF8;
                                sp104 = (s32) sp100 + 0x800;
                                temp_s1->unk2130 = sp104;
                            } else {
                                goto block_78;
                            }
                            goto block_45;
                        }
                        goto block_17;
                    }
block_78:
                    sp18 = var_f8;
                    sp8 = var_f7;
                    sp10 = var_f6;
                    sp4 = var_f5;
                    temp_f14_2 = arg0->unkDD8 / sp34;
                    sp114 = var_f26;
                    sp110 = var_f28;
                    sp10C = var_f24;
                    sp108 = var_f22;
                    sp238 = var_a2;
                    sp240 = var_a0;
                    arg0->unk30EC(arg0, &sp108, var_a2, 64.0f, 0.0f, temp_f14_2 * sp28, temp_f14_2 * sp2C, temp_f14_2 * sp30, temp_f14_2 * sp38, sp28, var_f19);
                    var_a0 = sp240;
                    var_a2 = sp238;
                    var_f19 = (bitwise f32) (s32) sp108;
                    var_f10 = second half of f64;
                    var_f14 = 1.0;
                    var_f8 = sp18;
                    var_f9 = second half of f64;
                    var_f6 = sp10;
                    var_f7 = second half of f64;
                    var_f5 = sp4;
                    sp118 = (s32) sp114 | ((bitwise s32) var_f19 << 0x18) | (((s32) sp10C << 0x10) | ((s32) sp110 << 8));
                    temp_s1->unk20D0 = sp118;
block_45:
                    if (var_s5 == 0) {
                        goto block_46;
                    }
                    goto block_18;
                }
block_17:
                if (var_s5 != 0) {
block_18:
                    var_f15 = (f32) arg0->unk7E90;
                    var_f14 = second half of f64;
                    var_f8 += second half of f64;
                    var_f9 = second half of f64;
                    var_f7 = (f64) var_f15 + (second half of f64);
                    var_f6 = second half of f64;
                } else {
block_46:
                    var_f15 = arg0->unk76B8;
                    sp38 += arg0->unk76BC;
                    sp34 += var_f15;
                    sp30 += arg0->unk76B4;
                    sp2C += arg0->unk76B0;
                    sp28 += arg0->unk76AC;
                }
            }
            var_f4 = var_f20;
            if (unksp1D0 != 0) {
                goto block_20;
            }
            if ((unksp190 == 0) || (var_s5 == 0)) {
                if (temp_s7 == 0) {
                    goto block_50;
                }
                goto block_26;
            }
block_20:
            if (temp_s0 != 0) {
                if (unksp1B8 != 0x1102) {
                    var_f30 = var_f20;
                    goto block_23;
                }
                temp_a3_4 = arg0->unk634;
                if (var_f20 < 0.0f) {
                    var_f4 = -var_f20;
                }
                if (temp_a3_4 != 0x800) {
                    if (temp_a3_4 != 0x801) {
                        if (temp_a3_4 == 0x2601) {
                            var_f30 = arg0->unk654 * (sp44 - var_f4);
                        }
                    } else {
                        sp18 = var_f8;
                        sp8 = var_f7;
                        sp10 = var_f6;
                        sp4 = var_f5;
                        sp238 = var_a2;
                        sp240 = var_a0;
                        temp_f0 = powf((s32) var_a0, unksp1D0, var_a2, temp_a3_4, -1, 3, 0x1102, 0x800, 2.7182817f, -(var_f4 * (var_f4 * sp40)), (f32) var_f14, (f64) var_f15);
                        var_f6 = second half of f64;
                        var_f9 = 255.0;
                        var_f8 = second half of f64;
                        var_f10 = second half of f64;
                        var_f14 = 1.0;
                        var_f15 = second half of f64;
                        var_f30 = temp_f0;
                    }
                } else {
                    sp18 = var_f8;
                    sp8 = var_f7;
                    sp10 = var_f6;
                    sp4 = var_f5;
                    sp238 = var_a2;
                    sp240 = var_a0;
                    temp_f0_2 = powf((s32) var_a0, unksp1D0, var_a2, temp_a3_4, -1, 3, 0x1102, 0x800, 2.7182817f, -(var_f4 * (bitwise f32) sp130), (f32) var_f14, (f64) var_f15);
                    var_f6 = second half of f64;
                    var_f9 = 255.0;
                    var_f8 = second half of f64;
                    var_f10 = second half of f64;
                    var_f14 = 1.0;
                    var_f15 = second half of f64;
                    var_f30 = temp_f0_2;
                }
                if (var_f30 < 0.0f) {
                    var_f30 = 0.0f;
                    if (temp_s7 == 0) {

                    } else {
                        goto block_24;
                    }
                } else {
                    var_f30 = M2C_ERROR(/* unknown instruction: movt.s $f30, $f23, $fcc2 */);
                    goto block_23;
                }
            } else {
block_23:
                if (temp_s7 != 0) {
block_24:
                    sp120 = (s32) (var_f10 * (f32) ((f64) var_f30 * var_f9));
                    temp_s1->unk2178 = sp120;
                }
            }
            var_f19 = arg0->unk76E0;
            var_f20 += var_f19;
            if (temp_s7 != 0) {
block_26:
                if ((temp_s0 != 0) && ((var_s8 == 0) || (var_s5 != 0))) {
                    sp11C = (s32) var_f26 | ((s32) var_f22 << 0x18) | (((s32) var_f24 << 0x10) | ((s32) var_f28 << 8));
                    temp_s1->unk20D0 = sp11C;
                }
                var_f26 += arg0->unk7658;
                var_f28 += arg0->unk7654;
                var_f24 += arg0->unk7650;
                var_f22 += arg0->unk764C;
                if (temp_s0 != 0) {
                    goto block_31;
                }
            } else {
block_50:
                if (temp_s0 != 0) {
                    if (unksp180 != 0) {
                        var_f20 = second half of f64;
                        var_f19 = second half of f64;
                        sp124 = (s32) (f32) M2C_ERROR(/* unknown instruction: madd.d $f18, $f18, $f19, $f21 */);
                        temp_s1->unk20D0 = sp124;
                    } else {
                        sp128 = (s32) var_f22;
                        temp_s1->unk20D0 = sp128;
                    }
                }
                var_f22 += arg0->unk764C;
                if (temp_s0 == 0) {

                } else {
block_31:
                    sp12C = 0;
                    temp_s1->unk29F0 = sp12C;
                }
            }
            var_s6 -= 1;
            var_s3 = var_s3 >> 1;
            var_s4 += 1;
            if (var_s6 != -1) {
                goto loop_33;
            }
            var_s4 = unksp160 + sp138 + 1;
        }
        var_s3 = 0x80000000;
        if (unksp170 != 0) {
            goto loop_14;
        }
    }
    arg0->unk8080 = 0;
    return 0;
}

s32 __glCrmDumpSpan(void *arg0, void *arg1) {
    s32 sp114;
    s32 sp110;
    s32 sp10C;
    s32 sp108;
    s32 sp104;
    f32 sp100;
    s64 spF8;
    f64 spF0;
    s64 spE8;
    f64 spE0;
    s32 spDC;
    f32 spD8;
    s64 spD0;
    f64 spC8;
    s64 spC0;
    f64 spB8;
    s32 spB4;
    f32 spB0;
    s64 spA8;
    f64 spA0;
    s64 sp98;
    f64 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    f32 sp7C;
    s32 sp78;
    f32 sp74;
    s32 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s64 sp38;
    s64 sp30;
    f64 sp28;
    s64 sp20;
    f64 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f15;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f64 temp_f10;
    f64 temp_f6_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a7;
    s32 var_t3;
    s32 var_t8;
    s64 temp_a4_2;
    void *temp_a2;
    void *var_a1;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d96b9e0
    if (M2C_ERROR()) {
        var_a6 = 1;
    } else {
        var_a1 = (void *) (~temp_a3 & 8);
        if (!(temp_a3 & 0x2000) || (var_a6 = 1, (var_a1 == NULL))) {
            var_a6 = 0;
        }
    }
    temp_t0 = temp_a3 & 8;
    var_a4 = var_a6 & 0xFF;
    if (temp_t0 != 0) {
        var_a4 = 0;
        if (var_a4 != 0) {
            temp_a4 = *arg0->unk9B4;
            if (temp_a4 != 0x8062) {
                var_a4 = 0;
                if (temp_a4 != 0x1E01) {
                    if ((arg0->unk764C == 0.0f) && (arg0->unk7650 == 0.0f) && (arg0->unk7654 == 0.0f) && (arg0->unk7658 == 0.0f)) {
                        goto block_10;
                    }
                    return __glCrmDumpPerPixelSpan(var_a1, temp_a2, temp_a3, 0, var_a5, 0x1E01, 4096.0f);
                }
                goto block_11;
            }
block_10:
            var_a4 = 0;
            goto block_11;
        }
        goto block_11;
    }
    if (var_a4 != 0) {
        temp_a7 = arg0->unk7D74;
        var_a6_2 = sp0 & saved_reg_gp->unk-56A4;
        sp4 = temp_a7;
        var_t3 = 0;
        sp0 = var_a6_2;
        var_a7 = (temp_a7 & 0xFFFF0000) | 0x20;
    } else {
block_11:
        var_a5 -= 1;
        var_a7 = 0x03020000;
        if (!(arg0->unk807C & 2) || (arg0->unk8080 != 2)) {
            var_t8 = 1;
        } else {
            var_t8 = 0;
        }
        var_a6_2 = sp0;
        var_t3 = var_t8 & 0xFF;
    }
    if (arg0->unk7D5C != var_a6_2) {
        temp_a2->unk2018 = var_a6_2;
        arg0->unk7DBC->unk2018 = sp0;
        arg0->unk7D5C = sp0;
    }
    var_a6_3 = temp_t2 << 6;
    if (arg0->unk7D60 != var_a7) {
        arg0->unk7DB8->unk2060 = var_a7;
        sp4 = var_a7;
        arg0->unk7DBC->unk2060 = var_a7;
        arg0->unk7D60 = var_a7;
        var_a6_3 = temp_t2 << 6;
    }
    sp8 = var_a6_3;
    temp_at = arg0->unk75F8 << 6;
    spC = temp_at;
    temp_a2->unk2084 = spC;
    temp_a2->unk2080 = sp8;
    sp10 = (var_a5 + temp_t2) << 6;
    sp14 = temp_at;
    temp_a2->unk208C = sp14;
    temp_a2->unk2088 = sp10;
    if (temp_a3 & 4) {
        sp18 = (f64) (64.0f * (f32) ((u64) ((s64) arg0->unk75FC << 0x20) >> 0x20));
        sp20 = (s64) sp18;
        temp_a2->unk21C8 = sp20;
        sp28 = (f64) (64.0f * (f32) arg0->unk7674);
        sp30 = (s64) sp28;
        sp38 = 0;
        temp_a2->unk21D8 = sp38;
        temp_a2->unk21D0 = (f64) (second half of f64);
    }
    temp_f4 = arg0->unk7600;
    if (temp_a3 & 1) {
        temp_f6 = arg0->unk760C;
        temp_f7 = arg0->unk7608;
        temp_f5 = arg0->unk7604;
        if (var_a4 != 0) {
            sp40 = (s32) (4096.0f * temp_f4);
            sp44 = (s32) (4096.0f * temp_f5);
            temp_a2->unk20E0 = (f64) sp40;
            sp48 = (s32) (4096.0f * temp_f7);
            sp4C = (s32) (4096.0f * temp_f6);
            temp_a2->unk20E8 = (f64) sp48;
            sp50 = (s32) (arg0->unk764C * 4096.0f);
            sp54 = (s32) (arg0->unk7650 * 4096.0f);
            temp_a2->unk20F0 = (f64) sp50;
            sp58 = (s32) (arg0->unk7654 * 4096.0f);
            sp5C = (s32) (arg0->unk7658 * 4096.0f);
            sp60 = 0;
            sp68 = 0;
            temp_a2->unk2108 = sp68;
            temp_a2->unk20F8 = sp60;
            temp_a2->unk2100 = (f64) (second half of f64);
        } else if (var_t3 != 0) {
            sp70 = (s32) temp_f6 | ((s32) temp_f4 << 0x18) | (((s32) temp_f5 << 0x10) | ((s32) temp_f7 << 8));
            temp_a2->unk20D0 = sp70;
        }
    } else if (var_a4 != 0) {
        sp74 = temp_f4;
        temp_f15 = M2C_ERROR(/* unknown instruction: movz.s $f15, $f19, $v1 */);
        sp74 *= temp_f15;
        sp78 = (s32) sp74;
        temp_a2->unk20EC = sp78;
        sp7C = arg0->unk764C;
        sp7C *= temp_f15;
        sp80 = (s32) sp7C;
        sp84 = 0;
        temp_a2->unk210C = sp84;
        temp_a2->unk2104 = sp80;
    } else if (var_t3 != 0) {
        sp88 = (s32) temp_f4;
        temp_a2->unk20D0 = sp88;
    }
    if (temp_t0 != 0) {
        temp_a5 = arg0->unk7EF4;
        temp_t0_2 = arg0->unk7EF0;
        temp_a4_2 = 1 << 0x2B;
        sp8C = (temp_t0_2 >> 2) | (temp_a5 >> 1);
        temp_a2->unk2134 = sp8C;
        temp_f10 = (f64) (temp_a4_2 >> temp_t0_2);
        sp90 = arg0->unk7E78 * temp_f10;
        sp98 = (s64) sp90 + 0x800;
        temp_a2->unk2120 = sp98;
        temp_f6_2 = (f64) (temp_a4_2 >> temp_a5);
        spA0 = arg0->unk7E80 * temp_f6_2;
        spA8 = (s64) spA0 + 0x800;
        temp_a2->unk2128 = spA8;
        spB0 = (f32) (arg0->unk7E88 * 536870912.0);
        spB4 = (s32) spB0 + 0x800;
        temp_a2->unk2130 = spB4;
        spB8 = arg0->unk7E90 * temp_f10;
        spC0 = (s64) spB8;
        temp_a2->unk2138 = spC0;
        spC8 = arg0->unk7EA0 * temp_f6_2;
        spD0 = (s64) spC8;
        temp_a2->unk2148 = spD0;
        spD8 = (f32) (arg0->unk7EB0 * 536870912.0);
        spDC = (s32) spD8;
        temp_a2->unk2158 = spDC;
        spE0 = arg0->unk7E98 * temp_f10;
        spE8 = (s64) spE0;
        temp_a2->unk2140 = spE8;
        spF0 = arg0->unk7EA8 * (second half of f64);
        spF8 = (s64) spF0;
        temp_a2->unk2150 = spF8;
        sp100 = (f32) (arg0->unk7EB8 * (second half of f64));
        sp104 = (s32) sp100;
        temp_a2->unk215C = sp104;
        if (temp_a3 & 0x2000) {
            sp108 = (s32) (4096.0f * (f32) ((f64) arg0->unk7624 * (second half of f64)));
            temp_a2->unk2178 = sp108;
            sp10C = (s32) (4096.0f * arg0->unk76E0);
            sp110 = 0;
            temp_a2->unk2188 = sp110;
            temp_a2->unk2180 = sp10C;
        }
    }
    sp114 = 0;
    temp_a2->unk29F0 = sp114;
    temp_a3_2 = arg0->unk7D58;
    if (arg0->unk7D5C != temp_a3_2) {
        arg0->unk7DB8->unk2018 = temp_a3_2;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
        if (var_t3 == 0) {

        } else {
            goto block_31;
        }
    } else if (var_t3 != 0) {
block_31:
        arg0->unk8080 = 0;
    }
    return 0;
}

s32 __glCrmDumpStippledSpan(void *arg0, void *arg1) {
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    f64 sp190;
    s32 sp18C;
    s32 sp188;
    s32 sp184;
    s32 sp180;
    s32 sp17C;
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
    s32 sp12C;
    f32 sp128;
    s64 sp120;
    f64 sp118;
    s64 sp110;
    f64 sp108;
    s32 sp100;
    s32 spFC;
    f32 spF8;
    s32 spF4;
    s32 spF0;
    s32 spEC;
    f32 spE8;
    s32 spE4;
    s32 spE0;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s64 spC8;
    s64 spC0;
    s32 spBC;
    s32 spB8;
    s32 spB4;
    s32 spB0;
    s64 spA8;
    f64 spA0;
    s64 sp98;
    s64 sp90;
    f64 sp88;
    s32 sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    f32 sp6C;
    f32 sp68;
    s32 sp64;
    s32 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    s32 sp4;
    s32 sp0;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f4;
    f32 var_f8;
    f64 temp_f10;
    f64 temp_f9;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_t2;
    s32 temp_t8;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a7;
    s32 var_s3;
    s32 var_s4;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t3;
    s64 temp_t9;
    void *temp_a2;
    void *temp_s1;
    void *var_a1;
    void *var_t1;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d96c424
    if (M2C_ERROR()) {
        var_a4 = 1;
    } else {
        var_a1 = (void *) (temp_a5 & 0x2000);
        if ((var_a1 == NULL) || (var_a4 = 1, ((~temp_a5 & 8) == 0))) {
            var_a4 = 0;
        }
    }
    temp_t2 = temp_a5 & 8;
    var_t3 = temp_a5 & 1;
    var_a7 = var_a4 & 0xFF;
    if (temp_t2 != 0) {
        if (var_a7 != 0) {
            temp_a4 = *arg0->unk9B4;
            if (temp_a4 != 0x8062) {
                if (temp_a4 != 0x1E01) {
                    if ((arg0->unk764C == 0.0f) && (arg0->unk7650 == 0.0f) && (arg0->unk7654 == 0.0f) && (arg0->unk7658 == 0.0f)) {
                        goto block_10;
                    }
                    return __glCrmDumpPerPixelStippledSpan(var_a1, (bitwise f64) temp_a2, var_a3, temp_a4, temp_a5, temp_a6, 0x1E01);
                }
                goto block_11;
            }
block_10:
            goto block_11;
        }
block_11:
        var_s3 = sp0 | 0x40000;
        var_s4 = 0x20000 | (((sp4 & 0xFFFFFF) | 0x03000000) & ~0x30000);
        if (!(arg0->unk807C & 2) || (var_a4_2 = 0, (arg0->unk8080 != 2))) {
            var_a4_2 = 1;
        }
        var_t3 = temp_a5 & 1;
        sp1A8 = var_a4_2 & 0xFF;
        if (var_t3 != 0) {
            sp10 = arg0->unk760C;
            spC = arg0->unk7608;
            sp8 = arg0->unk7604;
        }
        var_a7 = 0;
        goto block_17;
    }
    if (var_a7 != 0) {
        temp_at = arg0->unk7D74;
        sp1A8 = 0;
        sp4 = temp_at;
        var_s3 = (sp0 & ~0x3000) | 0x80000;
        var_s4 = (temp_at & 0xFFFF0000) | 0x20;
    } else {
        var_s3 = sp0 | 0x40000;
        var_s4 = 0x20000 | (((sp4 & 0xFFFFFF) | 0x03000000) & ~0x30000);
        if (!(arg0->unk807C & 2) || (arg0->unk8080 != 2)) {
            var_a4_3 = 1;
        } else {
            var_a4_3 = 0;
        }
        sp1A8 = var_a4_3 & 0xFF;
    }
    if (var_t3 != 0) {
        sp10 = arg0->unk760C;
        spC = arg0->unk7608;
        sp8 = arg0->unk7604;
    }
    if (var_a7 != 0) {
        var_t1 = arg0->unk7708;
        sp14 = arg0->unk764C;
        if (var_t3 != 0) {
            sp20 = arg0->unk7658;
            sp1C = arg0->unk7654;
            sp18 = arg0->unk7650;
        } else {
            sp24 = arg0->unkCB4;
        }
    } else {
block_17:
        var_t1 = arg0->unk7708;
    }
    temp_t8 = temp_a5 & 4;
    if (temp_t8 != 0) {
        sp2C = (f32) arg0->unk7674;
        sp28 = (f32) ((u64) ((s64) arg0->unk75FC << 0x20) >> 0x20);
    }
    if (temp_t2 != 0) {
        sp64 = arg0->unk7EF4;
        sp60 = arg0->unk7EF0;
        sp58 = arg0->unk7EB0;
        sp50 = arg0->unk7EA0;
        sp48 = arg0->unk7E90;
        sp40 = arg0->unk7E88;
        sp38 = arg0->unk7E80;
        sp30 = arg0->unk7E78;
        if (temp_a5 & 0x2000) {
            sp6C = arg0->unk76E0;
            sp68 = arg0->unk7624;
        }
    }
    if (var_a3 != 0) {
        var_f15 = sp8;
        var_f14 = spC;
        var_f13 = sp10;
        var_f5 = sp30;
        var_f4 = second half of f64;
        var_f6 = sp40;
        var_f7 = second half of f64;
        var_f8 = sp28;
        sp0 = var_s3;
        temp_t9 = 1 << 0x2B;
        sp4 = var_s4;
        sp1A0 = temp_a6 << 6;
        var_a4_4 = 0;
        sp198 = (sp60 >> 2) | (sp64 >> 1);
        sp190 = M2C_ERROR(/* unknown instruction: movz.s $f0, $f1, $at */);
loop_30:
        temp_a5_2 = (var_a3 > 0x20) ? 0x20 : var_a3;
        var_a3 -= temp_a5_2;
        if (var_a4_4 == 0) {
            if (arg0->unk7D5C != var_s3) {
                arg0->unk7DB8->unk2018 = var_s3;
                arg0->unk7DBC->unk2018 = sp0;
                arg0->unk7D5C = sp0;
            }
            if (arg0->unk7D60 != var_s4) {
                arg0->unk7DB8->unk2060 = var_s4;
                arg0->unk7DBC->unk2060 = sp4;
                arg0->unk7D60 = sp4;
            }
            sp70 = (s32) sp1A0;
            temp_a2->unk2084 = sp70;
            temp_s1->unk2084 = sp70;
            sp74 = (s32) sp1A0;
            temp_a2->unk208C = sp74;
            temp_s1->unk208C = sp74;
        }
        sp78 = var_t0 << 6;
        temp_a6_2 = temp_a5_2 + var_t0;
        temp_a2->unk2080 = sp78;
        if (var_a7 != 0) {
            sp7C = temp_a6_2 << 6;
            var_t0_2 = sp7C;
        } else {
            sp80 = (temp_a6_2 - 1) << 6;
            var_t0_2 = sp80;
        }
        temp_a2->unk2088 = var_t0_2;
        if (temp_t8 != 0) {
            if (var_a4_4 == 0) {
                sp88 = (f64) (sp2C * (second half of f64));
                sp90 = (s64) sp88;
                sp98 = 0;
                var_f8 = second half of f64;
                temp_a2->unk21D0 = (f64) (second half of f64);
                temp_s1->unk21D0 = sp90;
                temp_a2->unk21D8 = sp98;
                temp_s1->unk21D8 = sp98;
            }
            spA0 = (f64) ((second half of f64) * var_f8);
            spA8 = (s64) spA0;
            var_f8 = second half of f64;
            temp_a2->unk21C8 = spA8;
            if (var_a3 != 0) {
                var_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f1, $f25 */);
            }
        }
        if (var_t3 != 0) {
            if (var_a4_4 != 0) {
                if (var_a7 != 0) {
                    goto block_40;
                }
            } else {
                if (var_a7 != 0) {
                    spB0 = (s32) (sp14 * 4096.0f);
                    spB4 = (s32) (sp18 * 4096.0f);
                    temp_a2->unk20F0 = (f64) (second half of f64);
                    temp_s1->unk20F0 = (f64) spB0;
                    spB8 = (s32) ((second half of f64) * 4096.0f);
                    spBC = (s32) ((second half of f64) * 4096.0f);
                    spC0 = 0;
                    spC8 = 0;
                    var_f8 = second half of f64;
                    temp_a2->unk2100 = (f64) (second half of f64);
                    temp_s1->unk2100 = (f64) spB8;
                    temp_a2->unk20F8 = (f64) (second half of f64);
                    temp_s1->unk20F8 = spC0;
                    temp_a2->unk2108 = spC8;
                    temp_s1->unk2108 = spC8;
                } else if (sp1A8 != 0) {
                    spD0 = (s32) var_f13 | ((s32) var_f4 << 0x18) | (((s32) var_f14 << 8) | ((s32) var_f15 << 0x10));
                    temp_a2->unk20D0 = spD0;
                    temp_s1->unk20D0 = spD0;
                }
                if (var_a7 == 0) {

                } else {
block_40:
                    spD8 = (s32) (4096.0f * var_f4);
                    spDC = (s32) (4096.0f * var_f15);
                    temp_a2->unk20E0 = (f64) spD8;
                    spE0 = (s32) (4096.0f * var_f14);
                    spE4 = (s32) (4096.0f * var_f13);
                    temp_a2->unk20E8 = (f64) spE0;
                    if (var_a3 != 0) {
                        var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f1, $f22 */);
                        var_f14 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f1, $f20 */);
                        var_f15 = M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f1, $f31 */);
                        var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f1, $f27 */);
                    }
                }
            }
        } else if (var_a4_4 != 0) {
            if (var_a7 != 0) {
                goto block_59;
            }
        } else {
            if (var_a7 != 0) {
                spE8 = sp14;
                spE8 *= (bitwise f32) sp190;
                spEC = (s32) spE8;
                temp_a2->unk2104 = spEC;
                temp_s1->unk2104 = spEC;
                spF0 = 0;
                temp_a2->unk210C = spF0;
                temp_s1->unk210C = spF0;
            } else if (sp1A8 != 0) {
                spF4 = (s32) var_f4;
                temp_a2->unk20D0 = spF4;
                temp_s1->unk20D0 = spF4;
            }
            if (var_a7 == 0) {

            } else {
block_59:
                spF8 = var_f4;
                spF8 *= (bitwise f32) sp190;
                spFC = (s32) spF8;
                temp_a2->unk20EC = spFC;
                if (var_a3 != 0) {
                    var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f3, $f27 */);
                }
            }
        }
        var_t1 += 4;
        if (temp_t2 != 0) {
            temp_f9 = (f64) (temp_t9 >> sp60);
            var_f8 = second half of f64;
            temp_f10 = (f64) (temp_t9 >> sp64);
            if (var_a4_4 == 0) {
                sp100 = (s32) sp198;
                temp_a2->unk2134 = sp100;
                temp_s1->unk2134 = sp100;
                sp108 = sp48 * temp_f9;
                sp110 = (s64) sp108;
                sp118 = sp50 * temp_f10;
                temp_a2->unk2138 = (f64) (second half of f64);
                temp_s1->unk2138 = (f64) (second half of f64);
                sp120 = (s64) sp118;
                sp128 = (f32) (second half of f64);
                temp_a2->unk2148 = sp120;
                temp_s1->unk2148 = sp120;
                sp12C = (s32) sp128;
                temp_a2->unk2158 = sp12C;
                temp_s1->unk2158 = sp12C;
                sp130 = arg0->unk7E98 * temp_f9;
                sp138 = (s64) sp130;
                temp_a2->unk2140 = (f64) (second half of f64);
                temp_s1->unk2140 = sp138;
                sp140 = arg0->unk7EA8 * temp_f10;
                sp148 = (s64) sp140;
                temp_a2->unk2150 = (f64) (second half of f64);
                temp_s1->unk2150 = sp148;
                sp150 = (f32) (arg0->unk7EB8 * 536870912.0);
                sp154 = (s32) sp150;
                temp_a2->unk215C = sp154;
                temp_s1->unk215C = sp154;
            }
            sp158 = temp_f9 * var_f5;
            sp160 = (s64) sp158 + 0x800;
            sp168 = temp_f10 * var_f7;
            sp170 = (s64) sp168 + 0x800;
            sp178 = (f32) (536870912.0 * var_f6);
            temp_a2->unk2120 = (f64) (second half of f64);
            temp_a2->unk2128 = sp170;
            sp17C = (s32) sp178 + 0x800;
            temp_a2->unk2130 = sp17C;
            if (var_a3 != 0) {
                var_f8 = second half of f64;
                var_f6 = M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f9, $f21 */);
                var_f7 = M2C_ERROR(/* unknown instruction: madd.d $f7, $f7, $f9, $f19 */);
                var_f5 = M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f9, $f23 */);
            }
            if (temp_a5 & 0x2000) {
                if (var_a4_4 == 0) {
                    sp180 = (s32) (sp6C * 4096.0f);
                    temp_a2->unk2180 = sp180;
                    temp_s1->unk2180 = sp180;
                    sp184 = 0;
                    temp_a2->unk2188 = sp184;
                    temp_s1->unk2188 = sp184;
                }
                sp188 = (s32) (4096.0f * (f32) ((f64) (second half of f64) * (second half of f64)));
                temp_a2->unk2178 = sp188;
                if (var_a3 != 0) {
                    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f3, $f29 */);
                }
            }
            if (var_a4_4 == 0) {
                goto block_50;
            }
        } else if (var_a4_4 == 0) {
block_50:
            sp18C = 0x1F0000;
            temp_a2->unk20C0 = sp18C;
            var_a4_4 = 1;
            temp_s1->unk20C0 = sp18C;
        }
        var_t0 = temp_a6_2;
        temp_a2->unk28C4 = (s32) var_t1->unk-4;
        if (var_a3 != 0) {
            goto loop_30;
        }
    }
    temp_a2_2 = arg0->unk7D58;
    if (arg0->unk7D5C != temp_a2_2) {
        arg0->unk7DB8->unk2018 = temp_a2_2;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
        if (sp1A8 == 0) {

        } else {
            goto block_70;
        }
    } else if (sp1A8 != 0) {
block_70:
        arg0->unk8080 = 0;
    }
    return 0;
}

s32 __glCrmDumpStippledFlatSpan(void *arg0) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s32 sp50;
    s64 sp48;
    f64 sp40;
    s64 sp38;
    s64 sp30;
    f64 sp28;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    f32 spC;
    f32 sp8;
    s32 sp4;
    s32 sp0;
    f32 var_f4;
    f32 var_f6;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t9;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    void *temp_a5;
    void *temp_t8;
    void *var_t0;

    temp_t8 = arg0->unk7DBC;
    temp_a5 = arg0->unk7DB8;
    sp0 = arg0->unk7D58;
    temp_ra = sp0 | 0x40000;
    sp68 = (s64) (arg0 + 0x10000);
    var_a7 = arg0->unk75F4;
    var_a4 = arg0->unk7628;
    temp_s0 = (((sp4 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
    if (!(arg0->unk807C & 2) || (sp68->unk-7F80 != 2)) {
        var_a6 = 1;
    } else {
        var_a6 = 0;
    }
    var_t0 = arg0->unk7708;
    temp_t2 = arg0->unk76E4 & 4;
    temp_t9 = var_a6 & 0xFF;
    if (temp_t2 != 0) {
        spC = (f32) arg0->unk7674;
        sp8 = (f32) ((u64) ((s64) arg0->unk75FC << 0x20) >> 0x20);
    }
    var_f6 = spC;
    if (var_a4 != 0) {
        sp0 = temp_ra;
        sp4 = temp_s0;
        sp60 = arg0->unk75F8 << 6;
        var_a3 = 0;
        var_f4 = sp8;
        sp58 = (s32) arg0->unk760C | ((s32) arg0->unk7600 << 0x18) | (((s32) arg0->unk7604 << 0x10) | ((s32) arg0->unk7608 << 8));
loop_10:
        temp_a6 = (var_a4 > 0x20) ? 0x20 : var_a4;
        var_a4 -= temp_a6;
        if (var_a3 == 0) {
            if (arg0->unk7D5C != temp_ra) {
                arg0->unk7DB8->unk2018 = temp_ra;
                arg0->unk7DBC->unk2018 = sp0;
                arg0->unk7D5C = sp0;
            }
            if (arg0->unk7D60 != temp_s0) {
                arg0->unk7DB8->unk2060 = temp_s0;
                arg0->unk7DBC->unk2060 = sp4;
                arg0->unk7D60 = sp4;
            }
            sp10 = (s32) sp60;
            temp_a5->unk2084 = sp10;
            temp_t8->unk2084 = sp10;
            sp14 = (s32) sp60;
            temp_a5->unk208C = sp14;
            temp_t8->unk208C = sp14;
        }
        sp18 = var_a7 << 6;
        temp_t1 = temp_a6 + var_a7;
        temp_a5->unk2080 = sp18;
        sp1C = (temp_t1 - 1) << 6;
        var_t0 += 4;
        temp_a5->unk2088 = sp1C;
        if (var_a3 == 0) {
            if (temp_t9 != 0) {
                sp20 = (s32) sp58;
                temp_a5->unk20D0 = sp20;
                temp_t8->unk20D0 = sp20;
            }
        }
        if (temp_t2 != 0) {
            if (var_a3 == 0) {
                sp28 = (f64) (var_f6 * 64.0f);
                sp30 = (s64) sp28;
                sp38 = 0;
                temp_a5->unk21D0 = sp30;
                temp_t8->unk21D0 = (f64) (second half of f64);
                temp_a5->unk21D8 = sp38;
                temp_t8->unk21D8 = sp38;
            }
            sp40 = (f64) (64.0f * var_f4);
            sp48 = (s64) sp40;
            var_f6 = second half of f64;
            temp_a5->unk21C8 = sp48;
            if (var_a4 != 0) {
                var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f10, $f6 */);
            }
            if (var_a3 == 0) {
                goto block_17;
            }
        } else if (var_a3 != 0) {

        } else {
block_17:
            sp50 = 0x1F0000;
            temp_a5->unk20C0 = sp50;
            var_a3 = 1;
            temp_t8->unk20C0 = sp50;
        }
        var_a7 = temp_t1;
        temp_a5->unk28C4 = (s32) var_t0->unk-4;
        if (var_a4 != 0) {
            goto loop_10;
        }
    }
    temp_a3 = arg0->unk7D58;
    if (arg0->unk7D5C != temp_a3) {
        arg0->unk7DB8->unk2018 = temp_a3;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
        if (temp_t9 == 0) {
            /* Duplicate return node #30. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #29. Try simplifying control flow for better match */
        sp68->unk-7F80 = 0;
        return 0;
    }
    if (temp_t9 != 0) {
        sp68->unk-7F80 = 0;
        return 0;
    }
    return 0;
}

s32 __glCrmDumpStippledSmoothSpan(void *arg0) {
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s64 sp60;
    s64 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s64 sp40;
    f64 sp38;
    s64 sp30;
    s64 sp28;
    f64 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    f32 spC;
    f32 sp8;
    s32 sp4;
    s32 sp0;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    s32 temp_a1;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a5;
    s32 var_a7;
    void *temp_a4;
    void *temp_t8;
    void *var_t0;

    var_f6 = arg0->unk760C;
    var_f7 = arg0->unk7604;
    var_f5 = arg0->unk7600;
    temp_t8 = arg0->unk7DBC;
    temp_a4 = arg0->unk7DB8;
    temp_v1 = arg0->unk7D74;
    sp0 = arg0->unk7D58;
    var_a7 = arg0->unk75F4;
    temp_s0 = (temp_v1 & 0xFFFF0000) | 0x20;
    temp_t2 = arg0->unk76E4 & 4;
    var_a3 = arg0->unk7628;
    sp4 = temp_v1;
    temp_ra = (sp0 & ~0x3000) | 0x80000;
    if (temp_t2 != 0) {
        spC = (f32) arg0->unk7674;
        sp8 = (f32) ((u64) ((s64) arg0->unk75FC << 0x20) >> 0x20);
    }
    var_f8 = sp8;
    if (var_a3 != 0) {
        temp_t9 = arg0->unk75F8 << 6;
        sp0 = temp_ra;
        var_a5 = 0;
        sp4 = temp_s0;
        var_t0 = arg0->unk7708 + 4;
loop_10:
        temp_a6 = (var_a3 > 0x20) ? 0x20 : var_a3;
        var_a3 -= temp_a6;
        if (var_a5 == 0) {
            if (arg0->unk7D5C != temp_ra) {
                arg0->unk7DB8->unk2018 = temp_ra;
                arg0->unk7DBC->unk2018 = sp0;
                arg0->unk7D5C = sp0;
            }
            if (arg0->unk7D60 != temp_s0) {
                arg0->unk7DB8->unk2060 = temp_s0;
                arg0->unk7DBC->unk2060 = sp4;
                arg0->unk7D60 = sp4;
            }
            sp10 = temp_t9;
            temp_a4->unk2084 = sp10;
            temp_t8->unk2084 = sp10;
            sp14 = temp_t9;
            temp_a4->unk208C = sp14;
            temp_t8->unk208C = sp14;
        }
        sp18 = var_a7 << 6;
        temp_a4->unk2080 = sp18;
        temp_t1 = temp_a6 + var_a7;
        sp1C = temp_t1 << 6;
        temp_a4->unk2088 = sp1C;
        if (temp_t2 != 0) {
            if (var_a5 == 0) {
                sp20 = (f64) (spC * 64.0f);
                sp28 = (s64) sp20;
                sp30 = 0;
                temp_a4->unk21D0 = sp28;
                temp_t8->unk21D0 = sp28;
                temp_a4->unk21D8 = sp30;
                temp_t8->unk21D8 = sp30;
            }
            sp38 = (f64) (64.0f * var_f8);
            sp40 = (s64) sp38;
            temp_a4->unk21C8 = sp40;
            if (var_a3 != 0) {
                var_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f27, $f15 */);
            }
            if (var_a5 == 0) {
                goto block_16;
            }
        } else if (var_a5 != 0) {

        } else {
block_16:
            sp48 = (s32) (arg0->unk764C * 4096.0f);
            sp4C = (s32) (arg0->unk7650 * 4096.0f);
            temp_a4->unk20F0 = (f64) (second half of f64);
            temp_t8->unk20F0 = (f64) sp48;
            sp50 = (s32) (arg0->unk7654 * 4096.0f);
            sp54 = (s32) (arg0->unk7658 * 4096.0f);
            sp58 = 0;
            sp60 = 0;
            temp_a4->unk2100 = (f64) (second half of f64);
            temp_t8->unk2100 = (f64) sp50;
            temp_a4->unk20F8 = (f64) (second half of f64);
            temp_t8->unk20F8 = sp58;
            temp_a4->unk2108 = sp60;
            temp_t8->unk2108 = sp60;
        }
        sp68 = (s32) (4096.0f * var_f5);
        sp6C = (s32) (4096.0f * var_f7);
        temp_a4->unk20E0 = (f64) sp68;
        sp70 = (s32) (second half of f64);
        sp74 = (s32) (4096.0f * var_f6);
        temp_a4->unk20E8 = (f64) sp70;
        if (var_a3 != 0) {
            var_f6 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f13, $f19 */);
            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f11, $f19 */);
            var_f7 = M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f10, $f19 */);
            var_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f12, $f19 */);
            if (var_a5 == 0) {
                goto block_18;
            }
            goto block_8;
        }
        var_a7 = temp_t1;
        if (var_a5 == 0) {
block_18:
            sp78 = 0x1F0000;
            temp_a4->unk20C0 = sp78;
            var_a5 = 1;
            temp_t8->unk20C0 = sp78;
block_8:
            var_a7 = temp_t1;
        }
        temp_a1 = var_t0->unk-4;
        var_t0 += 4;
        temp_a4->unk28C4 = temp_a1;
        if (var_a3 != 0) {
            goto loop_10;
        }
    }
    temp_a4_2 = arg0->unk7D58;
    if (arg0->unk7D5C != temp_a4_2) {
        arg0->unk7DB8->unk2018 = temp_a4_2;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
        return 0;
    }
    return 0;
}

s32 __glCrmDumpSPBuffSpan(void *arg0, s32 arg4, s32 arg5) {
    ? sp40;
    u8 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp4;
    f32 var_f20;
    s32 temp_a0;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s64 var_a0;
    void *temp_s1;
    void *temp_t9;

    var_a4 = arg4;
    var_a5 = arg5;
    sp4 = arg0->unk75F8;
    var_a3 = arg0->unk75F4;
    temp_s3 = var_a3 + arg0->unk7628;
    if ((arg0->unk764C == 0.0f) && (arg0->unk7650 == 0.0f) && (arg0->unk7654 == 0.0f) && (arg0->unk7658 == 0.0f)) {
        sp38 = 0;
    }
    spC = arg0->unk7600;
    sp10 = arg0->unk7604;
    sp14 = arg0->unk7608;
    sp18 = arg0->unk760C;
    temp_a0 = arg0->unk700;
    if (var_a3 < temp_s3) {
        temp_s4 = temp_a0 & 2;
        unksp68 = (s64) &spC;
        temp_s5 = temp_a0 & 8;
loop_13:
        temp_t9 = arg0->unk77C8;
        temp_s1 = arg0->unk77D8 + (((var_a3 + (arg0->unk77E4 * (sp4 - temp_t9->unkE50))) - temp_t9->unkE4C) * 2 * 4);
        if (temp_s5 != 0) {
            var_f20 = (f32) ((*(&__glDitherTable + ((var_a3 & 3) + ((sp4 & 3) * 4))) * 2) + 1) * 0.03125f;
            if (temp_s4 != 0) {
                goto block_15;
            }
            goto block_9;
        }
        var_f20 = arg0->unkDD4;
        if (temp_s4 == 0) {
block_9:
            var_a0 = unksp68;
        } else {
block_15:
            arg0->unk30FC(arg0, arg0 + 0x77C8, sp, &sp40, var_a4, var_a5);
            var_a0 = (s64) &sp40;
        }
        var_a5 = (s32) (var_a0->unk4 + var_f20) & 0xFFFF;
        temp_s1->unk0 = (s32) (((s32) (var_a0->unk0 + var_f20) << 0x10) | var_a5);
        var_a4 = (s32) (var_a0->unkC + var_f20) & 0xFFFF;
        temp_s1->unk4 = (s32) (((s32) (var_a0->unk8 + var_f20) << 0x10) | var_a4);
        if (sp38 != 0) {
            spC += arg0->unk764C;
            sp10 += arg0->unk7650;
            sp14 += arg0->unk7654;
            sp18 += arg0->unk7658;
        }
        var_a3 += 1;
        if (temp_s3 != var_a3) {
            goto loop_13;
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0xb8, 0xbc, 0xc0, 0xc4], gap at: 0x70. */
s32 __glCrmDumpSPBuffSpanRed(void *arg0) {
    f32 sp40;
    u8 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp4;
    f32 var_f20;
    s16 *temp_s3;
    s32 temp_a0;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s6;
    s32 var_a3;
    s32 var_s0;
    s64 var_a0;
    void *temp_t8;

    sp4 = arg0->unk75F8;
    var_a3 = arg0->unk75F4;
    temp_s4 = var_a3 + arg0->unk7628;
    if ((arg0->unk764C == 0.0f) && (arg0->unk7650 == 0.0f) && (arg0->unk7654 == 0.0f) && (arg0->unk7658 == 0.0f)) {
        sp38 = 0;
    }
    spC = arg0->unk7600;
    sp10 = arg0->unk7604;
    sp14 = arg0->unk7608;
    sp18 = arg0->unk760C;
    temp_a0 = arg0->unk700;
    if (var_a3 < temp_s4) {
        var_s0 = var_a3 * 2;
        unksp68 = (s64) &spC;
        temp_s6 = temp_a0 & 2;
        temp_s5 = temp_a0 & 8;
        unksp70 = (s64) (arg0 + 0x77C8);
loop_13:
        temp_t8 = arg0->unk77C8;
        temp_s3 = (var_s0 + (arg0->unk77D8 + (arg0->unk77E4 * (sp4 - temp_t8->unkE50) * 2))) - (temp_t8->unkE4C * 2);
        if (temp_s5 != 0) {
            var_f20 = (f32) ((*(&__glDitherTable + ((var_a3 & 3) + ((sp4 & 3) * 4))) * 2) + 1) * 0.03125f;
            if (temp_s6 != 0) {
                goto block_15;
            }
            goto block_9;
        }
        var_f20 = arg0->unkDD4;
        if (temp_s6 == 0) {
block_9:
            var_a0 = unksp68;
        } else {
block_15:
            arg0->unk30FC(arg0, unksp70, sp, &sp40);
            var_a0 = (s64) &sp40;
        }
        var_s0 += 2;
        *temp_s3 = (s16) (s32) (*var_a0 + var_f20);
        if (sp38 != 0) {
            spC += arg0->unk764C;
        }
        var_a3 += 1;
        if (temp_s4 != var_a3) {
            goto loop_13;
        }
    }
    return 0;
}
