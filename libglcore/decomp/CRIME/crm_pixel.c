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
Error occurred while processing instruction: bgez $t0, .L0d953b68

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
Error occurred while processing instruction: bgez $at, .L0d953dc8

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
Error occurred while processing instruction: bgez $t0, .L0d953b68

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
Error occurred while processing instruction: bgez $at, .L0d953dc8

s32 __glClipCopyPixels(s64 (*)(?, s32 *), s32 *);   /* extern */
s32 __glClipDrawPixels(s64 (*)(?, s32 *), s32 *, s32, s32, f32); /* extern */
s32 __glClipReadPixels(s64 (*)(?, s32 *), s32 *);   /* extern */
? __glCrmFlushAndConfirm(s64 (*)(?, s32 *), s32, s32, s32, s32); /* extern */
? __glCrmForceNonTagClear(s64 (*)(?, s32 *), void *, u32, s32, void *, s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32), s32, u8); /* extern */
s32 __glCrmIoctl(s32, ?, void *, s32, s32, s32);    /* extern */
s64 (*__glCrmPickAllProcs(s64 (*)(?, s32 *), s32, s64 (*)(?, s32 *), s64, s32, u8, s64, u8))(?, s32 *); /* extern */
? __glCrmSetDrawBuffer(s64 (*)(?, s32 *), s32, u32, u32, s32, u32, u32, u32); /* extern */
? __glCrmSetReadBuffer(s64 (*)(?, s32 *), s32);     /* extern */
s32 __glFloor(s32, f32, s32, s32, s32, s32, s32, f64, ?, ?, f32); /* extern */
? __glGenericPickCopyPixels(s64 (*)(?, s32 *), s32 *); /* extern */
? __glGenericPickDrawPixels(s64 (*)(?, s32 *), s32 *); /* extern */
f32 __glGenericPickPixelProcs();                    /* extern */
? __glGenericPickReadPixels(s64 (*)(?, s32 *), s32 *); /* extern */
? __glInitCopyPixelsInfo(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32); /* extern */
? __glInitDrawPixelsInfo(s32 *, s32, s32, s32, s32, s32); /* extern */
s32 __glInitLateScissor(s64 (*)(?, s32 *), s32 *);  /* extern */
? __glInitPacker(s64 (*)(?, s32 *), s32 *);         /* extern */
? __glInitReadPixelsInfo(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glInitUnpacker(s64 (*)(?, s32 *), s32 *);       /* extern */
? __glLoadUnpackModes(s64 (*)(?, s32 *), s32 *, s8); /* extern */
? __glSetError(?, void *);                          /* extern */
? __glSlowPickCopyPixels(s64 (*)(?, s32 *), s32, s32, s32, s32, s32); /* extern */
? __glSlowPickDrawPixels(s64 (*)(?, s32 *), s32, s32, s32, s32, s32, s8); /* extern */
? __glSlowPickReadPixels(s64 (*)(?, s32 *), s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glim_DrawPixels(s32, s32, s32, void *, s32);    /* extern */
? __glim_ReadPixels(s32, s32, s32);                 /* extern */
? bcopy(s64, s64, s64);                             /* extern */
? bzero(s64, s64);                                  /* extern */
s32 cachectl(s64 (*)(?, s32 *), ?, ?);              /* extern */
? close(s32);                                       /* extern */
s32 getenv(void *, s32);                            /* extern */
? memcpy(s32, s64 (*)(?, s32 *), s32);              /* extern */
s32 mmap(?, s64, ?, ?, s32, ?);                     /* extern */
? munmap();                                         /* extern */
s32 munpin();                                       /* extern */
s32 open(void *, ?);                                /* extern */
? perror(void *, ?);                                /* extern */
? printf(void *, s64 (*)(?, s32 *), s32, s32, s32, s32, s64, s32); /* extern */
s64 (*sub_0d950000(s64 (*)(?, s32 *), s64, s64, s32, s64, s32, s64, s64))(?, s32 *); /* extern */
s32 sub_0d960000(s64 (*)(?, s32 *), s32 *, u32);    /* extern */
f32 viceCheckRequest(void *);                       /* extern */
s32 viceCopyPixels(s64 (*)(?, s32 *), s32 *, ? *);  /* extern */
? viceCopySPBuffer(s64 (*)(?, s32 *), s32 *, void *, s32, void *, u8, s32); /* extern */
s64 viceDrawPixels(? *arg0, s32 *arg1);             /* extern */
s64 viceDrawPixels2(? *arg0, s32 *arg1);            /* extern */
s32 viceReadPixels(s64 (*arg0)(?, s32 *), s32 *arg1, s32 arg2, s32 arg6, s32 arg7, s32, s32, s32); /* extern */
void __GL_CRM_SCALE_PIXEL_SPAN(s64 arg0, s32 arg1, s64 (*arg2)(?, s32 *), s64 arg3, s64 arg4, s32, s64, s64); /* static */
void __glCrmPickCopyPixels(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5); /* static */
void __glCrmPickDrawPixels(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6); /* static */
void __glCrmPickReadPixels(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7); /* static */
s32 crmCopyPixelsXfer(s64 (*arg0)(?, s32 *), s32 *arg1, s32 arg2, s32 arg6, s32 arg7, s32, s32, s32); /* static */
s32 crmCopyPixelsXferRW(s64 (*arg0)(?, s32 *), s32 *arg1, s32 arg2, s32 arg6, s32 arg7, s32, s32, s32); /* static */
s64 crmDrawPixelsXfer(? *arg0, s32 *arg1);          /* static */
s64 crmDrawPixelsXfer2(? *arg0, s32 *arg1);         /* static */
s32 crmReadPixelsXfer(s64 (*arg0)(?, s32 *), s32 *arg1, s32 arg2, s32 arg6, s32 arg7, s32, s32, s32); /* static */
extern ? __glCrmSpanRenderCI;
extern ? __glCrmSpanRenderCI2;
extern ? __glCrmSpanRenderDepth;
extern ? __glCrmSpanRenderDepth2;
extern ? __glCrmSpanRenderRGBA;
extern ? __glCrmSpanRenderRGBA2;
extern ? __glSpanRenderCI;
extern ? __glSpanRenderCI2;
extern ? __glSpanRenderDepth;
extern ? __glSpanRenderDepth2;
extern ? __glSpanRenderRGBA;
extern ? __glSpanRenderRGBA2;
extern s32 errno;
extern ? sub_0da40000;

s32 LoadLinearTlb(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_a1;
    s32 var_s0;
    s32 var_s1;

    var_s0 = arg2;
    var_s1 = arg3;
    if (saved_reg_gp->unk-5450 != 0) {
        printf(&sub_0da40000 + 0x1C48);
    }
    if (var_s0 != 0) {
        if (__glCrmIoctl(arg0->unk7B10, 0x5605, sp, var_s0, var_s1, arg1 & 0x6C) != 0) {
            perror(&sub_0da40000 + 0x1C78);
            return 0;
        }
        var_a1 = arg1 & 4;
        if (var_s1 == 0) {
            goto block_6;
        }
        goto block_7;
    }
block_6:
    var_s1 = 0;
    var_s0 = 0;
    var_a1 = arg1 & 4;
block_7:
    if (var_a1 != 0) {
        arg0->unk7E4C = var_s1;
        arg0->unk7E48 = var_s0;
    } else {
        arg0->unk7E54 = var_s1;
        arg0->unk7E50 = var_s0;
    }
    return 1;
}

s32 pinBuffer(s32 arg0, s32 arg1) {
    s32 var_a3;
    s32 var_a4;

    var_a3 = 0;
    errno = 0;
    if ((arg0 == 0) || (var_a4 = 0, (arg1 == 0))) {
        var_a4 = 1;
    }
    if (var_a4 != 0) {
        goto block_3;
    }
    if (M2C_ERROR(/* Read from unset register $t9 */)(0, var_a4) != 0) {
        var_a3 = errno;
block_3:
        if ((var_a3 != 0) && (var_a3 != 0x16)) {
            perror(&sub_0da40000 + 0x1C98);
        }
        return 0;
    }
    return 1;
}

void unpinBuffer(s32 arg0, s32 arg1) {
    if ((arg0 != 0) && (arg1 != 0) && (munpin() != 0)) {
        perror(&sub_0da40000 + 0x1CA8);
    }
}

s32 mapScratch(s64 arg0) {
    s64 sp8;
    s32 temp_s1;
    s32 temp_v0;

    sp8 = arg0;
    if (arg0 != 0) {
        temp_v0 = open(&sub_0da40000 + 0x1CC0, 2);
        if (temp_v0 != -1) {
            temp_s1 = mmap(0, sp8, 3, 2, temp_v0, 0);
            close(temp_v0);
            if (temp_s1 != -1) {
                return temp_s1;
            }
            perror(&sub_0da40000 + 0x1CD0);
            return 0;
        }
        perror(&sub_0da40000 + 0x1CF0, -1);
        return 0;
    }
    return 0;
}

void unmapScratch(s32 arg0, s32 arg1) {
    if ((arg0 != 0) && (arg1 != 0)) {
        munmap();
    }
}

s64 (*reallocScratch(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg4, s32 arg5, s64 arg6))(?, s32 *) {
    s64 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a7;
    s32 var_a1;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s64 (*temp_a0)(?, s32 *);
    s64 (*temp_a0_2)(?, s32 *);
    s64 (*temp_a2)(?, s32 *);
    s64 (*temp_s1)(?, s32 *);
    s64 (*temp_v0)(?, s32 *);
    s64 (*var_a0)(?, s32 *);
    s64 (*var_a2)(?, s32 *);
    s64 (*var_v0)(?, s32 *);
    s64 temp_a3;
    s64 var_a6;
    void *temp_gp;

    var_a1 = arg1;
    var_a2_2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFDB3C;
    if (var_a1 > 0) {
        var_a3 = 0x10000;
        if (var_a1 <= 0x20000) {
            temp_a0 = arg0->unk7E40;
            if (temp_a0 != NULL) {
                var_a3 = arg0->unk7E34;
                var_a2_2 = var_a3 + var_a1;
                var_a1 = var_a2_2 > 0x20000;
                var_a4 = var_a2_2 & 0x1F;
                if (var_a1 == 0) {
                    arg0->unk7E34 = var_a2_2;
                    temp_s1 = var_a3 + temp_a0;
                    if (var_a4 != 0) {
                        var_a6 = -0x20;
                        var_a5 = (var_a2_2 + 0x1F) & ~0x1F;
                        arg0->unk7E34 = var_a5;
                    }
                    temp_a7 = temp_gp->unk-5450;
                    if (temp_a7 != 0) {
                        printf(&sub_0da40000 + 0x1D40, temp_s1, var_a2_2, var_a3, var_a4, var_a5, var_a6, temp_a7);
                    }
                    return temp_s1;
                }
                if (temp_a0 != NULL) {
                    goto block_21;
                }
                goto block_36;
            }
            arg0->unk7E34 = 0;
            if (temp_a0 == NULL) {
block_36:
                temp_v0 = __glCrmPickAllProcs((s64 (*)(?, s32 *))0x20000, var_a1, (s64 (*)(?, s32 *)) var_a2_2, (s64) var_a3, var_a4);
                arg0->unk7E40 = temp_v0;
                if (temp_v0 == NULL) {
                    var_a2 = NULL;
                } else {
                    if (cachectl(temp_v0, 0x20000, 1) != 0) {
                        perror(&sub_0da40000 + 0x1DA0);
                    }
                    __glCrmPickAllProcs(arg0->unk7E40, 0x20000);
                    var_a0 = arg0->unk7E40;
                    if (__glCrmPickAllProcs(arg0, 0xC, arg0->unk7E40, 0x20000) == NULL) {
                        if (cachectl(var_a0, 0x20000, 0) != 0) {
                            perror(&sub_0da40000 + 0x1D20);
                        }
                        __glCrmPickAllProcs(arg0->unk7E40, 0x20000);
                        var_a0 = NULL;
                        arg0->unk7E40 = NULL;
                    }
                    var_a2 = var_a0;
                }
                /* Duplicate return node #19. Try simplifying control flow for better match */
                return var_a2;
            }
block_21:
            __glCrmFlushAndConfirm(arg0, var_a1, var_a2_2, var_a3, var_a4);
            if (temp_gp->unk-5450 != 0) {
                printf(&sub_0da40000 + 0x1D70, arg0->unk7E40);
            }
            arg0->unk7E34 = 0;
            return arg0->unk7E40;
        }
        temp_a1 = arg0->unk7E30;
        temp_a3 = (var_a1 + 0x1FFFF) & 0xFFFE0000;
        var_a2 = arg0->unk7E3C;
        if (temp_a3 != temp_a1) {
            sp0 = temp_a3;
            if (var_a2 != NULL) {
                temp_a4 = temp_gp->unk-5448;
                if (temp_a1 != 0) {
                    if (temp_a4 != 0) {
                        __glCrmPickAllProcs(var_a2, temp_a1, var_a2, temp_a3, temp_a4);
                    } else {
                        arg0->unkC(var_a2, var_a2, temp_a3, temp_a4);
                    }
                }
            }
            if (temp_gp->unk-5448 != 0) {
                var_v0 = __glCrmPickAllProcs((s64 (*)(?, s32 *)) sp0);
                var_a2 = var_v0;
            } else {
                var_v0 = sub_0d950000(arg0, sp0);
                var_a2 = var_v0;
            }
            arg0->unk7E3C = var_v0;
            arg0->unk7E30 = (s32) ((var_a2 == NULL) ? 0 : sp0);
            if (temp_gp->unk-5450 != 0) {
                printf(&sub_0da40000 + 0x1DC0, (s64 (*)(?, s32 *)) sp0, (s32) var_a2);
                var_a2 = arg0->unk7E3C;
            }
        }
        return var_a2;
    }
    temp_a2 = arg0->unk7E3C;
    if (temp_a2 != NULL) {
        temp_a1_2 = arg0->unk7E30;
        temp_a3_2 = temp_gp->unk-5448;
        if (temp_a1_2 != 0) {
            if (temp_a3_2 != 0) {
                __glCrmPickAllProcs(temp_a2, temp_a1_2, temp_a2, (s64) temp_a3_2);
            } else {
                arg0->unkC(temp_a2, temp_a2, (s64) temp_a3_2);
            }
        }
    }
    arg0->unk7E3C = NULL;
    arg0->unk7E30 = 0;
    if (var_a1 < 0) {
        temp_a0_2 = arg0->unk7E40;
        if (temp_a0_2 != NULL) {
            __glCrmPickAllProcs(temp_a0_2, 0x20000);
            __glCrmPickAllProcs(arg0, 0xC, arg0->unk7E40, 0);
            if (cachectl(arg0->unk7E40, 0x20000, 0) != 0) {
                perror(&sub_0da40000 + 0x1D20);
            }
            __glCrmPickAllProcs(arg0->unk7E40, 0x20000);
        }
        arg0->unk7E40 = NULL;
        arg0->unk7E34 = 0;
    }
    return NULL;
}

f32 __glCrmPickPixelProcs(void *arg0) {
    s64 sp0;
    f32 temp_f4;
    f32 temp_ret_2;
    f32 temp_ret_3;
    f32 temp_ret_4;
    f32 temp_ret_5;
    f32 var_f0;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_f8;
    s32 temp_f8_2;
    s32 temp_ret;
    s32 temp_ret_6;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_t2;
    s32 var_v0;
    s8 var_a0_3;
    s8 var_a0_4;
    u8 temp_a0_3;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFD78C;
    temp_s2 = arg0->unk2DF4;
    var_f0 = __glGenericPickPixelProcs();
    if (temp_gp->unk-5450 < 0) {
        temp_ret = getenv(&sub_0da40000 + 0x1DF8);
        var_f0 = (bitwise f32) temp_ret;
        temp_gp->unk-5450 = (s32) (temp_ret != 0);
    }
    if (temp_gp->unk-544C < 0) {
        temp_ret_2 = M2C_ERROR(/* Read from unset register $t9 */)(&sub_0da40000 + 0x1E08);
        var_f0 = temp_ret_2;
        temp_gp->unk-544C = (s32) ((bitwise s32) temp_ret_2 != 0);
    }
    if (temp_gp->unk-5448 < 0) {
        temp_ret_3 = M2C_ERROR(/* Read from unset register $t9 */)(&sub_0da40000 + 0x1E18);
        var_f0 = temp_ret_3;
        temp_gp->unk-5448 = (s32) ((bitwise s32) temp_ret_3 != 0);
    }
    var_a1 = temp_gp->unk-5444;
    if (var_a1 < 0) {
        temp_ret_4 = M2C_ERROR(/* Read from unset register $t9 */)(&sub_0da40000 + 0x1E28, var_a1);
        var_f0 = temp_ret_4;
        var_a1 = (bitwise s32) temp_ret_4 == 0;
        temp_gp->unk-5444 = var_a1;
    }
    temp_a2 = temp_gp->unk-5440;
    if (temp_a2 < 0) {
        temp_ret_5 = M2C_ERROR(/* Read from unset register $t9 */)(&sub_0da40000 + 0x1E40, var_a1, temp_a2);
        var_f0 = temp_ret_5;
        var_a1 = (bitwise s32) temp_ret_5 != 0;
        temp_gp->unk-5440 = var_a1;
    }
    var_a3 = temp_gp->unk-543C;
    if (var_a3 < 0) {
        if (arg0->unk80F4 >= 0) {
            temp_ret_6 = getenv(&sub_0da40000 + 0x1E50, var_a1);
            var_f0 = (bitwise f32) temp_ret_6;
            var_a3 = 0;
            if (temp_ret_6 == 0) {
                var_a3 = 1;
            }
        } else {
            var_a3 = 0;
        }
        temp_gp->unk-543C = var_a3;
    }
    temp_a0 = arg0->unk4D4;
    if (temp_a0 != 0x404) {
        if (temp_a0 != 0x405) {
            var_a1_2 = arg0->unk2DF4;
        } else if (arg0->unkD36 != 0) {
            var_a1_2 = arg0->unk77C4;
            arg0->unk2DF4 = var_a1_2;
        } else {
            var_a1_2 = arg0->unk77C0;
            arg0->unk2DF4 = var_a1_2;
        }
    } else {
        var_a1_2 = arg0->unk77C0;
        arg0->unk2DF4 = var_a1_2;
    }
    if (var_a1_2 != temp_s2) {
        var_f0 = M2C_ERROR(/* Read from unset register $t9 */)(arg0, var_a1_2);
        var_a3 = temp_gp->unk-543C;
    }
    arg0->unk7DE4 = 0;
    arg0->unk7DE8 = 0;
    temp_s2_2 = arg0->unk704;
    temp_s1 = arg0->unk76E4;
    var_a0 = 0;
    sp0 = (s64) arg0->unk700;
    if ((var_a3 != 0) && (arg0->unkC94 != 0) && ((arg0->unk773C != 0) || (arg0->unk7740 == 0))) {
        var_f0 = viceCheckRequest(arg0);
        var_a0 = arg0->unk7DE4;
    }
    if (var_a0 != 0) {
        goto block_16;
    }
    var_t2 = temp_s1 & 0x1000;
    if (arg0->unk7DE8 == 0) {
        if (arg0->unk773C != 0) {
            goto block_88;
        }
        if (!(temp_s2_2 & 1) || (var_a0_2 = 1, (arg0->unk1508 == 0))) {
            if (*arg0->unk2FC == 0) {
                if (!(temp_s2_2 & 2) || (var_a0_2 = 1, (arg0->unk15A8 == 0))) {
                    var_a0_2 = 1;
                    if (arg0->unk77AC == 0x8421) {
                        if ((arg0->unk77B5 == 0) && (!(temp_s2_2 & 4) || (arg0->unk1648 == 0)) && (!(sp0 & 0x30000000) || (arg0->unk4E0 == 0))) {
                            // Error: negative shift count
                            // At instruction: bgez $at, .L0d953dc8
                            if (M2C_ERROR() || (var_a0_2 = 1, (arg0->unk554 == 0))) {
                                var_a0_2 = 0;
                            }
                        } else {
                            goto block_88;
                        }
                    }
                }
            } else {
block_88:
                var_a0_2 = 1;
            }
        }
        arg0->unk7DE8 = var_a0_2;
block_16:
        var_t2 = temp_s1 & 0x1000;
    }
    if (var_t2 != 0) {
        goto block_18;
    }
    if ((!(temp_s1 & 0x2000) || (arg0->unkC95 == 0)) && ((arg0->unk6E38 == 0) || (arg0->unk7D58 & 0x8000))) {
        if (arg0->unk7D0B != 0) {
            goto block_77;
        }
        if (arg0->unk7D0C == 0) {
            arg0->unk7DC4 = 1U;
        } else {
block_77:
            arg0->unk7DC5 = 1;
            goto block_18;
        }
    } else {
block_18:
        arg0->unk7DC4 = 0U;
    }
    arg0->unk7DCA = (s8) ((temp_s1 & 0x200C) != 0);
    if (temp_s1 & 0x33AC) {
        goto block_20;
    }
    if (!(temp_s1 & 0x40) || ((((u32) arg0->unk80CC >> 2) & 3) == 2)) {
        var_a0_3 = 1;
        if (!(sp0 & 0x4000)) {
            var_a0_3 = 0;
        }
    } else {
block_20:
        var_a0_3 = 1;
    }
    var_f4 = arg0->unk2EC;
    var_f6 = 0.0f;
    var_f5 = arg0->unk2E8;
    arg0->unk7DC9 = var_a0_3;
    arg0->unk7DCC = (s8) M2C_ERROR(/* unknown instruction: movf $t9, $zero, $fcc2 */);
    arg0->unk7DCB = (s8) M2C_ERROR(/* unknown instruction: movf $t8, $zero, $fcc1 */);
    if (var_f5 > 0.0f) {
        var_f5 = -var_f5;
    }
    if (var_f4 <= 0.0f) {
        var_f4 = -var_f4;
    }
    temp_f8 = (s32) var_f5;
    arg0->unk7DF4 = var_f4;
    arg0->unk7DF0 = var_f5;
    arg0->unk7E00 = temp_f8;
    if ((temp_f8 > 0) && (temp_f8 < 0x11)) {
        var_f0 = (f32) temp_f8;
        arg0->unk7E00 = (s32) (temp_f8 - 1);
        arg0->unk7E08 = 1;
        arg0->unk7DF8 = var_f0;
    } else {
        arg0->unk7E00 = 0;
        if (var_f5 > 1.0f) {
            arg0->unk7DF8 = 1.0f;
            arg0->unk7E08 = 1;
        } else {
            temp_a0_2 = (s32) ((1.0 / (f64) var_f5) + 0.5) & 0x7FF;
            var_f0 = second half of f64;
            arg0->unk7E08 = temp_a0_2;
            arg0->unk7DF8 = (f32) (1.0 / (f64) temp_a0_2);
        }
    }
    temp_f8_2 = (s32) var_f4;
    arg0->unk7E04 = temp_f8_2;
    if ((temp_f8_2 > 0) && (temp_f8_2 < 0x11)) {
        arg0->unk7E04 = (s32) (temp_f8_2 - 1);
        arg0->unk7E0C = 1;
        arg0->unk7DFC = (f32) temp_f8_2;
    } else {
        arg0->unk7E04 = 0;
        if (var_f4 > 1.0f) {
            arg0->unk7DFC = 1.0f;
            arg0->unk7E0C = 1;
        } else {
            temp_a5 = (s32) ((second half of f64) + 0.5) & 0x7FF;
            arg0->unk7E0C = temp_a5;
            arg0->unk7DFC = (f32) ((second half of f64) / (f64) temp_a5);
        }
    }
    var_a0_4 = 1;
    if (var_f5 == 1.0f) {
        var_a0_4 = 1;
        if (var_f4 == 1.0f) {
            var_a0_4 = 0;
        }
    }
    arg0->unk7DCD = var_a0_4;
    if (temp_s2_2 & 0x20) {
        arg0->unk7DD1 = 1;
    } else {
        arg0->unk7DD1 = 0;
    }
    // Error: negative shift count
    // At instruction: bgez $t0, .L0d953b68
    if (M2C_ERROR()) {
        arg0->unk7DD2 = (s8) M2C_ERROR(/* Read from unset register $t1 */);
    } else {
        arg0->unk7DD2 = 0;
    }
    temp_a0_3 = arg0->unk2F9;
    if (temp_a0_3 != 0) {
        goto block_44;
    }
    if ((arg0->unk2F0 == -0x18) && (arg0->unk2F4 == 0)) {
        arg0->unk7DC7 = 1;
        if (temp_a0_3 == 0) {
            goto block_67;
        }
        goto block_45;
    }
block_44:
    arg0->unk7DC7 = 0;
    if (temp_a0_3 != 0) {
        goto block_45;
    }
block_67:
    if ((arg0->unk2F0 == 0x18) && (arg0->unk2F4 == 0)) {
        arg0->unk7DC8 = 1;
    } else {
block_45:
        arg0->unk7DC8 = 0;
    }
    if (((arg0->unk773E == 0) || (((f64) arg0->unk290 == 256.0) && ((f64) arg0->unk2A4 == (second half of f64)))) && (arg0->unk664 != 0)) {
        var_v0 = temp_s1 & 4;
        if (arg0->unk760 != 0) {
            if (arg0->unk75C != 0) {
                goto block_52;
            }
            if ((arg0->unk75D == 0) && (arg0->unk75E == 0)) {
                var_v0 = temp_s1 & 4;
                if (arg0->unk75F == 0) {
                    goto block_100;
                }
            }
            goto block_52;
        }
block_100:
        if ((var_v0 != 0) && !(temp_s1 & 0x20) && (arg0->unk660 == 0x207)) {
            arg0->unk7DC6 = 1;
        } else {
            goto block_52;
        }
    } else {
block_52:
        arg0->unk7DC6 = 0;
    }
    if ((arg0->unk294 == 0.0f) && (arg0->unk298 == 0.0f) && (arg0->unk29C == 0.0f) && (temp_f4 = arg0->unkDD8, (arg0->unk280 == temp_f4)) && (arg0->unk284 == temp_f4) && (arg0->unk288 == temp_f4)) {
        if ((arg0->unk28C + arg0->unk2A0) < 0.0f) {

        } else {
            var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f7, $fcc1 */);
        }
    } else {
        var_f6 = -1.0f;
    }
    arg0->unk7DEC = var_f6;
    arg0->unk7DD4 = 0;
    arg0->unk7E58 = 0;
    arg0->unk7E2C = 0;
    arg0->unk7E28 = 0;
    arg0->unk7DDC = 0;
    arg0->unk7DE0 = 0;
    arg0->unk7DCE = 0;
    arg0->unk7DD8 = 0;
    arg0->unk3114 = __glCrmPickCopyPixels;
    arg0->unk3110 = __glCrmPickDrawPixels;
    arg0->unk3118 = __glCrmPickReadPixels;
    arg0->unk7E44 = (void *) (sub_0d950000 + 0x3250);
    arg0->unk7E24 = (s32) (arg0->unk7E24 & ~2 & ~1);
    if (arg0->unk7DC4 != 0) {
        arg0->unk30AC = &__glCrmSpanRenderDepth2;
        arg0->unk30A8 = &__glCrmSpanRenderDepth;
        arg0->unk309C = &__glCrmSpanRenderCI2;
        arg0->unk3098 = &__glCrmSpanRenderCI;
        arg0->unk30A4 = &__glCrmSpanRenderRGBA2;
        arg0->unk30A0 = &__glCrmSpanRenderRGBA;
        return var_f0;
    }
    arg0->unk30AC = &__glSpanRenderDepth2;
    arg0->unk30A8 = &__glSpanRenderDepth;
    arg0->unk309C = &__glSpanRenderCI2;
    arg0->unk3098 = &__glSpanRenderCI;
    arg0->unk30A4 = &__glSpanRenderRGBA2;
    arg0->unk30A0 = &__glSpanRenderRGBA;
    return var_f0;
}

void __glcrmim_DrawPixels(s32 arg2, s32 arg3, s32 arg5, s32 arg7) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a5;
    s32 var_a7;
    void *temp_a6;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a7 = arg7;
    temp_a6 = *(void **)0x1010;
    temp_a6->unk7DD0 = 0;
    temp_a6->unk7DCF = 0;
    if (*(s32 *)0x1018 == 0) {
        var_a5 = 0x1908;
        if (var_a2 != 0x81BB) {
            goto block_2;
        }
        if (var_a3 == 0x1401) {
            var_a2 = 0x190A;
            temp_a6->unk7DCF = 1;
        } else {
block_2:
            if (var_a2 == 0x1908) {
                var_a7 = 0xFFFF7FCC;
                if (var_a3 == 0xFFFF7FCC) {
                    var_a3 = 0x8034;
                    temp_a6->unk7DD0 = 1;
                }
            }
        }
    }
    __glim_DrawPixels(var_a2, var_a3, var_a5, temp_a6, var_a7);
}

void __glcrmim_ReadPixels(s32 arg4, s32 arg5, s32 arg7) {
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    void *temp_t0;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a7 = arg7;
    temp_t0 = *(void **)0x1010;
    temp_t0->unk7DD0 = 0;
    temp_t0->unk7DCF = 0;
    if (*(s32 *)0x1018 == 0) {
        var_a7 = 0x1908;
        if (var_a4 != 0x81BB) {
            goto block_2;
        }
        if (var_a5 == 0x1401) {
            var_a4 = 0x190A;
            temp_t0->unk7DCF = 1;
        } else {
block_2:
            if ((var_a4 == 0x1908) && (var_a5 == 0xFFFF7FCC)) {
                var_a5 = 0x8034;
                temp_t0->unk7DD0 = 1;
            }
        }
    }
    __glim_ReadPixels(var_a4, var_a5, var_a7);
}

