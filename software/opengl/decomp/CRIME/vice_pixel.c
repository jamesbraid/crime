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
Error occurred while processing instruction: bgez $a6, .L0da3da7c

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
Error occurred while processing instruction: bgez $v1, .L0da411b8

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
Error occurred while processing instruction: bgez $a0, .L0da4116c

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
Error occurred while processing instruction: bgez $a2, .L0da411b0

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
Error occurred while processing instruction: bgez $t0, .L0da414d8

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
Error occurred while processing instruction: bgez $a6, .L0da3da7c

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
Error occurred while processing instruction: bgez $v1, .L0da411b8

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
Error occurred while processing instruction: bgez $a0, .L0da4116c

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
Error occurred while processing instruction: bgez $a2, .L0da411b0

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
Error occurred while processing instruction: bgez $t0, .L0da414d8

/* Warning: missing "jr $ra" in last block of gfxmapfile (.L0da3e378). */

? __glCrmFlushAndConfirm(s32, s64, s64, ?, ?);      /* extern */
s32 __glElementsPerGroup(s32, s32, s32, s32, s32, s32, u8, s32); /* extern */
s32 __glInitSPBuff(void *, s32, s32, s32, s64, s32, s32, s32); /* extern */
s32 __viceLoadMNMCode(void **);                     /* extern */
? bcopy(s32, s32, s64, s32, void *, s32, s32);      /* extern */
? bzero(void *, ?, void *);                         /* extern */
? cacheflush(s64, ?, ?);                            /* extern */
? close(s64);                                       /* extern */
s32 dmBufferAllocate(s32, void *);                  /* extern */
s32 dmBufferCreatePool(s32, void *);                /* extern */
? dmBufferDestroyPool(s32);                         /* extern */
? dmBufferFree(s32, s32);                           /* extern */
s32 dmBufferMapData(s32, void *, ?, void *);        /* extern */
s32 dmBufferSetPoolDefaults(s32, s64, s32, ?, ?, ?, void *, u8); /* extern */
? dmParamsCreate(void *);                           /* extern */
? dmParamsDestroy(s32);                             /* extern */
? exit(?);                                          /* extern */
s64 getenv(void *, s64);                            /* extern */
s32 mmap(?, s32, ?, ?, s64, ?);                     /* extern */
? munmap(s64, s32);                                 /* extern */
s64 open(s64, ?);                                   /* extern */
? perror(s64);                                      /* extern */
? returnHistogramMinMax(void *, s64, s32);          /* extern */
s32 stat(s64, void *);                              /* extern */
? strcpy(void *, s64);                              /* extern */
s32 strlen(void *);                                 /* extern */
s32 viceColorMatrix(void **, s32);                  /* extern */
s32 viceColorTable(void **, void *);                /* extern */
s32 viceConvolve(void **, void *, s32, s32, s32, s32); /* extern */
? viceHistogram(void **, void *);                   /* extern */
? vice_close(s32);                                  /* extern */
? vice_dmbuf_requirements(s32);                     /* extern */
s32 vice_dmbuf_settlb(s32, s64, s32, s32, s32, s64, s32, void *); /* extern */
void *vice_etc_dramp(s32, ?, s32, s32, s32);        /* extern */
s32 vice_load_msp_code(s32, void *, void *, ?);     /* extern */
? vice_loadmspcode(s32, s64, void *, s32);          /* extern */
? vice_msp_code_to_etc(s32, ?, ?, s32, ?, ? *, void *, void *); /* extern */
s32 vice_open_and_setetc(void *);                   /* extern */
s32 vice_put(s32, s64);                             /* extern */
s32 vice_put_vaddr(s32, s64, ?, s32, s64, s64, ?, ?); /* extern */
s32 vice_sequence(s32, s64);                        /* extern */
void ScaleInRange(void **arg0, f32 *arg1, f32, f32); /* static */
s32 __viceSetHCoef(void *arg0, void *arg1, s64 arg2); /* static */
void viceCoefFmt(void **arg0, s32 arg1);            /* static */
s32 viceLateLumaConvert(void *arg0, void *arg1, s64 arg2); /* static */
s32 viceRGBtoRGBA(void *arg0, void *arg1, s32 arg2, s32 arg3); /* static */
s32 viceSetIter(void *arg0, void *arg1, s32 *arg2); /* static */
void *vice_gfxfile(void *arg0, s32 *, s32, void *, void *, void *, void *, void *); /* static */
extern ? sub_0da40000;
extern ? sub_0da60000;

s32 viceInitDev(void *arg0) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;

    if (arg0->unk7F38 >= 0) {
        goto block_1;
    }
    temp_v0 = vice_open_and_setetc(&sub_0da40000 + 0x2628);
    arg0->unk7F38 = temp_v0;
    if (temp_v0 < 0) {
        return 0;
    }
block_1:
    temp_v0_2 = vice_open_and_setetc(&sub_0da40000 + 0x2628);
    arg0->unk7F3C = temp_v0_2;
    if (temp_v0_2 >= 0) {
        saved_reg_gp->unk-5750 = (s32) (vice_load_msp_code(arg0->unk7F3C, vice_gfxfile(&sub_0da40000 + 0x2638), arg0 + 0x7FCC, 0) >= 0);
    } else {
        saved_reg_gp->unk-5750 = 0;
    }
    temp_v0_3 = vice_open_and_setetc(&sub_0da40000 + 0x2628);
    arg0->unk7F40 = temp_v0_3;
    if (temp_v0_3 >= 0) {
        saved_reg_gp->unk-574C = (s32) (vice_load_msp_code(arg0->unk7F40, vice_gfxfile(&sub_0da40000 + 0x2648), arg0 + 0x8024, 0) >= 0);
    } else {
        saved_reg_gp->unk-574C = 0;
    }
    arg0->unk7FC8 = 0xC;
    arg0->unk7FC4 = 0x8000;
    arg0->unk7F9C = 1;
    arg0->unk7F88 = 0;
    arg0->unk7F84 = -1;
    arg0->unk7F70 = -1;
    arg0->unk7F74 = -1;
    arg0->unk7F68 = -1;
    arg0->unk7F6C = -1;
    arg0->unk7F80 = 0;
    arg0->unk7F7C = 0;
    arg0->unk7F78 = 0;
    return 1;
}

void *vice_gfxfile(s64 arg0) {
    s32 temp_a0;
    s32 temp_v0_2;
    s64 temp_v0;
    s64 var_a1;
    void *temp_a1;
    void *temp_gp;
    void *temp_s0;
    void *var_a0;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x154FC;
    var_a1 = arg0;
    temp_s0 = &sub_0da60000 + 0x498;
    if (sub_0da60000.unk498 != 0) {
        var_a0 = temp_gp->unk-5748 + temp_s0;
    } else {
        unksp10 = arg0;
        temp_v0 = getenv(&sub_0da40000 + 0x2658, var_a1);
        if (temp_v0 != 0) {
            strcpy(temp_s0, temp_v0);
        } else {
            temp_a1 = &sub_0da40000 + 0x2668;
            sub_0da60000.unk498 = (s64) sub_0da40000.unk2668;
            temp_s0->unk18 = (u8) temp_a1->unk18;
            temp_s0->unk10 = (s64) temp_a1->unk10;
            temp_s0->unk8 = (s64) temp_a1->unk8;
        }
        temp_v0_2 = strlen(temp_s0);
        var_a0 = temp_v0_2 + temp_s0;
        var_a1 = unksp10;
        if (var_a0->unk-1 != 0x2F) {
            temp_a0 = temp_v0_2 + 1;
            temp_gp->unk-5748 = temp_a0;
            var_a0 = temp_a0 + temp_s0;
            var_a0->unk-1 = 0x2F;
        } else {
            temp_gp->unk-5748 = temp_v0_2;
        }
    }
    strcpy(var_a0, var_a1);
    getenv(&sub_0da40000 + 0x2658);
    return temp_s0;
}

void viceFreeTiles(void *arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a2;

    temp_a2 = arg0->unk18;
    if (temp_a2 != 0) {
        dmBufferFree(temp_a2, temp_a2);
        arg0->unk18 = 0;
    }
    temp_a0 = arg0->unk1C;
    if (temp_a0 != 0) {
        dmBufferFree(temp_a0);
        arg0->unk1C = 0;
    }
    temp_a0_2 = arg0->unk20;
    if (temp_a0_2 != 0) {
        dmBufferFree(temp_a0_2);
        arg0->unk20 = 0;
    }
    temp_a0_3 = arg0->unkC;
    if (temp_a0_3 != 0) {
        dmBufferDestroyPool(temp_a0_3);
        arg0->unkC = 0;
    }
    temp_a0_4 = arg0->unk10;
    if (temp_a0_4 != 0) {
        dmBufferDestroyPool(temp_a0_4);
        arg0->unk10 = 0;
    }
    temp_a0_5 = arg0->unk14;
    if (temp_a0_5 != 0) {
        dmBufferDestroyPool(temp_a0_5);
        arg0->unk14 = 0;
    }
    temp_a0_6 = arg0->unk24;
    if (temp_a0_6 != 0) {
        dmParamsDestroy(temp_a0_6);
        arg0->unk24 = 0;
    }
    temp_a0_7 = arg0->unk28;
    if (temp_a0_7 != 0) {
        dmParamsDestroy(temp_a0_7);
        arg0->unk28 = 0;
    }
    temp_a0_8 = arg0->unk2C;
    if (temp_a0_8 != 0) {
        dmParamsDestroy(temp_a0_8);
        arg0->unk2C = 0;
    }
}

s32 viceAllocMem(void *arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a7;
    s32 var_a7;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_a6;

    sp10 = arg1;
    dmParamsCreate(arg0 + 0x7F64);
    if ((dmBufferSetPoolDefaults(arg0->unk7F64, 1, 0x10000, 0, 1) != 0) || (vice_dmbuf_requirements(arg0->unk7F64), (dmBufferCreatePool(arg0->unk7F64, arg0 + 0x7F4C) != 0)) || (dmBufferAllocate(arg0->unk7F4C, arg0 + 0x7F58) != 0)) {
        /* Duplicate return node #3. Try simplifying control flow for better match */
        vice_gfxfile(arg0 + 0x7F38);
        return 0;
    }
    arg0->unk7F80 = dmBufferMapData(arg0->unk7F58);
    dmParamsCreate(arg0 + 0x7F5C);
    dmParamsCreate(arg0 + 0x7F60);
    temp_a3 = sp10->unk18;
    temp_a2 = sp10->unk14;
    arg0->unk7F74 = temp_a3;
    temp_a4 = (s32) ((temp_a3 >= 0) ? temp_a3 : (temp_a3 + 0xFFFF)) >> 0x10;
    arg0->unk7F70 = temp_a2;
    arg0->unk7F6C = temp_a4;
    temp_a5 = (s32) ((temp_a2 >= 0) ? temp_a2 : (temp_a2 + 0xFFFF)) >> 0x10;
    arg0->unk7F68 = temp_a5;
    if (temp_a2 & 0xFFFF) {
        arg0->unk7F68 = (s32) (temp_a5 + 1);
    }
    var_a7 = temp_a3 & 0xFFFF;
    if (var_a7 != 0) {
        arg0->unk7F6C = (s32) (temp_a4 + 1);
    }
    temp_a6 = arg0->unk7D3C;
    sp8 = (s64) temp_a3;
    temp_a4_2 = temp_a6->unk0;
    if (temp_a2 == temp_a3) {
        if (temp_a4_2 != 4) {
            goto block_10;
        }
        temp_a3_2 = temp_a6->unk4;
        var_a7 = (s32) temp_a3_2->unk4;
        if (var_a7 != 0) {
            if (temp_a3_2->unk28 != 0x10) {
                if (temp_a3_2->unk2C == 0) {
                    goto block_14;
                }
                goto block_10;
            }
            sp0 = 1;
        } else {
block_10:
            temp_a3_3 = arg0->unk7D38;
            if (temp_a3_3->unk0 != 4) {
                goto block_11;
            }
            var_a7 = temp_a3_3->unk4;
            if (var_a7->unk4 != 0) {
                if (var_a7->unk28 != 0x10) {
                    if (var_a7->unk2C == 0) {
                        sp0 = 1;
                    } else {
block_11:
                        goto block_12;
                    }
                } else {
                    var_a7 = 1;
                    sp0 = 1;
                }
            } else {
block_12:
                sp0 = 2;
            }
        }
    } else {
block_14:
        sp0 = 1;
    }
    if ((temp_a4_2 != 4) || (temp_a3_4 = temp_a6->unk4, (temp_a3_4->unk4 == 0)) || ((temp_a3_4->unk28 != 0x10) && (temp_a3_4->unk2C != 0))) {
        if (dmBufferSetPoolDefaults(arg0->unk7F5C, sp0, temp_a2, 0, 1, 4, temp_a6, (u8) var_a7) == 0) {
            vice_dmbuf_requirements(arg0->unk7F5C);
            if ((dmBufferCreatePool(arg0->unk7F5C, arg0 + 0x7F44) == 0) && (dmBufferAllocate(arg0->unk7F44, arg0 + 0x7F50) == 0)) {
                arg0->unk7F78 = dmBufferMapData(arg0->unk7F50);
                goto block_24;
            }
        }
        /* Duplicate return node #3. Try simplifying control flow for better match */
        vice_gfxfile(arg0 + 0x7F38);
        return 0;
    }
    arg0->unk7F78 = 0;
block_24:
    temp_a3_5 = arg0->unk7D38;
    if (temp_a3_5->unk0 != 4) {
        goto block_25;
    }
    temp_a7 = temp_a3_5->unk4;
    if ((temp_a7->unk4 != 0) && ((temp_a7->unk28 == 0x10) || (temp_a7->unk2C == 0))) {
        arg0->unk7F7C = 0;
        /* Duplicate return node #28. Try simplifying control flow for better match */
        return 1;
    }
block_25:
    if (sp0 != 1) {
        if (sp0 != 2) {
            goto block_27;
        }
        if (dmBufferMapData(arg0->unk7F44, arg0 + 0x7F54, 2, temp_a3_5) != 0) {
            /* Duplicate return node #3. Try simplifying control flow for better match */
            vice_gfxfile(arg0 + 0x7F38);
            return 0;
        }
        goto block_27;
    }
    if (M2C_ERROR(/* Read from unset register $t9 */)(arg0->unk7F60, sp0, sp8, 0, 1, 4) == 0) {
        vice_dmbuf_requirements(arg0->unk7F60);
        if ((dmBufferCreatePool(arg0->unk7F60, arg0 + 0x7F48) == 0) && (dmBufferAllocate(arg0->unk7F48, arg0 + 0x7F54) == 0)) {
block_27:
            arg0->unk7F7C = dmBufferMapData(arg0->unk7F54);
            return 1;
        }
    }
    vice_gfxfile(arg0 + 0x7F38);
    return 0;
}

void viceCloseDev(void *arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;

    if (arg0 != NULL) {
        vice_gfxfile(arg0 + 0x7F38);
        temp_a0 = arg0->unk7F38;
        if (temp_a0 >= 0) {
            vice_close(temp_a0);
            arg0->unk7F38 = -1;
        }
        temp_a0_2 = arg0->unk7F3C;
        if (temp_a0_2 >= 0) {
            vice_close(temp_a0_2);
            arg0->unk7F3C = -1;
        }
        temp_a0_3 = arg0->unk7F40;
        if (temp_a0_3 >= 0) {
            vice_close(temp_a0_3);
            arg0->unk7F40 = -1;
        }
    }
}

s32 __vcopy(s32 arg0, s64 arg1, u32 arg2, void *arg3) {
    s64 sp28;
    s64 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_at;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_s1;
    s32 var_s3;
    s32 var_s6;
    s32 var_v0;
    s64 temp_a5;
    u32 temp_v0;
    u32 var_s0;
    u32 var_s5;
    void *temp_v0_2;

    var_s5 = arg2;
    var_s1 = arg0;
    if (((M2C_ERROR(/* Read from unset register $t9 */) + 0x14E8C)->unk-5750 != 0) && (arg2 >= 0x4000U)) {
        temp_a1 = arg2 > 0x30000U;
        var_s6 = ((temp_a1 == 0) ? 1U : ((u32) MULTU_HI(((u32) (arg2 + 0x2FFFF) >> 1), ((0xAAAA << 0x10) | 0xAAAB)) >> 0x10)) - 1;
        var_s0 = (temp_a1 == 0) ? var_s5 : 0x30000U;
        if (var_s6 != -1) {
            var_s3 = 0;
            sp28 = arg3 + 0x94;
            sp0 = arg1;
loop_8:
            temp_v0 = var_s5;
            temp_at = var_s0 < var_s5;
            var_s5 = (temp_at != 0) ? (var_s5 - var_s0) : 0U;
            var_s0 = (temp_at == 0) ? temp_v0 : var_s0;
            temp_v0_2 = vice_etc_dramp(arg3->unk4);
            temp_a4 = var_s0 + 0xFFF;
            temp_s7 = var_s1 & 0xFFF;
            temp_a2 = (s32) ((temp_a4 >= 0) ? temp_a4 : (var_s0 + 0x1FFE)) >> 0xC;
            temp_v0_2->unk0 = temp_a2;
            if ((temp_a2 << 0xC) < (temp_s7 + var_s0)) {
                temp_v0_2->unk0 = (s32) (temp_a2 + 1);
            }
            temp_a5 = var_s0 + 0xFFFF;
            temp_s8 = (s64) ((temp_a5 >= 0) ? temp_a5 : (temp_a5 + 0xFFFF)) >> 0x10;
            if (vice_dmbuf_settlb(arg3->unk4, 0x32, *sp0, var_s3, temp_s8, temp_a5) >= 0) {
                arg3->unkE4 = 0x10;
                arg3->unkD4 = 0;
                arg3->unkD0 = 0x54;
                arg3->unkCC = 0x8100;
                arg3->unkA4 = 1;
                arg3->unkE0 = var_s1;
                arg3->unkE8 = var_s0;
                arg3->unkDC = (s32) temp_v0_2->unk0;
                temp_v0_2->unkC = var_s0;
                temp_v0_2->unk8 = 0xB20000;
                temp_v0_2->unk4 = (s32) (temp_s7 + 0x800000);
                if (vice_put_vaddr(arg3->unk4, sp28) >= 0) {
                    var_s6 -= 1;
                    var_s1 += var_s0;
                    var_s3 += temp_s8;
                    var_v0 = 1;
                    if (var_s6 != -1) {
                        goto loop_8;
                    }
                } else {
                    var_v0 = 0;
                }
            } else {
                var_v0 = 0;
            }
        } else {
            var_v0 = 1;
        }
        return var_v0;
    }
    return 0;
}

