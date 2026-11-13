# Source: ../soft/so_stencilop.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_stencilop.c
# Total Functions: 12

.text

# Function: Fetch
# Declared: Line 22 (Source lines: 27-27)
# Address: 0x0da05f00 - 0x0da05f34 (Size: 52 bytes, Frame: 0)
.ent Fetch
Fetch:
    # Line 27
    lw	$v1,0($a0)
    lw	$a4,3664($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v0,16($a0)
    mflo	$a0
    lw	$v1,3660($v1)
    addu	$v0,$v0,$a0
    addu	$v0,$a1,$v0
    subu	$v0,$v0,$v1
    jr	$ra
    lbu	$v0,0($v0)
.end Fetch

# Function: Store
# Declared: Line 30 (Source lines: 34-37)
# Address: 0x0da05f40 - 0x0da05f8c (Size: 76 bytes, Frame: 0)
.ent Store
Store:
    # Line 34
    lw	$at,0($a0)
    lw	$a5,3664($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    lw	$v1,3660($at)
    addu	$v0,$a1,$v0
    # Line 35
    lh	$at,1674($at)
    # Line 34
    subu	$v0,$v0,$v1
    # Line 35
    lbu	$v1,0($v0)
    nor	$a0,$at,$zero
    and	$at,$at,$a3
    and	$v1,$v1,$a0
    or	$at,$at,$v1
    # Line 37
    jr	$ra
    # Line 35
    sb	$at,0($v0)
.end Store

# Function: TestFunc
# Declared: Line 39 (Source lines: 44-44)
# Address: 0x0da05f90 - 0x0da05fd8 (Size: 72 bytes, Frame: 0)
.ent TestFunc
TestFunc:
    # Line 44
    lw	$v1,0($a0)
    lw	$a6,3664($v1)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    lw	$a3,16($a0)
    mflo	$a4
    lw	$a2,3660($v1)
    addu	$a3,$a3,$a4
    addu	$a1,$a1,$a3
    lh	$v1,1672($v1)
    subu	$a1,$a1,$a2
    lbu	$a1,0($a1)
    lw	$v0,72($a0)
    and	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    jr	$ra
    lbu	$v0,0($v0)
.end TestFunc

# Function: FailOp
# Declared: Line 47 (Source lines: 51-53)
# Address: 0x0da05fe0 - 0x0da06024 (Size: 68 bytes, Frame: 0)
.ent FailOp
FailOp:
    # Line 51
    lw	$v1,0($a0)
    lw	$a4,3664($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v0,16($a0)
    mflo	$a2
    lw	$v1,3660($v1)
    addu	$v0,$v0,$a2
    addu	$v0,$a1,$v0
    subu	$v0,$v0,$v1
    # Line 52
    lw	$v1,76($a0)
    lbu	$at,0($v0)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    # Line 53
    jr	$ra
    # Line 52
    sb	$at,0($v0)
.end FailOp

# Function: PassDepthFailOp
# Declared: Line 55 (Source lines: 59-61)
# Address: 0x0da06030 - 0x0da06074 (Size: 68 bytes, Frame: 0)
.ent PassDepthFailOp
PassDepthFailOp:
    # Line 59
    lw	$v1,0($a0)
    lw	$a4,3664($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v0,16($a0)
    mflo	$a2
    lw	$v1,3660($v1)
    addu	$v0,$v0,$a2
    addu	$v0,$a1,$v0
    subu	$v0,$v0,$v1
    # Line 60
    lw	$v1,80($a0)
    lbu	$at,0($v0)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    # Line 61
    jr	$ra
    # Line 60
    sb	$at,0($v0)
.end PassDepthFailOp

# Function: DepthPassOp
# Declared: Line 63 (Source lines: 67-69)
# Address: 0x0da06080 - 0x0da060c4 (Size: 68 bytes, Frame: 0)
.ent DepthPassOp
DepthPassOp:
    # Line 67
    lw	$v1,0($a0)
    lw	$a4,3664($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v0,16($a0)
    mflo	$a2
    lw	$v1,3660($v1)
    addu	$v0,$v0,$a2
    addu	$v0,$a1,$v0
    subu	$v0,$v0,$v1
    # Line 68
    lw	$v1,84($a0)
    lbu	$at,0($v0)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    # Line 69
    jr	$ra
    # Line 68
    sb	$at,0($v0)
.end DepthPassOp

# Function: Clear
# Declared: Line 73 (Source lines: 74-135)
# Address: 0x0da060d0 - 0x0da06498 (Size: 968 bytes, Frame: 16)
.ent Clear
Clear:
    # Line 75
    lw	$a5,0($a0)
    # Line 80
    lw	$a4,29700($a5)
    # Line 82
    lw	$a7,29708($a5)
    # Line 83
    lw	$t1,29712($a5)
    # Line 84
    subu	$a7,$a7,$a4
    # Line 81
    lw	$a6,29704($a5)
    # Line 74
    addiu	$sp,$sp,-16
    # Line 84
    beqz	$a7,.L0da06230
    # Line 78
    lh	$a3,1668($a5)
    # Line 84
    subu	$t8,$t1,$a6
    beqz	$t8,.L0da06230
    nop
    # Line 88
    lw	$v0,3664($a5)
    lw	$t2,28($a0)
    subu	$v0,$a6,$v0
    mult	$t2,$v0
    # Line 90
    lw	$at,3248($a5)
    slt	$t0,$a6,$t1
    # Line 88
    lw	$a2,16($a0)
    # Line 90
    li	$t9,1
    lh	$t3,1674($a5)
    sllv	$t9,$t9,$at
    # Line 88
    mflo	$at
    # Line 90
    addiu	$t9,$t9,-1
    # Line 88
    addu	$a2,$a2,$at
    lw	$at,3660($a5)
    # Line 90
    subu	$t2,$t2,$a7
    # Line 88
    addu	$a2,$a4,$a2
    sd	$t8,0($sp)
    # Line 90
    bne	$t3,$t9,.L0da06168
    # Line 88
    subu	$a2,$a2,$at
    # Line 90
    beqz	$t0,.L0da06230
    li	$a4,-1
    andi	$t8,$a7,0x7
    addiu	$t3,$t8,-1
    sra	$t9,$a7,0x3
    b	.L0da061d4
    addiu	$t0,$t9,-1
.L0da06168:
    # Line 112
    nor	$a5,$t3,$zero
    beqz	$t0,.L0da06230
    # Line 111
    and	$a3,$t3,$a3
    # Line 112
    li	$a4,-1
    andi	$t8,$a7,0x7
    addiu	$t3,$t8,-1
    sra	$t9,$a7,0x3
    b	.L0da063f4
    addiu	$t0,$t9,-1
.L0da0618c:
    addiu	$a5,$a5,-1
.L0da06190:
    # Line 102
    addiu	$a0,$a0,-1
    # Line 103
    sb	$a3,0($a2)
    bnez	$a5,.L0da0618c
    addiu	$a2,$a2,1
.L0da061a0:
    beqz	$v1,.L0da061cc
    nop
    nop
    nop
.L0da061b0:
    sb	$a3,0($a2)
    sb	$a3,1($a2)
    # Line 102
    addiu	$a0,$a0,-4
    # Line 103
    sb	$a3,2($a2)
    sb	$a3,3($a2)
    # Line 102
    bne	$a0,$a4,.L0da061b0
    # Line 103
    addiu	$a2,$a2,4
.L0da061cc:
    # Line 94
    beq	$a6,$t1,.L0da06230
    # Line 105
    addu	$a2,$t2,$a2
.L0da061d4:
    # Line 96
    bltz	$t0,.L0da0620c
    move	$a0,$t0
    nop
.L0da061e0:
    # Line 99
    addiu	$a2,$a2,8
    # Line 98
    sb	$a3,-1($a2)
    sb	$a3,-2($a2)
    sb	$a3,-3($a2)
    sb	$a3,-4($a2)
    # Line 97
    sb	$a3,-5($a2)
    sb	$a3,-6($a2)
    # Line 96
    addiu	$a0,$a0,-1
    # Line 97
    sb	$a3,-7($a2)
    # Line 96
    bne	$a0,$a4,.L0da061e0
    # Line 97
    sb	$a3,-8($a2)
.L0da0620c:
    # Line 94
    addiu	$a6,$a6,1
    # Line 102
    bltz	$t3,.L0da061cc
    move	$a0,$t3
    sra	$v1,$t8,0x2
    andi	$a5,$t8,0x3
    bnez	$a5,.L0da06190
    addiu	$a5,$a5,-1
    b	.L0da061a0
    nop
.L0da06230:
    # Line 135
    jr	$ra
    addiu	$sp,$sp,16
.L0da06238:
    sra	$a1,$a7,0x1
.L0da0623c:
    beqz	$a1,.L0da0635c
    nop
    nop
    nop
    nop
.L0da06250:
    # Line 125
    addiu	$a2,$a2,16
    # Line 121
    lbu	$v0,-4($a2)
    # Line 120
    lbu	$at,-5($a2)
    # Line 123
    lbu	$a1,-2($a2)
    # Line 122
    lbu	$v1,-3($a2)
    # Line 123
    and	$a1,$a5,$a1
    # Line 124
    lbu	$a7,-1($a2)
    # Line 123
    or	$a1,$a3,$a1
    sb	$a1,-2($a2)
    # Line 122
    and	$v1,$a5,$v1
    # Line 118
    lbu	$a1,-7($a2)
    # Line 122
    or	$v1,$a3,$v1
    sb	$v1,-3($a2)
    # Line 120
    and	$at,$a5,$at
    # Line 117
    lbu	$v1,-8($a2)
    # Line 120
    or	$at,$a3,$at
    sb	$at,-5($a2)
    # Line 121
    and	$v0,$a5,$v0
    # Line 123
    lbu	$at,-10($a2)
    # Line 121
    or	$v0,$a3,$v0
    sb	$v0,-4($a2)
    # Line 124
    lbu	$v0,-9($a2)
    # Line 123
    and	$at,$a5,$at
    or	$at,$a3,$at
    sb	$at,-10($a2)
    # Line 124
    and	$v0,$a5,$v0
    # Line 118
    lbu	$at,-15($a2)
    # Line 124
    or	$v0,$a3,$v0
    sb	$v0,-9($a2)
    # Line 117
    and	$v1,$a5,$v1
    # Line 119
    lbu	$v0,-14($a2)
    # Line 117
    or	$v1,$a3,$v1
    sb	$v1,-8($a2)
    # Line 120
    lbu	$v1,-13($a2)
    # Line 124
    and	$a7,$a5,$a7
    or	$a7,$a3,$a7
    sb	$a7,-1($a2)
    # Line 118
    and	$a1,$a5,$a1
    # Line 119
    lbu	$a7,-6($a2)
    # Line 118
    or	$a1,$a3,$a1
    sb	$a1,-7($a2)
    # Line 121
    lbu	$a1,-12($a2)
    # Line 119
    and	$a7,$a5,$a7
    or	$a7,$a3,$a7
    sb	$a7,-6($a2)
    # Line 121
    and	$a1,$a5,$a1
    # Line 122
    lbu	$a7,-11($a2)
    # Line 120
    and	$v1,$a5,$v1
    # Line 121
    or	$a1,$a3,$a1
    sb	$a1,-12($a2)
    # Line 120
    or	$v1,$a3,$v1
    sb	$v1,-13($a2)
    # Line 122
    and	$a7,$a5,$a7
    or	$a7,$a3,$a7
    sb	$a7,-11($a2)
    # Line 116
    addiu	$a0,$a0,-2
    # Line 119
    and	$v0,$a5,$v0
    # Line 117
    lbu	$a7,-16($a2)
    # Line 118
    and	$at,$a5,$at
    # Line 119
    or	$v0,$a3,$v0
    sb	$v0,-14($a2)
    # Line 118
    or	$at,$a3,$at
    sb	$at,-15($a2)
    # Line 117
    and	$a7,$a5,$a7
    or	$a7,$a3,$a7
    # Line 116
    bne	$a0,$a4,.L0da06250
    # Line 117
    sb	$a7,-16($a2)
.L0da0635c:
    # Line 114
    addiu	$a6,$a6,1
    # Line 128
    bltz	$t3,.L0da063ec
    move	$a0,$t3
    sra	$v0,$t8,0x2
    andi	$a7,$t8,0x3
    beqz	$a7,.L0da06398
    nop
.L0da06378:
    # Line 129
    lbu	$at,0($a2)
    # Line 128
    addiu	$a0,$a0,-1
    addiu	$a7,$a7,-1
    # Line 130
    addiu	$a2,$a2,1
    # Line 129
    and	$at,$a5,$at
    or	$at,$a3,$at
    bnez	$a7,.L0da06378
    sb	$at,-1($a2)
.L0da06398:
    beqz	$v0,.L0da063ec
    nop
.L0da063a0:
    # Line 130
    addiu	$a2,$a2,4
    # Line 129
    lbu	$v1,-4($a2)
    lbu	$at,-1($a2)
    lbu	$a7,-2($a2)
    # Line 128
    addiu	$a0,$a0,-4
    # Line 129
    lbu	$a1,-3($a2)
    and	$at,$a5,$at
    and	$a7,$a5,$a7
    or	$at,$a3,$at
    sb	$at,-1($a2)
    and	$a1,$a5,$a1
    or	$a7,$a3,$a7
    sb	$a7,-2($a2)
    and	$v1,$a5,$v1
    or	$a1,$a3,$a1
    sb	$a1,-3($a2)
    or	$v1,$a3,$v1
    # Line 128
    bne	$a0,$a4,.L0da063a0
    # Line 129
    sb	$v1,-4($a2)
.L0da063ec:
    # Line 114
    beq	$a6,$t1,.L0da06230
    # Line 132
    addu	$a2,$t2,$a2
.L0da063f4:
    # Line 116
    bltz	$t0,.L0da0635c
    move	$a0,$t0
    andi	$v0,$t9,0x1
    move	$a7,$t9
    beqz	$v0,.L0da0623c
    sra	$a1,$a7,0x1
    # Line 125
    addiu	$a2,$a2,8
    # Line 122
    lbu	$a0,-3($a2)
    # Line 120
    lbu	$v0,-5($a2)
    # Line 123
    lbu	$a1,-2($a2)
    # Line 120
    and	$v0,$a5,$v0
    # Line 124
    lbu	$at,-1($a2)
    # Line 122
    and	$a0,$a5,$a0
    # Line 120
    or	$v0,$a3,$v0
    sb	$v0,-5($a2)
    # Line 122
    or	$a0,$a3,$a0
    sb	$a0,-3($a2)
    # Line 121
    lbu	$v1,-4($a2)
    # Line 123
    and	$a1,$a5,$a1
    or	$a1,$a3,$a1
    sb	$a1,-2($a2)
    # Line 124
    and	$at,$a5,$at
    # Line 118
    lbu	$a1,-7($a2)
    # Line 124
    or	$at,$a3,$at
    sb	$at,-1($a2)
    # Line 121
    and	$v1,$a5,$v1
    # Line 119
    lbu	$at,-6($a2)
    # Line 121
    or	$v1,$a3,$v1
    sb	$v1,-4($a2)
    # Line 116
    addiu	$a0,$t0,-1
    # Line 117
    lbu	$v1,-8($a2)
    # Line 119
    and	$at,$a5,$at
    # Line 118
    and	$a1,$a5,$a1
    # Line 119
    or	$at,$a3,$at
    sb	$at,-6($a2)
    # Line 117
    and	$v1,$a5,$v1
    # Line 118
    or	$a1,$a3,$a1
    sb	$a1,-7($a2)
    # Line 117
    or	$v1,$a3,$v1
    b	.L0da06238
    sb	$v1,-8($a2)
.end Clear

# Function: buildOpTable
# Declared: Line 139 (Source lines: 141-171)
# Address: 0x0da064a0 - 0x0da065a4 (Size: 260 bytes, Frame: 48)
.ent buildOpTable
buildOpTable:
    # Line 141
    lw	$t2,3248($a0)
    li	$t8,1
    sllv	$t2,$t8,$t2
    beqz	$t2,.L0da0659c
    addiu	$sp,$sp,-48
    nor	$t3,$a4,$zero
    move	$a7,$t8
    sd	$s0,24($sp)
    li	$t0,-1
    move	$a6,$zero
    sd	$s2,8($sp)
    li	$t9,7680
    li	$s2,7683
    sd	$s1,16($sp)
    li	$s1,7682
    li	$s0,5386
    sd	$ra,32($sp)
    li	$ra,7681
    b	.L0da06524
    lbu	$t1,0($sp)
.L0da064f0:
    # Line 148
    move	$t1,$a6
.L0da064f4:
    # Line 169
    and	$v0,$t3,$a6
.L0da064f8:
    and	$at,$a4,$t1
    or	$at,$at,$v0
    sb	$at,0($a1)
    # Line 146
    lw	$t2,3248($a0)
    addiu	$a6,$a6,1
    sllv	$t2,$t8,$t2
    sltu	$at,$a6,$t2
    addiu	$a7,$a7,1
    addiu	$t0,$t0,1
    beqz	$at,.L0da0658c
    # Line 169
    addiu	$a1,$a1,1
.L0da06524:
    # Line 147
    beq	$t9,$a2,.L0da064f0
    nop
    beqz	$a2,.L0da06560
    nop
    beq	$ra,$a2,.L0da06568
    nop
    beq	$s0,$a2,.L0da06570
    nop
    beq	$s1,$a2,.L0da06578
    nop
    bne	$s2,$a2,.L0da064f8
    # Line 169
    and	$v0,$t3,$a6
    # Line 165
    move	$t1,$t0
    b	.L0da064f4
    movz	$t1,$zero,$a6
.L0da06560:
    # Line 149
    b	.L0da064f4
    move	$t1,$zero
.L0da06568:
    # Line 150
    b	.L0da064f4
    move	$t1,$a3
.L0da06570:
    # Line 151
    b	.L0da064f4
    nor	$t1,$a6,$zero
.L0da06578:
    # Line 157
    move	$t1,$a7
    # Line 154
    addiu	$v1,$t2,-1
    xor	$v1,$a6,$v1
    b	.L0da064f4
    movz	$t1,$a6,$v1
.L0da0658c:
    ld	$s2,8($sp)
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    ld	$ra,32($sp)
.L0da0659c:
    # Line 171
    jr	$ra
    addiu	$sp,$sp,48
.end buildOpTable

# Function: FreeStencilBuf
# Declared: Line 180 (Source lines: 181-194)
# Address: 0x0da065b0 - 0x0da06640 (Size: 144 bytes, Frame: 32)
.ent FreeStencilBuf
FreeStencilBuf:
    # Line 181
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lui	$at,0x5
    sd	$gp,16($sp)
    addiu	$at,$at,-22564
    addu	$gp,$t9,$at
    # Line 185
    lw	$t9,12($a1)
    # Line 181
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,0($sp)
    move	$s1,$a1
    # Line 185
    lw	$a1,72($a0)
    jalr	$t9
    move	$a0,$s1
    # Line 186
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,76($s0)
    # Line 187
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,80($s0)
    # Line 188
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,84($s0)
    ld	$s1,0($sp)
    # Line 194
    ld	$gp,16($sp)
    # Line 193
    sw	$zero,84($s0)
    # Line 192
    sw	$zero,80($s0)
    ld	$ra,8($sp)
    # Line 191
    sw	$zero,76($s0)
    # Line 190
    sw	$zero,72($s0)
    # Line 194
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end FreeStencilBuf

# Function: __glValidateStencil
# Declared: Line 197 (Source lines: 198-255)
# Address: 0x0da06640 - 0x0da068d0 (Size: 656 bytes, Frame: 208)
.globl __glValidateStencil
.ent __glValidateStencil
__glValidateStencil:
    # Line 214
    lw	$a3,1664($a0)
    # Line 198
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$s2,32($sp)
    sd	$s3,24($sp)
    sd	$s1,48($sp)
    # Line 220
    lw	$s1,72($a1)
    # Line 198
    sd	$s4,0($sp)
    # Line 211
    lbu	$s4,1673($a0)
    # Line 220
    li	$s3,1
    # Line 198
    lui	$t8,0x5
    sd	$s5,8($sp)
    move	$s2,$a1
    addiu	$t8,$t8,-22708
    # Line 212
    lh	$s5,1670($a0)
    # Line 198
    move	$s0,$a0
    sd	$gp,56($sp)
    addu	$gp,$t9,$t8
    sd	$s6,16($sp)
    # Line 212
    andi	$s6,$s5,0xff
    # Line 213
    and	$s5,$s5,$s4
    sd	$ra,72($sp)
    # Line 220
    beqz	$s1,.L0da0685c
    # Line 213
    andi	$s5,$s5,0xff
.L0da066a0:
    # Line 228
    lw	$a5,3248($s0)
    sllv	$a5,$s3,$a5
    move	$a4,$zero
    blez	$a5,.L0da06710
    addiu	$a0,$a3,-512
    b	.L0da068c8
    la	$a6,sub_0da40000
.L0da066bc:
    # Line 238
    addiu	$s1,$s1,1
    and	$a6,$a4,$s4
    slt	$a6,$a6,$s5
    sb	$a6,-1($s1)
    lw	$a5,3248($s0)
    sllv	$a5,$s3,$a5
    nop
    nop
    nop
.L0da066e0:
    # Line 232
    addiu	$a4,$a4,1
    slt	$a7,$a4,$a5
    beqz	$a7,.L0da06710
    # Line 228
    la	$a6,sub_0da40000
    sltiu	$t0,$a0,8
.L0da066f4:
    sll	$a7,$a0,0x2
    addiu	$a6,$a6,20860
    beqz	$t0,.L0da066e0
    addu	$a6,$a6,$a7
    lw	$a7,0($a6)
    jr	$a7
    # Line 239
    and	$a6,$a4,$s4
.L0da06710:
    # Line 232
    la	$s1,sub_0da00000
    ld	$s4,0($sp)
    ld	$s5,8($sp)
    addiu	$s1,$s1,25760
    # Line 248
    lbu	$s3,1675($s0)
    # Line 249
    move	$t9,$s1
    lw	$a2,1676($s0)
    move	$a0,$s0
    move	$a3,$s6
    lw	$a1,76($s2)
    bal __glFreeSpecLUT
    move	$a4,$s3
    # Line 251
    move	$t9,$s1
    move	$a0,$s0
    lw	$a2,1680($s0)
    move	$a3,$s6
    lw	$a1,80($s2)
    bal __glFreeSpecLUT
    move	$a4,$s3
    # Line 253
    move	$t9,$s1
    move	$a0,$s0
    lw	$a2,1684($s0)
    move	$a3,$s6
    lw	$a1,84($s2)
    bal __glFreeSpecLUT
    move	$a4,$s3
    ld	$s6,16($sp)
    ld	$s3,24($sp)
    ld	$s2,32($sp)
    ld	$ra,72($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    # Line 255
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da0679c:
    # Line 234
    addiu	$s1,$s1,1
    sb	$zero,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da067b0:
    # Line 241
    addiu	$s1,$s1,1
    sb	$s3,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da067c4:
    # Line 240
    and	$a6,$a4,$s4
    addiu	$s1,$s1,1
    slt	$a6,$s5,$a6
    xori	$a6,$a6,0x1
    sb	$a6,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da067e4:
    # Line 239
    addiu	$s1,$s1,1
    xor	$a6,$s5,$a6
    sltu	$a6,$zero,$a6
    sb	$a6,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da06800:
    # Line 237
    and	$a6,$a4,$s4
    addiu	$s1,$s1,1
    slt	$a6,$a6,$s5
    xori	$a6,$a6,0x1
    sb	$a6,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da06820:
    # Line 236
    and	$a6,$a4,$s4
    addiu	$s1,$s1,1
    xor	$a6,$s5,$a6
    sltiu	$a6,$a6,1
    sb	$a6,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da06840:
    # Line 235
    addiu	$s1,$s1,1
    and	$a6,$a4,$s4
    slt	$a6,$s5,$a6
    sb	$a6,-1($s1)
    lw	$a5,3248($s0)
    b	.L0da066e0
    sllv	$a5,$s3,$a5
.L0da0685c:
    # Line 222
    lw	$t9,0($s0)
    lw	$a1,3248($s0)
    sd	$a3,64($sp)
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,72($s2)
    # Line 224
    lw	$t9,0($s0)
    # Line 222
    move	$s1,$v0
    # Line 224
    lw	$a1,3248($s0)
    move	$a0,$s0
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,76($s2)
    # Line 226
    lw	$t9,0($s0)
    lw	$a1,3248($s0)
    move	$a0,$s0
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,80($s2)
    # Line 228
    lw	$t9,0($s0)
    lw	$a1,3248($s0)
    move	$a0,$s0
    jalr	$t9
    sllv	$a1,$s3,$a1
    ld	$a3,64($sp)
    b	.L0da066a0
    sw	$v0,84($s2)
.L0da068c8:
    b	.L0da066f4
    sltiu	$t0,$a0,8
.end __glValidateStencil

# Function: Pick
# Declared: Line 262 (Source lines: 263-268)
# Address: 0x0da068d0 - 0x0da06910 (Size: 64 bytes, Frame: 16)
.ent Pick
Pick:
    # Line 263
    lw	$at,11752($a0)
    addiu	$sp,$sp,-16
    lui	$v0,0x5
    andi	$at,$at,0x6
    sd	$ra,8($sp)
    addiu	$v0,$v0,-23364
    sd	$gp,0($sp)
    beqz	$at,.L0da06900
    addu	$gp,$t9,$v0
    # Line 266
    # lw $t9, -24688($gp) # &__glValidateStencil
    bal __glValidateStencil
    nop
.L0da06900:
    ld	$ra,8($sp)
    # Line 268
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end Pick

# Function: __glInitStencil8
# Declared: Line 270 (Source lines: 271-285)
# Address: 0x0da06910 - 0x0da069c4 (Size: 180 bytes, Frame: 32)
.globl __glInitStencil8
.ent __glInitStencil8
__glInitStencil8:
    # Line 271
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-23428
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 272
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 271
    sd	$s8,8($sp)
    # Line 272
    nop
    # Line 271
    sd	$ra,0($sp)
    # Line 272
    jal	__glInitBuffer
    # Line 271
    move	$s8,$a0
    # Line 284
    la	$a6,sub_0da00000
    # Line 283
    la	$a5,sub_0da00000
    # Line 282
    la	$a4,sub_0da00000
    # Line 281
    la	$a3,sub_0da00000
    # Line 280
    la	$a2,sub_0da00000
    # Line 279
    la	$a1,sub_0da00000
    # Line 278
    la	$a0,sub_0da00000
    # Line 277
    la	$v1,sub_0da00000
    # Line 275
    la	$v0,sub_0da00000
    # Line 285
    ld	$gp,16($sp)
    # Line 274
    li	$a7,1
    sw	$a7,24($s8)
    # Line 284
    addiu	$a6,$a6,24784
    sw	$a6,116($s8)
    # Line 283
    addiu	$a5,$a5,24704
    sw	$a5,112($s8)
    # Line 282
    addiu	$a4,$a4,24624
    sw	$a4,108($s8)
    # Line 281
    addiu	$a3,$a3,24544
    sw	$a3,104($s8)
    # Line 280
    addiu	$a2,$a2,24464
    sw	$a2,100($s8)
    # Line 279
    addiu	$a1,$a1,24320
    sw	$a1,96($s8)
    # Line 278
    addiu	$a0,$a0,24384
    sw	$a0,92($s8)
    ld	$ra,0($sp)
    # Line 277
    addiu	$v1,$v1,26832
    sw	$v1,88($s8)
    # Line 275
    addiu	$v0,$v0,26032
    sw	$v0,64($s8)
    # Line 285
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitStencil8

.late_rodata
jtbl_0da4517c:
    .word .L0da0679c
    .word .L0da06840
    .word .L0da06820
    .word .L0da06800
    .word .L0da066bc
    .word .L0da067e4
    .word .L0da067c4
    .word .L0da067b0

