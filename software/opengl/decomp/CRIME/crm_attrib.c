Error occurred while processing instruction: c.lt.d $f12, $f1

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
Error occurred while processing instruction: bgez $a7, .L0d93d834

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
Error occurred while processing instruction: bgez $t2, .L0d93e1e0

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
Error occurred while processing instruction: bltz $a4, .L0d93e494

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
Error occurred while processing instruction: bltz $a6, .L0d93e494

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
Error occurred while processing instruction: bltz $a7, .L0d93e494

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
Error occurred while processing instruction: bltz $v1, .L0d93e494

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
Error occurred while processing instruction: bltz $v1, .L0d93e494

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
Error occurred while processing instruction: bltz $a3, .L0d93e494

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
Error occurred while processing instruction: bltz $a4, .L0d93e494

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
Error occurred while processing instruction: bltz $a7, .L0d93e494

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
Error occurred while processing instruction: bltz $a6, .L0d93e494

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
Error occurred while processing instruction: bltz $t0, .L0d93e494

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
Error occurred while processing instruction: bltz $t1, .L0d93e494

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
Error occurred while processing instruction: bltz $t2, .L0d93e494

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
Error occurred while processing instruction: bltz $v0, .L0d93e494

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
Error occurred while processing instruction: bltz $at, .L0d93e494

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
Error occurred while processing instruction: bltz $v1, .L0d93e494

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
Error occurred while processing instruction: bltz $a7, .L0d93e494

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
Error occurred while processing instruction: bltz $a4, .L0d93f344

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
Error occurred while processing instruction: bltz $v0, .L0d93f344

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
Error occurred while processing instruction: bltz $a7, .L0d93f344

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
Error occurred while processing instruction: bltz $t2, .L0d93f344

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
Error occurred while processing instruction: bltz $v1, .L0d93f344

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
Error occurred while processing instruction: bltz $t1, .L0d93f344

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
Error occurred while processing instruction: bltz $a3, .L0d93f344

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
Error occurred while processing instruction: bltz $t9, .L0d93f344

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
Error occurred while processing instruction: bltz $a6, .L0d93f344

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
Error occurred while processing instruction: bltz $t0, .L0d93f344

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
Error occurred while processing instruction: bltz $t1, .L0d93f344

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
Error occurred while processing instruction: bltz $t2, .L0d93f344

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
Error occurred while processing instruction: bltz $v0, .L0d93f344

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
Error occurred while processing instruction: bltz $at, .L0d93f344

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
Error occurred while processing instruction: bltz $t0, .L0d93f344

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
Error occurred while processing instruction: bltz $a7, .L0d93f344

Error occurred while processing instruction: c.lt.d $f12, $f1

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
Error occurred while processing instruction: bgez $a7, .L0d93d834

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
Error occurred while processing instruction: bgez $t2, .L0d93e1e0

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
Error occurred while processing instruction: bltz $a4, .L0d93e494

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
Error occurred while processing instruction: bltz $a6, .L0d93e494

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
Error occurred while processing instruction: bltz $a7, .L0d93e494

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
Error occurred while processing instruction: bltz $v1, .L0d93e494

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
Error occurred while processing instruction: bltz $v1, .L0d93e494

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
Error occurred while processing instruction: bltz $a3, .L0d93e494

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
Error occurred while processing instruction: bltz $a4, .L0d93e494

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
Error occurred while processing instruction: bltz $a7, .L0d93e494

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
Error occurred while processing instruction: bltz $a6, .L0d93e494

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
Error occurred while processing instruction: bltz $t0, .L0d93e494

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
Error occurred while processing instruction: bltz $t1, .L0d93e494

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
Error occurred while processing instruction: bltz $t2, .L0d93e494

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
Error occurred while processing instruction: bltz $v0, .L0d93e494

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
Error occurred while processing instruction: bltz $at, .L0d93e494

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
Error occurred while processing instruction: bltz $v1, .L0d93e494

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
Error occurred while processing instruction: bltz $a7, .L0d93e494

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
Error occurred while processing instruction: bltz $a4, .L0d93f344

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
Error occurred while processing instruction: bltz $v0, .L0d93f344

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
Error occurred while processing instruction: bltz $a7, .L0d93f344

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
Error occurred while processing instruction: bltz $t2, .L0d93f344

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
Error occurred while processing instruction: bltz $v1, .L0d93f344

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
Error occurred while processing instruction: bltz $t1, .L0d93f344

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
Error occurred while processing instruction: bltz $a3, .L0d93f344

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
Error occurred while processing instruction: bltz $t9, .L0d93f344

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
Error occurred while processing instruction: bltz $a6, .L0d93f344

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
Error occurred while processing instruction: bltz $t0, .L0d93f344

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
Error occurred while processing instruction: bltz $t1, .L0d93f344

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
Error occurred while processing instruction: bltz $t2, .L0d93f344

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
Error occurred while processing instruction: bltz $v0, .L0d93f344

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
Error occurred while processing instruction: bltz $at, .L0d93f344

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
Error occurred while processing instruction: bltz $t0, .L0d93f344

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
Error occurred while processing instruction: bltz $a7, .L0d93f344

Tried to use a double-precision instruction with odd-numbered float register $f1
Tried to use a double-precision instruction with odd-numbered float register $f1
? __glBindTexture(void *, s32, s32);                /* extern */
? __glClampAndScaleColorf(void *, void *, u32, ?, ?); /* extern */
? __glCopyColorTableScaleBias(void *, void *, s32, s64, void *, void *, ?, void *); /* extern */
? __glCrmEnableDepthTest(void *, u32, ?, u32, u32); /* extern */
? __glCrmEnableStencilTest(void *, u32, ?, u32, u32, u32); /* extern */
? __glCrmPassDepthFunc(void *, u32, s32, void *, ?); /* extern */
? __glCrmPassDepthMask(void *, s32, ?, void *);     /* extern */
? __glCrmPassStencilMask(void *, s32, ?, void *, s16, s32); /* extern */
? __glCrmPassStencilMode(void *, s32, s32, ?, s16, void *, s16, s16); /* extern */
? __glFillImage(void *, ?, ?, ?, ?, u32, s32);      /* extern */
? __glSetError(void *, u32, u32, void *, u32, u32, u32, u32); /* extern */
? __glUpdateViewportTransform(void *);              /* extern */
s32 getenv(void *);                                 /* extern */
? memcpy(void *, void *, s32, s32, s32, s64, s64, s64); /* extern */
void __glCrmEnableAlphaTest(void *arg0, s32 arg2, u32, s32, void *, void *, void *, void *); /* static */
void __glCrmEnableBlend(void *arg0, u32 arg5, u32 arg6, u32 arg7, u32, u32, u32); /* static */
void __glCrmEnableDither(void *arg0, u32, ?, s32, s32, u32); /* static */
void __glCrmEnableFogTest(void *arg0, void *arg5, u32, ?, u32, u32); /* static */
void __glCrmEnableLogicOp(void *arg0, u32, u32, s32, u32, u32, u32); /* static */
void __glCrmPassAlphaFunc(s64 arg0, u32, u32, s64); /* static */
void __glCrmPassBlendColor(void *arg0, f32, f32, f32); /* static */
void __glCrmPassBlendFunc(void *arg0, u32, u32, void *, u32, u32, u32); /* static */
void __glCrmPassColorMask(void *arg0, u8, void *, u32, u32, u32, u32, u32); /* static */
void __glCrmPassFog(void *arg0, s32, s32, ?, s32);  /* static */
? __glCrmPassLogicOp(void *, u32, u32, void *, ?, ?, ?); /* static */
void __glCrmShadeModel(void *arg0, u32, s32, void *, ?); /* static */
extern ? sub_0da40000;

void __glcrmim_AlphaFunc(u32 arg0, f32 fparg1) {
    s64 sp0;
    u32 temp_a1;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a1 = arg0 < 0x208U;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0x200U) {
            sp0 = (s64) temp_a3;
            if (temp_a1 != 0) {
                M2C_ERROR(/* unknown instruction: movf.s $f1, $f13, $fcc1 */);
                sp0->unk71C = arg0;
                sp0->unk720 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f0, $f1, $fcc0 */);
                __glCrmPassAlphaFunc(sp0, temp_a1, arg0, sp0);
                *(void *)0x1018 = 2;
                sp0->unk2DE8 = (s32) (sp0->unk2DE8 | 1);
                sp0->unk2DEC = (s32) (sp0->unk2DEC | 1);
                return;
            }
        }
        __glSetError((void *)0x500, temp_a1, arg0, temp_a3);
    } else {
        __glSetError((void *)0x502, temp_a1, arg0, temp_a3);
    }
}

void __glcrmim_BlendFunc(u32 arg0, u32 arg1, u32 arg2, u32 arg5, u32 arg6, u32 arg7) {
    s32 temp_a0;
    s32 var_a0;
    u32 var_a2;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;
    void *temp_a4;

    var_a2 = arg2;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = arg0 < 0x306U;
        if (temp_a0 == 0) {
            var_a0 = arg1 < 0x304U;
            if (arg0 >= 0x307U) {
                var_a2 = arg0 < 0x8002U;
                var_a5 = arg0 > 0x8002U;
                if (var_a2 == 0) {
                    var_a2 = 0x8003;
                    var_a7 = arg0 > 0x8004U;
                    var_a6 = arg0 < 0x8004U;
                    if (var_a5 != 0) {
                        if (var_a6 == 0) {
                            var_a0 = arg1 < 0x304U;
                            if (var_a7 != 0) {
                                goto block_32;
                            }
                            goto block_13;
                        }
                        var_a0 = arg1 < 0x304U;
                        if (arg0 != 0x8003) {
                            goto block_32;
                        }
                        goto block_13;
                    }
                    goto block_12;
                }
                if (arg0 >= 0x308U) {
                    var_a0 = arg1 < 0x304U;
                    if (arg0 >= 0x309U) {
                        var_a0 = arg1 < 0x304U;
                        if (arg0 != 0x8001) {
                            goto block_32;
                        }
                    }
                    goto block_13;
                }
                var_a0 = arg1 < 0x304U;
                if (arg0 != 0x307) {
                    goto block_32;
                }
                goto block_13;
            }
            goto block_13;
        }
        if (arg0 >= 0x303U) {
            if (arg0 >= 0x304U) {
                if (arg0 >= 0x305U) {
                    if (temp_a0 != 0) {
                        goto block_12;
                    }
                    goto block_32;
                }
                var_a0 = arg1 < 0x304U;
                if (arg0 != 0x304) {
                    goto block_32;
                }
                goto block_13;
            }
            goto block_12;
        }
        var_a7 = arg0 < 2U;
        if ((arg0 != 0) && (var_a7 == 0) && (arg0 != 0x302)) {
block_32:
            __glSetError((void *)0x500, var_a2, arg0, temp_a4, var_a5, var_a6, var_a7);
        } else {
block_12:
            var_a0 = arg1 < 0x304U;
block_13:
            if (var_a0 == 0) {
                if (arg1 >= 0x305U) {
                    if (arg1 >= 0x8002U) {
                        if (arg1 > 0x8002U) {
                            if (arg1 >= 0x8004U) {
                                if (arg1 > 0x8004U) {
                                    goto block_36;
                                }
                                goto block_27;
                            }
                            if (arg1 != 0x8003) {
                                goto block_36;
                            }
                            goto block_27;
                        }
                        goto block_27;
                    }
                    var_a5 = arg1 < 0x8001U;
                    var_a6 = arg1 > 0x8001U;
                    if (var_a5 == 0) {
                        if (var_a6 == 0) {
                            goto block_27;
                        }
                        goto block_36;
                    }
                    if (arg1 != 0x305) {
                        goto block_36;
                    }
                    goto block_27;
                }
                goto block_27;
            }
            if (arg1 >= 0x301U) {
                var_a2 = arg1 < 0x303U;
                if (arg1 >= 0x302U) {
                    if (var_a2 == 0) {
                        if (var_a0 == 0) {
                            goto block_36;
                        }
                        goto block_27;
                    }
                    if (arg1 != 0x302) {
                        goto block_36;
                    }
                    goto block_27;
                }
                goto block_27;
            }
            if ((arg1 != 0) && (arg1 >= 2U) && (arg1 != 0x300)) {
block_36:
                __glSetError((void *)0x500, var_a2, arg0, temp_a4, var_a5, var_a6, var_a7);
            } else {
block_27:
                temp_a4->unk728 = arg1;
                temp_a4->unk724 = arg0;
                __glCrmPassBlendFunc(temp_a4, var_a2, arg0, temp_a4, var_a5, var_a6, var_a7);
            }
        }
    } else {
        __glSetError((void *)0x502, arg0, (u32) temp_a4);
    }
}

void __glcrmim_BlendEquationEXT(s32 arg0) {
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != 0xBF1) && (arg0 != 0x8006) && (arg0 != 0x8007) && (arg0 != 0x8008) && (arg0 != 0x800A) && (arg0 != 0x800B)) {
            __glSetError((void *)0x500, 0x8006U, 0xBF1U, (void *)0x8007, 0x8008U, 0x800AU, 0x800BU);
        } else {
            temp_s0->unk72C = arg0;
            if (arg0 != 0xBF1) {
                __glCrmPassBlendFunc(temp_s0, 0x8006U, 0xBF1U, (void *)0x8007, 0x8008U, 0x800AU, 0x800BU);
            } else {
                __glCrmPassLogicOp(temp_s0, 0x8006U, 0xBF1U, (void *)0x8007, 0x8008, 0x800A, 0x800B);
            }
            if (temp_s0->unk700 & 2) {
                __glCrmEnableBlend(temp_s0);
            }
            *(void *)0x1018 = 2;
            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
        }
    } else {
        __glSetError((void *)0x502, 0x8006U, 0x8007U, (void *)0x8008, 0x800AU, 0x800BU);
    }
}

void __glcrmim_BlendColorEXT(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    void *temp_a0;

    temp_a0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        M2C_ERROR(/* unknown instruction: movf.s $f4, $f15, $fcc4 */);
        temp_a0->unk73C = (f32) M2C_ERROR(/* unknown instruction: movf.s $f3, $f4, $fcc0 */);
        temp_a0->unk738 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f2, $f3, $fcc3 */);
        temp_a0->unk734 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f1, $f3, $fcc2 */);
        temp_a0->unk730 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f0, $f3, $fcc1 */);
        __glCrmPassBlendColor(temp_a0, M2C_ERROR(/* unknown instruction: movt.s $f12, $f4, $fcc5 */), M2C_ERROR(/* unknown instruction: movt.s $f13, $f4, $fcc6 */), M2C_ERROR(/* unknown instruction: movt.s $f14, $f4, $fcc7 */));
    } else {
        __glSetError((void *)0x502);
    }
}

void __glcrmim_ColorMask(u8 arg0, s8 arg1, s8 arg2, s8 arg3) {
    void *temp_a6;

    temp_a6 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a6->unk75F = arg3;
        temp_a6->unk75E = arg2;
        temp_a6->unk75D = arg1;
        temp_a6->unk75C = arg0;
        __glCrmPassColorMask(temp_a6, arg0, temp_a6);
    } else {
        __glSetError((void *)0x502, (u32) arg0, (u32) temp_a6);
    }
}

void __glcrmim_ClearDepth(f32 fparg0) {
    if (*(s32 *)0x1018 != 1) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f1
        // At instruction: c.lt.d $f12, $f1
    } else {
        __glSetError((void *)0x502);
    }
}

void __glcrmim_DepthFunc(u32 arg0) {
    s32 temp_a2;
    u32 temp_a1;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a1 = arg0 < 0x208U;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 < 0x200U) || (temp_a1 == 0)) {
            __glSetError((void *)0x500, temp_a1, arg0, temp_a3);
        } else {
            temp_a3->unk660 = arg0;
            *(void *)0x1018 = 2;
            temp_a2 = temp_a3->unk2DEC | 1;
            temp_a3->unk2DEC = temp_a2;
            __glCrmPassDepthFunc(temp_a3, temp_a1, temp_a2, temp_a3, 2);
        }
    } else {
        __glSetError((void *)0x502, temp_a1, arg0, temp_a3);
    }
}

void __glcrmim_DepthMask(s8 arg0) {
    s32 temp_a1;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a3->unk664 = arg0;
        *(void *)0x1018 = 2;
        temp_a1 = temp_a3->unk2DEC | 1;
        temp_a3->unk2DEC = temp_a1;
        __glCrmPassDepthMask(temp_a3, temp_a1, 2, temp_a3);
    } else {
        __glSetError((void *)0x502, (u32) arg0, (u32) temp_a3);
    }
}