s32 viceIterSize(s32 arg0, s32 *arg1, s32 *arg2, s32 arg3, s32 arg4) {
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a6;

    if ((arg0 != 0x1907) && (arg0 != 0x1908) && (arg0 != 0x8000) && (arg0 != 0x1909) && (arg0 != 0x190A)) {
        return 0;
    }
    var_a0_2 = *arg1;
    if (var_a0_2 >= 0x10) {
        var_a6 = *arg2;
        temp_t0 = var_a0_2 >> 0x1F;
        if (var_a6 >= 8) {
            temp_a7 = ((((var_a0_2 ^ temp_t0) - temp_t0) & 0xF) ^ temp_t0) - temp_t0;
            if (temp_a7 != 0) {
                var_a0_2 = (var_a0_2 - temp_a7) + 0x10;
                *arg1 = var_a0_2;
                var_a6 = *arg2;
            }
            temp_t0_2 = var_a6 >> 0x1F;
            temp_a7_2 = ((((var_a6 ^ temp_t0_2) - temp_t0_2) & 7) ^ temp_t0_2) - temp_t0_2;
            if (temp_a7_2 != 0) {
                var_a6 = (var_a6 - temp_a7_2) + 8;
                *arg2 = var_a6;
                var_a0_2 = *arg1;
            }
            temp_lo = var_a0_2 * arg4;
            if ((var_a6 * temp_lo) > 0x1E0000) {
                temp_t2 = (s32) ((f64) 0x1E0000 / (f64) temp_lo) & ~7;
                M2C_TRAP_IF(temp_lo == 0);
                M2C_TRAP_IF((temp_lo * (temp_t2 - arg3)) == 0);
                *arg2 = temp_t2;
                var_a0 = (s32) ((f64) (second half of f64) / (second half of f64));
            } else {
                var_a0 = 1;
            }
            return var_a0;
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x260, 0x264, 0x288, 0x28c, 0x290, 0x294, 0x298, 0x29c, 0x2a0, 0x2a4, 0x2a8, 0x2ac, 0x2b0, 0x2b4], gap at: 0x270. */
s32 viceDrawPixels(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
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
    s64 sp2D0;
    s64 sp2C8;
    s64 sp2C0;
    s64 sp2B8;
    s64 sp258;
    s64 sp248;
    s64 sp240;
    s64 sp238;
    s64 sp230;
    s64 sp228;
    s64 sp220;
    s32 sp21C;
    s32 sp214;
    s32 sp208;
    s32 sp204;
    s32 sp1F8;
    s32 sp160;
    s32 spF0;
    s32 spEC;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 spCC;
    f32 spC8;
    f32 spC4;
    s32 spB8;
    s32 spB4;
    s32 spAC;
    s32 spA8;
    f32 spA4;
    f32 spA0;
    s32 sp74;
    s32 sp6C;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp54;
    s32 sp50;
    s32 sp24;
    s32 sp1C;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_f11;
    s32 temp_f2;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_s6_2;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s5;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_s8;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_t2;
    s64 temp_v0_5;
    s64 temp_v1_3;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a5_2;
    s64 var_s8_2;
    u32 temp_a4_3;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_v1_2;
    void *var_a4_2;
    void *var_a7_2;
    void *var_a7_3;
    void *var_t0;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s3 = arg1->unkA8;
    spA8 = temp_s3;
    var_s5 = arg1->unkAC;
    spAC = var_s5;
    var_s6 = arg0->unk7DE4;
    sp2F8 = var_s6 & 0x30000;
    if (arg0->unk7E5C != NULL) {
        var_a6 = 4;
        sp64 = 4;
        var_a7 = 1;
        sp74 = 1;
        sp6C = 4;
        sp50 = 0x1908;
        var_a5 = arg1->unk24;
        sp24 = var_a5;
        var_a4 = arg1->unk1C;
        var_a3 = var_a4 * var_a5;
        sp1C = var_a4;
        sp14 = var_a3;
        temp_v0 = arg1->unk0;
        sp0 = temp_v0;
        var_a1 = 0x1907;
        sp4 = arg1->unk4;
        var_a2 = var_a3 * temp_s3;
        sp258 = var_a2;
        if (temp_v0 != 0x1907) {
            if (temp_v0 == 0x1909) {
                goto block_15;
            }
        } else {
            goto block_54;
        }
    } else {
        var_a1 = arg0->unkCBC;
        if (var_a1 > 0) {
            sp6C = 4;
            sp50 = 0x1908;
            temp_t0 = (s32) (arg0->unkCB8 + 7) >> 3;
            sp74 = temp_t0;
            sp64 = temp_t0 * 4;
            sp54 = arg1->unk54;
            var_a7 = arg1->unk24;
            sp24 = var_a7;
            var_a6 = arg1->unk1C;
            var_a5 = var_a6 * var_a7;
            sp1C = var_a6;
            sp14 = var_a5;
            temp_v0_2 = arg1->unk0;
            sp0 = temp_v0_2;
            var_a3 = 0x1907;
            var_a2 = (s64) arg1->unk4;
            sp4 = (s32) var_a2;
            var_a4 = var_a5 * temp_s3;
            sp258 = (s64) var_a4;
            if (temp_v0_2 != 0x1907) {
                if (temp_v0_2 == 0x1909) {
block_15:
                    var_s6 |= 0x200000;
                }
            } else {
block_54:
                var_s6 |= 0x80000;
            }
        } else {
            sp6C = 1;
            var_a1 = 0x1909;
            sp50 = 0x1909;
            temp_v1 = (s32) (arg0->unkCB8 + 7) >> 3;
            sp74 = temp_v1;
            sp64 = temp_v1;
            sp54 = arg1->unk54;
            temp_v0_3 = arg1->unk24;
            sp24 = temp_v0_3;
            temp_at = arg1->unk1C;
            temp_lo = temp_at * temp_v0_3;
            sp1C = temp_at;
            sp14 = temp_lo;
            sp0 = arg1->unk0;
            sp4 = arg1->unk4;
            sp258 = temp_lo * temp_s3;
        }
    }
    temp_t2 = var_s6 & 0x18;
    sp2F0 = temp_t2;
    if (temp_t2 != 0) {
        sp214 = arg0->unk2FC->unk40 - 1;
    } else {
        sp214 = 0;
    }
    if (arg0->unk7F38 >= 0) {
        goto block_6;
    }
    if (__glInitSPBuff(arg0, var_a1, (s32) var_a2, var_a3, (s64) var_a4, var_a5, var_a6, var_a7) != 0) {
block_6:
        if (viceSetIter(arg0, sp, &sp1F8) != 0) {
            sp21C = (sp21C != 0) ? 0 : sp21C;
            if (sp218 != 0) {
                var_s7 = arg1->unkC;
                if (var_s6 == 0x80000) {
                    if (arg1->unk10 == sp258) {
                        var_s4 = sp218 - 1;
                        if (sp218 > 0) {
                            var_s8 = sp218;
                            sp318 = 1;
loop_31:
                            temp_s2 = (var_s5 < sp208) ? var_s5 : sp208;
                            if (viceRGBtoRGBA(arg0, arg1, temp_s2, var_s7) != 0) {
                                var_v0_2 = 0;
                                if (sp318 != 0) {
                                    arg0->unk7E24 = (s32) ((-0x301 & ((-0xD & ((-0xF1 & arg0->unk7E24) | 0x20)) | 8)) | 0x200);
                                    sp4 = 0x1401;
                                    sp14 = sp64;
                                    spCC = arg1->unkCC;
                                    spD0 = arg1->unkD0;
                                    sp204 = temp_s3 * sp64;
                                    var_a7_2 = sp;
                                    var_a4_2 = arg1;
                                    if (arg0->unk7DD8 == 0) {
                                        if (arg0->unk7DCD != 0) {
                                            goto block_35;
                                        }
                                        if ((arg0->unk7E58 == 0) && (arg0->unk7DD1 == 0)) {

                                        } else {
block_35:
                                            spC4 = arg1->unkC4;
                                            spC8 = arg1->unkC8;
                                            spA0 = arg1->unkA0;
                                            spA4 = arg1->unkA4;
                                            spEC = arg1->unkEC;
                                            spF0 = arg1->unkF0;
                                            arg0->unk7E1C = 0;
                                            arg0->unk7E18 = 0;
                                        }
                                    } else {
                                        spC4 = arg1->unkC4;
                                        spC8 = arg1->unkC8;
                                        sp5C = arg1->unk5C;
                                        sp60 = arg1->unk60;
                                        temp_t9 = arg1->unk160;
                                        sp160 = temp_t9;
                                        if (temp_t9 > 0) {
loop_18:
                                            var_a7_2->unk168 = (s32) var_a4_2->unk168;
                                            temp_v0_4 = var_v0_2 + 1;
                                            if (temp_v0_4 < sp160) {
                                                var_a7_2->unk16C = (s32) var_a4_2->unk16C;
                                                var_v0_2 = temp_v0_4 + 1;
                                                var_a4_2 += 8;
                                                var_a7_2 += 8;
                                                if (var_v0_2 < sp160) {
                                                    goto loop_18;
                                                }
                                            }
                                        }
                                    }
                                    sp318 = 0;
                                }
                                temp_a5 = arg0->unk7F7C;
                                spAC = temp_s2;
                                spA8 = temp_s3;
                                sp10 = sp204;
                                sp8 = temp_a5;
                                spC = temp_a5;
                                if (arg0->unk7DCD != 0) {
                                    spD8 = (s32) ((f32) temp_s3 * arg0->unk7DF0);
                                    temp_f2 = (s32) ((f32) temp_s2 * arg0->unk7DF4);
                                    spDC = temp_f2;
                                    var_s6_2 = temp_f2;
                                } else {
                                    spDC = temp_s2;
                                    var_s6_2 = temp_s2;
                                    spD8 = temp_s3;
                                }
                                if (arg0->unk7DD1 != 0) {
                                    var_s6_2 *= 2;
                                    spDC = var_s6_2;
                                }
                                arg0->unk7E14 = temp_s2;
                                arg0->unk7E10 = temp_s3;
                                arg0->unk7E20 = spC;
                                if (viceSetIter(arg0, sp) != 0) {
                                    if ((arg0->unk7E5C != NULL) && (arg0->unk7DD8 == 0)) {
                                        viceRGBtoRGBA(arg0);
                                    }
                                    var_s8 -= 1;
                                    if (var_s4 != 0) {
                                        spD0 += (arg0->unk7DCC == 0) ? var_s6_2 : -var_s6_2;
                                        var_s5 -= sp208;
                                        var_s7 += arg1->unk10 * sp208;
                                    }
                                    var_s4 -= 1;
                                    if (var_s8 > 0) {
                                        goto loop_31;
                                    }
                                    goto block_46;
                                }
                                return 0;
                            }
                            return 0;
                        }
block_46:
                        var_v0 = 1;
                        goto block_47;
                    }
                    goto block_42;
                }
block_42:
                unksp268 = (s64) sp218;
                spAC = sp208;
                spA8 = sp1F8;
                if (vice_sequence(arg0->unk7F38, unksp268) >= 0) {
                    if (__viceSetHCoef(arg0, sp, (s64) var_s6) != 0) {
                        temp_v0_5 = vice_etc_dramp(arg0->unk7F38);
                        sp2D8 = temp_v0_5;
                        temp_v0_5->unk8 = 0xBE0000;
                        temp_v0_5->unk4 = 0xBE0400;
                        temp_v0_5->unk0 = (s32) (arg0->unk7F88 | 4);
                        temp_v1_2 = arg0->unk7F80;
                        sp228 = (s64) var_s6;
                        temp_v1_2->unk448 = 0xBE0800;
                        temp_v1_2->unk440 = 0xBE2000;
                        temp_v1_2->unk430 = 0xBE1000;
                        temp_v1_2->unk404 = 0x9E0000;
                        temp_v1_2->unk400 = 0x800000;
                        var_s4_2 = unksp268 - 1;
                        sp2C0 = (s64) (temp_v1_2 + 0x400);
                        var_s8_2 = unksp268;
                        if (unksp268 > 0) {
                            sp2C8 = 0;
                            sp318 = 1;
                            sp240 = (s64) (arg0 + 0x7F38);
                            sp238 = (s64) (arg0 + 0x7F50);
                            sp2B8 = (s64) (arg0 + 0x7F8C);
                            sp228 = (s64) var_s6;
                            sp2D0 = (s64) (arg0 + 0x10000);
                            sp248 = sp2F0 != 0;
loop_68:
                            temp_s6 = (var_s5 < sp208) ? var_s5 : sp208;
                            vice_dmbuf_settlb(arg0->unk7F38, 0x3E, arg0->unk7F58, 0, 1);
                            if (arg0->unk7DD8 != 0) {
                                temp_a7 = sp2D0->unk-7F04;
                                if (temp_a7 != NULL) {
                                    temp_t0_2 = temp_a7->unk24;
                                    sp310 = (s64) temp_t0_2;
                                    sp2E0 = (s64) temp_a7->unk1C;
                                    if (temp_t0_2 < 0x21) {
                                        vice_dmbuf_settlb(arg0->unk7F38, 0, (s32) sp2E0, 0, (s32) sp310);
                                        if ((sp2F0 != 0) && (sp310 != 0x1E) && (sp20C == (sp310 << 0x10))) {
                                            __glCrmFlushAndConfirm(arg0->unk7F38, sp310, sp2E0, 0, 1);
                                        }
                                        sp2C8 = 1;
                                        goto block_75;
                                    }
                                    var_v0 = 0;
                                    goto block_47;
                                }
                            }
                            temp_a4 = arg0->unk7F68;
                            sp320 = (s64) temp_a4;
                            vice_dmbuf_settlb(arg0->unk7F38, 0, arg0->unk7F50, 0, temp_a4);
                            if ((sp2F0 != 0) && (sp320 != 0x1E) && (sp20C == (sp320 << 0x10))) {
                                vice_dmbuf_settlb(arg0->unk7F38, sp320, arg0->unk7F50, 0, 1, sp2F0, 0x1E, (void *) sp320);
                            }
block_75:
                            if ((sp2F8 == 0) && (arg0->unk7E5C == NULL)) {
                                temp_a4_2 = *arg0->unk7D38;
                                if ((temp_a4_2 == 4) || (temp_a4_2 == 5)) {
                                    temp_a7_2 = sp2D0->unk-7F04;
                                    temp_a4_3 = temp_a7_2->unk24;
                                    temp_a6 = temp_a4_3 < 0x21U;
                                    if (temp_a6 != 0) {
                                        vice_dmbuf_settlb(arg0->unk7F38, 0x1E, temp_a7_2->unk1C, 0, (s32) temp_a4_3, 5, temp_a6, temp_a7_2);
                                        goto block_56;
                                    }
                                    var_v0 = 0;
                                    goto block_47;
                                }
                                var_v0 = 0;
                                goto block_47;
                            }
                            vice_dmbuf_settlb(arg0->unk7F38, 0x1E, arg0->unk7F54, 0, arg0->unk7F6C, 5);
block_56:
                            if (sp2C8 != 0) {
                                goto block_57;
                            }
                            temp_a4_4 = arg1->unk10;
                            if ((sp200 != temp_a4_4) || (temp_a4_4 != (arg1->unk24 * (arg1->unk20 * arg1->unkA8)))) {
                                sp308 = (s64) var_s7;
                                sp300 = (s64) arg0->unk7F78;
                                if (temp_s6 > 0) {
                                    sp2E8 = 0;
                                    sp220 = arg1->unk14 * temp_s3;
                                    do {
                                        bcopy((s32) sp308, (s32) sp300, sp220);
                                        temp_v1_3 = sp2E8 + 1;
                                        sp2E8 = temp_v1_3;
                                        sp300 += sp200;
                                        sp308 += arg1->unk10;
                                    } while (temp_s6 != temp_v1_3);
                                }
                                goto block_57;
                            }
                            var_a1_2 = temp_s6 + 7;
                            if (__vcopy(var_s7, sp238, temp_a4_4 * temp_s6, (void *) sp240, temp_a4_4) == 0) {
                                temp_a3 = arg1->unk10;
                                bcopy(var_s7, arg0->unk7F78, temp_a3 * temp_s6, temp_a3);
block_57:
                                var_a1_2 = temp_s6 + 7;
                            }
                            sp2C0->unk26 = (s16) ((s32) ((var_a1_2 >= 0) ? var_a1_2 : (temp_s6 + 0xE)) >> 3);
                            if (var_s4_2 == 0) {
                                *sp2D8 = (s32) (*sp2D8 | 8);
                            }
                            cacheflush(sp2D8, 0x10, 3);
                            var_a2_2 = sp2F8;
                            if (vice_put(arg0->unk7F38, sp2B8) == 0) {
                                if (var_a2_2 != 0) {
                                    goto block_61;
                                }
                                var_a5_2 = sp318;
                                if (arg0->unk7E5C != NULL) {
                                    if (var_a5_2 != 0) {
                                        temp_a7_3 = -0xF1 & arg0->unk7E24;
                                        if (sp0 != 0x8000) {
                                            var_a4_3 = temp_a7_3 | 0x20;
                                        } else {
                                            var_a4_3 = temp_a7_3 | 0x30;
                                        }
                                        arg0->unk7E24 = var_a4_3;
                                        arg0->unk7E24 = (s32) ((-0x301 & ((-0xD & var_a4_3) | 8)) | 0x200);
                                        sp4 = 0x1401;
                                        sp14 = sp6C;
                                        spCC = arg1->unkCC;
                                        spD0 = arg1->unkD0;
                                        var_a7_3 = arg1;
                                        var_t0 = sp;
                                        if (arg0->unk7DD8 != 0) {
                                            spC4 = arg1->unkC4;
                                            spC8 = arg1->unkC8;
                                            var_a2_2 = (s64) arg1->unk5C;
                                            sp5C = (s32) var_a2_2;
                                            sp60 = arg1->unk60;
                                            temp_a0 = arg1->unk160;
                                            var_a4_4 = 0;
                                            sp160 = temp_a0;
                                            if (temp_a0 > 0) {
loop_93:
                                                var_a5_2 = (s64) var_a7_3->unk168;
                                                var_t0->unk168 = (s32) var_a5_2;
                                                temp_a4_5 = var_a4_4 + 1;
                                                if (temp_a4_5 < sp160) {
                                                    var_t0->unk16C = (s32) var_a7_3->unk16C;
                                                    var_a4_4 = temp_a4_5 + 1;
                                                    var_a7_3 += 8;
                                                    var_t0 += 8;
                                                    if (var_a4_4 < sp160) {
                                                        goto loop_93;
                                                    }
                                                }
                                            }
                                        } else {
                                            if (arg0->unk7DCD != 0) {
                                                goto block_122;
                                            }
                                            if ((arg0->unk7E58 == 0) && (arg0->unk7DD1 == 0)) {

                                            } else {
block_122:
                                                spC4 = arg1->unkC4;
                                                spC8 = arg1->unkC8;
                                                spA0 = arg1->unkA0;
                                                spA4 = arg1->unkA4;
                                                spEC = arg1->unkEC;
                                                var_a5_2 = (s64) arg1->unkF0;
                                                spF0 = (s32) var_a5_2;
                                                arg0->unk7E1C = 0;
                                                arg0->unk7E18 = 0;
                                            }
                                        }
                                    }
                                    temp_t9_2 = arg0->unk7F7C;
                                    spB4 = temp_s3;
                                    sp10 = sp204;
                                    spC = temp_t9_2;
                                    sp8 = temp_t9_2;
                                    temp_t3 = (sp248 == 0) ? 0 : sp214;
                                    temp_a4_6 = temp_s3 - temp_t3;
                                    spB8 = temp_a4_6;
                                    spA8 = temp_a4_6;
                                    temp_s6_2 = temp_s6 - temp_t3;
                                    spAC = temp_s6_2;
                                    if (arg0->unk7DCD != 0) {
                                        spD8 = (s32) ((f32) temp_a4_6 * arg0->unk7DF0);
                                        temp_f11 = (s32) ((f32) temp_s6_2 * arg0->unk7DF4);
                                        spDC = temp_f11;
                                        var_a3_2 = temp_f11;
                                    } else {
                                        spDC = temp_s6_2;
                                        var_a3_2 = temp_s6_2;
                                        spD8 = temp_a4_6;
                                    }
                                    if (arg0->unk7DD1 != 0) {
                                        var_a3_2 *= 2;
                                        sp230 = (s64) var_a3_2;
                                        spDC = var_a3_2;
                                    }
                                    sp230 = (s64) var_a3_2;
                                    arg0->unk7E14 = temp_s6_2;
                                    arg0->unk7E10 = temp_a4_6;
                                    arg0->unk7E20 = spC;
                                    if (arg0->unk7E5C(arg0, sp, var_a2_2, var_a3_2, temp_a4_6, var_a5_2) != 0) {
                                        if ((arg0->unk7E5C != NULL) && (arg0->unk7DD8 == 0)) {
                                            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
                                        }
                                        if (var_s4_2 != 0) {
                                            spD0 += (arg0->unk7DCC == 0) ? sp230 : -sp230;
                                            if (var_s4_2 == 0) {

                                            } else {
                                                goto block_62;
                                            }
                                        }
                                        goto block_67;
                                    }
                                    var_v0 = 0;
                                    goto block_47;
                                }
block_61:
                                if (var_s4_2 != 0) {
block_62:
                                    if (sp318 != 0) {
                                        sp318 = 0;
                                        *sp2D8 = (s32) (arg0->unk7F88 | 4);
                                    }
                                    temp_a7_4 = (sp2F0 == 0) ? sp208 : (sp208 - sp214);
                                    var_s5 -= temp_a7_4;
                                    var_s7 += arg1->unk10 * temp_a7_4;
                                    if (var_s5 < sp208) {
                                        temp_a5_2 = var_s5 >> 0x1F;
                                        temp_a4_7 = ((((var_s5 ^ temp_a5_2) - temp_a5_2) & 7) ^ temp_a5_2) - temp_a5_2;
                                        if (temp_a4_7 != 0) {
                                            sp208 = (var_s5 - temp_a4_7) + 8;
                                        } else {
                                            sp208 = var_s5;
                                        }
                                    }
                                }
block_67:
                                var_s8_2 -= 1;
                                var_s4_2 -= 1;
                                if (var_s8_2 > 0) {
                                    goto loop_68;
                                }
                                goto block_114;
                            }
                            var_v0 = 0;
                            goto block_47;
                        }
block_114:
                        if (sp228 & 0xC00) {
                            returnHistogramMinMax(arg0, sp228, arg1->unk54);
                        }
                        return 1;
                    }
                    var_v0 = 0;
                    goto block_47;
                }
                var_v0 = 0;
block_47:
                /* Duplicate return node #48. Try simplifying control flow for better match */
                return var_v0;
            }
            return 0;
        }
        return 0;
    }
    var_v0 = 0;
    return var_v0;
}

s32 viceDrawPixels2(void *arg0, void *arg1) {
    s32 *temp_a3;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a6;

    temp_a3 = arg0->unk80FC;
    if (temp_a3 != NULL) {
        temp_a1 = *temp_a3;
        if (temp_a1 != 0) {
            temp_a6 = arg1->unkAC;
            temp_a5 = arg1->unk10;
            bcopy(arg1->unkC, temp_a1, temp_a5 * temp_a6, (s32) temp_a3, arg1, temp_a5, temp_a6);
            return 1;
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x268, 0x26c, 0x280, 0x284, 0x290, 0x294, 0x298, 0x29c, 0x2a0, 0x2a4, 0x2a8, 0x2ac], gap at: 0x278. */
s32 viceReadPixels(void *arg0, s64 arg1, s32 arg2, s32 arg3, s64 arg4, s32 arg5, s64 arg6, s32 arg7) {
    s64 sp300;
    s64 sp2F8;
    s64 sp2F0;
    s64 sp2E8;
    s64 sp2E0;
    s64 sp2D8;
    s64 sp2D0;
    s64 sp2C8;
    s64 sp2C0;
    s64 sp2B8;
    s64 sp2B0;
    s64 sp260;
    s64 sp258;
    s64 sp238;
    s64 sp230;
    s64 sp228;
    s32 sp220;
    s32 sp214;
    s32 sp208;
    s32 sp1F8;
    s32 spF0;
    s32 spEC;
    s32 spDC;
    s32 spD8;
    s32 spD0;
    s32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    s32 spB8;
    s32 spB4;
    s32 spAC;
    s32 spA8;
    f32 spA4;
    f32 spA0;
    s32 sp74;
    s32 sp6C;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp24;
    s32 sp1C;
    s32 sp14;
    s32 sp10;
    s32 spC;
    ? (*temp_s6)(s32, s32, s32);
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_f7;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s2_4;
    s32 temp_s2_5;
    s32 temp_s2_6;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_v1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s1;
    s32 var_s4_2;
    s32 var_s5;
    s32 var_s7;
    s32 var_s8;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a6_3;
    s64 temp_lo_3;
    s64 temp_t8;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1;
    s64 var_a4;
    s64 var_a5_2;
    s64 var_a6;
    s64 var_s4;
    u8 temp_a7;
    void *temp_a0_2;
    void *temp_a4;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    sp300 = var_a1;
    temp_v1 = var_a1->unkA8;
    unksp288 = (s64) temp_v1;
    spA8 = temp_v1;
    var_s8 = var_a1->unkAC;
    spAC = var_s8;
    temp_s2 = arg0->unk7DE4;
    sp2D0 = (s64) arg0->unk7DDB;
    if ((arg0->unk7E60 == 0) || (sp2D0 != 0)) {
        var_a1 = (s64) arg0->unkD5C;
        var_v0_2 = 4;
        if (var_a1 > 0) {
            sp1C = 4;
            var_a2 = 0x1908;
        } else {
            var_v0_2 = 1;
            sp1C = 1;
            var_a7 = 0x1909;
        }
        var_a5 = (s32) (arg0->unkD58 + 7) >> 3;
        sp14 = var_a5 * var_v0_2;
        var_a4 = sp2D0;
        sp24 = var_a5;
        var_a3 = sp300->unk4;
        if ((var_a4 == 0) || (// Error: negative shift count, // At instruction: bgez $a6, .L0da3da7c, M2C_ERROR())) {
            goto block_6;
        }
        var_a3 = arg0->unk7E5C;
        var_a5 = 4;
        if (var_a3 != 0) {
            sp64 = 4;
            var_a6 = 1;
            sp74 = (s32) 1;
            sp6C = 4;
            var_a4 = 0x1908;
            sp50 = (s32) 0x1908;
        } else {
            var_v0_3 = 4;
            if (arg0->unkCBC > 0) {
                sp6C = 4;
                sp50 = 0x1908;
            } else {
                var_v0_3 = 1;
                sp6C = 1;
                var_a4 = 0x1909;
                sp50 = (s32) 0x1909;
            }
            temp_a0 = (s32) (arg0->unkCB8 + 7) >> 3;
            sp74 = temp_a0;
            sp64 = temp_a0 * var_v0_3;
        }
    } else {
        sp24 = 1;
        sp1C = 4;
        sp14 = 4;
block_6:
        sp50 = sp300->unk50;
        sp74 = sp300->unk74;
        sp6C = sp300->unk6C;
        var_a7_2 = sp300->unk64;
        sp64 = var_a7_2;
    }
    sp54 = sp300->unk54;
    if (arg0->unk7F38 >= 0) {
        goto block_8;
    }
    if (__glInitSPBuff(arg0, (s32) var_a1, var_a2, var_a3, var_a4, var_a5, (s32) var_a6, var_a7_2) != 0) {
block_8:
        temp_t8 = temp_s2 & 0x18;
        if (temp_s2 != 0) {
            sp2E8 = temp_t8;
            if (temp_t8 != 0) {
                sp214 = arg0->unk2FC->unk40 - 1;
            }
            var_v0 = 0;
            if (viceSetIter(arg0, sp, &sp1F8) != 0) {
                sp260 = (s64) sp218;
                if (vice_sequence(arg0->unk7F38, (s64) sp218) >= 0) {
                    spAC = sp208;
                    spA8 = sp1F8;
                    if (__viceSetHCoef(arg0, sp, (s64) temp_s2) != 0) {
                        temp_v0 = vice_etc_dramp(arg0->unk7F38);
                        sp2E0 = temp_v0;
                        temp_v0->unk8 = 0xBE0000;
                        temp_v0->unk4 = 0xBE0400;
                        temp_v0->unk0 = (s32) (arg0->unk7F88 | 4);
                        temp_a0_2 = arg0->unk7F80;
                        temp_a0_2->unk448 = 0xBE0800;
                        temp_a0_2->unk440 = 0xBE2000;
                        temp_a0_2->unk430 = 0xBE1000;
                        temp_a0_2->unk404 = 0x9E0000;
                        temp_a0_2->unk400 = 0x800000;
                        sp2C8 = (s64) (temp_a0_2 + 0x400);
                        if (sp2D0 == 0) {
                            if (!(temp_s2 & 0x30000)) {
                                sp220 = sp300->unk5C;
                            }
                        }
                        temp_s6 = arg0->unk7E58;
                        sp230 = (s64) temp_s2;
                        sp2F0 = sp260;
                        var_s1 = sp260 - 1;
                        if (sp260 > 0) {
                            sp230 = (s64) temp_s2;
                            sp228 = 1;
                            sp2C0 = (s64) (arg0 + 0x7F8C);
                            sp2B0 = (s64) (arg0 + 0x10000);
                            sp2F8 = temp_s2 & 0x30000;
                            sp258 = sp2E8 != 0;
loop_40:
                            vice_dmbuf_settlb(arg0->unk7F38, 0x1E, arg0->unk7F54, 0, arg0->unk7F6C);
                            var_s4 = sp228;
                            vice_dmbuf_settlb(arg0->unk7F38, 0x3E, arg0->unk7F58, 0, 1);
                            if (sp2F8 == 0) {
                                var_a6_2 = arg0->unk7E60;
                                temp_a4 = sp2B0->unk-7F04;
                                if (var_a6_2 != 0) {
                                    if (temp_a4 != NULL) {
                                        goto block_43;
                                    }
                                    goto block_17;
                                }
                                if (temp_a4 == NULL) {
                                    goto block_21;
                                }
block_43:
                                temp_a6 = *arg0->unk7D3C;
                                if ((temp_a6 == 4) || (temp_a6 == 5)) {
                                    temp_s2_2 = temp_a4->unk24;
                                    temp_s7 = temp_a4->unk1C;
                                    if (temp_s2_2 < 0x21) {
                                        vice_dmbuf_settlb(arg0->unk7F38, 0, temp_s7, 0, temp_s2_2);
                                        if ((sp2E8 != 0) && (temp_s2_2 != 0x1E) && (sp20C == (temp_s2_2 << 0x10))) {
                                            M2C_ERROR(/* Read from unset register $t9 */)(arg0->unk7F38, temp_s2_2, temp_s7, 0, 1);
                                        }
                                        goto block_20;
                                    }
                                    var_v0 = 0;
                                    /* Duplicate return node #87. Try simplifying control flow for better match */
                                    return var_v0;
                                }
                                var_v0 = 0;
                                /* Duplicate return node #87. Try simplifying control flow for better match */
                                return var_v0;
                            }
block_17:
                            temp_s2_3 = arg0->unk7F68;
                            vice_dmbuf_settlb(arg0->unk7F38, 0, arg0->unk7F50, 0, temp_s2_3);
                            if ((sp2E8 != 0) && (temp_s2_3 != 0x1E) && (sp20C == (temp_s2_3 << 0x10))) {
                                __glCrmFlushAndConfirm(arg0->unk7F38, (s64) temp_s2_3, (s64) arg0->unk7F50, 0, 1);
                            }
block_20:
                            var_a6_2 = arg0->unk7E60;
block_21:
                            temp_a4_2 = spA8;
                            var_a5_2 = -0xF1;
                            var_a3_2 = -0x301;
                            temp_a2 = var_s8 < sp208;
                            temp_s2_4 = (temp_a2 != 0) ? var_s8 : sp208;
                            if (var_a6_2 != 0) {
                                if (var_s4 != 0) {
                                    sp50 = 0x1908;
                                    sp54 = 0x1401;
                                    sp74 = 1;
                                    sp64 = 4;
                                    spBC = sp300->unkBC;
                                    spC0 = sp300->unkC0;
                                    var_a6_2 = arg0->unk7E24;
                                    var_a5_2 = (-0xF1 & var_a6_2) | 0x20;
                                    arg0->unk7DD8 = 0;
                                    arg0->unk7E58 = NULL;
                                    var_a3_2 = (-0x301 & ((-0xD & var_a5_2) | 8)) | 0x200;
                                    arg0->unk7E24 = var_a3_2;
                                }
                                temp_lo = sp64 * temp_a4_2;
                                temp_ra = arg0->unk7F78;
                                spAC = temp_s2_4;
                                spA8 = !(temp_a4_2 & 1) ? temp_a4_2 : (temp_a4_2 + 1);
                                sp58 = temp_ra;
                                sp5C = temp_ra;
                                sp60 = temp_lo;
                                temp_a2_2 = temp_s2_4 + 7;
                                if (vice_dmbuf_settlb((s32) arg0, (s64) sp, temp_a2, var_a3_2, temp_a4_2, var_a5_2, var_a6_2, (void *) sp300) != 0) {
                                    if (var_s1 != 0) {
                                        if (sp2E8 != 0) {
                                            spC0 -= (f32) (temp_s2_4 - sp214);
                                        } else {
                                            spC0 -= (f32) temp_s2_4;
                                        }
                                    }
                                    sp2C8->unk26 = (s16) ((s32) ((temp_a2_2 >= 0) ? temp_a2_2 : (temp_s2_4 + 0xE)) >> 3);
                                    if (var_s1 == 0) {
                                        goto block_51;
                                    }
                                    goto block_29;
                                }
                                var_v0 = 0;
                                /* Duplicate return node #87. Try simplifying control flow for better match */
                                return var_v0;
                            }
                            temp_at = temp_s2_4 + 7;
                            sp2C8->unk26 = (s16) ((s32) ((temp_at >= 0) ? temp_at : (temp_s2_4 + 0xE)) >> 3);
                            if (var_s1 == 0) {
block_51:
                                *sp2E0 = (s32) (*sp2E0 | 8);
                            }
block_29:
                            cacheflush(sp2E0, 0x10, 3);
                            if (vice_put(arg0->unk7F38, sp2C0) == 0) {
                                if (sp2D0 != 0) {
                                    if (sp2F8 != 0) {
                                        goto block_32;
                                    }
                                    if (arg0->unk7E5C != 0) {
                                        if (var_s4 != 0) {
                                            sp14 = 4;
                                            sp24 = 1;
                                            spCC = sp300->unkCC;
                                            spD0 = sp300->unkD0;
                                            arg0->unk7E58 = temp_s6;
                                            arg0->unk7DD8 = 0;
                                            arg0->unk7E24 = (s32) ((-0x301 & ((-0xD & ((-0xF1 & arg0->unk7E24) | 0x20)) | 8)) | 0x200);
                                            if (arg0->unk7DCD != 0) {
                                                goto block_62;
                                            }
                                            if (arg0->unk7DD1 == 0) {

                                            } else {
block_62:
                                                spC4 = sp300->unkC4;
                                                spC8 = sp300->unkC8;
                                                spA0 = sp300->unkA0;
                                                spA4 = sp300->unkA4;
                                                spEC = sp300->unkEC;
                                                spF0 = sp300->unkF0;
                                                arg0->unk7E1C = 0;
                                                arg0->unk7E18 = 0;
                                            }
                                        }
                                        spC = arg0->unk7F7C;
                                        temp_a6_2 = spA8;
                                        temp_lo_2 = sp64 * temp_a6_2;
                                        spB4 = (s32) unksp288;
                                        temp_a2_3 = (sp258 == 0) ? 0 : sp214;
                                        temp_a4_3 = unksp288 - temp_a2_3;
                                        spB8 = temp_a4_3;
                                        spA8 = temp_a4_3;
                                        temp_s2_5 = temp_s2_4 - temp_a2_3;
                                        spAC = temp_s2_5;
                                        sp10 = temp_lo_2;
                                        if (arg0->unk7DCD != 0) {
                                            spD8 = (s32) ((f32) temp_a4_3 * arg0->unk7DF0);
                                            temp_f7 = (s32) ((f32) temp_s2_5 * arg0->unk7DF4);
                                            spDC = temp_f7;
                                            var_s7 = temp_f7;
                                        } else {
                                            spDC = temp_s2_5;
                                            var_s7 = temp_s2_5;
                                            spD8 = temp_a4_3;
                                        }
                                        temp_a7 = arg0->unk7DD1;
                                        if (temp_a7 != 0) {
                                            var_s7 *= 2;
                                            spDC = var_s7;
                                        }
                                        arg0->unk7E14 = temp_s2_5;
                                        arg0->unk7E10 = temp_a4_3;
                                        arg0->unk7E20 = spC;
                                        if (vice_dmbuf_settlb((s32) arg0, (s64) sp, temp_a2_3, temp_lo_2, temp_a4_3, sp258, temp_a6_2, (void *) temp_a7) != 0) {
                                            if (arg0->unk7E5C != 0) {
                                                M2C_ERROR(/* Read from unset register $t9 */)(arg0);
                                            }
                                            if (var_s1 != 0) {
                                                spD0 += (arg0->unk7DCC == 0) ? var_s7 : -var_s7;
                                                var_s8 -= (sp2E8 == 0) ? sp208 : (sp208 - sp214);
                                                if (var_s1 == 0) {

                                                } else {
                                                    goto block_33;
                                                }
                                            }
                                            goto block_38;
                                        }
                                        var_v0 = 0;
                                        /* Duplicate return node #87. Try simplifying control flow for better match */
                                        return var_v0;
                                    }
                                    goto block_32;
                                }
                                if (sp2F8 == 0) {
                                    temp_s7_2 = (sp2E8 != 0) ? (temp_a4_2 - sp214) : temp_a4_2;
                                    temp_lo_3 = sp300->unk64 * temp_s7_2;
                                    var_s4_2 = arg0->unk7F7C;
                                    temp_s2_6 = (sp2E8 != 0) ? (temp_s2_4 - sp214) : temp_s2_4;
                                    sp238 = (s64) sp220;
                                    var_s5 = sp220;
                                    sp2B8 = temp_lo_3;
                                    if ((sp300->unk60 != sp204) || (sp2B8 != sp204) || (temp_s6 != NULL)) {
                                        if (temp_s2_6 > 0) {
                                            sp2D8 = 0;
loop_83:
                                            if (temp_s6 == NULL) {
                                                bcopy(var_s4_2, var_s5, sp2B8);
                                            } else {
                                                temp_s6(var_s4_2, var_s5, temp_s7_2);
                                            }
                                            temp_v0_2 = sp2D8 + 1;
                                            var_s4_2 = (s32) (sp204 + var_s4_2);
                                            sp2D8 = temp_v0_2;
                                            var_s5 += sp300->unk60;
                                            if (temp_s2_6 != temp_v0_2) {
                                                goto loop_83;
                                            }
                                        }
                                    } else {
                                        bcopy(var_s4_2, (s32) sp238, temp_s2_6 * sp2B8, (s32) temp_lo_3, sp204, (s32) sp2B8);
                                    }
                                    var_s4 = sp228;
                                    if (var_s1 != 0) {
                                        temp_a2_4 = (sp2E8 == 0) ? sp208 : (sp208 - sp214);
                                        var_s8 -= temp_a2_4;
                                        sp220 = sp238 + (sp300->unk60 * temp_a2_4);
                                        goto block_32;
                                    }
                                } else {
block_32:
                                    if (var_s1 != 0) {
block_33:
                                        if (var_s4 != 0) {
                                            var_s4 = 0;
                                            *sp2E0 = (s32) arg0->unk7F88;
                                        }
                                        temp_a5 = var_s8 >> 0x1F;
                                        if (var_s8 < sp208) {
                                            temp_a4_4 = ((((var_s8 ^ temp_a5) - temp_a5) & 7) ^ temp_a5) - temp_a5;
                                            if (temp_a4_4 != 0) {
                                                sp208 = (var_s8 - temp_a4_4) + 8;
                                            } else {
                                                sp208 = var_s8;
                                            }
                                        }
block_38:
                                    }
                                }
                                temp_a6_3 = sp2F0 - 1;
                                sp228 = var_s4;
                                var_s1 -= 1;
                                sp2F0 = temp_a6_3;
                                if (temp_a6_3 > 0) {
                                    goto loop_40;
                                }
                                goto block_89;
                            }
                            return 0;
                        }
block_89:
                        if (sp230 & 0xC00) {
                            returnHistogramMinMax(arg0, sp230, sp300->unk54);
                        }
                        return 1;
                    }
                    return 0;
                }
                return 0;
            }
            /* Duplicate return node #87. Try simplifying control flow for better match */
            return var_v0;
        }
        bcopy(*arg0->unk80FC, sp300->unk5C, sp14 * (var_s8 * unksp288), (s32) unksp288);
        var_v0 = 1;
        /* Duplicate return node #87. Try simplifying control flow for better match */
        return var_v0;
    }
    var_v0 = 0;
    return var_v0;
}

s32 viceCopyPixels(void *arg0) {
    s32 sp0;
    s32 temp_v0;
    u8 temp_a2;

    arg0->unk7DD8 = 1;
    temp_a2 = arg0->unk77BC;
    arg0->unk7DD3 = temp_a2;
    sp0 = arg0->unk7E24;
    temp_v0 = viceReadPixels((void *) temp_a2);
    arg0->unk7DD3 = 0U;
    arg0->unk7DD8 = 0;
    arg0->unk7E24 = sp0;
    return temp_v0 & 0xFF;
}

s32 viceCopySubImage(s32 arg0, void *arg1, s32 arg4, s32 arg5) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_s1;

    var_a4 = arg4;
    var_a5 = arg5;
    if (arg1->unk160 != 1) {
        return 0;
    }
    var_s1 = arg1->unkAC;
    if (var_s1 > 0) {
        var_a3 = arg1->unk5C;
        var_a2 = arg1->unkC;
        do {
            arg1->unk168(arg0, arg1, var_a2, var_a3, var_a4, var_a5);
            var_a4 = arg1->unkC;
            var_a5 = arg1->unk5C;
            var_s1 -= 1;
            var_a3 = arg1->unk60 + var_a5;
            arg1->unk5C = var_a3;
            var_a2 = arg1->unk10 + var_a4;
            arg1->unkC = var_a2;
        } while (var_s1 > 0);
    }
    return 1;
}

s32 viceCopyImage(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    u8 temp_v0_2;

    temp_v0_2 = arg0->unk7DCD;
    arg0->unk7DCD = 0U;
    arg0->unk7DD8 = 1;
    sp18 = (s64) temp_v0_2;
    arg0->unk7E5C = (void *) (&sub_0da40000 - 0x22C0);
    temp_v0 = viceDrawPixels((void *)0x12F7C);
    arg0->unk7DD8 = 0;
    arg0->unk7DCD = (u8) sp18;
    return temp_v0 & 0xFF;
}

s32 viceRGBtoRGBA(void *arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp8;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_ra;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s5;
    s32 var_t3;
    s64 var_a7;
    s64 var_v0;
    u32 temp_t0;
    u32 temp_t1;
    u32 temp_t9;
    void *temp_v0_2;

    sp80 = arg1;
    temp_v0 = arg1->unk10;
    temp_a5 = arg1->unkA8;
    temp_a4 = arg1->unk1C;
    var_s2 = arg2 * temp_v0;
    var_s1 = arg3;
    sp60 = (s64) temp_v0;
    sp88 = temp_v0 - (temp_a4 * temp_a5);
    if (((M2C_ERROR(/* Read from unset register $t9 */) + 0x12F0C)->unk-574C == 0) || (temp_a6 = var_s2 < 0x4000, (temp_a6 != 0))) {
        /* Duplicate return node #3. Try simplifying control flow for better match */
        return 0;
    }
    temp_v0_2 = vice_etc_dramp(arg0->unk7F40, 0x12F0C, temp_a4, temp_a5, temp_a6);
    if (var_s2 > 0x30000) {
        sp78 = (s64) temp_v0_2;
        if (sp88 != 0) {
            temp_f0 = (s32) ((f64) (second half of f64) / (second half of f64));
            var_s0 = temp_f0 * sp60;
            M2C_TRAP_IF(sp60 == 0);
            sp8 = sp80->unkA8 * temp_f0 * 4;
        } else {
            var_s0 = 0x30000;
            sp8 = (s32) ((f64) 0x30000 / (f64) 3) * 4;
        }
    } else {
        var_s0 = var_s2;
        temp_t9 = (u32) var_s2 >> 0x1F;
        temp_ra = (s32) MULTU_HI(((temp_t9 == 0) ? var_s2 : -var_s2), ((0xAAAA << 0x10) | 0xAAAB)) >> 1;
        sp78 = (s64) temp_v0_2;
        sp8 = ((temp_t9 == 0) ? temp_ra : -temp_ra) * 4;
    }
    temp_f1 = (s32) ((f64) ((var_s2 + var_s0) - 1) / (f64) var_s0);
    M2C_TRAP_IF(var_s0 == 0);
    var_s3 = 0;
    var_s5 = temp_f1 - 1;
    if (temp_f1 != 0) {
        sp68 = (s64) (arg0 + 0x10000);
        sp70 = (s64) (arg0 + 0x8024);
        var_t3 = var_s0 < var_s2;
loop_15:
        temp_t1 = (u32) var_s2 >> 0x1F;
        if (var_t3 == 0) {
            temp_t2 = (s32) MULTU_HI(((temp_t1 == 0) ? var_s2 : -var_s2), ((0xAAAA << 0x10) | 0xAAAB)) >> 1;
            var_s0 = var_s2;
            temp_a7 = (temp_t1 == 0) ? temp_t2 : -temp_t2;
            var_s2 = 0;
            var_a7 = temp_a7 * 4;
            if (sp88 != 0) {
                M2C_TRAP_IF(sp60 == 0);
                var_v0 = sp80->unkA8 * (s32) ((second half of f64) / (f64) (second half of f64)) * 4;
            } else {
                var_v0 = var_a7;
            }
            sp8 = var_v0;
        } else {
            temp_t0 = (u32) var_s0 >> 0x1F;
            temp_t1_2 = (s32) MULTU_HI(((temp_t0 == 0) ? var_s0 : -var_s0), ((0xAAAA << 0x10) | 0xAAAB)) >> 1;
            var_s2 -= var_s0;
            var_a7 = ((temp_t0 == 0) ? temp_t1_2 : -temp_t1_2) * 4;
        }
        temp_at = var_a7 + 0xFFFF;
        temp_s6 = var_s1 & 0xFFF;
        temp_s8 = (s32) ((temp_at >= 0) ? temp_at : (temp_at + 0xFFFF)) >> 0x10;
        temp_v1 = var_s0 + 0xFFF;
        temp_at_2 = (s32) ((temp_v1 >= 0) ? temp_v1 : (var_s0 + 0x1FFE)) >> 0xC;
        if (vice_dmbuf_settlb(arg0->unk7F40, 0x32, arg0->unk7F54, var_s3, temp_s8) >= 0) {
            sp68->unk-7F90 = var_s1;
            sp68->unk-7F88 = var_s0;
            sp68->unk-7F94 = (s32) (((temp_at_2 << 0xC) >= (temp_s6 + var_s0)) ? temp_at_2 : (temp_at_2 + 1));
            sp68->unk-7F8C = 0x20;
            sp68->unk-7F9C = 0;
            sp68->unk-7FA0 = 0x54;
            sp68->unk-7FA4 = 0x8100;
            sp68->unk-7FCC = 1;
            sp78->unkC = var_s0;
            sp78->unk8 = 0xB20000;
            temp_a3 = temp_s6 + 0x800000;
            sp78->unk4 = temp_a3;
            sp78->unk0 = (s32) sp8;
            sp78->unk1C = 0x900DBEEF;
            sp78->unk18 = 0x900DBEEF;
            sp78->unk14 = (s32) sp88;
            sp78->unk10 = (s32) sp80->unkA8;
            if (vice_put_vaddr(arg0->unk7F40, sp70, 0xB20000, temp_a3, sp8, sp68, 0x20, 0x54) >= 0) {
                var_s5 -= 1;
                var_s1 += var_s0;
                var_s3 += temp_s8;
                var_t3 = var_s0 < var_s2;
                if (var_s5 != -1) {
                    goto loop_15;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 1;
            }
            /* Duplicate return node #3. Try simplifying control flow for better match */
            return 0;
        }
        return 0;
    }
    return 1;
}

void gfxmapfile(s64 arg0, s64 arg1, s32 *arg2) {
    s64 sp98;
    s32 var_a1;

    if (arg0 >= 0) {
        var_a1 = *arg2;
        sp98 = arg1;
        if (var_a1 != 0) {
            goto block_2;
        }
        var_a1 = sp3C;
        if (stat(sp98, sp) >= 0) {
            *arg2 = var_a1;
block_2:
            if (mmap(0, var_a1, 1, 2, arg0, 0) != -1) {
                return;
            }
            perror(sp98);
            exit(1);
            goto block_7;
        }
        /* Duplicate return node #8. Try simplifying control flow for better match */
        perror(sp98);
        exit(1);
        return;
    }
block_7:
    perror(M2C_ERROR(/* Read from unset register $a1 */));
    exit(1);
    perror(sp98);
    exit(1);
}

s32 __viceMapCode(s32 arg0, void **arg1) {
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s32 *sp1A0;
    void *sp19C;
    void *sp198;
    void *sp194;
    void *sp190;
    void *sp18C;
    void *sp188;
    s32 sp184;
    void *sp180;
    void *sp17C;
    void *sp178;
    void *sp174;
    void *sp170;
    void *sp16C;
    void *sp168;
    void *sp164;
    void *sp160;
    void *sp15C;
    void *sp158;
    void *sp154;
    void *sp150;
    void *sp14C;
    void *sp148;
    s32 sp144;
    void *sp140;
    void *sp13C;
    void *sp138;
    void *sp134;
    void *sp130;
    void *sp12C;
    void *sp128;
    void *sp124;
    void *sp120;
    void *sp11C;
    void *sp118;
    void *sp114;
    void *sp110;
    void *sp10C;
    void *sp108;
    s32 sp104;
    void *sp100;
    void *spFC;
    void *spF8;
    void *spF4;
    void *spF0;
    void *spEC;
    void *spE8;
    void *spE4;
    void *spE0;
    void *spDC;
    void *spD8;
    void *spD4;
    void *spD0;
    void *spCC;
    void *spC8;
    s32 spC4;
    void *spC0;
    void *spBC;
    void *spB8;
    void *spB4;
    void *spB0;
    void *spAC;
    void *spA8;
    void *spA4;
    void *spA0;
    void *sp9C;
    void *sp98;
    void *sp94;
    void *sp90;
    void *sp8C;
    void *sp88;
    s32 sp84;
    void *sp80;
    void *sp7C;
    void *sp78;
    void *sp74;
    void *sp70;
    void *sp6C;
    void *sp68;
    void *sp64;
    void *sp60;
    void *sp5C;
    void *sp58;
    void *sp54;
    void *sp50;
    void *sp4C;
    void *sp48;
    s32 sp44;
    void *sp40;
    void *sp3C;
    void *sp38;
    void *sp34;
    void *sp30;
    void *sp2C;
    void *sp28;
    void *sp24;
    void *sp20;
    void *sp1C;
    void *sp18;
    void *sp14;
    void *sp10;
    void *spC;
    void *sp8;
    s32 sp0;
    s32 *temp_a1;
    s32 temp_a6_2;
    s32 temp_t0;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_t9_5;
    s64 temp_a7_2;
    s64 temp_v0;
    s64 temp_v0_2;
    void *temp_a3;
    void *temp_a4;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;
    void *temp_v0_3;

    sp0 = 0;
    sp17C = &sub_0da40000 + 0x2C58;
    sp158 = &sub_0da40000 + 0x2BC8;
    sp15C = &sub_0da40000 + 0x2BD8;
    sp160 = &sub_0da40000 + 0x2BE8;
    sp164 = &sub_0da40000 + 0x2BF8;
    sp168 = &sub_0da40000 + 0x2C08;
    sp16C = &sub_0da40000 + 0x2C18;
    sp170 = &sub_0da40000 + 0x2C28;
    sp174 = &sub_0da40000 + 0x2C38;
    sp178 = &sub_0da40000 + 0x2C48;
    temp_t9 = M2C_ERROR(/* Read from unset register $t9 */) + 0x2C78;
    sp184 = temp_t9;
    sp180 = &sub_0da40000 + 0x2C68;
    temp_t9_2 = temp_t9 + 0x2B78;
    sp144 = temp_t9_2;
    sp140 = &sub_0da40000 + 0x2B68;
    sp138 = &sub_0da40000 + 0x2B48;
    sp134 = &sub_0da40000 + 0x2B38;
    sp130 = &sub_0da40000 + 0x2B28;
    sp12C = &sub_0da40000 + 0x2B18;
    sp128 = &sub_0da40000 + 0x2B08;
    sp124 = &sub_0da40000 + 0x2AF8;
    sp120 = &sub_0da40000 + 0x2AE8;
    sp11C = &sub_0da40000 + 0x2AD8;
    sp118 = &sub_0da40000 + 0x2AC8;
    sp13C = &sub_0da40000 + 0x2B58;
    spD8 = &sub_0da40000 + 0x29C8;
    spFC = &sub_0da40000 + 0x2A58;
    spDC = &sub_0da40000 + 0x29D8;
    spE0 = &sub_0da40000 + 0x29E8;
    spE4 = &sub_0da40000 + 0x29F8;
    spE8 = &sub_0da40000 + 0x2A08;
    spEC = &sub_0da40000 + 0x2A18;
    spF0 = &sub_0da40000 + 0x2A28;
    spF4 = &sub_0da40000 + 0x2A38;
    spF8 = &sub_0da40000 + 0x2A48;
    sp100 = &sub_0da40000 + 0x2A68;
    temp_t9_3 = temp_t9_2 + 0x2A78;
    sp104 = temp_t9_3;
    spC0 = &sub_0da40000 + 0x2968;
    temp_t9_4 = temp_t9_3 + 0x2978;
    spC4 = temp_t9_4;
    spB8 = &sub_0da40000 + 0x2948;
    spB4 = &sub_0da40000 + 0x2938;
    spB0 = &sub_0da40000 + 0x2928;
    spAC = &sub_0da40000 + 0x2918;
    spA8 = &sub_0da40000 + 0x2908;
    spA4 = &sub_0da40000 + 0x28F8;
    spA0 = &sub_0da40000 + 0x28E8;
    sp9C = &sub_0da40000 + 0x28D8;
    spBC = &sub_0da40000 + 0x2958;
    sp98 = &sub_0da40000 + 0x28C8;
    sp7C = &sub_0da40000 + 0x2858;
    sp58 = &sub_0da40000 + 0x27C8;
    sp5C = &sub_0da40000 + 0x27D8;
    sp60 = &sub_0da40000 + 0x27E8;
    sp64 = &sub_0da40000 + 0x27F8;
    sp68 = &sub_0da40000 + 0x2808;
    sp6C = &sub_0da40000 + 0x2818;
    sp70 = &sub_0da40000 + 0x2828;
    sp74 = &sub_0da40000 + 0x2838;
    sp78 = &sub_0da40000 + 0x2848;
    temp_t9_5 = temp_t9_4 + 0x2878;
    sp84 = temp_t9_5;
    sp80 = &sub_0da40000 + 0x2868;
    sp44 = temp_t9_5 + 0x2778;
    sp40 = &sub_0da40000 + 0x2768;
    sp38 = &sub_0da40000 + 0x2748;
    sp34 = &sub_0da40000 + 0x2738;
    sp30 = &sub_0da40000 + 0x2728;
    sp2C = &sub_0da40000 + 0x2718;
    temp_a7 = &sub_0da40000 + 0x2708;
    sp28 = temp_a7;
    temp_a6 = &sub_0da40000 + 0x26F8;
    sp24 = temp_a6;
    temp_a5 = &sub_0da40000 + 0x26E8;
    sp20 = temp_a5;
    sp1C = &sub_0da40000 + 0x26D8;
    sp18 = &sub_0da40000 + 0x26C8;
    sp3C = &sub_0da40000 + 0x2758;
    sp190 = &sub_0da40000 + 0x2CA8;
    sp194 = &sub_0da40000 + 0x2CB8;
    sp188 = &sub_0da40000 + 0x2C88;
    sp18C = &sub_0da40000 + 0x2C98;
    sp148 = &sub_0da40000 + 0x2B88;
    sp14C = &sub_0da40000 + 0x2B98;
    sp154 = &sub_0da40000 + 0x2BB8;
    sp150 = &sub_0da40000 + 0x2BA8;
    sp114 = &sub_0da40000 + 0x2AB8;
    sp110 = &sub_0da40000 + 0x2AA8;
    sp10C = &sub_0da40000 + 0x2A98;
    sp108 = &sub_0da40000 + 0x2A88;
    spCC = &sub_0da40000 + 0x2998;
    spC8 = &sub_0da40000 + 0x2988;
    spD0 = &sub_0da40000 + 0x29A8;
    spD4 = &sub_0da40000 + 0x29B8;
    sp90 = &sub_0da40000 + 0x28A8;
    sp94 = &sub_0da40000 + 0x28B8;
    sp88 = &sub_0da40000 + 0x2888;
    sp8C = &sub_0da40000 + 0x2898;
    sp48 = &sub_0da40000 + 0x2788;
    sp4C = &sub_0da40000 + 0x2798;
    sp54 = &sub_0da40000 + 0x27B8;
    sp50 = &sub_0da40000 + 0x27A8;
    sp14 = &sub_0da40000 + 0x26B8;
    sp10 = &sub_0da40000 + 0x26A8;
    spC = &sub_0da40000 + 0x2698;
    sp8 = &sub_0da40000 + 0x2688;
    temp_a1 = &sub_0da40000 + 0x2CE8;
    sp1A0 = temp_a1;
    temp_a3 = &sub_0da40000 + 0x2CD8;
    sp19C = temp_a3;
    temp_a4 = &sub_0da40000 + 0x2CC8;
    sp198 = temp_a4;
    temp_v0 = vice_gfxfile((&sp8)[arg0], temp_a1, arg0 * 4, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
    sp1B8 = temp_v0;
    temp_v0_2 = open(temp_v0, 0);
    sp1C0 = temp_v0_2;
    if (temp_v0_2 != -1) {
        temp_v0_3 = gfxmapfile(sp1C0, sp1B8, sp);
        temp_a6_2 = arg1->unk1068 * 4;
        temp_t0 = temp_v0_3->unk8 * 4;
        temp_a7_2 = temp_a6_2 & 0xFFFF;
        sp1A8 = temp_a7_2;
        sp1B0 = (s64) temp_v0_3;
        if ((temp_a7_2 + temp_t0) >= 0x1001) {
            return -1;
        }
        vice_loadmspcode(arg1->unk1010, sp1B0, temp_a6_2 + arg1 + 0x10, sp0);
        arg1->unk1068 = (s32) (sp1B0->unk8 + arg1->unk1068);
        munmap(sp1B0, sp0);
        close(sp1C0);
        return (sp1A8 + 0x2000) << 0x10;
    }
    return -1;
}

s32 __viceLoadCSBCode(s32 arg0, void **arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 var_a1;
    s32 var_s1;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;

    temp_a4 = arg1->unk1050;
    var_s1 = arg1->unk101C;
    temp_a6 = arg2 < (arg0 * 2);
    arg1->unk1030 = temp_a6;
    temp_a7 = arg1->unk104C;
    if (temp_a7 != 1) {
        goto block_1;
    }
    temp_a0 = arg1->unk102C;
    if (temp_a4 != 1) {
        goto block_7;
    }
    if (temp_a0 != 0) {
        if (temp_a6 != 0) {
            if (arg1->unk1018 != 1) {
                var_v0_2 = __viceMapCode(1, arg1, temp_a4, 1, temp_a6, temp_a7);
            } else {
                var_v0_2 = __viceMapCode(7, arg1, temp_a4, 1, temp_a6, temp_a7);
            }
            goto block_4;
        }
block_7:
        if (temp_a0 != 0) {
            if (arg1->unk1018 != 1) {
                var_v0 = __viceMapCode(2, arg1, temp_a4, 1, temp_a6, temp_a7);
            } else {
                var_v0 = __viceMapCode(8, arg1, temp_a4, 1, temp_a6, temp_a7);
            }
            arg1->unk102C = 0;
            arg1->unk1020 = 1;
            return (var_s1 == 0) ? 0xFFFF0000 : (arg1->unk1034 | var_v0);
        }
        goto block_1;
    }
block_1:
    if (temp_a4 != 1) {
        goto block_2;
    }
    if (temp_a6 != 0) {
        if (arg1->unk1018 != 1) {
            if (temp_a7 != 1) {
                if (arg1->unk1014 != 0) {
                    var_v0_2 = __viceMapCode(6, arg1, temp_a4, 1, temp_a6, temp_a7);
                } else {
                    var_v0_2 = __viceMapCode(5, arg1, temp_a4, 1, temp_a6, temp_a7);
                }
            } else {
                var_v0_2 = __viceMapCode(3, arg1, temp_a4, 1, temp_a6, temp_a7);
            }
            goto block_4;
        }
        if (temp_a7 != 1) {
            temp_a2 = arg1->unk1014;
            if (temp_a2 != 0) {
                var_v0_3 = __viceMapCode(0xC, arg1, temp_a2, temp_a4, 1, temp_a6, temp_a7);
            } else {
                var_v0_3 = __viceMapCode(0xB, arg1, temp_a2, temp_a4, 1, temp_a6, temp_a7);
            }
            var_a1 = var_v0_3;
            var_s1 = 1;
            arg1->unk101C = 0;
        } else {
            var_v0_2 = __viceMapCode(9, arg1, temp_a4, 1, temp_a6, temp_a7);
            goto block_4;
        }
    } else {
block_2:
        temp_a7_2 = arg1->unk1018;
        if (temp_a7_2 != 1) {
            var_v0_2 = __viceMapCode(4, arg1, temp_a4, 1, temp_a6, temp_a7_2);
        } else {
            var_v0_2 = __viceMapCode(0xA, arg1, temp_a4, 1, temp_a6, temp_a7_2);
        }
block_4:
        var_a1 = var_v0_2;
    }
    arg1->unk102C = 0;
    return (var_s1 == 0) ? 0xFFFF0000 : (arg1->unk1034 | var_a1);
}

s32 __viceSetHCoef(void *arg0, void *arg1, s64 arg2) {
    s64 sp1130;
    s64 sp1128;
    s64 sp1120;
    s64 sp1118;
    s64 sp10E8;
    s64 sp10E0;
    s64 sp10D8;
    s64 sp10D0;
    s64 sp10C8;
    s64 sp10C0;
    s64 sp10B8;
    s64 sp10B0;
    s64 sp10A8;
    f32 sp109C;
    f32 sp1098;
    f32 sp1094;
    f32 sp1090;
    f32 sp108C;
    f32 sp1088;
    f32 sp1084;
    f32 sp1080;
    f32 sp107C;
    f32 sp1078;
    f32 sp1074;
    f32 sp1070;
    s32 sp106C;
    s32 sp1068;
    s32 sp1064;
    s32 sp1060;
    s32 sp105C;
    s32 sp1058;
    s32 sp1054;
    s32 sp1050;
    s32 sp104C;
    void *sp1048;
    void *sp1044;
    s32 sp1040;
    s32 sp103C;
    s32 sp1038;
    s32 sp1034;
    s32 sp1030;                                     /* compiler-managed */
    s32 sp102C;
    s32 sp1028;
    s32 sp1024;
    s32 sp1020;
    s32 sp1018;
    s32 sp1014;
    s32 sp1010;
    ? sp10;
    void *spC;
    void *sp8;
    void *sp4;
    void *sp0;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f31;
    f32 temp_f7;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    s16 temp_a1_3;
    s16 var_a1;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_ra_2;
    s32 temp_t1;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    s32 var_v0_2;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a3_3;
    s64 temp_t1_2;
    s64 temp_t8;
    s64 temp_v0_4;
    s64 var_a0;
    s64 var_v0;
    u16 temp_a0;
    u16 temp_a2_4;
    u16 temp_a5_4;
    u16 temp_ra;
    u16 temp_t0;
    u16 var_v0_3;
    u32 temp_v0_5;
    void *temp_a1_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_at;
    void *temp_t1_3;
    void *temp_t1_4;
    void *temp_v0_3;
    void *var_a3;

    arg0->unk7F88 = 0;
    sp0 = arg0->unk7F80;
    temp_a3 = arg0->unk7F80 + 0x400;
    sp4 = temp_a3;
    sp8 = arg0->unk7F80 + 0x1000;
    spC = arg0->unk7F80 + 0x800;
    bzero(arg0->unk7F80, 0xA0, temp_a3);
    sp4->unk36 = 0U;
    sp4->unk46 = 0U;
    sp1010 = arg0->unk7F38;
    sp1014 = arg0->unk7DE4 & 0x400000;
    sp1018 = 1;
    sp1020 = 0;
    sp1024 = 0;
    sp1028 = 0;
    sp102C = 1;
    sp1030 = 0;
    sp1034 = 0;
    sp1038 = 0;
    sp103C = 0;
    sp1040 = 0;
    sp1044 = sp0;
    sp1048 = sp0 + 0x50;
    sp104C = arg1->unk24;
    sp1050 = arg1->unk74;
    sp1054 = arg1->unk1C;
    sp1060 = arg1->unk0;
    sp1064 = arg1->unk50;
    sp1068 = 0;
    sp106C = 1;
    sp4->unk3E = 0;
    if (sp1050 != 1) {
        sp4->unk3C = 0xFFFFU;
    } else if (arg1->unk4 != 0x1402) {
        sp4->unk3C = 0xFFU;
    } else {
        sp4->unk3C = 0x7F80U;
        sp4->unk3E = 0x7F;
    }
    if (arg1->unk54 == 0x1402) {
        temp_a0 = sp4->unk3C;
        sp4->unk3C = (u16) ((s32) ((temp_a0 >> 0x1F) + temp_a0) >> 1);
        sp4->unk3E = (s16) (-1 - sp4->unk3C);
    }
    sp4->unk38 = 0x7FFF;
    sp4->unk3A = 0x8000;
    temp_v0 = arg1->unk0;
    switch (temp_v0) {                              /* switch 1; irregular */
    default:                                        /* switch 1 */
        return 0;
    case 0x1907:                                    /* switch 1 */
    case 0x8000:                                    /* switch 1 */
        /* fallthrough */
    case 0x1908:                                    /* switch 1 */
        sp4->unk8 = 8;
        sp4->unk26 = 8U;
block_12:
        sp4->unkC = 7;
        sp4->unkC = (s32) (sp4->unkC * sp104C * (arg1->unk1C * arg1->unkA8));
        sp4->unk14 = (s32) (sp104C * (arg1->unk1C * arg1->unkA8));
        sp4->unk20 = (u16) (arg1->unk1C * sp104C * 0x10);
        sp0->unk74 = (u16) arg1->unk1C;
        sp0->unk70 = 0x10U;
        sp0->unk72 = 0x10U;
        sp105C = 0x10;
        sp1058 = 0x10;
        temp_v0_2 = arg1->unk50;
        switch (temp_v0_2) {                        /* switch 2; irregular */
        default:                                    /* switch 2 */
            return 0;
        case 0x1907:                                /* switch 2 */
        case 0x1908:                                /* switch 2 */
        case 0x8000:                                /* switch 2 */
            sp4->unkA = 8U;
            sp4->unk10 = 7;
block_22:
            temp_t8 = arg2 & 0x18;
            sp10E8 = temp_t8;
            if (temp_t8 != 0) {
                temp_ra = ((s32) sp0->unk72 >> 1) & 0xFFFF;
                sp0->unk72 = temp_ra;
                sp105C = (s32) temp_ra;
                sp4->unk8 = (u16) ((arg0->unk2FC->unk44 + sp4->unk8) - 1);
            }
            sp0->unk70 = (u16) (sp4->unk8 * sp0->unk70);
            sp1058 = (s32) sp0->unk70;
            sp0->unk72 = (u16) (sp4->unkA * sp0->unk72);
            sp105C = (s32) sp0->unk72;
            sp4->unk10 = (s32) (sp4->unk10 * sp1050 * (arg1->unk6C * arg1->unkA8));
            temp_a6 = arg1->unk6C;
            temp_a7 = arg1->unkA8;
            temp_lo = temp_a6 * temp_a7;
            temp_lo_2 = sp1050 * temp_lo;
            sp4->unk18 = temp_lo_2;
            sp4->unk22 = (u16) (arg1->unk6C * sp1050 * 0x10);
            sp0->unk76 = (u16) arg1->unk6C;
            if (__viceMapCode(0, sp, temp_lo_2, (s32) sp4, sp1050, temp_lo, temp_a6, temp_a7) == 0x20000000) {
                if (arg1->unk0 != 0x1907) {
                    goto block_26;
                }
                arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x2000);
                temp_a5 = sp1058 * 4;
                sp1054 = 4;
                temp_a4 = temp_a5 < 0;
                sp1060 = 0x1908;
                sp1028 = 1;
                temp_a2 = ((s32) ((temp_a4 == 0) ? temp_a5 : (temp_a5 + 0x3F)) >> 6) << 8;
                sp10A8 = temp_a2;
                (sp4 + (sp106C * 4))->unk50 = (s32) (__viceMapCode(0x62, sp, (s32) temp_a2, 1, temp_a4, temp_a5, 4, 0x1907) | sp10A8);
                temp_t1 = sp106C + 1;
                sp106C = temp_t1;
                if ((0xFFFF0000 & (sp4 + (temp_t1 * 4))->unk4C) == 0xFFFF0000) {
                    /* Duplicate return node #9. Try simplifying control flow for better match */
                    return 0;
                }
block_26:
                temp_t1_2 = viceLateLumaConvert(arg0, arg1, arg2) & 0xFF;
                sp10D0 = temp_t1_2;
                if (temp_t1_2 != 0) {
                    goto block_27;
                }
                if ((sp1060 != 0x1908) && (sp1060 != 0x8000)) {
                    sp1054 = 4;
                    sp1060 = 0x1908;
                    sp1020 = 1;
                    sp0->unk74 = 4U;
                    temp_a5_2 = sp1058 < 0;
                    temp_a0_2 = (arg2 & 0xFFF) == 0;
                    sp1030 = temp_a0_2;
                    temp_a2_2 = ((s32) ((temp_a5_2 == 0) ? sp1058 : (sp1058 + 7)) >> 3) << 8;
                    if (sp104C != 1) {
                        goto block_109;
                    }
                    if (sp1050 != 1) {
                        goto block_148;
                    }
                    if (sp102C != 0) {
                        if (temp_a0_2 != 0) {
                            sp1120 = temp_a2_2;
                            (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x63, sp, (s32) temp_a2_2, 1, sp104C, temp_a5_2, sp1058, 4);
                        } else {
block_148:
                            if (sp102C != 0) {
                                sp1120 = temp_a2_2;
                                (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x64, sp, (s32) temp_a2_2, 1, sp104C, temp_a5_2, sp1058, 4);
                            } else {
                                goto block_109;
                            }
                        }
                    } else {
block_109:
                        if ((sp1050 != 1) || (temp_a0_2 == 0)) {
                            sp1120 = temp_a2_2;
                            (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x66, sp, (s32) temp_a2_2, 1, sp104C, temp_a5_2, sp1058, 4);
                        } else {
                            sp1120 = temp_a2_2;
                            (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x65, sp, (s32) temp_a2_2, 1, sp104C, temp_a5_2, sp1058, 4);
                        }
                    }
                    temp_v0_3 = sp4 + (sp106C * 4);
                    sp102C = 0;
                    temp_v0_3->unk50 = (s32) (temp_v0_3->unk50 | sp1120);
                    temp_ra_2 = sp106C + 1;
                    sp106C = temp_ra_2;
                    var_t2 = arg2 & 2;
                    if ((0xFFFF0000 & (sp4 + (temp_ra_2 * 4))->unk4C) == 0xFFFF0000) {
                        /* Duplicate return node #9. Try simplifying control flow for better match */
                        return 0;
                    }
                    goto block_28;
                }
block_27:
                var_t2 = arg2 & 2;
block_28:
                if (var_t2 != 0) {
                    sp1070 = arg0->unk280;
                    sp1074 = arg0->unk284;
                    sp1078 = arg0->unk288;
                    sp107C = arg0->unk28C;
                    sp10D8 = (((u32) (sp1054 * sp1058) >> 5) - 1) << 8;
                    ScaleInRange(sp, &sp1070);
                    sp1130 = (sp1018 == 0) ? 0x7FFF : 1;
                    (sp4 + (sp106C * 4))->unk50 = __viceLoadCSBCode(2, sp, arg2 & 0xFFF);
                    temp_a3_2 = sp4 + (sp106C * 4);
                    temp_a3_2->unk50 = (s32) (temp_a3_2->unk50 | sp10D8);
                    temp_a1 = sp106C + 1;
                    sp106C = temp_a1;
                    var_a0 = sp1130;
                    if ((0xFFFF0000 & (sp4 + (temp_a1 * 4))->unk4C) != 0xFFFF0000) {
                        if ((sp1018 == 0) || (sp101C != 0)) {
                            var_f4 = sp1070;
                            sp10E0 = 0;
                        } else {
                            sp0->unk80 = (s16) (s32) sp1070;
                            sp0->unk84 = (s16) (s32) sp1074;
                            sp0->unk88 = (s16) (s32) sp1078;
                            sp0->unk8C = (s16) (s32) sp107C;
                            sp10E0 = 1;
                            sp107C -= (f32) (s32) sp107C;
                            sp1078 -= (f32) (s32) sp1078;
                            var_f4 = sp1070 - (f32) (s32) sp1070;
                            sp1074 -= (f32) (s32) sp1074;
                            var_a0 = 0x7FFF;
                            sp1070 = var_f4;
                        }
                        temp_f7 = (f32) ((u64) (((sp104C != 1) ? 0x7FFF : 0xFF) << 0x20) >> 0x20);
                        sp1044->unk0 = (s16) (s32) ((f64) ((f32) ((u64) (var_a0 << 0x20) >> 0x20) * var_f4) + 0.5);
                        sp1044->unk2 = (s16) (s32) ((f64) (arg0->unk294 * temp_f7) + 0.5);
                        sp1044->unk4 = (s16) (s32) ((f64) (sp1074 * (second half of f64)) + 0.5);
                        sp1044->unk6 = (s16) (s32) ((f64) (arg0->unk298 * temp_f7) + 0.5);
                        sp1044->unk8 = (s16) (s32) ((f64) (sp1078 * (second half of f64)) + 0.5);
                        sp1044->unkA = (s16) (s32) ((f64) (arg0->unk29C * temp_f7) + 0.5);
                        sp1044->unkC = (s16) (s32) ((f64) (sp107C * (second half of f64)) + 0.5);
                        sp1044->unkE = (s16) (s32) ((f64) (arg0->unk2A0 * temp_f7) + 0.5);
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x80);
                        sp1034 += 1;
                        sp1044 += 0x10;
                        goto block_35;
                    }
                    /* Duplicate return node #9. Try simplifying control flow for better match */
                    return 0;
                }
                sp10E0 = 0;
block_35:
                if (arg2 & 4) {
                    sp1030 = (arg2 & 0xFFF) < 8;
                    if (viceColorTable(sp, arg0 + 0x14FC) != 0) {
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x20);
                        goto block_38;
                    }
                    return 0;
                }
block_38:
                var_a5 = arg2 & 0x20;
                if (sp10E8 != 0) {
                    sp4->unk20 = (u16) ((s32) sp4->unk20 >> 1);
                    var_a3 = sp4;
                    temp_a4_2 = arg2 & 8;
                    temp_a2_3 = arg2 & 0xFFF;
                    var_a3->unk22 = (u16) ((s32) var_a3->unk22 >> 1);
                    if (temp_a4_2 != 0) {
                        var_a3 = (void *) (temp_a2_3 < 0x10);
                        sp1030 = var_a3;
                    } else {
                        sp1030 = temp_a2_3 < 0x20;
                    }
                    if (viceConvolve(sp, arg0->unk2FC, temp_a2_3, (s32) var_a3, temp_a4_2, var_a5) != 0) {
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x10);
                        var_a5 = arg2 & 0x20;
                        goto block_43;
                    }
                    return 0;
                }
block_43:
                var_t1 = arg2 & 0x40;
                if (var_a5 != 0) {
                    temp_f13 = arg0->unk2A8;
                    sp1080 = temp_f13;
                    temp_f12 = arg0->unk2AC;
                    sp1084 = temp_f12;
                    sp1088 = arg0->unk2B0;
                    sp108C = arg0->unk2B4;
                    sp10C8 = (((u32) (sp1054 * sp0->unk72) >> 5) - 1) << 8;
                    ScaleInRange(sp, &sp1080, temp_f12, temp_f13);
                    sp10C0 = (sp1018 == 0) ? 0x7FFF : 1;
                    (sp4 + (sp106C * 4))->unk50 = __viceLoadCSBCode(0x20, sp, arg2 & 0xFFF);
                    temp_at = sp4 + (sp106C * 4);
                    temp_at->unk50 = (s32) (temp_at->unk50 | sp10C8);
                    temp_t9 = sp106C + 1;
                    sp106C = temp_t9;
                    if ((0xFFFF0000 & (sp4 + (temp_t9 * 4))->unk4C) != 0xFFFF0000) {
                        if (sp10E0 == 0) {
                            if (sp1018 != 0) {
                                var_f4_2 = sp1080;
                                if (sp101C == 0) {
                                    sp0->unk80 = (s16) (s32) var_f4_2;
                                    sp0->unk84 = (s16) (s32) sp1084;
                                    sp0->unk88 = (s16) (s32) sp1088;
                                    sp0->unk8C = (s16) (s32) sp108C;
                                    sp10E0 = 1;
                                    sp10C0 = 0x7FFF;
                                    sp108C -= (f32) (s32) sp108C;
                                    sp1088 -= (f32) (s32) sp1088;
                                    var_f4_2 = sp1080 - (f32) (s32) sp1080;
                                    sp1084 -= (f32) (s32) sp1084;
                                    sp1080 = var_f4_2;
                                }
                            } else {
                                var_f4_2 = sp1080;
                            }
                            temp_f18 = (f32) ((u64) (sp10C0 << 0x20) >> 0x20);
                            temp_f16 = (f32) ((u64) (((sp104C != 1) ? 0x7FFF : 0xFF) << 0x20) >> 0x20);
                            sp1044->unk0 = (s16) (s32) ((f64) (temp_f18 * var_f4_2) + 0.5);
                            sp1044->unk2 = (s16) (s32) ((f64) (arg0->unk2B8 * temp_f16) + 0.5);
                            sp1044->unk4 = (s16) (s32) ((f64) (sp1084 * temp_f18) + 0.5);
                            sp1044->unk6 = (s16) (s32) ((f64) (arg0->unk2BC * temp_f16) + 0.5);
                            sp1044->unk8 = (s16) (s32) ((f64) (sp1088 * temp_f18) + 0.5);
                            sp1044->unkA = (s16) (s32) ((f64) (arg0->unk2C0 * temp_f16) + 0.5);
                            sp1044->unkC = (s16) (s32) ((f64) (sp108C * (second half of f64)) + 0.5);
                            sp1044->unkE = (s16) (s32) ((f64) (arg0->unk2C4 * (second half of f64)) + (second half of f64));
                            arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x80);
                            sp1034 += 1;
                            sp1044 += 0x10;
                            var_t1 = arg2 & 0x40;
                            goto block_49;
                        }
                        return 0;
                    }
                    /* Duplicate return node #9. Try simplifying control flow for better match */
                    return 0;
                }
block_49:
                var_t8 = arg2 & 0x80;
                if (var_t1 != 0) {
                    sp1030 = (arg2 & 0xFFF) < 0x80;
                    if (viceColorTable(sp, arg0 + 0x159C) != 0) {
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x20);
                        var_t8 = arg2 & 0x80;
                        goto block_52;
                    }
                    /* Duplicate return node #9. Try simplifying control flow for better match */
                    return 0;
                }
block_52:
                if ((var_t8 == 0) || (sp1030 = (arg2 & 0xFFF) < 0x100, (viceColorMatrix(sp, arg0->unk73F8) != 0))) {
                    var_a4 = arg2 & 0x200;
                    if (arg2 & 0x100) {
                        sp1090 = arg0->unk2C8;
                        sp1094 = arg0->unk2CC;
                        sp1098 = arg0->unk2D0;
                        sp109C = arg0->unk2D4;
                        sp10B8 = (((u32) (sp1054 * sp0->unk72) >> 5) - 1) << 8;
                        ScaleInRange(sp, &sp1090);
                        temp_a4_3 = sp1018 == 0;
                        temp_a3_3 = (temp_a4_3 != 0) ? 0x7FFF : 1;
                        sp10B0 = temp_a3_3;
                        (sp4 + (sp106C * 4))->unk50 = __viceLoadCSBCode(0x100, sp, arg2 & 0xFFF, temp_a3_3, temp_a4_3, 0x7FFF);
                        temp_t1_3 = sp4 + (sp106C * 4);
                        temp_t1_3->unk50 = (s32) (temp_t1_3->unk50 | sp10B8);
                        temp_a7_2 = sp106C + 1;
                        sp106C = temp_a7_2;
                        if ((0xFFFF0000 & (sp4 + (temp_a7_2 * 4))->unk4C) != 0xFFFF0000) {
                            if (sp10E0 == 0) {
                                if (sp1018 != 0) {
                                    var_f4_3 = sp1090;
                                    if (sp101C == 0) {
                                        sp0->unk80 = (s16) (s32) var_f4_3;
                                        sp0->unk84 = (s16) (s32) sp1094;
                                        sp0->unk88 = (s16) (s32) sp1098;
                                        sp0->unk8C = (s16) (s32) sp109C;
                                        sp10B0 = 0x7FFF;
                                        sp109C -= (f32) (s32) sp109C;
                                        sp1098 -= (f32) (s32) sp1098;
                                        var_f4_3 = sp1090 - (f32) (s32) sp1090;
                                        sp1094 -= (f32) (s32) sp1094;
                                        sp1090 = var_f4_3;
                                    }
                                } else {
                                    var_f4_3 = sp1090;
                                }
                                temp_f31 = (f32) ((u64) (((sp104C != 1) ? 0x7FFF : 0xFF) << 0x20) >> 0x20);
                                sp1044->unk0 = (s16) (s32) ((f64) ((f32) ((u64) (sp10B0 << 0x20) >> 0x20) * var_f4_3) + 0.5);
                                sp1044->unk2 = (s16) (s32) ((f64) (arg0->unk2D8 * temp_f31) + 0.5);
                                sp1044->unk4 = (s16) (s32) ((f64) (sp1094 * (second half of f64)) + 0.5);
                                sp1044->unk6 = (s16) (s32) ((f64) (arg0->unk2DC * temp_f31) + 0.5);
                                sp1044->unk8 = (s16) (s32) ((f64) (sp1098 * (second half of f64)) + 0.5);
                                sp1044->unkA = (s16) (s32) ((f64) (arg0->unk2E0 * temp_f31) + 0.5);
                                sp1044->unkC = (s16) (s32) ((f64) (sp109C * (second half of f64)) + 0.5);
                                sp1044->unkE = (s16) (s32) ((f64) (arg0->unk2E4 * temp_f31) + 0.5);
                                arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x80);
                                sp1034 += 1;
                                sp1044 += 0x10;
                                var_a4 = arg2 & 0x200;
                                goto block_60;
                            }
                            return 0;
                        }
                        /* Duplicate return node #9. Try simplifying control flow for better match */
                        return 0;
                    }
block_60:
                    var_v0 = arg2 & 0x400;
                    if (var_a4 != 0) {
                        sp1030 = (arg2 & 0xFFF) < 0x400;
                        if (viceColorTable(sp, arg0 + 0x163C) != 0) {
                            arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x20);
                            var_v0 = arg2 & 0x400;
                            goto block_63;
                        }
                        /* Duplicate return node #9. Try simplifying control flow for better match */
                        return 0;
                    }
block_63:
                    if (var_v0 != 0) {
                        sp1128 = var_v0;
                        sp103C = 0;
                        sp1030 = (arg2 & 0xFFF) < 0x1000;
                        viceHistogram(sp, arg0 + 0x280);
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x40);
                    } else {
                        sp4->unk46 = 0U;
                    }
                    var_a2 = arg2 & 0x800;
                    if (var_a2 != 0) {
                        sp1030 = 1;
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x400);
                        if (var_v0 != 0) {
                            goto block_76;
                        }
                        (sp4 + (sp106C * 4))->unk50 = __viceLoadMNMCode(sp);
                        temp_a3_4 = sp106C + 1;
                        sp106C = temp_a3_4;
                        var_a2 = 0xFFFF0000 & (sp4 + (temp_a3_4 * 4))->unk4C;
                        if (var_a2 == -0x10000) {
                            /* Duplicate return node #9. Try simplifying control flow for better match */
                            return 0;
                        }
                        goto block_76;
                    }
block_76:
                    temp_a5_3 = arg2 & 0x30000;
                    if (temp_a5_3 != 0) {
                        arg0->unk7F88 = (s32) (arg0->unk7F88 | 0x1000);
                    }
                    temp_t1_4 = sp4 + (sp106C * 4);
                    temp_t1_4->unk4C = (s32) (temp_t1_4->unk4C | 0x8000);
                    var_v0_2 = sp106C;
                    if (arg1->unk0 != 0x1909) {
                        goto block_79;
                    }
                    if (arg1->unk50 != 0x1908) {
                        var_v0_2 = sp106C;
                        goto block_79;
                    }
                    if (sp10D0 != 0) {
                        temp_v0_4 = ((s32) ((sp105C >= 0) ? sp105C : (sp105C + 7)) >> 3) << 8;
                        if (sp1050 == 1) {
                            if ((sp104C != 2) || (temp_a4_4 = arg2 & 0xFFF, (temp_a4_4 != 0))) {
                                sp1118 = temp_v0_4;
                                (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x63, sp, sp104C, 2);
                            } else {
                                sp1118 = temp_v0_4;
                                (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x65, sp, sp104C, 2, temp_a4_4, temp_a5_3);
                            }
                        } else {
                            sp1118 = temp_v0_4;
                            (sp4 + (sp106C * 4))->unk50 = __viceMapCode(0x66, sp, var_a2);
                        }
                        temp_a1_2 = sp4 + (sp106C * 4);
                        temp_a1_2->unk50 = (s32) (temp_a1_2->unk50 | sp1118);
                        var_v0_2 = sp106C + 1;
                        sp106C = var_v0_2;
                        var_t3 = var_v0_2 < 0xC;
                        if ((0xFFFF0000 & (sp4 + (var_v0_2 * 4))->unk4C) == 0xFFFF0000) {
                            /* Duplicate return node #9. Try simplifying control flow for better match */
                            return 0;
                        }
                        goto block_80;
                    }
                    var_v0_2 = sp106C;
block_79:
                    var_t3 = var_v0_2 < 0xC;
block_80:
                    if (var_t3 != 0) {
                        sp4->unk50 = (s32) ((var_v0_2 - 1) << 0x10);
                        vice_msp_code_to_etc(sp1010, 0x2000, 0x2000, sp1068 * 4, 0, &sp10, arg0 + 0x7F8C, sp4);
                        viceCoefFmt(sp, sp1060);
                        temp_t0 = sp4->unk20;
                        sp4->unk24 = (s16) (s32) ((f64) sp4->unk14 / (f64) temp_t0);
                        temp_a5_4 = sp4->unk26;
                        sp4->unk26 = (u16) (s32) ((second half of f64) / (f64) (second half of f64));
                        M2C_TRAP_IF(temp_t0 == 0);
                        M2C_TRAP_IF(temp_a5_4 == 0);
                        if (arg1->unk0 != 0x1909) {
                            goto block_83;
                        }
                        if ((arg1->unk50 == 0x1908) && (sp10D0 == 0)) {
                            sp4->unk28 = 0x8600;
                        } else {
block_83:
                            if (sp1020 != 1) {
                                goto block_84;
                            }
                            if (!(arg0->unk7F88 & 0x2000)) {
                                sp4->unk28 = 0x8380;
                            } else {
block_84:
                                sp4->unk28 = 0x8000;
                            }
                        }
                        sp4->unk2A = 0;
                        var_a3_2 = arg2 & 0xFFF;
                        if (sp1024 != 0) {
                            goto block_86;
                        }
                        if (arg1->unk0 != 0x1909) {
                            goto block_154;
                        }
                        if (arg1->unk50 == 0x1908) {
                            var_a3_2 = arg2 & 0xFFF;
                            if (sp10D0 == 0) {
                                goto block_154;
                            }
block_86:
                            if (var_a3_2 != 0) {
                                sp4->unk2C = 0x8380;
                            } else {
                                sp4->unk2C = 0x8000;
                            }
                        } else {
block_154:
                            sp4->unk2C = 0x8000;
                        }
                        sp4->unk2E = 0;
                        var_v0_3 = sp4->unk36;
                        temp_a2_4 = sp4->unk4E;
                        if ((u32) (temp_a2_4 + (sp4->unk46 + var_v0_3) + 0x80) < 0x801U) {
                            if (temp_a2_4 != 0) {
                                var_a1 = 0x9700 - temp_a2_4;
                                sp4->unk4C = var_a1;
                                var_v0_3 = sp4->unk36;
                            } else {
                                var_a1 = 0x9700;
                            }
                            if ((var_v0_3 != 0) && ((var_a1 -= var_v0_3, sp4->unk34 = var_a1, sp0->unk52 = (u16) (var_a1 + sp0->unk52), sp0->unk56 = (u16) (var_a1 + sp0->unk56), sp0->unk5A = (u16) (var_a1 + sp0->unk5A), sp0->unk5E = (u16) (var_a1 + sp0->unk5E), ((arg2 & 0x44) == 0x44)) || ((arg2 & 0x204) == 0x204) || ((arg2 & 0x240) == 0x240))) {
                                sp0->unk62 = (u16) (var_a1 + sp0->unk62);
                                sp0->unk66 = (u16) (var_a1 + sp0->unk66);
                                sp0->unk6A = (u16) (var_a1 + sp0->unk6A);
                                sp0->unk6E = (u16) (var_a1 + sp0->unk6E);
                            }
                            if (sp4->unk46 != 0) {
                                temp_v0_5 = arg0->unk4F8;
                                if (temp_v0_5 >= 0x1909U) {
                                    var_a2_2 = 1;
                                    if (temp_v0_5 >= 0x190AU) {
                                        if (temp_v0_5 >= 0x8000U) {
                                            if (temp_v0_5 > 0x8000U) {
                                                var_a2_2 = 1;
                                                if (temp_v0_5 != 0x8049) {
                                                    var_a2_2 = sp10A0;
                                                }
                                            } else {
                                                goto block_158;
                                            }
                                        } else {
                                            var_a2_2 = ((temp_v0_5 ^ 0x190A) == 0) ? 2 : sp10A0;
                                        }
                                    }
                                } else if (temp_v0_5 >= 0x1907U) {
                                    if ((temp_v0_5 >= 0x1908U) && (temp_v0_5 != 0x1908)) {
                                        var_a2_2 = sp10A0;
                                    } else {
                                        goto block_158;
                                    }
                                } else if (temp_v0_5 != 0x1906) {
                                    var_a2_2 = sp10A0;
                                } else {
block_158:
                                    var_a2_2 = 4;
                                }
                                temp_a1_3 = var_a1 - (arg0->unk4E0 * var_a2_2 * 2);
                                sp4->unk44 = temp_a1_3;
                                if (sp4->unk36 != 0) {
                                    sp0->unk62 = (u16) (temp_a1_3 + sp0->unk62);
                                    sp0->unk66 = (u16) (temp_a1_3 + sp0->unk66);
                                    sp0->unk6A = (u16) (temp_a1_3 + sp0->unk6A);
                                    sp0->unk6E = (u16) (temp_a1_3 + sp0->unk6E);
                                } else {
                                    sp0->unk52 = (u16) (temp_a1_3 + sp0->unk52);
                                    sp0->unk56 = (u16) (temp_a1_3 + sp0->unk56);
                                    sp0->unk5A = (u16) (temp_a1_3 + sp0->unk5A);
                                    sp0->unk5E = (u16) (temp_a1_3 + sp0->unk5E);
                                }
                            }
                            if (arg0->unk7F88 & 0x400) {
                                sp4->unk1C = 0xBE2800;
                            }
                            sp0->unk78 = (s16) (sp0->unk70 * sp0->unk74);
                            sp0->unk7A = (s16) (sp0->unk72 * sp0->unk76);
                            if ((sp1014 != 0) && (arg1->unk1C == 1) && (arg1->unk24 == 2) && (arg1->unk6C == 1)) {
                                if (arg1->unk74 == 1) {
                                    sp4->unk10 = (s32) (sp4->unk10 * 2);
                                    sp4->unk18 = (s32) (sp4->unk18 * 2);
                                    sp4->unk22 = (u16) (sp4->unk22 * 2);
                                }
                            }
                            return 1;
                        }
                        /* Duplicate return node #9. Try simplifying control flow for better match */
                        return 0;
                    }
                    return 0;
                }
                return 0;
            }
            return 0;
        case 0x1909:                                /* switch 2 */
        case 0x190A:                                /* switch 2 */
            sp4->unkA = 8U;
            sp4->unk10 = 7;
            goto block_22;
        }
        break;
    case 0x1909:                                    /* switch 1 */
    case 0x190A:                                    /* switch 1 */
        sp4->unk8 = 8U;
        sp4->unk26 = 8U;
        goto block_12;
    }
}

