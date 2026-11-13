/*
Decompilation failure in function __glim_Color3f:

Unable to determine jump table for jr instruction at mips_fastapi.s line 27.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glim_Color3fv:

Unable to determine jump table for jr instruction at mips_fastapi.s line 59.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glim_Color4f:

Unable to determine jump table for jr instruction at mips_fastapi.s line 83.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glim_Color4fv:

Unable to determine jump table for jr instruction at mips_fastapi.s line 115.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glim_Normal3f(f32 fparg0, f32 fparg1, f32 fparg2) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    temp_a2->unkD0 = fparg0;
    temp_a2->unkD4 = fparg1;
    temp_a2->unkD8 = fparg2;
}

void __glim_Normal3fv(void *arg0) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a3->unkD0 = (f32) arg0->unk0;
    temp_a3->unkD4 = (f32) arg0->unk4;
    temp_a3->unkD8 = (f32) arg0->unk8;
}

void __glim_TexCoord2f(f32 fparg0, f32 fparg1) {
    void *temp_t0;

    temp_t0 = *(void **)0x1010;
    temp_t0->unkE0 = fparg0;
    temp_t0->unkE4 = fparg1;
    temp_t0->unkE8 = 0;
    temp_t0->unkEC = 0x3F800000;
}

void __glim_TexCoord2fv(void *arg0) {
    void *temp_t2;

    temp_t2 = *(void **)0x1010;
    temp_t2->unkE0 = (f32) arg0->unk0;
    temp_t2->unkE4 = (f32) arg0->unk4;
    temp_t2->unkE8 = 0;
    temp_t2->unkEC = 0x3F800000;
}
