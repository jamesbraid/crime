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
Error occurred while processing instruction: bgez $a2, .L0d96ffb8

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
Error occurred while processing instruction: bgez $t8, .L0d9701c0

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
Error occurred while processing instruction: bgez $a1, .L0d97021c

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $at, .L0d970054

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $v0, .L0d970054

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $v1, .L0d970058

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a2, .L0d970044

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a3, .L0d970048

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
Error occurred while processing instruction: bgez $a0, .L0d976cf8

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
Error occurred while processing instruction: bgez $a2, .L0d96ffb8

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
Error occurred while processing instruction: bgez $t8, .L0d9701c0

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
Error occurred while processing instruction: bgez $a1, .L0d97021c

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $at, .L0d970054

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $v0, .L0d970054

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $v1, .L0d970058

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a2, .L0d970044

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a3, .L0d970048

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
Error occurred while processing instruction: bgez $a0, .L0d976cf8

? __glBindTexture(s64, s64, s64);                   /* extern */
void *__glCheckCopyTexImageArgs(s64, s64, s64, s64, s64, s64, s64, s64, s32, s32); /* extern */
void *__glCheckCopyTexSubImageArgs(s64, s64, s64, s64, s64, ?, s64, s64, s32, s32, s32); /* extern */
void *__glCheckTexImage1DArgs(s64, s64, s64, s64, s64, s64, s64, s64); /* extern */
void *__glCheckTexImage2DArgs(s64, u16 *, s64, s64, s64, s64, u8, s64, s32); /* extern */
void *__glCheckTexSubImage1DArgs(u16 *, s64, s64, s64, s64, s64, s64); /* extern */
void *__glCheckTexSubImage2DArgs(u16 *, s64, s64, s64, s64, s64, s64, s64, s32); /* extern */
? __glCrmFlushAndConfirm(u16 *, s32, s64, s64, s32, s32); /* extern */
s32 __glCrmGenericPickStoreProcs(u16 *, s32, ? *, s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 __glFloorLog2(s32, s32, s32, u32, s64, s32);    /* extern */
? __glFreeTexObj(s32, void *);                      /* extern */
? __glGenericPickTextureProcs(s32);                 /* extern */
s32 __glIsTextureConsistent(u16 *, ?, s64, s64, ?); /* extern */
void *__glLookUpTexture(u16 *, s32);                /* extern */
s32 *__glLookUpTextureObject(u16 *, s32, ?, s32, ?); /* extern */
s32 __glLookUpTextureParams(u16 *, s32);            /* extern */
? __glSetError(u16 *, s32, s64, ?);                 /* extern */
? __glTexInitTextureObject(s64, void (*)(s32, void *), s32); /* extern */
? __glim_BindTextureEXT(s64, s64, s64);             /* extern */
? __glim_CopyTexImage1DEXT(s64, s64, s64, s64, s64, s64, s64); /* extern */
? __glim_CopyTexImage2DEXT(s64, s64, s64, s64, s64, s64, s64, s32); /* extern */
? __glim_CopyTexSubImage1DEXT(s64, s64, s64, s64, s64, s64); /* extern */
? __glim_CopyTexSubImage2DEXT(s64, s64, s64, s64, s64, s64, s64, s64); /* extern */
? __glim_TexImage1D(s64, s64, s64, s64, s64, s64, s64, s64); /* extern */
? __glim_TexImage2D(u16 *, s64, s64, s64, s64, u8, s64, s64, s32); /* extern */
? __glim_TexParameterfv(s64, s64, s64);             /* extern */
? __glim_TexParameteriv(s64, s64, s64);             /* extern */
? __glim_TexSubImage1DEXT(s64, s64, s64, s64, s64, s64, s64); /* extern */
? __glim_TexSubImage2DEXT(s64, s64, s64, s64, s64, s64, s64, s64, s32); /* extern */
? __gllei_TexImage1D(s64, s64, s64, s64, s64, s64, s64, s64, s32); /* extern */
? __gllei_TexImage2D(u16 *, u16 *, s64, s64, s64, s64, u8, s64, s32, s32); /* extern */
? __gllei_TexSubImage1DEXT(u16 *, s64, s64, s64, s64, s64, s64, s64); /* extern */
? __gllei_TexSubImage2DEXT(u16 *, s64, s64, s64, s64, s64, s64, s64, s32, s32); /* extern */
? bcopy(u16 *, u16 *, s64, s32, s64);               /* extern */
s32 dmBufferAttach(s32, s32, s32, void *, void *, void *, s32); /* extern */
? dmBufferFree(s32, void *);                        /* extern */
s64 dmBufferMapData(s32, s32, void *, s32, s32, s32, s32, s32); /* extern */
? dmParamsCopyAllElems(s32, s32, s32, void *, s32, void *, s32); /* extern */
? dmParamsCreate(void *, void *);                   /* extern */
? dmParamsDestroy(s32, void *);                     /* extern */
s32 getenv(void *, s32, ?);                         /* extern */
s64 ioctl(s32, s64, s32 *);                         /* extern */
? perror(void *);                                   /* extern */
? printf(void *, s32, s32, s32, s32, s32, s32);     /* extern */
s32 sub_0d970000(s64, s32 *, s32, s32, s32, s64, s32, s32); /* extern */
void __glCrmPickTextureProcs(u16 *arg0, u16 *, s64, s64, s64, s64, u8, u8, s32, s32, s32, s32); /* static */
extern ? __glCalcEyeLinear;
extern ? __glCalcMixedTexture;
extern ? __glCalcObjectLinear;
extern ? __glCalcSphereMap;
extern ? __glCalcTexture;
extern ? __glCopyTexImage;
extern ? __glNop;
extern ? __glReadTexImage;
extern ? sub_0da40000;

s32 __glCrmTexIoctl(s32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp8 = arg2;
    if ((saved_reg_gp->unk-578C == 0) || (arg1 != 0x5602)) {
        temp_v0 = ioctl(arg1, sp8);
        sp0 = temp_v0;
        if (temp_v0 != 0) {
            if (saved_reg_gp->unk-5438 != 0) {
                perror(&sub_0da40000 + 0x4088);
                goto block_5;
            }
        } else {
block_5:
            if (saved_reg_gp->unk-5438 != 0) {
                switch (arg1) {                     /* irregular */
                case 0x5601:
                    printf(&sub_0da40000 + 0x4118, sp8->unk4, sp8->unk8, sp8->unk0, sp8->unkC);
                    break;
                case 0x5602:
                    M2C_ERROR(/* Read from unset register $t9 */)(&sub_0da40000 + 0x40F8, sp8, 0x5602);
                    break;
                case 0x5603:
                    printf(&sub_0da40000 + 0x40A0, sp8->unk0, sp8->unk4, sp8->unk8);
                    printf(&sub_0da40000 + 0x40D0, sp8->unkC, sp8->unk10, sp8->unk14, sp8->unk18, sp8->unk1C, sp8->unk20);
                    break;
                }
            }
        }
        return (sp0 == 0) ? 0 : -1;
    }
    return 0;
}

s32 texFastBind(void *arg1) {
    if (saved_reg_gp->unk-5438 != 0) {
        printf(&sub_0da40000 + 0x4150);
    }
    arg1->unk-1000 = 0;
    return 0;
}

s32 texIoctlBind(s64 arg0, s32 arg1) {
    s32 sp1C;
    s64 sp8;
    s64 var_a4;

    sp1C = arg1;
    var_a4 = arg0;
    if (saved_reg_gp->unk-5438 != 0) {
        sp8 = arg0;
        printf(&sub_0da40000 + 0x4170, (s32) var_a4);
        var_a4 = sp8;
    }
    if (ioctl(var_a4->unk7B10, 0x5650, &sp1C) != 0) {
        perror(&sub_0da40000 + 0x4198);
        return -1;
    }
    return 0;
}

s32 crmUpdateSharedTiles(s64 arg0, void *arg1) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s32 sp8;
    s32 sp4;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_3;
    s64 temp_a5;
    s64 temp_s4_2;
    s64 var_a0;
    s64 var_a1;
    s64 var_a6_2;
    s64 var_v0_2;
    s64 var_v0_4;
    u16 *temp_s1;
    u16 *temp_v0_3;
    u16 *temp_v0_4;
    u16 *temp_v0_5;
    u16 *var_a5;
    u16 *var_s1_2;
    u16 *var_s2_2;
    u16 *var_s3;
    u16 *var_v0_5;
    u16 *var_v0_6;
    u16 *var_v0_7;
    u16 temp_a3_2;

    temp_v0 = arg1->unk11C;
    spA0 = (s64) temp_v0;
    temp_v0_2 = *temp_v0;
    sp98 = (s64) arg1;
    if (temp_v0_2 & 0x80) {
        return 1;
    }
    if (temp_v0_2 & 0x20) {
        sp50 = arg0;
        sp68 = 0;
        sp60 = 0;
        sp78 = spA0 + 0xC;
        var_a0 = sp60;
        temp_a4 = sp98->unkEC;
        sp58 = (s64) temp_a4;
        var_a1 = sp68;
        var_v0_2 = sp58;
        spA8 = (s64) ((temp_a4 * 0xFFFFFFFC) + (&sub_0da40000 + 0x6418));
loop_10:
        temp_a3 = var_v0_2 < 7;
        temp_a5 = sp98->unkE4 + var_a1;
        temp_a2 = spA0->unk20 + var_a0;
        if (temp_a3 != 0) {
            var_a6 = *temp_a2;
            if (var_a6 & 0x20) {
                sp58 = var_v0_2;
                sp70 = temp_a5;
                var_a7 = temp_a5->unk18;
                temp_s4 = temp_a5->unk14;
                sp90 = (s64) temp_a2;
                temp_t0 = 1 << var_v0_2;
                sp68 = var_a1;
                sp60 = var_a0;
                if (((temp_t0 != temp_s4) && (temp_t0 != var_a7)) || (temp_s4 == 0) || (var_a7 == 0) || (var_v0_3 = 0, (sp90->unk14 == NULL))) {
                    var_v0_3 = 1;
                }
                if (var_v0_3 == 0) {
                    if ((temp_t0 != 0x40) && (temp_t0 != 0x10)) {
                        var_s1 = 1;
                        if (spA0->unk14 != 0) {
                            goto block_22;
                        }
                        if (spA0->unk1C == 0) {
                            goto block_61;
                        }
block_22:
                        var_v0_4 = sp78;
                        goto block_23;
                    }
                    var_s1 = 0;
                    if (spA0->unk8 != 0) {
                        var_v0_4 = spA0;
                        goto block_23;
                    }
                    if (spA0->unk10 != 0) {
                        var_v0_4 = spA0;
                        goto block_23;
                    }
block_61:
                    spB8 = (s64) var_a7;
                    sp8 = var_s1;
                    sp4 = 1;
                    if (__glCrmGenericPickStoreProcs(sp50->unk7B10, 0x5601, sp, temp_a3) == 0) {
                        var_v0_4 = spA0 + (var_s1 * 0xC);
                        var_v0_4->unkC = var_s1;
                        var_v0_4->unk8 = sp0;
                        var_v0_4->unk10 = spC;
                        if ((sp0 != 0) && (spC != 0)) {
                            var_a7 = (s32) spB8;
                            spA0->unk0 = (s32) (spA0->unk0 | 0x10);
                            var_a6 = sp90->unk0;
block_23:
                            temp_s4_2 = temp_s4 << sp90->unk10;
                            var_s3 = sp90->unk14;
                            var_s1_2 = var_v0_4->unk10 + spA8->unk28;
                            if (var_a6 & 4) {
                                var_v0_2 = sp58;
                                if (var_a7 > 0) {
                                    var_s2 = 1;
                                    temp_s8 = temp_s4_2 >> 1;
                                    spB0 = temp_s8 - 1;
loop_30:
                                    var_a6_2 = spB0;
                                    var_a5 = var_s3;
                                    if (temp_s4_2 <= 0x20) {
                                        if (temp_s8 > 0) {
                                            var_v0_5 = var_s1_2 + 2;
                                            if (temp_s8 & 1) {
                                                var_v0_6 = var_s1_2 + 2;
                                                var_a5 = var_s3 + 2;
                                                var_a6_2 -= 1;
                                                *var_s1_2 = *var_s3;
                                                if (!((s32) var_v0_6 & 7)) {
                                                    temp_v0_3 = var_s1_2 + 0x1A;
                                                    var_v0_6 = !((s32) temp_v0_3 & 0x1E0) ? (var_s1_2 + 0x1E1A) : temp_v0_3;
                                                }
                                                var_v0_5 = var_v0_6 + 2;
                                            }
                                            var_a2 = (s32) var_v0_5 & 7;
                                            if ((temp_s8 >> 1) != 0) {
loop_39:
                                                var_a6_2 -= 2;
                                                var_v0_5->unk-2 = (u16) var_a5->unk0;
                                                if (var_a2 == 0) {
                                                    temp_v0_4 = var_v0_5 + 0x18;
                                                    var_v0_5 = !((s32) temp_v0_4 & 0x1E0) ? (temp_v0_4 + 0x1E00) : temp_v0_4;
                                                }
                                                var_v0_7 = var_v0_5 + 2;
                                                temp_a3_2 = var_a5->unk2;
                                                var_a5 += 4;
                                                var_v0_7->unk-2 = temp_a3_2;
                                                if (!((s32) var_v0_7 & 7)) {
                                                    temp_v0_5 = var_v0_7 + 0x18;
                                                    var_v0_7 = !((s32) temp_v0_5 & 0x1E0) ? (temp_v0_5 + 0x1E00) : temp_v0_5;
                                                }
                                                var_v0_5 = var_v0_7 + 2;
                                                var_a2 = (s32) var_v0_5 & 7;
                                                if (var_a6_2 != -1) {
                                                    goto loop_39;
                                                }
                                            }
                                        }
                                    } else {
                                        __glCrmPickTextureProcs(var_s3, var_s1_2, temp_s4_2);
                                    }
                                    var_s1_2 += 8;
                                    temp_t9 = var_s2 & 3;
                                    temp_t3 = var_s2 & 0xF;
                                    var_s2 += 1;
                                    var_s3 += temp_s4_2;
                                    if (temp_t9 == 0) {
                                        temp_s1 = var_s1_2 + 0x7E0;
                                        var_s1_2 = (temp_t3 == 0) ? (temp_s1 - 0x1E00) : temp_s1;
                                    }
                                    if ((var_a7 + 1) != var_s2) {
                                        goto loop_30;
                                    }
                                    goto block_6;
                                }
                            } else {
                                var_s5 = var_a7;
                                if (var_a7 > 0) {
                                    var_s2_2 = var_s1_2 + 0x80;
                                    temp_s6 = temp_s4_2 > 0x20;
loop_52:
                                    if (temp_s6 != 0) {
                                        __glCrmPickTextureProcs(var_s3, var_s1_2, temp_s4_2);
                                    } else {
                                        M2C_ERROR(/* Read from unset register $t9 */)(var_s3, var_s1_2, temp_s4_2);
                                    }
                                    if (sp70->unk14 == 1) {
                                        if (temp_s6 == 0) {
                                            bcopy(var_s3, var_s2_2, temp_s4_2);
                                        } else {
                                            __glCrmPickTextureProcs(var_s3, var_s2_2, temp_s4_2);
                                        }
                                    }
                                    var_s5 -= 1;
                                    var_s2_2 += 0x200;
                                    var_s1_2 += 0x200;
                                    var_s3 += temp_s4_2;
                                    if (var_s5 > 0) {
                                        goto loop_52;
                                    }
block_6:
                                    var_a6 = *(s32 *) sp90;
                                }
                                var_v0_2 = sp58;
                            }
                            var_a0 = sp60;
                            var_a1 = sp68;
                            sp90->unk0 = (s32) (-0x21 & var_a6);
                            goto block_9;
                        }
                        /* Duplicate return node #45. Try simplifying control flow for better match */
                        spA0->unk0 = (s32) (-0x21 & spA0->unk0);
                        return 1;
                    }
                    __glSetError((u16 *)0x505);
                    var_v0 = 0;
                    /* Duplicate return node #2. Try simplifying control flow for better match */
                    return var_v0;
                }
                /* Duplicate return node #45. Try simplifying control flow for better match */
                spA0->unk0 = (s32) (-0x21 & spA0->unk0);
                return 1;
            }
        }
block_9:
        var_a0 += 0x24;
        sp60 = var_a0;
        var_v0_2 -= 1;
        sp58 = var_v0_2;
        var_a1 += 0x64;
        sp68 = var_a1;
        spA8 += 4;
        if (var_a0 != 0x18C) {
            goto loop_10;
        }
        spA0->unk0 = (s32) (-0x21 & spA0->unk0);
        return 1;
    }
    var_v0 = 1;
    return var_v0;
}

void crmCalcDMTexture(void *arg0, void *arg1) {
    arg0->unk7EFC();
    arg1->unk34 = (f32) ((second half of f64) - (f64) (second half of f64));
}

s32 crmDefineTexture(u16 *arg0, void *arg1, s32 arg2, s32 arg3) {
    s64 sp28;
    ? *var_v0_3;
    s32 *temp_a0;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    s32 var_v0_4;
    s32 var_v0_5;
    void *temp_a1;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_a0_2;
    void *var_v0_2;

    temp_s0 = arg1->unk11C;
    if (temp_s0->unk4 >= 0) {
        temp_v0 = temp_s0->unk0;
        sp28 = 0;
        if (temp_v0 & 0x10) {
            goto block_2;
        }
        if (arg2 != 0) {
            var_a0 = temp_v0 & 0x80;
            if (temp_v0 & 0x40) {
                if (arg3 != 0) {
                    var_s1 = 1;
                    goto block_39;
                }
                var_s1 = 1;
                goto block_27;
            }
            goto block_3;
        }
        var_s1 = 1;
        goto block_20;
    }
    temp_a1 = arg0->unk7F30;
    var_v0 = temp_a1->unk8;
    var_a0_2 = temp_a1 + (var_v0 * 4);
    var_a7 = 0;
    if (var_a0_2->unk20C != 0) {
        var_v0_2 = temp_a1;
loop_45:
        if (var_v0_2->unk20C != 0) {
            var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $a7, $fcc0 */);
            var_a7 += 1;
            var_v0_2 += 4;
            M2C_ERROR(/* unknown instruction: movt.s $f4, $f0, $fcc0 */);
            if (var_a7 != 0x80) {
                goto loop_45;
            }
        } else {
            var_a6 = var_a7;
        }
        var_v0 = var_a6;
        temp_a1->unk8 = var_a6;
        var_a0_2 = temp_a1 + (var_a6 * 4);
    }
    temp_a3 = var_v0 + 1;
    temp_a1->unk8 = temp_a3;
    if (temp_a3 == 0x80) {
        temp_a1->unk8 = 0;
    }
    temp_v0_2 = var_a0_2->unk20C;
    if (temp_v0_2 != NULL) {
        temp_v0_2->unk4 = -1;
        temp_v0_2->unk0 = (s32) (temp_v0_2->unk0 | 0x10);
    }
    var_a0_2->unk20C = temp_s0;
    var_a0_2->unkC = arg1;
    sp28 = 1;
    temp_s0->unk4 = var_v0;
block_2:
    var_a0 = temp_s0->unk0 & 0x80;
block_3:
    if (var_a0 != 0) {
        temp_v0_3 = temp_s0->unk24;
        if (temp_v0_3 != NULL) {
            temp_a0 = temp_v0_3->unk9C;
            var_s2 = 0;
            if (temp_a0 != NULL) {
                var_s2 = *temp_a0;
            }
        } else {
            var_s2 = 0;
        }
    } else {
        var_s2 = 0;
    }
    var_a2 = 0;
    var_a6_2 = 0xA;
    var_a7_2 = 0;
    var_v0_3 = sp;
loop_8:
    temp_a4 = arg1->unkEC < var_a6_2;
    var_a7_2 += 1;
    var_a0_3 = var_s2;
    var_a6_2 -= 1;
    if (temp_a4 == 0) {
        if (var_s2 == 0) {
            var_a2 += 0x24;
            var_a0_3 = (temp_s0->unk20 + var_a2)->unk-C;
        }
        var_v0_3->unkC = var_a0_3;
        if (arg2 != 0) {
            goto block_11;
        }
        if (var_s2 == 0) {

        } else {
            goto block_13;
        }
    } else {
block_11:
        var_v0_3 += 4;
        if (var_a7_2 == 4) {
            if (var_s2 != 0) {
block_13:
                if (arg2 != 0) {

                } else if (arg1->unkEC == 6) {

                }
            }
        } else {
            goto loop_8;
        }
    }
    temp_a5 = temp_s0->unk0 & 0x80;
    var_a6_3 = 0x80000000;
    if (temp_a5 != 0) {
        var_a6_3 = temp_s0->unk4 | 0x80000000;
    }
    temp_t8 = temp_s0->unk20->unk4;
    temp_t1 = temp_s0->unk20->unk8;
    temp_a7 = (temp_t1 >= 2) ? temp_t1 : 1;
    temp_v0_4 = __glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5603, sp, 6, temp_a4, temp_a5, var_a6_3, temp_a7, (temp_t8 >= 2) ? temp_t8 : 1, temp_a7);
    var_s1 = temp_v0_4 == 0;
    if (temp_v0_4 != 0) {
        if (saved_reg_gp->unk-5438 != 0) {
            printf(&sub_0da40000 + 0x41B8, var_s2);
        }
block_20:
        var_v0_4 = 0;
    } else {
        temp_v0_5 = temp_s0->unk0 & ~0x10;
        temp_s0->unk0 = temp_v0_5;
        if (arg2 != 0) {
            temp_s0->unk0 = (s32) (temp_v0_5 | 0x40);
        } else {
            temp_s0->unk0 = (s32) (temp_v0_5 & ~0x40);
        }
        var_v0_4 = 1;
    }
    if (arg3 != 0) {
        if (var_s1 != 0) {
            if (var_v0_4 != 0) {
                goto block_24;
            }
block_39:
            if ((sp28 == 0) && (arg0->unk7EF8 == arg1)) {

            } else {
block_24:
                arg0->unk7EF8 = arg1;
                temp_a1_2 = temp_s0->unk4;
                if (saved_reg_gp->unk-5780 != 0) {
                    var_v0_5 = __glCrmGenericPickStoreProcs(arg0, temp_a1_2);
                } else {
                    var_v0_5 = __glCrmGenericPickStoreProcs(arg0, temp_a1_2);
                }
                var_s1 = var_v0_5 == 0;
            }
block_27:
            if (arg3 != 0) {
                goto block_28;
            }
            /* Duplicate return node #32. Try simplifying control flow for better match */
            return var_s1;
        }
        if (arg3 == 0) {
            /* Duplicate return node #32. Try simplifying control flow for better match */
            return var_s1;
        }
block_28:
        if (var_s1 != 0) {
            if (temp_s0->unk0 & 0x80) {
                arg0->unk2EDC = (void *) (sub_0d970000 - 0x14F0);
                return var_s1;
            }
            arg0->unk2EDC = (void *) arg0->unk7EFC;
            return var_s1;
        }
        /* Duplicate return node #32. Try simplifying control flow for better match */
        return var_s1;
    }
    return var_s1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x30. */