void viceCoefFmt(void **arg0, s32 arg1) {
    s16 temp_a0;
    s16 temp_a5_2;
    s16 temp_a7_2;
    s16 temp_t0;
    s16 temp_t1_2;
    s16 temp_t3_2;
    s16 temp_t9_2;
    s16 temp_v0_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_3;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_3;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_t8;

    if (arg1 == 0x8000) {
        temp_a1 = *arg0;
        temp_a7 = temp_a1->unk18;
        temp_t1 = temp_a1->unk2C;
        temp_t3 = temp_a1->unk28;
        temp_t9 = temp_a1->unk3C;
        temp_a1->unk3C = (s32) temp_a1->unk30;
        temp_a1->unk30 = temp_t9;
        temp_a1->unk28 = (s32) temp_a1->unk24;
        temp_a1->unk24 = temp_t3;
        temp_a1->unk2C = (s32) temp_a1->unk20;
        temp_a1->unk20 = temp_t1;
        temp_a1->unk18 = (s32) temp_a1->unk14;
        temp_a1->unk14 = temp_a7;
        temp_a6 = temp_a1->unk44;
        temp_a4 = temp_a1->unk40;
        temp_v1 = temp_a1->unk34;
        temp_a1->unk34 = (s32) temp_a1->unk38;
        temp_v0 = temp_a1->unkC;
        temp_a1->unk38 = temp_v1;
        temp_a1->unk40 = (s32) temp_a1->unk4C;
        temp_a2 = temp_a1->unk8;
        temp_a1->unk4C = temp_a4;
        temp_a1->unk44 = (s32) temp_a1->unk48;
        temp_a5 = temp_a1->unk1C;
        temp_a1->unk48 = temp_a6;
        temp_a1->unk1C = (s32) temp_a1->unk10;
        temp_a1->unk10 = temp_a5;
        temp_a1->unk8 = (s32) temp_a1->unk4;
        temp_a1->unk4 = temp_a2;
        temp_a1->unkC = (s32) temp_a1->unk0;
        temp_a1->unk0 = temp_v0;
        temp_a1_2 = *arg0;
        temp_t1_2 = (s16) temp_a1_2->unk4C;
        temp_t3_2 = temp_a1_2->unk4A;
        temp_t9_2 = (s16) temp_a1_2->unk48;
        temp_v0_2 = temp_a1_2->unk46;
        temp_a0 = (s16) temp_a1_2->unk44;
        temp_a5_2 = temp_a1_2->unk42;
        temp_a1_2->unk42 = (s16) temp_a1_2->unk3C;
        temp_a1_2->unk3C = temp_a5_2;
        temp_a1_2->unk44 = (s16) temp_a1_2->unk3A;
        temp_a1_2->unk3A = temp_a0;
        temp_a1_2->unk46 = (s16) temp_a1_2->unk38;
        temp_a1_2->unk38 = temp_v0_2;
        temp_a1_2->unk48 = (s16) temp_a1_2->unk36;
        temp_a1_2->unk36 = temp_t9_2;
        temp_a1_2->unk4A = (s16) temp_a1_2->unk34;
        temp_a1_2->unk34 = temp_t3_2;
        temp_a1_2->unk4C = (s16) temp_a1_2->unk32;
        temp_a1_2->unk32 = temp_t1_2;
        temp_t0 = temp_a1_2->unk3E;
        temp_a1_2->unk3E = (s16) temp_a1_2->unk40;
        temp_a7_2 = temp_a1_2->unk4E;
        temp_a1_2->unk40 = temp_t0;
        temp_a1_2->unk4E = (s16) temp_a1_2->unk30;
        temp_a1_2->unk30 = temp_a7_2;
        return;
    }
    if (arg1 == 0x190A) {
        temp_a1_3 = *arg0;
        temp_a1_3->unk48 = (s32) temp_a1_3->unk44;
        temp_a1_3->unk4C = (s32) temp_a1_3->unk40;
        temp_a1_3->unk38 = (s32) temp_a1_3->unk34;
        temp_a1_3->unk3C = (s32) temp_a1_3->unk30;
        temp_a1_3->unk28 = (s32) temp_a1_3->unk24;
        temp_a1_3->unk2C = (s32) temp_a1_3->unk20;
        temp_a1_3->unk18 = (s32) temp_a1_3->unk14;
        temp_a1_3->unk1C = (s32) temp_a1_3->unk10;
        temp_a1_3->unk8 = (s32) temp_a1_3->unk4;
        temp_a1_3->unkC = (s32) temp_a1_3->unk0;
        return;
    }
    if (arg1 == 0x1909) {
        temp_a1_4 = *arg0;
        temp_a6_2 = temp_a1_4->unk0;
        temp_a7_3 = temp_a1_4->unk10;
        temp_t0_2 = temp_a1_4->unk20;
        temp_t1_3 = temp_a1_4->unk30;
        temp_t2 = temp_a1_4->unk40;
        temp_a1_4->unk4C = temp_t2;
        temp_a1_4->unk48 = temp_t2;
        temp_a1_4->unk44 = temp_t2;
        temp_a1_4->unk3C = temp_t1_3;
        temp_a1_4->unk38 = temp_t1_3;
        temp_a1_4->unk34 = temp_t1_3;
        temp_a1_4->unk2C = temp_t0_2;
        temp_a1_4->unk28 = temp_t0_2;
        temp_a1_4->unk24 = temp_t0_2;
        temp_a1_4->unk1C = temp_a7_3;
        temp_a1_4->unk18 = temp_a7_3;
        temp_a1_4->unk14 = temp_a7_3;
        temp_a1_4->unkC = temp_a6_2;
        temp_a1_4->unk8 = temp_a6_2;
        temp_a1_4->unk4 = temp_a6_2;
        temp_t8 = *arg0;
        temp_t3_3 = temp_t8->unk80;
        temp_t8->unk8C = temp_t3_3;
        temp_t8->unk88 = temp_t3_3;
        temp_t8->unk84 = temp_t3_3;
    }
}

