? __glClipCheckAll();                               /* extern */
? __glClipCheckAll2();                              /* extern */
? __glClipCheckAll3();                              /* extern */

s32 __glMipsClipCheckFrustum(void *arg0, void *arg1) {
    arg1->unk8C = (f32) M2C_ERROR(/* Read from unset register $f8 */);
    arg1->unk80 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f9, $f0, $f8 */);
    arg1->unk84 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f10, $f2, $f8 */);
    arg1->unk88 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f11, $f4, $f8 */);
    return ((u32) M2C_ERROR(/* cfc1 */) >> 0x19) & 0x3F;
}

s32 __glMipsClipCheckFrustum_W(void *arg0, void *arg1) {
    arg1->unk8C = (f32) M2C_ERROR(/* Read from unset register $f6 */);
    arg1->unk80 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f16, $f0, $f13 */);
    arg1->unk84 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f17, $f2, $f14 */);
    arg1->unk88 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f18, $f4, $f15 */);
    return ((u32) M2C_ERROR(/* cfc1 */) >> 0x19) & 0x3F;
}

s32 __glMipsClipCheckFrustum2D(void *arg0, void *arg1) {
    arg1->unk8C = (f32) M2C_ERROR(/* Read from unset register $f6 */);
    arg1->unk80 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f4, $f0, $f1 */);
    arg1->unk84 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f2, $f3 */);
    arg1->unk88 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f7, $f9, $f8 */);
    return ((u32) M2C_ERROR(/* cfc1 */) >> 0x19) & 0xF;
}

/*
Decompilation failure in function __glMipsClipCheckSafe2:

Unable to determine jump table for jr instruction at mips4_vclip.s line 197.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glMipsClipCheckSafe3:

Unable to determine jump table for jr instruction at mips4_vclip.s line 219.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glMipsClipCheckSafe4:

Unable to determine jump table for jr instruction at mips4_vclip.s line 241.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x58, 0x5c], gap at: 0x20. */
void __glMipsClipCheckAll2(s64 arg0, s64 arg1) {
    unksp48 = M2C_ERROR(/* Read from unset register $t3 */);
    unksp40 = M2C_ERROR(/* Read from unset register $t2 */);
    unksp38 = M2C_ERROR(/* Read from unset register $t1 */);
    unksp30 = M2C_ERROR(/* Read from unset register $t0 */);
    unksp28 = arg1;
    unksp20 = arg0;
    __glClipCheckAll2();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x58, 0x5c], gap at: 0x20. */
void __glMipsClipCheckAll3(s64 arg0, s64 arg1) {
    unksp48 = M2C_ERROR(/* Read from unset register $t3 */);
    unksp40 = M2C_ERROR(/* Read from unset register $t2 */);
    unksp38 = M2C_ERROR(/* Read from unset register $t1 */);
    unksp30 = M2C_ERROR(/* Read from unset register $t0 */);
    unksp28 = arg1;
    unksp20 = arg0;
    __glClipCheckAll3();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x58, 0x5c], gap at: 0x30. */
void __glMipsClipCheckAll(s64 arg0, s64 arg1) {
    unksp48 = M2C_ERROR(/* Read from unset register $t3 */);
    unksp40 = M2C_ERROR(/* Read from unset register $t2 */);
    unksp38 = M2C_ERROR(/* Read from unset register $t1 */);
    unksp30 = M2C_ERROR(/* Read from unset register $t0 */);
    unksp28 = arg1;
    unksp20 = arg0;
    __glClipCheckAll();
}

s32 __glMipsClipCheck2D_2(void *arg0, void *arg1) {
    M2C_ERROR(/* unknown instruction: madd.s $f15, $f12, $f10, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f17, $f13, $f10, $f14 */);
    arg1->unk80 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f18 */);
    arg1->unk84 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f16, $f0 */);
    return ((u32) M2C_ERROR(/* cfc1 */) >> 0x19) & 0xF;
}

s32 __glMipsClipCheck2D_3(void *arg0, void *arg1) {
    M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f6, $f5 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f7, $f6, $f9 */);
    M2C_ERROR(/* unknown instruction: madd.s $f18, $f14, $f15, $f16 */);
    arg1->unk80 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f10, $f12 */);
    arg1->unk84 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f10, $f13 */);
    return ((u32) M2C_ERROR(/* cfc1 */) >> 0x19) & 0x3F;
}

/*
Decompilation failure in function __glMipsClipCheck2D_3_vtx:

Unable to determine jump table for jr instruction at mips4_vclip.s line 624.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glMipsClipCheck2D_4(void *arg0, void *arg1) {
    void *sp50;
    void *sp48;
    void *temp_a3;

    temp_a3 = arg0->unk73DC;
    sp50 = arg0;
    sp48 = arg1;
    temp_a3->unk100(arg1 + 0x70, arg1 + 0x10, temp_a3 + 0xB0, temp_a3);
    M2C_ERROR(/* Read from unset register $a1 */)->unk4 = __glMipsClipCheckFrustum(arg0, arg1);
}