void __glcrmim_PixelZoom(f32 fparg0, f32 fparg1) {
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    s32 var_a2;
    s32 var_a3;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_f4 = temp_a1->unkE5C;
        temp_f5 = temp_a1->unkDD4;
        temp_f6 = fparg0 / temp_f4;
        if (fparg1 > 0.0f) {
            var_a2 = (s32) (temp_f5 + temp_f6);
        } else {
            var_a2 = (s32) (temp_f6 - temp_f5);
        }
        temp_f6_2 = fparg1 / temp_f4;
        if (fparg1 > 0.0f) {
            var_a3 = (s32) (temp_f5 + temp_f6_2);
        } else {
            var_a3 = (s32) (temp_f6_2 - temp_f5);
        }
        temp_a1->unk2E8 = (f32) ((f32) var_a2 * temp_f4);
        temp_a1->unk2EC = (f32) ((f32) var_a3 * temp_f4);
        *(void *)0x1018 = 2;
        temp_a1->unk2DEC = (s32) (temp_a1->unk2DEC | 0x10);
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glCrmPickDrawPixels(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s64 sp218;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    u8 sp1FC;
    s32 sp1F8;
    s32 spDC;
    s32 spD8;
    s32 spD4;
    s32 spCC;
    f32 spC4;
    s32 spB4;
    s32 spA8;
    f32 spA4;
    s32 sp74;
    s32 sp54;
    s32 sp30;
    s32 spC;
    f32 temp_f4;
    f32 var_f4;
    s32 *temp_a1_2;
    s32 *temp_a1_3;
    s32 *temp_a1_4;
    s32 *temp_a1_5;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_f14;
    s32 temp_f2;
    s32 temp_f5;
    s32 temp_f6;
    s32 temp_f8;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s7;
    s32 var_t2;
    s32 var_t9;
    s64 (*var_s2)(? *, s32 *);
    s8 var_s6;
    u8 temp_s2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_gp;

    var_s5 = arg1;
    var_s3 = arg3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFCD8C;
    var_s4 = arg5;
    var_s6 = arg6 & 0xFF;
    __glInitDrawPixelsInfo(sp, var_s5, arg2, arg3, arg4, arg5);
    __glLoadUnpackModes(arg0, sp, var_s6);
    arg0->unk7E14 = arg2;
    arg0->unk7E10 = var_s5;
    arg0->unk7E1C = sp34;
    if ((arg0->unk7DCF != 0) && (temp_a2 = sp30 + 1, ((sp30 & 1) != 0))) {
        sp30 = temp_a2;
        arg0->unk7E18 = temp_a2;
    } else {
        arg0->unk7E18 = sp30;
    }
    if (arg0->unk7DD1 != 0) {
        spA4 *= 2.0f;
    }
    if (arg0->unk700 & 0x3E000000) {
        if ((__glInitLateScissor(arg0, sp) != 0) && (var_s4 != 0)) {
            goto block_8;
        }
    } else if (M2C_ERROR(/* Read from unset register $t9 */)(arg0, sp) != 0) {
        if (var_s4 == 0) {

        } else {
block_8:
            if (arg0->unk7DD1 != 0) {
                spDC = -2 & (spDC + 1);
            }
            __glInitUnpacker(arg0, sp);
            temp_a2_2 = arg0->unk7E18;
            temp_a4 = arg0->unk7E1C;
            arg0->unk7E20 = (s32) ((sp14 * temp_a2_2) + (var_s4 + (sp10 * temp_a4)));
            arg0->unk7E1C = (s32) (sp34 - temp_a4);
            temp_a1 = sp30 - temp_a2_2;
            arg0->unk7E18 = temp_a1;
            var_a0 = spC;
            arg0->unk7DD4 = 0;
            arg0->unk7E58 = NULL;
            arg0->unk7E2C = (void *) arg0->unk2DF0;
            arg0->unk7DDC = arg4;
            arg0->unk7DE0 = 0;
            arg0->unk7DCE = 0;
            arg0->unk7DD8 = 0;
            arg0->unk7E24 = (s32) (-2 & (arg0->unk7E24 & ~2));
            if (arg0->unk7DCD != 0) {
                goto block_11;
            }
            if (arg0->unk7DD1 == 0) {
                sp210 = (s64) crmDrawPixelsXfer;
            } else {
block_11:
                sp210 = (s64) crmDrawPixelsXfer2;
            }
            temp_s2 = arg0->unk4A4;
            sp218 = (s64) arg0->unk7A44;
            if (arg0->unk7DCF != 0) {
                var_a6 = spA8;
                var_a7 = temp_a1 < 1;
                var_a3 = (var_a7 == 0) ? temp_a1 : 0;
                var_a4 = -2 & (var_a6 + 2);
                if (var_a3 != 0) {
                    temp_t0 = var_a0 & 3;
                    var_a1 = temp_t0;
                    if (temp_t0 != 0) {
                        temp_a2_3 = var_a3 - 1;
                        var_a2 = (var_s5 >= (var_a4 + temp_a2_3)) ? var_a4 : (-2 & (var_s5 - temp_a2_3));
                        temp_t0_2 = var_a0 & ~3;
                        spC = temp_t0_2;
                        var_a0 = temp_t0_2;
                        if (var_a2 > 0) {
                            if (var_a2 != var_a6) {
                                spA8 = var_a2;
                                spB4 = var_a2;
                                temp_f4 = M2C_ERROR(/* unknown instruction: nmsub.s $f4, $f4, $f5, $f6 */);
                                temp_f2 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */);
                                spD8 = temp_f2;
                                spC4 = temp_f4;
                                var_s5 = var_a2;
                                var_a3 = temp_f2;
                                if (arg0->unk7DCB != 0) {
                                    temp_f5 = (s32) (arg0->unkDD4 + temp_f4);
                                    spCC = temp_f5;
                                    var_a2 = temp_f5;
                                } else {
                                    temp_f14 = (s32) (temp_f4 - arg0->unkE60);
                                    spCC = temp_f14;
                                    var_a2 = temp_f14;
                                }
                                var_a1 = temp_t0_2 & 3;
                                goto block_20;
                            }
                            var_a1 = temp_t0_2 & 3;
                            goto block_21;
                        }
                    } else {
                        var_a7 = var_s5 < (var_a4 + var_a3);
                        var_a2 = (var_a7 == 0) ? var_a4 : (-2 & (var_s5 - var_a3));
                        if (var_a2 > 0) {
                            if (var_a2 != var_a6) {
                                spA8 = var_a2;
                                spB4 = var_a2;
                                temp_f8 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */);
                                var_s5 = var_a2;
                                spD8 = temp_f8;
                                var_a3 = temp_f8;
                                goto block_92;
                            }
                            goto block_21;
                        }
                    }
                } else {
                    var_a2 = (var_s5 >= (var_a4 + var_a3)) ? var_a4 : (-2 & (var_s5 - var_a3));
                    if (var_a2 > 0) {
                        if (var_a2 != var_a6) {
                            spA8 = var_a2;
                            spB4 = var_a2;
                            temp_f6 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            var_a1 = var_a0 & 3;
                            var_s5 = var_a2;
                            spD8 = temp_f6;
                            var_a3 = temp_f6;
block_92:
                            var_a2 = spCC;
block_20:
                            var_a6 = spF0;
                            var_a4 = var_a2 + (var_a3 * var_a6);
                            spD4 = var_a4;
                        } else {
                            var_a1 = var_a0 & 3;
                        }
block_21:
                        if (var_a1 == 0) {
                            var_a7 = arg0->unk7DE8;
                            if (var_a7 != 0) {
                                if ((arg0->unk7DE4 == 2) && (arg0->unk7DEC >= 0.0f)) {
                                    goto block_25;
                                }
                                goto block_34;
                            }
                            if (!(arg0->unk7DEC >= 0.0f)) {
                                var_f4 = arg0->unk7848;
                            } else {
block_25:
                                var_f4 = arg0->unk7848 * arg0->unk7DEC;
                            }
                            sp1F8 = (s32) var_f4;
                            arg0->unk7DB8->unk20D0 = sp1F8;
                            arg0->unk7DBC->unk20D0 = sp1F8;
                            arg0->unk8080 = 0;
                            temp_a1_2 = arg0->unk7D38;
                            sp1FC = 1;
                            if (temp_a1_2->unk0 != 4) {
                                goto block_28;
                            }
                            temp_a3 = temp_a1_2->unk4;
                            if (temp_a3->unk4 != 0) {
                                if (temp_a3->unk28 != 0x10) {
                                    if (temp_a3->unk2C == 0) {
                                        goto block_166;
                                    }
                                    goto block_28;
                                }
block_166:
                                if (arg4 != 0x1402) {
                                    var_s3 = 0x81BB;
                                } else {
                                    var_s3 = 0x81BB;
                                }
                                goto block_101;
                            }
block_28:
                            if (arg4 != 0x1401) {
                                sp200 = (s64) temp_s2;
                                switch (arg4) {     /* switch 1; irregular */
                                default:            /* switch 1 */
                                    var_s3 = 0x81BB;
                                    var_s7 = 0;
                                    if (arg4 != 0x8032) {
                                        var_s2 = NULL;
                                    } else {
                                        var_s2 = NULL;
                                        if (var_s3 == 0x1907) {
                                            if (arg0->unk7DC4 != 0) {
                                                if (arg0->unk7DE8 != 0) {
                                                    var_s2 = NULL;
                                                } else {
                                                    var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                                    arg0->unk7E24 = (s32) (((arg0->unk7E24 & ~0xF0) | 0x10) & ~0xC & ~0x300);
                                                }
                                            } else {
                                                var_s2 = NULL;
                                            }
                                        }
                                        var_s7 = 0;
                                    }
                                    break;
                                case 0x8035:        /* switch 1 */
                                    var_s7 = 0;
                                    var_s2 = NULL;
                                    var_s3 = 0x81BB;
                                    goto block_115;
                                case 0x1403:        /* switch 1 */
                                    var_s3 = 0x81BB;
                                    goto block_127;
                                case 0x1405:        /* switch 1 */
                                    var_s3 = 0x81BB;
                                    goto block_134;
                                case 0x8034:        /* switch 1 */
                                    var_s3 = 0x81BB;
                                    goto block_140;
                                }
                            } else {
                                var_s3 = 0x81BB;
                                sp200 = (s64) temp_s2;
                                var_a3_2 = 0;
                                var_s7 = 0;
                                sp200 = (s64) temp_s2;
                                var_s2 = NULL;
                                goto block_113;
                            }
                        } else {
block_34:
                            crmCopyPixelsXferRW(arg0, sp, var_a2, var_a3, var_a4, sp10, var_a6, var_a7);
                            sp1FC = 0;
                            var_a0 = spC;
                            var_s4 = sp8;
                            var_s3 = sp0;
                            var_s6 = 1;
                            goto block_35;
                        }
                        goto block_44;
                    }
                }
            } else {
block_35:
                temp_a1_3 = arg0->unk7D38;
                if (temp_a1_3->unk0 != 4) {
                    goto block_36;
                }
                temp_a3_2 = temp_a1_3->unk4;
                if (temp_a3_2->unk4 != 0) {
                    if (temp_a3_2->unk28 != 0x10) {
                        if (temp_a3_2->unk2C == 0) {
                            goto block_100;
                        }
                        goto block_36;
                    }
block_100:
                    if (arg4 != 0x1402) {
                        goto block_101;
                    }
                    if (var_s3 != 0x1909) {
                        goto block_101;
                    }
                    var_a7_2 = sp10 | var_a0;
                    if ((arg0->unk7DE8 == 0) || (var_a7_2 = sp10 | var_a0, (arg0->unk7DE4 != 0))) {
                        if (var_a7_2 & 3) {
                            goto block_101;
                        }
                        sp74 = 2;
                        var_s7 = 1;
                        sp54 = 0x1402;
                    } else {
block_101:
                        var_s7 = 0;
                    }
                    var_s2 = NULL;
                } else {
block_36:
                    switch (arg4) {                 /* switch 2; irregular */
                    case 0x1401:                    /* switch 2 */
                        switch (var_s3) {           /* switch 3; irregular */
                        case 0x1900:                /* switch 3 */
                            if (arg0->unk7DC4 != 0) {
                                sp200 = (s64) temp_s2;
                                if (arg0->unk773D != 0) {
                                    goto block_172;
                                }
                                var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                arg0->unk7E24 = (s32) (arg0->unk7E24 & ~0xF0 & ~0xC & ~0x300);
                            } else {
                                sp200 = (s64) temp_s2;
block_172:
                                var_s2 = NULL;
                            }
                            var_a3_2 = 0;
                            var_s7 = 0;
                            break;
                        case 0x1907:                /* switch 3 */
                            var_s7 = 0;
                            if (arg0->unk7DC4 != 0) {
                                if (arg0->unk7DE8 != 0) {
                                    var_s7 = 0;
                                    if (arg0->unk7DE4 != 0) {
                                        goto block_179;
                                    }
                                    sp200 = (s64) temp_s2;
                                    var_s2 = NULL;
                                } else {
block_179:
                                    sp200 = (s64) temp_s2;
                                    if (temp_gp->unk-543C != 0) {
                                        var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                    } else {
                                        var_s2 = crmDrawPixelsXfer2;
                                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x59E0);
                                    }
                                    var_s7 = 1;
                                    arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                                }
                            } else {
                                sp200 = (s64) temp_s2;
                                var_s2 = NULL;
                            }
                            var_a3_2 = 0;
                            break;
                        case 0x1909:                /* switch 3 */
                            var_s7 = 0;
                            if (arg0->unk7DC4 != 0) {
                                if (arg0->unk7DE8 != 0) {
                                    var_s7 = 0;
                                    if (arg0->unk7DE4 != 0) {
                                        goto block_191;
                                    }
                                    sp200 = (s64) temp_s2;
                                    var_s2 = NULL;
                                } else {
block_191:
                                    sp200 = (s64) temp_s2;
                                    if (temp_gp->unk-543C != 0) {
                                        var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                    } else {
                                        var_s2 = crmDrawPixelsXfer2;
                                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x5770);
                                    }
                                    var_s7 = 1;
                                    arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                                }
                            } else {
                                sp200 = (s64) temp_s2;
                                var_s2 = NULL;
                            }
                            var_a3_2 = 0;
                            break;
                        case 0x1901:                /* switch 3 */
                            sp200 = (s64) temp_s2;
                            if (arg0->unk773F != 0) {
                                var_s2 = NULL;
                            } else {
                                arg0->unk7DCE = 1;
                                arg0->unk7E2C = (void *) (arg0 + 0x7984);
                                var_s2 = crmDrawPixelsXfer2;
                                arg0->unk7E58 = (void *) (sub_0d960000 - 0x4D60);
                                arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                            }
                            var_a3_2 = 0;
                            var_s7 = 0;
                            break;
                        }
block_113:
                        if (var_s3 != 0x1908) {
                            if (var_s3 != 0x8000) {
block_115:
                                if ((var_s3 == 0x81BB) && (arg0->unk7DC4 != 0) && (sp1FC != 0) && (sp200 == 0) && !((sp10 | var_a0) & 3)) {
                                    var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                    if ((arg0->unk7DCD != 0) && ((arg0->unk7E08 >= 0x10) || ((s32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */) != (s32) (arg0->unk7DF8 * (f32) var_s5)))) {
                                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x5560);
                                        arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                                    } else {
                                        arg0->unk7E24 = (s32) (((((arg0->unk7E24 | 0xF0) & ~0xC) | 4) & ~0x300) | 0x100);
                                    }
                                }
                            } else if ((arg0->unk7DC4 != 0) && ((var_t2 = sp10 | var_a0, (arg0->unk7DE8 == 0)) || (var_t2 = sp10 | var_a0, (arg0->unk7DE4 != 0))) && !(var_t2 & 3)) {
                                if ((var_a3_2 != 0) && (sp200 != 0)) {
                                    var_a0_2 = (arg0->unk7E24 & ~0xF0) | 0x20;
                                } else {
                                    var_a0_2 = (arg0->unk7E24 & ~0xF0) | 0x30;
                                }
                                arg0->unk7E24 = var_a0_2;
                                var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                var_s7 = arg0->unk7DE4;
                                arg0->unk7E24 = (s32) ((((var_a0_2 & ~0xC) | 8) & ~0x300) | 0x200);
                            }
                        } else if ((arg0->unk7DC4 != 0) && ((var_t9 = sp10 | var_a0, (arg0->unk7DE8 == 0)) || (var_t9 = sp10 | var_a0, (arg0->unk7DE4 != 0))) && !(var_t9 & 3)) {
                            if ((var_a3_2 != 0) && (sp200 != 0)) {
                                var_a0_3 = (arg0->unk7E24 & ~0xF0) | 0x30;
                            } else {
                                var_a0_3 = (arg0->unk7E24 & ~0xF0) | 0x20;
                            }
                            arg0->unk7E24 = var_a0_3;
                            var_s2 = (s64 (*)(? *, s32 *)) sp210;
                            var_s7 = arg0->unk7DE4;
                            arg0->unk7E24 = (s32) ((((var_a0_3 & ~0xC) | 8) & ~0x300) | 0x200);
                        }
                        break;
                    case 0x8035:                    /* switch 2 */
                        sp200 = (s64) temp_s2;
                        var_s2 = NULL;
                        var_s7 = 0;
                        var_a3_2 = 1;
                        goto block_113;
                    case 0x1403:                    /* switch 2 */
                        if (var_s3 != 0x1900) {
                            if (var_s3 != 0x1901) {
                                goto block_127;
                            }
                            if (arg0->unk773F != 0) {
                                goto block_127;
                            }
                            if (temp_s2 != 0) {
                                goto block_127;
                            }
                            if ((sp10 | var_a0) & 1) {
                                goto block_127;
                            }
                            arg0->unk7DCE = 1;
                            arg0->unk7E2C = (void *) (arg0 + 0x7984);
                            var_s2 = crmDrawPixelsXfer2;
                            arg0->unk7E58 = (void *) (sub_0d960000 - 0x4900);
                            arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                        } else if (arg0->unk7DC4 != 0) {
                            if (arg0->unk773D != 0) {
                                goto block_127;
                            }
                            if (temp_s2 != 0) {
                                goto block_127;
                            }
                            if ((sp10 | var_a0) & 1) {
                                goto block_127;
                            }
                            var_s2 = (s64 (*)(? *, s32 *)) sp210;
                            arg0->unk7E24 = (s32) ((((arg0->unk7E24 & ~0xF0 & ~0xC) | 4) & ~0x300) | 0x100);
                        } else {
block_127:
                            var_s2 = NULL;
                        }
                        var_s7 = 0;
                        break;
                    case 0x1405:                    /* switch 2 */
                        if (var_s3 != 0x1902) {
                            if (var_s3 != 0x1901) {
                                goto block_134;
                            }
                            if (arg0->unk7D09 != 0) {
                                if (arg0->unk773F != 0) {
                                    goto block_134;
                                }
                                if (temp_s2 != 0) {
                                    goto block_134;
                                }
                                if ((sp10 | var_a0) & 3) {
                                    goto block_134;
                                }
                                var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                if (arg0->unk7DC7 == 0) {
                                    var_s2 = crmDrawPixelsXfer2;
                                    arg0->unk7E58 = (void *) (sub_0d960000 - 0x46D0);
                                }
                                arg0->unk7E2C = (void *) (arg0 + 0x7984);
                                arg0->unk7DCE = 1;
                                arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                            } else {
                                goto block_134;
                            }
                        } else {
                            if ((arg0->unk7D08 == 0) || (arg0->unk7DC6 == 0) || (temp_s2 != 0)) {
                                goto block_199;
                            }
                            if (!((sp10 | var_a0) & 3)) {
                                arg0->unk7DCE = 1;
                                if ((f64) arg0->unk290 == 256.0) {
                                    if ((f64) arg0->unk2A4 == (second half of f64)) {
                                        var_s2 = (s64 (*)(? *, s32 *)) sp210;
                                    } else {
                                        goto block_264;
                                    }
                                } else {
block_264:
                                    var_s2 = crmDrawPixelsXfer2;
                                    arg0->unk7E58 = (void *) (sub_0d960000 - 0x5140);
                                }
                                arg0->unk7E2C = (void *) (arg0 + 0x79FC);
                                arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                            } else {
block_199:
                                if (arg0->unk773E == 0) {
                                    arg0->unk7A44 = (s32) (-2 & sp218);
                                }
block_134:
                                var_s2 = NULL;
                            }
                        }
                        var_s7 = 0;
                        break;
                    case 0x8034:                    /* switch 2 */
                        if (var_s3 != 0x1908) {
                            goto block_140;
                        }
                        if (arg0->unk7DC4 != 0) {
                            if (arg0->unk7DE8 != 0) {
                                if (arg0->unk7DE4 != 0) {
                                    if (arg0->unk7DD0 != 0) {
                                        goto block_140;
                                    }
                                    goto block_221;
                                }
                                goto block_140;
                            }
block_221:
                            if (temp_s2 != 0) {
                                goto block_140;
                            }
                            if ((sp10 | var_a0) & 1) {
                                goto block_140;
                            }
                            if (arg0->unk7DD0 == 0) {
                                arg0->unk7E58 = (void *) (M2C_ERROR(/* Read from unset register $t9 */) - 0x44A0);
                            }
                            var_s2 = crmDrawPixelsXfer2;
                            arg0->unk7E24 = (s32) ((((((arg0->unk7E24 & ~0xF0) | 0x20) & ~0xC) | 4) & ~0x300) | 0x100);
                        } else {
block_140:
                            var_s2 = NULL;
                        }
                        var_s7 = 0;
                        break;
                    }
                }
block_44:
                if ((var_s3 == 0x1901) || (var_s3 == 0x1902)) {
                    if ((arg0->unk7D08 != 0) && (arg0->unk7A5C == 0)) {
                        __glCrmForceNonTagClear(arg0, arg0 + 0x79FC, 4U);
                    }
                }
                if (var_s2 != NULL) {
                    arg0->unk7DD3 = (u8) arg0->unk77BC;
                    if (var_s6 == 0) {
                        arg0->unk7DD4 = (s8) temp_gp->unk-544C;
                    }
                }
                if ((var_s7 != 0) && (temp_gp->unk-543C != 0)) {
                    if (arg0->unk7DC9 != 0) {
                        goto block_51;
                    }
                    if (arg0->unk7DCD == 0) {
                        temp_a1_4 = arg0->unk7D38;
                        temp_a0 = temp_a1_4->unk0;
                        if ((temp_a0 == 4) || (temp_a0 == 5)) {
                            arg0->unk7E5C = var_s2;
                            var_s2 = viceDrawPixels;
                            if (temp_a1_4->unk0 == 4) {
                                goto block_83;
                            }
                        } else {
                            goto block_52;
                        }
                    } else {
block_51:
                        temp_a1_5 = arg0->unk7D38;
                        temp_t2 = temp_a1_5->unk0;
                        var_a0_4 = temp_t2;
                        if (temp_t2 != 4) {
                            goto block_52;
                        }
                        temp_a3_3 = temp_a1_5->unk4;
                        if (temp_a3_3->unk4 != 0) {
                            if (temp_a3_3->unk28 != 0x10) {
                                if (temp_a3_3->unk2C == 0) {

                                } else {
                                    goto block_52;
                                }
                            }
                        } else {
block_52:
                            arg0->unk7E5C = var_s2;
                            var_a0_4 = arg0->unk7D38->unk0;
                        }
                        var_s2 = viceDrawPixels;
                        if (var_a0_4 == 4) {
block_83:
                            temp_a3_4 = arg0->unk7D38->unk4;
                            var_s2 = viceDrawPixels;
                            if ((temp_a3_4->unk4 != 0) && ((temp_a3_4->unk28 == 0x10) || (var_s2 = viceDrawPixels, (temp_a3_4->unk2C == 0)))) {
                                var_s2 = viceDrawPixels2;
                            }
                        }
                    }
                    arg0->unk7DD4 = 1;
                }
                if ((var_s2 == NULL) || (sub_0d960000(arg0, sp, 4U) == 0)) {
                    sp208 = (s64) arg0->unk7DE4;
                    if (temp_gp->unk-5450 != 0) {
                        printf(&sub_0da40000 + 0x1E60);
                    }
                    arg0->unk7DD4 = 0;
                    arg0->unk7DD3 = 0U;
                    arg0->unk7DE4 = 0;
                    if ((var_s2 == NULL) || (var_s7 != 0)) {
                        __glGenericPickDrawPixels(arg0, sp);
                    } else {
                        __glSlowPickDrawPixels(arg0, var_s5, arg2, var_s3, arg4, var_s4, var_s6);
                    }
                    if (var_s3 == 0x1902) {
                        if (arg0->unk7A44 != sp218) {
                            arg0->unk7A44 = (s32) sp218;
                        }
                    }
                    arg0->unk7DE4 = (s32) sp208;
                }
                arg0->unk7DD4 = 0;
                arg0->unk7DD3 = 0U;
                if ((arg0->unk7DCF != 0) && (sp1FC == 0)) {
                    arg0->unkC(arg0, sp8);
                }
                if ((arg0->unk7E3C != 0) && (arg0->unk7E30 != 0)) {
                    arg0->unk7E44(arg0, 0);
                }
            }
        }
    }
}