void __glcrmim_DrawBuffer(u32 arg0, u32 arg4, u32 arg5, u32 arg6, u32 arg7) {
    s32 var_a3;
    s32 var_t0;
    u32 var_a3_2;
    u32 var_a4;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;
    u8 var_a1;
    void *temp_a2;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a1 = arg0 < 0x406U;
        var_a3 = arg0 < 0x407U;
        if (var_a1 == 0) {
            var_a4 = arg0 < 0x40AU;
            if (var_a3 == 0) {
                var_a5 = arg0 < 0x40BU;
                if (var_a4 == 0) {
                    var_a6 = arg0 < 0x40CU;
                    if (var_a5 == 0) {
                        var_a7 = 0x40B;
                        if (var_a6 == 0) {
                            var_a7 = arg0 < 0x40DU;
                            if (var_a7 != 0) {
                                goto block_7;
                            }
                            goto block_38;
                        }
                        if (arg0 != 0x40B) {
                            goto block_37;
                        }
                        goto block_7;
                    }
                    goto block_7;
                }
                var_a3 = arg0 < 0x408U;
                if (var_a3 == 0) {
                    var_a4 = arg0 < 0x409U;
                    if (var_a4 != 0) {
                        goto block_19;
                    }
                    var_t0 = arg0 < 0x40DU;
                    if (arg0 == 0x409) {
block_7:
                        if ((arg0 - 0x409) < temp_a2->unkCE0) {
                            var_a3_2 = arg0;
                            goto block_20;
                        }
                        goto block_38;
                    }
                    goto block_36;
                }
                var_t0 = arg0 < 0x40DU;
                if (arg0 == 0x407) {
                    var_a1 = temp_a2->unkC97;
                    if (var_a1 != 0) {
                        if (temp_a2->unk764 != arg0) {
                            var_a5 = 2;
                            *(void *)0x1018 = 2;
                            var_a4 = temp_a2->unk2DEC | 1;
                            temp_a2->unk2DEC = var_a4;
                        }
                        var_a6 = temp_a2->unk760;
                        temp_a2->unk764 = arg0;
                        if (var_a6 != 0x408) {
                            *(void *)0x1018 = 2;
                            var_a3_2 = 0x408;
                            var_a7 = temp_a2->unk2DEC | 1;
                            temp_a2->unk2DEC = var_a7;
                            goto block_24;
                        }
                    } else {
                        goto block_38;
                    }
                } else {
                    goto block_36;
                }
            } else {
block_19:
                var_a5 = temp_a2->unkC96 == 0;
                var_a3_2 = (var_a5 == 0) ? 0x408U : 0x404U;
block_20:
                var_a6 = temp_a2->unk764;
                if (var_a6 != arg0) {
                    *(void *)0x1018 = 2;
                    var_a7 = temp_a2->unk2DEC | 1;
                    temp_a2->unk2DEC = var_a7;
                }
                temp_a2->unk764 = arg0;
                if (temp_a2->unk760 != var_a3_2) {
                    *(void *)0x1018 = 2;
                    temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
                    if (var_a3_2 != 0) {
                        goto block_24;
                    }
                    goto block_61;
                }
            }
        } else if (arg0 >= 0x402U) {
            if (arg0 >= 0x403U) {
                if (arg0 >= 0x404U) {
                    if (arg0 < 0x405U) {
                        goto block_13;
                    }
                    var_t0 = arg0 < 0x40DU;
                    if (arg0 == 0x405) {
                        goto block_40;
                    }
                    goto block_36;
                }
                var_t0 = arg0 < 0x40DU;
                if (arg0 == 0x403) {
                    if (temp_a2->unkC97 != 0) {
                        if (temp_a2->unk764 != arg0) {
                            *(void *)0x1018 = 2;
                            temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
                        }
                        temp_a2->unk764 = arg0;
                        if (temp_a2->unk760 != 0x405) {
                            *(void *)0x1018 = 2;
                            var_a3_2 = 0x405;
                            temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
                            goto block_24;
                        }
                    } else {
                        goto block_38;
                    }
                } else {
                    goto block_36;
                }
            } else {
block_40:
                if (temp_a2->unkC96 != 0) {
                    if (temp_a2->unk764 != arg0) {
                        *(void *)0x1018 = 2;
                        temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
                    }
                    temp_a2->unk764 = arg0;
                    if (temp_a2->unk760 != 0x405) {
                        *(void *)0x1018 = 2;
                        var_a3_2 = 0x405;
                        temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
                        goto block_24;
                    }
                } else {
                    goto block_38;
                }
            }
        } else if (arg0 >= 0x400U) {
            if (arg0 >= 0x401U) {
                var_t0 = arg0 < 0x40DU;
                if (arg0 == 0x401) {
                    if (temp_a2->unkC97 != 0) {
                        if (temp_a2->unk764 != arg0) {
                            var_a4 = 2;
                            *(void *)0x1018 = 2;
                            var_a1 = temp_a2->unk2DEC | 1;
                            temp_a2->unk2DEC = (u32) var_a1;
                        }
                        var_a5 = temp_a2->unk760;
                        temp_a2->unk764 = arg0;
                        if (var_a5 != 0x404) {
                            var_a7 = 2;
                            *(void *)0x1018 = 2;
                            var_a3_2 = 0x404;
                            var_a6 = temp_a2->unk2DEC | 1;
                            temp_a2->unk2DEC = var_a6;
                            goto block_24;
                        }
                    } else {
                        goto block_38;
                    }
                } else {
                    goto block_36;
                }
            } else {
block_13:
                if (temp_a2->unk764 != arg0) {
                    *(void *)0x1018 = 2;
                    temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
                }
                temp_a2->unk764 = arg0;
                if (temp_a2->unk760 != 0x404) {
                    var_a1 = 2;
                    *(void *)0x1018 = 2;
                    var_a3_2 = 0x404;
                    temp_a2->unk2DEC = (u32) (temp_a2->unk2DEC | 1);
block_24:
                    if (temp_a2->unk760 != 0) {
                        temp_a2->unk760 = var_a3_2;
                        return;
                    }
                    goto block_61;
                }
            }
        } else {
            var_t0 = arg0 < 0x40DU;
            if (arg0 != 0) {
block_36:
                if (var_t0 != 0) {
block_37:
                    __glSetError((void *)0x500, (u32) var_a1, (u32) temp_a2, (void *) var_a3, var_a4, var_a5, var_a6, var_a7);
                } else {
block_38:
                    __glSetError((void *)0x502, (u32) var_a1, (u32) temp_a2, (void *) var_a3, var_a4, var_a5, var_a6, var_a7);
                }
            } else {
                if (temp_a2->unk764 != arg0) {
                    *(void *)0x1018 = 2;
                    var_a1 = temp_a2->unk2DEC | 1;
                    temp_a2->unk2DEC = (u32) var_a1;
                }
                var_a4 = temp_a2->unk760;
                temp_a2->unk764 = arg0;
                if (var_a4 != 0) {
                    var_a6 = 2;
                    *(void *)0x1018 = 2;
                    var_a3_2 = 0;
                    var_a5 = temp_a2->unk2DEC | 1;
                    temp_a2->unk2DEC = var_a5;
block_61:
                    temp_a2->unk760 = var_a3_2;
                    __glCrmPassColorMask(temp_a2, var_a1, temp_a2, var_a3_2, var_a4, var_a5, var_a6, var_a7);
                }
            }
        }
    } else {
        __glSetError((void *)0x502, (u32) temp_a2);
    }
}

/*
Decompilation failure in function __glcrmim_ReadBuffer:

Unable to determine jump table for jr instruction at crm_attrib.s line 1156.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glcrmim_Fogfv(f32 *arg0, u32 arg1) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    s32 var_a0;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError((void *)0x500, 0x801U, arg1, (void *)0xB64, 1U, 0xB63U, 0xB61U, 0xB65U);
            break;
        case 0xB65:                                 /* switch 1 */
            var_a0 = (s64) *arg1 << 0;
            switch (var_a0) {                       /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError((void *)0x500, 0x2601U, arg1, (void *)0xB64, 1U, 0xB63U, 0xB61U, 0xB65U);
                break;
            case 0x800:                             /* switch 2 */
                /* fallthrough */
            case 0x801:                             /* switch 2 */
            case 0x2601:                            /* switch 2 */
                temp_s0->unk634 = var_a0;
block_18:
                if (var_a0 == 0x2601) {
                    temp_f4 = temp_s0->unk650;
                    temp_f5 = temp_s0->unk64C;
                    if (temp_f5 != temp_f4) {
                        temp_s0->unk654 = (f32) (temp_s0->unkDD8 / (temp_f4 - temp_f5));
                    } else {
                        temp_s0->unk654 = 0.0f;
                    }
                }
                *(void *)0x1018 = 2;
                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                return;
            }
            break;
        case 0xB62:                                 /* switch 1 */
            temp_f4_2 = *arg1;
            if (!(temp_f4_2 < 0.0f)) {
                var_a0 = temp_s0->unk634;
                temp_s0->unk648 = temp_f4_2;
                goto block_18;
            }
            __glSetError((void *)0x501, 0x2601U, arg1, (void *)1, 0xB65U);
            break;
        case 0xB64:                                 /* switch 1 */
            var_a0 = temp_s0->unk634;
            temp_s0->unk650 = (f32) *arg1;
            goto block_18;
        case 0xB63:                                 /* switch 1 */
            var_a0 = temp_s0->unk634;
            temp_s0->unk64C = (f32) *arg1;
            goto block_18;
        case 0xB61:                                 /* switch 1 */
            var_a0 = temp_s0->unk634;
            temp_s0->unk658 = (f32) ((((1 << (s64) temp_s0->unkCB4) - 1) << 0) & (s32) *arg1);
            goto block_18;
        case 0xB66:                                 /* switch 1 */
            __glClampAndScaleColorf(temp_s0, temp_s0 + 0x638, arg1, 1, 0xB65);
            __glCrmPassFog(temp_s0);
            var_a0 = temp_s0->unk634;
            goto block_18;
        }
    } else {
        __glSetError((void *)0x502, arg1, 1U, (void *)0xB65);
    }
}

void __glcrmim_Fogf(s32 arg0, u32 arg2, s32 arg3, f32 fparg1) {
    f32 sp18;
    s32 var_a3;
    u32 var_a2;

    var_a2 = arg2;
    var_a3 = arg3;
    sp18 = fparg1;
    if ((arg0 != 0xB61) && (arg0 != 0xB62) && (var_a2 = 0xB64, (arg0 != 0xB63)) && (arg0 != 0xB64) && (var_a3 = 0xB65, (arg0 != 0xB65))) {
        __glSetError((void *)0x500, 0xB63U, 0xB64U, (void *)0xB65);
    } else {
        __glcrmim_Fogfv(&sp18, var_a2, var_a3);
    }
}

void __glcrmim_Fogiv(s32 *arg0, u32 arg1) {
    f32 temp_f4;
    f32 temp_f5;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 var_a0;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError((void *)0x500, 0xB62U, arg1, (void *)0xB64, 0x2601U, 1U, 0xB61U, 0xB65U);
            break;
        case 0xB65:                                 /* switch 1 */
            temp_a1 = *arg1;
            var_a0 = temp_a1;
            switch (temp_a1) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError((void *)0x500, temp_a1, arg1, (void *)0xB64, 0x2601U, 1U, 0xB61U, 0xB65U);
                break;
            case 0x800:                             /* switch 2 */
                /* fallthrough */
            case 0x801:                             /* switch 2 */
            case 0x2601:                            /* switch 2 */
                temp_s0->unk634 = temp_a1;
block_18:
                if (var_a0 == 0x2601) {
                    temp_f4 = temp_s0->unk650;
                    temp_f5 = temp_s0->unk64C;
                    if (temp_f5 != temp_f4) {
                        temp_s0->unk654 = (f32) (temp_s0->unkDD8 / (temp_f4 - temp_f5));
                    } else {
                        temp_s0->unk654 = 0.0f;
                    }
                }
                *(void *)0x1018 = 2;
                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                return;
            }
            break;
        case 0xB62:                                 /* switch 1 */
            temp_a1_2 = *arg1;
            if ((s32) temp_a1_2 >= 0) {
                var_a0 = temp_s0->unk634;
                temp_s0->unk648 = (f32) temp_a1_2;
                goto block_18;
            }
            __glSetError((void *)0x501, temp_a1_2, arg1, (void *)0xB64, 0x2601U, 1U, 0xB65U);
            break;
        case 0xB64:                                 /* switch 1 */
            var_a0 = temp_s0->unk634;
            temp_s0->unk650 = (f32) *arg1;
            goto block_18;
        case 0xB63:                                 /* switch 1 */
            var_a0 = temp_s0->unk634;
            temp_s0->unk64C = (f32) *arg1;
            goto block_18;
        case 0xB61:                                 /* switch 1 */
            var_a0 = temp_s0->unk634;
            temp_s0->unk658 = (f32) (*arg1 & ((1 << (s64) temp_s0->unkCB4) - 1));
            goto block_18;
        case 0xB66:                                 /* switch 1 */
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, temp_s0 + 0x638, arg1, 1, 0xB65);
            __glCrmPassFog(temp_s0);
            var_a0 = temp_s0->unk634;
            goto block_18;
        }
    } else {
        __glSetError((void *)0x502, arg1, 1U, (void *)0xB65);
    }
}

void __glcrmim_Fogi(s32 arg0, s32 arg1, u32 arg2, s32 arg3) {
    s32 sp1C;
    s32 var_a3;
    u32 var_a2;

    var_a2 = arg2;
    var_a3 = arg3;
    sp1C = arg1;
    if ((arg0 != 0xB61) && (arg0 != 0xB62) && (var_a2 = 0xB64, (arg0 != 0xB63)) && (var_a3 = 0xB65, (arg0 != 0xB64)) && (arg0 != 0xB65)) {
        __glSetError((void *)0x500, 0xB63U, 0xB64U, (void *)0xB65);
    } else {
        __glcrmim_Fogiv(&sp1C, var_a2, var_a3);
    }
}

void __glcrmim_IndexMask(u32 arg0) {
    s32 temp_a1;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = temp_a3->unk7810 & arg0;
        temp_a3->unk758 = temp_a1;
        __glCrmPassColorMask(temp_a3, (u8) temp_a1, (void *) arg0, (u32) temp_a3);
    } else {
        __glSetError((void *)0x502, arg0, (u32) temp_a3);
    }
}

void __glcrmim_LogicOp(u32 arg0) {
    u32 temp_a1;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a1 = arg0 < 0x1510U;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 < 0x1500U) || (temp_a1 == 0)) {
            __glSetError((void *)0x500, temp_a1, arg0, temp_a3);
        } else {
            temp_a3->unk740 = arg0;
            __glCrmPassLogicOp(temp_a3, temp_a1, arg0, temp_a3);
        }
    } else {
        __glSetError((void *)0x502, temp_a1, arg0, temp_a3);
    }
}

void __glcrmim_ShadeModel(u32 arg0) {
    s32 temp_a2;
    u32 temp_a1;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a1 = arg0 < 0x1D02U;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 < 0x1D00U) || (temp_a1 == 0)) {
            __glSetError((void *)0x500, temp_a1, arg0, temp_a3);
        } else {
            temp_a3->unk570 = arg0;
            *(void *)0x1018 = 2;
            temp_a2 = temp_a3->unk2DEC | 1;
            temp_a3->unk2DEC = temp_a2;
            __glCrmShadeModel(temp_a3, temp_a1, temp_a2, temp_a3, 2);
        }
    } else {
        __glSetError((void *)0x502, temp_a1, arg0, temp_a3);
    }
}

void __glcrmim_PolygonStipple(u32 arg0) {
    s32 temp_a0;
    s32 var_a0;
    void *temp_gp;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x113DEC;
    if (*(s32 *)0x1018 != 1) {
        __glFillImage(temp_s0, 0x20, 0x20, 0x1900, 0x1A00, arg0, temp_s0 + 0x200);
        temp_s0->unk3170(temp_s0);
        var_a0 = temp_gp->unk-5464;
        if (var_a0 < 0) {
            var_a0 = getenv(&sub_0da40000 + 0x4038) != 0;
            temp_gp->unk-5464 = var_a0;
        }
        if (var_a0 != 0) {
            temp_a0 = temp_s0->unk80A0;
            if (temp_a0 & 1) {
                temp_s0->unk80A0 = (s32) (temp_a0 | 6);
            }
        }
        *(void *)0x1018 = 2;
        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
        return;
    }
    __glSetError((void *)0x502, arg0);
}