void crmSetTextureParam(u16 *arg0) {
    s64 sp18;
    s32 sp14;
    s32 sp10;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a7_2;
    s32 temp_at_2;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s0_6;
    s32 temp_s0_7;
    s32 temp_s0_8;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_t9;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_s0;
    s32 var_s0_2;
    s64 temp_a2_2;
    s64 temp_a7_3;
    void *temp_a0_2;
    void *temp_a4_6;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;
    void *temp_at;
    void *temp_s1;
    void *temp_s3;
    void *temp_s4;

    temp_a1 = arg0->unk7D58;
    temp_s3 = arg0->unk7DBC;
    temp_s1 = arg0->unk6E30;
    temp_s4 = arg0->unk7DB8;
    if (temp_s1 != NULL) {
        temp_a1_2 = temp_a1 | 0x8000;
        arg0->unk7D58 = temp_a1_2;
        temp_a7 = temp_s1->unk11C;
        temp_a0 = temp_s1->unk14;
        temp_at = temp_a7->unk20;
        unksp38 = (temp_a1 << 0x10) >= 0;
        sp4 = 0;
        temp_a4 = temp_s1->unk10;
        sp0 = 0;
        temp_s0 = (((temp_at->unkC & 0xF) << 0x14) & ~0xC0000) | ((temp_at->unk10 & 3) << 0x12);
        temp_a5 = arg0->unk9B4;
        temp_a6 = temp_s1->unkE4;
        temp_s0_2 = !(temp_at->unk0 & 4) ? (temp_s0 & ~0x01000000) : (temp_s0 | 0x01000000);
        switch (temp_a4) {                          /* switch 1; irregular */
        default:                                    /* switch 1 */
            if (temp_a0 != 0x2600) {
                var_s0 = ((0x2601 ^ temp_a0) == 0) ? (temp_s0_2 | 0x40) : temp_s0_2;
            } else {
                var_s0 = temp_s0_2 & ~0x40;
            }
            sp18 = 0;
block_10:
            temp_a4_2 = temp_s1->unk4;
            temp_a7_2 = saved_reg_gp->unk-5434;
            if (temp_a4_2 != 0x2901) {
                var_a0 = 1;
                if (temp_a4_2 != 0x2900) {
                    var_a1 = temp_a7_2 != 0;
                    if (temp_a4_2 != 0x812F) {
                        var_a1 = temp_a7_2 != 0;
                        if (temp_a4_2 != 0x812D) {
                            var_a0 = 0;
                        } else {
                            var_a0 = 1;
                            var_s0 = (var_s0 & ~0x30) | ((temp_a7_2 == 0) ? 0x10 : 0x20);
                        }
                    } else {
                        var_a0 = 0;
                        var_s0 = (var_s0 & ~0x30) | 0x20;
                    }
                } else {
                    var_a1 = temp_a7_2 != 0;
                    var_s0 = (var_s0 & ~0x30) | ((temp_a7_2 == 0) ? 0 : 0x20);
                }
            } else {
                var_a1 = temp_a7_2 != 0;
                var_a0 = 0;
                var_s0 = (var_s0 & ~0x30) | 0x10;
            }
            temp_a4_3 = temp_s1->unk8;
            switch (temp_a4_3) {                    /* switch 2; irregular */
            default:                                /* switch 2 */
                temp_t9 = temp_a4_3 ^ 0x812D;
                var_a0 = (temp_t9 == 0) ? 1 : var_a0;
                var_s0_2 = (temp_t9 == 0) ? ((var_s0 & ~0xC) | ((var_a1 == 0) ? 4 : 8)) : var_s0;
                break;
            case 0x2901:                            /* switch 2 */
                var_s0_2 = (var_s0 & ~0xC) | 4;
                break;
            case 0x2900:                            /* switch 2 */
                var_a0 = 1;
                var_s0_2 = (var_s0 & ~0xC) | ((var_a1 == 0) ? 0 : 8);
                break;
            case 0x812F:                            /* switch 2 */
                var_s0_2 = (var_s0 & ~0xC) | 8;
                break;
            }
            temp_a4_4 = temp_a5->unk0;
            switch (temp_a4_4) {                    /* switch 3; irregular */
            default:                                /* switch 3 */
                var_a1_2 = 0;
                if (temp_a4_4 == 0x8062) {
                case 0x1E01:                        /* switch 3 */
                    temp_a1_3 = temp_a6->unk40;
                    var_s0_2 |= 3;
                    if ((temp_a1_3 == 0x8049) || (temp_a1_3 == 0x1909) || (temp_a1_3 == 0x190A) || (temp_a1_3 == 0x1907) || (temp_a1_3 == 0x1908)) {
                        arg0->unk812E = 1;
                    }
                    var_a1_2 = 0;
                }
                break;
            case 0x2100:                            /* switch 3 */
                var_a1_2 = 0;
                var_s0_2 &= ~3;
                break;
            case 0x2101:                            /* switch 3 */
                var_s0_2 = (var_s0_2 & ~3) | 1;
                if (temp_a6->unk40 == 0x1907) {
                    arg0->unk812E = 1;
                }
                var_a1_2 = 0;
                break;
            case 0xBE2:                             /* switch 3 */
                var_a1_2 = 1;
                var_s0_2 = (var_s0_2 & ~3) | 2;
                break;
            }
            temp_a2 = temp_a6->unk30;
            temp_t8 = temp_s1->unkEC;
            temp_a4_5 = 0xA - temp_a2;
            temp_a3 = temp_a6->unk2C;
            temp_t1 = 0xA - temp_a3;
            temp_a7_3 = (((1 << (0xE - temp_a4_5)) - 1) & 0xFFFF) | ((((1 << (0xE - temp_t1)) - 1) << 0x10) & 0xFFFF0000);
            unksp28 = temp_a7_3;
            sp4 = (s32) temp_a7_3;
            temp_a3_2 = (((temp_a3 & 0xF) * 0x10) | ((((temp_a4_5 & 0xF) << 8) | (((temp_t1 & 0xF) << 0xC) & ~0xF00)) & ~0xF0)) & ~0xF;
            temp_a2_2 = (temp_a2 & 0xF) | temp_a3_2;
            unksp30 = temp_a2_2;
            temp_s0_3 = (((var_s0_2 & ~0x3C00) | ((temp_t8 & 0xF) << 0xA)) & ~0x3C000) | (((0xA - temp_t8) & 0xF) << 0xE);
            sp0 = (s32) temp_a2_2;
            if (((var_a1 != 0) ? 0 : (var_a0 & 0xFF)) != 0) {
                temp_ra = ((second half of f64) << 0x18) | ((s64) (second half of f64) << 0x10) | (((second half of f64) << 8) | ((s64) (second half of f64) << 0));
                temp_s4->unk2160 = temp_ra;
                temp_s3->unk2160 = temp_ra;
                if (var_a1_2 != 0) {
                    goto block_26;
                }
            } else if (var_a1_2 == 0) {

            } else {
block_26:
                temp_at_2 = ((s64) temp_a5->unk4 << 0x18) | ((second half of f64) << 0x10) | (((s64) (second half of f64) << 8) | ((s64) temp_a5->unk10 << 0));
                temp_s4->unk2168 = temp_at_2;
                temp_s3->unk2168 = temp_at_2;
            }
            if ((__glCrmGenericPickStoreProcs(arg0, (s32) temp_s1, (? *) temp_a2_2, temp_a3_2, -0x10, (s32) temp_a5, (s32) temp_a6, (s32) temp_a7_3) != 0) && (__glCrmGenericPickStoreProcs(arg0, (s32) temp_s1, (? *) sp18, 1) != 0)) {
                if (unksp38 != 0) {
                    goto block_30;
                }
                if (arg0->unk7E68 != temp_s0_3) {
block_30:
                    sp8 = temp_s0_3;
                    temp_s4->unk2110 = temp_s0_3;
                    temp_s3->unk2110 = sp8;
                    arg0->unk7E68 = sp8;
                    if (unksp38 == 0) {
                        goto block_32;
                    }
                    goto block_34;
                }
block_32:
                if (arg0->unk7E6C == unksp30) {
                    if (arg0->unk7E70 != unksp28) {
block_34:
                        /* Duplicate return node #35. Try simplifying control flow for better match */
                        sp10 = (s32) unksp30;
                        sp14 = (s32) unksp28;
                        temp_s4->unk2118 = (f64) sp10;
                        temp_s3->unk2118 = (f64) sp10;
                        arg0->unk7E70 = sp4;
                        arg0->unk7E6C = sp0;
                        return;
                    }
                    return;
                }
                sp10 = (s32) unksp30;
                sp14 = (s32) unksp28;
                temp_s4->unk2118 = (f64) sp10;
                temp_s3->unk2118 = (f64) sp10;
                arg0->unk7E70 = sp4;
                arg0->unk7E6C = sp0;
                return;
            }
            arg0->unk6E30 = NULL;
            arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x8000);
            return;
        case 0x2600:                                /* switch 1 */
            temp_a1_4 = temp_s0_2 & ~0x380;
            if (temp_a0 != 0x2600) {
                var_s0 = ((temp_a0 ^ 0x2601) == 0) ? (temp_a1_4 | 0x40) : temp_a1_4;
            } else {
                var_s0 = temp_a1_4 & ~0x40;
            }
            sp18 = 0;
            goto block_10;
        case 0x2601:                                /* switch 1 */
            temp_s0_4 = (temp_s0_2 & ~0x380) | 0x80;
            if (temp_a0 != 0x2600) {
                var_s0 = ((0x2601 ^ temp_a0) == 0) ? (temp_s0_4 | 0x40) : temp_s0_4;
            } else {
                var_s0 = temp_s0_4 & ~0x40;
            }
            sp18 = 0;
            goto block_10;
        case 0x2700:                                /* switch 1 */
            temp_s0_5 = (temp_s0_2 & ~0x380) | 0x100;
            if (temp_a0 != 0x2600) {
                var_s0 = ((0x2601 ^ temp_a0) == 0) ? (temp_s0_5 | 0x40) : temp_s0_5;
            } else {
                var_s0 = temp_s0_5 & ~0x40;
            }
block_65:
            sp18 = 1;
            if ((temp_a7->unk0 & 0x80) && ((temp_a0_2 = temp_a7->unk24, (temp_a0_2 == NULL)) || (temp_a4_6 = temp_a0_2->unk9C, (temp_a4_6 == NULL)) || (temp_a4_6->unk10 == 0))) {
                arg0->unk6E30 = NULL;
                arg0->unk7D58 = (s32) (temp_a1_2 & ~0x8000);
                return;
            }
            goto block_10;
        case 0x2701:                                /* switch 1 */
            temp_s0_6 = (temp_s0_2 & ~0x380) | 0x180;
            if (temp_a0 != 0x2600) {
                var_s0 = ((0x2601 ^ temp_a0) == 0) ? (temp_s0_6 | 0x40) : temp_s0_6;
            } else {
                var_s0 = temp_s0_6 & ~0x40;
            }
            goto block_65;
        case 0x2702:                                /* switch 1 */
            temp_s0_7 = (temp_s0_2 & ~0x380) | 0x200;
            if (temp_a0 != 0x2600) {
                var_s0 = ((0x2601 ^ temp_a0) == 0) ? (temp_s0_7 | 0x40) : temp_s0_7;
            } else {
                var_s0 = temp_s0_7 & ~0x40;
            }
            goto block_65;
        case 0x2703:                                /* switch 1 */
            temp_s0_8 = (temp_s0_2 & ~0x380) | 0x280;
            if (temp_a0 != 0x2600) {
                var_s0 = ((0x2601 ^ temp_a0) == 0) ? (temp_s0_8 | 0x40) : temp_s0_8;
            } else {
                var_s0 = temp_s0_8 & ~0x40;
            }
            goto block_65;
        }
    } else {
        arg0->unk7D58 = (s32) (temp_a1 & ~0x8000);
    }
}

void __glCrmResetTextureState(u16 *arg0) {
    s32 temp_a1;
    void *temp_gp;

    arg0->unk7F28 = 1;
    arg0->unk7E6C = 0;
    arg0->unk7E68 = 0;
    arg0->unk7EF8 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xE161C;
    arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x8000);
    if (temp_gp->unk-5438 < 0) {
        unksp8 = (s64) arg0;
        temp_gp->unk-5438 = getenv(&sub_0da40000 + 0x41D8, 0xE161C, 1);
        temp_gp->unk-578C = getenv(&sub_0da40000 + 0x41E8);
        temp_gp->unk-5784 = getenv(&sub_0da40000 + 0x4200);
        temp_gp->unk-5788 = getenv(&sub_0da40000 + 0x4210);
        temp_a1 = getenv(&sub_0da40000 + 0x4220) == 0;
        temp_gp->unk-5434 = temp_a1;
        temp_gp->unk-5780 = getenv(&sub_0da40000 + 0x4238, temp_a1);
        temp_gp->unk-577C = getenv(&sub_0da40000 + 0x4250);
        temp_gp->unk-5790 = getenv(&sub_0da40000 + 0x4268);
    }
    if (*(s32 *)0x1018 != 2) {
        __glCrmGenericPickStoreProcs(arg0);
    }
}

void crmFreeTexImage(s64 arg0, void *arg1, s32 arg2) {
    s64 sp8;
    s64 sp0;
    ? *temp_a2;
    s32 *temp_a1_4;
    s32 temp_a1_2;
    s32 temp_a2_2;
    s64 temp_a1_3;
    void *temp_a1;
    void *temp_s0;

    if ((arg1 != NULL) && (temp_a1 = arg1->unk11C, (temp_a1 != NULL))) {
        temp_s0 = temp_a1->unk20 + (arg2 * 0x24);
        if (temp_s0 != NULL) {
            sp8 = arg0;
            if (temp_s0->unk0 & 1) {
                temp_a1_2 = temp_s0->unk14;
                if (temp_a1_2 != 0) {
                    sp8->unkC(sp8, temp_a1_2);
                }
            }
            if ((sp8->unk7F28 != 0) && (temp_s0->unk0 & 2)) {
                temp_a2 = temp_s0->unk18;
                if (temp_a2 != NULL) {
                    __glCrmGenericPickStoreProcs(sp8->unk7B10, 0x5602, temp_a2);
                }
            }
            temp_s0->unk20 = 0;
            temp_s0->unk18 = NULL;
            temp_s0->unk14 = 0;
            temp_s0->unk8 = 0;
            temp_s0->unk4 = 0;
            temp_s0->unk0 = 0;
            temp_a2_2 = arg1->unkE4;
            temp_a1_3 = arg2 * 0x64;
            if (temp_a2_2 != 0) {
                sp0 = temp_a1_3;
                temp_a1_4 = *(temp_a2_2 + temp_a1_3);
                if (temp_a1_4 != NULL) {
                    sub_0d970000(sp8, temp_a1_4, temp_a2_2);
                    *(arg1->unkE4 + sp0) = 0;
                }
            }
        }
    }
}

void crmFreeTexObj(u16 *arg0, void *arg1) {
    s64 sp8;
    s64 sp0;
    ? *temp_a2;
    ? *temp_a2_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_s4;
    s32 var_s0;
    u16 *var_s3;
    void *temp_a1;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_s5;

    if (arg1 != NULL) {
        temp_s5 = arg1->unk12C;
        if (temp_s5 != NULL) {
            sp8 = (s64) arg0->unk7F30;
            temp_s4 = arg0->unkE94;
            var_s0 = 0;
            if (temp_s4 > 0) {
                sp0 = (s64) arg1;
                var_s3 = arg1 + 0x10;
                do {
                    __glCrmResetTextureState(arg0, var_s3, var_s0);
                    var_s0 += 1;
                } while (temp_s4 != var_s0);
            } else {
                sp0 = (s64) arg1;
                var_s3 = arg1 + 0x10;
            }
            if (arg0->unk7F28 != 0) {
                temp_a2 = temp_s5->unk8;
                if (temp_a2 != NULL) {
                    __glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5602, temp_a2);
                }
            }
            if (arg0->unk7F28 != 0) {
                temp_a2_2 = temp_s5->unk14;
                if ((temp_a2_2 != NULL) && (temp_s5->unk8 != temp_a2_2)) {
                    __glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5602, temp_a2_2);
                }
            }
            temp_a0 = temp_s5->unk4;
            if ((temp_a0 >= 0) && (temp_a0 < 0x80)) {
                temp_a2_3 = sp8 + (temp_a0 * 4);
                if ((sp8 != 0) && (temp_a2_3->unk20C == temp_s5)) {
                    temp_a2_3->unkC = 0;
                    (sp8 + (temp_s5->unk4 * 4))->unk20C = 0;
                    sp8->unk8 = (s32) temp_s5->unk4;
                }
            }
            if (arg0->unk7EF8 == var_s3) {
                arg0->unk7EF8 = 0;
            }
            temp_a1 = temp_s5->unk24;
            if (temp_a1 != NULL) {
                temp_a0_2 = temp_a1->unk94;
                if (temp_a0_2 != 0) {
                    dmBufferFree(temp_a0_2, temp_a1);
                }
                temp_a0_3 = temp_s5->unk24->unk98;
                if (temp_a0_3 != 0) {
                    dmParamsDestroy(temp_a0_3, temp_s5->unk24);
                }
                temp_a2_4 = temp_s5->unk24->unk9C;
                if (temp_a2_4 != NULL) {
                    arg0->unkC(arg0, temp_a2_4, temp_a2_4);
                }
                arg0->unkC(arg0, temp_s5->unk24);
            }
            arg0->unkC(arg0, temp_s5->unk20);
            arg0->unkC(arg0, temp_s5);
            sp0->unk12C = 0;
        }
    }
}

void __glCrmFreeTexObj(s32 arg0, void *arg1) {
    if (arg1 != NULL) {
        if (arg1->unk12C != 0) {
            __glCrmResetTextureState();
        }
        __glFreeTexObj(arg0, arg1);
    }
}

void __glCrmFreeTextureState(u16 *arg0) {
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;

    __glCrmResetTextureState(arg0->unk6E2C);
    __glCrmResetTextureState(arg0, arg0->unk6E2C + 0x130);
    temp_a1 = arg0->unk7F30;
    if ((temp_a1 == NULL) || (temp_a3 = *temp_a1 - 1, *temp_a1 = temp_a3, temp_a1_2 = arg0->unk7F30, temp_a2 = *temp_a1_2, (temp_a2 > 0))) {
        arg0->unk7F28 = 0;
        return;
    }
    sub_0d970000((s64) arg0, temp_a1_2, temp_a2, temp_a3);
    arg0->unk7F28 = 0;
    arg0->unk7F30 = NULL;
}

void __glCrmInitTextureObject(void *arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp0;
    s32 temp_a6;
    void *temp_v0;

    temp_a6 = arg0->unkE94;
    unksp18 = arg1;
    if (arg3 != 0) {
        if (arg3 != 1) {
            __glTexInitTextureObject(unksp18, __glCrmFreeTexObj, temp_a6);
            return;
        }
        /* Duplicate return node #4. Try simplifying control flow for better match */
        unksp18->unkF0 = 1.0f;
        unksp18->unkEC = arg2;
        unksp18->unk10C = &__glReadTexImage;
        unksp18->unk108 = &__glCopyTexImage;
        unksp18->unkC = 0;
        unksp18->unk8 = arg3;
        unksp18->unk4 = __glCrmFreeTexObj;
        sp0 = arg0->unk4(arg0, temp_a6, 0x24, __glCrmFreeTexObj, temp_a6);
        temp_v0 = arg0->unk4(arg0, 1, 0x28);
        temp_v0->unk24 = 0;
        temp_v0->unk4 = -1;
        temp_v0->unk0 = 0;
        temp_v0->unk20 = (s32) sp0;
        unksp18->unk12C = temp_v0;
        return;
    }
    unksp18->unkF0 = 1.0f;
    unksp18->unkEC = arg2;
    unksp18->unk10C = &__glReadTexImage;
    unksp18->unk108 = &__glCopyTexImage;
    unksp18->unkC = 0;
    unksp18->unk8 = arg3;
    unksp18->unk4 = __glCrmFreeTexObj;
    sp0 = arg0->unk4(arg0, temp_a6, 0x24, __glCrmFreeTexObj, temp_a6);
    temp_v0 = arg0->unk4(arg0, 1, 0x28);
    temp_v0->unk24 = 0;
    temp_v0->unk4 = -1;
    temp_v0->unk0 = 0;
    temp_v0->unk20 = (s32) sp0;
    unksp18->unk12C = temp_v0;
}

void __glCrmPickTextureProcs(u16 *arg0) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    ? *temp_a2_2;
    ? *var_a0_2;
    s32 *temp_a1_2;
    s32 *temp_t0;
    s32 *temp_v0_3;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_at;
    s32 var_a0;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s64 temp_a2;
    void *temp_a0_2;
    void *temp_a5;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a6;

    if (arg0->unk7D0B != 0) {
        temp_a1 = ~0x8000;
        arg0->unk7D58 = (s32) (arg0->unk7D58 & temp_a1);
        __glGenericPickTextureProcs(temp_a1);
    } else {
        // Error: negative shift count
        // At instruction: bgez $a2, .L0d96ffb8
        if (M2C_ERROR()) {
            sp30 = (s64) temp_a0;
            var_a6 = NULL;
            if (__glIsTextureConsistent(arg0, 0x806F, temp_a2) != 0) {
                arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x8000);
                __glGenericPickTextureProcs((s32) arg0);
            } else {
                goto block_6;
            }
        } else {
            // Error: negative shift count
            // At instruction: bgez $t8, .L0d9701c0
            if (M2C_ERROR()) {
                sp30 = (s64) temp_a0;
                if (__glIsTextureConsistent(arg0, 0xDE1, temp_a2) != 0) {
                    sp0 = __glLookUpTextureParams(arg0, 0xDE1);
                    temp_v0 = __glLookUpTexture(arg0, 0xDE1);
                    var_a6 = temp_v0;
                    arg0->unk6E30 = temp_v0;
                } else {
                    var_a6 = NULL;
                }
                goto block_6;
            }
            sp30 = (s64) temp_a0;
            if (saved_reg_ra < 0) {
                if (__glIsTextureConsistent(arg0, 0xDE0, temp_a2) != 0) {
                    sp0 = __glLookUpTextureParams(arg0, 0xDE0);
                    temp_v0_2 = __glLookUpTexture(arg0, 0xDE0);
                    var_a6 = temp_v0_2;
                    arg0->unk6E30 = temp_v0_2;
                } else {
                    var_a6 = NULL;
                }
block_6:
                if (var_a6 != NULL) {
                    if (((arg0->unk16E8 == 0) || !(sp30 & 0x80000000)) && (var_a6->unkBC == 0.0f) && (var_a6->unkC0 == 0.0f) && (var_a6->unkC4 == 0.0f) && (var_a6->unkC8 == 0.0f) && (var_a6->unkAC == 1.0f) && (var_a6->unkB0 == 1.0f) && (var_a6->unkB4 == 1.0f) && (var_a6->unkB8 == 1.0f)) {
                        goto block_17;
                    }
                    arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x8000);
                    __glGenericPickTextureProcs((s32) arg0);
                } else {
                    goto block_25;
                }
            } else {
                var_a6 = NULL;
block_17:
                if ((var_a6 != NULL) && (var_a6->unkE4->unk38 != 0)) {
                    arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x8000);
                    __glGenericPickTextureProcs((s32) arg0);
                } else {
block_25:
                    var_a0 = 0xC0000 & sp30;
                    if (var_a0 != 0xC0000) {
                        goto block_26;
                    }
                    // Error: negative shift count
                    // At instruction: bltz $a2, .L0d970044
                    if (M2C_ERROR()) {
                        // Error: negative shift count
                        // At instruction: bltz $a3, .L0d970048
                        if (M2C_ERROR()) {
                            var_a0 = arg0->unk7C0;
                            if (arg0->unk83C == var_a0) {
                                if (var_a0 != 0x2400) {
                                    if (var_a0 != 0x2401) {
                                        var_a0_2 = &__glCalcSphereMap;
                                        if (var_a0 != 0x2402) {
                                            var_a0_2 = arg0->unk2EDC;
                                        } else {
                                            arg0->unk2EDC = &__glCalcSphereMap;
                                        }
                                    } else {
                                        var_a0_2 = &__glCalcObjectLinear;
                                        arg0->unk2EDC = &__glCalcObjectLinear;
                                    }
                                } else {
                                    var_a0_2 = &__glCalcEyeLinear;
                                    arg0->unk2EDC = &__glCalcEyeLinear;
                                }
                            } else {
                                goto block_26;
                            }
                        } else {
                            goto block_27;
                        }
                    } else {
block_26:
block_27:
                        // Error: negative shift count
                        // At instruction: bgez $a1, .L0d97021c
                        if (M2C_ERROR()) {
                            goto block_28;
                        }
                        // Error: negative shift count
                        // At instruction: bltz $at, .L0d970054
                        if (M2C_ERROR() && (// Error: negative shift count, // At instruction: bltz $v0, .L0d970054, M2C_ERROR())) {
                            // Error: negative shift count
                            // At instruction: bltz $v1, .L0d970058
                            if (M2C_ERROR()) {
                                temp_a0_2 = arg0->unk73F0;
                                if ((arg0->unk6D0 != 0x1702) && ((f64) temp_a0_2->unk0 == 1.0) && ((f64) temp_a0_2->unk4 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk8 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unkC == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk10 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk14 == 1.0) && ((f64) temp_a0_2->unk18 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk1C == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk20 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk24 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk28 == 1.0) && ((f64) temp_a0_2->unk2C == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk30 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk34 == GLUE_F64(0x3FF0000000000000U, 0U)) && ((f64) temp_a0_2->unk38 == GLUE_F64(0x3FF0000000000000U, 0U))) {
                                    var_a0_2 = &__glCalcTexture;
                                    if ((f64) temp_a0_2->unk3C == 1.0) {
                                        arg0->unk2EDC = &__glNop;
                                        var_a0_2 = &__glNop;
                                    } else {
                                        goto block_73;
                                    }
                                } else {
                                    var_a0_2 = &__glCalcTexture;
block_73:
                                    goto block_29;
                                }
                            } else {
                                goto block_29;
                            }
                        } else {
block_28:
                            var_a0_2 = &__glCalcMixedTexture;
block_29:
                            arg0->unk2EDC = var_a0_2;
                        }
                    }
                    arg0->unk7EFC = var_a0_2;
                    arg0->unk812E = 0;
                    if (var_a6 != NULL) {
                        var_a5 = 6;
                        var_a4 = 0x36;
                        var_a3 = 0;
                        temp_a2_2 = var_a6 + 4;
                        do {
                            var_a5 -= 1;
                            var_a4 -= 1;
                            temp_t0 = var_a3 + temp_a2_2;
                            temp_a6 = *(var_a3 + sp0);
                            var_a3 += 4;
                            *temp_t0 = temp_a6;
                        } while (var_a5 != 0);
                        temp_a7 = sp0 + 0x1C;
                        temp_a5 = temp_a2_2 + 0x1C;
                        sp18 = (s64) (temp_a2_2 + 0xC);
                        sp28 = sp0 + 0x14;
                        sp10 = sp0 + 8;
                        sp20 = sp0 + 0xC;
                        temp_a6_2 = sp0 + 0x10;
                        sp8 = sp0 + 4;
                        do {
                            *(var_a3 + temp_a2_2) = *(var_a3 + sp0);
                            *(var_a3 + (temp_a2_2 + 4)) = *(var_a3 + sp8);
                            *(var_a3 + (temp_a2_2 + 8)) = *(var_a3 + sp10);
                            *(var_a3 + sp18) = *(var_a3 + sp20);
                            *(var_a3 + (temp_a2_2 + 0x10)) = *(var_a3 + temp_a6_2);
                            temp_a1_2 = var_a3 + (temp_a2_2 + 0x14);
                            *temp_a1_2 = *(var_a3 + sp28);
                            var_a4 -= 8;
                            *(var_a3 + (temp_a2_2 + 0x18)) = *(var_a3 + (sp0 + 0x18));
                            temp_at = *(var_a3 + temp_a7);
                            temp_v0_3 = var_a3 + temp_a5;
                            var_a3 += 0x20;
                            *temp_v0_3 = temp_at;
                        } while (var_a4 > 0);
                        arg0->unk30EC = &__glNop;
                        __glCrmGenericPickStoreProcs(arg0, (s32) temp_a1_2, temp_a2_2, var_a3, var_a4, (s32) temp_a5, temp_a6_2, temp_a7);
                        return;
                    }
                    arg0->unk30EC = NULL;
                    arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x8000);
                }
            }
        }
    }
}

