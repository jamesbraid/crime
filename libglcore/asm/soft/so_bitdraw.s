# Source: ../soft/so_bitdraw.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_bitdraw.c
# Total Functions: 3

.text

# Function: __glDrawBitmap
# Declared: Line 27 (Source lines: 31-64)
# Address: 0x0d9c59f0 - 0x0d9c5afc (Size: 268 bytes, Frame: 224)
.globl __glDrawBitmap
.ent __glDrawBitmap
__glDrawBitmap:
    # Line 31
    addiu	$sp,$sp,-96
    # Line 39
    swc1	$f18,20($sp)
    # Line 38
    swc1	$f17,16($sp)
    # Line 37
    swc1	$f16,12($sp)
    # Line 36
    swc1	$f15,8($sp)
    # Line 35
    sw	$a2,4($sp)
    # Line 34
    sw	$a1,0($sp)
    # Line 31
    sd	$s1,48($sp)
    move	$v0,$a7
    move	$s1,$a2
    sd	$s2,56($sp)
    move	$s2,$a1
    sd	$s0,40($sp)
    lui	$at,0x9
    move	$s0,$a0
    sd	$ra,80($sp)
    addiu	$at,$at,-19556
    sd	$gp,64($sp)
    # Line 45
    blez	$a1,.L0d9c5ae0
    # Line 31
    addu	$gp,$t9,$at
    # Line 45
    blez	$a2,.L0d9c5ae0
    sd	$a7,32($sp)
    # Line 48
    # lw $t9, -25856($gp) # &__glImageSize
    li	$a3,6656
    move	$a0,$a1
    move	$a1,$a2
    jal	__glImageSize
    li	$a2,6400
    lw	$t9,0($s0)
    move	$a1,$v0
    move	$a0,$s0
    jalr	$t9
    sd	$s3,72($sp)
    move	$s3,$v0
    # Line 51
    move	$a0,$s0
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s2
    move	$a2,$s1
    move	$a6,$v0
    li	$a4,6656
    ld	$a5,32($sp)
    jal	__glFillImage
    li	$a3,6400
    # Line 54
    lw	$t9,12512($s0)
    move	$a0,$s0
    move	$a2,$s3
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 56
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s3
.L0d9c5ac0:
    ld	$s3,72($sp)
    ld	$s0,40($sp)
    ld	$ra,80($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    # Line 64
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c5ae0:
    # Line 62
    lw	$t9,12512($s0)
    move	$a0,$s0
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0d9c5ac0
    sd	$s3,72($sp)
.end __glDrawBitmap

# Function: __glFastDrawBitmap
# Declared: Line 66 (Source lines: 69-104)
# Address: 0x0d9c5b00 - 0x0d9c5c50 (Size: 336 bytes, Frame: 224)
.globl __glFastDrawBitmap
.ent __glFastDrawBitmap
__glFastDrawBitmap:
    # Line 69
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    sd	$s2,40($sp)
    # Line 77
    swc1	$f18,20($sp)
    # Line 76
    swc1	$f17,16($sp)
    # Line 75
    swc1	$f16,12($sp)
    # Line 74
    swc1	$f15,8($sp)
    # Line 73
    sw	$a2,4($sp)
    # Line 69
    move	$a5,$a7
    # Line 72
    sw	$a1,0($sp)
    # Line 69
    move	$s2,$a2
    move	$s0,$a1
    # Line 79
    lw	$v0,1204($a0)
    # Line 69
    sd	$s1,56($sp)
    # Line 79
    li	$at,1
    # Line 69
    lui	$v1,0x9
    move	$s1,$a0
    sd	$ra,72($sp)
    addiu	$v1,$v1,-19828
    sd	$gp,64($sp)
    # Line 79
    beq	$v0,$at,.L0d9c5c34
    # Line 69
    addu	$gp,$t9,$v1
    # Line 79
    addiu	$a0,$a1,7
    addiu	$a1,$v0,-1
    sra	$a0,$a0,0x3
    and	$a0,$a0,$a1
    beqz	$a0,.L0d9c5c34
    nop
    # Line 84
    blez	$s0,.L0d9c5c18
    nop
    blez	$a2,.L0d9c5c18
    sd	$a7,32($sp)
    # Line 88
    # lw $t9, -25856($gp) # &__glImageSize
    move	$a0,$s0
    li	$a3,6656
    move	$a1,$a2
    jal	__glImageSize
    li	$a2,6400
    # Line 89
    lw	$t9,0($s1)
    # Line 88
    move	$a1,$v0
    # Line 89
    move	$a0,$s1
    jalr	$t9
    sd	$s3,80($sp)
    move	$s3,$v0
    # Line 91
    move	$a0,$s1
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s0
    move	$a2,$s2
    move	$a6,$v0
    li	$a4,6656
    ld	$a5,32($sp)
    jal	__glFillImage
    li	$a3,6400
    # Line 94
    lw	$t9,12512($s1)
    move	$a0,$s1
    move	$a2,$s3
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 96
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s3
.L0d9c5bf8:
    ld	$s2,40($sp)
    ld	$s0,48($sp)
    ld	$ra,72($sp)
    ld	$s1,56($sp)
    ld	$s3,80($sp)
    # Line 104
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c5c18:
    # Line 102
    lw	$t9,12512($s1)
    move	$a0,$s1
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0d9c5bf8
    sd	$s3,80($sp)
.L0d9c5c34:
    # Line 82
    lw	$t9,12512($s1)
    move	$a0,$s1
    move	$a2,$a5
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0d9c5bf8
    sd	$s3,80($sp)
.end __glFastDrawBitmap

# Function: __glRenderBitmap
# Declared: Line 106 (Source lines: 108-187)
# Address: 0x0d9c5c50 - 0x0d9c5f64 (Size: 788 bytes, Frame: 160)
.globl __glRenderBitmap
.ent __glRenderBitmap
__glRenderBitmap:
    # Line 114
    lw	$a4,30436($a0)
    # Line 108
    addiu	$sp,$sp,-160
    sd	$s7,72($sp)
    sd	$s3,96($sp)
    sd	$s0,88($sp)
    move	$s0,$a2
    # Line 116
    lbu	$v0,452($a0)
    # Line 108
    move	$s3,$a1
    # Line 116
    lw	$s7,4852($a0)
    # Line 108
    lui	$at,0x9
    sd	$s5,80($sp)
    move	$s5,$a0
    addiu	$at,$at,-20164
    sd	$gp,64($sp)
    # Line 116
    beqz	$v0,.L0d9c5ee4
    # Line 108
    addu	$gp,$t9,$at
    # Line 126
    mtc1	$s7,$f0
    lw	$a0,3204($a0)
    cvt.s.w	$f0,$f0
    li	$v0,7170
    sd	$ra,104($sp)
    beq	$a0,$v0,.L0d9c5f00
    sdc1	$f0,56($sp)
    # Line 132
    li	$v1,7169
    beq	$a0,$v1,.L0d9c5f2c
    # Line 136
    nop	# was lw $t9, -26116($gp) # &__glFeedbackBitmap
    # Line 145
    lw	$a1,248($s5)
    lwc1	$f4,0($a1)
    swc1	$f4,12($sp)
    lwc1	$f3,4($a1)
    swc1	$f3,16($sp)
    lwc1	$f2,8($a1)
    swc1	$f2,20($sp)
    andi	$a0,$a4,0x8
    lwc1	$f1,12($a1)
    beqz	$a0,.L0d9c5d18
    swc1	$f1,24($sp)
    # Line 147
    lwc1	$f18,300($s5)
    lwc1	$f17,3544($s5)
    div.s	$f18,$f17,$f18
    # Line 148
    lwc1	$f14,288($s5)
    lwc1	$f16,296($s5)
    lwc1	$f15,292($s5)
    lw	$t9,12524($s5)
    mul.s	$f16,$f16,$f18
    addiu	$a1,$sp,12
    mul.s	$f15,$f15,$f18
    move	$a0,$s5
    jal	__glFeedbackBitmap
    mul.s	$f14,$f14,$f18
.L0d9c5d18:
    lw	$a2,1792($s5)
    andi	$a2,$a2,0x20
    beqz	$a2,.L0d9c5d3c
    nop
    # Line 154
    lw	$t9,12528($s5)
    move	$a0,$s5
    lwc1	$f14,344($s5)
    jalr	$t9
    addiu	$a1,$sp,0
.L0d9c5d3c:
    # Line 157
    lwc1	$f25,376($s5)
    trunc.l.s	$f25,$f25
    # Line 159
    ldc1	$f21,56($sp)
    # Line 157
    dmfc1	$a4,$f25
    sw	$a4,8($sp)
    # Line 159
    lwc1	$f23,12($s3)
    lwc1	$f19,372($s5)
    nmsub.s	$f19,$f19,$f21,$f23
    # Line 158
    lwc1	$f5,8($s3)
    lwc1	$f4,368($s5)
    # Line 159
    trunc.w.s	$f19,$f19
    # Line 158
    sub.s	$f4,$f4,$f5
    # Line 159
    swc1	$f19,4($sp)
    # Line 161
    lw	$a3,4($s3)
    # Line 158
    trunc.w.s	$f4,$f4
    cvt.s.w	$f4,$f4
    # Line 161
    blez	$a3,.L0d9c5ea0
    # Line 159
    mfc1	$a0,$f19
    sd	$s2,112($sp)
    sd	$s1,136($sp)
    sd	$s4,128($sp)
    # Line 161
    trunc.w.s	$f27,$f4
    li	$s4,1
    li	$s1,7
    sd	$s6,120($sp)
    move	$s6,$zero
    sd	$s8,144($sp)
    b	.L0d9c5e70
    mfc1	$s8,$f27
.L0d9c5db0:
    # Line 166
    lw	$t9,12608($s5)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 168
    lw	$a2,0($sp)
    addiu	$a2,$a2,1
    sw	$a2,0($sp)
    # Line 172
    addiu	$t0,$s0,1
    # Line 164
    lw	$t1,0($s3)
    slti	$a5,$s1,1
    addiu	$a7,$s2,1
    move	$s2,$a7
    slt	$a7,$a7,$t1
    # Line 169
    addiu	$a6,$s1,-1
    movn	$s0,$t0,$a5
    # Line 172
    li	$s1,7
    # Line 164
    beqz	$a7,.L0d9c5e3c
    movz	$s1,$a6,$a5
.L0d9c5df8:
    # Line 163
    lbu	$a3,0($s0)
.L0d9c5dfc:
    sllv	$a4,$s4,$s1
    and	$a3,$a3,$a4
    bnez	$a3,.L0d9c5db0
    # Line 168
    addiu	$a2,$a2,1
    sw	$a2,0($sp)
    # Line 172
    addiu	$t0,$s0,1
    # Line 164
    lw	$t1,0($s3)
    slti	$a5,$s1,1
    addiu	$a7,$s2,1
    move	$s2,$a7
    slt	$a7,$a7,$t1
    # Line 169
    addiu	$a6,$s1,-1
    movn	$s0,$t0,$a5
    # Line 172
    li	$s1,7
    # Line 164
    bnez	$a7,.L0d9c5df8
    movz	$s1,$a6,$a5
.L0d9c5e3c:
    lw	$a0,4($sp)
.L0d9c5e40:
    # Line 175
    addu	$a0,$s7,$a0
    sw	$a0,4($sp)
    # Line 178
    addiu	$t9,$s0,1
    # Line 162
    lw	$t8,4($s3)
    li	$t2,7
    addiu	$s6,$s6,1
    xor	$t2,$s1,$t2
    slt	$t8,$s6,$t8
    movn	$s0,$t9,$t2
    # Line 178
    li	$t3,7
    # Line 162
    beqz	$t8,.L0d9c5e8c
    movn	$s1,$t3,$t2
.L0d9c5e70:
    # Line 163
    sw	$s8,0($sp)
    lw	$t3,0($s3)
    move	$s2,$zero
    blez	$t3,.L0d9c5e40
    move	$a2,$s8
    b	.L0d9c5dfc
    lbu	$a3,0($s0)
.L0d9c5e8c:
    ld	$s2,112($sp)
    ld	$s6,120($sp)
    ld	$s4,128($sp)
    ld	$s1,136($sp)
    ld	$s8,144($sp)
.L0d9c5ea0:
    # Line 185
    lwc1	$f2,368($s5)
    lwc1	$f1,16($s3)
    # Line 186
    ldc1	$f31,56($sp)
    # Line 185
    add.s	$f1,$f1,$f2
    swc1	$f1,368($s5)
    # Line 186
    lwc1	$f0,20($s3)
    lwc1	$f29,372($s5)
    # Line 187
    ld	$gp,64($sp)
    # Line 186
    madd.s	$f29,$f29,$f31,$f0
    # Line 187
    ld	$s0,88($sp)
    ld	$s7,72($sp)
    ld	$ra,104($sp)
    ld	$s3,96($sp)
    # Line 186
    swc1	$f29,372($s5)
    # Line 187
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9c5ee4:
    ld	$gp,64($sp)
    ld	$s0,88($sp)
    ld	$s3,96($sp)
    ld	$s5,80($sp)
    ld	$s7,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9c5f00:
    # Line 130
    lwc1	$f7,368($s5)
    lwc1	$f6,16($a1)
    # Line 131
    ldc1	$f4,56($sp)
    # Line 130
    add.s	$f6,$f6,$f7
    swc1	$f6,368($s5)
    # Line 131
    lwc1	$f5,20($a1)
    lwc1	$f3,372($s5)
    madd.s	$f3,$f3,$f4,$f5
    move	$ra,$ra
    b	.L0d9c5ee4
    swc1	$f3,372($s5)
.L0d9c5f2c:
    # Line 136
    move	$a0,$s5
    jalr	$t9
    addiu	$a1,$s5,240
    # Line 140
    lwc1	$f12,368($s5)
    lwc1	$f11,16($s3)
    # Line 141
    ldc1	$f9,56($sp)
    # Line 140
    add.s	$f11,$f11,$f12
    swc1	$f11,368($s5)
    # Line 141
    lwc1	$f10,20($s3)
    lwc1	$f8,372($s5)
    madd.s	$f8,$f8,$f9,$f10
    ld	$ra,104($sp)
    b	.L0d9c5ee4
    swc1	$f8,372($s5)
.end __glRenderBitmap