void __glCrmPickReadPixels(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s64 sp220;
    s64 sp218;
    s32 sp210;
    s32 spC4;
    s32 sp98;
    s32 sp3C;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 (*var_s3)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32);
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_s1;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a4;
    s32 var_a7;
    s32 var_at;
    s32 var_ra;
    s32 var_t8;
    u32 temp_a3;
    u32 var_a2;
    u32 var_a2_2;
    u32 var_a2_3;
    u8 temp_a7;
    u8 var_a3;
    u8 var_a5;
    u8 var_a6;
    void *temp_a0;
    void *temp_gp;
    void *temp_v0_2;
    void *temp_v0_5;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFBC6C;
    if (arg0->unkDD0 == 0) {
        temp_t2 = arg0->unkE78;
        arg0->unkE78 = (s32) arg0->unk7D44;
        temp_t1 = arg0->unkE74;
        arg0->unkE74 = (s32) arg0->unk7D40;
        sp14 = temp_t2;
        sp10 = temp_t1;
    }
    __glInitReadPixelsInfo(arg0, &sp18, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    if (arg0->unk7DD2 != 0) {
        spC4 *= 2;
    }
    temp_v0 = __glClipReadPixels(arg0, &sp18);
    if (arg0->unk7DD2 != 0) {
        temp_a3 = spC4 + 1;
        spC4 = (s32) ((temp_a3 >> 0x1F) + temp_a3) >> 1;
    }
    if (arg0->unkDD0 == 0) {
        arg0->unkE78 = sp14;
        arg0->unkE74 = sp10;
    }
    if ((temp_v0 != 0) && (arg7 != 0)) {
        if ((arg0->unk7DCF != 0) && (sp98 & 1)) {
            sp98 += 1;
        }
        __glInitPacker(arg0, &sp18);
        arg0->unk7DD4 = 0;
        arg0->unk7E58 = NULL;
        arg0->unk7DDC = 0;
        arg0->unk7DE0 = 0;
        arg0->unk7DCE = 0;
        arg0->unk7DD8 = 0;
        arg0->unk7E28 = (void *) arg0->unk2DF4;
        temp_v0_2 = arg0->unk7D3C;
        var_a2 = arg0->unk7E24 & ~2 & ~1;
        arg0->unk7E24 = var_a2;
        var_a6 = 0x81BB;
        temp_s1 = (arg0->unk7DCF != 0) ? 0x81BB : arg5;
        var_a3 = arg0->unk478;
        if (temp_v0_2->unk0 != 4) {
            goto block_12;
        }
        var_a5 = (u8) temp_v0_2->unk4;
        if ((var_a5->unk4 != 0) && ((var_a5->unk28 == 0x10) || (var_a5->unk2C == 0))) {
            var_a2 = 0x1909;
            if (arg6 != 0x1402) {
                goto block_57;
            }
            if (temp_s1 != 0x1909) {
                goto block_57;
            }
            var_ra = sp78 | sp74;
            if ((arg0->unk7DE8 == 0) || (var_ra = sp78 | sp74, (arg0->unk7DE4 != 0))) {
                var_a5 = 2;
                if (var_ra & 3) {
                    goto block_57;
                }
                sp3C = 2;
                sp18 = 0x1909;
                var_a3 = 1;
                sp220 = 1;
                sp1C = 0x1402;
            } else {
block_57:
                sp220 = 0;
            }
            var_s3 = NULL;
        } else {
block_12:
            var_a5 = 0x1401;
            switch (arg6) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
                sp220 = 0;
                var_s3 = NULL;
                break;
            case 0x1401:                            /* switch 1 */
                switch (temp_s1) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    var_s3 = NULL;
                    if (temp_s1 != 0x1901) {
                        goto block_63;
                    }
                    if (arg0->unk773F != 0) {
                        var_s3 = NULL;
block_63:
                        var_a5 = (u8) crmReadPixelsXfer;
                    } else {
                        arg0->unk7DCE = 1;
                        arg0->unk7E28 = (void *) (arg0 + 0x7984);
                        var_a5 = (u8) crmReadPixelsXfer;
                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x4B30);
                        var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                        var_a2 = (((((var_a2 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200;
                        arg0->unk7E24 = var_a2;
                    }
                    break;
                case 0x1900:                        /* switch 2 */
                    var_a5 = (u8) crmReadPixelsXfer;
                    if (arg0->unk773D != 0) {
                        var_s3 = NULL;
                        var_a5 = (u8) crmReadPixelsXfer;
                    } else {
                        var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                        var_a2 = var_a2 & ~0xF0 & ~0xC & ~0x300;
                        arg0->unk7E24 = var_a2;
                    }
                    break;
                case 0x1907:                        /* switch 2 */
                    if (arg0->unk7DE8 != 0) {
                        var_s3 = NULL;
                        var_a5 = (u8) crmReadPixelsXfer;
                    } else {
                        var_a5 = (u8) crmReadPixelsXfer;
                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x5890);
                        var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                        var_a2 = (((((var_a2 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200;
                        arg0->unk7E24 = var_a2;
                    }
                    break;
                case 0x1909:                        /* switch 2 */
                    var_s3 = NULL;
                    if (arg0->unk7DE8 != 0) {
                        goto block_63;
                    }
                    var_a5 = (u8) crmReadPixelsXfer;
                    arg0->unk7E58 = (void *) (sub_0d960000 - 0x5620);
                    var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                    var_a2 = (((((var_a2 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200;
                    arg0->unk7E24 = var_a2;
                    break;
                }
                if (temp_s1 != 0x1908) {
                    if (temp_s1 == 0x8000) {
                        var_at = sp78 | sp74;
                        if ((arg0->unk7DE8 == 0) || (var_at = sp78 | sp74, (arg0->unk7DE4 != 0))) {
                            var_a3 = -0xF1U;
                            if (var_at & 3) {
                                sp220 = 0;
                            } else {
block_147:
                                var_a2_2 = (var_a2 & ~0xF0) | 0x30;
block_148:
                                arg0->unk7E24 = var_a2_2;
                                var_a3 = -0x301U;
                                var_a2 = (((var_a2_2 & ~0xC) | 8) & ~0x300) | 0x200;
                                arg0->unk7E24 = var_a2;
                                if (arg0->unkD64 == 0) {
                                    var_a3 = (u8) arg0->unkD58;
                                    if (var_a3 == 5) {
                                        if (((var_a2 >> 4) & 0xF) != 2) {
                                            arg0->unk7E58 = (void *) (sub_0d960000 - 0x5D40);
                                        } else {
                                            arg0->unk7E58 = (void *) (sub_0d960000 - 0x6090);
                                        }
                                    }
                                }
                                var_a6 = (u8) arg0->unk7DE4;
                                var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                                sp220 = (s64) var_a6;
                            }
                        } else {
                            sp220 = 0;
                        }
                    } else {
block_73:
                        if (temp_s1 != 0x81BB) {
                            sp220 = 0;
                        } else {
                            if (arg0->unk7DE8 == 0) {
                                if ((var_a3 == 0) && !((sp78 | sp74) & 3)) {
                                    var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                                    arg0->unk7E58 = (void *) (sub_0d960000 - 0x53C0);
                                    arg0->unk7E24 = (u32) ((((((var_a2 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                                }
                            }
                            sp220 = 0;
                        }
                    }
                } else {
                    var_a3 = sp78 | sp74;
                    if ((arg0->unk7DE8 == 0) || (var_a3 = sp78 | sp74, (arg0->unk7DE4 != 0))) {
                        var_a3 = -0xF1U;
                        if (var_a3 & 3) {
                            sp220 = 0;
                        } else {
block_139:
                            var_a2_3 = (var_a2 & ~0xF0) | 0x20;
block_140:
                            arg0->unk7E24 = var_a2_3;
                            var_a3 = -0x301U;
                            var_a2 = (((var_a2_3 & ~0xC) | 8) & ~0x300) | 0x200;
                            arg0->unk7E24 = var_a2;
                            if (arg0->unkD64 == 0) {
                                if (arg0->unkD58 == 5) {
                                    if (((var_a2 >> 4) & 0xF) != 3) {
                                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x6090);
                                    } else {
                                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x5D40);
                                    }
                                }
                            }
                            var_a6 = (u8) arg0->unk7DE4;
                            var_s3 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) (u8) crmReadPixelsXfer;
                            sp220 = (s64) var_a6;
                        }
                    } else {
                        sp220 = 0;
                    }
                }
                break;
            case 0x8035:                            /* switch 1 */
                if (temp_s1 != 0x1908) {
                    var_s3 = NULL;
                    if (temp_s1 != 0x8000) {
                        var_a5 = (u8) crmReadPixelsXfer;
                        goto block_73;
                    }
                    var_t8 = sp78 | sp74;
                    if (arg0->unk7DE8 != 0) {
                        var_s3 = NULL;
                        if (arg0->unk7DE4 != 0) {
                            var_t8 = sp78 | sp74;
                            goto block_113;
                        }
                        sp220 = 0;
                    } else {
block_113:
                        var_s3 = NULL;
                        if (var_t8 & 3) {
                            sp220 = 0;
                        } else {
                            if (var_a3 != 0) {
                                var_a5 = (u8) crmReadPixelsXfer;
                                var_a2_2 = (var_a2 & ~0xF0) | 0x20;
                            } else {
                                var_a5 = (u8) crmReadPixelsXfer;
                                goto block_147;
                            }
                            goto block_148;
                        }
                    }
                } else {
                    var_a5 = (u8) arg0->unk7DE8;
                    var_a7 = sp78 | sp74;
                    if (var_a5 != 0) {
                        var_a6 = (u8) arg0->unk7DE4;
                        var_s3 = NULL;
                        if (var_a6 != 0) {
                            var_a7 = sp78 | sp74;
                            goto block_103;
                        }
                        sp220 = 0;
                    } else {
block_103:
                        var_s3 = NULL;
                        if (var_a7 & 3) {
                            sp220 = 0;
                        } else {
                            var_a5 = (u8) crmReadPixelsXfer;
                            if (var_a3 != 0) {
                                var_a5 = (u8) crmReadPixelsXfer;
                                var_a2_3 = (var_a2 & ~0xF0) | 0x30;
                            } else {
                                goto block_139;
                            }
                            goto block_140;
                        }
                    }
                }
                break;
            case 0x1403:                            /* switch 1 */
                var_a5 = 0x1900;
                var_s3 = NULL;
                if (temp_s1 == 0x1900) {
                    if (arg0->unk773D != 0) {
                        var_s3 = NULL;
                    } else if (var_a3 != 0) {
                        var_s3 = NULL;
                    } else if ((sp78 | sp74) & 1) {
                        var_s3 = NULL;
                    } else {
                        var_a6 = (u8) arg0->unkD54;
                        if (var_a6 != 0xC) {
                            var_s3 = NULL;
                        } else {
                            var_s3 = crmReadPixelsXfer;
                            arg0->unk7E24 = (u32) ((((var_a2 & ~0xF0 & ~0xC) | 4) & ~0x300) | 0x100);
                        }
                    }
                }
                sp220 = 0;
                break;
            case 0x1405:                            /* switch 1 */
                if (temp_s1 != 0x1902) {
                    var_s3 = NULL;
                    if (temp_s1 == 0x1901) {
                        var_a5 = arg0->unk7D09;
                        if (var_a5 != 0) {
                            var_a6 = arg0->unk7DC8;
                            if (var_a6 != 0) {
                                if (var_a3 != 0) {
                                    var_s3 = NULL;
                                } else if ((sp78 | sp74) & 3) {
                                    var_s3 = NULL;
                                } else {
                                    var_s3 = crmReadPixelsXfer;
                                    arg0->unk7E28 = (void *) (arg0 + 0x7984);
                                    var_a3 = -0x301U;
                                    var_a5 = 1;
                                    arg0->unk7DCE = 1;
                                    arg0->unk7E24 = (u32) ((((((var_a2 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                                }
                            } else {
                                var_s3 = NULL;
                            }
                        } else {
                            var_s3 = NULL;
                        }
                    }
                } else if (arg0->unk7D08 != 0) {
                    if (var_a3 != 0) {
                        goto block_119;
                    }
                    if ((sp78 | sp74) & 3) {
                        goto block_119;
                    }
                    if (arg0->unk773E != 0) {
                        var_s3 = NULL;
                        if ((f64) (second half of f64) == (second half of f64)) {
                            var_s3 = NULL;
                            if ((f64) arg0->unk2A4 == GLUE_F64(M2C_ERROR(/* Read from unset register $f3 */), 0U)) {
                                if (arg0->unk80A0 != 1) {
                                    arg0->unk7E58 = (void *) (sub_0d960000 - 0x4F90);
                                }
                                goto block_189;
                            }
                        }
                    } else {
                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x5100);
block_189:
                        var_s3 = crmReadPixelsXfer;
                        arg0->unk7E28 = (void *) (arg0 + 0x79FC);
                        arg0->unk7DCE = 1;
                        arg0->unk7E24 = (u32) ((((((var_a2 & ~0xF0) | 0x20) & ~0xC) | 8) & ~0x300) | 0x200);
                    }
                } else {
block_119:
                    var_s3 = NULL;
                }
                sp220 = 0;
                break;
            case 0x8034:                            /* switch 1 */
                if (temp_s1 != 0x1908) {
                    sp220 = 0;
                    goto block_86;
                }
                if ((arg0->unk7DE8 == 0) || (arg0->unk7DE4 != 0)) {
                    if (var_a3 != 0) {
                        sp220 = 0;
                        goto block_86;
                    }
                    if ((sp78 | sp74) & 1) {
                        sp220 = 0;
                        goto block_86;
                    }
                    if (arg0->unk7DD0 == 0) {
                        arg0->unk7E58 = (void *) (sub_0d960000 - 0x42D0);
                    }
                    temp_v0_3 = var_a2 & ~0xF0;
                    if (arg0->unkD64 > 0) {
                        var_a2 = temp_v0_3 | 0x20;
                    } else {
                        var_a2 = temp_v0_3 | 0x10;
                    }
                    arg0->unk7E24 = var_a2;
                    var_s3 = crmReadPixelsXfer;
                    var_a3 = (u8) arg0->unk7DE4;
                    sp220 = (s64) var_a3;
                    arg0->unk7E24 = (u32) ((((var_a2 & ~0xC) | 4) & ~0x300) | 0x100);
                } else {
                    sp220 = 0;
block_86:
                    var_s3 = NULL;
                }
                break;
            case 0x8032:                            /* switch 1 */
                var_s3 = NULL;
                if (temp_s1 == 0x1907) {
                    if (arg0->unk7DE8 != 0) {
                        var_s3 = NULL;
                    } else {
                        var_s3 = crmReadPixelsXfer;
                        arg0->unk7E24 = (u32) (((var_a2 & ~0xF0) | 0x10) & ~0xC & ~0x300);
                    }
                }
                sp220 = 0;
                break;
            }
        }
        if ((temp_s1 != 0x1901) && (temp_s1 != 0x1902)) {

        } else {
            temp_a7 = arg0->unk7D08;
            if (temp_a7 != 0) {
                if (arg0->unk7A5C == 0) {
                    __glCrmForceNonTagClear(arg0, arg0 + 0x79FC, var_a2, (s32) var_a3, (void *)4, (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) var_a5, (s32) var_a6, temp_a7);
                }
            }
        }
        if ((sp220 != 0) && (temp_gp->unk-543C != 0)) {
            temp_v0_4 = arg0->unk7D3C->unk0;
            if ((temp_v0_4 != 4) && (temp_v0_4 != 5)) {
                temp_v0_5 = arg0->unk7D38;
                if (temp_v0_5->unk0 != 4) {
                    goto block_28;
                }
                temp_a0 = temp_v0_5->unk4;
                if (temp_a0->unk4 != 0) {
                    if (temp_a0->unk28 != 0x10) {
                        if (temp_a0->unk2C == 0) {

                        } else {
                            goto block_28;
                        }
                    }
                } else {
                    goto block_28;
                }
            } else {
block_28:
                arg0->unk7E60 = var_s3;
            }
            var_s3 = viceReadPixels;
            arg0->unk7DD4 = 1;
        }
        if ((var_s3 == NULL) || (var_a4 = temp_gp->unk-5450, (var_s3(arg0, &sp18) == 0))) {
            sp218 = (s64) arg0->unk7DE4;
            if (temp_gp->unk-5450 != 0) {
                printf(&sub_0da40000 + 0x1E78);
            }
            arg0->unk7DD4 = 0;
            arg0->unk7DE4 = 0;
            if (arg0->unk7DD2 != 0) {
                temp_a2 = arg0->unk12F4;
                sp210 = temp_a2;
                arg0->unk12F4 = (s32) (temp_a2 * 2);
            }
            if ((var_s3 == NULL) || (sp220 != 0)) {
                __glGenericPickReadPixels(arg0, &sp18);
            } else {
                __glSlowPickReadPixels(arg0, arg1, arg2, arg3, arg4, temp_s1, arg6, arg7);
            }
            var_a4 = (s32) sp218;
            arg0->unk7DE4 = var_a4;
            if (arg0->unk7DD2 != 0) {
                arg0->unk12F4 = sp210;
            }
        }
        temp_a2_2 = arg0->unk7E3C;
        arg0->unk7DD4 = 0;
        if (temp_a2_2 != 0) {
            temp_a3_2 = arg0->unk7E30;
            if (temp_a3_2 != 0) {
                arg0->unk7E44(arg0, 0, temp_a2_2, temp_a3_2, var_a4);
            }
        }
    }
}

void __glCrmPickCopyPixels(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s64 sp210;
    s64 sp208;
    s32 sp204;
    s32 sp200;
    s32 spE4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    s32 spB4;
    f32 spAC;
    s32 sp8C;
    s32 sp88;
    s32 sp7C;
    s32 sp74;
    s32 sp5C;
    s32 sp3C;
    s32 sp38;
    s32 sp2C;
    s32 sp24;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 var_f12;
    s32 (*var_a5)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32);
    s32 (*var_v0_2)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32);
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_ra;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 temp_v0_8;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a6;
    s32 var_a7;
    s32 var_t2;
    s32 var_v0;
    s64 var_a2_3;
    s64 var_t9;
    u32 temp_t1_2;
    u32 temp_v1;
    u8 temp_a1_4;
    u8 temp_a1_6;
    u8 temp_a4_6;
    u8 temp_a5;
    u8 var_a5_2;
    void *temp_a1_5;
    void *temp_a2;
    void *temp_a2_3;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_gp;
    void *temp_t1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_7;
    void *var_a2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFB04C;
    if (arg0->unkDD0 == 0) {
        temp_t2 = arg0->unkE78;
        arg0->unkE78 = (s32) arg0->unk7D44;
        temp_t1 = arg0->unkE74;
        arg0->unkE74 = (s32) arg0->unk7D40;
        sp4 = temp_t2;
        sp0 = temp_t1;
    }
    __glInitCopyPixelsInfo(arg0, &sp8, arg1, arg2, arg3, arg4, arg5);
    if (arg0->unk77BC != 0) {
        goto block_2;
    }
    var_a5 = crmCopyPixelsXferRW;
    if (arg0->unk7DD1 == 0) {
        var_a5 = crmCopyPixelsXferRW;
        if (arg0->unk7DD2 == 0) {
            if (arg0->unk7DCD != 0) {
                if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f4, $f3, $f2 */) == (s32) (arg0->unk7DF8 * (f32) arg3)) {
                    var_a5 = crmCopyPixelsXferRW;
                    if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f4, $f7, $f6 */) == (s32) (arg0->unk7DFC * (f32) arg4)) {
                        goto block_34;
                    }
                } else {
block_2:
                    var_a5 = crmCopyPixelsXferRW;
                }
            } else {
block_34:
                var_a5 = crmCopyPixelsXfer;
            }
        }
    }
    arg0->unk7DD4 = 0;
    arg0->unk7E58 = 0;
    arg0->unk7DDC = 0;
    arg0->unk7DE0 = 0;
    arg0->unk7DCE = 0;
    arg0->unk7DD8 = 0;
    arg0->unk7E2C = (void *) arg0->unk2DF0;
    arg0->unk7E28 = (void *) arg0->unk2DF4;
    var_a6 = -3;
    var_a2 = arg0->unk7D3C;
    arg0->unk7E24 = (s32) (-2 & (arg0->unk7E24 & ~2));
    temp_a1 = var_a2->unk0;
    var_a3 = arg0->unk7DE4;
    if (temp_a1 != 4) {
        goto block_4;
    }
    temp_v0 = var_a2->unk4;
    var_a6 = (s32) temp_v0->unk4;
    if ((var_a6 != 0) && ((temp_v0->unk28 == 0x10) || (temp_v0->unk2C == 0))) {
        goto block_38;
    }
block_4:
    temp_a4 = arg0->unk7D38;
    var_a7 = temp_a4->unk0;
    var_v0 = var_a7;
    if (var_a7 != 4) {
        goto block_6;
    }
    var_a6 = temp_a4->unk4;
    if (var_a6->unk4 != 0) {
        var_a7 = var_a6->unk28;
        if (var_a7 != 0x10) {
            if (var_a6->unk2C == 0) {
                goto block_38;
            }
            goto block_6;
        }
block_38:
        var_v0_2 = NULL;
        if (temp_a1 != 4) {
            goto block_44;
        }
        temp_v0_2 = var_a2->unk4;
        if (temp_v0_2->unk4 != 0) {
            if ((temp_v0_2->unk28 != 0x10) && (temp_v0_2->unk2C != 0)) {
                goto block_133;
            }
            temp_a4_2 = arg0->unk7D38;
            if (temp_a4_2->unk0 != 4) {
                goto block_141;
            }
            temp_a6 = temp_a4_2->unk4;
            if (temp_a6->unk4 != 0) {
                if (temp_a6->unk28 != 0x10) {
                    if (temp_a6->unk2C == 0) {
                        goto block_133;
                    }
                    goto block_141;
                }
                goto block_133;
            }
block_141:
            if (arg5 == 0x1908) {
                if (arg0->unk7DC5 != 0) {
                    if ((arg0->unk7DE8 == 0) || (var_a3 != 0)) {
                        var_v0_2 = var_a5;
                        if (temp_a4_2->unk4->unk2C != 0x10) {
                            sp8 = 0x1909;
                            sp24 = 1;
                            var_a3 |= 0x200000;
                            arg0->unk7DE4 = var_a3;
                        } else {
                            sp24 = 4;
                        }
                        sp5C = 0x1401;
                        sp7C = 1;
                        sp74 = 4;
                        sp2C = 2;
                        spC = 0x1402;
                        goto block_44;
                    }
                    if (temp_a4_2->unk4->unk2C != 0x10) {
                        sp24 = 1;
                        sp8 = 0x1909;
                        arg0->unk7DE4 = (s32) (var_a3 | 0x200000);
                    } else {
                        sp24 = 4;
                    }
                    spC = 0x1402;
                    sp2C = 2;
                    sp74 = 4;
                    sp7C = 1;
                    sp5C = 0x1401;
                    var_v0 = arg0->unk7D38->unk0;
                    goto block_10;
                }
                if (temp_a4_2->unk4->unk2C != 0x10) {
                    sp24 = 1;
                    sp8 = 0x1909;
                    arg0->unk7DE4 = (s32) (var_a3 | 0x200000);
                } else {
                    sp24 = 4;
                }
                spC = 0x1402;
                sp2C = 2;
                sp74 = 4;
                sp7C = 1;
                sp5C = 0x1401;
                var_v0 = arg0->unk7D38->unk0;
                goto block_10;
            }
block_133:
            var_v0_2 = NULL;
            if (temp_a1 == 4) {
                temp_v0_3 = var_a2->unk4;
                var_a5_2 = temp_v0_3->unk4;
                if (var_a5_2 != 0) {
                    var_a2_2 = temp_v0_3->unk28;
                    if (var_a2_2 != 0x10) {
                        goto block_136;
                    }
                    var_t2 = temp_v0_3->unk2C;
                    if (var_t2 == 0) {
                        temp_a4_3 = arg0->unk7D38;
                        if (temp_a4_3->unk0 == 4) {
                            temp_a6_2 = temp_a4_3->unk4;
                            if ((temp_a6_2->unk4 != 0) && (temp_a6_2->unk28 == 0x10) && (temp_a6_2->unk2C == 0)) {
                                goto block_162;
                            }
                        }
                    }
block_136:
                    if (temp_a1 != 4) {
                        var_v0_2 = NULL;
                        goto block_44;
                    }
                    goto block_150;
                }
                goto block_148;
            }
            goto block_44;
        }
block_148:
        var_v0_2 = NULL;
        if (temp_a1 == 4) {
            var_a5_2 = var_a2->unk4->unk4;
block_150:
            if (var_a5_2 != 0) {
                var_a2_2 = var_a2->unk4->unk28;
                if (var_a2_2 != 0x10) {
                    var_v0 = arg0->unk7D38->unk0;
                    goto block_10;
                }
                var_t2 = var_a2->unk4->unk2C;
                temp_a4_4 = arg0->unk7D38;
                if (var_t2 != 0x10) {
                    var_v0 = temp_a4_4->unk0;
                    goto block_10;
                }
                temp_ra = temp_a4_4->unk0;
                var_v0 = temp_ra;
                if (temp_ra == 4) {
                    temp_a6_3 = temp_a4_4->unk4;
                    if ((temp_a6_3->unk4 != 0) && (temp_a6_3->unk28 == 0x10) && (temp_a6_3->unk2C == 0x10)) {
block_162:
                        if (temp_a1 != 4) {
                            goto block_163;
                        }
                        if ((var_a5_2 != 0) && (var_a2_2 == 0x10)) {
                            if (var_t2 == 0) {
                                sp7C = 2;
                                sp5C = 0x1402;
                                sp74 = 1;
                                sp2C = 2;
                                spC = 0x1402;
                                sp24 = 1;
                            } else {
block_163:
                                goto block_164;
                            }
                        } else {
block_164:
                            sp7C = 2;
                            sp5C = 0x1402;
                            sp74 = 4;
                            sp2C = 2;
                            spC = 0x1402;
                            sp24 = 4;
                        }
                        sp7C = 2;
                        sp2C = 2;
                        spC = 0x1402;
                        sp5C = 0x1402;
                        var_v0_2 = (s32 (*)(s64 (*)(?, s32 *), s32 *, s32, s32, s32, s32, s32, s32)) viceCopyPixels;
                        goto block_44;
                    }
                }
                goto block_10;
            }
            var_v0 = arg0->unk7D38->unk0;
            goto block_10;
        }
        goto block_44;
    }
block_6:
    switch (arg5) {                                 /* irregular */
    case 0x1908:
        if (arg0->unk7DC4 != 0) {
            var_v0_2 = var_a5;
            if (arg0->unk7DE8 != 0) {
                var_v0_2 = var_a5;
                if (var_a3 == 0) {
                    var_v0_2 = NULL;
                }
            }
        } else {
            var_v0_2 = NULL;
        }
        sp2C = 1;
        sp7C = 1;
        sp24 = 4;
        sp74 = 4;
block_44:
        if (var_v0_2 != NULL) {
            sp8C = 0;
            sp88 = 0;
            if (arg0->unk7DD2 != 0) {
                sp210 = (s64) var_a3;
                unksp250 = (s64) var_v0_2;
                spB4 *= 2;
            }
            sp210 = (s64) var_a3;
            unksp250 = (s64) var_v0_2;
            temp_v0_4 = __glClipReadPixels(arg0, &sp8);
            if (arg0->unk7DD2 != 0) {
                temp_v1 = spB4 + 1;
                spB4 = (s32) ((temp_v1 >> 0x1F) + temp_v1) >> 1;
            }
            if (arg0->unkDD0 == 0) {
                arg0->unkE78 = sp4;
                arg0->unkE74 = sp0;
            }
            if (temp_v0_4 != 0) {
                var_f12 = spA8;
                spCC = M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f11, $f12 */);
                spD0 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f10, $f4 */);
                sp3C = 0;
                sp38 = 0;
                if (arg0->unk7DD1 != 0) {
                    var_f12 = spAC * 2.0f;
                    spAC = var_f12;
                }
                var_a2_3 = unksp250;
                if (__glClipDrawPixels(arg0, &sp8, sp8C, sp88, var_f12) != 0) {
                    if (arg0->unk7DD1 != 0) {
                        spE4 = -2 & (spE4 + 1);
                    }
                    spC8 -= (f32) sp3C;
                    spC4 += (f32) sp38;
                    if (sp210 != 0) {
                        var_t9 = var_a2_3;
                        if (temp_gp->unk-543C != 0) {
                            temp_a2 = arg0->unk7D3C;
                            temp_a1_2 = temp_a2->unk0;
                            if (temp_a1_2 != 4) {
                                if (temp_a1_2 != 5) {
                                    arg0->unk7E60 = crmReadPixelsXfer;
                                } else {
                                    goto block_102;
                                }
                            } else {
                                temp_v0_5 = temp_a2->unk4;
                                if ((temp_v0_5->unk4 == 0) || ((temp_v0_5->unk28 != 0x10) && (temp_v0_5->unk2C != 0))) {
block_102:
                                    arg0->unk7E60 = crmReadPixelsXfer;
                                } else {
                                    arg0->unk7E60 = NULL;
                                }
                            }
                            temp_a4_5 = arg0->unk7D38;
                            temp_v0_6 = temp_a4_5->unk0;
                            if (temp_v0_6 != 4) {
                                goto block_62;
                            }
                            temp_a1_3 = temp_a4_5->unk4;
                            if ((temp_a1_3->unk4 != 0) && ((temp_a1_3->unk28 == 0x10) || (temp_a1_3->unk2C == 0))) {
                                arg0->unk7E5C = NULL;
                            } else {
block_62:
                                temp_a1_4 = arg0->unk7DCD;
                                if (arg0->unk7DC9 != 0) {
                                    goto block_63;
                                }
                                if ((temp_a1_4 == 0) && (arg0->unk7DD1 == 0)) {
                                    if (!(sp210 & 0x18) && ((temp_v0_6 == 4) || (temp_v0_6 == 5))) {
                                        arg0->unk7E5C = crmDrawPixelsXfer;
                                    } else {
block_63:
                                        if (temp_a1_4 != 0) {
                                            goto block_64;
                                        }
                                        if (arg0->unk7DD1 == 0) {
                                            arg0->unk7E5C = crmDrawPixelsXfer;
                                        } else {
                                            goto block_64;
                                        }
                                    }
                                } else {
block_64:
                                    arg0->unk7E5C = crmDrawPixelsXfer2;
                                }
                            }
                            arg0->unk7DD4 = 1;
                            var_a2_3 = (s64) viceCopyPixels;
                            goto block_66;
                        }
                    } else {
block_66:
                        var_t9 = var_a2_3;
                    }
                    if (((s32 (*)(s64 (*)(?, s32 *), s32 *, s64)) var_t9)(arg0, &sp8, var_a2_3) == 0) {
                        sp208 = (s64) arg0->unk7DE4;
                        if (temp_gp->unk-5450 != 0) {
                            printf(&sub_0da40000 + 0x1EA8);
                        }
                        arg0->unk7DD4 = 0;
                        arg0->unk7DE4 = 0;
                        if (arg0->unk7DD2 != 0) {
                            temp_a2_2 = arg0->unk12F4;
                            sp204 = temp_a2_2;
                            arg0->unk12F4 = (s32) (temp_a2_2 * 2);
                        }
                        __glSlowPickCopyPixels(arg0, arg1, arg2, arg3, arg4, arg5);
                        arg0->unk7DE4 = (s32) sp208;
                        if (arg0->unk7DD2 != 0) {
                            arg0->unk12F4 = sp204;
                        }
                    }
                    arg0->unk7DD4 = 0;
                    goto block_24;
                }
            }
        } else {
            var_v0 = arg0->unk7D38->unk0;
block_10:
            if (var_v0 != 4) {
                goto block_11;
            }
            temp_a1_5 = arg0->unk7D38->unk4;
            temp_a5 = temp_a1_5->unk4;
            if ((temp_a5 != 0) && ((temp_a6_4 = temp_a1_5->unk28, (temp_a6_4 == 0x10)) || (temp_a1_5->unk2C == 0)) && (temp_a2_3 = arg0->unk7D3C, (temp_a2_3->unk0 == 4)) && (temp_v0_7 = temp_a2_3->unk4, (temp_v0_7->unk4 != 0)) && ((temp_v0_7->unk28 == 0x10) || (temp_v0_7->unk2C == 0))) {
                if (arg0->unkDD0 == 0) {
                    arg0->unkE78 = sp4;
                    arg0->unkE74 = sp0;
                }
                viceCopySPBuffer(arg0, &sp8, temp_a2_3, var_a3, arg0->unk7D38, temp_a5, temp_a6_4);
            } else {
block_11:
                if (temp_gp->unk-5450 != 0) {
                    printf(&sub_0da40000 + 0x1E90);
                }
                if (arg0->unk7DD2 != 0) {
                    spB4 *= 2;
                    if (arg0->unk7DD1 == 0) {
                        spAC = (f32) ((f64) spAC * 0.5);
                    }
                } else if (arg0->unk7DD1 != 0) {
                    spAC *= 2.0f;
                }
                temp_v0_8 = __glClipCopyPixels(arg0, &sp8);
                if (arg0->unkDD0 == 0) {
                    arg0->unkE78 = sp4;
                    arg0->unkE74 = sp0;
                }
                if (temp_v0_8 != 0) {
                    if (arg0->unk7DD2 != 0) {
                        temp_t1_2 = spB4 + 1;
                        spB4 = (s32) ((temp_t1_2 >> 0x1F) + temp_t1_2) >> 1;
                        temp_a6_5 = arg0->unk12F4;
                        arg0->unk12F4 = (s32) (temp_a6_5 * 2);
                        sp200 = temp_a6_5;
                        spAC = (f32) ((f64) (second half of f64) * (second half of f64));
                    }
                    if (arg0->unk7DD1 != 0) {
                        spE4 = -2 & (spE4 + 1);
                    }
                    __glGenericPickCopyPixels(arg0, &sp8);
                    if (arg0->unk7DD2 != 0) {
                        arg0->unk12F4 = sp200;
                    }
                }
            }
block_24:
            if ((arg0->unk7E3C != 0) && (arg0->unk7E30 != 0)) {
                arg0->unk7E44(arg0, 0);
            }
        }
        break;
    case 0x1900:
        if (arg0->unk7DC4 != 0) {
            var_v0_2 = (arg0->unk773D == 0) ? var_a5 : NULL;
        } else {
            var_v0_2 = NULL;
        }
        goto block_44;
    case 0x1902:
        temp_a1_6 = arg0->unk7D08;
        if (temp_a1_6 != 0) {
            var_a2 = arg0 + 0x79FC;
            if (arg0->unk7DC6 != 0) {
                arg0->unk7E2C = var_a2;
                arg0->unk7E28 = var_a2;
                var_v0_2 = var_a5;
                arg0->unk7DCE = 1;
            } else {
                var_v0_2 = NULL;
            }
        } else {
            var_v0_2 = NULL;
        }
        if (temp_a1_6 != 0) {
            temp_a4_6 = arg0->unk7A5C;
            if (temp_a4_6 == 0) {
                sp210 = (s64) var_a3;
                unksp250 = (s64) var_v0_2;
                __glCrmForceNonTagClear(arg0, arg0 + 0x79FC, (u32) var_a2, var_a3, (void *) temp_a4_6, var_a5, var_a6, (u8) var_a7);
            }
        }
        goto block_44;
    case 0x1901:
        if (arg0->unk7D09 != 0) {
            var_v0_2 = NULL;
            if (arg0->unk773F == 0) {
                temp_t1_3 = arg0 + 0x7984;
                arg0->unk7E2C = temp_t1_3;
                var_v0_2 = var_a5;
                arg0->unk7E28 = temp_t1_3;
                arg0->unk7DCE = 1;
            }
        } else {
            var_v0_2 = NULL;
        }
        if ((arg0->unk7D08 != 0) && (arg0->unk7A5C == 0)) {
            sp210 = (s64) var_a3;
            unksp250 = (s64) var_v0_2;
            __glCrmForceNonTagClear(arg0, arg0 + 0x79FC, (u32) var_a2, var_a3, temp_a4, var_a5, var_a6, (u8) var_a7);
        }
        goto block_44;
    }
}

void __glCrmSetupPixelRenderOps(s64 (*arg0)(?, s32 *), s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, f32 fparg3) {
    f64 spA8;
    f64 sp88;
    s32 sp84;
    s32 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp5C;
    f32 sp58;
    s64 sp50;
    f64 sp48;
    s64 sp40;
    f64 sp38;
    s32 sp30;
    f32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s64 sp18;
    f64 sp10;
    s64 sp8;
    s64 sp0;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f15;
    f32 var_f4;
    f32 var_f6;
    f64 var_f4_2;
    f64 var_f5;
    s32 temp_a7;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_f15 = fparg3;
    temp_v0 = arg0->unk76E4;
    temp_s1 = arg0->unk7DBC;
    temp_s0 = arg0->unk7DB8;
    if (temp_v0 & 4) {
        sp0 = 0;
        temp_s0->unk21D0 = sp0;
        temp_s1->unk21D0 = sp0;
        sp8 = 0;
        temp_s0->unk21D8 = sp8;
        temp_s1->unk21D8 = sp8;
        sp10 = (f64) (arg0->unk178 * 64.0f);
        sp18 = (s64) sp10;
        temp_s0->unk21C8 = (f64) (second half of f64);
        temp_s1->unk21C8 = sp18;
    }
    if (temp_v0 & 0x2000) {
        sp20 = 0;
        var_a6 = sp20;
        temp_s0->unk2180 = var_a6;
        var_a5 = sp20;
        temp_s1->unk2180 = var_a5;
        sp24 = 0;
        var_a4 = sp24;
        temp_s0->unk2188 = var_a4;
        var_a3 = sp24;
        temp_s1->unk2188 = var_a3;
        sp28 = (s32) ((f32) ((f64) arg0->unk1A0 * 255.0) * 4096.0f);
        var_a2 = sp28;
        temp_s0->unk2178 = var_a2;
        var_a1 = sp28;
        temp_s1->unk2178 = var_a1;
    }
    temp_a7 = temp_v0 & 8;
    if (temp_a7 != 0) {
        var_f4 = arg0->unk12C;
        temp_f5 = arg0->unk120;
        temp_s2 = arg0->unk6E30;
        temp_v0_2 = temp_s2->unkE8;
        if ((f64) var_f4 != (second half of f64)) {
            if (fabsf(var_f4) < 0.0000076293945f) {
                var_f4 = M2C_ERROR(/* unknown instruction: movf.s $f13, $f6, $fcc2 */);
            }
            temp_f6 = 1.0f / var_f4;
            var_f15 = temp_f5 * temp_f6;
            sp88 = (bitwise f64) var_f15;
            if (temp_v0_2 != 1) {
                sp2C = arg0->unk124 * temp_f6;
            }
        } else {
            sp88 = (bitwise f64) temp_f5;
            if (temp_v0_2 != 1) {
                sp2C = arg0->unk124;
            }
        }
        temp_v0_3 = __glFloor(var_a1, (bitwise f32) var_a2, var_a3, var_a4, var_a5, var_a6, temp_a7, sp88, second half of f64, 0, var_f15);
        temp_t3 = temp_v0_3 < 2;
        if (temp_s2->unk4 != 0x2901) {
            if (temp_v0_3 >= 0) {
                if (temp_t3 != 0) {

                }
            }
        }
        var_f5 = 1.0;
        var_f4_2 = second half of f64;
        if (temp_s2->unkE8 == 1) {

        } else {
            spA8 = second half of f64;
            temp_v0_4 = __glFloor(0x2901, sp2C);
            var_f6 = 7.0f;
            temp_v1 = temp_v0_4 < 2;
            if (temp_s2->unk8 != 0x2901) {
                if (temp_v0_4 >= 0) {
                    if (temp_v1 != 0) {
                        var_f6 = sp2C + 1.0f;
                    }
                } else {
                    var_f6 = 0.0f;
                }
                var_f5 = (f64) var_f6;
                var_f4_2 = second half of f64;
            } else {
                var_f5 = (f64) ((sp2C - (f32) temp_v0_4) + 1.0f);
                var_f4_2 = second half of f64;
            }
        }
        sp30 = 0;
        temp_s0->unk2134 = sp30;
        temp_s1->unk2134 = sp30;
        sp38 = 8796093022208.0 * var_f4_2;
        sp40 = (s64) sp38 + 0x800;
        sp48 = 8796093022208.0 * var_f5;
        sp50 = (s64) sp48 + 0x800;
        sp58 = 5.368709e8f;
        temp_s0->unk2120 = sp40;
        temp_s1->unk2120 = (f64) (second half of f64);
        temp_s0->unk2128 = sp50;
        temp_s1->unk2128 = sp50;
        sp5C = (s32) sp58 + 0x800;
        temp_s0->unk2130 = sp5C;
        temp_s1->unk2130 = sp5C;
        sp60 = 0;
        sp68 = 0;
        sp70 = 0;
        sp78 = 0;
        sp80 = 0;
        temp_s0->unk2138 = (f64) (second half of f64);
        temp_s1->unk2138 = sp60;
        temp_s0->unk2140 = (f64) (second half of f64);
        temp_s1->unk2140 = sp68;
        temp_s0->unk2148 = (f64) (second half of f64);
        temp_s1->unk2148 = sp70;
        temp_s0->unk2150 = (f64) (second half of f64);
        temp_s1->unk2150 = sp78;
        temp_s0->unk2158 = sp80;
        temp_s1->unk2158 = sp80;
        sp84 = 0;
        temp_s0->unk215C = sp84;
        temp_s1->unk215C = sp84;
    }
}

s32 crmFastDoubleStore(void *arg0, void *arg1, s32 (*arg2)(void *, void *, s32, s64, s16, void *), s32 arg3, s16 arg5, void *arg6) {
    s64 sp40;
    s64 sp10;
    f64 sp8;
    s32 sp0;
    s16 temp_v0_2;
    s16 var_a5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_a3;
    s64 var_a4;
    void *temp_s2;
    void *temp_s3;
    void *var_a6;

    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_s2 = arg0->unk7DBC;
    temp_s3 = arg0->unk7DB8;
    if ((arg0->unk77BC != 0) && (arg0->unk7DD3 != 0)) {
        temp_v0 = arg0->unk77C0;
        sp0 = arg0->unk7D58;
        if (arg0->unk2DF0 == temp_v0) {
            var_a3 = arg0->unk77C4;
            arg0->unk7E2C = var_a3;
        } else {
            arg0->unk7E2C = temp_v0;
        }
        var_a4 = sp0 & 1;
        sp10 = var_a4;
        if (var_a4 != 0) {
            var_a5 = arg0->unk68A;
            if (var_a5 != 0) {
                temp_s3->unk21E8 = 0;
                temp_s2->unk21E8 = 0;
            }
        }
        if (sp0 & 4) {
            if (sp0 & 2) {
                temp_a0 = arg0->unk7D58 & ~2;
                arg0->unk7D58 = temp_a0;
                if (arg0->unk7D5C != temp_a0) {
                    var_a6 = arg0->unk7DB8;
                    var_a6->unk2018 = temp_a0;
                    var_a5 = (s16) arg0->unk7DBC;
                    var_a4 = (s64) arg0->unk7D58;
                    var_a5->unk2018 = (s32) var_a4;
                    var_a3 = arg0->unk7D58;
                    arg0->unk7D5C = var_a3;
                }
            }
        }
        arg0->unk7DD3 = 0U;
        sp40 = sp0 << 0x1D;
        sp8 = (f64) arg1->unkC8;
        temp_a1 = arg2(arg0, arg1, var_a3, var_a4, var_a5, var_a6);
        arg0->unk7E2C = (s32) arg0->unk2DF0;
        arg1->unkC8 = (f32) sp8;
        if (sp10 != 0) {
            temp_v0_2 = arg0->unk68A;
            if (temp_v0_2 != 0) {
                temp_s3->unk21E8 = (s32) temp_v0_2;
                temp_s2->unk21E8 = (s32) temp_v0_2;
            }
        }
        if ((sp40 < 0) && (sp0 & 2)) {
            temp_a0_2 = arg0->unk7D58 | 2;
            arg0->unk7D58 = temp_a0_2;
            if (arg0->unk7D5C != temp_a0_2) {
                arg0->unk7DB8->unk2018 = temp_a0_2;
                arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
                arg0->unk7D5C = (s32) arg0->unk7D58;
            }
        }
        arg0->unk7DD3 = 1U;
        return temp_a1 & 0xFF;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x128, 0x12c, 0x130, 0x134, 0x138, 0x13c], gap at: 0x78. */
s64 crmDrawPixelsXfer(s64 (*arg0)(?, s32 *), s32 *arg1) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 sp8;
    s32 sp4;
    u32 sp0;
    s16 temp_a1_2;
    s32 temp_a1;
    s32 temp_a1_4;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_f1;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_t9;
    s32 var_a2;
    s32 var_s2;
    s32 var_s4;
    s32 var_s5;
    s64 (*temp_v0)(?, s32 *);
    s64 temp_a1_5;
    s64 temp_a3_2;
    s64 temp_a5;
    s64 temp_a6_2;
    s64 temp_lo;
    s64 temp_lo_2;
    s64 temp_t8;
    s64 temp_v0_2;
    s64 temp_v1;
    s64 var_a3_2;
    s64 var_a6;
    s64 var_s3;
    u32 temp_a0;
    u32 temp_a1_3;
    u32 temp_a6;
    u32 var_a2_2;
    u32 var_a3;
    u32 var_a5;
    u32 var_a7;
    u8 temp_a3_3;
    u8 temp_a5_2;
    u8 temp_a5_3;
    u8 temp_a7;
    void *temp_gp;
    void *temp_s1;
    void *temp_s6;

    temp_s6 = arg0->unk7DBC;
    temp_s1 = arg0->unk7DB8;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xF9EEC;
    if ((arg0->unk7DD3 == 0) || (__glCrmSetupPixelRenderOps(crmDrawPixelsXfer) != 0)) {
        temp_s2 = arg1->unkD8;
        temp_t9 = arg1->unkC;
        unkspA8 = (s64) temp_t9;
        unkspE8 = (s64) arg1->unk10;
        unkspB0 = (s64) arg1->unkDC;
        temp_s4 = 1 << (((u32) arg0->unk7E24 >> 8) & 3);
        if (temp_t9 != 0) {
            if ((unkspB0 != 0) && (temp_s2 != 0)) {
                if (temp_gp->unk-5450 != 0) {
                    printf(&sub_0da40000 + 0x1ED8);
                }
                temp_a3 = (arg0->unk7DE0 != 0) << 0x12;
                if (arg0->unk7DCE != 0) {
                    temp_a1 = arg1->unk0;
                    var_a2 = temp_a3 | 0x600000;
                    if (temp_a1 != 0x1901) {
                        sp40 = 0;
                        var_a2_2 = ((temp_a1 ^ 0x1902) != 0) ? (var_a2 | 0x78) : ((var_a2 & ~0x78) | 0x38);
                        goto block_10;
                    }
                    temp_a1_2 = arg0->unk68A;
                    temp_a5 = temp_a1_2 << 0x18;
                    if (temp_a1_2 != 0xFF) {
                        sp40 = temp_a5;
                        if (temp_a5 != 0) {
                            temp_s1->unk21B8 = (s32) sp40;
                            var_a2 |= 0x80;
                            temp_s6->unk21B8 = (s32) sp40;
                            goto block_92;
                        }
                        return 1;
                    }
                    sp40 = 0;
block_92:
                    var_a2_2 = (var_a2 & ~0x78) | 0x40;
                    goto block_10;
                }
                sp0 = arg0->unk7D58;
                sp40 = 0;
                var_a2_2 = temp_a3 | ((sp0 | 0x200000) & temp_gp->unk-56AC);
block_10:
                if ((arg0->unk7DD8 != 0) && (temp_a1_3 = arg0->unk7E40, (temp_a1_3 != 0)) && (var_a7 = unkspA8 < temp_a1_3, (var_a7 == 0)) && (unkspA8 < (u32) (temp_a1_3 + 0x20000))) {
                    unkspA0 = 4;
                    var_a5 = 0xC;
                    unkspB8 = 0xC;
                    var_a3 = (arg0->unk7E24 & ~0x1C00) | 0x1000;
                } else {
                    var_a5 = 8;
                    unkspB8 = 8;
                    var_a7 = 5;
                    unkspA0 = 5;
                    var_a3 = (arg0->unk7E24 & ~0x1C00) | 0x1400;
                }
                arg0->unk7E24 = var_a3;
                temp_a6 = arg0->unk7D5C;
                if (temp_a6 != var_a2_2) {
                    sp0 = var_a2_2;
                    arg0->unk7DB8->unk2018 = var_a2_2;
                    var_a7 = sp0;
                    arg0->unk7DBC->unk2018 = var_a7;
                    var_a3 = arg0->unk7E24;
                    arg0->unk7D5C = var_a7;
                }
                temp_s1->unk2000 = var_a3;
                temp_s6->unk2000 = (u32) arg0->unk7E24;
                temp_a1_4 = arg0->unk7E2C;
                if (arg0->unk2DF0 != temp_a1_4) {
                    __glCrmSetDrawBuffer(arg0, temp_a1_4, var_a2_2, var_a3, -0x1C01, var_a5, temp_a6, var_a7);
                }
                temp_lo = arg1->unkAC * unkspE8;
                temp_lo_2 = temp_s2 * temp_s4;
                temp_a2 = arg1->unkCC;
                temp_a4 = ~0x30000;
                temp_a5_2 = arg0->unk7DCC;
                temp_a3_2 = ((sp4 & 0xFFFFFF) | 0x03000000) & temp_a4;
                unksp88 = temp_lo_2;
                temp_t8 = temp_lo_2 < unkspE8;
                unksp80 = temp_t8;
                if (arg0->unk7DCB != 0) {
                    var_a6 = (temp_a2 + temp_s2) - 1;
                    unkspF0 = temp_a3_2 | ((temp_a5_2 != 0) ? 0 : 0x20000);
                } else {
                    var_a6 = (temp_a2 - temp_s2) + 1;
                    unkspF0 = temp_a3_2 | ((temp_a5_2 == 0) ? 0x30000 : 0x10000);
                }
                sp10 = temp_s4;
                sp14 = temp_s4;
                if (unksp80 != 0) {
                    sp14 += (unkspE8 - unksp88) & 0x1FFFF;
                }
                var_s2 = arg1->unkD0;
                if (unkspA0 != 5) {
                    unkspD8 = 0;
                    sp38 = 0;
                    goto block_25;
                }
                temp_a7 = arg0->unk7DD4;
                if ((temp_a7 == 0) || (arg0->unk7DD8 != 0)) {
                    if (temp_gp->unk-5444 != 0) {
                        unkspD8 = 0;
                        sp38 = 0;
                        sp30 = 0;
                        unkspB8 |= 0x20;
                    } else {
                        unksp110 = (temp_t8 == 0) ? temp_lo : (temp_lo - (unkspE8 - temp_lo_2));
                        if (temp_gp->unk-5440 != 0) {
                            unkspD8 = 1;
                            sp38 = 0;
                            sp30 = 0;
                            unkspB8 |= 0x60;
                        } else {
                            unksp118 = var_a6;
                            unksp120 = (s64) temp_a2;
                            temp_v0 = __glCrmPickAllProcs((s64 (*)(?, s32 *)) unkspA8, (s32) unksp110, (s64 (*)(?, s32 *)) temp_a2, temp_a3_2, temp_a4, temp_a5_2, var_a6, temp_a7);
                            unkspD8 = 0;
                            sp38 = (temp_v0 == NULL) ? 0 : unksp110;
                            sp30 = (temp_v0 == NULL) ? 0 : unkspA8;
                        }
                    }
                } else {
                    unkspD8 = 0;
                    sp38 = 0;
block_25:
                    sp30 = 0;
                }
                if (unkspB0 > 0) {
                    unksp78 = 1;
                    unksp70 = unkspE8 < 0x20000;
                    unkspC8 = (var_a6 << 6) & 0x7FFFF;
                    unksp90 = unkspE8 < 0x1F000;
                    unkspD0 = (temp_a2 << 6) & 0x7FFFF;
                    unksp98 = unkspE8 >= unksp88;
                    var_s5 = 1;
                    sp4 = (s32) unkspF0;
loop_48:
                    var_s3 = unkspA8;
                    if (unkspA8 & 0xFFF) {
                        if (unkspE8 > 0) {
                            var_a3_2 = 0x1F000;
                            if (unksp90 != 0) {
                                var_a3_2 = unkspE8 * (s32) ((f64) (second half of f64) / (second half of f64));
                                M2C_TRAP_IF(unkspE8 == 0);
                            }
                        } else {
                            var_a3_2 = 0x1F000;
                        }
                    } else if ((unkspE8 > 0) && (unksp70 != 0)) {
                        var_a3_2 = unkspE8 * (s32) ((second half of f64) / (f64) (second half of f64));
                        M2C_TRAP_IF(unkspE8 == 0);
                    } else {
                        var_a3_2 = 0x1F000;
                    }
                    temp_f1 = (s32) ((f64) var_a3_2 / (f64) unkspE8);
                    temp_a6_2 = temp_f1 < 1;
                    var_s4 = (temp_a6_2 != 0) ? 1 : temp_f1;
                    temp_a5_3 = var_s4 < unkspB0;
                    M2C_TRAP_IF(unkspE8 == 0);
                    temp_v0_2 = unkspB0;
                    if (temp_a5_3 != 0) {
                        unkspC0 = var_a3_2;
                        unkspA8 += var_a3_2;
                        unkspB0 -= var_s4;
                        if (unkspA0 == 5) {
                            goto block_55;
                        }
                        goto block_60;
                    }
                    temp_a1_5 = unkspE8 * temp_v0_2;
                    temp_v1 = temp_a1_5 - (unkspE8 - unksp88);
                    unkspB0 = 0;
                    var_s4 = (s32) temp_v0_2;
                    unkspC0 = (unksp80 == 0) ? temp_a1_5 : temp_v1;
                    if (unkspA0 != 5) {
block_60:
                        goto block_61;
                    }
block_55:
                    if ((unkspD8 == 0) && (__glCrmPickAllProcs(arg0, (s32) unkspB8, (s64 (*)(?, s32 *)) unkspA8, unkspC0, (s32) unkspE8, temp_a5_3, temp_a6_2, 1U) == NULL)) {
                        unksp78 = 0;
                    } else {
block_61:
                        temp_s7 = (unksp98 != 0) ? var_s4 : 1;
                        if (var_s4 > 0) {
                            unkspE0 = (s64) -temp_s7;
loop_32:
                            if (var_s5 != 0) {
                                if (arg0->unk7D60 != unkspF0) {
                                    arg0->unk7DB8->unk2060 = (s32) unkspF0;
                                    arg0->unk7DBC->unk2060 = sp4;
                                    arg0->unk7D60 = sp4;
                                }
                                sp18 = (s32) unkspD0;
                                temp_s1->unk2080 = sp18;
                                temp_s6->unk2080 = sp18;
                                sp1C = (s32) unkspC8;
                                temp_s1->unk2088 = sp1C;
                                temp_s6->unk2088 = sp1C;
                            }
                            temp_a2_2 = 0x7FFFF & (var_s2 << 6);
                            sp20 = temp_a2_2;
                            temp_a1_6 = 0x7FFFF & (((arg0->unk7DCC == 0) ? ((var_s2 + temp_s7) - 1) : ((var_s2 - temp_s7) + 1)) << 6);
                            sp24 = temp_a1_6;
                            temp_s1->unk208C = sp24;
                            temp_s1->unk2084 = sp20;
                            if (var_s5 != 0) {
                                temp_a3_3 = arg0->unk7DCA;
                                if (temp_a3_3 != 0) {
                                    __glCrmSetupPixelRenderOps(arg0, temp_a1_6, temp_a2_2, (s32) temp_a3_3);
                                }
                                var_s5 = 0;
                                if (arg0->unk7DE0 != 0) {
                                    sp28 = 0x1F0000;
                                    temp_s1->unk20C0 = sp28;
                                    temp_s6->unk20C0 = sp28;
                                }
                                temp_s1->unk20A8 = sp10;
                                temp_s6->unk20A8 = sp10;
                                temp_s1->unk20AC = sp14;
                                temp_s6->unk20AC = sp14;
                            }
                            temp_a2_3 = arg0->unk7DE0;
                            if (temp_a2_3 != 0) {
                                temp_s1->unk20C4 = temp_a2_3;
                            }
                            sp8 = 0x1FFFF & var_s3;
                            if (unkspD8 != 0) {
                                temp_s1->unk20A0 = sp8;
                                if (__glCrmPickAllProcs(arg0, (s32) unkspB8, (s64 (*)(?, s32 *)) var_s3, unkspC0) == NULL) {
                                    unksp78 = 0;
                                    unkspB0 = 0;
                                } else {
                                    goto block_30;
                                }
                            } else {
                                temp_s1->unk28A0 = sp8;
block_30:
                                var_s4 -= temp_s7;
                                var_s2 += (arg0->unk7DCC == 0) ? temp_s7 : (s32) unkspE0;
                                if (var_s4 > 0) {
                                    var_s3 += unkspE8;
                                    if (var_s4 > 0) {
                                        goto loop_32;
                                    }
                                }
                            }
                        }
                        if (unkspB0 > 0) {
                            goto loop_48;
                        }
                    }
                } else {
                    unksp78 = 1;
                }
                if (unkspA0 == 5) {
                    if ((arg0->unk7DD4 == 0) || (arg0->unk7DD8 != 0)) {
                        __glCrmFlushAndConfirm(arg0);
                        if (temp_gp->unk-5444 == 0) {
                            if (temp_gp->unk-5440 == 0) {
                                __glCrmPickAllProcs((s64 (*)(?, s32 *)) sp30, (s32) sp38);
                            }
                        }
                        __glCrmPickAllProcs(arg0, unkspB8 & ~0x60, arg0->unk7E50, 0);
                    }
                }
                temp_a0 = arg0->unk7D58;
                if (arg0->unk7D5C != temp_a0) {
                    arg0->unk7DB8->unk2018 = temp_a0;
                    arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
                    arg0->unk7D5C = (u32) arg0->unk7D58;
                }
                if ((sp40 != 0) && (arg0->unk7D58 & 0x80)) {
                    temp_s1->unk21B8 = (s32) arg0->unk80C0;
                    temp_s6->unk21B8 = (s32) arg0->unk80C0;
                }
                __glCrmSetReadBuffer(arg0, arg0->unk2DF4);
                temp_a1_7 = arg0->unk2DF0;
                if (arg0->unk7E2C != temp_a1_7) {
                    M2C_ERROR(/* Read from unset register $t9 */)(arg0, temp_a1_7);
                }
                return unksp78;
            }
            return 1;
        }
        return 0;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0x208, 0x20c], gap at: 0xc0. */
s64 crmDrawPixelsXfer2(s64 (*arg0)(?, s32 *), s32 *arg1) {
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s64 (*sp2C)(?, s32 *);
    s64 (*sp28)(?, s32 *);
    s32 sp24;
    s32 sp20;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 var_f20;
    f32 var_f22;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    f64 var_f24;
    s16 temp_v0_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f0;
    s32 temp_f27;
    s32 temp_f31;
    s32 temp_f7;
    s32 temp_f9;
    s32 temp_lo_4;
    s32 temp_ra;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t8;
    s32 var_t9;
    s32 var_v0;
    s64 (*temp_v0_9)(?, s32 *);
    s64 (*var_v0_3)(?, s32 *);
    s64 (*var_v0_5)(?, s32 *);
    s64 temp_a0_2;
    s64 temp_a3;
    s64 temp_a3_3;
    s64 temp_a3_5;
    s64 temp_a3_6;
    s64 temp_a3_7;
    s64 temp_a5;
    s64 temp_at;
    s64 temp_lo;
    s64 temp_lo_2;
    s64 temp_lo_3;
    s64 temp_t2;
    s64 temp_t3_2;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 temp_v0_8;
    s64 var_a0;
    s64 var_a3;
    s64 var_v0_2;
    u32 temp_a3_4;
    u32 temp_a5_2;
    u32 temp_v0_4;
    u32 temp_v0_7;
    u32 var_v0_4;
    u8 temp_a6_2;
    u8 temp_v0_3;
    u8 var_a1_3;
    void *temp_gp;
    void *temp_s1;
    void *temp_s8;

    temp_s8 = arg0->unk7DBC;
    temp_s1 = arg0->unk7DB8;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xF951C;
    if ((arg0->unk7DD3 == 0) || (__glCrmSetupPixelRenderOps(crmDrawPixelsXfer2) != 0)) {
        temp_a7 = arg1->unkDC;
        temp_a2 = arg1->unkA8;
        unksp138 = (s64) temp_a2;
        unksp158 = (s64) arg1->unk10;
        temp_ra = arg1->unkC;
        unksp100 = (s64) temp_ra;
        unksp118 = (s64) arg1->unkAC;
        unksp130 = (s64) arg1->unkD8;
        unksp128 = 1 << (((u32) arg0->unk7E24 >> 8) & 3);
        if (temp_ra != 0) {
            if ((temp_a7 != 0) && (unksp130 != 0)) {
                if (arg0->unk7DCE != 0) {
                    temp_v0 = arg1->unk0;
                    var_a1 = 0x600000;
                    if (temp_v0 != 0x1901) {
                        temp_t1 = arg0->unk7D5C;
                        if (temp_v0 != 0x1902) {
                            var_a1_2 = 0x600078;
                            if (temp_t1 != 0x600078) {
                                sp0 = 0x600078;
                                goto block_10;
                            }
                            sp80 = 0;
                        } else {
                            var_a1_2 = 0x600038;
                            if (temp_t1 != 0x600038) {
                                sp0 = 0x600038;
block_10:
                                sp80 = 0;
                                goto block_11;
                            }
                            sp80 = 0;
                        }
                        goto block_12;
                    }
                    temp_v0_2 = arg0->unk68A;
                    temp_a3 = temp_v0_2 << 0x18;
                    if (temp_v0_2 != 0xFF) {
                        sp80 = temp_a3;
                        if (temp_a3 != 0) {
                            temp_s1->unk21B8 = (s32) sp80;
                            var_a1 = 0x600080;
                            temp_s8->unk21B8 = (s32) sp80;
                            goto block_145;
                        }
                        return 1;
                    }
                    sp80 = 0;
block_145:
                    var_a1_2 = (var_a1 & ~0x78) | 0x40;
                    goto block_147;
                }
                sp0 = arg0->unk7D58;
                sp80 = 0;
                var_a1_2 = (sp0 | 0x200000) & temp_gp->unk-56AC;
block_147:
                if (arg0->unk7D5C != var_a1_2) {
                    sp0 = var_a1_2;
block_11:
                    arg0->unk7DB8->unk2018 = var_a1_2;
                    arg0->unk7DBC->unk2018 = sp0;
                    arg0->unk7D5C = sp0;
                }
block_12:
                temp_v0_3 = arg0->unk7DCC;
                var_a1_3 = arg0->unk7DCB;
                temp_t9 = ((sp4 & 0xFFFFFF) | 0x03000000) & ~0x30000;
                unksp1A8 = (var_a1_3 == 0) ? (temp_t9 | ((temp_v0_3 == 0) ? 0x30000 : 0x10000)) : (temp_t9 | ((temp_v0_3 != 0) ? 0 : 0x20000));
                if ((arg0->unk7E08 < 0x10) && (unksp158 <= 0x1F000) && (temp_f5 = (f32) unksp138 * arg0->unk7DF8, ((s32) temp_f5 == (s32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f7, $f5, $f4 */)))) {
                    var_v0 = 1;
                    if ((arg0->unk7E58 != 0) || (arg0->unk7DD1 != 0)) {
                        goto block_17;
                    }
                    temp_t1_2 = arg0->unk7E0C;
                    if ((temp_t1_2 < 0x10) && (unksp158 >= (arg1->unk14 * temp_a2)) && ((temp_t1_2 * unksp158) < 0x1F000)) {
                        var_t0 = 0;
                        if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f7, $f10, $f9 */) == (s32) (arg0->unk7DFC * (f32) unksp118)) {
                            var_t0 = 1;
                        }
                    } else {
block_17:
                        var_t0 = 0;
                    }
                    if ((f64) arg0->unk7DF0 > 1.0) {
                        unksp130 = (s64) (s32) temp_f5;
                        sp88 = (s64) (s32) arg1->unkC4;
                    } else {
                        temp_f7 = (s32) ((f64) ((f32) unksp130 / (second half of f64)) + 0.5);
                        temp_t9_2 = arg0->unk7E10;
                        sp88 = (s64) arg1->unkCC;
                        unksp138 = (s64) ((temp_t9_2 >= temp_f7) ? temp_f7 : temp_t9_2);
                    }
                } else {
                    var_v0 = 0;
                    var_t0 = 0;
                    sp88 = (s64) arg1->unkCC;
                }
                temp_a5 = var_t0 & 0xFF;
                unkspE8 = temp_a5;
                sp78 = (var_a1_3 == 0) ? ((sp88 - unksp130) + 1) : ((unksp130 + sp88) - 1);
                if (temp_a5 != 0) {
                    var_f4 = arg1->unkC8;
                    if ((second half of f64) < (f64) (second half of f64)) {
                        var_s3 = (s32) var_f4;
                    } else {
                        var_f4 = second half of f64;
                        temp_v1 = arg0->unk7E14;
                        var_a1_3 = (u8) (s32) ((f64) ((f32) temp_a7 / arg0->unk7DFC) + 0.5);
                        var_s3 = arg1->unkD0;
                        unksp118 = (s64) ((temp_v1 >= (s32) var_a1_3) ? var_a1_3 : (u8) temp_v1);
                    }
                } else {
                    var_f4 = arg1->unkC8;
                    if (arg0->unk7DD1 != 0) {
                        var_f5 = var_f4;
                    } else {
                        var_f5 = (f32) arg1->unkD0;
                    }
                    var_s3 = (s32) var_f5;
                }
                temp_t2 = var_v0 & 0xFF;
                var_s2 = var_s3;
                var_f20 = var_f4;
                unksp140 = temp_t2;
                if ((temp_t2 == 0) || (arg0->unk7E58 != 0)) {
                    unksp148 = arg1->unk14 * unksp138;
                    unkspC8 = unksp138 * unksp128;
                    if (unksp140 != 0) {
                        unksp120 = unkspC8;
                    } else {
                        unksp120 = unksp130 * unksp128;
                    }
                    unksp108 = unksp120;
                    if (arg0->unk7DD8 != 0) {
                        temp_v0_4 = arg0->unk7E40;
                        if ((temp_v0_4 != 0) && (temp_a3_2 = unksp100 < temp_v0_4, (temp_a3_2 == 0))) {
                            temp_a5_2 = temp_v0_4 + 0x20000;
                            temp_a4 = unksp100 < temp_a5_2;
                            if (temp_a4 != 0) {
                                var_v0_2 = unksp120 * unksp118;
                                temp_a7_2 = arg0->unk7E34 + var_v0_2;
                                temp_a6 = temp_a7_2 > 0x20000;
                                if (temp_a6 == 0) {
                                    sp58 = 0;
                                    sp70 = 0;
                                } else {
                                    unksp200 = var_v0_2;
                                    arg0->unk7E44(arg0, 0, unksp120, temp_a3_2, temp_a4, temp_a5_2, temp_a6, temp_a7_2);
                                    temp_lo = unksp158 * unksp118;
                                    sp58 = temp_lo;
                                    if (temp_gp->unk-5448 != 0) {
                                        unksp1E8 = temp_lo;
                                        var_v0_3 = __glCrmPickAllProcs((s64 (*)(?, s32 *)) temp_lo);
                                    } else {
                                        unksp1E8 = temp_lo;
                                        var_v0_3 = arg0->unk0(arg0, temp_lo, temp_lo);
                                    }
                                    sp70 = (s64) var_v0_3;
                                    bcopy(unksp100, sp70, unksp1E8);
                                    var_v0_2 = unksp200;
                                    unksp100 = sp70;
                                    arg1->unkC = (s32) sp70;
                                    arg0->unk7E20 = (s32) sp70;
                                }
                            } else {
                                goto block_35;
                            }
                        } else {
block_35:
                            temp_t3 = arg0->unk7E30;
                            arg0->unk7E30 = 0;
                            temp_t2_2 = arg0->unk7E3C;
                            arg0->unk7E3C = 0;
                            sp58 = (s64) temp_t3;
                            sp70 = (s64) temp_t2_2;
                            var_v0_2 = unksp120 * unksp118;
                        }
                    } else {
                        sp70 = 0;
                        var_v0_2 = unksp120 * unksp118;
                        sp58 = 0;
                    }
                    temp_v0_5 = (var_v0_2 >= 0x20000) ? 0x20000 : var_v0_2;
                    sp68 = temp_v0_5;
                    temp_v0_6 = sub_0d950000(arg0, temp_v0_5);
                    unkspF0 = temp_v0_6;
                    if (temp_v0_6 != 0) {
                        sp14 = (s32) temp_v0_6;
                        temp_a2_2 = temp_gp->unk-5450;
                        sp10 = (s32) unksp148;
                        spC = (s32) unksp120;
                        sp8 = (s32) unkspF0;
                        if (temp_a2_2 != 0) {
                            printf(&sub_0da40000 + 0x1F38, (s64 (*)(?, s32 *)) unkspF0, temp_a2_2, (s32) unksp120, (s32) unksp148);
                        }
                        unksp150 = 1;
                        goto block_40;
                    }
                    return 0;
                }
                temp_lo_2 = unksp138 * unksp128;
                temp_lo_3 = unksp158 * unksp118;
                temp_a2_3 = temp_gp->unk-5450;
                temp_a4_2 = temp_lo_2 < unksp158;
                unksp108 = unksp158;
                unkspC8 = temp_lo_2;
                temp_a3_3 = (temp_a4_2 == 0) ? temp_lo_3 : (temp_lo_3 - (unksp158 - temp_lo_2));
                sp68 = temp_a3_3;
                if (temp_a2_3 != 0) {
                    printf(&sub_0da40000 + 0x1F08, (s64 (*)(?, s32 *)) var_a1_3, temp_a2_3, (s32) temp_a3_3, temp_a4_2, (s32) temp_lo_3, temp_lo_2, temp_a7);
                }
                unksp150 = 0;
                sp58 = 0;
                sp70 = 0;
                if ((arg0->unk7DD8 == 0) || (temp_v0_7 = arg0->unk7E40, (temp_v0_7 == 0)) || (unksp100 < temp_v0_7) || (unksp100 >= (u32) (temp_v0_7 + 0x20000))) {
                    unksp160 = 8;
                    unkspF8 = 5;
                    var_v0_4 = (arg0->unk7E24 & ~0x1C00) | 0x1400;
                } else {
block_40:
                    unkspF8 = 4;
                    unksp160 = 0xC;
                    var_v0_4 = (arg0->unk7E24 & ~0x1C00) | 0x1000;
                }
                arg0->unk7E24 = var_v0_4;
                temp_s1->unk2000 = var_v0_4;
                temp_a3_4 = arg0->unk7E24;
                temp_s8->unk2000 = temp_a3_4;
                temp_a2_4 = arg0->unk2DF0;
                temp_a1 = arg0->unk7E2C;
                if (temp_a2_4 != temp_a1) {
                    M2C_ERROR(/* Read from unset register $t9 */)(arg0, temp_a1, temp_a2_4, temp_a3_4);
                }
                if (unksp140 != 0) {
                    sp20 = ((arg0->unk7E08 * unksp128) & 0x1FFFF) | (arg0->unk7E00 << 0x1C);
                    if (unkspE8 != 0) {
                        goto block_51;
                    }
                    goto block_163;
                }
                sp20 = (s32) unksp128;
                var_v0_5 = sub_0d950000(arg0, unksp130 * 4, unksp128);
                var_f4_2 = arg1->unkC4;
                temp_t2_3 = arg1->unkF0;
                var_a7 = (s32) var_f4_2;
                sp28 = var_v0_5;
                var_t0_2 = arg1->unkCC - var_a7;
                if (unksp130 > 0) {
                    var_t9 = 0;
                    var_t8 = 0;
                    var_t1 = unksp130 > 0;
loop_182:
                    var_f4_2 += arg1->unkA0;
                    temp_f9 = (s32) var_f4_2;
                    if (temp_f9 != var_a7) {
                        if (var_t1 == 0) {

                        } else {
loop_174:
                            var_a7 += temp_t2_3;
                            if (var_t0_2 != 0) {
                                var_t0_2 -= temp_t2_3;
                            } else {
                                var_v0_5 += 4;
                                var_t9 += 1;
                                var_v0_5->unk-4 = var_t8;
                                var_t1 = var_t9 < unksp130;
                            }
                            if ((temp_f9 != var_a7) && (var_t1 != 0)) {
                                var_a7 += temp_t2_3;
                                if (var_t0_2 != 0) {
                                    var_t0_2 -= temp_t2_3;
                                } else {
                                    var_v0_5 += 4;
                                    var_t9 += 1;
                                    var_v0_5->unk-4 = var_t8;
                                    var_t1 = var_t9 < unksp130;
                                }
                                if (temp_f9 != var_a7) {
                                    if (var_t1 != 0) {
                                        goto loop_174;
                                    }
                                }
                            }
                        }
                    }
                    var_t8 += 1;
                    if (var_t1 != 0) {
                        goto loop_182;
                    }
                }
                if (arg0->unk7E58 != 0) {
                    sp2C = sub_0d950000(arg0, unkspC8, unksp130);
                }
                if (unkspE8 == 0) {
block_163:
                    var_s6 = 1;
                    sp24 = (s32) unksp128;
                } else {
block_51:
                    temp_a0 = arg0->unk7E08;
                    temp_t9_3 = arg0->unk7E0C;
                    temp_v0_8 = (temp_a0 >= 2) ? (unksp128 * (unksp138 - (temp_a0 * (unksp130 - 1)))) : unksp128;
                    temp_t3_2 = (unkspC8 >= unksp158) ? temp_v0_8 : (temp_v0_8 + (unksp158 - unkspC8));
                    sp24 = (((temp_t9_3 >= 2) ? (temp_t3_2 + (unksp158 * (temp_t9_3 - 1))) : temp_t3_2) & 0x1FFFF) | (arg0->unk7E04 << 0x1C);
                    var_s6 = 0;
                }
                temp_f4 = arg1->unkA4;
                if (arg0->unk7DD1 != 0) {
                    var_f22 = (f32) ((f64) temp_f4 * (second half of f64));
                } else {
                    var_f22 = temp_f4;
                }
                var_a7_2 = arg0->unk7E14;
                temp_lo_4 = var_a7_2 * unksp158;
                temp_a5_3 = arg1->unkEC;
                unksp190 = unksp100;
                unksp1C0 = (s64) temp_a5_3;
                temp_a3_5 = arg0->unk7E20 + temp_lo_4;
                unkspD8 = temp_a3_5;
                if (unkspF8 != 5) {
                    unksp1A0 = 0;
                    sp60 = 0;
                    goto block_56;
                }
                temp_a6_2 = arg0->unk7DD4;
                if ((temp_a6_2 == 0) || (var_a7_2 = arg0->unk7DD8, (var_a7_2 != 0))) {
                    if (temp_gp->unk-5444 != 0) {
                        unksp1A0 = 0;
                        sp60 = 0;
                        sp50 = 0;
                        unksp160 |= 0x20;
                    } else if (temp_gp->unk-5440 != 0) {
                        unksp1A0 = 1;
                        sp60 = 0;
                        sp50 = 0;
                        unksp160 |= 0x60;
                    } else {
                        temp_v0_9 = __glCrmPickAllProcs((s64 (*)(?, s32 *)) unksp100, (s32) sp68, (s64 (*)(?, s32 *))5, temp_a3_5, temp_lo_4, (u8) temp_a5_3, (s64) temp_a6_2, (u8) var_a7_2);
                        unksp1A0 = 0;
                        sp60 = (temp_v0_9 == NULL) ? 0 : sp68;
                        sp50 = (temp_v0_9 == NULL) ? 0 : unksp100;
                    }
                } else {
                    unksp1A0 = 0;
                    sp60 = 0;
block_56:
                    sp50 = 0;
                }
                if (unksp118 > 0) {
                    var_f24 = 0.5;
                    unksp110 = 1;
                    sp48 = (s64) arg1;
                    unksp148 = (s64) sp10;
                    unksp120 = (s64) spC;
                    unkspF0 = (s64) sp8;
                    unkspE0 = unksp150 != 0;
                    unkspC0 = unkspC8 < unksp108;
                    unksp198 = unksp1C0 * 2;
                    unkspB8 = unksp108 < 0x20000;
                    unkspD0 = unksp108 < 0x1F000;
                    unksp188 = (sp78 << 6) & 0x7FFFF;
                    unksp180 = (sp88 << 6) & 0x7FFFF;
                    var_s5 = 1;
                    sp4 = (s32) unksp1A8;
loop_61:
                    if (((unkspE0 != 0) ? sp14 : (s32) unksp100) & 0xFFF) {
                        if ((unksp108 > 0) && (unkspD0 != 0)) {
                            var_f24 = second half of f64;
                            var_a3 = unksp108 * (s32) ((f64) 0x1F000 / (f64) unksp108);
                            M2C_TRAP_IF(unksp108 == 0);
                        } else {
                            var_a3 = 0x1F000;
                        }
                    } else if ((unksp108 > 0) && (unkspB8 != 0)) {
                        var_a3 = unksp108 * (s32) ((f64) 0x20000 / (f64) unksp108);
                        M2C_TRAP_IF(unksp108 == 0);
                    } else {
                        var_a3 = 0x1F000;
                    }
                    temp_f27 = (s32) ((f64) var_a3 / (f64) unksp108);
                    M2C_TRAP_IF(unksp108 == 0);
                    temp_a4_3 = temp_f27 < 1;
                    var_a7_3 = (temp_a4_3 != 0) ? 1 : temp_f27;
                    if (unkspE8 != 0) {
                        temp_f4_2 = arg0->unk7DFC;
                        if (temp_f4_2 < (second half of f64)) {
                            var_a7_3 = (s32) ((f32) (s32) ((f32) var_a7_3 * temp_f4_2) / temp_f4_2);
                            var_a3 = unksp108 * var_a7_3;
                        }
                    }
                    temp_a0_2 = unksp118;
                    if (var_a7_3 < unksp118) {
                        unksp1B8 = (s64) var_a7_3;
                        unksp168 = var_a3;
                        unksp100 += var_a3;
                        unksp118 -= var_a7_3;
                        if (unkspF8 == 5) {
                            goto block_73;
                        }
                        goto block_78;
                    }
                    temp_a3_6 = unksp108 * temp_a0_2;
                    unksp118 = 0;
                    unksp1B8 = temp_a0_2;
                    unksp168 = (unkspC0 == 0) ? temp_a3_6 : (temp_a3_6 - (unksp108 - unkspC8));
                    if (unkspF8 != 5) {
                        goto block_78;
                    }
block_73:
                    if (unksp1A0 == 0) {
                        temp_at = unkspD8 - unksp190;
                        temp_a3_7 = (temp_at < unksp168) ? temp_at : unksp168;
                        unksp168 = temp_a3_7;
                        if (__glCrmPickAllProcs(arg0, (s32) unksp160, (s64 (*)(?, s32 *)) unksp190, temp_a3_7, temp_a4_3, 1U, unkspE8, (u8) var_a7_3) == NULL) {
                            unksp110 = 0;
                        } else {
                            goto block_79;
                        }
                    } else {
block_78:
block_79:
                        if (unksp1B8 > 0) {
                            unksp170 = unkspD8 - unksp190;
loop_103:
                            var_f20 += var_f22;
                            temp_f31 = (s32) var_f20;
                            var_a0 = unksp190;
                            temp_a5_4 = unksp170 < unksp148;
                            unksp1B0 = (s64) temp_f31;
                            if (temp_f31 != var_s2) {
                                if (unksp150 != 0) {
                                    if (temp_a5_4 == 0) {
                                        if (unksp140 == 0) {
                                            unksp178 = var_a0;
                                            if (arg0->unk7E58 != 0) {
                                                sub_0d950000((s64 (*)(?, s32 *)) unksp190, (s64) sp2C, unksp138, temp_f31, unksp150, temp_a5_4, unksp148, unksp140);
                                                var_a0 = (s64) sp2C;
                                            }
                                            __GL_CRM_SCALE_PIXEL_SPAN(var_a0, sp14, sp28, unksp128, unksp130);
                                        } else {
                                            unksp178 = unksp190;
                                            __GL_CRM_SCALE_PIXEL_SPAN(unksp190, sp14, (s64 (*)(?, s32 *)) unksp138, (s64) temp_f31, unksp150, temp_a5_4, unksp148, unksp140);
                                        }
                                        sp18 = sp14;
                                        sp14 += unksp120;
                                        goto block_113;
                                    }
                                    unksp118 = 0;
                                } else {
                                    unksp178 = unksp190;
                                    sp18 = (s32) unksp190;
block_113:
                                    var_s7 = 1;
loop_86:
                                    if (var_s5 != 0) {
                                        if (arg0->unk7D60 != unksp1A8) {
                                            arg0->unk7DB8->unk2060 = (s32) unksp1A8;
                                            arg0->unk7DBC->unk2060 = sp4;
                                            arg0->unk7D60 = sp4;
                                        }
                                        sp30 = (s32) unksp180;
                                        temp_s1->unk2080 = sp30;
                                        temp_s8->unk2080 = sp30;
                                        sp34 = (s32) unksp188;
                                        temp_s1->unk2088 = sp34;
                                        temp_s8->unk2088 = sp34;
                                    }
                                    if (var_s6 != 0) {
                                        var_s4 = var_s3;
                                        var_s2 += unksp1C0;
                                    } else {
                                        temp_f0 = (s32) ((f64) ((f32) unksp1B8 * arg0->unk7DFC) + var_f24);
                                        temp_t8 = (temp_f0 < 1) ? 1 : temp_f0;
                                        var_s4 = var_s3 + (unksp1C0 * (temp_t8 - 1));
                                        unksp1B8 = 0;
                                        var_s2 += temp_t8 * unksp1C0;
                                    }
                                    sp38 = 0x7FFFF & (var_s3 << 6);
                                    sp3C = 0x7FFFF & (var_s4 << 6);
                                    temp_s1->unk208C = sp3C;
                                    temp_s1->unk2084 = sp38;
                                    if (var_s5 != 0) {
                                        if (arg0->unk7DCA != 0) {
                                            __glCrmSetupPixelRenderOps(arg0);
                                        }
                                        temp_s1->unk20A8 = sp20;
                                        temp_s8->unk20A8 = sp20;
                                        temp_s1->unk20AC = sp24;
                                        var_s5 = 0;
                                        temp_s8->unk20AC = sp24;
                                    }
                                    if (var_s7 != 0) {
                                        temp_s1->unk20A0 = sp18;
                                        var_s7 = 0;
                                        temp_s8->unk20A0 = sp18;
                                        if (unksp1A0 != 0) {
                                            goto block_98;
                                        }
                                        goto block_83;
                                    }
                                    if (unksp1A0 == 0) {
block_83:
                                        sp40 = 0;
                                        temp_s1->unk29F0 = sp40;
                                        goto block_84;
                                    }
block_98:
                                    if (__glCrmPickAllProcs(arg0, (s32) unksp160, (s64 (*)(?, s32 *)) unksp178, unksp168) == NULL) {
                                        unksp1B8 = 0;
                                        unksp110 = 0;
                                        unksp118 = 0;
                                        goto block_100;
                                    }
block_84:
                                    var_s3 = (arg0->unk7DD1 == 0) ? (unksp1C0 + var_s4) : (unksp198 + var_s4);
                                    if (var_s6 != 0) {
                                        if (unksp1B0 != var_s2) {
                                            goto loop_86;
                                        }
                                        goto block_101;
                                    }
                                    goto block_102;
                                }
                            } else {
block_100:
block_101:
                                unksp190 = (var_s6 != 0) ? (unksp158 + unksp190) : unksp190;
                                unksp1B8 = (var_s6 != 0) ? (unksp1B8 - 1) : unksp1B8;
                                unksp170 = (var_s6 != 0) ? (unksp170 - unksp158) : unksp170;
block_102:
                                if (unksp1B8 > 0) {
                                    goto loop_103;
                                }
                            }
                        }
                        unksp190 = (unksp150 == 0) ? unksp100 : unksp190;
                        sp14 = (s32) ((unksp150 != 0) ? unkspF0 : (s64) sp14);
                        if (unksp118 > 0) {
                            goto loop_61;
                        }
                    }
                } else {
                    unksp110 = 1;
                    sp48 = (s64) arg1;
                }
                sp48->unkC8 = (f32) var_s3;
                if (unkspF8 == 5) {
                    if ((arg0->unk7DD4 == 0) || (arg0->unk7DD8 != 0)) {
                        __glCrmFlushAndConfirm(arg0);
                        if (temp_gp->unk-5444 == 0) {
                            if (temp_gp->unk-5440 == 0) {
                                __glCrmPickAllProcs((s64 (*)(?, s32 *)) sp50, (s32) sp60);
                            }
                        }
                        __glCrmPickAllProcs(arg0, unksp160 & ~0x60, arg0->unk7E50, 0);
                    }
                }
                temp_v0_10 = arg0->unk7D58;
                if (arg0->unk7D5C != temp_v0_10) {
                    arg0->unk7DB8->unk2018 = temp_v0_10;
                    arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
                    arg0->unk7D5C = (s32) arg0->unk7D58;
                }
                if ((sp80 != 0) && (arg0->unk7D58 & 0x80)) {
                    temp_s1->unk21B8 = (s32) arg0->unk80C0;
                    temp_s8->unk21B8 = (s32) arg0->unk80C0;
                }
                __glCrmSetReadBuffer(arg0, arg0->unk2DF4);
                temp_a1_2 = arg0->unk2DF0;
                if (arg0->unk7E2C != temp_a1_2) {
                    __glCrmSetDrawBuffer(arg0, temp_a1_2);
                }
                if (unksp140 == 0) {
                    arg0->unkC(arg0, sp28);
                    if (arg0->unk7E58 != 0) {
                        arg0->unkC(arg0, sp2C);
                    }
                }
                if ((arg0->unk7DD8 != 0) && (sp70 != 0) && (sp58 != 0)) {
                    arg0->unk7E30 = (s32) sp58;
                    arg0->unk7E3C = (s32) sp70;
                }
                return unksp110;
            }
            return 1;
        }
        return 0;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c, 0x130, 0x134, 0x138, 0x13c, 0x150, 0x154], gap at: 0xa8. */
s32 crmReadPixelsXfer(s64 (*arg0)(?, s32 *), s32 *arg1) {
    u64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_a5_3;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_f1;
    s32 temp_f3;
    s32 temp_lo;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 var_a2_4;
    s32 var_s0;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s6;
    s32 var_v0;
    s64 (*temp_a1_3)(?, s32 *);
    s64 (*temp_a5)(?, s32 *);
    s64 (*temp_v0_3)(?, s32 *);
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_a6;
    s64 temp_a7_2;
    s64 temp_v1;
    s64 var_a2_2;
    s64 var_a2_3;
    s64 var_a3;
    s64 var_s1;
    s64 var_s8;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 var_s3_3;
    u64 temp_v0_2;
    u64 var_a2;
    u8 temp_a0;
    u8 temp_a5_2;
    u8 var_a4;
    void *temp_gp;
    void *temp_s0;
    void *temp_s7;

    temp_at = arg1->unkAC;
    unkspE0 = (s64) temp_at;
    var_s3 = arg1->unkA8;
    temp_s7 = arg0->unk7DBC;
    temp_s0 = arg0->unk7DB8;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xF81FC;
    if (temp_at != 0) {
        if (var_s3 != 0) {
            temp_a1 = arg0->unk7E28;
            sp70 = (u64) arg1;
            if (arg0->unk2DF4 != temp_a1) {
                __glCrmSetReadBuffer(arg0, temp_a1);
            }
            temp_v0 = arg0->unk7DD8;
            if (temp_v0 == 0xC02) {
                arg0->unk7E24 = (u32) arg0->unk80D0;
            }
            temp_a3 = arg0->unk7E24;
            temp_s5 = 1 << ((temp_a3 >> 8) & 3);
            var_s2 = var_s3 * temp_s5;
            if (temp_v0 != 0) {
                goto block_5;
            }
            temp_t9 = arg0->unk7E58;
            var_v0 = 1;
            if (temp_t9 != (sub_0d960000 - 0x5890)) {
                var_v0 = 1;
                if (temp_t9 != (sub_0d960000 - 0x5620)) {
                    var_v0 = 1;
                    if (temp_t9 != (sub_0d960000 - 0x4B30)) {
                        var_v0 = 0;
                        if (temp_t9 != (sub_0d960000 - 0x53C0)) {

                        } else {
block_5:
                            var_v0 = 1;
                        }
                    }
                }
            }
            var_s8 = var_v0 & 0xFF;
            var_a2 = sp70;
            if (var_s8 != 0) {
                goto block_7;
            }
            temp_s6 = var_a2->unk60;
            temp_a2 = var_a2->unk5C;
            sp0 = temp_a2;
            temp_a1_2 = temp_s6 * unkspE0;
            unkspD8 = (s64) temp_a2;
            var_a2 = temp_a1_2 + temp_a2;
            temp_a7 = sp0 | var_a2;
            temp_a6 = (var_s2 | temp_s6 | temp_a7) & 7;
            temp_a5 = temp_gp->unk-5450;
            if (temp_a6 != 0) {
                if (temp_a5 != NULL) {
                    printf(&sub_0da40000 + 0x1F70, (s64 (*)(?, s32 *)) sp0, (s32) var_a2, temp_s6, (s32) unkspE0, (s32) temp_a5, temp_a6, temp_a7);
                }
                var_s8 = 1;
                goto block_8;
            }
            sp14 = 0;
            sp10 = 5;
            sp8 = temp_s6;
            sp4 = temp_a1_2;
            spC = (s32) unkspD8;
            arg0->unk7E24 = (u32) ((temp_a3 & ~0x1C00) | 0x1400);
block_7:
            if (var_s8 != 0) {
block_8:
                if (var_s2 & 7) {
loop_9:
                    var_s2 += temp_s5;
                    var_s3 += 1;
                    if (var_s2 & 7) {
                        var_s2 += temp_s5;
                        var_s3 += 1;
                        if (var_s2 & 7) {
                            goto loop_9;
                        }
                    }
                }
                temp_lo = var_s2 * unkspE0;
                sp8 = var_s2;
                sp4 = temp_lo;
                temp_v0_2 = arg0->unk7E44(arg0, temp_lo);
                var_a2 = (u64) arg0->unk7E40;
                unkspD8 = temp_v0_2;
                sp18 = (s32) temp_v0_2;
                if ((var_a2 != 0) && (temp_v0_2 >= var_a2) && (temp_v0_2 < (u32) (var_a2 + 0x20000))) {
                    sp10 = 4;
                    sp14 = 4;
                    var_a2 = (arg0->unk7E24 & ~0x1C00) | 0x1000;
                    arg0->unk7E24 = (u32) var_a2;
                    if (unkspD8 == 0) {
                        /* Duplicate return node #16. Try simplifying control flow for better match */
                        return 0;
                    }
                    goto block_19;
                }
                sp14 = 0;
                sp10 = 5;
                arg0->unk7E24 = (u32) ((arg0->unk7E24 & ~0x1C00) | 0x1400);
                goto block_18;
            }
            unkspD8 = (s64) spC;
block_18:
            if (unkspD8 != 0) {
block_19:
                if (temp_gp->unk-5450 != NULL) {
                    printf(&sub_0da40000 + 0x1FB0, (var_s8 == 0) ? (&sub_0da40000 + 0x1FA0) : (&sub_0da40000 + 0x1F90), (s32) var_a2);
                    if (var_s8 == 0) {
                        goto block_109;
                    }
                } else if (var_s8 != 0) {

                } else {
block_109:
                    if (((void *) sp70)->unk50 == 0x1901) {
                        unksp110 = (s64) var_s2;
                        if (var_s2 != sp8) {
                            var_s1 = unkspD8;
                            if (unkspE0 > 0) {
                                unkspA0 = 0;
                                do {
                                    bzero(var_s1, unksp110);
                                    temp_v1 = unkspA0 + 1;
                                    var_s1 += sp8;
                                    unkspA0 = temp_v1;
                                } while (temp_v1 != unkspE0);
                            }
                        } else {
                            bzero(unkspD8, (s64) sp4);
                        }
                    }
                }
                if (arg0->unk7D5C != 0x600078) {
                    arg0->unk7DB8->unk2018 = 0x600078;
                    sp1C = 0x600078;
                    arg0->unk7DBC->unk2018 = 0x600078;
                    arg0->unk7D5C = 0x600078;
                }
                temp_a3_2 = arg0->unk7E24;
                temp_a1_3 = temp_gp->unk-5450;
                if (((temp_a3_2 >> 8) & 3) == 1) {
                    if (temp_a1_3 != NULL) {
                        printf(&sub_0da40000 + 0x1FD8, temp_a1_3, 0x600078, (s32) temp_a3_2);
                    }
                }
                temp_s0->unk2008 = arg0->unk7E24;
                temp_s7->unk2008 = (u32) arg0->unk7E24;
                unksp110 = (s64) var_s2;
                temp_a7_2 = var_s2 < (s64) sp8;
                unkspC0 = temp_a7_2;
                temp_f1 = (s32) sp70->unkBC;
                sp30 = 1;
                sp34 = 1;
                sp3C = temp_s5;
                unksp120 = ((sp20 & 0xFFFFFF) | 0x03000000) & ~0x30000;
                var_s1_2 = (s32) sp70->unkC0;
                unkspF8 = (sp28 & 0xFFFF) | ((temp_f1 & 0x7FF) << 0x10);
                if (temp_a7_2 != 0) {
                    sp3C += (s64) sp8 - var_s2;
                }
                if (sp10 != 5) {
                    unkspE8 = 0;
                    sp68 = 0;
                    goto block_28;
                }
                if ((arg0->unk7DD4 == 0) || (var_s8 != 0)) {
                    if ((s64) temp_gp->unk-5444 != 0) {
                        unkspE8 = 0;
                        sp68 = 0;
                        sp60 = 0;
                        sp14 |= 0x20;
                    } else if (temp_gp->unk-5440 != 0) {
                        unkspE8 = 1;
                        sp68 = 0;
                        sp60 = 0;
                        sp14 |= 0x60;
                    } else {
                        unksp128 = (s64) temp_f1;
                        temp_v0_3 = __glCrmPickAllProcs((s64 (*)(?, s32 *)) unkspD8, sp4, (s64 (*)(?, s32 *)) temp_f1, (s64) temp_gp->unk-5444, 1);
                        unkspE8 = 0;
                        sp68 = (s64) ((temp_v0_3 == NULL) ? 0 : sp4);
                        sp60 = (temp_v0_3 == NULL) ? 0 : unkspD8;
                    }
                } else {
                    unkspE8 = 0;
                    sp68 = 0;
block_28:
                    sp60 = 0;
                }
                if (unkspE0 > 0) {
                    unkspB0 = 1;
                    sp58 = var_s8;
                    sp50 = (s64) temp_s5;
                    unksp100 = (temp_f1 << 6) & 0x7FFFF;
                    unkspC8 = (s64) sp8 < 0x1F000;
                    unkspB8 = (s64) sp8 - unksp110;
                    unkspA8 = (s64) sp8 < 0x20000;
                    unkspD0 = (s64) sp8 >= unksp110;
                    var_s5 = 1;
                    sp20 = (s32) unksp120;
                    unksp108 = 0x7FFFF & (((var_s3 + temp_f1) - 1) << 6);
loop_47:
                    sp0 = (s32) unkspD8;
                    var_a4 = arg0->unk7DD2;
                    var_s2_2 = 1;
                    if (sp0 & 0xFFF) {
                        if ((s64) sp8 > 0) {
                            var_a2_2 = 0x1F000;
                            if (unkspC8 != 0) {
                                var_a2_2 = (s64) sp8 * (s32) ((f64) (second half of f64) / (second half of f64));
                                M2C_TRAP_IF((s64) sp8 == 0);
                            }
                        } else {
                            var_a2_2 = 0x1F000;
                        }
                    } else if ((s64) sp8 > 0) {
                        var_a2_2 = 0x1F000;
                        if (unkspA8 != 0) {
                            var_a2_2 = (s64) sp8 * (s32) ((f64) (second half of f64) / (second half of f64));
                            M2C_TRAP_IF((s64) sp8 == 0);
                        }
                    } else {
                        var_a2_2 = 0x1F000;
                    }
                    temp_a5_2 = var_a2_2 < (s64) sp8;
                    var_a3 = var_a2_2;
                    if (var_a4 != 0) {
                        var_a3 = (temp_a5_2 != 0) ? var_a2_2 : (s64) sp8;
                        if (unkspE0 >= 2) {
                            goto block_54;
                        }
                        goto block_60;
                    }
                    temp_f3 = (s32) ((f64) var_a2_2 / (f64) (s64) sp8);
                    var_s2_2 = (temp_f3 < 1) ? 1 : temp_f3;
                    M2C_TRAP_IF((s64) sp8 == 0);
                    if (var_s2_2 >= unkspE0) {
block_60:
                        temp_a1_4 = unkspE0;
                        var_a4 = (s64) sp8 * temp_a1_4;
                        unkspE0 = 0;
                        var_s2_2 = (s32) temp_a1_4;
                        unkspF0 = (s64) ((unkspC0 == 0) ? var_a4 : (var_a4 - unkspB8));
                        if (sp10 != 5) {
                            goto block_61;
                        }
                        goto block_55;
                    }
block_54:
                    unkspF0 = var_a3;
                    unkspD8 += var_a3;
                    unkspE0 -= var_s2_2;
                    if (sp10 == 5) {
block_55:
                        if (unkspE8 == 0) {
                            if (__glCrmPickAllProcs(arg0, sp14, (s64 (*)(?, s32 *)) sp0, unkspF0, (s32) var_a4, temp_a5_2) == NULL) {
                                unkspB0 = 0;
                            } else {
                                goto block_62;
                            }
                        } else {
                            goto block_61;
                        }
                    } else {
block_61:
block_62:
                        var_a2_3 = unkspF0;
                        if (unkspD0 != 0) {
                            unksp118 = (s64) var_s2_2;
                        } else {
                            var_a2_3 = unksp110;
                            unksp118 = 1;
                        }
                        var_a2_4 = var_a2_3 + sp0;
                        if (var_s2_2 > 0) {
                            var_s3_2 = (var_s1_2 - unksp118) + 1;
loop_35:
                            if (var_s5 != 0) {
                                if (arg0->unk7D60 != unksp120) {
                                    arg0->unk7DB8->unk2060 = (s32) unksp120;
                                    arg0->unk7DBC->unk2060 = sp20;
                                    arg0->unk7D60 = sp20;
                                }
                                sp40 = (s32) unksp100;
                                temp_s0->unk2080 = sp40;
                                temp_s7->unk2080 = sp40;
                                sp44 = (s32) unksp108;
                                temp_s0->unk2088 = sp44;
                                temp_s7->unk2088 = sp44;
                            }
                            sp48 = 0x7FFFF & (var_s1_2 << 6);
                            temp_s0->unk2084 = sp48;
                            sp4C = 0x7FFFF & (var_s3_2 << 6);
                            temp_s0->unk208C = sp4C;
                            if (var_s5 != 0) {
                                temp_s0->unk20A8 = sp30;
                                temp_s7->unk20A8 = sp30;
                                temp_s0->unk20AC = sp34;
                                temp_s7->unk20AC = sp34;
                                temp_s0->unk20B4 = sp3C;
                                var_s5 = 0;
                                temp_s7->unk20B4 = sp3C;
                            }
                            if (temp_gp->unk-5450 != NULL) {
                                printf(&sub_0da40000 + 0x2008, (s64 (*)(?, s32 *)) sp0, var_a2_4, (s32) (s64) sp8);
                            }
                            temp_a4 = var_s1_2 & 0x7FF & 0xFFFF;
                            temp_a5_3 = 0x1FFFF & sp0;
                            sp38 = temp_a5_3;
                            temp_a1_5 = (0xFFFF0000 & unkspF8) | temp_a4;
                            unkspF8 = temp_a1_5;
                            temp_s0->unk20A0 = (s32) temp_a1_5;
                            if (unkspE8 != 0) {
                                temp_s0->unk20B0 = sp38;
                                if (__glCrmPickAllProcs(arg0, sp14, (s64 (*)(?, s32 *)) sp0, unkspF0, temp_a4, (u8) temp_a5_3, (s64) sp0) == NULL) {
                                    unkspB0 = 0;
                                    unkspE0 = 0;
                                } else {
                                    goto block_33;
                                }
                            } else {
                                temp_s0->unk28B0 = sp38;
block_33:
                                temp_a0 = arg0->unk7DD2;
                                temp_a2_2 = var_s1_2 - unksp118;
                                var_s2_2 -= unksp118;
                                temp_a1_6 = var_s3_2 - unksp118;
                                var_s1_2 = (temp_a0 == 0) ? temp_a2_2 : (temp_a2_2 - 1);
                                var_s3_2 = (temp_a0 == 0) ? temp_a1_6 : (temp_a1_6 - 1);
                                if (var_s2_2 > 0) {
                                    sp0 += (s64) sp8;
                                    var_a2_4 = unksp110 + sp0;
                                    if (var_s2_2 > 0) {
                                        goto loop_35;
                                    }
                                }
                            }
                        }
                        if (unkspE0 > 0) {
                            goto loop_47;
                        }
                    }
                } else {
                    unkspB0 = 1;
                    sp58 = var_s8;
                    sp50 = (s64) temp_s5;
                }
                __glCrmFlushAndConfirm(arg0);
                if (sp10 == 5) {
                    if ((arg0->unk7DD4 == 0) || (sp58 != 0)) {
                        if (temp_gp->unk-5444 == 0) {
                            if (temp_gp->unk-5440 == 0) {
                                __glCrmPickAllProcs((s64 (*)(?, s32 *)) sp60, (s32) sp68);
                            }
                        }
                        __glCrmPickAllProcs(arg0, sp14 & ~0x60, arg0->unk7E50, 0);
                    }
                }
                temp_v0_4 = arg0->unk7D58;
                if (arg0->unk7D5C != temp_v0_4) {
                    arg0->unk7DB8->unk2018 = temp_v0_4;
                    arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
                    arg0->unk7D5C = (s32) arg0->unk7D58;
                }
                temp_a1_7 = arg0->unk2DF4;
                if (arg0->unk7E28 != temp_a1_7) {
                    __glCrmSetReadBuffer(arg0, temp_a1_7);
                }
                __glCrmSetDrawBuffer(arg0, arg0->unk2DF0);
                if (unkspB0 != 0) {
                    if (arg0->unk7DD8 != 0) {
                        sp70->unk60 = (s32) (s64) sp8;
                        sp70->unk64 = (s32) sp50;
                        sp70->unk5C = sp18;
                        sp70->unk58 = sp18;
                    } else if (arg0->unk7E58 == 0) {
                        if (sp58 == 0) {

                        } else {
                            goto block_94;
                        }
                    } else {
                        if (sp58 != 0) {
block_94:
                            var_s1_3 = sp18;
                            var_s0 = ((void *) sp70)->unk5C;
                            var_s3_3 = ((void *) sp70)->unkA8;
                            var_s6 = ((void *) sp70)->unk60;
                        } else {
                            var_s0 = sp70->unk5C;
                            var_s3_3 = sp70->unkA8;
                            var_s6 = sp70->unk60;
                            var_s1_3 = var_s0;
                        }
                        var_s5_2 = sp70->unkAC;
                        if (var_s5_2 > 0) {
loop_102:
                            if (arg0->unk7E58 == 0) {
                                memcpy(var_s0, (s64 (*)(?, s32 *)) var_s1_3, var_s3_3 * sp50);
                            } else {
                                __glCrmSetDrawBuffer((s64 (*)(?, s32 *)) var_s1_3, var_s0, var_s3_3);
                            }
                            var_s5_2 -= 1;
                            var_s0 += var_s6;
                            var_s1_3 += unksp110;
                            if (var_s5_2 > 0) {
                                goto loop_102;
                            }
                        }
                        if (sp58 != 0) {
                            arg0->unk7E44(arg0, 0);
                        }
                    }
                    return 1;
                }
                return 0;
            }
            return 0;
        }
        /* Duplicate return node #98. Try simplifying control flow for better match */
        return 1;
    }
    return 1;
}

s32 crmCopyPixelsXfer(s64 (*arg0)(?, s32 *), s32 *arg1, s32 arg2, s32 arg6, s32 arg7) {
    s64 spB0;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    u32 sp0;
    s16 temp_a1;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s8;
    u32 temp_a0_2;
    u32 temp_a5;
    u32 var_a0_3;
    u32 var_a2_2;
    u32 var_a3;
    u32 var_a6_2;
    u8 temp_t2_2;
    u8 var_a4;
    u8 var_a5;
    void *temp_gp;
    void *temp_s7;

    var_a2 = arg2;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a3 = arg1->unkAC;
    var_a4 = arg0->unk7DCB;
    sp48 = (s64) arg1;
    var_a5 = arg0->unk7DCC;
    temp_v1 = arg1->unkCC;
    temp_t8 = arg1->unkD0;
    temp_s6 = arg1->unkDC;
    temp_s4 = arg1->unkD8;
    var_s5 = (var_a5 == 0) ? ((temp_s6 + temp_t8) - 1) : temp_t8;
    temp_s8 = arg1->unkA8;
    temp_f1 = (s32) arg1->unkC0;
    var_s6 = (var_a5 == 0) ? temp_t8 : ((temp_t8 - temp_s6) + 1);
    var_a1 = arg0->unk7DBC;
    temp_f0 = (s32) arg1->unkBC;
    var_s4 = (var_a4 == 0) ? temp_v1 : ((temp_s4 + temp_v1) - 1);
    sp40 = (s64) var_a1;
    var_s3 = (var_a4 == 0) ? ((temp_v1 - temp_s4) + 1) : temp_v1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xF75DC;
    temp_s7 = arg0->unk7DB8;
    if (arg0->unk7DCD != 0) {
        goto block_1;
    }
    var_a0 = 1;
    if (var_a4 != 0) {
        var_a0 = 0;
        if (var_a5 != 0) {

        } else {
block_1:
            var_a0 = 1;
        }
    }
    if ((arg0->unkDD0 != 0) && ((var_a1 = temp_f0 < var_s3, (arg0->unk7E28 == arg0->unk7E2C)) || (var_a1 = temp_f0 < var_s3, (arg0->unk7DCE != 0))) && (((var_a2 = var_s4 < temp_f0, (var_a1 == 0)) && (var_a2 == 0)) || ((var_a4 = (temp_s8 + temp_f0) - 1, var_a5 = var_s4 < (s32) var_a4, (((s32) var_a4 < var_s3) == 0)) && (var_a6 = var_s5 < temp_f1, (var_a5 == 0)))) && (((var_a6 = var_s5 < temp_f1, var_a7 = temp_f1 < var_s6, var_a4 = (temp_f1 - temp_a3) + 1, (var_a6 == 0)) && (var_a5 = (s32) var_a4 < var_s6, (var_a7 == 0))) || ((var_a5 = (s32) var_a4 < var_s6, ((var_s5 < (s32) var_a4) == 0)) && (var_a6 = var_a0 & 0xFF, (var_a5 == 0))))) {
        var_a6 = var_a0 & 0xFF;
        var_a7 = 1;
        sp38 = 1;
        if (var_a6 != 0) {
            return crmCopyPixelsXferRW(arg0, (s32 *) sp48, var_a2, temp_a3, (s32) var_a4, (s32) var_a5, var_a6, 1);
        }
        goto block_16;
    }
    sp38 = 0;
block_16:
    if (temp_gp->unk-5450 != 0) {
        spB0 = (s64) temp_a3;
        printf(&sub_0da40000 + 0x2028, (s64 (*)(?, s32 *)) var_a1, var_a2, temp_a3, (s32) var_a4, (s32) var_a5, (s64) var_a6, var_a7);
    }
    var_a2_2 = arg0->unk7E08;
    var_a4_2 = arg0->unk7E0C;
    sp30 = (s64) var_a4_2;
    sp28 = (s64) var_a2_2;
    if (sp38 & 0xFF) {
        var_a4_2 = var_s5 < temp_f1;
        temp_t3 = var_s6;
        var_s6 = (var_a4_2 != 0) ? var_s5 : var_s6;
        var_s5 = (var_a4_2 != 0) ? temp_t3 : var_s5;
        var_a7_2 = temp_f0 < var_s3;
        temp_t2 = var_s4;
        var_s4 = (var_a7_2 != 0) ? var_s3 : var_s4;
        var_s3 = (var_a7_2 != 0) ? temp_t2 : var_s3;
        var_a6_2 = 3;
        var_s2 = (var_a4_2 != 0) ? ((temp_f1 - temp_a3) + 1) : temp_f1;
        var_s1 = (var_a7_2 != 0) ? ((temp_s8 + temp_f0) - 1) : temp_f0;
        temp_a2 = (var_a7_2 == 0) ? 1 : 0;
        var_a2_2 = (var_a4_2 != 0) ? ((temp_a2 == 0) ? 3U : 2U) : (temp_a2 == 0);
        sp50 = (s64) var_a2_2;
    } else {
        var_a6_2 = (u32) arg0->unk7DCB;
        temp_t2_2 = arg0->unk7DCC;
        var_s2 = (temp_t2_2 == 0) ? ((temp_f1 - temp_a3) + 1) : temp_f1;
        var_s1 = (var_a6_2 == 0) ? ((temp_s8 + temp_f0) - 1) : temp_f0;
        sp50 = 0;
        var_a7_2 = (s32) -sp28;
        sp30 = (temp_t2_2 == 0) ? -sp30 : sp30;
        sp28 = (s64) ((var_a6_2 == 0) ? var_a7_2 : (s32) sp28);
    }
    if (arg0->unk7DCE != 0) {
        var_a3 = sp48->unk50;
        var_a0_2 = 0x600000;
        if (var_a3 != 0x1901) {
            var_a4_2 = 0x1902;
            var_s8 = 0;
            if (var_a3 != 0x1902) {
                var_s8 = 0;
            } else {
                goto block_53;
            }
            goto block_24;
        }
        temp_a1 = arg0->unk68A;
        var_s8 = 0;
        if (temp_a1 != 0xFF) {
            var_s8 = temp_a1 << 0x18;
            var_a0_2 = 0x600080;
            if (var_s8 != 0) {
                temp_s7->unk21B8 = var_s8;
                sp40->unk21B8 = var_s8;
                goto block_51;
            }
            return 1;
        }
block_51:
        var_a0_2 = (-0x79 & var_a0_2) | 0x40;
block_53:
        var_a0_2 = (-0x79 & var_a0_2) | 0x38;
block_24:
        var_a0_3 = var_a0_2 | 0x78;
        goto block_25;
    }
    var_a3 = arg0->unk7D58;
    sp0 = var_a3;
    var_a2_2 = 0x200000;
    var_s8 = 0;
    var_a0_3 = (sp0 | 0x200000) & temp_gp->unk-56AC;
block_25:
    temp_a5 = arg0->unk7D5C;
    if (temp_a5 != var_a0_3) {
        sp0 = var_a0_3;
        arg0->unk7DB8->unk2018 = var_a0_3;
        var_a7_2 = arg0->unk7DBC;
        var_a6_2 = sp0;
        var_a7_2->unk2018 = var_a6_2;
        arg0->unk7D5C = var_a6_2;
    }
    temp_a1_2 = arg0->unk7E28;
    if (arg0->unk2DF4 != temp_a1_2) {
        __glCrmSetDrawBuffer(arg0, temp_a1_2, var_a2_2, var_a3, var_a4_2, temp_a5, var_a6_2, (u32) var_a7_2);
    }
    temp_a1_3 = arg0->unk7E2C;
    if (arg0->unk2DF0 != temp_a1_3) {
        M2C_ERROR(/* Read from unset register $t9 */)(arg0, temp_a1_3);
    }
    var_a1_2 = 0x03000000;
    temp_a0 = ((sp50 & 3) << 0x10) | 0x03000000;
    if (arg0->unk7D60 != temp_a0) {
        arg0->unk7DB8->unk2060 = temp_a0;
        var_a1_2 = arg0->unk7DBC;
        sp4 = temp_a0;
        var_a1_2->unk2060 = temp_a0;
        arg0->unk7D60 = temp_a0;
    }
    sp8 = 0x7FFFF & (var_s3 << 6);
    temp_s7->unk2080 = sp8;
    spC = 0x7FFFF & (var_s5 << 6);
    temp_s7->unk2084 = spC;
    sp10 = 0x7FFFF & (var_s4 << 6);
    temp_s7->unk2088 = sp10;
    sp14 = 0x7FFFF & (var_s6 << 6);
    temp_s7->unk208C = sp14;
    temp_s7->unk20A0 = (s32) ((var_s2 & 0x7FF & 0xFFFF) | (((var_s1 & 0x7FF) << 0x10) & 0xFFFF0000));
    if (arg0->unk7DCA != 0) {
        __glCrmSetupPixelRenderOps(arg0, var_a1_2);
    }
    sp20 = (sp28 & 0x7FF) | (arg0->unk7E00 << 0x1C);
    sp24 = (sp30 & 0x7FF) | (arg0->unk7E04 << 0x1C);
    temp_s7->unk20A8 = sp20;
    sp40->unk20A8 = sp20;
    temp_s7->unk28AC = sp24;
    temp_a0_2 = arg0->unk7D58;
    if (arg0->unk7D5C != temp_a0_2) {
        arg0->unk7DB8->unk2018 = temp_a0_2;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    if ((var_s8 != 0) && (arg0->unk7D58 & 0x80)) {
        temp_s7->unk21B8 = (s32) arg0->unk80C0;
        sp40->unk21B8 = (s32) arg0->unk80C0;
    }
    temp_a1_4 = arg0->unk2DF4;
    if (arg0->unk7E28 != temp_a1_4) {
        ((? (*)(s64 (*)(?, s32 *), s32)) sp20)(arg0, temp_a1_4);
    }
    temp_a1_5 = arg0->unk2DF0;
    if (arg0->unk7E2C != temp_a1_5) {
        M2C_ERROR(/* Read from unset register $t9 */)(arg0, temp_a1_5);
    }
    return 1;
}

s32 crmCopyPixelsXferRW(s64 (*arg0)(?, s32 *), s32 *arg1) {
    s64 sp0;
    s32 temp_t2;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a1;
    u8 var_a2;

    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0xF701C)->unk-5450 != 0) {
        printf(&sub_0da40000 + 0x2058);
    }
    var_a2 = arg0->unk7B41;
    sp0 = (s64) (arg0 + 0x10000);
    temp_a0 = arg0->unk80D0;
    arg0->unk7E24 = temp_a0;
    if (var_a2 != 1) {
        temp_a1 = (temp_a0 >> 2) & 3;
        var_a2 = temp_a1 < (u32) ((temp_a0 >> 8) & 3);
        if (var_a2 != 0) {
            var_a2 = ((temp_a0 & ~0x300) | (temp_a1 << 8)) & ~2 & ~1;
            arg0->unk7E24 = (u32) var_a2;
        }
    } else {
        arg0->unk7E24 = (u32) (((((temp_a0 & ~0x300) | 0x200) & ~0xC) | 8) & ~2 & ~1);
    }
    arg0->unk7DD8 = 1;
    crmReadPixelsXfer(arg0, arg1, (s32) var_a2, 1);
    if (arg0->unk7B41 == 1) {
        temp_a0_2 = arg0->unk7E24;
        if (!((temp_a0_2 >> 4) & 0xF)) {
            arg0->unk7E24 = (u32) ((temp_a0_2 & ~0xC) | ((((u32) sp0->unk-7F30 >> 2) & 3) * 4));
        }
    }
    temp_t2 = arg1->unk58;
    arg1->unk10 = (s32) arg1->unk60;
    arg1->unk14 = (s32) arg1->unk64;
    arg1->unkC = temp_t2;
    arg1->unk8 = temp_t2;
    arg0->unk7E58 = 0;
    arg0->unk7DD3 = (u8) arg0->unk77BC;
    if ((arg0->unk7DCD != 0) || (arg0->unk7DD1 != 0)) {
        arg0->unk7E10 = (s32) arg1->unkA8;
        arg0->unk7E18 = 0;
        arg0->unk7E1C = 0;
        arg0->unk7E14 = (s32) arg1->unkAC;
        arg0->unk7E20 = (s32) arg1->unkC;
        crmDrawPixelsXfer2(arg0, arg1);
    } else {
        crmDrawPixelsXfer(arg0, arg1);
    }
    arg0->unk7DD8 = 0;
    arg0->unk7DD3 = 0U;
    if (arg0->unk7E3C != 0) {
        if (arg0->unk7E30 != 0) {
            crmDrawPixelsXfer2(arg0, NULL);
        }
    }
    return 1;
}

void convertRGBXToRGBA(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_v0;
    u8 temp_v0;
    u8 temp_v1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_v0 = var_a2 < 9;
    if ((var_a0 != var_a1) || (var_v0 = var_a2 < 9, ((var_a0 & 3) != 0))) {
        if (var_v0 == 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk1 = (u8) var_a0->unk1;
                var_a1->unk2 = (u8) var_a0->unk2;
                var_a1->unk3 = 0xFF;
                var_a1->unk4 = (u8) var_a0->unk4;
                var_a1->unk5 = (u8) var_a0->unk5;
                var_a1->unk6 = (u8) var_a0->unk6;
                var_a1->unk7 = 0xFF;
                var_a1->unk8 = (u8) var_a0->unk8;
                var_a1->unk9 = (u8) var_a0->unk9;
                var_a1->unkA = (u8) var_a0->unkA;
                var_a1->unkB = 0xFF;
                var_a1->unkC = (u8) var_a0->unkC;
                var_a1->unkD = (u8) var_a0->unkD;
                var_a1->unkE = (u8) var_a0->unkE;
                var_a1->unkF = 0xFF;
                var_a1->unk10 = (u8) var_a0->unk10;
                var_a1->unk11 = (u8) var_a0->unk11;
                var_a1->unk12 = (u8) var_a0->unk12;
                var_a1->unk13 = 0xFF;
                var_a1->unk14 = (u8) var_a0->unk14;
                var_a1->unk15 = (u8) var_a0->unk15;
                var_a1->unk16 = (u8) var_a0->unk16;
                var_a1->unk17 = 0xFF;
                var_a1->unk18 = (u8) var_a0->unk18;
                var_a1->unk19 = (u8) var_a0->unk19;
                var_a1->unk1A = (u8) var_a0->unk1A;
                var_a1->unk1B = 0xFF;
                var_a1->unk1C = (u8) var_a0->unk1C;
                var_a2 -= 8;
                var_a1->unk1D = (u8) var_a0->unk1D;
                var_a1 += 0x20;
                temp_v1 = var_a0->unk1E;
                var_a1->unk-1 = 0xFF;
                var_a0 += 0x20;
                var_a1->unk-2 = temp_v1;
            } while (var_a2 >= 9);
        }
        if (var_a2 > 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk1 = (u8) var_a0->unk1;
                var_a1 += 4;
                var_a2 -= 1;
                temp_v0 = var_a0->unk2;
                var_a1->unk-1 = 0xFF;
                var_a0 += 4;
                var_a1->unk-2 = temp_v0;
            } while (var_a2 > 0);
        }
    } else {
        if (var_a2 >= 9) {
            temp_a0 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
            if (temp_a0 & 1) {
                var_a1 += 0x20;
                var_a1->unk-4 = (s32) (var_a1->unk-4 | 0xFF);
                var_a1->unk-8 = (s32) (var_a1->unk-8 | 0xFF);
                var_a1->unk-C = (s32) (var_a1->unk-C | 0xFF);
                var_a1->unk-10 = (s32) (var_a1->unk-10 | 0xFF);
                var_a1->unk-14 = (s32) (var_a1->unk-14 | 0xFF);
                var_a1->unk-18 = (s32) (var_a1->unk-18 | 0xFF);
                var_a1->unk-1C = (s32) (var_a1->unk-1C | 0xFF);
                var_a2 -= 8;
                var_a1->unk-20 = (s32) (var_a1->unk-20 | 0xFF);
            }
            if ((temp_a0 >> 1) != 0) {
                do {
                    var_a1 += 0x40;
                    var_a1->unk-4 = (s32) (var_a1->unk-4 | 0xFF);
                    var_a1->unk-8 = (s32) (var_a1->unk-8 | 0xFF);
                    var_a1->unk-C = (s32) (var_a1->unk-C | 0xFF);
                    var_a1->unk-10 = (s32) (var_a1->unk-10 | 0xFF);
                    var_a1->unk-14 = (s32) (var_a1->unk-14 | 0xFF);
                    var_a1->unk-18 = (s32) (var_a1->unk-18 | 0xFF);
                    var_a1->unk-1C = (s32) (var_a1->unk-1C | 0xFF);
                    var_a1->unk-20 = (s32) (var_a1->unk-20 | 0xFF);
                    var_a1->unk-24 = (s32) (var_a1->unk-24 | 0xFF);
                    var_a1->unk-28 = (s32) (var_a1->unk-28 | 0xFF);
                    var_a1->unk-2C = (s32) (var_a1->unk-2C | 0xFF);
                    var_a1->unk-30 = (s32) (var_a1->unk-30 | 0xFF);
                    var_a1->unk-34 = (s32) (var_a1->unk-34 | 0xFF);
                    var_a1->unk-38 = (s32) (var_a1->unk-38 | 0xFF);
                    var_a2 -= 0x10;
                    var_a1->unk-3C = (s32) (var_a1->unk-3C | 0xFF);
                    var_a1->unk-40 = (s32) (var_a1->unk-40 | 0xFF);
                } while (var_a2 >= 9);
            }
        }
        if (var_a2 > 0) {
            temp_a4 = (var_a2 >= 1) ? var_a2 : 1;
            var_a0_2 = temp_a4 & 3;
            if (var_a0_2 != 0) {
                do {
                    var_a0_2 -= 1;
                    temp_a3 = *var_a1;
                    var_a2 -= 1;
                    var_a1 += 4;
                    var_a1->unk-4 = (s32) (temp_a3 | 0xFF);
                } while (var_a0_2 != 0);
            }
            if ((temp_a4 >> 2) != 0) {
                do {
                    var_a1 += 0x10;
                    var_a1->unk-8 = (s32) (var_a1->unk-8 | 0xFF);
                    var_a2 -= 4;
                    var_a1->unk-C = (s32) (var_a1->unk-C | 0xFF);
                    var_a1->unk-10 = (s32) (var_a1->unk-10 | 0xFF);
                    var_a1->unk-4 = (s32) (var_a1->unk-4 | 0xFF);
                } while (var_a2 > 0);
            }
        }
    }
}

void convertXBGRToABGR(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_a0;
    s32 var_a2;
    s32 var_a4;
    u8 temp_v0;
    u8 temp_v1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if ((var_a0 != var_a1) || (var_a0 & 3)) {
        if (var_a2 >= 9) {
            do {
                var_a1->unk0 = 0xFF;
                var_a1->unk1 = (u8) var_a0->unk1;
                var_a1->unk2 = (u8) var_a0->unk2;
                var_a1->unk3 = (u8) var_a0->unk3;
                var_a1->unk4 = 0xFF;
                var_a1->unk5 = (u8) var_a0->unk5;
                var_a1->unk6 = (u8) var_a0->unk6;
                var_a1->unk7 = (u8) var_a0->unk7;
                var_a1->unk8 = 0xFF;
                var_a1->unk9 = (u8) var_a0->unk9;
                var_a1->unkA = (u8) var_a0->unkA;
                var_a1->unkB = (u8) var_a0->unkB;
                var_a1->unkC = 0xFF;
                var_a1->unkD = (u8) var_a0->unkD;
                var_a1->unkE = (u8) var_a0->unkE;
                var_a1->unkF = (u8) var_a0->unkF;
                var_a1->unk10 = 0xFF;
                var_a1->unk11 = (u8) var_a0->unk11;
                var_a1->unk12 = (u8) var_a0->unk12;
                var_a1->unk13 = (u8) var_a0->unk13;
                var_a1->unk14 = 0xFF;
                var_a1->unk15 = (u8) var_a0->unk15;
                var_a1->unk16 = (u8) var_a0->unk16;
                var_a1->unk17 = (u8) var_a0->unk17;
                var_a1->unk18 = 0xFF;
                var_a1->unk19 = (u8) var_a0->unk19;
                var_a1->unk1A = (u8) var_a0->unk1A;
                var_a1->unk1B = (u8) var_a0->unk1B;
                var_a1->unk1C = 0xFF;
                var_a1->unk1D = (u8) var_a0->unk1D;
                var_a2 -= 8;
                var_a1->unk1E = (u8) var_a0->unk1E;
                var_a1 += 0x20;
                temp_v1 = var_a0->unk1F;
                var_a0 += 0x20;
                var_a1->unk-1 = temp_v1;
            } while (var_a2 >= 9);
        }
        if (var_a2 > 0) {
            do {
                var_a1->unk0 = 0xFF;
                var_a1->unk1 = (u8) var_a0->unk1;
                var_a2 -= 1;
                var_a1->unk2 = (u8) var_a0->unk2;
                var_a1 += 4;
                temp_v0 = var_a0->unk3;
                var_a0 += 4;
                var_a1->unk-1 = temp_v0;
            } while (var_a2 > 0);
        }
    } else {
        if (var_a2 >= 9) {
            temp_a4 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
            if (temp_a4 & 1) {
                var_a1 += 0x20;
                var_a1->unk-4 = (s32) (0xFF000000 | var_a1->unk-4);
                var_a1->unk-8 = (s32) (0xFF000000 | var_a1->unk-8);
                var_a1->unk-C = (s32) (0xFF000000 | var_a1->unk-C);
                var_a1->unk-10 = (s32) (0xFF000000 | var_a1->unk-10);
                var_a1->unk-14 = (s32) (0xFF000000 | var_a1->unk-14);
                var_a1->unk-18 = (s32) (0xFF000000 | var_a1->unk-18);
                var_a1->unk-1C = (s32) (0xFF000000 | var_a1->unk-1C);
                var_a2 -= 8;
                var_a1->unk-20 = (s32) (0xFF000000 | var_a1->unk-20);
            }
            if ((temp_a4 >> 1) != 0) {
                do {
                    var_a1 += 0x40;
                    var_a1->unk-4 = (s32) (0xFF000000 | var_a1->unk-4);
                    var_a1->unk-8 = (s32) (0xFF000000 | var_a1->unk-8);
                    var_a1->unk-C = (s32) (0xFF000000 | var_a1->unk-C);
                    var_a1->unk-10 = (s32) (0xFF000000 | var_a1->unk-10);
                    var_a1->unk-14 = (s32) (0xFF000000 | var_a1->unk-14);
                    var_a1->unk-18 = (s32) (0xFF000000 | var_a1->unk-18);
                    var_a1->unk-1C = (s32) (0xFF000000 | var_a1->unk-1C);
                    var_a1->unk-20 = (s32) (0xFF000000 | var_a1->unk-20);
                    var_a1->unk-24 = (s32) (0xFF000000 | var_a1->unk-24);
                    var_a1->unk-28 = (s32) (0xFF000000 | var_a1->unk-28);
                    var_a1->unk-2C = (s32) (0xFF000000 | var_a1->unk-2C);
                    var_a1->unk-30 = (s32) (0xFF000000 | var_a1->unk-30);
                    var_a1->unk-34 = (s32) (0xFF000000 | var_a1->unk-34);
                    var_a1->unk-38 = (s32) (0xFF000000 | var_a1->unk-38);
                    var_a2 -= 0x10;
                    var_a1->unk-3C = (s32) (0xFF000000 | var_a1->unk-3C);
                    var_a1->unk-40 = (s32) (0xFF000000 | var_a1->unk-40);
                } while (var_a2 >= 9);
            }
        }
        if (var_a2 > 0) {
            temp_a6 = (var_a2 >= 1) ? var_a2 : 1;
            var_a4 = temp_a6 & 3;
            if (var_a4 != 0) {
                do {
                    var_a4 -= 1;
                    temp_a7 = *var_a1;
                    var_a2 -= 1;
                    var_a1 += 4;
                    var_a1->unk-4 = (s32) (0xFF000000 | temp_a7);
                } while (var_a4 != 0);
            }
            if ((temp_a6 >> 2) != 0) {
                do {
                    var_a1 += 0x10;
                    var_a1->unk-8 = (s32) (0xFF000000 | var_a1->unk-8);
                    var_a2 -= 4;
                    var_a1->unk-C = (s32) (0xFF000000 | var_a1->unk-C);
                    var_a1->unk-10 = (s32) (0xFF000000 | var_a1->unk-10);
                    var_a1->unk-4 = (s32) (0xFF000000 | var_a1->unk-4);
                } while (var_a2 > 0);
            }
        }
    }
}

void convertRGBUbyteToRGBA(void *arg0, void *arg1, s32 arg2) {
    s32 var_a2;
    u8 temp_at;
    u8 temp_v0;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        do {
            var_a1->unk0 = (u8) var_a0->unk0;
            var_a1->unk1 = (u8) var_a0->unk1;
            var_a1->unk2 = (u8) var_a0->unk2;
            var_a1->unk3 = 0xFF;
            var_a1->unk4 = (u8) var_a0->unk3;
            var_a1->unk5 = (u8) var_a0->unk4;
            var_a1->unk6 = (u8) var_a0->unk5;
            var_a1->unk7 = 0xFF;
            var_a1->unk8 = (u8) var_a0->unk6;
            var_a1->unk9 = (u8) var_a0->unk7;
            var_a1->unkA = (u8) var_a0->unk8;
            var_a1->unkB = 0xFF;
            var_a1->unkC = (u8) var_a0->unk9;
            var_a1->unkD = (u8) var_a0->unkA;
            var_a1->unkE = (u8) var_a0->unkB;
            var_a1->unkF = 0xFF;
            var_a1->unk10 = (u8) var_a0->unkC;
            var_a1->unk11 = (u8) var_a0->unkD;
            var_a1->unk12 = (u8) var_a0->unkE;
            var_a1->unk13 = 0xFF;
            var_a1->unk14 = (u8) var_a0->unkF;
            var_a1->unk15 = (u8) var_a0->unk10;
            var_a1->unk16 = (u8) var_a0->unk11;
            var_a1->unk17 = 0xFF;
            var_a1->unk18 = (u8) var_a0->unk12;
            var_a1->unk19 = (u8) var_a0->unk13;
            var_a1->unk1A = (u8) var_a0->unk14;
            var_a1->unk1B = 0xFF;
            var_a1->unk1C = (u8) var_a0->unk15;
            var_a2 -= 8;
            var_a1->unk1D = (u8) var_a0->unk16;
            var_a1 += 0x20;
            temp_v0 = var_a0->unk17;
            var_a1->unk-1 = 0xFF;
            var_a0 += 0x18;
            var_a1->unk-2 = temp_v0;
        } while (var_a2 >= 9);
    }
    if (var_a2 > 0) {
        do {
            var_a1->unk0 = (u8) var_a0->unk0;
            var_a1->unk1 = (u8) var_a0->unk1;
            var_a1 += 4;
            var_a2 -= 1;
            temp_at = var_a0->unk2;
            var_a1->unk-1 = 0xFF;
            var_a0 += 3;
            var_a1->unk-2 = temp_at;
        } while (var_a2 > 0);
    }
}

void convertRGBAToRGBUbyte(void *arg0, void *arg1, s32 arg2) {
    s32 var_a2;
    u8 temp_t8;
    u8 temp_v0;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        do {
            var_a1->unk0 = (u8) var_a0->unk0;
            var_a1->unk1 = (u8) var_a0->unk1;
            var_a1->unk2 = (u8) var_a0->unk2;
            var_a1->unk3 = (u8) var_a0->unk4;
            var_a1->unk4 = (u8) var_a0->unk5;
            var_a1->unk5 = (u8) var_a0->unk6;
            var_a1->unk6 = (u8) var_a0->unk8;
            var_a1->unk7 = (u8) var_a0->unk9;
            var_a1->unk8 = (u8) var_a0->unkA;
            var_a1->unk9 = (u8) var_a0->unkC;
            var_a1->unkA = (u8) var_a0->unkD;
            var_a1->unkB = (u8) var_a0->unkE;
            var_a1->unkC = (u8) var_a0->unk10;
            var_a1->unkD = (u8) var_a0->unk11;
            var_a1->unkE = (u8) var_a0->unk12;
            var_a1->unkF = (u8) var_a0->unk14;
            var_a1->unk10 = (u8) var_a0->unk15;
            var_a1->unk11 = (u8) var_a0->unk16;
            var_a1->unk12 = (u8) var_a0->unk18;
            var_a1->unk13 = (u8) var_a0->unk19;
            var_a1->unk14 = (u8) var_a0->unk1A;
            var_a1->unk15 = (u8) var_a0->unk1C;
            var_a2 -= 8;
            var_a1->unk16 = (u8) var_a0->unk1D;
            var_a1 += 0x18;
            temp_v0 = var_a0->unk1E;
            var_a0 += 0x20;
            var_a1->unk-1 = temp_v0;
        } while (var_a2 >= 9);
    }
    if (var_a2 > 0) {
        do {
            var_a1->unk0 = (u8) var_a0->unk0;
            var_a2 -= 1;
            var_a1->unk1 = (u8) var_a0->unk1;
            var_a1 += 3;
            temp_t8 = var_a0->unk2;
            var_a0 += 4;
            var_a1->unk-1 = temp_t8;
        } while (var_a2 > 0);
    }
}

void convertLumaUbyteToRGBA(u8 *arg0, void *arg1, s32 arg2) {
    s32 var_a2;
    u8 *var_a0;
    u8 temp_at;
    u8 temp_v0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        do {
            var_a1->unk0 = (u8) var_a0->unk0;
            var_a1->unk1 = (u8) var_a0->unk0;
            var_a1->unk2 = (u8) var_a0->unk0;
            var_a1->unk3 = 0xFF;
            var_a1->unk4 = (u8) var_a0->unk1;
            var_a1->unk5 = (u8) var_a0->unk1;
            var_a1->unk6 = (u8) var_a0->unk1;
            var_a1->unk7 = 0xFF;
            var_a1->unk8 = (u8) var_a0->unk2;
            var_a1->unk9 = (u8) var_a0->unk2;
            var_a1->unkA = (u8) var_a0->unk2;
            var_a1->unkB = 0xFF;
            var_a1->unkC = (u8) var_a0->unk3;
            var_a1->unkD = (u8) var_a0->unk3;
            var_a1->unkE = (u8) var_a0->unk3;
            var_a1->unkF = 0xFF;
            var_a1->unk10 = (u8) var_a0->unk4;
            var_a1->unk11 = (u8) var_a0->unk4;
            var_a1->unk12 = (u8) var_a0->unk4;
            var_a1->unk13 = 0xFF;
            var_a1->unk14 = (u8) var_a0->unk5;
            var_a1->unk15 = (u8) var_a0->unk5;
            var_a1->unk16 = (u8) var_a0->unk5;
            var_a1->unk17 = 0xFF;
            var_a1->unk18 = (u8) var_a0->unk6;
            var_a1->unk19 = (u8) var_a0->unk6;
            var_a1->unk1A = (u8) var_a0->unk6;
            var_a1->unk1B = 0xFF;
            var_a1->unk1C = (u8) var_a0->unk7;
            var_a2 -= 8;
            var_a1->unk1D = (u8) var_a0->unk7;
            var_a1 += 0x20;
            temp_v0 = var_a0->unk7;
            var_a1->unk-1 = 0xFF;
            var_a0 += 8;
            var_a1->unk-2 = temp_v0;
        } while (var_a2 >= 9);
    }
    if (var_a2 > 0) {
        do {
            var_a1->unk0 = (u8) *var_a0;
            var_a1->unk1 = (u8) *var_a0;
            var_a1 += 4;
            var_a2 -= 1;
            temp_at = *var_a0;
            var_a1->unk-1 = 0xFF;
            var_a0 += 1;
            var_a1->unk-2 = temp_at;
        } while (var_a2 > 0);
    }
}

void convertRGBAToLumaUbyte(void *arg0, s8 *arg1, s32 arg2) {
    s32 temp_a2;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a5;
    s8 *var_a1;
    s8 temp_t0;
    s8 temp_t0_2;
    s8 temp_t3;
    s8 temp_v1;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a5 = arg2;
    if (arg2 > 0) {
        temp_a6 = (arg2 >= 1) ? arg2 : 1;
        if (temp_a6 & 1) {
            var_a5 -= 1;
            temp_v1 = var_a0->unk2 + (var_a0->unk0 + var_a0->unk1);
            var_a1 += 1;
            temp_a2 = temp_v1 > 0xFF;
            var_a0 += 4;
            var_a1->unk-1 = (s8) ((temp_a2 != 0) ? -1 : temp_v1);
        }
        var_a2 = var_a5;
        if ((temp_a6 >> 1) != 0) {
            do {
                temp_t3 = var_a0->unk2 + (var_a0->unk0 + var_a0->unk1);
                *var_a1 = (temp_t3 > 0xFF) ? -1 : temp_t3;
                temp_t0 = var_a0->unk6 + (var_a0->unk4 + var_a0->unk5);
                var_a2 -= 2;
                var_a1 += 2;
                temp_t0_2 = (temp_t0 > 0xFF) ? -1 : temp_t0;
                var_a0 += 8;
                var_a1->unk-1 = temp_t0_2;
            } while (var_a2 > 0);
        }
    }
}

void convertYCRCBToRGBA(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a4;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a4 = arg2 >> 1;
    if (var_a4 > 0) {
        do {
            temp_t2 = var_a0->unk0 - 0x80;
            temp_a6 = temp_t2 * 0x812;
            temp_t9 = var_a0->unk2 - 0x80;
            temp_v1 = (var_a0->unk3 - 0x10) * 0x4A8;
            temp_lo = temp_t9 * 0x662;
            temp_a7 = (s32) (temp_a6 + temp_v1 + 0x200) >> 0xA;
            temp_at = (var_a0->unk1 - 0x10) * 0x4A8;
            temp_a3 = (s32) (temp_at + temp_lo + 0x200) >> 0xA;
            temp_v0 = (s32) (temp_lo + temp_v1 + 0x200) >> 0xA;
            temp_a6_2 = (s32) (temp_at + temp_a6 + 0x200) >> 0xA;
            var_a1 += 8;
            var_a4 -= 1;
            temp_a5 = temp_t9 * 0x340;
            temp_t0 = temp_t2 * 0x191;
            var_a1->unk-1 = 0xFF;
            var_a1->unk-5 = 0xFF;
            temp_v1_2 = (s32) (((temp_v1 - temp_a5) - temp_t0) + 0x200) >> 0xA;
            var_a1->unk-2 = (s8) ((temp_a7 < 0) ? 0 : ((temp_a7 > 0xFF) ? 0xFF : temp_a7));
            temp_at_2 = (s32) (((temp_at - temp_a5) - temp_t0) + 0x200) >> 0xA;
            var_a1->unk-4 = (s8) ((temp_v0 < 0) ? 0 : ((temp_v0 > 0xFF) ? 0xFF : temp_v0));
            var_a1->unk-6 = (s8) ((temp_a6_2 < 0) ? 0 : ((temp_a6_2 > 0xFF) ? 0xFF : temp_a6_2));
            var_a1->unk-8 = (s8) ((temp_a3 < 0) ? 0 : ((temp_a3 > 0xFF) ? 0xFF : temp_a3));
            var_a1->unk-3 = (s8) ((temp_v1_2 < 0) ? 0 : ((temp_v1_2 > 0xFF) ? 0xFF : temp_v1_2));
            var_a0 += 4;
            var_a1->unk-7 = (s8) ((temp_at_2 < 0) ? 0 : ((temp_at_2 > 0xFF) ? 0xFF : temp_at_2));
        } while (var_a4 > 0);
    }
}

void convertRGBAToYCRCB(void *arg0, s8 *arg1, s32 arg2) {
    s32 temp_a3;
    s32 temp_at;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a5;
    s8 *var_a1;
    s8 temp_a3_2;
    u8 temp_a6;
    u8 temp_a7;
    u8 temp_t0;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a5 = arg2 & ~1;
    var_a4 = var_a5 - 1;
    if (var_a5 > 0) {
loop_5:
        temp_a7 = var_a0->unk1;
        temp_a6 = var_a0->unk0;
        temp_t2 = temp_a7 * 0x204;
        temp_t0 = var_a0->unk2;
        temp_a3 = temp_t0 * 3;
        temp_t1 = temp_a6 * 0x108;
        var_a0 += 4;
        var_a5 -= 1;
        temp_t1_2 = var_a4 & 1;
        var_a4 -= 1;
        temp_a3_2 = ((s32) ((((temp_a3 * 8) + temp_t0) * 4) + ((temp_t1 - temp_a6) + temp_t2) + 0x200) >> 0xA) + 0x10;
        if (temp_t1_2 == 0) {
            *var_a1 = temp_a3_2;
            var_a1 += 1;
        } else {
            var_a1 += 3;
            temp_at = (s32) (temp_t0 + var_a0->unk2) >> 1;
            temp_v0 = (s32) (temp_a6 + var_a0->unk0) >> 1;
            temp_t9 = (s32) (temp_a7 + var_a0->unk1) >> 1;
            var_a1->unk-2 = temp_a3_2;
            var_a1->unk-1 = (s8) (((s32) (((temp_v0 - temp_t9) * 0x179) + ((temp_v0 - temp_at) * 0x49) + 0x100) >> 0xA) + 0x80);
            var_a1->unk-3 = (s8) (((s32) (((temp_at - temp_v0) * 0x98) + ((temp_at - temp_t9) * 0x12A) + 0x100) >> 0xA) + 0x80);
        }
        if (var_a5 > 0) {
            goto loop_5;
        }
    }
}

void convertYCRCBToRGBAImage(s64 (**arg0)(s32), void *arg1) {
    s64 sp40;
    s64 sp0;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 var_s2;
    s64 (*var_s1)(?, s32 *);
    s64 temp_v0;
    s64 var_s0;

    temp_s4 = arg1->unkA8;
    temp_s5 = arg1->unkAC;
    temp_v0 = *arg0(temp_s5 * temp_s4 * 4);
    sp40 = (s64) temp_s5;
    var_s0 = temp_v0;
    sp0 = temp_v0;
    var_s1 = arg1->unkC;
    var_s2 = temp_s5;
    if (temp_s5 > 0) {
        temp_s5_2 = temp_s4 * 4;
        do {
            crmCopyPixelsXferRW(var_s1, (s32 *) var_s0, temp_s4);
            var_s2 -= 1;
            var_s0 += temp_s5_2;
            var_s1 += arg1->unk10;
        } while (var_s2 > 0);
        arg1->unk10 = temp_s5_2;
        arg1->unkC = (s64 (*)(?, s32 *)) sp0;
        arg1->unk8 = (s32) sp0;
        arg1->unk1C = 4;
        arg1->unk14 = 4;
        arg1->unk0 = 0x1908;
        return;
    }
    arg1->unk10 = (s32) (temp_s4 * 4);
    arg1->unk1C = 4;
    arg1->unk14 = 4;
    arg1->unk0 = 0x1908;
    arg1->unkC = (s64 (*)(?, s32 *)) sp0;
    arg1->unk8 = (s32) sp0;
}

void convertDepthUintToSZ(s32 arg1, s32 arg2) {
    bcopy(arg1 + 1, (arg2 * 4) - 1, 0xF5ECC);
}

void convertSZToDepthUint(void *arg0, void *arg1, s32 arg2) {
    s32 var_a2;
    u8 temp_a6;
    u8 temp_v0;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        do {
            var_a1->unk0 = (u8) var_a0->unk1;
            var_a1->unk1 = (u8) var_a0->unk2;
            var_a1->unk2 = (u8) var_a0->unk3;
            var_a1->unk3 = (u8) var_a0->unk1;
            var_a1->unk4 = (u8) var_a0->unk5;
            var_a1->unk5 = (u8) var_a0->unk6;
            var_a1->unk6 = (u8) var_a0->unk7;
            var_a1->unk7 = (u8) var_a0->unk5;
            var_a1->unk8 = (u8) var_a0->unk9;
            var_a1->unk9 = (u8) var_a0->unkA;
            var_a1->unkA = (u8) var_a0->unkB;
            var_a1->unkB = (u8) var_a0->unk9;
            var_a1->unkC = (u8) var_a0->unkD;
            var_a1->unkD = (u8) var_a0->unkE;
            var_a1->unkE = (u8) var_a0->unkF;
            var_a1->unkF = (u8) var_a0->unkD;
            var_a1->unk10 = (u8) var_a0->unk11;
            var_a1->unk11 = (u8) var_a0->unk12;
            var_a1->unk12 = (u8) var_a0->unk13;
            var_a1->unk13 = (u8) var_a0->unk11;
            var_a1->unk14 = (u8) var_a0->unk15;
            var_a1->unk15 = (u8) var_a0->unk16;
            var_a1->unk16 = (u8) var_a0->unk17;
            var_a1->unk17 = (u8) var_a0->unk15;
            var_a1->unk18 = (u8) var_a0->unk19;
            var_a1->unk19 = (u8) var_a0->unk1A;
            var_a1->unk1A = (u8) var_a0->unk1B;
            var_a1->unk1B = (u8) var_a0->unk19;
            var_a1->unk1C = (u8) var_a0->unk1D;
            var_a1->unk1D = (u8) var_a0->unk1E;
            var_a2 -= 8;
            var_a1->unk1E = (u8) var_a0->unk1F;
            var_a1 += 0x20;
            temp_v0 = var_a0->unk1D;
            var_a0 += 0x20;
            var_a1->unk-1 = temp_v0;
        } while (var_a2 >= 9);
    }
    if (var_a2 > 0) {
        do {
            var_a1->unk0 = (u8) var_a0->unk1;
            var_a1->unk1 = (u8) var_a0->unk2;
            var_a2 -= 1;
            var_a1->unk2 = (u8) var_a0->unk3;
            var_a1 += 4;
            temp_a6 = var_a0->unk1;
            var_a0 += 4;
            var_a1->unk-1 = temp_a6;
        } while (var_a2 > 0);
    }
}

void convertSZToScaledDepthUint(s32 *arg0, void *arg1, s32 arg2) {
    s32 *var_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_t1;
    s32 var_a2;
    s32 var_a3_2;
    void *var_a3;
    void *var_a3_3;
    void *var_a5;

    var_a2 = arg2;
    var_a4 = arg0;
    var_a5 = arg1;
    if (var_a2 >= 9) {
        temp_a6 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
        if (temp_a6 & 1) {
            var_a5->unk0 = (s32) (0xFFFFFF & arg0->unk0);
            var_a5->unk4 = (s32) (0xFFFFFF & arg0->unk4);
            var_a5->unk8 = (s32) (0xFFFFFF & arg0->unk8);
            var_a5->unkC = (s32) (0xFFFFFF & arg0->unkC);
            var_a5->unk10 = (s32) (0xFFFFFF & arg0->unk10);
            var_a5->unk14 = (s32) (0xFFFFFF & arg0->unk14);
            var_a5->unk18 = (s32) (0xFFFFFF & arg0->unk18);
            var_a2 -= 8;
            var_a5 += 0x20;
            var_a4 = arg0 + 0x20;
            var_a5->unk-4 = (s32) (0xFFFFFF & arg0->unk1C);
        }
        var_a3 = var_a5;
        if ((temp_a6 >> 1) != 0) {
            do {
                var_a3->unk0 = (s32) (0xFFFFFF & var_a4->unk0);
                var_a3->unk4 = (s32) (0xFFFFFF & var_a4->unk4);
                var_a3->unk8 = (s32) (0xFFFFFF & var_a4->unk8);
                var_a3->unkC = (s32) (0xFFFFFF & var_a4->unkC);
                var_a3->unk10 = (s32) (0xFFFFFF & var_a4->unk10);
                var_a3->unk14 = (s32) (0xFFFFFF & var_a4->unk14);
                var_a3->unk18 = (s32) (0xFFFFFF & var_a4->unk18);
                var_a3->unk1C = (s32) (0xFFFFFF & var_a4->unk1C);
                var_a3->unk20 = (s32) (0xFFFFFF & var_a4->unk20);
                var_a3->unk24 = (s32) (0xFFFFFF & var_a4->unk24);
                var_a3->unk28 = (s32) (0xFFFFFF & var_a4->unk28);
                var_a3->unk2C = (s32) (0xFFFFFF & var_a4->unk2C);
                var_a3->unk30 = (s32) (0xFFFFFF & var_a4->unk30);
                var_a3->unk34 = (s32) (0xFFFFFF & var_a4->unk34);
                var_a2 -= 0x10;
                var_a3->unk38 = (s32) (0xFFFFFF & var_a4->unk38);
                temp_a5 = var_a4->unk3C;
                var_a3 += 0x40;
                var_a4 += 0x40;
                var_a3->unk-4 = (s32) (0xFFFFFF & temp_a5);
            } while (var_a2 >= 9);
            var_a5 = var_a3;
        }
    }
    if (var_a2 > 0) {
        temp_a6_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a3_2 = temp_a6_2 & 3;
        if (var_a3_2 != 0) {
            do {
                var_a2 -= 1;
                var_a3_2 -= 1;
                temp_a7 = *var_a4;
                var_a5 += 4;
                var_a4 += 4;
                var_a5->unk-4 = (s32) (0xFFFFFF & temp_a7);
            } while (var_a3_2 != 0);
        }
        var_a3_3 = var_a5;
        if ((temp_a6_2 >> 2) != 0) {
            do {
                var_a3_3->unk0 = (s32) (0xFFFFFF & var_a4->unk0);
                var_a3_3->unk4 = (s32) (0xFFFFFF & var_a4->unk4);
                var_a3_3->unk8 = (s32) (0xFFFFFF & var_a4->unk8);
                var_a2 -= 4;
                temp_t1 = var_a4->unkC;
                var_a3_3 += 0x10;
                var_a4 += 0x10;
                var_a3_3->unk-4 = (s32) (0xFFFFFF & temp_t1);
            } while (var_a2 > 0);
        }
    }
}

void convertStencilUbyteToSZ(u8 *arg0, void *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a4_2;
    u8 *var_a0;
    u8 temp_a3;
    u8 temp_t0;
    u8 temp_t1;
    u8 temp_t3;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        temp_a5 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
        var_a4 = temp_a5 & 3;
        if (var_a4 != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk4 = (u8) var_a0->unk1;
                var_a1->unk8 = (u8) var_a0->unk2;
                var_a1->unkC = (u8) var_a0->unk3;
                var_a1->unk10 = (u8) var_a0->unk4;
                var_a1->unk14 = (u8) var_a0->unk5;
                var_a4 -= 1;
                var_a1->unk18 = (u8) var_a0->unk6;
                var_a2 -= 8;
                var_a1 += 0x20;
                temp_t0 = var_a0->unk7;
                var_a0 += 8;
                var_a1->unk-4 = temp_t0;
            } while (var_a4 != 0);
        }
        if ((temp_a5 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk4 = (u8) var_a0->unk1;
                var_a1->unk8 = (u8) var_a0->unk2;
                var_a1->unkC = (u8) var_a0->unk3;
                var_a1->unk10 = (u8) var_a0->unk4;
                var_a1->unk14 = (u8) var_a0->unk5;
                var_a1->unk18 = (u8) var_a0->unk6;
                var_a1->unk1C = (u8) var_a0->unk7;
                var_a1->unk20 = (u8) var_a0->unk8;
                var_a1->unk24 = (u8) var_a0->unk9;
                var_a1->unk28 = (u8) var_a0->unkA;
                var_a1->unk2C = (u8) var_a0->unkB;
                var_a1->unk30 = (u8) var_a0->unkC;
                var_a1->unk34 = (u8) var_a0->unkD;
                var_a1->unk38 = (u8) var_a0->unkE;
                var_a1->unk3C = (u8) var_a0->unkF;
                var_a1->unk40 = (u8) var_a0->unk10;
                var_a1->unk44 = (u8) var_a0->unk11;
                var_a1->unk48 = (u8) var_a0->unk12;
                var_a1->unk4C = (u8) var_a0->unk13;
                var_a1->unk50 = (u8) var_a0->unk14;
                var_a1->unk54 = (u8) var_a0->unk15;
                var_a1->unk58 = (u8) var_a0->unk16;
                var_a1->unk5C = (u8) var_a0->unk17;
                var_a1->unk60 = (u8) var_a0->unk18;
                var_a1->unk64 = (u8) var_a0->unk19;
                var_a1->unk68 = (u8) var_a0->unk1A;
                var_a1->unk6C = (u8) var_a0->unk1B;
                var_a1->unk70 = (u8) var_a0->unk1C;
                var_a1->unk74 = (u8) var_a0->unk1D;
                var_a2 -= 0x20;
                var_a1->unk78 = (u8) var_a0->unk1E;
                var_a1 += 0x80;
                temp_a3 = var_a0->unk1F;
                var_a0 += 0x20;
                var_a1->unk-4 = temp_a3;
            } while (var_a2 >= 9);
        }
    }
    if (var_a2 > 0) {
        temp_a5_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a4_2 = temp_a5_2 & 3;
        if (var_a4_2 != 0) {
            do {
                var_a4_2 -= 1;
                var_a2 -= 1;
                var_a1 += 4;
                temp_t1 = *var_a0;
                var_a0 += 1;
                var_a1->unk-4 = temp_t1;
            } while (var_a4_2 != 0);
        }
        if ((temp_a5_2 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk4 = (u8) var_a0->unk1;
                var_a2 -= 4;
                var_a1->unk8 = (u8) var_a0->unk2;
                var_a1 += 0x10;
                temp_t3 = var_a0->unk3;
                var_a0 += 4;
                var_a1->unk-4 = temp_t3;
            } while (var_a2 > 0);
        }
    }
}

void convertSZToStencilUbyte(u8 *arg0, void *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a4_2;
    u8 *var_a0;
    u8 temp_a3;
    u8 temp_t0;
    u8 temp_t1;
    u8 temp_t3;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        temp_a5 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
        var_a4 = temp_a5 & 3;
        if (var_a4 != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk1 = (u8) var_a0->unk4;
                var_a1->unk2 = (u8) var_a0->unk8;
                var_a1->unk3 = (u8) var_a0->unkC;
                var_a1->unk4 = (u8) var_a0->unk10;
                var_a1->unk5 = (u8) var_a0->unk14;
                var_a4 -= 1;
                var_a1->unk6 = (u8) var_a0->unk18;
                var_a2 -= 8;
                var_a1 += 8;
                temp_t0 = var_a0->unk1C;
                var_a0 += 0x20;
                var_a1->unk-1 = temp_t0;
            } while (var_a4 != 0);
        }
        if ((temp_a5 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk1 = (u8) var_a0->unk4;
                var_a1->unk2 = (u8) var_a0->unk8;
                var_a1->unk3 = (u8) var_a0->unkC;
                var_a1->unk4 = (u8) var_a0->unk10;
                var_a1->unk5 = (u8) var_a0->unk14;
                var_a1->unk6 = (u8) var_a0->unk18;
                var_a1->unk7 = (u8) var_a0->unk1C;
                var_a1->unk8 = (u8) var_a0->unk20;
                var_a1->unk9 = (u8) var_a0->unk24;
                var_a1->unkA = (u8) var_a0->unk28;
                var_a1->unkB = (u8) var_a0->unk2C;
                var_a1->unkC = (u8) var_a0->unk30;
                var_a1->unkD = (u8) var_a0->unk34;
                var_a1->unkE = (u8) var_a0->unk38;
                var_a1->unkF = (u8) var_a0->unk3C;
                var_a1->unk10 = (u8) var_a0->unk40;
                var_a1->unk11 = (u8) var_a0->unk44;
                var_a1->unk12 = (u8) var_a0->unk48;
                var_a1->unk13 = (u8) var_a0->unk4C;
                var_a1->unk14 = (u8) var_a0->unk50;
                var_a1->unk15 = (u8) var_a0->unk54;
                var_a1->unk16 = (u8) var_a0->unk58;
                var_a1->unk17 = (u8) var_a0->unk5C;
                var_a1->unk18 = (u8) var_a0->unk60;
                var_a1->unk19 = (u8) var_a0->unk64;
                var_a1->unk1A = (u8) var_a0->unk68;
                var_a1->unk1B = (u8) var_a0->unk6C;
                var_a1->unk1C = (u8) var_a0->unk70;
                var_a1->unk1D = (u8) var_a0->unk74;
                var_a2 -= 0x20;
                var_a1->unk1E = (u8) var_a0->unk78;
                var_a1 += 0x20;
                temp_a3 = var_a0->unk7C;
                var_a0 += 0x80;
                var_a1->unk-1 = temp_a3;
            } while (var_a2 >= 9);
        }
    }
    if (var_a2 > 0) {
        temp_a5_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a4_2 = temp_a5_2 & 3;
        if (var_a4_2 != 0) {
            do {
                var_a4_2 -= 1;
                var_a2 -= 1;
                var_a1 += 1;
                temp_t1 = *var_a0;
                var_a0 += 4;
                var_a1->unk-1 = temp_t1;
            } while (var_a4_2 != 0);
        }
        if ((temp_a5_2 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk0;
                var_a1->unk1 = (u8) var_a0->unk4;
                var_a2 -= 4;
                var_a1->unk2 = (u8) var_a0->unk8;
                var_a1 += 4;
                temp_t3 = var_a0->unkC;
                var_a0 += 0x10;
                var_a1->unk-1 = temp_t3;
            } while (var_a2 > 0);
        }
    }
}