/*
Decompilation failure in function crmExtractTexel:

Unable to determine jump table for jr instruction at crm_texture.s line 3272.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 crmComputeTexLevelSize(void *arg0, void *arg1, void *arg2, u32 arg3, s32 arg4, s32 arg5, s64 arg6, s64 arg7) {
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_ra;
    s64 var_a6;
    s64 var_a7;
    u32 var_a3;

    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_t2 = arg0->unkE8C;
    temp_t1 = var_a6 * 2;
    temp_s3 = arg4 - temp_t1;
    if (temp_t2 >= temp_s3) {
        temp_s2 = arg5 - temp_t1;
        if (temp_t2 >= temp_s2) {
            sp8 = var_a7;
            arg1->unk5C = 0;
            arg1->unk58 = 0;
            arg1->unk54 = 0;
            arg1->unk50 = 0;
            arg1->unk4C = 0;
            arg1->unk48 = 0;
            arg1->unk3C = var_a3;
            var_a2 = 0x1907;
            sp0 = var_a6;
            var_a1 = arg0->unkCC0 + (arg0->unkCB8 + arg0->unkCBC);
            switch (var_a3) {                       /* switch 1; irregular */
            default:                                /* switch 1 */
                var_ra = var_a1 < 9;
                if (var_a3 != 0x1908) {
                    if (var_a3 >= 0x8047U) {
                        if (var_a3 <= 0x8047U) {
                            goto block_9;
                        }
                        var_a6 = var_a3 < 0x8052U;
                        var_a7 = var_a3 > 0x8052U;
                        if (var_a6 == 0) {
                            var_a1 = 0x8057;
                            if (var_a7 != 0) {
                                if (var_a3 >= 0x8057U) {
                                    if (var_a3 > 0x8057U) {
                                        var_a1 = 0x805A;
                                        if (var_a3 >= 0x805AU) {
                                            if (var_a3 <= 0x805AU) {
                                                goto block_29;
                                            }
                                            if (var_a3 == 0x805B) {
                                                goto block_29;
                                            }
                                        } else {
                                            var_a1 = 0x8059;
                                            var_a2 = var_a3 < 0x8059U;
                                            var_a6 = var_a3 > 0x8059U;
                                            if (var_a2 == 0) {
                                                if (var_a6 == 0) {
                                                    goto block_29;
                                                }
                                            } else {
                                                var_a1 = 0x8058;
                                                if (var_a3 == 0x8058) {
                                                    goto block_30;
                                                }
                                            }
                                        }
                                    } else {
                                        goto block_69;
                                    }
                                } else {
                                    var_a6 = var_a3 < 0x8055U;
                                    var_a7 = var_a3 > 0x8055U;
                                    if (var_a6 == 0) {
                                        var_a1 = 0x8056;
                                        if (var_a7 != 0) {
                                            if (var_a3 == 0x8056) {
                                                goto block_74;
                                            }
                                        } else {
                                            goto block_74;
                                        }
                                    } else {
                                        var_a6 = var_a3 < 0x8054U;
                                        var_a7 = var_a3 > 0x8054U;
                                        if (var_a6 == 0) {
                                            if (var_a7 == 0) {
                                                goto block_19;
                                            }
                                        } else {
                                            var_a7 = 0x8053;
                                            if (var_a3 == (u32) 0x8053) {
                                                goto block_19;
                                            }
                                        }
                                    }
                                }
                            } else {
                                goto block_19;
                            }
                        } else {
                            var_a6 = var_a3 > 0x804DU;
                            if (var_a3 >= 0x804DU) {
                                var_a1 = 0x8049;
                                if (var_a6 == 0) {
                                    goto block_45;
                                }
                                switch (var_a3) {   /* switch 2; irregular */
                                case 0x8051:        /* switch 2 */
block_19:
                                    arg1->unk40 = 0x1907;
                                    arg1->unk44 = 0x8058;
                                    arg1->unk48 = 8;
                                    arg1->unk4C = 8;
                                    arg1->unk50 = 8;
                                    arg2->unk10 = 2;
                                    arg2->unkC = 1;
                                    break;
                                case 0x804E:        /* switch 2 */
                                    goto block_63;
                                }
                            } else if (var_a3 >= 0x804AU) {
                                var_a1 = 0x804C;
                                if (var_a3 <= 0x804AU) {
                                    var_a1 = 0x8049;
                                    goto block_45;
                                }
                                if (var_a3 >= 0x804CU) {
                                    if (var_a3 <= 0x804CU) {
                                        var_a1 = 0x8049;
                                        goto block_45;
                                    }
                                } else if (var_a3 == 0x804B) {
                                    var_a1 = 0x8049;
                                    goto block_45;
                                }
                            } else {
                                var_a1 = 0x8049;
                                if (var_a3 >= 0x8049U) {
                                    if (var_a3 <= 0x8049U) {
block_45:
                                        arg1->unk40 = 0x8049;
                                        arg1->unk44 = 0x804D;
                                        arg1->unk5C = 0x10;
                                        arg2->unk10 = 1;
                                        var_a7 = 6;
                                        arg2->unkC = (s32) 6;
                                    }
                                } else if (var_a3 == 0x8048) {
                                    goto block_9;
                                }
                            }
                        }
                    } else {
                        var_a1 = 0x803D;
                        var_a7 = var_a3 < 0x803DU;
                        if (var_a7 == 0) {
                            if (var_a3 <= 0x803DU) {
                                goto block_24;
                            }
                            if (var_a3 >= 0x8042U) {
                                if (var_a3 <= 0x8042U) {
                                    goto block_40;
                                }
                                var_a1 = 0x8044;
                                switch (var_a3) {   /* switch 3; irregular */
                                case 0x8046:        /* switch 3 */
                                    goto block_9;
                                case 0x8043:        /* switch 3 */
                                    goto block_9;
                                }
                            } else {
                                var_a1 = 0x8040;
                                var_a2 = var_a3 > 0x8040U;
                                if (var_a3 >= 0x8040U) {
                                    if (var_a2 == 0) {
                                        goto block_40;
                                    }
                                    if (var_a3 == 0x8041) {
                                        goto block_40;
                                    }
                                } else {
                                    var_a1 = 0x803F;
                                    var_a2 = var_a3 > 0x803FU;
                                    if (var_a3 >= 0x803FU) {
                                        if (var_a2 == 0) {
                                            goto block_40;
                                        }
                                    } else if (var_a3 == 0x803E) {
                                        goto block_25;
                                    }
                                }
                            }
                        } else {
                            var_a1 = var_a3 < 0x1909U;
                            if (var_a1 == 0) {
                                if (var_a3 < 0x190AU) {
block_40:
                                    var_a1 = 1;
                                    goto block_41;
                                }
                                var_a6 = var_a3 < 0x803BU;
                                var_a7 = var_a3 > 0x803BU;
                                if (var_a6 == 0) {
                                    if (var_a7 == 0) {
                                        goto block_24;
                                    }
                                    if (var_a3 == 0x803C) {
                                        goto block_24;
                                    }
                                } else if (var_a3 >= 0x2A10U) {
                                    if (var_a3 < 0x2A11U) {
block_63:
                                        arg1->unk40 = 0x1907;
                                        arg1->unk44 = 0x8057;
                                        arg1->unk48 = 5;
                                        arg1->unk4C = 5;
                                        arg1->unk50 = 5;
                                        arg2->unk10 = 1;
                                        arg2->unkC = 1;
                                    }
                                } else {
                                    var_a1 = 0x190A;
                                    if (var_a3 == 0x190A) {
                                        goto block_10;
                                    }
                                }
                            } else if (var_a3 >= 0x1906U) {
                                if (var_a3 < 0x1907U) {
block_24:
block_25:
                                    arg1->unk40 = 0x1906;
                                    arg1->unk44 = 0x803E;
                                    arg1->unk54 = 0x10;
                                    arg2->unk10 = 1;
                                    arg2->unkC = 5;
                                } else if (var_a3 >= 0x1908U) {
                                    var_a1 = 0x8057;
                                    if (var_a1 != 0) {
block_69:
                                        arg1->unk40 = 0x1908;
                                        arg1->unk44 = 0x8057;
                                        var_a3 = 5;
                                        arg1->unk48 = 5;
                                        arg1->unk4C = 5;
                                        arg1->unk50 = 5;
                                        var_a2 = 1;
                                        arg1->unk54 = 1;
                                        arg2->unk10 = 1;
                                        arg2->unkC = 2;
                                    }
                                }
                            } else {
                                var_a1 = 1;
                                if (var_a3 >= 2U) {
                                    if (var_a3 < 3U) {
block_9:
                                        var_a1 = 0x190A;
block_10:
                                        arg1->unk40 = 0x190A;
                                        arg1->unk44 = 0x8045;
                                        arg1->unk58 = 8;
                                        arg1->unk54 = 8;
                                        arg2->unk10 = 1;
                                        arg2->unkC = 8;
                                    }
                                } else if (var_a3 == 1) {
block_41:
                                    arg1->unk40 = 0x1909;
                                    arg1->unk44 = 0x8042;
                                    arg1->unk58 = 0x10;
                                    arg2->unk10 = 1;
                                    arg2->unkC = 7;
                                }
                            }
                        }
                    }
                } else {
block_27:
                    var_a1 = 0x8058;
                    if (var_ra != 0) {
                        var_a1 = 0x8056;
                        if (saved_reg_gp->unk-5784 != 0) {
block_29:
                            var_a1 = 0x8058;
                            goto block_30;
                        }
block_74:
                        arg1->unk40 = 0x1908;
                        arg1->unk44 = 0x8056;
                        arg1->unk48 = 4;
                        arg1->unk4C = 4;
                        arg1->unk50 = 4;
                        arg1->unk54 = 4;
                        arg2->unk10 = 1;
                        arg2->unkC = 4;
                    } else {
block_30:
                        arg1->unk40 = 0x1908;
                        arg1->unk44 = 0x8058;
                        arg1->unk48 = 8;
                        arg1->unk4C = 8;
                        arg1->unk50 = 8;
                        arg1->unk54 = 8;
                        arg2->unk10 = 2;
                        arg2->unkC = 2;
                    }
                }
                break;
            case 0x3:                               /* switch 1 */
            case 0x1907:                            /* switch 1 */
                var_a6 = var_a1 < 0x10;
                var_a7 = (s64) saved_reg_gp->unk-5784;
                if ((var_a6 == 0) || (var_a7 != 0)) {
                    goto block_19;
                }
                goto block_63;
            case 0x4:                               /* switch 1 */
                var_ra = var_a1 < 9;
                goto block_27;
            }
            arg1->unk18 = temp_s2;
            arg1->unk14 = temp_s3;
            arg1->unkC = (s32) (temp_t1 + 1);
            arg1->unk8 = arg5;
            arg1->unk4 = arg4;
            arg1->unk0 = 0;
            arg1->unk2C = __glFloorLog2(temp_s3, var_a1, var_a2, var_a3, var_a6, (s32) var_a7);
            arg1->unk30 = __glFloorLog2(temp_s2);
            arg1->unk38 = (s32) sp0;
            arg1->unk60 = (void *) (sub_0d970000 + 0x460);
            arg1->unk24 = (f32) temp_s2;
            arg1->unk20 = (f32) temp_s3;
            arg2->unk20 = 0;
            arg2->unk1C = 0;
            arg2->unk18 = 0;
            arg2->unk14 = 0;
            arg2->unk8 = 0;
            temp_a1 = arg2->unk10;
            arg2->unk4 = 0;
            if (((temp_s2 < temp_s3) ? temp_s3 : temp_s2) < 0x80) {
                arg2->unk0 = 1;
                var_a2_2 = 1;
            } else {
                arg2->unk0 = 2;
                arg2->unk8 = (s32) ((s32) (temp_s2 + 0x7F) >> 7);
                var_a2_2 = 2;
                arg2->unk4 = (s32) ((s32) ((temp_s3 << temp_a1) + 0x1FF) >> 9);
            }
            if (saved_reg_gp->unk-5788 == 0) {
                if (sp8 == 0) {
                    arg2->unk0 = (s32) (var_a2_2 | 4);
                }
            }
            return (temp_s3 * temp_s2) << temp_a1;
        }
    }
    return -1;
}

s32 crmCreateLevel(u16 *arg0, s32 arg1, void *arg2, s32 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, u8 arg_spC) {
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s32 sp138;
    s32 sp134;
    ? *sp130;
    s32 sp128;
    s32 sp124;
    ? *sp120;
    ? spF8;
    u16 sp90;
    s32 sp88;
    s32 sp84;
    ? *sp80;
    s32 sp7C;
    u16 sp68;
    ? spC;
    ? sp8;
    ? sp4;
    ? *temp_a2;
    s32 *temp_a5;
    s32 *temp_a5_3;
    s32 *temp_a5_4;
    s32 *temp_s4_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5_2;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_s0_2;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 var_a3;
    u8 var_s0;
    void *temp_a1_2;
    void *temp_a7;
    void *temp_s4;
    void *temp_s5;
    void *temp_s6;
    void *temp_v0_2;
    void *var_a2;

    sp168 = arg7;
    sp160 = arg6;
    sp170 = arg4;
    sp158 = arg5;
    temp_v0 = __glCrmPickTextureProcs(sp, &sp68, arg4, arg5, arg6, arg7, arg_spC);
    var_s7 = temp_v0;
    temp_s4 = arg2->unkE4 + (arg3 * 0x64);
    if ((arg1 != 0x8063) && (arg1 != 0x8064)) {
        if (temp_v0 >= 0) {
            temp_s6 = arg2->unk11C;
            temp_s5 = temp_s6->unk20 + (arg3 * 0x24);
            if (arg0->unk7EF8 == arg2) {
                __glCrmFlushAndConfirm(arg0);
            }
            temp_a1 = temp_s4->unk0;
            if (temp_a1 != 0) {
                __glSetError(arg0, temp_a1);
                temp_s4->unk0 = 0;
            }
            temp_a1_2 = temp_s6->unk24;
            if ((temp_a1_2 != NULL) && (temp_s6->unk0 & 0x80)) {
                if (arg3 != 0) {
                    return 0;
                }
                temp_a0 = temp_a1_2->unk94;
                sp140 = (s64) arg2->unkEC;
                if (temp_a0 != 0) {
                    dmBufferFree(temp_a0, temp_a1_2);
                }
                temp_a0_2 = temp_s6->unk24->unk98;
                if (temp_a0_2 != 0) {
                    dmParamsDestroy(temp_a0_2, temp_s6->unk24);
                }
                temp_v0_2 = temp_s6->unk24->unk9C;
                var_s0 = 0;
                if (temp_v0_2 != NULL) {
                    var_s0 = temp_v0_2->unk13;
                    arg0->unkC(arg0, temp_v0_2);
                }
                arg0->unkC(arg0, temp_s6->unk24);
                var_a2 = temp_s6->unk20;
                temp_s6->unk24 = NULL;
                temp_s6->unk0 = (s32) (temp_s6->unk0 & ~0x80);
                var_a3 = sp140;
                if (sp140 >= 0) {
loop_26:
                    var_a3 -= 1;
                    if (var_a2->unk0 & 2) {
                        var_a2->unk20 = 0;
                        var_a2->unk8 = 0;
                        var_a2->unk4 = 0;
                    }
                    var_a2 += 0x24;
                    if (var_s0 != 0) {
                        if (var_a3 < 0) {
                            goto block_30;
                        }
                        goto loop_26;
                    }
                    goto block_75;
                }
block_30:
                if (var_s0 != 0) {
                    goto block_31;
                }
block_75:
                if (arg2->unkEC == 6) {
block_31:
                    temp_s6->unk1C = 0;
                    temp_s6->unk10 = 0;
                }
                goto block_32;
            }
block_32:
            if ((s32) sp68 & 1) {
                if (var_s7 > 0) {
                    temp_s6->unk0 = (s32) (temp_s6->unk0 | 0x20);
                    sp68 = (s32) sp68 | 0x20;
                }
            } else {
                var_s7 = 0;
            }
            arg0->unkC(arg0, temp_s5->unk14);
            temp_s5->unk14 = NULL;
            if (var_s7 != 0) {
                temp_v0_3 = arg0->unk0(arg0, var_s7);
                sp7C = temp_v0_3;
                if (temp_v0_3 == 0) {
                    __glSetError((u16 *)0x505);
                }
            }
            temp_v0_4 = temp_s5->unk0 & 2;
            if ((s32) sp68 & 2) {
                var_s7_2 = 0;
                var_s0_2 = sp6C * sp70;
                sp150 = ((sp30 >= sp2C) ? sp30 : sp2C) & 1;
                if (temp_v0_4 != 0) {
                    if (temp_s5->unk18 != NULL) {
                        var_s7_2 = temp_s5->unk4 * temp_s5->unk8;
                        sp148 = (s64) temp_s5->unk1C;
                        if (var_s7_2 != var_s0_2) {
                            goto block_41;
                        }
                        goto block_12;
                    }
                    sp148 = 0;
                    var_s7_2 = 0;
                    goto block_11;
                }
                sp148 = 0;
block_11:
                if (var_s0_2 == 0) {
block_12:
                    if (sp148 == sp150) {
                        goto block_13;
                    }
                    goto block_41;
                }
block_41:
                if (var_s7_2 != 0) {
                    goto block_42;
                }
                goto block_45;
            }
            if (temp_v0_4 != 0) {
                if (temp_s5->unk18 != NULL) {
                    sp148 = (s64) temp_s5->unk1C;
                    var_s7_2 = temp_s5->unk4 * temp_s5->unk8;
                } else {
                    sp148 = 0;
                    var_s7_2 = 0;
                }
            } else {
                sp148 = 0;
                var_s7_2 = 0;
            }
            if (var_s7_2 != 0) {
                goto block_92;
            }
            if (sp148 != 0) {
                if (var_s7_2 == 0) {
                    sp150 = 0;
                    var_s0_2 = 0;
                } else {
block_92:
                    sp150 = 0;
                    var_s0_2 = 0;
block_42:
                    temp_a2 = temp_s5->unk18;
                    if (temp_a2 != NULL) {
                        __glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5602, temp_a2);
                        temp_s5->unk20 = 0;
                        temp_s5->unk18 = NULL;
                        temp_s5->unk8 = 0;
                        temp_s5->unk4 = 0;
                        temp_s5->unk0 = 0;
                    }
                }
block_45:
                if (var_s0_2 != 0) {
                    sp124 = var_s0_2;
                    sp128 = (s32) sp150;
                    if (__glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5601, &sp120) == 0) {
                        sp84 = (s32) sp150;
                        sp88 = sp12C;
                        sp80 = sp120;
                    } else {
                        __glSetError((u16 *)0x505);
                        sp88 = 0;
                    }
                }
                if (var_s7_2 == var_s0_2) {
                    goto block_50;
                }
                goto block_14;
            }
            sp150 = 0;
            var_s0_2 = 0;
block_13:
            sp80 = temp_s5->unk18;
            sp84 = temp_s5->unk1C;
            sp88 = temp_s5->unk20;
            if (var_s7_2 != var_s0_2) {
                goto block_14;
            }
block_50:
            if ((sp148 == sp150) && (temp_s5->unk4 == sp6C) && (temp_s5->unk8 == sp70)) {
                if (temp_s5->unk10 != sp78) {
                    goto block_14;
                }
            } else {
block_14:
                if (arg0->unk7EF8 == arg2) {
                    arg0->unk7EF8 = 0;
                }
                temp_s6->unk0 = (s32) (temp_s6->unk0 | 0x10);
            }
            temp_s0 = !((s32) sp68 & 1) ? (!((s32) sp68 & 2) ? 0 : sp88) : sp7C;
            if (temp_s0 != 0) {
                temp_a7 = temp_s4 + 4;
                var_a0 = 4;
                var_v0 = 0x18;
                temp_s4->unk0 = sp0;
                do {
                    *(var_a0 + temp_s4) = *(var_a0 + sp);
                    *(var_a0 + temp_a7) = *(var_a0 + &sp4);
                    var_v0 -= 4;
                    *(var_a0 + (temp_s4 + 8)) = *(var_a0 + &sp8);
                    temp_a5 = var_a0 + (temp_s4 + 0xC);
                    temp_a4 = *(var_a0 + &spC);
                    var_a0 += 0x10;
                    *temp_a5 = temp_a4;
                } while (var_v0 > 0);
                temp_s5->unk0 = (s32) sp68;
                temp_a5_2 = sp68.unk4;
                temp_s5->unk4 = temp_a5_2;
                temp_a4_2 = sp68.unk8;
                temp_s5->unk8 = temp_a4_2;
                temp_a3 = sp68.unkC;
                temp_s5->unkC = temp_a3;
                temp_a2_2 = sp68.unk10;
                temp_s5->unk10 = temp_a2_2;
                temp_s5->unk14 = (void *) sp68.unk14;
                temp_s5->unk18 = (? *) sp68.unk18;
                temp_s5->unk1C = (s32) sp68.unk1C;
                temp_s5->unk20 = (s32) sp68.unk20;
                temp_s4->unk0 = arg0->unk0(arg0, 4, temp_a2_2, temp_a3, temp_a4_2, temp_a5_2, (s32) sp68, temp_a7);
            } else {
                temp_s4->unk5C = 0;
                temp_s4->unk58 = 0;
                temp_s4->unk54 = 0;
                temp_s4->unk50 = 0;
                temp_s4->unk4C = 0;
                temp_s4->unk48 = 0;
                temp_s4->unk44 = 0;
                temp_s4->unk40 = 0;
                temp_s4->unk3C = 1;
                temp_s4->unk38 = 0;
                temp_s4->unk30 = 0;
                temp_s4->unk2C = 0;
                temp_s4->unk18 = 0;
                temp_s4->unk14 = 0;
                temp_s4->unkC = 0;
                temp_s4->unk8 = 0;
                temp_s4->unk4 = 0;
                temp_s4->unk0 = 0;
                temp_s4->unk60 = &__glNop;
            }
            if (arg3 != 0) {

            } else {
                arg2->unkEC = (s32) temp_s4->unk30;
                temp_v0_5 = temp_s4->unk2C;
                if (temp_s4->unk30 < temp_v0_5) {
                    arg2->unkEC = temp_v0_5;
                }
            }
            return temp_s0;
        }
        (? (*)(?))0x8064(0x501);
        return 0;
    }
    if (arg3 > 0) {
        var_s7 = __glCrmPickTextureProcs(arg0, &sp90, (s64) &spF8, sp170, sp158 << arg3, sp160 << arg3, (u8) sp168, arg_spC);
    }
    if (var_s7 > 0) {
        if ((s32) sp68 & 1) {
            sp138 = 0;
            sp134 = 1;
            goto block_60;
        }
        temp_lo = sp6C * sp70;
        sp138 = 0;
        sp134 = temp_lo;
        if (temp_lo <= 0) {
            goto block_61;
        }
block_60:
        sp138 = 0;
        if (__glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5601, &sp130) != 0) {
block_61:
            temp_s4->unk58 = 0;
            temp_s4->unk5C = 0;
            temp_s4->unk48 = 0;
            temp_s4->unk4C = 0;
            temp_s4->unk50 = 0;
            temp_s4->unk54 = 0;
            temp_s4->unk3C = 0;
            temp_s4->unk40 = 0;
            temp_s4->unk44 = 0;
            temp_s4->unk4 = 0;
            temp_s4->unk8 = 0;
            temp_s4->unkC = 0;
            temp_s4->unk38 = 0;
            temp_s4->unk60 = &__glNop;
            if (arg3 > 0) {
                goto block_63;
            }
        } else {
            __glCrmGenericPickStoreProcs(arg0->unk7B10, 0x5602, sp130);
            goto block_78;
        }
    } else {
block_78:
        if (var_s7 >= 0) {
            var_a0_2 = 4;
            var_v0_2 = 0x18;
            temp_s4->unk0 = sp0;
            do {
                *(var_a0_2 + temp_s4) = *(var_a0_2 + sp);
                *(var_a0_2 + (temp_s4 + 4)) = *(var_a0_2 + &sp4);
                var_v0_2 -= 4;
                *(var_a0_2 + (temp_s4 + 8)) = *(var_a0_2 + &sp8);
                temp_a5_3 = var_a0_2 + (temp_s4 + 0xC);
                temp_a4_3 = *(var_a0_2 + &spC);
                var_a0_2 += 0x10;
                *temp_a5_3 = temp_a4_3;
            } while (var_v0_2 > 0);
        } else {
            temp_s4->unk58 = 0;
            temp_s4->unk5C = 0;
            temp_s4->unk48 = 0;
            temp_s4->unk4C = 0;
            temp_s4->unk50 = 0;
            temp_s4->unk54 = 0;
            temp_s4->unk3C = 0;
            temp_s4->unk40 = 0;
            temp_s4->unk44 = 0;
            temp_s4->unk4 = 0;
            temp_s4->unk8 = 0;
            temp_s4->unkC = 0;
            temp_s4->unk38 = 0;
            temp_s4->unk60 = &__glNop;
        }
        if (arg3 > 0) {
            temp_s4_2 = arg2->unkE4;
            if (var_s7 >= 0) {
                var_a0_3 = 4;
                var_v0_3 = 0x18;
                *temp_s4_2 = (s32) sp90;
                do {
                    *(var_a0_3 + temp_s4_2) = *(var_a0_3 + &sp90);
                    *(var_a0_3 + (temp_s4_2 + 4)) = *(var_a0_3 + (&sp90 + 4));
                    var_v0_3 -= 4;
                    *(var_a0_3 + (temp_s4_2 + 8)) = *(var_a0_3 + (&sp90 + 8));
                    temp_a5_4 = var_a0_3 + (temp_s4_2 + 0xC);
                    temp_a4_4 = *(var_a0_3 + (&sp90 + 0xC));
                    var_a0_3 += 0x10;
                    *temp_a5_4 = temp_a4_4;
                } while (var_v0_3 > 0);
            } else {
block_63:
                arg2->unkE4->unk60 = &__glNop;
                arg2->unkE4->unk58 = 0;
                arg2->unkE4->unk5C = 0;
                arg2->unkE4->unk48 = 0;
                arg2->unkE4->unk4C = 0;
                arg2->unkE4->unk50 = 0;
                arg2->unkE4->unk54 = 0;
                arg2->unkE4->unk3C = 0;
                arg2->unkE4->unk40 = 0;
                arg2->unkE4->unk44 = 0;
                arg2->unkE4->unk4 = 0;
                arg2->unkE4->unk8 = 0;
                arg2->unkE4->unkC = 0;
                arg2->unkE4->unk38 = 0;
            }
        }
    }
    return 0;
}

