# Source: ../soft/so_eval.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_eval.c
# Total Functions: 56

.text

# Function: __glEvalComputeK
# Declared: Line 48 (Source lines: 49-74)
# Address: 0x0d9d2fc0 - 0x0d9d3020 (Size: 96 bytes, Frame: 0)
.globl __glEvalComputeK
.ent __glEvalComputeK
__glEvalComputeK:
    # Line 49
    lui	$a4,0x8
    addiu	$a4,$a4,-8756
    addu	$at,$t9,$a4
    addiu	$a4,$a0,-3472
    la	$a3,sub_0da40000
    # Line 64
    li	$v0,3
    # Line 49
    sltiu	$a5,$a4,41
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,19392
    beqz	$a5,.L0d9d2ff8
    addu	$a3,$a3,$a4
    lw	$a5,0($a3)
    jr	$a5
    nop
.L0d9d2ff8:
    # Line 74
    jr	$ra
    li	$v0,-1
.L0d9d3000:
    jr	$ra
    # Line 57
    li	$v0,4
.L0d9d3008:
    # Line 74
    jr	$ra
    # Line 67
    li	$v0,2
.L0d9d3010:
    # Line 74
    jr	$ra
    nop
.L0d9d3018:
    jr	$ra
    # Line 72
    li	$v0,1
.end __glEvalComputeK

# Function: __glInitEvaluatorState
# Declared: Line 95 (Source lines: 96-159)
# Address: 0x0d9d3020 - 0x0d9d32a4 (Size: 644 bytes, Frame: 224)
.globl __glInitEvaluatorState
.ent __glInitEvaluatorState
__glInitEvaluatorState:
    # Line 96
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    sd	$s6,72($sp)
    sd	$s0,40($sp)
    sd	$s2,88($sp)
    sd	$s7,16($sp)
    sd	$s8,8($sp)
    sdc1	$f20,0($sp)
    sd	$s4,48($sp)
    lui	$s4,0x8
    mtc1	$zero,$f20
    sd	$s3,80($sp)
    addiu	$s4,$s4,-8852
    li	$s8,1
    sd	$gp,64($sp)
    addu	$gp,$t9,$s4
    addiu	$s7,$a0,216
    move	$s2,$a0
    la	$s3,sub_0da40000
    move	$s0,$a0
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$ra,56($sp)
    move	$s4,$a0
    addiu	$s3,$s3,19176
    nop
    nop
    nop
.L0d9d3090:
    # Line 120
    lw	$s1,4($s3)
    # Line 118
    swc1	$f20,28244($s4)
    # Line 117
    sw	$s8,28240($s4)
    # Line 119
    lwc1	$f2,3544($s2)
    # Line 120
    sw	$s1,28236($s4)
    # Line 119
    swc1	$f2,28248($s4)
    # Line 123
    swc1	$f20,28464($s5)
    # Line 122
    sw	$s8,28460($s5)
    # Line 121
    sw	$s8,28456($s5)
    # Line 124
    lwc1	$f1,3544($s2)
    # Line 125
    swc1	$f20,28472($s5)
    # Line 124
    swc1	$f1,28468($s5)
    # Line 126
    lwc1	$f0,3544($s2)
    # Line 127
    sw	$s1,28452($s5)
    # Line 126
    swc1	$f0,28476($s5)
    # Line 129
    lw	$t9,0($s2)
    move	$a0,$s2
    sll	$s6,$s1,0x2
    jalr	$t9
    move	$a1,$s6
    sw	$v0,28812($s0)
    # Line 131
    lw	$t9,0($s2)
    move	$a1,$s6
    jalr	$t9
    move	$a0,$s2
    sw	$v0,28848($s0)
    # Line 134
    lw	$t9,0($s2)
    li	$a1,8
    jalr	$t9
    move	$a0,$s2
    sw	$v0,28884($s0)
    # Line 136
    lw	$t9,0($s2)
    li	$a1,8
    jalr	$t9
    move	$a0,$s2
    sw	$v0,28920($s0)
    # Line 138
    lw	$t9,0($s2)
    li	$a1,8
    jalr	$t9
    move	$a0,$s2
    li	$a5,1
    # Line 107
    addiu	$s4,$s4,24
    addiu	$s5,$s5,40
    # Line 138
    blez	$s1,.L0d9d3230
    sw	$v0,28956($s0)
    slt	$t8,$s1,$a5
    movz	$a5,$s1,$t8
    andi	$a0,$a5,0x3
    move	$a1,$zero
    move	$a4,$s3
    move	$a3,$zero
    beqz	$a0,.L0d9d3194
    sra	$at,$a5,0x2
.L0d9d3164:
    # Line 142
    lw	$ra,28812($s0)
    lwc1	$f3,8($a4)
    addu	$ra,$ra,$a1
    swc1	$f3,0($ra)
    # Line 143
    lw	$t9,28848($s0)
    # Line 141
    addiu	$a4,$a4,4
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,1
    # Line 143
    addu	$t9,$t9,$a1
    # Line 141
    addiu	$a1,$a1,4
    bnez	$a0,.L0d9d3164
    # Line 143
    swc1	$f3,0($t9)
.L0d9d3194:
    beqz	$at,.L0d9d3230
    nop
    nop
.L0d9d31a0:
    # Line 142
    lw	$t8,28812($s0)
    lwc1	$f7,8($a4)
    addu	$t8,$t8,$a1
    swc1	$f7,0($t8)
    # Line 143
    lw	$t3,28848($s0)
    addu	$t3,$t3,$a1
    swc1	$f7,0($t3)
    # Line 142
    lw	$t2,28812($s0)
    lwc1	$f6,12($a4)
    # Line 141
    addiu	$t1,$a1,4
    # Line 142
    addu	$t2,$t2,$t1
    swc1	$f6,0($t2)
    # Line 143
    lw	$t0,28848($s0)
    addu	$t0,$t0,$t1
    swc1	$f6,0($t0)
    # Line 142
    lw	$a7,28812($s0)
    lwc1	$f5,16($a4)
    # Line 141
    addiu	$a6,$a1,8
    # Line 142
    addu	$a7,$a7,$a6
    swc1	$f5,0($a7)
    # Line 143
    lw	$a5,28848($s0)
    addu	$a5,$a5,$a6
    swc1	$f5,0($a5)
    # Line 142
    lw	$a2,28812($s0)
    lwc1	$f4,20($a4)
    # Line 141
    addiu	$a0,$a1,12
    # Line 142
    addu	$a2,$a2,$a0
    swc1	$f4,0($a2)
    # Line 141
    addiu	$a3,$a3,4
    # Line 143
    lw	$v0,28848($s0)
    # Line 141
    slt	$v1,$a3,$s1
    addiu	$a4,$a4,16
    # Line 143
    addu	$v0,$v0,$a0
    # Line 141
    addiu	$a1,$a1,16
    bnez	$v1,.L0d9d31a0
    # Line 143
    swc1	$f4,0($v0)