s32 FilterInRange(void *arg0) {
    f32 *var_a2;
    f64 temp_f4;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_lo;

    temp_a2 = arg0->unk44;
    temp_a1 = arg0->unk40;
    temp_lo = arg0->unkC * (((arg0->unk0 ^ 0x8012) == 0) ? (temp_a1 + temp_a2) : (temp_a1 * temp_a2));
    var_a2 = arg0->unk50;
    if (temp_lo > 0) {
        temp_a3 = var_a2 + (temp_lo * 4);
loop_2:
        temp_f4 = (f64) *var_a2;
        if (!((second half of f64) < temp_f4)) {
            var_a2 += 4;
            if (!(temp_f4 < -1.0)) {
                if (var_a2 == temp_a3) {
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return 1;
                }
                goto loop_2;
            }
        }
        return 0;
    }
    return 1;
}

s32 MatrixInRange(f32 *arg0) {
    f32 *var_a2;
    f64 temp_f4;

    var_a2 = arg0;
loop_1:
    temp_f4 = (f64) *var_a2;
    if (!((second half of f64) < temp_f4)) {
        var_a2 += 4;
        if (!(temp_f4 < -1.0)) {
            if (var_a2 == (arg0 + 0x40)) {
                return 1;
            }
            goto loop_1;
        }
    }
    return 0;
}

