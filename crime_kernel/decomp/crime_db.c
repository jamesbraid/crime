s32 crmAllocTiles(u16 *, s32, M2C_UNK);             /* extern */
M2C_UNK crmFreeTiles(u16 *, s32, s32, u8);          /* extern */
s32 crmNextIncarnation();                           /* extern */
M2C_UNK kern_free(u16 *);                           /* extern */
u16 *kern_malloc(s32);                              /* extern */

s32 crmAddBackTiles(void *arg0, s32 arg1, void *arg2) {
    s32 temp_s2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_v0;
    u16 *temp_a4;
    u16 *var_a2;
    void *var_s0;

    temp_s2 = M2C_FIELD(arg0, s32 *, 8);
    var_s0 = arg2;
    if (arg1 != 0) {
        if (crmAllocTiles(sp, M2C_FIELD(arg0, s32 *, 0xC), 3) != 0) {
            var_a0 = 1;
        } else {
            goto block_4;
        }
    } else {
block_4:
        var_a2 = sp;
        *(s16 *)2 += arg1;
        *(s16 *)6 += arg1;
        if (arg1 > 0) {
            var_v0 = 0;
loop_6:
            temp_v0 = var_v0 + 1;
            *(temp_s2 + (M2C_FIELD(var_s0, u8 *, 0) * 2)) = *var_a2;
            if (temp_v0 < arg1) {
                var_a2 += 4;
                var_v0 = temp_v0 + 1;
                temp_a4 = temp_s2 + (M2C_FIELD(var_s0, u8 *, 1) * 2);
                var_s0 += 2;
                *temp_a4 = M2C_FIELD(var_a2, u16 *, -2);
                if (var_v0 < arg1) {
                    goto loop_6;
                }
            }
        }
        M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) + arg1);
        M2C_FIELD(arg0, s32 *, 0x10) = crmNextIncarnation();
        var_a0 = 0;
    }
    return var_a0;
}

void crmSubtractBackTiles(void *arg0, s32 arg1, u8 *arg2) {
    s32 temp_s3;
    s32 var_a2;
    s32 var_s1;
    u16 *temp_s4;
    u16 *temp_t0;
    u16 *temp_v0;
    u16 *var_a5;
    u16 temp_a7;
    u8 *var_s0;

    var_s0 = arg2;
    temp_s3 = M2C_FIELD(arg0, s32 *, 8);
    temp_v0 = kern_malloc(arg1 * 2);
    temp_s4 = temp_v0;
    if (arg1 > 0) {
        var_a2 = 0;
        var_a5 = temp_v0;
        var_s1 = 0;
        do {
            temp_t0 = temp_s3 + (*var_s0 * 2);
            temp_a7 = *temp_t0;
            var_s0 += 1;
            var_a2 += 1;
            if (temp_a7 != 0) {
                *var_a5 = temp_a7;
                *temp_t0 = 0;
                var_s1 += 1;
            }
            var_a5 += 2;
        } while (var_a2 < arg1);
        if (var_s1 > 0) {
            M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) - var_s1);
            M2C_FIELD(arg0, s32 *, 0x10) = crmNextIncarnation();
            crmFreeTiles(temp_s4, var_s1, M2C_FIELD(arg0, s32 *, 0xC), M2C_FIELD(arg0, u8 *, 0x15));
        }
    }
    kern_free(temp_s4);
}