void crmSpan_A16_to_A8(void *arg1, u16 *arg2, void *arg3) {
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t1;
    s32 temp_t3;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a6;
    u16 *var_a1;
    u16 *var_a1_3;
    u16 *var_a4;
    void *var_a2;
    void *var_a2_2;
    void *var_a5;

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
        temp_a7 = (s32) ((var_a6 >= 1) ? (var_a6 - 1) : (var_a6 + 6)) >> 3;
        if (temp_a7 & 1) {
            arg3->unk0 = (s16) ((s32) arg2->unk0 >> 8);
            arg3->unk2 = (s16) ((s32) arg2->unk2 >> 8);
            arg3->unk4 = (s16) ((s32) arg2->unk4 >> 8);
            arg3->unk6 = (s16) ((s32) arg2->unk6 >> 8);
            arg3->unk8 = (s16) ((s32) arg2->unk8 >> 8);
            arg3->unkA = (s16) ((s32) arg2->unkA >> 8);
            arg3->unkC = (s16) ((s32) arg2->unkC >> 8);
            var_a6 -= 8;
            var_a5 = arg3 + 0x10;
            var_a4 = arg2 + 0x10;
            arg3->unkE = (s16) ((s32) arg2->unkE >> 8);
        }
        var_a2 = var_a5;
        var_a3 = var_a6;
        if ((temp_a7 >> 1) != 0) {
            var_a1 = var_a4;
            do {
                var_a2->unk0 = (s16) ((s32) var_a1->unk0 >> 8);
                var_a2->unk2 = (s16) ((s32) var_a1->unk2 >> 8);
                var_a2->unk4 = (s16) ((s32) var_a1->unk4 >> 8);
                var_a2->unk6 = (s16) ((s32) var_a1->unk6 >> 8);
                var_a2->unk8 = (s16) ((s32) var_a1->unk8 >> 8);
                var_a2->unkA = (s16) ((s32) var_a1->unkA >> 8);
                var_a2->unkC = (s16) ((s32) var_a1->unkC >> 8);
                var_a2->unkE = (s16) ((s32) var_a1->unkE >> 8);
                var_a2->unk10 = (s16) ((s32) var_a1->unk10 >> 8);
                var_a2->unk12 = (s16) ((s32) var_a1->unk12 >> 8);
                var_a2->unk14 = (s16) ((s32) var_a1->unk14 >> 8);
                var_a2->unk16 = (s16) ((s32) var_a1->unk16 >> 8);
                var_a2->unk18 = (s16) ((s32) var_a1->unk18 >> 8);
                var_a2->unk1A = (s16) ((s32) var_a1->unk1A >> 8);
                var_a2->unk1C = (s16) ((s32) var_a1->unk1C >> 8);
                var_a3 -= 0x10;
                var_a2 += 0x20;
                temp_a4 = (s32) var_a1->unk1E >> 8;
                var_a1 += 0x20;
                var_a2->unk-2 = (s16) temp_a4;
            } while (var_a3 >= 9);
            var_a5 = var_a2;
            var_a4 = var_a1;
            var_a6 = var_a3;
        }
    }
    if (var_a6 > 0) {
        temp_a7_2 = (var_a6 >= 1) ? var_a6 : 1;
        var_a1_2 = temp_a7_2 & 3;
        if (var_a1_2 != 0) {
            do {
                var_a6 -= 1;
                var_a1_2 -= 1;
                var_a5 += 2;
                temp_t1 = (s32) *var_a4 >> 8;
                var_a4 += 2;
                var_a5->unk-2 = (s16) temp_t1;
            } while (var_a1_2 != 0);
        }
        var_a2_2 = var_a5;
        var_a1_3 = var_a4;
        var_a3_2 = var_a6;
        if ((temp_a7_2 >> 2) != 0) {
            do {
                var_a2_2->unk0 = (s16) ((s32) var_a1_3->unk0 >> 8);
                var_a2_2->unk2 = (s16) ((s32) var_a1_3->unk2 >> 8);
                var_a2_2->unk4 = (s16) ((s32) var_a1_3->unk4 >> 8);
                var_a3_2 -= 4;
                var_a2_2 += 8;
                temp_t3 = (s32) var_a1_3->unk6 >> 8;
                var_a1_3 += 8;
                var_a2_2->unk-2 = (s16) temp_t3;
            } while (var_a3_2 > 0);
        }
    }
}

void crmSpan_XA8_to_A8(void *arg1, u16 *arg2, void *arg3) {
    s32 temp_a7;
    s32 temp_a7_2;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a6;
    u16 *var_a1_2;
    u16 *var_a1_4;
    u16 *var_a4;
    u16 temp_a4;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t8;
    void *var_a2;
    void *var_a2_2;
    void *var_a5;

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
        temp_a7 = (s32) ((var_a6 >= 1) ? (var_a6 - 1) : (var_a6 + 6)) >> 3;
        var_a1 = temp_a7 & 3;
        if (var_a1 != 0) {
            do {
                var_a5->unk0 = (s8) var_a4->unk0;
                var_a5->unk1 = (s8) var_a4->unk2;
                var_a5->unk2 = (s8) var_a4->unk4;
                var_a5->unk3 = (s8) var_a4->unk6;
                var_a5->unk4 = (s8) var_a4->unk8;
                var_a5->unk5 = (s8) var_a4->unkA;
                var_a1 -= 1;
                var_a5->unk6 = (s8) var_a4->unkC;
                var_a6 -= 8;
                var_a5 += 8;
                temp_t2 = var_a4->unkE;
                var_a4 += 0x10;
                var_a5->unk-1 = (s8) temp_t2;
            } while (var_a1 != 0);
        }
        var_a2 = var_a5;
        var_a3 = var_a6;
        if ((temp_a7 >> 2) != 0) {
            var_a1_2 = var_a4;
            do {
                var_a2->unk0 = (s8) var_a1_2->unk0;
                var_a2->unk1 = (s8) var_a1_2->unk2;
                var_a2->unk2 = (s8) var_a1_2->unk4;
                var_a2->unk3 = (s8) var_a1_2->unk6;
                var_a2->unk4 = (s8) var_a1_2->unk8;
                var_a2->unk5 = (s8) var_a1_2->unkA;
                var_a2->unk6 = (s8) var_a1_2->unkC;
                var_a2->unk7 = (s8) var_a1_2->unkE;
                var_a2->unk8 = (s8) var_a1_2->unk10;
                var_a2->unk9 = (s8) var_a1_2->unk12;
                var_a2->unkA = (s8) var_a1_2->unk14;
                var_a2->unkB = (s8) var_a1_2->unk16;
                var_a2->unkC = (s8) var_a1_2->unk18;
                var_a2->unkD = (s8) var_a1_2->unk1A;
                var_a2->unkE = (s8) var_a1_2->unk1C;
                var_a2->unkF = (s8) var_a1_2->unk1E;
                var_a2->unk10 = (s8) var_a1_2->unk20;
                var_a2->unk11 = (s8) var_a1_2->unk22;
                var_a2->unk12 = (s8) var_a1_2->unk24;
                var_a2->unk13 = (s8) var_a1_2->unk26;
                var_a2->unk14 = (s8) var_a1_2->unk28;
                var_a2->unk15 = (s8) var_a1_2->unk2A;
                var_a2->unk16 = (s8) var_a1_2->unk2C;
                var_a2->unk17 = (s8) var_a1_2->unk2E;
                var_a2->unk18 = (s8) var_a1_2->unk30;
                var_a2->unk19 = (s8) var_a1_2->unk32;
                var_a2->unk1A = (s8) var_a1_2->unk34;
                var_a2->unk1B = (s8) var_a1_2->unk36;
                var_a2->unk1C = (s8) var_a1_2->unk38;
                var_a2->unk1D = (s8) var_a1_2->unk3A;
                var_a3 -= 0x20;
                var_a2->unk1E = (s8) var_a1_2->unk3C;
                var_a2 += 0x20;
                temp_a4 = var_a1_2->unk3E;
                var_a1_2 += 0x40;
                var_a2->unk-1 = (s8) temp_a4;
            } while (var_a3 >= 9);
            var_a5 = var_a2;
            var_a4 = var_a1_2;
            var_a6 = var_a3;
        }
    }
    if (var_a6 > 0) {
        temp_a7_2 = (var_a6 >= 1) ? var_a6 : 1;
        var_a1_3 = temp_a7_2 & 3;
        if (var_a1_3 != 0) {
            do {
                var_a1_3 -= 1;
                var_a6 -= 1;
                var_a5 += 1;
                temp_t2_2 = *var_a4;
                var_a4 += 2;
                var_a5->unk-1 = (s8) temp_t2_2;
            } while (var_a1_3 != 0);
        }
        var_a2_2 = var_a5;
        var_a1_4 = var_a4;
        var_a3_2 = var_a6;
        if ((temp_a7_2 >> 2) != 0) {
            do {
                var_a2_2->unk0 = (s8) var_a1_4->unk0;
                var_a2_2->unk1 = (s8) var_a1_4->unk2;
                var_a3_2 -= 4;
                var_a2_2->unk2 = (s8) var_a1_4->unk4;
                var_a2_2 += 4;
                temp_t8 = var_a1_4->unk6;
                var_a1_4 += 8;
                var_a2_2->unk-1 = (s8) temp_t8;
            } while (var_a3_2 > 0);
        }
    }
}

void crmSpan_RGB5_A1_to_A1_RGB5(void *arg1, u16 *arg2, void *arg3) {
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_t1_2;
    s32 var_a1;
    s32 var_a6;
    u16 *var_a4;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a1;
    u16 temp_a2;
    u16 temp_a3_2;
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

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
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
            temp_a2 = var_a4->unkC;
            var_a5->unkC = (s16) (((s32) temp_a2 >> 1) | (temp_a2 << 0xF));
            temp_a0_2 = var_a4->unkE;
            var_a4 += 0x10;
            var_a6 -= 8;
            var_a5 += 0x10;
            var_a5->unk-2 = (s16) (((s32) temp_a0_2 >> 1) | (temp_a0_2 << 0xF));
        } while (var_a6 >= 9);
    }
    if (var_a6 > 0) {
        temp_a2_2 = (var_a6 >= 1) ? var_a6 : 1;
        var_a1 = temp_a2_2 & 7;
        if (var_a1 != 0) {
            do {
                temp_a7_2 = *var_a4;
                var_a6 -= 1;
                var_a5 += 2;
                var_a1 -= 1;
                temp_a3 = (s32) temp_a7_2 >> 1;
                var_a4 += 2;
                var_a5->unk-2 = (s16) (temp_a3 | (temp_a7_2 << 0xF));
            } while (var_a1 != 0);
        }
        if ((temp_a2_2 >> 3) != 0) {
            do {
                temp_t2 = var_a4->unk0;
                var_a5->unk0 = (s16) (((s32) temp_t2 >> 1) | (temp_t2 << 0xF));
                temp_t0 = var_a4->unk2;
                var_a5->unk2 = (s16) (((s32) temp_t0 >> 1) | (temp_t0 << 0xF));
                temp_a3_2 = var_a4->unk4;
                var_a5->unk4 = (s16) (((s32) temp_a3_2 >> 1) | (temp_a3_2 << 0xF));
                temp_a1 = var_a4->unk6;
                var_a5->unk6 = (s16) (((s32) temp_a1 >> 1) | (temp_a1 << 0xF));
                temp_v1 = var_a4->unk8;
                var_a5->unk8 = (s16) (((s32) temp_v1 >> 1) | (temp_v1 << 0xF));
                temp_at = var_a4->unkA;
                var_a5->unkA = (s16) (((s32) temp_at >> 1) | (temp_at << 0xF));
                temp_t8 = var_a4->unkC;
                var_a5->unkC = (s16) (((s32) temp_t8 >> 1) | (temp_t8 << 0xF));
                temp_t2_2 = var_a4->unkE;
                var_a5 += 0x10;
                var_a6 -= 8;
                temp_t1_2 = (s32) temp_t2_2 >> 1;
                var_a4 += 0x10;
                var_a5->unk-2 = (s16) (temp_t1_2 | (temp_t2_2 << 0xF));
            } while (var_a6 > 0);
        }
    }
}

void crmSpan_A1_RGB5_to_RGB5_A1(void *arg1, u16 *arg2, void *arg3) {
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_t1_2;
    s32 var_a1;
    s32 var_a6;
    u16 *var_a4;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a1;
    u16 temp_a2;
    u16 temp_a3_2;
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

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
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
            temp_a2 = var_a4->unkC;
            var_a5->unkC = (s16) (((s32) temp_a2 >> 0xF) | (temp_a2 * 2));
            temp_a0_2 = var_a4->unkE;
            var_a4 += 0x10;
            var_a6 -= 8;
            var_a5 += 0x10;
            var_a5->unk-2 = (s16) (((s32) temp_a0_2 >> 0xF) | (temp_a0_2 * 2));
        } while (var_a6 >= 9);
    }
    if (var_a6 > 0) {
        temp_a2_2 = (var_a6 >= 1) ? var_a6 : 1;
        var_a1 = temp_a2_2 & 7;
        if (var_a1 != 0) {
            do {
                temp_a7_2 = *var_a4;
                var_a6 -= 1;
                var_a5 += 2;
                var_a1 -= 1;
                temp_a3 = (s32) temp_a7_2 >> 0xF;
                var_a4 += 2;
                var_a5->unk-2 = (s16) (temp_a3 | (temp_a7_2 * 2));
            } while (var_a1 != 0);
        }
        if ((temp_a2_2 >> 3) != 0) {
            do {
                temp_t2 = var_a4->unk0;
                var_a5->unk0 = (s16) (((s32) temp_t2 >> 0xF) | (temp_t2 * 2));
                temp_t0 = var_a4->unk2;
                var_a5->unk2 = (s16) (((s32) temp_t0 >> 0xF) | (temp_t0 * 2));
                temp_a3_2 = var_a4->unk4;
                var_a5->unk4 = (s16) (((s32) temp_a3_2 >> 0xF) | (temp_a3_2 * 2));
                temp_a1 = var_a4->unk6;
                var_a5->unk6 = (s16) (((s32) temp_a1 >> 0xF) | (temp_a1 * 2));
                temp_v1 = var_a4->unk8;
                var_a5->unk8 = (s16) (((s32) temp_v1 >> 0xF) | (temp_v1 * 2));
                temp_at = var_a4->unkA;
                var_a5->unkA = (s16) (((s32) temp_at >> 0xF) | (temp_at * 2));
                temp_t8 = var_a4->unkC;
                var_a5->unkC = (s16) (((s32) temp_t8 >> 0xF) | (temp_t8 * 2));
                temp_t2_2 = var_a4->unkE;
                var_a5 += 0x10;
                var_a6 -= 8;
                temp_t1_2 = (s32) temp_t2_2 >> 0xF;
                var_a4 += 0x10;
                var_a5->unk-2 = (s16) (temp_t1_2 | (temp_t2_2 * 2));
            } while (var_a6 > 0);
        }
    }
}

void crmSpan_RGB5_to_RGB5_A1(void *arg1, u16 *arg2, void *arg3) {
    s32 temp_a7;
    s32 temp_a7_2;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a6;
    u16 *var_a1;
    u16 *var_a1_3;
    u16 *var_a4;
    u16 temp_a4;
    u16 temp_t1;
    u16 temp_t3;
    void *var_a2;
    void *var_a2_2;
    void *var_a5;

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
        temp_a7 = (s32) ((var_a6 >= 1) ? (var_a6 - 1) : (var_a6 + 6)) >> 3;
        if (temp_a7 & 1) {
            arg3->unk0 = (s16) ((arg2->unk0 * 2) | 1);
            arg3->unk2 = (s16) ((arg2->unk2 * 2) | 1);
            arg3->unk4 = (s16) ((arg2->unk4 * 2) | 1);
            arg3->unk6 = (s16) ((arg2->unk6 * 2) | 1);
            arg3->unk8 = (s16) ((arg2->unk8 * 2) | 1);
            arg3->unkA = (s16) ((arg2->unkA * 2) | 1);
            arg3->unkC = (s16) ((arg2->unkC * 2) | 1);
            var_a6 -= 8;
            var_a5 = arg3 + 0x10;
            var_a4 = arg2 + 0x10;
            arg3->unkE = (s16) ((arg2->unkE * 2) | 1);
        }
        var_a2 = var_a5;
        var_a3 = var_a6;
        if ((temp_a7 >> 1) != 0) {
            var_a1 = var_a4;
            do {
                var_a2->unk0 = (s16) ((var_a1->unk0 * 2) | 1);
                var_a2->unk2 = (s16) ((var_a1->unk2 * 2) | 1);
                var_a2->unk4 = (s16) ((var_a1->unk4 * 2) | 1);
                var_a2->unk6 = (s16) ((var_a1->unk6 * 2) | 1);
                var_a2->unk8 = (s16) ((var_a1->unk8 * 2) | 1);
                var_a2->unkA = (s16) ((var_a1->unkA * 2) | 1);
                var_a2->unkC = (s16) ((var_a1->unkC * 2) | 1);
                var_a2->unkE = (s16) ((var_a1->unkE * 2) | 1);
                var_a2->unk10 = (s16) ((var_a1->unk10 * 2) | 1);
                var_a2->unk12 = (s16) ((var_a1->unk12 * 2) | 1);
                var_a2->unk14 = (s16) ((var_a1->unk14 * 2) | 1);
                var_a2->unk16 = (s16) ((var_a1->unk16 * 2) | 1);
                var_a2->unk18 = (s16) ((var_a1->unk18 * 2) | 1);
                var_a2->unk1A = (s16) ((var_a1->unk1A * 2) | 1);
                var_a2->unk1C = (s16) ((var_a1->unk1C * 2) | 1);
                var_a3 -= 0x10;
                temp_a4 = var_a1->unk1E;
                var_a1 += 0x20;
                var_a2 += 0x20;
                var_a2->unk-2 = (s16) ((temp_a4 * 2) | 1);
            } while (var_a3 >= 9);
            var_a5 = var_a2;
            var_a4 = var_a1;
            var_a6 = var_a3;
        }
    }
    if (var_a6 > 0) {
        temp_a7_2 = (var_a6 >= 1) ? var_a6 : 1;
        var_a1_2 = temp_a7_2 & 3;
        if (var_a1_2 != 0) {
            do {
                var_a6 -= 1;
                temp_t1 = *var_a4;
                var_a5 += 2;
                var_a1_2 -= 1;
                var_a4 += 2;
                var_a5->unk-2 = (s16) ((temp_t1 * 2) | 1);
            } while (var_a1_2 != 0);
        }
        var_a2_2 = var_a5;
        var_a1_3 = var_a4;
        var_a3_2 = var_a6;
        if ((temp_a7_2 >> 2) != 0) {
            do {
                var_a2_2->unk0 = (s16) ((var_a1_3->unk0 * 2) | 1);
                var_a2_2->unk2 = (s16) ((var_a1_3->unk2 * 2) | 1);
                var_a2_2->unk4 = (s16) ((var_a1_3->unk4 * 2) | 1);
                temp_t3 = var_a1_3->unk6;
                var_a2_2 += 8;
                var_a3_2 -= 4;
                var_a1_3 += 8;
                var_a2_2->unk-2 = (s16) ((temp_t3 * 2) | 1);
            } while (var_a3_2 > 0);
        }
    }
}

void crmSpan_RGB8_to_RGBA8(void *arg1, void *arg2, void *arg3) {
    s32 var_a1;
    s32 var_a6;
    u8 temp_at;
    u8 temp_v0;
    void *var_a4;
    void *var_a5;

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
        do {
            var_a5->unk0 = (u8) var_a4->unk0;
            var_a5->unk1 = (u8) var_a4->unk1;
            var_a5->unk2 = (u8) var_a4->unk2;
            var_a5->unk3 = 0xFF;
            var_a5->unk4 = (u8) var_a4->unk3;
            var_a5->unk5 = (u8) var_a4->unk4;
            var_a5->unk6 = (u8) var_a4->unk5;
            var_a5->unk7 = 0xFF;
            var_a5->unk8 = (u8) var_a4->unk6;
            var_a5->unk9 = (u8) var_a4->unk7;
            var_a5->unkA = (u8) var_a4->unk8;
            var_a5->unkB = 0xFF;
            var_a5->unkC = (u8) var_a4->unk9;
            var_a5->unkD = (u8) var_a4->unkA;
            var_a5->unkE = (u8) var_a4->unkB;
            var_a5->unkF = 0xFF;
            var_a5->unk10 = (u8) var_a4->unkC;
            var_a5->unk11 = (u8) var_a4->unkD;
            var_a5->unk12 = (u8) var_a4->unkE;
            var_a5->unk13 = 0xFF;
            var_a5->unk14 = (u8) var_a4->unkF;
            var_a5->unk15 = (u8) var_a4->unk10;
            var_a5->unk16 = (u8) var_a4->unk11;
            var_a5->unk17 = 0xFF;
            var_a5->unk18 = (u8) var_a4->unk12;
            var_a5->unk19 = (u8) var_a4->unk13;
            var_a5->unk1A = (u8) var_a4->unk14;
            var_a5->unk1B = 0xFF;
            var_a5->unk1C = (u8) var_a4->unk15;
            var_a6 -= 8;
            var_a5->unk1D = (u8) var_a4->unk16;
            var_a5 += 0x20;
            temp_v0 = var_a4->unk17;
            var_a5->unk-1 = 0xFF;
            var_a4 += 0x18;
            var_a5->unk-2 = temp_v0;
        } while (var_a6 >= 9);
    }
    var_a1 = var_a6;
    if (var_a6 > 0) {
        do {
            var_a5->unk0 = (u8) var_a4->unk0;
            var_a5->unk1 = (u8) var_a4->unk1;
            var_a5 += 4;
            var_a1 -= 1;
            temp_at = var_a4->unk2;
            var_a5->unk-1 = 0xFF;
            var_a4 += 3;
            var_a5->unk-2 = temp_at;
        } while (var_a1 > 0);
    }
}

void crmSpan_RGBX8_to_RGBA8(void *arg1, s32 *arg2, void *arg3) {
    s32 *var_a2;
    s32 *var_a2_2;
    s32 *var_a4;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t1;
    s32 temp_t3;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a6;
    void *var_a1;
    void *var_a1_3;
    void *var_a5;

    var_a6 = arg1->unkB8;
    var_a4 = arg2;
    var_a5 = arg3;
    if (var_a6 >= 9) {
        temp_a7 = (s32) ((var_a6 >= 1) ? (var_a6 - 1) : (var_a6 + 6)) >> 3;
        if (temp_a7 & 1) {
            arg3->unk0 = (s32) (arg2->unk0 | 0xFF);
            arg3->unk4 = (s32) (arg2->unk4 | 0xFF);
            arg3->unk8 = (s32) (arg2->unk8 | 0xFF);
            arg3->unkC = (s32) (arg2->unkC | 0xFF);
            arg3->unk10 = (s32) (arg2->unk10 | 0xFF);
            arg3->unk14 = (s32) (arg2->unk14 | 0xFF);
            arg3->unk18 = (s32) (arg2->unk18 | 0xFF);
            var_a6 -= 8;
            var_a5 = arg3 + 0x20;
            var_a4 = arg2 + 0x20;
            arg3->unk1C = (s32) (arg2->unk1C | 0xFF);
        }
        var_a2 = var_a4;
        var_a3 = var_a6;
        if ((temp_a7 >> 1) != 0) {
            var_a1 = var_a5;
            do {
                var_a1->unk0 = (s32) (var_a2->unk0 | 0xFF);
                var_a1->unk4 = (s32) (var_a2->unk4 | 0xFF);
                var_a1->unk8 = (s32) (var_a2->unk8 | 0xFF);
                var_a1->unkC = (s32) (var_a2->unkC | 0xFF);
                var_a1->unk10 = (s32) (var_a2->unk10 | 0xFF);
                var_a1->unk14 = (s32) (var_a2->unk14 | 0xFF);
                var_a1->unk18 = (s32) (var_a2->unk18 | 0xFF);
                var_a1->unk1C = (s32) (var_a2->unk1C | 0xFF);
                var_a1->unk20 = (s32) (var_a2->unk20 | 0xFF);
                var_a1->unk24 = (s32) (var_a2->unk24 | 0xFF);
                var_a1->unk28 = (s32) (var_a2->unk28 | 0xFF);
                var_a1->unk2C = (s32) (var_a2->unk2C | 0xFF);
                var_a1->unk30 = (s32) (var_a2->unk30 | 0xFF);
                var_a1->unk34 = (s32) (var_a2->unk34 | 0xFF);
                var_a3 -= 0x10;
                var_a1->unk38 = (s32) (var_a2->unk38 | 0xFF);
                temp_a4 = var_a2->unk3C;
                var_a1 += 0x40;
                var_a2 += 0x40;
                var_a1->unk-4 = (s32) (temp_a4 | 0xFF);
            } while (var_a3 >= 9);
            var_a4 = var_a2;
            var_a5 = var_a1;
            var_a6 = var_a3;
        }
    }
    if (var_a6 > 0) {
        temp_a7_2 = (var_a6 >= 1) ? var_a6 : 1;
        var_a1_2 = temp_a7_2 & 3;
        if (var_a1_2 != 0) {
            do {
                var_a6 -= 1;
                var_a1_2 -= 1;
                temp_t1 = *var_a4;
                var_a5 += 4;
                var_a4 += 4;
                var_a5->unk-4 = (s32) (temp_t1 | 0xFF);
            } while (var_a1_2 != 0);
        }
        var_a1_3 = var_a5;
        var_a2_2 = var_a4;
        var_a3_2 = var_a6;
        if ((temp_a7_2 >> 2) != 0) {
            do {
                var_a1_3->unk0 = (s32) (var_a2_2->unk0 | 0xFF);
                var_a1_3->unk4 = (s32) (var_a2_2->unk4 | 0xFF);
                var_a1_3->unk8 = (s32) (var_a2_2->unk8 | 0xFF);
                var_a3_2 -= 4;
                temp_t3 = var_a2_2->unkC;
                var_a1_3 += 0x10;
                var_a2_2 += 0x10;
                var_a1_3->unk-4 = (s32) (temp_t3 | 0xFF);
            } while (var_a3_2 > 0);
        }
    }
}