void __glcrmim_StencilMask(u32 arg0) {
    s16 temp_a4;
    s32 temp_a1;
    s32 temp_a5;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a5 = temp_a3->unkCB0;
        temp_a4 = arg0 & ((1 << temp_a5) - 1);
        temp_a3->unk68A = temp_a4;
        *(void *)0x1018 = 2;
        temp_a1 = temp_a3->unk2DE8 | 2;
        temp_a3->unk2DE8 = temp_a1;
        temp_a3->unk2DEC = (s32) (temp_a3->unk2DEC | 1);
        __glCrmPassStencilMask(temp_a3, temp_a1, 2, temp_a3, temp_a4, temp_a5);
    } else {
        __glSetError((void *)0x502, arg0, (u32) temp_a3, (void *)1);
    }
}

void __glcrmim_StencilFunc(u32 arg0, s16 arg1, s32 arg2) {
    s16 temp_a1;
    s16 temp_a4;
    s16 temp_a6;
    s16 temp_a7;
    s32 temp_a1_2;
    s32 temp_a2;
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 >= 0x200U) && (arg0 < 0x208U)) {
            temp_a5->unk680 = arg0;
            temp_a6 = (1 << temp_a5->unkCB0) - 1;
            temp_a1 = (arg1 < 0) ? 0 : arg1;
            temp_a4 = temp_a6 & arg2;
            temp_a5->unk688 = temp_a4;
            temp_a7 = (temp_a6 >= temp_a1) ? temp_a1 : temp_a6;
            temp_a5->unk686 = temp_a7;
            *(void *)0x1018 = 2;
            temp_a2 = temp_a5->unk2DE8 | 2;
            temp_a5->unk2DE8 = temp_a2;
            temp_a1_2 = temp_a5->unk2DEC | 1;
            temp_a5->unk2DEC = temp_a1_2;
            __glCrmPassStencilMode(temp_a5, temp_a1_2, temp_a2, 2, temp_a4, temp_a5, temp_a6, temp_a7);
        } else {
            __glSetError((void *)0x500, arg0, (u32) temp_a5, (void *)1);
        }
    } else {
        __glSetError((void *)0x502, arg0, (u32) temp_a5, (void *)1);
    }
}

void __glcrmim_StencilOp(u32 arg0, s32 arg1, s32 arg2, u32 arg3, u32 arg6, u32 arg7) {
    s32 temp_a1;
    s32 temp_a2;
    u32 var_a3;
    u32 var_a6;
    u32 var_a7;
    void *temp_a5;

    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a5 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != 0) && (var_a3 = 0x1E00, (arg0 != 0x150A)) && (var_a6 = 0x1E01, (arg0 != 0x1E00)) && (var_a7 = 0x1E02, (arg0 != 0x1E01)) && (arg0 != 0x1E02) && (arg0 != 0x1E03)) {
            __glSetError((void *)0x500, 0x1E00U, arg0, temp_a5, 0x1E01U, 0x1E02U);
        } else if ((arg1 != 0) && (arg1 != 0x150A) && (arg1 != 0x1E00) && (arg1 != 0x1E01) && (arg1 != 0x1E02) && (arg1 != 0x1E03)) {
            __glSetError((void *)0x500, var_a3, arg0, temp_a5, var_a6, var_a7);
        } else if ((arg2 != 0) && (arg2 != 0x150A) && (arg2 != 0x1E00) && (arg2 != 0x1E01) && (arg2 != 0x1E02) && (arg2 != 0x1E03)) {
            __glSetError((void *)0x500, var_a3, arg0, temp_a5, var_a6, var_a7);
        } else {
            temp_a5->unk694 = arg2;
            temp_a5->unk690 = arg1;
            temp_a5->unk68C = arg0;
            *(void *)0x1018 = 2;
            temp_a2 = temp_a5->unk2DE8 | 4;
            temp_a5->unk2DE8 = temp_a2;
            temp_a1 = temp_a5->unk2DEC | 1;
            temp_a5->unk2DEC = temp_a1;
            __glCrmPassStencilMode(temp_a5, temp_a1, temp_a2, 2, (s16) arg0, temp_a5, (s16) var_a6, (s16) var_a7);
        }
    } else {
        __glSetError((void *)0x502, arg0, (u32) temp_a5);
    }
}