.L0d9d3230:
    # Line 107
    addiu	$s3,$s3,24
    bne	$s4,$s7,.L0d9d3090
    addiu	$s0,$s0,4
    # Line 159
    ld	$gp,64($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$s6,72($sp)
    ld	$s7,16($sp)
    # Line 158
    sw	$s8,1976($s2)
    # Line 157
    sw	$s8,1960($s2)
    # Line 156
    sw	$s8,1944($s2)
    # Line 159
    ld	$s8,8($sp)
    # Line 152
    swc1	$f20,1964($s2)
    # Line 151
    swc1	$f20,1948($s2)
    # Line 150
    swc1	$f20,1932($s2)
    # Line 159
    ldc1	$f20,0($sp)
    # Line 148
    sw	$zero,29644($s2)
    # Line 153
    lwc1	$f8,3544($s2)
    # Line 147
    sw	$zero,29640($s2)
    # Line 155
    swc1	$f8,1968($s2)
    # Line 159
    ld	$ra,56($sp)
    # Line 154
    swc1	$f8,1952($s2)
    # Line 153
    swc1	$f8,1936($s2)
    # Line 159
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glInitEvaluatorState

# Function: __glFreeEvaluatorState
# Declared: Line 161 (Source lines: 162-188)
# Address: 0x0d9d32b0 - 0x0d9d3394 (Size: 228 bytes, Frame: 48)
.globl __glFreeEvaluatorState
.ent __glFreeEvaluatorState
__glFreeEvaluatorState:
    # Line 162
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s2,32($sp)
    addiu	$s2,$a0,36
    sd	$s1,8($sp)
    lui	$at,0x8
    move	$s1,$a0
    sd	$s0,24($sp)
    addiu	$at,$at,-9508
    move	$s0,$a0
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
.L0d9d32e0:
    lw	$a1,28812($s0)
    beqz	$a1,.L0d9d32fc
    nop
    # Line 168
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 169
    sw	$zero,28812($s0)
.L0d9d32fc:
    lw	$a1,28848($s0)
    beqz	$a1,.L0d9d3318
    nop
    # Line 172
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 173
    sw	$zero,28848($s0)
.L0d9d3318:
    lw	$a1,28884($s0)
    beqz	$a1,.L0d9d3334
    nop
    # Line 176
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 177
    sw	$zero,28884($s0)
.L0d9d3334:
    lw	$a1,28920($s0)
    beqz	$a1,.L0d9d3350
    nop
    # Line 180
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 181
    sw	$zero,28920($s0)
.L0d9d3350:
    lw	$a1,28956($s0)
    beqz	$a1,.L0d9d336c
    nop
    # Line 184
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 185
    sw	$zero,28956($s0)
.L0d9d336c:
    # Line 166
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L0d9d32e0
    nop
    # Line 188
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreeEvaluatorState

# Function: __glim_Map1d
# Declared: Line 190 (Source lines: 192-207)
# Address: 0x0d9d33a0 - 0x0d9d3480 (Size: 224 bytes, Frame: 192)
.globl __glim_Map1d
.ent __glim_Map1d
__glim_Map1d:
    # Line 192
    addiu	$sp,$sp,-64
    sd	$a5,0($sp)
    sd	$s2,32($sp)
    # Line 195
    lw	$s2,4112($zero)
    # Line 192
    sd	$s3,8($sp)
    sd	$s1,24($sp)
    move	$s1,$a4
    move	$s3,$a3
    # Line 195
    lw	$at,4120($zero)
    # Line 192
    sd	$s0,16($sp)
    # Line 195
    li	$v0,1
    # Line 192
    lui	$v1,0x8
    move	$s0,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-9748
    sd	$gp,40($sp)
    # Line 195
    beq	$at,$v0,.L0d9d346c
    # Line 192
    addu	$gp,$t9,$v1
    # Line 197
    # lw $t9, -26172($gp) # &__glSetUpMap1
    move	$a0,$s2
    move	$a1,$s0
    cvt.s.d	$f16,$f14
    move	$a2,$a4
    bal __glSetUpMap1
    cvt.s.d	$f15,$f13
    beqz	$v0,.L0d9d344c
    nop
    # Line 199
    lw	$a0,0($v0)
    slt	$a1,$s3,$a0
    beqz	$a1,.L0d9d3430
    # Line 206
    nop	# was lw $t9, -26192($gp) # &__glFillMap1d
    # Line 202
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3450
    ld	$s3,8($sp)
.L0d9d3430:
    # Line 206
    sll	$a4,$s0,0x2
    move	$a1,$s1
    ld	$a3,0($sp)
    addu	$a4,$s2,$a4
    move	$a2,$s3
    bal __glFillMap1d
    lw	$a4,14924($a4)
.L0d9d344c:
    ld	$s3,8($sp)
.L0d9d3450:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 207
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d346c:
    # Line 195
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3450
    ld	$s3,8($sp)
.end __glim_Map1d

# Function: __glim_Map1f
# Declared: Line 209 (Source lines: 211-226)
# Address: 0x0d9d3480 - 0x0d9d3560 (Size: 224 bytes, Frame: 192)
.globl __glim_Map1f
.ent __glim_Map1f
__glim_Map1f:
    # Line 211
    addiu	$sp,$sp,-64
    sd	$a5,0($sp)
    sd	$s2,32($sp)
    # Line 214
    lw	$s2,4112($zero)
    # Line 211
    sd	$s3,8($sp)
    sd	$s1,24($sp)
    move	$s1,$a4
    move	$s3,$a3
    # Line 214
    lw	$at,4120($zero)
    # Line 211
    sd	$s0,16($sp)
    # Line 214
    li	$v0,1
    # Line 211
    lui	$v1,0x8
    move	$s0,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-9972
    sd	$gp,40($sp)
    # Line 214
    beq	$at,$v0,.L0d9d354c
    # Line 211
    addu	$gp,$t9,$v1
    # Line 216
    # lw $t9, -26172($gp) # &__glSetUpMap1
    move	$a0,$s2
    move	$a1,$s0
    mov.s	$f15,$f13
    move	$a2,$a4
    bal __glSetUpMap1
    mov.s	$f16,$f14
    beqz	$v0,.L0d9d352c
    nop
    # Line 218
    lw	$a0,0($v0)
    slt	$a1,$s3,$a0
    beqz	$a1,.L0d9d350c
    # Line 221
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3530
    ld	$s3,8($sp)
.L0d9d350c:
    # Line 225
    # lw $t9, -26196($gp) # &__glFillMap1f
    sll	$a4,$s0,0x2
    move	$a1,$s1
    ld	$a3,0($sp)
    addu	$a4,$s2,$a4
    move	$a2,$s3
    bal __glFillMap1f
    lw	$a4,14924($a4)
.L0d9d352c:
    ld	$s3,8($sp)
.L0d9d3530:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 226
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d354c:
    # Line 214
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3530
    ld	$s3,8($sp)
.end __glim_Map1f

# Function: __glim_Map2d
# Declared: Line 228 (Source lines: 234-254)
# Address: 0x0d9d3560 - 0x0d9d367c (Size: 284 bytes, Frame: 128)
.globl __glim_Map2d
.ent __glim_Map2d
__glim_Map2d:
    # Line 234
    addiu	$sp,$sp,-128
    sd	$a7,0($sp)
    sd	$s2,24($sp)
    # Line 237
    lw	$s2,4112($zero)
    # Line 234
    sd	$s3,8($sp)
    sd	$s1,32($sp)
    move	$s1,$a4
    move	$s3,$a3
    # Line 237
    lw	$at,4120($zero)
    # Line 234
    sd	$s0,16($sp)
    # Line 237
    li	$v0,1
    # Line 234
    lui	$v1,0x8
    mov.d	$f5,$f18
    move	$s0,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-10196
    mov.d	$f4,$f17
    sd	$gp,40($sp)
    # Line 237
    beq	$at,$v0,.L0d9d3668
    # Line 234
    addu	$gp,$t9,$v1
    # Line 239
    cvt.s.d	$f19,$f18
    # lw $t9, -26168($gp) # &__glSetUpMap2
    cvt.s.d	$f18,$f17
    move	$a2,$a4
    cvt.s.d	$f17,$f14
    move	$a1,$a0
    move	$a0,$s2
    cvt.s.d	$f16,$f13
    bal __glSetUpMap2
    lw	$a3,132($sp)
    beqz	$v0,.L0d9d3604
    nop
    # Line 241
    lw	$a0,0($v0)
    slt	$a1,$s3,$a0
    bnez	$a1,.L0d9d3654
    # Line 245
    ld	$a2,0($sp)
    slt	$a2,$a2,$a0
    beqz	$a2,.L0d9d3624
    # Line 248
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
.L0d9d3604:
    ld	$s3,8($sp)
.L0d9d3608:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s1,32($sp)
    # Line 254
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d3624:
    # Line 252
    lw	$a2,132($sp)
    # lw $t9, -26180($gp) # &__glFillMap2d
    ld	$a4,0($sp)
    sll	$a6,$s0,0x2
    move	$a1,$s1
    lw	$a5,140($sp)
    addu	$a6,$s2,$a6
    move	$a3,$s3
    bal __glFillMap2d
    lw	$a6,14832($a6)
    b	.L0d9d3608
    ld	$s3,8($sp)
.L0d9d3654:
    # Line 244
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3608
    ld	$s3,8($sp)
.L0d9d3668:
    # Line 237
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3608
    ld	$s3,8($sp)
.end __glim_Map2d

# Function: __glim_Map2f
# Declared: Line 256 (Source lines: 262-282)
# Address: 0x0d9d3680 - 0x0d9d3798 (Size: 280 bytes, Frame: 128)
.globl __glim_Map2f
.ent __glim_Map2f
__glim_Map2f:
    # Line 262
    addiu	$sp,$sp,-128
    sd	$a7,0($sp)
    sd	$s2,24($sp)
    # Line 265
    lw	$s2,4112($zero)
    # Line 262
    sd	$s3,8($sp)
    sd	$s1,32($sp)
    move	$s1,$a4
    move	$s3,$a3
    # Line 265
    lw	$at,4120($zero)
    # Line 262
    sd	$s0,16($sp)
    # Line 265
    li	$v0,1
    # Line 262
    lui	$v1,0x8
    mov.s	$f19,$f18
    move	$s0,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-10484
    mov.s	$f4,$f17
    sd	$gp,40($sp)
    # Line 265
    beq	$at,$v0,.L0d9d3784
    # Line 262
    addu	$gp,$t9,$v1
    # Line 267
    # lw $t9, -26168($gp) # &__glSetUpMap2
    mov.s	$f18,$f17
    move	$a2,$a4
    mov.s	$f17,$f14
    move	$a1,$a0
    move	$a0,$s2
    mov.s	$f16,$f13
    bal __glSetUpMap2
    lw	$a3,132($sp)
    beqz	$v0,.L0d9d3724
    nop
    # Line 269
    lw	$a0,0($v0)
    slt	$a1,$s3,$a0
    bnez	$a1,.L0d9d3774
    # Line 272
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 273
    ld	$a2,0($sp)
    slt	$a2,$a2,$a0
    beqz	$a2,.L0d9d3744
    # Line 276
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
.L0d9d3724:
    ld	$s3,8($sp)
.L0d9d3728:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s1,32($sp)
    # Line 282
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d3744:
    # Line 280
    lw	$a2,132($sp)
    # lw $t9, -26184($gp) # &__glFillMap2f
    ld	$a4,0($sp)
    sll	$a6,$s0,0x2
    move	$a1,$s1
    lw	$a5,140($sp)
    addu	$a6,$s2,$a6
    move	$a3,$s3
    bal __glFillMap2f
    lw	$a6,14832($a6)
    b	.L0d9d3728
    ld	$s3,8($sp)
.L0d9d3774:
    # Line 272
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3728
    ld	$s3,8($sp)
.L0d9d3784:
    # Line 265
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3728
    ld	$s3,8($sp)
.end __glim_Map2f

# Function: __glim_EvalCoord1d
# Declared: Line 284 (Source lines: 285-288)
# Address: 0x0d9d37a0 - 0x0d9d37d8 (Size: 56 bytes, Frame: 16)
.globl __glim_EvalCoord1d
.ent __glim_EvalCoord1d
__glim_EvalCoord1d:
    # Line 285
    addiu	$sp,$sp,-16
    # Line 286
    lw	$a0,4112($zero)
    # Line 285
    lui	$at,0x8
    sd	$gp,8($sp)
    addiu	$at,$at,-10772
    addu	$gp,$t9,$at
    # Line 287
    lw	$t9,11988($a0)
    # Line 285
    sd	$ra,0($sp)
    # Line 287
    jalr	$t9
    cvt.s.d	$f13,$f12
    ld	$ra,0($sp)
    # Line 288
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord1d

# Function: __glim_EvalCoord1dv
# Declared: Line 290 (Source lines: 291-294)
# Address: 0x0d9d37e0 - 0x0d9d3820 (Size: 64 bytes, Frame: 16)
.globl __glim_EvalCoord1dv
.ent __glim_EvalCoord1dv
__glim_EvalCoord1dv:
    # Line 291
    move	$v0,$a0
    # Line 293
    ldc1	$f13,0($v0)
    # Line 291
    addiu	$sp,$sp,-16
    # Line 292
    lw	$a0,4112($zero)
    # Line 291
    lui	$at,0x8
    sd	$gp,8($sp)
    addiu	$at,$at,-10836
    addu	$gp,$t9,$at
    # Line 293
    lw	$t9,11988($a0)
    # Line 291
    sd	$ra,0($sp)
    # Line 293
    jalr	$t9
    cvt.s.d	$f13,$f13
    ld	$ra,0($sp)
    # Line 294
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord1dv

# Function: __glim_EvalCoord1f
# Declared: Line 296 (Source lines: 297-300)
# Address: 0x0d9d3820 - 0x0d9d3858 (Size: 56 bytes, Frame: 16)
.globl __glim_EvalCoord1f
.ent __glim_EvalCoord1f
__glim_EvalCoord1f:
    # Line 297
    addiu	$sp,$sp,-16
    # Line 298
    lw	$a0,4112($zero)
    # Line 297
    lui	$at,0x8
    sd	$gp,8($sp)
    addiu	$at,$at,-10900
    addu	$gp,$t9,$at
    # Line 299
    lw	$t9,11988($a0)
    # Line 297
    sd	$ra,0($sp)
    # Line 299
    jalr	$t9
    # Line 297
    mov.s	$f13,$f12
    ld	$ra,0($sp)
    # Line 300
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord1f

# Function: __glim_EvalCoord1fv
# Declared: Line 302 (Source lines: 303-306)
# Address: 0x0d9d3860 - 0x0d9d389c (Size: 60 bytes, Frame: 16)
.globl __glim_EvalCoord1fv
.ent __glim_EvalCoord1fv
__glim_EvalCoord1fv:
    # Line 303
    addiu	$sp,$sp,-16
    # Line 304
    lw	$at,4112($zero)
    # Line 303
    lui	$v0,0x8
    sd	$gp,8($sp)
    addiu	$v0,$v0,-10964
    addu	$gp,$t9,$v0
    # Line 305
    lw	$t9,11988($at)
    lwc1	$f13,0($a0)
    # Line 303
    sd	$ra,0($sp)
    # Line 305
    jalr	$t9
    move	$a0,$at
    ld	$ra,0($sp)
    # Line 306
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord1fv

# Function: __glim_EvalCoord2d
# Declared: Line 308 (Source lines: 309-312)
# Address: 0x0d9d38a0 - 0x0d9d38e0 (Size: 64 bytes, Frame: 16)
.globl __glim_EvalCoord2d
.ent __glim_EvalCoord2d
__glim_EvalCoord2d:
    # Line 309
    addiu	$sp,$sp,-16
    # Line 310
    lw	$a0,4112($zero)
    # Line 309
    lui	$at,0x8
    sd	$gp,8($sp)
    addiu	$at,$at,-11028
    addu	$gp,$t9,$at
    # Line 311
    lw	$t9,11992($a0)
    # Line 309
    mov.d	$f14,$f13
    # Line 311
    cvt.s.d	$f13,$f12
    # Line 309
    sd	$ra,0($sp)
    # Line 311
    jalr	$t9
    cvt.s.d	$f14,$f14
    ld	$ra,0($sp)
    # Line 312
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord2d

# Function: __glim_EvalCoord2dv
# Declared: Line 314 (Source lines: 315-318)
# Address: 0x0d9d38e0 - 0x0d9d3928 (Size: 72 bytes, Frame: 16)
.globl __glim_EvalCoord2dv
.ent __glim_EvalCoord2dv
__glim_EvalCoord2dv:
    # Line 315
    move	$v0,$a0
    # Line 317
    ldc1	$f13,0($v0)
    ldc1	$f14,8($a0)
    # Line 315
    addiu	$sp,$sp,-16
    # Line 316
    lw	$a0,4112($zero)
    # Line 315
    lui	$at,0x8
    sd	$gp,8($sp)
    addiu	$at,$at,-11092
    addu	$gp,$t9,$at
    # Line 317
    lw	$t9,11992($a0)
    cvt.s.d	$f14,$f14
    # Line 315
    sd	$ra,0($sp)
    # Line 317
    jalr	$t9
    cvt.s.d	$f13,$f13
    ld	$ra,0($sp)
    # Line 318
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord2dv

# Function: __glim_EvalCoord2f
# Declared: Line 320 (Source lines: 321-324)
# Address: 0x0d9d3930 - 0x0d9d396c (Size: 60 bytes, Frame: 16)
.globl __glim_EvalCoord2f
.ent __glim_EvalCoord2f
__glim_EvalCoord2f:
    # Line 321
    addiu	$sp,$sp,-16
    # Line 322
    lw	$a0,4112($zero)
    # Line 321
    lui	$at,0x8
    sd	$gp,8($sp)
    addiu	$at,$at,-11172
    addu	$gp,$t9,$at
    # Line 323
    lw	$t9,11992($a0)
    # Line 321
    mov.s	$f14,$f13
    sd	$ra,0($sp)
    # Line 323
    jalr	$t9
    # Line 321
    mov.s	$f13,$f12
    ld	$ra,0($sp)
    # Line 324
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord2f

# Function: __glim_EvalCoord2fv
# Declared: Line 326 (Source lines: 327-330)
# Address: 0x0d9d3970 - 0x0d9d39b0 (Size: 64 bytes, Frame: 16)
.globl __glim_EvalCoord2fv
.ent __glim_EvalCoord2fv
__glim_EvalCoord2fv:
    # Line 327
    addiu	$sp,$sp,-16
    # Line 328
    lw	$at,4112($zero)
    # Line 327
    lui	$v0,0x8
    sd	$gp,8($sp)
    addiu	$v0,$v0,-11236
    addu	$gp,$t9,$v0
    # Line 329
    lw	$t9,11992($at)
    lwc1	$f14,4($a0)
    lwc1	$f13,0($a0)
    # Line 327
    sd	$ra,0($sp)
    # Line 329
    jalr	$t9
    move	$a0,$at
    ld	$ra,0($sp)
    # Line 330
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalCoord2fv

# Function: __glim_MapGrid1d
# Declared: Line 332 (Source lines: 333-344)
# Address: 0x0d9d39b0 - 0x0d9d3a34 (Size: 132 bytes, Frame: 16)
.globl __glim_MapGrid1d
.ent __glim_MapGrid1d
__glim_MapGrid1d:
    # Line 333
    addiu	$sp,$sp,-16
    # Line 334
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 333
    lui	$v1,0x8
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-11300
    sd	$gp,0($sp)
    # Line 334
    beq	$at,$v0,.L0d9d3a20
    # Line 333
    addu	$gp,$t9,$v1
    # Line 334
    blez	$a0,.L0d9d3a10
    # Line 337
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 343
    sw	$a0,1944($a2)
    # Line 344
    ld	$gp,0($sp)
    # Line 342
    cvt.s.d	$f1,$f14
    # Line 341
    cvt.s.d	$f0,$f13
    # Line 342
    swc1	$f1,1936($a2)
    # Line 344
    addiu	$sp,$sp,16
    jr	$ra
    # Line 341
    swc1	$f0,1932($a2)
.L0d9d3a04:
    # Line 344
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d3a10:
    # Line 337
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3a04
    ld	$ra,8($sp)
.L0d9d3a20:
    # Line 334
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3a04
    ld	$ra,8($sp)
.end __glim_MapGrid1d

# Function: __glim_MapGrid1f
# Declared: Line 346 (Source lines: 347-358)
# Address: 0x0d9d3a40 - 0x0d9d3abc (Size: 124 bytes, Frame: 16)
.globl __glim_MapGrid1f
.ent __glim_MapGrid1f
__glim_MapGrid1f:
    # Line 347
    addiu	$sp,$sp,-16
    # Line 348
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 347
    lui	$v1,0x8
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-11444
    sd	$gp,0($sp)
    # Line 348
    beq	$at,$v0,.L0d9d3aa8
    # Line 347
    addu	$gp,$t9,$v1
    # Line 348
    blez	$a0,.L0d9d3a98
    # Line 351
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 357
    sw	$a0,1944($a2)
    # Line 356
    swc1	$f14,1936($a2)
    # Line 355
    swc1	$f13,1932($a2)
    # Line 358
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d3a8c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d3a98:
    # Line 351
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3a8c
    ld	$ra,8($sp)
.L0d9d3aa8:
    # Line 348
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3a8c
    ld	$ra,8($sp)
.end __glim_MapGrid1f

# Function: __glim_MapGrid2d
# Declared: Line 360 (Source lines: 362-376)
# Address: 0x0d9d3ac0 - 0x0d9d3b64 (Size: 164 bytes, Frame: 16)
.globl __glim_MapGrid2d
.ent __glim_MapGrid2d
__glim_MapGrid2d:
    # Line 362
    addiu	$sp,$sp,-16
    # Line 363
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 362
    lui	$v1,0x8
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-11572
    sd	$gp,0($sp)
    # Line 363
    beq	$at,$v0,.L0d9d3b50
    # Line 362
    addu	$gp,$t9,$v1
    # Line 365
    blez	$a0,.L0d9d3b40
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 365
    blez	$a3,.L0d9d3b40
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 375
    sw	$a3,1976($a2)
    # Line 372
    sw	$a0,1960($a2)
    # Line 376
    ld	$gp,0($sp)
    # Line 374
    cvt.s.d	$f3,$f17
    # Line 373
    cvt.s.d	$f2,$f16
    # Line 374
    swc1	$f3,1968($a2)
    # Line 371
    cvt.s.d	$f1,$f14
    # Line 373
    swc1	$f2,1964($a2)
    # Line 370
    cvt.s.d	$f0,$f13
    # Line 371
    swc1	$f1,1952($a2)
    # Line 376
    addiu	$sp,$sp,16
    jr	$ra
    # Line 370
    swc1	$f0,1948($a2)
.L0d9d3b30:
    # Line 376
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 366
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d3b40:
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3b30
    ld	$ra,8($sp)
.L0d9d3b50:
    # Line 363
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3b30
    ld	$ra,8($sp)
.end __glim_MapGrid2d

# Function: __glim_MapGrid2f
# Declared: Line 378 (Source lines: 380-393)
# Address: 0x0d9d3b70 - 0x0d9d3c04 (Size: 148 bytes, Frame: 16)
.globl __glim_MapGrid2f
.ent __glim_MapGrid2f
__glim_MapGrid2f:
    # Line 380
    addiu	$sp,$sp,-16
    # Line 381
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 380
    lui	$v1,0x8
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-11748
    sd	$gp,0($sp)
    # Line 381
    beq	$at,$v0,.L0d9d3bf0
    # Line 380
    addu	$gp,$t9,$v1
    # Line 383
    blez	$a0,.L0d9d3be0
    # Line 384
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 383
    blez	$a3,.L0d9d3be0
    # Line 384
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 392
    sw	$a3,1976($a2)
    # Line 391
    swc1	$f17,1968($a2)
    # Line 390
    swc1	$f16,1964($a2)
    # Line 389
    sw	$a0,1960($a2)
    # Line 388
    swc1	$f14,1952($a2)
    # Line 387
    swc1	$f13,1948($a2)
    # Line 393
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d3bd0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 384
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d3be0:
    bal __glSetError
    li	$a0,1281
    b	.L0d9d3bd0
    ld	$ra,8($sp)
.L0d9d3bf0:
    # Line 381
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d3bd0
    ld	$ra,8($sp)
.end __glim_MapGrid2f

# Function: __glim_EvalMesh1
# Declared: Line 395 (Source lines: 396-410)
# Address: 0x0d9d3c10 - 0x0d9d3ce0 (Size: 208 bytes, Frame: 48)
.globl __glim_EvalMesh1
.ent __glim_EvalMesh1
__glim_EvalMesh1:
    # Line 397
    lw	$v0,4112($zero)
    # Line 396
    addiu	$sp,$sp,-48
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    # Line 397
    lw	$a4,4120($zero)
    sd	$ra,40($sp)
    # Line 396
    lui	$at,0x8
    # Line 397
    sd	$v0,16($sp)
    # Line 396
    addiu	$at,$at,-11908
    sd	$gp,24($sp)
    # Line 397
    beqz	$a4,.L0d9d3c84
    # Line 396
    addu	$gp,$t9,$at
    # Line 397
    li	$v0,2
    beq	$a4,$v0,.L0d9d3c68
    sd	$a0,32($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0d9d3c5c:
    # Line 410
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d3c68:
    # Line 397
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    ld	$a0,32($sp)
    sw	$zero,4120($zero)
.L0d9d3c84:
    # Line 399
    li	$ra,6913
    beq	$a0,$ra,.L0d9d3cc4
    li	$at,6912
    beq	$a0,$at,.L0d9d3ca8
    # Line 407
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d3c5c
    ld	$ra,40($sp)
.L0d9d3ca8:
    # Line 404
    # lw $t9, -26152($gp) # &__glEvalMesh1Point
    ld	$a0,16($sp)
    ld	$a1,0($sp)
    bal __glEvalMesh1Point
    ld	$a2,8($sp)
    b	.L0d9d3c5c
    ld	$ra,40($sp)
.L0d9d3cc4:
    # Line 401
    # lw $t9, -26156($gp) # &__glEvalMesh1Line
    ld	$a0,16($sp)
    ld	$a1,0($sp)
    bal __glEvalMesh1Line
    ld	$a2,8($sp)
    b	.L0d9d3c5c
    ld	$ra,40($sp)
.end __glim_EvalMesh1

# Function: __glim_EvalPoint1
# Declared: Line 412 (Source lines: 413-421)
# Address: 0x0d9d3ce0 - 0x0d9d3d50 (Size: 112 bytes, Frame: 16)
.globl __glim_EvalPoint1
.ent __glim_EvalPoint1
__glim_EvalPoint1:
    # Line 416
    lw	$a2,4112($zero)
    # Line 413
    addiu	$sp,$sp,-16
    # Line 416
    lw	$a3,1944($a2)
    sd	$gp,0($sp)
    # Line 413
    lui	$at,0x8
    addiu	$at,$at,-12116
    # Line 416
    lwc1	$f4,1936($a2)
    # Line 420
    lwc1	$f13,1932($a2)
    # Line 413
    addu	$gp,$t9,$at
    # Line 416
    bne	$a3,$a0,.L0d9d3d18
    # Line 420
    mtc1	$a3,$f16
    mov.s	$f13,$f4
    b	.L0d9d3d34
    sd	$ra,8($sp)
.L0d9d3d18:
    mtc1	$a0,$f14
    cvt.s.w	$f16,$f16
    sub.s	$f15,$f4,$f13
    div.s	$f15,$f15,$f16
    cvt.s.w	$f14,$f14
    sd	$ra,8($sp)
    madd.s	$f13,$f13,$f14,$f15
.L0d9d3d34:
    lw	$t9,11988($a2)
    jalr	$t9
    move	$a0,$a2
    ld	$ra,8($sp)
    # Line 421
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalPoint1

# Function: __glim_EvalMesh2
# Declared: Line 423 (Source lines: 426-443)
# Address: 0x0d9d3d50 - 0x0d9d3e68 (Size: 280 bytes, Frame: 192)
.globl __glim_EvalMesh2
.ent __glim_EvalMesh2
__glim_EvalMesh2:
    # Line 427
    lw	$v0,4112($zero)
    # Line 426
    addiu	$sp,$sp,-64
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    sd	$a1,0($sp)
    # Line 427
    sd	$v0,32($sp)
    lw	$a6,4120($zero)
    # Line 426
    sd	$s0,48($sp)
    lui	$at,0x8
    move	$s0,$a0
    sd	$ra,56($sp)
    addiu	$at,$at,-12228
    sd	$gp,40($sp)
    # Line 427
    beqz	$a6,.L0d9d3dd0
    # Line 426
    addu	$gp,$t9,$at
    # Line 427
    li	$v0,2
    beq	$a6,$v0,.L0d9d3dbc
    ld	$t9,32($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0d9d3dac:
    # Line 443
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d3dbc:
    # Line 427
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9d3dd0:
    # Line 429
    li	$ra,6914
    li	$at,6913
    beq	$s0,$ra,.L0d9d3e24
    li	$v0,6912
    beq	$s0,$at,.L0d9d3e48
    # Line 434
    ld	$a0,32($sp)
    # Line 429
    beq	$s0,$v0,.L0d9d3e04
    # Line 437
    ld	$a0,32($sp)
    # Line 440
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d3dac
    ld	$ra,56($sp)
.L0d9d3e04:
    # Line 437
    ld	$a1,0($sp)
    # lw $t9, -26144($gp) # &__glEvalMesh2Point
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glEvalMesh2Point
    ld	$a4,8($sp)
    b	.L0d9d3dac
    ld	$ra,56($sp)
.L0d9d3e24:
    # Line 431
    ld	$a0,32($sp)
    ld	$a1,0($sp)
    # lw $t9, -26148($gp) # &__glEvalMesh2Fill
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glEvalMesh2Fill
    ld	$a4,8($sp)
    b	.L0d9d3dac
    ld	$ra,56($sp)
.L0d9d3e48:
    # Line 434
    ld	$a1,0($sp)
    # lw $t9, -26140($gp) # &__glEvalMesh2Line
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glEvalMesh2Line
    ld	$a4,8($sp)
    b	.L0d9d3dac
    ld	$ra,56($sp)
.end __glim_EvalMesh2

# Function: __glim_EvalPoint2
# Declared: Line 445 (Source lines: 446-459)
# Address: 0x0d9d3e70 - 0x0d9d3f14 (Size: 164 bytes, Frame: 16)
.globl __glim_EvalPoint2
.ent __glim_EvalPoint2
__glim_EvalPoint2:
    # Line 451
    lw	$a3,4112($zero)
    # Line 446
    addiu	$sp,$sp,-16
    # Line 451
    lw	$a4,1960($a3)
    sd	$gp,0($sp)
    # Line 446
    lui	$at,0x8
    addiu	$at,$at,-12516
    # Line 451
    lwc1	$f4,1952($a3)
    # Line 457
    lwc1	$f13,1948($a3)
    # Line 446
    addu	$gp,$t9,$at
    # Line 451
    bne	$a4,$a0,.L0d9d3ea4
    # Line 457
    mtc1	$a4,$f16
    b	.L0d9d3ebc
    mov.s	$f13,$f4
.L0d9d3ea4:
    mtc1	$a0,$f14
    cvt.s.w	$f16,$f16
    sub.s	$f15,$f4,$f13
    div.s	$f15,$f15,$f16
    cvt.s.w	$f14,$f14
    madd.s	$f13,$f13,$f14,$f15
.L0d9d3ebc:
    lw	$a0,1976($a3)
    lwc1	$f14,1964($a3)
    lwc1	$f4,1968($a3)
    bne	$a0,$a1,.L0d9d3edc
    mtc1	$a0,$f17
    mov.s	$f14,$f4
    b	.L0d9d3ef8
    sd	$ra,8($sp)
.L0d9d3edc:
    mtc1	$a1,$f15
    cvt.s.w	$f17,$f17
    sub.s	$f16,$f4,$f14
    div.s	$f16,$f16,$f17
    cvt.s.w	$f15,$f15
    sd	$ra,8($sp)
    madd.s	$f14,$f14,$f15,$f16
.L0d9d3ef8:
    lw	$t9,11992($a3)
    jalr	$t9
    move	$a0,$a3
    ld	$ra,8($sp)
    # Line 459
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_EvalPoint2

# Function: __glFillMap1f
# Declared: Line 465 (Source lines: 467-485)
# Address: 0x0d9d3f20 - 0x0d9d4018 (Size: 248 bytes, Frame: 32)
.globl __glFillMap1f
.ent __glFillMap1f
__glFillMap1f:
    # Line 467
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$s0,$a3
    lui	$at,0x8
    sd	$s1,16($sp)
    move	$s1,$a4
    addiu	$at,$at,-12692
    sd	$gp,0($sp)
    beq	$a0,$a2,.L0d9d3fdc
    addu	$gp,$t9,$at
    # Line 478
    blez	$a1,.L0d9d4008
    # Line 485
    ld	$gp,0($sp)
    # Line 478
    sll	$t0,$a0,0x2
    sll	$a4,$a2,0x2
    addu	$a7,$t0,$a3
    b	.L0d9d3fac
    move	$a3,$zero
    nop
    nop
    nop
.L0d9d3f70:
    beqz	$v0,.L0d9d3f9c
    nop
    nop
    nop
.L0d9d3f80:
    # Line 480
    lwc1	$f1,0($a2)
    # Line 479
    addiu	$a2,$a2,8
    # Line 480
    swc1	$f1,0($a6)
    lwc1	$f0,-4($a2)
    # Line 479
    addiu	$a6,$a6,8
    bne	$a2,$a7,.L0d9d3f80
    # Line 480
    swc1	$f0,-4($a6)
.L0d9d3f9c:
    # Line 483
    addu	$s1,$t0,$s1
    # Line 482
    addu	$a7,$a4,$a7
    # Line 478
    beq	$a1,$a3,.L0d9d4004
    # Line 482
    addu	$s0,$a4,$s0
.L0d9d3fac:
    # Line 478
    blez	$a0,.L0d9d3f9c
    addiu	$a3,$a3,1
    move	$a6,$s1
    andi	$v1,$a0,0x1
    sra	$v0,$a0,0x1
    beqz	$v1,.L0d9d3f70
    move	$a2,$s0
    # Line 480
    lwc1	$f2,0($s0)
    # Line 479
    addiu	$a2,$s0,4
    addiu	$a6,$s1,4
    b	.L0d9d3f70
    # Line 480
    swc1	$f2,0($s1)
.L0d9d3fdc:
    # Line 473
    # lw $t9, -26188($gp) # &__glMap1_size
    sd	$ra,24($sp)
    bal __glMap1_size
    nop
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s0
    jal	memcpy
    sll	$a2,$v0,0x2
    ld	$ra,24($sp)
.L0d9d4004:
    # Line 485
    ld	$gp,0($sp)
.L0d9d4008:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFillMap1f

# Function: __glFillMap1d
# Declared: Line 487 (Source lines: 489-499)
# Address: 0x0d9d4020 - 0x0d9d40e4 (Size: 196 bytes, Frame: 0)
.globl __glFillMap1d
.ent __glFillMap1d
__glFillMap1d:
    # Line 489
    blez	$a1,.L0d9d40dc
    sll	$t2,$a0,0x2
    sll	$t3,$a2,0x3
    move	$t1,$zero
    sll	$a7,$a0,0x3
    b	.L0d9d40bc
    addu	$a7,$a3,$a7
    nop
.L0d9d4040:
    # Line 494
    ldc1	$f0,0($a6)
    addiu	$t0,$t0,-1
    # Line 493
    addiu	$a2,$a2,4
    # Line 494
    cvt.s.d	$f0,$f0
    # Line 493
    addiu	$a6,$a6,8
    bnez	$t0,.L0d9d4040
    # Line 494
    swc1	$f0,-4($a2)
.L0d9d405c:
    sra	$t0,$a0,0x2
    beqz	$t0,.L0d9d40ac
    nop
    nop
    nop
.L0d9d4070:
    ldc1	$f4,0($a6)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a2)
    ldc1	$f3,8($a6)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($a2)
    ldc1	$f2,16($a6)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($a2)
    ldc1	$f1,24($a6)
    # Line 493
    addiu	$a6,$a6,32
    addiu	$a2,$a2,16
    # Line 494
    cvt.s.d	$f1,$f1
    # Line 493
    bne	$a6,$a7,.L0d9d4070
    # Line 494
    swc1	$f1,-4($a2)
.L0d9d40ac:
    # Line 497
    addu	$a4,$t2,$a4
    # Line 496
    addu	$a7,$t3,$a7
    # Line 492
    beq	$a1,$t1,.L0d9d40dc
    # Line 496
    addu	$a3,$t3,$a3
.L0d9d40bc:
    # Line 489
    blez	$a0,.L0d9d40ac
    # Line 492
    addiu	$t1,$t1,1
    # Line 489
    move	$a2,$a4
    andi	$t0,$a0,0x3
    bnez	$t0,.L0d9d4040
    move	$a6,$a3
    b	.L0d9d405c
    nop
.L0d9d40dc:
    # Line 499
    jr	$ra
    nop
.end __glFillMap1d

# Function: __glMap1_size
# Declared: Line 501 (Source lines: 503-503)
# Address: 0x0d9d40f0 - 0x0d9d4100 (Size: 16 bytes, Frame: 0)
.globl __glMap1_size
.ent __glMap1_size
__glMap1_size:
    # Line 503
    mult	$a0,$a1
    mflo	$v0
    jr	$ra
    nop
.end __glMap1_size

# Function: __glFillMap2f
# Declared: Line 506 (Source lines: 509-530)
# Address: 0x0d9d4100 - 0x0d9d4234 (Size: 308 bytes, Frame: 32)
.globl __glFillMap2f
.ent __glFillMap2f
__glFillMap2f:
    # Line 509
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$s0,$a5
    lui	$at,0x8
    sd	$s1,16($sp)
    move	$s1,$a6
    addiu	$at,$at,-13172
    sd	$gp,0($sp)
    # Line 514
    bne	$a0,$a4,.L0d9d4138
    # Line 509
    addu	$gp,$t9,$at
    # Line 514
    mult	$a0,$a2
    mflo	$v0
    beq	$a3,$v0,.L0d9d41fc
    # Line 515
    nop	# was lw $t9, -26176($gp) # &__glMap2_size
.L0d9d4138:
    # Line 517
    blez	$a1,.L0d9d4224
    # Line 530
    ld	$gp,0($sp)
    # Line 517
    mult	$a2,$a4
    sll	$a6,$a0,0x2
    sll	$t2,$a4,0x2
    mflo	$t8
    b	.L0d9d4174
    move	$t3,$zero
    nop
    nop
.L0d9d4160:
    # Line 520
    addiu	$t3,$t3,1
    # Line 528
    subu	$v1,$a3,$t8
    sll	$v1,$v1,0x2
    # Line 520
    beq	$a1,$t3,.L0d9d4220
    # Line 528
    addu	$s0,$s0,$v1
.L0d9d4174:
    # Line 517
    blez	$a2,.L0d9d4160
    addu	$t1,$a6,$s0
    b	.L0d9d41cc
    move	$a5,$zero
    nop
    nop
    nop
.L0d9d4190:
    beqz	$a7,.L0d9d41bc
    nop
    nop
    nop
.L0d9d41a0:
    # Line 523
    lwc1	$f1,0($t0)
    # Line 522
    addiu	$t0,$t0,8
    # Line 523
    swc1	$f1,0($a4)
    lwc1	$f0,-4($t0)
    # Line 522
    addiu	$a4,$a4,8
    bne	$t0,$t1,.L0d9d41a0
    # Line 523
    swc1	$f0,-4($a4)
.L0d9d41bc:
    # Line 526
    addu	$s1,$a6,$s1
    # Line 525
    addu	$t1,$t2,$t1
    # Line 521
    beq	$a2,$a5,.L0d9d4160
    # Line 525
    addu	$s0,$t2,$s0
.L0d9d41cc:
    # Line 517
    blez	$a0,.L0d9d41bc
    # Line 521
    addiu	$a5,$a5,1
    # Line 517
    move	$a4,$s1
    andi	$t9,$a0,0x1
    sra	$a7,$a0,0x1
    beqz	$t9,.L0d9d4190
    move	$t0,$s0
    # Line 523
    lwc1	$f2,0($s0)
    # Line 522
    addiu	$t0,$s0,4
    addiu	$a4,$s1,4
    b	.L0d9d4190
    # Line 523
    swc1	$f2,0($s1)
.L0d9d41fc:
    sd	$ra,24($sp)
    # Line 515
    bal __glMap2_size
    nop
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s0
    jal	memcpy
    sll	$a2,$v0,0x2
    ld	$ra,24($sp)
.L0d9d4220:
    # Line 530
    ld	$gp,0($sp)
.L0d9d4224:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFillMap2f

# Function: __glFillMap2d
# Declared: Line 532 (Source lines: 535-548)
# Address: 0x0d9d4240 - 0x0d9d4354 (Size: 276 bytes, Frame: 32)
.globl __glFillMap2d
.ent __glFillMap2d
__glFillMap2d:
    # Line 535
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    blez	$a1,.L0d9d4340
    sd	$s1,0($sp)
    mult	$a2,$a4
    sll	$s1,$a0,0x3
    sll	$t8,$a0,0x2
    sll	$t9,$a4,0x3
    mflo	$s0
    b	.L0d9d4284
    move	$ra,$zero
.L0d9d4270:
    # Line 538
    addiu	$ra,$ra,1
    # Line 546
    subu	$at,$a3,$s0
    sll	$at,$at,0x3
    # Line 538
    beq	$a1,$ra,.L0d9d4340
    # Line 546
    addu	$a5,$a5,$at
.L0d9d4284:
    # Line 535
    blez	$a2,.L0d9d4270
    addu	$t1,$s1,$a5
    b	.L0d9d431c
    move	$t3,$zero
    nop
    nop
    nop
.L0d9d42a0:
    # Line 541
    ldc1	$f0,0($a4)
    addiu	$t2,$t2,-1
    # Line 540
    addiu	$t0,$t0,4
    # Line 541
    cvt.s.d	$f0,$f0
    # Line 540
    addiu	$a4,$a4,8
    bnez	$t2,.L0d9d42a0
    # Line 541
    swc1	$f0,-4($t0)
.L0d9d42bc:
    beqz	$v0,.L0d9d430c
    nop
    nop
    nop
    nop
.L0d9d42d0:
    ldc1	$f4,0($a4)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($t0)
    ldc1	$f3,8($a4)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($t0)
    ldc1	$f2,16($a4)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($t0)
    ldc1	$f1,24($a4)
    # Line 540
    addiu	$a4,$a4,32
    addiu	$t0,$t0,16
    # Line 541
    cvt.s.d	$f1,$f1
    # Line 540
    bne	$a4,$t1,.L0d9d42d0
    # Line 541
    swc1	$f1,-4($t0)
.L0d9d430c:
    # Line 544
    addu	$a6,$t8,$a6
    # Line 543
    addu	$t1,$t9,$t1
    # Line 539
    beq	$a2,$t3,.L0d9d4270
    # Line 543
    addu	$a5,$t9,$a5
.L0d9d431c:
    # Line 535
    blez	$a0,.L0d9d430c
    # Line 539
    addiu	$t3,$t3,1
    # Line 535
    move	$t0,$a6
    andi	$t2,$a0,0x3
    sra	$v0,$a0,0x2
    bnez	$t2,.L0d9d42a0
    move	$a4,$a5
    b	.L0d9d42bc
    nop
.L0d9d4340:
    # Line 548
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFillMap2d

# Function: __glMap2_size
# Declared: Line 550 (Source lines: 552-552)
# Address: 0x0d9d4360 - 0x0d9d4380 (Size: 32 bytes, Frame: 0)
.globl __glMap2_size
.ent __glMap2_size
__glMap2_size:
    # Line 552
    mult	$a0,$a1
    mflo	$at
    nop
    nop
    mult	$a2,$at
    mflo	$v0
    jr	$ra
    nop
.end __glMap2_size

# Function: __glSetUpMap1
# Declared: Line 558 (Source lines: 560-592)
# Address: 0x0d9d4380 - 0x0d9d44a0 (Size: 288 bytes, Frame: 48)
.globl __glSetUpMap1
.ent __glSetUpMap1
__glSetUpMap1:
    # Line 560
    lui	$a6,0x8
    addiu	$sp,$sp,-48
    addiu	$a6,$a6,-13812
    sd	$gp,32($sp)
    addu	$gp,$t9,$a6
    addiu	$a6,$a1,-3472
    sltiu	$at,$a6,9
    move	$v0,$a1
    sd	$s0,24($sp)
    move	$s0,$a0
    beqz	$at,.L0d9d4484
    sd	$ra,40($sp)
    # Line 581
    c.eq.s	$f15,$f16
    bc1t	.L0d9d43d8
    # Line 582
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 581
    blez	$a2,.L0d9d43d8
    # Line 582
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 581
    lw	$a7,3768($a0)
    slt	$a7,$a7,$a2
    beqz	$a7,.L0d9d43f8
    sd	$a1,16($sp)
    # Line 582
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d43d8:
    ld	$s0,24($sp)
    bal __glSetError
    li	$a0,1281
    ld	$ra,40($sp)
    # Line 583
    move	$v0,$zero
.L0d9d43ec:
    # Line 579
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d43f8:
    # Line 585
    ld	$t1,16($sp)
    sll	$t0,$t1,0x2
    subu	$t0,$t0,$t1
    sll	$t0,$t0,0x3
    # Line 588
    # lw $t9, -26188($gp) # &__glMap1_size
    # Line 585
    lui	$t1,0xffff
    addu	$t0,$a0,$t0
    sd	$t0,0($sp)
    addu	$t0,$t0,$t1
    # Line 588
    lw	$a0,10444($t0)
    # Line 587
    swc1	$f16,10456($t0)
    # Line 586
    swc1	$f15,10452($t0)
    # Line 588
    move	$a1,$a2
    bal __glMap1_size
    # Line 585
    sw	$a2,10448($t0)
    # Line 588
    ld	$a1,16($sp)
    lw	$t9,8($s0)
    sll	$a1,$a1,0x2
    sll	$a2,$v0,0x2
    addu	$a1,$s0,$a1
    sd	$a1,8($sp)
    move	$a0,$s0
    jal	__glMap1_size
    lw	$a1,14924($a1)
    # Line 579
    ld	$gp,32($sp)
    # Line 588
    ld	$a0,8($sp)
    ld	$ra,40($sp)
    sw	$v0,14924($a0)
    # Line 592
    lui	$v1,0xffff
    ld	$v0,0($sp)
    # Line 579
    ld	$s0,24($sp)
    # Line 592
    ori	$v1,$v1,0x28cc
    # Line 579
    addiu	$sp,$sp,48
    jr	$ra
    # Line 592
    addu	$v0,$v0,$v1
.L0d9d4484:
    # Line 578
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    bal __glSetError
    li	$a0,1280
    ld	$ra,40($sp)
    b	.L0d9d43ec
    # Line 579
    move	$v0,$zero
.end __glSetUpMap1

# Function: __glSetUpMap2
# Declared: Line 598 (Source lines: 602-640)
# Address: 0x0d9d44a0 - 0x0d9d45ec (Size: 332 bytes, Frame: 48)
.globl __glSetUpMap2
.ent __glSetUpMap2
__glSetUpMap2:
    # Line 602
    lui	$a7,0x8
    addiu	$sp,$sp,-48
    addiu	$a7,$a7,-14100
    sd	$gp,32($sp)
    addu	$gp,$t9,$a7
    addiu	$a7,$a1,-3504
    sltiu	$at,$a7,9
    move	$v0,$a2
    sd	$s0,24($sp)
    move	$s0,$a0
    beqz	$at,.L0d9d45d0
    sd	$ra,40($sp)
    # Line 623
    blez	$a3,.L0d9d4514
    # Line 626
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 623
    lw	$a0,3768($a0)
    slt	$t0,$a0,$a3
    bnez	$t0,.L0d9d4510
    slt	$t1,$a0,$a2
    blez	$a2,.L0d9d4514
    # Line 626
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 623
    bnez	$t1,.L0d9d4514
    # Line 626
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 623
    c.eq.s	$f16,$f17
    bc1t	.L0d9d4514
    # Line 626
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 623
    c.eq.s $f18,$f19
    bc1f .L0d9d4534
    sd	$a1,16($sp)
.L0d9d4510:
    # Line 626
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d4514:
    ld	$s0,24($sp)
    bal __glSetError
    li	$a0,1281
    ld	$ra,40($sp)
    # Line 627
    move	$v0,$zero
.L0d9d4528:
    # Line 621
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d4534:
    # Line 629
    ld	$t3,16($sp)
    sll	$t2,$t3,0x2
    addu	$t2,$t2,$t3
    sll	$t2,$t2,0x3
    # Line 635
    # lw $t9, -26176($gp) # &__glMap2_size
    # Line 629
    lui	$t3,0xfffe
    addu	$t2,$s0,$t2
    sd	$t2,0($sp)
    addu	$t2,$t2,$t3
    # Line 635
    lw	$a0,19364($t2)
    # Line 634
    swc1	$f19,19388($t2)
    # Line 633
    swc1	$f18,19384($t2)
    # Line 632
    swc1	$f17,19380($t2)
    # Line 631
    swc1	$f16,19376($t2)
    # Line 635
    move	$a2,$a3
    # Line 630
    sw	$a3,19372($t2)
    # Line 635
    move	$a1,$v0
    bal __glMap2_size
    # Line 629
    sw	$v0,19368($t2)
    # Line 635
    ld	$a1,16($sp)
    lw	$t9,8($s0)
    sll	$a1,$a1,0x2
    sll	$a2,$v0,0x2
    addu	$a1,$s0,$a1
    sd	$a1,8($sp)
    move	$a0,$s0
    jal	__glMap2_size
    lw	$a1,14832($a1)
    # Line 621
    ld	$gp,32($sp)
    # Line 635
    ld	$a0,8($sp)
    ld	$ra,40($sp)
    sw	$v0,14832($a0)
    # Line 640
    lui	$v1,0xfffe
    ld	$v0,0($sp)
    # Line 621
    ld	$s0,24($sp)
    # Line 640
    ori	$v1,$v1,0x4ba4
    # Line 621
    addiu	$sp,$sp,48
    jr	$ra
    # Line 640
    addu	$v0,$v0,$v1
.L0d9d45d0:
    # Line 620
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    bal __glSetError
    li	$a0,1280
    ld	$ra,40($sp)
    b	.L0d9d4528
    # Line 621
    move	$v0,$zero
.end __glSetUpMap2

# Function: PreEvaluate
# Declared: Line 646 (Source lines: 647-677)
# Address: 0x0d9d45f0 - 0x0d9d470c (Size: 284 bytes, Frame: 0)
.ent PreEvaluate
PreEvaluate:
    # Line 647
    li	$a7,1
    beq	$a0,$a7,.L0d9d46f0
    lwc1	$f4,_lit_3f800000
    # Line 664
    li	$at,2
    swc1	$f13,4($a2)
    # Line 663
    sub.s	$f7,$f4,$f13
    # Line 664
    beq	$a0,$at,.L0d9d46f8
    # Line 663
    swc1	$f7,0($a2)
    # Line 667
    slti	$v0,$a0,3
    bnez	$v0,.L0d9d46f8
    li	$a5,2
    addiu	$a4,$a2,8
    b	.L0d9d4700
    addiu	$t0,$a2,4
    nop
    nop
.L0d9d4630:
    beqz	$a6,.L0d9d4654
    # Line 669
    move	$a3,$t0
.L0d9d4638:
    # Line 672
    lwc1	$f1,0($a3)
    # Line 673
    madd.s	$f0,$f4,$f7,$f1
    addiu	$a6,$a6,-1
    # Line 670
    addiu	$a3,$a3,4
    # Line 672
    mul.s	$f4,$f1,$f13
    bnez	$a6,.L0d9d4638
    # Line 673
    swc1	$f0,-4($a3)
.L0d9d4654:
    beqz	$v1,.L0d9d46a8
    nop
    nop
.L0d9d4660:
    # Line 672
    lwc1	$f10,8($a3)
    lwc1	$f3,12($a3)
    lwc1	$f9,4($a3)
    mul.s	$f8,$f10,$f13
    # Line 673
    madd.s	$f8,$f8,$f7,$f3
    # Line 672
    lwc1	$f2,0($a3)
    mul.s	$f6,$f9,$f13
    # Line 673
    madd.s	$f6,$f6,$f7,$f10
    # Line 672
    mul.s	$f5,$f2,$f13
    # Line 673
    madd.s	$f5,$f5,$f7,$f9
    madd.s	$f2,$f4,$f7,$f2
    # Line 670
    addiu	$a3,$a3,16
    # Line 673
    swc1	$f8,-4($a3)
    swc1	$f6,-8($a3)
    swc1	$f5,-12($a3)
    # Line 672
    mul.s	$f4,$f3,$f13
    # Line 670
    bne	$a3,$a4,.L0d9d4660
    # Line 673
    swc1	$f2,-16($a3)
.L0d9d46a8:
    # Line 670
    move	$a3,$a5
.L0d9d46ac:
    # Line 667
    addiu	$a5,$a5,1
    # Line 675
    sll	$a1,$a3,0x2
    sra	$v1,$a7,0x2
    addu	$a1,$a2,$a1
    # Line 667
    addiu	$a4,$a4,4
    beq	$a0,$a5,.L0d9d46f8
    # Line 675
    swc1	$f4,0($a1)
    andi	$a6,$a7,0x3
.L0d9d46cc:
    # Line 668
    lwc1	$f4,0($a2)
    # Line 669
    slti	$a3,$a5,2
    mul.s	$f9,$f7,$f4
    # Line 667
    addiu	$a7,$a7,1
    # Line 668
    mul.s	$f4,$f4,$f13
    # Line 669
    beqz	$a3,.L0d9d4630
    swc1	$f9,0($a2)
    b	.L0d9d46ac
    # Line 670
    li	$a3,1
.L0d9d46f0:
    # Line 677
    jr	$ra
    # Line 658
    swc1	$f4,0($a2)
.L0d9d46f8:
    # Line 677
    jr	$ra
    nop
.L0d9d4700:
    sra	$v1,$a7,0x2
    b	.L0d9d46cc
    andi	$a6,$a7,0x3
.end PreEvaluate

# Function: PreEvaluateWithDeriv
# Declared: Line 682 (Source lines: 684-739)
# Address: 0x0d9d4710 - 0x0d9d49b4 (Size: 676 bytes, Frame: 0)
.ent PreEvaluateWithDeriv
PreEvaluateWithDeriv:
    # Line 684
    li	$t0,1
    beq	$a0,$t0,.L0d9d49a4
    lwc1	$f4,_lit_3f800000
    # Line 698
    li	$at,2
    beq	$a0,$at,.L0d9d498c
    sub.s	$f7,$f4,$f13
    # Line 707
    slti	$v0,$a0,4
    swc1	$f13,4($a2)
    # Line 706
    mov.s	$f4,$f7
    # Line 707
    addiu	$t1,$a0,-1
    bnez	$v0,.L0d9d4984
    # Line 706
    swc1	$f7,0($a2)
    # Line 707
    li	$a6,2
    addiu	$a5,$a2,8
    b	.L0d9d47e4
    addiu	$t2,$a2,4
.L0d9d4750:
    beqz	$a7,.L0d9d4774
    # Line 710
    move	$a4,$t2
.L0d9d4758:
    # Line 713
    lwc1	$f1,0($a4)
    # Line 714
    madd.s	$f0,$f4,$f1,$f7
    addiu	$a7,$a7,-1
    # Line 711
    addiu	$a4,$a4,4
    # Line 713
    mul.s	$f4,$f1,$f13
    bnez	$a7,.L0d9d4758
    # Line 714
    swc1	$f0,-4($a4)
.L0d9d4774:
    beqz	$v1,.L0d9d47c8
    nop
    nop
.L0d9d4780:
    # Line 713
    lwc1	$f10,8($a4)
    lwc1	$f3,12($a4)
    lwc1	$f9,4($a4)
    mul.s	$f8,$f10,$f13
    # Line 714
    madd.s	$f8,$f8,$f3,$f7
    # Line 713
    lwc1	$f2,0($a4)
    mul.s	$f6,$f9,$f13
    # Line 714
    madd.s	$f6,$f6,$f10,$f7
    # Line 713
    mul.s	$f5,$f2,$f13
    # Line 714
    madd.s	$f5,$f5,$f9,$f7
    madd.s	$f2,$f4,$f2,$f7
    # Line 711
    addiu	$a4,$a4,16
    # Line 714
    swc1	$f8,-4($a4)
    swc1	$f6,-8($a4)
    swc1	$f5,-12($a4)
    # Line 713
    mul.s	$f4,$f3,$f13
    # Line 711
    bne	$a4,$a5,.L0d9d4780
    # Line 714
    swc1	$f2,-16($a4)
.L0d9d47c8:
    # Line 711
    move	$a4,$a6
.L0d9d47cc:
    # Line 708
    addiu	$a6,$a6,1
    # Line 716
    sll	$a1,$a4,0x2
    addu	$a1,$a2,$a1
    # Line 708
    addiu	$a5,$a5,4
    beq	$t1,$a6,.L0d9d4810
    # Line 716
    swc1	$f4,0($a1)
.L0d9d47e4:
    # Line 709
    lwc1	$f4,0($a2)
    # Line 710
    slti	$a4,$a6,2
    sra	$v1,$t0,0x2
    andi	$a7,$t0,0x3
    mul.s	$f9,$f4,$f7
    # Line 708
    addiu	$t0,$t0,1
    # Line 709
    mul.s	$f4,$f4,$f13
    # Line 710
    beqz	$a4,.L0d9d4750
    swc1	$f9,0($a2)
    b	.L0d9d47cc
    # Line 711
    li	$a4,1
.L0d9d4810:
    # Line 708
    move	$a6,$t1
    lwc1	$f4,0($a2)
.L0d9d4818:
    # Line 718
    addiu	$t3,$a0,-2
    li	$t0,1
    slti	$t2,$a0,3
    addiu	$a7,$a3,4
    movz	$t0,$t3,$t2
    sll	$a5,$t1,0x2
    andi	$t3,$t0,0x1
    neg.s	$f5,$f4
    addu	$a5,$a5,$a2
    addiu	$t2,$a2,4
    swc1	$f5,0($a3)
    beqz	$t3,.L0d9d4864
    move	$a4,$t2
    # Line 726
    lwc1	$f6,0($a2)
    lwc1	$f8,4($a2)
    sub.s	$f6,$f6,$f8
    # Line 727
    addiu	$a4,$a2,8
    addiu	$a7,$a3,8
    # Line 726
    swc1	$f6,4($a3)
.L0d9d4864:
    sra	$t8,$t0,0x1
    beqz	$t8,.L0d9d48b4
    # Line 729
    sll	$v0,$t0,0x2
    move	$a0,$a7
    nop
    nop
    nop
.L0d9d4880:
    # Line 726
    lwc1	$f11,-4($a4)
    lwc1	$f12,0($a4)
    sub.s	$f11,$f11,$f12
    swc1	$f11,0($a0)
    lwc1	$f9,0($a4)
    lwc1	$f10,4($a4)
    # Line 727
    addiu	$a4,$a4,8
    sltu	$t9,$a4,$a5
    addiu	$a0,$a0,8
    # Line 726
    sub.s	$f9,$f9,$f10
    # Line 727
    bnez	$t9,.L0d9d4880
    # Line 726
    swc1	$f9,-4($a0)
    # Line 729
    sll	$v0,$t0,0x2
.L0d9d48b4:
    addu	$v1,$v0,$a2
    lwc1	$f5,0($v1)
    addu	$v0,$v0,$a3
    swc1	$f5,4($v0)
    # Line 731
    lwc1	$f4,0($a2)
    # Line 732
    slti	$at,$a6,2
    mul.s	$f14,$f4,$f7
    # Line 731
    mul.s	$f4,$f4,$f13
    # Line 732
    bnez	$at,.L0d9d497c
    swc1	$f14,0($a2)
    addiu	$a3,$a6,-1
    andi	$a0,$a3,0x3
    move	$a4,$t2
    sll	$a5,$a6,0x2
    beqz	$a0,.L0d9d4910
    addu	$a5,$a5,$a2
.L0d9d48f4:
    # Line 735
    lwc1	$f8,0($a4)
    # Line 736
    madd.s	$f6,$f4,$f8,$f7
    addiu	$a0,$a0,-1
    # Line 733
    addiu	$a4,$a4,4
    # Line 735
    mul.s	$f4,$f8,$f13
    bnez	$a0,.L0d9d48f4
    # Line 736
    swc1	$f6,-4($a4)
.L0d9d4910:
    sra	$a7,$a3,0x2
    beqz	$a7,.L0d9d4968
    nop
    nop
.L0d9d4920:
    # Line 735
    lwc1	$f16,8($a4)
    lwc1	$f10,12($a4)
    lwc1	$f15,4($a4)
    mul.s	$f14,$f16,$f13
    # Line 736
    madd.s	$f14,$f14,$f10,$f7
    # Line 735
    lwc1	$f9,0($a4)
    mul.s	$f12,$f15,$f13
    # Line 736
    madd.s	$f12,$f12,$f16,$f7
    # Line 735
    mul.s	$f11,$f9,$f13
    # Line 736
    madd.s	$f11,$f11,$f15,$f7
    madd.s	$f9,$f4,$f9,$f7
    # Line 733
    addiu	$a4,$a4,16
    # Line 736
    swc1	$f14,-4($a4)
    swc1	$f12,-8($a4)
    swc1	$f11,-12($a4)
    # Line 735
    mul.s	$f4,$f10,$f13
    # Line 733
    bne	$a4,$a5,.L0d9d4920
    # Line 736
    swc1	$f9,-16($a4)
.L0d9d4968:
    # Line 733
    move	$a4,$a6
.L0d9d496c:
    # Line 738
    sll	$t0,$a4,0x2
    addu	$t0,$a2,$t0
    # Line 739
    jr	$ra
    # Line 738
    swc1	$f4,0($t0)
.L0d9d497c:
    b	.L0d9d496c
    # Line 733
    li	$a4,1
.L0d9d4984:
    b	.L0d9d4818
    # Line 708
    li	$a6,2
.L0d9d498c:
    # Line 700
    lwc1	$f15,_lit_bf800000
    # Line 701
    swc1	$f4,4($a3)
    # Line 700
    swc1	$f15,0($a3)
    # Line 703
    swc1	$f13,4($a2)
    # Line 739
    jr	$ra
    # Line 702
    swc1	$f7,0($a2)
.L0d9d49a4:
    # Line 697
    mtc1	$zero,$f16
    # Line 696
    swc1	$f4,0($a2)
    # Line 739
    jr	$ra
    # Line 697
    swc1	$f16,0($a3)
.end PreEvaluateWithDeriv

# Function: DoDomain1
# Declared: Line 750 (Source lines: 752-780)
# Address: 0x0d9d49c0 - 0x0d9d4af8 (Size: 312 bytes, Frame: 48)
.ent DoDomain1
DoDomain1:
    # Line 752
    lwc1	$f5,12($a2)
    lwc1	$f4,8($a2)
    c.eq.s	$f4,$f5
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,32($sp)
    bc1t	.L0d9d4ae8
    move	$s0,$a2
    # Line 760
    sub.s	$f2,$f5,$f4
    sub.s	$f1,$f13,$f4
    div.s	$f1,$f1,$f2
    # Line 763
    lwc1	$f0,756($a0)
    lw	$a0,4($a2)
    sd	$a3,16($sp)
    c.eq.s $f0,$f1
    sd	$a4,8($sp)
    sd	$ra,40($sp)
    bc1f .L0d9d4a18
    # Line 760
    sdc1	$f1,0($sp)
    # Line 763
    lw	$at,1404($s1)
    beq	$at,$a0,.L0d9d4a44
.L0d9d4a18:
    # Line 765
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,17904
    ldc1	$f13,0($sp)
    bal __glSetUpMap2
    addiu	$a2,$s1,764
    # Line 766
    li	$at,2
    sw	$at,1412($s1)
    # Line 767
    lw	$ra,4($s0)
    # Line 768
    ldc1	$f3,0($sp)
    # Line 767
    sw	$ra,1404($s1)
    # Line 768
    swc1	$f3,756($s1)
.L0d9d4a44:
    # Line 771
    lw	$a0,0($s0)
    blez	$a0,.L0d9d4ae8
    ld	$ra,40($sp)
    mtc1	$zero,$f5
    mtc1	$zero,$f6
    ld	$t0,8($sp)
    sll	$a2,$a0,0x2
    ld	$a3,16($sp)
    move	$a4,$t0
    addu	$t0,$a2,$t0
    # Line 774
    mov.s	$f4,$f6
.L0d9d4a70:
    swc1	$f5,0($a3)
    lw	$t1,4($s0)
    blez	$t1,.L0d9d4ad8
    # Line 773
    move	$a5,$a4
    # Line 774
    move	$a6,$zero
    move	$a7,$s1
.L0d9d4a88:
    # Line 776
    lwc1	$f8,764($a7)
    lwc1	$f7,0($a5)
    madd.s	$f4,$f4,$f7,$f8
    swc1	$f4,0($a3)
    # Line 775
    lw	$t2,4($s0)
    addiu	$a6,$a6,1
    slt	$t2,$a6,$t2
    # Line 777
    addu	$a5,$a2,$a5
    # Line 775
    beqz	$t2,.L0d9d4ad8
    nop
    # Line 776
    lwc1	$f10,768($a7)
    lwc1	$f9,0($a5)
    madd.s	$f4,$f4,$f9,$f10
    swc1	$f4,0($a3)
    # Line 775
    lw	$t3,4($s0)
    addiu	$a6,$a6,1
    slt	$t3,$a6,$t3
    addiu	$a7,$a7,8
    bnez	$t3,.L0d9d4a88
    # Line 777
    addu	$a5,$a2,$a5
.L0d9d4ad8:
    # Line 772
    addiu	$a4,$a4,4
    # Line 774
    mov.s	$f4,$f6
    # Line 772
    bne	$a4,$t0,.L0d9d4a70
    addiu	$a3,$a3,4
.L0d9d4ae8:
    # Line 780
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end DoDomain1

# Function: DoEvalCoord1
# Declared: Line 782 (Source lines: 783-855)
# Address: 0x0d9d4b00 - 0x0d9d4ee8 (Size: 1000 bytes, Frame: 144)
.ent DoEvalCoord1
DoEvalCoord1:
    # Line 786
    ld	$at,432($a0)
    # Line 783
    addiu	$sp,$sp,-1552
    # Line 786
    ld	$v0,440($a0)
    sd	$v0,8($sp)
    sd	$at,0($sp)
    sd	$ra,1488($sp)
    sd	$s3,1496($sp)
    sd	$s2,1504($sp)
    sd	$s4,1512($sp)
    sd	$s0,1520($sp)
    sd	$s1,1528($sp)
    li	$a6,3
    # Line 787
    li	$a3,355
    # Line 783
    sdc1	$f20,1472($sp)
    # Line 787
    move	$a2,$zero
    addiu	$a4,$a0,28236
    # Line 783
    sd	$s6,1480($sp)
    move	$s6,$a0
    mov.s	$f20,$f13
    # Line 787
    addiu	$a5,$sp,16
    sd	$s5,1536($sp)
.L0d9d4b54:
    addiu	$a6,$a6,-1
    addu	$v1,$a2,$a4
    addiu	$a3,$a3,-1
    addu	$a0,$a2,$a5
    lw	$v1,0($v1)
    addiu	$a2,$a2,4
    bnez	$a6,.L0d9d4b54
    sw	$v1,0($a0)
    addiu	$s2,$a4,28
    addiu	$t2,$a5,28
    li	$t3,0x20
    addiu	$s4,$a4,4
    addiu	$a6,$a5,4
    addiu	$s1,$a5,8
    addiu	$s5,$a4,8
    addiu	$s3,$a4,12
    addiu	$t1,$a5,12
    addiu	$a7,$a4,20
    addiu	$t0,$a5,20
    addiu	$t8,$a5,24
    addiu	$t9,$a4,24
    addiu	$ra,$a5,16
    addiu	$s0,$a4,16
.L0d9d4bb0:
    addu	$at,$a2,$a4
    addu	$v0,$a2,$a5
    lw	$at,0($at)
    addu	$a1,$a2,$s4
    sw	$at,0($v0)
    addu	$at,$a2,$a6
    lw	$a1,0($a1)
    addu	$a0,$a2,$s5
    sw	$a1,0($at)
    addu	$a1,$a2,$s1
    lw	$a0,0($a0)
    addu	$v1,$a2,$s3
    sw	$a0,0($a1)
    addu	$a0,$a2,$t1
    lw	$v1,0($v1)
    addu	$v0,$a2,$s0
    sw	$v1,0($a0)
    addu	$v1,$a2,$ra
    lw	$v0,0($v0)
    addu	$at,$a2,$a7
    sw	$v0,0($v1)
    addu	$v0,$a2,$t0
    lw	$at,0($at)
    addu	$a1,$a2,$t9
    sw	$at,0($v0)
    addu	$at,$a2,$t8
    lw	$a1,0($a1)
    addiu	$a3,$a3,-8
    addu	$a0,$a2,$s2
    sw	$a1,0($at)
    addu	$a1,$a2,$t2
    lw	$a0,0($a0)
    addu	$a2,$a2,$t3
    bgtz	$a3,.L0d9d4bb0
    sw	$a0,0($a1)
    lbu	$v0,3221($s6)
    beqz	$v0,.L0d9d4e38
    lw	$a0,1808($s6)
    andi	$v1,$a0,0x2
    beqz	$v1,.L0d9d4c74
    # Line 791
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,18880
    addiu	$a3,$s6,192
    addiu	$a2,$s6,28260
    lw	$a4,28816($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    lw	$a0,1808($s6)
.L0d9d4c74:
    la	$s0,sub_0d9d0000
    addiu	$s0,$s0,18880
.L0d9d4c7c:
    # Line 803
    andi	$t8,$a0,0x40
    # Line 814
    andi	$ra,$a0,0x10
    # Line 803
    beqz	$t8,.L0d9d4d90
    # Line 809
    andi	$v0,$a0,0x20
    move	$t9,$s0
    addiu	$a3,$s6,224
    addiu	$a2,$s6,28380
    lw	$a4,28836($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    lw	$a0,1808($s6)
.L0d9d4cac:
    # Line 825
    andi	$t9,$a0,0x4
    beqz	$t9,.L0d9d4cd4
    # Line 829
    move	$t9,$s0
    addiu	$a3,$s6,208
    addiu	$a2,$s6,28284
    lw	$a4,28820($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    lw	$a0,1808($s6)
.L0d9d4cd4:
    andi	$ra,$a0,0x100
    beqz	$ra,.L0d9d4dc4
    # Line 837
    andi	$v1,$a0,0x80
    # Line 836
    move	$t9,$s0
    addiu	$a3,$sp,1440
    addiu	$a2,$s6,28428
    lw	$a4,28844($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    # Line 837
    lw	$t9,6072($s6)
    lw	$t9,1396($t9)
    jal	sub_0d9d0000
    addiu	$a0,$sp,1440
    lw	$a0,1808($s6)
.L0d9d4d10:
    # Line 845
    andi	$ra,$a0,0x1
.L0d9d4d14:
    beqz	$ra,.L0d9d4d64
    nop
    lw	$at,1792($s6)
    andi	$at,$at,0x80
    beqz	$at,.L0d9d4d64
    nop
    # Line 849
    lw	$t9,12000($s6)
    jalr	$t9
    move	$a0,$s6
    # Line 852
    lwc1	$f0,0($sp)
    lwc1	$f1,4($sp)
    lwc1	$f3,12($sp)
    lwc1	$f2,8($sp)
    swc1	$f3,444($s6)
    # Line 853
    lw	$t9,12000($s6)
    # Line 852
    swc1	$f2,440($s6)
    swc1	$f1,436($s6)
    # Line 853
    move	$a0,$s6
    jalr	$t9
    # Line 852
    swc1	$f0,432($s6)
.L0d9d4d64:
    ld	$s6,1480($sp)
    ld	$s3,1496($sp)
    ld	$s2,1504($sp)
    ld	$s4,1512($sp)
    ld	$s0,1520($sp)
    ld	$ra,1488($sp)
    ld	$s1,1528($sp)
    ld	$s5,1536($sp)
    ldc1	$f20,1472($sp)
    # Line 855
    jr	$ra
    addiu	$sp,$sp,1552
.L0d9d4d90:
    # Line 809
    beqz	$v0,.L0d9d4e00
    # Line 819
    andi	$t8,$a0,0x8
    # Line 812
    move	$t9,$s0
    addiu	$a3,$s6,224
    addiu	$a2,$s6,28356
    lw	$a4,28832($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    # Line 814
    lwc1	$f4,3544($s6)
    lw	$a0,1808($s6)
    b	.L0d9d4cac
    swc1	$f4,236($s6)
.L0d9d4dc4:
    # Line 837
    beqz	$v1,.L0d9d4d14
    # Line 845
    andi	$ra,$a0,0x1
    # Line 841
    move	$t9,$s0
    addiu	$a3,$sp,1456
    addiu	$a2,$s6,28404
    lw	$a4,28840($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    # Line 842
    lw	$t9,6072($s6)
    lw	$t9,1364($t9)
    jalr	$t9
    addiu	$a0,$sp,1456
    b	.L0d9d4d10
    lw	$a0,1808($s6)
.L0d9d4e00:
    # Line 814
    beqz	$ra,.L0d9d4e8c
    # Line 816
    move	$t9,$s0
    addiu	$a3,$s6,224
    addiu	$a2,$s6,28332
    lw	$a4,28828($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    # Line 819
    lwc1	$f6,3544($s6)
    lw	$a0,1808($s6)
    # Line 818
    mtc1	$zero,$f5
    # Line 819
    swc1	$f6,236($s6)
    b	.L0d9d4cac
    # Line 818
    swc1	$f5,232($s6)
.L0d9d4e38:
    # Line 791
    andi	$at,$a0,0x1
    beqz	$at,.L0d9d4e80
    # Line 797
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,18880
    addiu	$a3,$s6,432
    addiu	$a2,$s6,28236
    lw	$a4,28812($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    # Line 799
    lw	$t9,12000($s6)
    jal	sub_0d9d0000
    move	$a0,$s6
    lw	$ra,1792($s6)
    andi	$ra,$ra,0x80
    beqz	$ra,.L0d9d4ec8
    # Line 803
    lwc1	$f12,12($sp)
.L0d9d4e7c:
    lw	$a0,1808($s6)
.L0d9d4e80:
    la	$s0,sub_0d9d0000
    b	.L0d9d4c7c
    addiu	$s0,$s0,18880
.L0d9d4e8c:
    # Line 819
    beqz	$t8,.L0d9d4cac
    # Line 821
    move	$t9,$s0
    addiu	$a3,$s6,224
    addiu	$a2,$s6,28308
    lw	$a4,28824($s6)
    mov.s	$f13,$f20
    bal __glSetUpMap2
    addiu	$a0,$sp,16
    # Line 825
    lwc1	$f8,3544($s6)
    lw	$a0,1808($s6)
    # Line 823
    mtc1	$zero,$f7
    # Line 825
    swc1	$f8,236($s6)
    # Line 824
    swc1	$f7,232($s6)
    b	.L0d9d4cac
    # Line 823
    swc1	$f7,228($s6)
.L0d9d4ec8:
    # Line 803
    lwc1	$f11,8($sp)
    swc1	$f12,444($s6)
    swc1	$f11,440($s6)
    lwc1	$f10,4($sp)
    lwc1	$f9,0($sp)
    swc1	$f10,436($s6)
    b	.L0d9d4e7c
    swc1	$f9,432($s6)
.end DoEvalCoord1

# Function: __glDoEvalCoord1
# Declared: Line 857 (Source lines: 858-871)
# Address: 0x0d9d4ef0 - 0x0d9d4ff0 (Size: 256 bytes, Frame: 128)
.globl __glDoEvalCoord1
.ent __glDoEvalCoord1
__glDoEvalCoord1:
    # Line 858
    addiu	$sp,$sp,-128
    sdc1	$f30,0($sp)
    # Line 862
    lwc1	$f30,192($a0)
    # Line 858
    sd	$ra,96($sp)
    # Line 862
    lwc1	$f0,196($a0)
    lwc1	$f1,200($a0)
    lwc1	$f2,204($a0)
    # Line 863
    lwc1	$f3,208($a0)
    lwc1	$f4,212($a0)
    lwc1	$f5,216($a0)
    lwc1	$f6,220($a0)
    # Line 864
    lwc1	$f7,224($a0)
    lwc1	$f8,228($a0)
    lwc1	$f10,236($a0)
    lwc1	$f9,232($a0)
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,32($sp)
    # Line 863
    sdc1	$f6,40($sp)
    sdc1	$f5,48($sp)
    # Line 858
    sd	$s8,104($sp)
    lui	$s8,0x8
    # Line 863
    sdc1	$f4,56($sp)
    # Line 858
    addiu	$s8,$s8,-16740
    sd	$gp,112($sp)
    addu	$gp,$t9,$s8
    # Line 866
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 863
    sdc1	$f3,64($sp)
    # Line 862
    sdc1	$f2,72($sp)
    # Line 866
    addiu	$t9,$t9,19200
    # Line 862
    sdc1	$f1,80($sp)
    sdc1	$f0,88($sp)
    # Line 866
    bal __glSetUpMap2
    # Line 858
    move	$s8,$a0
    # Line 871
    ld	$gp,112($sp)
    # Line 868
    swc1	$f30,192($s8)
    # Line 871
    ldc1	$f30,0($sp)
    # Line 868
    ldc1	$f11,88($sp)
    ldc1	$f12,80($sp)
    ldc1	$f13,72($sp)
    # Line 869
    ldc1	$f14,64($sp)
    ldc1	$f15,56($sp)
    ldc1	$f16,48($sp)
    ldc1	$f17,40($sp)
    # Line 870
    ldc1	$f18,32($sp)
    ldc1	$f19,24($sp)
    ldc1	$f23,8($sp)
    ldc1	$f21,16($sp)
    swc1	$f23,236($s8)
    swc1	$f21,232($s8)
    swc1	$f19,228($s8)
    swc1	$f18,224($s8)
    # Line 869
    swc1	$f17,220($s8)
    swc1	$f16,216($s8)
    swc1	$f15,212($s8)
    swc1	$f14,208($s8)
    # Line 868
    swc1	$f13,204($s8)
    ld	$ra,96($sp)
    swc1	$f12,200($s8)
    swc1	$f11,196($s8)
    # Line 871
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDoEvalCoord1

# Function: ComputeFirstPartials
# Declared: Line 873 (Source lines: 875-882)
# Address: 0x0d9d4ff0 - 0x0d9d508c (Size: 156 bytes, Frame: 0)
.ent ComputeFirstPartials
ComputeFirstPartials:
    # Line 875
    lwc1	$f13,12($a0)
    lwc1	$f9,12($a1)
    lwc1	$f11,0($a0)
    lwc1	$f12,0($a1)
    mul.s	$f11,$f11,$f9
    msub.s	$f11,$f11,$f12,$f13
    # Line 876
    lwc1	$f12,4($a1)
    # Line 875
    swc1	$f11,0($a1)
    # Line 876
    lwc1	$f10,4($a0)
    lwc1	$f11,12($a0)
    mul.s	$f10,$f10,$f9
    msub.s	$f10,$f10,$f11,$f12
    # Line 877
    lwc1	$f8,8($a1)
    # Line 876
    swc1	$f10,4($a1)
    # Line 877
    lwc1	$f6,8($a0)
    lwc1	$f7,12($a0)
    mul.s	$f6,$f6,$f9
    msub.s	$f6,$f6,$f7,$f8
    swc1	$f6,8($a1)
    # Line 879
    lwc1	$f7,12($a0)
    lwc1	$f3,12($a2)
    lwc1	$f5,0($a0)
    lwc1	$f6,0($a2)
    mul.s	$f5,$f5,$f3
    msub.s	$f5,$f5,$f6,$f7
    # Line 880
    lwc1	$f6,4($a2)
    # Line 879
    swc1	$f5,0($a2)
    # Line 880
    lwc1	$f4,4($a0)
    lwc1	$f5,12($a0)
    mul.s	$f4,$f4,$f3
    msub.s	$f4,$f4,$f5,$f6
    # Line 881
    lwc1	$f2,8($a2)
    # Line 880
    swc1	$f4,4($a2)
    # Line 881
    lwc1	$f0,8($a0)
    lwc1	$f1,12($a0)
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    # Line 882
    jr	$ra
    # Line 881
    swc1	$f0,8($a2)
.end ComputeFirstPartials

# Function: ComputeNormal2
# Declared: Line 884 (Source lines: 886-890)
# Address: 0x0d9d5090 - 0x0d9d50f4 (Size: 100 bytes, Frame: 0)
.ent ComputeNormal2
ComputeNormal2:
    # Line 887
    lwc1	$f10,8($a3)
    lwc1	$f11,8($a2)
    lwc1	$f8,4($a3)
    lwc1	$f9,4($a2)
    mul.s	$f8,$f8,$f11
    msub.s	$f8,$f8,$f9,$f10
    swc1	$f8,0($a1)
    # Line 888
    lwc1	$f6,8($a2)
    lwc1	$f7,8($a3)
    lwc1	$f4,0($a2)
    lwc1	$f5,0($a3)
    mul.s	$f4,$f4,$f7
    msub.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($a1)
    # Line 889
    lwc1	$f2,4($a3)
    lwc1	$f3,4($a2)
    lwc1	$f0,0($a3)
    lwc1	$f1,0($a2)
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    # Line 886
    move	$t9,$a0
    # Line 889
    swc1	$f0,8($a1)
    # Line 890
    lw	$t9,11904($t9)
    jr	$t9
    move	$a0,$a1
.end ComputeNormal2

# Function: DoDomain2
# Declared: Line 893 (Source lines: 895-943)
# Address: 0x0d9d5100 - 0x0d9d536c (Size: 620 bytes, Frame: 192)
.ent DoDomain2
DoDomain2:
    # Line 903
    lwc1	$f5,16($a3)
    lwc1	$f4,12($a3)
    # Line 895
    addiu	$sp,$sp,-64
    # Line 903
    c.eq.s	$f4,$f5
    # Line 895
    sd	$s0,48($sp)
    move	$a2,$a5
    sd	$s1,40($sp)
    move	$s1,$a0
    move	$s0,$a3
    # Line 903
    bc1t	.L0d9d5348
    sd	$ra,16($sp)
    lwc1	$f7,20($a3)
    lwc1	$f6,24($a3)
    c.eq.s $f7,$f6
    bc1t .L0d9d534c
    # Line 943
    ld	$ra,16($sp)
    # Line 905
    sub.s	$f8,$f5,$f4
    sub.s	$f3,$f13,$f4
    div.s	$f3,$f3,$f8
    # Line 906
    sub.s	$f1,$f6,$f7
    sub.s	$f0,$f14,$f7
    div.s	$f0,$f0,$f1
    # Line 911
    lwc1	$f2,756($a0)
    lw	$a0,4($a3)
    sd	$a4,32($sp)
    c.eq.s $f2,$f3
    sd	$a5,24($sp)
    # Line 905
    sdc1	$f3,0($sp)
    # Line 911
    bc1f .L0d9d5184
    sdc1	$f0,8($sp)
    lw	$at,1404($s1)
    beq	$at,$a0,.L0d9d51b4
    # Line 917
    ldc1	$f11,8($sp)
.L0d9d5184:
    # Line 911
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,17904
    # Line 912
    addiu	$a2,$s1,764
    bal __glSetUpMap2
    ldc1	$f13,0($sp)
    # Line 913
    li	$at,2
    sw	$at,1412($s1)
    # Line 914
    lw	$ra,4($s0)
    # Line 915
    ldc1	$f9,0($sp)
    # Line 914
    sw	$ra,1404($s1)
    # Line 915
    swc1	$f9,756($s1)
    # Line 917
    ldc1	$f11,8($sp)
.L0d9d51b4:
    lwc1	$f10,760($s1)
    c.eq.s $f10,$f11
    # Line 915
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 917
    lw	$a0,8($s0)
    bc1f .L0d9d51d4
    # Line 915
    addiu	$t9,$t9,17904
    # Line 917
    lw	$ra,1408($s1)
    beq	$ra,$a0,.L0d9d51f8
.L0d9d51d4:
    # Line 918
    ldc1	$f13,8($sp)
    bal __glSetUpMap2
    addiu	$a2,$s1,924
    # Line 919
    li	$v0,2
    sw	$v0,1416($s1)
    # Line 920
    lw	$at,8($s0)
    # Line 921
    ldc1	$f12,8($sp)
    # Line 920
    sw	$at,1408($s1)
    # Line 921
    swc1	$f12,760($s1)
.L0d9d51f8:
    # Line 924
    lw	$a0,0($s0)
    blez	$a0,.L0d9d534c
    # Line 943
    ld	$ra,16($sp)
    # Line 924
    mtc1	$zero,$f8
    ld	$ra,24($sp)
    mtc1	$zero,$f7
    addiu	$t9,$s1,4
    sll	$a7,$a0,0x2
    move	$a5,$ra
    ld	$a4,32($sp)
    b	.L0d9d523c
    addu	$ra,$a7,$ra
    nop
    nop
.L0d9d5230:
    # Line 925
    addiu	$a5,$a5,4
    beq	$a5,$ra,.L0d9d5348
    addiu	$a4,$a4,4
.L0d9d523c:
    # Line 927
    swc1	$f8,0($a4)
    lw	$at,4($s0)
    # Line 926
    move	$a2,$a5
    # Line 927
    blez	$at,.L0d9d5230
    mov.s	$f6,$f7
    move	$t2,$s1
    b	.L0d9d5360
    move	$a3,$zero
    nop
.L0d9d5260:
    # Line 937
    lwc1	$f13,0($a2)
    lwc1	$f14,924($a6)
    addiu	$t1,$t1,-1
    # Line 936
    addiu	$a6,$a6,4
    # Line 938
    addu	$a2,$a7,$a2
    bnez	$t1,.L0d9d5260
    # Line 937
    madd.s	$f4,$f4,$f13,$f14
.L0d9d527c:
    beqz	$v0,.L0d9d52dc
    nop
    nop
    nop
    nop
.L0d9d5290:
    lwc1	$f11,0($a2)
    # Line 938
    addu	$a2,$a7,$a2
    # Line 937
    lwc1	$f12,924($a6)
    lwc1	$f5,0($a2)
    lwc1	$f9,928($a6)
    # Line 938
    addu	$a2,$a7,$a2
    # Line 937
    lwc1	$f10,0($a2)
    madd.s	$f4,$f4,$f11,$f12
    lwc1	$f11,932($a6)
    # Line 938
    addu	$a2,$a7,$a2
    # Line 936
    addiu	$a6,$a6,16
    # Line 937
    madd.s	$f4,$f4,$f5,$f9
    lwc1	$f5,0($a2)
    lwc1	$f9,920($a6)
    # Line 936
    sltu	$v1,$a6,$t0
    # Line 937
    madd.s	$f4,$f4,$f10,$f11
    # Line 938
    addu	$a2,$a7,$a2
    # Line 936
    bnez	$v1,.L0d9d5290
    # Line 937
    madd.s	$f4,$f4,$f5,$f9
.L0d9d52dc:
    # Line 940
    lwc1	$f13,764($t2)
    madd.s	$f6,$f6,$f13,$f4
    swc1	$f6,0($a4)
    # Line 928
    lw	$a6,4($s0)
    slt	$a6,$a3,$a6
    addiu	$t2,$t2,4
    beqz	$a6,.L0d9d5230
    addiu	$a3,$a3,1
    # Line 934
    lwc1	$f5,924($s1)
.L0d9d5300:
    # Line 935
    lw	$a0,8($s0)
    # Line 934
    lwc1	$f4,0($a2)
    # Line 935
    slti	$t3,$a0,2
    addu	$a2,$a7,$a2
    addiu	$at,$a0,-1
    bnez	$t3,.L0d9d52dc
    # Line 934
    mul.s	$f4,$f4,$f5
    # Line 935
    li	$t8,1
    move	$t1,$t3
    movz	$t8,$at,$t1
    andi	$t1,$t8,0x3
    move	$a6,$t9
    sll	$t0,$a0,0x2
    addu	$t0,$t0,$s1
    bnez	$t1,.L0d9d5260
    sra	$v0,$t8,0x2
    b	.L0d9d527c
    nop
.L0d9d5348:
    # Line 943
    ld	$ra,16($sp)
.L0d9d534c:
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
.L0d9d5360:
    # Line 928
    addiu	$a3,$a3,1
    b	.L0d9d5300
    # Line 934
    lwc1	$f5,924($s1)
.end DoDomain2

# Function: DoDomain2WithDerivs
# Declared: Line 945 (Source lines: 948-1005)
# Address: 0x0d9d5370 - 0x0d9d564c (Size: 732 bytes, Frame: 208)
.ent DoDomain2WithDerivs
DoDomain2WithDerivs:
    # Line 957
    lwc1	$f5,16($a3)
    lwc1	$f4,12($a3)
    # Line 948
    addiu	$sp,$sp,-80
    sd	$ra,56($sp)
    # Line 957
    c.eq.s	$f4,$f5
    # Line 948
    sd	$s0,72($sp)
    move	$a2,$a5
    sd	$s1,64($sp)
    move	$s1,$a0
    move	$s0,$a3
    # Line 957
    bc1t	.L0d9d561c
    sd	$s2,16($sp)
    lwc1	$f8,20($a3)
    lwc1	$f7,24($a3)
    c.eq.s $f8,$f7
    bc1t .L0d9d5620
    # Line 1005
    ld	$ra,56($sp)
    # Line 959
    sub.s	$f9,$f5,$f4
    sub.s	$f6,$f13,$f4
    div.s	$f6,$f6,$f9
    # Line 960
    sub.s	$f1,$f7,$f8
    sub.s	$f0,$f14,$f8
    div.s	$f0,$f0,$f1
    # Line 965
    lwc1	$f2,756($a0)
    sd	$a6,48($sp)
    sd	$a7,40($sp)
    c.eq.s $f2,$f6
    sd	$a4,32($sp)
    sd	$a5,24($sp)
    li	$s2,1
    bc1f .L0d9d5414
    sdc1	$f0,8($sp)
    lw	$at,1412($a0)
    lw	$a0,4($a3)
    bne	$at,$s2,.L0d9d541c
    sdc1	$f6,0($sp)
    lw	$v0,1404($s1)
    beq	$v0,$a0,.L0d9d544c
    # Line 972
    ldc1	$f12,8($sp)
    b	.L0d9d5420
    # Line 965
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
.L0d9d5414:
    lw	$a0,4($a3)
    sdc1	$f6,0($sp)
.L0d9d541c:
    # lw $t9, -32708($gp) # &sub_0d9d0000
.L0d9d5420:
    addiu	$t9,$t9,18192
    # Line 967
    addiu	$a3,$s1,1084
    addiu	$a2,$s1,764
    bal __glSetUpMap2
    ldc1	$f13,0($sp)
    # Line 968
    sw	$s2,1412($s1)
    # Line 969
    lw	$ra,4($s0)
    # Line 970
    ldc1	$f10,0($sp)
    # Line 969
    sw	$ra,1404($s1)
    # Line 970
    swc1	$f10,756($s1)
    # Line 972
    ldc1	$f12,8($sp)
.L0d9d544c:
    lwc1	$f11,760($s1)
    c.eq.s $f11,$f12
    # Line 970
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 972
    bc1f .L0d9d5480
    # Line 970
    addiu	$t9,$t9,18192
    # Line 972
    lw	$ra,1416($s1)
    bne	$ra,$s2,.L0d9d5484
    lw	$a0,8($s0)
    lw	$at,1408($s1)
    beq	$at,$a0,.L0d9d54a8
    nop
    b	.L0d9d5488
    # Line 974
    addiu	$a3,$s1,1244
.L0d9d5480:
    # Line 972
    lw	$a0,8($s0)
.L0d9d5484:
    # Line 974
    addiu	$a3,$s1,1244
.L0d9d5488:
    ldc1	$f13,8($sp)
    bal __glSetUpMap2
    addiu	$a2,$s1,924
    # Line 975
    sw	$s2,1416($s1)
    # Line 976
    lw	$v0,8($s0)
    # Line 977
    ldc1	$f13,8($sp)
    # Line 976
    sw	$v0,1408($s1)
    # Line 977
    swc1	$f13,760($s1)
.L0d9d54a8:
    # Line 980
    lw	$a0,0($s0)
    blez	$a0,.L0d9d561c
    ld	$s2,40($sp)
    mtc1	$zero,$f7
    addiu	$ra,$s1,4
    ld	$a4,32($sp)
    ld	$a5,24($sp)
    sll	$t1,$a0,0x2
    move	$a7,$s2
    ld	$a6,48($sp)
    b	.L0d9d54f4
    addu	$s2,$t1,$s2
    nop
    nop
.L0d9d54e0:
    # Line 981
    addiu	$a7,$a7,4
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    beq	$a7,$s2,.L0d9d561c
    addiu	$a4,$a4,4
.L0d9d54f4:
    # Line 983
    swc1	$f7,0($a6)
    swc1	$f7,0($a5)
    swc1	$f7,0($a4)
    lw	$t8,4($s0)
    blez	$t8,.L0d9d54e0
    # Line 982
    move	$a2,$a7
    # Line 983
    move	$a3,$s1
    b	.L0d9d5640
    move	$t3,$zero
.L0d9d5518:
    sra	$at,$t9,0x1
.L0d9d551c:
    beqz	$at,.L0d9d556c
    nop
    nop
    nop
    nop
.L0d9d5530:
    # Line 996
    lwc1	$f9,1248($t0)
    lwc1	$f12,1244($t0)
    # Line 995
    lwc1	$f10,0($a2)
    # Line 997
    addu	$a2,$t1,$a2
    # Line 995
    lwc1	$f11,924($t0)
    # Line 993
    addiu	$t0,$t0,8
    # Line 995
    lwc1	$f6,0($a2)
    # Line 996
    madd.s	$f4,$f4,$f10,$f12
    # Line 995
    lwc1	$f8,920($t0)
    # Line 993
    sltu	$v0,$t0,$t2
    # Line 995
    madd.s	$f5,$f5,$f10,$f11
    # Line 996
    madd.s	$f4,$f4,$f6,$f9
    # Line 997
    addu	$a2,$t1,$a2
    # Line 993
    bnez	$v0,.L0d9d5530
    # Line 995
    madd.s	$f5,$f5,$f6,$f8
.L0d9d556c:
    # Line 1000
    madd.s	$f17,$f17,$f18,$f5
    swc1	$f17,0($a4)
    # Line 1001
    lwc1	$f16,1084($a3)
    lwc1	$f15,0($a5)
    madd.s	$f15,$f15,$f16,$f5
    swc1	$f15,0($a5)
    # Line 1002
    lwc1	$f14,764($a3)
    lwc1	$f13,0($a6)
    madd.s	$f13,$f13,$f14,$f4
    swc1	$f13,0($a6)
    # Line 984
    lw	$t0,4($s0)
    slt	$t0,$t3,$t0
    addiu	$a3,$a3,4
    beqz	$t0,.L0d9d54e0
    addiu	$t3,$t3,1
    # Line 990
    lwc1	$f6,0($a2)
.L0d9d55ac:
    # Line 992
    addu	$a2,$t1,$a2
    lw	$t8,8($s0)
    move	$t0,$ra
    li	$t9,1
    # Line 991
    lwc1	$f4,1244($s1)
    # Line 990
    lwc1	$f5,924($s1)
    # Line 992
    sll	$t2,$t8,0x2
    slti	$a0,$t8,2
    addiu	$v0,$t8,-1
    move	$at,$a0
    # Line 1000
    lwc1	$f18,764($a3)
    # Line 991
    mul.s	$f4,$f4,$f6
    # Line 992
    addu	$t2,$t2,$s1
    movz	$t9,$v0,$at
    # Line 1000
    lwc1	$f17,0($a4)
    # Line 990
    mul.s	$f5,$f5,$f6
    # Line 992
    bnez	$a0,.L0d9d556c
    andi	$at,$t9,0x1
    beqz	$at,.L0d9d551c
    sra	$at,$t9,0x1
    # Line 996
    lwc1	$f9,1244($ra)
    # Line 995
    lwc1	$f6,0($a2)
    lwc1	$f8,924($ra)
    # Line 993
    addiu	$t0,$ra,4
    # Line 996
    madd.s	$f4,$f4,$f6,$f9
    # Line 997
    addu	$a2,$t1,$a2
    b	.L0d9d5518
    # Line 995
    madd.s	$f5,$f5,$f6,$f8
.L0d9d561c:
    # Line 1005
    ld	$ra,56($sp)
.L0d9d5620:
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
    nop
    nop
.L0d9d5640:
    # Line 984
    addiu	$t3,$t3,1
    b	.L0d9d55ac
    # Line 990
    lwc1	$f6,0($a2)
.end DoDomain2WithDerivs

# Function: DoEvalCoord2
# Declared: Line 1011 (Source lines: 1013-1164)
# Address: 0x0d9d5650 - 0x0d9d5e4c (Size: 2044 bytes, Frame: 208)
.ent DoEvalCoord2
DoEvalCoord2:
    # Line 1017
    ld	$at,432($a0)
    # Line 1013
    addiu	$sp,$sp,-1616
    # Line 1017
    ld	$v0,440($a0)
    sd	$v0,8($sp)
    sd	$at,0($sp)
    sd	$s3,1552($sp)
    sd	$s2,1560($sp)
    sd	$s6,1568($sp)
    sd	$ra,1576($sp)
    sd	$s4,1584($sp)
    sd	$s0,1592($sp)
    sd	$s5,1600($sp)
    # Line 1013
    sd	$s8,1544($sp)
    li	$a7,3
    sdc1	$f20,1528($sp)
    # Line 1019
    li	$a4,355
    move	$a2,$zero
    # Line 1013
    sd	$s7,1536($sp)
    # Line 1019
    addiu	$a6,$a0,28236
    # Line 1013
    move	$s7,$a0
    mov.s	$f20,$f13
    sdc1	$f22,1520($sp)
    mov.s	$f22,$f14
    move	$s8,$a3
    # Line 1019
    addiu	$a5,$sp,16
    sd	$s1,1608($sp)
.L0d9d56b8:
    addiu	$a7,$a7,-1
    addu	$v1,$a2,$a6
    addiu	$a4,$a4,-1
    addu	$a0,$a2,$a5
    lw	$v1,0($v1)
    addiu	$a2,$a2,4
    bnez	$a7,.L0d9d56b8
    sw	$v1,0($a0)
    addiu	$s4,$a6,28
    addiu	$t3,$a5,28
    li	$t8,0x20
    addiu	$s6,$a6,4
    addiu	$a7,$a5,4
    addiu	$s2,$a5,8
    addiu	$s3,$a6,8
    addiu	$s5,$a6,12
    addiu	$t2,$a5,12
    addiu	$t0,$a6,20
    addiu	$t1,$a5,20
    addiu	$t9,$a5,24
    addiu	$ra,$a6,24
    addiu	$s0,$a5,16
    addiu	$s1,$a6,16
    nop
    nop
    nop
.L0d9d5720:
    addu	$a1,$a2,$a6
    addu	$a3,$a2,$a5
    lw	$a1,0($a1)
    addu	$a0,$a2,$s6
    sw	$a1,0($a3)
    addu	$a1,$a2,$a7
    lw	$a0,0($a0)
    addu	$v1,$a2,$s3
    sw	$a0,0($a1)
    addu	$a0,$a2,$s2
    lw	$v1,0($v1)
    addu	$v0,$a2,$s5
    sw	$v1,0($a0)
    addu	$v1,$a2,$t2
    lw	$v0,0($v0)
    addu	$at,$a2,$s1
    sw	$v0,0($v1)
    addu	$v0,$a2,$s0
    lw	$at,0($at)
    addu	$a3,$a2,$t0
    sw	$at,0($v0)
    addu	$at,$a2,$t1
    lw	$a3,0($a3)
    addu	$a1,$a2,$ra
    sw	$a3,0($at)
    addu	$a3,$a2,$t9
    lw	$a1,0($a1)
    addiu	$a4,$a4,-8
    addu	$a0,$a2,$s4
    sw	$a1,0($a3)
    addu	$a1,$a2,$t3
    lw	$a0,0($a0)
    addu	$a2,$a2,$t8
    bgtz	$a4,.L0d9d5720
    sw	$a0,0($a1)
    beqz	$s8,.L0d9d57b8
    nop
    # Line 1022
    sw	$zero,0($s8)
.L0d9d57b8:
    lw	$a2,1792($s7)
    dsll32	$a2,$a2,0x8
    bgez	$a2,.L0d9d5b9c
    lw	$a0,1812($s7)
    andi	$a3,$a0,0x100
    beqz	$a3,.L0d9d5a7c
    # Line 1030
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$a6,$sp,1472
    addiu	$a5,$sp,1456
    addiu	$t9,$t9,21360
    addiu	$a4,$sp,1440
    addiu	$a3,$s7,28772
    mov.s	$f14,$f22
    lw	$a7,28880($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    # Line 1032
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,20464
    addiu	$a2,$sp,1472
    addiu	$a1,$sp,1456
    bal __glDoEvalCoord1
    addiu	$a0,$sp,1440
    # Line 1033
    # lw $t9, -32708($gp) # &sub_0d9d0000
    move	$a0,$s7
    addiu	$t9,$t9,20624
    addiu	$a3,$sp,1472
    addiu	$a2,$sp,1456
    bal __glDoEvalCoord1
    addiu	$a1,$s7,208
    beqz	$s8,.L0d9d5888
    # Line 1037
    li	$s2,3
    # Line 1035
    lw	$ra,0($s8)
    ori	$ra,$ra,0x12
    sw	$ra,0($s8)
    # Line 1036
    lwc1	$f7,208($s7)
    swc1	$f7,20($s8)
    lwc1	$f6,212($s7)
    swc1	$f6,24($s8)
    lwc1	$f5,216($s7)
    swc1	$f5,28($s8)
    lwc1	$f4,220($s7)
    swc1	$f4,32($s8)
    # Line 1037
    lwc1	$f3,1440($sp)
    swc1	$f3,52($s8)
    lwc1	$f2,1444($sp)
    swc1	$f2,56($s8)
    lwc1	$f1,1448($sp)
    swc1	$f1,60($s8)
    lwc1	$f0,1452($sp)
    swc1	$f0,64($s8)
    li	$s2,3
.L0d9d5888:
    li	$s0,4
    lw	$a0,1812($s7)
.L0d9d5890:
    # Line 1049
    la	$s1,sub_0d9d0000
    addiu	$s1,$s1,20736
.L0d9d5898:
    # Line 1075
    lbu	$t8,3221($s7)
.L0d9d589c:
    beqz	$t8,.L0d9d5c80
    andi	$t9,$a0,0x2
    beqz	$t9,.L0d9d5900
    # Line 1082
    move	$t9,$s1
    addiu	$a4,$s7,192
    mov.s	$f14,$f22
    addiu	$a3,$s7,28492
    lw	$a5,28852($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    beqz	$s8,.L0d9d58fc
    nop
    # Line 1085
    lw	$ra,0($s8)
    ori	$ra,$ra,0x1
    sw	$ra,0($s8)
    # Line 1086
    lwc1	$f11,192($s7)
    swc1	$f11,4($s8)
    lwc1	$f10,196($s7)
    swc1	$f10,8($s8)
    lwc1	$f9,200($s7)
    swc1	$f9,12($s8)
    lwc1	$f8,204($s7)
    swc1	$f8,16($s8)
.L0d9d58fc:
    lw	$a0,1812($s7)
.L0d9d5900:
    # Line 1107
    andi	$at,$a0,0x40
    beqz	$at,.L0d9d597c
    # Line 1117
    andi	$ra,$a0,0x20
    # Line 1113
    move	$t9,$s1
    addiu	$a4,$s7,224
    mov.s	$f14,$f22
    addiu	$a3,$s7,28692
    lw	$a5,28872($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    beqz	$s8,.L0d9d59dc
    nop
    # Line 1116
    lw	$v0,0($s8)
    ori	$v0,$v0,0x4
    sw	$v0,0($s8)
    # Line 1117
    lwc1	$f15,224($s7)
    swc1	$f15,36($s8)
    lwc1	$f14,228($s7)
    swc1	$f14,40($s8)
    lwc1	$f13,232($s7)
    swc1	$f13,44($s8)
    lwc1	$f12,236($s7)
    # Line 1144
    bne	$s0,$s2,.L0d9d59e0
    # Line 1117
    swc1	$f12,48($s8)
.L0d9d5964:
    # Line 1149
    lw	$t9,6072($s7)
    lw	$t9,1364($t9)
    jal	sub_0d9d0000
    addiu	$a0,$sp,1440
    b	.L0d9d59f0
    # Line 1154
    lw	$v1,1812($s7)
.L0d9d597c:
    # Line 1117
    beqz	$ra,.L0d9d5b30
    # Line 1125
    andi	$at,$a0,0x10
    # Line 1120
    move	$t9,$s1
    addiu	$a4,$s7,224
    mov.s	$f14,$f22
    addiu	$a3,$s7,28652
    lw	$a5,28868($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    # Line 1122
    lwc1	$f16,3544($s7)
    beqz	$s8,.L0d9d59dc
    swc1	$f16,236($s7)
    # Line 1124
    lw	$at,0($s8)
    ori	$at,$at,0x4
    sw	$at,0($s8)
    # Line 1125
    lwc1	$f21,224($s7)
    swc1	$f21,36($s8)
    lwc1	$f19,228($s7)
    swc1	$f19,40($s8)
    lwc1	$f18,232($s7)
    swc1	$f18,44($s8)
    lwc1	$f17,236($s7)
    swc1	$f17,48($s8)
.L0d9d59dc:
    # Line 1144
    beq	$s0,$s2,.L0d9d5964
.L0d9d59e0:
    # Line 1149
    li	$v0,4
    beq	$s0,$v0,.L0d9d5de8
    nop
    # Line 1154
    lw	$v1,1812($s7)
.L0d9d59f0:
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d9d5a48
    ld	$s3,1552($sp)
    lw	$a0,1792($s7)
    andi	$a0,$a0,0x80
    beqz	$a0,.L0d9d5a48
    ld	$s3,1552($sp)
    # Line 1158
    lw	$t9,12000($s7)
    jalr	$t9
    move	$a0,$s7
    # Line 1161
    lwc1	$f29,12($sp)
    lwc1	$f27,8($sp)
    swc1	$f29,444($s7)
    swc1	$f27,440($s7)
    lwc1	$f25,4($sp)
    # Line 1162
    lw	$t9,12000($s7)
    # Line 1161
    lwc1	$f23,0($sp)
    swc1	$f25,436($s7)
    # Line 1162
    move	$a0,$s7
    jalr	$t9
    # Line 1161
    swc1	$f23,432($s7)
    ld	$s3,1552($sp)
.L0d9d5a48:
    ld	$s2,1560($sp)
    ld	$s6,1568($sp)
    ld	$s4,1584($sp)
    ld	$s0,1592($sp)
    ld	$s5,1600($sp)
    ld	$s1,1608($sp)
    ld	$s7,1536($sp)
    ld	$ra,1576($sp)
    ld	$s8,1544($sp)
    ldc1	$f22,1520($sp)
    ldc1	$f20,1528($sp)
    # Line 1164
    jr	$ra
    addiu	$sp,$sp,1616
.L0d9d5a7c:
    # Line 1037
    andi	$a1,$a0,0x80
    beqz	$a1,.L0d9d5d10
    li	$s2,3
    # Line 1043
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$a6,$sp,1504
    addiu	$a5,$sp,1488
    addiu	$t9,$t9,21360
    addiu	$a4,$sp,1440
    addiu	$a3,$s7,28732
    mov.s	$f14,$f22
    lw	$a7,28876($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    # Line 1045
    # lw $t9, -32708($gp) # &sub_0d9d0000
    move	$a0,$s7
    addiu	$t9,$t9,20624
    addiu	$a3,$sp,1504
    addiu	$a2,$sp,1488
    bal __glDoEvalCoord1
    addiu	$a1,$s7,208
    beqz	$s8,.L0d9d5b28
    # Line 1049
    li	$s0,3
    # Line 1047
    lw	$ra,0($s8)
    ori	$ra,$ra,0xa
    sw	$ra,0($s8)
    # Line 1048
    lwc1	$f6,208($s7)
    swc1	$f6,20($s8)
    lwc1	$f5,212($s7)
    swc1	$f5,24($s8)
    lwc1	$f4,216($s7)
    swc1	$f4,28($s8)
    lwc1	$f3,220($s7)
    swc1	$f3,32($s8)
    # Line 1049
    lwc1	$f2,1440($sp)
    swc1	$f2,52($s8)
    lwc1	$f1,1444($sp)
    swc1	$f1,56($s8)
    lwc1	$f0,1448($sp)
    swc1	$f0,60($s8)
    lwc1	$f31,1452($sp)
    swc1	$f31,64($s8)
    li	$s0,3
.L0d9d5b28:
    b	.L0d9d5890
    lw	$a0,1812($s7)
.L0d9d5b30:
    # Line 1125
    beqz	$at,.L0d9d5d18
    # Line 1134
    andi	$a1,$a0,0x8
    # Line 1128
    move	$t9,$s1
    addiu	$a4,$s7,224
    mov.s	$f14,$f22
    addiu	$a3,$s7,28612
    lw	$a5,28864($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    # Line 1131
    lwc1	$f8,3544($s7)
    # Line 1130
    mtc1	$zero,$f7
    # Line 1131
    swc1	$f8,236($s7)
    beqz	$s8,.L0d9d59dc
    # Line 1130
    swc1	$f7,232($s7)
    # Line 1133
    lw	$v0,0($s8)
    ori	$v0,$v0,0x4
    sw	$v0,0($s8)
    # Line 1134
    lwc1	$f12,224($s7)
    swc1	$f12,36($s8)
    lwc1	$f11,228($s7)
    swc1	$f11,40($s8)
    lwc1	$f10,232($s7)
    swc1	$f10,44($s8)
    lwc1	$f9,236($s7)
    b	.L0d9d59dc
    swc1	$f9,48($s8)
.L0d9d5b9c:
    # Line 1049
    andi	$v1,$a0,0x4
    beqz	$v1,.L0d9d5c08
    # Line 1067
    andi	$a3,$a0,0x80
    # Line 1055
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,20736
    addiu	$a4,$s7,208
    addiu	$a3,$s7,28532
    mov.s	$f14,$f22
    lw	$a5,28856($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    beqz	$s8,.L0d9d5c00
    nop
    # Line 1058
    lw	$ra,0($s8)
    ori	$ra,$ra,0x2
    sw	$ra,0($s8)
    # Line 1059
    lwc1	$f16,208($s7)
    swc1	$f16,20($s8)
    lwc1	$f15,212($s7)
    swc1	$f15,24($s8)
    lwc1	$f14,216($s7)
    swc1	$f14,28($s8)
    lwc1	$f13,220($s7)
    swc1	$f13,32($s8)
.L0d9d5c00:
    lw	$a0,1812($s7)
    # Line 1067
    andi	$a3,$a0,0x80
.L0d9d5c08:
    # Line 1059
    la	$s1,sub_0d9d0000
    andi	$t8,$a0,0x100
    # Line 1075
    li	$s0,-1
    # Line 1067
    li	$s2,3
    # Line 1059
    beqz	$t8,.L0d9d5d84
    addiu	$s1,$s1,20736
    # Line 1063
    move	$t9,$s1
    addiu	$a4,$sp,1440
    mov.s	$f14,$f22
    addiu	$a3,$s7,28772
    lw	$a5,28880($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    beqz	$s8,.L0d9d5c74
    # Line 1067
    li	$s2,3
    # Line 1066
    lw	$t9,0($s8)
    ori	$t9,$t9,0x10
    sw	$t9,0($s8)
    # Line 1067
    lwc1	$f21,1440($sp)
    swc1	$f21,52($s8)
    lwc1	$f19,1444($sp)
    swc1	$f19,56($s8)
    lwc1	$f18,1448($sp)
    swc1	$f18,60($s8)
    lwc1	$f17,1452($sp)
    swc1	$f17,64($s8)
.L0d9d5c74:
    li	$s0,4
    b	.L0d9d5898
    lw	$a0,1812($s7)
.L0d9d5c80:
    # Line 1086
    andi	$ra,$a0,0x1
    beqz	$ra,.L0d9d5900
    # Line 1092
    move	$t9,$s1
    addiu	$a4,$s7,432
    mov.s	$f14,$f22
    addiu	$a3,$s7,28452
    lw	$a5,28848($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    # Line 1094
    lw	$t9,12000($s7)
    jal	sub_0d9d0000
    move	$a0,$s7
    beqz	$s8,.L0d9d5cf8
    nop
    # Line 1096
    lw	$v0,0($s8)
    ori	$v0,$v0,0x1
    sw	$v0,0($s8)
    lw	$at,1792($s7)
    andi	$at,$at,0x80
    beqz	$at,.L0d9d5e28
    nop
    # Line 1099
    lwc1	$f29,432($s7)
    swc1	$f29,4($s8)
    lwc1	$f27,436($s7)
    swc1	$f27,8($s8)
    lwc1	$f25,440($s7)
    swc1	$f25,12($s8)
    lwc1	$f23,444($s7)
    swc1	$f23,16($s8)
.L0d9d5cf8:
    # Line 1101
    lw	$v1,1792($s7)
    andi	$v1,$v1,0x80
    beqz	$v1,.L0d9d5e08
    # Line 1107
    lwc1	$f12,12($sp)
.L0d9d5d08:
    b	.L0d9d5900
    lw	$a0,1812($s7)
.L0d9d5d10:
    b	.L0d9d5890
    # Line 1049
    li	$s0,-1
.L0d9d5d18:
    # Line 1134
    beqz	$a1,.L0d9d59dc
    # Line 1137
    move	$t9,$s1
    addiu	$a4,$s7,224
    mov.s	$f14,$f22
    addiu	$a3,$s7,28572
    lw	$a5,28860($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    # Line 1141
    lwc1	$f0,3544($s7)
    # Line 1139
    mtc1	$zero,$f31
    # Line 1141
    swc1	$f0,236($s7)
    # Line 1140
    swc1	$f31,232($s7)
    # Line 1141
    beqz	$s8,.L0d9d59dc
    # Line 1139
    swc1	$f31,228($s7)
    # Line 1143
    lw	$a2,0($s8)
    ori	$a2,$a2,0x4
    sw	$a2,0($s8)
    # Line 1144
    lwc1	$f4,224($s7)
    swc1	$f4,36($s8)
    lwc1	$f3,228($s7)
    swc1	$f3,40($s8)
    lwc1	$f2,232($s7)
    swc1	$f2,44($s8)
    lwc1	$f1,236($s7)
    b	.L0d9d59dc
    swc1	$f1,48($s8)
.L0d9d5d84:
    # Line 1067
    beqz	$a3,.L0d9d5e00
    # Line 1071
    move	$t9,$s1
    addiu	$a4,$sp,1440
    mov.s	$f14,$f22
    addiu	$a3,$s7,28732
    lw	$a5,28876($s7)
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    addiu	$a0,$sp,16
    beqz	$s8,.L0d9d5de0
    # Line 1075
    li	$s0,3
    # Line 1074
    lw	$a4,0($s8)
    ori	$a4,$a4,0x8
    sw	$a4,0($s8)
    # Line 1075
    lwc1	$f8,1440($sp)
    swc1	$f8,52($s8)
    lwc1	$f7,1444($sp)
    swc1	$f7,56($s8)
    lwc1	$f6,1448($sp)
    swc1	$f6,60($s8)
    lwc1	$f5,1452($sp)
    swc1	$f5,64($s8)
    li	$s0,3
.L0d9d5de0:
    b	.L0d9d5898
    lw	$a0,1812($s7)
.L0d9d5de8:
    # Line 1151
    lw	$t9,6072($s7)
    lw	$t9,1396($t9)
    jalr	$t9
    addiu	$a0,$sp,1440
    b	.L0d9d59f0
    # Line 1154
    lw	$v1,1812($s7)
.L0d9d5e00:
    b	.L0d9d589c
    # Line 1075
    lbu	$t8,3221($s7)
.L0d9d5e08:
    # Line 1107
    lwc1	$f11,8($sp)
    swc1	$f12,444($s7)
    swc1	$f11,440($s7)
    lwc1	$f10,4($sp)
    lwc1	$f9,0($sp)
    swc1	$f10,436($s7)
    b	.L0d9d5d08
    swc1	$f9,432($s7)
.L0d9d5e28:
    # Line 1101
    lwc1	$f16,192($s7)
    swc1	$f16,4($s8)
    lwc1	$f15,196($s7)
    swc1	$f15,8($s8)
    lwc1	$f14,200($s7)
    swc1	$f14,12($s8)
    lwc1	$f13,204($s7)
    b	.L0d9d5cf8
    swc1	$f13,16($s8)
.end DoEvalCoord2

# Function: __glDoEvalCoord2
# Declared: Line 1166 (Source lines: 1167-1180)
# Address: 0x0d9d5e50 - 0x0d9d5f54 (Size: 260 bytes, Frame: 128)
.globl __glDoEvalCoord2
.ent __glDoEvalCoord2
__glDoEvalCoord2:
    # Line 1167
    addiu	$sp,$sp,-128
    sdc1	$f30,0($sp)
    # Line 1171
    lwc1	$f30,192($a0)
    # Line 1167
    sd	$ra,96($sp)
    # Line 1171
    lwc1	$f0,196($a0)
    lwc1	$f1,200($a0)
    lwc1	$f2,204($a0)
    # Line 1172
    lwc1	$f3,208($a0)
    lwc1	$f4,212($a0)
    lwc1	$f5,216($a0)
    lwc1	$f6,220($a0)
    # Line 1173
    lwc1	$f7,224($a0)
    lwc1	$f8,228($a0)
    lwc1	$f10,236($a0)
    lwc1	$f9,232($a0)
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,32($sp)
    # Line 1172
    sdc1	$f6,40($sp)
    sdc1	$f5,48($sp)
    # Line 1167
    sd	$s8,104($sp)
    lui	$s8,0x8
    # Line 1172
    sdc1	$f4,56($sp)
    # Line 1167
    addiu	$s8,$s8,-20676
    sd	$gp,112($sp)
    addu	$gp,$t9,$s8
    # Line 1175
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 1172
    sdc1	$f3,64($sp)
    # Line 1171
    sdc1	$f2,72($sp)
    # Line 1175
    addiu	$t9,$t9,22096
    move	$a3,$zero
    # Line 1171
    sdc1	$f1,80($sp)
    sdc1	$f0,88($sp)
    # Line 1175
    bal __glDoEvalCoord1
    # Line 1167
    move	$s8,$a0
    # Line 1180
    ld	$gp,112($sp)
    # Line 1177
    swc1	$f30,192($s8)
    # Line 1180
    ldc1	$f30,0($sp)
    # Line 1177
    ldc1	$f11,88($sp)
    ldc1	$f12,80($sp)
    ldc1	$f13,72($sp)
    # Line 1178
    ldc1	$f14,64($sp)
    ldc1	$f15,56($sp)
    ldc1	$f16,48($sp)
    ldc1	$f17,40($sp)
    # Line 1179
    ldc1	$f18,32($sp)
    ldc1	$f19,24($sp)
    ldc1	$f23,8($sp)
    ldc1	$f21,16($sp)
    swc1	$f23,236($s8)
    swc1	$f21,232($s8)
    swc1	$f19,228($s8)
    swc1	$f18,224($s8)
    # Line 1178
    swc1	$f17,220($s8)
    swc1	$f16,216($s8)
    swc1	$f15,212($s8)
    swc1	$f14,208($s8)
    # Line 1177
    swc1	$f13,204($s8)
    ld	$ra,96($sp)
    swc1	$f12,200($s8)
    swc1	$f11,196($s8)
    # Line 1180
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDoEvalCoord2

# Function: __glEvalMesh1Line
# Declared: Line 1182 (Source lines: 1183-1211)
# Address: 0x0d9d5f60 - 0x0d9d6128 (Size: 456 bytes, Frame: 176)
.globl __glEvalMesh1Line
.ent __glEvalMesh1Line
__glEvalMesh1Line:
    # Line 1183
    addiu	$sp,$sp,-176
    sd	$a2,104($sp)
    lw	$a4,1944($a0)
    sd	$a1,96($sp)
    lui	$at,0x8
    sd	$s1,112($sp)
    move	$s1,$a0
    addiu	$at,$at,-20948
    sd	$gp,120($sp)
    beqz	$a4,.L0d9d6118
    addu	$gp,$t9,$at
    sd	$s0,144($sp)
    sd	$ra,136($sp)
    # Line 1195
    lwc1	$f27,208($a0)
    lwc1	$f29,212($a0)
    lwc1	$f31,216($a0)
    lwc1	$f0,220($a0)
    # Line 1196
    lwc1	$f1,224($a0)
    lwc1	$f2,228($a0)
    lwc1	$f4,236($a0)
    lwc1	$f3,232($a0)
    sdc1	$f4,8($sp)
    sdc1	$f3,48($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    # Line 1195
    sdc1	$f0,40($sp)
    sdc1	$f31,88($sp)
    sdc1	$f29,80($sp)
    sdc1	$f27,72($sp)
    # Line 1192
    lwc1	$f23,1932($a0)
    sdc1	$f20,128($sp)
    lwc1	$f20,1936($a0)
    # Line 1202
    lw	$t9,6072($a0)
    # Line 1194
    lwc1	$f25,204($a0)
    # Line 1202
    lw	$t9,28($t9)
    # Line 1192
    mtc1	$a4,$f21
    # Line 1194
    sdc1	$f25,64($sp)
    # Line 1192
    sub.s	$f20,$f20,$f23
    # Line 1194
    lwc1	$f25,200($a0)
    lwc1	$f23,192($s1)
    # Line 1192
    cvt.s.w	$f21,$f21
    # Line 1194
    sdc1	$f25,56($sp)
    lwc1	$f25,196($a0)
    sdc1	$f23,0($sp)
    # Line 1202
    li	$a0,3
    # Line 1194
    sdc1	$f25,16($sp)
    # Line 1202
    jalr	$t9
    # Line 1192
    div.s	$f20,$f20,$f21
    # Line 1203
    ld	$at,96($sp)
    ld	$ra,104($sp)
    slt	$ra,$ra,$at
    bnez	$ra,.L0d9d6090
    move	$s0,$at
    sd	$s3,160($sp)
    ld	$s3,104($sp)
    sd	$s2,152($sp)
    la	$s2,sub_0d9d0000
    addiu	$s3,$s3,1
    b	.L0d9d6068
    addiu	$s2,$s2,19200
.L0d9d6050:
    # Line 1204
    move	$t9,$s2
    bal __glSetUpMap2
    move	$a0,$s1
    # Line 1203
    addiu	$s0,$s0,1
    beq	$s3,$s0,.L0d9d6088
    nop
.L0d9d6068:
    lw	$t8,1944($s1)
    # Line 1204
    mtc1	$s0,$f14
    # Line 1203
    beq	$t8,$s0,.L0d9d6050
    # Line 1204
    lwc1	$f13,1936($s1)
    cvt.s.w	$f14,$f14
    lwc1	$f13,1932($s1)
    b	.L0d9d6050
    madd.s	$f13,$f13,$f14,$f20
.L0d9d6088:
    ld	$s2,152($sp)
    ld	$s3,160($sp)
.L0d9d6090:
    # Line 1206
    lw	$t9,6072($s1)
    lw	$t9,44($t9)
    ld	$s0,144($sp)
    jalr	$t9
    ldc1	$f20,128($sp)
    # Line 1211
    ld	$gp,120($sp)
    # Line 1208
    ldc1	$f15,0($sp)
    ldc1	$f16,16($sp)
    ldc1	$f17,56($sp)
    ldc1	$f18,64($sp)
    # Line 1209
    ldc1	$f19,72($sp)
    ldc1	$f21,80($sp)
    ldc1	$f23,88($sp)
    ldc1	$f25,40($sp)
    # Line 1210
    ldc1	$f27,24($sp)
    ldc1	$f29,32($sp)
    ldc1	$f0,8($sp)
    ldc1	$f31,48($sp)
    swc1	$f0,236($s1)
    swc1	$f31,232($s1)
    swc1	$f29,228($s1)
    swc1	$f27,224($s1)
    # Line 1209
    swc1	$f25,220($s1)
    swc1	$f23,216($s1)
    swc1	$f21,212($s1)
    swc1	$f19,208($s1)
    # Line 1208
    swc1	$f18,204($s1)
    swc1	$f17,200($s1)
    ld	$ra,136($sp)
    swc1	$f16,196($s1)
    swc1	$f15,192($s1)
    # Line 1211
    ld	$s1,112($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9d6118:
    ld	$s1,112($sp)
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glEvalMesh1Line

# Function: __glEvalMesh1Point
# Declared: Line 1213 (Source lines: 1214-1242)
# Address: 0x0d9d6130 - 0x0d9d62f8 (Size: 456 bytes, Frame: 176)
.globl __glEvalMesh1Point
.ent __glEvalMesh1Point
__glEvalMesh1Point:
    # Line 1214
    addiu	$sp,$sp,-176
    sd	$a2,104($sp)
    lw	$a4,1944($a0)
    sd	$a1,96($sp)
    lui	$at,0x8
    sd	$s1,112($sp)
    move	$s1,$a0
    addiu	$at,$at,-21412
    sd	$gp,120($sp)
    beqz	$a4,.L0d9d62e8
    addu	$gp,$t9,$at
    sd	$s0,144($sp)
    sd	$ra,136($sp)
    # Line 1226
    lwc1	$f27,208($a0)
    lwc1	$f29,212($a0)
    lwc1	$f31,216($a0)
    lwc1	$f0,220($a0)
    # Line 1227
    lwc1	$f1,224($a0)
    lwc1	$f2,228($a0)
    lwc1	$f4,236($a0)
    lwc1	$f3,232($a0)
    sdc1	$f4,8($sp)
    sdc1	$f3,48($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    # Line 1226
    sdc1	$f0,40($sp)
    sdc1	$f31,88($sp)
    sdc1	$f29,80($sp)
    sdc1	$f27,72($sp)
    # Line 1223
    lwc1	$f23,1932($a0)
    sdc1	$f20,128($sp)
    lwc1	$f20,1936($a0)
    # Line 1233
    lw	$t9,6072($a0)
    # Line 1225
    lwc1	$f25,204($a0)
    # Line 1233
    lw	$t9,28($t9)
    # Line 1223
    mtc1	$a4,$f21
    # Line 1225
    sdc1	$f25,64($sp)
    # Line 1223
    sub.s	$f20,$f20,$f23
    # Line 1225
    lwc1	$f25,200($a0)
    lwc1	$f23,192($s1)
    # Line 1223
    cvt.s.w	$f21,$f21
    # Line 1225
    sdc1	$f25,56($sp)
    lwc1	$f25,196($a0)
    sdc1	$f23,0($sp)
    # Line 1233
    move	$a0,$zero
    # Line 1225
    sdc1	$f25,16($sp)
    # Line 1233
    jalr	$t9
    # Line 1223
    div.s	$f20,$f20,$f21
    # Line 1234
    ld	$at,96($sp)
    ld	$ra,104($sp)
    slt	$ra,$ra,$at
    bnez	$ra,.L0d9d6260
    move	$s0,$at
    sd	$s3,160($sp)
    ld	$s3,104($sp)
    sd	$s2,152($sp)
    la	$s2,sub_0d9d0000
    addiu	$s3,$s3,1
    b	.L0d9d6238
    addiu	$s2,$s2,19200
.L0d9d6220:
    # Line 1235
    move	$t9,$s2
    bal __glSetUpMap2
    move	$a0,$s1
    # Line 1234
    addiu	$s0,$s0,1
    beq	$s3,$s0,.L0d9d6258
    nop
.L0d9d6238:
    lw	$t8,1944($s1)
    # Line 1235
    mtc1	$s0,$f14
    # Line 1234
    beq	$t8,$s0,.L0d9d6220
    # Line 1235
    lwc1	$f13,1936($s1)
    cvt.s.w	$f14,$f14
    lwc1	$f13,1932($s1)
    b	.L0d9d6220
    madd.s	$f13,$f13,$f14,$f20
.L0d9d6258:
    ld	$s2,152($sp)
    ld	$s3,160($sp)
.L0d9d6260:
    # Line 1237
    lw	$t9,6072($s1)
    lw	$t9,44($t9)
    ld	$s0,144($sp)
    jalr	$t9
    ldc1	$f20,128($sp)
    # Line 1242
    ld	$gp,120($sp)
    # Line 1239
    ldc1	$f15,0($sp)
    ldc1	$f16,16($sp)
    ldc1	$f17,56($sp)
    ldc1	$f18,64($sp)
    # Line 1240
    ldc1	$f19,72($sp)
    ldc1	$f21,80($sp)
    ldc1	$f23,88($sp)
    ldc1	$f25,40($sp)
    # Line 1241
    ldc1	$f27,24($sp)
    ldc1	$f29,32($sp)
    ldc1	$f0,8($sp)
    ldc1	$f31,48($sp)
    swc1	$f0,236($s1)
    swc1	$f31,232($s1)
    swc1	$f29,228($s1)
    swc1	$f27,224($s1)
    # Line 1240
    swc1	$f25,220($s1)
    swc1	$f23,216($s1)
    swc1	$f21,212($s1)
    swc1	$f19,208($s1)
    # Line 1239
    swc1	$f18,204($s1)
    swc1	$f17,200($s1)
    ld	$ra,136($sp)
    swc1	$f16,196($s1)
    swc1	$f15,192($s1)
    # Line 1242
    ld	$s1,112($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9d62e8:
    ld	$s1,112($sp)
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glEvalMesh1Point

# Function: sendChange
# Declared: Line 1244 (Source lines: 1245-1278)
# Address: 0x0d9d6300 - 0x0d9d64a0 (Size: 416 bytes, Frame: 48)
.ent sendChange
sendChange:
    # Line 1246
    ld	$v0,432($a0)
    # Line 1245
    addiu	$sp,$sp,-48
    # Line 1246
    ld	$v1,440($a0)
    sd	$v1,8($sp)
    lw	$a3,0($a1)
    sd	$v0,0($sp)
    # Line 1245
    sd	$s0,16($sp)
    # Line 1246
    andi	$at,$a3,0x1
    # Line 1245
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 1246
    beqz	$at,.L0d9d6398
    sd	$ra,32($sp)
    lw	$a0,1792($a0)
    andi	$a0,$a0,0x80
    lwc1	$f4,4($a1)
    beqz	$a0,.L0d9d6378
    nop
    # Line 1250
    swc1	$f4,432($s0)
    lwc1	$f2,8($a1)
    swc1	$f2,436($s0)
    lwc1	$f1,12($a1)
    # Line 1251
    lw	$t9,12000($s0)
    # Line 1250
    swc1	$f1,440($s0)
    lwc1	$f0,16($a1)
    # Line 1251
    move	$a0,$s0
    jalr	$t9
    # Line 1250
    swc1	$f0,444($s0)
    b	.L0d9d6398
    # Line 1253
    lw	$a3,0($s1)
.L0d9d6378:
    swc1	$f4,192($s0)
    lwc1	$f6,8($a1)
    swc1	$f6,196($s0)
    lwc1	$f5,12($a1)
    swc1	$f5,200($s0)
    lwc1	$f3,16($a1)
    swc1	$f3,204($s0)
    lw	$a3,0($s1)
.L0d9d6398:
    andi	$a1,$a3,0x4
    beqz	$a1,.L0d9d63cc
    # Line 1257
    andi	$a2,$a3,0x2
    lwc1	$f10,36($s1)
    swc1	$f10,224($s0)
    lwc1	$f9,40($s1)
    swc1	$f9,228($s0)
    lwc1	$f8,44($s1)
    swc1	$f8,232($s0)
    lwc1	$f7,48($s1)
    swc1	$f7,236($s0)
    lw	$a3,0($s1)
    andi	$a2,$a3,0x2
.L0d9d63cc:
    beqz	$a2,.L0d9d63fc
    # Line 1260
    andi	$a4,$a3,0x8
    lwc1	$f14,20($s1)
    swc1	$f14,208($s0)
    lwc1	$f13,24($s1)
    swc1	$f13,212($s0)
    lwc1	$f12,28($s1)
    swc1	$f12,216($s0)
    lwc1	$f11,32($s1)
    swc1	$f11,220($s0)
    lw	$a3,0($s1)
    andi	$a4,$a3,0x8
.L0d9d63fc:
    beqz	$a4,.L0d9d6480
    # Line 1263
    andi	$v0,$a3,0x10
    lw	$t9,6072($s0)
    lw	$t9,1364($t9)
    jalr	$t9
    addiu	$a0,$s1,52
    lw	$a3,0($s1)
.L0d9d6418:
    # Line 1265
    andi	$ra,$a3,0x1
.L0d9d641c:
    beqz	$ra,.L0d9d6470
    ld	$ra,32($sp)
    lw	$at,1792($s0)
    andi	$at,$at,0x80
    beqz	$at,.L0d9d6470
    ld	$ra,32($sp)
    # Line 1271
    lw	$t9,12000($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1274
    lwc1	$f15,0($sp)
    lwc1	$f16,4($sp)
    lwc1	$f18,12($sp)
    lwc1	$f17,8($sp)
    swc1	$f18,444($s0)
    # Line 1275
    lw	$t9,12000($s0)
    # Line 1274
    swc1	$f17,440($s0)
    swc1	$f16,436($s0)
    # Line 1275
    move	$a0,$s0
    jalr	$t9
    # Line 1274
    swc1	$f15,432($s0)
    ld	$ra,32($sp)
.L0d9d6470:
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 1278
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d6480:
    # Line 1263
    beqz	$v0,.L0d9d641c
    # Line 1265
    andi	$ra,$a3,0x1
    lw	$t9,6072($s0)
    lw	$t9,1396($t9)
    jalr	$t9
    addiu	$a0,$s1,52
    b	.L0d9d6418
    lw	$a3,0($s1)
.end sendChange

# Function: __glEvalMesh2Fill
# Declared: Line 1287 (Source lines: 1289-1339)
# Address: 0x0d9d64a0 - 0x0d9d6820 (Size: 896 bytes, Frame: 0)
.globl __glEvalMesh2Fill
.ent __glEvalMesh2Fill
__glEvalMesh2Fill:
    # Line 1289
    lui	$at,0x1
    ori	$at,$at,0x1150
    # Line 1299
    lw	$a6,1960($a0)
    # Line 1289
    subu	$sp,$sp,$at
    move	$v0,$s8
    sd	$v0,48($sp)
    sd	$a4,64($sp)
    sd	$s6,24($sp)
    move	$s6,$a1
    sd	$a3,72($sp)
    addu	$s8,$sp,$at
    lui	$at,0x8
    sd	$s0,32($sp)
    move	$s0,$a0
    addiu	$at,$at,-22292
    sd	$gp,40($sp)
    # Line 1299
    beqz	$a6,.L0d9d6804
    # Line 1289
    addu	$gp,$t9,$at
    # Line 1299
    lw	$a0,1976($a0)
    beqz	$a0,.L0d9d6804
    nop
    sdc1	$f28,88($sp)
    # Line 1302
    mtc1	$a0,$f27
    lwc1	$f28,1964($s0)
    sdc1	$f26,96($sp)
    lwc1	$f26,1968($s0)
    cvt.s.w	$f27,$f27
    sub.s	$f26,$f26,$f28
    # Line 1306
    lwc1	$f14,236($s0)
    lwc1	$f7,232($s0)
    # Line 1302
    div.s	$f26,$f26,$f27
    # Line 1306
    lwc1	$f8,228($s0)
    lwc1	$f9,224($s0)
    # Line 1305
    lwc1	$f10,220($s0)
    lwc1	$f11,216($s0)
    lwc1	$f12,212($s0)
    lwc1	$f13,208($s0)
    # Line 1304
    lwc1	$f6,204($s0)
    # Line 1301
    mtc1	$a6,$f29
    lwc1	$f31,1948($s0)
    lwc1	$f28,1952($s0)
    # Line 1308
    ld	$v1,72($sp)
    # Line 1301
    cvt.s.w	$f29,$f29
    # Line 1304
    lwc1	$f4,200($s0)
    lwc1	$f5,196($s0)
    # Line 1308
    slt	$v1,$a1,$v1
    # Line 1301
    sub.s	$f28,$f28,$f31
    sd	$s5,104($sp)
    # Line 1308
    move	$s5,$a1
    # Line 1304
    lwc1	$f15,192($s0)
    # Line 1308
    beqz	$v1,.L0d9d67c8
    # Line 1301
    div.s	$f28,$f28,$f29
    sdc1	$f15,272($sp)
    sdc1	$f14,264($sp)
    sdc1	$f13,256($sp)
    sdc1	$f12,248($sp)
    sdc1	$f11,240($sp)
    sdc1	$f10,232($sp)
    sdc1	$f9,224($sp)
    sdc1	$f8,216($sp)
    sdc1	$f7,208($sp)
    sdc1	$f6,200($sp)
    sdc1	$f5,192($sp)
    sdc1	$f4,184($sp)
    sdc1	$f20,176($sp)
    sdc1	$f24,168($sp)
    sdc1	$f22,160($sp)
    sd	$s3,136($sp)
    sd	$s2,120($sp)
    sd	$s1,112($sp)
    sd	$ra,144($sp)
    # Line 1308
    addiu	$ra,$a2,-1
    sd	$ra,80($sp)
    sd	$s7,128($sp)
    ld	$s7,64($sp)
    sd	$s4,152($sp)
    la	$s4,sub_0d9d0000
    subu	$t8,$s7,$a2
    slt	$s7,$s7,$a2
    xori	$s7,$s7,0x1
    sd	$s7,56($sp)
    addiu	$t9,$a1,1
    la	$s7,sub_0d9d0000
    sd	$t9,8($sp)
    addiu	$s4,$s4,22096
    addiu	$t8,$t8,1
    sd	$t8,16($sp)
    b	.L0d9d6634
    addiu	$s7,$s7,25344
    nop
    nop
    nop
.L0d9d6610:
    # Line 1333
    lw	$t9,6072($s0)
    lw	$t9,44($t9)
    jalr	$t9
    ld	$s1,8($sp)
    # Line 1308
    ld	$ra,72($sp)
    addiu	$s5,$s5,1
    addiu	$s1,$s1,1
    beq	$ra,$s5,.L0d9d6774
    sd	$s1,8($sp)
.L0d9d6634:
    lw	$a6,1960($s0)
    # Line 1310
    lwc1	$f22,1948($s0)
    # Line 1309
    ld	$at,8($sp)
    mtc1	$s5,$f25
    # Line 1308
    bne	$a6,$s5,.L0d9d675c
    # Line 1310
    ld	$v0,8($sp)
    # Line 1309
    lwc1	$f24,1952($s0)
    ld	$at,8($sp)
    beq	$a6,$at,.L0d9d676c
.L0d9d6658:
    # Line 1310
    mtc1	$v0,$f23
    cvt.s.w	$f23,$f23
    madd.s	$f22,$f22,$f23,$f28
.L0d9d6664:
    # Line 1311
    lw	$t9,6072($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1313
    ld	$ra,56($sp)
    lui	$s3,0xffff
    move	$s2,$zero
    addu	$s3,$s3,$s8
    ld	$s1,64($sp)
    beqz	$ra,.L0d9d6610
    addiu	$s3,$s3,-4144
    b	.L0d9d66e4
    lw	$t9,1976($s0)
    nop
    nop
.L0d9d66a0:
    # Line 1321
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
.L0d9d66b4:
    # Line 1324
    move	$t9,$s4
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$s3
    # Line 1313
    ld	$t8,80($sp)
.L0d9d66d0:
    addiu	$s1,$s1,-1
    # Line 1330
    addiu	$s3,$s3,68
    # Line 1313
    beq	$t8,$s1,.L0d9d6610
    # Line 1330
    addiu	$s2,$s2,1
    # Line 1313
    lw	$t9,1976($s0)
.L0d9d66e4:
    # Line 1314
    mtc1	$s1,$f21
    slti	$ra,$s2,1024
    # Line 1313
    beq	$t9,$s1,.L0d9d6700
    # Line 1314
    lwc1	$f20,1968($s0)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1964($s0)
    madd.s	$f20,$f20,$f21,$f26
.L0d9d6700:
    beqz	$ra,.L0d9d6728
    # Line 1327
    move	$t9,$s4
    # Line 1314
    beq	$s6,$s5,.L0d9d66a0
    # Line 1321
    move	$t9,$s4
    # Line 1319
    move	$t9,$s7
    move	$a0,$s0
    bal __glEvalMesh1Point
    move	$a1,$s3
    b	.L0d9d66b4
    nop
.L0d9d6728:
    # Line 1327
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
    # Line 1328
    move	$t9,$s4
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
    b	.L0d9d66d0
    # Line 1313
    ld	$t8,80($sp)
.L0d9d675c:
    # Line 1309
    cvt.s.w	$f25,$f25
    lwc1	$f24,1948($s0)
    bne	$a6,$at,.L0d9d6658
    madd.s	$f24,$f24,$f25,$f28
.L0d9d676c:
    # Line 1310
    b	.L0d9d6664
    lwc1	$f22,1952($s0)
.L0d9d6774:
    ld	$s1,112($sp)
    ld	$s2,120($sp)
    ld	$s7,128($sp)
    ld	$s3,136($sp)
    ld	$ra,144($sp)
    ld	$s4,152($sp)
    ldc1	$f22,160($sp)
    ldc1	$f24,168($sp)
    ldc1	$f20,176($sp)
    ldc1	$f4,184($sp)
    ldc1	$f5,192($sp)
    ldc1	$f6,200($sp)
    ldc1	$f7,208($sp)
    ldc1	$f8,216($sp)
    ldc1	$f9,224($sp)
    ldc1	$f10,232($sp)
    ldc1	$f11,240($sp)
    ldc1	$f12,248($sp)
    ldc1	$f13,256($sp)
    ldc1	$f14,264($sp)
    ldc1	$f15,272($sp)
.L0d9d67c8:
    ld	$s5,104($sp)
    ldc1	$f26,96($sp)
    ldc1	$f28,88($sp)
    # Line 1338
    swc1	$f14,236($s0)
    swc1	$f7,232($s0)
    swc1	$f8,228($s0)
    swc1	$f9,224($s0)
    # Line 1337
    swc1	$f10,220($s0)
    swc1	$f11,216($s0)
    swc1	$f12,212($s0)
    swc1	$f13,208($s0)
    # Line 1336
    swc1	$f6,204($s0)
    swc1	$f4,200($s0)
    swc1	$f5,196($s0)
    swc1	$f15,192($s0)
.L0d9d6804:
    # Line 1339
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$v0,48($sp)
    ld	$s6,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glEvalMesh2Fill

# Function: __glEvalMesh2Point
# Declared: Line 1341 (Source lines: 1343-1374)
# Address: 0x0d9d6820 - 0x0d9d6a98 (Size: 632 bytes, Frame: 224)
.globl __glEvalMesh2Point
.ent __glEvalMesh2Point
__glEvalMesh2Point:
    # Line 1343
    addiu	$sp,$sp,-224
    sd	$s0,128($sp)
    move	$s0,$a3
    # Line 1351
    lw	$a6,1960($a0)
    # Line 1343
    sd	$s5,120($sp)
    move	$s5,$a2
    lui	$at,0x8
    sd	$s1,112($sp)
    move	$s1,$a0
    addiu	$at,$at,-23188
    sd	$gp,136($sp)
    # Line 1351
    beqz	$a6,.L0d9d6a80
    # Line 1343
    addu	$gp,$t9,$at
    # Line 1351
    lw	$a2,1976($a0)
    sd	$a4,104($sp)
    beqz	$a2,.L0d9d6a80
    sd	$a1,160($sp)
    sd	$s4,168($sp)
    sd	$ra,176($sp)
    # Line 1357
    lwc1	$f31,208($a0)
    lwc1	$f0,212($a0)
    lwc1	$f1,216($a0)
    lwc1	$f2,220($a0)
    # Line 1358
    lwc1	$f4,228($a0)
    lwc1	$f3,224($a0)
    sdc1	$f4,40($sp)
    sdc1	$f3,32($sp)
    # Line 1357
    sdc1	$f2,24($sp)
    sdc1	$f24,144($sp)
    # Line 1354
    mtc1	$a2,$f23
    lwc1	$f24,1964($a0)
    sdc1	$f22,152($sp)
    lwc1	$f22,1968($a0)
    # Line 1357
    sdc1	$f1,16($sp)
    # Line 1354
    cvt.s.w	$f23,$f23
    # Line 1357
    sdc1	$f0,56($sp)
    sdc1	$f31,88($sp)
    # Line 1354
    sub.s	$f22,$f22,$f24
    # Line 1353
    lwc1	$f27,1948($a0)
    # Line 1360
    lw	$t9,6072($a0)
    # Line 1354
    div.s	$f22,$f22,$f23
    # Line 1356
    lwc1	$f29,204($a0)
    # Line 1360
    lw	$t9,28($t9)
    # Line 1356
    sdc1	$f29,80($sp)
    lwc1	$f29,200($a0)
    # Line 1358
    lwc1	$f25,236($a0)
    lwc1	$f24,232($a0)
    sdc1	$f25,64($sp)
    # Line 1353
    mtc1	$a6,$f25
    # Line 1358
    sdc1	$f24,48($sp)
    # Line 1353
    lwc1	$f24,1952($a0)
    # Line 1356
    sdc1	$f29,72($sp)
    # Line 1353
    cvt.s.w	$f25,$f25
    # Line 1356
    lwc1	$f29,196($a0)
    # Line 1353
    sub.s	$f24,$f24,$f27
    # Line 1356
    lwc1	$f27,192($s1)
    sdc1	$f29,8($sp)
    # Line 1360
    move	$a0,$zero
    # Line 1356
    sdc1	$f27,0($sp)
    # Line 1360
    jalr	$t9
    # Line 1353
    div.s	$f24,$f24,$f25
    # Line 1361
    ld	$a0,160($sp)
    slt	$ra,$s0,$a0
    bnez	$ra,.L0d9d6a04
    move	$s4,$a0
    sd	$s2,200($sp)
    la	$s2,sub_0d9d0000
    sd	$s6,192($sp)
    ld	$s6,104($sp)
    sd	$s7,208($sp)
    addiu	$s7,$s0,1
    addiu	$s2,$s2,22096
    sd	$s3,184($sp)
    addiu	$s3,$s6,1
    subu	$t8,$s6,$s5
    sdc1	$f20,216($sp)
    slt	$s6,$s6,$s5
    addiu	$t8,$t8,1
    sd	$t8,96($sp)
    b	.L0d9d697c
    xori	$s6,$s6,0x1
    nop
    nop
    nop
.L0d9d6970:
    addiu	$s4,$s4,1
    beq	$s7,$s4,.L0d9d69f0
    nop
.L0d9d697c:
    lw	$t8,1960($s1)
    # Line 1362
    mtc1	$s4,$f21
    # Line 1363
    move	$s0,$s5
    # Line 1361
    beq	$t8,$s4,.L0d9d699c
    # Line 1362
    lwc1	$f20,1952($s1)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1948($s1)
    madd.s	$f20,$f20,$f21,$f24
.L0d9d699c:
    # Line 1363
    beqz	$s6,.L0d9d6970
    nop
    b	.L0d9d69d4
    lw	$t9,1976($s1)
    nop
.L0d9d69b0:
    # Line 1366
    move	$t9,$s2
    move	$a0,$s1
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
    # Line 1363
    addiu	$s0,$s0,1
    beq	$s3,$s0,.L0d9d6970
    nop
    lw	$t9,1976($s1)
.L0d9d69d4:
    # Line 1364
    mtc1	$s0,$f15
    # Line 1363
    beq	$t9,$s0,.L0d9d69b0
    # Line 1364
    lwc1	$f14,1968($s1)
    cvt.s.w	$f15,$f15
    lwc1	$f14,1964($s1)
    b	.L0d9d69b0
    madd.s	$f14,$f14,$f15,$f22
.L0d9d69f0:
    ld	$s3,184($sp)
    ld	$s6,192($sp)
    ld	$s2,200($sp)
    ld	$s7,208($sp)
    ldc1	$f20,216($sp)
.L0d9d6a04:
    # Line 1369
    lw	$t9,6072($s1)
    lw	$t9,44($t9)
    ld	$s4,168($sp)
    ldc1	$f22,152($sp)
    jalr	$t9
    ldc1	$f24,144($sp)
    ld	$ra,176($sp)
    # Line 1371
    ldc1	$f16,0($sp)
    ldc1	$f17,8($sp)
    ldc1	$f18,72($sp)
    ldc1	$f19,80($sp)
    # Line 1372
    ldc1	$f21,88($sp)
    ldc1	$f23,56($sp)
    ldc1	$f25,16($sp)
    ldc1	$f27,24($sp)
    # Line 1373
    ldc1	$f29,32($sp)
    ldc1	$f31,40($sp)
    ldc1	$f1,64($sp)
    ldc1	$f0,48($sp)
    swc1	$f1,236($s1)
    swc1	$f0,232($s1)
    swc1	$f31,228($s1)
    swc1	$f29,224($s1)
    # Line 1372
    swc1	$f27,220($s1)
    swc1	$f25,216($s1)
    swc1	$f23,212($s1)
    swc1	$f21,208($s1)
    # Line 1371
    swc1	$f19,204($s1)
    swc1	$f18,200($s1)
    swc1	$f17,196($s1)
    swc1	$f16,192($s1)
.L0d9d6a80:
    # Line 1374
    ld	$gp,136($sp)
    ld	$s0,128($sp)
    ld	$s1,112($sp)
    ld	$s5,120($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glEvalMesh2Point

# Function: __glEvalMesh2Line
# Declared: Line 1376 (Source lines: 1378-1457)
# Address: 0x0d9d6aa0 - 0x0d9d7058 (Size: 1464 bytes, Frame: 0)
.globl __glEvalMesh2Line
.ent __glEvalMesh2Line
__glEvalMesh2Line:
    # Line 1378
    lui	$at,0x1
    ori	$at,$at,0x1180
    # Line 1389
    lw	$a6,1960($a0)
    # Line 1378
    subu	$sp,$sp,$at
    move	$v0,$s8
    sd	$v0,128($sp)
    sd	$a4,208($sp)
    sd	$a3,176($sp)
    sd	$s7,112($sp)
    move	$s7,$a1
    sd	$a2,200($sp)
    addu	$s8,$sp,$at
    lui	$at,0x8
    sd	$s0,120($sp)
    move	$s0,$a0
    addiu	$at,$at,-23828
    sd	$gp,136($sp)
    # Line 1389
    beqz	$a6,.L0d9d6ff8
    # Line 1378
    addu	$gp,$t9,$at
    # Line 1389
    lw	$a0,1976($a0)
    beqz	$a0,.L0d9d6ff8
    nop
    sd	$s4,312($sp)
    sd	$s2,304($sp)
    sd	$s6,320($sp)
    # Line 1395
    lwc1	$f3,216($s0)
    lwc1	$f4,220($s0)
    # Line 1396
    lwc1	$f5,224($s0)
    lwc1	$f6,228($s0)
    lwc1	$f8,236($s0)
    lwc1	$f7,232($s0)
    sdc1	$f8,104($sp)
    sdc1	$f7,96($sp)
    sdc1	$f6,40($sp)
    # Line 1392
    lwc1	$f29,1964($s0)
    mtc1	$a0,$f27
    sdc1	$f26,264($sp)
    lwc1	$f26,1968($s0)
    # Line 1396
    sdc1	$f5,80($sp)
    # Line 1392
    cvt.s.w	$f27,$f27
    # Line 1395
    sdc1	$f4,72($sp)
    sdc1	$f3,64($sp)
    # Line 1392
    sub.s	$f26,$f26,$f29
    # Line 1395
    lwc1	$f2,212($s0)
    # Line 1398
    ld	$v1,176($sp)
    # Line 1392
    div.s	$f26,$f26,$f27
    # Line 1395
    sdc1	$f2,56($sp)
    # Line 1394
    lwc1	$f2,204($s0)
    # Line 1391
    lwc1	$f0,1948($s0)
    sdc1	$f30,256($sp)
    lwc1	$f30,1952($s0)
    # Line 1395
    lwc1	$f1,208($s0)
    # Line 1394
    sdc1	$f2,32($sp)
    # Line 1391
    mtc1	$a6,$f31
    # Line 1395
    sdc1	$f1,48($sp)
    # Line 1391
    sub.s	$f30,$f30,$f0
    # Line 1394
    lwc1	$f1,200($s0)
    lwc1	$f0,192($s0)
    # Line 1391
    cvt.s.w	$f31,$f31
    # Line 1394
    sdc1	$f1,24($sp)
    # Line 1398
    slt	$v1,$a1,$v1
    # Line 1394
    lwc1	$f1,196($s0)
    sdc1	$f0,16($sp)
    # Line 1398
    move	$s6,$a1
    # Line 1394
    sdc1	$f1,88($sp)
    # Line 1398
    beqz	$v1,.L0d9d7014
    # Line 1391
    div.s	$f30,$f30,$f31
    # Line 1398
    addiu	$v0,$a1,1
    sd	$v0,184($sp)
    sdc1	$f28,248($sp)
    sdc1	$f24,240($sp)
    sdc1	$f20,232($sp)
    sdc1	$f22,224($sp)
    sd	$ra,296($sp)
    sd	$s3,288($sp)
    sd	$s5,280($sp)
    la	$s2,sub_0d9d0000
    ld	$t9,200($sp)
    ld	$t8,208($sp)
    sd	$s1,272($sp)
    addiu	$s2,$s2,22096
    addiu	$v1,$t9,1
    sd	$v1,152($sp)
    subu	$at,$t8,$t9
    addiu	$a0,$t8,1
    slt	$t8,$t8,$t9
    sd	$a0,192($sp)
    lui	$a0,0xffff
    addiu	$at,$at,1
    sd	$at,144($sp)
    addu	$a0,$a0,$s8
    xori	$t8,$t8,0x1
    sd	$t8,168($sp)
    addiu	$a0,$a0,-4144
    addiu	$a0,$a0,68
    b	.L0d9d6c50
    sd	$a0,160($sp)
    nop
    nop
    nop
.L0d9d6c30:
    # Line 1403
    ld	$s4,144($sp)
    lw	$a6,1960($s0)
.L0d9d6c38:
    # Line 1398
    ld	$a1,176($sp)
    addiu	$s6,$s6,1
    ld	$a2,184($sp)
    addiu	$a2,$a2,1
    beq	$a1,$s6,.L0d9d6e44
    sd	$a2,184($sp)
.L0d9d6c50:
    # Line 1403
    ld	$a4,168($sp)
    # Line 1398
    ld	$a3,184($sp)
    # Line 1403
    ld	$s3,152($sp)
    # Line 1400
    mtc1	$s6,$f25
    # Line 1402
    move	$s4,$zero
    # Line 1403
    ld	$s1,200($sp)
    lui	$s5,0xffff
    # Line 1399
    ld	$ra,184($sp)
    # Line 1398
    bne	$a6,$a3,.L0d9d6e28
    # Line 1403
    addu	$s5,$s5,$s8
    # Line 1399
    beq	$a6,$s6,.L0d9d6e3c
    lwc1	$f28,1952($s0)
.L0d9d6c80:
    # Line 1400
    cvt.s.w	$f25,$f25
    lwc1	$f24,1948($s0)
    madd.s	$f24,$f24,$f25,$f30
.L0d9d6c8c:
    # Line 1403
    beqz	$a4,.L0d9d6c38
    ld	$a5,160($sp)
    addiu	$s5,$s5,-4144
    b	.L0d9d6d04
    sd	$a5,216($sp)
.L0d9d6ca0:
    # Line 1423
    move	$t9,$s2
.L0d9d6ca4:
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
.L0d9d6cb8:
    # Line 1425
    move	$t9,$s2
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$s5
    # Line 1430
    lw	$t9,6072($s0)
.L0d9d6cd4:
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1403
    ld	$ra,192($sp)
    # Line 1431
    addiu	$s5,$s5,68
    # Line 1403
    addiu	$s1,$s1,1
    # Line 1431
    ld	$at,216($sp)
    # Line 1403
    addiu	$s3,$s3,1
    # Line 1431
    addiu	$s4,$s4,1
    addiu	$at,$at,68
    # Line 1403
    beq	$ra,$s1,.L0d9d6c30
    # Line 1431
    sd	$at,216($sp)
.L0d9d6d04:
    # Line 1403
    lw	$a0,1976($s0)
    # Line 1405
    mtc1	$s3,$f23
    # Line 1404
    lwc1	$f20,1964($s0)
    # Line 1403
    bne	$a0,$s1,.L0d9d6dbc
    # Line 1404
    mtc1	$s1,$f21
    beq	$a0,$s3,.L0d9d6dc8
    lwc1	$f20,1968($s0)
.L0d9d6d20:
    # Line 1405
    cvt.s.w	$f23,$f23
    lwc1	$f22,1964($s0)
    madd.s	$f22,$f22,$f23,$f26
    # Line 1407
    lw	$t9,6072($s0)
.L0d9d6d30:
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    ld	$ra,208($sp)
    beq	$ra,$s1,.L0d9d6d88
    slti	$at,$s4,1023
    beqz	$at,.L0d9d6e0c
    # Line 1416
    move	$t9,$s2
    # Line 1407
    beq	$s7,$s6,.L0d9d6d74
    # Line 1413
    move	$t9,$s2
    # Line 1411
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,25344
    move	$a0,$s0
    bal __glEvalMesh1Point
    ld	$a1,216($sp)
    b	.L0d9d6d8c
    # Line 1416
    slti	$ra,$s4,1024
.L0d9d6d74:
    # Line 1413
    mov.s	$f13,$f24
    move	$a0,$s0
    mov.s	$f14,$f22
    bal __glDoEvalCoord1
    ld	$a3,216($sp)
.L0d9d6d88:
    # Line 1416
    slti	$ra,$s4,1024
.L0d9d6d8c:
    beqz	$ra,.L0d9d6dd4
    # Line 1420
    ld	$at,200($sp)
    beq	$s7,$s6,.L0d9d6ca4
    # Line 1423
    move	$t9,$s2
    # Line 1420
    beq	$at,$s1,.L0d9d6ca0
    # Line 1421
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,25344
    move	$a0,$s0
    bal __glEvalMesh1Point
    move	$a1,$s5
    b	.L0d9d6cb8
    nop
.L0d9d6dbc:
    # Line 1404
    cvt.s.w	$f21,$f21
    bne	$a0,$s3,.L0d9d6d20
    madd.s	$f20,$f20,$f21,$f26
.L0d9d6dc8:
    # Line 1405
    lwc1	$f22,1968($s0)
    b	.L0d9d6d30
    # Line 1407
    lw	$t9,6072($s0)
.L0d9d6dd4:
    # Line 1427
    move	$t9,$s2
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
    # Line 1428
    move	$t9,$s2
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
    b	.L0d9d6cd4
    # Line 1430
    lw	$t9,6072($s0)
.L0d9d6e0c:
    # Line 1416
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f22
    bal __glDoEvalCoord1
    move	$a3,$zero
    b	.L0d9d6d8c
    slti	$ra,$s4,1024
.L0d9d6e28:
    # Line 1399
    mtc1	$ra,$f29
    cvt.s.w	$f29,$f29
    lwc1	$f28,1948($s0)
    bne	$a6,$s6,.L0d9d6c80
    madd.s	$f28,$f28,$f29,$f30
.L0d9d6e3c:
    # Line 1400
    b	.L0d9d6c8c
    lwc1	$f24,1952($s0)
.L0d9d6e44:
    # Line 1398
    ld	$s6,176($sp)
.L0d9d6e48:
    # Line 1438
    bne	$a6,$s6,.L0d9d6e58
    addiu	$s4,$s4,-1
    # Line 1439
    b	.L0d9d6e68
    lwc1	$f20,1952($s0)
.L0d9d6e58:
    mtc1	$s6,$f21
    cvt.s.w	$f21,$f21
    lwc1	$f20,1948($s0)
    madd.s	$f20,$f20,$f21,$f30
.L0d9d6e68:
    # Line 1440
    lw	$t9,6072($s0)
    lw	$t9,28($t9)
    jal	sub_0d9d0000
    li	$a0,3
    # Line 1441
    ld	$ra,168($sp)
    beqz	$ra,.L0d9d6f3c
    ld	$s1,208($sp)
    ld	$s6,200($sp)
    la	$s3,sub_0d9d0000
    addiu	$s3,$s3,25344
    addiu	$s6,$s6,-1
    sll	$t8,$s4,0x4
    lui	$s5,0xffff
    addu	$s5,$s5,$s8
    addu	$t8,$t8,$s4
    sll	$t8,$t8,0x2
    addiu	$s5,$s5,-4144
    b	.L0d9d6ee4
    addu	$s5,$s5,$t8
    nop
    nop
    nop
.L0d9d6ec0:
    # Line 1447
    move	$t9,$s2
.L0d9d6ec4:
    move	$a0,$s0
    mov.s	$f13,$f20
    bal __glDoEvalCoord1
    move	$a3,$zero
.L0d9d6ed4:
    # Line 1441
    addiu	$s1,$s1,-1
    # Line 1450
    addiu	$s5,$s5,-68
    # Line 1441
    beq	$s6,$s1,.L0d9d6f3c
    # Line 1450
    addiu	$s4,$s4,-1
.L0d9d6ee4:
    # Line 1441
    lw	$t8,1976($s0)
    # Line 1442
    lwc1	$f14,1964($s0)
    # Line 1441
    bne	$t8,$s1,.L0d9d6f10
    # Line 1442
    mtc1	$s1,$f15
    # Line 1444
    bgez	$s4,.L0d9d6f1c
    # Line 1442
    lwc1	$f14,1968($s0)
    b	.L0d9d6ec4
    # Line 1447
    move	$t9,$s2
    nop
    nop
    nop
.L0d9d6f10:
    # Line 1442
    cvt.s.w	$f15,$f15
    # Line 1444
    bltz	$s4,.L0d9d6ec0
    # Line 1442
    madd.s	$f14,$f14,$f15,$f26
.L0d9d6f1c:
    # Line 1444
    slti	$t9,$s4,1024
    beqz	$t9,.L0d9d6ec0
    # Line 1445
    move	$t9,$s3
    move	$a0,$s0
    bal __glEvalMesh1Point
    move	$a1,$s5
    b	.L0d9d6ed4
    nop
.L0d9d6f3c:
    ld	$s6,320($sp)
    ld	$s4,312($sp)
    ld	$s2,304($sp)
    ld	$s3,288($sp)
    ld	$s5,280($sp)
    ld	$s1,272($sp)
    ldc1	$f26,264($sp)
    ldc1	$f30,256($sp)
    # Line 1452
    lw	$t9,6072($s0)
    ldc1	$f28,248($sp)
    lw	$t9,44($t9)
    ldc1	$f24,240($sp)
    ldc1	$f20,232($sp)
    jalr	$t9
    ldc1	$f22,224($sp)
    # Line 1457
    ld	$gp,136($sp)
    ld	$s7,112($sp)
    ld	$at,128($sp)
    # Line 1454
    ldc1	$f16,16($sp)
    ldc1	$f17,88($sp)
    ldc1	$f18,24($sp)
    ldc1	$f19,32($sp)
    # Line 1455
    ldc1	$f21,48($sp)
    ldc1	$f23,56($sp)
    ldc1	$f25,64($sp)
    ldc1	$f27,72($sp)
    # Line 1456
    ldc1	$f29,80($sp)
    ldc1	$f31,40($sp)
    ldc1	$f1,104($sp)
    ldc1	$f0,96($sp)
    swc1	$f1,236($s0)
    swc1	$f0,232($s0)
    swc1	$f31,228($s0)
    swc1	$f29,224($s0)
    # Line 1455
    swc1	$f27,220($s0)
    swc1	$f25,216($s0)
    swc1	$f23,212($s0)
    swc1	$f21,208($s0)
    # Line 1454
    swc1	$f19,204($s0)
    swc1	$f18,200($s0)
    swc1	$f17,196($s0)
    ld	$ra,296($sp)
    swc1	$f16,192($s0)
    # Line 1457
    ld	$s0,120($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d9d6ff8:
    ld	$gp,136($sp)
    ld	$s0,120($sp)
    ld	$v0,128($sp)
    ld	$s7,112($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L0d9d7014:
    sdc1	$f28,248($sp)
    sdc1	$f24,240($sp)
    sdc1	$f20,232($sp)
    sdc1	$f22,224($sp)
    sd	$ra,296($sp)
    sd	$s3,288($sp)
    sd	$s5,280($sp)
    # Line 1398
    ld	$t8,200($sp)
    ld	$s4,208($sp)
    sd	$s1,272($sp)
    la	$s2,sub_0d9d0000
    slt	$s4,$s4,$t8
    xori	$s4,$s4,0x1
    sd	$s4,168($sp)
    addiu	$s2,$s2,22096
    b	.L0d9d6e48
    lw	$s4,8($sp)
.end __glEvalMesh2Line

# Function: NurbsKnots1Common
# Declared: Line 1469 (Source lines: 1470-1502)
# Address: 0x0d9d7060 - 0x0d9d7144 (Size: 228 bytes, Frame: 16)
.ent NurbsKnots1Common
NurbsKnots1Common:
    # Line 1474
    lw	$at,4120($zero)
    li	$v1,1
    # Line 1470
    move	$v0,$a1
    # Line 1474
    lw	$a6,4112($zero)
    # Line 1470
    addiu	$sp,$sp,-16
    move	$a5,$a0
    # Line 1474
    beq	$at,$v1,.L0d9d712c
    sd	$ra,8($sp)
    # Line 1476
    addiu	$a1,$a5,-3472
    sltiu	$a2,$a1,9
    beqz	$a2,.L0d9d7118
    # Line 1489
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1493
    bltz	$v0,.L0d9d70a8
    # Line 1494
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1493
    lw	$a1,3768($a6)
    slt	$a1,$v0,$a1
    bnez	$a1,.L0d9d70c8
    # Line 1494
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9d70a8:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 1495
    move	$v0,$zero
    # Line 1490
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d70c0:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d70c8:
    # Line 1498
    sll	$a1,$a5,0x2
    subu	$a3,$a1,$a5
    lui	$a2,0xffff
    sll	$a3,$a3,0x3
    ori	$a2,$a2,0x28dc
    addu	$a3,$a6,$a3
    addu	$a2,$a2,$a3
    sw	$v0,0($a2)
    # Line 1502
    lw	$t9,8($a6)
    addu	$a1,$a6,$a1
    sd	$a1,0($sp)
    sll	$a2,$v0,0x3
    move	$a0,$a6
    jalr	$t9
    lw	$a1,14996($a1)
    ld	$ra,8($sp)
    ld	$a5,0($sp)
    # Line 1490
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1502
    sw	$v0,14996($a5)
.L0d9d7118:
    # Line 1489
    jalr	$t9
    li	$a0,1280
    ld	$ra,8($sp)
    b	.L0d9d70c0
    # Line 1490
    move	$v0,$zero
.L0d9d712c:
    # Line 1474
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    b	.L0d9d70c0
    move	$v0,$zero
.end NurbsKnots1Common

# Function: NurbsKnots2Common
# Declared: Line 1508 (Source lines: 1509-1546)
# Address: 0x0d9d7150 - 0x0d9d7258 (Size: 264 bytes, Frame: 16)
.ent NurbsKnots2Common
NurbsKnots2Common:
    # Line 1513
    lw	$at,4120($zero)
    li	$v1,1
    lw	$v0,4112($zero)
    # Line 1509
    addiu	$sp,$sp,-16
    # Line 1515
    addiu	$a6,$a0,-3504
    sltiu	$a7,$a6,9
    # Line 1513
    beq	$at,$v1,.L0d9d7240
    sd	$ra,0($sp)
    # Line 1515
    beqz	$a7,.L0d9d7228
    # Line 1528
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1532
    bltz	$a1,.L0d9d7210
    # Line 1533
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1532
    lw	$a6,3768($v0)
    slt	$a6,$a1,$a6
    beqz	$a6,.L0d9d7210
    # Line 1533
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1534
    lui	$a7,0xfffe
    sll	$a6,$a0,0x2
    addu	$a5,$a6,$a0
    addu	$a6,$a6,$v0
    sll	$a5,$a5,0x3
    sd	$s0,8($sp)
    # Line 1540
    addiu	$s0,$a6,14940
    # Line 1534
    addu	$a5,$a5,$v0
    beqz	$a2,.L0d9d71f8
    addu	$a5,$a5,$a7
    # Line 1540
    lw	$t0,19392($a5)
    # Line 1539
    move	$a7,$a1
    sw	$a1,19396($a5)
.L0d9d71c4:
    # Line 1546
    lw	$t9,8($v0)
    move	$a0,$v0
    lw	$a1,0($s0)
    addu	$a2,$t0,$a7
    jal	__glSetError
    sll	$a2,$a2,0x3
    ld	$ra,0($sp)
    sw	$v0,0($s0)
    move	$a0,$v0
    ld	$s0,8($sp)
.L0d9d71ec:
    # Line 1529
    move	$v0,$a0
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d71f8:
    # Line 1542
    move	$t0,$a1
    # Line 1543
    lw	$a7,19396($a5)
    addiu	$s0,$a6,14904
    b	.L0d9d71c4
    # Line 1542
    sw	$a1,19392($a5)
    # Line 1533
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d7210:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 1534
    move	$v0,$zero
    # Line 1529
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d7228:
    # Line 1528
    jalr	$t9
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 1529
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d7240:
    # Line 1513
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    b	.L0d9d71ec
    move	$a0,$zero
.end NurbsKnots2Common

# Function: __glim_NurbsKnots1dSGIX
# Declared: Line 1554 (Source lines: 1557-1568)
# Address: 0x0d9d7260 - 0x0d9d7324 (Size: 196 bytes, Frame: 48)
.globl __glim_NurbsKnots1dSGIX
.ent __glim_NurbsKnots1dSGIX
__glim_NurbsKnots1dSGIX:
    # Line 1557
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$ra,0x8
    addiu	$ra,$ra,-25812
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # Line 1560
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 1557
    sd	$s0,8($sp)
    # Line 1560
    addiu	$t9,$t9,28768
    # Line 1557
    move	$s0,$a2
    sd	$a1,0($sp)
    # Line 1560
    move	$a1,$a2
    # Line 1557
    sd	$s1,16($sp)
    # Line 1560
    bal __glEvalMesh2Line
    # Line 1557
    move	$s1,$a3
    ld	$a5,0($sp)
    ld	$ra,24($sp)
    # Line 1568
    ld	$gp,32($sp)
    # Line 1560
    beqz	$v0,.L0d9d7314
    move	$a3,$v0
    # Line 1564
    blez	$s0,.L0d9d7314
    sll	$a5,$a5,0x3
    andi	$a6,$s0,0x1
    move	$a4,$zero
    beqz	$a6,.L0d9d72dc
    sra	$a7,$s0,0x1
    # Line 1565
    ldc1	$f0,0($s1)
    addiu	$a3,$v0,8
    # Line 1564
    li	$a4,1
    # Line 1566
    addu	$s1,$a5,$s1
    # Line 1565
    sdc1	$f0,0($v0)
.L0d9d72dc:
    beqz	$a7,.L0d9d7314
    move	$a1,$s1
    nop
    nop
    nop
.L0d9d72f0:
    ldc1	$f2,0($a1)
    # Line 1566
    addu	$a1,$a5,$a1
    # Line 1565
    sdc1	$f2,0($a3)
    # Line 1564
    addiu	$a4,$a4,2
    # Line 1565
    ldc1	$f1,0($a1)
    addiu	$a3,$a3,16
    # Line 1566
    addu	$a1,$a5,$a1
    # Line 1564
    bne	$s0,$a4,.L0d9d72f0
    # Line 1565
    sdc1	$f1,-8($a3)
.L0d9d7314:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 1568
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_NurbsKnots1dSGIX

# Function: __glim_NurbsKnots1fSGIX
# Declared: Line 1570 (Source lines: 1573-1584)
# Address: 0x0d9d7330 - 0x0d9d741c (Size: 236 bytes, Frame: 48)
.globl __glim_NurbsKnots1fSGIX
.ent __glim_NurbsKnots1fSGIX
__glim_NurbsKnots1fSGIX:
    # Line 1573
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    lui	$ra,0x8
    addiu	$ra,$ra,-26020
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # Line 1576
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 1573
    sd	$s0,8($sp)
    # Line 1576
    addiu	$t9,$t9,28768
    # Line 1573
    move	$s0,$a2
    sd	$a1,0($sp)
    # Line 1576
    move	$a1,$a2
    # Line 1573
    sd	$s1,24($sp)
    # Line 1576
    bal __glEvalMesh2Line
    # Line 1573
    move	$s1,$a3
    ld	$ra,16($sp)
    # Line 1584
    ld	$gp,32($sp)
    # Line 1576
    beqz	$v0,.L0d9d740c
    move	$a4,$v0
    # Line 1580
    blez	$s0,.L0d9d740c
    andi	$a1,$s0,0x3
    sra	$a6,$s0,0x2
    ld	$a5,0($sp)
    move	$a3,$zero
    beqz	$a1,.L0d9d73b8
    sll	$a5,$a5,0x2
.L0d9d7398:
    # Line 1581
    lwc1	$f0,0($s1)
    addiu	$a1,$a1,-1
    # Line 1580
    addiu	$a3,$a3,1
    # Line 1581
    addiu	$a4,$a4,8
    cvt.d.s	$f0,$f0
    # Line 1582
    addu	$s1,$a5,$s1
    bnez	$a1,.L0d9d7398
    # Line 1581
    sdc1	$f0,-8($a4)
.L0d9d73b8:
    beqz	$a6,.L0d9d740c
    move	$a1,$s1
.L0d9d73c0:
    lwc1	$f4,0($a1)
    cvt.d.s	$f4,$f4
    # Line 1582
    addu	$a1,$a5,$a1
    # Line 1581
    sdc1	$f4,0($a4)
    lwc1	$f3,0($a1)
    cvt.d.s	$f3,$f3
    # Line 1582
    addu	$a1,$a5,$a1
    # Line 1581
    sdc1	$f3,8($a4)
    lwc1	$f2,0($a1)
    cvt.d.s	$f2,$f2
    # Line 1582
    addu	$a1,$a5,$a1
    # Line 1581
    sdc1	$f2,16($a4)
    lwc1	$f1,0($a1)
    # Line 1580
    addiu	$a3,$a3,4
    # Line 1581
    addiu	$a4,$a4,32
    cvt.d.s	$f1,$f1
    # Line 1582
    addu	$a1,$a5,$a1
    # Line 1580
    bne	$s0,$a3,.L0d9d73c0
    # Line 1581
    sdc1	$f1,-8($a4)
.L0d9d740c:
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 1584
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_NurbsKnots1fSGIX

# Function: __glim_NurbsKnots1iSGIX
# Declared: Line 1586 (Source lines: 1589-1600)
# Address: 0x0d9d7420 - 0x0d9d752c (Size: 268 bytes, Frame: 48)
.globl __glim_NurbsKnots1iSGIX
.ent __glim_NurbsKnots1iSGIX
__glim_NurbsKnots1iSGIX:
    # Line 1589
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    lui	$ra,0x8
    addiu	$ra,$ra,-26260
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # Line 1592
    # lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 1589
    sd	$s0,8($sp)
    # Line 1592
    addiu	$t9,$t9,28768
    # Line 1589
    move	$s0,$a2
    sd	$a1,0($sp)
    # Line 1592
    move	$a1,$a2
    # Line 1589
    sd	$s1,24($sp)
    # Line 1592
    bal __glEvalMesh2Line
    # Line 1589
    move	$s1,$a3
    ld	$ra,16($sp)
    # Line 1600
    ld	$gp,32($sp)
    # Line 1592
    beqz	$v0,.L0d9d751c
    move	$a4,$v0
    # Line 1596
    blez	$s0,.L0d9d751c
    andi	$a1,$s0,0x3
    sra	$a7,$s0,0x2
    ld	$a5,0($sp)
    move	$a3,$zero
    beqz	$a1,.L0d9d74ac
    sll	$a5,$a5,0x2
.L0d9d7488:
    # Line 1597
    lw	$a6,0($s1)
    mtc1	$a6,$f0
    addiu	$a1,$a1,-1
    # Line 1596
    addiu	$a3,$a3,1
    # Line 1597
    addiu	$a4,$a4,8
    cvt.d.w	$f0,$f0
    # Line 1598
    addu	$s1,$a5,$s1
    bnez	$a1,.L0d9d7488
    # Line 1597
    sdc1	$f0,-8($a4)
.L0d9d74ac:
    beqz	$a7,.L0d9d751c
    move	$a1,$s1
    nop
    nop
    nop
.L0d9d74c0:
    lw	$a6,0($a1)
    mtc1	$a6,$f4
    cvt.d.w	$f4,$f4
    # Line 1598
    addu	$a1,$a5,$a1
    # Line 1597
    sdc1	$f4,0($a4)
    lw	$a2,0($a1)
    mtc1	$a2,$f3
    cvt.d.w	$f3,$f3
    # Line 1598
    addu	$a1,$a5,$a1
    # Line 1597
    sdc1	$f3,8($a4)
    lw	$a2,0($a1)
    mtc1	$a2,$f2
    cvt.d.w	$f2,$f2
    # Line 1598
    addu	$a1,$a5,$a1
    # Line 1597
    sdc1	$f2,16($a4)
    lw	$a2,0($a1)
    mtc1	$a2,$f1
    # Line 1596
    addiu	$a3,$a3,4
    # Line 1597
    addiu	$a4,$a4,32
    cvt.d.w	$f1,$f1
    # Line 1598
    addu	$a1,$a5,$a1
    # Line 1596
    bne	$s0,$a3,.L0d9d74c0
    # Line 1597
    sdc1	$f1,-8($a4)
.L0d9d751c:
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 1600
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_NurbsKnots1iSGIX

# Function: __glim_NurbsKnots2dSGIX
# Declared: Line 1602 (Source lines: 1606-1627)
# Address: 0x0d9d7530 - 0x0d9d7694 (Size: 356 bytes, Frame: 208)
.globl __glim_NurbsKnots2dSGIX
.ent __glim_NurbsKnots2dSGIX
__glim_NurbsKnots2dSGIX:
    # Line 1606
    addiu	$sp,$sp,-80
    sd	$a3,0($sp)
    sd	$s2,64($sp)
    sd	$ra,56($sp)
    lui	$ra,0x8
    sd	$s3,48($sp)
    addiu	$ra,$ra,-26532
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32708($gp) # &sub_0d9d0000
    move	$s3,$a6
    move	$s2,$a5
    sd	$s1,40($sp)
    move	$s1,$a4
    sd	$s0,24($sp)
    addiu	$t9,$t9,29008
    move	$s0,$a2
    sd	$a1,8($sp)
    # Line 1612
    move	$a1,$a2
    # Line 1606
    sd	$a0,16($sp)
    # Line 1612
    bal __glEvalMesh2Line
    move	$a2,$zero
    ld	$t0,8($sp)
    beqz	$v0,.L0d9d7674
    move	$a6,$v0
    # Line 1615
    blez	$s0,.L0d9d75f4
    sll	$t0,$t0,0x3
    andi	$t1,$s0,0x1
    move	$a5,$zero
    beqz	$t1,.L0d9d75c0
    sra	$t2,$s0,0x1
    # Line 1616
    ldc1	$f0,0($s2)
    addiu	$a6,$v0,8
    # Line 1615
    li	$a5,1
    # Line 1617
    addu	$s2,$t0,$s2
    # Line 1616
    sdc1	$f0,0($v0)
.L0d9d75c0:
    beqz	$t2,.L0d9d75f4
    move	$a7,$s2
    nop
    nop
.L0d9d75d0:
    ldc1	$f2,0($a7)
    # Line 1617
    addu	$a7,$t0,$a7
    # Line 1616
    sdc1	$f2,0($a6)
    # Line 1615
    addiu	$a5,$a5,2
    # Line 1616
    ldc1	$f1,0($a7)
    addiu	$a6,$a6,16
    # Line 1617
    addu	$a7,$t0,$a7
    # Line 1615
    bne	$s0,$a5,.L0d9d75d0
    # Line 1616
    sdc1	$f1,-8($a6)
.L0d9d75f4:
    # Line 1620
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,29008
    move	$a1,$s1
    ld	$a0,16($sp)
    bal __glEvalMesh2Line
    li	$a2,1
    ld	$a6,0($sp)
    beqz	$v0,.L0d9d7674
    move	$a3,$v0
    # Line 1623
    blez	$s1,.L0d9d7674
    sll	$a6,$a6,0x3
    andi	$a7,$s1,0x1
    move	$a5,$zero
    beqz	$a7,.L0d9d7644
    sra	$t0,$s1,0x1
    # Line 1624
    ldc1	$f3,0($s3)
    addiu	$a3,$v0,8
    # Line 1623
    li	$a5,1
    # Line 1625
    addu	$s3,$a6,$s3
    # Line 1624
    sdc1	$f3,0($v0)
.L0d9d7644:
    beqz	$t0,.L0d9d7674
    move	$a0,$s3
    nop
.L0d9d7650:
    ldc1	$f5,0($a0)
    # Line 1625
    addu	$a0,$a6,$a0
    # Line 1624
    sdc1	$f5,0($a3)
    # Line 1623
    addiu	$a5,$a5,2
    # Line 1624
    ldc1	$f4,0($a0)
    addiu	$a3,$a3,16
    # Line 1625
    addu	$a0,$a6,$a0
    # Line 1623
    bne	$s1,$a5,.L0d9d7650
    # Line 1624
    sdc1	$f4,-8($a3)
.L0d9d7674:
    # Line 1627
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NurbsKnots2dSGIX

# Function: __glim_NurbsKnots2fSGIX
# Declared: Line 1629 (Source lines: 1633-1654)
# Address: 0x0d9d76a0 - 0x0d9d787c (Size: 476 bytes, Frame: 208)
.globl __glim_NurbsKnots2fSGIX
.ent __glim_NurbsKnots2fSGIX
__glim_NurbsKnots2fSGIX:
    # Line 1633
    addiu	$sp,$sp,-80
    sd	$a3,0($sp)
    sd	$s2,64($sp)
    sd	$ra,32($sp)
    lui	$ra,0x8
    sd	$s3,40($sp)
    addiu	$ra,$ra,-26900
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32708($gp) # &sub_0d9d0000
    move	$s3,$a6
    move	$s2,$a5
    sd	$s1,24($sp)
    move	$s1,$a4
    sd	$s0,56($sp)
    addiu	$t9,$t9,29008
    move	$s0,$a2
    sd	$a1,8($sp)
    # Line 1639
    move	$a1,$a2
    # Line 1633
    sd	$a0,16($sp)
    # Line 1639
    bal __glEvalMesh2Line
    move	$a2,$zero
    ld	$t0,8($sp)
    beqz	$v0,.L0d9d785c
    move	$a1,$v0
    # Line 1642
    blez	$s0,.L0d9d77a0
    # Line 1647
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 1642
    sll	$t0,$t0,0x2
    andi	$a4,$s0,0x3
    move	$a7,$zero
    beqz	$a4,.L0d9d7740
    sra	$t1,$s0,0x2
.L0d9d7720:
    # Line 1643
    lwc1	$f0,0($s2)
    addiu	$a4,$a4,-1
    # Line 1642
    addiu	$a7,$a7,1
    # Line 1643
    addiu	$a1,$a1,8
    cvt.d.s	$f0,$f0
    # Line 1644
    addu	$s2,$t0,$s2
    bnez	$a4,.L0d9d7720
    # Line 1643
    sdc1	$f0,-8($a1)
.L0d9d7740:
    move	$a5,$a1
    beqz	$t1,.L0d9d779c
    move	$a6,$s2
    nop
.L0d9d7750:
    lwc1	$f4,0($a6)
    cvt.d.s	$f4,$f4
    # Line 1644
    addu	$a6,$t0,$a6
    # Line 1643
    sdc1	$f4,0($a5)
    lwc1	$f3,0($a6)
    cvt.d.s	$f3,$f3
    # Line 1644
    addu	$a6,$t0,$a6
    # Line 1643
    sdc1	$f3,8($a5)
    lwc1	$f2,0($a6)
    cvt.d.s	$f2,$f2
    # Line 1644
    addu	$a6,$t0,$a6
    # Line 1643
    sdc1	$f2,16($a5)
    lwc1	$f1,0($a6)
    # Line 1642
    addiu	$a7,$a7,4
    # Line 1643
    addiu	$a5,$a5,32
    cvt.d.s	$f1,$f1
    # Line 1644
    addu	$a6,$t0,$a6
    # Line 1642
    bne	$s0,$a7,.L0d9d7750
    # Line 1643
    sdc1	$f1,-8($a5)
.L0d9d779c:
    # Line 1647
    # lw $t9, -32708($gp) # &sub_0d9d0000
.L0d9d77a0:
    addiu	$t9,$t9,29008
    move	$a1,$s1
    ld	$a0,16($sp)
    bal __glEvalMesh2Line
    li	$a2,1
    ld	$a5,0($sp)
    beqz	$v0,.L0d9d785c
    move	$a0,$v0
    # Line 1650
    blez	$s1,.L0d9d7860
    # Line 1654
    ld	$gp,48($sp)
    # Line 1650
    sll	$a5,$a5,0x2
    andi	$a6,$s1,0x3
    beqz	$a6,.L0d9d77f8
    move	$a7,$zero
.L0d9d77d8:
    # Line 1651
    lwc1	$f5,0($s3)
    addiu	$a6,$a6,-1
    # Line 1650
    addiu	$a7,$a7,1
    # Line 1651
    addiu	$a0,$a0,8
    cvt.d.s	$f5,$f5
    # Line 1652
    addu	$s3,$a5,$s3
    bnez	$a6,.L0d9d77d8
    # Line 1651
    sdc1	$f5,-8($a0)
.L0d9d77f8:
    sra	$a6,$s1,0x2
    beqz	$a6,.L0d9d785c
    move	$a3,$s3
    nop
    nop
    nop
.L0d9d7810:
    lwc1	$f9,0($a3)
    cvt.d.s	$f9,$f9
    # Line 1652
    addu	$a3,$a5,$a3
    # Line 1651
    sdc1	$f9,0($a0)
    lwc1	$f8,0($a3)
    cvt.d.s	$f8,$f8
    # Line 1652
    addu	$a3,$a5,$a3
    # Line 1651
    sdc1	$f8,8($a0)
    lwc1	$f7,0($a3)
    cvt.d.s	$f7,$f7
    # Line 1652
    addu	$a3,$a5,$a3
    # Line 1651
    sdc1	$f7,16($a0)
    lwc1	$f6,0($a3)
    # Line 1650
    addiu	$a7,$a7,4
    # Line 1651
    addiu	$a0,$a0,32
    cvt.d.s	$f6,$f6
    # Line 1652
    addu	$a3,$a5,$a3
    # Line 1650
    bne	$s1,$a7,.L0d9d7810
    # Line 1651
    sdc1	$f6,-8($a0)
.L0d9d785c:
    # Line 1654
    ld	$gp,48($sp)
.L0d9d7860:
    ld	$s0,56($sp)
    ld	$ra,32($sp)
    ld	$s1,24($sp)
    ld	$s2,64($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NurbsKnots2fSGIX

# Function: __glim_NurbsKnots2iSGIX
# Declared: Line 1656 (Source lines: 1660-1681)
# Address: 0x0d9d7880 - 0x0d9d7a7c (Size: 508 bytes, Frame: 208)
.globl __glim_NurbsKnots2iSGIX
.ent __glim_NurbsKnots2iSGIX
__glim_NurbsKnots2iSGIX:
    # Line 1660
    addiu	$sp,$sp,-80
    sd	$a3,0($sp)
    sd	$s2,64($sp)
    sd	$ra,32($sp)
    lui	$ra,0x8
    sd	$s3,40($sp)
    addiu	$ra,$ra,-27380
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32708($gp) # &sub_0d9d0000
    move	$s3,$a6
    move	$s2,$a5
    sd	$s1,24($sp)
    move	$s1,$a4
    sd	$s0,56($sp)
    addiu	$t9,$t9,29008
    move	$s0,$a2
    sd	$a1,8($sp)
    # Line 1666
    move	$a1,$a2
    # Line 1660
    sd	$a0,16($sp)
    # Line 1666
    bal __glEvalMesh2Line
    move	$a2,$zero
    ld	$t0,8($sp)
    beqz	$v0,.L0d9d7a5c
    move	$a1,$v0
    # Line 1669
    blez	$s0,.L0d9d7990
    # Line 1674
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    # Line 1669
    sll	$t0,$t0,0x2
    andi	$a4,$s0,0x3
    move	$a7,$zero
    beqz	$a4,.L0d9d7924
    sra	$t2,$s0,0x2
.L0d9d7900:
    # Line 1670
    lw	$t1,0($s2)
    mtc1	$t1,$f0
    addiu	$a4,$a4,-1
    # Line 1669
    addiu	$a7,$a7,1
    # Line 1670
    addiu	$a1,$a1,8
    cvt.d.w	$f0,$f0
    # Line 1671
    addu	$s2,$t0,$s2
    bnez	$a4,.L0d9d7900
    # Line 1670
    sdc1	$f0,-8($a1)
.L0d9d7924:
    move	$a5,$a1
    beqz	$t2,.L0d9d798c
    move	$a6,$s2
.L0d9d7930:
    lw	$t2,0($a6)
    mtc1	$t2,$f4
    cvt.d.w	$f4,$f4
    # Line 1671
    addu	$a6,$t0,$a6
    # Line 1670
    sdc1	$f4,0($a5)
    lw	$t1,0($a6)
    mtc1	$t1,$f3
    cvt.d.w	$f3,$f3
    # Line 1671
    addu	$a6,$t0,$a6
    # Line 1670
    sdc1	$f3,8($a5)
    lw	$t1,0($a6)
    mtc1	$t1,$f2
    cvt.d.w	$f2,$f2
    # Line 1671
    addu	$a6,$t0,$a6
    # Line 1670
    sdc1	$f2,16($a5)
    lw	$t1,0($a6)
    mtc1	$t1,$f1
    # Line 1669
    addiu	$a7,$a7,4
    # Line 1670
    addiu	$a5,$a5,32
    cvt.d.w	$f1,$f1
    # Line 1671
    addu	$a6,$t0,$a6
    # Line 1669
    bne	$s0,$a7,.L0d9d7930
    # Line 1670
    sdc1	$f1,-8($a5)
.L0d9d798c:
    # Line 1674
    # lw $t9, -32708($gp) # &sub_0d9d0000
.L0d9d7990:
    addiu	$t9,$t9,29008
    move	$a1,$s1
    ld	$a0,16($sp)
    bal __glEvalMesh2Line
    li	$a2,1
    ld	$a5,0($sp)
    beqz	$v0,.L0d9d7a5c
    move	$a0,$v0
    # Line 1677
    blez	$s1,.L0d9d7a60
    # Line 1681
    ld	$gp,48($sp)
    # Line 1677
    sll	$a5,$a5,0x2
    andi	$a6,$s1,0x3
    move	$a7,$zero
    beqz	$a6,.L0d9d79f0
    sra	$t1,$s1,0x2
.L0d9d79cc:
    # Line 1678
    lw	$t0,0($s3)
    mtc1	$t0,$f5
    addiu	$a6,$a6,-1
    # Line 1677
    addiu	$a7,$a7,1
    # Line 1678
    addiu	$a0,$a0,8
    cvt.d.w	$f5,$f5
    # Line 1679
    addu	$s3,$a5,$s3
    bnez	$a6,.L0d9d79cc
    # Line 1678
    sdc1	$f5,-8($a0)
.L0d9d79f0:
    beqz	$t1,.L0d9d7a5c
    move	$a3,$s3
    nop
    nop
.L0d9d7a00:
    lw	$a6,0($a3)
    mtc1	$a6,$f9
    cvt.d.w	$f9,$f9
    # Line 1679
    addu	$a3,$a5,$a3
    # Line 1678
    sdc1	$f9,0($a0)
    lw	$a4,0($a3)
    mtc1	$a4,$f8
    cvt.d.w	$f8,$f8
    # Line 1679
    addu	$a3,$a5,$a3
    # Line 1678
    sdc1	$f8,8($a0)
    lw	$a4,0($a3)
    mtc1	$a4,$f7
    cvt.d.w	$f7,$f7
    # Line 1679
    addu	$a3,$a5,$a3
    # Line 1678
    sdc1	$f7,16($a0)
    lw	$a4,0($a3)
    mtc1	$a4,$f6
    # Line 1677
    addiu	$a7,$a7,4
    # Line 1678
    addiu	$a0,$a0,32
    cvt.d.w	$f6,$f6
    # Line 1679
    addu	$a3,$a5,$a3
    # Line 1677
    bne	$s1,$a7,.L0d9d7a00
    # Line 1678
    sdc1	$f6,-8($a0)
.L0d9d7a5c:
    # Line 1681
    ld	$gp,48($sp)
.L0d9d7a60:
    ld	$s0,56($sp)
    ld	$ra,32($sp)
    ld	$s1,24($sp)
    ld	$s2,64($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NurbsKnots2iSGIX

.late_rodata
jtbl_0da44bc0:
    .word .L0d9d3000
    .word .L0d9d3018
    .word .L0d9d3010
    .word .L0d9d3018
    .word .L0d9d3008
    .word .L0d9d3010
    .word .L0d9d3000
    .word .L0d9d3010
    .word .L0d9d3000
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d2ff8
    .word .L0d9d3000
    .word .L0d9d3018
    .word .L0d9d3010
    .word .L0d9d3018
    .word .L0d9d3008
    .word .L0d9d3010
    .word .L0d9d3000
    .word .L0d9d3010
    .word .L0d9d3000

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