void convertStencilUshortToSZ(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a4_2;
    u8 temp_a3;
    u8 temp_t0;
    u8 temp_t1;
    u8 temp_t3;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        temp_a5 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
        var_a4 = temp_a5 & 3;
        if (var_a4 != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk1;
                var_a1->unk4 = (u8) var_a0->unk3;
                var_a1->unk8 = (u8) var_a0->unk5;
                var_a1->unkC = (u8) var_a0->unk7;
                var_a1->unk10 = (u8) var_a0->unk9;
                var_a1->unk14 = (u8) var_a0->unkB;
                var_a4 -= 1;
                var_a1->unk18 = (u8) var_a0->unkD;
                var_a2 -= 8;
                var_a1 += 0x20;
                temp_t0 = var_a0->unkF;
                var_a0 += 0x10;
                var_a1->unk-4 = temp_t0;
            } while (var_a4 != 0);
        }
        if ((temp_a5 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk1;
                var_a1->unk4 = (u8) var_a0->unk3;
                var_a1->unk8 = (u8) var_a0->unk5;
                var_a1->unkC = (u8) var_a0->unk7;
                var_a1->unk10 = (u8) var_a0->unk9;
                var_a1->unk14 = (u8) var_a0->unkB;
                var_a1->unk18 = (u8) var_a0->unkD;
                var_a1->unk1C = (u8) var_a0->unkF;
                var_a1->unk20 = (u8) var_a0->unk11;
                var_a1->unk24 = (u8) var_a0->unk13;
                var_a1->unk28 = (u8) var_a0->unk15;
                var_a1->unk2C = (u8) var_a0->unk17;
                var_a1->unk30 = (u8) var_a0->unk19;
                var_a1->unk34 = (u8) var_a0->unk1B;
                var_a1->unk38 = (u8) var_a0->unk1D;
                var_a1->unk3C = (u8) var_a0->unk1F;
                var_a1->unk40 = (u8) var_a0->unk21;
                var_a1->unk44 = (u8) var_a0->unk23;
                var_a1->unk48 = (u8) var_a0->unk25;
                var_a1->unk4C = (u8) var_a0->unk27;
                var_a1->unk50 = (u8) var_a0->unk29;
                var_a1->unk54 = (u8) var_a0->unk2B;
                var_a1->unk58 = (u8) var_a0->unk2D;
                var_a1->unk5C = (u8) var_a0->unk2F;
                var_a1->unk60 = (u8) var_a0->unk31;
                var_a1->unk64 = (u8) var_a0->unk33;
                var_a1->unk68 = (u8) var_a0->unk35;
                var_a1->unk6C = (u8) var_a0->unk37;
                var_a1->unk70 = (u8) var_a0->unk39;
                var_a1->unk74 = (u8) var_a0->unk3B;
                var_a2 -= 0x20;
                var_a1->unk78 = (u8) var_a0->unk3D;
                var_a1 += 0x80;
                temp_a3 = var_a0->unk3F;
                var_a0 += 0x40;
                var_a1->unk-4 = temp_a3;
            } while (var_a2 >= 9);
        }
    }
    if (var_a2 > 0) {
        temp_a5_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a4_2 = temp_a5_2 & 3;
        if (var_a4_2 != 0) {
            do {
                var_a4_2 -= 1;
                var_a2 -= 1;
                var_a1 += 4;
                temp_t1 = var_a0->unk1;
                var_a0 += 2;
                var_a1->unk-4 = temp_t1;
            } while (var_a4_2 != 0);
        }
        if ((temp_a5_2 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk1;
                var_a1->unk4 = (u8) var_a0->unk3;
                var_a2 -= 4;
                var_a1->unk8 = (u8) var_a0->unk5;
                var_a1 += 0x10;
                temp_t3 = var_a0->unk7;
                var_a0 += 8;
                var_a1->unk-4 = temp_t3;
            } while (var_a2 > 0);
        }
    }
}

