# Source: ../soft/so_blend.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_blend.c
# Total Functions: 50

.text

# Function: __glDoBlendAdd
# Declared: Line 30 (Source lines: 33-37)
# Address: 0x0d9c6090 - 0x0d9c60d4 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendAdd
.ent __glDoBlendAdd
__glDoBlendAdd:
    # Line 33
    lwc1	$f7,0($a3)
    lwc1	$f6,0($a2)
    # Line 34
    lwc1	$f5,4($a3)
    # Line 33
    add.s	$f6,$f6,$f7
    swc1	$f6,0($a3)
    # Line 34
    lwc1	$f4,4($a2)
    # Line 35
    lwc1	$f3,8($a3)
    # Line 34
    add.s	$f4,$f4,$f5
    swc1	$f4,4($a3)
    # Line 35
    lwc1	$f2,8($a2)
    # Line 36
    lwc1	$f1,12($a3)
    # Line 35
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 36
    lwc1	$f0,12($a2)
    add.s	$f0,$f0,$f1
    # Line 37
    jr	$ra
    # Line 36
    swc1	$f0,12($a3)
.end __glDoBlendAdd

# Function: __glDoBlendMin
# Declared: Line 40 (Source lines: 42-47)
# Address: 0x0d9c60e0 - 0x0d9c614c (Size: 108 bytes, Frame: 0)
.globl __glDoBlendMin
.ent __glDoBlendMin
__glDoBlendMin:
    # Line 42
    lwc1	$f0,0($a3)
    lwc1	$f4,0($a2)
    c.lt.s	$f4,$f0
    bc1f	.L0d9c60f8
    nop
    # Line 43
    swc1	$f4,0($a3)
.L0d9c60f8:
    lwc1	$f1,4($a3)
    lwc1	$f4,4($a2)
    c.lt.s $f4,$f1
    bc1f .L0d9c6110
    nop
    # Line 44
    swc1	$f4,4($a3)
.L0d9c6110:
    lwc1	$f2,8($a3)
    lwc1	$f4,8($a2)
    c.lt.s $f4,$f2
    bc1f .L0d9c6128
    nop
    # Line 45
    swc1	$f4,8($a3)
.L0d9c6128:
    lwc1	$f3,12($a3)
    lwc1	$f4,12($a2)
    c.lt.s $f4,$f3
    bc1f .L0d9c6144
    nop
    # Line 47
    jr	$ra
    # Line 46
    swc1	$f4,12($a3)
.L0d9c6144:
    # Line 47
    jr	$ra
    nop
.end __glDoBlendMin

# Function: __glDoBlendMax
# Declared: Line 50 (Source lines: 52-57)
# Address: 0x0d9c6150 - 0x0d9c61bc (Size: 108 bytes, Frame: 0)
.globl __glDoBlendMax
.ent __glDoBlendMax
__glDoBlendMax:
    # Line 52
    lwc1	$f4,0($a2)
    lwc1	$f0,0($a3)
    c.lt.s	$f0,$f4
    bc1f	.L0d9c6168
    nop
    # Line 53
    swc1	$f4,0($a3)
.L0d9c6168:
    lwc1	$f4,4($a2)
    lwc1	$f1,4($a3)
    c.lt.s $f1,$f4
    bc1f .L0d9c6180
    nop
    # Line 54
    swc1	$f4,4($a3)
.L0d9c6180:
    lwc1	$f4,8($a2)
    lwc1	$f2,8($a3)
    c.lt.s $f2,$f4
    bc1f .L0d9c6198
    nop
    # Line 55
    swc1	$f4,8($a3)
.L0d9c6198:
    lwc1	$f4,12($a2)
    lwc1	$f3,12($a3)
    c.lt.s $f3,$f4
    bc1f .L0d9c61b4
    nop
    # Line 57
    jr	$ra
    # Line 56
    swc1	$f4,12($a3)
.L0d9c61b4:
    # Line 57
    jr	$ra
    nop
.end __glDoBlendMax

# Function: __glDoBlendSubtract
# Declared: Line 60 (Source lines: 63-67)
# Address: 0x0d9c61c0 - 0x0d9c6204 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendSubtract
.ent __glDoBlendSubtract
__glDoBlendSubtract:
    # Line 63
    lwc1	$f7,0($a2)
    lwc1	$f6,0($a3)
    # Line 64
    lwc1	$f4,4($a3)
    # Line 63
    sub.s	$f6,$f6,$f7
    swc1	$f6,0($a3)
    # Line 64
    lwc1	$f5,4($a2)
    # Line 65
    lwc1	$f2,8($a3)
    # Line 64
    sub.s	$f4,$f4,$f5
    swc1	$f4,4($a3)
    # Line 65
    lwc1	$f3,8($a2)
    # Line 66
    lwc1	$f0,12($a3)
    # Line 65
    sub.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 66
    lwc1	$f1,12($a2)
    sub.s	$f0,$f0,$f1
    # Line 67
    jr	$ra
    # Line 66
    swc1	$f0,12($a3)
.end __glDoBlendSubtract

# Function: __glDoBlendReverseSubtract
# Declared: Line 70 (Source lines: 73-77)
# Address: 0x0d9c6210 - 0x0d9c6254 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendReverseSubtract
.ent __glDoBlendReverseSubtract
__glDoBlendReverseSubtract:
    # Line 73
    lwc1	$f7,0($a3)
    lwc1	$f6,0($a2)
    # Line 74
    lwc1	$f5,4($a3)
    # Line 73
    sub.s	$f6,$f6,$f7
    swc1	$f6,0($a3)
    # Line 74
    lwc1	$f4,4($a2)
    # Line 75
    lwc1	$f3,8($a3)
    # Line 74
    sub.s	$f4,$f4,$f5
    swc1	$f4,4($a3)
    # Line 75
    lwc1	$f2,8($a2)
    # Line 76
    lwc1	$f1,12($a3)
    # Line 75
    sub.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 76
    lwc1	$f0,12($a2)
    sub.s	$f0,$f0,$f1
    # Line 77
    jr	$ra
    # Line 76
    swc1	$f0,12($a3)
.end __glDoBlendReverseSubtract

# Function: __glDoBlendAlphaMin
# Declared: Line 80 (Source lines: 82-89)
# Address: 0x0d9c6260 - 0x0d9c629c (Size: 60 bytes, Frame: 0)
.globl __glDoBlendAlphaMin
.ent __glDoBlendAlphaMin
__glDoBlendAlphaMin:
    # Line 82
    lwc1	$f1,12($a3)
    lwc1	$f0,12($a2)
    c.le.s	$f0,$f1
    bc1f	.L0d9c6294
    # Line 84
    lwc1	$f5,0($a2)
    swc1	$f5,0($a3)
    # Line 85
    lwc1	$f4,4($a2)
    swc1	$f4,4($a3)
    # Line 86
    lwc1	$f3,8($a2)
    swc1	$f3,8($a3)
    # Line 87
    lwc1	$f2,12($a2)
    # Line 89
    jr	$ra
    # Line 87
    swc1	$f2,12($a3)
.L0d9c6294:
    # Line 89
    jr	$ra
    nop
.end __glDoBlendAlphaMin

# Function: __glDoBlendAlphaMax
# Declared: Line 92 (Source lines: 94-101)
# Address: 0x0d9c62a0 - 0x0d9c62dc (Size: 60 bytes, Frame: 0)
.globl __glDoBlendAlphaMax
.ent __glDoBlendAlphaMax
__glDoBlendAlphaMax:
    # Line 94
    lwc1	$f1,12($a2)
    lwc1	$f0,12($a3)
    c.le.s	$f0,$f1
    bc1f	.L0d9c62d4
    # Line 96
    lwc1	$f5,0($a2)
    swc1	$f5,0($a3)
    # Line 97
    lwc1	$f4,4($a2)
    swc1	$f4,4($a3)
    # Line 98
    lwc1	$f3,8($a2)
    swc1	$f3,8($a3)
    # Line 99
    lwc1	$f2,12($a2)
    # Line 101
    jr	$ra
    # Line 99
    swc1	$f2,12($a3)
.L0d9c62d4:
    # Line 101
    jr	$ra
    nop
.end __glDoBlendAlphaMax

# Function: __glDoBlendLogicOp
# Declared: Line 111 (Source lines: 113-254)
# Address: 0x0d9c62e0 - 0x0d9c68b8 (Size: 1496 bytes, Frame: 48)
.globl __glDoBlendLogicOp
.ent __glDoBlendLogicOp
__glDoBlendLogicOp:
    # Line 113
    addiu	$sp,$sp,-48
    # Line 117
    lw	$a5,1856($a0)
    # Line 120
    li	$v1,5376
    # Line 113
    lui	$v0,0x9
    # Line 150
    li	$t8,1
    # Line 113
    addiu	$v0,$v0,-21844
    # Line 120
    beq	$a5,$v1,.L0d9c65d4
    # Line 113
    addu	$at,$t9,$v0
    # Line 120
    li	$v1,5391
    # Line 153
    ldc1	$f17,_lit8_4000000000000000
    ldc1	$f15,_lit8_3ff0000000000000
    # Line 120
    beq	$a5,$v1,.L0d9c65f0
    # Line 151
    li	$t9,1
    # Line 120
    li	$a1,5379
    beq	$a5,$a1,.L0d9c65cc
    move	$v1,$t8
    li	$a4,5381
    beq	$a5,$a4,.L0d9c6630
    # Line 148
    li	$a1,1
    # Line 150
    lw	$v0,3268($a0)
    # Line 151
    sllv	$t9,$t9,$v0
    addiu	$t9,$t9,-1
    movz	$t9,$v1,$v0
    # Line 156
    mtc1	$t9,$f10
    cvt.d.w	$f10,$f10
    mul.d	$f10,$f10,$f17
    div.d	$f10,$f15,$f10
    # Line 149
    lw	$v0,3264($a0)
    li	$t3,1
    # Line 150
    sllv	$t8,$t8,$v0
    move	$v1,$t3
    addiu	$t8,$t8,-1
    movz	$t8,$v1,$v0
    # Line 155
    mtc1	$t8,$f12
    cvt.d.w	$f12,$f12
    mul.d	$f12,$f12,$f17
    div.d	$f12,$f15,$f12
    # Line 148
    lw	$v0,3260($a0)
    li	$t2,1
    # Line 149
    sllv	$t3,$t3,$v0
    move	$v1,$t2
    addiu	$t3,$t3,-1
    movz	$t3,$v1,$v0
    # Line 154
    mtc1	$t3,$f14
    cvt.d.w	$f14,$f14
    mul.d	$f14,$f14,$f17
    div.d	$f14,$f15,$f14
    # Line 120
    lw	$v1,3256($a0)
    # Line 148
    sllv	$t2,$t2,$v1
    addiu	$t2,$t2,-1
    movz	$t2,$a1,$v1
    # Line 153
    mtc1	$t2,$f16
    cvt.d.w	$f16,$f16
    mul.d	$f16,$f16,$f17
    # Line 155
    lwc1	$f13,30808($a0)
    # Line 156
    mtc1	$t9,$f5
    # Line 153
    div.d	$f15,$f15,$f16
    # Line 156
    lwc1	$f11,30812($a0)
    lwc1	$f18,12($a3)
    # Line 155
    mtc1	$t8,$f6
    lwc1	$f1,8($a3)
    # Line 156
    cvt.s.w	$f5,$f5
    # Line 153
    lwc1	$f9,30800($a0)
    mtc1	$t2,$f7
    lwc1	$f0,0($a3)
    # Line 156
    mul.s	$f18,$f18,$f11
    # Line 155
    cvt.s.w	$f6,$f6
    mul.s	$f1,$f1,$f13
    # Line 156
    mul.s	$f18,$f5,$f18
    # Line 154
    mtc1	$t3,$f4
    # Line 153
    cvt.s.w	$f7,$f7
    mul.s	$f0,$f0,$f9
    # Line 154
    lwc1	$f17,4($a3)
    # Line 156
    cvt.d.s	$f18,$f18
    # Line 155
    mul.s	$f1,$f6,$f1
    # Line 154
    lwc1	$f16,30804($a0)
    cvt.s.w	$f4,$f4
    # Line 155
    cvt.d.s	$f1,$f1
    # Line 153
    mul.s	$f0,$f7,$f0
    # Line 156
    add.d	$f18,$f18,$f10
    # Line 154
    mul.s	$f17,$f17,$f16
    # Line 153
    cvt.d.s	$f0,$f0
    # Line 156
    trunc.w.d	$f18,$f18
    # Line 154
    mul.s	$f17,$f4,$f17
    # Line 155
    add.d	$f1,$f1,$f12
    # Line 154
    cvt.d.s	$f17,$f17
    # Line 155
    trunc.w.d	$f1,$f1
    # Line 156
    lw	$v0,30764($a0)
    # Line 154
    add.d	$f17,$f17,$f14
    # Line 153
    add.d	$f0,$f0,$f15
    # Line 156
    mtc1	$v0,$f8
    mfc1	$a7,$f18
    # Line 154
    trunc.w.d	$f17,$f17
    # Line 156
    li	$t1,5388
    # Line 174
    la	$a1,sub_0da40000
    # Line 155
    mfc1	$t0,$f1
    # Line 153
    trunc.w.d	$f0,$f0
    # Line 174
    addiu	$a4,$a5,-5377
    # Line 154
    mfc1	$a6,$f17
    # Line 156
    cvt.s.w	$f8,$f8
    # Line 174
    addiu	$a1,$a1,18624
    # Line 156
    beq	$a5,$t1,.L0d9c6658
    # Line 153
    mfc1	$t1,$f0
    # Line 171
    lwc1	$f17,0($a2)
    # Line 172
    lwc1	$f18,4($a2)
    # Line 171
    mul.s	$f17,$f17,$f9
    # Line 172
    mul.s	$f18,$f18,$f16
    # Line 174
    lwc1	$f21,12($a2)
    # Line 171
    mul.s	$f17,$f7,$f17
    # Line 173
    lwc1	$f19,8($a2)
    # Line 172
    mul.s	$f18,$f4,$f18
    # Line 171
    cvt.d.s	$f17,$f17
    # Line 174
    mul.s	$f21,$f21,$f11
    # Line 173
    mul.s	$f19,$f19,$f13
    # Line 171
    add.d	$f17,$f17,$f15
    # Line 174
    mul.s	$f21,$f5,$f21
    # Line 172
    cvt.d.s	$f18,$f18
    # Line 173
    mul.s	$f19,$f6,$f19
    # Line 174
    cvt.d.s	$f21,$f21
    # Line 173
    cvt.d.s	$f19,$f19
    # Line 174
    add.d	$f21,$f21,$f10
    # Line 173
    add.d	$f19,$f19,$f12
    # Line 174
    trunc.w.d	$f21,$f21
    # Line 172
    add.d	$f18,$f18,$f14
    # Line 173
    trunc.w.d	$f19,$f19
    # Line 174
    mfc1	$v0,$f21
    # Line 172
    trunc.w.d	$f18,$f18
    # Line 174
    sd	$v0,8($sp)
    sltiu	$v0,$a4,14
    sll	$a4,$a4,0x2
    # Line 171
    trunc.w.d	$f17,$f17
    # Line 174
    addu	$a1,$a1,$a4
    sd	$a1,32($sp)
    # Line 173
    mfc1	$v1,$f19
    sd	$v1,16($sp)
    # Line 172
    mfc1	$v1,$f18
    sd	$v1,24($sp)
    # Line 171
    mfc1	$v1,$f17
    # Line 174
    beqz	$v0,.L0d9c6540
    sd	$v1,0($sp)
    ld	$v1,32($sp)
    lw	$v1,0($v1)
    jr	$v1
    # Line 241
    ld	$v0,8($sp)
