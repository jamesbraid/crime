# Source: ../soft/so_get.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_get.c
# Total Functions: 33

.text

# Function: __glim_GetTexEnvfv
# Declared: Line 36 (Source lines: 38-56)
# Address: 0x0d9d9200 - 0x0d9d92d8 (Size: 216 bytes, Frame: 16)
.globl __glim_GetTexEnvfv
.ent __glim_GetTexEnvfv
__glim_GetTexEnvfv:
    # Line 45
    li	$a6,8705
    # Line 38
    addiu	$sp,$sp,-16
    # Line 39
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 38
    lui	$v1,0x7
    move	$a5,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,31628
    sd	$gp,0($sp)
    # Line 39
    beq	$at,$v0,.L0d9d92c4
    # Line 38
    addu	$gp,$t9,$v1
    # Line 39
    li	$a2,8960
    beq	$a0,$a2,.L0d9d9250
    # Line 45
    li	$a3,8704
    # Line 42
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d9270
    ld	$ra,8($sp)
.L0d9d9250:
    # Line 45
    beq	$a1,$a3,.L0d9d9298
    nop
    beq	$a1,$a6,.L0d9d927c
    # Line 50
    nop	# was lw $t9, -25816($gp) # &__glUnScaleColorf
    # Line 53
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d9270:
    # Line 56
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d927c:
    # Line 50
    lw	$a2,2484($a4)
    move	$a0,$a4
    move	$a1,$a5
    jalr	$t9
    addiu	$a2,$a2,4
    b	.L0d9d9270
    ld	$ra,8($sp)
.L0d9d9298:
    # Line 47
    lw	$a3,2484($a4)
    lw	$a3,0($a3)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f0
    cvt.s.l	$f0,$f0
    move	$ra,$ra
    # Line 56
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 47
    swc1	$f0,0($a5)
.L0d9d92c4:
    # Line 39
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d9270
    ld	$ra,8($sp)
.end __glim_GetTexEnvfv

# Function: __glim_GetTexEnviv
# Declared: Line 58 (Source lines: 60-78)
# Address: 0x0d9d92e0 - 0x0d9d93a8 (Size: 200 bytes, Frame: 16)
.globl __glim_GetTexEnviv
.ent __glim_GetTexEnviv
__glim_GetTexEnviv:
    # Line 67
    li	$a6,8705
    # Line 60
    addiu	$sp,$sp,-16
    # Line 61
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 60
    lui	$v1,0x7
    move	$a5,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,31404
    sd	$gp,0($sp)
    # Line 61
    beq	$at,$v0,.L0d9d9394
    # Line 60
    addu	$gp,$t9,$v1
    # Line 61
    li	$a2,8960
    beq	$a0,$a2,.L0d9d9330
    # Line 67
    li	$a3,8704
    # Line 64
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d934c
    ld	$ra,8($sp)
.L0d9d9330:
    # Line 67
    beq	$a1,$a3,.L0d9d9378
    nop
    beq	$a1,$a6,.L0d9d9358
    # Line 75
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d934c:
    # Line 78
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d9358:
    # Line 72
    # lw $t9, -25812($gp) # &__glUnScaleColori
    lw	$a2,2484($a4)
    move	$a0,$a4
    move	$a1,$a5
    jal	__glUnScaleColori
    addiu	$a2,$a2,4
    b	.L0d9d934c
    ld	$ra,8($sp)
.L0d9d9378:
    # Line 69
    lw	$a3,2484($a4)
    # Line 78
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 69
    lw	$a3,0($a3)
    # Line 78
    addiu	$sp,$sp,16
    jr	$ra
    # Line 69
    sw	$a3,0($a5)
.L0d9d9394:
    # Line 61
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d934c
    ld	$ra,8($sp)
.end __glim_GetTexEnviv

# Function: __glim_GetTexGenfv
# Declared: Line 82 (Source lines: 84-125)
# Address: 0x0d9d93b0 - 0x0d9d94fc (Size: 332 bytes, Frame: 16)
.globl __glim_GetTexGenfv
.ent __glim_GetTexGenfv
__glim_GetTexGenfv:
    # Line 88
    li	$a7,8195
    # Line 84
    addiu	$sp,$sp,-16
    # Line 86
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 84
    lui	$v1,0x7
    # Line 105
    li	$t2,9474
    sd	$ra,8($sp)
    # Line 84
    addiu	$v1,$v1,31196
    sd	$gp,0($sp)
    # Line 86
    beq	$at,$v0,.L0d9d94e8
    # Line 84
    addu	$gp,$t9,$v1
    # Line 88
    li	$a3,8192
    beq	$a0,$a3,.L0d9d9478
    li	$a5,8193
    beq	$a0,$a5,.L0d9d9480
    li	$a6,8194
    beq	$a0,$a6,.L0d9d9488
    nop
    beq	$a0,$a7,.L0d9d9414
    # Line 102
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d9440
    ld	$ra,8($sp)
.L0d9d9414:
    # Line 99
    addiu	$a0,$a4,2356
.L0d9d9418:
    # Line 105
    li	$t0,9472
    beq	$a1,$t0,.L0d9d9490
    li	$t1,9473
    beq	$a1,$t1,.L0d9d94b8
    ld	$ra,8($sp)
    beq	$a1,$t2,.L0d9d944c
    # Line 122
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d9440:
    # Line 125
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d944c:
    # Line 116
    lwc1	$f3,4($a0)
    swc1	$f3,0($a2)
    # Line 117
    lwc1	$f2,8($a0)
    swc1	$f2,4($a2)
    # Line 118
    lwc1	$f1,12($a0)
    swc1	$f1,8($a2)
    # Line 119
    lwc1	$f0,16($a0)
    # Line 125
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 119
    swc1	$f0,12($a2)
.L0d9d9478:
    b	.L0d9d9418
    # Line 90
    addiu	$a0,$a4,1984
.L0d9d9480:
    # Line 94
    b	.L0d9d9418
    # Line 93
    addiu	$a0,$a4,2108
.L0d9d9488:
    # Line 97
    b	.L0d9d9418
    # Line 96
    addiu	$a0,$a4,2232
.L0d9d9490:
    # Line 107
    lw	$t3,0($a0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f4
    ld	$ra,8($sp)
    cvt.s.l	$f4,$f4
    # Line 125
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 107
    swc1	$f4,0($a2)
.L0d9d94b8:
    # Line 110
    lwc1	$f8,20($a0)
    swc1	$f8,0($a2)
    # Line 111
    lwc1	$f7,24($a0)
    swc1	$f7,4($a2)
    # Line 112
    lwc1	$f6,28($a0)
    ld	$ra,8($sp)
    swc1	$f6,8($a2)
    # Line 113
    lwc1	$f5,32($a0)
    # Line 125
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 113
    swc1	$f5,12($a2)
.L0d9d94e8:
    # Line 86
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d9440
    ld	$ra,8($sp)
.end __glim_GetTexGenfv

# Function: __glim_GetTexGendv
# Declared: Line 127 (Source lines: 129-170)
# Address: 0x0d9d9500 - 0x0d9d966c (Size: 364 bytes, Frame: 16)
.globl __glim_GetTexGendv
.ent __glim_GetTexGendv
__glim_GetTexGendv:
    # Line 133
    li	$a7,8195
    # Line 129
    addiu	$sp,$sp,-16
    # Line 131
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 129
    lui	$v1,0x7
    # Line 150
    li	$t2,9474
    sd	$ra,8($sp)
    # Line 129
    addiu	$v1,$v1,30860
    sd	$gp,0($sp)
    # Line 131
    beq	$at,$v0,.L0d9d9658
    # Line 129
    addu	$gp,$t9,$v1
    # Line 133
    li	$a3,8192
    beq	$a0,$a3,.L0d9d95d8
    li	$a5,8193
    beq	$a0,$a5,.L0d9d95e0
    li	$a6,8194
    beq	$a0,$a6,.L0d9d95e8
    nop
    beq	$a0,$a7,.L0d9d9564
    # Line 147
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d9590
    ld	$ra,8($sp)
.L0d9d9564:
    # Line 144
    addiu	$a0,$a4,2356
.L0d9d9568:
    # Line 150
    li	$t0,9472
    beq	$a1,$t0,.L0d9d95f0
    li	$t1,9473
    beq	$a1,$t1,.L0d9d9618
    ld	$ra,8($sp)
    beq	$a1,$t2,.L0d9d959c
    # Line 167
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d9590:
    # Line 170
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d959c:
    # Line 161
    lwc1	$f3,4($a0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a2)
    # Line 162
    lwc1	$f2,8($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a2)
    # Line 163
    lwc1	$f1,12($a0)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a2)
    # Line 164
    lwc1	$f0,16($a0)
    # Line 170
    ld	$gp,0($sp)
    # Line 164
    cvt.d.s	$f0,$f0
    # Line 170
    addiu	$sp,$sp,16
    jr	$ra
    # Line 164
    sdc1	$f0,24($a2)
.L0d9d95d8:
    b	.L0d9d9568
    # Line 135
    addiu	$a0,$a4,1984
.L0d9d95e0:
    # Line 139
    b	.L0d9d9568
    # Line 138
    addiu	$a0,$a4,2108
.L0d9d95e8:
    # Line 142
    b	.L0d9d9568
    # Line 141
    addiu	$a0,$a4,2232