void convertStencilUintToSZ(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a4_2;
    u8 temp_a3;
    u8 temp_t0;
    u8 temp_t1;
    u8 temp_t3;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 9) {
        temp_a5 = (s32) ((var_a2 >= 1) ? (var_a2 - 1) : (var_a2 + 6)) >> 3;
        var_a4 = temp_a5 & 3;
        if (var_a4 != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk3;
                var_a1->unk4 = (u8) var_a0->unk7;
                var_a1->unk8 = (u8) var_a0->unkB;
                var_a1->unkC = (u8) var_a0->unkF;
                var_a1->unk10 = (u8) var_a0->unk13;
                var_a1->unk14 = (u8) var_a0->unk17;
                var_a4 -= 1;
                var_a1->unk18 = (u8) var_a0->unk1B;
                var_a2 -= 8;
                var_a1 += 0x20;
                temp_t0 = var_a0->unk1F;
                var_a0 += 0x20;
                var_a1->unk-4 = temp_t0;
            } while (var_a4 != 0);
        }
        if ((temp_a5 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk3;
                var_a1->unk4 = (u8) var_a0->unk7;
                var_a1->unk8 = (u8) var_a0->unkB;
                var_a1->unkC = (u8) var_a0->unkF;
                var_a1->unk10 = (u8) var_a0->unk13;
                var_a1->unk14 = (u8) var_a0->unk17;
                var_a1->unk18 = (u8) var_a0->unk1B;
                var_a1->unk1C = (u8) var_a0->unk1F;
                var_a1->unk20 = (u8) var_a0->unk23;
                var_a1->unk24 = (u8) var_a0->unk27;
                var_a1->unk28 = (u8) var_a0->unk2B;
                var_a1->unk2C = (u8) var_a0->unk2F;
                var_a1->unk30 = (u8) var_a0->unk33;
                var_a1->unk34 = (u8) var_a0->unk37;
                var_a1->unk38 = (u8) var_a0->unk3B;
                var_a1->unk3C = (u8) var_a0->unk3F;
                var_a1->unk40 = (u8) var_a0->unk43;
                var_a1->unk44 = (u8) var_a0->unk47;
                var_a1->unk48 = (u8) var_a0->unk4B;
                var_a1->unk4C = (u8) var_a0->unk4F;
                var_a1->unk50 = (u8) var_a0->unk53;
                var_a1->unk54 = (u8) var_a0->unk57;
                var_a1->unk58 = (u8) var_a0->unk5B;
                var_a1->unk5C = (u8) var_a0->unk5F;
                var_a1->unk60 = (u8) var_a0->unk63;
                var_a1->unk64 = (u8) var_a0->unk67;
                var_a1->unk68 = (u8) var_a0->unk6B;
                var_a1->unk6C = (u8) var_a0->unk6F;
                var_a1->unk70 = (u8) var_a0->unk73;
                var_a1->unk74 = (u8) var_a0->unk77;
                var_a2 -= 0x20;
                var_a1->unk78 = (u8) var_a0->unk7B;
                var_a1 += 0x80;
                temp_a3 = var_a0->unk7F;
                var_a0 += 0x80;
                var_a1->unk-4 = temp_a3;
            } while (var_a2 >= 9);
        }
    }
    if (var_a2 > 0) {
        temp_a5_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a4_2 = temp_a5_2 & 3;
        if (var_a4_2 != 0) {
            do {
                var_a4_2 -= 1;
                var_a2 -= 1;
                var_a1 += 4;
                temp_t1 = var_a0->unk3;
                var_a0 += 4;
                var_a1->unk-4 = temp_t1;
            } while (var_a4_2 != 0);
        }
        if ((temp_a5_2 >> 2) != 0) {
            do {
                var_a1->unk0 = (u8) var_a0->unk3;
                var_a1->unk4 = (u8) var_a0->unk7;
                var_a2 -= 4;
                var_a1->unk8 = (u8) var_a0->unkB;
                var_a1 += 0x10;
                temp_t3 = var_a0->unkF;
                var_a0 += 0x10;
                var_a1->unk-4 = temp_t3;
            } while (var_a2 > 0);
        }
    }
}