void __glcrmim_Scissor(u32 arg0, u32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a6;
    s32 temp_a7;
    u32 temp_a4;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg2 >= 0) && (arg3 >= 0)) {
            temp_a6 = temp_s0->unk9E4;
            temp_a4 = temp_s0->unk9E0;
            temp_a7 = temp_s0->unk9E8;
            if ((temp_s0->unk9DC != arg0) || (temp_a4 != arg1) || (temp_a6 != arg2) || (temp_a7 != arg3)) {
                temp_s0->unk9E8 = arg3;
                temp_s0->unk9E4 = arg2;
                temp_s0->unk9E0 = arg1;
                temp_s0->unk9DC = arg0;
                __glSetError(temp_s0, temp_a4, arg0, (void *) temp_a6, (u32) temp_a7);
                temp_s0->unk2E8C(temp_s0);
            }
        } else {
            __glSetError((void *)0x501, arg0);
        }
    } else {
        __glSetError((void *)0x502, arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x28, 0x2c, 0x38, 0x3c, 0x40, 0x44], gap at: 0x10. */
void __glcrmim_PopAttrib(void) {
    ? (**temp_ra_2)(void *, ?, s32, s32, s32, ?, void *, s32, f32, f32, f32, f32);
    ? (*temp_t9_3)(void *, ?, s32, s32, s32, ?, void *, s32, f32, f32, f32, f32);
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    s32 *temp_ra;
    s32 *temp_t0;
    s32 *temp_t1_2;
    s32 *temp_t3_2;
    s32 *temp_t3_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_9;
    s32 temp_a4_10;
    s32 temp_a4_11;
    s32 temp_a4_4;
    s32 temp_a4_7;
    s32 temp_a5_4;
    s32 temp_a5_9;
    s32 temp_a6_4;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t1;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_a7_4;
    s32 var_at;
    s32 var_ra;
    s32 var_s0;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v1;
    s64 *temp_a3_2;
    s64 *temp_t0_3;
    s64 *temp_t0_5;
    s64 *temp_t0_6;
    s64 *temp_t0_7;
    s64 *temp_v1;
    s64 temp_a3_5;
    s64 temp_a3_6;
    s64 temp_a3_7;
    s64 temp_a3_8;
    s64 temp_a4_3;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a7_2;
    s64 temp_v0;
    s64 temp_v1_2;
    s64 var_ra_2;
    s64 var_t8;
    u32 temp_a0;
    void *temp_a2;
    void *temp_a2_3;
    void *temp_a2_5;
    void *temp_a2_6;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_8;
    void *temp_a4_9;
    void *temp_a5;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a5_7;
    void *temp_a5_8;
    void *temp_a6;
    void *temp_a6_5;
    void *temp_a6_6;
    void *temp_a6_7;
    void *temp_a7;
    void *temp_a7_3;
    void *temp_a7_4;
    void *temp_gp;
    void *temp_s3;
    void *temp_s5;
    void *var_s1;
    void *var_s2;

    temp_s3 = *(void **)0x1010;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x11395C;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = temp_s3->unk3184;
        temp_a1 = (u32) temp_s3->unk3180 < temp_a0;
        if (temp_a1 != 0) {
            temp_s5 = temp_a0->unk-4;
            temp_s6 = temp_s5->unk0;
            temp_s3->unk3184 = (u32) (temp_a0 - 4);
            if (temp_s6 & 0x200) {
                temp_s3->unk670 = (f32) temp_s5->unk5C0;
                temp_s3->unk674 = (f32) temp_s5->unk5C4;
                temp_s3->unk678 = (f32) temp_s5->unk5C8;
                temp_s3->unk67C = (f32) temp_s5->unk5CC;
            }
            var_at = temp_s6 & 1;
            if (temp_s6 & 0x4000) {
                temp_a7 = temp_s5 + 0x670;
                temp_a4 = temp_s3 + 0x720;
                temp_a6 = temp_s3 + 0x71C;
                temp_a5 = temp_s5 + 0x66C;
                var_a0 = 4;
                var_a1 = 0x12;
                temp_s3->unk71C = (s32) temp_s5->unk66C;
                do {
                    var_a1 -= 2;
                    *(var_a0 + temp_a6) = *(var_a0 + temp_a5);
                    temp_t0 = var_a0 + temp_a4;
                    temp_a3 = *(var_a0 + temp_a7);
                    var_a0 += 8;
                    *temp_t0 = temp_a3;
                } while (var_a1 > 0);
                temp_t8 = temp_s3->unk700 & ~0xF;
                temp_s3->unk700 = temp_t8;
                temp_s3->unk700 = (s32) (temp_t8 | (temp_s5->unk650 & 0xF));
                temp_t1 = temp_s3->unk704 & ~0x800;
                temp_s3->unk704 = temp_t1;
                temp_s3->unk2DE8 = (s32) (temp_s3->unk2DE8 | 1);
                temp_s3->unk704 = (s32) (temp_t1 | (temp_s5->unk654 & 0x800));
                __glCrmEnableAlphaTest(temp_s3, var_a1, 8U, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
                __glCrmPassAlphaFunc((s64) temp_s3);
                __glCrmEnableBlend(temp_s3);
                __glCrmPassBlendFunc(temp_s3);
                __glCrmPassBlendColor(temp_s3);
                __glCrmPassColorMask(temp_s3);
                __glCrmEnableDither(temp_s3);
                __glCrmEnableLogicOp(temp_s3);
                __glCrmPassLogicOp(temp_s3);
                var_at = temp_s6 & 1;
            }
            var_ra = temp_s6 & 0x100;
            if (var_at != 0) {
                var_a5 = 2;
                var_a0_2 = 0x22;
                var_a1_2 = 0;
                temp_a4_2 = temp_s3 + 0xB8;
                temp_a2 = temp_s5 + 8;
                do {
                    var_a5 -= 1;
                    var_a0_2 -= 1;
                    temp_v1 = var_a1_2 + temp_a4_2;
                    temp_v0 = *(var_a1_2 + temp_a2);
                    var_a1_2 += 8;
                    *temp_v1 = temp_v0;
                } while (var_a5 != 0);
                do {
                    *(var_a1_2 + temp_a4_2) = *(var_a1_2 + temp_a2);
                    *(var_a1_2 + (temp_a4_2 + 8)) = *(var_a1_2 + (temp_a2 + 8));
                    var_a0_2 -= 4;
                    *(var_a1_2 + (temp_a4_2 + 0x10)) = *(var_a1_2 + (temp_a2 + 0x10));
                    temp_a3_2 = var_a1_2 + (temp_a4_2 + 0x18);
                    temp_v1_2 = *(var_a1_2 + (temp_a2 + 0x18));
                    var_a1_2 += 0x20;
                    *temp_a3_2 = temp_v1_2;
                } while (var_a0_2 > 0);
                var_ra = temp_s6 & 0x100;
            }
            if (var_ra != 0) {
                temp_s3->unk660 = (s64) temp_s5->unk5B0;
                temp_s3->unk668 = (s64) temp_s5->unk5B8;
                temp_at = temp_s3->unk700 & ~0x10;
                temp_s3->unk700 = temp_at;
                temp_s3->unk700 = (s32) (temp_at | (temp_s5->unk650 & 0x10));
                __glCrmPassDepthFunc(temp_s3);
                __glCrmPassDepthMask(temp_s3);
                __glCrmEnableDepthTest(temp_s3);
            }
            temp_a1_2 = temp_s6 & 0x2000;
            if (temp_a1_2 != 0) {
                temp_a6_2 = (s64) temp_s5->unk650;
                temp_s3->unk700 = temp_a6_2;
                temp_a5_2 = temp_s5->unk658;
                temp_s3->unk708 = temp_a5_2;
                temp_a4_3 = temp_s5->unk660;
                temp_s3->unk710 = temp_a4_3;
                temp_a3_3 = temp_s5->unk668;
                temp_s3->unk718 = temp_a3_3;
                *(void *)0x1018 = 2;
                temp_a2_2 = temp_s3->unk2DEC | 0x3E;
                temp_s3->unk2DEC = temp_a2_2;
                temp_s3->unk2E10(temp_s3, temp_a1_2, temp_a2_2, temp_a3_3, temp_a4_3, temp_a5_2, temp_a6_2);
                temp_s3->unk2EE0(temp_s3);
                temp_s3->unk2E8C(temp_s3);
                temp_s3->unk2E84(temp_s3);
                __glCrmEnableAlphaTest(temp_s3);
                __glCrmEnableDepthTest(temp_s3);
                __glCrmEnableDither(temp_s3);
                __glCrmEnableFogTest(temp_s3);
                __glCrmEnableStencilTest(temp_s3);
                __glCrmEnableBlend(temp_s3);
                __glCrmEnableLogicOp(temp_s3);
            }
            // Error: negative shift count
            // At instruction: bgez $a7, .L0d93d834
            if (M2C_ERROR()) {
                var_a1_3 = 0xC;
                var_a0_3 = 0;
                do {
                    var_a1_3 -= 2;
                    *(var_a0_3 + (temp_s3 + 0x78C)) = *(var_a0_3 + (temp_s5 + 0x6DC));
                    temp_t1_2 = var_a0_3 + (temp_s3 + 0x790);
                    temp_t0_2 = *(var_a0_3 + (temp_s5 + 0x6E0));
                    var_a0_3 += 8;
                    *temp_t1_2 = temp_t0_2;
                } while (var_a1_3 > 0);
                temp_t8_2 = temp_s3->unk700 & ~0x800000;
                temp_s3->unk700 = temp_t8_2;
                temp_s3->unk700 = (s32) (temp_t8_2 | (temp_s5->unk650 & 0x800000));
                temp_s3->unk710 = (s32) temp_s5->unk660;
                temp_s3->unk714 = (s32) temp_s5->unk664;
                var_ra = temp_s6 & 0x80;
            }
            var_t9 = temp_s6 & 0x8000;
            if (var_ra != 0) {
                temp_s3->unk634 = (s32) temp_s5->unk584;
                temp_s3->unk638 = (s32) temp_s5->unk588;
                temp_s3->unk63C = (s32) temp_s5->unk58C;
                temp_s3->unk640 = (s32) temp_s5->unk590;
                temp_s3->unk644 = (s32) temp_s5->unk594;
                temp_s3->unk648 = (s32) temp_s5->unk598;
                temp_s3->unk64C = (s32) temp_s5->unk59C;
                temp_s3->unk650 = (s32) temp_s5->unk5A0;
                temp_s3->unk654 = (s32) temp_s5->unk5A4;
                temp_s3->unk658 = (s32) temp_s5->unk5A8;
                temp_t3 = temp_s3->unk700 & ~0x20;
                temp_s3->unk700 = temp_t3;
                temp_s3->unk700 = (s32) (temp_t3 | (temp_s5->unk650 & 0x20));
                __glCrmEnableFogTest(temp_s3, temp_s3 + 0x634);
                __glCrmPassFog(temp_s3);
                var_t9 = temp_s6 & 0x8000;
            }
            var_a1_4 = temp_s6 & 0x40;
            if (var_t9 != 0) {
                temp_s3->unk768 = (s64) temp_s5->unk6B8;
                temp_s3->unk770 = (s64) temp_s5->unk6C0;
                temp_s3->unk778 = (s64) temp_s5->unk6C8;
                temp_s3->unk780 = (s64) temp_s5->unk6D0;
                temp_s3->unk788 = (s32) temp_s5->unk6D8;
                var_a1_4 = temp_s6 & 0x40;
            }
            var_a7 = temp_s6 & 4;
            if (var_a1_4 != 0) {
                temp_s3->unk568 = (s32) temp_s5->unk4B8;
                temp_s3->unk56C = (s32) temp_s5->unk4BC;
                temp_s3->unk570 = (s32) temp_s5->unk4C0;
                temp_s3->unk574 = (s32) temp_s5->unk4C4;
                temp_s3->unk578 = (s32) temp_s5->unk4C8;
                temp_s3->unk57C = (s32) temp_s5->unk4CC;
                temp_s3->unk580 = (s32) temp_s5->unk4D0;
                temp_s3->unk584 = (s32) temp_s5->unk4D4;
                temp_a4_4 = temp_s5->unk4D8;
                temp_s3->unk588 = temp_a4_4;
                temp_s3->unk58C = (s32) temp_s5->unk4DC;
                temp_s3->unk590 = (s64) temp_s5->unk4E0;
                temp_a7_2 = temp_s5->unk4E8;
                temp_s3->unk598 = temp_a7_2;
                temp_a6_3 = temp_s5->unk4F0;
                temp_s3->unk5A0 = temp_a6_3;
                temp_a5_3 = temp_s5->unk4F8;
                temp_s3->unk5A8 = temp_a5_3;
                temp_s3->unk5B0 = (s64) temp_s5->unk500;
                temp_s3->unk5B8 = (s64) temp_s5->unk508;
                temp_s3->unk5C0 = (s64) temp_s5->unk510;
                temp_s3->unk5C8 = (s64) temp_s5->unk518;
                temp_s3->unk5D0 = (s64) temp_s5->unk520;
                temp_s3->unk5D8 = (s64) temp_s5->unk528;
                temp_s3->unk5E0 = (s64) temp_s5->unk530;
                temp_s3->unk5E8 = (s64) temp_s5->unk538;
                temp_s3->unk5F0 = (s64) temp_s5->unk540;
                temp_s3->unk5F8 = (s64) temp_s5->unk548;
                temp_s3->unk600 = (s64) temp_s5->unk550;
                temp_s3->unk608 = (s64) temp_s5->unk558;
                temp_s3->unk610 = (s64) temp_s5->unk560;
                temp_s3->unk618 = (s64) temp_s5->unk568;
                temp_s3->unk620 = (s64) temp_s5->unk570;
                temp_s3->unk628 = (s64) temp_s5->unk578;
                temp_a3_4 = temp_s3->unkE04;
                memcpy(temp_s3->unk630, temp_s5->unk580, temp_a3_4 * 0x74, temp_a3_4, temp_a4_4, temp_a5_3, temp_a6_3, temp_a7_2);
                temp_s3->unkC(temp_s3, temp_s5->unk580);
                temp_s5->unk580 = NULL;
                temp_a5_4 = temp_s3->unk700 & ~0xC0;
                temp_s3->unk700 = temp_a5_4;
                temp_s3->unk700 = (s32) (temp_a5_4 | (temp_s5->unk650 & 0xC0));
                temp_s3->unk708 = (s32) temp_s5->unk658;
                *(void *)0x1018 = 2;
                temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 0x20);
                temp_s3->unk2E10(temp_s3);
                temp_s3->unk2EE0(temp_s3);
                __glCrmShadeModel(temp_s3);
                var_a7 = temp_s6 & 4;
            }
            var_ra_2 = (s64) temp_s6 << 0x2E;
            if (var_a7 != 0) {
                temp_s3->unk1D4 = (f32) temp_s5->unk124;
                temp_s3->unk1D8 = (f32) temp_s5->unk128;
                temp_s3->unk1DC = (s32) temp_s5->unk12C;
                temp_s3->unk1E0 = (u16) temp_s5->unk130;
                temp_s3->unk1E2 = (s16) temp_s5->unk132;
                temp_t1_3 = temp_s3->unk700 & ~0x300;
                temp_s3->unk700 = temp_t1_3;
                temp_s3->unk700 = (s32) (temp_t1_3 | (temp_s5->unk650 & 0x300));
                *(void *)0x1018 = 2;
                temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 2);
                var_ra_2 = (s64) temp_s6 << 0x2E;
            }
            var_v0 = temp_s6 & 0x20;
            if (var_ra_2 < 0) {
                temp_s3->unk7BC = (s32) temp_s5->unk70C;
                var_v0 = temp_s6 & 0x20;
            }
            if (var_v0 != 0) {
                temp_a7_3 = temp_s3 + 0x288;
                temp_a4_5 = temp_s3 + 0x280;
                temp_a5_5 = temp_s5 + 0x1D0;
                var_a2 = 8;
                var_a0_4 = 0xE;
                temp_s3->unk280 = (s64) temp_s5->unk1D0;
                do {
                    var_a0_4 -= 2;
                    *(var_a2 + temp_a4_5) = *(var_a2 + temp_a5_5);
                    temp_t0_3 = var_a2 + temp_a7_3;
                    temp_a3_5 = *(var_a2 + (temp_s5 + 0x1D8));
                    var_a2 += 0x10;
                    *temp_t0_3 = temp_a3_5;
                } while (var_a0_4 > 0);
                *(var_a2 + temp_a4_5) = *(var_a2 + temp_a5_5);
                temp_s3->unk4D8 = (s32) temp_s5->unk428;
                temp_s3->unk4D4 = (s32) temp_s5->unk424;
                __glCopyColorTableScaleBias(temp_s5 + 0x93C, temp_s3 + 0x14FC, var_a2, temp_a3_5, temp_a4_5, temp_a5_5, 0x10, temp_a7_3);
                temp_at_2 = temp_s3->unk700 & ~0x0E000000;
                temp_s3->unk700 = temp_at_2;
                temp_at_3 = (temp_at_2 | (temp_s5->unk650 & 0x0E000000)) & ~0x30000000;
                temp_s3->unk700 = temp_at_3;
                temp_s3->unk700 = (s32) (temp_at_3 | (temp_s5->unk650 & 0x30000000));
                temp_t9 = temp_s3->unk704 & temp_gp->unk-5724;
                temp_s3->unk704 = temp_t9;
                temp_s3->unk704 = (s32) (temp_t9 | (temp_s5->unk654 & 0x2C127));
                *(void *)0x1018 = 2;
                temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 0x10);
            }
            var_a4 = temp_s6 & 8;
            if (temp_s6 & 2) {
                temp_s3->unk1C8 = (f32) temp_s5->unk118;
                temp_s3->unk1CC = (f32) temp_s5->unk11C;
                temp_s3->unk1D0 = (s32) temp_s5->unk120;
                temp_a1_3 = temp_s3->unk700 & ~0x400;
                temp_s3->unk700 = temp_a1_3;
                temp_s3->unk700 = (s32) (temp_a1_3 | (temp_s5->unk650 & 0x400));
                *(void *)0x1018 = 2;
                temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 8);
                var_a4 = temp_s6 & 8;
            }
            var_v1 = temp_s6 & 0x10;
            if (var_a4 != 0) {
                temp_s3->unk1E4 = (s32) temp_s5->unk134;
                temp_s3->unk1E8 = (s32) temp_s5->unk138;
                temp_s3->unk1EC = (s32) temp_s5->unk13C;
                temp_s3->unk1F0 = (s32) temp_s5->unk140;
                temp_s3->unk1F4 = (s32) temp_s5->unk144;
                temp_s3->unk1F8 = (s32) temp_s5->unk148;
                temp_s3->unk1FC = (s32) temp_s5->unk14C;
                temp_t0_4 = temp_s3->unk700 & temp_gp->unk-571C;
                temp_s3->unk700 = temp_t0_4;
                temp_s3->unk700 = (s32) (temp_t0_4 | (temp_s5->unk650 & 0x01003800));
                temp_a6_4 = temp_s3->unk704 & ~0x600;
                temp_s3->unk704 = temp_a6_4;
                temp_s3->unk704 = (s32) (temp_a6_4 | (temp_s5->unk654 & 0x600));
                *(void *)0x1018 = 2;
                temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 4);
                var_v1 = temp_s6 & 0x10;
            }
            var_t8 = (s64) temp_s6 << 0x2C;
            if (var_v1 != 0) {
                temp_a4_6 = temp_s5 + 0x158;
                temp_a2_3 = temp_s3 + 0x208;
                var_a1_5 = 0x10;
                var_a0_5 = 0;
                temp_a5_6 = temp_s3 + 0x200;
                temp_a7_4 = temp_s5 + 0x150;
                do {
                    var_a1_5 -= 2;
                    *(var_a0_5 + temp_a5_6) = *(var_a0_5 + temp_a7_4);
                    temp_t0_5 = var_a0_5 + temp_a2_3;
                    temp_a3_6 = *(var_a0_5 + temp_a4_6);
                    var_a0_5 += 0x10;
                    *temp_t0_5 = temp_a3_6;
                } while (var_a1_5 > 0);
                temp_t1_4 = temp_s3->unk700 & ~0x2000;
                temp_s3->unk700 = temp_t1_4;
                temp_s3->unk700 = (s32) (temp_t1_4 | (temp_s5->unk650 & 0x2000));
                temp_s3->unk3170(temp_s3, var_a1_5, temp_a2_3, temp_a3_6, temp_a4_6, temp_a5_6, 0x10, temp_a7_4);
                *(void *)0x1018 = 2;
                temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 4);
                var_t8 = (s64) temp_s6 << 0x2C;
            }
            var_a3 = temp_s6 & 0x400;
            if (var_t8 < 0) {
                temp_a2_4 = temp_s5->unk92C;
                temp_s3->unk9DC = temp_a2_4;
                temp_a1_4 = temp_s5->unk930;
                temp_s3->unk9E0 = temp_a1_4;
                temp_s3->unk9E4 = (s32) temp_s5->unk934;
                temp_s3->unk9E8 = (s32) temp_s5->unk938;
                temp_at_4 = temp_s3->unk700 & ~0x4000;
                temp_s3->unk700 = temp_at_4;
                temp_s3->unk700 = (s32) (temp_at_4 | (temp_s5->unk650 & 0x4000));
                temp_s3->unk2E8C(temp_s3, temp_a1_4, temp_a2_4, var_a3);
                temp_s3->unk2E84(temp_s3);
                var_a3 = temp_s6 & 0x400;
            }
            if (var_a3 != 0) {
                temp_s3->unk680 = (s64) temp_s5->unk5D0;
                temp_s3->unk688 = (s64) temp_s5->unk5D8;
                temp_s3->unk690 = (s64) temp_s5->unk5E0;
                temp_a4_7 = temp_s3->unk700 & ~0x8000;
                temp_s3->unk700 = temp_a4_7;
                temp_s3->unk2DE8 = (s32) (temp_s3->unk2DE8 | 6);
                temp_s3->unk700 = (s32) (temp_a4_7 | (temp_s5->unk650 & 0x8000));
                __glCrmPassStencilMode(temp_s3);
                __glCrmEnableStencilTest(temp_s3);
                __glCrmPassStencilMask(temp_s3);
            }
            // Error: negative shift count
            // At instruction: bgez $t2, .L0d93e1e0
            if (M2C_ERROR()) {
                temp_s4 = temp_s3->unkE14;
                temp_a5_7 = temp_s3 + 0x7C0;
                temp_a6_5 = temp_s5 + 0x710;
                var_a0_6 = 8;
                var_a1_6 = 0xE;
                temp_s3->unk7C0 = (s64) temp_s5->unk710;
                do {
                    var_a1_6 -= 2;
                    *(var_a0_6 + temp_a5_7) = *(var_a0_6 + temp_a6_5);
                    temp_t0_6 = var_a0_6 + (temp_s3 + 0x7C8);
                    temp_a3_7 = *(var_a0_6 + M2C_ERROR(/* Read from unset register $a2 */));
                    var_a0_6 += 0x10;
                    *temp_t0_6 = temp_a3_7;
                } while (var_a1_6 > 0);
                var_t0 = 3;
                var_a7_2 = 0x1F;
                var_a1_7 = 0;
                temp_a4_8 = temp_s3 + 0x83C;
                temp_a2_5 = temp_s5 + 0x78C;
                *(var_a0_6 + temp_a5_7) = *(var_a0_6 + temp_a6_5);
                do {
                    var_t0 -= 1;
                    var_a7_2 -= 1;
                    temp_t3_2 = var_a1_7 + temp_a4_8;
                    temp_t2 = *(var_a1_7 + temp_a2_5);
                    var_a1_7 += 4;
                    *temp_t3_2 = temp_t2;
                } while (var_t0 != 0);
                var_a0_7 = var_a7_2;
                do {
                    *(var_a1_7 + temp_a4_8) = *(var_a1_7 + temp_a2_5);
                    *(var_a1_7 + (temp_a4_8 + 4)) = *(var_a1_7 + (temp_a2_5 + 4));
                    var_a0_7 -= 4;
                    *(var_a1_7 + (temp_a4_8 + 8)) = *(var_a1_7 + (temp_a2_5 + 8));
                    temp_ra = var_a1_7 + (temp_a4_8 + 0xC);
                    temp_t9_2 = *(var_a1_7 + (temp_a2_5 + 0xC));
                    var_a1_7 += 0x10;
                    *temp_ra = temp_t9_2;
                } while (var_a0_7 > 0);
                temp_a6_6 = temp_s3 + 0x8B8;
                temp_a5_8 = temp_s5 + 0x808;
                var_a0_8 = 8;
                var_a1_8 = 0xE;
                temp_s3->unk8B8 = (s64) temp_s5->unk808;
                do {
                    var_a1_8 -= 2;
                    *(var_a0_8 + temp_a6_6) = *(var_a0_8 + temp_a5_8);
                    temp_t0_7 = var_a0_8 + (temp_s3 + 0x8C0);
                    temp_a3_8 = *(var_a0_8 + (temp_s5 + 0x810));
                    var_a0_8 += 0x10;
                    *temp_t0_7 = temp_a3_8;
                } while (var_a1_8 > 0);
                var_t0_2 = 3;
                var_a1_9 = 0x1F;
                var_a7_3 = 0;
                temp_a4_9 = temp_s3 + 0x934;
                temp_a2_6 = temp_s5 + 0x884;
                *(var_a0_8 + temp_a6_6) = *(var_a0_8 + temp_a5_8);
                do {
                    var_t0_2 -= 1;
                    var_a1_9 -= 1;
                    temp_t3_3 = var_a7_3 + temp_a4_9;
                    temp_t2_2 = *(var_a7_3 + temp_a2_6);
                    var_a7_3 += 4;
                    *temp_t3_3 = temp_t2_2;
                } while (var_t0_2 != 0);
                temp_a6_7 = temp_a4_9 + 8;
                var_a0_9 = var_a7_3;
                do {
                    *(var_a0_9 + temp_a4_9) = *(var_a0_9 + temp_a2_6);
                    *(var_a0_9 + (temp_a4_9 + 4)) = *(var_a0_9 + (temp_a2_6 + 4));
                    var_a1_9 -= 4;
                    *(var_a0_9 + temp_a6_7) = *(var_a0_9 + (temp_a2_6 + 8));
                    temp_ra_2 = var_a0_9 + (temp_a4_9 + 0xC);
                    temp_t9_3 = *(var_a0_9 + (temp_a2_6 + 0xC));
                    var_a0_9 += 0x10;
                    *temp_ra_2 = temp_t9_3;
                } while (var_a1_9 > 0);
                temp_f15 = temp_s5->unk908;
                temp_s3->unk9B8 = temp_f15;
                temp_f14 = temp_s5->unk90C;
                temp_s3->unk9BC = temp_f14;
                temp_f13 = temp_s5->unk910;
                temp_s3->unk9C0 = temp_f13;
                temp_f12 = temp_s5->unk914;
                temp_s3->unk9C4 = temp_f12;
                temp_s3->unk9C8 = (f32) temp_s5->unk918;
                temp_s3->unk9CC = (f32) temp_s5->unk91C;
                temp_s3->unk9D0 = (f32) temp_s5->unk920;
                var_s2 = temp_s3->unk9B0;
                temp_s3->unk9D4 = (f32) temp_s5->unk924;
                temp_s3->unk9D8 = (u8) temp_s5->unk928;
                temp_s3->unk9D9 = (u8) temp_s5->unk929;
                temp_s3->unk9DA = (u8) temp_s5->unk92A;
                temp_s3->unk9DB = (u8) temp_s5->unk92B;
                var_s1 = temp_s5->unk900;
                if (temp_s4 != 0) {
                    temp_a3_9 = temp_s4 & 1;
                    var_s0 = 0;
                    var_a0_10 = temp_s4;
                    if (temp_a3_9 != 0) {
                        temp_a2_7 = var_s1->unkD8;
                        temp_a4_10 = var_s2->unkD8;
                        if (temp_a4_10 != temp_a2_7) {
                            unksp20 = (s64) temp_s4;
                            temp_t9_3(temp_s3, 0, temp_a2_7, temp_a3_9, temp_a4_10, 0x10, temp_a6_7, var_a7_3, temp_f12, temp_f13, temp_f14, temp_f15);
                            var_a0_10 = (s32) unksp20;
                        }
                        var_s1 += 0xE0;
                        var_s2 += 0xE0;
                        var_s0 = 1;
                    }
                    if ((var_a0_10 >> 1) != 0) {
loop_76:
                        temp_a2_8 = var_s1->unkD8;
                        if (var_s2->unkD8 != temp_a2_8) {
                            __glBindTexture(temp_s3, var_s0, temp_a2_8);
                        }
                        temp_a2_9 = var_s1->unk1B8;
                        temp_s0 = var_s0 + 1;
                        if (var_s2->unk1B8 != temp_a2_9) {
                            __glBindTexture(temp_s3, temp_s0, temp_a2_9);
                        }
                        var_s0 = temp_s0 + 1;
                        var_s1 += 0x1C0;
                        var_s2 += 0x1C0;
                        if (temp_s4 != var_s0) {
                            goto loop_76;
                        }
                    }
                }
                memcpy(temp_s3->unk9B0, temp_s5->unk900, temp_s4 * 0xE0);
                temp_a3_10 = temp_s3->unkE18;
                memcpy(temp_s3->unk9B4, temp_s5->unk904, temp_a3_10 * 0x24, temp_a3_10);
                temp_s3->unkC(temp_s3, temp_s5->unk900);
                temp_s5->unk900 = NULL;
                temp_s3->unkC(temp_s3, temp_s5->unk904);
                temp_s5->unk904 = NULL;
                temp_a4_11 = temp_s3->unk700 & 0x3FC0FFFF;
                temp_s3->unk700 = temp_a4_11;
                temp_s3->unk700 = (s32) (temp_a4_11 | (temp_s5->unk650 & 0xC03F0000));
            }
            var_a7_4 = temp_s6 & 0x800;
            if (temp_s6 & 0x1000) {
                temp_a3_11 = temp_s5->unk620;
                temp_s3->unk6D0 = temp_a3_11;
                memcpy(temp_s3->unk6D4, temp_s5->unk624, temp_s3->unkE10 * 0x10, temp_a3_11);
                temp_s3->unkC(temp_s3, temp_s5->unk624);
                temp_s5->unk624 = NULL;
                temp_a5_9 = temp_s3->unk700 & ~0x400000;
                temp_s3->unk700 = temp_a5_9;
                temp_s3->unk700 = (s32) (temp_a5_9 | (temp_s5->unk650 & 0x400000));
                temp_s3->unk70C = (s32) temp_s5->unk65C;
                var_a7_4 = temp_s6 & 0x800;
            }
            if (var_a7_4 != 0) {
                temp_s3->unk698 = (s64) temp_s5->unk5E8;
                temp_s3->unk6A0 = (s64) temp_s5->unk5F0;
                temp_s3->unk6A8 = (s64) temp_s5->unk5F8;
                temp_s3->unk6B0 = (s64) temp_s5->unk600;
                temp_s3->unk6B8 = (s64) temp_s5->unk608;
                temp_s3->unk6C0 = (s64) temp_s5->unk610;
                temp_s3->unk6C8 = (s64) temp_s5->unk618;
                __glUpdateViewportTransform(temp_s3);
            }
            temp_s5->unk0 = 0;
            *(void *)0x1018 = 2;
            temp_s3->unk2DEC = (s32) (temp_s3->unk2DEC | 1);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x504, temp_a1);
    } else {
        __glSetError((void *)0x502);
    }
}