.L0d9c6520:
    # Line 196
    ld	$a1,0($sp)
    # Line 198
    ld	$a4,16($sp)
    # Line 199
    ld	$a5,8($sp)
    # Line 197
    ld	$a2,24($sp)
    # Line 199
    xor	$a7,$a7,$a5
    # Line 198
    xor	$t0,$t0,$a4
    # Line 197
    xor	$a6,$a6,$a2
    # Line 196
    xor	$t1,$t1,$a1
.L0d9c6540:
    # Line 246
    and	$v0,$t2,$t1
    # Line 251
    mtc1	$v0,$f29
    cvt.s.w	$f29,$f29
    mul.s	$f29,$f29,$f8
    div.s	$f29,$f29,$f7
    swc1	$f29,0($a3)
    # Line 247
    and	$t3,$t3,$a6
    # Line 252
    lw	$t2,30768($a0)
    mtc1	$t3,$f27
    mtc1	$t2,$f29
    cvt.s.w	$f27,$f27
    cvt.s.w	$f29,$f29
    mul.s	$f27,$f27,$f29
    div.s	$f27,$f27,$f4
    swc1	$f27,4($a3)
    # Line 248
    and	$t1,$t8,$t0
    # Line 253
    lw	$t0,30772($a0)
    mtc1	$t1,$f25
    mtc1	$t0,$f27
    cvt.s.w	$f25,$f25
    cvt.s.w	$f27,$f27
    mul.s	$f25,$f25,$f27
    div.s	$f25,$f25,$f6
    swc1	$f25,8($a3)
    # Line 249
    and	$a7,$t9,$a7
    # Line 254
    lw	$a6,30796($a0)
    mtc1	$a7,$f23
    mtc1	$a6,$f25
    cvt.s.w	$f23,$f23
    cvt.s.w	$f25,$f25
    mul.s	$f23,$f23,$f25
    div.s	$f23,$f23,$f5
    # Line 126
    addiu	$sp,$sp,48
    jr	$ra
    # Line 254
    swc1	$f23,12($a3)
.L0d9c65cc:
    # Line 126
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c65d4:
    # Line 122
    mtc1	$zero,$f31
    # Line 125
    swc1	$f31,12($a3)
    # Line 124
    swc1	$f31,8($a3)
    # Line 123
    swc1	$f31,4($a3)
    # Line 126
    addiu	$sp,$sp,48
    jr	$ra
    # Line 122
    swc1	$f31,0($a3)
.L0d9c65f0:
    # Line 128
    lw	$a2,30736($a0)
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a3)
    # Line 129
    lw	$a1,30740($a0)
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a3)
    # Line 130
    lw	$v1,30744($a0)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a3)
    # Line 131
    lwc1	$f0,30792($a0)
    # Line 126
    addiu	$sp,$sp,48
    jr	$ra
    # Line 131
    swc1	$f0,12($a3)
.L0d9c6630:
    # Line 136
    lwc1	$f7,0($a2)
    swc1	$f7,0($a3)
    # Line 137
    lwc1	$f6,4($a2)
    swc1	$f6,4($a3)
    # Line 138
    lwc1	$f5,8($a2)
    swc1	$f5,8($a3)
    # Line 139
    lwc1	$f4,12($a2)
    # Line 126
    addiu	$sp,$sp,48
    jr	$ra
    # Line 139
    swc1	$f4,12($a3)
.L0d9c6658:
    # Line 160
    nor	$v0,$t1,$zero
    and	$v0,$t2,$v0
    # Line 164
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    mul.s	$f11,$f11,$f8
    div.s	$f11,$f11,$f7
    # Line 161
    nor	$t2,$a6,$zero
    # Line 164
    swc1	$f11,0($a3)
    # Line 161
    and	$t2,$t3,$t2
    # Line 165
    lw	$t1,30768($a0)
    mtc1	$t2,$f10
    mtc1	$t1,$f11
    cvt.s.w	$f10,$f10
    cvt.s.w	$f11,$f11
    mul.s	$f10,$f10,$f11
    div.s	$f10,$f10,$f4
    # Line 162
    nor	$t0,$t0,$zero
    # Line 165
    swc1	$f10,4($a3)
    # Line 162
    and	$t0,$t8,$t0
    # Line 166
    lw	$a6,30772($a0)
    mtc1	$t0,$f9
    mtc1	$a6,$f10
    cvt.s.w	$f9,$f9
    cvt.s.w	$f10,$f10
    mul.s	$f9,$f9,$f10
    div.s	$f9,$f9,$f6
    # Line 163
    nor	$a5,$a7,$zero
    # Line 166
    swc1	$f9,8($a3)
    # Line 163
    and	$a5,$t9,$a5
    # Line 167
    lw	$a4,30796($a0)
    mtc1	$a5,$f8
    mtc1	$a4,$f9
    cvt.s.w	$f8,$f8
    cvt.s.w	$f9,$f9
    mul.s	$f8,$f8,$f9
    div.s	$f8,$f8,$f5
    # Line 126
    addiu	$sp,$sp,48
    jr	$ra
    # Line 167
    swc1	$f8,12($a3)
.L0d9c66f4:
    # Line 179
    ld	$a1,24($sp)
    # Line 181
    ld	$a4,8($sp)
    # Line 180
    ld	$a2,16($sp)
    # Line 182
    ld	$v1,0($sp)
    # Line 181
    and	$a7,$a7,$a4
    # Line 180
    and	$t0,$t0,$a2
    # Line 179
    and	$a6,$a6,$a1
    # Line 182
    b	.L0d9c6540
    # Line 178
    and	$t1,$t1,$v1
.L0d9c6718:
    # Line 241
    and	$a7,$a7,$v0
    # Line 240
    ld	$v0,16($sp)
    and	$t0,$t0,$v0
    # Line 239
    ld	$v0,24($sp)
    and	$a6,$a6,$v0
    # Line 238
    ld	$v0,0($sp)
    # Line 241
    nor	$a7,$a7,$zero
    # Line 240
    nor	$t0,$t0,$zero
    # Line 239
    nor	$a6,$a6,$zero
    # Line 238
    and	$t1,$t1,$v0
    # Line 242
    b	.L0d9c6540
    # Line 238
    nor	$t1,$t1,$zero
.L0d9c6748:
    # Line 235
    nor	$v0,$a7,$zero
    ld	$a7,8($sp)
    or	$a7,$a7,$v0
    # Line 234
    nor	$v0,$t0,$zero
    ld	$t0,16($sp)
    or	$t0,$t0,$v0
    # Line 233
    nor	$v0,$a6,$zero
    ld	$a6,24($sp)
    or	$a6,$a6,$v0
    # Line 232
    nor	$v0,$t1,$zero
    # Line 236
    ld	$t1,0($sp)
    b	.L0d9c6540
    # Line 232
    or	$t1,$t1,$v0
.L0d9c677c:
    # Line 229
    ld	$a4,8($sp)
    # Line 226
    ld	$v1,0($sp)
    # Line 227
    ld	$a1,24($sp)
    # Line 228
    ld	$a2,16($sp)
    # Line 226
    nor	$v1,$v1,$zero
    # Line 227
    nor	$a1,$a1,$zero
    # Line 229
    nor	$a4,$a4,$zero
    # Line 228
    nor	$a2,$a2,$zero
    # Line 229
    or	$a7,$a7,$a4
    # Line 228
    or	$t0,$t0,$a2
    # Line 227
    or	$a6,$a6,$a1
    # Line 230
    b	.L0d9c6540
    # Line 226
    or	$t1,$t1,$v1
.L0d9c67b0:
    # Line 221
    ld	$a6,24($sp)
    # Line 223
    ld	$a7,8($sp)
    # Line 222
    ld	$t0,16($sp)
    # Line 224
    ld	$t1,0($sp)
    # Line 223
    nor	$a7,$a7,$zero
    # Line 222
    nor	$t0,$t0,$zero
    # Line 221
    nor	$a6,$a6,$zero
    # Line 224
    b	.L0d9c6540
    # Line 220
    nor	$t1,$t1,$zero
.L0d9c67d4:
    # Line 217
    ld	$v0,8($sp)
    xor	$a7,$a7,$v0
    # Line 216
    ld	$v0,16($sp)
    xor	$t0,$t0,$v0
    # Line 215
    ld	$v0,24($sp)
    xor	$a6,$a6,$v0
    # Line 214
    ld	$v0,0($sp)
    # Line 217
    nor	$a7,$a7,$zero
    # Line 216
    nor	$t0,$t0,$zero
    # Line 215
    nor	$a6,$a6,$zero
    # Line 214
    xor	$t1,$t1,$v0
    # Line 218
    b	.L0d9c6540
    # Line 214
    nor	$t1,$t1,$zero
.L0d9c6808:
    # Line 209
    ld	$a1,24($sp)
    # Line 211
    ld	$a4,8($sp)
    # Line 210
    ld	$a2,16($sp)
    # Line 212
    ld	$v1,0($sp)
    # Line 211
    nor	$a7,$a7,$a4
    # Line 210
    nor	$t0,$t0,$a2
    # Line 209
    nor	$a6,$a6,$a1
    # Line 212
    b	.L0d9c6540
    # Line 208
    nor	$t1,$t1,$v1
.L0d9c682c:
    # Line 203
    ld	$v0,24($sp)
    # Line 205
    ld	$a1,8($sp)
    # Line 204
    ld	$v1,16($sp)
    # Line 206
    ld	$a5,0($sp)
    # Line 205
    or	$a7,$a7,$a1
    # Line 204
    or	$t0,$t0,$v1
    # Line 203
    or	$a6,$a6,$v0
    # Line 206
    b	.L0d9c6540
    # Line 202
    or	$t1,$t1,$a5
.L0d9c6850:
    # Line 193
    nor	$v0,$a7,$zero
    ld	$a7,8($sp)
    and	$a7,$a7,$v0
    # Line 192
    nor	$v0,$t0,$zero
    ld	$t0,16($sp)
    and	$t0,$t0,$v0
    # Line 191
    nor	$v0,$a6,$zero
    ld	$a6,24($sp)
    and	$a6,$a6,$v0
    # Line 190
    nor	$v0,$t1,$zero
    # Line 194
    ld	$t1,0($sp)
    b	.L0d9c6540
    # Line 190
    and	$t1,$t1,$v0
.L0d9c6884:
    # Line 187
    ld	$a4,8($sp)
    # Line 184
    ld	$v1,0($sp)
    # Line 185
    ld	$a1,24($sp)
    # Line 186
    ld	$a2,16($sp)
    # Line 184
    nor	$v1,$v1,$zero
    # Line 185
    nor	$a1,$a1,$zero
    # Line 187
    nor	$a4,$a4,$zero
    # Line 186
    nor	$a2,$a2,$zero
    # Line 187
    and	$a7,$a7,$a4
    # Line 186
    and	$t0,$t0,$a2
    # Line 185
    and	$a6,$a6,$a1
    b	.L0d9c6540
    # Line 184
    and	$t1,$t1,$v1
.end __glDoBlendLogicOp

# Function: __glDoBlendSourceZERO
# Declared: Line 258 (Source lines: 268-272)
# Address: 0x0d9c68c0 - 0x0d9c68d8 (Size: 24 bytes, Frame: 0)
.globl __glDoBlendSourceZERO
.ent __glDoBlendSourceZERO
__glDoBlendSourceZERO:
    # Line 268
    mtc1	$zero,$f0
    # Line 271
    swc1	$f0,12($a3)
    # Line 270
    swc1	$f0,8($a3)
    # Line 269
    swc1	$f0,4($a3)
    # Line 272
    jr	$ra
    # Line 268
    swc1	$f0,0($a3)
.end __glDoBlendSourceZERO

# Function: __glDoBlendDestZERO
# Declared: Line 275 (Source lines: 277-287)
# Address: 0x0d9c68e0 - 0x0d9c6928 (Size: 72 bytes, Frame: 32)
.globl __glDoBlendDestZERO
.ent __glDoBlendDestZERO
__glDoBlendDestZERO:
    # Line 277
    addiu	$sp,$sp,-32
    # Line 281
    mtc1	$zero,$f0
    sd	$gp,24($sp)
    # Line 284
    swc1	$f0,12($sp)
    # Line 283
    swc1	$f0,8($sp)
    # Line 277
    lui	$at,0x9
    # Line 282
    swc1	$f0,4($sp)
    # Line 277
    addiu	$at,$at,-23380
    # Line 281
    swc1	$f0,0($sp)
    # Line 277
    addu	$gp,$t9,$at
    # Line 286
    lw	$t9,12556($a0)
    # Line 277
    sd	$ra,16($sp)
    # Line 286
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 287
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestZERO

# Function: __glDoBlendSourceONE
# Declared: Line 290 (Source lines: 301-309)
# Address: 0x0d9c6930 - 0x0d9c6954 (Size: 36 bytes, Frame: 0)
.globl __glDoBlendSourceONE
.ent __glDoBlendSourceONE
__glDoBlendSourceONE:
    # Line 305
    lwc1	$f0,0($a1)
    # Line 302
    lwc1	$f2,8($a1)
    # Line 303
    lwc1	$f3,12($a1)
    # Line 301
    lwc1	$f1,4($a1)
    # Line 308
    swc1	$f3,12($a3)
    # Line 307
    swc1	$f2,8($a3)
    # Line 306
    swc1	$f1,4($a3)
    # Line 309
    jr	$ra
    # Line 305
    swc1	$f0,0($a3)
.end __glDoBlendSourceONE

# Function: __glDoBlendDestONE
# Declared: Line 312 (Source lines: 314-321)
# Address: 0x0d9c6960 - 0x0d9c6994 (Size: 52 bytes, Frame: 16)
.globl __glDoBlendDestONE
.ent __glDoBlendDestONE
__glDoBlendDestONE:
    # Line 314
    addiu	$sp,$sp,-16
    lui	$at,0x9
    sd	$gp,8($sp)
    addiu	$at,$at,-23508
    addu	$gp,$t9,$at
    # Line 320
    lw	$t9,12556($a0)
    # Line 314
    sd	$ra,0($sp)
    # Line 320
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 321
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDoBlendDestONE

# Function: __glDoBlendDestSC
# Declared: Line 323 (Source lines: 325-334)
# Address: 0x0d9c69a0 - 0x0d9c6a34 (Size: 148 bytes, Frame: 32)
.globl __glDoBlendDestSC
.ent __glDoBlendDestSC
__glDoBlendDestSC:
    # Line 328
    lwc1	$f11,0($a2)
    lwc1	$f10,0($a1)
    lwc1	$f9,30800($a0)
    mul.s	$f10,$f10,$f11
    # Line 325
    addiu	$sp,$sp,-32
    # Line 328
    mul.s	$f9,$f9,$f10
    swc1	$f9,0($sp)
    # Line 329
    lwc1	$f8,4($a2)
    lwc1	$f7,4($a1)
    lwc1	$f6,30804($a0)
    mul.s	$f7,$f7,$f8
    mul.s	$f6,$f6,$f7
    swc1	$f6,4($sp)
    # Line 330
    lwc1	$f5,8($a2)
    lwc1	$f4,8($a1)
    lwc1	$f3,30808($a0)
    mul.s	$f4,$f4,$f5
    mul.s	$f3,$f3,$f4
    swc1	$f3,8($sp)
    # Line 331
    lwc1	$f2,12($a2)
    lwc1	$f1,12($a1)
    lwc1	$f0,30812($a0)
    mul.s	$f1,$f1,$f2
    sd	$gp,24($sp)
    # Line 325
    lui	$at,0x9
    # Line 331
    mul.s	$f0,$f0,$f1
    # Line 325
    addiu	$at,$at,-23572
    # Line 331
    swc1	$f0,12($sp)
    # Line 325
    addu	$gp,$t9,$at
    # Line 333
    lw	$t9,12556($a0)
    # Line 325
    sd	$ra,16($sp)
    # Line 333
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 334
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestSC

# Function: __glDoBlendDestMSC
# Declared: Line 336 (Source lines: 338-348)
# Address: 0x0d9c6a40 - 0x0d9c6ad8 (Size: 152 bytes, Frame: 32)
.globl __glDoBlendDestMSC
.ent __glDoBlendDestMSC
__glDoBlendDestMSC:
    # Line 342
    lwc1	$f12,30800($a0)
    lwc1	$f11,0($a1)
    # Line 340
    lwc1	$f1,3544($a0)
    # Line 342
    nmsub.s	$f11,$f1,$f11,$f12
    lwc1	$f10,0($a2)
    # Line 338
    addiu	$sp,$sp,-32
    # Line 342
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($sp)
    # Line 343
    lwc1	$f9,30804($a0)
    lwc1	$f8,4($a1)
    nmsub.s	$f8,$f1,$f8,$f9
    lwc1	$f7,4($a2)
    mul.s	$f7,$f7,$f8
    swc1	$f7,4($sp)
    # Line 344
    lwc1	$f6,30808($a0)
    lwc1	$f5,8($a1)
    nmsub.s	$f5,$f1,$f5,$f6
    lwc1	$f4,8($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,8($sp)
    # Line 345
    lwc1	$f3,30812($a0)
    lwc1	$f2,12($a1)
    nmsub.s	$f1,$f1,$f2,$f3
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 338
    lui	$at,0x9
    # Line 345
    mul.s	$f0,$f0,$f1
    # Line 338
    addiu	$at,$at,-23732
    # Line 345
    swc1	$f0,12($sp)
    # Line 338
    addu	$gp,$t9,$at
    # Line 347
    lw	$t9,12556($a0)
    # Line 338
    sd	$ra,16($sp)
    # Line 347
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 348
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestMSC

# Function: __glDoBlendSourceDC
# Declared: Line 350 (Source lines: 357-365)
# Address: 0x0d9c6ae0 - 0x0d9c6b44 (Size: 100 bytes, Frame: 0)
.globl __glDoBlendSourceDC
.ent __glDoBlendSourceDC
__glDoBlendSourceDC:
    # Line 358
    lwc1	$f10,8($a2)
    # Line 359
    lwc1	$f11,12($a2)
    # Line 357
    lwc1	$f7,4($a2)
    # Line 361
    lwc1	$f5,0($a2)
    lwc1	$f1,0($a1)
    # Line 357
    lwc1	$f3,4($a1)
    # Line 359
    lwc1	$f9,12($a1)
    # Line 358
    lwc1	$f8,8($a1)
    # Line 361
    mul.s	$f1,$f1,$f5
    # Line 359
    lwc1	$f6,30812($a0)
    # Line 357
    mul.s	$f3,$f3,$f7
    # Line 358
    lwc1	$f4,30808($a0)
    # Line 359
    mul.s	$f9,$f9,$f11
    # Line 357
    lwc1	$f2,30804($a0)
    # Line 358
    mul.s	$f8,$f8,$f10
    # Line 361
    lwc1	$f0,30800($a0)
    # Line 359
    mul.s	$f6,$f6,$f9
    # Line 358
    mul.s	$f4,$f4,$f8
    # Line 364
    swc1	$f6,12($a3)
    # Line 357
    mul.s	$f2,$f2,$f3
    # Line 363
    swc1	$f4,8($a3)
    # Line 361
    mul.s	$f0,$f0,$f1
    # Line 362
    swc1	$f2,4($a3)
    # Line 365
    jr	$ra
    # Line 361
    swc1	$f0,0($a3)
.end __glDoBlendSourceDC

# Function: __glDoBlendSourceMDC
# Declared: Line 367 (Source lines: 372-383)
# Address: 0x0d9c6b50 - 0x0d9c6bb8 (Size: 104 bytes, Frame: 0)
.globl __glDoBlendSourceMDC
.ent __glDoBlendSourceMDC
__glDoBlendSourceMDC:
    # Line 372
    lwc1	$f1,3544($a0)
    # Line 379
    lwc1	$f4,30800($a0)
    # Line 375
    lwc1	$f6,30804($a0)
    # Line 376
    lwc1	$f8,30808($a0)
    # Line 377
    lwc1	$f9,30812($a0)
    lwc1	$f7,12($a2)
    # Line 376
    lwc1	$f5,8($a2)
    # Line 375
    lwc1	$f3,4($a2)
    # Line 379
    lwc1	$f2,0($a2)
    # Line 377
    nmsub.s	$f7,$f1,$f7,$f9
    # Line 376
    nmsub.s	$f5,$f1,$f5,$f8
    # Line 375
    nmsub.s	$f3,$f1,$f3,$f6
    # Line 377
    lwc1	$f6,12($a1)
    # Line 379
    nmsub.s	$f1,$f1,$f2,$f4
    # Line 376
    lwc1	$f4,8($a1)
    # Line 375
    lwc1	$f2,4($a1)
    # Line 379
    lwc1	$f0,0($a1)
    # Line 377
    mul.s	$f6,$f6,$f7
    # Line 376
    mul.s	$f4,$f4,$f5
    # Line 382
    swc1	$f6,12($a3)
    # Line 375
    mul.s	$f2,$f2,$f3
    # Line 381
    swc1	$f4,8($a3)
    # Line 379
    mul.s	$f0,$f0,$f1
    # Line 380
    swc1	$f2,4($a3)
    # Line 383
    jr	$ra
    # Line 379
    swc1	$f0,0($a3)
.end __glDoBlendSourceMDC

# Function: __glDoBlendSourceSA
# Declared: Line 386 (Source lines: 395-406)
# Address: 0x0d9c6bc0 - 0x0d9c6bfc (Size: 60 bytes, Frame: 0)
.globl __glDoBlendSourceSA
.ent __glDoBlendSourceSA
__glDoBlendSourceSA:
    # Line 395
    lwc1	$f4,12($a1)
    lwc1	$f1,30812($a0)
    # Line 399
    lwc1	$f3,8($a1)
    # Line 395
    mul.s	$f1,$f1,$f4
    # Line 398
    lwc1	$f2,4($a1)
    # Line 397
    lwc1	$f0,0($a1)
    # Line 400
    mul.s	$f4,$f4,$f1
    # Line 399
    mul.s	$f3,$f3,$f1
    # Line 405
    swc1	$f4,12($a3)
    # Line 398
    mul.s	$f2,$f2,$f1
    # Line 404
    swc1	$f3,8($a3)
    # Line 397
    mul.s	$f0,$f0,$f1
    # Line 403
    swc1	$f2,4($a3)
    # Line 406
    jr	$ra
    # Line 402
    swc1	$f0,0($a3)
.end __glDoBlendSourceSA

# Function: __glDoBlendDestSA
# Declared: Line 408 (Source lines: 410-422)
# Address: 0x0d9c6c00 - 0x0d9c6c70 (Size: 112 bytes, Frame: 32)
.globl __glDoBlendDestSA
.ent __glDoBlendDestSA
__glDoBlendDestSA:
    # Line 414
    lwc1	$f2,30812($a0)
    lwc1	$f1,12($a1)
    # Line 416
    lwc1	$f4,0($a2)
    # Line 414
    mul.s	$f1,$f1,$f2
    # Line 410
    addiu	$sp,$sp,-32
    # Line 416
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($sp)
    # Line 417
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 418
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 419
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 410
    lui	$at,0x9
    # Line 419
    mul.s	$f0,$f0,$f1
    # Line 410
    addiu	$at,$at,-24180
    # Line 419
    swc1	$f0,12($sp)
    # Line 410
    addu	$gp,$t9,$at
    # Line 421
    lw	$t9,12556($a0)
    # Line 410
    sd	$ra,16($sp)
    # Line 421
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 422
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestSA

# Function: __glDoBlendSourceMSA
# Declared: Line 425 (Source lines: 430-444)
# Address: 0x0d9c6c70 - 0x0d9c6cb0 (Size: 64 bytes, Frame: 0)
.globl __glDoBlendSourceMSA
.ent __glDoBlendSourceMSA
__glDoBlendSourceMSA:
    # Line 430
    lwc1	$f2,30812($a0)
    lwc1	$f4,12($a1)
    lwc1	$f1,3544($a0)
    nmsub.s	$f1,$f1,$f4,$f2
    # Line 437
    lwc1	$f3,8($a1)
    # Line 436
    lwc1	$f2,4($a1)
    # Line 440
    lwc1	$f0,0($a1)
    # Line 438
    mul.s	$f4,$f4,$f1
    # Line 437
    mul.s	$f3,$f3,$f1
    # Line 443
    swc1	$f4,12($a3)
    # Line 436
    mul.s	$f2,$f2,$f1
    # Line 442
    swc1	$f3,8($a3)
    # Line 440
    mul.s	$f0,$f0,$f1
    # Line 441
    swc1	$f2,4($a3)
    # Line 444
    jr	$ra
    # Line 440
    swc1	$f0,0($a3)
.end __glDoBlendSourceMSA

# Function: __glDoBlendDestMSA
# Declared: Line 446 (Source lines: 448-459)
# Address: 0x0d9c6cb0 - 0x0d9c6d24 (Size: 116 bytes, Frame: 32)
.globl __glDoBlendDestMSA
.ent __glDoBlendDestMSA
__glDoBlendDestMSA:
    # Line 450
    lwc1	$f3,30812($a0)
    lwc1	$f2,12($a1)
    lwc1	$f1,3544($a0)
    nmsub.s	$f1,$f1,$f2,$f3
    # Line 453
    lwc1	$f4,0($a2)
    # Line 448
    addiu	$sp,$sp,-32
    # Line 453
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($sp)
    # Line 454
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 455
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 456
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 448
    lui	$at,0x9
    # Line 456
    mul.s	$f0,$f0,$f1
    # Line 448
    addiu	$at,$at,-24356
    # Line 456
    swc1	$f0,12($sp)
    # Line 448
    addu	$gp,$t9,$at
    # Line 458
    lw	$t9,12556($a0)
    # Line 448
    sd	$ra,16($sp)
    # Line 458
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 459
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestMSA

# Function: __glDoBlendSourceDA
# Declared: Line 461 (Source lines: 466-477)
# Address: 0x0d9c6d30 - 0x0d9c6d70 (Size: 64 bytes, Frame: 0)
.globl __glDoBlendSourceDA
.ent __glDoBlendSourceDA
__glDoBlendSourceDA:
    # Line 466
    lwc1	$f2,30812($a0)
    lwc1	$f1,12($a2)
    # Line 471
    lwc1	$f4,12($a1)
    # Line 470
    lwc1	$f3,8($a1)
    # Line 466
    mul.s	$f1,$f1,$f2
    # Line 468
    lwc1	$f0,0($a1)
    # Line 471
    mul.s	$f4,$f4,$f1
    # Line 469
    lwc1	$f2,4($a1)
    # Line 470
    mul.s	$f3,$f3,$f1
    # Line 476
    swc1	$f4,12($a3)
    # Line 468
    mul.s	$f0,$f0,$f1
    # Line 475
    swc1	$f3,8($a3)
    # Line 473
    swc1	$f0,0($a3)
    # Line 469
    mul.s	$f2,$f2,$f1
    # Line 477
    jr	$ra
    # Line 474
    swc1	$f2,4($a3)
.end __glDoBlendSourceDA

# Function: __glDoBlendDestDA
# Declared: Line 479 (Source lines: 481-491)
# Address: 0x0d9c6d70 - 0x0d9c6de0 (Size: 112 bytes, Frame: 32)
.globl __glDoBlendDestDA
.ent __glDoBlendDestDA
__glDoBlendDestDA:
    # Line 483
    lwc1	$f2,30812($a0)
    lwc1	$f1,12($a2)
    # Line 485
    lwc1	$f4,0($a2)
    # Line 483
    mul.s	$f1,$f1,$f2
    # Line 481
    addiu	$sp,$sp,-32
    # Line 485
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($sp)
    # Line 486
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 487
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 488
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 481
    lui	$at,0x9
    # Line 488
    mul.s	$f0,$f0,$f1
    # Line 481
    addiu	$at,$at,-24548
    # Line 488
    swc1	$f0,12($sp)
    # Line 481
    addu	$gp,$t9,$at
    # Line 490
    lw	$t9,12556($a0)
    # Line 481
    sd	$ra,16($sp)
    # Line 490
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 491
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestDA

# Function: __glDoBlendSourceMDA
# Declared: Line 493 (Source lines: 500-511)
# Address: 0x0d9c6de0 - 0x0d9c6e24 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendSourceMDA
.ent __glDoBlendSourceMDA
__glDoBlendSourceMDA:
    # Line 500
    lwc1	$f3,30812($a0)
    lwc1	$f2,12($a2)
    lwc1	$f1,3544($a0)
    nmsub.s	$f1,$f1,$f2,$f3
    # Line 505
    lwc1	$f4,12($a1)
    # Line 504
    lwc1	$f3,8($a1)
    # Line 503
    lwc1	$f2,4($a1)
    # Line 507
    lwc1	$f0,0($a1)
    # Line 505
    mul.s	$f4,$f4,$f1
    # Line 504
    mul.s	$f3,$f3,$f1
    # Line 510
    swc1	$f4,12($a3)
    # Line 503
    mul.s	$f2,$f2,$f1
    # Line 509
    swc1	$f3,8($a3)
    # Line 507
    mul.s	$f0,$f0,$f1
    # Line 508
    swc1	$f2,4($a3)
    # Line 511
    jr	$ra
    # Line 507
    swc1	$f0,0($a3)
.end __glDoBlendSourceMDA

# Function: __glDoBlendDestMDA
# Declared: Line 513 (Source lines: 515-527)
# Address: 0x0d9c6e30 - 0x0d9c6ea4 (Size: 116 bytes, Frame: 32)
.globl __glDoBlendDestMDA
.ent __glDoBlendDestMDA
__glDoBlendDestMDA:
    # Line 519
    lwc1	$f3,30812($a0)
    lwc1	$f2,12($a2)
    lwc1	$f1,3544($a0)
    nmsub.s	$f1,$f1,$f2,$f3
    # Line 521
    lwc1	$f4,0($a2)
    # Line 515
    addiu	$sp,$sp,-32
    # Line 521
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($sp)
    # Line 522
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 523
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 524
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 515
    lui	$at,0x9
    # Line 524
    mul.s	$f0,$f0,$f1
    # Line 515
    addiu	$at,$at,-24740
    # Line 524
    swc1	$f0,12($sp)
    # Line 515
    addu	$gp,$t9,$at
    # Line 526
    lw	$t9,12556($a0)
    # Line 515
    sd	$ra,16($sp)
    # Line 526
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 527
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestMDA

# Function: __glDoBlendSourceSAT
# Declared: Line 529 (Source lines: 536-551)
# Address: 0x0d9c6eb0 - 0x0d9c6f1c (Size: 108 bytes, Frame: 0)
.globl __glDoBlendSourceSAT
.ent __glDoBlendSourceSAT
__glDoBlendSourceSAT:
    # Line 536
    lwc1	$f8,30812($a0)
    lwc1	$f10,12($a2)
    lwc1	$f9,3544($a0)
    nmsub.s	$f9,$f9,$f10,$f8
    # Line 537
    lwc1	$f4,12($a1)
    mul.s	$f8,$f8,$f4
    c.lt.s	$f8,$f9
    lwc1	$f7,8($a1)
    lwc1	$f6,4($a1)
    bc1f	.L0d9c6efc
    lwc1	$f5,0($a1)
    # Line 547
    swc1	$f4,12($a3)
    # Line 541
    mul.s	$f13,$f7,$f8
    # Line 540
    mul.s	$f12,$f6,$f8
    # Line 550
    swc1	$f13,8($a3)
    # Line 539
    mul.s	$f11,$f5,$f8
    # Line 549
    swc1	$f12,4($a3)
    # Line 551
    jr	$ra
    # Line 548
    swc1	$f11,0($a3)
.L0d9c6efc:
    # Line 547
    swc1	$f4,12($a3)
    # Line 545
    mul.s	$f16,$f7,$f9
    # Line 544
    mul.s	$f15,$f6,$f9
    # Line 550
    swc1	$f16,8($a3)
    # Line 543
    mul.s	$f14,$f5,$f9
    # Line 549
    swc1	$f15,4($a3)
    # Line 551
    jr	$ra
    # Line 548
    swc1	$f14,0($a3)
.end __glDoBlendSourceSAT

# Function: __glDoBlendSourceCC
# Declared: Line 558 (Source lines: 560-578)
# Address: 0x0d9c6f20 - 0x0d9c6f7c (Size: 92 bytes, Frame: 16)
.globl __glDoBlendSourceCC
.ent __glDoBlendSourceCC
__glDoBlendSourceCC:
    # Line 574
    lwc1	$f0,0($a1)
    # Line 570
    lwc1	$f2,4($a1)
    # Line 571
    lwc1	$f4,8($a1)
    # Line 572
    lwc1	$f6,12($a1)
    # Line 563
    ld	$v0,1840($a0)
    # Line 560
    addiu	$sp,$sp,-16
    # Line 563
    ld	$at,1848($a0)
    sd	$at,8($sp)
    sd	$v0,0($sp)
    # Line 572
    lwc1	$f7,12($sp)
    # Line 571
    lwc1	$f5,8($sp)
    # Line 570
    lwc1	$f3,4($sp)
    # Line 574
    lwc1	$f1,0($sp)
    # Line 572
    mul.s	$f6,$f6,$f7
    # Line 571
    mul.s	$f4,$f4,$f5
    # Line 577
    swc1	$f6,12($a3)
    # Line 570
    mul.s	$f2,$f2,$f3
    # Line 576
    swc1	$f4,8($a3)
    # Line 574
    mul.s	$f0,$f0,$f1
    # Line 575
    swc1	$f2,4($a3)
    # Line 578
    addiu	$sp,$sp,16
    jr	$ra
    # Line 574
    swc1	$f0,0($a3)
.end __glDoBlendSourceCC

# Function: __glDoBlendDestCC
# Declared: Line 580 (Source lines: 582-593)
# Address: 0x0d9c6f80 - 0x0d9c7004 (Size: 132 bytes, Frame: 48)
.globl __glDoBlendDestCC
.ent __glDoBlendDestCC
__glDoBlendDestCC:
    # Line 587
    lwc1	$f6,0($a2)
    # Line 584
    ld	$v1,1840($a0)
    # Line 582
    addiu	$sp,$sp,-48
    # Line 584
    ld	$v0,1848($a0)
    sd	$v0,8($sp)
    sd	$v1,0($sp)
    # Line 587
    lwc1	$f7,0($sp)
    # Line 588
    lwc1	$f5,4($sp)
    # Line 587
    mul.s	$f6,$f6,$f7
    swc1	$f6,16($sp)
    # Line 588
    lwc1	$f4,4($a2)
    # Line 589
    lwc1	$f3,8($sp)
    # Line 588
    mul.s	$f4,$f4,$f5
    swc1	$f4,20($sp)
    # Line 589
    lwc1	$f2,8($a2)
    # Line 590
    lwc1	$f1,12($sp)
    # Line 589
    mul.s	$f2,$f2,$f3
    swc1	$f2,24($sp)
    # Line 590
    lwc1	$f0,12($a2)
    sd	$gp,40($sp)
    # Line 582
    lui	$at,0x9
    # Line 590
    mul.s	$f0,$f0,$f1
    # Line 582
    addiu	$at,$at,-25076
    # Line 590
    swc1	$f0,28($sp)
    # Line 582
    addu	$gp,$t9,$at
    # Line 592
    lw	$t9,12556($a0)
    # Line 582
    sd	$ra,32($sp)
    # Line 592
    jalr	$t9
    addiu	$a2,$sp,16
    ld	$ra,32($sp)
    # Line 593
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoBlendDestCC

# Function: __glDoBlendSourceCA
# Declared: Line 596 (Source lines: 601-616)
# Address: 0x0d9c7010 - 0x0d9c7048 (Size: 56 bytes, Frame: 0)
.globl __glDoBlendSourceCA
.ent __glDoBlendSourceCA
__glDoBlendSourceCA:
    # Line 601
    lwc1	$f1,1852($a0)
    # Line 610
    lwc1	$f4,12($a1)
    # Line 609
    lwc1	$f3,8($a1)
    # Line 608
    lwc1	$f2,4($a1)
    # Line 612
    lwc1	$f0,0($a1)
    # Line 610
    mul.s	$f4,$f4,$f1
    # Line 609
    mul.s	$f3,$f3,$f1
    # Line 615
    swc1	$f4,12($a3)
    # Line 608
    mul.s	$f2,$f2,$f1
    # Line 614
    swc1	$f3,8($a3)
    # Line 612
    mul.s	$f0,$f0,$f1
    # Line 613
    swc1	$f2,4($a3)
    # Line 616
    jr	$ra
    # Line 612
    swc1	$f0,0($a3)
.end __glDoBlendSourceCA

# Function: __glDoBlendDestCA
# Declared: Line 618 (Source lines: 620-630)
# Address: 0x0d9c7050 - 0x0d9c70b8 (Size: 104 bytes, Frame: 32)
.globl __glDoBlendDestCA
.ent __glDoBlendDestCA
__glDoBlendDestCA:
    # Line 622
    lwc1	$f1,1852($a0)
    # Line 624
    lwc1	$f4,0($a2)
    # Line 620
    addiu	$sp,$sp,-32
    # Line 624
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($sp)
    # Line 625
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 626
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 627
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 620
    lui	$at,0x9
    # Line 627
    mul.s	$f0,$f0,$f1
    # Line 620
    addiu	$at,$at,-25284
    # Line 627
    swc1	$f0,12($sp)
    # Line 620
    addu	$gp,$t9,$at
    # Line 629
    lw	$t9,12556($a0)
    # Line 620
    sd	$ra,16($sp)
    # Line 629
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 630
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestCA

# Function: __glDoBlendSourceMCC
# Declared: Line 633 (Source lines: 635-653)
# Address: 0x0d9c70c0 - 0x0d9c7130 (Size: 112 bytes, Frame: 16)
.globl __glDoBlendSourceMCC
.ent __glDoBlendSourceMCC
__glDoBlendSourceMCC:
    # Line 646
    lwc1	$f4,8($a1)
    # Line 647
    lwc1	$f7,12($a1)
    # Line 645
    lwc1	$f1,3544($a0)
    # Line 637
    ld	$v0,1840($a0)
    # Line 635
    addiu	$sp,$sp,-16
    # Line 637
    ld	$at,1848($a0)
    sd	$at,8($sp)
    sd	$v0,0($sp)
    # Line 647
    lwc1	$f8,12($sp)
    # Line 646
    lwc1	$f6,8($sp)
    # Line 645
    lwc1	$f3,4($sp)
    # Line 649
    lwc1	$f5,0($sp)
    # Line 647
    sub.s	$f8,$f1,$f8
    # Line 645
    lwc1	$f2,4($a1)
    # Line 646
    sub.s	$f6,$f1,$f6
    # Line 649
    lwc1	$f0,0($a1)
    # Line 645
    sub.s	$f3,$f1,$f3
    # Line 647
    mul.s	$f7,$f7,$f8
    # Line 649
    sub.s	$f1,$f1,$f5
    # Line 646
    mul.s	$f4,$f4,$f6
    # Line 652
    swc1	$f7,12($a3)
    # Line 645
    mul.s	$f2,$f2,$f3
    # Line 651
    swc1	$f4,8($a3)
    # Line 649
    mul.s	$f0,$f0,$f1
    # Line 650
    swc1	$f2,4($a3)
    # Line 653
    addiu	$sp,$sp,16
    jr	$ra
    # Line 649
    swc1	$f0,0($a3)
.end __glDoBlendSourceMCC

# Function: __glDoBlendDestMCC
# Declared: Line 656 (Source lines: 658-671)
# Address: 0x0d9c7130 - 0x0d9c71d4 (Size: 164 bytes, Frame: 48)
.globl __glDoBlendDestMCC
.ent __glDoBlendDestMCC
__glDoBlendDestMCC:
    # Line 665
    lwc1	$f10,3544($a0)
    # Line 660
    ld	$v1,1840($a0)
    # Line 658
    addiu	$sp,$sp,-48
    # Line 660
    ld	$v0,1848($a0)
    sd	$v0,8($sp)
    sd	$v1,0($sp)
    # Line 665
    lwc1	$f11,0($sp)
    lwc1	$f9,0($a2)
    sub.s	$f10,$f10,$f11
    # Line 666
    lwc1	$f8,4($sp)
    # Line 665
    mul.s	$f9,$f9,$f10
    swc1	$f9,16($sp)
    # Line 666
    lwc1	$f7,3544($a0)
    lwc1	$f6,4($a2)
    sub.s	$f7,$f7,$f8
    # Line 667
    lwc1	$f5,8($sp)
    # Line 666
    mul.s	$f6,$f6,$f7
    swc1	$f6,20($sp)
    # Line 667
    lwc1	$f4,3544($a0)
    lwc1	$f3,8($a2)
    sub.s	$f4,$f4,$f5
    # Line 668
    lwc1	$f2,12($sp)
    # Line 667
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($sp)
    # Line 668
    lwc1	$f1,3544($a0)
    lwc1	$f0,12($a2)
    sub.s	$f1,$f1,$f2
    sd	$gp,40($sp)
    # Line 658
    lui	$at,0x9
    # Line 668
    mul.s	$f0,$f0,$f1
    # Line 658
    addiu	$at,$at,-25508
    # Line 668
    swc1	$f0,28($sp)
    # Line 658
    addu	$gp,$t9,$at
    # Line 670
    lw	$t9,12556($a0)
    # Line 658
    sd	$ra,32($sp)
    # Line 670
    jalr	$t9
    addiu	$a2,$sp,16
    ld	$ra,32($sp)
    # Line 671
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoBlendDestMCC

# Function: __glDoBlendSourceMCA
# Declared: Line 674 (Source lines: 684-695)
# Address: 0x0d9c71e0 - 0x0d9c7220 (Size: 64 bytes, Frame: 0)
.globl __glDoBlendSourceMCA
.ent __glDoBlendSourceMCA
__glDoBlendSourceMCA:
    # Line 684
    lwc1	$f2,1852($a0)
    lwc1	$f1,3544($a0)
    # Line 689
    lwc1	$f4,12($a1)
    # Line 688
    lwc1	$f3,8($a1)
    # Line 684
    sub.s	$f1,$f1,$f2
    # Line 691
    lwc1	$f0,0($a1)
    # Line 689
    mul.s	$f4,$f4,$f1
    # Line 687
    lwc1	$f2,4($a1)
    # Line 688
    mul.s	$f3,$f3,$f1
    # Line 694
    swc1	$f4,12($a3)
    # Line 691
    mul.s	$f0,$f0,$f1
    # Line 693
    swc1	$f3,8($a3)
    # Line 691
    swc1	$f0,0($a3)
    # Line 687
    mul.s	$f2,$f2,$f1
    # Line 695
    jr	$ra
    # Line 692
    swc1	$f2,4($a3)
.end __glDoBlendSourceMCA

# Function: __glDoBlendDestMCA
# Declared: Line 697 (Source lines: 699-711)
# Address: 0x0d9c7220 - 0x0d9c7290 (Size: 112 bytes, Frame: 32)
.globl __glDoBlendDestMCA
.ent __glDoBlendDestMCA
__glDoBlendDestMCA:
    # Line 703
    lwc1	$f2,1852($a0)
    lwc1	$f1,3544($a0)
    # Line 705
    lwc1	$f4,0($a2)
    # Line 703
    sub.s	$f1,$f1,$f2
    # Line 699
    addiu	$sp,$sp,-32
    # Line 705
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($sp)
    # Line 706
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 707
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 708
    lwc1	$f0,12($a2)
    sd	$gp,24($sp)
    # Line 699
    lui	$at,0x9
    # Line 708
    mul.s	$f0,$f0,$f1
    # Line 699
    addiu	$at,$at,-25748
    # Line 708
    swc1	$f0,12($sp)
    # Line 699
    addu	$gp,$t9,$at
    # Line 710
    lw	$t9,12556($a0)
    # Line 699
    sd	$ra,16($sp)
    # Line 710
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    # Line 711
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoBlendDestMCA

# Function: Nop
# Declared: Line 716 (Source lines: 725-725)
# Address: 0x0d9c7290 - 0x0d9c7298 (Size: 8 bytes, Frame: 0)
.ent Nop
Nop:
    # Line 725
    jr	$ra
    nop
.end Nop

# Function: __glDoNoFetchBlend
# Declared: Line 731 (Source lines: 733-738)
# Address: 0x0d9c72a0 - 0x0d9c72d8 (Size: 56 bytes, Frame: 16)
.globl __glDoNoFetchBlend
.ent __glDoNoFetchBlend
__glDoNoFetchBlend:
    # Line 733
    addiu	$sp,$sp,-16
    lui	$at,0x9
    sd	$gp,8($sp)
    addiu	$at,$at,-25876
    addu	$gp,$t9,$at
    # Line 737
    lw	$t9,12544($a0)
    addiu	$a1,$a2,12
    # Line 733
    sd	$ra,0($sp)
    # Line 737
    jalr	$t9
    move	$a2,$zero
    ld	$ra,0($sp)
    # Line 738
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDoNoFetchBlend

# Function: __glDoFetchBlend
# Declared: Line 743 (Source lines: 745-751)
# Address: 0x0d9c72e0 - 0x0d9c7354 (Size: 116 bytes, Frame: 192)
.globl __glDoFetchBlend
.ent __glDoFetchBlend
__glDoFetchBlend:
    # Line 745
    addiu	$sp,$sp,-64
    sd	$a2,48($sp)
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x9
    sd	$gp,32($sp)
    addiu	$v1,$v1,-25940
    addu	$gp,$t9,$v1
    # Line 748
    lw	$t9,168($a1)
    # Line 745
    move	$at,$a1
    sd	$a3,40($sp)
    # Line 748
    addiu	$a3,$sp,0
    # Line 745
    move	$s8,$a0
    # Line 748
    lw	$a1,0($a2)
    move	$a0,$at
    jalr	$t9
    lw	$a2,4($a2)
    # Line 750
    lw	$t9,12544($s8)
    ld	$a1,48($sp)
    move	$a0,$s8
    addiu	$a2,$sp,0
    ld	$a3,40($sp)
    jalr	$t9
    addiu	$a1,$a1,12
    ld	$ra,16($sp)
    ld	$s8,24($sp)
    # Line 751
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoFetchBlend

# Function: __glDoBlend
# Declared: Line 753 (Source lines: 755-771)
# Address: 0x0d9c7360 - 0x0d9c7434 (Size: 212 bytes, Frame: 48)
.globl __glDoBlend
.ent __glDoBlend
__glDoBlend:
    # Line 755
    addiu	$sp,$sp,-48
    sd	$a2,8($sp)
    sd	$ra,16($sp)
    lui	$at,0x9
    sd	$gp,40($sp)
    addiu	$at,$at,-26068
    addu	$gp,$t9,$at
    # Line 756
    lw	$t9,12548($a0)
    # Line 755
    sd	$s0,24($sp)
    move	$s0,$a3
    sd	$s1,32($sp)
    # Line 756
    nop
    # Line 755
    move	$s1,$a0
    # Line 756
    jalr	$t9
    # Line 755
    sd	$a1,0($sp)
    # Line 757
    lw	$t9,12552($s1)
    move	$a0,$s1
    ld	$a1,0($sp)
    ld	$a2,8($sp)
    jalr	$t9
    move	$a3,$s0
    lwc1	$f0,0($s0)
    lwc1	$f4,30752($s1)
    c.lt.s	$f4,$f0
    bc1f	.L0d9c73cc
    ld	$ra,16($sp)
    # Line 760
    swc1	$f4,0($s0)
.L0d9c73cc:
    lwc1	$f1,4($s0)
    lwc1	$f4,30756($s1)
    c.lt.s $f4,$f1
    bc1f .L0d9c73e4
    # Line 771
    ld	$gp,40($sp)
    # Line 763
    swc1	$f4,4($s0)
.L0d9c73e4:
    lwc1	$f2,8($s0)
    lwc1	$f4,30760($s1)
    c.lt.s $f4,$f2
    bc1f .L0d9c73fc
    nop
    # Line 766
    swc1	$f4,8($s0)
.L0d9c73fc:
    lwc1	$f3,12($s0)
    lwc1	$f4,30792($s1)
    c.lt.s $f4,$f3
    bc1f .L0d9c7420
    # Line 771
    ld	$s1,32($sp)
    # Line 769
    swc1	$f4,12($s0)
    # Line 771
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7420:
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoBlend

# Function: __glDoBlendZeroClamp
# Declared: Line 776 (Source lines: 778-794)
# Address: 0x0d9c7440 - 0x0d9c7500 (Size: 192 bytes, Frame: 48)
.globl __glDoBlendZeroClamp
.ent __glDoBlendZeroClamp
__glDoBlendZeroClamp:
    # Line 778
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$a2,16($sp)
    lui	$at,0x9
    sd	$gp,40($sp)
    addiu	$at,$at,-26292
    addu	$gp,$t9,$at
    # Line 779
    lw	$t9,12548($a0)
    # Line 778
    sd	$ra,24($sp)
    sd	$s0,32($sp)
    move	$s0,$a3
    # Line 779
    jalr	$t9
    # Line 778
    sd	$a1,8($sp)
    # Line 780
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12552($t9)
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    jalr	$t9
    move	$a3,$s0
    mtc1	$zero,$f4
    lwc1	$f0,0($s0)
    c.lt.s	$f0,$f4
    bc1f	.L0d9c74a8
    ld	$ra,24($sp)
    # Line 783
    swc1	$f4,0($s0)
.L0d9c74a8:
    lwc1	$f1,4($s0)
    c.lt.s $f1,$f4
    bc1f .L0d9c74bc
    # Line 794
    ld	$gp,40($sp)
    # Line 786
    swc1	$f4,4($s0)
.L0d9c74bc:
    lwc1	$f2,8($s0)
    c.lt.s $f2,$f4
    bc1f .L0d9c74d0
    nop
    # Line 789
    swc1	$f4,8($s0)
.L0d9c74d0:
    lwc1	$f3,12($s0)
    c.lt.s $f3,$f4
    bc1f .L0d9c74f0
    nop
    # Line 792
    swc1	$f4,12($s0)
    # Line 794
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c74f0:
    ld	$s0,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoBlendZeroClamp

# Function: __glDoBlendNoClamp
# Declared: Line 796 (Source lines: 798-801)
# Address: 0x0d9c7500 - 0x0d9c7564 (Size: 100 bytes, Frame: 48)
.globl __glDoBlendNoClamp
.ent __glDoBlendNoClamp
__glDoBlendNoClamp:
    # Line 798
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    lui	$at,0x9
    sd	$gp,16($sp)
    addiu	$at,$at,-26484
    addu	$gp,$t9,$at
    # Line 799
    lw	$t9,12548($a0)
    # Line 798
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    # Line 799
    nop
    # Line 798
    move	$s8,$a0
    # Line 799
    jalr	$t9
    # Line 798
    sd	$a1,40($sp)
    # Line 800
    lw	$t9,12552($s8)
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    move	$a0,$s8
    jalr	$t9
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 801
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoBlendNoClamp

# Function: __glDoBlend_SA_ZERO
# Declared: Line 807 (Source lines: 815-820)
# Address: 0x0d9c7570 - 0x0d9c75b0 (Size: 64 bytes, Frame: 0)
.globl __glDoBlend_SA_ZERO
.ent __glDoBlend_SA_ZERO
__glDoBlend_SA_ZERO:
    # Line 815
    lwc1	$f2,30812($a0)
    lwc1	$f1,12($a1)
    # Line 816
    lwc1	$f4,0($a1)
    # Line 815
    mul.s	$f1,$f1,$f2
    # Line 816
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($a3)
    # Line 817
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($a3)
    # Line 818
    lwc1	$f2,8($a1)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($a3)
    # Line 819
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f1
    # Line 820
    jr	$ra
    # Line 819
    swc1	$f0,12($a3)
.end __glDoBlend_SA_ZERO

# Function: __glDoBlend_SA_ONE
# Declared: Line 825 (Source lines: 830-852)
# Address: 0x0d9c75b0 - 0x0d9c762c (Size: 124 bytes, Frame: 0)
.globl __glDoBlend_SA_ONE
.ent __glDoBlend_SA_ONE
__glDoBlend_SA_ONE:
    # Line 830
    lwc1	$f9,12($a1)
    lwc1	$f4,30812($a0)
    # Line 839
    lwc1	$f6,8($a2)
    # Line 843
    lwc1	$f7,12($a2)
    # Line 839
    lwc1	$f8,8($a1)
    # Line 830
    mul.s	$f4,$f4,$f9
    # Line 835
    lwc1	$f5,4($a1)
    # Line 831
    lwc1	$f2,0($a1)
    # Line 843
    madd.s	$f7,$f7,$f4,$f9
    # Line 835
    lwc1	$f3,4($a2)
    # Line 839
    madd.s	$f6,$f6,$f8,$f4
    # Line 831
    lwc1	$f1,0($a2)
    # Line 835
    madd.s	$f3,$f3,$f5,$f4
    # Line 843
    lwc1	$f5,30792($a0)
    # Line 831
    madd.s	$f1,$f1,$f2,$f4
    # Line 839
    lwc1	$f4,30760($a0)
    # Line 835
    lwc1	$f2,30756($a0)
    # Line 831
    lwc1	$f0,30752($a0)
    # Line 843
    c.lt.s $f5,$f7
    # Line 839
    c.lt.s $f4,$f6
    # Line 835
    c.lt.s $f2,$f3
    movf.s	$f5,$f7,$fcc3
    # Line 831
    c.lt.s	$f0,$f1
    movf.s	$f4,$f6,$fcc2
    # Line 851
    swc1	$f5,12($a3)
    movf.s	$f2,$f3,$fcc1
    # Line 850
    swc1	$f4,8($a3)
    movf.s	$f0,$f1,$fcc0
    # Line 849
    swc1	$f2,4($a3)
    # Line 852
    jr	$ra
    # Line 848
    swc1	$f0,0($a3)
.end __glDoBlend_SA_ONE

# Function: __glDoBlend_SA_MSA
# Declared: Line 861 (Source lines: 866-877)
# Address: 0x0d9c7630 - 0x0d9c7694 (Size: 100 bytes, Frame: 0)
.globl __glDoBlend_SA_MSA
.ent __glDoBlend_SA_MSA
__glDoBlend_SA_MSA:
    # Line 866
    lwc1	$f7,12($a1)
    lwc1	$f5,30812($a0)
    # Line 867
    lwc1	$f6,3544($a0)
    nmsub.s	$f6,$f6,$f5,$f7
    # Line 873
    lwc1	$f0,0($a2)
    # Line 871
    lwc1	$f3,12($a2)
    # Line 866
    mul.s	$f5,$f5,$f7
    # Line 870
    lwc1	$f2,8($a2)
    # Line 873
    mul.s	$f0,$f0,$f6
    # Line 870
    lwc1	$f4,8($a1)
    # Line 871
    mul.s	$f3,$f3,$f6
    # Line 869
    lwc1	$f1,4($a2)
    # Line 871
    madd.s	$f3,$f3,$f5,$f7
    # Line 869
    lwc1	$f7,4($a1)
    # Line 870
    mul.s	$f2,$f2,$f6
    madd.s	$f2,$f2,$f4,$f5
    # Line 873
    lwc1	$f4,0($a1)
    # Line 869
    mul.s	$f1,$f1,$f6
    madd.s	$f1,$f1,$f7,$f5
    # Line 873
    madd.s	$f0,$f0,$f4,$f5
    # Line 876
    swc1	$f3,12($a3)
    # Line 875
    swc1	$f2,8($a3)
    # Line 874
    swc1	$f1,4($a3)
    # Line 877
    jr	$ra
    # Line 873
    swc1	$f0,0($a3)
.end __glDoBlend_SA_MSA

# Function: __glDoBlend_MSA_SA
# Declared: Line 886 (Source lines: 891-902)
# Address: 0x0d9c76a0 - 0x0d9c7704 (Size: 100 bytes, Frame: 0)
.globl __glDoBlend_MSA_SA
.ent __glDoBlend_MSA_SA
__glDoBlend_MSA_SA:
    # Line 891
    lwc1	$f7,12($a1)
    lwc1	$f6,30812($a0)
    # Line 892
    lwc1	$f5,3544($a0)
    # Line 898
    lwc1	$f0,0($a2)
    # Line 892
    nmsub.s	$f5,$f5,$f6,$f7
    # Line 895
    lwc1	$f2,8($a2)
    # Line 891
    mul.s	$f6,$f6,$f7
    # Line 896
    lwc1	$f3,12($a2)
    # Line 898
    mul.s	$f0,$f0,$f6
    # Line 895
    lwc1	$f4,8($a1)
    mul.s	$f2,$f2,$f6
    # Line 894
    lwc1	$f1,4($a2)
    # Line 896
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f5,$f7
    # Line 894
    lwc1	$f7,4($a1)
    # Line 895
    madd.s	$f2,$f2,$f4,$f5
    # Line 898
    lwc1	$f4,0($a1)
    # Line 894
    mul.s	$f1,$f1,$f6
    madd.s	$f1,$f1,$f7,$f5
    # Line 898
    madd.s	$f0,$f0,$f4,$f5
    # Line 901
    swc1	$f3,12($a3)
    # Line 900
    swc1	$f2,8($a3)
    # Line 899
    swc1	$f1,4($a3)
    # Line 902
    jr	$ra
    # Line 898
    swc1	$f0,0($a3)
.end __glDoBlend_MSA_SA

# Function: __glGenericPickBlendProcs
# Declared: Line 904 (Source lines: 905-1099)
# Address: 0x0d9c7710 - 0x0d9c7c98 (Size: 1416 bytes, Frame: 0)
.globl __glGenericPickBlendProcs
.ent __glGenericPickBlendProcs
__glGenericPickBlendProcs:
    # Line 909
    lw	$a6,1856($a0)
    lbu	$v1,3221($a0)
    # Line 908
    lw	$a3,1836($a0)
    # Line 905
    lui	$v0,0x9
    # Line 907
    lw	$a5,1832($a0)
    # Line 905
    addiu	$v0,$v0,-27012
    # Line 906
    lw	$a4,1828($a0)
    # Line 909
    bnez	$v1,.L0d9c77b0
    # Line 905
    addu	$at,$t9,$v0
    # Line 919
    li	$a7,0x8007
    beq	$a7,$a3,.L0d9c77b8
    li	$v1,0x8008
    beq	$a3,$v1,.L0d9c77bc
    li	$t0,3057
    beq	$t0,$a3,.L0d9c77bc
    li	$a1,0x8320
    beq	$a3,$a1,.L0d9c77bc
    li	$a2,0x8321
    beq	$a3,$a2,.L0d9c77bc
    nop
    # Line 927
    beqz	$a5,.L0d9c7b84
    li	$a2,774
.L0d9c7768:
    bne	$t0,$a3,.L0d9c77c8
.L0d9c776c:
    li	$t1,5376
    beq	$a6,$t1,.L0d9c779c
    # Line 933
    nop	# was lw $t9, -26784($gp) # &__glDoNoFetchBlend
    # Line 927
    li	$t2,5379
    beq	$a6,$t2,.L0d9c779c
    # Line 933
    nop	# was lw $t9, -26784($gp) # &__glDoNoFetchBlend
    # Line 927
    li	$t3,5388
    beq	$a6,$t3,.L0d9c779c
    # Line 933
    nop	# was lw $t9, -26784($gp) # &__glDoNoFetchBlend
    # Line 927
    li	$t8,5391
    bne	$a6,$t8,.L0d9c77c8
    # Line 933
    nop	# was lw $t9, -26784($gp) # &__glDoNoFetchBlend
.L0d9c779c:
    b	.L0d9c77d0
    sw	$t9,12540($a0)
.L0d9c77a4:
    # Line 1084
    la	$v0,__glDoBlendSubtract
    # Line 1099
    jr	$ra
    # Line 1084
    sw	$v0,12556($a0)
.L0d9c77b0:
    # Line 1099
    jr	$ra
    nop
.L0d9c77b8:
    # Line 919
    li	$t0,3057
.L0d9c77bc:
    li	$a4,1
    # Line 927
    beq	$t0,$a3,.L0d9c776c
    # Line 919
    li	$a5,1
.L0d9c77c8:
    # Line 935
    la	$v1,__glDoFetchBlend
    sw	$v1,12540($a0)
.L0d9c77d0:
    # Line 938
    lw	$a1,1796($a0)
    andi	$a1,$a1,0x800
    beqz	$a1,.L0d9c78fc
    # Line 943
    li	$t3,770
.L0d9c77e0:
    beq	$t3,$a4,.L0d9c7a4c
    # Line 957
    li	$a2,771
.L0d9c77e8:
    beq	$a4,$a2,.L0d9c7a7c
.L0d9c77ec:
    # Line 965
    li	$a6,0x800a
.L0d9c77f0:
    beq	$a6,$a3,.L0d9c79f8
    # Line 967
    la	$t1,__glDoBlendZeroClamp
    # Line 965
    li	$t1,0x800b
    beq	$a3,$t1,.L0d9c79f8
    # Line 967
    la	$t1,__glDoBlendZeroClamp
    # Line 968
    beq	$a7,$a3,.L0d9c7888
    # Line 972
    la	$a2,__glDoBlendNoClamp
    # Line 968
    li	$t2,0x8008
    beq	$a3,$t2,.L0d9c7888
    # Line 972
    la	$a2,__glDoBlendNoClamp
    # Line 968
    beq	$t0,$a3,.L0d9c7888
    # Line 972
    la	$a2,__glDoBlendNoClamp
    # Line 968
    li	$t8,0x8320
    beq	$a3,$t8,.L0d9c7884
    li	$t9,0x8321
    beq	$a3,$t9,.L0d9c7884
    # Line 973
    li	$t2,772
    beq	$t2,$a4,.L0d9c7a3c
    li	$t1,773
.L0d9c783c:
    beq	$t1,$a4,.L0d9c7c00
    nop
    li	$t2,0x8001
.L0d9c7848:
    beq	$t2,$a4,.L0d9c7c10
    li	$t1,0x8002
.L0d9c7850:
    beq	$t1,$a4,.L0d9c7c20
    li	$v0,769
.L0d9c7858:
    beq	$a5,$v0,.L0d9c7a44
    # Line 983
    la	$v1,__glDoBlendNoClamp
    # Line 973
    li	$v1,775
    beq	$a4,$v1,.L0d9c7a44
    # Line 983
    la	$v1,__glDoBlendNoClamp
    # Line 973
    beqz	$a5,.L0d9c7a44
    # Line 983
    la	$v1,__glDoBlendNoClamp
    # Line 973
    beqz	$a4,.L0d9c7a40
    # Line 985
    la	$a1,__glDoBlend
    b	.L0d9c788c
    sw	$a1,12544($a0)
.L0d9c7884:
    # Line 972
    la	$a2,__glDoBlendNoClamp
.L0d9c7888:
    sw	$a2,12544($a0)
.L0d9c788c:
    # Line 988
    sltiu	$t1,$a4,774
    bnez	$t1,.L0d9c7958
    sltiu	$v1,$a4,771
    sltiu	$t1,$a4,775
    beqz	$t1,.L0d9c7990
    li	$t1,0x8002
    # Line 996
    la	$t2,__glDoBlendSourceDC
    sw	$t2,12548($a0)
.L0d9c78ac:
    # Line 1029
    sltiu	$a4,$a5,772
    bnez	$a4,.L0d9c7974
    sltiu	$t1,$a5,769
    sltiu	$t3,$a5,773
    beqz	$t3,.L0d9c79b4
    li	$t1,0x8002
    # Line 1049
    la	$t8,__glDoBlendDestDA
    sw	$t8,12552($a0)
.L0d9c78cc:
    # Line 1073
    sltu	$t9,$a3,$a6
    beqz	$t9,.L0d9c7924
.L0d9c78d4:
    sltu	$v0,$a3,$a7
    bnez	$v0,.L0d9c79d8
    li	$a4,0x8006
    sltu	$v1,$a7,$a3
    beqz	$v1,.L0d9c7bf4
    li	$a1,0x8008
    bne	$a3,$a1,.L0d9c77b0
    # Line 1081
    la	$a2,__glDoBlendMax
    # Line 1099
    jr	$ra
    # Line 1081
    sw	$a2,12556($a0)
.L0d9c78fc:
    # Line 938
    lw	$a6,1792($a0)
    andi	$a6,$a6,0x2
    bnez	$a6,.L0d9c77e0
    # Line 943
    li	$t3,770
    # Line 1073
    li	$a6,0x800a
    # Line 940
    la	$t1,sub_0d9c0000
    # Line 1073
    sltu	$t2,$a3,$a6
    # Line 940
    addiu	$t1,$t1,29328
    # Line 1073
    bnez	$t2,.L0d9c78d4
    # Line 940
    sw	$t1,12544($a0)
.L0d9c7924:
    # Line 1073
    sltu	$t2,$a6,$a3
    beqz	$t2,.L0d9c77a4
    li	$a4,0x8320
    sltu	$t3,$a3,$a4
    bnez	$t3,.L0d9c7a98
    li	$t3,0x800b
    sltu	$t8,$a4,$a3
    beqz	$t8,.L0d9c7c64
    li	$t9,0x8321
    bne	$a3,$t9,.L0d9c77b0
    # Line 1096
    la	$v0,__glDoBlendAlphaMax
    # Line 1099
    jr	$ra
    # Line 1096
    sw	$v0,12556($a0)
.L0d9c7958:
    # Line 988
    bnez	$v1,.L0d9c7a00
    sltiu	$a1,$a4,772
    beqz	$a1,.L0d9c7ac8
    sltiu	$a1,$a4,773
    # Line 1005
    la	$a2,__glDoBlendSourceMSA
    # Line 1006
    b	.L0d9c78ac
    # Line 1005
    sw	$a2,12548($a0)
.L0d9c7974:
    # Line 1029
    bnez	$t1,.L0d9c7a1c
    sltiu	$t2,$a5,770
    beqz	$t2,.L0d9c7b00
    sltiu	$t8,$a5,771
    # Line 1040
    la	$t3,__glDoBlendDestMSC
    # Line 1041
    b	.L0d9c78cc
    # Line 1040
    sw	$t3,12552($a0)
.L0d9c7990:
    # Line 988
    sltu	$t8,$a4,$t1
    bnez	$t8,.L0d9c7aa8
    sltiu	$t9,$a4,776
    sltu	$t9,$t1,$a4
    bnez	$t9,.L0d9c7b48
    li	$t1,0x8004
    # Line 1023
    la	$v0,__glDoBlendSourceMCC
    # Line 1024
    b	.L0d9c78ac
    # Line 1023
    sw	$v0,12548($a0)
.L0d9c79b4:
    # Line 1029
    sltu	$v1,$a5,$t1
    bnez	$v1,.L0d9c7ae0
    li	$t2,0x8001
    sltu	$a1,$t1,$a5
    bnez	$a1,.L0d9c7b64
    li	$t1,0x8004
    # Line 1061
    la	$a2,__glDoBlendDestMCC
    # Line 1062
    b	.L0d9c78cc
    # Line 1061
    sw	$a2,12552($a0)
.L0d9c79d8:
    # Line 1073
    sltu	$a5,$a3,$a4
    bnez	$a5,.L0d9c7b18
    sltu	$a6,$a4,$a3
    bnez	$a6,.L0d9c77b0
    # Line 1075
    la	$a7,__glDoBlendAdd
    # Line 1099
    jr	$ra
    # Line 1075
    sw	$a7,12556($a0)
    # Line 967
    la	$t1,__glDoBlendZeroClamp
.L0d9c79f8:
    b	.L0d9c788c
    sw	$t1,12544($a0)
.L0d9c7a00:
    # Line 988
    beqz	$a4,.L0d9c7c70
    # Line 990
    la	$a2,__glDoBlendSourceZERO
    # Line 988
    sltiu	$t2,$a4,2
    beqz	$t2,.L0d9c7b28
    # Line 993
    la	$t8,__glDoBlendSourceONE
    # Line 994
    b	.L0d9c78ac
    # Line 993
    sw	$t8,12548($a0)
.L0d9c7a1c:
    # Line 1029
    beqz	$a5,.L0d9c7c78
    # Line 1031
    la	$a4,__glDoBlendDestZERO
    # Line 1029
    sltiu	$t9,$a5,2
    beqz	$t9,.L0d9c7b38
    li	$a1,768
    # Line 1034
    la	$v0,__glDoBlendDestONE
    # Line 1035
    b	.L0d9c78cc
    # Line 1034
    sw	$v0,12552($a0)
.L0d9c7a3c:
    # Line 973
    bne	$t1,$a5,.L0d9c783c
.L0d9c7a40:
    # Line 983
    la	$v1,__glDoBlendNoClamp
.L0d9c7a44:
    b	.L0d9c788c
    sw	$v1,12544($a0)
.L0d9c7a4c:
    # Line 943
    li	$a1,260
    bne	$a3,$a1,.L0d9c77e8
    # Line 957
    li	$a2,771
    # Line 943
    beqz	$a5,.L0d9c7c80
    # Line 946
    li	$a2,1
    beq	$a5,$a2,.L0d9c7c8c
    # Line 950
    li	$a6,771
    bne	$a5,$a6,.L0d9c77f0
    # Line 965
    li	$a6,0x800a
    # Line 953
    la	$a7,__glDoBlend_SA_MSA
    # Line 1099
    jr	$ra
    # Line 953
    sw	$a7,12544($a0)
.L0d9c7a7c:
    # Line 957
    li	$t1,260
    bne	$a3,$t1,.L0d9c77f0
    # Line 965
    li	$a6,0x800a
    # Line 957
    bne	$t3,$a5,.L0d9c77ec
    # Line 959
    la	$t2,__glDoBlend_MSA_SA
    # Line 1099
    jr	$ra
    # Line 959
    sw	$t2,12544($a0)
.L0d9c7a98:
    # Line 1073
    bne	$a3,$t3,.L0d9c77b0
    # Line 1087
    la	$t8,__glDoBlendReverseSubtract
    # Line 1099
    jr	$ra
    # Line 1087
    sw	$t8,12556($a0)
.L0d9c7aa8:
    # Line 988
    bnez	$t9,.L0d9c7bb4
    li	$t9,775
    sltiu	$v0,$a4,777
    beqz	$v0,.L0d9c7c44
    li	$t8,0x8001
    # Line 1014
    la	$v1,__glDoBlendSourceSAT
    # Line 1015
    b	.L0d9c78ac
    # Line 1014
    sw	$v1,12548($a0)
.L0d9c7ac8:
    # Line 988
    bnez	$a1,.L0d9c7bc4
    li	$v1,772
    beqz	$t1,.L0d9c78ac
    # Line 1011
    la	$a2,__glDoBlendSourceMDA
    # Line 1012
    b	.L0d9c78ac
    # Line 1011
    sw	$a2,12548($a0)
.L0d9c7ae0:
    # Line 1029
    sltu	$a4,$a5,$t2
    bnez	$a4,.L0d9c7bd4
    li	$a2,773
    sltu	$t1,$t2,$a5
    bnez	$t1,.L0d9c78cc
    # Line 1055
    la	$t2,__glDoBlendDestCC
    # Line 1056
    b	.L0d9c78cc
    # Line 1055
    sw	$t2,12552($a0)
.L0d9c7b00:
    # Line 1029
    bnez	$t8,.L0d9c7be4
    nop
    beqz	$a4,.L0d9c78cc
    # Line 1046
    nop	# was lw $t9, -26840($gp) # &__glDoBlendDestMSA
    # Line 1047
    b	.L0d9c78cc
    # Line 1046
    sw	$t9,12552($a0)
.L0d9c7b18:
    # Line 1073
    bne	$t0,$a3,.L0d9c77b0
    # Line 1090
    la	$v0,__glDoBlendLogicOp
    # Line 1099
    jr	$ra
    # Line 1090
    sw	$v0,12556($a0)
.L0d9c7b28:
    # Line 988
    bne	$t3,$a4,.L0d9c78ac
    # Line 1002
    la	$v1,__glDoBlendSourceSA
    # Line 1003
    b	.L0d9c78ac
    # Line 1002
    sw	$v1,12548($a0)
.L0d9c7b38:
    # Line 1029
    bne	$a5,$a1,.L0d9c78cc
    # Line 1037
    la	$a2,__glDoBlendDestSC
    # Line 1038
    b	.L0d9c78cc
    # Line 1037
    sw	$a2,12552($a0)
.L0d9c7b48:
    # Line 988
    sltu	$t2,$a4,$t1
    bnez	$t2,.L0d9c7c30
    sltu	$t8,$t1,$a4
    bnez	$t8,.L0d9c78ac
    # Line 1026
    nop	# was lw $t9, -26792($gp) # &__glDoBlendSourceMCA
    # Line 1027
    b	.L0d9c78ac
    # Line 1026
    sw	$t9,12548($a0)
.L0d9c7b64:
    # Line 1029
    sltu	$v0,$a5,$t1
    bnez	$v0,.L0d9c7c54
    li	$v0,0x8003
    sltu	$v1,$t1,$a5
    bnez	$v1,.L0d9c78cc
    # Line 1064
    la	$a1,__glDoBlendDestMCA
    # Line 1065
    b	.L0d9c78cc
    # Line 1064
    sw	$a1,12552($a0)
.L0d9c7b84:
    # Line 927
    beq	$a4,$a2,.L0d9c7768
    li	$t1,775
    beq	$a4,$t1,.L0d9c7768
    li	$t2,772
    beq	$a4,$t2,.L0d9c7768
    li	$t3,773
    beq	$a4,$t3,.L0d9c7768
    li	$t8,776
    bne	$a4,$t8,.L0d9c779c
    # Line 933
    nop	# was lw $t9, -26784($gp) # &__glDoNoFetchBlend
    b	.L0d9c7768
    nop
.L0d9c7bb4:
    # Line 988
    bne	$a4,$t9,.L0d9c78ac
    # Line 999
    la	$v0,__glDoBlendSourceMDC
    # Line 1000
    b	.L0d9c78ac
    # Line 999
    sw	$v0,12548($a0)
.L0d9c7bc4:
    # Line 988
    bne	$a4,$v1,.L0d9c78ac
    # Line 1008
    la	$a1,__glDoBlendSourceDA
    # Line 1009
    b	.L0d9c78ac
    # Line 1008
    sw	$a1,12548($a0)
.L0d9c7bd4:
    # Line 1029
    bne	$a5,$a2,.L0d9c78cc
    # Line 1052
    la	$a4,__glDoBlendDestMDA
    # Line 1053
    b	.L0d9c78cc
    # Line 1052
    sw	$a4,12552($a0)
.L0d9c7be4:
    # Line 1029
    bne	$t3,$a5,.L0d9c78cc
    # Line 1043
    la	$a5,__glDoBlendDestSA
    # Line 1044
    b	.L0d9c78cc
    # Line 1043
    sw	$a5,12552($a0)
.L0d9c7bf4:
    # Line 1078
    la	$a6,__glDoBlendMin
    # Line 1099
    jr	$ra
    # Line 1078
    sw	$a6,12556($a0)
.L0d9c7c00:
    # Line 973
    bne	$t2,$a5,.L0d9c7848
    li	$t2,0x8001
    b	.L0d9c7a44
    # Line 983
    la	$v1,__glDoBlendNoClamp
.L0d9c7c10:
    # Line 973
    bne	$t1,$a5,.L0d9c7850
    nop
    b	.L0d9c7a44
    # Line 983
    la	$v1,__glDoBlendNoClamp
.L0d9c7c20:
    # Line 973
    bne	$t2,$a5,.L0d9c7858
    li	$v0,769
    b	.L0d9c7a44
    # Line 983
    la	$v1,__glDoBlendNoClamp
.L0d9c7c30:
    # Line 988
    li	$t1,0x8003
    bne	$a4,$t1,.L0d9c78ac
    # Line 1020
    la	$t2,__glDoBlendSourceCA
    # Line 1021
    b	.L0d9c78ac
    # Line 1020
    sw	$t2,12548($a0)
.L0d9c7c44:
    # Line 988
    bne	$a4,$t8,.L0d9c78ac
    # Line 1017
    nop	# was lw $t9, -26816($gp) # &__glDoBlendSourceCC
    # Line 1018
    b	.L0d9c78ac
    # Line 1017
    sw	$t9,12548($a0)
.L0d9c7c54:
    # Line 1029
    bne	$a5,$v0,.L0d9c78cc
    # Line 1058
    la	$v1,__glDoBlendDestCA
    # Line 1059
    b	.L0d9c78cc
    # Line 1058
    sw	$v1,12552($a0)
.L0d9c7c64:
    # Line 1093
    la	$a1,__glDoBlendAlphaMin
    # Line 1099
    jr	$ra
    # Line 1093
    sw	$a1,12556($a0)
.L0d9c7c70:
    b	.L0d9c78ac
    # Line 990
    sw	$a2,12548($a0)
.L0d9c7c78:
    b	.L0d9c78cc
    # Line 1031
    sw	$a4,12552($a0)
.L0d9c7c80:
    # Line 945
    la	$a5,__glDoBlend_SA_ZERO
    # Line 1099
    jr	$ra
    # Line 945
    sw	$a5,12544($a0)
.L0d9c7c8c:
    # Line 949
    la	$a6,__glDoBlend_SA_ONE
    # Line 1099
    jr	$ra
    # Line 949
    sw	$a6,12544($a0)
.end __glGenericPickBlendProcs

# Function: __glBlendSpan
# Declared: Line 1103 (Source lines: 1104-1119)
# Address: 0x0d9c7ca0 - 0x0d9c7d60 (Size: 192 bytes, Frame: 208)
.globl __glBlendSpan
.ent __glBlendSpan
__glBlendSpan:
    # Line 1104
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    # Line 1111
    lw	$s0,30468($a0)
    # Line 1104
    sd	$s1,40($sp)
    # Line 1112
    lw	$a1,30248($a0)
    # Line 1104
    sd	$s3,24($sp)
    lui	$at,0x9
    sd	$s2,16($sp)
    # Line 1112
    addiu	$s2,$a1,-1
    # Line 1104
    move	$s3,$a0
    # Line 1110
    lw	$s1,30464($a0)
    # Line 1104
    addiu	$at,$at,-28436
    sd	$gp,48($sp)
    # Line 1112
    bltz	$s2,.L0d9c7d40
    # Line 1104
    addu	$gp,$t9,$at
    sd	$ra,56($sp)
    sd	$s4,64($sp)
    # Line 1112
    li	$s4,-1
    nop
    nop
.L0d9c7cf0:
    # Line 1113
    lw	$t9,12544($s3)
    move	$a0,$s3
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    addiu	$a3,$sp,0
    # Line 1114
    lwc1	$f3,0($sp)
    swc1	$f3,0($s1)
    lwc1	$f2,4($sp)
    swc1	$f2,4($s1)
    lwc1	$f1,8($sp)
    swc1	$f1,8($s1)
    # Line 1112
    addiu	$s2,$s2,-1
    # Line 1114
    lwc1	$f0,12($sp)
    # Line 1115
    addiu	$s1,$s1,16
    # Line 1116
    addiu	$s0,$s0,16
    # Line 1112
    bne	$s2,$s4,.L0d9c7cf0
    # Line 1114
    swc1	$f0,-4($s1)
    ld	$ra,56($sp)
    ld	$s4,64($sp)
.L0d9c7d40:
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s0,32($sp)
    # Line 1119
    move	$v0,$zero
    ld	$s1,40($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glBlendSpan

# Function: __glBlendSpan_SA_MSA
# Declared: Line 1128 (Source lines: 1131-1156)
# Address: 0x0d9c7d60 - 0x0d9c7ec8 (Size: 360 bytes, Frame: 0)
.globl __glBlendSpan_SA_MSA
.ent __glBlendSpan_SA_MSA
__glBlendSpan_SA_MSA:
    # Line 1139
    lw	$a6,30248($a0)
    # Line 1138
    lwc1	$f9,30812($a0)
    # Line 1137
    lw	$a3,30468($a0)
    # Line 1139
    addiu	$a2,$a6,-1
    # Line 1136
    lw	$a5,30464($a0)
    # Line 1131
    lwc1	$f8,3544($a0)
    # Line 1139
    bltz	$a2,.L0d9c7ec0
    andi	$at,$a6,0x1
    li	$a4,-1
    beqz	$at,.L0d9c7df0
    sra	$v0,$a6,0x1
    # Line 1140
    lwc1	$f7,12($a5)
    # Line 1144
    nmsub.s	$f6,$f8,$f7,$f9
    # Line 1148
    lwc1	$f0,0($a3)
    # Line 1146
    lwc1	$f3,12($a3)
    # Line 1140
    mul.s	$f5,$f7,$f9
    # Line 1145
    lwc1	$f2,8($a3)
    # Line 1148
    mul.s	$f0,$f0,$f6
    # Line 1145
    lwc1	$f4,8($a5)
    # Line 1146
    mul.s	$f3,$f3,$f6
    # Line 1144
    lwc1	$f1,4($a3)
    # Line 1146
    madd.s	$f3,$f3,$f5,$f7
    # Line 1144
    lwc1	$f7,4($a5)
    # Line 1145
    mul.s	$f2,$f2,$f6
    madd.s	$f2,$f2,$f4,$f5
    # Line 1148
    lwc1	$f4,0($a5)
    # Line 1144
    mul.s	$f1,$f1,$f6
    madd.s	$f1,$f1,$f7,$f5
    # Line 1148
    madd.s	$f0,$f0,$f4,$f5
    # Line 1152
    addiu	$a5,$a5,16
    # Line 1151
    swc1	$f3,-4($a5)
    # Line 1150
    swc1	$f2,-8($a5)
    # Line 1149
    swc1	$f1,-12($a5)
    # Line 1139
    addiu	$a2,$a6,-2
    # Line 1153
    addiu	$a3,$a3,16
    # Line 1148
    swc1	$f0,-16($a5)
.L0d9c7df0:
    beqz	$v0,.L0d9c7ec0
    move	$a1,$a5
    nop
    nop
.L0d9c7e00:
    # Line 1140
    lwc1	$f16,12($a1)
    # Line 1144
    nmsub.s	$f13,$f8,$f16,$f9
    # Line 1148
    lwc1	$f15,0($a3)
    lwc1	$f17,0($a1)
    # Line 1140
    mul.s	$f12,$f16,$f9
    # Line 1144
    lwc1	$f14,4($a3)
    # Line 1148
    mul.s	$f15,$f15,$f13
    # Line 1144
    lwc1	$f18,4($a1)
    # Line 1148
    madd.s	$f15,$f15,$f17,$f12
    # Line 1145
    lwc1	$f11,8($a3)
    # Line 1144
    mul.s	$f14,$f14,$f13
    # Line 1145
    lwc1	$f17,8($a1)
    # Line 1144
    madd.s	$f14,$f14,$f18,$f12
    # Line 1146
    lwc1	$f10,12($a3)
    # Line 1145
    mul.s	$f11,$f11,$f13
    madd.s	$f11,$f11,$f17,$f12
    # Line 1146
    mul.s	$f10,$f10,$f13
    # Line 1140
    lwc1	$f13,28($a1)
    # Line 1146
    madd.s	$f10,$f10,$f12,$f16
    # Line 1148
    swc1	$f15,0($a1)
    # Line 1144
    nmsub.s	$f12,$f8,$f13,$f9
    # Line 1149
    swc1	$f14,4($a1)
    # Line 1150
    swc1	$f11,8($a1)
    # Line 1151
    swc1	$f10,12($a1)
    # Line 1146
    lwc1	$f7,28($a3)
    # Line 1140
    mul.s	$f11,$f13,$f9
    # Line 1145
    lwc1	$f6,24($a3)
    # Line 1146
    mul.s	$f7,$f7,$f12
    # Line 1145
    lwc1	$f10,24($a1)
    # Line 1146
    madd.s	$f7,$f7,$f11,$f13
    # Line 1144
    lwc1	$f5,20($a3)
    # Line 1145
    mul.s	$f6,$f6,$f12
    # Line 1144
    lwc1	$f13,20($a1)
    # Line 1145
    madd.s	$f6,$f6,$f10,$f11
    # Line 1148
    lwc1	$f4,16($a3)
    # Line 1144
    mul.s	$f5,$f5,$f12
    # Line 1148
    lwc1	$f10,16($a1)
    # Line 1144
    madd.s	$f5,$f5,$f13,$f11
    # Line 1148
    mul.s	$f4,$f4,$f12
    madd.s	$f4,$f4,$f10,$f11
    # Line 1152
    addiu	$a1,$a1,32
    # Line 1151
    swc1	$f7,-4($a1)
    # Line 1139
    addiu	$a2,$a2,-2
    # Line 1150
    swc1	$f6,-8($a1)
    # Line 1149
    swc1	$f5,-12($a1)
    # Line 1153
    addiu	$a3,$a3,32
    # Line 1139
    bne	$a2,$a4,.L0d9c7e00
    # Line 1148
    swc1	$f4,-16($a1)
.L0d9c7ec0:
    # Line 1156
    jr	$ra
    move	$v0,$zero
.end __glBlendSpan_SA_MSA

# Function: __glBlendSpan_MSA_SA
# Declared: Line 1165 (Source lines: 1172-1191)
# Address: 0x0d9c7ed0 - 0x0d9c8040 (Size: 368 bytes, Frame: 0)
.globl __glBlendSpan_MSA_SA
.ent __glBlendSpan_MSA_SA
__glBlendSpan_MSA_SA:
    # Line 1175
    lw	$a6,30248($a0)
    # Line 1174
    lwc1	$f8,30812($a0)
    # Line 1175
    addiu	$a4,$a6,-1
    # Line 1173
    lw	$a2,30468($a0)
    sra	$v0,$a6,0x1
    # Line 1172
    lw	$a3,30464($a0)
    # Line 1175
    bltz	$a4,.L0d9c8038
    andi	$at,$a6,0x1
    li	$a5,-1
    beqz	$at,.L0d9c7f64
    nop
    # Line 1176
    lwc1	$f7,12($a3)
    # Line 1183
    lwc1	$f0,0($a2)
    # Line 1180
    lwc1	$f2,8($a2)
    # Line 1177
    lwc1	$f5,3544($a0)
    # Line 1176
    mul.s	$f6,$f7,$f8
    # Line 1181
    lwc1	$f3,12($a2)
    # Line 1177
    nmsub.s	$f5,$f5,$f7,$f8
    # Line 1183
    mul.s	$f0,$f0,$f6
    # Line 1180
    lwc1	$f4,8($a3)
    mul.s	$f2,$f2,$f6
    # Line 1179
    lwc1	$f1,4($a2)
    # Line 1181
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f5,$f7
    # Line 1179
    lwc1	$f7,4($a3)
    # Line 1180
    madd.s	$f2,$f2,$f4,$f5
    # Line 1183
    lwc1	$f4,0($a3)
    # Line 1179
    mul.s	$f1,$f1,$f6
    madd.s	$f1,$f1,$f7,$f5
    # Line 1183
    madd.s	$f0,$f0,$f4,$f5
    # Line 1187
    addiu	$a3,$a3,16
    # Line 1186
    swc1	$f3,-4($a3)
    # Line 1185
    swc1	$f2,-8($a3)
    # Line 1184
    swc1	$f1,-12($a3)
    # Line 1175
    addiu	$a4,$a6,-2
    # Line 1188
    addiu	$a2,$a2,16
    # Line 1183
    swc1	$f0,-16($a3)
.L0d9c7f64:
    beqz	$v0,.L0d9c8038
    nop
    nop
.L0d9c7f70:
    # Line 1176
    lwc1	$f18,12($a3)
    # Line 1177
    lwc1	$f14,3544($a0)
    nmsub.s	$f14,$f14,$f18,$f8
    # Line 1183
    lwc1	$f17,0($a2)
    lwc1	$f21,0($a3)
    # Line 1176
    mul.s	$f19,$f18,$f8
    # Line 1179
    lwc1	$f16,4($a2)
    # Line 1183
    mul.s	$f17,$f17,$f19
    # Line 1179
    lwc1	$f23,4($a3)
    # Line 1183
    madd.s	$f17,$f17,$f21,$f14
    # Line 1180
    lwc1	$f15,8($a2)
    # Line 1179
    mul.s	$f16,$f16,$f19
    # Line 1180
    lwc1	$f21,8($a3)
    # Line 1179
    madd.s	$f16,$f16,$f23,$f14
    # Line 1181
    lwc1	$f13,12($a2)
    # Line 1180
    mul.s	$f15,$f15,$f19
    madd.s	$f15,$f15,$f21,$f14
    # Line 1181
    mul.s	$f13,$f13,$f19
    madd.s	$f13,$f13,$f14,$f18
    # Line 1176
    lwc1	$f14,28($a3)
    # Line 1183
    swc1	$f17,0($a3)
    # Line 1184
    swc1	$f16,4($a3)
    # Line 1185
    swc1	$f15,8($a3)
    # Line 1186
    swc1	$f13,12($a3)
    # Line 1177
    lwc1	$f12,3544($a0)
    nmsub.s	$f12,$f12,$f14,$f8
    # Line 1181
    lwc1	$f10,28($a2)
    # Line 1176
    mul.s	$f13,$f14,$f8
    # Line 1180
    lwc1	$f9,24($a2)
    # Line 1181
    mul.s	$f10,$f10,$f13
    # Line 1180
    lwc1	$f11,24($a3)
    # Line 1181
    madd.s	$f10,$f10,$f12,$f14
    # Line 1179
    lwc1	$f7,20($a2)
    # Line 1180
    mul.s	$f9,$f9,$f13
    # Line 1179
    lwc1	$f14,20($a3)
    # Line 1180
    madd.s	$f9,$f9,$f11,$f12
    # Line 1183
    lwc1	$f6,16($a2)
    # Line 1179
    mul.s	$f7,$f7,$f13
    # Line 1183
    lwc1	$f11,16($a3)
    # Line 1179
    madd.s	$f7,$f7,$f14,$f12
    # Line 1183
    mul.s	$f6,$f6,$f13
    madd.s	$f6,$f6,$f11,$f12
    # Line 1187
    addiu	$a3,$a3,32
    # Line 1186
    swc1	$f10,-4($a3)
    # Line 1175
    addiu	$a4,$a4,-2
    # Line 1185
    swc1	$f9,-8($a3)
    # Line 1184
    swc1	$f7,-12($a3)
    # Line 1188
    addiu	$a2,$a2,32
    # Line 1175
    bne	$a4,$a5,.L0d9c7f70
    # Line 1183
    swc1	$f6,-16($a3)
.L0d9c8038:
    # Line 1191
    jr	$ra
    move	$v0,$zero
.end __glBlendSpan_MSA_SA

# Function: __glBlendSpan_SA_ZERO
# Declared: Line 1194 (Source lines: 1201-1217)
# Address: 0x0d9c8040 - 0x0d9c8194 (Size: 340 bytes, Frame: 0)
.globl __glBlendSpan_SA_ZERO
.ent __glBlendSpan_SA_ZERO
__glBlendSpan_SA_ZERO:
    # Line 1203
    lw	$a5,30248($a0)
    addiu	$a2,$a5,-1
    # Line 1202
    lwc1	$f6,30812($a0)
    # Line 1203
    bltz	$a2,.L0d9c818c
    # Line 1201
    lw	$a4,30464($a0)
    andi	$a1,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a1,.L0d9c80a8
    # Line 1203
    li	$a3,-1
.L0d9c8064:
    # Line 1204
    lwc1	$f4,12($a4)
    # Line 1214
    addiu	$a4,$a4,16
    # Line 1207
    lwc1	$f3,-8($a4)
    # Line 1204
    mul.s	$f1,$f4,$f6
    # Line 1206
    lwc1	$f2,-12($a4)
    # Line 1208
    mul.s	$f4,$f4,$f1
    # Line 1210
    lwc1	$f0,-16($a4)
    # Line 1213
    swc1	$f4,-4($a4)
    # Line 1207
    mul.s	$f3,$f3,$f1
    addiu	$a1,$a1,-1
    # Line 1212
    swc1	$f3,-8($a4)
    # Line 1206
    mul.s	$f2,$f2,$f1
    # Line 1211
    swc1	$f2,-12($a4)
    # Line 1210
    mul.s	$f0,$f0,$f1
    # Line 1203
    addiu	$a2,$a2,-1
    bnez	$a1,.L0d9c8064
    # Line 1210
    swc1	$f0,-16($a4)
.L0d9c80a8:
    beqz	$at,.L0d9c818c
    move	$a1,$a4
.L0d9c80b0:
    # Line 1214
    addiu	$a1,$a1,64
    # Line 1210
    lwc1	$f5,-64($a1)
    # Line 1206
    lwc1	$f8,-60($a1)
    # Line 1207
    lwc1	$f9,-56($a1)
    # Line 1210
    lwc1	$f11,-48($a1)
    # Line 1206
    lwc1	$f13,-44($a1)
    # Line 1207
    lwc1	$f14,-40($a1)
    # Line 1210
    lwc1	$f16,-32($a1)
    # Line 1206
    lwc1	$f17,-28($a1)
    # Line 1204
    lwc1	$f10,-52($a1)
    lwc1	$f15,-36($a1)
    lwc1	$f31,-4($a1)
    lwc1	$f21,-20($a1)
    mul.s	$f7,$f10,$f6
    # Line 1207
    lwc1	$f19,-24($a1)
    # Line 1204
    mul.s	$f12,$f15,$f6
    # Line 1207
    lwc1	$f29,-8($a1)
    # Line 1204
    mul.s	$f25,$f31,$f6
    # Line 1206
    lwc1	$f27,-12($a1)
    # Line 1204
    mul.s	$f18,$f21,$f6
    # Line 1210
    lwc1	$f23,-16($a1)
    # Line 1208
    mul.s	$f31,$f31,$f25
    # Line 1207
    mul.s	$f29,$f29,$f25
    # Line 1213
    swc1	$f31,-4($a1)
    # Line 1206
    mul.s	$f27,$f27,$f25
    # Line 1212
    swc1	$f29,-8($a1)
    # Line 1210
    mul.s	$f23,$f23,$f25
    # Line 1211
    swc1	$f27,-12($a1)
    # Line 1208
    mul.s	$f21,$f21,$f18
    # Line 1210
    swc1	$f23,-16($a1)
    # Line 1207
    mul.s	$f19,$f19,$f18
    # Line 1213
    swc1	$f21,-20($a1)
    # Line 1206
    mul.s	$f17,$f17,$f18
    # Line 1212
    swc1	$f19,-24($a1)
    # Line 1210
    mul.s	$f16,$f16,$f18
    # Line 1211
    swc1	$f17,-28($a1)
    # Line 1208
    mul.s	$f15,$f15,$f12
    # Line 1210
    swc1	$f16,-32($a1)
    # Line 1207
    mul.s	$f14,$f14,$f12
    # Line 1213
    swc1	$f15,-36($a1)
    # Line 1206
    mul.s	$f13,$f13,$f12
    # Line 1212
    swc1	$f14,-40($a1)
    # Line 1210
    mul.s	$f11,$f11,$f12
    # Line 1211
    swc1	$f13,-44($a1)
    # Line 1208
    mul.s	$f10,$f10,$f7
    # Line 1210
    swc1	$f11,-48($a1)
    # Line 1207
    mul.s	$f9,$f9,$f7
    # Line 1213
    swc1	$f10,-52($a1)
    # Line 1203
    addiu	$a2,$a2,-4
    # Line 1206
    mul.s	$f8,$f8,$f7
    # Line 1212
    swc1	$f9,-56($a1)
    # Line 1210
    mul.s	$f5,$f5,$f7
    # Line 1211
    swc1	$f8,-60($a1)
    # Line 1203
    bne	$a2,$a3,.L0d9c80b0
    # Line 1210
    swc1	$f5,-64($a1)
.L0d9c818c:
    # Line 1217
    jr	$ra
    move	$v0,$zero
.end __glBlendSpan_SA_ZERO

# Function: __glBlendSpan_SA_ONE
# Declared: Line 1220 (Source lines: 1228-1261)
# Address: 0x0d9c81a0 - 0x0d9c8338 (Size: 408 bytes, Frame: 0)
.globl __glBlendSpan_SA_ONE
.ent __glBlendSpan_SA_ONE
__glBlendSpan_SA_ONE:
    # Line 1233
    lwc1	$f7,30792($a0)
    # Line 1232
    lwc1	$f8,30760($a0)
    # Line 1234
    lw	$a6,30248($a0)
    # Line 1231
    lwc1	$f9,30756($a0)
    # Line 1230
    lwc1	$f6,30752($a0)
    # Line 1234
    addiu	$a4,$a6,-1
    # Line 1229
    lw	$a2,30468($a0)
    # Line 1234
    bltz	$a4,.L0d9c8330
    # Line 1228
    lw	$a3,30464($a0)
    # Line 1234
    li	$a5,-1
    andi	$at,$a6,0x1
    beqz	$at,.L0d9c8248
    sra	$v0,$a6,0x1
    # Line 1235
    lwc1	$f12,12($a3)
    lwc1	$f5,30812($a0)
    # Line 1241
    lwc1	$f2,8($a2)
    # Line 1245
    lwc1	$f3,12($a2)
    # Line 1241
    lwc1	$f11,8($a3)
    # Line 1235
    mul.s	$f5,$f5,$f12
    # Line 1237
    lwc1	$f10,4($a3)
    # Line 1236
    lwc1	$f4,0($a3)
    # Line 1245
    madd.s	$f3,$f3,$f5,$f12
    # Line 1237
    lwc1	$f1,4($a2)
    # Line 1241
    madd.s	$f2,$f2,$f11,$f5
    # Line 1236
    lwc1	$f0,0($a2)
    # Line 1237
    madd.s	$f1,$f1,$f10,$f5
    # Line 1236
    madd.s	$f0,$f0,$f4,$f5
    # Line 1251
    c.lt.s $f7,$f3
    # Line 1246
    c.lt.s $f8,$f2
    # Line 1257
    addiu	$a3,$a3,16
    # Line 1242
    c.lt.s $f9,$f1
    # Line 1251
    movt.s	$f3,$f7,$fcc3
    # Line 1238
    c.lt.s	$f6,$f0
    # Line 1246
    movt.s	$f2,$f8,$fcc2
    # Line 1256
    swc1	$f3,-4($a3)
    # Line 1242
    movt.s	$f1,$f9,$fcc1
    # Line 1255
    swc1	$f2,-8($a3)
    # Line 1238
    movt.s	$f0,$f6,$fcc0
    # Line 1254
    swc1	$f1,-12($a3)
    # Line 1234
    addiu	$a4,$a6,-2
    # Line 1258
    addiu	$a2,$a2,16
    # Line 1250
    swc1	$f0,-16($a3)
.L0d9c8248:
    beqz	$v0,.L0d9c8330
    nop
.L0d9c8250:
    # Line 1235
    lwc1	$f23,12($a3)
    lwc1	$f18,30812($a0)
    # Line 1241
    lwc1	$f17,8($a2)
    # Line 1245
    lwc1	$f16,12($a2)
    # Line 1241
    lwc1	$f25,8($a3)
    # Line 1235
    mul.s	$f18,$f18,$f23
    # Line 1237
    lwc1	$f27,4($a3)
    # Line 1236
    lwc1	$f29,0($a3)
    # Line 1245
    madd.s	$f16,$f16,$f18,$f23
    # Line 1237
    lwc1	$f19,4($a2)
    # Line 1241
    madd.s	$f17,$f17,$f25,$f18
    # Line 1236
    lwc1	$f21,0($a2)
    # Line 1237
    madd.s	$f19,$f19,$f27,$f18
    # Line 1236
    madd.s	$f21,$f21,$f29,$f18
    # Line 1251
    c.lt.s	$f7,$f16
    # Line 1246
    c.lt.s $f8,$f17
    # Line 1235
    lwc1	$f18,28($a3)
    # Line 1242
    c.lt.s $f9,$f19
    # Line 1251
    movt.s	$f16,$f7,$fcc0
    # Line 1238
    c.lt.s $f6,$f21
    # Line 1246
    movt.s	$f17,$f8,$fcc1
    # Line 1256
    swc1	$f16,12($a3)
    # Line 1242
    movt.s	$f19,$f9,$fcc2
    # Line 1255
    swc1	$f17,8($a3)
    # Line 1238
    movt.s	$f21,$f6,$fcc3
    # Line 1254
    swc1	$f19,4($a3)
    # Line 1250
    swc1	$f21,0($a3)
    # Line 1235
    lwc1	$f15,30812($a0)
    # Line 1236
    lwc1	$f14,16($a3)
    # Line 1245
    lwc1	$f13,28($a2)
    # Line 1241
    lwc1	$f17,24($a3)
    # Line 1235
    mul.s	$f15,$f15,$f18
    # Line 1237
    lwc1	$f16,20($a3)
    # Line 1241
    lwc1	$f12,24($a2)
    # Line 1245
    madd.s	$f13,$f13,$f15,$f18
    # Line 1237
    lwc1	$f11,20($a2)
    # Line 1241
    madd.s	$f12,$f12,$f17,$f15
    # Line 1236
    lwc1	$f10,16($a2)
    # Line 1237
    madd.s	$f11,$f11,$f16,$f15
    # Line 1236
    madd.s	$f10,$f10,$f14,$f15
    # Line 1251
    c.lt.s $f7,$f13
    # Line 1246
    c.lt.s $f8,$f12
    # Line 1257
    addiu	$a3,$a3,32
    # Line 1242
    c.lt.s $f9,$f11
    # Line 1251
    movt.s	$f13,$f7,$fcc7
    # Line 1238
    c.lt.s $f6,$f10
    # Line 1246
    movt.s	$f12,$f8,$fcc6
    # Line 1256
    swc1	$f13,-4($a3)
    # Line 1234
    addiu	$a4,$a4,-2
    # Line 1242
    movt.s	$f11,$f9,$fcc5
    # Line 1255
    swc1	$f12,-8($a3)
    # Line 1238
    movt.s	$f10,$f6,$fcc4
    # Line 1254
    swc1	$f11,-12($a3)
    # Line 1258
    addiu	$a2,$a2,32
    # Line 1234
    bne	$a4,$a5,.L0d9c8250
    # Line 1250
    swc1	$f10,-16($a3)
.L0d9c8330:
    # Line 1261
    jr	$ra
    move	$v0,$zero
.end __glBlendSpan_SA_ONE

# Function: __glBlendStippledSpan
# Declared: Line 1264 (Source lines: 1265-1300)
# Address: 0x0d9c8340 - 0x0d9c8464 (Size: 292 bytes, Frame: 240)
.globl __glBlendStippledSpan
.ent __glBlendStippledSpan
__glBlendStippledSpan:
    # Line 1265
    addiu	$sp,$sp,-112
    sd	$s2,56($sp)
    # Line 1275
    lw	$s2,30468($a0)
    # Line 1265
    sd	$s0,40($sp)
    # Line 1274
    lw	$s0,30464($a0)
    # Line 1265
    sd	$s8,16($sp)
    sd	$s7,32($sp)
    # Line 1271
    lw	$s7,30248($a0)
    # Line 1265
    sd	$s6,48($sp)
    lui	$at,0x9
    move	$s6,$a0
    # Line 1272
    lw	$s8,30472($a0)
    # Line 1265
    addiu	$at,$at,-30132
    sd	$gp,24($sp)
    # Line 1275
    beqz	$s7,.L0d9c8440
    # Line 1265
    addu	$gp,$t9,$at
    sd	$s1,88($sp)
    sd	$s4,80($sp)
    sd	$ra,72($sp)
    sd	$s3,64($sp)
    sd	$s5,96($sp)
    # Line 1275
    li	$s5,-1
    nop
    nop
.L0d9c83a0:
    # Line 1285
    lui	$s1,0x8000
    # Line 1278
    move	$a0,$s7
    li	$v0,32
    li	$v1,32
    slt	$v0,$v0,$s7
    # Line 1283
    lw	$s4,0($s8)
    # Line 1278
    movn	$a0,$v1,$v0
    # Line 1285
    addiu	$s3,$a0,-1
    # Line 1283
    addiu	$s8,$s8,4
    # Line 1285
    and	$v1,$s4,$s1
    bltz	$s3,.L0d9c8428
    # Line 1281
    subu	$s7,$s7,$a0
.L0d9c83d0:
    # Line 1285
    beqz	$v1,.L0d9c8410
    nop
    # Line 1287
    lw	$t9,12544($s6)
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    addiu	$a3,$sp,0
    # Line 1288
    lwc1	$f3,0($sp)
    swc1	$f3,0($s0)
    lwc1	$f2,4($sp)
    swc1	$f2,4($s0)
    lwc1	$f1,8($sp)
    swc1	$f1,8($s0)
    lwc1	$f0,12($sp)
    swc1	$f0,12($s0)
.L0d9c8410:
    # Line 1291
    addiu	$s2,$s2,16
    # Line 1285
    addiu	$s3,$s3,-1
    # Line 1290
    addiu	$s0,$s0,16
    # Line 1293
    srl	$s1,$s1,0x1
    # Line 1285
    bne	$s3,$s5,.L0d9c83d0
    and	$v1,$s4,$s1
.L0d9c8428:
    bnez	$s7,.L0d9c83a0
    ld	$s3,64($sp)
    ld	$ra,72($sp)
    ld	$s4,80($sp)
    ld	$s1,88($sp)
    ld	$s5,96($sp)
.L0d9c8440:
    # Line 1300
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    ld	$s2,56($sp)
    ld	$s6,48($sp)
    move	$v0,$zero
    ld	$s7,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glBlendStippledSpan

.late_rodata
jtbl_0da448c0:
    .word .L0d9c66f4
    .word .L0d9c6884
    .word .L0d9c6540
    .word .L0d9c6850
    .word .L0d9c6540
    .word .L0d9c6520
    .word .L0d9c682c
    .word .L0d9c6808
    .word .L0d9c67d4
    .word .L0d9c67b0
    .word .L0d9c677c
    .word .L0d9c6540
    .word .L0d9c6748
    .word .L0d9c6718

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000

