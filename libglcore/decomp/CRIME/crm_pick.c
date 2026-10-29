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
Error occurred while processing instruction: bgez $a7, .L0d9513f0

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
Error occurred while processing instruction: bgez $t1, .L0d951510

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
Error occurred while processing instruction: bgez $t1, .L0d95169c

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
Error occurred while processing instruction: bgez $a1, .L0d952510

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
Error occurred while processing instruction: bgez $v0, .L0d952700

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
Error occurred while processing instruction: bgez $ra, .L0d9528fc

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
Error occurred while processing instruction: bgez $t8, .L0d952ed8

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
Error occurred while processing instruction: bgez $at, .L0d952ab0

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
Error occurred while processing instruction: bgez $a7, .L0d9513f0

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
Error occurred while processing instruction: bgez $t1, .L0d951510

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
Error occurred while processing instruction: bgez $t1, .L0d95169c

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
Error occurred while processing instruction: bgez $a1, .L0d952510

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
Error occurred while processing instruction: bgez $v0, .L0d952700

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
Error occurred while processing instruction: bgez $ra, .L0d9528fc

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
Error occurred while processing instruction: bgez $t8, .L0d952ed8

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
Error occurred while processing instruction: bgez $at, .L0d952ab0

? __glCrmGenericPickStoreProcs();                   /* extern */
? __glCrmLayerColorProcs(void *);                   /* extern */
? __glCrmUnlayerColorProcs();                       /* extern */
? __glCrmUpdatePolyStipple(void *);                 /* extern */
? __glGenericPickLineProcs(?, s32, s32, void *, s32, s32, s32); /* extern */
? __glGenericPickSpanProcs(u8, s32, s32, ? **, ? *, s64); /* extern */
? __glGenericPickTriangleProcs();                   /* extern */
? __glGenericPickVertexProcs();                     /* extern */
? __glValidateAlphaTest(void *);                    /* extern */
? __glValidateLighting();                           /* extern */
? sub_0d950000(void *);                             /* extern */
extern ? __glBeginLLoop;
extern ? __glBeginLines;
extern ? __glBeginPoints;
extern ? __glBeginPolygon;
extern ? __glBeginQStrip;
extern ? __glBeginQuads;
extern ? __glBeginTFan;
extern ? __glBeginTStrip;
extern ? __glBeginTriangles;
extern ? __glClipTriangle;
extern ? __glCrmAntiAliasLineRGB;
extern ? __glCrmBeginLLoop;
extern ? __glCrmBeginLStrip;
extern ? __glCrmBeginPoints;
extern ? __glCrmBeginPolygon;
extern ? __glCrmBeginPolygonMode;
extern ? __glCrmCalcAlphaColor;
extern ? __glCrmColorOptLine;
extern ? __glCrmDumpPerPixelSpan;
extern ? __glCrmDumpPerPixelStippledSpan;
extern ? __glCrmDumpSpan;
extern ? __glCrmDumpStippledFlatSpan;
extern ? __glCrmDumpStippledSmoothSpan;
extern ? __glCrmDumpStippledSpan;
extern ? __glCrmFastRect;
extern ? __glCrmFillAATriangle;
extern ? __glCrmFillCheapFogTriangle;
extern ? __glCrmFillFrontBackTriangle;
extern ? __glCrmFillSlowTriangle;
extern ? __glCrmFillStippledTriangle;
extern ? __glCrmFillTriangle;
extern ? __glCrmFrontBackRect;
extern ? __glCrmLeftRightRect;
extern ? __glCrmOffsetSpan;
extern ? __glCrmOffsetStippledSpan;
extern ? __glCrmPolygonOffsetLine;
extern ? __glCrmRect;
extern ? __glCrmRenderAliasLine;
extern ? __glCrmRenderAntiAliasLine;
extern ? __glCrmRenderBitmap;
extern ? __glCrmRenderCheapFogLine;
extern ? __glCrmRenderFrontBackBitmap;
extern ? __glCrmRenderFrontBackLine;
extern ? __glCrmRenderLeftRightBitmap;
extern ? __glCrmRenderLeftRightLine;
extern ? __glCrmStippledColorOptLine;
extern ? __glCrmStoreStippledLine;
extern ? __glCrmTexturedLine;
extern ? __glCrmWideLineRep;
extern ? __glCrmWideStippledLineRep;
extern ? __glEvenTStripVertex;
extern ? __glEvenTStripVertexFast;
extern ? __glFastClipFlatLine;
extern ? __glFastClipLine;
extern ? __glFastClipSmoothLine;
extern ? __glFillTriangle;
extern ? __glMipsClipCheck2D_2;
extern ? __glMipsClipCheck2D_3;
extern ? __glMipsClipCheck2D_4;
extern ? __glMsbToLsbTable;
extern ? __glNop;
extern ? __glOddTStripVertex;
extern ? __glOddTStripVertexFast;
extern ? __glOtherLStripVertex;
extern ? __glOtherLStripVertexFast;
extern ? __glProcessLine;
extern ? __glProcessSpan;
extern ? __glRenderAliasLine;
extern ? __glRenderAntiAliasLine;
extern ? __glRenderBitmap;
extern ? __glSaveC;
extern ? __glSaveN;
extern ? __glScissorLine;
extern ? __glScissorStippledLine;
extern ? __glSelectLine;
extern ? __glStippleLine;
extern ? __glStippleSpan;
extern ? __glStippleStippledSpan;
extern ? __glValidateVertex2Clip;
extern ? __glValidateVertex3Clip;
extern ? __glValidateVertex4Clip;
extern ? __glcrmim_MipsVertexInLine3fv;
extern ? __glcrmim_MipsVertexInLineC3fv;
extern ? __glcrmim_MipsVertexInLineN3fv;
extern ? __glcrmim_mipsVertexNoXFDTFast;
extern ? __glcrmim_vertexDTFast;
extern ? __glcrmim_vertexDispatchTable;
extern ? sub_0da40000;