void __glcrmim_Enable(u32 arg0, u32 arg1, u32 arg2, s32 arg3, u32 arg5, u32 arg6) {
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_15;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 var_a3;
    u32 temp_a2_12;
    u32 temp_a2_13;
    u32 temp_a2_14;
    u32 temp_a2_16;
    u32 temp_a2_17;
    u32 temp_a2_18;
    u32 temp_a2_19;
    u32 temp_a2_20;
    u32 temp_a2_21;
    u32 temp_a2_22;
    u32 temp_a2_23;
    u32 temp_a2_24;
    u32 temp_a2_25;
    u32 temp_a2_26;
    u32 temp_a2_27;
    u32 temp_a2_28;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_a4;
    u32 temp_a4_3;
    u32 temp_a4_4;
    u32 temp_a7;
    u32 var_a1;
    u32 var_a2;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;
    void *temp_s0;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a7 = arg0 < 0xC61U;
        if (arg0 >= 0xDB7U) {
            var_a2 = arg0 - 0xDB0;
            if (arg0 >= 0xDB8U) {
                var_a1 = arg0 < 0x8010U;
                var_a3 = arg0 > 0x8010U;
                if (var_a1 == 0) {
                    if (var_a3 == 0) {
                        // Error: negative shift count
                        // At instruction: bltz $a4, .L0d93e494
                        if (M2C_ERROR()) {
                            temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else if (arg0 >= 0x8077U) {
                        if (arg0 > 0x8077U) {
                            if (arg0 >= 0x80D0U) {
                                var_a2 = 0x80D2;
                                if (arg0 <= 0x80D0U) {
                                    temp_a2 = temp_s0->unk704;
                                    if (!(temp_a2 & 1)) {
                                        temp_s0->unk704 = (s32) (temp_a2 | 1);
                                        /* Duplicate return node #15. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    var_a6 = arg0 < 0x80D2U;
                                    var_a5 = 0x80D1;
                                    if (var_a6 == 0) {
                                        var_a7 = arg0 > 0x80D2U;
                                        var_a5 = 0x8568;
                                        if (var_a7 == 0) {
                                            temp_a2_2 = temp_s0->unk704;
                                            if (!(temp_a2_2 & 4)) {
                                                temp_s0->unk704 = (s32) (temp_a2_2 | 4);
                                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                                *(void *)0x1018 = 2;
                                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                            }
                                        } else if (arg0 == 0x8568) {
                                            // Error: negative shift count
                                            // At instruction: bltz $a6, .L0d93e494
                                            if (M2C_ERROR()) {
                                                temp_s0->unk7DD2 = 1;
                                                temp_s0->unk704 = (s32) (var_a3 | temp_s0->unk704);
                                            }
                                        } else {
                                            goto block_104;
                                        }
                                    } else if (arg0 == 0x80D1) {
                                        temp_a2_3 = temp_s0->unk704;
                                        if (!(temp_a2_3 & 2)) {
                                            temp_s0->unk704 = (s32) (temp_a2_3 | 2);
                                            /* Duplicate return node #15. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                        }
                                    } else {
                                        goto block_104;
                                    }
                                }
                            } else {
                                var_a2 = 0x8094;
                                var_a7 = arg0 < 0x8094U;
                                if (var_a7 == 0) {
                                    if (arg0 <= 0x8094U) {
                                        temp_a2_4 = temp_s0->unk704;
                                        if (!(temp_a2_4 & 0x20)) {
                                            temp_s0->unk7DD1 = 1;
                                            temp_s0->unk704 = (s32) (temp_a2_4 | 0x20);
                                        }
                                    } else if (arg0 == 0x80BC) {
                                        temp_a2_5 = temp_s0->unk700;
                                        if (!(0x80000000 & temp_a2_5)) {
                                            temp_s0->unk700 = (u32) (0x80000000 | temp_a2_5);
                                            /* Duplicate return node #15. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                        }
                                    } else {
                                        goto block_104;
                                    }
                                } else {
                                    var_a2 = 0x8079;
                                    if (arg0 >= 0x8079U) {
                                        if (arg0 <= 0x8079U) {
                                            temp_s0->unk14EC = (s32) (temp_s0->unk14EC | 0x10);
                                            temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 | 0x08000000);
                                            return;
                                        }
                                        goto block_104;
                                    }
                                    if (arg0 == 0x8078) {
                                        temp_s0->unk14EC = (s32) (temp_s0->unk14EC | 4);
                                        temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 | 0x07F00000);
                                        return;
                                    }
                                    goto block_104;
                                }
                            }
                        } else {
                            temp_s0->unk14EC = (s32) (temp_s0->unk14EC | 8);
                            temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 | 0xF0000000);
                        }
                    } else {
                        var_a5 = arg0 < 0x8037U;
                        var_a6 = arg0 > 0x8037U;
                        if (var_a5 == 0) {
                            var_a2 = 0x8075;
                            if (var_a6 == 0) {
                                // Error: negative shift count
                                // At instruction: bltz $a7, .L0d93e494
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                                    /* Duplicate return node #15. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                if (arg0 >= 0x8075U) {
                                    if (arg0 > 0x8075U) {
                                        if (arg0 == 0x8076) {
                                            temp_s0->unk14EC = (s32) (temp_s0->unk14EC | 2);
                                            temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 | 0xFF000);
                                            return;
                                        }
                                        goto block_104;
                                    }
                                    temp_s0->unk14EC = (s32) (temp_s0->unk14EC | 1);
                                    temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 | 0xF00);
                                    return;
                                }
                                var_a2 = 0x8074;
                                if (arg0 >= 0x8074U) {
                                    if (arg0 <= 0x8074U) {
                                        temp_s0->unk14EC = (s32) (temp_s0->unk14EC | 0x20);
                                        temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 | 0xFF);
                                        return;
                                    }
                                    goto block_104;
                                }
                                if (arg0 == 0x806F) {
                                    // Error: negative shift count
                                    // At instruction: bltz $v1, .L0d93e494
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                        /* Duplicate return node #15. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_104;
                                }
                            }
                        } else if (arg0 >= 0x8024U) {
                            var_a2 = 0x802E;
                            if (arg0 <= 0x8024U) {
                                // Error: negative shift count
                                // At instruction: bltz $v1, .L0d93e494
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                    /* Duplicate return node #15. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else if (arg0 == 0x802E) {
                                // Error: negative shift count
                                // At instruction: bltz $a3, .L0d93e494
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (((s64) temp_a2_6 << 0x22) | temp_a2_6);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                    /* Duplicate return node #15. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                goto block_104;
                            }
                        } else {
                            var_a2 = 0x8012;
                            var_a1 = arg0 < 0x8012U;
                            var_a3 = arg0 > 0x8012U;
                            if (var_a1 == 0) {
                                if (var_a3 == 0) {
                                    // Error: negative shift count
                                    // At instruction: bltz $a4, .L0d93e494
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                        /* Duplicate return node #15. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_104;
                                }
                            } else {
                                var_a6 = 0x8011;
                                if (arg0 == 0x8011) {
                                    // Error: negative shift count
                                    // At instruction: bltz $a7, .L0d93e494
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                        /* Duplicate return node #15. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_104;
                                }
                            }
                        }
                    }
                } else if (arg0 >= 0x3004U) {
                    var_a3 = arg0 - 0x3000;
                    if (arg0 >= 0x3005U) {
                        if (arg0 >= 0x4003U) {
                            var_a2 = arg0 < 0x4006U;
                            if (arg0 >= 0x4004U) {
                                if (var_a2 == 0) {
                                    var_a3 = arg0 - 0x4000;
                                    if (arg0 >= 0x4007U) {
                                        var_a3 = arg0 - 0x4000;
                                        if (arg0 != 0x4007) {
                                            goto block_103;
                                        }
                                    }
                                    goto block_116;
                                }
                                if (arg0 >= 0x4005U) {
                                    var_a3 = arg0 - 0x4000;
                                    if (var_a2 == 0) {
                                        goto block_103;
                                    }
                                    goto block_116;
                                }
                                var_a2 = 0x4004;
                                var_a3 = arg0 - 0x4000;
                                if (arg0 != 0x4004) {
                                    goto block_103;
                                }
                                goto block_116;
                            }
                            goto block_115;
                        }
                        var_a2 = arg0 < 0x4001U;
                        var_a7 = arg0 < 0x4000U;
                        if (var_a2 == 0) {
                            var_a5 = arg0 < 0x4002U;
                            var_a3 = arg0 - 0x4000;
                            if (var_a5 == 0) {
                                var_a6 = 0x4002;
                                var_a3 = arg0 - 0x4000;
                                if (arg0 != 0x4002) {
                                    goto block_103;
                                }
                            }
                            goto block_116;
                        }
                        if (var_a7 == 0) {
                            if (var_a2 != 0) {
block_115:
                                var_a3 = arg0 - 0x4000;
block_116:
                                temp_a2_7 = temp_s0->unk708;
                                temp_a3 = 1 << var_a3;
                                if (!(temp_a3 & temp_a2_7)) {
                                    temp_s0->unk708 = (s32) (temp_a3 | temp_a2_7);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x20);
                                }
                            } else {
                                goto block_104;
                            }
                        } else {
                            var_a3 = arg0 - 0x3000;
                            if (arg0 != 0x3005) {
                                goto block_103;
                            }
                            goto block_75;
                        }
                    } else {
                        goto block_75;
                    }
                } else {
                    var_a2 = arg0 < 0xDE1U;
                    if (arg0 >= 0x2A02U) {
                        var_a3 = arg0 < 0x2A03U;
                        var_a2 = arg0 < 0x3002U;
                        if (var_a3 != 0) {
                            temp_s0->unk704 = (s32) (temp_s0->unk704 | 0x400);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            return;
                        }
                        if (var_a2 == 0) {
                            var_a3 = arg0 - 0x3000;
                            if (arg0 >= 0x3003U) {
                                var_a3 = arg0 - 0x3000;
                                if (arg0 != 0x3003) {
                                    goto block_103;
                                }
                            }
                            goto block_75;
                        }
                        if (arg0 >= 0x3001U) {
                            if (var_a2 != 0) {
                                goto block_74;
                            }
                            goto block_104;
                        }
                        if (arg0 != 0x3000) {
                            goto block_103;
                        }
block_74:
                        var_a3 = arg0 - 0x3000;
block_75:
                        temp_a2_8 = temp_s0->unk70C;
                        temp_a3_2 = 1 << var_a3;
                        if (!(temp_a3_2 & temp_a2_8)) {
                            temp_s0->unk70C = (s32) (temp_a3_2 | temp_a2_8);
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else {
                        var_a5 = arg0 < 0xDE2U;
                        if (var_a2 == 0) {
                            var_a7 = 0x2A01;
                            if (var_a5 != 0) {
                                // Error: negative shift count
                                // At instruction: bltz $a6, .L0d93e494
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                    /* Duplicate return node #15. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                if (arg0 == 0x2A01) {
                                    temp_s0->unk704 = (s32) (temp_s0->unk704 | 0x200);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                                    /* Duplicate return node #15. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    return;
                                }
                                goto block_104;
                            }
                        } else {
                            var_a7 = arg0 < 0xDE0U;
                            if (var_a7 == 0) {
                                if (var_a2 != 0) {
                                    // Error: negative shift count
                                    // At instruction: bltz $t0, .L0d93e494
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                        /* Duplicate return node #15. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_104;
                                }
                            } else {
                                if (arg0 == 0xDB8) {
                                    var_a2 = arg0 - 0xDB0;
                                    goto block_13;
                                }
                                goto block_104;
                            }
                        }
                    }
                }
            } else {
                goto block_13;
            }
        } else if (var_a7 == 0) {
            if (arg0 < 0xC62U) {
                // Error: negative shift count
                // At instruction: bltz $t1, .L0d93e494
                if (M2C_ERROR()) {
                    temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    *(void *)0x1018 = 2;
                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                }
            } else {
                var_a6 = arg0 < 0xD91U;
                if (arg0 >= 0xD96U) {
                    var_a1 = arg0 < 0xD97U;
                    var_a3 = arg0 - 0xD90;
                    if (var_a1 == 0) {
                        var_a2 = arg0 < 0xDB2U;
                        if (var_a2 == 0) {
                            var_a3 = arg0 < 0xDB3U;
                            var_a2 = arg0 - 0xDB0;
                            if (var_a3 == 0) {
                                temp_a2_9 = arg0 < 0xDB5U;
                                if (temp_a2_9 == 0) {
                                    var_a5 = arg0 < 0xDB6U;
                                    var_a2 = arg0 - 0xDB0;
                                    if (var_a5 == 0) {
                                        var_a6 = 0xDB6;
                                        var_a2 = arg0 - 0xDB0;
                                        if (arg0 != 0xDB6) {
                                            goto block_103;
                                        }
                                    }
                                    goto block_13;
                                }
                                var_a3 = 0xDB3;
                                if (arg0 >= 0xDB4U) {
                                    var_a2 = arg0 - 0xDB0;
                                    if (temp_a2_9 == 0) {
                                        goto block_103;
                                    }
                                    goto block_13;
                                }
                                var_a2 = arg0 - 0xDB0;
                                if (arg0 != 0xDB3) {
                                    goto block_103;
                                }
                                goto block_13;
                            }
                            goto block_13;
                        }
                        if (arg0 >= 0xDB0U) {
                            var_a2 = arg0 - 0xDB0;
                            if (arg0 >= 0xDB1U) {
                                var_a2 = arg0 - 0xDB0;
                                if (arg0 != 0xDB1) {
                                    goto block_103;
                                }
                            }
block_13:
                            temp_a3_3 = temp_s0->unk714;
                            temp_a2_10 = (1 << var_a2) & 0xFFFF;
                            if (!(temp_a3_3 & temp_a2_10)) {
                                temp_s0->unk714 = (s32) (temp_a3_3 | temp_a2_10);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            if (arg0 >= 0xD98U) {
                                var_a3 = arg0 - 0xD90;
                                if (arg0 >= 0xD99U) {
                                    goto block_103;
                                }
                                goto block_66;
                            }
                            var_a3 = arg0 - 0xD90;
                            if (arg0 != 0xD97) {
                                goto block_103;
                            }
                            goto block_66;
                        }
                    } else {
                        goto block_66;
                    }
                } else {
                    if (var_a6 == 0) {
                        var_a7 = arg0 < 0xD92U;
                        var_a3 = arg0 - 0xD90;
                        if (var_a7 == 0) {
                            var_a2 = arg0 < 0xD94U;
                            if (var_a2 == 0) {
                                var_a3 = arg0 - 0xD90;
                                if (arg0 >= 0xD95U) {
                                    var_a3 = arg0 - 0xD90;
                                    if (arg0 != 0xD95) {
                                        goto block_103;
                                    }
                                }
                                goto block_66;
                            }
                            if (arg0 >= 0xD93U) {
                                var_a3 = arg0 - 0xD90;
                                if (var_a2 == 0) {
                                    goto block_103;
                                }
                                goto block_66;
                            }
                            var_a3 = arg0 - 0xD90;
                            if (arg0 != 0xD92) {
block_103:
                                goto block_104;
                            }
                            goto block_66;
                        }
                        goto block_66;
                    }
                    if (arg0 >= 0xD80U) {
                        var_a5 = 0xD90;
                        if (arg0 < 0xD81U) {
                            // Error: negative shift count
                            // At instruction: bltz $t2, .L0d93e494
                            if (M2C_ERROR()) {
                                temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else if (arg0 == 0xD90) {
                            var_a3 = arg0 - 0xD90;
block_66:
                            temp_a2_11 = temp_s0->unk710;
                            temp_a3_4 = (1 << var_a3) & 0xFFFF;
                            if (!(temp_a2_11 & temp_a3_4)) {
                                temp_s0->unk710 = (s32) (temp_a2_11 | temp_a3_4);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            goto block_104;
                        }
                    } else if (arg0 >= 0xC63U) {
                        if (arg0 < 0xC64U) {
                            // Error: negative shift count
                            // At instruction: bltz $v0, .L0d93e494
                            if (M2C_ERROR()) {
                                temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            goto block_104;
                        }
                    } else if (arg0 == 0xC62) {
                        // Error: negative shift count
                        // At instruction: bltz $at, .L0d93e494
                        if (M2C_ERROR()) {
                            temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else {
                        goto block_104;
                    }
                }
            }
        } else {
            var_a6 = arg0 < 0xB71U;
            var_a7 = arg0 < 0xB42U;
            if (var_a6 == 0) {
                var_a7 = arg0 < 0xB72U;
                if (var_a7 != 0) {
                    temp_a2_12 = temp_s0->unk700;
                    if (!(temp_a2_12 & 0x10)) {
                        temp_s0->unk700 = (u32) (temp_a2_12 | 0x10);
                        __glCrmEnableDepthTest(temp_s0, temp_a2_12, 1, var_a6, var_a7);
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                    }
                } else if (arg0 >= 0xBE2U) {
                    var_a1 = arg0 < 0xC11U;
                    if (arg0 < 0xBE3U) {
                        temp_a2_13 = temp_s0->unk700;
                        if (!(temp_a2_13 & 2)) {
                            temp_s0->unk700 = (u32) (temp_a2_13 | 2);
                            __glCrmEnableBlend(temp_s0, var_a1, temp_a2_13, 1U, var_a6, var_a7);
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else if (var_a1 == 0) {
                        var_a2 = arg0 < 0xC12U;
                        if (var_a2 != 0) {
                            temp_a2_14 = temp_s0->unk700;
                            temp_a3_5 = temp_a2_14 & 0x4000;
                            if (temp_a3_5 == 0) {
                                temp_a4 = temp_a2_14 | 0x4000;
                                temp_s0->unk700 = temp_a4;
                                __glSetError(temp_s0, var_a1, temp_a2_14, (void *) temp_a3_5, temp_a4, var_a6, var_a7);
                                temp_s0->unk2E84(temp_s0);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else if (arg0 == 0xC60) {
                            // Error: negative shift count
                            // At instruction: bltz $v1, .L0d93e494
                            if (M2C_ERROR()) {
                                temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            goto block_104;
                        }
                    } else {
                        var_a2 = 0xBF1;
                        if (arg0 >= 0xBF2U) {
                            var_a1 = arg0 < 0xBF3U;
                            if (var_a1 != 0) {
                                temp_a2_15 = temp_s0->unk704;
                                temp_a3_6 = temp_a2_15 & 0x800;
                                if (temp_a3_6 == 0) {
                                    temp_a4_2 = temp_a2_15 | 0x800;
                                    temp_s0->unk704 = temp_a4_2;
                                    __glcrmim_BlendEquationEXT(0xBF1, var_a1, temp_a2_15, temp_a3_6, temp_a4_2, var_a6, var_a7);
                                    __glCrmEnableBlend(temp_s0);
                                    /* Duplicate return node #15. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                goto block_104;
                            }
                        } else if (arg0 == 0xBF1) {
                            temp_a2_16 = temp_s0->unk700;
                            temp_a3_7 = temp_a2_16 & 4;
                            if (temp_a3_7 == 0) {
                                temp_a4_3 = temp_a2_16 | 4;
                                temp_s0->unk700 = temp_a4_3;
                                __glCrmEnableLogicOp(temp_s0, var_a1, temp_a2_16, temp_a3_7, temp_a4_3, var_a6, var_a7);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            goto block_104;
                        }
                    }
                } else {
                    var_a5 = arg0 < 0xBA1U;
                    if (arg0 >= 0xBC0U) {
                        var_a5 = 0xBD0;
                        if (arg0 < 0xBC1U) {
                            temp_a2_17 = temp_s0->unk700;
                            if (!(temp_a2_17 & 1)) {
                                temp_s0->unk700 = (u32) (temp_a2_17 | 1);
                                __glCrmEnableAlphaTest(temp_s0, (s32) temp_a2_17, 1U, 0xBD0, (void *) var_a6, (void *) var_a7);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else if (arg0 == 0xBD0) {
                            temp_a2_18 = temp_s0->unk700;
                            temp_a6 = temp_a2_18 & 8;
                            if (temp_a6 == 0) {
                                temp_a7 = temp_a2_18 | 8;
                                temp_s0->unk700 = temp_a7;
                                __glCrmEnableDither(temp_s0, temp_a2_18, 1, 0xBD0, temp_a6, temp_a7);
                            }
                        } else {
                            goto block_104;
                        }
                    } else if (var_a5 == 0) {
                        var_a6 = arg0 < 0xBA2U;
                        if (var_a6 != 0) {
                            // Error: negative shift count
                            // At instruction: bltz $a7, .L0d93e494
                            if (M2C_ERROR()) {
                                temp_s0->unk700 = (u32) (var_a3 | temp_s0->unk700);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            goto block_104;
                        }
                    } else if (arg0 == 0xB90) {
                        temp_a2_19 = temp_s0->unk700;
                        if (!(temp_a2_19 & 0x8000)) {
                            temp_s0->unk700 = (u32) (temp_a2_19 | 0x8000);
                            __glCrmEnableStencilTest(temp_s0, temp_a2_19, 1, var_a5, var_a6, var_a7);
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else {
                        goto block_104;
                    }
                }
            } else if (var_a7 == 0) {
                if (arg0 < 0xB43U) {
                    temp_a2_20 = temp_s0->unk700;
                    if (!(temp_a2_20 & 0x2000)) {
                        temp_s0->unk700 = (u32) (temp_a2_20 | 0x2000);
                        *(void *)0x1018 = 2;
                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                    }
                } else if (arg0 >= 0xB57U) {
                    var_a1 = arg0 < 0xB58U;
                    if (var_a1 != 0) {
                        temp_a2_21 = temp_s0->unk700;
                        temp_a3_8 = temp_a2_21 & 0x80;
                        if (temp_a3_8 == 0) {
                            temp_a4_4 = temp_a2_21 | 0x80;
                            temp_s0->unk700 = temp_a4_4;
                            __glCrmEnableAlphaTest(temp_s0, (s32) var_a1, temp_a2_21, temp_a3_8, (void *) temp_a4_4, (void *) var_a6, (void *) var_a7);
                            temp_s0->unk2EE0(temp_s0);
                        }
                    } else if (arg0 == 0xB60) {
                        temp_a2_22 = temp_s0->unk700;
                        if (!(temp_a2_22 & 0x20)) {
                            temp_s0->unk700 = (u32) (temp_a2_22 | 0x20);
                            __glCrmEnableFogTest(temp_s0, (void *) var_a1, temp_a2_22, 1, var_a6, var_a7);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else {
                        goto block_104;
                    }
                } else if (arg0 >= 0xB50U) {
                    if (arg0 < 0xB51U) {
                        temp_a2_23 = temp_s0->unk700;
                        if (!(temp_a2_23 & 0x40)) {
                            temp_s0->unk700 = (u32) (temp_a2_23 | 0x40);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x20);
                            __glSetError(temp_s0, temp_a2_23, 1U, (void *) var_a6, var_a7);
                            temp_s0->unk2EE0(temp_s0);
                        }
                    } else {
                        goto block_104;
                    }
                } else if (arg0 == 0xB44) {
                    temp_a2_24 = temp_s0->unk700;
                    if (!(temp_a2_24 & 0x1000)) {
                        temp_s0->unk700 = (u32) (temp_a2_24 | 0x1000);
                        *(void *)0x1018 = 2;
                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                    }
                } else {
                    goto block_104;
                }
            } else {
                var_a5 = arg0 < 0xB20U;
                if (arg0 >= 0xB24U) {
                    if (arg0 < 0xB25U) {
                        temp_a2_25 = temp_s0->unk700;
                        if (!(temp_a2_25 & 0x100)) {
                            temp_s0->unk700 = (u32) (temp_a2_25 | 0x100);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 2);
                        }
                    } else if (arg0 == 0xB41) {
                        temp_a2_26 = temp_s0->unk700;
                        if (!(temp_a2_26 & 0x800)) {
                            temp_s0->unk700 = (u32) (temp_a2_26 | 0x800);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                        }
                    } else {
                        goto block_104;
                    }
                } else {
                    var_a2 = 0xB10;
                    if (var_a5 == 0) {
                        var_a6 = arg0 < 0xB21U;
                        if (var_a6 != 0) {
                            temp_a2_27 = temp_s0->unk700;
                            if (!(temp_a2_27 & 0x200)) {
                                temp_s0->unk700 = (u32) (temp_a2_27 | 0x200);
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 2);
                            }
                        } else {
                            goto block_104;
                        }
                    } else if (arg0 == 0xB10) {
                        temp_a2_28 = temp_s0->unk700;
                        if (!(temp_a2_28 & 0x400)) {
                            temp_s0->unk700 = (u32) (temp_a2_28 | 0x400);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 8);
                        }
                    } else {
block_104:
                        __glSetError((void *)0x500, var_a1, var_a2, (void *) var_a3, 1U, var_a5, var_a6, var_a7);
                    }
                }
            }
        }
    } else {
        __glSetError((void *)0x502, 1U);
    }
}

void __glcrmim_Disable(u32 arg0, u32 arg1, u32 arg2, s32 arg3, u32 arg5, u32 arg6) {
    s32 temp_a2_10;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_7;
    s32 temp_a6;
    s32 var_a3;
    u32 temp_a2;
    u32 temp_a2_11;
    u32 temp_a2_12;
    u32 temp_a2_13;
    u32 temp_a2_14;
    u32 temp_a2_15;
    u32 temp_a2_16;
    u32 temp_a2_17;
    u32 temp_a2_18;
    u32 temp_a2_19;
    u32 temp_a2_20;
    u32 temp_a2_21;
    u32 temp_a2_22;
    u32 temp_a2_23;
    u32 temp_a2_24;
    u32 temp_a2_25;
    u32 temp_a2_26;
    u32 temp_a2_27;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_a3_6;
    u32 temp_a4;
    u32 temp_a4_2;
    u32 temp_a4_3;
    u32 temp_a7;
    u32 var_a1;
    u32 var_a2;
    u32 var_a4;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;
    void *temp_s0;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a4 = 1;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a7 = arg0 < 0xC61U;
        if (arg0 >= 0xDB7U) {
            if (arg0 >= 0xDB8U) {
                var_a1 = arg0 < 0x8010U;
                if (var_a1 == 0) {
                    var_a3 = arg0 > 0x8010U;
                    if (var_a3 == 0) {
                        // Error: negative shift count
                        // At instruction: bltz $a4, .L0d93f344
                        if (M2C_ERROR()) {
                            temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                            /* Duplicate return node #14. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else if (arg0 >= 0x8077U) {
                        if (arg0 > 0x8077U) {
                            if (arg0 >= 0x80D0U) {
                                var_a2 = 0x80D2;
                                if (arg0 <= 0x80D0U) {
                                    temp_a2 = temp_s0->unk704;
                                    if (!(~temp_a2 & 1)) {
                                        temp_s0->unk704 = (u32) (temp_a2 & ~1);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    switch (arg0) { /* irregular */
                                    default:
                                        temp_a2_2 = temp_s0->unk704;
                                        if (!(~temp_a2_2 & 4)) {
                                            temp_s0->unk704 = (u32) (temp_a2_2 & ~4);
                                            /* Duplicate return node #14. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                            return;
                                        }
                                        break;
                                    case 0x80D1:
                                        temp_a2_3 = temp_s0->unk704;
                                        if (!(~temp_a2_3 & 2)) {
                                            temp_s0->unk704 = (u32) (temp_a2_3 & ~2);
                                            /* Duplicate return node #14. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                            return;
                                        }
                                        break;
                                    case 0x8568:
                                        // Error: negative shift count
                                        // At instruction: bltz $v0, .L0d93f344
                                        if (M2C_ERROR()) {
                                            temp_s0->unk7DD2 = 0;
                                            temp_s0->unk704 = (u32) (temp_s0->unk704 & ~arg0);
                                            return;
                                        }
                                        break;
                                    }
                                }
                            } else {
                                var_a2 = 0x8094;
                                var_a7 = arg0 < 0x8094U;
                                if (var_a7 == 0) {
                                    if (arg0 <= 0x8094U) {
                                        temp_a2_4 = temp_s0->unk704;
                                        if (!(~temp_a2_4 & 0x20)) {
                                            temp_s0->unk7DD1 = 0;
                                            temp_s0->unk704 = (u32) (temp_a2_4 & ~0x20);
                                        }
                                    } else if (arg0 == 0x80BC) {
                                        temp_a2_5 = temp_s0->unk700;
                                        if (!(~temp_a2_5 & 0x80000000)) {
                                            temp_s0->unk700 = (u32) (temp_a2_5 & 0x7FFFFFFF);
                                            /* Duplicate return node #14. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                        }
                                    } else {
                                        goto block_101;
                                    }
                                } else {
                                    var_a2 = 0x8079;
                                    if (arg0 >= 0x8079U) {
                                        if (arg0 <= 0x8079U) {
                                            temp_s0->unk14EC = (s32) (temp_s0->unk14EC & ~0x10);
                                            temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 & ~0x08000000);
                                            return;
                                        }
                                        goto block_101;
                                    }
                                    var_a4 = 0x8078;
                                    if (arg0 == 0x8078) {
                                        temp_s0->unk14EC = (s32) (temp_s0->unk14EC & ~4);
                                        temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 & ~0x07F00000);
                                        return;
                                    }
                                    goto block_101;
                                }
                            }
                        } else {
                            temp_s0->unk14EC = (s32) (temp_s0->unk14EC & ~8);
                            temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 & 0x0FFFFFFF);
                        }
                    } else {
                        var_a5 = arg0 < 0x8037U;
                        var_a6 = arg0 > 0x8037U;
                        if (var_a5 == 0) {
                            var_a2 = 0x8075;
                            if (var_a6 == 0) {
                                // Error: negative shift count
                                // At instruction: bltz $a7, .L0d93f344
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                if (arg0 >= 0x8075U) {
                                    if (arg0 > 0x8075U) {
                                        if (arg0 == 0x8076) {
                                            temp_s0->unk14EC = (s32) (temp_s0->unk14EC & ~2);
                                            temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 & ~0xFF000);
                                            return;
                                        }
                                        goto block_101;
                                    }
                                    temp_s0->unk14EC = (s32) (temp_s0->unk14EC & ~1);
                                    temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 & ~0xF00);
                                    return;
                                }
                                var_a2 = 0x8074;
                                var_a1 = arg0 < 0x8074U;
                                var_a3 = arg0 > 0x8074U;
                                if (var_a1 == 0) {
                                    if (var_a3 == 0) {
                                        temp_s0->unk14EC = (s32) (temp_s0->unk14EC & ~0x20);
                                        temp_s0->unk14E0 = (s32) (temp_s0->unk14E0 & ~0xFF);
                                        return;
                                    }
                                    goto block_101;
                                }
                                if (arg0 == 0x806F) {
                                    // Error: negative shift count
                                    // At instruction: bltz $t2, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            }
                        } else {
                            var_a2 = 0x8024;
                            if (arg0 >= 0x8024U) {
                                if (arg0 <= 0x8024U) {
                                    // Error: negative shift count
                                    // At instruction: bltz $v1, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else if (arg0 == 0x802E) {
                                    // Error: negative shift count
                                    // At instruction: bltz $t1, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            } else {
                                var_a2 = 0x8012;
                                var_a1 = arg0 > 0x8012U;
                                if (arg0 >= 0x8012U) {
                                    if (var_a1 == 0) {
                                        // Error: negative shift count
                                        // At instruction: bltz $a3, .L0d93f344
                                        if (M2C_ERROR()) {
                                            temp_s0->unk700 = (u32) (temp_a2_6 & ~(~temp_a2_6 << 0x24));
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                            /* Duplicate return node #14. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                        }
                                    } else {
                                        goto block_101;
                                    }
                                } else if (arg0 == 0x8011) {
                                    // Error: negative shift count
                                    // At instruction: bltz $t9, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x10);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            }
                        }
                    }
                } else if (arg0 >= 0x3004U) {
                    if (arg0 >= 0x3005U) {
                        if (arg0 >= 0x4003U) {
                            var_a2 = arg0 < 0x4006U;
                            if (arg0 >= 0x4004U) {
                                if (var_a2 == 0) {
                                    if ((arg0 >= 0x4007U) && (arg0 != 0x4007)) {
                                        goto block_100;
                                    }
                                    goto block_112;
                                }
                                if (arg0 >= 0x4005U) {
                                    if (var_a2 == 0) {
                                        goto block_100;
                                    }
                                    goto block_112;
                                }
                                if (arg0 != 0x4004) {
                                    goto block_100;
                                }
                                goto block_112;
                            }
                            goto block_112;
                        }
                        var_a2 = arg0 < 0x4001U;
                        var_a5 = arg0 < 0x4002U;
                        if (var_a2 == 0) {
                            var_a6 = 0x4002;
                            if ((var_a5 == 0) && (arg0 != 0x4002)) {
                                goto block_100;
                            }
                            goto block_112;
                        }
                        var_a7 = arg0 < 0x4000U;
                        var_a1 = 0x3005;
                        if (var_a7 == 0) {
                            if (var_a2 != 0) {
block_112:
                                temp_a2_7 = temp_s0->unk708;
                                temp_a3 = 1 << (arg0 - 0x4000);
                                if (!(temp_a3 & ~temp_a2_7)) {
                                    temp_s0->unk708 = (s32) (temp_a2_7 & ~temp_a3);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x20);
                                }
                            } else {
                                goto block_101;
                            }
                        } else {
                            if (arg0 != 0x3005) {
                                goto block_100;
                            }
                            goto block_72;
                        }
                    } else {
                        goto block_72;
                    }
                } else {
                    var_a3 = arg0 < 0x2A03U;
                    if (arg0 >= 0x2A02U) {
                        var_a2 = arg0 < 0x3002U;
                        if (var_a3 != 0) {
                            temp_s0->unk704 = (u32) (temp_s0->unk704 & ~0x400);
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                            /* Duplicate return node #14. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            return;
                        }
                        if (var_a2 == 0) {
                            if ((arg0 >= 0x3003U) && (arg0 != 0x3003)) {
                                goto block_100;
                            }
                            goto block_72;
                        }
                        if (arg0 >= 0x3001U) {
                            if (var_a2 != 0) {
                                goto block_72;
                            }
                            goto block_101;
                        }
                        if (arg0 != 0x3000) {
                            goto block_100;
                        }
block_72:
                        temp_a2_8 = temp_s0->unk70C;
                        temp_a3_2 = 1 << (arg0 - 0x3000);
                        if (!(temp_a3_2 & ~temp_a2_8)) {
                            temp_s0->unk70C = (s32) (temp_a2_8 & ~temp_a3_2);
                            /* Duplicate return node #14. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else {
                        var_a2 = arg0 < 0xDE1U;
                        var_a5 = arg0 < 0xDE2U;
                        if (var_a2 == 0) {
                            var_a6 = 0x2A01;
                            if (var_a5 != 0) {
                                // Error: negative shift count
                                // At instruction: bltz $a6, .L0d93f344
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                if (arg0 == 0x2A01) {
                                    temp_s0->unk704 = (u32) (temp_s0->unk704 & ~0x200);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    return;
                                }
                                goto block_101;
                            }
                        } else {
                            var_a7 = arg0 < 0xDE0U;
                            if (var_a7 == 0) {
                                if (var_a2 != 0) {
                                    // Error: negative shift count
                                    // At instruction: bltz $t0, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            } else {
                                if (arg0 == 0xDB8) {
                                    goto block_12;
                                }
                                goto block_101;
                            }
                        }
                    }
                }
            } else {
                goto block_12;
            }
        } else {
            var_a6 = arg0 < 0xB71U;
            if (var_a7 == 0) {
                if (arg0 < 0xC62U) {
                    // Error: negative shift count
                    // At instruction: bltz $t1, .L0d93f344
                    if (M2C_ERROR()) {
                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                        /* Duplicate return node #14. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                    }
                } else {
                    var_a1 = arg0 < 0xD97U;
                    if (arg0 >= 0xD96U) {
                        var_a2 = arg0 < 0xDB2U;
                        if (var_a1 == 0) {
                            var_a3 = arg0 < 0xDB3U;
                            if (var_a2 == 0) {
                                var_a2 = arg0 < 0xDB5U;
                                if (var_a3 == 0) {
                                    var_a3 = arg0 < 0xDB4U;
                                    if (var_a2 == 0) {
                                        var_a5 = arg0 < 0xDB6U;
                                        var_a6 = 0xDB6;
                                        if ((var_a5 == 0) && (arg0 != 0xDB6)) {
                                            goto block_100;
                                        }
                                        goto block_12;
                                    }
                                    if (var_a3 == 0) {
                                        if (var_a2 == 0) {
                                            goto block_100;
                                        }
                                        goto block_12;
                                    }
                                    if (arg0 != 0xDB3) {
                                        goto block_100;
                                    }
                                    goto block_12;
                                }
                                goto block_12;
                            }
                            if (arg0 >= 0xDB0U) {
                                if ((arg0 >= 0xDB1U) && (arg0 != 0xDB1)) {
                                    goto block_100;
                                }
block_12:
                                temp_a2_9 = temp_s0->unk714;
                                temp_a3_3 = 1 << (arg0 - 0xDB0);
                                if (!(~temp_a2_9 & (temp_a3_3 & 0xFFFF))) {
                                    temp_s0->unk714 = (s32) (temp_a2_9 & (~temp_a3_3 & 0xFFFF));
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                if (arg0 >= 0xD98U) {
                                    if (arg0 >= 0xD99U) {
                                        goto block_100;
                                    }
                                    goto block_64;
                                }
                                var_a5 = 0xD97;
                                if (arg0 != 0xD97) {
                                    goto block_100;
                                }
                                goto block_64;
                            }
                        } else {
                            goto block_64;
                        }
                    } else {
                        var_a7 = arg0 < 0xD91U;
                        if (var_a7 == 0) {
                            var_a2 = arg0 < 0xD94U;
                            if (arg0 >= 0xD92U) {
                                if (var_a2 == 0) {
                                    if ((arg0 >= 0xD95U) && (arg0 != 0xD95)) {
                                        goto block_100;
                                    }
                                    goto block_64;
                                }
                                var_a6 = 0xD92;
                                if (arg0 >= 0xD93U) {
                                    if (var_a2 == 0) {
                                        goto block_100;
                                    }
                                    goto block_64;
                                }
                                if (arg0 != 0xD92) {
block_100:
                                    goto block_101;
                                }
                                goto block_64;
                            }
                            goto block_64;
                        }
                        if (arg0 >= 0xD80U) {
                            var_a5 = 0xD90;
                            if (arg0 < 0xD81U) {
                                // Error: negative shift count
                                // At instruction: bltz $t2, .L0d93f344
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else if (arg0 == 0xD90) {
block_64:
                                temp_a2_10 = temp_s0->unk710;
                                temp_a3_4 = 1 << (arg0 - 0xD90);
                                if (!(~temp_a2_10 & (temp_a3_4 & 0xFFFF))) {
                                    temp_s0->unk710 = (s32) (temp_a2_10 & (~temp_a3_4 & 0xFFFF));
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                goto block_101;
                            }
                        } else if (arg0 >= 0xC63U) {
                            if (arg0 < 0xC64U) {
                                // Error: negative shift count
                                // At instruction: bltz $v0, .L0d93f344
                                if (M2C_ERROR()) {
                                    temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                goto block_101;
                            }
                        } else if (arg0 == 0xC62) {
                            // Error: negative shift count
                            // At instruction: bltz $at, .L0d93f344
                            if (M2C_ERROR()) {
                                temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                /* Duplicate return node #14. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            goto block_101;
                        }
                    }
                }
            } else {
                var_a7 = arg0 < 0xB72U;
                if (var_a6 == 0) {
                    if (var_a7 != 0) {
                        temp_a2_11 = temp_s0->unk700;
                        if (!(~temp_a2_11 & 0x10)) {
                            temp_s0->unk700 = (u32) (temp_a2_11 & ~0x10);
                            __glCrmEnableDepthTest(temp_s0, temp_a2_11, 1, var_a6, var_a7);
                            /* Duplicate return node #14. Try simplifying control flow for better match */
                            *(void *)0x1018 = 2;
                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                        }
                    } else if (arg0 >= 0xBE2U) {
                        var_a1 = arg0 < 0xC11U;
                        if (arg0 < 0xBE3U) {
                            temp_a2_12 = temp_s0->unk700;
                            if (!(~temp_a2_12 & 2)) {
                                temp_s0->unk700 = (u32) (temp_a2_12 & ~2);
                                __glCrmEnableBlend(temp_s0, var_a1, temp_a2_12, 1U, var_a6, var_a7);
                                /* Duplicate return node #14. Try simplifying control flow for better match */
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                            }
                        } else {
                            var_a2 = arg0 < 0xC12U;
                            if (var_a1 == 0) {
                                var_a7 = 0xC60;
                                if (var_a2 != 0) {
                                    temp_a2_13 = temp_s0->unk700;
                                    temp_a3_5 = ~temp_a2_13 & 0x4000;
                                    if (temp_a3_5 == 0) {
                                        temp_a4 = temp_a2_13 & ~0x4000;
                                        temp_s0->unk700 = temp_a4;
                                        __glSetError(temp_s0, var_a1, temp_a2_13, (void *) temp_a3_5, temp_a4, var_a6, 0xC60U);
                                        temp_s0->unk2E84(temp_s0);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else if (arg0 == 0xC60) {
                                    // Error: negative shift count
                                    // At instruction: bltz $t0, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            } else {
                                var_a1 = arg0 < 0xBF3U;
                                if (arg0 >= 0xBF2U) {
                                    if (var_a1 != 0) {
                                        temp_a2_14 = temp_s0->unk704;
                                        temp_a3_6 = ~temp_a2_14 & 0x800;
                                        if (temp_a3_6 == 0) {
                                            temp_a4_2 = temp_a2_14 & ~0x800;
                                            temp_s0->unk704 = temp_a4_2;
                                            __glCrmEnableBlend(temp_s0, var_a1, temp_a2_14, temp_a3_6, temp_a4_2, var_a6, var_a7);
                                            /* Duplicate return node #14. Try simplifying control flow for better match */
                                            *(void *)0x1018 = 2;
                                            temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                        }
                                    } else {
                                        goto block_101;
                                    }
                                } else if (arg0 == 0xBF1) {
                                    temp_a2_15 = temp_s0->unk700;
                                    if (!(~temp_a2_15 & 4)) {
                                        temp_s0->unk700 = (u32) (temp_a2_15 & ~4);
                                        __glCrmEnableLogicOp(temp_s0, var_a1, temp_a2_15, 1, var_a6, var_a7);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            }
                        }
                    } else {
                        var_a5 = arg0 < 0xBA1U;
                        if (arg0 >= 0xBC0U) {
                            var_a5 = 0xBD0;
                            if (arg0 < 0xBC1U) {
                                temp_a2_16 = temp_s0->unk700;
                                if (!(~temp_a2_16 & 1)) {
                                    temp_s0->unk700 = (u32) (temp_a2_16 & ~1);
                                    __glCrmEnableAlphaTest(temp_s0, (s32) temp_a2_16, 1U, 0xBD0, (void *) var_a6, (void *) var_a7);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else if (arg0 == 0xBD0) {
                                temp_a2_17 = temp_s0->unk700;
                                temp_a6 = ~temp_a2_17 & 8;
                                if (temp_a6 == 0) {
                                    temp_a7 = temp_a2_17 & ~8;
                                    temp_s0->unk700 = temp_a7;
                                    __glCrmEnableDither(temp_s0, temp_a2_17, 1, 0xBD0, temp_a6, temp_a7);
                                }
                            } else {
                                goto block_101;
                            }
                        } else {
                            var_a6 = arg0 < 0xBA2U;
                            if (var_a5 == 0) {
                                if (var_a6 != 0) {
                                    // Error: negative shift count
                                    // At instruction: bltz $a7, .L0d93f344
                                    if (M2C_ERROR()) {
                                        temp_s0->unk700 = (u32) (temp_s0->unk700 & ~var_a3);
                                        /* Duplicate return node #14. Try simplifying control flow for better match */
                                        *(void *)0x1018 = 2;
                                        temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                    }
                                } else {
                                    goto block_101;
                                }
                            } else if (arg0 == 0xB90) {
                                temp_a2_18 = temp_s0->unk700;
                                if (!(~temp_a2_18 & 0x8000)) {
                                    temp_s0->unk700 = (u32) (temp_a2_18 & ~0x8000);
                                    __glCrmEnableStencilTest(temp_s0, temp_a2_18, 1, var_a5, var_a6, var_a7);
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                goto block_101;
                            }
                        }
                    }
                } else {
                    var_a7 = arg0 < 0xB42U;
                    if (var_a7 == 0) {
                        if (arg0 < 0xB43U) {
                            temp_a2_19 = temp_s0->unk700;
                            if (!(~temp_a2_19 & 0x2000)) {
                                temp_s0->unk700 = (u32) (temp_a2_19 & ~0x2000);
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                            }
                        } else if (arg0 >= 0xB57U) {
                            var_a1 = arg0 < 0xB58U;
                            if (var_a1 != 0) {
                                temp_a2_20 = temp_s0->unk700;
                                temp_a3_7 = ~temp_a2_20 & 0x80;
                                if (temp_a3_7 == 0) {
                                    temp_a4_3 = temp_a2_20 & ~0x80;
                                    temp_s0->unk700 = temp_a4_3;
                                    __glCrmEnableAlphaTest(temp_s0, (s32) var_a1, temp_a2_20, temp_a3_7, (void *) temp_a4_3, (void *) var_a6, (void *) var_a7);
                                }
                            } else if (arg0 == 0xB60) {
                                temp_a2_21 = temp_s0->unk700;
                                if (!(~temp_a2_21 & 0x20)) {
                                    temp_s0->unk700 = (u32) (temp_a2_21 & ~0x20);
                                    __glCrmEnableFogTest(temp_s0, (void *) var_a1, temp_a2_21, 1, var_a6, var_a7);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 1);
                                }
                            } else {
                                goto block_101;
                            }
                        } else if (arg0 >= 0xB50U) {
                            if (arg0 < 0xB51U) {
                                temp_a2_22 = temp_s0->unk700;
                                if (!(~temp_a2_22 & 0x40)) {
                                    temp_s0->unk700 = (u32) (temp_a2_22 & ~0x40);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 0x20);
                                    __glSetError(temp_s0, temp_a2_22, 1U, (void *) var_a6, var_a7);
                                    temp_s0->unk2EE0(temp_s0);
                                }
                            } else {
                                goto block_101;
                            }
                        } else if (arg0 == 0xB44) {
                            temp_a2_23 = temp_s0->unk700;
                            if (!(~temp_a2_23 & 0x1000)) {
                                temp_s0->unk700 = (u32) (temp_a2_23 & ~0x1000);
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                            }
                        } else {
                            goto block_101;
                        }
                    } else if (arg0 >= 0xB24U) {
                        if (arg0 < 0xB25U) {
                            temp_a2_24 = temp_s0->unk700;
                            if (!(~temp_a2_24 & 0x100)) {
                                temp_s0->unk700 = (u32) (temp_a2_24 & ~0x100);
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 2);
                            }
                        } else if (arg0 == 0xB41) {
                            temp_a2_25 = temp_s0->unk700;
                            if (!(~temp_a2_25 & 0x800)) {
                                temp_s0->unk700 = (u32) (temp_a2_25 & ~0x800);
                                *(void *)0x1018 = 2;
                                temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 4);
                            }
                        } else {
                            goto block_101;
                        }
                    } else {
                        var_a5 = arg0 < 0xB20U;
                        var_a6 = arg0 < 0xB21U;
                        if (var_a5 == 0) {
                            if (var_a6 != 0) {
                                temp_a2_26 = temp_s0->unk700;
                                if (!(~temp_a2_26 & 0x200)) {
                                    temp_s0->unk700 = (u32) (temp_a2_26 & ~0x200);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 2);
                                }
                            } else {
                                goto block_101;
                            }
                        } else {
                            var_a2 = 0xB10;
                            if (arg0 == 0xB10) {
                                temp_a2_27 = temp_s0->unk700;
                                if (!(~temp_a2_27 & 0x400)) {
                                    temp_s0->unk700 = (u32) (temp_a2_27 & ~0x400);
                                    *(void *)0x1018 = 2;
                                    temp_s0->unk2DEC = (s32) (temp_s0->unk2DEC | 8);
                                }
                            } else {
block_101:
                                __glSetError((void *)0x500, var_a1, var_a2, (void *) var_a3, var_a4, var_a5, var_a6, var_a7);
                            }
                        }
                    }
                }
            }
        }
    } else {
        __glSetError((void *)0x502, 1U);
    }
}

void __glCrmEnableAlphaTest(void *arg0, u32 arg2) {
    s32 temp_a0;
    s32 var_a0;
    u32 var_a2;

    var_a2 = arg2;
    if (arg0->unkC94 != 0) {
        temp_a0 = arg0->unk7D58;
        if (arg0->unk700 & 1) {
            var_a0 = temp_a0 | 0x800;
        } else {
            var_a2 = -0x801U;
            var_a0 = temp_a0 & ~0x800;
        }
        arg0->unk7D58 = var_a0;
        if (var_a0 & 0x800) {
            __glCrmPassAlphaFunc((s64) arg0, var_a2);
        }
        *(s32 *)0x1018 = 2;
        arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
    }
}

void __glCrmPassAlphaFunc(void *arg0) {
    s32 sp0;
    s32 temp_a1;

    temp_a1 = (((sp0 & ~0xF00) | (((arg0->unk71C - 0x200) & 0xF) << 8)) & ~0xFF) | ((s32) (arg0->unk720 * 255.0f) & 0xFF);
    sp0 = temp_a1;
    arg0->unk7DB8->unk2198 = temp_a1;
    arg0->unk7DBC->unk2198 = sp0;
}

void __glCrmEnableBlend(void *arg0, u32 arg5, u32 arg6, u32 arg7) {
    s32 temp_a0;
    s32 var_a0;
    u32 var_a1;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    if (arg0->unkC94 != 0) {
        temp_a0 = arg0->unk7D58;
        if (arg0->unk704 & 0x800) {
            var_a1 = -0x401U;
            var_a0 = (temp_a0 & ~0x400) | 0x200;
        } else {
            var_a5 = arg0->unk700 & 2;
            var_a7 = 0xBF1;
            var_a1 = -0x201U;
            if (var_a5 != 0) {
                var_a6 = arg0->unk72C;
                if (var_a6 != 0xBF1) {
                    var_a0 = (temp_a0 | 0x400) & ~0x200;
                } else {
                    var_a1 = -0x401U;
                    var_a0 = (temp_a0 & ~0x400) | 0x200;
                }
            } else {
                var_a1 = -0x201U;
                var_a0 = temp_a0 & ~0x400 & ~0x200;
            }
        }
        arg0->unk7D58 = var_a0;
        if (var_a0 & 0x400) {
            __glCrmPassBlendFunc(arg0, var_a1, var_a0 << 0x15, (void *)2, var_a5, var_a6, var_a7);
            __glCrmPassBlendColor(arg0);
        }
        *(s32 *)0x1018 = 2;
        arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
    }
}

void __glCrmPassBlendFunc(void *arg0) {
    s32 sp18;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    u32 temp_a2_2;
    u32 temp_a2_3;

    temp_a7 = arg0->unkCC4 > 0;
    if (arg0->unkC94 != 0) {
        temp_a2 = arg0->unk72C;
        switch (temp_a2) {                          /* irregular */
        default:
            var_a5 = 4;
            if (temp_a2 != 0x800B) {
                var_a5 = sp0;
                if (temp_a2 != 0xBF1) {
                    goto block_7;
                }
            } else {
block_7:
                temp_a2_2 = arg0->unk724;
                temp_a4 = temp_a2_2 < 0x306U;
                if (temp_a4 == 0) {
                    var_a6 = 2;
                    if (temp_a2_2 >= 0x307U) {
                        if (temp_a2_2 >= 0x8002U) {
                            if (temp_a2_2 <= 0x8002U) {
                                var_a6 = 9;
                            } else if (temp_a2_2 >= 0x8004U) {
                                var_a6 = (temp_a2_2 <= 0x8004U) ? 0xB : sp4;
                            } else {
                                var_a6 = ((temp_a2_2 ^ 0x8003) == 0) ? 0xA : sp4;
                            }
                        } else if (temp_a2_2 >= 0x308U) {
                            if (temp_a2_2 < 0x309U) {
                                var_a6 = (temp_a7 == 0) ? 0 : 0xC;
                            } else {
                                var_a6 = ((temp_a2_2 ^ 0x8001) == 0) ? 8 : sp4;
                            }
                        } else {
                            var_a6 = ((temp_a2_2 ^ 0x307) == 0) ? 3 : sp4;
                        }
                    }
                } else if (temp_a2_2 >= 0x303U) {
                    if (temp_a2_2 < 0x304U) {
                        var_a6 = 5;
                    } else if (temp_a2_2 >= 0x305U) {
                        var_a6 = (temp_a4 != 0) ? ((temp_a7 == 0) ? 0 : 7) : sp4;
                    } else {
                        var_a6 = ((temp_a2_2 ^ 0x304) == 0) ? ((temp_a7 == 0) ? 1 : 6) : sp4;
                    }
                } else {
                    var_a6 = 1;
                    if (temp_a2_2 != 0) {
                        if (temp_a2_2 < 2U) {

                        } else {
                            var_a6 = ((temp_a2_2 ^ 0x302) == 0) ? 4 : sp4;
                        }
                    } else {
                        var_a6 = 0;
                    }
                }
                temp_a2_3 = arg0->unk728;
                temp_t0 = temp_a2_3 < 0x304U;
                if (temp_t0 == 0) {
                    if (temp_a2_3 < 0x305U) {
                        var_a4 = (temp_a7 == 0) ? 1 : 6;
                    } else if (temp_a2_3 >= 0x8002U) {
                        if (temp_a2_3 <= 0x8002U) {
                            var_a4 = 9;
                        } else if (temp_a2_3 >= 0x8004U) {
                            var_a4 = (temp_a2_3 <= 0x8004U) ? 0xB : sp8;
                        } else {
                            var_a4 = ((temp_a2_3 ^ 0x8003) == 0) ? 0xA : sp8;
                        }
                    } else if (temp_a2_3 >= 0x8001U) {
                        var_a4 = (temp_a2_3 <= 0x8001U) ? 8 : sp8;
                    } else {
                        var_a4 = ((temp_a2_3 ^ 0x305) == 0) ? ((temp_a7 == 0) ? 0 : 7) : sp8;
                    }
                } else if (temp_a2_3 >= 0x301U) {
                    if (temp_a2_3 < 0x302U) {
                        var_a4 = 3;
                    } else if (temp_a2_3 >= 0x303U) {
                        var_a4 = (temp_t0 == 0) ? sp8 : 5;
                    } else {
                        var_a4 = ((temp_a2_3 ^ 0x302) == 0) ? 4 : sp8;
                    }
                } else {
                    var_a4 = 1;
                    if (temp_a2_3 != 0) {
                        if (temp_a2_3 < 2U) {

                        } else {
                            var_a4 = ((temp_a2_3 ^ 0x300) == 0) ? 2 : sp8;
                        }
                    } else {
                        var_a4 = 0;
                    }
                }
                temp_a4_2 = (((((sp18 & ~0xF0) | ((var_a6 & 0xF) * 0x10)) & ~0xF) | (var_a4 & 0xF)) & ~0xF00) | ((var_a5 & 0xF) << 8);
                sp18 = temp_a4_2;
                arg0->unk7DB8->unk21A8 = temp_a4_2;
                arg0->unk7DBC->unk21A8 = sp18;
                return;
            }
            break;
        case 0x8006:
            var_a5 = 0;
            goto block_7;
        case 0x8007:
            var_a5 = 1;
            goto block_7;
        case 0x8008:
            var_a5 = 2;
            goto block_7;
        case 0x800A:
            var_a5 = 3;
            goto block_7;
        }
    }
}

void __glCrmPassBlendColor(void *arg0) {
    s32 temp_v0;

    temp_v0 = ((s64) (second half of f64) << 0) | ((second half of f64) << 8) | (((s64) (second half of f64) << 0x18) | ((second half of f64) << 0x10));
    arg0->unk7DB8->unk21A0 = temp_v0;
    arg0->unk7DBC->unk21A0 = temp_v0;
}

void __glCrmEnableDither(void *arg0) {
    s32 temp_a2;
    s32 var_a2;

    temp_a2 = arg0->unk7D58;
    if (arg0->unk700 & 8) {
        var_a2 = temp_a2 | 0x100;
    } else {
        var_a2 = temp_a2 & ~0x100;
    }
    arg0->unk7D58 = var_a2;
    if ((*(s32 *)0x1018 != 2) && (arg0->unk7D5C != var_a2)) {
        arg0->unk7DB8->unk2018 = var_a2;
        arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
        arg0->unk7D5C = (s32) arg0->unk7D58;
    }
}

void __glCrmEnableLogicOp(void *arg0) {
    s32 temp_a2;
    s32 var_a2;

    if (arg0->unkC94 == 0) {
        temp_a2 = arg0->unk7D58;
        if (arg0->unk700 & 4) {
            var_a2 = temp_a2 | 0x200;
        } else {
            var_a2 = temp_a2 & ~0x200;
        }
        arg0->unk7D58 = var_a2;
        if ((*(s32 *)0x1018 != 2) && (arg0->unk7D5C != var_a2)) {
            arg0->unk7DB8->unk2018 = var_a2;
            arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
            arg0->unk7D5C = (s32) arg0->unk7D58;
        }
    }
}

/*
Decompilation failure in function __glCrmPassLogicOp:

Unable to determine jump table for jr instruction at crm_attrib.s line 7369.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glCrmEnableFogTest(void *arg0, s32 arg5) {
    s32 var_a0;
    s32 var_a5;

    var_a5 = arg5;
    if (arg0->unkC95 != 0) {
        goto block_2;
    }
    var_a5 = arg0->unk700 & 0x20;
    if (var_a5 != 0) {
        var_a0 = arg0->unk7D58 | 0x4000;
    } else {
block_2:
        var_a0 = arg0->unk7D58 & ~0x4000;
    }
    arg0->unk7D58 = var_a0;
    if (var_a0 & 0x4000) {
        __glCrmPassFog(arg0, -0x4001, var_a0 << 0x11, 2, var_a5);
    }
    *(s32 *)0x1018 = 2;
    arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
}

void __glCrmPassFog(void *arg0) {
    s32 temp_v0;

    if (arg0->unkC95 != 0) {
        return;
    }
    temp_v0 = ((s64) arg0->unk63C << 0x10) | ((second half of f64) << 8) | ((s64) (second half of f64) << 0x18);
    arg0->unk7DB8->unk2170 = temp_v0;
    arg0->unk7DBC->unk2170 = temp_v0;
}

void __glCrmPassColorMask(void *arg0) {
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_2;
    u8 temp_a3;

    if (arg0->unk760 != 0) {
        if (arg0->unkC94 != 0) {
            temp_a3 = arg0->unk75D;
            if (arg0->unk75C != 0) {
                var_a2 = 0xFF000000;
                if (temp_a3 != 0) {
                    goto block_4;
                }
                if (arg0->unk75E != 0) {
                    goto block_5;
                }
                if (arg0->unkCC4 != 0) {
                    if (arg0->unk75F != 0) {
                        goto block_8;
                    }
                    var_a3 = ((u32) arg0->unk80CC >> 2) & 3;
                    arg0->unk80C0 = 0xFF000000;
                    if (var_a3 != 2) {
                        var_a4 = -1;
                        goto block_10;
                    }
                    var_a3_2 = 8;
                    goto block_26;
                }
                goto block_27;
            }
            var_a2 = 0;
            if (temp_a3 != 0) {
block_4:
                var_a2 |= 0xFF0000;
                if (arg0->unk75E != 0) {
                    goto block_5;
                }
                goto block_6;
            }
            if (arg0->unk75E != 0) {
                var_a2 = 0;
block_5:
                var_a2 |= 0xFF00;
block_6:
                if (arg0->unkCC4 != 0) {
                    var_a4 = -1;
                    if (arg0->unk75F != 0) {
                        goto block_8;
                    }
                } else {
                    goto block_27;
                }
                goto block_9;
            }
            if (arg0->unkCC4 != 0) {
                if (arg0->unk75F != 0) {
                    var_a2 = 0;
block_8:
                    var_a2 |= 0xFF;
                    var_a4 = -1;
                    goto block_9;
                }
                var_a3 = ((u32) arg0->unk80CC >> 2) & 3;
                arg0->unk80C0 = 0;
                if (var_a3 != 2) {
                    var_a4 = -1;
                    var_a2 = 0;
                    if (var_a3 == 0) {
                        goto block_21;
                    }
                    goto block_11;
                    goto block_12;
                }
                var_a2 = 0;
                goto block_34;
            }
            var_a2 = 0;
block_27:
            var_a4 = -0x100;
block_9:
            var_a3 = ((u32) arg0->unk80CC >> 2) & 3;
            arg0->unk80C0 = var_a2;
            if (var_a3 != 2) {
block_10:
                if (var_a3 != 0) {
block_11:
                    var_a3_3 = 0;
                    if (var_a3 == 1) {
                        goto block_21;
                    }
                } else {
block_21:
                    var_a3_3 = (var_a2 == 0) ? 0 : 0xF;
                }
                goto block_12;
            }
            var_a3_2 = 8;
            if (!(var_a2 & 0xFF000000)) {
block_34:
                var_a3_2 = 0;
            }
block_26:
            temp_a1 = var_a2 & 0xFF;
            temp_t1 = !(var_a2 & 0xFF0000) ? var_a3_2 : (var_a3_2 | 4);
            temp_t0 = var_a2 & 0xFF00;
            temp_a4 = temp_t1 | 2;
            var_a2 = 0;
            temp_a4_2 = (temp_t0 == 0) ? temp_t1 : temp_a4;
            var_a3_3 = (temp_a1 == 0) ? temp_a4_2 : (temp_a4_2 | 1);
            goto block_16;
        }
        var_a4 = (1 << arg0->unkCB4) - 1;
        var_a2 = arg0->unk758 & var_a4;
        arg0->unk80C0 = var_a2;
        var_a3_3 = (var_a2 == 0) ? 0 : 0xF;
block_12:
        if (var_a2 != 0) {
            var_a4_2 = 0;
            if (var_a4 != var_a2) {
                var_a4_2 = 1;
            }
        } else {
            goto block_16;
        }
    } else {
        var_a3_3 = 0;
        var_a2 = 0;
block_16:
        var_a4_2 = 0;
    }
    temp_t2 = (((arg0->unk7D58 & ~0x80) | ((var_a4_2 & 1) << 7)) & ~0x78) | ((var_a3_3 & 0xF) * 8);
    arg0->unk7D58 = temp_t2;
    if (!(temp_t2 & 0x80)) {
        *(s32 *)0x1018 = 2;
        arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
        return;
    }
    arg0->unk7DB8->unk21B8 = var_a2;
    arg0->unk7DBC->unk21B8 = var_a2;
    *(void *)0x1018 = 2;
    arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
}

void __glCrmShadeModel(void *arg0) {
    s32 temp_a2;

    temp_a2 = arg0->unk7D58;
    if (arg0->unk570 != 0x1D01) {
        arg0->unk7D58 = (s32) (temp_a2 & ~0x10000);
        return;
    }
    arg0->unk7D58 = (s32) (temp_a2 | 0x10000);
}