void ScaleInRange(void **arg0, f32 *arg1) {
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f9;
    f64 temp_f5_3;
    f64 temp_f5_4;
    f64 temp_f5_5;
    f64 temp_f5_6;
    f64 temp_f5_7;
    f64 temp_f6;
    f64 temp_f7;
    f64 var_f7;
    s32 temp_a5;
    s32 temp_a7;
    s32 var_a4;
    s32 var_a6;

    arg0->unk101C = 0;
    arg0->unk1018 = 0;
    temp_a5 = M2C_ERROR(/* unknown instruction: movf $a5, $zero, $fcc0 */);
    var_a4 = 0;
    if (temp_a5 != 0) {
        goto block_1;
    }
    if ((f64) (second half of f64) < -1.0) {
block_1:
        if ((f32) (s32) (second half of f64) == (second half of f64)) {
            goto block_2;
        }
        /* Duplicate return node #18. Try simplifying control flow for better match */
        arg0->unk1018 = 1;
        return;
    }
block_2:
    temp_f5 = arg1->unk4;
    temp_a7 = M2C_ERROR(/* unknown instruction: movf $a7, $zero, $fcc2 */);
    if (temp_a7 != 0) {
        goto block_3;
    }
    if ((second half of f64) < -1.0) {
block_3:
        if ((f32) (s32) temp_f5 == temp_f5) {
            goto block_4;
        }
        /* Duplicate return node #18. Try simplifying control flow for better match */
        arg0->unk1018 = 1;
        return;
    }
block_4:
    temp_f5_2 = arg1->unk8;
    var_f7 = (f64) temp_f5_2;
    var_a6 = M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc4 */);
    if (var_a6 != 0) {
        goto block_5;
    }
    if (var_f7 < -1.0) {
block_5:
        if ((f32) (s32) temp_f5_2 == temp_f5_2) {
            goto block_6;
        }
        /* Duplicate return node #18. Try simplifying control flow for better match */
        arg0->unk1018 = 1;
        return;
    }