void __glCrmPickSpanProcs(void *arg0) {
    ? **var_a2;
    ? **var_a4;
    ? *var_t3;
    s32 temp_a2;
    s32 temp_a3;
    u8 temp_a1;
    void *var_a5;

    var_a4 = arg0 + 0x2F84;
    temp_a3 = arg0->unk76E4;
    temp_a2 = temp_a3 & 0x10;
    if (arg0->unk700 & 0xA00) {
        arg0->unk7DC0 = (s32) (arg0->unk7DC0 | 0x40);
    }
    temp_a1 = arg0->unk7D0B;
    if (temp_a1 != 0) {
        __glGenericPickSpanProcs(temp_a1, temp_a2, temp_a3, var_a4, &__glStippleSpan, (s64) temp_a3 << 0x2D);
        return;
    }
    var_a2 = arg0 + 0x2F48;
    if (temp_a2 != 0) {
        arg0->unk2F48 = &__glStippleSpan;
        var_a4 = arg0 + 0x2F88;
        var_a2 = arg0 + 0x2F4C;
        arg0->unk2F84 = &__glStippleStippledSpan;
    }
    // Error: negative shift count
    // At instruction: bgez $a7, .L0d9513f0
    if (M2C_ERROR()) {
        var_a4 += 4;
        *var_a2 = &__glCrmOffsetSpan;
        var_a2 += 4;
        var_a4->unk-4 = &__glCrmOffsetStippledSpan;
    }
    var_a5 = var_a2 + 4;
    arg0->unk2FC0 = (s32) ((s32) (M2C_ERROR(/* Read from unset register $t2 */) - 0x2F48) >> 2);
    if (temp_a3 & 0x1000) {
        var_t3 = &__glCrmDumpPerPixelStippledSpan;
        goto block_10;
    }
    if ((arg0->unk6E38 == 0) || (var_t3 = &__glCrmDumpPerPixelStippledSpan, (arg0->unk7D58 & 0x8000))) {
        var_a5 = var_a2 + 4;
        *var_a2 = &__glCrmDumpSpan;
        if (temp_a3 & 1) {
            if (temp_a3 & 0x20008) {
                var_t3 = &__glCrmDumpStippledSmoothSpan;
                if (temp_a3 & 8) {
                    *var_a4 = &__glCrmDumpStippledSpan;
                } else {
                    goto block_11;
                }
            } else {
                *var_a4 = &__glCrmDumpStippledFlatSpan;
            }
        } else {
            *var_a4 = &__glCrmDumpStippledSpan;
        }
    } else {
block_10:
        *var_a2 = &__glCrmDumpPerPixelSpan;
block_11:
        *var_a4 = var_t3;
    }
    arg0->unk2FC8 = &__glProcessSpan;
    arg0->unk2FC4 = (s32) ((s32) ((var_a5 - arg0) - 0x2F48) >> 2);
}