void convertRGBA5551To1555(u16 *arg0, void *arg1, s32 arg2) {
    s32 temp_a3_2;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a2;
    u16 *var_a4;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a1;
    u16 temp_a3;
    u16 temp_a6;
    u16 temp_a7;
    u16 temp_a7_2;
    u16 temp_at;
    u16 temp_t0;
    u16 temp_t1;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t3;
    u16 temp_t8;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v1;
    void *var_a5;

    var_a2 = arg2;
    var_a4 = arg0;
    var_a5 = arg1;
    if (var_a2 >= 9) {
        do {
            temp_a0 = var_a4->unk0;
            var_a5->unk0 = (s16) (((s32) temp_a0 >> 1) | (temp_a0 << 0xF));
            temp_v0 = var_a4->unk2;
            var_a5->unk2 = (s16) (((s32) temp_v0 >> 1) | (temp_v0 << 0xF));
            temp_t9 = var_a4->unk4;
            var_a5->unk4 = (s16) (((s32) temp_t9 >> 1) | (temp_t9 << 0xF));
            temp_t3 = var_a4->unk6;
            var_a5->unk6 = (s16) (((s32) temp_t3 >> 1) | (temp_t3 << 0xF));
            temp_t1 = var_a4->unk8;
            var_a5->unk8 = (s16) (((s32) temp_t1 >> 1) | (temp_t1 << 0xF));
            temp_a7 = var_a4->unkA;
            var_a5->unkA = (s16) (((s32) temp_a7 >> 1) | (temp_a7 << 0xF));
            temp_a3 = var_a4->unkC;
            var_a5->unkC = (s16) (((s32) temp_a3 >> 1) | (temp_a3 << 0xF));
            temp_a0_2 = var_a4->unkE;
            var_a5 += 0x10;
            var_a2 -= 8;
            temp_v0_2 = (s32) temp_a0_2 >> 1;
            var_a4 += 0x10;
            var_a5->unk-2 = (s16) (temp_v0_2 | (temp_a0_2 << 0xF));
        } while (var_a2 >= 9);
    }
    if (var_a2 > 0) {
        temp_a3_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a1 = temp_a3_2 & 7;
        if (var_a1 != 0) {
            do {
                temp_a7_2 = *var_a4;
                var_a2 -= 1;
                var_a4 += 2;
                var_a1 -= 1;
                var_a5 += 2;
                var_a5->unk-2 = (s16) (((s32) temp_a7_2 >> 1) | (temp_a7_2 << 0xF));
            } while (var_a1 != 0);
        }
        if ((temp_a3_2 >> 3) != 0) {
            do {
                temp_t2 = var_a4->unk0;
                var_a5->unk0 = (s16) (((s32) temp_t2 >> 1) | (temp_t2 << 0xF));
                temp_t0 = var_a4->unk2;
                var_a5->unk2 = (s16) (((s32) temp_t0 >> 1) | (temp_t0 << 0xF));
                temp_a6 = var_a4->unk4;
                var_a5->unk4 = (s16) (((s32) temp_a6 >> 1) | (temp_a6 << 0xF));
                temp_a1 = var_a4->unk6;
                var_a5->unk6 = (s16) (((s32) temp_a1 >> 1) | (temp_a1 << 0xF));
                temp_v1 = var_a4->unk8;
                var_a5->unk8 = (s16) (((s32) temp_v1 >> 1) | (temp_v1 << 0xF));
                temp_at = var_a4->unkA;
                var_a5->unkA = (s16) (((s32) temp_at >> 1) | (temp_at << 0xF));
                temp_t8 = var_a4->unkC;
                var_a5->unkC = (s16) (((s32) temp_t8 >> 1) | (temp_t8 << 0xF));
                temp_t2_2 = var_a4->unkE;
                var_a4 += 0x10;
                var_a2 -= 8;
                var_a5 += 0x10;
                var_a5->unk-2 = (s16) (((s32) temp_t2_2 >> 1) | (temp_t2_2 << 0xF));
            } while (var_a2 > 0);
        }
    }
}

