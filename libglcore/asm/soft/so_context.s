# Source: ../soft/so_context.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_context.c
# Total Functions: 18

.text

# Function: __glDispatchExec
# Declared: Line 39 (Source lines: 40-40)
# Address: 0x0d9cd870 - 0x0d9cd878 (Size: 8 bytes, Frame: 0)
.ent __glDispatchExec
__glDispatchExec:
    # Line 40
    jr	$ra
    addiu	$v0,$a0,7976
.end __glDispatchExec

# Function: __glBeginDispatchOverride
# Declared: Line 43 (Source lines: 43-48)
# Address: 0x0d9cd880 - 0x0d9cd9f4 (Size: 372 bytes, Frame: 192)
.ent __glBeginDispatchOverride
__glBeginDispatchOverride:
    # Line 43
    addiu	$sp,$sp,-64
    sd	$s2,16($sp)
    sd	$s4,24($sp)
    sd	$s1,48($sp)
    sd	$s5,40($sp)
    li	$a6,4
    sd	$s3,0($sp)
    # Line 44
    li	$a3,236
    move	$a2,$zero
    sd	$ra,8($sp)
    li	$a4,4176
    addiu	$a5,$a0,7976
    sd	$s0,32($sp)
.L0d9cd8b4:
    addiu	$a6,$a6,-1
    addu	$at,$a2,$a4
    addiu	$a3,$a3,-1
    addu	$v0,$a2,$a5
    ld	$at,0($at)
    addiu	$a2,$a2,8
    bnez	$a6,.L0d9cd8b4
    sd	$at,0($v0)
    addiu	$s0,$a4,32
    addiu	$ra,$a5,32
    addiu	$t9,$a4,48
    addiu	$t8,$a5,48
    addiu	$t0,$a5,40
    addiu	$a7,$a4,40
    addiu	$t1,$a5,24
    addiu	$s3,$a4,24
    addiu	$s5,$a4,16
    addiu	$s1,$a5,16
    addiu	$t2,$a4,8
    li	$t3,0x40
    addiu	$s4,$a5,56
    addiu	$s2,$a4,56
    addiu	$a6,$a5,8
.L0d9cd910:
    addu	$at,$a2,$a4
    addu	$v0,$a2,$a5
    ld	$at,0($at)
    addu	$a1,$a2,$t2
    sd	$at,0($v0)
    addu	$at,$a2,$a6
    ld	$a1,0($a1)
    addu	$v1,$a2,$s5
    sd	$a1,0($at)
    addu	$a1,$a2,$s1
    ld	$v1,0($v1)
    addu	$v0,$a2,$s3
    sd	$v1,0($a1)
    addu	$v1,$a2,$t1
    ld	$v0,0($v0)
    addu	$at,$a2,$s0
    sd	$v0,0($v1)
    addu	$v0,$a2,$ra
    ld	$at,0($at)
    addu	$a1,$a2,$a7
    sd	$at,0($v0)
    addu	$at,$a2,$t0
    ld	$a1,0($a1)
    addu	$v1,$a2,$t9
    sd	$a1,0($at)
    addu	$a1,$a2,$t8
    ld	$v1,0($v1)
    addiu	$a3,$a3,-8
    addu	$v0,$a2,$s2
    sd	$v1,0($a1)
    addu	$v1,$a2,$s4
    ld	$v0,0($v0)
    addu	$a2,$a2,$t3
    bgtz	$a3,.L0d9cd910
    sd	$v0,0($v1)
    lw	$v0,4988($a0)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    beqz	$v0,.L0d9cd9c8
    ld	$s4,24($sp)
    ld	$ra,8($sp)
    ld	$s5,40($sp)
    ld	$s1,48($sp)
    ld	$s0,32($sp)
    # Line 48
    jr	$ra
    addiu	$sp,$sp,64
.L0d9cd9c8:
    # Line 46
    addiu	$v1,$a0,7976
    sw	$v1,6072($a0)
    ld	$s1,48($sp)
    ld	$s5,40($sp)
    ld	$s0,32($sp)
    ld	$ra,8($sp)
    ld	$s4,24($sp)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    # Line 48
    jr	$ra
    addiu	$sp,$sp,64
.end __glBeginDispatchOverride

# Function: __glEndDispatchOverride
# Declared: Line 50 (Source lines: 50-54)
# Address: 0x0d9cda00 - 0x0d9cda1c (Size: 28 bytes, Frame: 0)
.ent __glEndDispatchOverride
__glEndDispatchOverride:
    # Line 50
    lw	$at,4988($a0)
    beqz	$at,.L0d9cda14
    # Line 52
    li	$v0,4176
    # Line 54
    jr	$ra
    nop
.L0d9cda14:
    jr	$ra
    # Line 52
    sw	$v0,6072($a0)
.end __glEndDispatchOverride