block_6:
    temp_f9 = arg1->unkC;
    temp_f5_3 = (f64) temp_f9;
    if ((!((second half of f64) < temp_f5_3) && !(temp_f5_3 < -1.0)) || ((f32) (s32) temp_f9 == temp_f9)) {
        if (temp_a5 != 0) {
            goto block_10;
        }
        if (!((second half of f64) < -1.0)) {
            if (temp_a7 != 0) {
                goto block_38;
            }
            if ((second half of f64) < -1.0) {
block_38:
                arg0->unk1018 = 1;
                temp_f7 = (f64) arg1->unk8;
                var_a4 = 1;
                if (((second half of f64) < temp_f7) || (temp_f7 < -1.0)) {
                    arg0->unk1018 = 1;
                    temp_f5_4 = (f64) arg1->unkC;
                    var_a4 = 1;
                    if (((second half of f64) < temp_f5_4) || (temp_f5_4 < -1.0)) {
                        arg0->unk1018 = 1;
                        return;
                    }
                    goto block_24;
                }
                goto block_33;
            }
            goto block_21;
        }
block_10:
        arg0->unk1018 = 1;
        temp_f6 = (f64) arg1->unk4;
        var_a4 = 1;
        if (((second half of f64) < temp_f6) || (temp_f6 < -1.0)) {
            arg0->unk1018 = 1;
            var_a4 = 1;
            if (((second half of f64) < (f64) arg1->unk8) || ((second half of f64) < -1.0)) {
                arg0->unk1018 = 1;
                temp_f5_5 = (f64) arg1->unkC;
                var_a4 = 1;
                if (((second half of f64) < temp_f5_5) || (temp_f5_5 < -1.0)) {
                    arg0->unk1018 = 1;
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    arg0->unk101C = 1;
                    return;
                }
                goto block_24;
            }
            goto block_33;
        }
        var_f7 = (f64) arg1->unk8;
        var_a6 = M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc7 */);