void convertRGBA1555To5551(u16 *arg0, void *arg1, s32 arg2) {
    s32 temp_a3_2;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a2;
    u16 *var_a4;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a1;
    u16 temp_a3;
    u16 temp_a6;
    u16 temp_a7;
    u16 temp_a7_2;
    u16 temp_at;
    u16 temp_t0;
    u16 temp_t1;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t3;
    u16 temp_t8;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v1;
    void *var_a5;

    var_a2 = arg2;
    var_a4 = arg0;
    var_a5 = arg1;
    if (var_a2 >= 9) {
        do {
            temp_a0 = var_a4->unk0;
            var_a5->unk0 = (s16) (((s32) temp_a0 >> 0xF) | (temp_a0 * 2));
            temp_v0 = var_a4->unk2;
            var_a5->unk2 = (s16) (((s32) temp_v0 >> 0xF) | (temp_v0 * 2));
            temp_t9 = var_a4->unk4;
            var_a5->unk4 = (s16) (((s32) temp_t9 >> 0xF) | (temp_t9 * 2));
            temp_t3 = var_a4->unk6;
            var_a5->unk6 = (s16) (((s32) temp_t3 >> 0xF) | (temp_t3 * 2));
            temp_t1 = var_a4->unk8;
            var_a5->unk8 = (s16) (((s32) temp_t1 >> 0xF) | (temp_t1 * 2));
            temp_a7 = var_a4->unkA;
            var_a5->unkA = (s16) (((s32) temp_a7 >> 0xF) | (temp_a7 * 2));
            temp_a3 = var_a4->unkC;
            var_a5->unkC = (s16) (((s32) temp_a3 >> 0xF) | (temp_a3 * 2));
            temp_a0_2 = var_a4->unkE;
            var_a5 += 0x10;
            var_a2 -= 8;
            temp_v0_2 = (s32) temp_a0_2 >> 0xF;
            var_a4 += 0x10;
            var_a5->unk-2 = (s16) (temp_v0_2 | (temp_a0_2 * 2));
        } while (var_a2 >= 9);
    }
    if (var_a2 > 0) {
        temp_a3_2 = (var_a2 >= 1) ? var_a2 : 1;
        var_a1 = temp_a3_2 & 7;
        if (var_a1 != 0) {
            do {
                temp_a7_2 = *var_a4;
                var_a2 -= 1;
                var_a4 += 2;
                var_a1 -= 1;
                var_a5 += 2;
                var_a5->unk-2 = (s16) (((s32) temp_a7_2 >> 0xF) | (temp_a7_2 * 2));
            } while (var_a1 != 0);
        }
        if ((temp_a3_2 >> 3) != 0) {
            do {
                temp_t2 = var_a4->unk0;
                var_a5->unk0 = (s16) (((s32) temp_t2 >> 0xF) | (temp_t2 * 2));
                temp_t0 = var_a4->unk2;
                var_a5->unk2 = (s16) (((s32) temp_t0 >> 0xF) | (temp_t0 * 2));
                temp_a6 = var_a4->unk4;
                var_a5->unk4 = (s16) (((s32) temp_a6 >> 0xF) | (temp_a6 * 2));
                temp_a1 = var_a4->unk6;
                var_a5->unk6 = (s16) (((s32) temp_a1 >> 0xF) | (temp_a1 * 2));
                temp_v1 = var_a4->unk8;
                var_a5->unk8 = (s16) (((s32) temp_v1 >> 0xF) | (temp_v1 * 2));
                temp_at = var_a4->unkA;
                var_a5->unkA = (s16) (((s32) temp_at >> 0xF) | (temp_at * 2));
                temp_t8 = var_a4->unkC;
                var_a5->unkC = (s16) (((s32) temp_t8 >> 0xF) | (temp_t8 * 2));
                temp_t2_2 = var_a4->unkE;
                var_a4 += 0x10;
                var_a2 -= 8;
                var_a5 += 0x10;
                var_a5->unk-2 = (s16) (((s32) temp_t2_2 >> 0xF) | (temp_t2_2 * 2));
            } while (var_a2 > 0);
        }
    }
}

