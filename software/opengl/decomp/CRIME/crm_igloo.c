? __glClampAndScaleColor(s32, void *, void *, ?, s32); /* extern */
? __glCrmInitDepth(s32, u8, void *, void *, ? *, ? *); /* extern */
? __glCrmIoctl(void *, ?, void *, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glGenericPickColorMaterialProcs();              /* extern */
? __glSetError(?, ?, ?, void *, ?, ?, ? *);         /* extern */
extern ? __glEvenTStripVertex;
extern ? __glEvenTStripVertexFast;
extern ? __glNop;
extern ? __glOddTStripVertex;
extern ? __glOddTStripVertexFast;
extern ? sub_0d950000;

void crmIglooSwaptmesh(void) {
    ? *temp_a1;
    s32 temp_at;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    temp_at = temp_a2->unk3198;
    temp_a1 = temp_a2->unk2EAC;
    temp_a2->unk3198 = (s32) temp_a2->unk3194;
    temp_a2->unk3194 = temp_at;
    if (temp_a1 != &__glOddTStripVertex) {
        if (temp_a1 != &__glOddTStripVertexFast) {
            if (temp_a1 != &__glEvenTStripVertex) {
                if (temp_a1 == &__glEvenTStripVertexFast) {
                    temp_a2->unk2EAC = &__glOddTStripVertexFast;
                    return;
                }
                return;
            }
            temp_a2->unk2EAC = &__glOddTStripVertex;
            return;
        }
        temp_a2->unk2EAC = &__glEvenTStripVertexFast;
        return;
    }
    temp_a2->unk2EAC = &__glEvenTStripVertex;
}

void crmIglooFullScreen(s32 arg0, s32 arg1) {
    s32 temp_a3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_a3 = temp_s0->unk7B14;
    __glCrmIoctl(temp_s0->unk7B10, 0x3F1, sp, temp_a3, temp_a3, 2, 6, 3, arg0, temp_s0->unk7B14, arg1);
    temp_s0->unk812C = (s8) arg1;
    __glCrmIoctl(temp_s0);
    temp_s0->unk2E84(temp_s0);
}

void __glcrmim_n3f(void) {
    (*(void **)0x1010)->unk17B8->unk644();
}

void crmIgloolmcolor(s32 arg0) {
    s32 temp_a2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a2 = temp_a3->unk7B08;
    if (arg0 != 1) {
        temp_a3->unk7B08 = (s32) (temp_a2 & ~1);
        *(s32 *)0x1018 = 2;
        temp_a3->unk2DEC = (s32) (temp_a3->unk2DEC | 1);
        return;
    }
    temp_a3->unk7B08 = (s32) (temp_a2 | 1);
    *(void *)0x1018 = 2;
    temp_a3->unk2DEC = (s32) (temp_a3->unk2DEC | 1);
}

void crmIglooApplyColor(void *arg0) {
    s32 temp_a2;

    temp_a2 = arg0->unk7B08;
    if ((temp_a2 & 1) && (temp_a2 & 2)) {
        __glClampAndScaleColor(temp_a2);
    }
}

void crmIglooPickColorMaterialProcs(void *arg0) {
    s32 temp_a1;

    __glGenericPickColorMaterialProcs();
    temp_a1 = arg0->unk700;
    if (!(temp_a1 & 0x80) && (temp_a1 & 0x40)) {
        arg0->unk2EE0 = (void *) (&sub_0d950000 - 0x4FD0);
    }
}

void __glcrmim_IglooInterfaceSGIX(s32 arg0, void *arg1) {
    s32 temp_a0;
    s32 temp_a7;
    s32 temp_t0;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    switch (arg0) {                                 /* irregular */
    default:
        __glSetError(0x500, 0x819E, 0x81A3, temp_a3, 0x819F, 0x81A2, &sub_0d950000);
        /* fallthrough */
        return;
    case 0x81A2:
        temp_a3->unk2E10 = (void *) (&sub_0d950000 - 0x4F80);
        return;
    case 0x81A1:
        temp_a7 = arg1->unk0;
        temp_a0 = temp_a3->unk7B08;
        if (temp_a7 != 0) {
            temp_t0 = temp_a0 | 2;
            temp_a3->unk7B08 = temp_t0;
            if ((temp_t0 & 1) && (temp_a3->unk2EE0 == &__glNop)) {
                __glClampAndScaleColor((s32) temp_a3, temp_a3, arg1, 0x81A2, temp_a7);
            }
        } else {
            temp_a3->unk7B08 = (s32) (temp_a0 & ~2);
            return;
        }
        break;
    case 0x81A0:
        __glCrmInitDepth(0x819E, (u8) temp_a3, arg1, (void *)0x81A2, &sub_0d950000);
        break;
    case 0x819E:
        __glCrmInitDepth(arg1->unk0, arg1->unk7, temp_a3, arg1, (? *)0x81A2, &sub_0d950000);
        break;
    case 0x81A3:
        __glcrmim_n3f(arg1->unk3, 0x819E, 0x81A3, temp_a3, arg1, 0x81A2, &sub_0d950000);
        break;
    }
}