block_21:
        if (var_a6 != 0) {
            goto block_22;
        }
        if (!(var_f7 < -1.0)) {
block_33:
            temp_f5_6 = (f64) arg1->unkC;
            if (((second half of f64) < temp_f5_6) || (temp_f5_6 < -1.0)) {
                arg0->unk1018 = 1;
                return;
            }
            goto block_24;
        }
block_22:
        arg0->unk1018 = 1;
        temp_f5_7 = (f64) arg1->unkC;
        var_a4 = 1;
        if (!((second half of f64) < temp_f5_7) && !(temp_f5_7 < -1.0)) {
block_24:
            if (var_a4 == 0) {
                arg0->unk101C = 1;
                return;
            }
            return;
        }
        arg0->unk1018 = 1;
        return;
    }
    arg0->unk1018 = 1;
}

s32 XferModesInRange(void *arg0, s64 arg1) {
    s64 sp10;

    if ((!(arg1 & 0x18) || (sp10 = arg1, (viceCoefFmt(arg0->unk2FC) != 0))) && (!(arg1 & 0x80) || (viceCoefFmt(arg0->unk73F8, (s32) arg1) != 0))) {
        return 1;
    }
    return 0;
}

void viceCheckRequest(void **arg0, s32 arg7) {
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_t0;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s32 var_s3;
    s32 var_s4;
    s32 var_t3_2;
    s64 var_a2;
    s64 var_t3;
    u8 temp_a6;
    u8 temp_a6_2;

    var_a7 = arg7;
    var_a5 = arg0->unk2FC;
    temp_s1 = arg0->unk704;
    temp_s2 = arg0->unk700;
    if (arg0->unk554 != 0) {
        // Error: negative shift count
        // At instruction: bgez $v1, .L0da411b8
        if (M2C_ERROR()) {
            // Error: negative shift count
            // At instruction: bgez $a0, .L0da4116c
            if (M2C_ERROR() && (arg0->unk500 != 0)) {
                var_a4 = arg0->unk7DE8;
            } else {
                arg0->unk7DE4 = (s32) (arg0->unk7DE4 | 0x800);
                var_a4 = arg0->unk7DE8 | 0x800;
                arg0->unk7DE8 = var_a4;
                if (arg0->unk560 != 0) {
                    var_a7 = 0x20000;
                    var_a4 |= 0x20000;
                    arg0->unk7DE8 = var_a4;
                }
            }
        } else {
            var_a4 = arg0->unk7DE8;
        }
    } else {
        var_a4 = arg0->unk7DE8;
    }
    temp_a0 = arg0->unk4E0;
    var_a2 = (s64) temp_s2 << 0x23;
    if (temp_a0 != 0) {
        // Error: negative shift count
        // At instruction: bgez $a2, .L0da411b0
        if (M2C_ERROR()) {
            var_a4 |= 0x400;
            arg0->unk7DE8 = var_a4;
            if ((temp_a0 > 0) && (var_a3 = temp_a0 < 0x101, (var_a3 != 0))) {
                temp_a6 = arg0->unk500;
                temp_a1 = arg0->unk7DE4 | 0x400;
                arg0->unk7DE4 = temp_a1;
                if (temp_a6 != 0) {
                    unksp28 = (s64) var_a5;
                    var_a3 = 0x10000 | temp_a1;
                    arg0->unk7DE4 = var_a3;
                    var_a2 = 0x10000 | var_a4;
                    arg0->unk7DE8 = (s32) var_a2;
                }
                unksp28 = (s64) var_a5;
                temp_lo = arg0->unk4E0 * __glElementsPerGroup(arg0->unk4FC, temp_a1, (s32) var_a2, var_a3, var_a4, var_a5, temp_a6, var_a7);
                var_s3 = 1;
                var_a4 = arg0->unk7DE8;
                var_s4 = temp_lo * 2;
            } else {
                arg0->unk7DE4 = 0;
                var_s4 = 0;
                goto block_13;
            }
        } else {
            goto block_13;
        }
    } else {
        var_s4 = 0;
block_13:
        var_s3 = 0;
    }
    temp_a0_2 = arg0->unk1684;
    temp_a3 = arg0->unk1648;
    temp_a2 = (temp_a0_2 == 0x1908) | (temp_a0_2 == 0x190A);
    temp_a1_2 = (temp_a0_2 == 0x1909) | temp_a2;
    if ((temp_a3 != 0) && (temp_s1 & 4)) {
        var_a4 |= 0x200;
        arg0->unk7DE8 = var_a4;
        if ((temp_a3 > 0) && (temp_a3 < 0x101) && (temp_a1_2 != 0)) {
            unksp28 = (s64) var_a5;
            var_s3 += 1;
            arg0->unk7DE4 = (s32) (arg0->unk7DE4 | 0x200);
            temp_lo_2 = arg0->unk1648 * __glElementsPerGroup(temp_a0_2, temp_a1_2, temp_a2, temp_a3, var_a4, var_a5, 0x190AU, 0x1908);
            var_a4 = arg0->unk7DE8;
            var_s4 += temp_lo_2;
        } else {
            arg0->unk7DE4 = 0;
        }
    }
    if (arg0->unk77B5 != 0) {
        var_a4 |= 0x100;
        arg0->unk7DE8 = var_a4;
        arg0->unk7DE4 = (s32) (arg0->unk7DE4 | 0x100);
    }
    if (arg0->unk77AC != 0x8421) {
        var_a4 |= 0x80;
        arg0->unk7DE8 = var_a4;
        arg0->unk7DE4 = (s32) (arg0->unk7DE4 | 0x80);
    }
    temp_a0_3 = arg0->unk15E4;
    temp_a3_2 = arg0->unk15A8;
    temp_a2_2 = (temp_a0_3 == 0x1908) | (temp_a0_3 == 0x190A);
    temp_a1_3 = (temp_a0_3 == 0x1909) | temp_a2_2;
    if ((temp_a3_2 != 0) && (temp_s1 & 2)) {
        var_a4 |= 0x40;
        arg0->unk7DE8 = var_a4;
        if ((temp_a3_2 > 0) && (temp_a3_2 < 0x101) && (temp_a1_3 != 0)) {
            unksp28 = (s64) var_a5;
            var_s3 += 1;
            arg0->unk7DE4 = (s32) (arg0->unk7DE4 | 0x40);
            temp_lo_3 = arg0->unk15A8 * __glElementsPerGroup(temp_a0_3, temp_a1_3, temp_a2_2, temp_a3_2, var_a4, var_a5, 0x190AU, 0x1908);
            var_a4 = arg0->unk7DE8;
            var_s4 += temp_lo_3;
        } else {
            arg0->unk7DE4 = 0;
        }
    }
    temp_a0_4 = var_a5->unk0;
    switch (temp_a0_4) {                            /* switch 1; irregular */
    case 0x0:                                       /* switch 1 */
        break;
    case 0x8011:                                    /* switch 1 */
        /* fallthrough */
    case 0x8012:                                    /* switch 1 */
        temp_a3_3 = (temp_a0_4 != 0x8012) ? 0x10 : 8;
        var_a4 |= temp_a3_3;
        arg0->unk7DE8 = var_a4;
        if ((arg0->unk2A8 != 1.0f) || (arg0->unk2AC != 1.0f) || (arg0->unk2B0 != 1.0f) || (arg0->unk2B4 != 1.0f) || (arg0->unk2B8 != 0.0f) || (arg0->unk2BC != 0.0f) || (arg0->unk2C0 != 0.0f) || (arg0->unk2C4 != 0.0f)) {
            var_a4 |= 0x20;
            arg0->unk7DE8 = var_a4;
        }
        temp_a0_5 = var_a5->unk40;
        switch (temp_a0_5) {                        /* switch 2; irregular */
        default:                                    /* switch 2 */
block_67:
            arg0->unk7DE4 = 0;
            break;
        case 7:                                     /* switch 2 */
        case 7:                                     /* switch 3 */
block_83:
            var_t3 = (s64) temp_s2 << 0x23;
            if (var_a5->unk44 == 7) {
block_84:
                if (var_t3 >= 0) {
                    temp_a1_4 = arg0->unk7DE4 | temp_a3_3;
                    arg0->unk7DE4 = temp_a1_4;
                    if (var_a4 & 0x20) {
                        arg0->unk7DE4 = (s32) (temp_a1_4 | 0x20);
                    }
                    if (temp_a3_3 == 0x10) {
                        var_s4 = (var_a5->unk40 >= 4) ? (var_s4 + 0x200) : var_s4;
                    }
                } else {
                    goto block_67;
                }
            } else {
                goto block_67;
            }
            break;
        case 3:                                     /* switch 2 */
            if (var_a5->unk44 == 3) {
                var_t3 = (s64) temp_s2 << 0x23;
                goto block_84;
            }
            switch (temp_a0_5) {                    /* switch 3; irregular */
            case 5:                                 /* switch 2 */
            case 5:                                 /* switch 3 */
                if (var_a5->unk44 == 5) {
                    var_t3 = (s64) temp_s2 << 0x23;
                    goto block_84;
                }
                if (temp_a0_5 != 7) {
                    goto block_67;
                }
                goto block_83;
            }
            break;
        }
        break;
    }
    temp_a0_6 = arg0->unk1544;
    temp_a3_4 = arg0->unk1508;
    temp_a2_3 = (temp_a0_6 == 0x1908) | (temp_a0_6 == 0x190A);
    temp_a1_5 = (temp_a0_6 == 0x1909) | temp_a2_3;
    if (temp_a3_4 != 0) {
        temp_a5 = temp_s1 & 1;
        if (temp_a5 != 0) {
            var_a4 |= 4;
            arg0->unk7DE8 = var_a4;
            if ((temp_a3_4 > 0) && (temp_a6_2 = temp_a3_4 < 0x101, (temp_a6_2 != 0)) && (temp_a1_5 != 0)) {
                var_s3 += 1;
                temp_a7 = arg0->unk7DE4 | 4;
                arg0->unk7DE4 = temp_a7;
                temp_t0 = arg0->unk1508 * __glElementsPerGroup(temp_a0_6, temp_a1_5, temp_a2_3, temp_a3_4, var_a4, temp_a5, temp_a6_2, temp_a7);
                var_a4 = arg0->unk7DE8;
                var_s4 += temp_t0;
            } else {
                arg0->unk7DE4 = 0;
            }
        }
    }
    if (arg0->unk2F8 != 0) {
        arg0->unk7DE4 = 0;
        var_a4 |= 4;
        arg0->unk7DE8 = var_a4;
        goto block_44;
    }
    if ((arg0->unk294 != 0.0f) || (arg0->unk298 != 0.0f) || (arg0->unk29C != 0.0f) || (arg0->unk2A0 != 0.0f) || (temp_f4 = arg0->unkDD8, (arg0->unk280 != temp_f4)) || (arg0->unk284 != temp_f4) || (arg0->unk288 != temp_f4) || (var_t3_2 = var_s3 < 3, (arg0->unk28C != temp_f4))) {
        var_a4 |= 2;
        arg0->unk7DE8 = var_a4;
        arg0->unk7DE4 = (s32) (arg0->unk7DE4 | 2);
block_44:
        var_t3_2 = var_s3 < 3;
    }
    if ((var_t3_2 != 0) && (var_s4 < 0x801)) {
        temp_a1_6 = arg0->unk7DE4;
        if (var_a4 == temp_a1_6) {
            if (ScaleInRange(arg0, (f32 *) temp_a1_6) == 0) {
                var_a4 = arg0->unk7DE8;
                /* Duplicate return node #50. Try simplifying control flow for better match */
                arg0->unk7DE4 = 0;
                arg0->unk7DE8 = (s32) (arg0->unk773C | var_a4);
                return;
            }
            return;
        }
    }
    arg0->unk7DE4 = 0;
    arg0->unk7DE8 = (s32) (arg0->unk773C | var_a4);
}