void __GL_CRM_SCALE_PIXEL_SPAN(s64 arg0, u8 *arg1, s64 (*arg2)(?, s32 *), s64 arg3, s64 arg4) {
    s32 temp_a5;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a6;
    s32 var_a6_2;
    s64 (*var_a2)(?, s32 *);
    s64 var_a4;
    u16 temp_t0;
    u16 temp_t2;
    u16 temp_t3;
    u8 *var_a1;
    u8 temp_a5_2;
    u8 temp_t0_2;
    u8 temp_t0_3;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a4 = arg4;
    if (arg3 != 1) {
        if (arg3 != 2) {
            if (arg3 == 4) {
                if ((var_a4 >> 3) > 0) {
                    do {
                        var_a1->unk0 = (s32) *(arg0 + (var_a2->unk0 * 4));
                        var_a1->unk4 = (s32) *(arg0 + (var_a2->unk4 * 4));
                        var_a1->unk8 = (s32) *(arg0 + (var_a2->unk8 * 4));
                        var_a1->unkC = (s32) *(arg0 + (var_a2->unkC * 4));
                        var_a1->unk10 = (s32) *(arg0 + (var_a2->unk10 * 4));
                        var_a1->unk14 = (s32) *(arg0 + (var_a2->unk14 * 4));
                        var_a1->unk18 = (s32) *(arg0 + (var_a2->unk18 * 4));
                        var_a4 -= 8;
                        var_a1 += 0x20;
                        temp_a5 = *(arg0 + (var_a2->unk1C * 4));
                        var_a2 += 0x20;
                        var_a1->unk-4 = temp_a5;
                    } while ((var_a4 >> 3) > 0);
                }
                var_a4_2 = var_a4 - 1;
                var_a6 = var_a4 & 3;
                if (var_a4_2 != -1) {
                    if (var_a6 != 0) {
                        do {
                            var_a6 -= 1;
                            var_a4_2 -= 1;
                            var_a1 += 4;
                            temp_t9 = *(arg0 + (*var_a2 * 4));
                            var_a2 += 4;
                            var_a1->unk-4 = temp_t9;
                        } while (var_a6 != 0);
                    }
                    if ((var_a4 >> 2) != 0) {
                        do {
                            var_a1->unk0 = (s32) *(arg0 + (var_a2->unk0 * 4));
                            var_a1->unk4 = (s32) *(arg0 + (var_a2->unk4 * 4));
                            var_a1->unk8 = (s32) *(arg0 + (var_a2->unk8 * 4));
                            var_a4_2 -= 4;
                            var_a1 += 0x10;
                            temp_v0 = *(arg0 + (var_a2->unkC * 4));
                            var_a2 += 0x10;
                            var_a1->unk-4 = temp_v0;
                        } while (var_a4_2 != -1);
                    }
                }
            }
        } else {
            if ((var_a4 >> 3) > 0) {
                do {
                    var_a1->unk0 = (u16) *(arg0 + (var_a2->unk0 * 2));
                    var_a1->unk2 = (u16) *(arg0 + (var_a2->unk4 * 2));
                    var_a1->unk4 = (u16) *(arg0 + (var_a2->unk8 * 2));
                    var_a1->unk6 = (u16) *(arg0 + (var_a2->unkC * 2));
                    var_a1->unk8 = (u16) *(arg0 + (var_a2->unk10 * 2));
                    var_a1->unkA = (u16) *(arg0 + (var_a2->unk14 * 2));
                    var_a1->unkC = (u16) *(arg0 + (var_a2->unk18 * 2));
                    var_a4 -= 8;
                    var_a1 += 0x10;
                    temp_t3 = *(arg0 + (var_a2->unk1C * 2));
                    var_a2 += 0x20;
                    var_a1->unk-2 = temp_t3;
                } while ((var_a4 >> 3) > 0);
            }
            var_a4_3 = var_a4 - 1;
            var_a6_2 = var_a4 & 3;
            if (var_a4_3 != -1) {
                if (var_a6_2 != 0) {
                    do {
                        var_a6_2 -= 1;
                        var_a4_3 -= 1;
                        var_a1 += 2;
                        temp_t0 = *(arg0 + (*var_a2 * 2));
                        var_a2 += 4;
                        var_a1->unk-2 = temp_t0;
                    } while (var_a6_2 != 0);
                }
                if ((var_a4 >> 2) != 0) {
                    do {
                        var_a1->unk0 = (u16) *(arg0 + (var_a2->unk0 * 2));
                        var_a1->unk2 = (u16) *(arg0 + (var_a2->unk4 * 2));
                        var_a1->unk4 = (u16) *(arg0 + (var_a2->unk8 * 2));
                        var_a4_3 -= 4;
                        var_a1 += 8;
                        temp_t2 = *(arg0 + (var_a2->unkC * 2));
                        var_a2 += 0x10;
                        var_a1->unk-2 = temp_t2;
                    } while (var_a4_3 != -1);
                }
            }
        }
    } else {
        if ((var_a4 >> 3) > 0) {
            do {
                var_a1->unk0 = *(var_a2->unk0 + arg0);
                var_a1->unk1 = (u8) *(var_a2->unk4 + arg0);
                var_a1->unk2 = (u8) *(var_a2->unk8 + arg0);
                var_a1->unk3 = (u8) *(var_a2->unkC + arg0);
                var_a1->unk4 = (u8) *(var_a2->unk10 + arg0);
                var_a1->unk5 = (u8) *(var_a2->unk14 + arg0);
                var_a1->unk6 = (u8) *(var_a2->unk18 + arg0);
                var_a4 -= 8;
                var_a1 += 8;
                temp_t0_2 = *(var_a2->unk1C + arg0);
                var_a2 += 0x20;
                var_a1->unk-1 = temp_t0_2;
            } while ((var_a4 >> 3) > 0);
        }
        var_a4_4 = var_a4 - 1;
        if (var_a4_4 != -1) {
            if (var_a4 & 1) {
                var_a1 += 1;
                temp_a5_2 = *(*var_a2 + arg0);
                var_a4_4 -= 1;
                var_a2 += 4;
                var_a1->unk-1 = temp_a5_2;
            }
            if ((var_a4 >> 1) != 0) {
                do {
                    *var_a1 = *(var_a2->unk0 + arg0);
                    var_a4_4 -= 2;
                    var_a1 += 2;
                    temp_t0_3 = *(var_a2->unk4 + arg0);
                    var_a2 += 8;
                    var_a1->unk-1 = temp_t0_3;
                } while (var_a4_4 != -1);
            }
        }
    }
}