void crmSpan_RGBA8_to_A1_RGB5(void *arg1, void *arg2, void *arg3) {
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t8;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_t2;
    void *var_a1_2;
    void *var_a1_4;
    void *var_a3;
    void *var_a3_2;
    void *var_a5;
    void *var_a6;

    temp_a7 = arg1->unk0;
    var_a5 = arg2;
    var_a6 = arg3;
    temp_a4 = arg1->unkB8;
    if (temp_a7 != 0x1907) {
        if (temp_a7 == 0x1908) {
            var_a2 = 0;
            if (temp_a4 > 0) {
                var_a1 = temp_a4 & 3;
                var_a0 = temp_a4 >> 2;
                if (var_a1 != 0) {
                    do {
                        var_a5 += 4;
                        var_a2 += 1;
                        var_a6 += 2;
                        var_a1 -= 1;
                        var_a6->unk-2 = (s16) ((((u8) var_a5->unk-2 >> 3) & 0x1F) | ((var_a5->unk-1 & 0x80) << 8) | (((var_a5->unk-4 & 0xF8) << 7) | ((var_a5->unk-3 & 0xF8) * 4)));
                    } while (var_a1 != 0);
                    var_a0 = temp_a4 >> 2;
                }
                var_a1_2 = var_a6;
                var_a3 = var_a5;
                if (var_a0 != 0) {
                    do {
                        var_a1_2->unk0 = (s16) ((((u8) var_a3->unk2 >> 3) & 0x1F) | ((var_a3->unk3 & 0x80) << 8) | (((var_a3->unk0 & 0xF8) << 7) | ((var_a3->unk1 & 0xF8) * 4)));
                        var_a1_2->unk2 = (s16) ((((u8) var_a3->unk6 >> 3) & 0x1F) | ((var_a3->unk7 & 0x80) << 8) | (((var_a3->unk4 & 0xF8) << 7) | ((var_a3->unk5 & 0xF8) * 4)));
                        temp_a6 = (((u8) var_a3->unkA >> 3) & 0x1F) | ((var_a3->unkB & 0x80) << 8);
                        temp_a7_2 = ((var_a3->unk8 & 0xF8) << 7) | ((var_a3->unk9 & 0xF8) * 4);
                        var_a3 += 0x10;
                        var_a1_2->unk4 = (s16) (temp_a6 | temp_a7_2);
                        var_a1_2 += 8;
                        var_a2 += 4;
                        var_a1_2->unk-2 = (s16) ((((u8) var_a3->unk-2 >> 3) & 0x1F) | ((var_a3->unk-1 & 0x80) << 8) | (((var_a3->unk-4 & 0xF8) << 7) | ((var_a3->unk-3 & 0xF8) * 4)));
                    } while (temp_a4 != var_a2);
                }
            }
        }
    } else {
        var_a2_2 = 0;
        if (temp_a4 > 0) {
            var_a1_3 = temp_a4 & 3;
            var_t2 = temp_a4 >> 2;
            if (var_a1_3 != 0) {
                do {
                    var_a5 += 3;
                    var_a2_2 += 1;
                    var_a1_3 -= 1;
                    var_a6 += 2;
                    var_a6->unk-2 = (s16) ((((u8) var_a5->unk-1 >> 3) & 0x1F) | (((var_a5->unk-3 & 0xF8) << 7) | ((var_a5->unk-2 & 0xF8) * 4)) | 0x8000);
                } while (var_a1_3 != 0);
                var_t2 = temp_a4 >> 2;
            }
            var_a1_4 = var_a6;
            var_a3_2 = var_a5;
            if (var_t2 != 0) {
                do {
                    var_a1_4->unk0 = (s16) ((((u8) var_a3_2->unk2 >> 3) & 0x1F) | (((var_a3_2->unk0 & 0xF8) << 7) | ((var_a3_2->unk1 & 0xF8) * 4)) | 0x8000);
                    var_a1_4->unk2 = (s16) ((((u8) var_a3_2->unk5 >> 3) & 0x1F) | (((var_a3_2->unk3 & 0xF8) << 7) | ((var_a3_2->unk4 & 0xF8) * 4)) | 0x8000);
                    temp_t8 = (((u8) var_a3_2->unk8 >> 3) & 0x1F) | (((var_a3_2->unk6 & 0xF8) << 7) | ((var_a3_2->unk7 & 0xF8) * 4));
                    var_a3_2 += 0xC;
                    var_a1_4->unk4 = (s16) (temp_t8 | 0x8000);
                    var_a2_2 += 4;
                    var_a1_4 += 8;
                    var_a1_4->unk-2 = (s16) ((((u8) var_a3_2->unk-1 >> 3) & 0x1F) | (((var_a3_2->unk-3 & 0xF8) << 7) | ((var_a3_2->unk-2 & 0xF8) * 4)) | 0x8000);
                } while (temp_a4 != var_a2_2);
            }
        }
    }
}

void crmSpan_RGBA8_to_RGBA4(void *arg1, void *arg2, void *arg3) {
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_t3;
    u8 temp_at;
    u8 temp_t2;
    u8 temp_t3;
    u8 temp_t9;
    void *var_a1_2;
    void *var_a1_4;
    void *var_a3;
    void *var_a3_2;
    void *var_a5;
    void *var_a6;

    temp_a7 = arg1->unk0;
    var_a5 = arg2;
    var_a6 = arg3;
    temp_a4 = arg1->unkB8;
    if (temp_a7 != 0x1907) {
        if (temp_a7 == 0x1908) {
            var_a2 = 0;
            if (temp_a4 > 0) {
                var_a1 = temp_a4 & 3;
                var_a0 = temp_a4 >> 2;
                if (var_a1 != 0) {
                    do {
                        var_a5 += 4;
                        var_a2 += 1;
                        var_a6 += 2;
                        var_a1 -= 1;
                        var_a6->unk-2 = (s16) ((var_a5->unk-2 & 0xF0) | (((u8) var_a5->unk-1 >> 4) & 0xF) | (((var_a5->unk-4 & 0xF0) << 8) | ((var_a5->unk-3 & 0xF0) * 0x10)));
                    } while (var_a1 != 0);
                    var_a0 = temp_a4 >> 2;
                }
                var_a1_2 = var_a6;
                var_a3 = var_a5;
                if (var_a0 != 0) {
                    do {
                        var_a1_2->unk0 = (s16) ((var_a3->unk2 & 0xF0) | (((u8) var_a3->unk3 >> 4) & 0xF) | (((var_a3->unk0 & 0xF0) << 8) | ((var_a3->unk1 & 0xF0) * 0x10)));
                        var_a1_2->unk2 = (s16) ((var_a3->unk6 & 0xF0) | (((u8) var_a3->unk7 >> 4) & 0xF) | (((var_a3->unk4 & 0xF0) << 8) | ((var_a3->unk5 & 0xF0) * 0x10)));
                        temp_a6 = (var_a3->unkA & 0xF0) | (((u8) var_a3->unkB >> 4) & 0xF);
                        temp_a7_2 = ((var_a3->unk8 & 0xF0) << 8) | ((var_a3->unk9 & 0xF0) * 0x10);
                        var_a3 += 0x10;
                        var_a1_2->unk4 = (s16) (temp_a6 | temp_a7_2);
                        var_a1_2 += 8;
                        var_a2 += 4;
                        var_a1_2->unk-2 = (s16) ((var_a3->unk-2 & 0xF0) | (((u8) var_a3->unk-1 >> 4) & 0xF) | (((var_a3->unk-4 & 0xF0) << 8) | ((var_a3->unk-3 & 0xF0) * 0x10)));
                    } while (temp_a4 != var_a2);
                }
            }
        }
    } else {
        var_a2_2 = 0;
        if (temp_a4 > 0) {
            var_a1_3 = temp_a4 & 3;
            var_t3 = temp_a4 >> 2;
            if (var_a1_3 != 0) {
                do {
                    temp_t2 = var_a5->unk0;
                    var_a2_2 += 1;
                    temp_t3 = var_a5->unk1;
                    var_a5 += 3;
                    var_a1_3 -= 1;
                    var_a6 += 2;
                    var_a6->unk-2 = (s16) ((var_a5->unk-1 & 0xF0) | (((temp_t2 & 0xF0) << 8) | ((temp_t3 & 0xF0) * 0x10)) | 0xF);
                } while (var_a1_3 != 0);
                var_t3 = temp_a4 >> 2;
            }
            var_a1_4 = var_a6;
            var_a3_2 = var_a5;
            if (var_t3 != 0) {
                do {
                    var_a1_4->unk0 = (s16) ((var_a3_2->unk2 & 0xF0) | (((var_a3_2->unk0 & 0xF0) << 8) | ((var_a3_2->unk1 & 0xF0) * 0x10)) | 0xF);
                    var_a1_4->unk2 = (s16) ((var_a3_2->unk5 & 0xF0) | (((var_a3_2->unk3 & 0xF0) << 8) | ((var_a3_2->unk4 & 0xF0) * 0x10)) | 0xF);
                    var_a1_4->unk4 = (s16) ((var_a3_2->unk8 & 0xF0) | (((var_a3_2->unk6 & 0xF0) << 8) | ((var_a3_2->unk7 & 0xF0) * 0x10)) | 0xF);
                    temp_t9 = var_a3_2->unk9;
                    temp_at = var_a3_2->unkA;
                    var_a3_2 += 0xC;
                    var_a2_2 += 4;
                    var_a1_4 += 8;
                    var_a1_4->unk-2 = (s16) ((var_a3_2->unk-1 & 0xF0) | (((temp_t9 & 0xF0) << 8) | ((temp_at & 0xF0) * 0x10)) | 0xF);
                } while (temp_a4 != var_a2_2);
            }
        }
    }
}