void __glCrmPickTriangleProcs(void *arg0) {
    ? *temp_a7;
    ? *temp_v0;
    ? *var_a1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_t1;
    s32 var_a0;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    void *var_a1_2;

    __glGenericPickTriangleProcs();
    temp_a1 = arg0->unk1E4;
    temp_a2 = arg0->unk76E4;
    if ((arg0->unk1E8 != temp_a1) || (temp_a1 != 0x1B02)) {
        var_a1 = &__glOddTStripVertex;
        goto block_3;
    }
    // Error: negative shift count
    // At instruction: bgez $t1, .L0d951510
    if (M2C_ERROR()) {
        arg0->unk2EC0 = &__glOddTStripVertexFast;
        arg0->unk2EC4 = &__glEvenTStripVertexFast;
    } else {
block_3:
        arg0->unk2EC0 = var_a1;
        arg0->unk2EC4 = &__glEvenTStripVertex;
    }
    if (arg0->unkC84 == 0x1C00) {
        temp_a4 = arg0->unk700;
        temp_a1_2 = temp_a4 & 0x800;
        if (temp_a1_2 != 0) {
            arg0->unk7DC0 = (s32) (arg0->unk7DC0 | 0x40);
        }
        if (arg0->unk7D0B == 0) {
            if (temp_a1_2 != 0) {
                var_a3 = 0;
                var_a1_2 = arg0 + 0x10000;
                arg0->unk2F30 = &__glCrmFillAATriangle;
            } else {
                var_a3_2 = temp_a2 & 0x1000;
                if ((arg0->unk6E38 != 0) && (var_a3_2 = temp_a2 & 0x1000, !(arg0->unk7D58 & 0x8000))) {
                    var_a3 = 0;
                    var_a1_2 = arg0 + 0x10000;
                    arg0->unk2F30 = &__glFillTriangle;
                } else {
                    if (var_a3_2 != 0) {
                        var_a1_2 = arg0 + 0x10000;
                        var_a5 = temp_a2 & 8;
                        goto block_43;
                    }
                    var_a1_2 = arg0 + 0x10000;
                    if (temp_a2 & 0x10) {
                        var_a5 = temp_a2 & 8;
                        if (arg0->unk80A0 & 2) {
                            var_a3 = 1;
                        } else {
block_43:
                            if (var_a5 != 0) {
                                arg0->unk2F30 = &__glCrmFillSlowTriangle;
                            } else {
                                arg0->unk2F30 = &__glFillTriangle;
                            }
                            var_a3 = 0;
                        }
                    } else {
                        var_a3 = 1;
                    }
                }
            }
            var_a1_2->unk-7F20 = (s8) (var_a3 == 0);
            if (var_a3 != 0) {
                if ((arg0->unkC94 == 0) || (var_a0 = temp_a2 & 4, ((temp_a2 & 0x42008) != 0))) {
                    if ((arg0->unkC95 == 0) || (// Error: negative shift count, // At instruction: bgez $t1, .L0d95169c, M2C_ERROR())) {
                        arg0->unk2F30 = &__glCrmFillTriangle;
                    } else {
                        var_a0 = temp_a2 & 4;
                        goto block_34;
                    }
                } else {
block_34:
                    temp_t1 = !(temp_a2 & 1) ? 0 : 1;
                    temp_a6 = !(temp_a2 & 0x20000) ? temp_t1 : (temp_t1 + 2);
                    var_a5_2 = (var_a0 == 0) ? temp_a6 : (temp_a6 + 4);
                    if (temp_a4 & 2) {
                        goto block_35;
                    }
                    if (!(temp_a4 & 1) && (arg0->unkCC4 == 0)) {

                    } else {
block_35:
                        var_a5_2 += 8;
                    }
                    arg0->unk2F30 = (? *) *(&sub_0da40000 + 0x6358 + (var_a5_2 * 4));
                }
                arg0->unk7D68 = 0x02000000;
            }
            if (var_a1_2->unk-7ED3 != 0) {
                var_a1_2->unk-7EE8 = (? *) arg0->unk2F30;
                arg0->unk2F30 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
            }
            if (arg0->unk77BC != 0) {
                var_a1_2->unk-7EFC = (? *) arg0->unk2F30;
                arg0->unk2F30 = &__glCrmFillFrontBackTriangle;
            }
            var_a5_3 = temp_a2 & 0x2000;
            if (((var_a3 == 0) || (var_a5_3 = temp_a2 & 0x2000, (arg0->unkC95 != 0))) && (var_a5_3 != 0) && (~temp_a2 & 8)) {
                temp_a7 = arg0->unk2F30;
                arg0->unk2F30 = &__glCrmFillCheapFogTriangle;
                arg0->unk2F34 = temp_a7;
                return;
            }
            if ((var_a3 == 1) && (temp_a2 & 0x10) && (var_a1_2->unk-7F60 & 2)) {
                temp_v0 = arg0->unk2F30;
                arg0->unk2F30 = &__glCrmFillStippledTriangle;
                arg0->unk2F34 = temp_v0;
            }
        }
    }
}

void __glCrmPickClipProcs(void *arg0) {
    if (arg0->unk6DB0 != 0) {
        if (arg0->unk570 != 0x1D00) {
            arg0->unk30C4 = &__glFastClipSmoothLine;
            arg0->unk2F38 = &__glClipTriangle;
            return;
        }
        arg0->unk2F38 = &__glClipTriangle;
        arg0->unk30C4 = &__glFastClipFlatLine;
        return;
    }
    arg0->unk2F38 = &__glClipTriangle;
    arg0->unk30C4 = &__glFastClipLine;
}

void __glCrmPickLineProcs(void *arg0) {
    ? **var_a3_3;
    ? **var_a6;
    ? **var_t0;
    ? **var_t2;
    ? *var_a2;
    ? *var_a2_2;
    ? *var_a2_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a7;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t1_2;
    u16 temp_t0;
    u8 temp_a2_2;

    temp_a7 = arg0->unk700;
    temp_a2 = temp_a7 & 0x200;
    temp_a5 = arg0->unk76E4;
    if (temp_a2 != 0) {
        arg0->unk7DC0 = (s32) (arg0->unk7DC0 | 0x40);
    }
    temp_a6 = ~0x80000;
    arg0->unk7D58 = (s32) (arg0->unk7D58 & ~0x1000 & temp_a6);
    arg0->unk80DD = 0;
    if (arg0->unk6DB0 & ~0x20) {
        arg0->unk2EB4 = &__glOtherLStripVertex;
    } else {
        arg0->unk2EB4 = &__glOtherLStripVertexFast;
    }
    temp_a3 = arg0->unkC84;
    arg0->unk3074 = 0;
    if (temp_a3 != 0x1C01) {
        if (temp_a3 != 0x1C02) {
            if (arg0->unk7D0B != 0) {
                __glGenericPickLineProcs(-0x21, temp_a2, temp_a3, arg0 + 0x10000, temp_a5, temp_a6, temp_a7);
                return;
            }
            temp_a3_2 = temp_a5 & 0x1000;
            if (temp_a2 != 0) {
                if (temp_a3_2 != 0) {
                    goto block_10;
                }
                if (((arg0->unk6E38 == 0) || (arg0->unk7D58 & 0x8000)) && ((f64) (second half of f64) <= (second half of f64)) && (arg0->unkC95 == 0) && (arg0->unk7D74 = 0x01040040, arg0->unk7D58 = (s32) (arg0->unk7D58 | 0x1000), ((temp_a7 & 0x100) == 0))) {
                    var_a2 = &__glCrmTexturedLine;
                    if (!(temp_a5 & 8)) {
                        var_a2 = &__glCrmAntiAliasLineRGB;
                    }
                    arg0->unk30B8 = var_a2;
                    if (arg0->unk812D != 0) {
                        arg0->unk811C = var_a2;
                        var_a2 = &__glCrmRenderLeftRightLine;
                        arg0->unk30B8 = &__glCrmRenderLeftRightLine;
                    }
                    if (arg0->unk77BC != 0) {
                        arg0->unk8108 = var_a2;
                        arg0->unk30B8 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                    }
                } else {
                    goto block_10;
                }
            } else if ((temp_a3_2 == 0) && ((arg0->unk6E38 == 0) || (arg0->unk7D58 & 0x8000))) {
                arg0->unk7D74 = (s32) (0x01040000 | ((arg0->unk1DC << 5) & 0xFFFF));
                if (temp_a5 & 8) {
                    var_a2_2 = &__glCrmTexturedLine;
                    arg0->unk30B8 = &__glCrmTexturedLine;
                    if (temp_a7 & 0x100) {
                        goto block_40;
                    }
                } else {
                    temp_a2_2 = arg0->unkC95;
                    if (temp_a5 & 2) {
                        if (temp_a2_2 != 0) {
                            var_a3 = 0;
                            goto block_71;
                        }
                        if (temp_a5 & 0x2000) {
                            var_a3_2 = 0;
                            goto block_72;
                        }
                        var_a3_2 = 0;
                        if (temp_a5 & 4) {
                            goto block_74;
                        }
                        var_a3_2 = 0;
                        goto block_77;
                    }
                    if (temp_a2_2 != 0) {
                        var_a3 = 1;
block_71:
                        var_a3_2 = var_a3 + 2;
                        if (temp_a5 & 0x2000) {
                            goto block_72;
                        }
                        goto block_73;
                    }
                    if (temp_a5 & 0x2000) {
                        var_a3_2 = 1;
block_72:
                        var_a3_2 += 4;
block_73:
                        if (temp_a5 & 4) {
                            goto block_74;
                        }
                        goto block_75;
                    }
                    var_a3_2 = 1;
                    if (temp_a5 & 4) {
                        var_a3_2 = 1;
block_74:
                        var_a3_2 += 8;
block_75:
                        if ((var_a3_2 != 1) && (var_a3_2 != 3)) {
                            goto block_77;
                        }
                        goto block_80;
                    }
block_80:
                    var_a5 = temp_a7 & 0x100;
                    if (arg0->unk807C & 2) {
                        var_a2_2 = &__glCrmStippledColorOptLine;
                        if (var_a5 != 0) {

                        } else {
                            var_a2_2 = &__glCrmColorOptLine;
                        }
                    } else {
block_77:
                        var_a2_2 = *(&sub_0da40000 + 0x6398 + (var_a3_2 * 4));
                        var_a5 = temp_a7 & 0x100;
                    }
                    arg0->unk30B8 = var_a2_2;
                    if (var_a5 == 0) {

                    } else {
block_40:
                        temp_t0 = arg0->unk1E0;
                        arg0->unk7DC0 = (s32) (arg0->unk7DC0 | 1);
                        arg0->unk7D58 = (s32) (arg0->unk7D58 | 0x80000);
                        temp_a7_2 = *(&__glMsbToLsbTable + (temp_t0 >> 8)) | (*(&__glMsbToLsbTable + (temp_t0 & 0xFF)) << 8);
                        arg0->unk7D70 = (s32) ((arg0->unk1E2 - 1) | 0x1F0000);
                        arg0->unk7D6C = (s32) (temp_a7_2 | (temp_a7_2 << 0x10));
                    }
                }
                if (arg0->unk812D != 0) {
                    arg0->unk811C = var_a2_2;
                    var_a2_2 = &__glCrmRenderLeftRightLine;
                    arg0->unk30B8 = &__glCrmRenderLeftRightLine;
                }
                if (arg0->unk77BC != 0) {
                    arg0->unk8108 = var_a2_2;
                    arg0->unk30B8 = &__glCrmRenderFrontBackLine;
                }
            } else {
block_10:
                if (temp_a2 != 0) {
                    goto block_11;
                }
                var_t2 = arg0 + 0x3010;
                if (arg0->unk1DC >= 2) {
                    var_t0 = arg0 + 0x2FD0;
                    var_t1 = 1;
                    goto block_48;
                }
block_11:
                var_t0 = arg0 + 0x2FD0;
                var_t2 = arg0 + 0x3010;
                var_a3_3 = var_t0;
                var_a6 = var_t2;
                if (temp_a2 != 0) {
                    var_t1 = 0;
                    goto block_13;
                }
                var_t1 = 0;
block_48:
                var_a6 = var_t2;
                var_a3_3 = var_t0;
                if (temp_a7 & 0x100) {
                    var_a6 = var_t2 + 4;
                    *var_t0 = &__glStippleLine;
                    var_a3_3 = var_t0 + 4;
                    *var_t2 = NULL;
block_13:
                    var_t0_2 = var_a3_3 - arg0;
                    var_a7 = (s32) (var_t0_2 - 0x2FD0) >> 2;
                    arg0->unk3050 = var_a7;
                    if (temp_a2 != 0) {
                        goto block_14;
                    }
                } else {
                    var_a7 = 0;
                    arg0->unk3050 = 0;
                    var_t0_2 = 0x2FD0;
                    if (temp_a2 == 0) {

                    } else {
block_14:
                        var_a3_3 += 4;
                        var_t0_2 = var_a3_3 - arg0;
                        var_a6 += 4;
                        var_a3_3->unk-4 = &__glScissorLine;
                        var_a6->unk-4 = &__glScissorStippledLine;
                        var_a7 = (s32) (var_t0_2 - 0x2FD0) >> 2;
                    }
                }
                arg0->unk3054 = var_a7;
                *var_a3_3 = M2C_ERROR(/* Read from unset register $t9 */);
                *var_a6 = &__glCrmStoreStippledLine;
                temp_t2 = (s32) (var_t0_2 - 0x2FCC) >> 2;
                arg0->unk3058 = temp_t2;
                if (var_t1 != 0) {
                    arg0->unk3054 = temp_t2;
                    arg0->unk306C = &__glNop;
                    arg0->unk3068 = &__glNop;
                    arg0->unk3064 = &__glCrmWideStippledLineRep;
                    arg0->unk3060 = &__glCrmWideLineRep;
                } else {
                    arg0->unk3050 = temp_t2;
                    arg0->unk3054 = temp_t2;
                    arg0->unk3064 = &__glNop;
                    arg0->unk3060 = &__glNop;
                }
                temp_a3_3 = temp_a5 & 8;
                if ((temp_a3_3 == 0) || !(arg0->unk7D58 & 0x8000)) {
                    var_a2_3 = &__glRenderAliasLine;
                    if (temp_a2 != 0) {
                        var_a2_3 = &__glRenderAntiAliasLine;
                    }
                } else {
                    var_a2_3 = &__glCrmRenderAliasLine;
                    if (temp_a2 != 0) {
                        var_a2_3 = &__glCrmRenderAntiAliasLine;
                    }
                }
                arg0->unk30B8 = var_a2_3;
                arg0->unk305C = &__glProcessLine;
                if (arg0->unk812D != 0) {
                    arg0->unk811C = var_a2_3;
                    var_a2_3 = &__glCrmRenderLeftRightLine;
                    arg0->unk30B8 = &__glCrmRenderLeftRightLine;
                }
                var_t1_2 = temp_a5 & 0x2000;
                if (arg0->unk77BC != 0) {
                    arg0->unk8108 = var_a2_3;
                    var_a2_3 = &__glCrmRenderFrontBackLine;
                    arg0->unk30B8 = &__glCrmRenderFrontBackLine;
                    var_t1_2 = temp_a5 & 0x2000;
                }
                if ((var_t1_2 != 0) && (temp_a3_3 == 0)) {
                    arg0->unk30BC = var_a2_3;
                    arg0->unk30B8 = &__glCrmRenderCheapFogLine;
                }
                arg0->unk80DD = 1;
            }
            goto block_28;
        }
        arg0->unk30B8 = &__glSelectLine;
        goto block_28;
    }
    arg0->unk30B8 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
block_28:
    if (arg0->unk704 & 0x400) {
        arg0->unk30C0 = &__glCrmPolygonOffsetLine;
        return;
    }
    arg0->unk30C0 = (? *) arg0->unk30B8;
}

void __glCrmPickRenderBitmapProcs(void *arg0) {
    ? *var_a4;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_t8;

    temp_a3 = arg0->unkC84;
    temp_a4 = arg0->unk76E4;
    arg0->unk7DC0 = (s32) (arg0->unk7DC0 | 1);
    if (temp_a3 != 0x1C00) {
        goto block_1;
    }
    var_t8 = temp_a4 & 0x1008;
    if ((!(temp_a4 & 0x2000) || (var_t8 = temp_a4 & 0x1008, (arg0->unkC95 == 0))) && (var_t8 == 0)) {
        arg0->unk7DB4 = 0x03040000;
        var_a4 = &__glCrmRenderBitmap;
    } else {
block_1:
        var_a4 = &__glRenderBitmap;
    }
    arg0->unk30E0 = var_a4;
    if (temp_a3 == 0x1C00) {
        if (arg0->unk812D != 0) {
            arg0->unk8124 = var_a4;
            var_a4 = &__glCrmRenderLeftRightBitmap;
            arg0->unk30E0 = &__glCrmRenderLeftRightBitmap;
        }
        if ((arg0->unkC84 == 0x1C00) && (arg0->unk77BC != 0)) {
            arg0->unk8110 = var_a4;
            arg0->unk30E0 = &__glCrmRenderFrontBackBitmap;
        }
    }
}

void __glCrmPickVertexProcs(void *arg0) {
    s64 sp0;
    ? *var_a1_4;
    f32 temp_f4;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a2_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    u32 temp_t8;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_a7;
    void *temp_t0;
    void *temp_t1;

    __glGenericPickVertexProcs();
    temp_a1 = arg0->unk76E4;
    temp_a2 = arg0->unk73DC;
    temp_t8 = temp_a2->unkF0;
    if (!(arg0->unk807C & 2) || (sp0 = (s64) temp_a1, ((temp_a1 & 0xA) != 0))) {
        sp0 = (s64) temp_a1;
        arg0->unk80A4 = &__glcrmim_vertexDispatchTable;
        arg0->unk809C = 0;
        var_a1 = 0x18;
        temp_t0 = arg0->unk17B8;
        var_a2 = 0;
        do {
            *(var_a2 + (temp_t0 + 0x528)) = *(var_a2 + &__glcrmim_vertexDispatchTable);
            *(var_a2 + (temp_t0 + 0x52C)) = *(var_a2 + (&__glcrmim_vertexDispatchTable + 4));
            var_a1 -= 4;
            *(var_a2 + (temp_t0 + 0x530)) = *(var_a2 + (&__glcrmim_vertexDispatchTable + 8));
            temp_v0 = var_a2 + (temp_t0 + 0x534);
            temp_at = *(var_a2 + (&__glcrmim_vertexDispatchTable + 0xC));
            var_a2 += 0x10;
            *temp_v0 = temp_at;
        } while (var_a1 > 0);
        if (temp_t8 == 0) {
            if (arg0->unk70C == 0) {
                temp_a2_2 = arg0->unk2E90;
                temp_a1_2 = arg0->unk17B8;
                if (temp_a2_2 == &__glSaveN) {
                    temp_a1_2->unk554 = &__glcrmim_MipsVertexInLineN3fv;
                } else if (temp_a2_2 == &__glSaveC) {
                    temp_a1_2->unk554 = &__glcrmim_MipsVertexInLineC3fv;
                } else {
                    temp_a1_2->unk554 = &__glcrmim_MipsVertexInLine3fv;
                }
            }
        }
        goto block_5;
    }
    var_a1_2 = 0x18;
    if ((temp_t8 < 2U) || (temp_f4 = temp_a2->unkE8, !(temp_f4 >= -1.0f)) || !(temp_f4 <= 1.0f) || (sp0 & 4)) {
        arg0->unk809C = 0;
        arg0->unk80A4 = &__glcrmim_vertexDTFast;
        var_a2_2 = 0;
        temp_a7 = arg0->unk17B8;
        do {
            *(var_a2_2 + (temp_a7 + 0x528)) = *(var_a2_2 + &__glcrmim_vertexDTFast);
            *(var_a2_2 + (temp_a7 + 0x52C)) = *(var_a2_2 + (&__glcrmim_vertexDTFast + 4));
            var_a1_2 -= 4;
            *(var_a2_2 + (temp_a7 + 0x530)) = *(var_a2_2 + (&__glcrmim_vertexDTFast + 8));
            temp_v0_2 = var_a2_2 + (temp_a7 + 0x534);
            temp_at_2 = *(var_a2_2 + (&__glcrmim_vertexDTFast + 0xC));
            var_a2_2 += 0x10;
            *temp_v0_2 = temp_at_2;
        } while (var_a1_2 > 0);
block_5:
        arg0->unk7428 = (f32) arg0->unk7418;
        arg0->unk7424 = (f32) arg0->unk7414;
    } else {
        arg0->unk809C = 1;
        var_a1_3 = 0x18;
        var_a2_3 = 0;
        arg0->unk80A4 = &__glcrmim_mipsVertexNoXFDTFast;
        temp_t1 = arg0->unk17B8;
        do {
            *(var_a2_3 + (temp_t1 + 0x528)) = *(var_a2_3 + &__glcrmim_mipsVertexNoXFDTFast);
            *(var_a2_3 + (temp_t1 + 0x52C)) = *(var_a2_3 + (&__glcrmim_mipsVertexNoXFDTFast + 4));
            var_a1_3 -= 4;
            *(var_a2_3 + (temp_t1 + 0x530)) = *(var_a2_3 + (&__glcrmim_mipsVertexNoXFDTFast + 8));
            temp_v0_3 = var_a2_3 + (temp_t1 + 0x534);
            temp_at_3 = *(var_a2_3 + (&__glcrmim_mipsVertexNoXFDTFast + 0xC));
            var_a2_3 += 0x10;
            *temp_v0_3 = temp_at_3;
        } while (var_a1_3 > 0);
        arg0->unk2ED0 = &__glValidateVertex4Clip;
        arg0->unk2ECC = &__glValidateVertex3Clip;
        arg0->unk2EC8 = &__glValidateVertex2Clip;
        arg0->unk2EA8 = &__glMipsClipCheck2D_4;
        arg0->unk2EA4 = &__glMipsClipCheck2D_3;
        arg0->unk2EA0 = &__glMipsClipCheck2D_2;
        arg0->unk7428 = (f32) ((f32) arg0->unk7418 + -0.5f);
        arg0->unk7424 = (f32) ((f32) arg0->unk7414 + -0.5f);
    }
    if ((temp_t8 >= 3U) && (arg0->unkC84 == 0x1C00)) {
        if (!(sp0 & 0x11018)) {
            temp_a1_3 = arg0->unk1E4;
            if ((arg0->unk1E8 == temp_a1_3) && (temp_a1_3 == 0x1B02)) {
                if (!(arg0->unk700 & 0x40)) {
                    arg0->unk2F44 = &__glCrmFastRect;
                    var_a1_4 = &__glCrmFastRect;
                    if (arg0->unk812D != 0) {
                        var_a1_4 = &__glCrmLeftRightRect;
                        arg0->unk8128 = &__glCrmFastRect;
                        arg0->unk2F44 = &__glCrmLeftRightRect;
                    }
                    if (arg0->unk77BC != 0) {
                        arg0->unk8114 = var_a1_4;
                        arg0->unk2F44 = &__glCrmFrontBackRect;
                        return;
                    }
                    return;
                }
                goto block_16;
            }
        }
        /* Duplicate return node #17. Try simplifying control flow for better match */
        arg0->unk2F44 = &__glCrmRect;
        return;
    }
block_16:
    arg0->unk2F44 = &__glCrmRect;
}

void __glCrmPickStoreProcs(void *arg0) {
    s64 sp0;
    ? *var_a3;
    s32 temp_a1;
    void *var_a1;

    sp0 = (s64) arg0->unk76E4;
    __glCrmGenericPickStoreProcs();
    if (arg0->unkC84 != 0x1C00) {
        goto block_1;
    }
    temp_a1 = arg0->unk700;
    if ((arg0->unk70C == 0) && !(temp_a1 & 0xC0)) {
        if (temp_a1 & 0x200) {
            if ((f64) (second half of f64) <= (second half of f64)) {
                if (!(temp_a1 & 0x20) || !(temp_a1 & 0x100)) {
                    goto block_15;
                }
                goto block_2;
            }
            goto block_1;
        }
block_15:
        if ((arg0->unk1E4 == arg0->unk1E8) && !(sp0 & 0x21000) && ((arg0->unk6E38 == 0) || (arg0->unk7D58 & 0x8000)) && ((arg0->unkC95 == 0) || (!(sp0 & 0x2000) && !(arg0->unk714 & 2)))) {
            if (arg0->unkC94 != 0) {
                if (!(arg0->unk714 & 1)) {
                    goto block_25;
                }
                goto block_2;
            }
block_25:
            var_a1 = arg0 + 0x10000;
            arg0->unk807C = 2;
            arg0->unk8088 = 0;
            arg0->unk2F20 = &__glCrmBeginPolygon;
            arg0->unk2EFC = &__glCrmBeginPoints;
            arg0->unk2F04 = &__glCrmBeginLLoop;
        } else {
            goto block_2;
        }
    } else {
block_1:
block_2:
        var_a1 = arg0 + 0x10000;
        arg0->unk807C = 0;
        arg0->unk2F04 = &__glBeginLLoop;
        if (!(arg0->unk7D58 & 0x8000)) {
            var_a3 = &__glBeginPoints;
        } else {
            var_a3 = &__glCrmBeginPoints;
        }
        arg0->unk2EFC = var_a3;
        arg0->unk2F20 = &__glBeginPolygon;
    }
    arg0->unk2F18 = &__glBeginQuads;
    arg0->unk2F1C = &__glBeginQStrip;
    arg0->unk2F0C = &__glBeginTriangles;
    arg0->unk2F14 = &__glBeginTFan;
    arg0->unk2F10 = &__glBeginTStrip;
    arg0->unk2F00 = &__glBeginLines;
    arg0->unk2F08 = &__glCrmBeginLStrip;
    if ((arg0->unkC84 != 0x1C00) || ((sp0 & 0x2000) && (arg0->unkC95 != 0))) {
        /* Duplicate return node #8. Try simplifying control flow for better match */
        var_a1->unk-7F80 = 0;
        return;
    }
    if (!(sp0 & 0x1008)) {
        var_a1->unk-7F80 = 0;
        var_a1->unk-7F84 = (s32) (var_a1->unk-7F84 | 1);
        return;
    }
    var_a1->unk-7F80 = 0;
}

void crmSetupPrimAdjustment(void *arg0, s32 arg3) {
    u8 sp0;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a6;
    s32 var_a7;
    u8 temp_t8;
    u8 var_a2;
    void *var_a4;

    if (arg0->unkC84 != 0x1C00) {
        arg0->unk80E3 = 0;
        arg0->unk80E4 = 0;
        arg0->unk80E0 = 0U;
        arg0->unk80E2 = 0;
        arg0->unk80E1 = 0;
        arg0->unk80E5 = 0;
        arg0->unk80DF = 0;
        arg0->unk80DE = 0;
        arg0->unk80DD = 0U;
        arg0->unk80DC = 0U;
        return;
    }
    // Error: negative shift count
    // At instruction: bgez $a1, .L0d952510
    if (M2C_ERROR()) {
        temp_a4 = arg0->unk1EC;
        var_a6 = 0;
        if (temp_a4 != 0x404) {
            if (temp_a4 != 0x405) {
                var_a6 = 1;
                var_a7 = 1;
                if (temp_a4 != 0x408) {
                    var_a6 = 0;
                    goto block_7;
                }
                goto block_25;
            }
            var_a6 = 1;
block_7:
            var_a7 = 0;
            var_a4 = arg0 + 0x10000;
            switch (arg3) {                         /* switch 1; irregular */
            case 0x1B02:                            /* switch 1 */
                sp0 = arg0->unk80E0;
                break;
            case 0x1B01:                            /* switch 1 */
                sp0 = arg0->unk80DD;
                break;
            case 0x1B00:                            /* switch 1 */
                sp0 = arg0->unk80DC;
                break;
            }
        } else {
            var_a7 = 1;
block_25:
            var_a4 = arg0 + 0x10000;
            sp0 = 0;
        }
        if (var_a6 != 0) {
            goto block_11;
        }
        if (var_a7 != 0) {
            goto block_19;
        }
        if (arg3 == temp_a5) {
            goto block_11;
        }
        goto block_19;
    }
    var_a4 = arg0 + 0x10000;
    switch (arg3) {                                 /* switch 2; irregular */
    case 0x1B02:                                    /* switch 2 */
        sp0 = arg0->unk80E0;
        break;
    case 0x1B01:                                    /* switch 2 */
        sp0 = arg0->unk80DD;
        break;
    case 0x1B00:                                    /* switch 2 */
        sp0 = arg0->unk80DC;
        break;
    }
    var_a7 = 0;
    if (arg3 != temp_a5) {
block_19:
        if (temp_a5 != 0x1B02) {
            if (temp_a5 != 0x1B01) {
                var_a2 = sp1;
                if (temp_a5 == 0x1B00) {
                    var_a2 = var_a4->unk-7F24;
                }
            } else {
                var_a2 = var_a4->unk-7F23;
            }
        } else {
            var_a2 = var_a4->unk-7F20;
        }
        if (var_a7 != 0) {

        } else if (var_a2 != sp0) {
            if (sp0 != 0) {
                var_a4->unk-7F28 = arg3;
            } else {
                var_a4->unk-7F28 = temp_a5;
            }
            arg0->unk2F18 = &__glCrmBeginPolygonMode;
            arg0->unk2F1C = &__glCrmBeginPolygonMode;
            arg0->unk2F0C = &__glCrmBeginPolygonMode;
            arg0->unk2F14 = &__glCrmBeginPolygonMode;
            arg0->unk2F10 = &__glCrmBeginPolygonMode;
            var_a2 = 0;
            arg0->unk2F20 = &__glCrmBeginPolygonMode;
        }
    } else {
block_11:
        var_a2 = sp0;
    }
    var_a4->unk-7F1D = var_a2;
    var_a4->unk-7F1C = var_a2;
    var_a4->unk-7F20 = var_a2;
    var_a4->unk-7F1E = var_a2;
    var_a4->unk-7F1F = var_a2;
    var_a4->unk-7F1B = var_a2;
    temp_t8 = var_a4->unk-7F23;
    var_a4->unk-7F21 = temp_t8;
    var_a4->unk-7F22 = temp_t8;
}

void __glCrmValidate(void *arg0) {
    __glCrmUnlayerColorProcs();
    arg0->unk2E5C(arg0);
    __glCrmLayerColorProcs(arg0);
}

void __glCrmValidateLighting(void *arg0) {
    __glValidateLighting();
    if (!(arg0->unk76E4 & 0x2000) || (// Error: negative shift count, // At instruction: bgez $v0, .L0d952700, M2C_ERROR()) || (arg0->unkC84 != 0x1C00)) {
        if (!(arg0->unk700 & 0x40) || (arg0->unk812E == 0) || (arg0->unkC84 != 0x1C00)) {
            return;
        }
        arg0->unk2EE4 = &__glCrmCalcAlphaColor;
        return;
    }
    if (arg0->unk700 & 0x40) {
        if (arg0->unk812E != 0) {
            arg0->unk2EE4 = &__glCrmCalcAlphaColor;
            return;
        }
        arg0->unk2EE4 = (? *) arg0->unk2EE8;
        return;
    }
    arg0->unk2EE4 = &__glNop;
}

void __glCrmPickAllProcs(void *arg0) {
    s64 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 temp_t0;
    s32 temp_v1;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s3;
    s32 var_v0;
    s32 var_v1;
    s64 var_t9;
    u32 temp_a4_5;
    u32 var_a0_3;
    u8 temp_a7_2;
    u8 var_a0;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a2_4;
    void *temp_s2;
    void *var_a2_3;

    temp_s3 = arg0->unk700;
    temp_s2 = arg0->unk7DB8;
    var_a2 = arg0->unk2DEC;
    if (var_a2 & 0x21) {
        arg0->unk2E14(var_a2);
        var_a0 = 0;
        if (arg0->unkC94 != 0) {
            var_a0 = 0;
            if (arg0->unk6E30 != 0) {
                var_a0 = 1;
            }
        }
        var_a2 = arg0->unk2DEC;
        arg0->unk6E38 = var_a0;
    }
    temp_a1 = var_a2 & 0x80;
    if (temp_a1 != 0) {
        arg0->unk2E58(arg0, temp_a1, var_a2);
    }
    temp_a0 = temp_s3 & 2;
    if (arg0->unkC94 != 0) {
        temp_a6 = (arg0->unk6E38 == 0) ? 1 : 9;
        temp_a4 = (temp_a0 == 0) ? temp_a6 : (temp_a6 | 0x100);
        var_s1 = !(temp_s3 & 1) ? temp_a4 : (temp_a4 | 0x200);
        if ((arg0->unk75C == 0) || (arg0->unk75D == 0) || (arg0->unk75E == 0) || (var_ra = temp_s3 & 0x10, (arg0->unk75F == 0))) {
            var_s1 |= 0x800;
            goto block_13;
        }
    } else {
        temp_a5 = !(temp_s3 & 4) ? 0 : 0x80;
        var_s1 = ((arg0->unk758 ^ arg0->unk7810) == 0) ? temp_a5 : (temp_a5 | 0x800);
block_13:
        var_ra = temp_s3 & 0x10;
    }
    var_s1_2 = ((0x1D01 ^ arg0->unk570) == 0) ? (var_s1 | 0x20002) : var_s1;
    if (var_ra != 0) {
        if (arg0->unkC99 != 0) {
            // Error: negative shift count
            // At instruction: bgez $ra, .L0d9528fc
            if (M2C_ERROR()) {
                if ((f64) arg0->unk1F4 == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
                    if ((f64) arg0->unk1F8 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
                        goto block_20;
                    }
                } else {
block_20:
                    var_s1_2 |= 0x40000;
                }
            }
        }
    }
    temp_a7 = !(temp_s3 & 0x1000) ? var_s1_2 : (0x10000 | var_s1_2);
    temp_a4_2 = !(temp_s3 & 8) ? temp_a7 : (temp_a7 | 0x40);
    temp_v1 = !(temp_s3 & 0x2000) ? temp_a4_2 : (temp_a4_2 | 0x10);
    var_s1_3 = !(temp_s3 & 0x100) ? temp_v1 : (temp_v1 | 0x8000);
    if (temp_s3 & 0x8000) {
        var_s1_3 = (arg0->unkC9A != 0) ? (var_s1_3 | 0x20) : var_s1_3;
    }
    temp_s4 = temp_s3 & 0x40;
    var_t9 = temp_s3 & 0x20;
    if (temp_s4 != 0) {
        var_s1_3 = (arg0->unk585 != 0) ? (var_s1_3 | 0x400) : var_s1_3;
        var_t9 = temp_s3 & 0x20;
    }
    sp0 = var_t9;
    if (var_t9 != 0) {
        if ((arg0->unk778 == 0x1102) || ((arg0->unk6E38 != 0) && !(arg0->unk7D58 & 0x8000))) {
            var_s1_3 |= 0x1000;
        } else {
            var_s1_3 |= 0x2002;
        }
    }
    temp_a5_2 = arg0->unk72C;
    temp_a4_3 = arg0->unk728;
    var_a3 = arg0->unk724;
    if ((temp_a0 != 0) && !(arg0->unk704 & 0x800)) {
        switch (var_a3) {                           /* irregular */
        default:
            if ((temp_a4_3 != 0x8001) && (temp_a4_3 != 0x8002) && (temp_a4_3 != 0x8003) && (temp_a4_3 != 0x8004) && (temp_a5_2 != 0x8007) && (temp_a5_2 != 0x8008) && (temp_a5_2 != 0x800A) && (temp_a5_2 != 0x800B)) {
                if (temp_a5_2 == 0xBF1) {
                case 0x8001:
                    goto block_117;
                }
            } else {
            case 0x8002:
            case 0x8003:
            case 0x8004:
block_117:
                var_s1_3 |= 0x80000;
            }
            break;
        }
    }
    arg0->unk7DC0 = 0;
    var_a0_2 = 0;
    arg0->unk76E4 = var_s1_3;
    if (var_s1_3 & 8) {
        var_a3 = 8;
        if (arg0->unk7D58 & 0x8000) {
            arg0->unk7DC0 = 8;
            var_a0_2 = 8;
        }
    }
    temp_a4_4 = var_s1_3 & 2;
    var_a5 = var_s1_3 & 0x24;
    if (temp_a4_4 != 0) {
        var_a0_2 |= 0x10;
        arg0->unk7DC0 = var_a0_2;
        var_a5 = var_s1_3 & 0x24;
    }
    var_a7 = var_s1_3 & 0x2300;
    if (var_a5 != 0) {
        var_a0_2 |= 0x20;
        arg0->unk7DC0 = var_a0_2;
        var_a7 = var_s1_3 & 0x2300;
    }
    if (var_a7 != 0) {
        arg0->unk7DC0 = (s32) (var_a0_2 | 0x40);
    }
    temp_a1_2 = arg0->unk77C0;
    temp_a1_2->unkA0(arg0, temp_a1_2, 0x10000, var_a3, temp_a4_4, var_a5, 0x1D01, var_a7);
    if (arg0->unkC96 != 0) {
        temp_a1_3 = arg0->unk77C4;
        temp_a1_3->unkA0(arg0, temp_a1_3);
    }
    temp_a2 = arg0->unk2DEC;
    if (temp_a2 & 0x21) {
        if (arg0->unk6E38 != 0) {
            // Error: negative shift count
            // At instruction: bgez $t8, .L0d952ed8
            if (M2C_ERROR()) {
                temp_a0_2 = arg0->unk7C0;
                var_a6 = 0x14;
                if (temp_a0_2 != 0x2400) {
                    var_a6 = ((temp_a0_2 ^ 0x2402) == 0) ? 0x1C : 4;
                }
            } else {
                var_a6 = 4;
            }
            // Error: negative shift count
            // At instruction: bgez $at, .L0d952ab0
            if (M2C_ERROR()) {
                temp_a0_3 = arg0->unk83C;
                if (temp_a0_3 != 0x2400) {
                    var_a6 = ((temp_a0_3 ^ 0x2402) == 0) ? (var_a6 | 0x18) : var_a6;
                } else {
                    var_a6 |= 0x10;
                }
            }
        } else {
            var_a6 = 0;
        }
        if (temp_s4 != 0) {
            var_a2_2 = 0x18;
            if (arg0->unk584 == 0) {
                temp_a4_5 = arg0->unkE04;
                var_a0_3 = 0;
                var_a2_3 = arg0->unk630;
                if (temp_a4_5 != 0) {
loop_128:
                    temp_t0 = arg0->unk708 & (1 << var_a0_3);
                    var_a0_3 += 1;
                    if ((temp_t0 != 0) && (var_a2_3->unk4C != 0.0f)) {
                        var_a2_2 = 0x18;
                    } else {
                        var_a2_3 += 0x74;
                        if (var_a0_3 < temp_a4_5) {
                            goto loop_128;
                        }
                        goto block_134;
                    }
                } else {
block_134:
                    var_a2_2 = 8;
                }
            }
        } else {
            var_a2_2 = 0;
        }
        temp_s3_2 = var_s1_3 & 0x2000;
        if (sp0 != 0) {
            temp_a3 = var_a6 | 0x10;
            var_a6 = (temp_s3_2 == 0) ? temp_a3 : (temp_a3 | 0x40);
        }
        temp_a0_4 = (arg0->unk70C == 0) ? var_a6 : (var_a6 | 0x10);
        arg0->unk6DAC = temp_a0_4;
        temp_a0_5 = var_a2_2 | temp_a0_4;
        arg0->unk6DB4 = temp_a0_5;
        var_a3_2 = temp_a0_5;
        arg0->unk6DB0 = temp_a0_5;
        var_a4 = temp_a0_5;
        if (temp_s4 != 0) {
            var_a4 = temp_a0_5 | 1;
            arg0->unk6DB0 = var_a4;
            var_a3_2 = var_a4;
            if (arg0->unk585 != 0) {
                var_a3_2 = temp_a0_5 | 2;
                arg0->unk6DB4 = var_a3_2;
            } else {
                arg0->unk6DB4 = var_a4;
            }
        }
        temp_a6_2 = arg0->unk570;
        temp_a2_2 = var_a4 | var_a3_2;
        if (temp_a6_2 != 0x1D01) {
            arg0->unk6DB8 = 0;
        } else {
            arg0->unk6DB8 = temp_a2_2;
        }
        temp_a7_2 = arg0->unkC9A;
        if (temp_a7_2 != 0) {
            arg0->unk79DC(arg0, arg0 + 0x7984, temp_a2_2, var_a3_2, var_a4, 0x1D01, temp_a6_2, temp_a7_2);
        }
        arg0->unk2E3C(arg0);
        arg0->unk2E40(arg0);
        arg0->unk2E1C(arg0);
        __glCrmValidate(arg0);
        sub_0d950000(arg0);
        arg0->unk2E0C(arg0);
        arg0->unk2E18(arg0);
        if (temp_s3_2 != 0) {
            arg0->unk76E4 = (s32) (arg0->unk76E4 | 0x1000);
        }
        arg0->unk2E38(arg0);
        if (temp_s3_2 != 0) {
            arg0->unk76E4 = var_s1_3;
        }
        arg0->unk2E34(arg0);
        var_s3 = 1;
    } else {
        var_s3 = 0;
        if (temp_a2 & 0x1E) {
            sub_0d950000(arg0);
            var_s3 = 1;
        }
    }
    if (arg0->unk2DEC & 0x40) {
        arg0->unk3170(arg0);
        temp_a0_6 = arg0->unk80A0;
        var_ra_2 = temp_a0_6 & 4;
        if (temp_a0_6 & 2) {
            var_a0_4 = temp_a0_6 | 4;
            arg0->unk80A0 = var_a0_4;
            goto block_71;
        }
    } else {
        var_a0_4 = arg0->unk80A0;
block_71:
        var_ra_2 = var_a0_4 & 4;
    }
    if (var_ra_2 != 0) {
        __glCrmUpdatePolyStipple(arg0);
    }
    temp_a2_3 = arg0->unk2DEC;
    var_v0 = temp_a2_3 & 0x23;
    if (temp_a2_3 & 0x29) {
        arg0->unk2E20(arg0);
        var_v0 = arg0->unk2DEC & 0x23;
    }
    var_v1 = arg0->unk2DEC & 0x25;
    if (var_v0 != 0) {
        arg0->unk2E24(arg0);
        var_v1 = arg0->unk2DEC & 0x25;
    }
    var_a0_5 = arg0->unk2DEC & 0x31;
    if (var_v1 != 0) {
        arg0->unk2E44(arg0);
        arg0->unk2E28(arg0);
        var_a0_5 = arg0->unk2DEC & 0x31;
    }
    var_a1 = arg0->unk2DEC & 0x21;
    if (var_a0_5 != 0) {
        arg0->unk2E30(arg0, var_a1, arg0->unk2DEC);
        var_a1 = arg0->unk2DEC & 0x21;
    }
    var_a3_3 = arg0->unk2DEC & 0x27;
    if (var_a1 != 0) {
        arg0->unk2E2C(arg0, var_a1, arg0->unk2DEC, var_a3_3);
        if (arg0->unk2DE8 & 1) {
            __glValidateAlphaTest(arg0);
        }
        arg0->unk2E8C(arg0);
        var_a3_3 = arg0->unk2DEC & 0x27;
    }
    var_a4_2 = arg0->unk2DEC & 0x2F;
    if (var_a3_3 != 0) {
        arg0->unk2E48(arg0);
        var_a4_2 = arg0->unk2DEC & 0x2F;
    }
    if (var_a4_2 != 0) {
        if (var_s3 == 0) {
            arg0->unk2E40(arg0);
        }
        __glCrmPickStoreProcs(arg0);
    }
    arg0->unk2DEC = 0;
    arg0->unk2DE8 = 0;
    if (arg0->unkC84 == 0x1C00) {
        temp_a0_7 = arg0->unk7D58;
        if (arg0->unk7D5C != temp_a0_7) {
            arg0->unk7DB8->unk2018 = temp_a0_7;
            arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
            arg0->unk7D5C = (s32) arg0->unk7D58;
        }
    }
    temp_a2_4 = arg0->unk7DBC;
    temp_a0_8 = arg0->unk7DC0;
    if (temp_a2_4->unk21F0 & ~temp_a0_8 & 1) {
loop_93:
        if (!(temp_s2->unk4000 & 0x10000000)) {
            if (!(temp_s2->unk4000 & 0x10000000)) {
                goto loop_93;
            }
        }
    }
    temp_a2_4->unk21F0 = temp_a0_8;
}