.L0d9d95f0:
    # Line 152
    lw	$t3,0($a0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f4
    ld	$ra,8($sp)
    # Line 170
    ld	$gp,0($sp)
    # Line 152
    cvt.d.l	$f4,$f4
    # Line 170
    addiu	$sp,$sp,16
    jr	$ra
    # Line 152
    sdc1	$f4,0($a2)
.L0d9d9618:
    # Line 155
    lwc1	$f8,20($a0)
    cvt.d.s	$f8,$f8
    sdc1	$f8,0($a2)
    # Line 156
    lwc1	$f7,24($a0)
    cvt.d.s	$f7,$f7
    sdc1	$f7,8($a2)
    # Line 157
    lwc1	$f6,28($a0)
    cvt.d.s	$f6,$f6
    sdc1	$f6,16($a2)
    # Line 158
    lwc1	$f5,32($a0)
    ld	$ra,8($sp)
    # Line 170
    ld	$gp,0($sp)
    # Line 158
    cvt.d.s	$f5,$f5
    # Line 170
    addiu	$sp,$sp,16
    jr	$ra
    # Line 158
    sdc1	$f5,24($a2)
.L0d9d9658:
    # Line 131
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d9590
    ld	$ra,8($sp)
.end __glim_GetTexGendv

# Function: __glim_GetTexGeniv
# Declared: Line 172 (Source lines: 174-211)
# Address: 0x0d9d9670 - 0x0d9d97a0 (Size: 304 bytes, Frame: 16)
.globl __glim_GetTexGeniv
.ent __glim_GetTexGeniv
__glim_GetTexGeniv:
    # Line 178
    li	$a6,8195
    # Line 174
    addiu	$sp,$sp,-16
    # Line 176
    lw	$at,4120($zero)
    lw	$a7,4112($zero)
    li	$v0,1
    # Line 174
    lui	$v1,0x7
    move	$a4,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,30492
    sd	$gp,0($sp)
    # Line 176
    beq	$at,$v0,.L0d9d976c
    # Line 174
    addu	$gp,$t9,$v1
    # Line 178
    li	$a2,8192
    # Line 180
    addiu	$t0,$a7,1984
    # Line 178
    beq	$a0,$a2,.L0d9d9718
    li	$a3,8193
    beq	$a0,$a3,.L0d9d9720
    # Line 186
    addiu	$t0,$a7,2232
    # Line 178
    li	$a5,8194
    beq	$a0,$a5,.L0d9d974c
    nop
    beq	$a0,$a6,.L0d9d96e0
    # Line 189
    addiu	$t0,$a7,2356
    # Line 192
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d970c
    ld	$ra,8($sp)
.L0d9d96e0:
    # Line 195
    li	$t1,9472
.L0d9d96e4:
    beq	$a1,$t1,.L0d9d9754
    li	$t2,9473
    beq	$a1,$t2,.L0d9d9780
    # Line 200
    nop	# was lw $t9, -25968($gp) # &__glConvertResult
    # Line 195
    li	$t3,9474
    beq	$a1,$t3,.L0d9d9728
    # Line 208
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d970c:
    # Line 211
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d9718:
    b	.L0d9d96e4
    # Line 195
    li	$t1,9472
.L0d9d9720:
    # Line 184
    b	.L0d9d96e0
    # Line 183
    addiu	$t0,$a7,2108
.L0d9d9728:
    # Line 204
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,4
    b	.L0d9d970c
    ld	$ra,8($sp)
.L0d9d974c:
    # Line 187
    b	.L0d9d96e4
    # Line 195
    li	$t1,9472
.L0d9d9754:
    ld	$ra,8($sp)
    # Line 211
    ld	$gp,0($sp)
    # Line 197
    lw	$t8,0($t0)
    # Line 211
    addiu	$sp,$sp,16
    jr	$ra
    # Line 197
    sw	$t8,0($a4)
.L0d9d976c:
    # Line 176
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d970c
    ld	$ra,8($sp)
.L0d9d9780:
    # Line 200
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,20
    b	.L0d9d970c
    ld	$ra,8($sp)
.end __glim_GetTexGeniv

# Function: __glim_GetTexParameterfv
# Declared: Line 215 (Source lines: 217-284)
# Address: 0x0d9d97a0 - 0x0d9d9ab0 (Size: 784 bytes, Frame: 48)
.globl __glim_GetTexParameterfv
.ent __glim_GetTexParameterfv
__glim_GetTexParameterfv:
    # Line 217
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    sd	$s0,24($sp)
    # Line 219
    lw	$at,4120($zero)
    li	$v0,1
    # Line 217
    lui	$v1,0x7
    sd	$a0,8($sp)
    move	$s0,$a1
    addiu	$v1,$v1,30188
    # Line 219
    lw	$a0,4112($zero)
    sd	$a0,16($sp)
    beq	$at,$v0,.L0d9d99ec
    # Line 217
    addu	$gp,$t9,$v1
    # Line 221
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    ld	$a0,16($sp)
    jal	__glLookUpTextureParams
    ld	$a1,8($sp)
    beqz	$v0,.L0d9d9a00
    # Line 228
    li	$a5,0x8067
    sltu	$a0,$s0,$a5
    bnez	$a0,.L0d9d9860
    sltu	$a1,$a5,$s0
    beqz	$a1,.L0d9d9a6c
    # Line 275
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    # Line 228
    li	$a0,0x8179
    sltu	$a2,$s0,$a0
    bnez	$a2,.L0d9d990c
    sltu	$a3,$a0,$s0
    # Line 236
    ld	$t9,0($sp)
    # Line 228
    beqz	$a3,.L0d9d9a44
    li	$t8,0x817a
    li	$a0,0x8191
    sltu	$a4,$s0,$a0
    # Line 280
    ld	$a6,0($sp)
    ld	$ra,40($sp)
    # Line 228
    bnez	$a4,.L0d9d99c0
    sltu	$a5,$a0,$s0
    bnez	$a5,.L0d9d98ec
    # Line 284
    ld	$s0,24($sp)
    # Line 280
    lbu	$a7,212($v0)
    mtc1	$a7,$f0
    cvt.s.w	$f0,$f0
    # Line 284
    ld	$gp,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 280
    swc1	$f0,0($a6)
.L0d9d9860:
    # Line 228
    sltiu	$t0,$s0,10242
    bnez	$t0,.L0d9d98b0
    sltiu	$t9,$s0,10240
    sltiu	$t1,$s0,10243
    bnez	$t1,.L0d9d9a14
    li	$a5,0x8066
    sltu	$t2,$s0,$a5
    li	$t1,10243
    bnez	$t2,.L0d9d999c
    sltu	$t3,$a5,$s0
    bnez	$t3,.L0d9d98f0
    # Line 283
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 268
    # lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    ld	$a0,16($sp)
    jal	__glLookUpTextureTexobjs
    ld	$a1,8($sp)
    # Line 271
    ld	$t8,0($sp)
    # Line 269
    lwc1	$f1,4($v0)
    # Line 271
    b	.L0d9d98f8
    # Line 269
    swc1	$f1,0($t8)
.L0d9d98b0:
    # Line 252
    ld	$v1,0($sp)
    # Line 228
    bnez	$t9,.L0d9d9948
    li	$at,10241
    sltiu	$ra,$s0,10241
    bnez	$ra,.L0d9d9a90
    nop
    bne	$s0,$at,.L0d9d98f0
    # Line 283
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 251
    lw	$a0,12($v0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    cvt.s.l	$f2,$f2
    # Line 252
    b	.L0d9d98f8
    # Line 251
    swc1	$f2,0($v1)
.L0d9d98ec:
    # Line 283
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d98f0:
    jal	__glSetError
    li	$a0,1280
.L0d9d98f8:
    ld	$ra,40($sp)
.L0d9d98fc:
    ld	$s0,24($sp)
    # Line 284
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d990c:
    ld	$ra,40($sp)
    # Line 228
    li	$a0,0x8147
    # Line 257
    ld	$a3,0($sp)
    # Line 228
    sltu	$a1,$s0,$a0
    li	$a6,0x8072
    # Line 257
    lwc1	$f3,_lit_42040000
    # Line 249
    ld	$a7,0($sp)
    # Line 228
    bnez	$a1,.L0d9d9978
    sltu	$a2,$a0,$s0
    bnez	$a2,.L0d9d98ec
    # Line 284
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 257
    swc1	$f3,0($a3)
.L0d9d9948:
    # Line 228
    li	$a4,4100
    bne	$s0,$a4,.L0d9d98ec
    # Line 260
    ld	$a5,0($sp)
    lwc1	$f7,152($v0)
    swc1	$f7,0($a5)
    # Line 261
    lwc1	$f6,156($v0)
    swc1	$f6,4($a5)
    # Line 262
    lwc1	$f5,160($v0)
    swc1	$f5,8($a5)
    # Line 263
    lwc1	$f4,164($v0)
    b	.L0d9d98f8
    swc1	$f4,12($a5)
.L0d9d9978:
    # Line 228
    bne	$s0,$a6,.L0d9d98f0
    # Line 283
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 248
    lw	$t0,8($v0)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f8
    cvt.s.l	$f8,$f8
    # Line 249
    b	.L0d9d98f8
    # Line 248
    swc1	$f8,0($a7)
.L0d9d999c:
    # Line 228
    bne	$s0,$t1,.L0d9d98ec
    # Line 246
    ld	$t2,0($sp)
    # Line 245
    lw	$t3,4($v0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f9
    cvt.s.l	$f9,$f9
    # Line 246
    b	.L0d9d98f8
    # Line 245
    swc1	$f9,0($t2)
.L0d9d99c0:
    # Line 228
    bne	$s0,$t8,.L0d9d98ec
    nop
    # Line 236
    lwc1	$f13,168($v0)
    swc1	$f13,0($t9)
    # Line 237
    lwc1	$f12,172($v0)
    swc1	$f12,4($t9)
    # Line 238
    lwc1	$f11,176($v0)
    swc1	$f11,8($t9)
    # Line 239
    lwc1	$f10,180($v0)
    # Line 240
    b	.L0d9d98f8
    # Line 239
    swc1	$f10,12($t9)
.L0d9d99ec:
    # Line 219
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d98fc
    ld	$ra,40($sp)
.L0d9d9a00:
    # Line 224
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d98fc
    ld	$ra,40($sp)
.L0d9d9a14:
    # Line 242
    lw	$v0,0($v0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f14
    # Line 284
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    # Line 242
    cvt.s.l	$f14,$f14
    ld	$at,0($sp)
    # Line 284
    ld	$s0,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 242
    swc1	$f14,0($at)
.L0d9d9a44:
    # Line 230
    ld	$v1,0($sp)
    lwc1	$f18,184($v0)
    swc1	$f18,0($v1)
    # Line 231
    lwc1	$f17,188($v0)
    swc1	$f17,4($v1)
    # Line 232
    lwc1	$f16,192($v0)
    swc1	$f16,8($v1)
    # Line 233
    lwc1	$f15,196($v0)
    # Line 234
    b	.L0d9d98f8
    # Line 233
    swc1	$f15,12($v1)
.L0d9d9a6c:
    # Line 275
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a1,8($sp)
    # Line 276
    lbu	$a1,12($v0)
    mtc1	$a1,$f19
    cvt.s.w	$f19,$f19
    # Line 278
    ld	$a0,0($sp)
    b	.L0d9d98f8
    # Line 276
    swc1	$f19,0($a0)
.L0d9d9a90:
    # Line 254
    lw	$a3,16($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f21
    cvt.s.l	$f21,$f21
    # Line 255
    ld	$a2,0($sp)
    b	.L0d9d98f8
    # Line 254
    swc1	$f21,0($a2)
.end __glim_GetTexParameterfv

# Function: __glim_GetTexParameteriv
# Declared: Line 288 (Source lines: 290-345)
# Address: 0x0d9d9ab0 - 0x0d9d9d8c (Size: 732 bytes, Frame: 192)
.globl __glim_GetTexParameteriv
.ent __glim_GetTexParameteriv
__glim_GetTexParameteriv:
    # Line 290
    addiu	$sp,$sp,-64
    sd	$a2,0($sp)
    sd	$ra,48($sp)
    sd	$gp,32($sp)
    sd	$s0,24($sp)
    # Line 292
    lw	$at,4120($zero)
    li	$v0,1
    # Line 290
    lui	$v1,0x7
    sd	$a0,8($sp)
    move	$s0,$a1
    addiu	$v1,$v1,29404
    # Line 292
    lw	$a0,4112($zero)
    sd	$a0,16($sp)
    beq	$at,$v0,.L0d9d9c58
    # Line 290
    addu	$gp,$t9,$v1
    # Line 294
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    ld	$a0,16($sp)
    jal	__glLookUpTextureParams
    ld	$a1,8($sp)
    beqz	$v0,.L0d9d9c6c
    # Line 297
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 301
    li	$a5,0x8066
    sltu	$a0,$s0,$a5
    bnez	$a0,.L0d9d9b4c
    sltu	$a1,$a5,$s0
    beqz	$a1,.L0d9d9c98
    # Line 329
    nop	# was lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    # Line 301
    li	$a5,0x8147
    sltu	$a2,$s0,$a5
    bnez	$a2,.L0d9d9be8
    sltu	$a3,$a5,$s0
    beqz	$a3,.L0d9d9c8c
    # Line 319
    ld	$t8,0($sp)
    # Line 301
    li	$a4,0x8191
    bne	$s0,$a4,.L0d9d9ba0
    # Line 342
    ld	$a6,0($sp)
    # Line 341
    lbu	$a5,212($v0)
    # Line 342
    b	.L0d9d9bac
    # Line 341
    sw	$a5,0($a6)
.L0d9d9b4c:
    # Line 301
    sltiu	$a1,$s0,10241
    bnez	$a1,.L0d9d9bc0
    sltiu	$t9,$s0,10240
    sltiu	$a7,$s0,10242
    li	$a6,10242
    bnez	$a7,.L0d9d9c7c
    sltiu	$t1,$s0,10244
    sltiu	$t0,$s0,10243
    # Line 306
    ld	$t3,0($sp)
    # Line 301
    bnez	$t0,.L0d9d9c44
    ld	$ra,48($sp)
    beqz	$t1,.L0d9d9ba0
    # Line 345
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    # Line 306
    lw	$t2,4($v0)
    # Line 345
    addiu	$sp,$sp,64
    jr	$ra
    # Line 306
    sw	$t2,0($t3)
.L0d9d9b94:
    # Line 301
    li	$t8,4100
    beq	$s0,$t8,.L0d9d9cd4
    sd	$v0,40($sp)
.L0d9d9ba0:
    # Line 344
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9d9bac:
    ld	$ra,48($sp)
.L0d9d9bb0:
    ld	$s0,24($sp)
    # Line 345
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d9bc0:
    # Line 301
    bnez	$t9,.L0d9d9b94
    ld	$ra,48($sp)
    beqz	$a1,.L0d9d9ba0
    # Line 345
    ld	$s0,24($sp)
    # Line 315
    lw	$at,16($v0)
    ld	$v0,0($sp)
    # Line 345
    ld	$gp,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 315
    sw	$at,0($v0)
.L0d9d9be8:
    # Line 301
    li	$a5,0x8072
    sltu	$v1,$s0,$a5
    # Line 309
    ld	$a2,0($sp)
    # Line 301
    li	$a3,0x8067
    ld	$ra,48($sp)
    bnez	$v1,.L0d9d9c20
    sltu	$a0,$a5,$s0
    bnez	$a0,.L0d9d9ba0
    # Line 345
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    # Line 309
    lw	$a1,8($v0)
    # Line 345
    addiu	$sp,$sp,64
    jr	$ra
    # Line 309
    sw	$a1,0($a2)
.L0d9d9c20:
    # Line 301
    bne	$s0,$a3,.L0d9d9ba0
    # Line 336
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    ld	$a0,16($sp)
    jal	__glLookUpTextureObject
    ld	$a1,8($sp)
    # Line 339
    ld	$a5,0($sp)
    # Line 337
    lbu	$a4,12($v0)
    # Line 339
    b	.L0d9d9bac
    # Line 337
    sw	$a4,0($a5)
.L0d9d9c44:
    # Line 301
    bne	$s0,$a6,.L0d9d9ba0
    # Line 304
    ld	$t0,0($sp)
    # Line 303
    lw	$a7,0($v0)
    # Line 304
    b	.L0d9d9bac
    # Line 303
    sw	$a7,0($t0)
.L0d9d9c58:
    # Line 292
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d9bb0
    ld	$ra,48($sp)
.L0d9d9c6c:
    # Line 297
    jalr	$t9
    li	$a0,1280
    b	.L0d9d9bb0
    ld	$ra,48($sp)
.L0d9d9c7c:
    # Line 313
    ld	$t2,0($sp)
    # Line 312
    lw	$t1,12($v0)
    # Line 313
    b	.L0d9d9bac
    # Line 312
    sw	$t1,0($t2)
.L0d9d9c8c:
    # Line 318
    li	$t3,33
    # Line 319
    b	.L0d9d9bac
    # Line 318
    sw	$t3,0($t8)
.L0d9d9c98:
    # Line 329
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a1,8($sp)
    # Line 330
    ld	$ra,16($sp)
    lwc1	$f13,4($v0)
    lwc1	$f14,3564($ra)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($ra)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 332
    ld	$at,0($sp)
    # Line 330
    trunc.w.s	$f15,$f0
    # Line 332
    b	.L0d9d9bac
    # Line 330
    swc1	$f15,0($at)
.L0d9d9cd4:
    # Line 321
    ld	$v0,16($sp)
    ld	$s0,40($sp)
    lwc1	$f14,3564($v0)
    lwc1	$f13,152($s0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($v0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a0,0($sp)
    trunc.w.s	$f15,$f0
    # Line 322
    ld	$v1,16($sp)
    # Line 321
    swc1	$f15,0($a0)
    # Line 322
    lwc1	$f14,3564($v1)
    lwc1	$f13,156($s0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($v1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a2,0($sp)
    trunc.w.s	$f15,$f0
    # Line 323
    ld	$a1,16($sp)
    # Line 322
    swc1	$f15,4($a2)
    # Line 323
    lwc1	$f14,3564($a1)
    lwc1	$f13,160($s0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($a1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a4,0($sp)
    trunc.w.s	$f15,$f0
    # Line 324
    ld	$a3,16($sp)
    # Line 323
    swc1	$f15,8($a4)
    # Line 324
    lwc1	$f14,3564($a3)
    lwc1	$f13,164($s0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($a3)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a5,0($sp)
    trunc.w.s	$f16,$f0
    b	.L0d9d9bac
    swc1	$f16,12($a5)
.end __glim_GetTexParameteriv

# Function: __glim_GetTexLevelParameterfv
# Declared: Line 351 (Source lines: 353-414)
# Address: 0x0d9d9d90 - 0x0d9da0c4 (Size: 820 bytes, Frame: 48)
.globl __glim_GetTexLevelParameterfv
.ent __glim_GetTexLevelParameterfv
__glim_GetTexLevelParameterfv:
    # Line 353
    addiu	$sp,$sp,-48
    sd	$a3,0($sp)
    sd	$s2,24($sp)
    # Line 356
    lw	$s2,4112($zero)
    # Line 353
    sd	$s0,8($sp)
    move	$v0,$a0
    # Line 356
    li	$v1,1
    lw	$at,4120($zero)
    # Line 353
    sd	$s1,16($sp)
    move	$s1,$a1
    lui	$a1,0x7
    move	$s0,$a2
    sd	$ra,40($sp)
    addiu	$a0,$a1,28668
    sd	$gp,32($sp)
    # Line 356
    beq	$at,$v1,.L0d9da028
    # Line 353
    addu	$gp,$t9,$a0
    # Line 358
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s2
    jal	__glLookUpTexture
    move	$a1,$v0
    beqz	$v0,.L0d9da03c
    # Line 361
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 364
    bltz	$s1,.L0d9d9f90
    # Line 365
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 364
    lw	$a2,3732($s2)
    slt	$a2,$s1,$a2
    beqz	$a2,.L0d9d9f90
    # Line 365
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 368
    sll	$a2,$s1,0x2
    subu	$a2,$a2,$s1
    # Line 370
    li	$a1,0x805d
    # Line 368
    sll	$a2,$a2,0x3
    # Line 370
    sltu	$a3,$s0,$a1
    # Line 368
    lw	$a0,228($v0)
    addu	$a2,$a2,$s1
    sll	$a2,$a2,0x2
    # Line 370
    bnez	$a3,.L0d9d9e90
    # Line 368
    addu	$a0,$a0,$a2
    # Line 370
    sltu	$a3,$a1,$s0
    beqz	$a3,.L0d9d9fbc
    li	$a1,0x8060
    sltu	$a4,$s0,$a1
    bnez	$a4,.L0d9d9f54
    sltu	$a5,$a1,$s0
    beqz	$a5,.L0d9da098
    # Line 383
    ld	$t1,0($sp)
    # Line 370
    li	$a1,0x8071
    sltu	$a6,$s0,$a1
    bnez	$a6,.L0d9da04c
    sltu	$a7,$a1,$s0
    bnez	$a7,.L0d9d9f30
    # Line 413
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 370
    lw	$t0,232($v0)
    slti	$t0,$t0,3
    beqz	$t0,.L0d9da0b0
    lw	$a1,12($a0)
    # Line 383
    lw	$t2,56($a0)
    addu	$t2,$t2,$t2
    subu	$t2,$a1,$t2
    mtc1	$t2,$f0
    cvt.s.w	$f0,$f0
    b	.L0d9d9f38
    swc1	$f0,0($t1)
.L0d9d9e90:
    # Line 370
    sltiu	$t3,$s0,4099
    bnez	$t3,.L0d9d9ee4
    sltiu	$t8,$s0,4100
    bnez	$t8,.L0d9da070
    li	$v0,0x805c
    # Line 395
    ld	$at,0($sp)
    # Line 370
    sltu	$t9,$s0,$v0
    # Line 414
    ld	$s2,24($sp)
    ld	$s1,16($sp)
    # Line 370
    bnez	$t9,.L0d9da008
    sltu	$ra,$v0,$s0
    bnez	$ra,.L0d9d9f2c
    # Line 414
    ld	$s0,8($sp)
    # Line 395
    lw	$v0,72($a0)
    mtc1	$v0,$f1
    ld	$ra,40($sp)
    cvt.s.w	$f1,$f1
    # Line 414
    ld	$gp,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 395
    swc1	$f1,0($at)
.L0d9d9ee4:
    # Line 370
    sltiu	$v1,$s0,4097
    bnez	$v1,.L0d9d9fa0
    li	$t1,4096
    sltiu	$a1,$s0,4098
    # Line 376
    ld	$a3,0($sp)
    # Line 370
    beqz	$a1,.L0d9d9f2c
    ld	$a6,0($sp)
    lw	$a2,232($v0)
    slti	$a2,$a2,2
    beqz	$a2,.L0d9da088
    lw	$a1,8($a0)
    # Line 376
    lw	$a4,56($a0)
    addu	$a4,$a4,$a4
    subu	$a4,$a1,$a4
    mtc1	$a4,$f2
    cvt.s.w	$f2,$f2
    b	.L0d9d9f38
    swc1	$f2,0($a3)
.L0d9d9f2c:
    # Line 413
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d9f30:
    jal	__glSetError
    li	$a0,1281
.L0d9d9f38:
    ld	$s0,8($sp)
.L0d9d9f3c:
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 414
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d9f54:
    # Line 370
    li	$v0,0x805f
    sltu	$a5,$s0,$v0
    li	$t8,0x805e
    # Line 405
    ld	$a7,0($sp)
    # Line 402
    ld	$t9,0($sp)
    # Line 370
    bnez	$a5,.L0d9d9fec
    sltu	$a6,$v0,$s0
    bnez	$a6,.L0d9d9f30
    # Line 413
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 404
    lw	$t0,84($a0)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    # Line 405
    b	.L0d9d9f38
    # Line 404
    swc1	$f3,0($a7)
    # Line 365
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d9f90:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9d9f3c
    ld	$s0,8($sp)
.L0d9d9fa0:
    # Line 370
    bne	$s0,$t1,.L0d9d9f2c
    ld	$t2,0($sp)
    # Line 372
    lw	$t3,4($a0)
    mtc1	$t3,$f4
    cvt.s.w	$f4,$f4
    b	.L0d9d9f38
    swc1	$f4,0($t2)
.L0d9d9fbc:
    # Line 398
    lw	$s1,76($a0)
    mtc1	$s1,$f5
    # Line 414
    ld	$gp,32($sp)
    ld	$s2,24($sp)
    # Line 398
    ld	$s0,0($sp)
    cvt.s.w	$f5,$f5
    ld	$ra,40($sp)
    # Line 414
    ld	$s1,16($sp)
    # Line 398
    swc1	$f5,0($s0)
    # Line 414
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d9fec:
    # Line 370
    bne	$s0,$t8,.L0d9d9f2c
    nop
    # Line 401
    lw	$ra,80($a0)
    mtc1	$ra,$f6
    cvt.s.w	$f6,$f6
    # Line 402
    b	.L0d9d9f38
    # Line 401
    swc1	$f6,0($t9)
.L0d9da008:
    # Line 370
    li	$at,4101
    bne	$s0,$at,.L0d9d9f2c
    # Line 393
    ld	$v0,0($sp)
    # Line 392
    lw	$v1,56($a0)
    mtc1	$v1,$f7
    cvt.s.w	$f7,$f7
    # Line 393
    b	.L0d9d9f38
    # Line 392
    swc1	$f7,0($v0)
.L0d9da028:
    # Line 356
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d9f3c
    ld	$s0,8($sp)
.L0d9da03c:
    # Line 361
    jalr	$t9
    li	$a0,1280
    b	.L0d9d9f3c
    ld	$s0,8($sp)
.L0d9da04c:
    # Line 370
    li	$a1,0x8061
    bne	$s0,$a1,.L0d9d9f30
    # Line 413
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 410
    lw	$a3,92($a0)
    mtc1	$a3,$f8
    cvt.s.w	$f8,$f8
    # Line 411
    ld	$a2,0($sp)
    b	.L0d9d9f38
    # Line 410
    swc1	$f8,0($a2)
.L0d9da070:
    # Line 389
    lw	$a5,60($a0)
    mtc1	$a5,$f9
    cvt.s.w	$f9,$f9
    # Line 390
    ld	$a4,0($sp)
    b	.L0d9d9f38
    # Line 389
    swc1	$f9,0($a4)
.L0d9da088:
    # Line 378
    mtc1	$a1,$f10
    cvt.s.w	$f10,$f10
    b	.L0d9d9f38
    swc1	$f10,0($a6)
.L0d9da098:
    # Line 407
    lw	$t0,88($a0)
    mtc1	$t0,$f11
    cvt.s.w	$f11,$f11
    # Line 408
    ld	$a7,0($sp)
    b	.L0d9d9f38
    # Line 407
    swc1	$f11,0($a7)
.L0d9da0b0:
    # Line 385
    mtc1	$a1,$f12
    cvt.s.w	$f12,$f12
    ld	$t1,0($sp)
    b	.L0d9d9f38
    swc1	$f12,0($t1)
.end __glim_GetTexLevelParameterfv

# Function: __glim_GetTexLevelParameteriv
# Declared: Line 418 (Source lines: 420-481)
# Address: 0x0d9da0d0 - 0x0d9da39c (Size: 716 bytes, Frame: 48)
.globl __glim_GetTexLevelParameteriv
.ent __glim_GetTexLevelParameteriv
__glim_GetTexLevelParameteriv:
    # Line 420
    addiu	$sp,$sp,-48
    sd	$a3,0($sp)
    sd	$s2,24($sp)
    # Line 423
    lw	$s2,4112($zero)
    # Line 420
    sd	$s0,8($sp)
    move	$v0,$a0
    # Line 423
    li	$v1,1
    lw	$at,4120($zero)
    # Line 420
    sd	$s1,16($sp)
    move	$s1,$a1
    lui	$a1,0x7
    move	$s0,$a2
    sd	$ra,40($sp)
    addiu	$a0,$a1,27836
    sd	$gp,32($sp)
    # Line 423
    beq	$at,$v1,.L0d9da330
    # Line 420
    addu	$gp,$t9,$a0
    # Line 425
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s2
    jal	__glLookUpTexture
    move	$a1,$v0
    beqz	$v0,.L0d9da344
    # Line 428
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 431
    bltz	$s1,.L0d9da2bc
    # Line 432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 431
    lw	$a2,3732($s2)
    slt	$a2,$s1,$a2
    beqz	$a2,.L0d9da2bc
    # Line 432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 435
    sll	$a2,$s1,0x2
    subu	$a2,$a2,$s1
    # Line 437
    li	$a1,0x805d
    # Line 435
    sll	$a2,$a2,0x3
    # Line 437
    sltu	$a3,$s0,$a1
    # Line 435
    lw	$a0,228($v0)
    addu	$a2,$a2,$s1
    sll	$a2,$a2,0x2
    # Line 437
    bnez	$a3,.L0d9da1cc
    # Line 435
    addu	$a0,$a0,$a2
    # Line 437
    sltu	$a3,$a1,$s0
    beqz	$a3,.L0d9da2e0
    li	$a1,0x8060
    sltu	$a4,$s0,$a1
    bnez	$a4,.L0d9da288
    sltu	$a5,$a1,$s0
    # Line 450
    ld	$t2,0($sp)
    # Line 437
    beqz	$a5,.L0d9da384
    ld	$t1,0($sp)
    li	$a1,0x8071
    sltu	$a6,$s0,$a1
    bnez	$a6,.L0d9da354
    sltu	$a7,$a1,$s0
    bnez	$a7,.L0d9da264
    # Line 480
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 437
    lw	$t0,232($v0)
    slti	$t0,$t0,3
    beqz	$t0,.L0d9da394
    lw	$a1,12($a0)
    # Line 450
    lw	$t1,56($a0)
    addu	$t1,$t1,$t1
    subu	$t1,$a1,$t1
    b	.L0d9da26c
    sw	$t1,0($t2)
.L0d9da1cc:
    # Line 437
    sltiu	$t2,$s0,4099
    bnez	$t2,.L0d9da224
    sltiu	$v1,$s0,4097
    sltiu	$t3,$s0,4100
    # Line 460
    ld	$v1,0($sp)
    # Line 437
    bnez	$t3,.L0d9da36c
    li	$at,4101
    # Line 481
    ld	$s2,24($sp)
    # Line 437
    li	$v0,0x805c
    ld	$ra,40($sp)
    sltu	$t8,$s0,$v0
    # Line 481
    ld	$s1,16($sp)
    # Line 437
    sltu	$t9,$v0,$s0
    bnez	$t8,.L0d9da31c
    # Line 462
    ld	$v0,0($sp)
    # Line 437
    bnez	$t9,.L0d9da260
    # Line 481
    ld	$s0,8($sp)
    ld	$gp,32($sp)
    # Line 462
    lw	$at,72($a0)
    # Line 481
    addiu	$sp,$sp,48
    jr	$ra
    # Line 462
    sw	$at,0($v0)
.L0d9da224:
    # Line 437
    bnez	$v1,.L0d9da2cc
    li	$t0,4096
    sltiu	$a1,$s0,4098
    # Line 443
    ld	$a4,0($sp)
    # Line 437
    beqz	$a1,.L0d9da260
    ld	$a6,0($sp)
    lw	$a2,232($v0)
    slti	$a2,$a2,2
    beqz	$a2,.L0d9da37c
    lw	$a1,8($a0)
    # Line 443
    lw	$a3,56($a0)
    addu	$a3,$a3,$a3
    subu	$a3,$a1,$a3
    b	.L0d9da26c
    sw	$a3,0($a4)
.L0d9da260:
    # Line 480
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da264:
    jal	__glSetError
    li	$a0,1281
.L0d9da26c:
    ld	$s0,8($sp)
.L0d9da270:
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 481
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9da288:
    # Line 437
    li	$v0,0x805f
    sltu	$a4,$s0,$v0
    li	$t8,0x805e
    # Line 472
    ld	$a7,0($sp)
    # Line 469
    ld	$ra,0($sp)
    # Line 437
    bnez	$a4,.L0d9da308
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0d9da264
    # Line 480
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 471
    lw	$a6,84($a0)
    # Line 472
    b	.L0d9da26c
    # Line 471
    sw	$a6,0($a7)
    # Line 432
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da2bc:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9da270
    ld	$s0,8($sp)
.L0d9da2cc:
    # Line 437
    bne	$s0,$t0,.L0d9da260
    ld	$t2,0($sp)
    # Line 439
    lw	$t1,4($a0)
    b	.L0d9da26c
    sw	$t1,0($t2)
.L0d9da2e0:
    # Line 481
    ld	$gp,32($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 465
    ld	$s0,0($sp)
    ld	$ra,40($sp)
    lw	$t3,76($a0)
    sw	$t3,0($s0)
    # Line 481
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9da308:
    # Line 437
    bne	$s0,$t8,.L0d9da264
    # Line 480
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 468
    lw	$t9,80($a0)
    # Line 469
    b	.L0d9da26c
    # Line 468
    sw	$t9,0($ra)
.L0d9da31c:
    # Line 437
    bne	$s0,$at,.L0d9da264
    # Line 480
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 459
    lw	$v0,56($a0)
    # Line 460
    b	.L0d9da26c
    # Line 459
    sw	$v0,0($v1)
.L0d9da330:
    # Line 423
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9da270
    ld	$s0,8($sp)
.L0d9da344:
    # Line 428
    jalr	$t9
    li	$a0,1280
    b	.L0d9da270
    ld	$s0,8($sp)
.L0d9da354:
    # Line 437
    li	$a1,0x8061
    bne	$s0,$a1,.L0d9da260
    # Line 478
    ld	$a3,0($sp)
    # Line 477
    lw	$a2,92($a0)
    # Line 478
    b	.L0d9da26c
    # Line 477
    sw	$a2,0($a3)
.L0d9da36c:
    # Line 457
    ld	$a5,0($sp)
    # Line 456
    lw	$a4,60($a0)
    # Line 457
    b	.L0d9da26c
    # Line 456
    sw	$a4,0($a5)
.L0d9da37c:
    b	.L0d9da26c
    # Line 445
    sw	$a1,0($a6)
.L0d9da384:
    # Line 475
    ld	$t0,0($sp)
    # Line 474
    lw	$a7,88($a0)
    # Line 475
    b	.L0d9da26c
    # Line 474
    sw	$a7,0($t0)
.L0d9da394:
    b	.L0d9da26c
    # Line 452
    sw	$a1,0($t1)
.end __glim_GetTexLevelParameteriv

# Function: __glim_GetTexFilterFuncSGIS
# Declared: Line 486 (Source lines: 486-504)
# Address: 0x0d9da3a0 - 0x0d9da48c (Size: 236 bytes, Frame: 32)
.globl __glim_GetTexFilterFuncSGIS
.ent __glim_GetTexFilterFuncSGIS
__glim_GetTexFilterFuncSGIS:
    # Line 491
    li	$a5,3553
    # Line 486
    addiu	$sp,$sp,-32
    lw	$at,4120($zero)
    li	$v1,1
    lui	$a3,0x7
    move	$v0,$a0
    sd	$ra,24($sp)
    addiu	$a0,$a3,27116
    sd	$gp,16($sp)
    beq	$at,$v1,.L0d9da478
    addu	$gp,$t9,$a0
    # Line 491
    li	$a4,3552
    sd	$a2,8($sp)
    beq	$v0,$a4,.L0d9da400
    sd	$a1,0($sp)
    beq	$v0,$a5,.L0d9da404
    # Line 496
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
    # Line 492
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d9da3f4:
    # Line 504
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9da400:
    # Line 496
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
.L0d9da404:
    move	$a1,$v0
    jal	__glLookUpTextureParams
    lw	$a0,4112($zero)
    # Line 497
    li	$a7,0x8146
    beqz	$v0,.L0d9da464
    ld	$a6,0($sp)
    bne	$a6,$a7,.L0d9da468
    # Line 498
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 499
    addiu	$a5,$v0,132
    # Line 502
    lwc1	$f0,20($v0)
    ld	$t0,8($sp)
    # Line 501
    addiu	$a0,$v0,4
    # Line 502
    addiu	$a1,$t0,4
    swc1	$f0,0($t0)
    nop
.L0d9da440:
    lwc1	$f2,20($a0)
    # Line 501
    addiu	$a0,$a0,8
    # Line 502
    swc1	$f2,0($a1)
    lwc1	$f1,16($a0)
    addiu	$a1,$a1,8
    # Line 501
    bne	$a0,$a5,.L0d9da440
    # Line 502
    swc1	$f1,-4($a1)
    b	.L0d9da3f4
    ld	$ra,24($sp)
.L0d9da464:
    # Line 498
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da468:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9da3f4
    ld	$ra,24($sp)
.L0d9da478:
    # Line 489
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9da3f4
    ld	$ra,24($sp)
.end __glim_GetTexFilterFuncSGIS

# Function: __glim_GetClipPlane
# Declared: Line 508 (Source lines: 509-522)
# Address: 0x0d9da490 - 0x0d9da57c (Size: 236 bytes, Frame: 16)
.globl __glim_GetClipPlane
.ent __glim_GetClipPlane
__glim_GetClipPlane:
    # Line 518
    sll	$a5,$a0,0x4
    # Line 509
    addiu	$sp,$sp,-16
    # Line 511
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 509
    lui	$v1,0x7
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,26876
    sd	$gp,0($sp)
    # Line 511
    beq	$at,$v0,.L0d9da568
    # Line 509
    addu	$gp,$t9,$v1
    # Line 514
    addiu	$a4,$a0,-12288
    bltz	$a4,.L0d9da558
    # Line 515
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 514
    lw	$a2,3600($a3)
    slt	$a2,$a4,$a2
    beqz	$a2,.L0d9da554
    # Line 518
    lui	$a4,0xfffd
    lw	$t0,1748($a3)
    addu	$t0,$t0,$a5
    addu	$t0,$a4,$t0
    lwc1	$f3,0($t0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a1)
    # Line 519
    lw	$a7,1748($a3)
    addu	$a7,$a7,$a5
    addu	$a7,$a4,$a7
    lwc1	$f2,4($a7)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a1)
    # Line 520
    lw	$a6,1748($a3)
    addu	$a6,$a6,$a5
    addu	$a6,$a4,$a6
    lwc1	$f1,8($a6)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a1)
    # Line 521
    lw	$a3,1748($a3)
    addu	$a3,$a3,$a5
    addu	$a3,$a4,$a3
    lwc1	$f0,12($a3)
    # Line 522
    ld	$gp,0($sp)
    # Line 521
    cvt.d.s	$f0,$f0
    # Line 522
    addiu	$sp,$sp,16
    jr	$ra
    # Line 521
    sdc1	$f0,24($a1)
.L0d9da548:
    # Line 522
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9da554:
    # Line 515
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da558:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9da548
    ld	$ra,8($sp)
.L0d9da568:
    # Line 511
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9da548
    ld	$ra,8($sp)
.end __glim_GetClipPlane

# Function: __glInitImagePack
# Declared: Line 526 (Source lines: 529-554)
# Address: 0x0d9da580 - 0x0d9da614 (Size: 148 bytes, Frame: 16)
.globl __glInitImagePack
.ent __glInitImagePack
__glInitImagePack:
    # Line 530
    mtc1	$zero,$f1
    # Line 529
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 530
    swc1	$f1,196($a1)
    # Line 531
    lwc1	$f0,3544($a0)
    # Line 552
    sw	$a6,88($a1)
    # Line 548
    sw	$a3,64($a1)
    # Line 547
    sw	$a2,60($a1)
    # Line 543
    sw	$zero,44($a1)
    # Line 541
    sw	$zero,40($a1)
    # Line 540
    sw	$zero,56($a1)
    # Line 539
    sw	$zero,52($a1)
    # Line 538
    sw	$zero,48($a1)
    # Line 551
    sw	$a5,84($a1)
    # Line 537
    li	$a5,4
    sw	$a5,68($a1)
    # Line 550
    sw	$a4,80($a1)
    # Line 535
    li	$a4,2
    sw	$a4,432($a1)
    # Line 534
    li	$v1,1
    sw	$v1,176($a1)
    # Line 533
    sw	$a3,172($a1)
    # Line 529
    lui	$v0,0x7
    # Line 532
    sw	$a2,180($a1)
    # Line 529
    addiu	$v0,$v0,26636
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 553
    # lw $t9, -27804($gp) # &__glLoadPackModes
    # Line 532
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 553
    nop
    jal	__glLoadPackModes
    # Line 531
    swc1	$f0,160($a1)
    ld	$ra,0($sp)
    # Line 554
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glInitImagePack

# Function: __glim_GetTexImage
# Declared: Line 556 (Source lines: 558-666)
# Address: 0x0d9da620 - 0x0d9dab2c (Size: 1292 bytes, Frame: 192)
.globl __glim_GetTexImage
.ent __glim_GetTexImage
__glim_GetTexImage:
    # Line 558
    addiu	$sp,$sp,-576
    sd	$a4,504($sp)
    sd	$s2,512($sp)
    # Line 563
    lw	$s2,4112($zero)
    # Line 558
    sd	$s4,528($sp)
    sd	$s3,520($sp)
    move	$s3,$a3
    sd	$s0,544($sp)
    move	$s0,$a2
    move	$s4,$a1
    # Line 563
    lw	$at,4120($zero)
    # Line 558
    sd	$s1,536($sp)
    # Line 563
    li	$v0,1
    # Line 558
    lui	$v1,0x7
    move	$s1,$a0
    sd	$ra,568($sp)
    addiu	$v1,$v1,26476
    sd	$gp,552($sp)
    # Line 563
    beq	$at,$v0,.L0d9daa60
    # Line 558
    addu	$gp,$t9,$v1
    # Line 565
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s2
    move	$a1,$s1
    jal	__glLookUpTexture
    sd	$s5,560($sp)
    # Line 567
    beqz	$v0,.L0d9da990
    # Line 565
    move	$s5,$v0
    # Line 567
    li	$a0,0x8063
    beq	$s1,$a0,.L0d9da990
    li	$a1,0x8064
    beq	$s1,$a1,.L0d9da994
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 567
    li	$a2,0x8070
    beq	$s1,$a2,.L0d9da994
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 574
    bltz	$s4,.L0d9da9e8
    # Line 575
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 574
    lw	$a3,3732($s2)
    slt	$a3,$s4,$a3
    beqz	$a3,.L0d9da9e4
    # Line 578
    sltiu	$v0,$s0,6408
    bnez	$v0,.L0d9da70c
    sltiu	$a4,$s0,6409
    bnez	$a4,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    # Line 578
    li	$v0,0x8000
    sltu	$a5,$s0,$v0
    bnez	$a5,.L0d9da9f8
    sltu	$a6,$v0,$s0
    beqz	$a6,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    # Line 578
    li	$v0,0x80e1
    sltu	$a7,$s0,$v0
    bnez	$a7,.L0d9daab4
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    b	.L0d9da9d4
    # Line 592
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9da70c:
    # Line 578
    sltiu	$a0,$s0,6405
    bnez	$a0,.L0d9da738
    sltiu	$t1,$s0,6406
    bnez	$t1,.L0d9da748
    sltiu	$t2,$s0,6407
    bnez	$t2,.L0d9daa84
    nop
    bnez	$v0,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    b	.L0d9da9d4
    # Line 592
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9da738:
    # Line 578
    sltiu	$t3,$s0,6404
    bnez	$t3,.L0d9da9c8
    li	$t0,6403
    beqz	$a0,.L0d9da9d0
.L0d9da748:
    # Line 595
    li	$v0,0x8034
.L0d9da74c:
    sltu	$t8,$s3,$v0
    bnez	$t8,.L0d9da7a4
    sltu	$t9,$v0,$s3
    beqz	$t9,.L0d9da818
    # Line 624
    li	$t1,6408
    # Line 595
    li	$v0,0x8364
    sltu	$ra,$s3,$v0
    bnez	$ra,.L0d9daa18
    sltu	$at,$v0,$s3
    beqz	$at,.L0d9da7dc
    # Line 608
    li	$a6,6407
    # Line 595
    li	$v0,0x8367
    sltu	$v1,$s3,$v0
    bnez	$v1,.L0d9daac8
    sltu	$a0,$v0,$s3
    beqz	$a0,.L0d9da818
    # Line 624
    li	$t1,6408
    # Line 595
    li	$a1,0x8368
    beq	$s3,$a1,.L0d9da818
    # Line 624
    li	$t1,6408
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9da7a4:
    # Line 595
    sltiu	$a2,$s3,5124
    bnez	$a2,.L0d9da968
    sltiu	$v0,$s3,5122
    sltiu	$a3,$s3,5125
    bnez	$a3,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    # Line 595
    li	$v0,0x8032
    sltu	$a4,$s3,$v0
    bnez	$a4,.L0d9daa98
    sltiu	$v1,$s3,5126
    sltu	$a5,$v0,$s3
    bnez	$a5,.L0d9daafc
    li	$a5,0x8033
    # Line 608
    li	$a6,6407
.L0d9da7dc:
    beq	$s0,$a6,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    # Line 612
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9da944
    ld	$s2,512($sp)
.L0d9da7f8:
    # Line 595
    li	$v0,0x8036
    sltu	$a7,$s3,$v0
    bnez	$a7,.L0d9daaec
    li	$a4,0x8035
    sltu	$t0,$v0,$s3
    bnez	$t0,.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 624
    li	$t1,6408
.L0d9da818:
    beq	$s0,$t1,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    # Line 624
    li	$t2,0x8000
    beq	$s0,$t2,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    # Line 624
    li	$t3,0x80e1
    beq	$s0,$t3,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    # Line 630
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9da944
    ld	$s2,512($sp)
.L0d9da84c:
    # Line 595
    bnez	$t8,.L0d9daa44
    li	$ra,5120
    beqz	$v0,.L0d9daa4c
    # Line 639
    sll	$v1,$s4,0x2
.L0d9da85c:
    subu	$v1,$v1,$s4
    # Line 641
    lw	$a1,232($s5)
    # Line 639
    sll	$v1,$v1,0x3
    lw	$v0,228($s5)
    addu	$v1,$v1,$s4
    sll	$v1,$v1,0x2
    # Line 641
    slti	$t9,$a1,2
    # Line 639
    addu	$v0,$v0,$v1
    # Line 641
    lw	$a0,8($v0)
    beqz	$t9,.L0d9da898
    lw	$a2,4($v0)
    # Line 643
    lw	$a3,56($v0)
    addu	$a3,$a3,$a3
    b	.L0d9da89c
    subu	$a3,$a0,$a3
.L0d9da898:
    # Line 645
    move	$a3,$a0
.L0d9da89c:
    # Line 649
    beqz	$a2,.L0d9da940
    nop
    beqz	$a3,.L0d9da940
    slti	$a4,$a1,3
    beqz	$a4,.L0d9da8c4
    lw	$a0,12($v0)
    # Line 652
    lw	$a4,56($v0)
    addu	$a4,$a4,$a4
    b	.L0d9da8c8
    subu	$a4,$a0,$a4
.L0d9da8c4:
    # Line 654
    move	$a4,$a0
.L0d9da8c8:
    # Line 656
    # lw $t9, -24216($gp) # &__glInitTexDestPack
    move	$a0,$s2
    move	$a6,$s3
    move	$a5,$s0
    ld	$a7,504($sp)
    jal	__glInitTexDestPack
    addiu	$a1,$sp,0
    # Line 658
    # lw $t9, -24224($gp) # &__glInitTexImageGet
    move	$a0,$s2
    move	$a3,$s4
    move	$a2,$s5
    jal	__glInitTexImageGet
    addiu	$a1,$sp,0
    lw	$a5,232($s5)
    slti	$a5,$a5,3
    beqz	$a5,.L0d9da9a4
    # Line 663
    nop	# was lw $t9, -28076($gp) # &__glInitPacker3D
    # Line 660
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s2
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 661
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s2
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 666
    lw	$t9,12572($s2)
.L0d9da930:
    move	$a0,$s2
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
.L0d9da940:
    ld	$s2,512($sp)
.L0d9da944:
    ld	$s3,520($sp)
    ld	$s4,528($sp)
    ld	$s5,560($sp)
    ld	$ra,568($sp)
    ld	$s1,536($sp)
    ld	$s0,544($sp)
    # Line 593
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9da968:
    # Line 595
    bnez	$v0,.L0d9da84c
    sltiu	$t8,$s3,5121
    sltiu	$a6,$s3,5123
    bnez	$a6,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    # Line 595
    li	$a7,5123
    beq	$s3,$a7,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9da990:
    # Line 570
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da994:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9da944
    ld	$s2,512($sp)
.L0d9da9a4:
    # Line 663
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 664
    # lw $t9, -27528($gp) # &__glInitUnpacker3D
    move	$a0,$s2
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,0
    b	.L0d9da930
    # Line 666
    lw	$t9,12572($s2)
.L0d9da9c8:
    # Line 578
    beq	$s0,$t0,.L0d9da74c
    # Line 595
    li	$v0,0x8034
.L0d9da9d0:
    # Line 592
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da9d4:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9da944
    ld	$s2,512($sp)
.L0d9da9e4:
    # Line 575
    # lw $t9, -26452($gp) # &__glSetError
.L0d9da9e8:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9da944
    ld	$s2,512($sp)
.L0d9da9f8:
    # Line 578
    sltiu	$t1,$s0,6410
    bnez	$t1,.L0d9daa74
    li	$at,6409
    sltiu	$t2,$s0,6411
    bnez	$t2,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    b	.L0d9da9d4
    # Line 592
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daa18:
    # Line 595
    li	$v0,0x8362
    sltu	$t3,$s3,$v0
    bnez	$t3,.L0d9da7f8
    sltu	$t8,$v0,$s3
    beqz	$t8,.L0d9da7dc
    # Line 608
    li	$a6,6407
    # Line 595
    li	$t9,0x8363
    beq	$s3,$t9,.L0d9da7dc
    # Line 608
    li	$a6,6407
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daa44:
    # Line 595
    beq	$s3,$ra,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
.L0d9daa4c:
    # Line 635
    # lw $t9, -26452($gp) # &__glSetError
.L0d9daa50:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9da944
    ld	$s2,512($sp)
.L0d9daa60:
    # Line 563
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9da940
    sd	$s5,560($sp)
.L0d9daa74:
    # Line 578
    beq	$s0,$at,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    b	.L0d9da9d4
    # Line 592
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daa84:
    # Line 578
    li	$v0,6406
    beq	$s0,$v0,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    b	.L0d9da9d4
    # Line 592
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daa98:
    # Line 595
    bnez	$v1,.L0d9dab0c
    li	$a6,5125
    sltiu	$a0,$s3,5127
    bnez	$a0,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daab4:
    # Line 578
    li	$a1,0x80e0
    beq	$s0,$a1,.L0d9da74c
    # Line 595
    li	$v0,0x8034
    b	.L0d9da9d4
    # Line 592
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daac8:
    # Line 595
    li	$v0,0x8366
    sltu	$a2,$s3,$v0
    bnez	$a2,.L0d9dab1c
    li	$a7,0x8365
    sltu	$a3,$v0,$s3
    beqz	$a3,.L0d9da818
    # Line 624
    li	$t1,6408
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daaec:
    # Line 595
    beq	$s3,$a4,.L0d9da818
    # Line 624
    li	$t1,6408
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9daafc:
    # Line 595
    beq	$s3,$a5,.L0d9da818
    # Line 624
    li	$t1,6408
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dab0c:
    # Line 595
    beq	$s3,$a6,.L0d9da85c
    # Line 639
    sll	$v1,$s4,0x2
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dab1c:
    # Line 595
    beq	$s3,$a7,.L0d9da818
    # Line 624
    li	$t1,6408
    b	.L0d9daa50
    # Line 635
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glim_GetTexImage

# Function: __glim_GetPolygonStipple
# Declared: Line 671 (Source lines: 672-684)
# Address: 0x0d9dab30 - 0x0d9dabec (Size: 188 bytes, Frame: 144)
.globl __glim_GetPolygonStipple
.ent __glim_GetPolygonStipple
__glim_GetPolygonStipple:
    # Line 672
    addiu	$sp,$sp,-528
    sd	$s0,504($sp)
    # Line 674
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 672
    lui	$v1,0x7
    move	$a6,$a0
    sd	$ra,520($sp)
    addiu	$v1,$v1,25180
    sd	$gp,512($sp)
    # Line 674
    beq	$at,$v0,.L0d9dabd8
    # Line 672
    addu	$gp,$t9,$v1
    # Line 679
    li	$a3,32
    li	$a2,32
    # lw $t9, -26020($gp) # &__glInitImagePack
    addiu	$a1,$sp,0
    # Line 678
    li	$a4,6400
    sw	$a4,0($sp)
    # Line 679
    move	$a0,$s0
    # Line 677
    li	$a5,6656
    sw	$a5,4($sp)
    # Line 676
    addiu	$a7,$s0,512
    # Line 679
    bal __glInitImagePack
    # Line 676
    sw	$a7,8($sp)
    # Line 681
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 682
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 683
    lw	$t9,12572($s0)
    move	$a0,$s0
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,520($sp)
.L0d9dabc8:
    ld	$s0,504($sp)
    # Line 684
    ld	$gp,512($sp)
    jr	$ra
    addiu	$sp,$sp,528
.L0d9dabd8:
    # Line 674
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dabc8
    ld	$ra,520($sp)
.end __glim_GetPolygonStipple

# Function: __glim_GetLightfv
# Declared: Line 688 (Source lines: 690-740)
# Address: 0x0d9dabf0 - 0x0d9dadb4 (Size: 452 bytes, Frame: 16)
.globl __glim_GetLightfv
.ent __glim_GetLightfv
__glim_GetLightfv:
    # Line 690
    move	$a6,$a2
    addiu	$sp,$sp,-16
    # Line 693
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 690
    lui	$v1,0x7
    # Line 701
    addiu	$t2,$a1,-4608
    sd	$ra,8($sp)
    # Line 690
    addiu	$v1,$v1,24988
    sd	$gp,0($sp)
    # Line 693
    beq	$at,$v0,.L0d9dada0
    # Line 690
    addu	$gp,$t9,$v1
    # Line 696
    addiu	$a5,$a0,-16384
    bltz	$a5,.L0d9dac84
    # Line 697
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 696
    lw	$a2,3588($a4)
    slt	$a2,$a5,$a2
    # Line 701
    la	$a5,sub_0da40000
    # Line 696
    beqz	$a2,.L0d9dac80
    # Line 701
    addiu	$a5,$a5,19560
    sll	$t0,$a0,0x3
    subu	$t0,$t0,$a0
    sltiu	$t1,$t2,10
    sll	$t0,$t0,0x2
    sll	$t2,$t2,0x2
    lw	$a7,1584($a4)
    addu	$t0,$t0,$a0
    addu	$a5,$a5,$t2
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lui	$t0,0xffe3
    beqz	$t1,.L0d9dac9c
    addu	$a7,$a7,$t0
    lw	$t1,0($a5)
    jr	$t1
    # Line 704
    nop	# was lw $t9, -25816($gp) # &__glUnScaleColorf
.L0d9dac80:
    # Line 697
    # lw $t9, -26452($gp) # &__glSetError
.L0d9dac84:
    jal	__glSetError
    li	$a0,1280
.L0d9dac8c:
    ld	$ra,8($sp)
.L0d9dac90:
    # Line 740
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9dac9c:
    # Line 739
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dac90
    ld	$ra,8($sp)
.L0d9dacb0:
    # Line 704
    move	$a0,$a4
    move	$a1,$a6
    jalr	$t9
    move	$a2,$a7
    b	.L0d9dac90
    ld	$ra,8($sp)
.L0d9dacc8:
    # Line 736
    lwc1	$f0,112($a7)
    # Line 737
    b	.L0d9dac8c
    # Line 736
    swc1	$f0,0($a6)
.L0d9dacd4:
    move	$ra,$ra
    # Line 733
    lwc1	$f1,108($a7)
    # Line 740
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 733
    swc1	$f1,0($a6)
.L0d9dacec:
    # Line 730
    lwc1	$f2,104($a7)
    # Line 731
    b	.L0d9dac8c
    # Line 730
    swc1	$f2,0($a6)
.L0d9dacf8:
    # Line 727
    lwc1	$f3,100($a7)
    # Line 728
    b	.L0d9dac8c
    # Line 727
    swc1	$f3,0($a6)
.L0d9dad04:
    # Line 724
    lwc1	$f4,96($a7)
    # Line 725
    b	.L0d9dac8c
    # Line 724
    swc1	$f4,0($a6)
.L0d9dad10:
    # Line 719
    lwc1	$f7,80($a7)
    swc1	$f7,0($a6)
    # Line 720
    lwc1	$f6,84($a7)
    swc1	$f6,4($a6)
    move	$ra,$ra
    # Line 721
    lwc1	$f5,88($a7)
    # Line 740
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 721
    swc1	$f5,8($a6)
.L0d9dad38:
    # Line 713
    lwc1	$f11,64($a7)
    swc1	$f11,0($a6)
    # Line 714
    lwc1	$f10,68($a7)
    swc1	$f10,4($a6)
    # Line 715
    lwc1	$f9,72($a7)
    swc1	$f9,8($a6)
    move	$ra,$ra
    # Line 716
    lwc1	$f8,76($a7)
    # Line 740
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 716
    swc1	$f8,12($a6)
.L0d9dad68:
    # Line 710
    # lw $t9, -25816($gp) # &__glUnScaleColorf
    move	$a0,$a4
    move	$a1,$a6
    jal	__glUnScaleColorf
    addiu	$a2,$a7,32
    b	.L0d9dac90
    ld	$ra,8($sp)
.L0d9dad84:
    # Line 707
    # lw $t9, -25816($gp) # &__glUnScaleColorf
    move	$a0,$a4
    move	$a1,$a6
    jal	__glUnScaleColorf
    addiu	$a2,$a7,16
    b	.L0d9dac90
    ld	$ra,8($sp)
.L0d9dada0:
    # Line 693
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dac90
    ld	$ra,8($sp)
.end __glim_GetLightfv

# Function: __glim_GetLightiv
# Declared: Line 744 (Source lines: 746-798)
# Address: 0x0d9dadc0 - 0x0d9dafe4 (Size: 548 bytes, Frame: 16)
.globl __glim_GetLightiv
.ent __glim_GetLightiv
__glim_GetLightiv:
    # Line 746
    addiu	$sp,$sp,-16
    # Line 749
    lw	$at,4120($zero)
    lw	$a7,4112($zero)
    li	$v0,1
    # Line 746
    lui	$v1,0x7
    move	$a4,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,24524
    sd	$gp,0($sp)
    # Line 749
    beq	$at,$v0,.L0d9dafd0
    # Line 746
    addu	$gp,$t9,$v1
    # Line 752
    addiu	$a5,$a0,-16384
    bltz	$a5,.L0d9dae58
    # Line 753
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 752
    lw	$a2,3588($a7)
    slt	$a2,$a5,$a2
    beqz	$a2,.L0d9dae58
    # Line 753
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 757
    la	$a2,sub_0da40000
    addiu	$a3,$a1,-4608
    sll	$t1,$a0,0x3
    sltiu	$t2,$a3,10
    subu	$t1,$t1,$a0
    addiu	$a2,$a2,19600
    sll	$t1,$t1,0x2
    sll	$a3,$a3,0x2
    lw	$t0,1584($a7)
    addu	$t1,$t1,$a0
    addu	$a2,$a2,$a3
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lui	$t1,0xffe3
    beqz	$t2,.L0d9dae70
    addu	$t0,$t0,$t1
    lw	$t2,0($a2)
    jr	$t2
    # Line 769
    nop	# was lw $t9, -25968($gp) # &__glConvertResult
    # Line 753
    # lw $t9, -26452($gp) # &__glSetError
.L0d9dae58:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9dae64:
    # Line 798
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9dae70:
    # Line 797
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9dae84:
    # Line 760
    # lw $t9, -25812($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    jal	__glUnScaleColori
    move	$a2,$t0
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daea0:
    # Line 793
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,112
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daec4:
    # Line 789
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,108
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daee8:
    # Line 785
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,104
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daf0c:
    # Line 781
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,100
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daf30:
    # Line 777
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,96
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daf54:
    # Line 773
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,3
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,80
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daf78:
    # Line 769
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,64
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9daf98:
    # Line 766
    # lw $t9, -25812($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    jal	__glUnScaleColori
    addiu	$a2,$t0,32
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9dafb4:
    # Line 763
    # lw $t9, -25812($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    jal	__glUnScaleColori
    addiu	$a2,$t0,16
    b	.L0d9dae64
    ld	$ra,8($sp)
.L0d9dafd0:
    # Line 749
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dae64
    ld	$ra,8($sp)
.end __glim_GetLightiv

# Function: __glim_GetMaterialfv
# Declared: Line 804 (Source lines: 806-856)
# Address: 0x0d9daff0 - 0x0d9db184 (Size: 404 bytes, Frame: 16)
.globl __glim_GetMaterialfv
.ent __glim_GetMaterialfv
__glim_GetMaterialfv:
    # Line 822
    li	$t8,4610
    # Line 806
    addiu	$sp,$sp,-16
    # Line 808
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 806
    lui	$v1,0x7
    move	$a5,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,23964
    sd	$gp,0($sp)
    # Line 808
    beq	$at,$v0,.L0d9db158
    # Line 806
    addu	$gp,$t9,$v1
    # Line 812
    addiu	$a6,$a4,1424
    # Line 810
    li	$a2,1028
    beq	$a0,$a2,.L0d9db0c8
    li	$a3,1029
    beq	$a0,$a3,.L0d9db04c
    # Line 815
    addiu	$a6,$a4,1504
    # Line 818
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9db090
    ld	$ra,8($sp)
.L0d9db04c:
    # Line 822
    li	$a7,5635
.L0d9db050:
    beq	$a1,$a7,.L0d9db0d0
    li	$t0,5633
    beq	$a1,$t0,.L0d9db0f8
    li	$t1,5632
    beq	$a1,$t1,.L0d9db16c
    # Line 832
    nop	# was lw $t9, -25816($gp) # &__glUnScaleColorf
    # Line 822
    li	$t2,4608
    beq	$a1,$t2,.L0d9db104
    li	$t3,4609
    beq	$a1,$t3,.L0d9db134
    ld	$ra,8($sp)
    beq	$a1,$t8,.L0d9db09c
    # Line 853
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9db08c:
    ld	$ra,8($sp)
.L0d9db090:
    # Line 856
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9db09c:
    # Line 847
    lwc1	$f3,32($a6)
    swc1	$f3,0($a5)
    # Line 848
    lwc1	$f2,36($a6)
    swc1	$f2,4($a5)
    # Line 849
    lwc1	$f1,40($a6)
    swc1	$f1,8($a5)
    # Line 850
    lwc1	$f0,44($a6)
    # Line 856
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 850
    swc1	$f0,12($a5)
.L0d9db0c8:
    b	.L0d9db050
    # Line 822
    li	$a7,5635
.L0d9db0d0:
    # Line 824
    lwc1	$f6,68($a6)
    swc1	$f6,0($a5)
    # Line 825
    lwc1	$f5,76($a6)
    ld	$ra,8($sp)
    swc1	$f5,4($a5)
    # Line 826
    lwc1	$f4,72($a6)
    # Line 856
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 826
    swc1	$f4,8($a5)
.L0d9db0f8:
    # Line 829
    lwc1	$f7,64($a6)
    # Line 830
    b	.L0d9db08c
    # Line 829
    swc1	$f7,0($a5)
.L0d9db104:
    # Line 835
    lwc1	$f11,0($a6)
    swc1	$f11,0($a5)
    # Line 836
    lwc1	$f10,4($a6)
    swc1	$f10,4($a5)
    # Line 837
    lwc1	$f9,8($a6)
    ld	$ra,8($sp)
    swc1	$f9,8($a5)
    # Line 838
    lwc1	$f8,12($a6)
    # Line 856
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 838
    swc1	$f8,12($a5)
.L0d9db134:
    # Line 841
    lwc1	$f15,16($a6)
    swc1	$f15,0($a5)
    # Line 842
    lwc1	$f14,20($a6)
    swc1	$f14,4($a5)
    # Line 843
    lwc1	$f13,24($a6)
    swc1	$f13,8($a5)
    # Line 844
    lwc1	$f12,28($a6)
    # Line 845
    b	.L0d9db08c
    # Line 844
    swc1	$f12,12($a5)
.L0d9db158:
    # Line 808
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9db090
    ld	$ra,8($sp)
.L0d9db16c:
    # Line 832
    move	$a0,$a4
    move	$a1,$a5
    jalr	$t9
    addiu	$a2,$a6,48
    b	.L0d9db090
    ld	$ra,8($sp)
.end __glim_GetMaterialfv

# Function: __glim_GetMaterialiv
# Declared: Line 858 (Source lines: 860-910)
# Address: 0x0d9db190 - 0x0d9db520 (Size: 912 bytes, Frame: 48)
.globl __glim_GetMaterialiv
.ent __glim_GetMaterialiv
__glim_GetMaterialiv:
    # Line 860
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 862
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 860
    lui	$v1,0x7
    sd	$ra,32($sp)
    addiu	$v1,$v1,23548
    sd	$gp,24($sp)
    # Line 862
    beq	$at,$v0,.L0d9db318
    # Line 860
    addu	$gp,$t9,$v1
    # Line 864
    li	$a3,1028
    # Line 866
    addiu	$t8,$s0,1424
    # Line 864
    beq	$a0,$a3,.L0d9db24c
    sd	$a2,8($sp)
    li	$a4,1029
    beq	$a0,$a4,.L0d9db1ec
    # Line 869
    addiu	$a5,$s0,1504
    # Line 872
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9db23c
    ld	$ra,32($sp)
.L0d9db1ec:
    sd	$a5,0($sp)
.L0d9db1f0:
    # Line 876
    li	$a6,5635
    beq	$a1,$a6,.L0d9db32c
    # Line 878
    nop	# was lw $t9, -25968($gp) # &__glConvertResult
    # Line 876
    li	$a7,5633
    beq	$a1,$a7,.L0d9db354
    li	$t0,5632
    beq	$a1,$t0,.L0d9db380
    # Line 886
    nop	# was lw $t9, -25812($gp) # &__glUnScaleColori
    # Line 876
    li	$t1,4608
    beq	$a1,$t1,.L0d9db39c
    li	$t2,4609
    beq	$a1,$t2,.L0d9db460
    # Line 895
    ld	$t3,0($sp)
    # Line 876
    li	$t3,4610
    beq	$a1,$t3,.L0d9db254
    # Line 907
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d9db23c:
    ld	$s0,16($sp)
    # Line 910
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9db24c:
    b	.L0d9db1f0
    sd	$t8,0($sp)
.L0d9db254:
    # Line 901
    ld	$t9,0($sp)
    lwc1	$f14,3564($s0)
    lwc1	$f13,32($t9)
    lwc1	$f12,3540($s0)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$at,8($sp)
    trunc.w.s	$f15,$f0
    # Line 902
    ld	$ra,0($sp)
    # Line 901
    swc1	$f15,0($at)
    # Line 902
    lwc1	$f14,3564($s0)
    lwc1	$f13,36($ra)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 903
    ld	$v0,0($sp)
    # Line 902
    swc1	$f15,4($v1)
    # Line 903
    lwc1	$f14,3564($s0)
    lwc1	$f13,40($v0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 904
    ld	$a0,0($sp)
    # Line 903
    swc1	$f15,8($a1)
    # Line 904
    lwc1	$f14,3564($s0)
    lwc1	$f13,44($a0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 910
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 904
    ld	$a2,8($sp)
    # Line 910
    ld	$s0,16($sp)
    # Line 904
    trunc.w.s	$f16,$f0
    # Line 910
    addiu	$sp,$sp,48
    jr	$ra
    # Line 904
    swc1	$f16,12($a2)
.L0d9db318:
    # Line 862
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9db23c
    ld	$ra,32($sp)
.L0d9db32c:
    # Line 878
    move	$a0,$s0
    move	$a1,$zero
    ld	$a2,0($sp)
    li	$a5,3
    li	$a3,3
    ld	$a4,8($sp)
    bal __glConvertResult
    addiu	$a2,$a2,68
    b	.L0d9db23c
    ld	$ra,32($sp)
.L0d9db354:
    # Line 882
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$s0
    move	$a1,$zero
    ld	$a2,0($sp)
    li	$a5,1
    li	$a3,3
    ld	$a4,8($sp)
    bal __glConvertResult
    addiu	$a2,$a2,64
    b	.L0d9db23c
    ld	$ra,32($sp)
.L0d9db380:
    # Line 886
    ld	$a2,0($sp)
    move	$a0,$s0
    ld	$a1,8($sp)
    jal	__glConvertResult
    addiu	$a2,$a2,48
    b	.L0d9db23c
    ld	$ra,32($sp)
.L0d9db39c:
    # Line 889
    ld	$a3,0($sp)
    lwc1	$f14,3564($s0)
    lwc1	$f13,0($a3)
    lwc1	$f12,3540($s0)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a5,8($sp)
    trunc.w.s	$f15,$f0
    # Line 890
    ld	$a4,0($sp)
    # Line 889
    swc1	$f15,0($a5)
    # Line 890
    lwc1	$f14,3564($s0)
    lwc1	$f13,4($a4)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a7,8($sp)
    trunc.w.s	$f15,$f0
    # Line 891
    ld	$a6,0($sp)
    # Line 890
    swc1	$f15,4($a7)
    # Line 891
    lwc1	$f14,3564($s0)
    lwc1	$f13,8($a6)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$t1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 892
    ld	$t0,0($sp)
    # Line 891
    swc1	$f15,8($t1)
    # Line 892
    lwc1	$f14,3564($s0)
    lwc1	$f13,12($t0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 910
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 892
    ld	$t2,8($sp)
    # Line 910
    ld	$s0,16($sp)
    # Line 892
    trunc.w.s	$f16,$f0
    # Line 910
    addiu	$sp,$sp,48
    jr	$ra
    # Line 892
    swc1	$f16,12($t2)
.L0d9db460:
    # Line 895
    lwc1	$f14,3564($s0)
    lwc1	$f13,16($t3)
    lwc1	$f12,3540($s0)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$t9,8($sp)
    trunc.w.s	$f15,$f0
    # Line 896
    ld	$t8,0($sp)
    # Line 895
    swc1	$f15,0($t9)
    # Line 896
    lwc1	$f14,3564($s0)
    lwc1	$f13,20($t8)
    lwc1	$f12,3540($s0)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$at,8($sp)
    trunc.w.s	$f15,$f0
    # Line 897
    ld	$ra,0($sp)
    # Line 896
    swc1	$f15,4($at)
    # Line 897
    lwc1	$f14,3564($s0)
    lwc1	$f13,24($ra)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v1,8($sp)
    trunc.w.s	$f15,$f0
    # Line 898
    ld	$v0,0($sp)
    # Line 897
    swc1	$f15,8($v1)
    # Line 898
    lwc1	$f14,3564($s0)
    lwc1	$f13,28($v0)
    # lw $t9, -22848($gp) # &floorf
    lwc1	$f12,3540($s0)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 910
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 898
    ld	$a0,8($sp)
    # Line 910
    ld	$s0,16($sp)
    # Line 898
    trunc.w.s	$f16,$f0
    # Line 910
    addiu	$sp,$sp,48
    jr	$ra
    # Line 898
    swc1	$f16,12($a0)
.end __glim_GetMaterialiv

# Function: __glim_GetMapfv
# Declared: Line 914 (Source lines: 915-995)
# Address: 0x0d9db520 - 0x0d9db828 (Size: 776 bytes, Frame: 16)
.globl __glim_GetMapfv
.ent __glim_GetMapfv
__glim_GetMapfv:
    # Line 915
    addiu	$sp,$sp,-16
    # Line 921
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 915
    lui	$v1,0x7
    sd	$ra,8($sp)
    addiu	$v1,$v1,22636
    sd	$gp,0($sp)
    # Line 921
    beq	$at,$v0,.L0d9db794
    # Line 915
    addu	$gp,$t9,$v1
    # Line 926
    la	$a4,sub_0da40000
    addiu	$a7,$a0,-3472
    move	$a6,$a2
    sltiu	$t0,$a7,41
    sll	$a7,$a7,0x2
    addiu	$a4,$a4,19640
    beqz	$t0,.L0d9db574
    addu	$a4,$a4,$a7
    lw	$a7,0($a4)
    jr	$a7
    # Line 939
    li	$t2,2561
.L0d9db574:
    # Line 994
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9db580:
    ld	$ra,8($sp)
.L0d9db584:
    # Line 995
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9db590:
    # Line 939
    li	$t0,2560
    # Line 952
    lui	$at,0xffff
    sll	$v0,$a0,0x2
    # Line 939
    beq	$a1,$t0,.L0d9db668
    # Line 952
    subu	$v0,$v0,$a0
    # Line 939
    li	$t1,2562
    beq	$a1,$t1,.L0d9db7a8
    # Line 952
    ori	$at,$at,0x28d0
    # Line 939
    beq	$a1,$t2,.L0d9db608
    # Line 952
    sll	$v0,$v0,0x3
    # Line 955
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9db584
    ld	$ra,8($sp)
.L0d9db5cc:
    # Line 970
    li	$t3,2560
    li	$t9,2561
    beq	$a1,$t3,.L0d9db6f4
    # Line 985
    sll	$v1,$a0,0x2
    # Line 970
    li	$t8,2562
    beq	$a1,$t8,.L0d9db7e0
    # Line 985
    addu	$v1,$v1,$a0
    move	$ra,$ra
    # Line 970
    beq	$a1,$t9,.L0d9db630
    # Line 985
    lui	$a0,0xfffe
    # Line 989
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9db584
    ld	$ra,8($sp)
.L0d9db608:
    # Line 952
    addu	$v0,$a5,$v0
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    move	$ra,$ra
    # Line 995
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 952
    swc1	$f0,0($a2)
.L0d9db630:
    # Line 985
    sll	$v1,$v1,0x3
    addu	$v1,$a5,$v1
    addu	$v1,$v1,$a0
    lw	$a0,19368($v1)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
    # Line 986
    lw	$v1,19372($v1)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    # Line 995
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 986
    swc1	$f1,4($a2)
.L0d9db668:
    # Line 941
    sll	$a7,$a0,0x2
    subu	$t1,$a7,$a0
    sll	$t1,$t1,0x3
    lui	$t2,0xffff
    addu	$t1,$a5,$t1
    addu	$t1,$t1,$t2
    lw	$t0,10444($t1)
    lw	$t1,10448($t1)
    mult	$t0,$t1
    # Line 942
    addu	$a7,$a5,$a7
    lw	$a7,14924($a7)
    # Line 941
    mflo	$a1
    # Line 942
    move	$a0,$a7
    sll	$a4,$a1,0x2
    blez	$a1,.L0d9db580
    andi	$a5,$a1,0x1
    addu	$a4,$a4,$a7
    beqz	$a5,.L0d9db6c4
    nop
    # Line 944
    lwc1	$f3,0($a7)
    # Line 943
    addiu	$a0,$a7,4
    # Line 944
    addiu	$a6,$a2,4
    swc1	$f3,0($a2)
.L0d9db6c4:
    sra	$a7,$a1,0x1
    beqz	$a7,.L0d9db6ec
    move	$a1,$a6
.L0d9db6d0:
    lwc1	$f5,0($a0)
    # Line 943
    addiu	$a0,$a0,8
    # Line 944
    swc1	$f5,0($a1)
    lwc1	$f4,-4($a0)
    addiu	$a1,$a1,8
    # Line 943
    bne	$a0,$a4,.L0d9db6d0
    # Line 944
    swc1	$f4,-4($a1)
.L0d9db6ec:
    b	.L0d9db584
    ld	$ra,8($sp)
.L0d9db6f4:
    # Line 972
    sll	$a7,$a0,0x2
    # Line 973
    addu	$t0,$a7,$a0
    sll	$t0,$t0,0x3
    lui	$t1,0xfffe
    addu	$t0,$a5,$t0
    addu	$t0,$t0,$t1
    lw	$t2,19372($t0)
    lw	$t1,19368($t0)
    mult	$t1,$t2
    lw	$t0,19364($t0)
    mflo	$t1
    nop
    nop
    mult	$t0,$t1
    # Line 972
    addu	$a7,$a5,$a7
    lw	$a7,14832($a7)
    # Line 973
    mflo	$a1
    move	$a0,$a7
    sll	$a4,$a1,0x2
    blez	$a1,.L0d9db580
    andi	$a5,$a1,0x1
    addu	$a4,$a4,$a7
    beqz	$a5,.L0d9db764
    nop
    # Line 975
    lwc1	$f6,0($a7)
    # Line 974
    addiu	$a0,$a7,4
    # Line 975
    addiu	$a6,$a2,4
    swc1	$f6,0($a2)
.L0d9db764:
    sra	$a7,$a1,0x1
    beqz	$a7,.L0d9db78c
    move	$a1,$a6
.L0d9db770:
    lwc1	$f8,0($a0)
    # Line 974
    addiu	$a0,$a0,8
    # Line 975
    swc1	$f8,0($a1)
    lwc1	$f7,-4($a0)
    addiu	$a1,$a1,8
    # Line 974
    bne	$a0,$a4,.L0d9db770
    # Line 975
    swc1	$f7,-4($a1)
.L0d9db78c:
    b	.L0d9db584
    ld	$ra,8($sp)
.L0d9db794:
    # Line 921
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9db584
    ld	$ra,8($sp)
.L0d9db7a8:
    # Line 948
    sll	$t0,$a0,0x2
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x3
    lui	$t1,0xffff
    addu	$t0,$a5,$t0
    addu	$t0,$t0,$t1
    lwc1	$f10,10452($t0)
    swc1	$f10,0($a2)
    move	$ra,$ra
    # Line 949
    lwc1	$f9,10456($t0)
    # Line 995
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 949
    swc1	$f9,4($a2)
.L0d9db7e0:
    # Line 979
    sll	$t1,$a0,0x2
    addu	$t1,$t1,$a0
    sll	$t1,$t1,0x3
    lui	$t2,0xfffe
    addu	$t1,$a5,$t1
    addu	$t1,$t1,$t2
    lwc1	$f14,19376($t1)
    swc1	$f14,0($a2)
    # Line 980
    lwc1	$f13,19380($t1)
    swc1	$f13,4($a2)
    # Line 981
    lwc1	$f12,19384($t1)
    swc1	$f12,8($a2)
    move	$ra,$ra
    # Line 982
    lwc1	$f11,19388($t1)
    # Line 995
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 982
    swc1	$f11,12($a2)
.end __glim_GetMapfv

# Function: __glim_GetMapdv
# Declared: Line 999 (Source lines: 1000-1080)
# Address: 0x0d9db830 - 0x0d9dbba8 (Size: 888 bytes, Frame: 16)
.globl __glim_GetMapdv
.ent __glim_GetMapdv
__glim_GetMapdv:
    # Line 1000
    addiu	$sp,$sp,-16
    # Line 1006
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 1000
    lui	$v1,0x7
    sd	$ra,8($sp)
    addiu	$v1,$v1,21852
    sd	$gp,0($sp)
    # Line 1006
    beq	$at,$v0,.L0d9dbb04
    # Line 1000
    addu	$gp,$t9,$v1
    # Line 1011
    la	$a4,sub_0da40000
    addiu	$a6,$a0,-3472
    sltiu	$a7,$a6,41
    sll	$a6,$a6,0x2
    addiu	$a4,$a4,19804
    beqz	$a7,.L0d9db880
    addu	$a4,$a4,$a6
    lw	$a6,0($a4)
    jr	$a6
    # Line 1055
    li	$t8,2561
.L0d9db880:
    # Line 1079
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9db88c:
    ld	$ra,8($sp)
.L0d9db890:
    # Line 1080
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9db89c:
    # Line 1024
    li	$t1,2561
    li	$t0,2562
    li	$a7,2560
    # Line 1037
    lui	$t9,0xffff
    sll	$at,$a0,0x2
    # Line 1024
    beq	$a1,$a7,.L0d9db97c
    # Line 1037
    subu	$at,$at,$a0
    ori	$t9,$t9,0x28d0
    # Line 1024
    beq	$a1,$t0,.L0d9dbb18
    # Line 1033
    sll	$a4,$a0,0x2
    # Line 1024
    beq	$a1,$t1,.L0d9db91c
    # Line 1037
    sll	$at,$at,0x3
    # Line 1040
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9db890
    ld	$ra,8($sp)
.L0d9db8e0:
    # Line 1055
    li	$t3,2562
    li	$t2,2560
    # Line 1070
    lui	$v1,0xfffe
    sll	$v0,$a0,0x2
    # Line 1055
    beq	$a1,$t2,.L0d9dba34
    # Line 1070
    addu	$v0,$v0,$a0
    # Line 1055
    beq	$a1,$t3,.L0d9dbb54
    # Line 1064
    sll	$a7,$a0,0x2
    # Line 1055
    beq	$a1,$t8,.L0d9db944
    move	$ra,$ra
    # Line 1074
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9db890
    ld	$ra,8($sp)
.L0d9db91c:
    # Line 1037
    addu	$at,$a5,$at
    addu	$t9,$t9,$at
    lw	$t9,0($t9)
    mtc1	$t9,$f0
    move	$ra,$ra
    # Line 1080
    ld	$gp,0($sp)
    # Line 1037
    cvt.d.w	$f0,$f0
    # Line 1080
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1037
    sdc1	$f0,0($a2)
.L0d9db944:
    # Line 1070
    sll	$v0,$v0,0x3
    addu	$v0,$a5,$v0
    addu	$v0,$v0,$v1
    lw	$v1,19368($v0)
    mtc1	$v1,$f2
    cvt.d.w	$f2,$f2
    sdc1	$f2,0($a2)
    # Line 1071
    lw	$v0,19372($v0)
    mtc1	$v0,$f1
    # Line 1080
    ld	$gp,0($sp)
    # Line 1071
    cvt.d.w	$f1,$f1
    # Line 1080
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1071
    sdc1	$f1,8($a2)
.L0d9db97c:
    # Line 1026
    sll	$a6,$a0,0x2
    # Line 1027
    subu	$t0,$a6,$a0
    sll	$t0,$t0,0x3
    lui	$t1,0xffff
    addu	$t0,$a5,$t0
    addu	$t0,$t0,$t1
    lw	$a7,10444($t0)
    lw	$t0,10448($t0)
    mult	$a7,$t0
    # Line 1026
    addu	$a6,$a5,$a6
    lw	$a6,14924($a6)
    # Line 1027
    mflo	$a4
    move	$a0,$a6
    sll	$a1,$a4,0x2
    blez	$a4,.L0d9db88c
    andi	$a5,$a4,0x3
    addu	$a1,$a1,$a6
    beqz	$a5,.L0d9db9e8
    sra	$a3,$a4,0x2
.L0d9db9c8:
    # Line 1029
    lwc1	$f3,0($a0)
    addiu	$a5,$a5,-1
    addiu	$a2,$a2,8
    cvt.d.s	$f3,$f3
    # Line 1028
    addiu	$a0,$a0,4
    bnez	$a5,.L0d9db9c8
    # Line 1029
    sdc1	$f3,-8($a2)
    sra	$a3,$a4,0x2
.L0d9db9e8:
    beqz	$a3,.L0d9dba2c
    nop
.L0d9db9f0:
    lwc1	$f7,0($a0)
    cvt.d.s	$f7,$f7
    sdc1	$f7,0($a2)
    lwc1	$f6,4($a0)
    cvt.d.s	$f6,$f6
    sdc1	$f6,8($a2)
    lwc1	$f5,8($a0)
    cvt.d.s	$f5,$f5
    sdc1	$f5,16($a2)
    lwc1	$f4,12($a0)
    # Line 1028
    addiu	$a0,$a0,16
    # Line 1029
    addiu	$a2,$a2,32
    cvt.d.s	$f4,$f4
    # Line 1028
    bne	$a0,$a1,.L0d9db9f0
    # Line 1029
    sdc1	$f4,-8($a2)
.L0d9dba2c:
    b	.L0d9db890
    ld	$ra,8($sp)
.L0d9dba34:
    # Line 1057
    sll	$a6,$a0,0x2
    # Line 1058
    addu	$a7,$a6,$a0
    sll	$a7,$a7,0x3
    lui	$t0,0xfffe
    addu	$a7,$a5,$a7
    addu	$a7,$a7,$t0
    lw	$t1,19372($a7)
    lw	$t0,19368($a7)
    mult	$t0,$t1
    lw	$a7,19364($a7)
    mflo	$t0
    nop
    nop
    mult	$a7,$t0
    mflo	$a4
    # Line 1057
    addu	$a6,$a5,$a6
    lw	$a6,14832($a6)
    andi	$a5,$a4,0x3
    # Line 1058
    blez	$a4,.L0d9db88c
    sra	$a3,$a4,0x2
    move	$a0,$a6
    sll	$a1,$a4,0x2
    beqz	$a5,.L0d9dbab0
    addu	$a1,$a1,$a6
.L0d9dba94:
    # Line 1060
    lwc1	$f8,0($a0)
    addiu	$a5,$a5,-1
    addiu	$a2,$a2,8
    cvt.d.s	$f8,$f8
    # Line 1059
    addiu	$a0,$a0,4
    bnez	$a5,.L0d9dba94
    # Line 1060
    sdc1	$f8,-8($a2)
.L0d9dbab0:
    beqz	$a3,.L0d9dbafc
    nop
    nop
    nop
.L0d9dbac0:
    lwc1	$f12,0($a0)
    cvt.d.s	$f12,$f12
    sdc1	$f12,0($a2)
    lwc1	$f11,4($a0)
    cvt.d.s	$f11,$f11
    sdc1	$f11,8($a2)
    lwc1	$f10,8($a0)
    cvt.d.s	$f10,$f10
    sdc1	$f10,16($a2)
    lwc1	$f9,12($a0)
    # Line 1059
    addiu	$a0,$a0,16
    # Line 1060
    addiu	$a2,$a2,32
    cvt.d.s	$f9,$f9
    # Line 1059
    bne	$a0,$a1,.L0d9dbac0
    # Line 1060
    sdc1	$f9,-8($a2)
.L0d9dbafc:
    b	.L0d9db890
    ld	$ra,8($sp)
.L0d9dbb04:
    # Line 1006
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9db890
    ld	$ra,8($sp)
.L0d9dbb18:
    # Line 1033
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x3
    addu	$a4,$a5,$a4
    lui	$a5,0xffff
    addu	$a4,$a4,$a5
    lwc1	$f14,10452($a4)
    cvt.d.s	$f14,$f14
    sdc1	$f14,0($a2)
    # Line 1034
    lwc1	$f13,10456($a4)
    move	$ra,$ra
    # Line 1080
    ld	$gp,0($sp)
    # Line 1034
    cvt.d.s	$f13,$f13
    # Line 1080
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1034
    sdc1	$f13,8($a2)
.L0d9dbb54:
    # Line 1064
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x3
    lui	$a6,0xfffe
    addu	$a5,$a5,$a7
    addu	$a5,$a5,$a6
    lwc1	$f18,19376($a5)
    cvt.d.s	$f18,$f18
    sdc1	$f18,0($a2)
    # Line 1065
    lwc1	$f17,19380($a5)
    cvt.d.s	$f17,$f17
    sdc1	$f17,8($a2)
    # Line 1066
    lwc1	$f16,19384($a5)
    cvt.d.s	$f16,$f16
    sdc1	$f16,16($a2)
    # Line 1067
    lwc1	$f15,19388($a5)
    move	$ra,$ra
    # Line 1080
    ld	$gp,0($sp)
    # Line 1067
    cvt.d.s	$f15,$f15
    # Line 1080
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1067
    sdc1	$f15,24($a2)
.end __glim_GetMapdv

# Function: __glim_GetMapiv
# Declared: Line 1084 (Source lines: 1085-1161)
# Address: 0x0d9dbbb0 - 0x0d9dbe1c (Size: 620 bytes, Frame: 16)
.globl __glim_GetMapiv
.ent __glim_GetMapiv
__glim_GetMapiv:
    # Line 1085
    move	$a4,$a2
    addiu	$sp,$sp,-16
    # Line 1091
    lw	$at,4120($zero)
    lw	$t0,4112($zero)
    li	$v0,1
    # Line 1085
    lui	$v1,0x7
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,20956
    sd	$gp,0($sp)
    # Line 1091
    beq	$at,$v0,.L0d9dbce8
    # Line 1085
    addu	$gp,$t9,$v1
    # Line 1096
    la	$a5,sub_0da40000
    addiu	$a6,$a0,-3472
    sltiu	$t1,$a6,41
    sll	$a6,$a6,0x2
    addiu	$a5,$a5,19968
    beqz	$t1,.L0d9dbc08
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    jr	$a6
    # Line 1139
    li	$t8,2560
.L0d9dbc08:
    # Line 1160
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9dbc18:
    # Line 1161
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9dbc24:
    # Line 1109
    li	$t3,2561
    li	$t2,2562
    li	$t1,2560
    # Line 1121
    lui	$at,0xffff
    sll	$v0,$a0,0x2
    # Line 1109
    beq	$a1,$t1,.L0d9dbcfc
    # Line 1121
    subu	$v0,$v0,$a0
    ori	$at,$at,0x28d0
    # Line 1109
    beq	$a1,$t2,.L0d9dbda8
    # Line 1117
    move	$a0,$t0
    # Line 1109
    beq	$a1,$t3,.L0d9dbc9c
    # Line 1124
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dbc18
    ld	$ra,8($sp)
.L0d9dbc64:
    # Line 1139
    li	$ra,2561
    beq	$a1,$t8,.L0d9dbd48
    # Line 1151
    sll	$v1,$a0,0x2
    # Line 1139
    li	$t9,2562
    # Line 1151
    addu	$v1,$v1,$a0
    # Line 1139
    beq	$a1,$t9,.L0d9dbde0
    # Line 1151
    lui	$a0,0xfffe
    # Line 1139
    beq	$a1,$ra,.L0d9dbcc0
    # Line 1151
    sll	$v1,$v1,0x3
    # Line 1155
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dbc18
    ld	$ra,8($sp)
.L0d9dbc9c:
    # Line 1121
    sll	$v0,$v0,0x3
    addu	$v0,$t0,$v0
    # Line 1161
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 1121
    addu	$at,$at,$v0
    lw	$at,0($at)
    # Line 1161
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1121
    sw	$at,0($a2)
.L0d9dbcc0:
    # Line 1161
    ld	$gp,0($sp)
    # Line 1151
    addu	$v1,$t0,$v1
    ld	$ra,8($sp)
    addu	$v1,$v1,$a0
    lw	$a0,19368($v1)
    sw	$a0,0($a2)
    # Line 1152
    lw	$v1,19372($v1)
    # Line 1161
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1152
    sw	$v1,4($a2)
.L0d9dbce8:
    # Line 1091
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dbc18
    ld	$ra,8($sp)
.L0d9dbcfc:
    # Line 1113
    sll	$a2,$a0,0x2
    subu	$a5,$a2,$a0
    sll	$a5,$a5,0x3
    lui	$a6,0xffff
    addu	$a5,$t0,$a5
    addu	$a5,$a5,$a6
    lw	$a3,10444($a5)
    lw	$a5,10448($a5)
    mult	$a3,$a5
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a1,$zero
    move	$a0,$t0
    addu	$a2,$t0,$a2
    mflo	$a5
    lw	$a2,14924($a2)
    bal __glConvertResult
    li	$a3,3
    b	.L0d9dbc18
    ld	$ra,8($sp)
.L0d9dbd48:
    # Line 1143
    sll	$a2,$a0,0x2
    addu	$a3,$a2,$a0
    sll	$a3,$a3,0x3
    lui	$a5,0xfffe
    addu	$a3,$t0,$a3
    addu	$a3,$a3,$a5
    lw	$a6,19372($a3)
    lw	$a5,19368($a3)
    mult	$a5,$a6
    lw	$a3,19364($a3)
    mflo	$a5
    nop
    nop
    mult	$a3,$a5
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a1,$zero
    move	$a0,$t0
    addu	$a2,$t0,$a2
    mflo	$a5
    lw	$a2,14832($a2)
    bal __glConvertResult
    li	$a3,3
    b	.L0d9dbc18
    ld	$ra,8($sp)
.L0d9dbda8:
    # Line 1117
    move	$a1,$zero
    li	$a5,2
    sll	$a2,$a7,0x2
    li	$a3,3
    # lw $t9, -25968($gp) # &__glConvertResult
    subu	$a2,$a2,$a7
    lui	$a6,0xffff
    sll	$a2,$a2,0x3
    ori	$a6,$a6,0x28d4
    addu	$a2,$t0,$a2
    bal __glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d9dbc18
    ld	$ra,8($sp)
.L0d9dbde0:
    # Line 1147
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,4
    sll	$a2,$a7,0x2
    li	$a3,3
    # lw $t9, -25968($gp) # &__glConvertResult
    addu	$a2,$a2,$a7
    lui	$a6,0xfffe
    sll	$a2,$a2,0x3
    ori	$a6,$a6,0x4bb0
    addu	$a2,$t0,$a2
    bal __glConvertResult
    addu	$a2,$a2,$a6
    b	.L0d9dbc18
    ld	$ra,8($sp)
.end __glim_GetMapiv

# Function: __glim_GetPixelMapfv
# Declared: Line 1167 (Source lines: 1168-1206)
# Address: 0x0d9dbe20 - 0x0d9dbff0 (Size: 464 bytes, Frame: 16)
.globl __glim_GetPixelMapfv
.ent __glim_GetPixelMapfv
__glim_GetPixelMapfv:
    # Line 1168
    move	$a5,$a1
    addiu	$sp,$sp,-16
    # Line 1173
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 1168
    lui	$v1,0x7
    # Line 1177
    addiu	$a6,$a0,-3184
    sd	$ra,8($sp)
    # Line 1168
    addiu	$v1,$v1,20332
    sd	$gp,0($sp)
    # Line 1173
    beq	$at,$v0,.L0d9dbfdc
    # Line 1168
    addu	$gp,$t9,$v1
    # Line 1177
    sltiu	$a7,$a6,10
    la	$a3,sub_0da40000
    sll	$a6,$a6,0x2
    addiu	$a3,$a3,20132
    beqz	$a7,.L0d9dbfc8
    addu	$a3,$a3,$a6
    lw	$a6,0($a3)
    # Line 1197
    sll	$a7,$a0,0x2
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    # Line 1177
    jr	$a6
    # Line 1197
    addu	$a7,$a4,$a7
.L0d9dbe80:
    # Line 1185
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    lui	$a6,0xffff
    addu	$a5,$a4,$a5
    addu	$a5,$a5,$a6
    # Line 1187
    lw	$a6,28352($a5)
    li	$a4,-1
    addiu	$a7,$a6,-1
    andi	$a0,$a6,0x3
    sra	$t0,$a6,0x2
    # Line 1185
    lw	$a5,28360($a5)
    # Line 1187
    bltz	$a7,.L0d9dbf40
    move	$a3,$a7
    beqz	$a0,.L0d9dbee4
    nop
.L0d9dbec0:
    # Line 1188
    lw	$a7,0($a5)
    mtc1	$a7,$f0
    cvt.s.w	$f0,$f0
    addiu	$a0,$a0,-1
    # Line 1187
    addiu	$a3,$a3,-1
    # Line 1188
    addiu	$a1,$a1,4
    addiu	$a5,$a5,4
    bnez	$a0,.L0d9dbec0
    swc1	$f0,-4($a1)
.L0d9dbee4:
    beqz	$t0,.L0d9dbf40
    move	$a0,$a5
    nop
.L0d9dbef0:
    lw	$t8,0($a0)
    mtc1	$t8,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a1)
    lw	$t3,4($a0)
    mtc1	$t3,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a1)
    lw	$t2,8($a0)
    mtc1	$t2,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a1)
    lw	$t1,12($a0)
    mtc1	$t1,$f1
    cvt.s.w	$f1,$f1
    # Line 1187
    addiu	$a3,$a3,-4
    # Line 1188
    addiu	$a1,$a1,16
    addiu	$a0,$a0,16
    # Line 1187
    bne	$a3,$a4,.L0d9dbef0
    # Line 1188
    swc1	$f1,-4($a1)
.L0d9dbf40:
    ld	$ra,8($sp)
.L0d9dbf44:
    # Line 1206
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9dbf50:
    # Line 1197
    lui	$t0,0xffff
    addu	$a7,$a7,$t0
    # Line 1199
    lw	$a6,28352($a7)
    li	$a4,-1
    addiu	$t9,$a6,-1
    andi	$t0,$a6,0x1
    sra	$t1,$a6,0x1
    # Line 1197
    lw	$a7,28360($a7)
    # Line 1199
    bltz	$t9,.L0d9dbf40
    move	$a3,$t9
    beqz	$t0,.L0d9dbf94
    nop
    # Line 1200
    lwc1	$f5,0($a7)
    # Line 1199
    addiu	$a3,$a6,-2
    # Line 1200
    addiu	$a1,$a5,4
    addiu	$a7,$a7,4
    swc1	$f5,0($a5)
.L0d9dbf94:
    beqz	$t1,.L0d9dbfc0
    move	$a0,$a7
    nop
.L0d9dbfa0:
    lwc1	$f7,0($a0)
    swc1	$f7,0($a1)
    # Line 1199
    addiu	$a3,$a3,-2
    # Line 1200
    lwc1	$f6,4($a0)
    addiu	$a1,$a1,8
    addiu	$a0,$a0,8
    # Line 1199
    bne	$a3,$a4,.L0d9dbfa0
    # Line 1200
    swc1	$f6,-4($a1)
.L0d9dbfc0:
    b	.L0d9dbf44
    ld	$ra,8($sp)
.L0d9dbfc8:
    # Line 1205
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dbf44
    ld	$ra,8($sp)
.L0d9dbfdc:
    # Line 1173
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dbf44
    ld	$ra,8($sp)
.end __glim_GetPixelMapfv

# Function: __glim_GetPixelMapuiv
# Declared: Line 1210 (Source lines: 1211-1246)
# Address: 0x0d9dbff0 - 0x0d9dc1f0 (Size: 512 bytes, Frame: 16)
.globl __glim_GetPixelMapuiv
.ent __glim_GetPixelMapuiv
__glim_GetPixelMapuiv:
    # Line 1211
    move	$a6,$a1
    addiu	$sp,$sp,-16
    # Line 1216
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 1211
    lui	$v1,0x7
    # Line 1225
    sll	$t0,$a0,0x2
    sd	$ra,8($sp)
    # Line 1211
    addiu	$v1,$v1,19868
    sd	$gp,0($sp)
    # Line 1216
    beq	$at,$v0,.L0d9dc1dc
    # Line 1211
    addu	$gp,$t9,$v1
    # Line 1220
    addiu	$a2,$a0,-3184
    move	$a3,$a1
    la	$a1,sub_0da40000
    sltiu	$a4,$a2,10
    sll	$a2,$a2,0x2
    addiu	$a1,$a1,20172
    beqz	$a4,.L0d9dc1c8
    addu	$a1,$a1,$a2
    lw	$a2,0($a1)
    jr	$a2
    # Line 1239
    li	$a4,-1
.L0d9dc04c:
    # Line 1225
    lui	$t1,0xffff
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$a5,$t0
    addu	$t0,$t0,$t1
    # Line 1227
    lw	$a7,28352($t0)
    addiu	$a4,$a7,-1
    andi	$t1,$a7,0x1
    sra	$t3,$a7,0x1
    # Line 1225
    lw	$t0,28360($t0)
    # Line 1227
    bltz	$a4,.L0d9dc0c0
    move	$a1,$a4
    beqz	$t1,.L0d9dc098
    li	$a4,-1
    addiu	$a1,$a7,-2
    # Line 1228
    lw	$t2,0($t0)
    addiu	$a3,$a6,4
    addiu	$t0,$t0,4
    sw	$t2,0($a6)
.L0d9dc098:
    beqz	$t3,.L0d9dc0c0
    move	$a0,$t0
.L0d9dc0a0:
    lw	$t9,0($a0)
    # Line 1227
    addiu	$a1,$a1,-2
    # Line 1228
    sw	$t9,0($a3)
    addiu	$a3,$a3,8
    lw	$t8,4($a0)
    addiu	$a0,$a0,8
    # Line 1227
    bne	$a1,$a4,.L0d9dc0a0
    # Line 1228
    sw	$t8,-4($a3)
.L0d9dc0c0:
    ld	$ra,8($sp)
.L0d9dc0c4:
    # Line 1246
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9dc0d0:
    # Line 1237
    lui	$a7,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a5,$a6
    addu	$a6,$a6,$a7
    # Line 1239
    lw	$a7,28352($a6)
    addiu	$ra,$a7,-1
    andi	$a0,$a7,0x3
    # Line 1237
    lw	$a6,28360($a6)
    # Line 1239
    bltz	$ra,.L0d9dc0c0
    move	$a1,$ra
    beqz	$a0,.L0d9dc138
    sra	$t1,$a7,0x2
.L0d9dc108:
    # Line 1240
    lwc1	$f1,0($a6)
    lwc1	$f2,3564($a5)
    lwc1	$f0,3540($a5)
    madd.s	$f0,$f0,$f1,$f2
    trunc.l.s	$f0,$f0
    addiu	$a0,$a0,-1
    # Line 1239
    addiu	$a1,$a1,-1
    # Line 1240
    addiu	$a3,$a3,4
    dmfc1	$t0,$f0
    addiu	$a6,$a6,4
    bnez	$a0,.L0d9dc108
    sw	$t0,-4($a3)
.L0d9dc138:
    beqz	$t1,.L0d9dc1c0
    move	$a0,$a6
.L0d9dc140:
    lwc1	$f13,0($a0)
    lwc1	$f14,3564($a5)
    lwc1	$f12,3540($a5)
    madd.s	$f12,$f12,$f13,$f14
    trunc.l.s	$f12,$f12
    dmfc1	$t9,$f12
    sw	$t9,0($a3)
    lwc1	$f10,4($a0)
    lwc1	$f11,3564($a5)
    lwc1	$f9,3540($a5)
    madd.s	$f9,$f9,$f10,$f11
    trunc.l.s	$f9,$f9
    dmfc1	$t8,$f9
    sw	$t8,4($a3)
    lwc1	$f7,8($a0)
    lwc1	$f8,3564($a5)
    lwc1	$f6,3540($a5)
    madd.s	$f6,$f6,$f7,$f8
    trunc.l.s	$f6,$f6
    dmfc1	$t3,$f6
    sw	$t3,8($a3)
    lwc1	$f4,12($a0)
    lwc1	$f5,3564($a5)
    lwc1	$f3,3540($a5)
    madd.s	$f3,$f3,$f4,$f5
    trunc.l.s	$f3,$f3
    # Line 1239
    addiu	$a1,$a1,-4
    # Line 1240
    addiu	$a3,$a3,16
    dmfc1	$t2,$f3
    addiu	$a0,$a0,16
    # Line 1239
    bne	$a1,$a4,.L0d9dc140
    # Line 1240
    sw	$t2,-4($a3)
.L0d9dc1c0:
    b	.L0d9dc0c4
    ld	$ra,8($sp)
.L0d9dc1c8:
    # Line 1245
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dc0c4
    ld	$ra,8($sp)
.L0d9dc1dc:
    # Line 1216
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dc0c4
    ld	$ra,8($sp)
.end __glim_GetPixelMapuiv

# Function: __glim_GetPixelMapusv
# Declared: Line 1250 (Source lines: 1251-1286)
# Address: 0x0d9dc1f0 - 0x0d9dc3f0 (Size: 512 bytes, Frame: 16)
.globl __glim_GetPixelMapusv
.ent __glim_GetPixelMapusv
__glim_GetPixelMapusv:
    # Line 1251
    move	$a6,$a1
    addiu	$sp,$sp,-16
    # Line 1256
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 1251
    lui	$v1,0x7
    # Line 1265
    sll	$t0,$a0,0x2
    sd	$ra,8($sp)
    # Line 1251
    addiu	$v1,$v1,19356
    sd	$gp,0($sp)
    # Line 1256
    beq	$at,$v0,.L0d9dc3dc
    # Line 1251
    addu	$gp,$t9,$v1
    # Line 1260
    addiu	$a2,$a0,-3184
    move	$a3,$a1
    la	$a1,sub_0da40000
    sltiu	$a4,$a2,10
    sll	$a2,$a2,0x2
    addiu	$a1,$a1,20212
    beqz	$a4,.L0d9dc3c8
    addu	$a1,$a1,$a2
    lw	$a2,0($a1)
    jr	$a2
    # Line 1279
    li	$a4,-1
.L0d9dc24c:
    # Line 1265
    lui	$t1,0xffff
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$a5,$t0
    addu	$t0,$t0,$t1
    # Line 1267
    lw	$a7,28352($t0)
    addiu	$a4,$a7,-1
    andi	$t1,$a7,0x1
    sra	$t3,$a7,0x1
    # Line 1265
    lw	$t0,28360($t0)
    # Line 1267
    bltz	$a4,.L0d9dc2c0
    move	$a1,$a4
    beqz	$t1,.L0d9dc298
    li	$a4,-1
    addiu	$a1,$a7,-2
    # Line 1268
    lw	$t2,0($t0)
    addiu	$a3,$a6,2
    addiu	$t0,$t0,4
    sh	$t2,0($a6)
.L0d9dc298:
    beqz	$t3,.L0d9dc2c0
    move	$a0,$t0
.L0d9dc2a0:
    lw	$t9,0($a0)
    # Line 1267
    addiu	$a1,$a1,-2
    # Line 1268
    sh	$t9,0($a3)
    addiu	$a3,$a3,4
    lw	$t8,4($a0)
    addiu	$a0,$a0,8
    # Line 1267
    bne	$a1,$a4,.L0d9dc2a0
    # Line 1268
    sh	$t8,-2($a3)
.L0d9dc2c0:
    ld	$ra,8($sp)
.L0d9dc2c4:
    # Line 1286
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9dc2d0:
    # Line 1277
    lui	$a7,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a5,$a6
    addu	$a6,$a6,$a7
    # Line 1279
    lw	$a7,28352($a6)
    addiu	$ra,$a7,-1
    andi	$a0,$a7,0x3
    # Line 1277
    lw	$a6,28360($a6)
    # Line 1279
    bltz	$ra,.L0d9dc2c0
    move	$a1,$ra
    beqz	$a0,.L0d9dc338
    sra	$t1,$a7,0x2
.L0d9dc308:
    # Line 1280
    lwc1	$f1,0($a6)
    lwc1	$f2,3556($a5)
    lwc1	$f0,3540($a5)
    madd.s	$f0,$f0,$f1,$f2
    trunc.w.s	$f0,$f0
    addiu	$a0,$a0,-1
    # Line 1279
    addiu	$a1,$a1,-1
    # Line 1280
    addiu	$a3,$a3,2
    mfc1	$t0,$f0
    addiu	$a6,$a6,4
    bnez	$a0,.L0d9dc308
    sh	$t0,-2($a3)
.L0d9dc338:
    beqz	$t1,.L0d9dc3c0
    move	$a0,$a6
.L0d9dc340:
    lwc1	$f13,0($a0)
    lwc1	$f14,3556($a5)
    lwc1	$f12,3540($a5)
    madd.s	$f12,$f12,$f13,$f14
    trunc.w.s	$f12,$f12
    mfc1	$t9,$f12
    sh	$t9,0($a3)
    lwc1	$f10,4($a0)
    lwc1	$f11,3556($a5)
    lwc1	$f9,3540($a5)
    madd.s	$f9,$f9,$f10,$f11
    trunc.w.s	$f9,$f9
    mfc1	$t8,$f9
    sh	$t8,2($a3)
    lwc1	$f7,8($a0)
    lwc1	$f8,3556($a5)
    lwc1	$f6,3540($a5)
    madd.s	$f6,$f6,$f7,$f8
    trunc.w.s	$f6,$f6
    mfc1	$t3,$f6
    sh	$t3,4($a3)
    lwc1	$f4,12($a0)
    lwc1	$f5,3556($a5)
    lwc1	$f3,3540($a5)
    madd.s	$f3,$f3,$f4,$f5
    trunc.w.s	$f3,$f3
    # Line 1279
    addiu	$a1,$a1,-4
    # Line 1280
    addiu	$a3,$a3,8
    mfc1	$t2,$f3
    addiu	$a0,$a0,16
    # Line 1279
    bne	$a1,$a4,.L0d9dc340
    # Line 1280
    sh	$t2,-2($a3)
.L0d9dc3c0:
    b	.L0d9dc2c4
    ld	$ra,8($sp)
.L0d9dc3c8:
    # Line 1285
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dc2c4
    ld	$ra,8($sp)
.L0d9dc3dc:
    # Line 1256
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dc2c4
    ld	$ra,8($sp)
.end __glim_GetPixelMapusv

# Function: __glConvertResult
# Declared: Line 1295 (Source lines: 1297-1449)
# Address: 0x0d9dc3f0 - 0x0d9dd000 (Size: 3088 bytes, Frame: 192)
.globl __glConvertResult
.ent __glConvertResult
__glConvertResult:
    # Line 1297
    addiu	$sp,$sp,-64
    sd	$s0,48($sp)
    sd	$s2,32($sp)
    sd	$ra,24($sp)
    sd	$s3,8($sp)
    lui	$at,0x7
    move	$s3,$a0
    sd	$s1,0($sp)
    addiu	$at,$at,18844
    sd	$gp,16($sp)
    # Line 1300
    beqz	$a1,.L0d9dc5d8
    # Line 1297
    addu	$gp,$t9,$at
    # Line 1300
    li	$v0,5
    beq	$a1,$v0,.L0d9dc6b4
    li	$v1,6
    beq	$a1,$v1,.L0d9dc4ec
    # Line 1356
    li	$ra,1
    # Line 1300
    li	$a0,3
    beq	$a1,$a0,.L0d9dc78c
    li	$a7,4
    bne	$a1,$a7,.L0d9dc5b8
    # Line 1424
    li	$a1,1
    beq	$a3,$a1,.L0d9dc838
    li	$a6,2
    beq	$a3,$a6,.L0d9dc934
    nop
    beq	$a3,$a0,.L0d9dcabc
    nop
    bne	$a3,$a7,.L0d9dc5bc
    ld	$s0,48($sp)
    # Line 1441
    blez	$a5,.L0d9dc5b8
    andi	$a7,$a5,0x3
    move	$a1,$a4
    move	$a0,$a2
    beqz	$a7,.L0d9dc49c
    addu	$a3,$a5,$a4
.L0d9dc480:
    addiu	$a7,$a7,-1
    # Line 1442
    lbu	$t0,0($a0)
    # Line 1441
    addiu	$a1,$a1,1
    addiu	$a0,$a0,1
    # Line 1442
    sltu	$t0,$zero,$t0
    bnez	$a7,.L0d9dc480
    sb	$t0,-1($a1)
.L0d9dc49c:
    sra	$t1,$a5,0x2
    beqz	$t1,.L0d9dc4e4
    move	$a4,$a1
.L0d9dc4a8:
    lbu	$t9,0($a0)
    sltu	$t9,$zero,$t9
    sb	$t9,0($a4)
    lbu	$t8,1($a0)
    sltu	$t8,$zero,$t8
    sb	$t8,1($a4)
    lbu	$t3,2($a0)
    sltu	$t3,$zero,$t3
    sb	$t3,2($a4)
    # Line 1441
    addiu	$a4,$a4,4
    # Line 1442
    lbu	$t2,3($a0)
    # Line 1441
    addiu	$a0,$a0,4
    # Line 1442
    sltu	$t2,$zero,$t2
    # Line 1441
    bne	$a4,$a3,.L0d9dc4a8
    # Line 1442
    sb	$t2,-1($a4)
.L0d9dc4e4:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc4ec:
    # Line 1356
    beq	$a3,$ra,.L0d9dce50
    li	$at,2
    beq	$a3,$at,.L0d9dceb0
    li	$v0,3
    beq	$a3,$v0,.L0d9dcf20
    li	$v1,4
    bne	$a3,$v1,.L0d9dc5bc
    ld	$s0,48($sp)
    # Line 1392
    blez	$a5,.L0d9dc5b8
    mtc1	$zero,$f4
    move	$s1,$a2
    andi	$a0,$a5,0x3
    move	$a1,$a4
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dc550
    addu	$s0,$s0,$a2
.L0d9dc52c:
    # Line 1393
    lwc1	$f0,0($s1)
    c.eq.s	$f0,$f4
    addiu	$a0,$a0,-1
    li	$t8,1
    # Line 1392
    addiu	$a1,$a1,1
    # Line 1393
    movt	$t8,$zero,$fcc0
    # Line 1392
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dc52c
    # Line 1393
    sb	$t8,-1($a1)
.L0d9dc550:
    sra	$t9,$a5,0x2
    beqz	$t9,.L0d9dc5b8
    move	$a4,$a1
.L0d9dc55c:
    lwc1	$f5,0($s1)
    c.eq.s $f5,$f4
    li	$v1,1
    movt	$v1,$zero,$fcc4
    sb	$v1,0($a4)
    lwc1	$f3,4($s1)
    c.eq.s $f3,$f4
    li	$v0,1
    movt	$v0,$zero,$fcc3
    sb	$v0,1($a4)
    lwc1	$f2,8($s1)
    c.eq.s $f2,$f4
    li	$at,1
    movt	$at,$zero,$fcc2
    sb	$at,2($a4)
    lwc1	$f1,12($s1)
    c.eq.s $f1,$f4
    li	$ra,1
    # Line 1392
    addiu	$s1,$s1,16
    addiu	$a4,$a4,4
    # Line 1393
    movt	$ra,$zero,$fcc1
    # Line 1392
    bne	$s1,$s0,.L0d9dc55c
    # Line 1393
    sb	$ra,-1($a4)
.L0d9dc5b8:
    ld	$s0,48($sp)
.L0d9dc5bc:
    ld	$s2,32($sp)
    ld	$ra,24($sp)
    ld	$s3,8($sp)
    ld	$s1,0($sp)
    # Line 1449
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9dc5d8:
    # Line 1302
    li	$a0,1
    beq	$a3,$a0,.L0d9dc8d4
    li	$a1,2
    beq	$a3,$a1,.L0d9dca34
    li	$a6,3
    beq	$a3,$a6,.L0d9dcba4
    li	$a7,4
    bne	$a3,$a7,.L0d9dc5bc
    ld	$s0,48($sp)
    # Line 1322
    blez	$a5,.L0d9dc5bc
    ld	$s0,48($sp)
    mtc1	$zero,$f4
    move	$s1,$a2
    andi	$a0,$a5,0x3
    move	$a1,$a4
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dc644
    addu	$s0,$s0,$a2
.L0d9dc620:
    # Line 1323
    lwc1	$f6,0($s1)
    c.eq.s $f6,$f4
    addiu	$a0,$a0,-1
    li	$t8,1
    # Line 1322
    addiu	$a1,$a1,1
    # Line 1323
    movt	$t8,$zero,$fcc5
    # Line 1322
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dc620
    # Line 1323
    sb	$t8,-1($a1)
.L0d9dc644:
    sra	$t9,$a5,0x2
    beqz	$t9,.L0d9dc6ac
    move	$a4,$a1
.L0d9dc650:
    lwc1	$f10,0($s1)
    c.eq.s $f10,$f4
    li	$v1,1
    movt	$v1,$zero,$fcc1
    sb	$v1,0($a4)
    lwc1	$f9,4($s1)
    c.eq.s	$f9,$f4
    li	$v0,1
    movt	$v0,$zero,$fcc0
    sb	$v0,1($a4)
    lwc1	$f8,8($s1)
    c.eq.s $f8,$f4
    li	$at,1
    movt	$at,$zero,$fcc7
    sb	$at,2($a4)
    lwc1	$f7,12($s1)
    c.eq.s $f7,$f4
    li	$ra,1
    # Line 1322
    addiu	$s1,$s1,16
    addiu	$a4,$a4,4
    # Line 1323
    movt	$ra,$zero,$fcc6
    # Line 1322
    bne	$s1,$s0,.L0d9dc650
    # Line 1323
    sb	$ra,-1($a4)
.L0d9dc6ac:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc6b4:
    # Line 1330
    li	$a0,1
    beq	$a3,$a0,.L0d9dc9d0
    li	$a1,2
    beq	$a3,$a1,.L0d9dcb18
    li	$a6,3
    beq	$a3,$a6,.L0d9dcd04
    li	$a7,4
    bne	$a3,$a7,.L0d9dc5bc
    ld	$s0,48($sp)
    # Line 1348
    blez	$a5,.L0d9dc5b8
    mtc1	$zero,$f4
    move	$s1,$a2
    andi	$a0,$a5,0x3
    move	$a1,$a4
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dc71c
    addu	$s0,$s0,$a2
.L0d9dc6f8:
    # Line 1349
    lwc1	$f11,0($s1)
    c.eq.s $f11,$f4
    addiu	$a0,$a0,-1
    li	$t8,1
    # Line 1348
    addiu	$a1,$a1,1
    # Line 1349
    movt	$t8,$zero,$fcc2
    # Line 1348
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dc6f8
    # Line 1349
    sb	$t8,-1($a1)
.L0d9dc71c:
    sra	$t9,$a5,0x2
    beqz	$t9,.L0d9dc784
    move	$a4,$a1
.L0d9dc728:
    lwc1	$f15,0($s1)
    c.eq.s $f15,$f4
    li	$v1,1
    movt	$v1,$zero,$fcc6
    sb	$v1,0($a4)
    lwc1	$f14,4($s1)
    c.eq.s $f14,$f4
    li	$v0,1
    movt	$v0,$zero,$fcc5
    sb	$v0,1($a4)
    lwc1	$f13,8($s1)
    c.eq.s $f13,$f4
    li	$at,1
    movt	$at,$zero,$fcc4
    sb	$at,2($a4)
    lwc1	$f12,12($s1)
    c.eq.s $f12,$f4
    li	$ra,1
    # Line 1348
    addiu	$s1,$s1,16
    addiu	$a4,$a4,4
    # Line 1349
    movt	$ra,$zero,$fcc3
    # Line 1348
    bne	$s1,$s0,.L0d9dc728
    # Line 1349
    sb	$ra,-1($a4)
.L0d9dc784:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc78c:
    # Line 1400
    li	$a1,1
    beq	$a3,$a1,.L0d9dcc68
    li	$a6,2
    beq	$a3,$a6,.L0d9dcd58
    nop
    beq	$a3,$a0,.L0d9dcdf4
    li	$a7,4
    bne	$a3,$a7,.L0d9dc5bc
    ld	$s0,48($sp)
    # Line 1417
    blez	$a5,.L0d9dc5b8
    move	$s1,$a2
    andi	$a0,$a5,0x3
    move	$a1,$a4
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dc7e8
    addu	$s0,$s0,$a2
.L0d9dc7cc:
    addiu	$a0,$a0,-1
    # Line 1418
    lw	$t8,0($s1)
    # Line 1417
    addiu	$s1,$s1,4
    addiu	$a1,$a1,1
    # Line 1418
    sltu	$t8,$zero,$t8
    bnez	$a0,.L0d9dc7cc
    sb	$t8,-1($a1)
.L0d9dc7e8:
    sra	$t9,$a5,0x2
    beqz	$t9,.L0d9dc830
    move	$a4,$a1
.L0d9dc7f4:
    lw	$v1,0($s1)
    sltu	$v1,$zero,$v1
    sb	$v1,0($a4)
    lw	$v0,4($s1)
    sltu	$v0,$zero,$v0
    sb	$v0,1($a4)
    lw	$at,8($s1)
    # Line 1417
    addiu	$s1,$s1,16
    # Line 1418
    sltu	$at,$zero,$at
    sb	$at,2($a4)
    lw	$ra,-4($s1)
    # Line 1417
    addiu	$a4,$a4,4
    # Line 1418
    sltu	$ra,$zero,$ra
    # Line 1417
    bne	$s1,$s0,.L0d9dc7f4
    # Line 1418
    sb	$ra,-1($a4)
.L0d9dc830:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc838:
    # Line 1426
    blez	$a5,.L0d9dc5b8
    move	$s2,$a4
    andi	$a3,$a5,0x3
    move	$a0,$a2
    sll	$a1,$a5,0x2
    beqz	$a3,.L0d9dc874
    addu	$a1,$a1,$a4
.L0d9dc854:
    # Line 1427
    lbu	$a2,0($a0)
    mtc1	$a2,$f16
    cvt.s.w	$f16,$f16
    addiu	$a3,$a3,-1
    # Line 1426
    addiu	$s2,$s2,4
    addiu	$a0,$a0,1
    bnez	$a3,.L0d9dc854
    # Line 1427
    swc1	$f16,-4($s2)
.L0d9dc874:
    sra	$a3,$a5,0x2
    beqz	$a3,.L0d9dc8cc
    nop
.L0d9dc880:
    lbu	$a7,0($a0)
    mtc1	$a7,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,0($s2)
    lbu	$a6,1($a0)
    mtc1	$a6,$f19
    cvt.s.w	$f19,$f19
    swc1	$f19,4($s2)
    lbu	$a5,2($a0)
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,8($s2)
    lbu	$a4,3($a0)
    mtc1	$a4,$f17
    cvt.s.w	$f17,$f17
    # Line 1426
    addiu	$s2,$s2,16
    addiu	$a0,$a0,4
    bne	$s2,$a1,.L0d9dc880
    # Line 1427
    swc1	$f17,-4($s2)
.L0d9dc8cc:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc8d4:
    # Line 1304
    blez	$a5,.L0d9dc5b8
    move	$s2,$a4
    andi	$t8,$a5,0x1
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$t8,.L0d9dc900
    addu	$s0,$s0,$a2
    # Line 1305
    lwc1	$f23,0($a2)
    # Line 1304
    addiu	$s1,$a2,4
    addiu	$s2,$a4,4
    # Line 1305
    swc1	$f23,0($a4)
.L0d9dc900:
    sra	$t9,$a5,0x1
    beqz	$t9,.L0d9dc92c
    nop
    nop
.L0d9dc910:
    lwc1	$f27,0($s1)
    # Line 1304
    addiu	$s1,$s1,8
    # Line 1305
    swc1	$f27,0($s2)
    lwc1	$f25,-4($s1)
    # Line 1304
    addiu	$s2,$s2,8
    bne	$s1,$s0,.L0d9dc910
    # Line 1305
    swc1	$f25,-4($s2)
.L0d9dc92c:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc934:
    # Line 1431
    blez	$a5,.L0d9dc5b8
    move	$a1,$a4
    andi	$a7,$a5,0x3
    move	$a0,$a2
    sll	$a3,$a5,0x3
    beqz	$a7,.L0d9dc970
    addu	$a3,$a3,$a4
.L0d9dc950:
    # Line 1432
    lbu	$a4,0($a0)
    mtc1	$a4,$f29
    addiu	$a7,$a7,-1
    # Line 1431
    addiu	$a1,$a1,8
    # Line 1432
    cvt.d.w	$f29,$f29
    # Line 1431
    addiu	$a0,$a0,1
    bnez	$a7,.L0d9dc950
    # Line 1432
    sdc1	$f29,-8($a1)
.L0d9dc970:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0d9dc9c8
    move	$s1,$a1
.L0d9dc97c:
    lbu	$t2,0($a0)
    mtc1	$t2,$f2
    cvt.d.w	$f2,$f2
    sdc1	$f2,0($s1)
    lbu	$t1,1($a0)
    mtc1	$t1,$f1
    cvt.d.w	$f1,$f1
    sdc1	$f1,8($s1)
    lbu	$t0,2($a0)
    mtc1	$t0,$f0
    cvt.d.w	$f0,$f0
    sdc1	$f0,16($s1)
    lbu	$a7,3($a0)
    mtc1	$a7,$f31
    # Line 1431
    addiu	$s1,$s1,32
    # Line 1432
    cvt.d.w	$f31,$f31
    # Line 1431
    addiu	$a0,$a0,4
    bne	$s1,$a3,.L0d9dc97c
    # Line 1432
    sdc1	$f31,-8($s1)
.L0d9dc9c8:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dc9d0:
    # Line 1332
    blez	$a5,.L0d9dc5bc
    ld	$s0,48($sp)
    move	$s2,$a4
    andi	$t8,$a5,0x1
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$t8,.L0d9dca00
    addu	$s0,$s0,$a2
    # Line 1333
    lwc1	$f3,0($a2)
    # Line 1332
    addiu	$s1,$a2,4
    addiu	$s2,$a4,4
    # Line 1333
    swc1	$f3,0($a4)
.L0d9dca00:
    sra	$t9,$a5,0x1
    beqz	$t9,.L0d9dca2c
    nop
    nop
.L0d9dca10:
    lwc1	$f5,0($s1)
    # Line 1332
    addiu	$s1,$s1,8
    # Line 1333
    swc1	$f5,0($s2)
    lwc1	$f4,-4($s1)
    # Line 1332
    addiu	$s2,$s2,8
    bne	$s1,$s0,.L0d9dca10
    # Line 1333
    swc1	$f4,-4($s2)
.L0d9dca2c:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dca34:
    # Line 1309
    blez	$a5,.L0d9dc5b8
    move	$a1,$a4
    andi	$a0,$a5,0x3
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dca6c
    addu	$s0,$s0,$a2
.L0d9dca50:
    # Line 1310
    lwc1	$f6,0($s1)
    addiu	$a0,$a0,-1
    # Line 1309
    addiu	$a1,$a1,8
    # Line 1310
    cvt.d.s	$f6,$f6
    # Line 1309
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dca50
    # Line 1310
    sdc1	$f6,-8($a1)
.L0d9dca6c:
    sra	$t8,$a5,0x2
    beqz	$t8,.L0d9dcab4
    move	$a4,$a1
.L0d9dca78:
    lwc1	$f10,0($s1)
    cvt.d.s	$f10,$f10
    sdc1	$f10,0($a4)
    lwc1	$f9,4($s1)
    cvt.d.s	$f9,$f9
    sdc1	$f9,8($a4)
    lwc1	$f8,8($s1)
    cvt.d.s	$f8,$f8
    sdc1	$f8,16($a4)
    lwc1	$f7,12($s1)
    # Line 1309
    addiu	$s1,$s1,16
    addiu	$a4,$a4,32
    # Line 1310
    cvt.d.s	$f7,$f7
    # Line 1309
    bne	$s1,$s0,.L0d9dca78
    # Line 1310
    sdc1	$f7,-8($a4)
.L0d9dcab4:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcabc:
    # Line 1436
    blez	$a5,.L0d9dc5b8
    move	$s2,$a4
    andi	$a3,$a5,0x1
    move	$a0,$a2
    sll	$a1,$a5,0x2
    beqz	$a3,.L0d9dcae8
    addu	$a1,$a1,$a4
    # Line 1437
    lbu	$a6,0($a2)
    # Line 1436
    addiu	$s2,$a4,4
    addiu	$a0,$a2,1
    # Line 1437
    sw	$a6,0($a4)
.L0d9dcae8:
    sra	$a7,$a5,0x1
    beqz	$a7,.L0d9dcb10
    nop
.L0d9dcaf4:
    # Line 1436
    addiu	$s2,$s2,8
    # Line 1437
    lbu	$t1,0($a0)
    sw	$t1,-8($s2)
    lbu	$t0,1($a0)
    # Line 1436
    addiu	$a0,$a0,2
    bne	$s2,$a1,.L0d9dcaf4
    # Line 1437
    sw	$t0,-4($s2)
.L0d9dcb10:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcb18:
    # Line 1337
    blez	$a5,.L0d9dc5bc
    ld	$s0,48($sp)
    move	$a1,$a4
    andi	$a0,$a5,0x3
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dcb54
    addu	$s0,$s0,$a2
.L0d9dcb38:
    # Line 1338
    lwc1	$f11,0($s1)
    addiu	$a0,$a0,-1
    # Line 1337
    addiu	$a1,$a1,8
    # Line 1338
    cvt.d.s	$f11,$f11
    # Line 1337
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dcb38
    # Line 1338
    sdc1	$f11,-8($a1)
.L0d9dcb54:
    sra	$t8,$a5,0x2
    beqz	$t8,.L0d9dcb9c
    move	$a4,$a1
.L0d9dcb60:
    lwc1	$f15,0($s1)
    cvt.d.s	$f15,$f15
    sdc1	$f15,0($a4)
    lwc1	$f14,4($s1)
    cvt.d.s	$f14,$f14
    sdc1	$f14,8($a4)
    lwc1	$f13,8($s1)
    cvt.d.s	$f13,$f13
    sdc1	$f13,16($a4)
    lwc1	$f12,12($s1)
    # Line 1337
    addiu	$s1,$s1,16
    addiu	$a4,$a4,32
    # Line 1338
    cvt.d.s	$f12,$f12
    # Line 1337
    bne	$s1,$s0,.L0d9dcb60
    # Line 1338
    sdc1	$f12,-8($a4)
.L0d9dcb9c:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcba4:
    # Line 1314
    blez	$a5,.L0d9dc5bc
    ld	$s0,48($sp)
    dmtc1	$zero,$f7
    move	$s2,$a4
    andi	$t8,$a5,0x1
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$t8,.L0d9dcbf8
    addu	$s0,$s0,$a2
    lwc1	$f4,0($a2)
    cvt.d.s	$f16,$f4
    c.le.d $f7,$f16
    bc1f .L0d9dcbe4
    lwc1	$f5,3540($s3)
    # Line 1315
    b	.L0d9dcbe8
    add.s	$f6,$f5,$f4
.L0d9dcbe4:
    sub.s	$f6,$f4,$f5
.L0d9dcbe8:
    # Line 1314
    addiu	$s2,$s2,4
    # Line 1315
    trunc.w.s	$f17,$f6
    # Line 1314
    addiu	$s1,$s1,4
    # Line 1315
    swc1	$f17,-4($s2)
.L0d9dcbf8:
    sra	$t9,$a5,0x1
    bnezl	$t9,.L0d9dcc20
    # Line 1314
    lwc1	$f4,0($s1)
.L0d9dcc04:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcc0c:
    # Line 1315
    sub.s	$f6,$f4,$f5
.L0d9dcc10:
    trunc.w.s	$f18,$f6
    # Line 1314
    beq	$s1,$s0,.L0d9dcc04
    # Line 1315
    swc1	$f18,-4($s2)
    # Line 1314
    lwc1	$f4,0($s1)
.L0d9dcc20:
    cvt.d.s	$f19,$f4
    c.le.d	$f7,$f19
    bc1f	.L0d9dcc38
    lwc1	$f5,3540($s3)
    # Line 1315
    b	.L0d9dcc3c
    add.s	$f6,$f5,$f4
.L0d9dcc38:
    sub.s	$f6,$f4,$f5
.L0d9dcc3c:
    trunc.w.s	$f23,$f6
    swc1	$f23,0($s2)
    # Line 1314
    lwc1	$f4,4($s1)
    cvt.d.s	$f21,$f4
    c.le.d $f7,$f21
    addiu	$s1,$s1,8
    addiu	$s2,$s2,8
    bc1f .L0d9dcc0c
    lwc1	$f5,3540($s3)
    # Line 1315
    b	.L0d9dcc10
    add.s	$f6,$f5,$f4
.L0d9dcc68:
    # Line 1402
    blez	$a5,.L0d9dc5b8
    move	$s2,$a4
    andi	$a0,$a5,0x3
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dcca4
    addu	$s0,$s0,$a2
.L0d9dcc84:
    # Line 1403
    lw	$t8,0($s1)
    mtc1	$t8,$f25
    cvt.s.w	$f25,$f25
    addiu	$a0,$a0,-1
    # Line 1402
    addiu	$s2,$s2,4
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dcc84
    # Line 1403
    swc1	$f25,-4($s2)
.L0d9dcca4:
    sra	$t9,$a5,0x2
    beqz	$t9,.L0d9dccfc
    nop
.L0d9dccb0:
    lw	$v1,0($s1)
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,0($s2)
    lw	$v0,4($s1)
    mtc1	$v0,$f31
    cvt.s.w	$f31,$f31
    swc1	$f31,4($s2)
    lw	$at,8($s1)
    mtc1	$at,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,8($s2)
    lw	$ra,12($s1)
    mtc1	$ra,$f27
    cvt.s.w	$f27,$f27
    # Line 1402
    addiu	$s1,$s1,16
    addiu	$s2,$s2,16
    bne	$s1,$s0,.L0d9dccb0
    # Line 1403
    swc1	$f27,-4($s2)
.L0d9dccfc:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcd04:
    # Line 1342
    blez	$a5,.L0d9dc5bc
    ld	$s0,48($sp)
    move	$s1,$a2
    sll	$s0,$a5,0x2
    move	$s2,$a4
    addu	$s0,$s0,$a2
    nop
.L0d9dcd20:
    # Line 1343
    lwc1	$f14,0($s1)
    lwc1	$f13,3564($s3)
    lwc1	$f12,3540($s3)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 1342
    addiu	$s1,$s1,4
    addiu	$s2,$s2,4
    # Line 1343
    trunc.w.s	$f15,$f0
    # Line 1342
    bne	$s1,$s0,.L0d9dcd20
    # Line 1343
    swc1	$f15,-4($s2)
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcd58:
    # Line 1407
    blez	$a5,.L0d9dc5b8
    move	$a1,$a4
    andi	$a0,$a5,0x3
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$a0,.L0d9dcd94
    addu	$s0,$s0,$a2
.L0d9dcd74:
    # Line 1408
    lw	$t8,0($s1)
    mtc1	$t8,$f16
    addiu	$a0,$a0,-1
    # Line 1407
    addiu	$a1,$a1,8
    # Line 1408
    cvt.d.w	$f16,$f16
    # Line 1407
    addiu	$s1,$s1,4
    bnez	$a0,.L0d9dcd74
    # Line 1408
    sdc1	$f16,-8($a1)
.L0d9dcd94:
    sra	$t9,$a5,0x2
    beqz	$t9,.L0d9dcdec
    move	$a4,$a1
.L0d9dcda0:
    lw	$v1,0($s1)
    mtc1	$v1,$f21
    cvt.d.w	$f21,$f21
    sdc1	$f21,0($a4)
    lw	$v0,4($s1)
    mtc1	$v0,$f19
    cvt.d.w	$f19,$f19
    sdc1	$f19,8($a4)
    lw	$at,8($s1)
    mtc1	$at,$f18
    cvt.d.w	$f18,$f18
    sdc1	$f18,16($a4)
    lw	$ra,12($s1)
    mtc1	$ra,$f17
    # Line 1407
    addiu	$s1,$s1,16
    addiu	$a4,$a4,32
    # Line 1408
    cvt.d.w	$f17,$f17
    # Line 1407
    bne	$s1,$s0,.L0d9dcda0
    # Line 1408
    sdc1	$f17,-8($a4)
.L0d9dcdec:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dcdf4:
    # Line 1412
    blez	$a5,.L0d9dc5b8
    move	$s2,$a4
    andi	$t8,$a5,0x1
    move	$s1,$a2
    sll	$s0,$a5,0x2
    beqz	$t8,.L0d9dce20
    addu	$s0,$s0,$a2
    # Line 1413
    lw	$t9,0($a2)
    # Line 1412
    addiu	$s1,$a2,4
    addiu	$s2,$a4,4
    # Line 1413
    sw	$t9,0($a4)
.L0d9dce20:
    sra	$ra,$a5,0x1
    beqz	$ra,.L0d9dce48
    nop
.L0d9dce2c:
    lw	$v0,0($s1)
    # Line 1412
    addiu	$s1,$s1,8
    # Line 1413
    sw	$v0,0($s2)
    # Line 1412
    addiu	$s2,$s2,8
    # Line 1413
    lw	$at,-4($s1)
    # Line 1412
    bne	$s1,$s0,.L0d9dce2c
    # Line 1413
    sw	$at,-4($s2)
.L0d9dce48:
    b	.L0d9dc5bc
    ld	$s0,48($sp)
.L0d9dce50:
    # Line 1358
    lwc1	$f2,30800($a0)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 1360
    lwc1	$f0,30804($a0)
    lwc1	$f31,4($a2)
    mul.s	$f31,$f31,$f0
    swc1	$f31,4($a4)
    # Line 1362
    lwc1	$f29,30808($a0)
    lwc1	$f27,8($a2)
    mul.s	$f27,$f27,$f29
    swc1	$f27,8($a4)
    # Line 1364
    lwc1	$f25,30812($a0)
    lwc1	$f23,12($a2)
    ld	$ra,24($sp)
    move	$s0,$s0
    # Line 1449
    ld	$gp,16($sp)
    move	$s2,$s2
    move	$s1,$s1
    ld	$s3,8($sp)
    # Line 1364
    mul.s	$f23,$f23,$f25
    # Line 1449
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1364
    swc1	$f23,12($a4)
.L0d9dceb0:
    # Line 1368
    lwc1	$f10,30800($a0)
    lwc1	$f9,0($a2)
    mul.s	$f9,$f9,$f10
    cvt.d.s	$f9,$f9
    sdc1	$f9,0($a4)
    # Line 1370
    lwc1	$f8,30804($a0)
    lwc1	$f7,4($a2)
    mul.s	$f7,$f7,$f8
    cvt.d.s	$f7,$f7
    sdc1	$f7,8($a4)
    # Line 1372
    lwc1	$f6,30808($a0)
    lwc1	$f5,8($a2)
    mul.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,16($a4)
    # Line 1374
    lwc1	$f4,30812($a0)
    lwc1	$f3,12($a2)
    ld	$ra,24($sp)
    mul.s	$f3,$f3,$f4
    move	$s0,$s0
    # Line 1449
    ld	$gp,16($sp)
    move	$s2,$s2
    move	$s1,$s1
    ld	$s3,8($sp)
    # Line 1374
    cvt.d.s	$f3,$f3
    # Line 1449
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1374
    sdc1	$f3,24($a4)
.L0d9dcf20:
    sd	$a2,56($sp)
    # Line 1378
    ld	$s0,56($sp)
    lwc1	$f15,30800($a0)
    lwc1	$f14,0($s0)
    lwc1	$f13,3564($a0)
    lwc1	$f12,3540($a0)
    mul.s	$f14,$f14,$f15
    # lw $t9, -22848($gp) # &floorf
    sd	$a4,40($sp)
    mul.s	$f13,$f13,$f14
    move	$s2,$s2
    ld	$s1,40($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    swc1	$f16,0($s1)
    # Line 1381
    lwc1	$f14,4($s0)
    lwc1	$f15,30804($s3)
    lwc1	$f13,3564($s3)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f14,$f14,$f15
    lwc1	$f12,3540($s3)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    swc1	$f16,4($s1)
    # Line 1384
    lwc1	$f14,8($s0)
    lwc1	$f15,30808($s3)
    lwc1	$f13,3564($s3)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f14,$f14,$f15
    lwc1	$f12,3540($s3)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    swc1	$f16,8($s1)
    # Line 1387
    lwc1	$f14,12($s0)
    lwc1	$f15,30812($s3)
    lwc1	$f13,3564($s3)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f14,$f14,$f15
    lwc1	$f12,3540($s3)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$s0,48($sp)
    # Line 1449
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    ld	$s3,8($sp)
    # Line 1387
    trunc.w.s	$f17,$f0
    swc1	$f17,12($s1)
    # Line 1449
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glConvertResult

# Function: __glDoGet
# Declared: Line 1456 (Source lines: 1457-2302)
# Address: 0x0d9dd000 - 0x0d9e09f4 (Size: 14836 bytes, Frame: 224)
.globl __glDoGet
.ent __glDoGet
__glDoGet:
    # Line 1457
    addiu	$sp,$sp,-1760
    sd	$s0,1704($sp)
    move	$a3,$a2
    # Line 1465
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 1457
    lui	$v1,0x7
    move	$a4,$a1
    sd	$ra,1720($sp)
    addiu	$v1,$v1,15756
    sd	$gp,1712($sp)
    # Line 1465
    beq	$at,$v0,.L0d9dd788
    # Line 1457
    addu	$gp,$t9,$v1
    # Line 1470
    sltiu	$a1,$a0,3379
    bnez	$a1,.L0d9dd0b0
    sltiu	$a6,$a0,3008
    sltiu	$a2,$a0,3380
    beqz	$a2,.L0d9dd11c
    li	$a1,0x8020
    # Line 1538
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1537
    lw	$a5,3724($s0)
    addiu	$t8,$sp,0
    # Line 1538
    addiu	$t1,$sp,400
    # Line 1537
    sw	$a5,0($sp)
    addiu	$a7,$sp,4
.L0d9dd06c:
    # Line 2286
    addiu	$a0,$sp,400
    addiu	$a6,$sp,504
    addiu	$a1,$sp,904
    bne	$a7,$t8,.L0d9dd234
    addiu	$a2,$sp,1304
    # Line 2290
    bne	$t0,$a2,.L0d9dd2dc
    # Line 2293
    nop	# was lw $t9, -25968($gp) # &__glConvertResult
    bne	$t1,$a0,.L0d9dd338
    # Line 2296
    nop	# was lw $t9, -25968($gp) # &__glConvertResult
    bne	$t2,$a1,.L0d9dd3ac
    # Line 2299
    nop	# was lw $t9, -25968($gp) # &__glConvertResult
    bne	$t3,$a6,.L0d9dd190
    ld	$ra,1720($sp)
.L0d9dd0a0:
    # Line 2285
    ld	$gp,1712($sp)
    ld	$s0,1704($sp)
    jr	$ra
    addiu	$sp,$sp,1760
.L0d9dd0b0:
    # Line 1470
    bnez	$a6,.L0d9dd158
    sltiu	$t1,$a0,2900
    sltiu	$a7,$a0,3009
    bnez	$a7,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t0,$a0,3252
    bnez	$t0,.L0d9dd2f8
    sltiu	$a6,$a0,3120
    sltiu	$t1,$a0,3253
    bnez	$t1,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    # Line 1470
    sltiu	$t2,$a0,3345
    bnez	$t2,.L0d9dd66c
    sltiu	$t1,$a0,3316
    sltiu	$t3,$a0,3346
    beqz	$t3,.L0d9dd9ec
    sltiu	$t3,$a0,3354
    # Line 1954
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1953
    lbu	$t9,761($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1954
    b	.L0d9dd06c
    # Line 1953
    addiu	$t1,$t1,1
.L0d9dd11c:
    # Line 1470
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9dd1b4
    sltiu	$a6,$a0,3509
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9dd3d0
    # Line 2005
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2004
    lwc1	$f0,696($s0)
    # Line 2005
    addiu	$t1,$sp,400
    # Line 2004
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2005
    b	.L0d9dd06c
    # Line 2004
    swc1	$f0,1304($sp)
.L0d9dd158:
    # Line 1470
    bnez	$t1,.L0d9dd258
    sltiu	$a6,$a0,2852
    sltiu	$t2,$a0,2901
    beqz	$t2,.L0d9dd40c
    sltiu	$ra,$a0,2962
    # Line 1677
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1676
    lw	$t9,1392($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1677
    b	.L0d9dd06c
    # Line 1676
    addiu	$a7,$sp,4
.L0d9dd190:
    # Line 2302
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$s0
    move	$a2,$a6
    li	$a1,6
    subu	$a5,$t3,$a6
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9dd1b4:
    # Line 1470
    bnez	$a6,.L0d9dd444
    sltiu	$v1,$a0,3418
    sltiu	$a7,$a0,3510
    bnez	$a7,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t0,$a0,12293
    bnez	$t0,.L0d9dd6dc
    sltiu	$t1,$a0,12294
    bnez	$t1,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a1,0x8005
    sltu	$t2,$a0,$a1
    bnez	$t2,.L0d9ddba0
    sltu	$t3,$a1,$a0
    bnez	$t3,.L0d9de288
    li	$a1,0x801c
    # Line 2167
    lwc1	$f4,1840($s0)
    swc1	$f4,904($sp)
    # Line 2168
    lwc1	$f3,1844($s0)
    swc1	$f3,908($sp)
    # Line 2169
    lwc1	$f2,1848($s0)
    # Line 2171
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 2169
    swc1	$f2,912($sp)
    # Line 2171
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2170
    lwc1	$f1,1852($s0)
    # Line 2171
    addiu	$t1,$sp,400
    # Line 2167
    addiu	$t2,$sp,904
    # Line 2170
    addiu	$t2,$t2,16
    # Line 2171
    b	.L0d9dd06c
    # Line 2170
    swc1	$f1,916($sp)
.L0d9dd234:
    # Line 2290
    # lw $t9, -25968($gp) # &__glConvertResult
    move	$a0,$s0
    addiu	$a2,$sp,0
    li	$a1,3
    subu	$a5,$a7,$t8
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9dd258:
    # Line 1470
    bnez	$a6,.L0d9dd47c
    sltiu	$a5,$a0,2825
    sltiu	$a7,$a0,2853
    bnez	$a7,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t0,$a0,2882
    bnez	$t0,.L0d9dd750
    sltiu	$t0,$a0,2866
    sltiu	$t1,$a0,2883
    bnez	$t1,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t2,$a0,2896
    bnez	$t2,.L0d9ddc5c
    sltiu	$a1,$a0,2885
    sltiu	$t3,$a0,2897
    bnez	$t3,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t8,$a0,2898
    bnez	$t8,.L0d9de724
    li	$ra,2897
    sltiu	$t9,$a0,2899
    beqz	$t9,.L0d9df01c
    li	$t1,2899
    # Line 1661
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1660
    lbu	$t9,1413($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1661
    b	.L0d9dd06c
    # Line 1660
    addiu	$t1,$t1,1
.L0d9dd2dc:
    # Line 2293
    move	$a0,$s0
    move	$a1,$zero
    subu	$a5,$t0,$a2
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9dd2f8:
    # Line 1470
    bnez	$a6,.L0d9dd4b8
    sltiu	$t1,$a0,3072
    sltiu	$a7,$a0,3121
    beqz	$a7,.L0d9dd6a4
    sltiu	$ra,$a0,3156
    # Line 1831
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1830
    addiu	$t1,$sp,400
    lbu	$t9,3221($s0)
    # Line 1831
    addiu	$a7,$sp,0
    # Line 1830
    addiu	$t1,$t1,1
    sltu	$t9,$zero,$t9
    # Line 1831
    b	.L0d9dd06c
    # Line 1830
    sb	$t9,400($sp)
.L0d9dd338:
    # Line 2296
    move	$a0,$s0
    li	$a1,4
    addiu	$a2,$sp,400
    bal __glConvertResult
    subu	$a5,$t1,$a2
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9dd354:
    # Line 1470
    bnez	$t2,.L0d9dee10
    li	$ra,2883
    sd	$a2,1728($sp)
    beqz	$a1,.L0d9de0b8
    sd	$a4,1736($sp)
.L0d9dd368:
    # Line 1534
    # lw $t9, -26968($gp) # &__glim_IsEnabled
.L0d9dd36c:
    sd	$a3,1728($sp)
    sd	$a4,1736($sp)
    addiu	$t3,$sp,400
    addiu	$t3,$t3,1
    jal	__glim_IsEnabled
    sd	$t3,1744($sp)
    ld	$t1,1744($sp)
    ld	$a4,1736($sp)
    # Line 1535
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    ld	$a3,1728($sp)
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    b	.L0d9dd06c
    # Line 1534
    sb	$v0,400($sp)
.L0d9dd3ac:
    # Line 2299
    move	$a0,$s0
    move	$a2,$a1
    move	$a5,$a1
    li	$a1,5
    subu	$a5,$t2,$a5
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9dd3d0:
    # Line 1470
    li	$a1,0x8087
    sltu	$a6,$a0,$a1
    bnez	$a6,.L0d9dd540
    sltu	$a7,$a1,$a0
    bnez	$a7,.L0d9dd79c
    li	$a1,0x80bb
    # Line 2248
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2247
    lw	$t9,5124($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2248
    b	.L0d9dd06c
    # Line 2247
    addiu	$a7,$sp,4
.L0d9dd40c:
    # Line 1470
    bnez	$ra,.L0d9dd5c8
    sltiu	$ra,$a0,2918
    sltiu	$at,$a0,2963
    beqz	$at,.L0d9dd880
    sltiu	$a6,$a0,2978
    # Line 1725
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1724
    lw	$v0,1664($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 1725
    b	.L0d9dd06c
    # Line 1724
    addiu	$a7,$sp,4
.L0d9dd444:
    # Line 1470
    bnez	$v1,.L0d9dd590
    sltiu	$t0,$a0,3409
    sltiu	$a1,$a0,3419
    beqz	$a1,.L0d9dd824
    sltiu	$ra,$a0,3477
    # Line 2129
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2128
    lw	$a2,3236($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 2129
    b	.L0d9dd06c
    # Line 2128
    addiu	$a7,$sp,4
.L0d9dd47c:
    # Line 1470
    bnez	$a5,.L0d9dd61c
    sltiu	$t8,$a0,2820
    sltiu	$a6,$a0,2826
    beqz	$a6,.L0d9dd8d0
    sltiu	$v1,$a0,2848
    # Line 1616
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1615
    lwc1	$f5,344($s0)
    # Line 1616
    addiu	$t1,$sp,400
    # Line 1615
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1616
    b	.L0d9dd06c
    # Line 1615
    swc1	$f5,1304($sp)
.L0d9dd4b8:
    # Line 1470
    bnez	$t1,.L0d9dd718
    sltiu	$a5,$a0,3041
    sltiu	$t2,$a0,3073
    beqz	$t2,.L0d9ddab0
    sltiu	$v1,$a0,3104
    # Line 2162
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2161
    lw	$t9,3296($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2162
    b	.L0d9dd06c
    # Line 2161
    addiu	$a7,$sp,4
.L0d9dd4f0:
    # Line 1470
    bnez	$ra,.L0d9df5b4
    li	$ra,3253
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2061
    addiu	$t0,$sp,1304
.L0d9dd504:
    # Line 2060
    sll	$v0,$a0,0x2
    # Line 2061
    addiu	$t2,$sp,904
    # Line 2060
    subu	$v0,$v0,$a0
    lui	$at,0xffff
    sll	$v0,$v0,0x2
    ori	$at,$at,0x6bc0
    addu	$v0,$s0,$v0
    # Line 2061
    addiu	$t3,$sp,504
    # Line 2060
    addu	$at,$at,$v0
    # Line 2061
    addiu	$t1,$sp,400
    # Line 2060
    addiu	$a7,$sp,4
    lw	$at,0($at)
    # Line 2059
    addiu	$t8,$sp,0
    # Line 2061
    b	.L0d9dd06c
    # Line 2060
    sw	$at,0($sp)
.L0d9dd540:
    # Line 1470
    li	$a1,0x8075
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0d9dd7d4
    sltu	$a2,$a1,$a0
    beqz	$a2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a1,0x807e
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0d9de004
    sltu	$a6,$a1,$a0
    bnez	$a6,.L0d9de6e8
    # Line 2221
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2220
    lw	$a7,5060($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 2221
    b	.L0d9dd06c
    # Line 2220
    addiu	$a7,$sp,4
.L0d9dd590:
    # Line 1470
    bnez	$t0,.L0d9dd92c
    sltiu	$t1,$a0,3384
    sltiu	$t1,$a0,3410
    beqz	$t1,.L0d9ddd2c
    sltiu	$ra,$a0,3414
    # Line 2097
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2096
    lw	$t9,3252($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2097
    b	.L0d9dd06c
    # Line 2096
    addiu	$a7,$sp,4
.L0d9dd5c8:
    # Line 1470
    bnez	$ra,.L0d9dd964
    sltiu	$ra,$a0,2913
    sltiu	$at,$a0,2919
    beqz	$at,.L0d9ddd9c
    sltiu	$a5,$a0,2932
    # Line 1694
    lwc1	$f9,1592($s0)
    swc1	$f9,504($sp)
    # Line 1695
    lwc1	$f8,1596($s0)
    swc1	$f8,508($sp)
    # Line 1696
    lwc1	$f7,1600($s0)
    # Line 1698
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1696
    swc1	$f7,512($sp)
    # Line 1698
    addiu	$t2,$sp,904
    addiu	$a7,$sp,0
    # Line 1697
    lwc1	$f6,1604($s0)
    # Line 1698
    addiu	$t1,$sp,400
    # Line 1694
    addiu	$t3,$sp,504
    # Line 1697
    addiu	$t3,$t3,16
    # Line 1698
    b	.L0d9dd06c
    # Line 1697
    swc1	$f6,516($sp)
.L0d9dd61c:
    # Line 1470
    bnez	$t8,.L0d9dd9a0
    sltiu	$a1,$a0,2818
    sltiu	$t9,$a0,2821
    beqz	$t9,.L0d9dde7c
    sltiu	$a1,$a0,2823
    lbu	$ra,3221($s0)
    beqz	$ra,.L0d9dfae4
    # Line 1579
    lwc1	$f10,_lit_3f800000
    # Line 1582
    swc1	$f10,1316($sp)
    # Line 1581
    swc1	$f10,1312($sp)
    # Line 1579
    addiu	$t0,$sp,1304
    # Line 1580
    swc1	$f10,1308($sp)
    # Line 1582
    addiu	$t3,$sp,504
    addiu	$t0,$t0,16
    # Line 1579
    swc1	$f10,1304($sp)
.L0d9dd658:
    # Line 1589
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$a7,$sp,0
    b	.L0d9dd06c
    addiu	$t1,$sp,400
.L0d9dd66c:
    # Line 1470
    bnez	$t1,.L0d9dda28
    sltiu	$t1,$a0,3257
    sltiu	$t2,$a0,3317
    beqz	$t2,.L0d9ddf8c
    sltiu	$t1,$a0,3331
    # Line 1939
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1938
    lw	$t9,1200($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1939
    b	.L0d9dd06c
    # Line 1938
    addiu	$a7,$sp,4
.L0d9dd6a4:
    # Line 1470
    bnez	$ra,.L0d9dda78
    sltiu	$ra,$a0,3152
    sltiu	$at,$a0,3157
    beqz	$at,.L0d9ddfc4
    sltiu	$ra,$a0,3248
    # Line 1873
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1872
    lw	$v0,1912($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 1873
    b	.L0d9dd06c
    # Line 1872
    addiu	$a7,$sp,4
.L0d9dd6dc:
    # Line 1470
    sltiu	$v1,$a0,3569
    bnez	$v1,.L0d9ddaec
    sltiu	$t1,$a0,3537
    sltiu	$a1,$a0,3570
    beqz	$a1,.L0d9de040
    sltiu	$a7,$a0,12289
    # Line 2275
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2274
    lw	$a2,4880($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 2275
    b	.L0d9dd06c
    # Line 2274
    addiu	$a7,$sp,4
.L0d9dd718:
    # Line 1470
    bnez	$a5,.L0d9ddb24
    sltiu	$ra,$a0,3024
    sltiu	$a6,$a0,3042
    beqz	$a6,.L0d9de158
    sltiu	$a1,$a0,3057
    # Line 1810
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1809
    lw	$a7,1828($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 1810
    b	.L0d9dd06c
    # Line 1809
    addiu	$a7,$sp,4
.L0d9dd750:
    # Line 1470
    bnez	$t0,.L0d9ddb68
    sltiu	$a1,$a0,2864
    sltiu	$t1,$a0,2867
    beqz	$t1,.L0d9de184
    sltiu	$a6,$a0,2880
    # Line 1882
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1881
    lw	$t9,1980($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1882
    b	.L0d9dd06c
    # Line 1881
    addiu	$a7,$sp,4
.L0d9dd788:
    # Line 1465
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9dd79c:
    # Line 1470
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9ddbe8
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9de2c4
    # Line 2038
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2037
    lwc1	$f11,740($s0)
    # Line 2038
    addiu	$t1,$sp,400
    # Line 2037
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2038
    b	.L0d9dd06c
    # Line 2037
    swc1	$f11,1304($sp)
.L0d9dd7d4:
    # Line 1470
    li	$a1,0x8069
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9ddc94
    sltu	$t2,$a1,$a0
    beqz	$t2,.L0d9df570
    li	$a1,0x806e
    sltu	$t3,$a0,$a1
    bnez	$t3,.L0d9de94c
    sltu	$t8,$a1,$a0
    bnez	$t8,.L0d9df220
    li	$a1,0x8073
    # Line 1927
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1926
    lw	$t9,1212($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1927
    b	.L0d9dd06c
    # Line 1926
    addiu	$a7,$sp,4
.L0d9dd824:
    # Line 1470
    bnez	$ra,.L0d9ddce8
    sltiu	$t1,$a0,3473
    sltiu	$at,$a0,3478
    bnez	$at,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$v0,$a0,3505
    bnez	$v0,.L0d9de9f4
    sltiu	$a1,$a0,3480
    sltiu	$v1,$a0,3506
    bnez	$v1,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$a1,$a0,3507
    bnez	$a1,.L0d9df6d4
    li	$at,3506
    sltiu	$a2,$a0,3508
    bnez	$a2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a5,3508
    sd	$a3,1728($sp)
    beq	$a0,$a5,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dd880:
    # Line 1470
    bnez	$a6,.L0d9ddd64
    sltiu	$v1,$a0,2967
    sltiu	$a7,$a0,2979
    beqz	$a7,.L0d9de384
    sltiu	$a7,$a0,2983
    # Line 1748
    lw	$v0,1688($s0)
    sw	$v0,0($sp)
    # Line 1749
    lw	$at,1692($s0)
    sw	$at,4($sp)
    # Line 1752
    addiu	$t0,$sp,1304
    # Line 1750
    lw	$ra,1696($s0)
    # Line 1752
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1750
    sw	$ra,8($sp)
    # Line 1752
    addiu	$t1,$sp,400
    # Line 1748
    addiu	$t8,$sp,0
    # Line 1751
    lw	$t9,1700($s0)
    addiu	$a7,$sp,16
    # Line 1752
    b	.L0d9dd06c
    # Line 1751
    sw	$t9,12($sp)
.L0d9dd8d0:
    # Line 1470
    bnez	$v1,.L0d9dde38
    sltiu	$a1,$a0,2834
    sltiu	$a1,$a0,2849
    bnez	$a1,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$a2,$a0,2850
    bnez	$a2,.L0d9deb3c
    li	$a6,2849
    sltiu	$a5,$a0,2851
    beqz	$a5,.L0d9df540
    li	$a6,2851
    # Line 1631
    lwc1	$f13,3756($s0)
    # Line 1633
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1631
    swc1	$f13,1304($sp)
    # Line 1633
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1632
    lwc1	$f12,3760($s0)
    # Line 1633
    addiu	$t1,$sp,400
    # Line 1631
    addiu	$t0,$sp,1304
    # Line 1632
    addiu	$t0,$t0,8
    # Line 1633
    b	.L0d9dd06c
    # Line 1632
    swc1	$f12,1308($sp)
.L0d9dd92c:
    # Line 1470
    bnez	$t1,.L0d9dddd4
    sltiu	$a1,$a0,3382
    sltiu	$t2,$a0,3385
    beqz	$t2,.L0d9de4dc
    sltiu	$a1,$a0,3387
    # Line 2088
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2087
    lw	$t9,3792($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2088
    b	.L0d9dd06c
    # Line 2087
    addiu	$a7,$sp,4
.L0d9dd964:
    # Line 1470
    bnez	$ra,.L0d9dde0c
    sltiu	$a1,$a0,2903
    sltiu	$at,$a0,2914
    beqz	$at,.L0d9de588
    sltiu	$a1,$a0,2916
    # Line 1680
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1679
    lwc1	$f14,1624($s0)
    # Line 1680
    addiu	$t1,$sp,400
    # Line 1679
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1680
    b	.L0d9dd06c
    # Line 1679
    swc1	$f14,1304($sp)
.L0d9dd9a0:
    # Line 1470
    bnez	$a1,.L0d9ddf18
    sltiu	$at,$a0,2817
    sltiu	$t1,$a0,2819
    beqz	$t1,.L0d9de5c4
    li	$t1,2819
    # Line 1558
    lwc1	$f17,208($s0)
    swc1	$f17,904($sp)
    # Line 1559
    lwc1	$f16,212($s0)
    # Line 1561
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1559
    swc1	$f16,908($sp)
    # Line 1561
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1560
    lwc1	$f15,216($s0)
    # Line 1561
    addiu	$t1,$sp,400
    # Line 1558
    addiu	$t2,$sp,904
    # Line 1560
    addiu	$t2,$t2,12
    # Line 1561
    b	.L0d9dd06c
    # Line 1560
    swc1	$f15,912($sp)
.L0d9dd9ec:
    # Line 1470
    bnez	$t3,.L0d9ddf50
    sltiu	$t1,$a0,3350
    sltiu	$t8,$a0,3355
    beqz	$t8,.L0d9de6ac
    sltiu	$t1,$a0,3359
    # Line 1969
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1968
    lwc1	$f18,648($s0)
    # Line 1969
    addiu	$t1,$sp,400
    # Line 1968
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1969
    b	.L0d9dd06c
    # Line 1968
    swc1	$f18,1304($sp)
.L0d9dda28:
    # Line 1470
    bnez	$t1,.L0d9de084
    sltiu	$a1,$a0,3255
    sltiu	$t2,$a0,3258
    bnez	$t2,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    # Line 1470
    sltiu	$a1,$a0,3314
    bnez	$a1,.L0d9df2f8
    sltiu	$ra,$a0,3313
    sltiu	$t3,$a0,3315
    beqz	$t3,.L0d9dfdc8
    li	$v0,3315
    # Line 1930
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1929
    lw	$t9,1192($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1930
    b	.L0d9dd06c
    # Line 1929
    addiu	$a7,$sp,4
.L0d9dda78:
    # Line 1470
    bnez	$ra,.L0d9de0cc
    sltiu	$a1,$a0,3123
    sltiu	$at,$a0,3153
    beqz	$at,.L0d9de890
    sltiu	$v0,$a0,3154
    # Line 1861
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1860
    lw	$v0,1896($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 1861
    b	.L0d9dd06c
    # Line 1860
    addiu	$a7,$sp,4
.L0d9ddab0:
    # Line 1470
    bnez	$v1,.L0d9de108
    sltiu	$ra,$a0,3088
    sltiu	$a1,$a0,3105
    beqz	$a1,.L0d9de8c8
    sltiu	$a1,$a0,3106
    # Line 1828
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1827
    lwc1	$f19,1876($s0)
    # Line 1828
    addiu	$t1,$sp,400
    # Line 1827
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1828
    b	.L0d9dd06c
    # Line 1827
    swc1	$f19,1304($sp)
.L0d9ddaec:
    # Line 1470
    bnez	$t1,.L0d9de1c4
    sltiu	$a1,$a0,3512
    sltiu	$t2,$a0,3538
    beqz	$t2,.L0d9de9c8
    sltiu	$t1,$a0,3552
    # Line 2139
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2138
    lw	$t9,1944($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2139
    b	.L0d9dd06c
    # Line 2138
    addiu	$a7,$sp,4
.L0d9ddb24:
    # Line 1470
    bnez	$ra,.L0d9de214
    sltiu	$t1,$a0,3010
    sltiu	$at,$a0,3025
    bnez	$at,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$v0,3040
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1807
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1806
    lw	$v1,1832($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 1807
    b	.L0d9dd06c
    # Line 1806
    addiu	$a7,$sp,4
.L0d9ddb68:
    # Line 1470
    bnez	$a1,.L0d9de250
    sltiu	$t1,$a0,2854
    sltiu	$a2,$a0,2865
    beqz	$a2,.L0d9deaf4
    li	$a1,2865
    # Line 1888
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1887
    lw	$a5,4984($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 1888
    b	.L0d9dd06c
    # Line 1887
    addiu	$a7,$sp,4
.L0d9ddba0:
    # Line 1470
    sltiu	$a6,$a0,16388
    bnez	$a6,.L0d9de31c
    sltiu	$a1,$a0,16386
    sltiu	$a7,$a0,16389
    bnez	$a7,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t0,$a0,16390
    bnez	$t0,.L0d9df064
    li	$t3,16389
    sltiu	$t1,$a0,16391
    bnez	$t1,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t2,16391
    sd	$a3,1728($sp)
    beq	$a0,$t2,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9ddbe8:
    # Line 1470
    li	$a1,0x80b2
    sltu	$t3,$a0,$a1
    bnez	$t3,.L0d9de348
    sltu	$t8,$a1,$a0
    bnez	$t8,.L0d9dec30
    li	$a1,0x80b7
    # Line 1769
    lw	$a0,29688($s0)
    lw	$a1,29684($s0)
    subu	$a0,$a0,$a1
    srl	$ra,$a0,0x1f
    li	$v1,0xf0f0
    negu	$v0,$a0
    dsll	$v1,$v1,0x10
    movz	$v0,$a0,$ra
    ori	$v1,$v1,0xf0f1
    multu	$v0,$v1
    # Line 1770
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1769
    mfhi	$at
    # Line 1770
    addiu	$t1,$sp,400
    # Line 1769
    sra	$at,$at,0x8
    addiu	$t8,$sp,0
    negu	$t9,$at
    addiu	$a7,$sp,4
    movz	$t9,$at,$ra
    addiu	$t9,$t9,1
    # Line 1770
    b	.L0d9dd06c
    # Line 1769
    sw	$t9,0($sp)
.L0d9ddc5c:
    # Line 1470
    bnez	$a1,.L0d9dd354
    sltiu	$t2,$a0,2884
    sltiu	$a2,$a0,2886
    beqz	$a2,.L0d9dec68
    li	$t1,2886
    # Line 1652
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1651
    lw	$a5,492($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 1652
    b	.L0d9dd06c
    # Line 1651
    addiu	$a7,$sp,4
.L0d9ddc94:
    # Line 1470
    li	$a1,0x802e
    sltu	$a6,$a0,$a1
    bnez	$a6,.L0d9de43c
    sltu	$a7,$a1,$a0
    beqz	$a7,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a1,0x8039
    sltu	$t0,$a0,$a1
    bnez	$t0,.L0d9df458
    sltu	$t1,$a1,$a0
    bnez	$t1,.L0d9dff30
    # Line 2180
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2179
    lwc1	$f21,504($s0)
    # Line 2180
    addiu	$t1,$sp,400
    # Line 2179
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2180
    b	.L0d9dd06c
    # Line 2179
    swc1	$f21,1304($sp)
.L0d9ddce8:
    # Line 1470
    bnez	$t1,.L0d9de478
    sltiu	$t1,$a0,3456
    sltiu	$t2,$a0,3474
    bnez	$t2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t3,$a0,3475
    bnez	$t3,.L0d9df52c
    li	$a5,3474
    sltiu	$t8,$a0,3476
    bnez	$t8,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t9,3476
    sd	$a3,1728($sp)
    beq	$a0,$t9,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9ddd2c:
    # Line 1470
    bnez	$ra,.L0d9de4a4
    sltiu	$a1,$a0,3412
    sltiu	$at,$a0,3415
    beqz	$at,.L0d9decec
    sltiu	$a1,$a0,3416
    # Line 2112
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2111
    lw	$v0,3244($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 2112
    b	.L0d9dd06c
    # Line 2111
    addiu	$a7,$sp,4
.L0d9ddd64:
    # Line 1470
    bnez	$v1,.L0d9de514
    sltiu	$a1,$a0,2965
    sltiu	$a1,$a0,2968
    beqz	$a1,.L0d9ded94
    sltiu	$a2,$a0,2976
    # Line 1740
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1739
    lh	$a2,1670($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 1740
    b	.L0d9dd06c
    # Line 1739
    addiu	$a7,$sp,4
.L0d9ddd9c:
    # Line 1470
    bnez	$a5,.L0d9de54c
    sltiu	$a1,$a0,2930
    sltiu	$a6,$a0,2933
    beqz	$a6,.L0d9dedcc
    sltiu	$a7,$a0,2960
    # Line 1713
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1712
    lw	$a7,1632($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 1713
    b	.L0d9dd06c
    # Line 1712
    addiu	$a7,$sp,4
.L0d9dddd4:
    # Line 1470
    bnez	$a1,.L0d9de60c
    sltiu	$t1,$a0,3381
    sltiu	$t0,$a0,3383
    beqz	$t0,.L0d9def38
    li	$a2,3383
    # Line 2082
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2081
    lw	$t9,3788($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2082
    b	.L0d9dd06c
    # Line 2081
    addiu	$a7,$sp,4
.L0d9dde0c:
    # Line 1470
    bnez	$a1,.L0d9de640
    sltiu	$ra,$a0,2902
    sltiu	$ra,$a0,2904
    bnez	$ra,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$at,2912
    sd	$a2,1728($sp)
    beq	$a0,$at,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dde38:
    # Line 1470
    bnez	$a1,.L0d9de674
    sltiu	$v0,$a0,2833
    sltiu	$v0,$a0,2835
    beqz	$v0,.L0d9defec
    li	$t1,2835
    # Line 1621
    lwc1	$f25,3744($s0)
    # Line 1623
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1621
    swc1	$f25,1304($sp)
    # Line 1623
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1622
    lwc1	$f23,3748($s0)
    # Line 1623
    addiu	$t1,$sp,400
    # Line 1621
    addiu	$t0,$sp,1304
    # Line 1622
    addiu	$t0,$t0,8
    # Line 1623
    b	.L0d9dd06c
    # Line 1622
    swc1	$f23,1308($sp)
.L0d9dde7c:
    # Line 1470
    bnez	$a1,.L0d9de754
    sltiu	$ra,$a0,2822
    sltiu	$t1,$a0,2824
    beqz	$t1,.L0d9df078
    li	$t8,2824
    # Line 1597
    lwc1	$f6,368($s0)
    lwc1	$f7,3668($s0)
    sub.s	$f6,$f6,$f7
    swc1	$f6,1304($sp)
    lbu	$t2,4848($s0)
    lwc1	$f4,372($s0)
    lwc1	$f5,3672($s0)
    beqz	$t2,.L0d9e090c
    sub.s	$f4,$f4,$f5
    # Line 1600
    lw	$t3,3704($s0)
    mtc1	$t3,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f9,3676($s0)
    sub.s	$f8,$f8,$f4
    sub.s	$f8,$f8,$f9
    swc1	$f8,1308($sp)
.L0d9dded0:
    # Line 1608
    lw	$ra,31304($s0)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f11
    cvt.s.l	$f11,$f11
    lwc1	$f10,376($s0)
    div.s	$f10,$f10,$f11
    # Line 1610
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1608
    swc1	$f10,1312($sp)
    # Line 1610
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1609
    lwc1	$f9,364($s0)
    # Line 1610
    addiu	$t1,$sp,400
    # Line 1605
    addiu	$t9,$sp,1304
    # Line 1609
    addiu	$t0,$t9,16
    # Line 1610
    b	.L0d9dd06c
    # Line 1609
    swc1	$f9,12($t9)
.L0d9ddf18:
    # Line 1470
    bnez	$at,.L0d9de7a4
    li	$t1,2816
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1556
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1555
    lwc1	$f12,448($s0)
    # Line 1556
    addiu	$t1,$sp,400
    # Line 1555
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1556
    b	.L0d9dd06c
    # Line 1555
    swc1	$f12,1304($sp)
.L0d9ddf50:
    # Line 1470
    bnez	$t1,.L0d9de7ec
    sltiu	$a1,$a0,3348
    sltiu	$t2,$a0,3351
    beqz	$t2,.L0d9df13c
    sltiu	$t1,$a0,3352
    # Line 2050
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2049
    lwc1	$f13,744($s0)
    # Line 2050
    addiu	$t1,$sp,400
    # Line 2049
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2050
    b	.L0d9dd06c
    # Line 2049
    swc1	$f13,1304($sp)
.L0d9ddf8c:
    # Line 1470
    bnez	$t1,.L0d9de828
    sltiu	$a1,$a0,3329
    sltiu	$t2,$a0,3332
    beqz	$t2,.L0d9df178
    sltiu	$t1,$a0,3333
    # Line 1906
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1905
    lw	$t9,1152($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1906
    b	.L0d9dd06c
    # Line 1905
    addiu	$a7,$sp,4
.L0d9ddfc4:
    # Line 1470
    bnez	$ra,.L0d9de864
    sltiu	$a1,$a0,3170
    sltiu	$at,$a0,3249
    bnez	$at,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    # Line 1470
    sltiu	$v0,$a0,3250
    bnez	$v0,.L0d9dfdf4
    li	$a1,3249
    sltiu	$v1,$a0,3251
    bnez	$v1,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    # Line 1470
    li	$a1,3251
    beq	$a0,$a1,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de004:
    # Line 1470
    li	$a1,0x807a
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0d9de91c
    sltu	$a5,$a1,$a0
    bnez	$a5,.L0d9df1e8
    li	$a1,0x807c
    # Line 2209
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2208
    lw	$a6,5032($s0)
    addiu	$t8,$sp,0
    sw	$a6,0($sp)
    # Line 2209
    b	.L0d9dd06c
    # Line 2208
    addiu	$a7,$sp,4
.L0d9de040:
    # Line 1470
    bnez	$a7,.L0d9de984
    sltiu	$v1,$a0,10752
    sltiu	$t0,$a0,12290
    bnez	$t0,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    sltiu	$t1,$a0,12291
    bnez	$t1,.L0d9df6c0
    li	$ra,12290
    sltiu	$t2,$a0,12292
    bnez	$t2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t3,12292
    sd	$a3,1728($sp)
    beq	$a0,$t3,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de084:
    # Line 1470
    bnez	$a1,.L0d9dd4f0
    sltiu	$ra,$a0,3254
    sltiu	$t8,$a0,3256
    bnez	$t8,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    # Line 1470
    li	$t9,3256
    beq	$a0,$t9,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de0ac:
    sd	$a2,1728($sp)
    # Line 1470
    beq	$a0,$ra,.L0d9dd368
    sd	$a4,1736($sp)
.L0d9de0b8:
    # Line 2284
    # lw $t9, -26452($gp) # &__glSetError
.L0d9de0bc:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9dd0a0
    ld	$ra,1720($sp)
.L0d9de0cc:
    # Line 1470
    bnez	$a1,.L0d9dea20
    sltiu	$ra,$a0,3122
    sltiu	$at,$a0,3124
    beqz	$at,.L0d9df378
    li	$v1,3136
    # Line 2165
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2164
    lbu	$t9,3223($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 2165
    b	.L0d9dd06c
    # Line 2164
    addiu	$t1,$t1,1
.L0d9de108:
    # Line 1470
    bnez	$ra,.L0d9dea5c
    sltiu	$t2,$a0,3074
    sltiu	$at,$a0,3089
    beqz	$at,.L0d9df3d0
    li	$a5,3089
    # Line 1821
    lw	$a1,2524($s0)
    sw	$a1,0($sp)
    # Line 1822
    lw	$a0,2528($s0)
    sw	$a0,4($sp)
    # Line 1825
    addiu	$t0,$sp,1304
    # Line 1823
    lw	$v1,2532($s0)
    # Line 1825
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1823
    sw	$v1,8($sp)
    # Line 1825
    addiu	$t1,$sp,400
    # Line 1821
    addiu	$t8,$sp,0
    # Line 1824
    lw	$v0,2536($s0)
    addiu	$a7,$sp,16
    # Line 1825
    b	.L0d9dd06c
    # Line 1824
    sw	$v0,12($sp)
.L0d9de158:
    # Line 1470
    bnez	$a1,.L0d9dea94
    sltiu	$ra,$a0,3056
    sltiu	$a2,$a0,3058
    bnez	$a2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a5,3058
    sd	$a3,1728($sp)
    beq	$a0,$a5,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de184:
    # Line 1470
    bnez	$a6,.L0d9deac8
    li	$v0,2867
    sltiu	$a7,$a0,2881
    beqz	$a7,.L0d9df3e4
    li	$a6,2881
    # Line 1646
    addiu	$t0,$sp,1304
    # Line 1644
    lw	$ra,484($s0)
    # Line 1646
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1644
    sw	$ra,0($sp)
    # Line 1646
    addiu	$t1,$sp,400
    # Line 1644
    addiu	$t8,$sp,0
    # Line 1645
    lw	$t9,488($s0)
    addiu	$a7,$sp,8
    # Line 1646
    b	.L0d9dd06c
    # Line 1645
    sw	$t9,4($sp)
.L0d9de1c4:
    # Line 1470
    bnez	$a1,.L0d9deb20
    sltiu	$a5,$a0,3511
    sltiu	$at,$a0,3513
    bnez	$at,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$v0,3536
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2134
    lwc1	$f15,1932($s0)
    # Line 2136
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 2134
    swc1	$f15,1304($sp)
    # Line 2136
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2135
    lwc1	$f14,1936($s0)
    # Line 2136
    addiu	$t1,$sp,400
    # Line 2134
    addiu	$t0,$sp,1304
    # Line 2135
    addiu	$t0,$t0,8
    # Line 2136
    b	.L0d9dd06c
    # Line 2135
    swc1	$f14,1308($sp)
.L0d9de214:
    # Line 1470
    bnez	$t1,.L0d9deb6c
    li	$t1,3009
    sltiu	$t2,$a0,3011
    beqz	$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1804
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1803
    lwc1	$f16,1824($s0)
    # Line 1804
    addiu	$t1,$sp,400
    # Line 1803
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1804
    b	.L0d9dd06c
    # Line 1803
    swc1	$f16,1304($sp)
.L0d9de250:
    # Line 1470
    bnez	$t1,.L0d9deb98
    li	$ra,2853
    sltiu	$t2,$a0,2855
    beqz	$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1642
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1641
    lh	$t9,482($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1642
    b	.L0d9dd06c
    # Line 1641
    addiu	$a7,$sp,4
.L0d9de288:
    # Line 1470
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9debc4
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9df64c
    li	$a1,0x801e
    # Line 1993
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1992
    lwc1	$f17,680($s0)
    # Line 1993
    addiu	$t1,$sp,400
    # Line 1992
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1993
    b	.L0d9dd06c
    # Line 1992
    swc1	$f17,1304($sp)
.L0d9de2c4:
    # Line 1470
    li	$a1,0x81ef
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9debf4
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9df688
    li	$a1,0x842d
    # Line 1851
    lbu	$at,2520($s0)
    sb	$at,400($sp)
    # Line 1852
    lbu	$ra,2521($s0)
    sb	$ra,401($sp)
    # Line 1855
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1853
    lbu	$t9,2522($s0)
    # Line 1855
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1853
    sb	$t9,402($sp)
    # Line 1855
    addiu	$a7,$sp,0
    # Line 1851
    addiu	$t1,$sp,400
    # Line 1854
    lbu	$t9,2523($s0)
    addiu	$t1,$t1,4
    # Line 1855
    b	.L0d9dd06c
    # Line 1854
    sb	$t9,403($sp)
.L0d9de31c:
    # Line 1470
    bnez	$a1,.L0d9dec94
    sltiu	$ra,$a0,16385
    sltiu	$v0,$a0,16387
    bnez	$v0,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$v1,16387
    sd	$a3,1728($sp)
    beq	$a0,$v1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de348:
    # Line 1470
    li	$a1,0x808c
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0d9decb0
    sltu	$a5,$a1,$a0
    bnez	$a5,.L0d9df77c
    li	$a1,0x8094
    # Line 2263
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2262
    lw	$a6,5168($s0)
    addiu	$t8,$sp,0
    sw	$a6,0($sp)
    # Line 2263
    b	.L0d9dd06c
    # Line 2262
    addiu	$a7,$sp,4
.L0d9de384:
    # Line 1470
    bnez	$a7,.L0d9ded24
    sltiu	$a1,$a0,2981
    sltiu	$t0,$a0,2984
    beqz	$t0,.L0d9df844
    sltiu	$t2,$a0,2992
    # Line 1780
    lw	$t1,29668($s0)
    lwc1	$f7,0($t1)
    swc1	$f7,1304($sp)
    lwc1	$f6,4($t1)
    swc1	$f6,1308($sp)
    lwc1	$f5,8($t1)
    swc1	$f5,1312($sp)
    lwc1	$f4,12($t1)
    swc1	$f4,1316($sp)
    # Line 1781
    lwc1	$f3,16($t1)
    swc1	$f3,1320($sp)
    lwc1	$f2,20($t1)
    swc1	$f2,1324($sp)
    lwc1	$f1,24($t1)
    swc1	$f1,1328($sp)
    lwc1	$f0,28($t1)
    swc1	$f0,1332($sp)
    # Line 1782
    lwc1	$f31,32($t1)
    swc1	$f31,1336($sp)
    lwc1	$f29,36($t1)
    swc1	$f29,1340($sp)
    lwc1	$f27,40($t1)
    swc1	$f27,1344($sp)
    lwc1	$f25,44($t1)
    swc1	$f25,1348($sp)
    # Line 1783
    lwc1	$f23,48($t1)
    swc1	$f23,1352($sp)
    lwc1	$f21,52($t1)
    swc1	$f21,1356($sp)
    lwc1	$f19,56($t1)
    # Line 1784
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1783
    swc1	$f19,1360($sp)
    # Line 1784
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1783
    lwc1	$f18,60($t1)
    # Line 1784
    addiu	$t1,$sp,400
    # Line 1780
    addiu	$t0,$sp,1304
    # Line 1783
    addiu	$t0,$t0,64
    # Line 1784
    b	.L0d9dd06c
    # Line 1783
    swc1	$f18,1364($sp)
.L0d9de43c:
    # Line 1470
    li	$a1,0x8023
    sltu	$t2,$a0,$a1
    bnez	$t2,.L0d9dee40
    sltu	$t3,$a1,$a0
    bnez	$t3,.L0d9df8dc
    # Line 2014
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2013
    lwc1	$f8,708($s0)
    # Line 2014
    addiu	$t1,$sp,400
    # Line 2013
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2014
    b	.L0d9dd06c
    # Line 2013
    swc1	$f8,1304($sp)
.L0d9de478:
    # Line 1470
    bnez	$t1,.L0d9dee84
    sltiu	$t1,$a0,3440
    sltiu	$t2,$a0,3457
    bnez	$t2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t3,3472
    sd	$a3,1728($sp)
    beq	$a0,$t3,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de4a4:
    # Line 1470
    bnez	$a1,.L0d9deec8
    sltiu	$at,$a0,3411
    sltiu	$t8,$a0,3413
    beqz	$t8,.L0d9df920
    li	$a6,3413
    # Line 2106
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2105
    lw	$t9,3264($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2106
    b	.L0d9dd06c
    # Line 2105
    addiu	$a7,$sp,4
.L0d9de4dc:
    # Line 1470
    bnez	$a1,.L0d9deefc
    sltiu	$v1,$a0,3386
    sltiu	$ra,$a0,3388
    beqz	$ra,.L0d9df94c
    li	$t0,3408
    # Line 2079
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2078
    lw	$at,3780($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2079
    b	.L0d9dd06c
    # Line 2078
    addiu	$a7,$sp,4
.L0d9de514:
    # Line 1470
    bnez	$a1,.L0d9def64
    sltiu	$a6,$a0,2964
    sltiu	$v0,$a0,2966
    beqz	$v0,.L0d9dfa10
    li	$t0,2966
    # Line 1734
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1733
    lw	$v1,1680($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 1734
    b	.L0d9dd06c
    # Line 1733
    addiu	$a7,$sp,4
.L0d9de54c:
    # Line 1470
    bnez	$a1,.L0d9def98
    sltiu	$t0,$a0,2929
    sltiu	$a1,$a0,2931
    beqz	$a1,.L0d9dfa84
    li	$t3,2931
    # Line 1706
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1705
    lbu	$t9,1636($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1706
    b	.L0d9dd06c
    # Line 1705
    addiu	$t1,$t1,1
.L0d9de588:
    # Line 1470
    bnez	$a1,.L0d9defb4
    sltiu	$t1,$a0,2915
    sltiu	$ra,$a0,2917
    beqz	$ra,.L0d9dfab8
    li	$t3,2917
    # Line 1689
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1688
    lwc1	$f9,1616($s0)
    # Line 1689
    addiu	$t1,$sp,400
    # Line 1688
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1689
    b	.L0d9dd06c
    # Line 1688
    swc1	$f9,1304($sp)
.L0d9de5c4:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1563
    lwc1	$f13,224($s0)
    swc1	$f13,1304($sp)
    # Line 1564
    lwc1	$f12,228($s0)
    swc1	$f12,1308($sp)
    # Line 1565
    lwc1	$f11,232($s0)
    # Line 1567
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1565
    swc1	$f11,1312($sp)
    # Line 1567
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1566
    lwc1	$f10,236($s0)
    # Line 1567
    addiu	$t1,$sp,400
    # Line 1563
    addiu	$t0,$sp,1304
    # Line 1566
    addiu	$t0,$t0,16
    # Line 1567
    b	.L0d9dd06c
    # Line 1566
    swc1	$f10,1316($sp)
.L0d9de60c:
    # Line 1470
    bnez	$t1,.L0d9df0a8
    li	$ra,3380
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2076
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2075
    lw	$t9,3776($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2076
    b	.L0d9dd06c
    # Line 2075
    addiu	$a7,$sp,4
.L0d9de640:
    # Line 1470
    bnez	$ra,.L0d9df0d4
    li	$v0,2901
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1674
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1673
    lw	$at,1388($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 1674
    b	.L0d9dd06c
    # Line 1673
    addiu	$a7,$sp,4
.L0d9de674:
    # Line 1470
    bnez	$v0,.L0d9de0ac
    li	$ra,2832
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1619
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1618
    lwc1	$f14,456($s0)
    # Line 1619
    addiu	$t1,$sp,400
    # Line 1618
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1619
    b	.L0d9dd06c
    # Line 1618
    swc1	$f14,1304($sp)
.L0d9de6ac:
    # Line 1470
    bnez	$t1,.L0d9df100
    sltiu	$a1,$a0,3357
    sltiu	$t2,$a0,3360
    beqz	$t2,.L0d9dfc68
    sltiu	$t1,$a0,3377
    # Line 1990
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1989
    lwc1	$f15,676($s0)
    # Line 1990
    addiu	$t1,$sp,400
    # Line 1989
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1990
    b	.L0d9dd06c
    # Line 1989
    swc1	$f15,1304($sp)
.L0d9de6e8:
    # Line 1470
    li	$a1,0x8083
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9df1b0
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9dfca0
    li	$a1,0x8085
    # Line 2236
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2235
    lw	$t9,5096($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2236
    b	.L0d9dd06c
    # Line 2235
    addiu	$a7,$sp,4
.L0d9de724:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1658
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1657
    lbu	$t9,1412($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1658
    b	.L0d9dd06c
    # Line 1657
    addiu	$t1,$t1,1
.L0d9de754:
    # Line 1470
    bnez	$ra,.L0d9df254
    li	$ra,2821
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1591
    lwc1	$f19,288($s0)
    swc1	$f19,1304($sp)
    # Line 1592
    lwc1	$f18,292($s0)
    swc1	$f18,1308($sp)
    # Line 1593
    lwc1	$f17,296($s0)
    # Line 1595
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1593
    swc1	$f17,1312($sp)
    # Line 1595
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1594
    lwc1	$f16,300($s0)
    # Line 1595
    addiu	$t1,$sp,400
    # Line 1591
    addiu	$t0,$sp,1304
    # Line 1594
    addiu	$t0,$t0,16
    # Line 1595
    b	.L0d9dd06c
    # Line 1594
    swc1	$f16,1316($sp)
.L0d9de7a4:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1549
    lwc1	$f27,432($s0)
    swc1	$f27,904($sp)
    # Line 1550
    lwc1	$f25,436($s0)
    swc1	$f25,908($sp)
    # Line 1551
    lwc1	$f23,440($s0)
    # Line 1552
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1551
    swc1	$f23,912($sp)
    # Line 1552
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    lwc1	$f21,444($s0)
    addiu	$t1,$sp,400
    # Line 1549
    addiu	$t2,$sp,904
    # Line 1552
    addiu	$t2,$t2,16
    b	.L0d9dd06c
    swc1	$f21,916($sp)
.L0d9de7ec:
    # Line 1470
    bnez	$a1,.L0d9df28c
    sltiu	$t1,$a0,3347
    sltiu	$t3,$a0,3349
    beqz	$t3,.L0d9dfd40
    li	$t1,3349
    # Line 1963
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1962
    lwc1	$f29,640($s0)
    # Line 1963
    addiu	$t1,$sp,400
    # Line 1962
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1963
    b	.L0d9dd06c
    # Line 1962
    swc1	$f29,1304($sp)
.L0d9de828:
    # Line 1470
    bnez	$a1,.L0d9df2c0
    sltiu	$ra,$a0,3328
    sltiu	$t1,$a0,3330
    beqz	$t1,.L0d9dfd9c
    li	$ra,3330
    # Line 1894
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1893
    lbu	$t9,1145($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1894
    b	.L0d9dd06c
    # Line 1893
    addiu	$t1,$t1,1
.L0d9de864:
    # Line 1470
    bnez	$a1,.L0d9df330
    sltiu	$ra,$a0,3169
    sltiu	$ra,$a0,3171
    bnez	$ra,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$at,3171
    sd	$a2,1728($sp)
    beq	$a0,$at,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de890:
    # Line 1470
    bnez	$v0,.L0d9df34c
    li	$at,3153
    sltiu	$v1,$a0,3155
    beqz	$v1,.L0d9dfe04
    li	$a2,3155
    # Line 1867
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1866
    lw	$a0,1904($s0)
    addiu	$t8,$sp,0
    sw	$a0,0($sp)
    # Line 1867
    b	.L0d9dd06c
    # Line 1866
    addiu	$a7,$sp,4
.L0d9de8c8:
    # Line 1470
    bnez	$a1,.L0d9df3a4
    li	$a1,3105
    sltiu	$a2,$a0,3107
    beqz	$a2,.L0d9dfe30
    li	$a6,3107
    # Line 1836
    lwc1	$f2,1860($s0)
    swc1	$f2,904($sp)
    # Line 1837
    lwc1	$f1,1864($s0)
    swc1	$f1,908($sp)
    # Line 1838
    lwc1	$f0,1868($s0)
    # Line 1840
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1838
    swc1	$f0,912($sp)
    # Line 1840
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1839
    lwc1	$f31,1872($s0)
    # Line 1840
    addiu	$t1,$sp,400
    # Line 1836
    addiu	$t2,$sp,904
    # Line 1839
    addiu	$t2,$t2,16
    # Line 1840
    b	.L0d9dd06c
    # Line 1839
    swc1	$f31,916($sp)
.L0d9de91c:
    # Line 1470
    li	$a1,0x8078
    sltu	$t3,$a0,$a1
    bnez	$t3,.L0d9df3f8
    sltu	$t8,$a1,$a0
    beqz	$t8,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t9,0x8079
    sd	$a3,1728($sp)
    beq	$a0,$t9,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de94c:
    # Line 1470
    li	$a1,0x806c
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9df41c
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9dff00
    # Line 1897
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1896
    lw	$v0,1168($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 1897
    b	.L0d9dd06c
    # Line 1896
    addiu	$a7,$sp,4
.L0d9de984:
    # Line 1470
    bnez	$v1,.L0d9df498
    sltiu	$t1,$a0,3572
    sltiu	$a1,$a0,10753
    beqz	$a1,.L0d9dff7c
    li	$ra,12288
    # Line 2183
    lwc1	$f3,504($s0)
    lwc1	$f4,508($s0)
    div.s	$f3,$f3,$f4
    # Line 2185
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    addiu	$t1,$sp,400
    # Line 2183
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2185
    b	.L0d9dd06c
    # Line 2183
    swc1	$f3,1304($sp)
.L0d9de9c8:
    # Line 1470
    bnez	$t1,.L0d9df4d0
    sltiu	$ra,$a0,3539
    sltiu	$t2,$a0,3553
    bnez	$t2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t3,3553
    sd	$a3,1728($sp)
    beq	$a0,$t3,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9de9f4:
    # Line 1470
    bnez	$a1,.L0d9df510
    sltiu	$a2,$a0,3479
    sltiu	$t8,$a0,3481
    bnez	$t8,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t9,3504
    sd	$a3,1728($sp)
    beq	$a0,$t9,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dea20:
    # Line 1470
    bnez	$ra,.L0d9df5c4
    li	$at,3121
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2159
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 2158
    addiu	$t1,$sp,400
    lbu	$at,3222($s0)
    # Line 2159
    addiu	$a7,$sp,0
    # Line 2158
    addiu	$t1,$t1,1
    sltu	$at,$zero,$at
    # Line 2159
    b	.L0d9dd06c
    # Line 2158
    sb	$at,400($sp)
.L0d9dea5c:
    # Line 1470
    bnez	$t2,.L0d9df5f8
    li	$t2,3073
    sltiu	$t3,$a0,3075
    beqz	$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1819
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1818
    lw	$t9,1240($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1819
    b	.L0d9dd06c
    # Line 1818
    addiu	$a7,$sp,4
.L0d9dea94:
    # Line 1470
    bnez	$ra,.L0d9df624
    li	$ra,3042
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1813
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1812
    lw	$at,1856($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 1813
    b	.L0d9dd06c
    # Line 1812
    addiu	$a7,$sp,4
.L0d9deac8:
    # Line 1470
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1885
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1884
    lw	$v1,4988($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 1885
    b	.L0d9dd06c
    # Line 1884
    addiu	$a7,$sp,4
.L0d9deaf4:
    # Line 1470
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1547
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1546
    li	$a2,64
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 1547
    b	.L0d9dd06c
    # Line 1546
    addiu	$a7,$sp,4
.L0d9deb20:
    # Line 1470
    bnez	$a5,.L0d9df638
    li	$at,3510
    sd	$a3,1728($sp)
    bnez	$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9deb3c:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1629
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1628
    lwc1	$f5,468($s0)
    # Line 1629
    addiu	$t1,$sp,400
    # Line 1628
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1629
    b	.L0d9dd06c
    # Line 1628
    swc1	$f5,1304($sp)
.L0d9deb6c:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1801
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1800
    lw	$t9,1820($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1801
    b	.L0d9dd06c
    # Line 1800
    addiu	$a7,$sp,4
.L0d9deb98:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1639
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1638
    lhu	$at,480($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 1639
    b	.L0d9dd06c
    # Line 1638
    addiu	$a7,$sp,4
.L0d9debc4:
    # Line 1470
    li	$a1,0x8011
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9df6e8
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a1,0x8012
    sd	$a3,1728($sp)
    beq	$a0,$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9debf4:
    # Line 1470
    li	$a1,0x80e8
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0d9df710
    sltu	$a5,$a1,$a0
    bnez	$a5,.L0d9e0164
    li	$a1,0x817b
    # Line 2269
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2268
    lw	$a6,5364($s0)
    addiu	$t8,$sp,0
    sw	$a6,0($sp)
    # Line 2269
    b	.L0d9dd06c
    # Line 2268
    addiu	$a7,$sp,4
.L0d9dec30:
    # Line 1470
    sltu	$a7,$a0,$a1
    bnez	$a7,.L0d9df740
    sltu	$t0,$a1,$a0
    bnez	$t0,.L0d9e01b0
    # Line 2026
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2025
    lwc1	$f6,724($s0)
    # Line 2026
    addiu	$t1,$sp,400
    # Line 2025
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2026
    b	.L0d9dd06c
    # Line 2025
    swc1	$f6,1304($sp)
.L0d9dec68:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1655
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1654
    lw	$t9,496($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1655
    b	.L0d9dd06c
    # Line 1654
    addiu	$a7,$sp,4
.L0d9dec94:
    # Line 1470
    bnez	$ra,.L0d9df888
    li	$at,16384
    sd	$a3,1728($sp)
    bnez	$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9decb0:
    # Line 1470
    li	$a1,0x808a
    sltu	$at,$a0,$a1
    bnez	$at,.L0d9df89c
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0d9e02e4
    li	$ra,0x808b
    # Line 2257
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2256
    lw	$v1,5148($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 2257
    b	.L0d9dd06c
    # Line 2256
    addiu	$a7,$sp,4
.L0d9decec:
    # Line 1470
    bnez	$a1,.L0d9df8f4
    li	$a2,3415
    sltiu	$a2,$a0,3417
    beqz	$a2,.L0d9e0310
    li	$v0,3417
    # Line 2123
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2122
    lw	$a5,3228($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 2123
    b	.L0d9dd06c
    # Line 2122
    addiu	$a7,$sp,4
.L0d9ded24:
    # Line 1470
    bnez	$a1,.L0d9df978
    sltiu	$ra,$a0,2980
    sltiu	$a6,$a0,2982
    beqz	$a6,.L0d9e03e8
    li	$t2,2982
    # Line 1766
    lw	$a0,29680($s0)
    lw	$a1,29676($s0)
    subu	$a0,$a0,$a1
    srl	$ra,$a0,0x1f
    li	$v1,0xf0f0
    negu	$v0,$a0
    dsll	$v1,$v1,0x10
    movz	$v0,$a0,$ra
    ori	$v1,$v1,0xf0f1
    multu	$v0,$v1
    # Line 1767
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1766
    mfhi	$at
    # Line 1767
    addiu	$t1,$sp,400
    # Line 1766
    sra	$at,$at,0x8
    addiu	$t8,$sp,0
    negu	$t9,$at
    addiu	$a7,$sp,4
    movz	$t9,$at,$ra
    addiu	$t9,$t9,1
    # Line 1767
    b	.L0d9dd06c
    # Line 1766
    sw	$t9,0($sp)
.L0d9ded94:
    # Line 1470
    bnez	$a2,.L0d9df9e4
    li	$a6,2968
    sltiu	$a5,$a0,2977
    beqz	$a5,.L0d9e0494
    li	$t2,2977
    # Line 1746
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1745
    lw	$a6,1744($s0)
    addiu	$t8,$sp,0
    sw	$a6,0($sp)
    # Line 1746
    b	.L0d9dd06c
    # Line 1745
    addiu	$a7,$sp,4
.L0d9dedcc:
    # Line 1470
    bnez	$a7,.L0d9dfa3c
    li	$ra,2944
    sltiu	$t0,$a0,2961
    bnez	$t0,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t1,2961
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1722
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1721
    lh	$t9,1668($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1722
    b	.L0d9dd06c
    # Line 1721
    addiu	$a7,$sp,4
.L0d9dee10:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1649
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1648
    lbu	$t9,453($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1649
    b	.L0d9dd06c
    # Line 1648
    addiu	$t1,$t1,1
.L0d9dee40:
    # Line 1470
    li	$a1,0x8022
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9dfb14
    li	$t8,0x8021
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2011
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2010
    lwc1	$f7,704($s0)
    # Line 2011
    addiu	$t1,$sp,400
    # Line 2010
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2011
    b	.L0d9dd06c
    # Line 2010
    swc1	$f7,1304($sp)
.L0d9dee84:
    # Line 1470
    bnez	$t1,.L0d9dfb44
    li	$t1,3419
    sltiu	$t2,$a0,3441
    beqz	$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2151
    lw	$t9,4896($s0)
    # Line 2152
    addiu	$t0,$sp,1304
    # Line 2151
    lw	$ra,4892($s0)
    # Line 2152
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2151
    subu	$t9,$t9,$ra
    addiu	$t8,$sp,0
    sra	$t9,$t9,0x2
    addiu	$a7,$sp,4
    # Line 2152
    b	.L0d9dd06c
    # Line 2151
    sw	$t9,0($sp)
.L0d9deec8:
    # Line 1470
    bnez	$at,.L0d9dfb70
    li	$ra,3410
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2103
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2102
    lw	$v0,3260($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 2103
    b	.L0d9dd06c
    # Line 2102
    addiu	$a7,$sp,4
.L0d9deefc:
    # Line 1470
    bnez	$v1,.L0d9dfb9c
    li	$v0,3385
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2156
    addiu	$t0,$sp,1304
    # Line 2154
    lw	$a1,3616($s0)
    # Line 2156
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 2154
    sw	$a1,0($sp)
    # Line 2156
    addiu	$t1,$sp,400
    # Line 2154
    addiu	$t8,$sp,0
    # Line 2155
    lw	$a0,3620($s0)
    addiu	$a7,$sp,8
    # Line 2156
    b	.L0d9dd06c
    # Line 2155
    sw	$a0,4($sp)
.L0d9def38:
    # Line 1470
    bne	$a0,$a2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2085
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2084
    lw	$a5,3784($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 2085
    b	.L0d9dd06c
    # Line 2084
    addiu	$a7,$sp,4
.L0d9def64:
    # Line 1470
    bnez	$a6,.L0d9dfbc8
    nop
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1731
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1730
    lw	$a7,1676($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 1731
    b	.L0d9dd06c
    # Line 1730
    addiu	$a7,$sp,4
.L0d9def98:
    # Line 1470
    bnez	$t0,.L0d9dfbf8
    li	$a5,2928
    sd	$a2,1728($sp)
    bnez	$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9defb4:
    # Line 1470
    bnez	$t1,.L0d9dfc38
    li	$t3,2914
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1686
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1685
    lwc1	$f8,1612($s0)
    # Line 1686
    addiu	$t1,$sp,400
    # Line 1685
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1686
    b	.L0d9dd06c
    # Line 1685
    swc1	$f8,1304($sp)
.L0d9defec:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1626
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1625
    lwc1	$f9,3752($s0)
    # Line 1626
    addiu	$t1,$sp,400
    # Line 1625
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1626
    b	.L0d9dd06c
    # Line 1625
    swc1	$f9,1304($sp)
.L0d9df01c:
    sd	$a2,1728($sp)
    # Line 1470
    bne	$a0,$t1,.L0d9de0b8
    sd	$a4,1736($sp)
    # Line 1666
    # lw $t9, -25816($gp) # &__glUnScaleColorf
    move	$a0,$s0
    addiu	$a2,$s0,1396
    bal __glUnScaleColorf
    addiu	$a1,$sp,904
    # Line 1668
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    ld	$a4,1736($sp)
    addiu	$t1,$sp,400
    # Line 1667
    addiu	$t2,$sp,904
    ld	$a3,1728($sp)
    # Line 1668
    b	.L0d9dd06c
    # Line 1667
    addiu	$t2,$t2,16
.L0d9df064:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$t3,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df078:
    # Line 1470
    bne	$a0,$t8,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1613
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1612
    lbu	$t9,452($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1613
    b	.L0d9dd06c
    # Line 1612
    addiu	$t1,$t1,1
.L0d9df0a8:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2073
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2072
    lw	$at,3772($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2073
    b	.L0d9dd06c
    # Line 2072
    addiu	$a7,$sp,4
.L0d9df0d4:
    # Line 1470
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1671
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1670
    lw	$v1,1384($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 1671
    b	.L0d9dd06c
    # Line 1670
    addiu	$a7,$sp,4
.L0d9df100:
    # Line 1470
    bnez	$a1,.L0d9dfcd8
    sltiu	$v1,$a0,3356
    sltiu	$a1,$a0,3358
    beqz	$a1,.L0d9e0564
    li	$t0,3358
    # Line 1987
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1986
    lwc1	$f10,672($s0)
    # Line 1987
    addiu	$t1,$sp,400
    # Line 1986
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1987
    b	.L0d9dd06c
    # Line 1986
    swc1	$f10,1304($sp)
.L0d9df13c:
    # Line 1470
    bnez	$t1,.L0d9dfd10
    li	$t1,3351
    sltiu	$t2,$a0,3353
    beqz	$t2,.L0d9e0594
    li	$t1,3353
    # Line 1966
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1965
    lwc1	$f11,644($s0)
    # Line 1966
    addiu	$t1,$sp,400
    # Line 1965
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1966
    b	.L0d9dd06c
    # Line 1965
    swc1	$f11,1304($sp)
.L0d9df178:
    # Line 1470
    bnez	$t1,.L0d9dfd70
    li	$t1,3332
    sltiu	$t2,$a0,3334
    beqz	$t2,.L0d9e05c4
    li	$t1,3344
    # Line 1912
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1911
    lw	$t9,1160($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1912
    b	.L0d9dd06c
    # Line 1911
    addiu	$a7,$sp,4
.L0d9df1b0:
    # Line 1470
    li	$a1,0x8081
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9dfe78
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9e0624
    # Line 2230
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2229
    lw	$v0,5084($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 2230
    b	.L0d9dd06c
    # Line 2229
    addiu	$a7,$sp,4
.L0d9df1e8:
    # Line 1470
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0d9dfeb8
    sltu	$a2,$a1,$a0
    bnez	$a2,.L0d9e0654
    li	$a1,0x807d
    # Line 2215
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2214
    lw	$a5,5044($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 2215
    b	.L0d9dd06c
    # Line 2214
    addiu	$a7,$sp,4
.L0d9df220:
    # Line 1470
    sltu	$a6,$a0,$a1
    bnez	$a6,.L0d9dfee8
    sltu	$a7,$a1,$a0
    bnez	$a7,.L0d9e0680
    # Line 1541
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1540
    lw	$t9,3728($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1541
    b	.L0d9dd06c
    # Line 1540
    addiu	$a7,$sp,4
.L0d9df254:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1470
    lbu	$at,3220($s0)
    beqz	$at,.L0d9e098c
    # Line 1571
    lwc1	$f12,_lit_3f800000
    swc1	$f12,1304($sp)
.L0d9df26c:
    # Line 1575
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    addiu	$t1,$sp,400
    # Line 1573
    addiu	$t0,$sp,1304
    # Line 1575
    b	.L0d9dd06c
    # Line 1573
    addiu	$t0,$t0,4
.L0d9df28c:
    # Line 1470
    bnez	$t1,.L0d9dff90
    li	$at,3346
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1960
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1959
    lw	$t9,756($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1960
    b	.L0d9dd06c
    # Line 1959
    addiu	$a7,$sp,4
.L0d9df2c0:
    # Line 1470
    bnez	$ra,.L0d9dffbc
    li	$v1,3317
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1891
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1890
    lbu	$t9,1144($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1891
    b	.L0d9dd06c
    # Line 1890
    addiu	$t1,$t1,1
.L0d9df2f8:
    # Line 1470
    bnez	$ra,.L0d9dffe8
    nop
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1924
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1923
    lbu	$t9,1189($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1924
    b	.L0d9dd06c
    # Line 1923
    addiu	$t1,$t1,1
.L0d9df330:
    # Line 1470
    bnez	$ra,.L0d9e001c
    li	$ra,3168
    sd	$a2,1728($sp)
    bnez	$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df34c:
    # Line 1470
    bne	$a0,$at,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1864
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1863
    lw	$v0,1900($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 1864
    b	.L0d9dd06c
    # Line 1863
    addiu	$a7,$sp,4
.L0d9df378:
    # Line 1470
    bne	$a0,$v1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1858
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1857
    lw	$a0,3204($s0)
    addiu	$t8,$sp,0
    sw	$a0,0($sp)
    # Line 1858
    b	.L0d9dd06c
    # Line 1857
    addiu	$a7,$sp,4
.L0d9df3a4:
    # Line 1470
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1834
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1833
    lw	$a2,1880($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 1834
    b	.L0d9dd06c
    # Line 1833
    addiu	$a7,$sp,4
.L0d9df3d0:
    sd	$a2,1728($sp)
    # Line 1470
    beq	$a0,$a5,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df3e4:
    sd	$a2,1728($sp)
    # Line 1470
    beq	$a0,$a6,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df3f8:
    # Line 1470
    li	$a1,0x8077
    sltu	$a7,$a0,$a1
    bnez	$a7,.L0d9e0030
    sltu	$t0,$a1,$a0
    sd	$a3,1728($sp)
    beqz	$t0,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df41c:
    # Line 1470
    li	$a1,0x806b
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e0048
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1903
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1902
    lw	$t9,1164($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1903
    b	.L0d9dd06c
    # Line 1902
    addiu	$a7,$sp,4
.L0d9df458:
    # Line 1470
    li	$a1,0x8038
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9e0094
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2177
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2176
    lwc1	$f13,500($s0)
    # Line 2177
    addiu	$t1,$sp,400
    # Line 2176
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2177
    b	.L0d9dd06c
    # Line 2176
    swc1	$f13,1304($sp)
.L0d9df498:
    # Line 1470
    bnez	$t1,.L0d9e00ac
    li	$a2,3570
    sltiu	$t2,$a0,3573
    beqz	$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2281
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2280
    lw	$t9,4912($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2281
    b	.L0d9dd06c
    # Line 2280
    addiu	$a7,$sp,4
.L0d9df4d0:
    # Line 1470
    bnez	$ra,.L0d9e00d8
    li	$a6,3538
    sltiu	$at,$a0,3540
    beqz	$at,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2149
    addiu	$t0,$sp,1304
    # Line 2147
    lw	$v1,1960($s0)
    # Line 2149
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 2147
    sw	$v1,0($sp)
    # Line 2149
    addiu	$t1,$sp,400
    # Line 2147
    addiu	$t8,$sp,0
    # Line 2148
    lw	$v0,1976($s0)
    addiu	$a7,$sp,8
    # Line 2149
    b	.L0d9dd06c
    # Line 2148
    sw	$v0,4($sp)
.L0d9df510:
    # Line 1470
    bnez	$a2,.L0d9e0120
    li	$t1,3478
    sd	$a3,1728($sp)
    bnez	$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df52c:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$a5,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df540:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1636
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1635
    lwc1	$f14,3764($s0)
    # Line 1636
    addiu	$t1,$sp,400
    # Line 1635
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1636
    b	.L0d9dd06c
    # Line 1635
    swc1	$f14,1304($sp)
.L0d9df570:
    # Line 2196
    # lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    sd	$a3,1728($sp)
    move	$a0,$s0
    sd	$a4,1736($sp)
    jal	__glLookUpTextureTexobjs
    li	$a1,3553
    ld	$a4,1736($sp)
    # Line 2199
    addiu	$t0,$sp,1304
    ld	$a3,1728($sp)
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2197
    addiu	$a7,$sp,4
    lw	$t9,0($v0)
    # Line 2196
    addiu	$t8,$sp,0
    # Line 2199
    b	.L0d9dd06c
    # Line 2197
    sw	$t9,0($sp)
.L0d9df5b4:
    # Line 1470
    beq	$a0,$ra,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df5c4:
    # Line 1470
    bne	$a0,$at,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1843
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1842
    addiu	$t1,$sp,400
    lbu	$v0,3220($s0)
    # Line 1843
    addiu	$a7,$sp,0
    # Line 1842
    addiu	$t1,$t1,1
    sltu	$v0,$zero,$v0
    # Line 1843
    b	.L0d9dd06c
    # Line 1842
    sb	$v0,400($sp)
.L0d9df5f8:
    # Line 1470
    bne	$a0,$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1816
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1815
    lw	$t9,1892($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1816
    b	.L0d9dd06c
    # Line 1815
    addiu	$a7,$sp,4
.L0d9df624:
    sd	$a2,1728($sp)
    # Line 1470
    beq	$a0,$ra,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df638:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$at,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df64c:
    # Line 1470
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9e0134
    li	$t2,0x801d
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0d9e06f4
    # Line 1999
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1998
    lwc1	$f15,688($s0)
    # Line 1999
    addiu	$t1,$sp,400
    # Line 1998
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1999
    b	.L0d9dd06c
    # Line 1998
    swc1	$f15,1304($sp)
.L0d9df688:
    # Line 1470
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e01f0
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9e0728
    li	$a1,0x85a0
    # Line 1948
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1947
    lw	$t9,1228($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1948
    b	.L0d9dd06c
    # Line 1947
    addiu	$a7,$sp,4
.L0d9df6c0:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$ra,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df6d4:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$at,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df6e8:
    # Line 1470
    li	$a1,0x8010
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9e0228
    li	$ra,0x8009
    sltu	$v1,$a1,$a0
    sd	$a3,1728($sp)
    beqz	$v1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df710:
    # Line 1470
    li	$a1,0x80d1
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0d9e0254
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$a6,0x80d2
    sd	$a3,1728($sp)
    beq	$a0,$a6,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df740:
    # Line 1470
    li	$a1,0x80b5
    sltu	$a7,$a0,$a1
    bnez	$a7,.L0d9e0278
    sltu	$t0,$a1,$a0
    bnez	$t0,.L0d9e0760
    # Line 2020
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2019
    lwc1	$f16,716($s0)
    # Line 2020
    addiu	$t1,$sp,400
    # Line 2019
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2020
    b	.L0d9dd06c
    # Line 2019
    swc1	$f16,1304($sp)
.L0d9df77c:
    # Line 1470
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e02b8
    li	$t1,0x808d
    sltu	$t2,$a1,$a0
    beqz	$t2,.L0d9dd36c
    # Line 1534
    nop	# was lw $t9, -26968($gp) # &__glim_IsEnabled
    # Line 1470
    li	$t3,0x80b1
    bne	$a0,$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1794
    lw	$t1,29688($s0)
    lwc1	$f6,0($t1)
    swc1	$f6,1304($sp)
    lwc1	$f5,4($t1)
    swc1	$f5,1308($sp)
    lwc1	$f4,8($t1)
    swc1	$f4,1312($sp)
    lwc1	$f3,12($t1)
    swc1	$f3,1316($sp)
    # Line 1795
    lwc1	$f2,16($t1)
    swc1	$f2,1320($sp)
    lwc1	$f1,20($t1)
    swc1	$f1,1324($sp)
    lwc1	$f0,24($t1)
    swc1	$f0,1328($sp)
    lwc1	$f31,28($t1)
    swc1	$f31,1332($sp)
    # Line 1796
    lwc1	$f29,32($t1)
    swc1	$f29,1336($sp)
    lwc1	$f27,36($t1)
    swc1	$f27,1340($sp)
    lwc1	$f25,40($t1)
    swc1	$f25,1344($sp)
    lwc1	$f23,44($t1)
    swc1	$f23,1348($sp)
    # Line 1797
    lwc1	$f21,48($t1)
    swc1	$f21,1352($sp)
    lwc1	$f19,52($t1)
    swc1	$f19,1356($sp)
    lwc1	$f18,56($t1)
    # Line 1798
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1797
    swc1	$f18,1360($sp)
    # Line 1798
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1797
    lwc1	$f17,60($t1)
    # Line 1798
    addiu	$t1,$sp,400
    # Line 1794
    addiu	$t0,$sp,1304
    # Line 1797
    addiu	$t0,$t0,64
    # Line 1798
    b	.L0d9dd06c
    # Line 1797
    swc1	$f17,1364($sp)
.L0d9df844:
    # Line 1470
    bnez	$t2,.L0d9e033c
    li	$a1,2984
    sltiu	$t3,$a0,2993
    beqz	$t3,.L0d9e0794
    li	$t1,2993
    # Line 1754
    lw	$t9,12676($s0)
    # Line 1755
    addiu	$t0,$sp,1304
    # Line 1754
    lw	$ra,12672($s0)
    # Line 1755
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1754
    subu	$t9,$t9,$ra
    addiu	$t8,$sp,0
    sra	$t9,$t9,0x2
    addiu	$a7,$sp,4
    # Line 1755
    b	.L0d9dd06c
    # Line 1754
    sw	$t9,0($sp)
.L0d9df888:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$at,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df89c:
    # Line 1470
    li	$a1,0x8089
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9e04a8
    li	$t3,0x8088
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2254
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2253
    lw	$a0,5140($s0)
    addiu	$t8,$sp,0
    sw	$a0,0($sp)
    # Line 2254
    b	.L0d9dd06c
    # Line 2253
    addiu	$a7,$sp,4
.L0d9df8dc:
    # Line 1470
    li	$a1,0x8024
    sd	$a3,1728($sp)
    beq	$a0,$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9df8f4:
    # Line 1470
    bne	$a0,$a2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2115
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2114
    lw	$a5,3248($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 2115
    b	.L0d9dd06c
    # Line 2114
    addiu	$a7,$sp,4
.L0d9df920:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2109
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2108
    lw	$a7,3268($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 2109
    b	.L0d9dd06c
    # Line 2108
    addiu	$a7,$sp,4
.L0d9df94c:
    # Line 1470
    bne	$a0,$t0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1544
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1543
    lw	$t9,3736($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1544
    b	.L0d9dd06c
    # Line 1543
    addiu	$a7,$sp,4
.L0d9df978:
    # Line 1470
    bnez	$ra,.L0d9e04d4
    li	$ra,2979
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1763
    lw	$a2,29668($s0)
    lw	$a5,29664($s0)
    subu	$a2,$a2,$a5
    srl	$v0,$a2,0x1f
    li	$a1,0xf0f0
    negu	$a0,$a2
    dsll	$a1,$a1,0x10
    movz	$a0,$a2,$v0
    ori	$a1,$a1,0xf0f1
    multu	$a0,$a1
    # Line 1764
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1763
    mfhi	$v1
    # Line 1764
    addiu	$t1,$sp,400
    # Line 1763
    sra	$v1,$v1,0x8
    addiu	$t8,$sp,0
    negu	$at,$v1
    addiu	$a7,$sp,4
    movz	$at,$v1,$v0
    addiu	$at,$at,1
    # Line 1764
    b	.L0d9dd06c
    # Line 1763
    sw	$at,0($sp)
.L0d9df9e4:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1743
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1742
    lh	$a7,1674($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 1743
    b	.L0d9dd06c
    # Line 1742
    addiu	$a7,$sp,4
.L0d9dfa10:
    # Line 1470
    bne	$a0,$t0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1737
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1736
    lw	$t9,1684($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1737
    b	.L0d9dd06c
    # Line 1736
    addiu	$a7,$sp,4
.L0d9dfa3c:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1715
    lwc1	$f10,1648($s0)
    swc1	$f10,904($sp)
    # Line 1716
    lwc1	$f9,1652($s0)
    swc1	$f9,908($sp)
    # Line 1717
    lwc1	$f8,1656($s0)
    # Line 1719
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1717
    swc1	$f8,912($sp)
    # Line 1719
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1718
    lwc1	$f7,1660($s0)
    # Line 1719
    addiu	$t1,$sp,400
    # Line 1715
    addiu	$t2,$sp,904
    # Line 1718
    addiu	$t2,$t2,16
    # Line 1719
    b	.L0d9dd06c
    # Line 1718
    swc1	$f7,916($sp)
.L0d9dfa84:
    # Line 1470
    bne	$a0,$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1709
    ldc1	$f11,1640($s0)
    # Line 1710
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    addiu	$t1,$sp,400
    # Line 1709
    addiu	$t2,$sp,904
    cvt.s.d	$f11,$f11
    addiu	$t2,$t2,4
    # Line 1710
    b	.L0d9dd06c
    # Line 1709
    swc1	$f11,904($sp)
.L0d9dfab8:
    # Line 1470
    bne	$a0,$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1692
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1691
    lw	$t9,1588($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1692
    b	.L0d9dd06c
    # Line 1691
    addiu	$a7,$sp,4
.L0d9dfae4:
    # Line 1584
    lwc1	$f15,384($s0)
    swc1	$f15,504($sp)
    # Line 1585
    lwc1	$f14,388($s0)
    swc1	$f14,508($sp)
    # Line 1586
    lwc1	$f13,392($s0)
    swc1	$f13,512($sp)
    # Line 1587
    lwc1	$f12,396($s0)
    addiu	$t0,$sp,1304
    # Line 1582
    addiu	$t3,$sp,504
    # Line 1587
    addiu	$t3,$t3,16
    b	.L0d9dd658
    swc1	$f12,516($sp)
.L0d9dfb14:
    # Line 1470
    bne	$a0,$t8,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2008
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2007
    lwc1	$f16,700($s0)
    # Line 2008
    addiu	$t1,$sp,400
    # Line 2007
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2008
    b	.L0d9dd06c
    # Line 2007
    swc1	$f16,1304($sp)
.L0d9dfb44:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2132
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2131
    lw	$t9,3240($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2132
    b	.L0d9dd06c
    # Line 2131
    addiu	$a7,$sp,4
.L0d9dfb70:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2100
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2099
    lw	$at,3256($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2100
    b	.L0d9dd06c
    # Line 2099
    addiu	$a7,$sp,4
.L0d9dfb9c:
    # Line 1470
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2091
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2090
    lw	$v1,3796($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 2091
    b	.L0d9dd06c
    # Line 2090
    addiu	$a7,$sp,4
.L0d9dfbc8:
    # Line 1470
    li	$a1,2963
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1728
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1727
    lh	$a2,1672($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 1728
    b	.L0d9dd06c
    # Line 1727
    addiu	$a7,$sp,4
.L0d9dfbf8:
    # Line 1470
    bne	$a0,$a5,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1701
    ldc1	$f18,1704($s0)
    cvt.s.d	$f18,$f18
    swc1	$f18,904($sp)
    # Line 1702
    ldc1	$f17,1712($s0)
    # Line 1703
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    addiu	$t1,$sp,400
    # Line 1701
    addiu	$t2,$sp,904
    # Line 1702
    cvt.s.d	$f17,$f17
    addiu	$t2,$t2,8
    # Line 1703
    b	.L0d9dd06c
    # Line 1702
    swc1	$f17,908($sp)
.L0d9dfc38:
    # Line 1470
    bne	$a0,$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1683
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1682
    lwc1	$f19,1608($s0)
    # Line 1683
    addiu	$t1,$sp,400
    # Line 1682
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1683
    b	.L0d9dd06c
    # Line 1682
    swc1	$f19,1304($sp)
.L0d9dfc68:
    # Line 1470
    bnez	$t1,.L0d9e0538
    li	$a6,3376
    sltiu	$t2,$a0,3378
    beqz	$t2,.L0d9e08b4
    li	$ra,3378
    # Line 2067
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2066
    lw	$t9,3588($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2067
    b	.L0d9dd06c
    # Line 2066
    addiu	$a7,$sp,4
.L0d9dfca0:
    # Line 1470
    sltu	$ra,$a0,$a1
    bnez	$ra,.L0d9e05f4
    sltu	$at,$a1,$a0
    bnez	$at,.L0d9e08e0
    li	$v0,0x8086
    # Line 2242
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2241
    lw	$v0,5112($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 2242
    b	.L0d9dd06c
    # Line 2241
    addiu	$a7,$sp,4
.L0d9dfcd8:
    # Line 1470
    bnez	$v1,.L0d9e0698
    li	$a6,3355
    beqz	$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1972
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1971
    lwc1	$f21,652($s0)
    # Line 1972
    addiu	$t1,$sp,400
    # Line 1971
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1972
    b	.L0d9dd06c
    # Line 1971
    swc1	$f21,1304($sp)
.L0d9dfd10:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2053
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2052
    lwc1	$f23,748($s0)
    # Line 2053
    addiu	$t1,$sp,400
    # Line 2052
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2053
    b	.L0d9dd06c
    # Line 2052
    swc1	$f23,1304($sp)
.L0d9dfd40:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1978
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1977
    lwc1	$f25,660($s0)
    # Line 1978
    addiu	$t1,$sp,400
    # Line 1977
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1978
    b	.L0d9dd06c
    # Line 1977
    swc1	$f25,1304($sp)
.L0d9dfd70:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1909
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1908
    lw	$t9,1156($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1909
    b	.L0d9dd06c
    # Line 1908
    addiu	$a7,$sp,4
.L0d9dfd9c:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1900
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1899
    lw	$at,1148($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 1900
    b	.L0d9dd06c
    # Line 1899
    addiu	$a7,$sp,4
.L0d9dfdc8:
    # Line 1470
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1936
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1935
    lw	$v1,1196($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 1936
    b	.L0d9dd06c
    # Line 1935
    addiu	$a7,$sp,4
.L0d9dfdf4:
    # Line 1470
    beq	$a0,$a1,.L0d9dd504
    # Line 2061
    addiu	$t0,$sp,1304
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dfe04:
    # Line 1470
    bne	$a0,$a2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1870
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1869
    lw	$a5,1908($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 1870
    b	.L0d9dd06c
    # Line 1869
    addiu	$a7,$sp,4
.L0d9dfe30:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1845
    lbu	$at,1884($s0)
    sb	$at,400($sp)
    # Line 1846
    lbu	$ra,1885($s0)
    sb	$ra,401($sp)
    # Line 1849
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    # Line 1847
    lbu	$t9,1886($s0)
    # Line 1849
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1847
    sb	$t9,402($sp)
    # Line 1849
    addiu	$a7,$sp,0
    # Line 1845
    addiu	$t1,$sp,400
    # Line 1848
    lbu	$t9,1887($s0)
    addiu	$t1,$t1,4
    # Line 1849
    b	.L0d9dd06c
    # Line 1848
    sb	$t9,403($sp)
.L0d9dfe78:
    # Line 1470
    li	$a1,0x8080
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9e06c8
    li	$t1,0x807f
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2227
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2226
    lw	$a0,5072($s0)
    addiu	$t8,$sp,0
    sw	$a0,0($sp)
    # Line 2227
    b	.L0d9dd06c
    # Line 2226
    addiu	$a7,$sp,4
.L0d9dfeb8:
    # Line 1470
    li	$a1,0x807b
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2212
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2211
    lw	$a2,5036($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 2212
    b	.L0d9dd06c
    # Line 2211
    addiu	$a7,$sp,4
.L0d9dfee8:
    # Line 1470
    li	$a5,0x806f
    sd	$a3,1728($sp)
    beq	$a0,$a5,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dff00:
    # Line 1470
    li	$a6,0x806d
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1933
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1932
    lw	$a7,1208($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 1933
    b	.L0d9dd06c
    # Line 1932
    addiu	$a7,$sp,4
.L0d9dff30:
    # Line 1470
    li	$t0,0x8068
    sd	$a3,1728($sp)
    bne	$a0,$t0,.L0d9de0b8
    sd	$a4,1736($sp)
    # Line 2189
    # lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    li	$a1,3552
    ld	$a4,1736($sp)
    # Line 2192
    addiu	$t0,$sp,1304
    ld	$a3,1728($sp)
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2190
    addiu	$a7,$sp,4
    lw	$t9,0($v0)
    # Line 2189
    addiu	$t8,$sp,0
    # Line 2192
    b	.L0d9dd06c
    # Line 2190
    sw	$t9,0($sp)
.L0d9dff7c:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$ra,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9dff90:
    # Line 1470
    bne	$a0,$at,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1957
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1956
    lw	$v0,752($s0)
    addiu	$t8,$sp,0
    sw	$v0,0($sp)
    # Line 1957
    b	.L0d9dd06c
    # Line 1956
    addiu	$a7,$sp,4
.L0d9dffbc:
    # Line 1470
    bne	$a0,$v1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1942
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1941
    lw	$a0,1204($s0)
    addiu	$t8,$sp,0
    sw	$a0,0($sp)
    # Line 1942
    b	.L0d9dd06c
    # Line 1941
    addiu	$a7,$sp,4
.L0d9dffe8:
    # Line 1470
    li	$a1,3312
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1921
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1920
    lbu	$t9,1188($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1921
    b	.L0d9dd06c
    # Line 1920
    addiu	$t1,$t1,1
.L0d9e001c:
    sd	$a2,1728($sp)
    # Line 1470
    beq	$a0,$ra,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0030:
    # Line 1470
    li	$at,0x8076
    sd	$a3,1728($sp)
    beq	$a0,$at,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0048:
    # Line 1470
    li	$v0,0x806a
    sd	$a3,1728($sp)
    bne	$a0,$v0,.L0d9de0b8
    sd	$a4,1736($sp)
    # Line 2203
    # lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    li	$a1,0x806f
    ld	$a4,1736($sp)
    # Line 2206
    addiu	$t0,$sp,1304
    ld	$a3,1728($sp)
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2204
    addiu	$a7,$sp,4
    lw	$v1,0($v0)
    # Line 2203
    addiu	$t8,$sp,0
    # Line 2206
    b	.L0d9dd06c
    # Line 2204
    sw	$v1,0($sp)
.L0d9e0094:
    # Line 1470
    li	$a1,0x8037
    sd	$a3,1728($sp)
    beq	$a0,$a1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e00ac:
    # Line 1470
    bne	$a0,$a2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2278
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2277
    lw	$a5,4884($s0)
    addiu	$t8,$sp,0
    sw	$a5,0($sp)
    # Line 2278
    b	.L0d9dd06c
    # Line 2277
    addiu	$a7,$sp,4
.L0d9e00d8:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2141
    lwc1	$f0,1948($s0)
    swc1	$f0,1304($sp)
    # Line 2142
    lwc1	$f31,1952($s0)
    swc1	$f31,1308($sp)
    # Line 2143
    lwc1	$f29,1964($s0)
    # Line 2145
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 2143
    swc1	$f29,1312($sp)
    # Line 2145
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2144
    lwc1	$f27,1968($s0)
    # Line 2145
    addiu	$t1,$sp,400
    # Line 2141
    addiu	$t0,$sp,1304
    # Line 2144
    addiu	$t0,$t0,16
    # Line 2145
    b	.L0d9dd06c
    # Line 2144
    swc1	$f27,1316($sp)
.L0d9e0120:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$t1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0134:
    # Line 1470
    bne	$a0,$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1996
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1995
    lwc1	$f1,684($s0)
    # Line 1996
    addiu	$t1,$sp,400
    # Line 1995
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1996
    b	.L0d9dd06c
    # Line 1995
    swc1	$f1,1304($sp)
.L0d9e0164:
    # Line 1470
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e080c
    sltu	$t2,$a1,$a0
    beqz	$t2,.L0d9e0180
    li	$t3,0x817c
    bne	$a0,$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0180:
    # Line 2047
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 2046
    lwc1	$f3,_lit_41200000
    # Line 2047
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2045
    lwc1	$f2,_lit_c1200000
    # Line 2047
    addiu	$t1,$sp,400
    # Line 2045
    addiu	$t0,$sp,1304
    # Line 2046
    swc1	$f3,1308($sp)
    addiu	$t0,$t0,8
    # Line 2047
    b	.L0d9dd06c
    # Line 2045
    swc1	$f2,1304($sp)
.L0d9e01b0:
    # Line 1470
    li	$a1,0x80b9
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e083c
    li	$a5,0x80b8
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9e0944
    # Line 2032
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2031
    lwc1	$f4,732($s0)
    # Line 2032
    addiu	$t1,$sp,400
    # Line 2031
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2032
    b	.L0d9dd06c
    # Line 2031
    swc1	$f4,1304($sp)
.L0d9e01f0:
    # Line 1470
    li	$a1,0x8322
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e07cc
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9e0914
    # Line 1879
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1878
    lw	$t9,1928($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1879
    b	.L0d9dd06c
    # Line 1878
    addiu	$a7,$sp,4
.L0d9e0228:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2174
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2173
    lw	$at,1836($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2174
    b	.L0d9dd06c
    # Line 2173
    addiu	$a7,$sp,4
.L0d9e0254:
    # Line 1470
    li	$a1,0x80d0
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0d9e086c
    sltu	$v1,$a1,$a0
    sd	$a3,1728($sp)
    beqz	$v1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0278:
    # Line 1470
    li	$a1,0x80b4
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0d9e0884
    sltu	$a5,$a1,$a0
    bnez	$a5,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2017
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2016
    lwc1	$f5,712($s0)
    # Line 2017
    addiu	$t1,$sp,400
    # Line 2016
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2017
    b	.L0d9dd06c
    # Line 2016
    swc1	$f5,1304($sp)
.L0d9e02b8:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2266
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2265
    lw	$t9,5172($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2266
    b	.L0d9dd06c
    # Line 2265
    addiu	$a7,$sp,4
.L0d9e02e4:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2260
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2259
    lw	$at,5152($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2260
    b	.L0d9dd06c
    # Line 2259
    addiu	$a7,$sp,4
.L0d9e0310:
    # Line 1470
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2126
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2125
    lw	$v1,3232($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 2126
    b	.L0d9dd06c
    # Line 2125
    addiu	$a7,$sp,4
.L0d9e033c:
    # Line 1470
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1787
    lw	$t1,29680($s0)
    lwc1	$f23,0($t1)
    swc1	$f23,1304($sp)
    lwc1	$f21,4($t1)
    swc1	$f21,1308($sp)
    lwc1	$f19,8($t1)
    swc1	$f19,1312($sp)
    lwc1	$f18,12($t1)
    swc1	$f18,1316($sp)
    # Line 1788
    lwc1	$f17,16($t1)
    swc1	$f17,1320($sp)
    lwc1	$f16,20($t1)
    swc1	$f16,1324($sp)
    lwc1	$f15,24($t1)
    swc1	$f15,1328($sp)
    lwc1	$f14,28($t1)
    swc1	$f14,1332($sp)
    # Line 1789
    lwc1	$f13,32($t1)
    swc1	$f13,1336($sp)
    lwc1	$f12,36($t1)
    swc1	$f12,1340($sp)
    lwc1	$f11,40($t1)
    swc1	$f11,1344($sp)
    lwc1	$f10,44($t1)
    swc1	$f10,1348($sp)
    # Line 1790
    lwc1	$f9,48($t1)
    swc1	$f9,1352($sp)
    lwc1	$f8,52($t1)
    swc1	$f8,1356($sp)
    lwc1	$f7,56($t1)
    # Line 1791
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1790
    swc1	$f7,1360($sp)
    # Line 1791
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1790
    lwc1	$f6,60($t1)
    # Line 1791
    addiu	$t1,$sp,400
    # Line 1787
    addiu	$t0,$sp,1304
    # Line 1790
    addiu	$t0,$t0,64
    # Line 1791
    b	.L0d9dd06c
    # Line 1790
    swc1	$f6,1364($sp)
.L0d9e03e8:
    # Line 1470
    bne	$a0,$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1773
    lw	$t1,29660($s0)
    lwc1	$f11,0($t1)
    swc1	$f11,1304($sp)
    lwc1	$f10,4($t1)
    swc1	$f10,1308($sp)
    lwc1	$f9,8($t1)
    swc1	$f9,1312($sp)
    lwc1	$f8,12($t1)
    swc1	$f8,1316($sp)
    # Line 1774
    lwc1	$f7,16($t1)
    swc1	$f7,1320($sp)
    lwc1	$f6,20($t1)
    swc1	$f6,1324($sp)
    lwc1	$f5,24($t1)
    swc1	$f5,1328($sp)
    lwc1	$f4,28($t1)
    swc1	$f4,1332($sp)
    # Line 1775
    lwc1	$f3,32($t1)
    swc1	$f3,1336($sp)
    lwc1	$f2,36($t1)
    swc1	$f2,1340($sp)
    lwc1	$f1,40($t1)
    swc1	$f1,1344($sp)
    lwc1	$f0,44($t1)
    swc1	$f0,1348($sp)
    # Line 1776
    lwc1	$f31,48($t1)
    swc1	$f31,1352($sp)
    lwc1	$f29,52($t1)
    swc1	$f29,1356($sp)
    lwc1	$f27,56($t1)
    # Line 1777
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    # Line 1776
    swc1	$f27,1360($sp)
    # Line 1777
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1776
    lwc1	$f25,60($t1)
    # Line 1777
    addiu	$t1,$sp,400
    # Line 1773
    addiu	$t0,$sp,1304
    # Line 1776
    addiu	$t0,$t0,64
    # Line 1777
    b	.L0d9dd06c
    # Line 1776
    swc1	$f25,1364($sp)
.L0d9e0494:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$t2,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e04a8:
    # Line 1470
    bne	$a0,$t3,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2251
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2250
    lw	$t9,5136($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2251
    b	.L0d9dd06c
    # Line 2250
    addiu	$a7,$sp,4
.L0d9e04d4:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1760
    lw	$a2,29660($s0)
    lw	$a5,29656($s0)
    subu	$a2,$a2,$a5
    srl	$v0,$a2,0x1f
    li	$a1,0xf0f0
    negu	$a0,$a2
    dsll	$a1,$a1,0x10
    movz	$a0,$a2,$v0
    ori	$a1,$a1,0xf0f1
    multu	$a0,$a1
    # Line 1761
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    # Line 1760
    mfhi	$v1
    # Line 1761
    addiu	$t1,$sp,400
    # Line 1760
    sra	$v1,$v1,0x8
    addiu	$t8,$sp,0
    negu	$at,$v1
    addiu	$a7,$sp,4
    movz	$at,$v1,$v0
    addiu	$at,$at,1
    # Line 1761
    b	.L0d9dd06c
    # Line 1760
    sw	$at,0($sp)
.L0d9e0538:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2064
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2063
    lw	$a7,3768($s0)
    addiu	$t8,$sp,0
    sw	$a7,0($sp)
    # Line 2064
    b	.L0d9dd06c
    # Line 2063
    addiu	$a7,$sp,4
.L0d9e0564:
    # Line 1470
    bne	$a0,$t0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1975
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1974
    lwc1	$f12,656($s0)
    # Line 1975
    addiu	$t1,$sp,400
    # Line 1974
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1975
    b	.L0d9dd06c
    # Line 1974
    swc1	$f12,1304($sp)
.L0d9e0594:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1981
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1980
    lwc1	$f13,664($s0)
    # Line 1981
    addiu	$t1,$sp,400
    # Line 1980
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1981
    b	.L0d9dd06c
    # Line 1980
    swc1	$f13,1304($sp)
.L0d9e05c4:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1951
    addiu	$t8,$sp,0
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1950
    lbu	$t9,760($s0)
    addiu	$t1,$sp,400
    sb	$t9,400($sp)
    # Line 1951
    b	.L0d9dd06c
    # Line 1950
    addiu	$t1,$t1,1
.L0d9e05f4:
    # Line 1470
    li	$ra,0x8084
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2239
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2238
    lw	$at,5100($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2239
    b	.L0d9dd06c
    # Line 2238
    addiu	$a7,$sp,4
.L0d9e0624:
    # Line 1470
    li	$v0,0x8082
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2233
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2232
    lw	$v1,5088($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 2233
    b	.L0d9dd06c
    # Line 2232
    addiu	$a7,$sp,4
.L0d9e0654:
    # Line 1470
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2218
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2217
    lw	$a2,5048($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 2218
    b	.L0d9dd06c
    # Line 2217
    addiu	$a7,$sp,4
.L0d9e0680:
    # Line 1470
    li	$a5,0x8074
    sd	$a3,1728($sp)
    beq	$a0,$a5,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0698:
    # Line 1470
    bne	$a0,$a6,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1984
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 1983
    lwc1	$f14,668($s0)
    # Line 1984
    addiu	$t1,$sp,400
    # Line 1983
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 1984
    b	.L0d9dd06c
    # Line 1983
    swc1	$f14,1304($sp)
.L0d9e06c8:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2224
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2223
    lw	$t9,5068($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2224
    b	.L0d9dd06c
    # Line 2223
    addiu	$a7,$sp,4
.L0d9e06f4:
    # Line 1470
    li	$ra,0x801f
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2002
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2001
    lwc1	$f15,692($s0)
    # Line 2002
    addiu	$t1,$sp,400
    # Line 2001
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2002
    b	.L0d9dd06c
    # Line 2001
    swc1	$f15,1304($sp)
.L0d9e0728:
    # Line 1470
    sltu	$t1,$a0,$a1
    bnez	$t1,.L0d9e0978
    li	$t1,0x8568
    sltu	$t2,$a1,$a0
    bnez	$t2,.L0d9e09c4
    # Line 1915
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1914
    lw	$t9,1180($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1915
    b	.L0d9dd06c
    # Line 1914
    addiu	$a7,$sp,4
.L0d9e0760:
    # Line 1470
    li	$ra,0x80b6
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2023
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2022
    lwc1	$f16,720($s0)
    # Line 2023
    addiu	$t1,$sp,400
    # Line 2022
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2023
    b	.L0d9dd06c
    # Line 2022
    swc1	$f16,1304($sp)
.L0d9e0794:
    # Line 1470
    bne	$a0,$t1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1757
    lw	$t9,12684($s0)
    # Line 1758
    addiu	$t0,$sp,1304
    # Line 1757
    lw	$ra,12680($s0)
    # Line 1758
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1757
    subu	$t9,$t9,$ra
    addiu	$t8,$sp,0
    sra	$t9,$t9,0x2
    addiu	$a7,$sp,4
    # Line 1758
    b	.L0d9dd06c
    # Line 1757
    sw	$t9,0($sp)
.L0d9e07cc:
    # Line 1470
    li	$a1,0x8316
    sltu	$at,$a0,$a1
    bnez	$at,.L0d9e0998
    li	$t2,0x81f8
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1876
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1875
    lw	$v1,1924($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 1876
    b	.L0d9dd06c
    # Line 1875
    addiu	$a7,$sp,4
.L0d9e080c:
    # Line 1470
    li	$a1,0x80e9
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2272
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2271
    lw	$a2,5368($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 2272
    b	.L0d9dd06c
    # Line 2271
    addiu	$a7,$sp,4
.L0d9e083c:
    # Line 1470
    bne	$a0,$a5,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2029
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2028
    lwc1	$f17,728($s0)
    # Line 2029
    addiu	$t1,$sp,400
    # Line 2028
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2029
    b	.L0d9dd06c
    # Line 2028
    swc1	$f17,1304($sp)
.L0d9e086c:
    # Line 1470
    li	$t1,0x80bc
    sd	$a3,1728($sp)
    beq	$a0,$t1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e0884:
    # Line 1470
    li	$t2,0x80b3
    bne	$a0,$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2094
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2093
    lw	$t9,3800($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 2094
    b	.L0d9dd06c
    # Line 2093
    addiu	$a7,$sp,4
.L0d9e08b4:
    # Line 1470
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2070
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2069
    lw	$at,3600($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 2070
    b	.L0d9dd06c
    # Line 2069
    addiu	$a7,$sp,4
.L0d9e08e0:
    # Line 1470
    bne	$a0,$v0,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2245
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 2244
    lw	$v1,5120($s0)
    addiu	$t8,$sp,0
    sw	$v1,0($sp)
    # Line 2245
    b	.L0d9dd06c
    # Line 2244
    addiu	$a7,$sp,4
.L0d9e090c:
    b	.L0d9dded0
    # Line 1605
    swc1	$f4,1308($sp)
.L0d9e0914:
    # Line 1470
    li	$a1,0x842c
    bne	$a0,$a1,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1918
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1917
    lw	$a2,1184($s0)
    addiu	$t8,$sp,0
    sw	$a2,0($sp)
    # Line 1918
    b	.L0d9dd06c
    # Line 1917
    addiu	$a7,$sp,4
.L0d9e0944:
    # Line 1470
    li	$a5,0x80ba
    bne	$a0,$a5,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2035
    addiu	$t8,$sp,0
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$a7,$sp,0
    # Line 2034
    lwc1	$f18,736($s0)
    # Line 2035
    addiu	$t1,$sp,400
    # Line 2034
    addiu	$t0,$sp,1304
    addiu	$t0,$t0,4
    # Line 2035
    b	.L0d9dd06c
    # Line 2034
    swc1	$f18,1304($sp)
.L0d9e0978:
    sd	$a3,1728($sp)
    # Line 1470
    beq	$a0,$t1,.L0d9dd368
    sd	$a4,1736($sp)
    b	.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9e098c:
    # Line 1573
    lwc1	$f19,384($s0)
    b	.L0d9df26c
    swc1	$f19,1304($sp)
.L0d9e0998:
    # Line 1470
    bne	$a0,$t2,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1664
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1663
    lw	$t9,1416($s0)
    addiu	$t8,$sp,0
    sw	$t9,0($sp)
    # Line 1664
    b	.L0d9dd06c
    # Line 1663
    addiu	$a7,$sp,4
.L0d9e09c4:
    # Line 1470
    li	$ra,0x85a1
    bne	$a0,$ra,.L0d9de0bc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1945
    addiu	$t0,$sp,1304
    addiu	$t2,$sp,904
    addiu	$t3,$sp,504
    addiu	$t1,$sp,400
    # Line 1944
    lw	$at,1224($s0)
    addiu	$t8,$sp,0
    sw	$at,0($sp)
    # Line 1945
    b	.L0d9dd06c
    # Line 1944
    addiu	$a7,$sp,4
.end __glDoGet

# Function: __glim_GetDoublev
# Declared: Line 2306 (Source lines: 2307-2309)
# Address: 0x0d9e0a00 - 0x0d9e0a3c (Size: 60 bytes, Frame: 16)
.globl __glim_GetDoublev
.ent __glim_GetDoublev
__glim_GetDoublev:
    # Line 2307
    lui	$a4,0x7
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,908
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 2308
    # lw $t9, -25964($gp) # &__glDoGet
    la	$a3,sub_0da40000
    li	$a2,2
    # Line 2307
    sd	$ra,0($sp)
    # Line 2308
    bal __glDoGet
    addiu	$a3,$a3,20256
    ld	$ra,0($sp)
    # Line 2309
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetDoublev

# Function: __glim_GetFloatv
# Declared: Line 2311 (Source lines: 2312-2314)
# Address: 0x0d9e0a40 - 0x0d9e0a7c (Size: 60 bytes, Frame: 16)
.globl __glim_GetFloatv
.ent __glim_GetFloatv
__glim_GetFloatv:
    # Line 2312
    lui	$a4,0x7
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,844
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 2313
    # lw $t9, -25964($gp) # &__glDoGet
    la	$a3,sub_0da40000
    li	$a2,1
    # Line 2312
    sd	$ra,0($sp)
    # Line 2313
    bal __glDoGet
    addiu	$a3,$a3,20272
    ld	$ra,0($sp)
    # Line 2314
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetFloatv

# Function: __glim_GetIntegerv
# Declared: Line 2316 (Source lines: 2317-2319)
# Address: 0x0d9e0a80 - 0x0d9e0abc (Size: 60 bytes, Frame: 16)
.globl __glim_GetIntegerv
.ent __glim_GetIntegerv
__glim_GetIntegerv:
    # Line 2317
    lui	$a4,0x7
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,780
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 2318
    # lw $t9, -25964($gp) # &__glDoGet
    la	$a3,sub_0da40000
    li	$a2,3
    # Line 2317
    sd	$ra,0($sp)
    # Line 2318
    bal __glDoGet
    addiu	$a3,$a3,20288
    ld	$ra,0($sp)
    # Line 2319
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetIntegerv

# Function: __glim_GetBooleanv
# Declared: Line 2321 (Source lines: 2322-2324)
# Address: 0x0d9e0ac0 - 0x0d9e0afc (Size: 60 bytes, Frame: 16)
.globl __glim_GetBooleanv
.ent __glim_GetBooleanv
__glim_GetBooleanv:
    # Line 2322
    lui	$a4,0x7
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,716
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 2323
    # lw $t9, -25964($gp) # &__glDoGet
    la	$a3,sub_0da40000
    li	$a2,4
    # Line 2322
    sd	$ra,0($sp)
    # Line 2323
    bal __glDoGet
    addiu	$a3,$a3,20304
    ld	$ra,0($sp)
    # Line 2324
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetBooleanv

# Function: __glim_GetError
# Declared: Line 2329 (Source lines: 2330-2337)
# Address: 0x0d9e0b00 - 0x0d9e0b5c (Size: 92 bytes, Frame: 16)
.globl __glim_GetError
.ent __glim_GetError
__glim_GetError:
    # Line 2332
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 2330
    lui	$at,0x7
    # Line 2332
    lw	$a2,4112($zero)
    # Line 2330
    addiu	$sp,$sp,-16
    addiu	$at,$at,652
    sd	$gp,0($sp)
    # Line 2332
    beq	$v0,$v1,.L0d9e0b38
    # Line 2330
    addu	$gp,$t9,$at
    # Line 2334
    lw	$v0,3208($a2)
    # Line 2335
    sw	$zero,3208($a2)
    # Line 2337
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0b38:
    # Line 2332
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 2337
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetError

# Function: __glim_GetString
# Declared: Line 2343 (Source lines: 2344-2358)
# Address: 0x0d9e0b60 - 0x0d9e0c20 (Size: 192 bytes, Frame: 16)
.globl __glim_GetString
.ent __glim_GetString
__glim_GetString:
    # Line 2345
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 2344
    lui	$at,0x7
    # Line 2345
    lw	$a3,4112($zero)
    # Line 2344
    addiu	$sp,$sp,-16
    addiu	$at,$at,556
    sd	$gp,0($sp)
    # Line 2345
    beq	$v0,$v1,.L0d9e0c04
    # Line 2344
    addu	$gp,$t9,$at
    # Line 2347
    li	$v0,7936
    beq	$a0,$v0,.L0d9e0be4
    li	$v1,7937
    beq	$a0,$v1,.L0d9e0bf4
    li	$a1,7938
    beq	$a0,$a1,.L0d9e0bfc
    li	$a2,7939
    beq	$a0,$a2,.L0d9e0bd4
    # Line 2357
    nop	# was lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 2358
    move	$v0,$zero
    # Line 2349
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0bc8:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0bd4:
    # Line 2355
    lw	$v0,3584($a3)
    # Line 2349
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0be4:
    lw	$v0,3572($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0bf4:
    # Line 2351
    b	.L0d9e0bc8
    lw	$v0,3576($a3)
.L0d9e0bfc:
    # Line 2353
    b	.L0d9e0bc8
    lw	$v0,3580($a3)
.L0d9e0c04:
    # Line 2345
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    b	.L0d9e0bc8
    move	$v0,$zero
.end __glim_GetString

# Function: __glim_GetPointervEXT
# Declared: Line 2363 (Source lines: 2365-2395)
# Address: 0x0d9e0c20 - 0x0d9e0d98 (Size: 376 bytes, Frame: 16)
.globl __glim_GetPointervEXT
.ent __glim_GetPointervEXT
__glim_GetPointervEXT:
    # Line 2368
    li	$t8,0x808f
    # Line 2365
    addiu	$sp,$sp,-16
    # Line 2366
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 2365
    lui	$v1,0x7
    # Line 2368
    li	$a4,0x8090
    sd	$ra,8($sp)
    # Line 2365
    addiu	$v1,$v1,364
    sd	$gp,0($sp)
    # Line 2366
    beq	$at,$v0,.L0d9e0d84
    # Line 2365
    addu	$gp,$t9,$v1
    # Line 2368
    sltu	$a2,$a0,$a4
    bnez	$a2,.L0d9e0c9c
    sltiu	$at,$a0,3572
    li	$v1,0x8091
    sltu	$a5,$a4,$a0
    li	$a4,0x8092
    sltu	$a7,$a4,$a0
    beqz	$a5,.L0d9e0d48
    sltu	$a6,$a0,$a4
    li	$t0,0x8093
    bnez	$a6,.L0d9e0d18
    move	$ra,$ra
    beqz	$a7,.L0d9e0d78
    nop
    bne	$a0,$t0,.L0d9e0cd8
    # Line 2394
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2385
    lw	$t1,5160($a3)
    b	.L0d9e0ce0
    sw	$t1,0($a1)
.L0d9e0c9c:
    # Line 2368
    li	$a4,0x808e
    sltu	$t2,$a0,$a4
    li	$a2,3568
    bnez	$t2,.L0d9e0cf0
    sltu	$t3,$a4,$a0
    beqz	$t3,.L0d9e0d60
    nop
    bne	$a0,$t8,.L0d9e0cd4
    move	$ra,$ra
    # Line 2395
    ld	$gp,0($sp)
    # Line 2373
    lw	$t9,5056($a3)
    # Line 2395
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2373
    sw	$t9,0($a1)
.L0d9e0cd4:
    # Line 2394
    # lw $t9, -26452($gp) # &__glSetError
.L0d9e0cd8:
    jal	__glSetError
    li	$a0,1280
.L0d9e0ce0:
    ld	$ra,8($sp)
.L0d9e0ce4:
    # Line 2395
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0cf0:
    # Line 2368
    sltiu	$ra,$a0,3571
    bnez	$ra,.L0d9e0d34
    nop
    beqz	$at,.L0d9e0cd4
    ld	$ra,8($sp)
    # Line 2395
    ld	$gp,0($sp)
    # Line 2391
    lw	$v0,4904($a3)
    # Line 2395
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2391
    sw	$v0,0($a1)
.L0d9e0d18:
    # Line 2368
    bne	$a0,$v1,.L0d9e0cd8
    # Line 2394
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2395
    ld	$gp,0($sp)
    # Line 2379
    lw	$a0,5108($a3)
    # Line 2395
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2379
    sw	$a0,0($a1)
.L0d9e0d34:
    # Line 2368
    bne	$a0,$a2,.L0d9e0cd8
    # Line 2394
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2388
    lw	$a4,4872($a3)
    b	.L0d9e0ce0
    sw	$a4,0($a1)
.L0d9e0d48:
    # Line 2395
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 2376
    lw	$a5,5080($a3)
    # Line 2395
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2376
    sw	$a5,0($a1)
.L0d9e0d60:
    # Line 2395
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 2370
    lw	$a6,5028($a3)
    # Line 2395
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2370
    sw	$a6,0($a1)
.L0d9e0d78:
    # Line 2382
    lw	$a7,5132($a3)
    b	.L0d9e0ce0
    sw	$a7,0($a1)
.L0d9e0d84:
    # Line 2366
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e0ce4
    ld	$ra,8($sp)
.end __glim_GetPointervEXT

.late_rodata
jtbl_0da44c68:
    .word .L0d9dacb0
    .word .L0d9dad84
    .word .L0d9dad68
    .word .L0d9dad38
    .word .L0d9dad10
    .word .L0d9dad04
    .word .L0d9dacf8
    .word .L0d9dacec
    .word .L0d9dacd4
    .word .L0d9dacc8
jtbl_0da44c90:
    .word .L0d9dae84
    .word .L0d9dafb4
    .word .L0d9daf98
    .word .L0d9daf78
    .word .L0d9daf54
    .word .L0d9daf30
    .word .L0d9daf0c
    .word .L0d9daee8
    .word .L0d9daec4
    .word .L0d9daea0
jtbl_0da44cb8:
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db590
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db574
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
    .word .L0d9db5cc
jtbl_0da44d5c:
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db89c
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db880
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
    .word .L0d9db8e0
jtbl_0da44e00:
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc24
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc08
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
    .word .L0d9dbc64
jtbl_0da44ea4:
    .word .L0d9dbe80
    .word .L0d9dbe80
    .word .L0d9dbf50
    .word .L0d9dbf50
    .word .L0d9dbf50
    .word .L0d9dbf50
    .word .L0d9dbf50
    .word .L0d9dbf50
    .word .L0d9dbf50
    .word .L0d9dbf50
jtbl_0da44ecc:
    .word .L0d9dc04c
    .word .L0d9dc04c
    .word .L0d9dc0d0
    .word .L0d9dc0d0
    .word .L0d9dc0d0
    .word .L0d9dc0d0
    .word .L0d9dc0d0
    .word .L0d9dc0d0
    .word .L0d9dc0d0
    .word .L0d9dc0d0
jtbl_0da44ef4:
    .word .L0d9dc24c
    .word .L0d9dc24c
    .word .L0d9dc2d0
    .word .L0d9dc2d0
    .word .L0d9dc2d0
    .word .L0d9dc2d0
    .word .L0d9dc2d0
    .word .L0d9dc2d0
    .word .L0d9dc2d0
    .word .L0d9dc2d0

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000
_lit_42040000:
    .word 0x42040000
_lit_c1200000:
    .word 0xc1200000