# Function: __glEarlyInitContext
# Declared: Line 62 (Source lines: 63-126)
# Address: 0x0d9cda20 - 0x0d9cdba4 (Size: 388 bytes, Frame: 32)
.globl __glEarlyInitContext
.ent __glEarlyInitContext
__glEarlyInitContext:
    # Line 63
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    sd	$s8,16($sp)
    lui	$a4,0x8
    # Line 88
    lw	$s8,3588($a0)
    # Line 63
    addiu	$a4,$a4,13164
    sd	$gp,24($sp)
    addu	$gp,$t9,$a4
    # Line 79
    la	$a2,__glDestroyContext
    # Line 63
    la	$at,__glNop
    # Line 78
    la	$a3,__glCopyContext
    sw	$a3,120($a0)
    # Line 83
    sw	$at,11792($a0)
    # Line 84
    sw	$at,12000($a0)
    # Line 85
    sw	$at,11860($a0)
    # Line 79
    sw	$a2,88($a0)
    # Line 89
    lw	$t9,4($a0)
    # Line 80
    la	$a1,sub_0d9d0000
    # Line 82
    la	$v0,sub_0d9d0000
    # Line 81
    la	$v1,sub_0d9d0000
    # Line 68
    lwc1	$f0,_lit_3f800000
    # Line 69
    lwc1	$f1,_lit_3f000000
    # Line 68
    swc1	$f0,3544($a0)
    # Line 69
    swc1	$f1,3540($a0)
    # Line 73
    swc1	$f0,3684($a0)
    # Line 66
    lw	$a6,3660($a0)
    # Line 67
    lw	$a5,3664($a0)
    # Line 74
    swc1	$f0,3692($a0)
    # Line 66
    mtc1	$a6,$f3
    # Line 75
    swc1	$f0,3688($a0)
    # Line 67
    mtc1	$a5,$f2
    # Line 76
    swc1	$f0,3696($a0)
    # Line 81
    addiu	$v1,$v1,-10112
    sw	$v1,144($a0)
    # Line 66
    cvt.s.w	$f3,$f3
    # Line 82
    addiu	$v0,$v0,-9728
    sw	$v0,148($a0)
    # Line 67
    cvt.s.w	$f2,$f2
    # Line 80
    addiu	$a1,$a1,-10128
    sw	$a1,140($a0)
    # Line 63
    move	$s0,$a0
    # Line 89
    li	$a2,116
    # Line 66
    swc1	$f3,3668($a0)
    # Line 89
    nop
    move	$a1,$s8
    jalr	$t9
    # Line 67
    swc1	$f2,3672($a0)
    # Line 93
    lw	$t9,4($s0)
    li	$a2,224
    move	$a1,$s8
    # Line 92
    sw	$zero,28192($s0)
    # Line 93
    move	$a0,$s0
    jalr	$t9
    # Line 89
    sw	$v0,1584($s0)
    # Line 97
    lw	$t9,4($s0)
    ld	$s8,16($sp)
    li	$a2,4
    lw	$a1,3776($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 93
    sw	$v0,28096($s0)
    # Line 100
    lw	$t9,4($s0)
    li	$a2,4
    lw	$a1,3780($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 97
    sw	$v0,12672($s0)
    # Line 102
    lw	$t9,4($s0)
    li	$a2,4
    lw	$a1,3784($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 100
    sw	$v0,12680($s0)
    # Line 106
    # lw $t9, -24436($gp) # &__glEarlyInitTextureState
    move	$a0,$s0
    jal	__glEarlyInitTextureState
    # Line 102
    sw	$v0,4892($s0)
    # Line 107
    # lw $t9, -23528($gp) # &__glEarlyInitTransformState
    jal	__glEarlyInitTransformState
    move	$a0,$s0
    # Line 120
    la	$a7,__glNewArena
    # Line 121
    la	$t0,__glDeleteArena
    # Line 122
    la	$t1,__glArenaAlloc
    # Line 123
    la	$t2,__glArenaFreeAll
    sw	$t2,12640($s0)
    # Line 125
    # lw $t9, -31196($gp) # &__glInitDlistState
    # Line 122
    sw	$t1,12636($s0)
    # Line 121
    sw	$t0,12632($s0)
    # Line 125
    move	$a0,$s0
    jal	__glInitDlistState
    # Line 120
    sw	$a7,12628($s0)
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 126
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glEarlyInitContext

# Function: __glContextSetColorScales
# Declared: Line 128 (Source lines: 129-276)
# Address: 0x0d9cdbb0 - 0x0d9cdf3c (Size: 908 bytes, Frame: 224)
.globl __glContextSetColorScales
.ent __glContextSetColorScales
__glContextSetColorScales:
    # Line 138
    lwc1	$f4,3692($a0)
    # Line 130
    lwc1	$f7,3544($a0)
    # Line 138
    lwc1	$f8,3684($a0)
    # Line 129
    addiu	$sp,$sp,-96
    sdc1	$f26,8($sp)
    # Line 138
    lwc1	$f26,30752($a0)
    # Line 129
    sdc1	$f20,0($sp)
    # Line 138
    lwc1	$f20,30756($a0)
    sdc1	$f22,32($sp)
    c.eq.s	$f8,$f26
    sdc1	$f24,40($sp)
    # Line 129
    lui	$at,0x8
    sd	$s0,16($sp)
    addiu	$at,$at,12764
    move	$s0,$a0
    sd	$gp,24($sp)
    # Line 138
    bc1f	.L0d9cdc40
    # Line 129
    addu	$gp,$t9,$at
    # Line 138
    lwc1	$f5,3688($a0)
    lwc1	$f22,30760($a0)
    sd	$s2,48($sp)
    c.eq.s $f4,$f20
    sd	$s3,56($sp)
    sd	$ra,64($sp)
    bc1f .L0d9cdf2c
    sd	$s1,80($sp)
    c.eq.s $f5,$f22
    lwc1	$f6,3696($a0)
    lwc1	$f24,30792($a0)
    bc1f .L0d9cdc64
    sd	$s4,72($sp)
    c.eq.s $f6,$f24
    bc1f .L0d9cdc64
    nop
    b	.L0d9cdefc
    ld	$s2,48($sp)
.L0d9cdc40:
    # Line 142
    lwc1	$f6,3696($a0)
    lwc1	$f5,3688($a0)
    lwc1	$f24,30792($a0)
    lwc1	$f22,30760($a0)
    sd	$s2,48($sp)
    sd	$s3,56($sp)
    sd	$ra,64($sp)
    sd	$s4,72($sp)
    sd	$s1,80($sp)
.L0d9cdc64:
    # Line 177
    div.s	$f12,$f24,$f6
    # Line 176
    div.s	$f11,$f22,$f5
    # Line 175
    div.s	$f10,$f20,$f4
    # Line 174
    div.s	$f9,$f26,$f8
    # Line 169
    div.s	$f3,$f7,$f24
    # Line 168
    div.s	$f2,$f7,$f22
    # Line 167
    div.s	$f1,$f7,$f20
    # Line 166
    div.s	$f0,$f7,$f26
    # Line 184
    lw	$s4,12672($s0)
    lw	$v0,12676($s0)
    # Line 177
    swc1	$f12,30792($s0)
    # Line 176
    swc1	$f11,30760($s0)
    # Line 175
    swc1	$f10,30756($s0)
    # Line 174
    swc1	$f9,30752($s0)
    # Line 169
    swc1	$f3,30812($s0)
    # Line 184
    sltu	$v0,$s4,$v0
    # Line 168
    swc1	$f2,30808($s0)
    # Line 167
    swc1	$f1,30804($s0)
    # Line 184
    beqz	$v0,.L0d9cddd8
    # Line 166
    swc1	$f0,30800($s0)
    b	.L0d9cdd64
    # Line 186
    lw	$s2,0($s4)
    nop
.L0d9cdcc0:
    # Line 204
    # lw $t9, -25840($gp) # &__glScaleColorf
    lw	$a1,1408($s2)
    move	$a0,$s0
    addu	$a1,$s1,$a1
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 207
    lw	$a1,1408($s2)
    # lw $t9, -25840($gp) # &__glScaleColorf
    addu	$a1,$s1,$a1
    move	$a0,$s0
    addiu	$a1,$a1,16
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 210
    lw	$a1,1408($s2)
    # lw $t9, -25840($gp) # &__glScaleColorf
    addu	$a1,$s1,$a1
    move	$a0,$s0
    addiu	$a1,$a1,32
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 203
    lw	$a2,3588($s0)
    addiu	$s3,$s3,1
    slt	$a2,$s3,$a2
    bnez	$a2,.L0d9cdcc0
    addiu	$s1,$s1,116
.L0d9cdd24:
    # Line 214
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,1296
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 217
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,1376
    jal	__glScaleColorf
    move	$a2,$a1
.L0d9cdd4c:
    # Line 185
    lw	$a3,12676($s0)
    addiu	$s4,$s4,4
    sltu	$a3,$s4,$a3
    beqz	$a3,.L0d9cddd8
    nop
    # Line 186
    lw	$s2,0($s4)
.L0d9cdd64:
    # Line 187
    lw	$s1,0($s2)
    andi	$a4,$s1,0x1
    beqz	$a4,.L0d9cdda8
    # Line 194
    andi	$a6,$s1,0x40
    # Line 187
    lbu	$a5,3220($s0)
    beqz	$a5,.L0d9cdda4
    # Line 191
    nop	# was lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,208
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 194
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,16
    jal	__glScaleColorf
    move	$a2,$a1
.L0d9cdda4:
    andi	$a6,$s1,0x40
.L0d9cdda8:
    beqz	$a6,.L0d9cdd4c
    # Line 200
    nop	# was lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s2,1220
    jal	__glScaleColorf
    move	$a2,$a1
    lw	$a7,3588($s0)
    move	$s3,$zero
    bgtz	$a7,.L0d9cdcc0
    move	$s1,$zero
    b	.L0d9cdd24
    nop
.L0d9cddd8:
    # Line 185
    lbu	$t0,3220($s0)
    beqz	$t0,.L0d9cde10
    # Line 232
    nop	# was lw $t9, -25840($gp) # &__glScaleColorf
    # Line 224
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,384
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 227
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,192
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 232
    # lw $t9, -25840($gp) # &__glScaleColorf
.L0d9cde10:
    move	$a0,$s0
    addiu	$a1,$s0,1396
    jal	__glScaleColorf
    move	$a2,$a1
    lw	$t1,3588($s0)
    blez	$t1,.L0d9cdea8
    # Line 246
    nop	# was lw $t9, -25840($gp) # &__glScaleColorf
    # Line 232
    move	$s1,$zero
    move	$s3,$zero
    nop
    nop
    nop
.L0d9cde40:
    # Line 236
    # lw $t9, -25840($gp) # &__glScaleColorf
    lw	$a1,1584($s0)
    move	$a0,$s0
    addu	$a1,$a1,$s1
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 239
    lw	$a1,1584($s0)
    # lw $t9, -25840($gp) # &__glScaleColorf
    addu	$a1,$a1,$s1
    move	$a0,$s0
    addiu	$a1,$a1,16
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 242
    lw	$a1,1584($s0)
    # lw $t9, -25840($gp) # &__glScaleColorf
    addu	$a1,$a1,$s1
    move	$a0,$s0
    addiu	$a1,$a1,32
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 235
    lw	$a2,3588($s0)
    addiu	$s3,$s3,1
    slt	$a2,$s3,$a2
    bnez	$a2,.L0d9cde40
    addiu	$s1,$s1,116
    # Line 246
    # lw $t9, -25840($gp) # &__glScaleColorf
.L0d9cdea8:
    move	$a0,$s0
    addiu	$a1,$s0,1472
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 249
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,1552
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 267
    swc1	$f24,3696($s0)
    # Line 266
    swc1	$f22,3688($s0)
    # Line 265
    swc1	$f20,3692($s0)
    # Line 264
    swc1	$f26,3684($s0)
    # Line 259
    swc1	$f24,30792($s0)
    # Line 274
    # lw $t9, -28468($gp) # &__glPixelSetColorScales
    # Line 258
    swc1	$f22,30760($s0)
    # Line 257
    swc1	$f20,30756($s0)
    # Line 274
    move	$a0,$s0
    jal	__glPixelSetColorScales
    # Line 256
    swc1	$f26,30752($s0)
    ld	$s2,48($sp)
.L0d9cdefc:
    ld	$s3,56($sp)
    ld	$s4,72($sp)
    ld	$s0,16($sp)
    ld	$s1,80($sp)
    ldc1	$f20,0($sp)
    ldc1	$f26,8($sp)
    ld	$ra,64($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    # Line 276
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9cdf2c:
    # Line 142
    lwc1	$f6,3696($a0)
    lwc1	$f24,30792($a0)
    b	.L0d9cdc64
    sd	$s4,72($sp)
.end __glContextSetColorScales

# Function: __glSoftResetContext
# Declared: Line 286 (Source lines: 287-749)
# Address: 0x0d9cdf40 - 0x0d9ceae4 (Size: 2980 bytes, Frame: 192)
.globl __glSoftResetContext
.ent __glSoftResetContext
__glSoftResetContext:
    # Line 287
    addiu	$sp,$sp,-64
    sdc1	$f20,0($sp)
    lui	$a7,0x8
    # Line 292
    lwc1	$f20,3544($a0)
    # Line 287
    addiu	$a7,$a7,11852
    sd	$gp,16($sp)
    addu	$gp,$t9,$a7
    # Line 314
    la	$a6,__rld_obj_head
    sd	$s1,48($sp)
    lw	$a6,0($a6)
    sd	$ra,40($sp)
    lw	$at,0($a6)
    # Line 287
    sd	$s2,24($sp)
    # Line 314
    li	$s2,-1
    # Line 287
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 314
    beq	$s2,$at,.L0d9ce8d0
    sd	$a6,8($sp)
    # Line 388
    move	$a3,$zero
    li	$a5,47
.L0d9cdf90:
    # Line 390
    lw	$a7,0($a6)
    # Line 391
    lw	$a0,260($a7)
    addiu	$a4,$a0,1
    beqz	$a0,.L0d9ce018
    move	$v0,$a0
    lbu	$a3,0($a0)
    beqz	$a3,.L0d9cdfdc
    nop
.L0d9cdfb0:
    xor	$t0,$a5,$a3
    # Line 396
    lbu	$a3,1($a0)
    movz	$v0,$a4,$t0
    addiu	$a4,$a4,1
    beqz	$a3,.L0d9cdfdc
    xor	$t1,$a5,$a3
    lbu	$a3,2($a0)
    addiu	$a0,$a0,2
    movz	$v0,$a4,$t1
    bnez	$a3,.L0d9cdfb0
    addiu	$a4,$a4,1
.L0d9cdfdc:
    # Line 401
    la	$a4,sub_0da40000
    lbu	$t2,8536($a4)
    li	$a3,1
    beqz	$t2,.L0d9ce034
    addiu	$a0,$a4,8536
.L0d9cdff0:
    # Line 402
    lbu	$t8,1($a0)
    lbu	$t9,0($a0)
    lbu	$t3,0($v0)
    addiu	$v0,$v0,1
    addiu	$a0,$a0,1
    xor	$t3,$t3,$t9
    beqz	$t8,.L0d9ce018
    movn	$a3,$zero,$t3
    bnez	$a3,.L0d9cdff0
    nop
.L0d9ce018:
    # Line 405
    lw	$v0,4($a6)
    # Line 389
    bnez	$a3,.L0d9ce034
    # Line 405
    move	$a6,$v0
    # Line 389
    bnez	$v0,.L0d9cdf90
    nop
    beqz	$a3,.L0d9ce050
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0d9ce034:
    # Line 412
    lw	$a1,272($a7)
    # lw $t9, -22800($gp) # &syssgi
    lw	$a2,276($a7)
    li	$a0,140
    jal	syssgi
    addu	$a2,$a2,$a1
.L0d9ce04c:
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0d9ce050:
    # Line 469
    div.s	$f2,$f20,$f5
    # Line 465
    lwc1	$f4,_lit_477fff00
    # Line 468
    div.s	$f1,$f20,$f4
    # Line 464
    lwc1	$f3,_lit_437f0000
    # Line 429
    addiu	$a6,$gp,-21620
    sw	$a6,3576($s0)
    # Line 428
    addiu	$a5,$gp,-21628
    sw	$a5,3572($s0)
    # Line 467
    div.s	$f0,$f20,$f3
    # Line 466
    swc1	$f5,3564($s0)
    # Line 465
    swc1	$f4,3556($s0)
    # Line 464
    swc1	$f3,3548($s0)
    # Line 435
    la	$a4,sub_0da40000
    # Line 430
    la	$a3,sub_0da40000
    # Line 435
    addiu	$a4,$a4,8568
    sw	$a4,3584($s0)
    # Line 430
    addiu	$a3,$a3,8552
    sw	$a3,3580($s0)
    # Line 469
    lw	$a4,3716($s0)
    swc1	$f2,3568($s0)
    # Line 468
    swc1	$f1,3560($s0)
    # Line 469
    li	$a3,256
    beqz	$a4,.L0d9ce8c4
    # Line 467
    swc1	$f0,3552($s0)
.L0d9ce0b0:
    # Line 477
    lwc1	$f7,30752($s0)
    div.s	$f7,$f20,$f7
    # Line 478
    lwc1	$f8,30756($s0)
    div.s	$f8,$f20,$f8
    # Line 479
    lwc1	$f9,30760($s0)
    div.s	$f9,$f20,$f9
    # Line 474
    lwc1	$f11,30792($s0)
    # Line 480
    div.s	$f10,$f20,$f11
    # Line 474
    addiu	$a7,$a4,-1
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f11
    # Line 480
    swc1	$f10,30812($s0)
    # Line 479
    swc1	$f9,30808($s0)
    # Line 478
    swc1	$f8,30804($s0)
    # Line 477
    swc1	$f7,30800($s0)
    # Line 480
    move	$a0,$zero
    move	$v0,$s0
    # Line 474
    swc1	$f6,3720($s0)
    nop
.L0d9ce100:
    # Line 484
    mtc1	$a0,$f16
    cvt.s.w	$f16,$f16
    # Line 483
    addiu	$t2,$a0,1
    # Line 484
    lwc1	$f17,3552($s0)
    mtc1	$t2,$f14
    mul.s	$f16,$f16,$f17
    cvt.s.w	$f14,$f14
    swc1	$f16,3824($v0)
    # Line 483
    addiu	$t1,$a0,2
    # Line 484
    lwc1	$f15,3552($s0)
    mtc1	$t1,$f12
    mul.s	$f14,$f14,$f15
    cvt.s.w	$f12,$f12
    swc1	$f14,3828($v0)
    # Line 483
    addiu	$t0,$a0,3
    # Line 484
    lwc1	$f13,3552($s0)
    mtc1	$t0,$f10
    mul.s	$f12,$f12,$f13
    cvt.s.w	$f10,$f10
    swc1	$f12,3832($v0)
    lwc1	$f11,3552($s0)
    # Line 483
    addiu	$a0,$a0,4
    addiu	$v0,$v0,16
    # Line 484
    mul.s	$f10,$f10,$f11
    # Line 483
    bne	$a0,$a3,.L0d9ce100
    # Line 484
    swc1	$f10,3820($v0)
    # Line 495
    lwc1	$f7,_lit_3f000000
    mov.s	$f5,$f20
    # Line 494
    mov.s	$f4,$f20
    b	.L0d9ce184
    # Line 493
    lwc1	$f6,3668($s0)
.L0d9ce17c:
    # Line 499
    mov.s	$f5,$f4
    # Line 502
    mul.s	$f4,$f4,$f7
.L0d9ce184:
    # Line 495
    add.s	$f17,$f6,$f4
    c.eq.s	$f6,$f17
    bc1t	.L0d9ce1ac
    nop
    # Line 499
    mov.s	$f5,$f4
    # Line 502
    mul.s	$f4,$f4,$f7
    # Line 495
    add.s	$f18,$f6,$f4
    c.eq.s $f6,$f18
    bc1f .L0d9ce17c
    nop
.L0d9ce1ac:
    # Line 506
    lwc1	$f19,3540($s0)
    # Line 510
    lw	$a4,3588($s0)
    # Line 505
    swc1	$f5,3676($s0)
    # Line 506
    sub.s	$f19,$f19,$f5
    swc1	$f19,3680($s0)
    # Line 513
    li	$t9,2
    sw	$t9,4120($zero)
    # Line 518
    addiu	$a0,$s0,12712
    sw	$a0,12688($s0)
    # Line 515
    sw	$s2,11752($s0)
    # Line 514
    li	$s1,255
    sw	$s1,11756($s0)
    # Line 516
    lw	$t3,12672($s0)
    # Line 517
    lw	$t8,12680($s0)
    # Line 520
    li	$a5,80
    # Line 517
    sw	$t8,12684($s0)
    # Line 520
    move	$v0,$zero
    addiu	$a3,$s0,12856
    # Line 516
    sw	$t3,12676($s0)
    nop
    nop
.L0d9ce200:
    # Line 522
    sw	$a3,8($a0)
    # Line 521
    addiu	$a0,$a0,1536
    addiu	$a7,$a3,1344
    # Line 522
    sw	$a7,-184($a0)
    # Line 521
    addiu	$a6,$a3,1152
    # Line 522
    sw	$a6,-376($a0)
    # Line 521
    addiu	$a2,$a3,960
    # Line 522
    sw	$a2,-568($a0)
    # Line 521
    addiu	$a1,$a3,768
    # Line 522
    sw	$a1,-760($a0)
    # Line 521
    addiu	$v1,$a3,576
    # Line 522
    sw	$v1,-952($a0)
    # Line 521
    addiu	$v0,$v0,8
    addiu	$at,$a3,384
    # Line 522
    sw	$at,-1144($a0)
    # Line 521
    addiu	$ra,$a3,192
    addiu	$a3,$a3,1536
    bne	$v0,$a5,.L0d9ce200
    # Line 522
    sw	$ra,-1336($a0)
    # Line 547
    lwc1	$f20,_lit_3f800000
    # Line 548
    swc1	$f20,1500($s0)
    # Line 526
    la	$a5,sub_0da40000
    # Line 547
    swc1	$f20,1496($s0)
    # Line 546
    mtc1	$zero,$f14
    # Line 526
    lwc1	$f1,31000($a5)
    # Line 546
    swc1	$f14,1492($s0)
    # Line 530
    swc1	$f1,1424($s0)
    # Line 526
    swc1	$f1,1396($s0)
    addiu	$a5,$a5,31000
    # Line 541
    lwc1	$f11,44($a5)
    # Line 540
    lwc1	$f9,40($a5)
    # Line 545
    swc1	$f11,1484($s0)
    # Line 544
    swc1	$f9,1480($s0)
    # Line 539
    lwc1	$f8,36($a5)
    # Line 538
    lwc1	$f10,32($a5)
    # Line 543
    swc1	$f8,1476($s0)
    # Line 542
    swc1	$f10,1472($s0)
    # Line 541
    swc1	$f11,1468($s0)
    # Line 540
    swc1	$f9,1464($s0)
    # Line 539
    swc1	$f8,1460($s0)
    # Line 537
    lwc1	$f0,28($a5)
    # Line 538
    swc1	$f10,1456($s0)
    # Line 537
    swc1	$f0,1452($s0)
    # Line 536
    lwc1	$f31,24($a5)
    # Line 535
    lwc1	$f29,20($a5)
    # Line 536
    swc1	$f31,1448($s0)
    # Line 535
    swc1	$f29,1444($s0)
    # Line 534
    lwc1	$f27,16($a5)
    # Line 529
    lwc1	$f25,12($a5)
    # Line 534
    swc1	$f27,1440($s0)
    # Line 533
    swc1	$f25,1436($s0)
    # Line 528
    lwc1	$f23,8($a5)
    # Line 527
    lwc1	$f21,4($a5)
    # Line 532
    swc1	$f23,1432($s0)
    # Line 531
    swc1	$f21,1428($s0)
    # Line 529
    swc1	$f25,1408($s0)
    # Line 528
    swc1	$f23,1404($s0)
    # Line 549
    addiu	$v0,$s0,1504
    addiu	$a0,$s0,1424
    # Line 527
    swc1	$f21,1400($s0)
    # Line 549
    ld	$v1,1424($s0)
    sd	$v1,1504($s0)
    ld	$at,1432($s0)
    sd	$at,1512($s0)
    ld	$ra,1440($s0)
    sd	$ra,1520($s0)
    ld	$t9,1448($s0)
    sd	$t9,1528($s0)
    ld	$t8,1456($s0)
    sd	$t8,1536($s0)
    ld	$t3,1464($s0)
    sd	$t3,1544($s0)
    ld	$t2,1472($s0)
    sd	$t2,1552($s0)
    ld	$t1,1480($s0)
    sd	$t1,1560($s0)
    ld	$t0,1488($s0)
    sd	$t0,1568($s0)
    ld	$a7,1496($s0)
    sd	$a7,1576($s0)
    # Line 560
    lw	$a0,28096($s0)
    # Line 559
    lw	$v0,1584($s0)
    # Line 556
    sw	$zero,28172($s0)
    # Line 555
    sw	$zero,28160($s0)
    # Line 553
    sw	$zero,28132($s0)
    # Line 551
    lwc1	$f13,_lit_bf800000
    # Line 552
    sw	$zero,28120($s0)
    # Line 554
    swc1	$f13,28156($s0)
    # Line 560
    blez	$a4,.L0d9ce408
    # Line 551
    swc1	$f13,28116($s0)
    andi	$a1,$a4,0x1
    # Line 560
    move	$a3,$zero
    beqz	$a1,.L0d9ce3fc
    lwc1	$f12,_lit_43340000
    # Line 562
    swc1	$f10,0($v0)
    # Line 563
    swc1	$f8,4($v0)
    # Line 564
    swc1	$f9,8($v0)
    # Line 565
    swc1	$f11,12($v0)
    # Line 567
    lwc1	$f16,48($a5)
    # Line 568
    lwc1	$f15,52($a5)
    # Line 567
    swc1	$f16,16($v0)
    # Line 568
    swc1	$f15,20($v0)
    # Line 569
    lwc1	$f7,56($a5)
    # Line 570
    lwc1	$f6,60($a5)
    # Line 569
    swc1	$f7,24($v0)
    # Line 570
    swc1	$f6,28($v0)
    # Line 577
    swc1	$f16,32($v0)
    swc1	$f15,36($v0)
    swc1	$f7,40($v0)
    swc1	$f6,44($v0)
    # Line 578
    lwc1	$f5,3544($s0)
    swc1	$f5,56($v0)
    # Line 579
    lwc1	$f4,3544($s0)
    swc1	$f4,72($v0)
    # Line 580
    lwc1	$f3,3544($s0)
    swc1	$f3,124($a0)
    # Line 581
    swc1	$f13,88($v0)
    # Line 582
    swc1	$f13,140($a0)
    # Line 583
    swc1	$f12,100($v0)
    # Line 584
    lwc1	$f2,3544($s0)
    # Line 561
    addiu	$a0,$a0,224
    # Line 584
    swc1	$f2,104($v0)
    # Line 587
    sw	$zero,-8($a0)
    # Line 586
    swc1	$f13,-112($a0)
    # Line 561
    addiu	$v0,$v0,116
    li	$a3,1
    # Line 585
    sw	$zero,-20($a0)
.L0d9ce3fc:
    sra	$a2,$a4,0x1
    bnez	$a2,.L0d9cead0
    # Line 572
    mov.s	$f6,$f10
.L0d9ce408:
    # Line 612
    addiu	$t2,$s0,384
    sw	$t2,248($s0)
    # Line 595
    li	$t1,4352
    # Line 601
    sw	$t1,1928($s0)
    # Line 600
    sw	$t1,1924($s0)
    # Line 599
    sw	$t1,1912($s0)
    # Line 598
    sw	$t1,1908($s0)
    # Line 597
    sw	$t1,1904($s0)
    # Line 596
    sw	$t1,1900($s0)
    # Line 595
    sw	$t1,1896($s0)
    # Line 592
    li	$t0,0x81f9
    sw	$t0,1416($s0)
    # Line 591
    li	$a7,7425
    sw	$a7,1392($s0)
    # Line 590
    li	$a6,5634
    sw	$a6,1388($s0)
    # Line 610
    lwc1	$f4,3544($s0)
    # Line 589
    li	$a4,1032
    sw	$a4,1384($s0)
    # Line 611
    swc1	$f4,300($s0)
    # Line 610
    swc1	$f4,364($s0)
    # Line 609
    lwc1	$f18,3672($s0)
    # Line 612
    lbu	$a3,3220($s0)
    # Line 604
    lwc1	$f17,3668($s0)
    # Line 609
    swc1	$f18,372($s0)
    # Line 612
    beqz	$a3,.L0d9ce874
    # Line 604
    swc1	$f17,368($s0)
    # Line 615
    lwc1	$f19,48($a5)
    # Line 616
    lwc1	$f21,52($a5)
    # Line 618
    lwc1	$f25,60($a5)
    # Line 617
    lwc1	$f23,56($a5)
    # Line 618
    swc1	$f25,396($s0)
    # Line 617
    swc1	$f23,392($s0)
    # Line 616
    swc1	$f21,388($s0)
    # Line 615
    swc1	$f19,384($s0)
.L0d9ce494:
    # Line 653
    ldc1	$f12,_lit8_4000000000000000
    # Line 646
    li	$a0,2305
    sw	$a0,496($s0)
    # Line 645
    li	$v1,1029
    sw	$v1,492($s0)
    # Line 643
    li	$v0,6914
    # Line 644
    sw	$v0,488($s0)
    # Line 643
    sw	$v0,484($s0)
    # Line 640
    li	$t3,1
    sh	$t3,482($s0)
    # Line 639
    li	$at,0xffff
    sh	$at,480($s0)
    # Line 638
    sw	$t3,476($s0)
    # Line 637
    swc1	$f20,472($s0)
    # Line 636
    swc1	$f20,468($s0)
    # Line 633
    sw	$t3,464($s0)
    # Line 632
    swc1	$f20,460($s0)
    # Line 631
    swc1	$f20,456($s0)
    # Line 628
    swc1	$f20,1616($s0)
    # Line 627
    swc1	$f4,1608($s0)
    # Line 626
    li	$t8,2048
    sw	$t8,1588($s0)
    # Line 653
    lw	$ra,3244($s0)
    # Line 623
    sb	$t3,453($s0)
    # Line 648
    mtc1	$zero,$f14
    # Line 653
    # lw $t9, -22796($gp) # &pow
    mtc1	$ra,$f13
    # Line 622
    sb	$t3,452($s0)
    # Line 648
    swc1	$f14,504($s0)
    # Line 647
    swc1	$f14,500($s0)
    # Line 653
    jal	pow
    cvt.d.w	$f13,$f13
    ldc1	$f15,_lit8_3ff0000000000000
    div.d	$f15,$f15,$f0
    ldc1	$f16,_lit8_408f400000000000
    # Line 659
    # lw $t9, -22904($gp) # &getenv
    # Line 653
    mul.d	$f15,$f15,$f16
    # Line 659
    la	$a0,sub_0da40000
    # Line 653
    cvt.s.d	$f15,$f15
    # Line 659
    addiu	$a0,$a0,9000
    jal	getenv
    # Line 653
    swc1	$f15,508($s0)
    # Line 660
    # lw $t9, -22792($gp) # &atoi
    jal	atoi
    # Line 659
    move	$a0,$v0
    # Line 660
    beqz	$v0,.L0d9ce87c
    lw	$a0,1792($s0)
    # Line 661
    ori	$a1,$a0,0x800
    # Line 662
    ori	$a1,$a1,0x400
    # Line 663
    ori	$a1,$a1,0x200
    sw	$a1,1792($s0)
.L0d9ce560:
    # Line 667
    addiu	$a0,$s0,128
    move	$v0,$s0
    nop
    nop
.L0d9ce570:
    # Line 673
    sb	$s1,515($v0)
    sb	$s1,514($v0)
    # Line 672
    addiu	$v0,$v0,4
    # Line 673
    sb	$s1,509($v0)
    # Line 672
    bne	$v0,$a0,.L0d9ce570
    # Line 673
    sb	$s1,508($v0)
    li	$a3,1
    mtc1	$zero,$f4
    move	$v0,$s0
    nop
    nop
    nop
.L0d9ce5a0:
    # Line 676
    sw	$s2,30020($v0)
    sw	$s2,30016($v0)
    # Line 675
    addiu	$v0,$v0,16
    # Line 676
    sw	$s2,29996($v0)
    # Line 675
    bne	$v0,$a0,.L0d9ce5a0
    # Line 676
    sw	$s2,29992($v0)
    # Line 708
    sb	$a3,1887($s0)
    # Line 707
    sb	$a3,1886($s0)
    # Line 706
    sb	$a3,1885($s0)
    # Line 705
    sb	$a3,1884($s0)
    # Line 704
    li	$t2,5379
    sw	$t2,1856($s0)
    # Line 703
    swc1	$f4,1852($s0)
    # Line 702
    swc1	$f4,1848($s0)
    # Line 701
    swc1	$f4,1844($s0)
    # Line 700
    swc1	$f4,1840($s0)
    # Line 699
    li	$t1,0x8006
    sw	$t1,1836($s0)
    # Line 698
    sw	$zero,1832($s0)
    # Line 697
    sw	$a3,1828($s0)
    # Line 682
    li	$a5,519
    # Line 696
    sw	$a5,1820($s0)
    # Line 695
    li	$t0,7168
    sw	$t0,3204($s0)
    # Line 691
    li	$a7,513
    sw	$a7,1632($s0)
    # Line 690
    sb	$a3,1636($s0)
    # Line 684
    li	$a6,7680
    # Line 686
    sw	$a6,1684($s0)
    # Line 685
    sw	$a6,1680($s0)
    # Line 684
    sw	$a6,1676($s0)
    # Line 682
    sw	$a5,1664($s0)
    # Line 683
    lw	$a4,3248($s0)
    # Line 692
    lwc1	$f16,3544($s0)
    # Line 708
    lbu	$a2,3222($s0)
    # Line 683
    sllv	$a4,$a3,$a4
    addiu	$a4,$a4,-1
    # Line 687
    sh	$a4,1674($s0)
    # Line 683
    sh	$a4,1672($s0)
    # Line 692
    cvt.d.s	$f16,$f16
    # Line 708
    beqz	$a2,.L0d9ce89c
    # Line 692
    sdc1	$f16,1640($s0)
    # Line 710
    li	$t3,1029
    sw	$t3,1888($s0)
    move	$a0,$t3
.L0d9ce654:
    # Line 719
    lw	$v0,30736($s0)
    swc1	$f20,448($s0)
    # Line 718
    swc1	$f20,444($s0)
    # Line 717
    swc1	$f20,440($s0)
    # Line 719
    lbu	$t8,3221($s0)
    # Line 716
    swc1	$f20,436($s0)
    # Line 715
    swc1	$f20,432($s0)
    # Line 719
    beqz	$t8,.L0d9ce8ac
    # Line 714
    sw	$a0,1892($s0)
    # Line 722
    swc1	$f20,192($s0)
    # Line 721
    sw	$v0,1880($s0)
.L0d9ce680:
    ld	$s1,48($sp)
    # Line 735
    sb	$zero,4888($s0)
    # Line 734
    li	$v1,1536
    sw	$v1,4884($s0)
    # Line 736
    lw	$v0,4892($s0)
    # Line 741
    # lw $t9, -26488($gp) # &__glInitColorTables
    # Line 732
    lw	$at,1792($s0)
    # Line 741
    move	$a0,$s0
    # Line 736
    sw	$v0,4896($s0)
    # Line 732
    ori	$at,$at,0x8
    # Line 741
    bal __glInitColorTables
    # Line 732
    sw	$at,1792($s0)
    # Line 742
    # lw $t9, -26284($gp) # &__glInitEvaluatorState
    bal __glInitEvaluatorState
    move	$a0,$s0
    # Line 743
    # lw $t9, -24432($gp) # &__glInitTextureState
    jal	__glInitTextureState
    move	$a0,$s0
    # Line 744
    # lw $t9, -23524($gp) # &__glInitTransformState
    jal	__glInitTransformState
    move	$a0,$s0
    # Line 745
    # lw $t9, -28460($gp) # &__glInitPixelState
    jal	__glInitPixelState
    move	$a0,$s0
    # Line 746
    # lw $t9, -24704($gp) # &__glInitLUTCache
    jal	__glInitLUTCache
    move	$a0,$s0
    # Line 747
    # lw $t9, -23628($gp) # &__glInitVertexArrayState
    jal	__glInitVertexArrayState
    move	$a0,$s0
    # Line 748
    # lw $t9, -27184($gp) # &__glInitAsyncState
    jal	__glInitAsyncState
    move	$a0,$s0
    # Line 749
    ld	$gp,16($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s2,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ce720:
    # Line 575
    swc1	$f11,28($v0)
    # Line 574
    swc1	$f9,24($v0)
    # Line 573
    swc1	$f8,20($v0)
    # Line 572
    swc1	$f10,16($v0)
.L0d9ce730:
    # Line 577
    swc1	$f6,32($v0)
    swc1	$f4,36($v0)
    swc1	$f7,40($v0)
    swc1	$f5,44($v0)
    # Line 578
    lwc1	$f21,3544($s0)
    swc1	$f21,56($v0)
    # Line 579
    lwc1	$f19,3544($s0)
    swc1	$f19,72($v0)
    # Line 580
    lwc1	$f18,3544($s0)
    swc1	$f18,124($a0)
    # Line 581
    swc1	$f13,88($v0)
    # Line 582
    swc1	$f13,140($a0)
    # Line 583
    swc1	$f12,100($v0)
    # Line 584
    lwc1	$f17,3544($s0)
    swc1	$f17,104($v0)
    # Line 585
    sw	$zero,204($a0)
    # Line 586
    swc1	$f13,112($a0)
    # Line 587
    sw	$zero,216($a0)
    # Line 572
    mov.s	$f6,$f10
    # Line 565
    swc1	$f11,128($v0)
    # Line 575
    mov.s	$f5,$f11
    # Line 561
    addiu	$a3,$a3,1
    # Line 564
    swc1	$f9,124($v0)
    # Line 574
    mov.s	$f7,$f9
    # Line 563
    swc1	$f8,120($v0)
    # Line 573
    mov.s	$f4,$f8
    # Line 565
    beqz	$a3,.L0d9ce850
    # Line 562
    swc1	$f10,116($v0)
    # Line 575
    swc1	$f11,144($v0)
    # Line 574
    swc1	$f9,140($v0)
    # Line 573
    swc1	$f8,136($v0)
    # Line 572
    swc1	$f10,132($v0)
.L0d9ce7b0:
    # Line 577
    swc1	$f6,148($v0)
    swc1	$f4,152($v0)
    swc1	$f7,156($v0)
    swc1	$f5,160($v0)
    # Line 578
    lwc1	$f29,3544($s0)
    swc1	$f29,172($v0)
    # Line 579
    lwc1	$f27,3544($s0)
    swc1	$f27,188($v0)
    # Line 580
    lwc1	$f25,3544($s0)
    swc1	$f25,348($a0)
    # Line 581
    swc1	$f13,204($v0)
    # Line 582
    swc1	$f13,364($a0)
    # Line 583
    swc1	$f12,216($v0)
    # Line 584
    lwc1	$f23,3544($s0)
    # Line 561
    addiu	$a0,$a0,448
    # Line 572
    mov.s	$f6,$f10
    # Line 584
    swc1	$f23,220($v0)
    # Line 575
    mov.s	$f5,$f11
    # Line 561
    addiu	$a3,$a3,1
    # Line 587
    sw	$zero,-8($a0)
    # Line 574
    mov.s	$f7,$f9
    # Line 586
    swc1	$f13,-112($a0)
    # Line 561
    addiu	$v0,$v0,232
    # Line 573
    mov.s	$f4,$f8
    # Line 561
    beq	$a4,$a3,.L0d9ce408
    # Line 585
    sw	$zero,-20($a0)
    # Line 565
    swc1	$f11,12($v0)
.L0d9ce81c:
    # Line 564
    swc1	$f9,8($v0)
    # Line 563
    swc1	$f8,4($v0)
    # Line 565
    bnez	$a3,.L0d9ce720
    # Line 562
    swc1	$f10,0($v0)
    # Line 567
    lwc1	$f6,48($a5)
    # Line 568
    lwc1	$f4,52($a5)
    # Line 570
    lwc1	$f5,60($a5)
    # Line 569
    lwc1	$f7,56($a5)
    # Line 570
    swc1	$f5,28($v0)
    # Line 569
    swc1	$f7,24($v0)
    # Line 568
    swc1	$f4,20($v0)
    # Line 570
    b	.L0d9ce730
    # Line 567
    swc1	$f6,16($v0)
.L0d9ce850:
    lwc1	$f6,48($a5)
    # Line 568
    lwc1	$f4,52($a5)
    # Line 570
    lwc1	$f5,60($a5)
    # Line 569
    lwc1	$f7,56($a5)
    # Line 570
    swc1	$f5,144($v0)
    # Line 569
    swc1	$f7,140($v0)
    # Line 568
    swc1	$f4,136($v0)
    # Line 570
    b	.L0d9ce7b0
    # Line 567
    swc1	$f6,132($v0)
.L0d9ce874:
    b	.L0d9ce494
    # Line 620
    swc1	$f4,384($s0)
.L0d9ce87c:
    # Line 665
    li	$a1,-2049
    and	$a1,$a0,$a1
    # Line 666
    li	$a2,-1025
    and	$a1,$a1,$a2
    # Line 667
    li	$a2,-513
    and	$a1,$a1,$a2
    b	.L0d9ce560
    sw	$a1,1792($s0)
.L0d9ce89c:
    # Line 712
    li	$a2,1028
    sw	$a2,1888($s0)
    b	.L0d9ce654
    li	$a0,1028
.L0d9ce8ac:
    # Line 730
    swc1	$f20,204($s0)
    swc1	$f20,200($s0)
    swc1	$f20,196($s0)
    swc1	$f20,192($s0)
    b	.L0d9ce680
    # Line 729
    sw	$v0,1880($s0)
.L0d9ce8c4:
    move	$a4,$a3
    # Line 472
    b	.L0d9ce0b0
    sw	$a3,3716($s0)
.L0d9ce8d0:
    # Line 318
    # lw $t9, -22788($gp) # &_rld_new_interface
    la	$a1,sub_0da40000
    li	$a0,5
    # Line 316
    lui	$s1,0x20
    lw	$s1,3728($s1)
    # Line 318
    jal	_rld_new_interface
    addiu	$a1,$a1,8520
    # Line 323
    bnez	$s1,.L0d9ce93c
    nop
    bnez	$v0,.L0d9cea98
    move	$a3,$zero
    li	$a5,47
    li	$s1,1
    # Line 326
    ld	$a0,8($sp)
.L0d9ce908:
    lw	$a4,28($a0)
    # Line 325
    lw	$a0,24($a0)
    # Line 326
    addu	$a4,$a4,$a0
    beqz	$a0,.L0d9ce9bc
    addiu	$v0,$a4,-1
    # Line 329
    sltu	$a1,$v0,$a0
    bnez	$a1,.L0d9ce97c
    nop
    lbu	$a2,-1($a4)
    beq	$a5,$a2,.L0d9ce980
    # Line 335
    la	$a4,sub_0da40000
    b	.L0d9ce954
    # Line 330
    addiu	$v0,$v0,-1
.L0d9ce93c:
    b	.L0d9ce050
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0d9ce944:
    # Line 330
    lbu	$a3,0($v0)
    beq	$a5,$a3,.L0d9ce97c
    nop
    addiu	$v0,$v0,-1
.L0d9ce954:
    sltu	$a4,$v0,$a0
    bnez	$a4,.L0d9ce97c
    nop
    lbu	$a6,0($v0)
    beq	$a5,$a6,.L0d9ce97c
    nop
    addiu	$v0,$v0,-1
    sltu	$a7,$v0,$a0
    beqz	$a7,.L0d9ce944
    nop
.L0d9ce97c:
    # Line 335
    la	$a4,sub_0da40000
.L0d9ce980:
    lbu	$t0,8536($a4)
    beqz	$t0,.L0d9ceab4
    # Line 331
    addiu	$v0,$v0,1
    # Line 335
    li	$a3,1
    addiu	$a0,$a4,8536
.L0d9ce994:
    # Line 336
    lbu	$t2,1($a0)
    lbu	$t3,0($a0)
    lbu	$t1,0($v0)
    addiu	$v0,$v0,1
    addiu	$a0,$a0,1
    xor	$t1,$t1,$t3
    beqz	$t2,.L0d9ce9bc
    movn	$a3,$zero,$t1
    bnez	$a3,.L0d9ce994
    nop
.L0d9ce9bc:
    beqz	$a3,.L0d9cea70
    # Line 324
    ld	$a4,8($sp)
.L0d9ce9c4:
    # Line 357
    ld	$t0,8($sp)
.L0d9ce9c8:
    lw	$t0,16($t0)
    # Line 358
    lhu	$a0,44($t0)
    lw	$a7,28($t0)
    blez	$a0,.L0d9ce04c
    addu	$a7,$a7,$t0
    li	$t1,5
    move	$a5,$zero
    sll	$a4,$a0,0x5
    move	$v0,$a7
    addu	$a4,$a4,$a7
.L0d9ce9f0:
    # Line 360
    lw	$a6,0($v0)
    beq	$s1,$a6,.L0d9ceaa0
    move	$a3,$zero
.L0d9ce9fc:
    bnez	$a3,.L0d9cea30
    # Line 359
    addiu	$v0,$v0,32
    sltu	$t2,$v0,$a4
    beqz	$t2,.L0d9cea30
    addiu	$a5,$a5,1
    # Line 360
    lw	$t3,0($v0)
    beq	$s1,$t3,.L0d9ceabc
    move	$a3,$zero
.L0d9cea1c:
    bnez	$a3,.L0d9cea30
    # Line 359
    addiu	$v0,$v0,32
    sltu	$t8,$v0,$a4
    bnez	$t8,.L0d9ce9f0
    addiu	$a5,$a5,1
.L0d9cea30:
    # Line 365
    slt	$t9,$a5,$a0
    beqz	$t9,.L0d9ce04c
    # Line 366
    ld	$a3,8($sp)
    # Line 371
    # lw $t9, -22800($gp) # &syssgi
    # Line 366
    sll	$a2,$a5,0x5
    addu	$a2,$a7,$a2
    lw	$a3,20($a3)
    lw	$a1,8($a2)
    # Line 371
    lw	$a2,20($a2)
    # Line 366
    subu	$a3,$t0,$a3
    # Line 371
    li	$a0,140
    # Line 366
    addu	$a1,$a1,$a3
    # Line 371
    jal	syssgi
    addu	$a2,$a2,$a1
    b	.L0d9ce050
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0d9cea70:
    # Line 340
    lw	$a4,8($a4)
    # Line 324
    bnez	$a3,.L0d9cea88
    sd	$a4,8($sp)
    ld	$a6,8($sp)
    bnez	$a6,.L0d9ce908
    # Line 326
    ld	$a0,8($sp)
.L0d9cea88:
    # Line 324
    bnez	$a3,.L0d9ce9c8
    # Line 357
    ld	$t0,8($sp)
    b	.L0d9ce050
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0d9cea98:
    # Line 324
    b	.L0d9ce050
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0d9ceaa0:
    # Line 360
    lw	$t2,24($v0)
    bne	$t1,$t2,.L0d9ce9fc
    move	$a3,$zero
    b	.L0d9ce9fc
    li	$a3,1
.L0d9ceab4:
    # Line 336
    b	.L0d9ce9c4
    li	$a3,1
.L0d9ceabc:
    # Line 360
    lw	$t3,24($v0)
    bne	$t1,$t3,.L0d9cea1c
    move	$a3,$zero
    b	.L0d9cea1c
    li	$a3,1
.L0d9cead0:
    # Line 575
    mov.s	$f5,$f11
    # Line 574
    mov.s	$f7,$f9
    # Line 573
    mov.s	$f4,$f8
    b	.L0d9ce81c
    # Line 565
    swc1	$f11,12($v0)
.end __glSoftResetContext

# Function: __glDestroyContext
# Declared: Line 757 (Source lines: 758-772)
# Address: 0x0d9ceaf0 - 0x0d9ceb60 (Size: 112 bytes, Frame: 32)
.globl __glDestroyContext
.ent __glDestroyContext
__glDestroyContext:
    # Line 758
    addiu	$sp,$sp,-32
    lui	$at,0x8
    sd	$s8,8($sp)
    addiu	$at,$at,8860
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 763
    # lw $t9, -26460($gp) # &__glDestroySoftContext
    # Line 758
    sd	$ra,0($sp)
    sd	$s0,24($sp)
    # Line 763
    nop
    # Line 758
    move	$s0,$a0
    # Line 763
    bal __glDestroySoftContext
    # Line 761
    lw	$s8,4112($zero)
    # Line 766
    sw	$s0,4112($zero)
    # Line 768
    lw	$t9,12($s0)
    move	$a1,$s0
    jal	__glDestroySoftContext
    move	$a0,$s0
    # Line 772
    ld	$gp,16($sp)
    # Line 771
    xor	$v0,$s0,$s8
    ld	$ra,0($sp)
    # Line 772
    ld	$s0,24($sp)
    # Line 771
    sltiu	$v0,$v0,1
    movn	$s8,$zero,$v0
    sw	$s8,4112($zero)
    # Line 772
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDestroyContext

# Function: __glDestroySoftContext
# Declared: Line 790 (Source lines: 791-862)
# Address: 0x0d9ceb60 - 0x0d9ced78 (Size: 536 bytes, Frame: 32)
.globl __glDestroySoftContext
.ent __glDestroySoftContext
__glDestroySoftContext:
    # Line 791
    addiu	$sp,$sp,-32
    # Line 794
    lw	$v0,4112($zero)
    sd	$v0,0($sp)
    # Line 797
    sw	$a0,4112($zero)
    lw	$a1,30748($a0)
    # Line 791
    sd	$s0,16($sp)
    lui	$at,0x8
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,8748
    sd	$gp,8($sp)
    # Line 797
    beqz	$a1,.L0d9ceba0
    # Line 791
    addu	$gp,$t9,$at
    # Line 802
    lw	$t9,12($s0)
    jalr	$t9
    nop
.L0d9ceba0:
    # Line 808
    # lw $t9, -26484($gp) # &__glFreeColorTables
    bal __glFreeColorTables
    move	$a0,$s0
    # Line 809
    # lw $t9, -26280($gp) # &__glFreeEvaluatorState
    bal __glFreeEvaluatorState
    move	$a0,$s0
    # Line 810
    # lw $t9, -28464($gp) # &__glFreePixelState
    jal	__glFreePixelState
    move	$a0,$s0
    lw	$v1,6068($s0)
    bnez	$v1,.L0d9ced28
    # Line 811
    nop	# was lw $t9, -27180($gp) # &__glFreeAsyncState
    lw	$a0,4924($s0)
.L0d9cebd4:
    bnez	$a0,.L0d9ced38
    # Line 812
    nop	# was lw $t9, -31192($gp) # &__glFreeDlistState
    lw	$a1,12672($s0)
.L0d9cebe0:
    bnez	$a1,.L0d9ced48
    # Line 813
    nop	# was lw $t9, -26952($gp) # &__glFreeAttributeState
    lw	$a2,28196($s0)
.L0d9cebec:
    bnez	$a2,.L0d9ced58
    # Line 814
    nop	# was lw $t9, -24428($gp) # &__glFreeTextureState
    lw	$a1,28132($s0)
.L0d9cebf8:
    beqz	$a1,.L0d9cec08
    # Line 820
    nop	# was lw $t9, -24692($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
.L0d9cec08:
    lw	$a1,28172($s0)
    beqz	$a1,.L0d9cec1c
    # Line 821
    nop	# was lw $t9, -24692($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
.L0d9cec1c:
    lw	$a3,28192($s0)
    bnez	$a3,.L0d9ced68
    # Line 822
    nop	# was lw $t9, -24700($gp) # &__glFreeLUTCache
    lw	$a1,1584($s0)
.L0d9cec2c:
    beqz	$a1,.L0d9cec40
    nop
    # Line 838
    lw	$t9,12($s0)
    jal	__glFreeLUTCache
    move	$a0,$s0
.L0d9cec40:
    lw	$a1,28096($s0)
    beqz	$a1,.L0d9cec58
    nop
    # Line 839
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9cec58:
    lw	$a1,4892($s0)
    beqz	$a1,.L0d9cec70
    nop
    # Line 840
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9cec70:
    lw	$a1,1748($s0)
    beqz	$a1,.L0d9cec88
    nop
    # Line 842
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9cec88:
    lw	$a1,29656($s0)
    beqz	$a1,.L0d9ceca0
    nop
    # Line 843
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9ceca0:
    lw	$a1,29664($s0)
    beqz	$a1,.L0d9cecb8
    nop
    # Line 844
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9cecb8:
    lw	$a1,29676($s0)
    beqz	$a1,.L0d9cecd0
    nop
    # Line 845
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9cecd0:
    lw	$a1,29684($s0)
    beqz	$a1,.L0d9cece8
    nop
    # Line 846
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9cece8:
    lw	$a1,29692($s0)
    beqz	$a1,.L0d9ced04
    # Line 861
    ld	$a4,0($sp)
    # Line 847
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 861
    ld	$a4,0($sp)
.L0d9ced04:
    ld	$ra,24($sp)
    xor	$a5,$s0,$a4
    # Line 862
    ld	$gp,8($sp)
    # Line 861
    sltiu	$a5,$a5,1
    # Line 862
    ld	$s0,16($sp)
    # Line 861
    movn	$a4,$zero,$a5
    # Line 862
    addiu	$sp,$sp,32
    jr	$ra
    # Line 861
    sw	$a4,4112($zero)
.L0d9ced28:
    # Line 811
    jalr	$t9
    move	$a0,$s0
    b	.L0d9cebd4
    lw	$a0,4924($s0)
.L0d9ced38:
    # Line 812
    jalr	$t9
    move	$a0,$s0
    b	.L0d9cebe0
    lw	$a1,12672($s0)
.L0d9ced48:
    # Line 813
    jalr	$t9
    move	$a0,$s0
    b	.L0d9cebec
    lw	$a2,28196($s0)
.L0d9ced58:
    # Line 814
    jalr	$t9
    move	$a0,$s0
    b	.L0d9cebf8
    lw	$a1,28132($s0)
.L0d9ced68:
    # Line 822
    jalr	$t9
    move	$a0,$s0
    b	.L0d9cec2c
    lw	$a1,1584($s0)
.end __glDestroySoftContext

# Function: __glFreePrivate
# Declared: Line 868 (Source lines: 869-911)
# Address: 0x0d9ced80 - 0x0d9cee50 (Size: 208 bytes, Frame: 32)
.globl __glFreePrivate
.ent __glFreePrivate
__glFreePrivate:
    # Line 869
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 872
    lw	$s0,28($a0)
    # Line 869
    lui	$at,0x8
    sd	$s1,8($sp)
    move	$s1,$a0
    addiu	$at,$at,8204
    sd	$gp,16($sp)
    # Line 872
    beqz	$s0,.L0d9cee3c
    # Line 869
    addu	$gp,$t9,$at
    # Line 872
    lw	$t9,24($s0)
    beqz	$t9,.L0d9cedc0
    sd	$ra,24($sp)
    # Line 876
    addiu	$a0,$s0,8
    jalr	$t9
    move	$a1,$s1
.L0d9cedc0:
    lw	$t9,44($s0)
    beqz	$t9,.L0d9cedd4
    # Line 879
    addiu	$a0,$s0,28
    jalr	$t9
    move	$a1,$s1
.L0d9cedd4:
    lw	$t9,136($s0)
    beqz	$t9,.L0d9cede8
    # Line 884
    addiu	$a0,$s0,120
    jalr	$t9
    move	$a1,$s1
.L0d9cede8:
    lw	$t9,88($s0)
    beqz	$t9,.L0d9cedfc
    # Line 887
    addiu	$a0,$s0,72
    jalr	$t9
    move	$a1,$s1
.L0d9cedfc:
    lw	$t9,68($s0)
    beqz	$t9,.L0d9cee10
    # Line 890
    addiu	$a0,$s0,52
    jalr	$t9
    move	$a1,$s1
.L0d9cee10:
    # Line 907
    lw	$t9,20($s1)
    jalr	$t9
    move	$a0,$s0
    # Line 911
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$ra,24($sp)
    # Line 909
    sw	$zero,24($s1)
    # Line 908
    sw	$zero,28($s1)
    # Line 911
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cee3c:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFreePrivate

# Function: __glSetError
# Declared: Line 913 (Source lines: 914-931)
# Address: 0x0d9cee50 - 0x0d9cef08 (Size: 184 bytes, Frame: 32)
.globl __glSetError
.ent __glSetError
__glSetError:
    # Line 914
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$v0,0x8
    # Line 915
    lw	$s0,4112($zero)
    # Line 914
    addiu	$v0,$v0,7996
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 920
    # lw $t9, -22904($gp) # &getenv
    la	$at,sub_0da40000
    # Line 914
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    # Line 920
    jal	getenv
    addiu	$a0,$at,9016
    bnez	$v0,.L0d9ceed8
    # Line 921
    la	$a1,sub_0da40000
    # Line 922
    lw	$v1,3208($s0)
.L0d9cee94:
    beqz	$v1,.L0d9cef00
    nop
.L0d9cee9c:
    # Line 927
    lw	$t9,11776($s0)
    beqz	$t9,.L0d9ceeb0
    # Line 929
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
.L0d9ceeb0:
    # Line 930
    lw	$t9,24($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 931
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ceed8:
    # Line 921
    # lw $t9, -22924($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,9032
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 922
    # lw $t9, -22784($gp) # &abort
    jal	abort
    nop
    b	.L0d9cee94
    lw	$v1,3208($s0)
.L0d9cef00:
    # Line 927
    b	.L0d9cee9c
    sw	$s1,3208($s0)
.end __glSetError

# Function: __glim_RenderMode
# Declared: Line 933 (Source lines: 934-987)
# Address: 0x0d9cef10 - 0x0d9cf0b4 (Size: 420 bytes, Frame: 32)
.globl __glim_RenderMode
.ent __glim_RenderMode
__glim_RenderMode:
    # Line 949
    li	$a2,7170
    # Line 934
    addiu	$sp,$sp,-32
    # Line 936
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 934
    lui	$v1,0x8
    # Line 965
    li	$t0,7170
    sd	$ra,24($sp)
    # Line 934
    addiu	$v1,$v1,7804
    sd	$gp,16($sp)
    # Line 936
    beq	$at,$v0,.L0d9cf048
    # Line 934
    addu	$gp,$t9,$v1
    # Line 938
    li	$a5,7168
    beq	$a5,$a0,.L0d9cef78
    li	$a4,7169
    beq	$a4,$a0,.L0d9cef78
    li	$a1,7170
    beq	$a0,$a1,.L0d9cef78
    # Line 944
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,24($sp)
    # Line 945
    move	$v0,$zero
    # Line 987
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cef78:
    # Line 949
    lw	$v0,3204($a3)
    beq	$a5,$v0,.L0d9cf000
    nop
    beq	$a4,$v0,.L0d9cf020
    nop
    beq	$v0,$a2,.L0d9cf034
    lw	$a5,0($sp)
.L0d9cef94:
    # Line 963
    sw	$a0,3204($a3)
    # Line 964
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11756($a3)
    ori	$a6,$a6,0x1
    # Line 965
    beq	$a4,$a0,.L0d9cf008
    # Line 964
    sw	$a6,11756($a3)
    # Line 965
    bne	$a0,$t0,.L0d9cefe4
    ld	$ra,24($sp)
    # Line 975
    lw	$v0,4904($a3)
    beqz	$v0,.L0d9cf084
    # Line 976
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 984
    sw	$zero,4920($a3)
    # Line 983
    sw	$zero,4916($a3)
    # Line 982
    sb	$zero,4888($a3)
    # Line 980
    sb	$zero,4900($a3)
    # Line 979
    sw	$v0,4908($a3)
    # Line 981
    lw	$t1,4892($a3)
    sw	$t1,4896($a3)
.L0d9cefe0:
    ld	$ra,24($sp)
.L0d9cefe4:
    # Line 987
    move	$v0,$a5
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ceff4:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cf000:
    b	.L0d9cef94
    # Line 951
    move	$a5,$zero
.L0d9cf008:
    # Line 967
    lw	$v0,4872($a3)
    beqz	$v0,.L0d9cf09c
    # Line 968
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 972
    sb	$zero,4868($a3)
    b	.L0d9cefe0
    # Line 971
    sw	$v0,4876($a3)
.L0d9cf020:
    # Line 954
    lbu	$t2,4868($a3)
    beqz	$t2,.L0d9cf068
    li	$v0,-1
.L0d9cf02c:
    # Line 956
    b	.L0d9cef94
    # Line 954
    move	$a5,$v0
.L0d9cf034:
    # Line 958
    lbu	$t3,4900($a3)
    beqz	$t3,.L0d9cf07c
    li	$v0,-1
.L0d9cf040:
    # Line 959
    b	.L0d9cef94
    # Line 958
    move	$a5,$v0
.L0d9cf048:
    # Line 936
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    move	$v0,$zero
    # Line 987
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cf068:
    # Line 954
    lw	$v0,4876($a3)
    lw	$v1,4872($a3)
    subu	$v0,$v0,$v1
    b	.L0d9cf02c
    sra	$v0,$v0,0x2
.L0d9cf07c:
    b	.L0d9cf040
    # Line 958
    lw	$v0,4916($a3)
.L0d9cf084:
    sd	$a5,8($sp)
    # Line 976
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 977
    b	.L0d9ceff4
    ld	$v0,8($sp)
.L0d9cf09c:
    sd	$a5,8($sp)
    # Line 968
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 969
    b	.L0d9ceff4
    ld	$v0,8($sp)
.end __glim_RenderMode

# Function: __glChangeWindowSize
# Declared: Line 994 (Source lines: 995-1040)
# Address: 0x0d9cf0c0 - 0x0d9cf1c4 (Size: 260 bytes, Frame: 48)
.globl __glChangeWindowSize
.ent __glChangeWindowSize
__glChangeWindowSize:
    # Line 995
    addiu	$sp,$sp,-48
    sd	$s2,0($sp)
    # Line 998
    sw	$a2,3704($a0)
    # Line 997
    sw	$a1,3700($a0)
    # Line 1001
    lw	$at,30656($a0)
    # Line 995
    lui	$v0,0x8
    sd	$gp,32($sp)
    addiu	$v0,$v0,7372
    addu	$gp,$t9,$v0
    # Line 1001
    lw	$t9,56($at)
    # Line 995
    move	$s2,$a2
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$ra,24($sp)
    # Line 1001
    jalr	$t9
    move	$a0,$at
    lbu	$v1,3222($s0)
    beqz	$v1,.L0d9cf128
    nop
    # Line 1003
    lw	$a0,30660($s0)
    lw	$t9,56($a0)
    move	$a2,$s2
    jalr	$t9
    move	$a1,$s1
.L0d9cf128:
    # Line 1016
    lbu	$a0,3224($s0)
    beqz	$a0,.L0d9cf140
    nop
    lw	$a1,31376($s0)
    bnez	$a1,.L0d9cf1a8
    nop
.L0d9cf140:
    # Line 1018
    lbu	$a2,3225($s0)
.L0d9cf144:
    beqz	$a2,.L0d9cf160
    nop
    # Line 1022
    lw	$t9,31284($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31228
.L0d9cf160:
    lbu	$a3,3226($s0)
    beqz	$a3,.L0d9cf180
    nop
    # Line 1025
    lw	$t9,31164($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31108
.L0d9cf180:
    # Line 1039
    lw	$t9,11916($s0)
    ld	$s2,0($sp)
    ld	$s1,8($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    # Line 1040
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cf1a8:
    # Line 1018
    lw	$t9,31416($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31360
    b	.L0d9cf144
    lbu	$a2,3225($s0)
.end __glChangeWindowSize

# Function: __glChangeReadWindowSize
# Declared: Line 1042 (Source lines: 1044-1046)
# Address: 0x0d9cf1d0 - 0x0d9cf1dc (Size: 12 bytes, Frame: 0)
.globl __glChangeReadWindowSize
.ent __glChangeReadWindowSize
__glChangeReadWindowSize:
    # Line 1045
    sw	$a2,3712($a0)
    # Line 1046
    jr	$ra
    # Line 1044
    sw	$a1,3708($a0)
.end __glChangeReadWindowSize

# Function: __glFindWindowSize
# Declared: Line 1056 (Source lines: 1057-1079)
# Address: 0x0d9cf1e0 - 0x0d9cf2b4 (Size: 212 bytes, Frame: 48)
.globl __glFindWindowSize
.ent __glFindWindowSize
__glFindWindowSize:
    # Line 1057
    addiu	$sp,$sp,-48
    lui	$at,0x8
    sd	$gp,40($sp)
    addiu	$at,$at,7084
    addu	$gp,$t9,$at
    # Line 1061
    lw	$t9,28($a0)
    # Line 1057
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 1061
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    nop
    # Line 1057
    sd	$ra,32($sp)
    # Line 1061
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 1063
    lw	$a1,8($sp)
    lw	$v0,3700($s0)
    lw	$v1,3704($s0)
    bne	$v0,$a1,.L0d9cf234
    lw	$a2,12($sp)
    beq	$v1,$a2,.L0d9cf240
.L0d9cf234:
    # Line 1064
    nop	# was lw $t9, -26444($gp) # &__glChangeWindowSize
    bal __glChangeWindowSize
    move	$a0,$s0
.L0d9cf240:
    lbu	$a0,3536($s0)
    beqz	$a0,.L0d9cf294
    # Line 1069
    lw	$a1,8($sp)
    # Line 1070
    lw	$a2,12($sp)
    # Line 1069
    sw	$a1,16($sp)
    # Line 1070
    sw	$a2,20($sp)
.L0d9cf258:
    # Line 1075
    lw	$a3,3708($s0)
    bne	$a3,$a1,.L0d9cf280
    lw	$a4,3712($s0)
    bne	$a4,$a2,.L0d9cf284
    # Line 1077
    nop	# was lw $t9, -26440($gp) # &__glChangeReadWindowSize
    ld	$ra,32($sp)
.L0d9cf270:
    ld	$s0,24($sp)
    # Line 1079
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cf280:
    # Line 1077
    # lw $t9, -26440($gp) # &__glChangeReadWindowSize
.L0d9cf284:
    bal __glChangeReadWindowSize
    move	$a0,$s0
    b	.L0d9cf270
    ld	$ra,32($sp)
.L0d9cf294:
    # Line 1072
    lw	$t9,72($s0)
    move	$a0,$s0
    addiu	$a2,$sp,20
    jal	__glChangeReadWindowSize
    addiu	$a1,$sp,16
    lw	$a1,16($sp)
    b	.L0d9cf258
    lw	$a2,20($sp)
.end __glFindWindowSize

# Function: FillBufferInfo
# Declared: Line 1085 (Source lines: 1086-1121)
# Address: 0x0d9cf2c0 - 0x0d9cf310 (Size: 80 bytes, Frame: 16)
.ent FillBufferInfo
FillBufferInfo:
    # Line 1091
    lw	$t9,12($a1)
    # Line 1086
    addiu	$sp,$sp,-16
    # Line 1091
    li	$a0,1
    # Line 1086
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 1091
    jalr	$t9
    li	$a1,140
    # Line 1119
    la	$v1,__glFreePrivate
    # Line 1091
    la	$a0,__glFreeBuffer
    # Line 1107
    sw	$a0,68($v0)
    # Line 1106
    sw	$a0,88($v0)
    # Line 1105
    sw	$a0,136($v0)
    # Line 1104
    sw	$a0,44($v0)
    ld	$ra,0($sp)
    # Line 1103
    sw	$a0,24($v0)
    # Line 1119
    sw	$v1,24($s8)
    # Line 1121
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end FillBufferInfo

# Function: __glMakeCurrentBuffers
# Declared: Line 1129 (Source lines: 1130-1191)
# Address: 0x0d9cf310 - 0x0d9cf45c (Size: 332 bytes, Frame: 192)
.globl __glMakeCurrentBuffers
.ent __glMakeCurrentBuffers
__glMakeCurrentBuffers:
    # Line 1130
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    lui	$at,0x8
    sd	$gp,32($sp)
    addiu	$at,$at,6780
    addu	$gp,$t9,$at
    # Line 1137
    lw	$t9,60($a0)
    # Line 1130
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s7,0($sp)
    move	$s7,$a1
    # Line 1137
    jalr	$t9
    sd	$s2,40($sp)
    sw	$v0,31500($s0)
    move	$s2,$v0
    lw	$v0,28($v0)
    beqz	$v0,.L0d9cf430
    # Line 1141
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
    sd	$zero,24($sp)
    sd	$s1,48($sp)
.L0d9cf360:
    # Line 1149
    lw	$s1,28($s2)
    # Line 1154
    lw	$a1,48($s1)
    sw	$a1,0($s7)
    # Line 1156
    lw	$a0,0($s1)
    # Line 1159
    lw	$t9,30708($s0)
    # Line 1156
    sw	$a0,3700($s0)
    # Line 1159
    move	$a2,$s0
    addiu	$a1,$s1,8
    # Line 1157
    lw	$v1,4($s1)
    # Line 1159
    addiu	$a0,$s0,30664
    jal	sub_0d9d0000
    # Line 1157
    sw	$v1,3704($s0)
    # Line 1159
    lbu	$a2,3222($s0)
    beqz	$a2,.L0d9cf3b0
    nop
    # Line 1162
    lw	$t9,30928($s0)
    move	$a2,$s0
    addiu	$a1,$s1,28
    jalr	$t9
    addiu	$a0,$s0,30884
.L0d9cf3b0:
    lbu	$a3,3224($s0)
    ld	$s7,0($sp)
    beqz	$a3,.L0d9cf3d4
    ld	$s2,40($sp)
    # Line 1168
    lw	$t9,31404($s0)
    move	$a2,$s0
    addiu	$a1,$s1,120
    jalr	$t9
    addiu	$a0,$s0,31360
.L0d9cf3d4:
    lbu	$a4,3225($s0)
    beqz	$a4,.L0d9cf3f4
    nop
    # Line 1172
    lw	$t9,31272($s0)
    move	$a2,$s0
    addiu	$a1,$s1,72
    jalr	$t9
    addiu	$a0,$s0,31228
.L0d9cf3f4:
    lbu	$a5,3226($s0)
    beqz	$a5,.L0d9cf414
    nop
    # Line 1176
    lw	$t9,31152($s0)
    move	$a2,$s0
    addiu	$a1,$s1,52
    jalr	$t9
    addiu	$a0,$s0,31108
.L0d9cf414:
    ld	$s0,8($sp)
    ld	$ra,16($sp)
    ld	$s1,48($sp)
    # Line 1191
    ld	$v0,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9cf430:
    # Line 1141
    addiu	$t9,$t9,-3392
    move	$a0,$s0
    bal __glFindWindowSize
    move	$a1,$s2
    sw	$v0,28($s2)
    # Line 1145
    sw	$zero,3704($s0)
    li	$ra,1
    sd	$ra,24($sp)
    # Line 1144
    sw	$zero,3700($s0)
    # Line 1145
    b	.L0d9cf360
    sd	$s1,48($sp)
.end __glMakeCurrentBuffers

# Function: __glLoseCurrentBuffers
# Declared: Line 1198 (Source lines: 1199-1237)
# Address: 0x0d9cf460 - 0x0d9cf534 (Size: 212 bytes, Frame: 32)
.globl __glLoseCurrentBuffers
.ent __glLoseCurrentBuffers
__glLoseCurrentBuffers:
    # Line 1203
    lw	$v1,31500($a0)
    # Line 1199
    addiu	$sp,$sp,-32
    # Line 1203
    lw	$v1,28($v1)
    sd	$gp,16($sp)
    # Line 1207
    sw	$a1,48($v1)
    # Line 1209
    lw	$v0,3700($a0)
    sw	$v0,0($v1)
    # Line 1199
    lui	$at,0x8
    # Line 1210
    lw	$v0,3704($a0)
    # Line 1199
    addiu	$at,$at,6444
    # Line 1210
    sw	$v0,4($v1)
    # Line 1199
    addu	$gp,$t9,$at
    # Line 1212
    lw	$t9,30712($a0)
    # Line 1199
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 1212
    addiu	$a0,$a0,30664
    # Line 1199
    sd	$ra,8($sp)
    # Line 1212
    jalr	$t9
    move	$a1,$s0
    lbu	$a0,3222($s0)
    beqz	$a0,.L0d9cf4c8
    nop
    # Line 1214
    lw	$t9,30932($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,30884
.L0d9cf4c8:
    lbu	$a1,3224($s0)
    beqz	$a1,.L0d9cf4e4
    nop
    # Line 1217
    lw	$t9,31408($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31360
.L0d9cf4e4:
    lbu	$a2,3225($s0)
    beqz	$a2,.L0d9cf500
    nop
    # Line 1220
    lw	$t9,31276($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31228
.L0d9cf500:
    lbu	$a3,3226($s0)
    beqz	$a3,.L0d9cf520
    ld	$ra,8($sp)
    # Line 1223
    lw	$t9,31156($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31108
    ld	$ra,8($sp)
.L0d9cf520:
    # Line 1237
    li	$v0,1
    ld	$s0,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLoseCurrentBuffers

# Function: __glFreeBufData
# Declared: Line 1245 (Source lines: 1246-1273)
# Address: 0x0d9cf540 - 0x0d9cf5ec (Size: 172 bytes, Frame: 32)
.globl __glFreeBufData
.ent __glFreeBufData
__glFreeBufData:
    # Line 1246
    addiu	$sp,$sp,-32
    lw	$a3,30728($a0)
    sd	$s0,0($sp)
    lui	$at,0x8
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,6220
    sd	$gp,8($sp)
    beqz	$a3,.L0d9cf578
    addu	$gp,$t9,$at
    # Line 1252
    move	$t9,$a3
    addiu	$a0,$a0,30664
    jalr	$t9
    move	$a1,$s0
.L0d9cf578:
    lw	$v0,30948($s0)
    bnez	$v0,.L0d9cf5d4
    nop
    # Line 1255
    lw	$t9,31172($s0)
.L0d9cf588:
    beqz	$t9,.L0d9cf598
    # Line 1258
    addiu	$a0,$s0,31108
    jalr	$t9
    move	$a1,$s0
.L0d9cf598:
    lw	$t9,31292($s0)
    beqz	$t9,.L0d9cf5ac
    # Line 1261
    addiu	$a0,$s0,31228
    jalr	$t9
    move	$a1,$s0
.L0d9cf5ac:
    lw	$t9,31424($s0)
    beqz	$t9,.L0d9cf5c0
    # Line 1264
    addiu	$a0,$s0,31360
    jalr	$t9
    move	$a1,$s0
.L0d9cf5c0:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 1273
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9cf5d4:
    # Line 1255
    lw	$t9,30728($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,30884
    b	.L0d9cf588
    lw	$t9,31172($s0)
.end __glFreeBufData

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_408f400000000000:
    .word 0x408f4000, 0x00000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_43340000:
    .word 0x43340000
_lit_437f0000:
    .word 0x437f0000
_lit_477fff00:
    .word 0x477fff00
_lit_4f7ffff7:
    .word 0x4f7ffff7
_lit_bf800000:
    .word 0xbf800000