void crmSubtileTexels(u16 *arg0, s32 arg1, s32 arg2) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t0;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_t2;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_v1;
    s64 temp_v0;
    u16 *var_a0;
    u16 *var_a0_2;
    u16 *var_a0_3;
    u16 *var_a1_6;
    u16 *var_a3_5;
    u16 *var_a4_4;
    u16 *var_a4_6;
    u16 *var_a4_7;
    u16 *var_a5;
    u16 temp_a0;
    u16 temp_t0_2;
    u16 temp_t2;
    u16 temp_t9;
    u32 temp_t1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 1;
    if (var_a6 > 0) {
        var_a4 = var_a1 & 0x1E0;
        if (var_a1 & 7) {
            var_a3 = var_a1;
loop_3:
            var_a0 += 2;
            var_a6 -= 1;
            var_a3 += 2;
            var_a3->unk-2 = (u16) var_a0->unk-2;
            if (var_a6 > 0) {
                var_a1_2 = var_a3 + 0x18;
                if (var_a3 & 7) {
                    var_a0 += 2;
                    var_a6 -= 1;
                    var_a3 += 2;
                    var_a3->unk-2 = (u16) var_a0->unk-2;
                    if ((var_a6 <= 0) || !(var_a3 & 7)) {
                        goto block_7;
                    }
                    goto loop_3;
                }
            } else {
block_7:
                var_a1_2 = var_a3 + 0x18;
            }
            var_a1 = !(var_a1_2 & 0x1E0) ? (var_a3 + 0x1E18) : var_a1_2;
            var_a4 = var_a1 & 0x1E0;
        }
        var_t3 = var_a6 < 0x40;
        if (var_a4 != 0) {
            temp_t1 = (u32) (0x200 - var_a4) >> 3;
            temp_t0 = (var_a6 < (s32) temp_t1) ? var_a6 : (s32) temp_t1;
            temp_a7 = temp_t0 > 0x1F;
            var_a3_2 = temp_t0;
            var_a6 -= temp_t0 & ~3;
            if ((s32) var_a0 & 3) {
                var_a5 = var_a0;
                var_a4_2 = var_a1;
                if (temp_a7 != 0) {
                    var_a1->unk0 = (u16) var_a0->unk0;
                    var_a1->unk2 = (u16) var_a0->unk2;
                    var_a1->unk4 = (u16) var_a0->unk4;
                    var_a1->unk6 = (u16) var_a0->unk6;
                    var_a1->unk20 = (u16) var_a0->unk8;
                    var_a1->unk22 = (u16) var_a0->unkA;
                    var_a1->unk24 = (u16) var_a0->unkC;
                    var_a1->unk26 = (u16) var_a0->unkE;
                    var_a1->unk40 = (u16) var_a0->unk10;
                    var_a1->unk42 = (u16) var_a0->unk12;
                    var_a1->unk44 = (u16) var_a0->unk14;
                    var_a1->unk46 = (u16) var_a0->unk16;
                    var_a1->unk60 = (u16) var_a0->unk18;
                    var_a1->unk62 = (u16) var_a0->unk1A;
                    var_a1->unk64 = (u16) var_a0->unk1C;
                    var_a1->unk66 = (u16) var_a0->unk1E;
                    var_a1->unk80 = (u16) var_a0->unk20;
                    var_a1->unk82 = (u16) var_a0->unk22;
                    var_a1->unk84 = (u16) var_a0->unk24;
                    var_a1->unk86 = (u16) var_a0->unk26;
                    var_a1->unkA0 = (u16) var_a0->unk28;
                    var_a1->unkA2 = (u16) var_a0->unk2A;
                    var_a1->unkA4 = (u16) var_a0->unk2C;
                    var_a1->unkA6 = (u16) var_a0->unk2E;
                    var_a1->unkC0 = (u16) var_a0->unk30;
                    var_a1->unkC2 = (u16) var_a0->unk32;
                    var_a1->unkC4 = (u16) var_a0->unk34;
                    var_a1->unkC6 = (u16) var_a0->unk36;
                    var_a1->unkE0 = (u16) var_a0->unk38;
                    var_a1->unkE2 = (u16) var_a0->unk3A;
                    var_a1->unkE4 = (u16) var_a0->unk3C;
                    var_a3_2 = temp_t0 - 0x20;
                    var_a5 = var_a0 + 0x40;
                    var_a4_2 = var_a1 + 0x100;
                    var_a1->unkE6 = (u16) var_a0->unk3E;
                }
                var_a1_3 = var_a4_2;
                if (var_a3_2 >= 4) {
                    do {
                        var_a4_2->unk0 = (u16) var_a5->unk0;
                        var_a4_2->unk2 = (u16) var_a5->unk2;
                        var_a3_2 -= 4;
                        var_a4_2->unk4 = (u16) var_a5->unk4;
                        var_a4_2 += 0x20;
                        temp_a0 = var_a5->unk6;
                        var_a5 += 8;
                        var_a4_2->unk-1A = temp_a0;
                    } while (var_a3_2 >= 4);
                    var_a1_3 = var_a4_2;
                }
            } else {
                var_a5 = var_a0;
                var_a4_3 = var_a1;
                if (temp_a7 != 0) {
                    var_a1->unk0 = (s32) var_a0->unk0;
                    var_a1->unk4 = (s32) var_a0->unk4;
                    var_a1->unk20 = (s32) var_a0->unk8;
                    var_a1->unk24 = (s32) var_a0->unkC;
                    var_a1->unk40 = (s32) var_a0->unk10;
                    var_a1->unk44 = (s32) var_a0->unk14;
                    var_a1->unk60 = (s32) var_a0->unk18;
                    var_a1->unk64 = (s32) var_a0->unk1C;
                    var_a1->unk80 = (s32) var_a0->unk20;
                    var_a1->unk84 = (s32) var_a0->unk24;
                    var_a1->unkA0 = (s32) var_a0->unk28;
                    var_a1->unkA4 = (s32) var_a0->unk2C;
                    var_a1->unkC0 = (s32) var_a0->unk30;
                    var_a1->unkC4 = (s32) var_a0->unk34;
                    var_a1->unkE0 = (s32) var_a0->unk38;
                    var_a3_2 = temp_t0 - 0x20;
                    var_a5 = var_a0 + 0x40;
                    var_a4_3 = var_a1 + 0x100;
                    var_a1->unkE4 = (s32) var_a0->unk3C;
                }
                var_a1_3 = var_a4_3;
                if (var_a3_2 >= 4) {
                    temp_a7_2 = (s32) ((var_a3_2 >= 0) ? var_a3_2 : (var_a3_2 + 3)) >> 2;
                    var_t3_2 = temp_a7_2 >> 1;
                    if (temp_a7_2 & 1) {
                        *var_a4_3 = (s32) var_a5->unk0;
                        var_a4_3 += 0x20;
                        temp_t1_2 = var_a5->unk4;
                        var_a3_2 -= 4;
                        var_a5 += 8;
                        var_a4_3->unk-1C = temp_t1_2;
                        var_t3_2 = temp_a7_2 >> 1;
                    }
                    var_a1_4 = var_a4_3;
                    if (var_t3_2 != 0) {
                        var_a0_2 = var_a5;
                        do {
                            var_a1_4->unk0 = (s32) var_a0_2->unk0;
                            var_a1_4->unk4 = (s32) var_a0_2->unk4;
                            var_a3_2 -= 8;
                            var_a1_4->unk20 = (s32) var_a0_2->unk8;
                            var_a1_4 += 0x40;
                            temp_t8 = var_a0_2->unkC;
                            var_a0_2 += 0x10;
                            var_a1_4->unk-1C = temp_t8;
                        } while (var_a3_2 >= 4);
                        var_a4_3 = var_a1_4;
                        var_a5 = var_a0_2;
                    }
                    var_a1_3 = var_a4_3;
                }
            }
            var_a0 = var_a5;
            if (var_a6 > 0) {
                var_a1 = !(var_a1_3 & 0x1E0) ? (var_a1_3 + 0x1E00) : var_a1_3;
                var_t3 = var_a6 < 0x40;
                goto block_19;
            }
        } else {
block_19:
            if (var_t3 == 0) {
                if (var_a1 & 0x1E0) {
                    goto block_22;
                }
                if (!((s32) var_a0 & 7)) {
                    temp_t1_3 = (s32) ((var_a6 >= 0) ? var_a6 : (var_a6 + 0x3F)) >> 6;
                    temp_a5 = (temp_t1_3 >= 1) ? temp_t1_3 : 1;
                    var_a4_4 = var_a0;
                    var_a3_3 = var_a1;
                    if (temp_a5 & 1) {
                        var_a1->unk0 = (s64) var_a0->unk0;
                        var_a1->unk20 = (s64) var_a0->unk8;
                        var_a1->unk40 = (s64) var_a0->unk10;
                        var_a1->unk60 = (s64) var_a0->unk18;
                        var_a1->unk80 = (s64) var_a0->unk20;
                        var_a1->unkA0 = (s64) var_a0->unk28;
                        var_a1->unkC0 = (s64) var_a0->unk30;
                        var_a1->unkE0 = (s64) var_a0->unk38;
                        var_a1->unk100 = (s64) var_a0->unk40;
                        var_a1->unk120 = (s64) var_a0->unk48;
                        var_a1->unk140 = (s64) var_a0->unk50;
                        var_a1->unk160 = (s64) var_a0->unk58;
                        var_a1->unk180 = (s64) var_a0->unk60;
                        var_a1->unk1A0 = (s64) var_a0->unk68;
                        var_a1->unk1C0 = (s64) var_a0->unk70;
                        var_a6 -= 0x40;
                        var_a4_4 = var_a0 + 0x80;
                        var_a3_3 = var_a1 + 0x2000;
                        var_a1->unk1E0 = (s64) var_a0->unk78;
                    }
                    var_a1_5 = var_a3_3;
                    if ((temp_a5 >> 1) != 0) {
                        var_a0_3 = var_a4_4;
                        do {
                            var_a1_5->unk0 = (s64) var_a0_3->unk0;
                            var_a1_5->unk20 = (s64) var_a0_3->unk8;
                            var_a1_5->unk40 = (s64) var_a0_3->unk10;
                            var_a1_5->unk60 = (s64) var_a0_3->unk18;
                            var_a1_5->unk80 = (s64) var_a0_3->unk20;
                            var_a1_5->unkA0 = (s64) var_a0_3->unk28;
                            var_a1_5->unkC0 = (s64) var_a0_3->unk30;
                            var_a1_5->unkE0 = (s64) var_a0_3->unk38;
                            var_a1_5->unk100 = (s64) var_a0_3->unk40;
                            var_a1_5->unk120 = (s64) var_a0_3->unk48;
                            var_a1_5->unk140 = (s64) var_a0_3->unk50;
                            var_a1_5->unk160 = (s64) var_a0_3->unk58;
                            var_a1_5->unk180 = (s64) var_a0_3->unk60;
                            var_a1_5->unk1A0 = (s64) var_a0_3->unk68;
                            var_a1_5->unk1C0 = (s64) var_a0_3->unk70;
                            var_a1_5->unk1E0 = (s64) var_a0_3->unk78;
                            var_a1_5->unk2000 = (s64) var_a0_3->unk80;
                            var_a1_5->unk2020 = (s64) var_a0_3->unk88;
                            var_a1_5->unk2040 = (s64) var_a0_3->unk90;
                            var_a1_5->unk2060 = (s64) var_a0_3->unk98;
                            var_a1_5->unk2080 = (s64) var_a0_3->unkA0;
                            var_a1_5->unk20A0 = (s64) var_a0_3->unkA8;
                            var_a1_5->unk20C0 = (s64) var_a0_3->unkB0;
                            var_a1_5->unk20E0 = (s64) var_a0_3->unkB8;
                            var_a1_5->unk2100 = (s64) var_a0_3->unkC0;
                            var_a1_5->unk2120 = (s64) var_a0_3->unkC8;
                            var_a1_5->unk2140 = (s64) var_a0_3->unkD0;
                            var_a1_5->unk2160 = (s64) var_a0_3->unkD8;
                            var_a1_5->unk2180 = (s64) var_a0_3->unkE0;
                            var_a1_5->unk21A0 = (s64) var_a0_3->unkE8;
                            var_a6 -= 0x80;
                            var_a1_5->unk21C0 = (s64) var_a0_3->unkF0;
                            var_a1_5 += 0x4000;
                            temp_v0 = var_a0_3->unkF8;
                            var_a0_3 += 0x100;
                            var_a1_5->unk-1E20 = temp_v0;
                        } while (var_a6 >= 0x40);
                        var_a3_3 = var_a1_5;
                        var_a4_4 = var_a0_3;
                    }
                    var_a1 = var_a3_3;
                    var_a0 = var_a4_4;
                } else if ((s32) var_a0 & 3) {
                    do {
                        var_a3_4 = 1;
loop_65:
                        var_a1->unk0 = (u16) var_a0->unk0;
                        var_a1->unk2 = (u16) var_a0->unk2;
                        var_a1->unk4 = (u16) var_a0->unk4;
                        var_a1->unk6 = (u16) var_a0->unk6;
                        var_a1->unk20 = (u16) var_a0->unk8;
                        var_a1->unk22 = (u16) var_a0->unkA;
                        var_a1->unk24 = (u16) var_a0->unkC;
                        var_a1->unk26 = (u16) var_a0->unkE;
                        var_a1->unk40 = (u16) var_a0->unk10;
                        var_a1->unk42 = (u16) var_a0->unk12;
                        var_a1->unk44 = (u16) var_a0->unk14;
                        var_a1->unk46 = (u16) var_a0->unk16;
                        var_a1->unk60 = (u16) var_a0->unk18;
                        var_a1->unk62 = (u16) var_a0->unk1A;
                        var_a1->unk64 = (u16) var_a0->unk1C;
                        var_a1->unk66 = (u16) var_a0->unk1E;
                        var_a1->unk80 = (u16) var_a0->unk20;
                        var_a1->unk82 = (u16) var_a0->unk22;
                        var_a1->unk84 = (u16) var_a0->unk24;
                        var_a1->unk86 = (u16) var_a0->unk26;
                        var_a1->unkA0 = (u16) var_a0->unk28;
                        var_a1->unkA2 = (u16) var_a0->unk2A;
                        var_a1->unkA4 = (u16) var_a0->unk2C;
                        var_a1->unkA6 = (u16) var_a0->unk2E;
                        var_a1->unkC0 = (u16) var_a0->unk30;
                        var_a1->unkC2 = (u16) var_a0->unk32;
                        var_a1->unkC4 = (u16) var_a0->unk34;
                        var_a1->unkC6 = (u16) var_a0->unk36;
                        var_a1->unkE0 = (u16) var_a0->unk38;
                        var_a1->unkE2 = (u16) var_a0->unk3A;
                        var_a3_4 -= 1;
                        var_a1->unkE4 = (u16) var_a0->unk3C;
                        var_a6 -= 0x20;
                        var_a1 += 0x100;
                        temp_t0_2 = var_a0->unk3E;
                        var_a0 += 0x40;
                        var_a1->unk-1A = temp_t0_2;
                        if (var_a3_4 != -1) {
                            goto loop_65;
                        }
                        var_a1 += 0x1E00;
                    } while (var_a6 >= 0x40);
                } else {
                    do {
                        var_a1->unk0 = (s32) var_a0->unk0;
                        var_a1->unk4 = (s32) var_a0->unk4;
                        var_a1->unk20 = (s32) var_a0->unk8;
                        var_a1->unk24 = (s32) var_a0->unkC;
                        var_a1->unk40 = (s32) var_a0->unk10;
                        var_a1->unk44 = (s32) var_a0->unk14;
                        var_a1->unk60 = (s32) var_a0->unk18;
                        var_a1->unk64 = (s32) var_a0->unk1C;
                        var_a1->unk80 = (s32) var_a0->unk20;
                        var_a1->unk84 = (s32) var_a0->unk24;
                        var_a1->unkA0 = (s32) var_a0->unk28;
                        var_a1->unkA4 = (s32) var_a0->unk2C;
                        var_a1->unkC0 = (s32) var_a0->unk30;
                        var_a1->unkC4 = (s32) var_a0->unk34;
                        var_a1->unkE0 = (s32) var_a0->unk38;
                        var_a1->unkE4 = (s32) var_a0->unk3C;
                        var_a1->unk100 = (s32) var_a0->unk40;
                        var_a1->unk104 = (s32) var_a0->unk44;
                        var_a1->unk120 = (s32) var_a0->unk48;
                        var_a1->unk124 = (s32) var_a0->unk4C;
                        var_a1->unk140 = (s32) var_a0->unk50;
                        var_a1->unk144 = (s32) var_a0->unk54;
                        var_a1->unk160 = (s32) var_a0->unk58;
                        var_a1->unk164 = (s32) var_a0->unk5C;
                        var_a1->unk180 = (s32) var_a0->unk60;
                        var_a1->unk184 = (s32) var_a0->unk64;
                        var_a1->unk1A0 = (s32) var_a0->unk68;
                        var_a1->unk1A4 = (s32) var_a0->unk6C;
                        var_a1->unk1C0 = (s32) var_a0->unk70;
                        var_a1->unk1C4 = (s32) var_a0->unk74;
                        var_a6 -= 0x40;
                        var_a1->unk1E0 = (s32) var_a0->unk78;
                        var_a1 += 0x2000;
                        temp_a2 = var_a0->unk7C;
                        var_a0 += 0x80;
                        var_a1->unk-1E1C = temp_a2;
                    } while (var_a6 >= 0x40);
                }
                if (var_a6 <= 0) {

                } else {
                    goto block_22;
                }
            } else {
block_22:
                var_a5_2 = var_a6 > 3;
                if (var_a5_2 != 0) {
                    temp_a7_3 = var_a6 > 0x1F;
                    if ((s32) var_a0 & 3) {
                        var_a3_5 = var_a0;
                        var_a4_5 = var_a1;
                        if (temp_a7_3 != 0) {
                            var_a1->unk0 = (u16) var_a0->unk0;
                            var_a1->unk2 = (u16) var_a0->unk2;
                            var_a1->unk4 = (u16) var_a0->unk4;
                            var_a1->unk6 = (u16) var_a0->unk6;
                            var_a1->unk20 = (u16) var_a0->unk8;
                            var_a1->unk22 = (u16) var_a0->unkA;
                            var_a1->unk24 = (u16) var_a0->unkC;
                            var_a1->unk26 = (u16) var_a0->unkE;
                            var_a1->unk40 = (u16) var_a0->unk10;
                            var_a1->unk42 = (u16) var_a0->unk12;
                            var_a1->unk44 = (u16) var_a0->unk14;
                            var_a1->unk46 = (u16) var_a0->unk16;
                            var_a1->unk60 = (u16) var_a0->unk18;
                            var_a1->unk62 = (u16) var_a0->unk1A;
                            var_a1->unk64 = (u16) var_a0->unk1C;
                            var_a1->unk66 = (u16) var_a0->unk1E;
                            var_a1->unk80 = (u16) var_a0->unk20;
                            var_a1->unk82 = (u16) var_a0->unk22;
                            var_a1->unk84 = (u16) var_a0->unk24;
                            var_a1->unk86 = (u16) var_a0->unk26;
                            var_a1->unkA0 = (u16) var_a0->unk28;
                            var_a1->unkA2 = (u16) var_a0->unk2A;
                            var_a1->unkA4 = (u16) var_a0->unk2C;
                            var_a1->unkA6 = (u16) var_a0->unk2E;
                            var_a1->unkC0 = (u16) var_a0->unk30;
                            var_a1->unkC2 = (u16) var_a0->unk32;
                            var_a1->unkC4 = (u16) var_a0->unk34;
                            var_a1->unkC6 = (u16) var_a0->unk36;
                            var_a1->unkE0 = (u16) var_a0->unk38;
                            var_a1->unkE2 = (u16) var_a0->unk3A;
                            var_a6 -= 0x20;
                            var_a1->unkE4 = (u16) var_a0->unk3C;
                            var_a4_5 = var_a1 + 0x100;
                            var_a5_2 = var_a6 > 3;
                            var_a3_5 = var_a0 + 0x40;
                            var_a1->unkE6 = (u16) var_a0->unk3E;
                        }
                        var_a1 = var_a4_5;
                        if (var_a5_2 != 0) {
                            do {
                                var_a4_5->unk0 = (u16) var_a3_5->unk0;
                                var_a4_5->unk2 = (u16) var_a3_5->unk2;
                                var_a6 -= 4;
                                var_a4_5->unk4 = (u16) var_a3_5->unk4;
                                var_a4_5 += 0x20;
                                temp_t2 = var_a3_5->unk6;
                                var_a3_5 += 8;
                                var_a4_5->unk-1A = temp_t2;
                            } while (var_a6 >= 4);
                            var_a1 = var_a4_5;
                        }
                        var_a0 = var_a3_5;
                    } else {
                        var_a4_6 = var_a0;
                        var_a3_6 = var_a1;
                        if (temp_a7_3 != 0) {
                            var_a1->unk0 = (s32) var_a0->unk0;
                            var_a1->unk4 = (s32) var_a0->unk4;
                            var_a1->unk20 = (s32) var_a0->unk8;
                            var_a1->unk24 = (s32) var_a0->unkC;
                            var_a1->unk40 = (s32) var_a0->unk10;
                            var_a1->unk44 = (s32) var_a0->unk14;
                            var_a1->unk60 = (s32) var_a0->unk18;
                            var_a1->unk64 = (s32) var_a0->unk1C;
                            var_a1->unk80 = (s32) var_a0->unk20;
                            var_a1->unk84 = (s32) var_a0->unk24;
                            var_a1->unkA0 = (s32) var_a0->unk28;
                            var_a1->unkA4 = (s32) var_a0->unk2C;
                            var_a1->unkC0 = (s32) var_a0->unk30;
                            var_a1->unkC4 = (s32) var_a0->unk34;
                            var_a6 -= 0x20;
                            var_a1->unkE0 = (s32) var_a0->unk38;
                            var_a4_6 = var_a0 + 0x40;
                            var_a5_2 = var_a6 > 3;
                            var_a3_6 = var_a1 + 0x100;
                            var_a1->unkE4 = (s32) var_a0->unk3C;
                        }
                        if (var_a5_2 != 0) {
                            temp_a5_2 = (s32) ((var_a6 >= 0) ? var_a6 : (var_a6 + 3)) >> 2;
                            var_t2 = temp_a5_2 >> 1;
                            if (temp_a5_2 & 1) {
                                *var_a3_6 = (s32) var_a4_6->unk0;
                                var_a3_6 += 0x20;
                                temp_t0_3 = var_a4_6->unk4;
                                var_a6 -= 4;
                                var_a4_6 += 8;
                                var_a3_6->unk-1C = temp_t0_3;
                                var_t2 = temp_a5_2 >> 1;
                            }
                            var_a0_4 = var_a3_6;
                            if (var_t2 != 0) {
                                var_a1_6 = var_a4_6;
                                do {
                                    var_a0_4->unk0 = (s32) var_a1_6->unk0;
                                    var_a0_4->unk4 = (s32) var_a1_6->unk4;
                                    var_a6 -= 8;
                                    var_a0_4->unk20 = (s32) var_a1_6->unk8;
                                    var_a0_4 += 0x40;
                                    temp_t3 = var_a1_6->unkC;
                                    var_a1_6 += 0x10;
                                    var_a0_4->unk-1C = temp_t3;
                                } while (var_a6 >= 4);
                                var_a3_6 = var_a0_4;
                                var_a4_6 = var_a1_6;
                            }
                        }
                        var_a1 = var_a3_6;
                        var_a0 = var_a4_6;
                    }
                }
                if (var_a6 > 0) {
                    temp_t0_4 = (s32) (var_a6 * 2) >> 1;
                    var_a4_7 = var_a0;
                    var_a3_7 = var_a1;
                    var_a5_3 = temp_t0_4 - 1;
                    if (temp_t0_4 > 0) {
                        if (temp_t0_4 & 1) {
                            var_a3_7 = var_a1 + 2;
                            var_a4_7 = var_a0 + 2;
                            *var_a1 = (u16) *var_a0;
                            if (!(var_a3_7 & 7)) {
                                temp_a3 = var_a1 + 0x1A;
                                var_a3_7 = !(temp_a3 & 0x1E0) ? (var_a1 + 0x1E1A) : temp_a3;
                            }
                            var_a5_3 -= 1;
                        }
                        var_a3_8 = var_a3_7 + 2;
                        if ((temp_t0_4 >> 1) != 0) {
                            var_v1 = var_a3_8 & 7;
loop_41:
                            var_a5_3 -= 2;
                            var_a3_8->unk-2 = (u16) var_a4_7->unk0;
                            if (var_v1 == 0) {
                                temp_a3_2 = var_a3_8 + 0x18;
                                var_a3_8 = !(temp_a3_2 & 0x1E0) ? (temp_a3_2 + 0x1E00) : temp_a3_2;
                            }
                            var_a3_9 = var_a3_8 + 2;
                            temp_t9 = var_a4_7->unk2;
                            var_a4_7 += 4;
                            var_a3_9->unk-2 = temp_t9;
                            if (!(var_a3_9 & 7)) {
                                temp_a3_3 = var_a3_9 + 0x18;
                                var_a3_9 = !(temp_a3_3 & 0x1E0) ? (temp_a3_3 + 0x1E00) : temp_a3_3;
                            }
                            var_a3_8 = var_a3_9 + 2;
                            var_v1 = var_a3_8 & 7;
                            if (var_a5_3 != -1) {
                                goto loop_41;
                            }
                        }
                    }
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void crmSubtileSpan(void *arg0, void *arg1, u16 *arg2, s32 arg3) {
    s64 sp48;
    f32 temp_f0;
    f32 temp_f1_2;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a5_10;
    s32 temp_a5_11;
    s32 temp_a5_12;
    s32 temp_a5_7;
    s32 temp_a5_8;
    s32 temp_a5_9;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_f0_2;
    s32 temp_f1;
    s32 temp_f2;
    s32 temp_t1;
    s32 temp_t1_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a5_10;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a5_8;
    s32 var_a5_9;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a7_3;
    s32 var_at;
    s32 var_at_2;
    s32 var_s2_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t2;
    s32 var_v0;
    u16 *var_a6_5;
    u16 *var_a6_6;
    u16 *var_a7;
    u16 *var_a7_2;
    u16 *var_s3;
    u16 temp_a0_2;
    u16 temp_a4;
    u16 temp_t1_2;
    u16 temp_t2;
    u16 temp_t3;
    u16 temp_t3_2;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_6;
    void *var_a1;
    void *var_a5;
    void *var_a5_2;
    void *var_a5_3;
    void *var_a5_4;
    void *var_s1;
    void *var_s1_2;
    void *var_s2;

    var_a1 = arg1;
    temp_f0 = var_a1->unkC8 + 1.0f;
    var_a1->unkC8 = temp_f0;
    temp_f1 = (s32) var_a1->unkC4;
    temp_f0_2 = (s32) temp_f0;
    var_s3 = arg2;
    temp_t1 = arg0->unk7F08;
    if (arg0->unk7F2C != 0) {
        var_t0 = temp_t1 >> 1;
        var_a7 = arg2;
        var_a5 = temp_f1 + arg3;
        if (var_t0 > 0) {
            temp_a0 = (var_t0 >= 1) ? var_t0 : 1;
            var_a6 = 1;
            if (temp_a0 & 1) {
                temp_t1_2 = var_a5->unk2;
                var_a7 = var_s3 + 2;
                temp_t3 = (u16) arg0->unk7F2C;
                var_a6 = 2;
                var_a5 += 2;
                var_a5->unk-2 = (s16) ((*var_s3 & temp_t3) | (temp_t1_2 & ~temp_t3));
                if (!((s32) var_a5 & 7)) {
                    temp_a5 = var_a5 + 0x18;
                    var_a5 = !((s32) temp_a5 & 0x1E0) ? (temp_a5 + 0x1E00) : temp_a5;
                }
                var_t0 -= 1;
            }
            var_a6_2 = var_a6 + 1;
            if ((temp_a0 >> 1) != 0) {
loop_11:
                var_a7 += 4;
                var_t0 -= 2;
                temp_a6 = var_a6_2 + 1;
                var_a5_2 = var_a5 + 2;
                temp_t2 = (arg0 + ((var_a6_2 & 1) * 2))->unk7F2C;
                var_a5_2->unk-2 = (s16) ((var_a7->unk-4 & temp_t2) | (var_a5->unk2 & ~temp_t2));
                if (!((s32) var_a5_2 & 7)) {
                    temp_a5_2 = var_a5_2 + 0x18;
                    var_a5_2 = !((s32) temp_a5_2 & 0x1E0) ? (temp_a5_2 + 0x1E00) : temp_a5_2;
                }
                temp_a0_2 = (arg0 + ((temp_a6 & 1) * 2))->unk7F2C;
                var_a5 = var_a5_2 + 2;
                var_a5->unk-2 = (s16) ((var_a7->unk-2 & temp_a0_2) | (var_a5_2->unk2 & ~temp_a0_2));
                if (!((s32) var_a5 & 7)) {
                    temp_a5_3 = var_a5 + 0x18;
                    var_a5 = !((s32) temp_a5_3 & 0x1E0) ? (temp_a5_3 + 0x1E00) : temp_a5_3;
                }
                var_a6_2 = temp_a6 + 1;
                if (var_t0 > 0) {
                    goto loop_11;
                }
            }
        }
        if (arg0->unk7F00 >= 2) {
            var_s4 = 1;
            var_s1 = arg0 + 4;
            var_s2 = arg3 + 0x10000;
loop_18:
            var_a6_3 = 1;
            var_a5_3 = var_s2;
            temp_t1_3 = var_s1->unk7F04;
            var_s4 += 1;
            var_t0_2 = (s32) var_s1->unk7F08 >> 1;
            var_s1 += 4;
            var_s3 += temp_t1_3;
            var_a7_2 = var_s3;
            if (var_t0_2 > 0) {
                temp_a0_3 = (var_t0_2 >= 1) ? var_t0_2 : 1;
                var_at = temp_a0_3 >> 1;
                if (temp_a0_3 & 1) {
                    var_a7_2 = var_s3 + 2;
                    var_a6_3 = 2;
                    temp_v0 = (u16) arg0->unk7F2C;
                    var_t0_2 -= 1;
                    var_a5_3 = var_s2 + 2;
                    var_s2->unk0 = (s16) ((*var_s3 & temp_v0) | (var_s2->unk2 & ~temp_v0));
                    if (!((s32) var_a5_3 & 7)) {
                        temp_a5_4 = var_s2 + 0x1A;
                        var_a5_3 = !((s32) temp_a5_4 & 0x1E0) ? (var_s2 + 0x1E1A) : temp_a5_4;
                    }
                    var_at = temp_a0_3 >> 1;
                }
                var_a6_4 = var_a6_3 + 1;
                if (var_at != 0) {
loop_25:
                    var_a7_2 += 4;
                    var_t0_2 -= 2;
                    temp_a6_2 = var_a6_4 + 1;
                    var_a5_4 = var_a5_3 + 2;
                    temp_v0_2 = (arg0 + ((var_a6_4 & 1) * 2))->unk7F2C;
                    var_a5_4->unk-2 = (s16) ((var_a7_2->unk-4 & temp_v0_2) | (var_a5_3->unk2 & ~temp_v0_2));
                    if (!((s32) var_a5_4 & 7)) {
                        temp_a5_5 = var_a5_4 + 0x18;
                        var_a5_4 = !((s32) temp_a5_5 & 0x1E0) ? (temp_a5_5 + 0x1E00) : temp_a5_5;
                    }
                    temp_t3_2 = (arg0 + ((temp_a6_2 & 1) * 2))->unk7F2C;
                    var_a5_3 = var_a5_4 + 2;
                    var_a5_3->unk-2 = (s16) ((var_a7_2->unk-2 & temp_t3_2) | (var_a5_4->unk2 & ~temp_t3_2));
                    if (!((s32) var_a5_3 & 7)) {
                        temp_a5_6 = var_a5_3 + 0x18;
                        var_a5_3 = !((s32) temp_a5_6 & 0x1E0) ? (temp_a5_6 + 0x1E00) : temp_a5_6;
                    }
                    var_a6_4 = temp_a6_2 + 1;
                    if (var_t0_2 > 0) {
                        goto loop_25;
                    }
                }
            }
            var_s2 += 0x10000;
            if (var_s4 < arg0->unk7F00) {
                goto loop_18;
            }
        }
    } else {
        if (temp_t1 < 0x21) {
            var_t0_3 = temp_t1 >> 1;
            var_a6_5 = arg2;
            var_a5_5 = temp_f1 + arg3;
            if (var_t0_3 > 0) {
                temp_a0_4 = (var_t0_3 >= 1) ? var_t0_3 : 1;
                var_v0 = temp_a0_4 >> 1;
                if (temp_a0_4 & 1) {
                    var_a5_5 += 2;
                    var_a6_5 = arg2 + 2;
                    var_a5_5->unk-2 = (u16) *arg2;
                    if (!(var_a5_5 & 7)) {
                        temp_a5_7 = var_a5_5 + 0x18;
                        var_a5_5 = !(temp_a5_7 & 0x1E0) ? (temp_a5_7 + 0x1E00) : temp_a5_7;
                    }
                    var_t0_3 -= 1;
                    var_v0 = temp_a0_4 >> 1;
                }
                var_a5_6 = var_a5_5 + 2;
                if (var_v0 != 0) {
                    var_at_2 = var_a5_6 & 7;
loop_71:
                    var_t0_3 -= 2;
                    var_a5_6->unk-2 = (u16) var_a6_5->unk0;
                    if (var_at_2 == 0) {
                        temp_a5_8 = var_a5_6 + 0x18;
                        var_a5_6 = !(temp_a5_8 & 0x1E0) ? (temp_a5_8 + 0x1E00) : temp_a5_8;
                    }
                    var_a5_7 = var_a5_6 + 2;
                    temp_v0_3 = var_a6_5->unk2;
                    var_a6_5 += 4;
                    var_a5_7->unk-2 = temp_v0_3;
                    if (!(var_a5_7 & 7)) {
                        temp_a5_9 = var_a5_7 + 0x18;
                        var_a5_7 = !(temp_a5_9 & 0x1E0) ? (temp_a5_9 + 0x1E00) : temp_a5_9;
                    }
                    var_a5_6 = var_a5_7 + 2;
                    var_at_2 = var_a5_6 & 7;
                    if (var_t0_3 > 0) {
                        goto loop_71;
                    }
                }
            }
        } else {
            sp48 = (s64) var_a1;
            __glCrmPickTextureProcs(arg2, temp_f1 + arg3, (s64) temp_t1);
        }
        if (arg0->unk7F00 >= 2) {
            var_s4_2 = 1;
            var_s1_2 = arg0 + 4;
            var_s2_2 = arg3 + 0x10000;
loop_57:
            temp_a2 = var_s1_2->unk7F08;
            var_a5_8 = var_s2_2;
            var_a7_3 = temp_a2 >> 1;
            var_s3 += var_s1_2->unk7F04;
            if (temp_a2 < 0x21) {
                var_a6_6 = var_s3;
                if (var_a7_3 > 0) {
                    temp_a0_5 = (var_a7_3 >= 1) ? var_a7_3 : 1;
                    if (temp_a0_5 & 1) {
                        var_a5_8 = var_s2_2 + 2;
                        var_a6_6 = var_s3 + 2;
                        var_a7_3 -= 1;
                        *var_s2_2 = (u16) *var_s3;
                        if (!(var_a5_8 & 7)) {
                            temp_a5_10 = var_s2_2 + 0x1A;
                            var_a5_8 = !(temp_a5_10 & 0x1E0) ? (var_s2_2 + 0x1E1A) : temp_a5_10;
                        }
                    }
                    var_a5_9 = var_a5_8 + 2;
                    if ((temp_a0_5 >> 1) != 0) {
                        var_t2 = var_a5_9 & 7;
loop_65:
                        var_a7_3 -= 2;
                        var_a5_9->unk-2 = (u16) var_a6_6->unk0;
                        if (var_t2 == 0) {
                            temp_a5_11 = var_a5_9 + 0x18;
                            var_a5_9 = !(temp_a5_11 & 0x1E0) ? (temp_a5_11 + 0x1E00) : temp_a5_11;
                        }
                        var_a5_10 = var_a5_9 + 2;
                        temp_a4 = var_a6_6->unk2;
                        var_a6_6 += 4;
                        var_a5_10->unk-2 = temp_a4;
                        if (!(var_a5_10 & 7)) {
                            temp_a5_12 = var_a5_10 + 0x18;
                            var_a5_10 = !(temp_a5_12 & 0x1E0) ? (temp_a5_12 + 0x1E00) : temp_a5_12;
                        }
                        var_a5_9 = var_a5_10 + 2;
                        var_t2 = var_a5_9 & 7;
                        if (var_a7_3 > 0) {
                            goto loop_65;
                        }
                    }
                }
            } else {
                sp48 = (s64) var_a1;
                __glCrmPickTextureProcs(var_s3, (u16 *) var_s2_2, (s64) temp_a2);
            }
            var_s4_2 += 1;
            var_s2_2 += 0x10000;
            var_s1_2 += 4;
            if (var_s4_2 < arg0->unk7F00) {
                goto loop_57;
            }
        }
    }
    temp_a0_6 = temp_f0_2 & 0x7F;
    if (temp_f0_2 & 3) {
        if (temp_a0_6 != 0) {
            var_a0 = 0;
            if (arg0->unk7DD1 != 0) {
                goto block_31;
            }
        } else {
            var_a0_2 = 0;
            goto block_52;
        }
    } else {
        if (temp_f0_2 & 0xF) {
            if (temp_a0_6 != 0) {
                if (arg0->unk7DD1 != 0) {
                    var_a0 = 0x7E0;
                    goto block_31;
                }
                var_a0 = 0x7E0;
                /* Duplicate return node #34. Try simplifying control flow for better match */
                var_a1->unk5C = (s32) (var_a0 + var_a1->unk5C);
                return;
            }
            var_a0_2 = 0x7E0;
            goto block_52;
        }
        if (temp_f0_2 & 0x3F) {
            if (temp_a0_6 != 0) {
                if (arg0->unk7DD1 != 0) {
                    var_a0 = -0x1620;
                    goto block_31;
                }
                var_a0 = -0x1620;
                /* Duplicate return node #34. Try simplifying control flow for better match */
                var_a1->unk5C = (s32) (var_a0 + var_a1->unk5C);
                return;
            }
            var_a0_2 = -0x1620;
            goto block_52;
        }
        if (temp_a0_6 != 0) {
            if (arg0->unk7DD1 != 0) {
                var_a0 = 0x61E0;
                goto block_31;
            }
            var_a0 = 0x61E0;
            /* Duplicate return node #34. Try simplifying control flow for better match */
            var_a1->unk5C = (s32) (var_a0 + var_a1->unk5C);
            return;
        }
        var_a0_2 = 0x61E0;
block_52:
        var_a0 = arg0->unk7F04 + var_a0_2;
        if (arg0->unk7DD1 == 0) {

        } else {
block_31:
            temp_f1_2 = var_a1->unkC8 + 1.0f;
            temp_f2 = (s32) temp_f1_2;
            var_a0 += var_a1->unk60;
            var_a1->unkC8 = temp_f1_2;
            if (!(temp_f2 & 3)) {
                var_a0 += 0x7E0;
                if (!(temp_f2 & 0xF)) {
                    temp_a0_7 = var_a0 - 0x1E00;
                    var_a0 = !(temp_f2 & 0x3F) ? (temp_a0_7 + 0x7800) : temp_a0_7;
                }
            }
            if (!(temp_f2 & 0x7F)) {
                var_a0 += arg0->unk7F04;
            }
        }
        if (var_a0 != 0) {
            var_a1->unk5C = (s32) (var_a0 + var_a1->unk5C);
        }
    }
}

/*
Decompilation failure in function crmTileTexels:

Unable to determine jump table for jr instruction at crm_texture.s line 8746.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void crmTileSpan(void *arg0, s64 arg1, u16 *arg2, s32 arg3) {
    f32 temp_f0;
    f32 temp_f1_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_f1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a7_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_t1;
    s32 var_t3;
    s64 temp_a6;
    u16 *var_a2;
    u16 *var_a6_2;
    u16 *var_s2;
    u16 *var_s3_2;
    u16 temp_a0_2;
    u16 temp_a1_2;
    u16 temp_a1_3;
    u16 temp_a4;
    u16 temp_at;
    u16 temp_ra;
    u16 temp_ra_2;
    u16 temp_ra_3;
    u16 temp_t1;
    u16 temp_t1_2;
    u16 temp_t1_4;
    u16 temp_t8;
    u16 temp_t9;
    u16 temp_v1;
    u8 temp_a2_2;
    void *temp_a1;
    void *temp_t1_3;
    void *var_a7;
    void *var_s1;
    void *var_s1_2;
    void *var_s3;
    void *var_t0;

    var_a2 = arg2;
    unksp10 = arg1;
    temp_f0 = arg1->unkC8 + 1.0f;
    arg1->unkC8 = temp_f0;
    temp_f1 = (s32) arg1->unkC4;
    var_s2 = var_a2;
    temp_a5 = arg0->unk7F08;
    var_t3 = (s32) temp_f0;
    if (arg0->unk7F2C != 0) {
        var_a6 = temp_a5 >> 1;
        var_a7 = temp_f1 + arg3;
        if (var_a6 > 0) {
            temp_a3 = (var_a6 >= 1) ? var_a6 : 1;
            var_a0 = temp_a3 & 3;
            var_a5 = 1;
            if (var_a0 != 0) {
                do {
                    var_a5 += 1;
                    temp_a4 = var_a7->unk2;
                    var_a2 += 2;
                    temp_t1 = (arg0 + ((var_a5 & 1) * 2))->unk7F2C;
                    var_a6 -= 1;
                    var_a7 += 2;
                    var_a0 -= 1;
                    var_a7->unk-2 = (s16) ((var_a2->unk-2 & temp_t1) | (temp_a4 & ~temp_t1));
                } while (var_a0 != 0);
            }
            if ((temp_a3 >> 2) != 0) {
                do {
                    temp_ra = (arg0 + (((var_a5 + 1) & 1) * 2))->unk7F2C;
                    var_a7->unk0 = (s16) ((var_a2->unk0 & temp_ra) | (var_a7->unk2 & ~temp_ra));
                    temp_t1_2 = (arg0 + (((var_a5 + 2) & 1) * 2))->unk7F2C;
                    temp_a1 = arg0 + (((var_a5 + 3) & 1) * 2);
                    var_a7->unk2 = (u16) ((var_a2->unk2 & temp_t1_2) | (var_a7->unk4 & ~temp_t1_2));
                    var_a5 += 4;
                    temp_a1_2 = temp_a1->unk7F2C;
                    temp_t9 = var_a7->unk8;
                    var_a7->unk4 = (u16) ((var_a2->unk4 & temp_a1_2) | (var_a7->unk6 & ~temp_a1_2));
                    var_a2 += 8;
                    temp_at = (arg0 + ((var_a5 & 1) * 2))->unk7F2C;
                    var_a7 += 8;
                    var_a6 -= 4;
                    var_a7->unk-2 = (s16) ((var_a2->unk-2 & temp_at) | (temp_t9 & ~temp_at));
                } while (var_a6 > 0);
            }
        }
        var_a2_2 = var_t3 & 0x7F;
        if (arg0->unk7F00 >= 2) {
            var_s4 = 1;
            var_s1 = arg0 + 4;
            var_s3 = arg3 + 0x10000;
            do {
                var_a5_2 = (s32) var_s1->unk7F08 >> 1;
                var_t0 = var_s3;
                var_s2 += var_s1->unk7F04;
                var_a6_2 = var_s2;
                if (var_a5_2 > 0) {
                    temp_a0 = (var_a5_2 >= 1) ? var_a5_2 : 1;
                    var_t1 = temp_a0 & 3;
                    var_a7_2 = 1;
                    if (var_t1 != 0) {
                        do {
                            var_a7_2 += 1;
                            temp_t8 = var_t0->unk2;
                            var_a6_2 += 2;
                            temp_ra_2 = (arg0 + ((var_a7_2 & 1) * 2))->unk7F2C;
                            var_a5_2 -= 1;
                            var_t0 += 2;
                            var_t1 -= 1;
                            var_t0->unk-2 = (s16) ((var_a6_2->unk-2 & temp_ra_2) | (temp_t8 & ~temp_ra_2));
                        } while (var_t1 != 0);
                    }
                    if ((temp_a0 >> 2) != 0) {
                        do {
                            temp_a0_2 = (arg0 + (((var_a7_2 + 1) & 1) * 2))->unk7F2C;
                            var_t0->unk0 = (s16) ((var_a6_2->unk0 & temp_a0_2) | (var_t0->unk2 & ~temp_a0_2));
                            temp_ra_3 = (arg0 + (((var_a7_2 + 2) & 1) * 2))->unk7F2C;
                            temp_t1_3 = arg0 + (((var_a7_2 + 3) & 1) * 2);
                            var_t0->unk2 = (u16) ((var_a6_2->unk2 & temp_ra_3) | (var_t0->unk4 & ~temp_ra_3));
                            var_a7_2 += 4;
                            temp_t1_4 = temp_t1_3->unk7F2C;
                            temp_v1 = var_t0->unk8;
                            var_t0->unk4 = (u16) ((var_a6_2->unk4 & temp_t1_4) | (var_t0->unk6 & ~temp_t1_4));
                            var_a6_2 += 8;
                            temp_a1_3 = (arg0 + ((var_a7_2 & 1) * 2))->unk7F2C;
                            var_t0 += 8;
                            var_a5_2 -= 4;
                            var_t0->unk-2 = (s16) ((var_a6_2->unk-2 & temp_a1_3) | (temp_v1 & ~temp_a1_3));
                        } while (var_a5_2 > 0);
                    }
                }
                var_s4 += 1;
                var_s1 += 4;
                var_s3 += 0x10000;
            } while (var_s4 < arg0->unk7F00);
            goto block_17;
        }
    } else {
        temp_a6 = temp_a5 < 0x21;
        unksp30 = (s64) var_t3;
        if (temp_a6 == 0) {
            __glCrmPickTextureProcs(var_a2, temp_f1 + arg3, (s64) temp_a5, (s64) temp_a5, temp_a6);
        } else {
            bcopy(var_a2, temp_f1 + arg3, (s64) temp_a5, temp_a5, temp_a6);
        }
        var_t3 = (s32) unksp30;
        if (arg0->unk7F00 >= 2) {
            var_s4_2 = 1;
            var_s1_2 = arg0 + 4;
            var_s3_2 = arg3 + 0x10000;
loop_36:
            temp_a2 = var_s1_2->unk7F08;
            var_s2 += var_s1_2->unk7F04;
            if (temp_a2 < 0x21) {
                bcopy(var_s2, var_s3_2, (s64) temp_a2);
            } else {
                __glCrmPickTextureProcs(var_s2, var_s3_2, (s64) temp_a2);
            }
            var_s4_2 += 1;
            var_s3_2 += 0x10000;
            var_s1_2 += 4;
            if (var_s4_2 < arg0->unk7F00) {
                goto loop_36;
            }
            var_t3 = (s32) unksp30;
        }
block_17:
        var_a2_2 = var_t3 & 0x7F;
    }
    temp_a2_2 = arg0->unk7DD1;
    if (var_a2_2 != 0) {
        if (temp_a2_2 != 0) {
            var_a0_2 = 0;
            goto block_21;
        }
    } else {
        var_a0_2 = arg0->unk7F04;
        if (temp_a2_2 == 0) {

        } else {
block_21:
            temp_f1_2 = unksp10->unkC8 + 1.0f;
            var_a0_2 += unksp10->unk60;
            unksp10->unkC8 = temp_f1_2;
            if (!((s32) temp_f1_2 & 0x7F)) {
                var_a0_2 += arg0->unk7F04;
            }
        }
        if (var_a0_2 != 0) {
            unksp10->unk5C = (s32) (var_a0_2 + unksp10->unk5C);
        }
    }
}

void crmCopySpan(void *arg0, void *arg1, u16 *arg2, u16 *arg3) {
    f32 temp_f4;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a5;
    s32 var_a6;
    s32 var_t3;
    s64 temp_lo;
    u16 *var_a2;
    u16 *var_a3;
    u16 temp_a4_2;
    u16 temp_a7;
    u16 temp_t2;
    u16 temp_t3;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    temp_lo = arg1->unk64 * arg1->unkB8;
    if (arg0->unk7F2C != 0) {
        temp_a1 = temp_lo >> 1;
        var_a5 = 1;
        var_a0 = temp_a1 & 3;
        var_a6 = temp_a1 - 1;
        if (temp_a1 > 0) {
            var_t3 = temp_a1 >> 2;
            if (var_a0 != 0) {
                do {
                    var_a5 += 1;
                    temp_a7 = var_a3->unk2;
                    var_a2 += 2;
                    temp_t2 = (arg0 + ((var_a5 & 1) * 2))->unk7F2C;
                    var_a6 -= 1;
                    var_a3 += 2;
                    var_a0 -= 1;
                    var_a3->unk-2 = (s16) ((var_a2->unk-2 & temp_t2) | (temp_a7 & ~temp_t2));
                } while (var_a0 != 0);
                var_t3 = temp_a1 >> 2;
            }
            if (var_t3 != 0) {
                do {
                    temp_v0 = (arg0 + (((var_a5 + 1) & 1) * 2))->unk7F2C;
                    var_a3->unk0 = (var_a2->unk0 & temp_v0) | (var_a3->unk2 & ~temp_v0);
                    temp_t3 = (arg0 + (((var_a5 + 2) & 1) * 2))->unk7F2C;
                    temp_a4 = arg0 + (((var_a5 + 3) & 1) * 2);
                    var_a3->unk2 = (u16) ((var_a2->unk2 & temp_t3) | (var_a3->unk4 & ~temp_t3));
                    var_a5 += 4;
                    temp_a4_2 = temp_a4->unk7F2C;
                    temp_t9 = var_a3->unk8;
                    var_a3->unk4 = (u16) ((var_a2->unk4 & temp_a4_2) | (var_a3->unk6 & ~temp_a4_2));
                    var_a2 += 8;
                    temp_v0_2 = (arg0 + ((var_a5 & 1) * 2))->unk7F2C;
                    var_a3 += 8;
                    var_a6 -= 4;
                    var_a3->unk-2 = (s16) ((var_a2->unk-2 & temp_v0_2) | (temp_t9 & ~temp_v0_2));
                } while (var_a6 != -1);
            }
        }
    } else if (temp_lo >= 0x21) {
        __glCrmPickTextureProcs(var_a2, var_a3, temp_lo, temp_lo, (s64) var_a2);
    } else {
        bcopy(var_a2, var_a3, temp_lo, (s32) temp_lo, (s64) var_a2);
    }
    temp_f4 = arg1->unkC8;
    if (arg0->unk7DD1 != 0) {
        arg1->unkC8 = (f32) (temp_f4 + 2.0f);
        arg1->unk5C = (s32) (arg1->unk60 + arg1->unk5C);
        return;
    }
    arg1->unkC8 = (f32) (temp_f4 + 1.0f);
}

/*
Decompilation failure in function crmCheckFastTexStore:

Unable to determine jump table for jr instruction at crm_texture.s line 9399.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function crmTexSubImageStore:

Unable to determine jump table for jr instruction at crm_texture.s line 10364.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function crmTexSubImageRead:

Unable to determine jump table for jr instruction at crm_texture.s line 11266.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 crmTexSubImageCopyDMPbuffer(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg_sp4) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5_3;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_ra;
    s32 temp_t1;
    s32 var_a1;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_v0;
    s64 var_a2;
    s64 var_a5;
    s64 var_v0_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a2_3;
    void *temp_a3_2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_v1;

    if ((arg3 != 0) || (arg4 != 0) || (arg5 != 0) || (arg6 != 0) || (arg7 == 0) || (arg_sp4 == 0) || (arg2 != 0) || (arg0->unk7DE8 != 0) || (arg0->unk7DD1 != 0)) {
        var_v0 = 0;
        /* Duplicate return node #10. Try simplifying control flow for better match */
        return var_v0;
    }
    temp_a6 = arg1->unk11C;
    temp_a4 = arg1->unkE4 + (arg2 * 0x64);
    temp_t1 = temp_a4->unk14;
    temp_a5 = temp_a6->unk20 + (arg2 * 0x24);
    if (temp_t1 == arg7) {
        temp_a2 = temp_a4->unk18;
        if ((temp_a2 == arg_sp4) && (temp_a4->unk40 == 0x1908)) {
            temp_a0 = arg0->unk7D3C;
            if (temp_a0->unk0 == 5) {
                temp_a4_2 = temp_a0->unk1C;
                if (temp_a4_2 != NULL) {
                    temp_a7 = temp_a4_2->unk94;
                    temp_a0_2 = temp_a4_2->unk9C;
                    if ((temp_a7 == 0) || (temp_a0_2 == NULL) || (temp_a4_2->unk8C != temp_t1) || (temp_a4_2->unk90 != temp_a2) || (temp_a3 = temp_a5->unk10, (temp_a0_2->unkC != (1 << temp_a3))) || (temp_a0_2->unk10 != arg1->unkD8) || ((sp10 = (s64) temp_a0_2, sp18 = (s64) temp_a4_2, sp30 = (s64) temp_a6, sp20 = (s64) temp_a5, sp28 = (s64) arg1, sp38 = (s64) arg0, ((temp_t1 < 0x40) != 0)) && (temp_a2 < 0x40))) {
                        return 0;
                    }
                    if (dmBufferAttach(temp_a7, temp_a2, temp_a3, temp_a4_2, temp_a5, temp_a6, temp_a7) != 0) {
                        return 0;
                    }
                    if (sp38->unk6E30 == sp28) {
                        __glCrmFlushAndConfirm((u16 *) sp38);
                    }
                    temp_v1 = sp30->unk24;
                    temp_ra = sp30->unk0;
                    sp30->unk24 = (void *) sp18;
                    sp0 = (s64) temp_ra;
                    sp30->unk0 = (s32) ((temp_ra | 0x90) & ~0x20);
                    sp8 = (s64) temp_v1;
                    if (__glCrmGenericPickStoreProcs((u16 *) sp38, (s32) sp28, (? *) sp10->unk13, sp38->unk6E30 == sp28, (s32) sp28) != 0) {
                        if (saved_reg_gp->unk-5438 != 0) {
                            printf(&sub_0da40000 + 0x44B8, sp18->unk94, sp20->unk20);
                        }
                        if (sp8 != 0) {
                            temp_a0_3 = sp8->unk94;
                            if (temp_a0_3 != 0) {
                                dmBufferFree(temp_a0_3);
                                sp8->unk94 = 0;
                            }
                            var_a2 = sp8;
                            sp30->unk24 = (void *) sp8;
                        } else {
                            sp30->unk24 = sp38->unk4(sp38, 1, 0xA0);
                            temp_a1 = sp30->unk24;
                            temp_a1->unk9C = sp38->unk4(sp38, 1, 0x18);
                            dmParamsCreate(sp30->unk24 + 0x98, temp_a1);
                            var_a2 = (s64) sp30->unk24;
                        }
                        temp_a6_2 = sp18->unk8C;
                        var_a2->unk8C = temp_a6_2;
                        temp_a5_2 = sp30->unk24;
                        temp_a4_3 = sp18->unk90;
                        temp_a5_2->unk90 = temp_a4_3;
                        temp_a3_2 = sp30->unk24;
                        temp_a2_2 = sp18->unk94;
                        temp_a3_2->unk94 = temp_a2_2;
                        dmParamsCopyAllElems(sp18->unk98, sp30->unk24->unk98, temp_a2_2, temp_a3_2, temp_a4_3, temp_a5_2, temp_a6_2);
                        temp_a2_3 = sp30->unk24->unk9C;
                        temp_a7_2 = sp10->unk0;
                        temp_a2_3->unk0 = temp_a7_2;
                        temp_a6_3 = sp10->unk4;
                        temp_a2_3->unk4 = temp_a6_3;
                        temp_a5_3 = sp10->unk8;
                        temp_a2_3->unk8 = temp_a5_3;
                        temp_a4_4 = sp10->unkC;
                        temp_a2_3->unkC = temp_a4_4;
                        temp_a3_3 = sp10->unk10;
                        temp_a2_3->unk10 = temp_a3_3;
                        temp_a1_2 = sp10->unk14;
                        temp_a2_3->unk14 = temp_a1_2;
                        var_a3 = sp28->unkEC;
                        var_a5 = dmBufferMapData(sp18->unk94, temp_a1_2, temp_a2_3, temp_a3_3, temp_a4_4, temp_a5_3, temp_a6_3, temp_a7_2);
                        var_a1 = var_a3;
                        if (var_a3 >= 0) {
                            var_v0_2 = sp20;
loop_42:
                            var_a4 = var_v0_2->unk0;
                            temp_a7_3 = var_a4 & 2;
                            if (temp_a7_3 != 0) {
                                temp_a2_4 = var_v0_2->unk18;
                                if (temp_a2_4 == 0) {

                                } else {
                                    sp40 = var_a5;
                                    sp20 = var_v0_2;
                                    sp50 = (s64) var_a1;
                                    sub_0d970000((s64) sp38->unk7B10, (s32 *)0x5602, temp_a2_4, var_a3, var_a4, var_a5, -0x25, temp_a7_3);
                                    var_a4 = var_v0_2->unk0;
                                    var_v0_2->unk18 = 0;
                                }
                                var_v0_2->unk20 = (s32) var_a5;
                                var_a5 += (var_v0_2->unk4 * var_v0_2->unk8) << 0x10;
                            }
                            var_a3 = -0x25 & var_a4;
                            *var_v0_2 = var_a3;
                            var_a2_2 = sp30->unk24->unk9C->unk10;
                            var_a1 -= 1;
                            if (var_a2_2 != 0) {
                                var_v0_2 += 0x24;
                                if (var_a1 >= 0) {
                                    goto loop_42;
                                }
                                goto block_46;
                            }
                            goto block_54;
                        }
                        var_a2_2 = sp30->unk24->unk9C->unk10;
block_46:
                        if (var_a2_2 != 0) {
                            goto block_47;
                        }
block_54:
                        if (((void *) sp28)->unkEC == 6) {
block_47:
                            temp_a2_5 = sp30->unk8;
                            if (temp_a2_5 != 0) {
                                sp40 = var_a5;
                                sub_0d970000((s64) sp38->unk7B10, (s32 *)0x5602, temp_a2_5, var_a3);
                            }
                            temp_a2_6 = sp30->unk14;
                            if (temp_a2_6 != 0) {
                                temp_a3_4 = sp30->unk8;
                                if (temp_a3_4 != temp_a2_6) {
                                    sp40 = var_a5;
                                    (M2C_ERROR(/* Read from unset register $t9 */) - 0x1C50)(sp38->unk7B10, 0x5602, temp_a2_6, temp_a3_4);
                                }
                            }
                            sp30->unk1C = (s32) var_a5;
                            sp30->unk18 = 0;
                            sp30->unk14 = 0;
                            sp30->unk10 = (s32) var_a5;
                            sp30->unkC = 0;
                            sp30->unk8 = 0;
                        }
                        var_v0 = 1;
                    } else {
                        var_v0 = 0;
                        sp30->unk24 = (void *) sp8;
                        sp30->unk0 = (s32) (sp0 | 0x10);
                    }
                    return var_v0;
                }
            }
        }
    }
    return 0;
}

s32 crmTexParameter(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp8;
    s64 sp0;
    s32 *temp_v0;
    s32 *temp_v0_3;
    s32 temp_a3;
    u16 *temp_s0;
    void *temp_v0_2;
    void *temp_v0_4;

    switch (arg0) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
        return 0;
    case 0xDE0:                                     /* switch 1 */
        /* fallthrough */
    case 0xDE1:                                     /* switch 1 */
        switch (arg1) {                             /* switch 2; irregular */
        case 0x8191:                                /* switch 2 */
            temp_a3 = *(s32 *)0x1018;
            temp_s0 = *(u16 **)0x1010;
            sp0 = arg2;
            if (temp_a3 != 1) {
                temp_v0 = __glLookUpTextureObject(temp_s0, arg0, 0x8191, temp_a3, 1);
                if (temp_v0 != NULL) {
                    if (*temp_v0 < 3) {
                        sp28 = __glLookUpTextureParams(temp_s0, arg0);
                        temp_v0_2 = __glLookUpTexture(temp_s0, arg0);
                        if ((temp_v0_2 != NULL) && (sp28 != 0)) {
                            sp28->unkD4 = (s8) sp0;
                            temp_v0_2->unkD8 = (s8) sp0;
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            return 1;
                        }
                        goto block_2;
                    }
                    /* Duplicate return node #3. Try simplifying control flow for better match */
                    return 0;
                }
            }
block_2:
            /* Duplicate return node #3. Try simplifying control flow for better match */
            return 0;
        case 0x2802:                                /* switch 2 */
            /* fallthrough */
        case 0x2803:                                /* switch 2 */
            if ((arg2 == 0x2900) || (arg2 == 0x2901) || (arg2 == 0x812D) || (arg2 == 0x812F)) {
                sp0 = arg2;
                sp8 = (s64) *(void *)0x1010;
                if (*(void *)0x1018 != 1) {
                    temp_v0_3 = __glLookUpTextureObject((u16 *) sp8, arg0);
                    if (temp_v0_3 != NULL) {
                        if (*temp_v0_3 < 3) {
                            sp20 = __glLookUpTextureParams((u16 *) sp8, arg0);
                            temp_v0_4 = __glLookUpTexture((u16 *) sp8, arg0);
                            if ((temp_v0_4 != NULL) && (sp20 != 0)) {
                                if (arg1 != 0x2802) {
                                    sp20->unk4 = (s32) sp0;
                                    temp_v0_4->unk8 = (s32) sp0;
                                } else {
                                    sp20->unk0 = (s32) sp0;
                                    temp_v0_4->unk4 = (s32) sp0;
                                }
                                *(void *)0x1018 = 2;
                                sp8->unk2DEC = (s32) (sp8->unk2DEC | 1);
                                return 1;
                            }
                            goto block_2;
                        }
                        /* Duplicate return node #3. Try simplifying control flow for better match */
                        return 0;
                    }
                }
            }
            goto block_2;
        }
        break;
    }
}

void __glcrmim_TexParameterfv(s64 arg0, s64 arg1, f32 *arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg1;
    sp0 = arg0;
    sp10 = (s64) arg2;
    if (__glCrmPickTextureProcs((u16 *) ((s64) *arg2 << 0)) == 0) {
        __glim_TexParameterfv(sp0, sp8, sp10);
    }
}

void __glcrmim_TexParameterf(s64 arg0, s64 arg1, f32 fparg2) {
    f32 sp30;
    s64 sp8;
    s64 sp0;

    sp8 = arg1;
    sp0 = arg0;
    sp30 = fparg2;
    if (__glCrmPickTextureProcs((u16 *) ((s64) fparg2 << 0)) == 0) {
        __glim_TexParameterfv(sp0, sp8, (s64) &sp30);
    }
}

void __glcrmim_TexParameteriv(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg1;
    sp0 = arg0;
    sp10 = arg2;
    if (__glCrmPickTextureProcs(*arg2) == 0) {
        __glim_TexParameteriv(sp0, sp8, sp10);
    }
}

void __glcrmim_TexParameteri(s64 arg0, s64 arg1, s32 arg2) {
    s32 sp34;
    s64 sp8;
    s64 sp0;

    sp34 = arg2;
    sp8 = arg1;
    sp0 = arg0;
    if (__glCrmPickTextureProcs() == 0) {
        __glim_TexParameteriv(sp0, sp8, (s64) &sp34);
    }
}

void __glcrmim_BindTextureEXT(s64 arg0, s64 arg1) {
    s64 sp58;
    s64 sp50;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *var_a2_2;
    s32 *temp_a3;
    s32 *temp_t9;
    s32 *temp_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_t8;
    s32 var_a5;
    s32 var_a6;
    s32 var_v0;
    s64 var_a0;
    s64 var_a2;
    void *temp_a4;
    void *temp_a7;

    var_a0 = arg0;
    var_a2 = arg1;
    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0xDA19C)->unk-577C != 0) {
        __glim_BindTextureEXT(var_a2);
    } else {
        temp_a1 = *(s32 *)0x1018;
        sp30 = (s64) *(s32 *)0x1010;
        if (temp_a1 != 0) {
            sp50 = var_a2;
            sp58 = var_a0;
            if (temp_a1 != 2) {
                __glSetError((u16 *)0x502, temp_a1, var_a2, 2);
            } else {
                sp30->unk2E08(sp30, temp_a1, var_a2, 2);
                var_a0 = sp58;
                var_a2 = sp50;
                *(void *)0x1018 = 0;
                goto block_7;
            }
        } else {
block_7:
            if (var_a0 != 0xDE0) {
                if (var_a0 != 0xDE1) {
                    __glim_BindTextureEXT(var_a0, var_a2, var_a2);
                } else {
                    sp28 = 1;
                    goto block_11;
                }
            } else {
                sp28 = 0;
block_11:
                __glBindTexture(sp30, sp28, var_a2);
                if (sp30->unk7D58 & 0x8000) {
                    // Error: negative shift count
                    // At instruction: bgez $a0, .L0d976cf8
                    if (M2C_ERROR() || (sp28 != 1)) {
                        if (M2C_ERROR(/* Read from unset register $a5 */) < 0) {
                            if (sp28 != 0) {
                                goto block_16;
                            }
                            if (__glIsTextureConsistent((u16 *) sp30, 0xDE0, (s64) temp_a2, sp28, 1) != 0) {
                                unksp40 = __glLookUpTexture((u16 *) sp30, 0xDE0);
                                var_v0 = __glLookUpTextureParams((u16 *) sp30, 0xDE0);
                                goto block_21;
                            }
                            goto block_16;
                        }
                        /* Duplicate return node #17. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        sp30->unk2DEC = (s32) (sp30->unk2DEC | 1);
                        return;
                    }
                    if (sub_0d970000(sp30, (s32 *)0xDE1, temp_a2, (s32) sp28, 1) != 0) {
                        unksp40 = __glLookUpTexture((u16 *) sp30, 0xDE1);
                        var_v0 = __glLookUpTextureParams((u16 *) sp30, 0xDE1);
block_21:
                        if (((void *) unksp40 != NULL) && (((void *) unksp40)->unkE4->unk38 == 0)) {
                            var_a6 = 6;
                            var_a5 = 0x36;
                            var_a2_2 = NULL;
                            temp_a4 = (void *) unksp40 + 4;
                            sp30->unk6E30 = (void *) unksp40;
                            do {
                                var_a6 -= 1;
                                var_a5 -= 1;
                                temp_t9 = var_a2_2 + temp_a4;
                                temp_t8 = *(var_a2_2 + var_v0);
                                var_a2_2 += 4;
                                *temp_t9 = temp_t8;
                            } while (var_a6 != 0);
                            temp_a6 = var_v0 + 0x1C;
                            sp18 = (s64) (temp_a4 + 0xC);
                            sp10 = var_v0 + 0x14;
                            sp20 = var_v0 + 0xC;
                            temp_a7 = temp_a4 + 0x10;
                            sp8 = (s64) (temp_a4 + 8);
                            sp0 = var_v0 + 8;
                            do {
                                *(var_a2_2 + temp_a4) = *(var_a2_2 + var_v0);
                                *(var_a2_2 + (temp_a4 + 4)) = *(var_a2_2 + (var_v0 + 4));
                                *(var_a2_2 + sp8) = *(var_a2_2 + sp0);
                                *(var_a2_2 + sp18) = *(var_a2_2 + sp20);
                                *(var_a2_2 + temp_a7) = *(var_a2_2 + (var_v0 + 0x10));
                                temp_a3 = var_a2_2 + (temp_a4 + 0x14);
                                *temp_a3 = *(var_a2_2 + sp10);
                                var_a5 -= 8;
                                *(var_a2_2 + (temp_a4 + 0x18)) = *(var_a2_2 + (var_v0 + 0x18));
                                temp_at = *(var_a2_2 + temp_a6);
                                temp_v0 = var_a2_2 + (temp_a4 + 0x1C);
                                var_a2_2 += 0x20;
                                *temp_v0 = temp_at;
                            } while (var_a5 > 0);
                            __glCrmGenericPickStoreProcs((u16 *) sp30, var_v0, var_a2_2, (s32) temp_a3, (s32) temp_a4, var_a5, temp_a6, (s32) temp_a7);
                            return;
                        }
                        /* Duplicate return node #17. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        sp30->unk2DEC = (s32) (sp30->unk2DEC | 1);
                        return;
                    }
                    /* Duplicate return node #17. Try simplifying control flow for better match */
                    *(void *)0x1018 = 2;
                    sp30->unk2DEC = (s32) (sp30->unk2DEC | 1);
                    return;
                }
block_16:
                *(void *)0x1018 = 2;
                sp30->unk2DEC = (s32) (sp30->unk2DEC | 1);
            }
        }
    }
}