s32 viceSetIter(void *arg0, void *arg1, s32 *arg2) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_t1;
    s32 temp_t3;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_t3;

    arg2->unk24 = 0;
    temp_a4 = arg1->unkA8;
    var_a5 = 0;
    if (temp_a4 >= 0x10) {
        var_a2 = temp_a4;
        if (arg1->unkAC >= 8) {
            temp_a0 = temp_a4 >> 0x1F;
            arg2->unk4 = temp_a4;
            if ((((((temp_a4 ^ temp_a0) - temp_a0) & 0xF) ^ temp_a0) - temp_a0) != 0) {
                temp_a2 = arg1->unkA8;
                temp_a3 = temp_a2 >> 0x1F;
                var_a2 = (temp_a4 - (((((temp_a2 ^ temp_a3) - temp_a3) & 0xF) ^ temp_a3) - temp_a3)) + 0x10;
                arg2->unk4 = var_a2;
            }
            arg2->unk8 = var_a2;
            arg2->unkC = var_a2;
            arg2->unk0 = var_a2;
            var_a0 = arg1->unkAC;
            temp_a4_2 = var_a0 >> 0x1F;
            arg2->unk10 = var_a0;
            if ((((((var_a0 ^ temp_a4_2) - temp_a4_2) & 7) ^ temp_a4_2) - temp_a4_2) != 0) {
                temp_a2_2 = arg1->unkAC;
                temp_a3_2 = temp_a2_2 >> 0x1F;
                var_a0 = (var_a0 - (((((temp_a2_2 ^ temp_a3_2) - temp_a3_2) & 7) ^ temp_a3_2) - temp_a3_2)) + 8;
                arg2->unk10 = var_a0;
            }
            temp_lo = var_a2 * (arg1->unk1C * arg1->unk24);
            arg2->unk8 = temp_lo;
            temp_lo_2 = var_a2 * (arg1->unk6C * arg1->unk74);
            var_a2_2 = temp_lo * var_a0;
            var_a4 = temp_lo_2 * var_a0;
            arg2->unkC = temp_lo_2;
            arg2->unk14 = var_a2_2;
            arg2->unk18 = var_a4;
            temp_t1 = arg2->unk1C;
            if ((var_a2_2 + var_a4) > 0x3C0000) {
                if (var_a4 < var_a2_2) {
                    var_a0 = -8 & (s32) ((f64) 0x1E0000 / (f64) temp_lo);
                    M2C_TRAP_IF(temp_lo == 0);
                    arg2->unk10 = var_a0;
                    M2C_TRAP_IF((temp_lo * (var_a0 - temp_t1)) == 0);
                    arg2->unk20 = (s32) ((f64) (second half of f64) / (second half of f64));
                } else {
                    var_a0 = -8 & (s32) ((f64) 0x1E0000 / (f64) temp_lo_2);
                    M2C_TRAP_IF(temp_lo_2 == 0);
                    arg2->unk10 = var_a0;
                    M2C_TRAP_IF((temp_lo_2 * (var_a0 - temp_t1)) == 0);
                    arg2->unk20 = (s32) ((f64) (second half of f64) / (second half of f64));
                }
                var_a2_2 = temp_lo * var_a0;
                arg2->unk14 = var_a2_2;
                var_a4 = temp_lo_2 * var_a0;
                arg2->unk18 = var_a4;
            } else {
                arg2->unk20 = 1;
            }
            // Error: negative shift count
            // At instruction: bgez $t0, .L0da414d8
            if (M2C_ERROR() && (arg1->unk1C == var_a0)) {
                if ((arg1->unk24 == 2) && (arg1->unk6C == var_a0) && (arg1->unk74 == var_a0)) {
                    arg2->unk18 = var_a2_2;
                    arg2->unkC = temp_lo;
                    var_a4 = var_a2_2;
                    arg2->unk4 = var_a2;
                }
            }
            temp_t3 = arg0->unk7F70;
            if (arg0->unk7F68 != -1) {
                var_t3 = temp_t3 < var_a2_2;
                goto block_17;
            }
            var_t3 = temp_t3 < var_a2_2;
            if (arg0->unk7F6C == -1) {
                arg2->unk24 = 1;
                var_a5 = 1;
                goto block_19;
            }
block_17:
            if ((var_t3 == 0) && (arg0->unk7F74 >= var_a4)) {
block_19:
                if (var_a5 != 0) {
                    goto block_20;
                }
                /* Duplicate return node #21. Try simplifying control flow for better match */
                return 1;
            }
            vice_gfxfile(arg0 + 0x7F38, (s32 *) var_a2_2, 2, (void *) var_a4, NULL, (void *) var_a2, (void *) temp_lo);
            arg2->unk24 = 1;
block_20:
            if (vice_gfxfile(arg0, arg2) != NULL) {
                return 1;
            }
            viceCloseDev(arg0);
            return 0;
        }
    }
    return 0;
}

s32 viceLateLumaConvert(void *arg0, void *arg1, s64 arg2) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_t3;
    s32 var_v0;
    s32 var_v0_2;

    if (arg1->unk0 != arg1->unk50) {
        if (arg2 != 0x200000) {
            var_a5 = 1;
            if (arg2 & 2) {
                temp_f4 = arg0->unk280;
                var_a5 = 1;
                if ((arg0->unk284 != temp_f4) || (arg0->unk288 != temp_f4) || ((f64) arg0->unk28C != (second half of f64))) {
                    var_a5 = 0;
                }
                temp_f4_2 = arg0->unk294;
                if ((arg0->unk298 != temp_f4_2) || (arg0->unk29C != temp_f4_2) || (var_a3 = arg2 & 0x20, ((f64) arg0->unk2A0 != (second half of f64)))) {
                    var_a5 = 0;
                    goto block_11;
                }
            } else {
block_11:
                var_a3 = arg2 & 0x20;
            }
            var_a4 = arg2 & 0x100;
            if (var_a3 != 0) {
                temp_f4_3 = arg0->unk2A8;
                if ((arg0->unk2AC != temp_f4_3) || (arg0->unk2B0 != temp_f4_3) || ((f64) arg0->unk2B4 != 1.0)) {
                    var_a5 = 0;
                }
                temp_f4_4 = arg0->unk2B8;
                if ((arg0->unk2BC != temp_f4_4) || (arg0->unk2C0 != temp_f4_4) || (var_a4 = arg2 & 0x100, ((f64) arg0->unk2C4 != (second half of f64)))) {
                    var_a5 = 0;
                    var_a4 = arg2 & 0x100;
                }
            }
            if (var_a4 != 0) {
                temp_f4_5 = arg0->unk2C8;
                if ((arg0->unk2CC != temp_f4_5) || (arg0->unk2D0 != temp_f4_5) || ((f64) arg0->unk2D4 != 1.0)) {
                    var_a5 = 0;
                }
                temp_f4_6 = arg0->unk2D8;
                if ((arg0->unk2DC != temp_f4_6) || (arg0->unk2E0 != temp_f4_6) || (var_a6 = arg2 & 0x18, ((f64) arg0->unk2E4 != (second half of f64)))) {
                    var_a5 = 0;
                    goto block_30;
                }
            } else {
block_30:
                var_a6 = arg2 & 0x18;
            }
            if (var_a6 != 0) {
                var_a5 = ((arg0->unk2FC->unk8 ^ 0x1909) != 0) ? 0 : var_a5;
            }
            var_t3 = arg2 & 0x40;
            if (arg2 & 4) {
                var_a5 = ((arg0->unk1504 ^ 0x1909) != 0) ? 0 : var_a5;
                var_t3 = arg2 & 0x40;
            }
            var_v0_2 = arg2 & 0x200;
            if (var_t3 != 0) {
                var_a5 = ((arg0->unk15A4 ^ 0x1909) != 0) ? 0 : var_a5;
                var_v0_2 = arg2 & 0x200;
            }
            var_v0 = var_a5 & 0xFF;
            if (var_v0_2 != 0) {
                var_v0 = (((arg0->unk1644 ^ 0x1909) != 0) ? 0 : var_a5) & 0xFF;
            }
            return (arg2 & 0x80) ? 0 : var_v0;
        }
        return 0;
    }
    return 1;
}