/*
Decompilation failure in function __glcrmim_GetTexImage:

Unable to determine jump table for jr instruction at crm_texture.s line 12890.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glcrmim_TexImage1D(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 *temp_v0_3;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_4;
    s64 var_a5;
    void *temp_t3;
    void *temp_v0_2;

    sp30 = arg7;
    sp38 = arg6;
    sp40 = arg5;
    sp70 = arg4;
    sp50 = arg3;
    sp48 = arg2;
    sp60 = arg1;
    sp68 = arg0;
    temp_v0 = *(s32 *)0x1018;
    sp58 = (s64) *(s32 *)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            sp58->unk2E08(sp58);
            *(void *)0x1018 = 0;
            goto block_5;
        }
    } else {
block_5:
        temp_v0_2 = __glCheckTexImage1DArgs(sp58, sp68, sp60, sp48, sp50, sp70, sp40, sp38);
        if (temp_v0_2 != NULL) {
            if (sp70 != 0) {
                if (sp68 == 0xDE0) {
                    sp28 = (s64) temp_v0_2;
                    if ((temp_v0_2->unkE4 + (sp60 * 0x64))->unk38 == 0) {
                        sub_0d970000(sp58, (s32 *) sp28, (s32) sp60);
                    }
                }
                __glim_TexImage1D(sp68, sp60, sp48, sp50, sp70, sp40, sp38, sp30);
            } else {
                sp28 = (s64) temp_v0_2;
                temp_v0_3 = __glLookUpTextureObject((u16 *) sp58, 0xDE0);
                if (*temp_v0_3 < 3) {
                    temp_t3 = sp58->unk2FC;
                    temp_t8 = temp_t3->unk40;
                    var_a5 = sp50;
                    sp20 = (s64) temp_v0_3;
                    if (temp_t8 != 0) {
                        var_a5 = ((temp_t3->unk0 ^ 0x8010) == 0) ? ((sp50 - temp_t8) + 1) : var_a5;
                    }
                    temp_v0_4 = __glCrmPickTextureProcs((u16 *) sp58, (u16 *) sp68, sp28, sp60, sp48, var_a5, (sp70 * 2) + 1, (u8) sp70, 1, 0);
                    if ((sp30 != 0) && (temp_v0_4 != 0)) {
                        __glCrmPickTextureProcs((u16 *) sp58, (u16 *) sp28, sp60, 0, 0, sp50, 1U, (u8) sp40, (s32) sp38, (s32) sp30, 0, 0);
                    }
                    sp20->unkC = 1;
                    *(void *)0x1018 = 2;
                    sp58->unk2DEC = (s32) (sp58->unk2DEC | 1);
                    return;
                }
                __glSetError((u16 *)0x502);
            }
        }
    }
}

void __glcrmlei_TexImage1D(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 *temp_v0_3;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_4;
    s64 var_a5;
    void *temp_t3;
    void *temp_v0_2;

    sp30 = arg7;
    sp38 = arg6;
    sp60 = arg5;
    sp48 = arg4;
    sp40 = arg3;
    sp50 = arg2;
    sp58 = arg1;
    temp_v0 = *(s32 *)0x1018;
    sp68 = arg0;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            sp68->unk2E08(sp68);
            *(void *)0x1018 = 0;
            goto block_5;
        }
    } else {
block_5:
        temp_v0_2 = __glCheckTexImage1DArgs(sp68, sp58, sp50, sp40, sp48, sp60, sp38, sp30);
        if (temp_v0_2 != NULL) {
            if (sp60 != 0) {
                if (sp58 == 0xDE0) {
                    sp28 = (s64) temp_v0_2;
                    if ((temp_v0_2->unkE4 + (sp50 * 0x64))->unk38 == 0) {
                        sub_0d970000(sp68, (s32 *) sp28, (s32) sp50);
                    }
                }
                __gllei_TexImage1D(sp68, sp58, sp50, sp40, sp48, sp60, sp38, sp30, arg_sp4);
            } else {
                sp28 = (s64) temp_v0_2;
                temp_v0_3 = M2C_ERROR(/* Read from unset register $t9 */)(sp68, 0xDE0);
                if (*temp_v0_3 < 3) {
                    temp_t3 = sp68->unk2FC;
                    temp_t8 = temp_t3->unk40;
                    var_a5 = sp48;
                    sp20 = (s64) temp_v0_3;
                    if (temp_t8 != 0) {
                        var_a5 = ((temp_t3->unk0 ^ 0x8010) == 0) ? ((sp48 - temp_t8) + 1) : var_a5;
                    }
                    temp_v0_4 = __glCrmPickTextureProcs((u16 *) sp68, (u16 *) sp58, sp28, sp50, sp40, var_a5, (sp60 * 2) + 1, (u8) sp60, 1, 0);
                    if (arg_sp4 != 0) {
                        if (temp_v0_4 != 0) {
                            __glCrmPickTextureProcs((u16 *) sp68, (u16 *) sp28, sp50, 0, 0, sp48, 1U, (u8) sp38, (s32) sp30, arg_sp4, 1, 0);
                        }
                    }
                    sp20->unkC = 1;
                    *(void *)0x1018 = 2;
                    sp68->unk2DEC = (s32) (sp68->unk2DEC | 1);
                    return;
                }
                __glSetError((u16 *)0x502);
            }
        }
    }
}

void __glcrmim_TexImage2D(u16 *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, u8 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 *temp_v0_3;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_4;
    s64 temp_a5;
    s64 var_a5;
    s64 var_t2;
    void *temp_t8;
    void *temp_v0_2;

    sp40 = arg7;
    sp48 = arg6;
    sp50 = arg4;
    sp60 = arg3;
    sp58 = arg2;
    sp68 = arg1;
    sp38 = (s64) *(s32 *)0x1010;
    temp_v0 = *(s32 *)0x1018;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            sp38->unk2E08(sp38);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_a5 = (sp38->unk7DD1 == 0) ? sp50 : (sp50 * 2);
        sp30 = temp_a5;
        temp_v0_2 = __glCheckTexImage2DArgs(sp38, arg0, sp68, sp58, sp60, temp_a5, arg5, sp48, (s32) sp40);
        if (temp_v0_2 != NULL) {
            if (arg5 != 0) {
                if (arg0 == (u16 *)0xDE1) {
                    sp28 = (s64) temp_v0_2;
                    if ((temp_v0_2->unkE4 + (sp68 * 0x64))->unk38 == 0) {
                        sub_0d970000(sp38, (s32 *) sp28, (s32) sp68);
                    }
                }
                __glim_TexImage2D(arg0, sp68, sp58, sp60, sp50, arg5, sp48, sp40, arg_sp4);
            } else {
                sp28 = (s64) temp_v0_2;
                temp_v0_3 = M2C_ERROR(/* Read from unset register $t9 */)(sp38, 0xDE1);
                var_t2 = sp30;
                if (*temp_v0_3 < 3) {
                    temp_t8 = sp38->unk2FC;
                    temp_t9 = temp_t8->unk40;
                    var_a5 = sp60;
                    sp20 = (s64) temp_v0_3;
                    if ((temp_t9 != 0) && ((temp_t3 = temp_t8->unk0, (temp_t3 == 0x8011)) || (temp_t3 == 0x8012))) {
                        var_a5 = (sp60 - temp_t9) + 1;
                        var_t2 = (var_t2 - temp_t8->unk44) + 1;
                    }
                    temp_v0_4 = __glCrmPickTextureProcs((u16 *) sp38, arg0, sp28, sp68, sp58, var_a5, (u8) var_t2, arg5, 2, 0);
                    if ((arg_sp4 != 0) && (temp_v0_4 != 0)) {
                        __glCrmPickTextureProcs((u16 *) sp38, (u16 *) sp28, sp68, 0, 0, sp60, (u8) sp50, (u8) sp48, (s32) sp40, arg_sp4, 0, 0);
                    }
                    sp20->unkC = 1;
                    *(void *)0x1018 = 2;
                    sp38->unk2DEC = (s32) (sp38->unk2DEC | 1);
                    return;
                }
                __glSetError((u16 *)0x502);
            }
        }
    }
}

void __glcrmlei_TexImage2D(u16 *arg0, u16 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, u8 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 *temp_v0_3;
    s32 temp_a0;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_4;
    s64 temp_a5;
    s64 var_a5;
    s64 var_t2;
    void *temp_t3;
    void *temp_v0_2;

    sp38 = arg7;
    sp40 = arg5;
    sp50 = arg4;
    sp48 = arg3;
    sp58 = arg2;
    temp_v0 = *(s32 *)0x1018;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            arg0->unk2E08();
            *(void *)0x1018 = 0;
            goto block_5;
        }
    } else {
block_5:
        temp_a5 = (arg0->unk7DD1 == 0) ? sp40 : (sp40 * 2);
        sp30 = temp_a5;
        temp_v0_2 = __glCheckTexImage2DArgs((s64) arg0, arg1, sp58, sp48, sp50, temp_a5, arg6, sp38, arg_sp4);
        if (temp_v0_2 != NULL) {
            if (arg6 != 0) {
                if (arg1 == (u16 *)0xDE1) {
                    sp28 = (s64) temp_v0_2;
                    if ((temp_v0_2->unkE4 + (sp58 * 0x64))->unk38 == 0) {
                        sub_0d970000((s64) arg0, (s32 *) sp28, (s32) sp58);
                    }
                }
                __gllei_TexImage2D(arg0, arg1, sp58, sp48, sp50, sp40, arg6, sp38, arg_sp4, arg_spC);
            } else {
                sp28 = (s64) temp_v0_2;
                temp_v0_3 = M2C_ERROR(/* Read from unset register $t9 */)(arg0, 0xDE1);
                var_t2 = sp30;
                if (*temp_v0_3 < 3) {
                    temp_t3 = arg0->unk2FC;
                    temp_t8 = temp_t3->unk40;
                    var_a5 = sp50;
                    sp20 = (s64) temp_v0_3;
                    if ((temp_t8 != 0) && ((temp_a0 = temp_t3->unk0, (temp_a0 == 0x8011)) || (temp_a0 == 0x8012))) {
                        var_a5 = (sp50 - temp_t8) + 1;
                        var_t2 = (var_t2 - temp_t3->unk44) + 1;
                    }
                    temp_v0_4 = __glCrmPickTextureProcs(arg0, arg1, sp28, sp58, sp48, var_a5, (u8) var_t2, arg6, 2, 0);
                    if ((arg_spC != 0) && (temp_v0_4 != 0)) {
                        __glCrmPickTextureProcs(arg0, (u16 *) sp28, sp58, 0, 0, sp50, (u8) sp40, (u8) sp38, arg_sp4, arg_spC, 1, 0);
                    }
                    sp20->unkC = 1;
                    *(void *)0x1018 = 2;
                    arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
                    return;
                }
                __glSetError((u16 *)0x502);
            }
        }
    }
}

void __glcrmim_TexSubImage1DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_t2;
    s32 temp_v0;
    u16 *temp_s0;
    void *temp_v0_2;

    sp38 = arg6;
    sp50 = arg5;
    sp48 = arg4;
    sp60 = arg3;
    sp58 = arg2;
    sp68 = arg1;
    sp40 = arg0;
    temp_v0 = *(s32 *)0x1018;
    temp_s0 = *(u16 **)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            temp_s0->unk2E08(temp_s0);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckTexSubImage1DArgs(temp_s0, sp40, sp68, sp58, sp60, sp48, sp50);
        if (temp_v0_2 != NULL) {
            temp_t2 = (temp_v0_2->unkE4 + (sp68 * 0x64))->unk38;
            if (temp_t2 != 0) {
                __glim_TexSubImage1DEXT(sp40, sp68, sp58, sp60, sp48, sp50, sp38);
            } else if ((sp38 != 0) && (sp60 != 0)) {
                sp20 = (s64) temp_v0_2;
                sp28 = (s64) temp_t2;
                sp30 = (s64) temp_v0_2->unk11C;
                if (temp_s0->unk6E30 == temp_v0_2) {
                    __glCrmFlushAndConfirm(temp_s0);
                }
                __glCrmPickTextureProcs(temp_s0, (u16 *) sp20, sp68, sp28 + sp58, 0, sp60, 1U, (u8) sp48, (s32) sp50, (s32) sp38, 0, 0);
                if (temp_s0->unk6E30 == sp20) {
                    if (*(sp30->unk20 + (sp68 * 0x24)) & 1) {
                        sub_0d970000((s64) temp_s0, (s32 *) sp20);
                    }
                }
            }
        }
    }
}

void __glcrmlei_TexSubImage1DEXT(u16 *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    void *temp_v0_2;

    sp38 = arg7;
    sp50 = arg6;
    sp48 = arg5;
    sp60 = arg4;
    sp58 = arg3;
    sp68 = arg2;
    sp40 = arg1;
    temp_v0 = arg0->unkC80;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            arg0->unk2E08();
            arg0->unkC80 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckTexSubImage1DArgs(arg0, sp40, sp68, sp58, sp60, sp48, sp50);
        if (temp_v0_2 != NULL) {
            temp_a1 = sp68 * 0x64;
            temp_a0 = (temp_v0_2->unkE4 + temp_a1)->unk38;
            if (temp_a0 != 0) {
                __gllei_TexSubImage1DEXT(arg0, sp40, sp68, sp58, sp60, sp48, sp50, sp38);
            } else if (sp38 != 0) {
                if (sp60 != 0) {
                    sp20 = (s64) temp_v0_2;
                    temp_a4 = arg0->unk6E30;
                    sp28 = (s64) temp_a0;
                    temp_a5 = temp_v0_2->unk11C;
                    sp30 = (s64) temp_a5;
                    if (temp_a4 == temp_v0_2) {
                        __glCrmFlushAndConfirm(arg0, temp_a1, sp38, sp60, temp_a4, temp_a5);
                    }
                    __glCrmPickTextureProcs(arg0, (u16 *) sp20, sp68, sp28 + sp58, 0, sp60, 1U, (u8) sp48, (s32) sp50, (s32) sp38, 1, 0);
                    if (arg0->unk6E30 == sp20) {
                        if (*(sp30->unk20 + (sp68 * 0x24)) & 1) {
                            sub_0d970000((s64) arg0, (s32 *) sp20);
                        }
                    }
                }
            }
        }
    }
}

void __glcrmim_TexSubImage2DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_t3;
    s32 temp_v0;
    u16 *temp_s0;
    void *temp_v0_2;

    sp50 = arg7;
    sp48 = arg6;
    sp60 = arg5;
    sp68 = arg4;
    sp40 = arg3;
    sp58 = arg2;
    sp38 = arg0;
    temp_s0 = *(u16 **)0x1010;
    temp_v0 = *(s32 *)0x1018;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            temp_s0->unk2E08(temp_s0);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckTexSubImage2DArgs(temp_s0, sp38, arg1, sp58, sp40, sp68, (temp_s0->unk7DD1 == 0) ? sp60 : ((sp60 * 2) - 1), sp48, (s32) sp50);
        if (temp_v0_2 != NULL) {
            temp_t3 = (temp_v0_2->unkE4 + (arg1 * 0x64))->unk38;
            if (temp_t3 != 0) {
                __glim_TexSubImage2DEXT(sp38, arg1, sp58, sp40, sp68, sp60, sp48, sp50, arg_sp4);
            } else if (arg_sp4 != 0) {
                if (sp68 != 0) {
                    if (sp60 != 0) {
                        sp20 = (s64) temp_v0_2;
                        temp_a1 = temp_s0->unk6E30;
                        sp28 = (s64) temp_t3;
                        temp_a2 = temp_v0_2->unk11C;
                        sp30 = (s64) temp_a2;
                        if (temp_a1 == temp_v0_2) {
                            __glCrmFlushAndConfirm(temp_s0, temp_a1, (s64) temp_a2);
                        }
                        __glCrmPickTextureProcs(temp_s0, (u16 *) sp20, arg1, sp28 + sp58, sp28 + sp40, sp68, (u8) sp60, (u8) sp48, (s32) sp50, arg_sp4, 0, 0);
                        if ((temp_s0->unk6E30 == sp20) && (*(sp30->unk20 + (arg1 * 0x24)) & 1)) {
                            sub_0d970000((s64) temp_s0, (s32 *) sp20);
                        }
                    }
                }
            }
        }
    }
}

void __glcrmlei_TexSubImage2DEXT(u16 *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a2;
    s32 temp_v0;
    s64 temp_a3;
    void *temp_v0_2;

    sp48 = arg7;
    sp58 = arg6;
    sp60 = arg5;
    sp40 = arg4;
    sp50 = arg3;
    sp38 = arg1;
    temp_v0 = arg0->unkC80;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            arg0->unk2E08();
            arg0->unkC80 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckTexSubImage2DArgs(arg0, sp38, arg2, sp50, sp40, sp60, (arg0->unk7DD1 == 0) ? sp58 : ((sp58 * 2) - 1), sp48, arg_sp4);
        if (temp_v0_2 != NULL) {
            temp_a3 = arg2 * 0x64;
            temp_a2 = (temp_v0_2->unkE4 + temp_a3)->unk38;
            if (temp_a2 != 0) {
                __gllei_TexSubImage2DEXT(arg0, sp38, arg2, sp50, sp40, sp60, sp58, sp48, arg_sp4, arg_spC);
            } else if ((arg_spC != 0) && (sp60 != 0) && (sp58 != 0)) {
                sp20 = (s64) temp_v0_2;
                sp28 = (s64) temp_a2;
                sp30 = (s64) temp_v0_2->unk11C;
                if (arg0->unk6E30 == temp_v0_2) {
                    __glCrmFlushAndConfirm(arg0, (s32) sp38, (s64) temp_a2, temp_a3);
                }
                __glCrmPickTextureProcs(arg0, (u16 *) sp20, arg2, sp28 + sp50, sp28 + sp40, sp60, (u8) sp58, (u8) sp48, arg_sp4, arg_spC, 1, 0);
                if ((arg0->unk6E30 == sp20) && (*(sp30->unk20 + (arg2 * 0x24)) & 1)) {
                    sub_0d970000((s64) arg0, (s32 *) sp20);
                }
            }
        }
    }
}

void __glcrmim_CopyTexImage1DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 *temp_v0_3;
    s32 temp_t2;
    s32 temp_v0;
    s64 var_a5;
    void *temp_t3;
    void *temp_v0_2;

    sp50 = arg6;
    sp40 = arg5;
    sp20 = arg4;
    sp28 = arg3;
    sp38 = arg2;
    sp58 = arg1;
    sp30 = arg0;
    temp_v0 = *(s32 *)0x1018;
    sp48 = (s64) *(s32 *)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            sp48->unk2E08(sp48);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckCopyTexImageArgs(sp48, sp30, sp58, sp38, sp28, sp20, sp40, 1, (s32) sp50, 1);
        if (temp_v0_2 != NULL) {
            if (sp50 != 0) {
                sp18 = (s64) temp_v0_2;
                if ((temp_v0_2->unkE4 + (sp58 * 0x64))->unk38 == 0) {
                    sub_0d970000(sp48, (s32 *) sp18, (s32) sp58);
                }
                __glim_CopyTexImage1DEXT(sp30, sp58, sp38, sp28, sp20, sp40, sp50);
            } else {
                sp18 = (s64) temp_v0_2;
                temp_v0_3 = M2C_ERROR(/* Read from unset register $t9 */)(sp48, 0xDE0);
                if (*temp_v0_3 < 3) {
                    temp_t3 = sp48->unk2FC;
                    temp_t2 = temp_t3->unk40;
                    var_a5 = sp40;
                    sp10 = (s64) temp_v0_3;
                    if (temp_t2 != 0) {
                        var_a5 = ((temp_t3->unk0 ^ 0x8010) == 0) ? ((sp40 - temp_t2) + 1) : var_a5;
                    }
                    if (__glCrmPickTextureProcs((u16 *) sp48, (u16 *) sp30, sp18, sp58, sp38, var_a5, (sp50 * 2) + 1, (u8) sp50, 1, 0) != 0) {
                        if (__glCrmPickTextureProcs((u16 *) sp48, (u16 *) sp18, sp58, 0, 0, sp28, (u8) sp20, (u8) sp40, 1) != 0) {
                            sp10->unkC = 1;
                            /* Duplicate return node #16. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            sp48->unk2DEC = (s32) (sp48->unk2DEC | 1);
                        }
                    } else {
                        *(void *)0x1018 = 2;
                        sp48->unk2DEC = (s32) (sp48->unk2DEC | 1);
                    }
                } else {
                    __glSetError((u16 *)0x502);
                }
            }
        }
    }
}

void __glcrmim_CopyTexImage2DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s32 arg7) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 *temp_v0_3;
    s32 temp_a1;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s64 temp_a7;
    s64 var_a5;
    s64 var_t2;
    void *temp_t3;
    void *temp_v0_2;

    sp40 = arg6;
    sp58 = arg5;
    sp30 = arg4;
    sp38 = arg3;
    sp48 = arg2;
    sp50 = arg0;
    sp28 = (s64) *(s32 *)0x1010;
    temp_v0 = *(s32 *)0x1018;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            sp28->unk2E08(sp28);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_a7 = (sp28->unk7DD1 == 0) ? sp40 : (sp40 * 2);
        sp20 = temp_a7;
        temp_v0_2 = __glCheckCopyTexImageArgs(sp28, sp50, arg1, sp48, sp38, sp30, sp58, temp_a7, arg7, 2);
        if (temp_v0_2 != NULL) {
            if (arg7 != 0) {
                sp18 = (s64) temp_v0_2;
                if ((temp_v0_2->unkE4 + (arg1 * 0x64))->unk38 == 0) {
                    sub_0d970000(sp28, (s32 *) sp18, (s32) arg1);
                }
                __glim_CopyTexImage2DEXT(sp50, arg1, sp48, sp38, sp30, sp58, sp40, arg7);
            } else {
                sp18 = (s64) temp_v0_2;
                temp_v0_3 = M2C_ERROR(/* Read from unset register $t9 */)(sp28, 0xDE1);
                temp_a1 = *temp_v0_3 < 3;
                var_t2 = sp20;
                if (temp_a1 != 0) {
                    temp_t3 = sp28->unk2FC;
                    temp_t9 = temp_t3->unk40;
                    var_a5 = sp58;
                    sp10 = (s64) temp_v0_3;
                    if ((temp_t9 != 0) && ((temp_t8 = temp_t3->unk0, (temp_t8 == 0x8011)) || (temp_t8 == 0x8012))) {
                        var_a5 = (sp58 - temp_t9) + 1;
                        var_t2 = (var_t2 - temp_t3->unk44) + 1;
                    }
                    if (__glCrmPickTextureProcs((u16 *) sp28, (u16 *) sp50, sp18, arg1, sp48, var_a5, (u8) var_t2, (u8) arg7, 2, 0) != 0) {
                        if (__glCrmPickTextureProcs((u16 *) sp28, (u16 *) sp18, arg1, 0, 0, sp38, (u8) sp30, (u8) sp58, (s32) sp40) != 0) {
                            sp10->unkC = 1;
                            /* Duplicate return node #17. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            sp28->unk2DEC = (s32) (sp28->unk2DEC | 1);
                        }
                    } else {
                        *(void *)0x1018 = 2;
                        sp28->unk2DEC = (s32) (sp28->unk2DEC | 1);
                    }
                } else {
                    __glSetError((u16 *)0x502, temp_a1);
                }
            }
        }
    }
}

void __glcrmim_CopyTexSubImage1DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a1;
    s32 temp_v0;
    void *temp_v0_2;

    sp40 = arg5;
    sp38 = arg4;
    sp50 = arg3;
    sp48 = arg2;
    sp60 = arg1;
    sp30 = arg0;
    temp_v0 = *(s32 *)0x1018;
    sp58 = (s64) *(s32 *)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            sp58->unk2E08(sp58);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckCopyTexSubImageArgs(sp58, sp30, sp60, sp48, 0, 0, sp50, sp38, (s32) sp40, 1, 1);
        if (temp_v0_2 != NULL) {
            sp20 = (s64) temp_v0_2;
            if ((temp_v0_2->unkE4 + (sp60 * 0x64))->unk38 != 0) {
                __glim_CopyTexSubImage1DEXT(sp30, sp60, sp48, sp50, sp38, sp40);
            } else {
                temp_a1 = *__glLookUpTextureObject((u16 *) sp58, 0xDE0) < 3;
                if (temp_a1 == 0) {
                    __glSetError((u16 *)0x502, temp_a1);
                } else {
                    sp28 = (s64) sp20->unk11C;
                    if (__glCrmPickTextureProcs((u16 *) sp58, (u16 *) sp20, sp60, sp48, 0, sp50, (u8) sp38, (u8) sp40, 1) != 0) {
                        if ((sp58->unk6E30 == sp20) && (*(sp28->unk20 + (sp60 * 0x24)) & 1)) {
                            sub_0d970000(sp58, (s32 *) sp20);
                        }
                    }
                }
            }
        }
    }
}

void __glcrmim_CopyTexSubImage2DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_v0;
    u16 *temp_s1;
    void *temp_v0_2;

    sp60 = arg7;
    sp50 = arg6;
    sp48 = arg5;
    sp40 = arg4;
    sp38 = arg3;
    sp58 = arg2;
    sp30 = arg0;
    temp_s1 = *(u16 **)0x1010;
    temp_v0 = *(s32 *)0x1018;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError((u16 *)0x502);
        } else {
            temp_s1->unk2E08(temp_s1);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckCopyTexSubImageArgs((s64) temp_s1, sp30, arg1, sp58, sp38, 0, sp40, sp48, (s32) sp50, (s32) ((temp_s1->unk7DD1 == 0) ? sp60 : ((sp60 * 2) - 1)), 2);
        if (temp_v0_2 != NULL) {
            sp28 = (s64) temp_v0_2;
            if ((temp_v0_2->unkE4 + (arg1 * 0x64))->unk38 != 0) {
                __glim_CopyTexSubImage2DEXT(sp30, arg1, sp58, sp38, sp40, sp48, sp50, sp60);
            } else if (*__glLookUpTextureObject(temp_s1, 0xDE1) < 3) {
                sp20 = (s64) sp28->unk11C;
                if (*temp_s1->unk7D3C != 5) {
                    goto block_11;
                }
                if (__glCrmPickTextureProcs(temp_s1, (u16 *) sp28, arg1, sp58, sp38, sp40, (u8) sp48, (u8) sp50, (s32) sp60) == 0) {
                    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0xD7A5C)->unk-5438 != 0) {
                        printf(&sub_0da40000 + 0x4560, (s32) sp28);
block_11:
                    }
                    if ((__glCrmPickTextureProcs(temp_s1, (u16 *) sp28, arg1, sp58, sp38, sp40, (u8) sp48, (u8) sp50, (s32) sp60) != 0) && (temp_s1->unk6E30 == sp28)) {
                        if (*(sp20->unk20 + (arg1 * 0x24)) & 1) {
                            sub_0d970000((s64) temp_s1, (s32 *) sp28);
                        }
                    }
                }
            } else {
                __glSetError((u16 *)0x502);
            }
        }
    }
}
