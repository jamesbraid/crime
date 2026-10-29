# Source: ../soft/so_xform.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_xform.c
# Total Functions: 55

.text

# Function: __glPickMatrixType
# Declared: Line 32 (Source lines: 34-78)
# Address: 0x0da35020 - 0x0da35134 (Size: 276 bytes, Frame: 0)
.globl __glPickMatrixType
.ent __glPickMatrixType
__glPickMatrixType:
    # Line 34
    lw	$a4,64($a1)
    li	$a6,5
    li	$t0,3
    beqz	$a4,.L0da350ec
    li	$a7,4
    li	$at,1
    beq	$a4,$at,.L0da3507c
    li	$v0,2
    beq	$a4,$v0,.L0da35098
    nop
    beq	$t0,$a4,.L0da350b0
    nop
    beq	$a7,$a4,.L0da350c8
    nop
    bne	$a6,$a4,.L0da35090
    nop
    # Line 67
    lw	$a5,64($a2)
    beq	$a7,$a5,.L0da3511c
    # Line 70
    sltiu	$v1,$a5,3
    beqz	$v1,.L0da350dc
    nop
    # Line 78
    jr	$ra
    # Line 72
    sw	$a5,64($a0)
.L0da3507c:
    # Line 39
    lw	$a5,64($a2)
    beqz	$a5,.L0da35114
    nop
    # Line 78
    jr	$ra
    # Line 42
    sw	$a4,64($a0)
.L0da35090:
    # Line 78
    jr	$ra
    nop
.L0da35098:
    # Line 46
    lw	$a5,64($a2)
    sltiu	$a1,$a5,2
    beqz	$a1,.L0da350e4
    nop
    # Line 78
    jr	$ra
    # Line 47
    sw	$a5,64($a0)
.L0da350b0:
    # Line 53
    lw	$a5,64($a2)
    sltiu	$a3,$a5,3
    beqz	$a3,.L0da350f4
    nop
    # Line 78
    jr	$ra
    # Line 54
    sw	$a5,64($a0)
.L0da350c8:
    # Line 60
    lw	$a4,64($a2)
    beq	$a6,$a4,.L0da350fc
    move	$a1,$a4
.L0da350d4:
    # Line 78
    jr	$ra
    # Line 64
    sw	$a1,64($a0)
.L0da350dc:
    # Line 78
    jr	$ra
    # Line 74
    sw	$t0,64($a0)
.L0da350e4:
    # Line 78
    jr	$ra
    # Line 49
    sw	$a4,64($a0)
.L0da350ec:
    # Line 78
    jr	$ra
    # Line 36
    sw	$a4,64($a0)
.L0da350f4:
    # Line 78
    jr	$ra
    # Line 56
    sw	$a4,64($a0)
.L0da350fc:
    # Line 61
    lh	$a6,68($a2)
    sh	$a6,68($a0)
    # Line 62
    lh	$a5,70($a2)
    sh	$a5,70($a0)
    b	.L0da350d4
    lw	$a1,64($a2)
.L0da35114:
    # Line 78
    jr	$ra
    # Line 40
    sw	$a5,64($a0)
.L0da3511c:
    # Line 68
    sw	$a6,64($a0)
    # Line 69
    lh	$t0,68($a1)
    sh	$t0,68($a0)
    # Line 70
    lh	$a7,70($a1)
    # Line 78
    jr	$ra
    # Line 70
    sh	$a7,70($a0)
.end __glPickMatrixType

# Function: __glMultiplyMatrix
# Declared: Line 84 (Source lines: 85-91)
# Address: 0x0da35140 - 0x0da351a4 (Size: 100 bytes, Frame: 32)
.globl __glMultiplyMatrix
.ent __glMultiplyMatrix
__glMultiplyMatrix:
    # Line 85
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,-17332
    addu	$gp,$t9,$v0
    # Line 89
    lw	$t9,11884($a0)
    # Line 85
    move	$at,$a2
    sd	$a2,24($sp)
    # Line 89
    move	$a2,$a1
    # Line 85
    sd	$s8,8($sp)
    move	$s8,$a1
    # Line 89
    move	$a1,$at
    # Line 85
    sd	$ra,0($sp)
    # Line 89
    jalr	$t9
    move	$a0,$s8
    # Line 90
    # lw $t9, -23540($gp) # &__glPickMatrixType
    move	$a0,$s8
    ld	$a1,24($sp)
    bal __glPickMatrixType
    move	$a2,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 91
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMultiplyMatrix

# Function: SetDepthRange
# Declared: Line 93 (Source lines: 94-110)
# Address: 0x0da351b0 - 0x0da3522c (Size: 124 bytes, Frame: 0)
.ent SetDepthRange
SetDepthRange:
    # Line 96
    lwc1	$f4,3544($a0)
    # Line 100
    dmtc1	$zero,$f3
    # Line 107
    lw	$at,31304($a0)
    # Line 94
    mov.d	$f2,$f13
    # Line 100
    c.lt.d $f13,$f3
    # Line 107
    dsll32	$at,$at,0x0
    # Line 96
    cvt.d.s	$f4,$f4
    # Line 107
    dsrl32	$at,$at,0x0
    # Line 102
    c.lt.d $f14,$f3
    # Line 100
    movt.d	$f2,$f3,$fcc3
    # Line 107
    dmtc1	$at,$f0
    # Line 102
    movf.d	$f3,$f14,$fcc2
    # Line 100
    c.lt.d $f4,$f2
    # Line 107
    cvt.s.l	$f0,$f0
    lwc1	$f1,3540($a0)
    # Line 102
    c.lt.d	$f4,$f3
    # Line 100
    movt.d	$f2,$f4,$fcc1
    # Line 102
    movf.d	$f4,$f3,$fcc0
    # Line 107
    mul.s	$f0,$f0,$f1
    # Line 109
    add.d	$f1,$f2,$f4
    # Line 107
    cvt.d.s	$f0,$f0
    # Line 108
    sub.d	$f3,$f4,$f2
    # Line 109
    mul.d	$f1,$f0,$f1
    # Line 104
    sdc1	$f4,1712($a0)
    # Line 108
    mul.d	$f0,$f0,$f3
    # Line 103
    sdc1	$f2,1704($a0)
    # Line 109
    cvt.s.d	$f1,$f1
    # Line 108
    cvt.s.d	$f0,$f0
    # Line 109
    swc1	$f1,1740($a0)
    # Line 110
    jr	$ra
    # Line 108
    swc1	$f0,1736($a0)
.end SetDepthRange

# Function: __glUpdateDepthRange
# Declared: Line 112 (Source lines: 113-117)
# Address: 0x0da35230 - 0x0da3526c (Size: 60 bytes, Frame: 16)
.globl __glUpdateDepthRange
.ent __glUpdateDepthRange
__glUpdateDepthRange:
    # Line 113
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x2
    addiu	$ra,$ra,-17572
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 116
    # lw $t9, -32684($gp) # &sub_0da30000
    addiu	$t9,$t9,20912
    ldc1	$f14,1712($a0)
    bal __glMultiplyMatrix
    ldc1	$f13,1704($a0)
    ld	$ra,0($sp)
    # Line 117
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glUpdateDepthRange

# Function: __glEarlyInitTransformState
# Declared: Line 119 (Source lines: 120-127)
# Address: 0x0da35270 - 0x0da352bc (Size: 76 bytes, Frame: 32)
.globl __glEarlyInitTransformState
.ent __glEarlyInitTransformState
__glEarlyInitTransformState:
    # Line 120
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$gp,16($sp)
    addiu	$at,$at,-17636
    addu	$gp,$t9,$at
    # Line 125
    lw	$t9,4($a0)
    lw	$a1,3600($a0)
    li	$a2,16
    # Line 120
    sd	$s8,8($sp)
    # Line 125
    nop
    # Line 120
    sd	$ra,0($sp)
    # Line 125
    jalr	$t9
    # Line 120
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 127
    ld	$gp,16($sp)
    # Line 125
    sw	$v0,1748($s8)
    # Line 127
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glEarlyInitTransformState

# Function: __glInitTransformState
# Declared: Line 129 (Source lines: 130-198)
# Address: 0x0da352c0 - 0x0da35518 (Size: 600 bytes, Frame: 192)
.globl __glInitTransformState
.ent __glInitTransformState
__glInitTransformState:
    # Line 144
    lw	$a1,3788($a0)
    # Line 130
    addiu	$sp,$sp,-64
    sd	$s2,0($sp)
    lui	$at,0x2
    sd	$gp,16($sp)
    addiu	$at,$at,-17716
    addu	$gp,$t9,$at
    # Line 144
    lw	$t9,4($a0)
    # Line 130
    sd	$ra,8($sp)
    # Line 144
    li	$a2,272
    # Line 130
    sd	$s1,24($sp)
    # Line 144
    nop
    # Line 130
    move	$s1,$a0
    # Line 144
    jalr	$t9
    # Line 136
    lw	$s2,3600($a0)
    # Line 147
    lw	$t9,4($s1)
    li	$a2,272
    lw	$a1,3792($s1)
    move	$a0,$s1
    jalr	$t9
    # Line 144
    sw	$v0,29656($s1)
    # Line 150
    lw	$t9,4($s1)
    li	$a2,272
    lw	$a1,3796($s1)
    move	$a0,$s1
    jalr	$t9
    # Line 147
    sw	$v0,29664($s1)
    # Line 153
    lw	$t9,4($s1)
    lw	$a1,3800($s1)
    li	$a2,272
    # Line 150
    sw	$v0,29676($s1)
    # Line 153
    move	$a0,$s1
    jalr	$t9
    sd	$s0,40($sp)
    # Line 162
    lw	$t9,4($s1)
    li	$a2,192
    addu	$s0,$s2,$s2
    move	$a0,$s1
    addiu	$s0,$s0,12
    # Line 153
    sw	$v0,29684($s1)
    # Line 162
    jalr	$t9
    move	$a1,$s0
    # Line 167
    # lw $t9, -32684($gp) # &sub_0da30000
    lwc1	$f14,3544($s1)
    addiu	$t9,$t9,20912
    dmtc1	$zero,$f13
    # Line 166
    li	$t8,5888
    sw	$t8,1744($s1)
    # Line 167
    move	$a0,$s1
    # Line 162
    sw	$v0,29692($s1)
    # Line 167
    bal __glMultiplyMatrix
    cvt.d.s	$f14,$f14
    # Line 170
    lw	$t9,11880($s1)
    # Line 169
    lw	$s2,29656($s1)
    sd	$s5,48($sp)
    sw	$s2,29660($s1)
    # Line 170
    jal	sub_0da30000
    move	$a0,$s2
    # Line 171
    lw	$t9,11880($s1)
    addiu	$s5,$s2,88
    jalr	$t9
    move	$a0,$s5
    # Line 172
    lw	$t9,11880($s1)
    addiu	$a0,$s2,176
    jalr	$t9
    sd	$s3,32($sp)
    # Line 173
    lw	$s3,11852($s1)
    # Line 174
    move	$t9,$s3
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    # Line 175
    lw	$t9,11856($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s5
    # Line 178
    lw	$t9,11880($s1)
    # Line 177
    lw	$s2,29664($s1)
    sw	$s2,29668($s1)
    # Line 178
    jalr	$t9
    move	$a0,$s2
    # Line 179
    move	$t9,$s3
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    # Line 181
    lw	$t9,11860($s1)
    lw	$a1,29660($s1)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,176
    # Line 184
    lw	$t9,11880($s1)
    # Line 183
    lw	$s2,29676($s1)
    sw	$s2,29680($s1)
    # Line 184
    jalr	$t9
    move	$a0,$s2
    # Line 185
    move	$t9,$s3
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    # Line 188
    lw	$t9,11880($s1)
    # Line 187
    lw	$s2,29684($s1)
    sw	$s2,29688($s1)
    # Line 188
    jalr	$t9
    move	$a0,$s2
    # Line 189
    move	$t9,$s3
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    # Line 191
    blez	$s0,.L0da354ec
    lw	$a4,29692($s1)
    andi	$a0,$s0,0x3
    move	$a3,$zero
    sra	$a2,$s0,0x2
    la	$a6,__glValidateVertex4
    beqz	$a0,.L0da354a8
    addiu	$a5,$a4,144
.L0da3548c:
    addiu	$a0,$a0,-1
    # Line 193
    sw	$a5,8($a4)
    # Line 192
    addiu	$a5,$a5,192
    addiu	$a4,$a4,192
    addiu	$a3,$a3,1
    bnez	$a0,.L0da3548c
    # Line 194
    sw	$a6,-180($a4)
.L0da354a8:
    beqz	$a2,.L0da354ec
    nop
.L0da354b0:
    # Line 193
    sw	$a5,8($a4)
    # Line 192
    addiu	$a4,$a4,768
    # Line 194
    sw	$a6,-180($a4)
    # Line 192
    addiu	$t1,$a5,576
    # Line 193
    sw	$t1,-184($a4)
    # Line 194
    sw	$a6,-372($a4)
    # Line 192
    addiu	$t0,$a5,384
    # Line 193
    sw	$t0,-376($a4)
    # Line 194
    sw	$a6,-564($a4)
    # Line 192
    addiu	$a3,$a3,4
    addiu	$a7,$a5,192
    # Line 193
    sw	$a7,-568($a4)
    # Line 192
    addiu	$a5,$a5,768
    bne	$a3,$s0,.L0da354b0
    # Line 194
    sw	$a6,-756($a4)
.L0da354ec:
    ld	$s3,32($sp)
    ld	$s2,0($sp)
    ld	$s0,40($sp)
    ld	$s5,48($sp)
    # Line 197
    lwc1	$f15,3544($s1)
    ld	$ra,8($sp)
    # Line 198
    ld	$gp,16($sp)
    # Line 197
    swc1	$f15,216($s1)
    # Line 198
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glInitTransformState

# Function: __glInvalidateSequenceNumbers
# Declared: Line 205 (Source lines: 212-228)
# Address: 0x0da35520 - 0x0da356c0 (Size: 416 bytes, Frame: 0)
.globl __glInvalidateSequenceNumbers
.ent __glInvalidateSequenceNumbers
__glInvalidateSequenceNumbers:
    # Line 213
    lw	$a4,3788($a0)
    sll	$a3,$a4,0x4
    addu	$a3,$a3,$a4
    # Line 212
    lw	$a4,29656($a0)
    # Line 213
    sll	$a3,$a3,0x4
    addu	$a5,$a3,$a4
    sltu	$at,$a4,$a5
    beqz	$at,.L0da355cc
    addiu	$t3,$a3,271
    srl	$a7,$t3,0x1f
    li	$t2,0xf0f0
    negu	$t1,$t3
    dsll	$t2,$t2,0x10
    movz	$t1,$t3,$a7
    ori	$t2,$t2,0xf0f1
    multu	$t1,$t2
    mfhi	$t0
    sra	$t0,$t0,0x8
    negu	$a6,$t0
    movz	$a6,$t0,$a7
    andi	$a2,$a6,0x7
    beqz	$a2,.L0da3558c
    sra	$t3,$a6,0x3
.L0da3557c:
    addiu	$a2,$a2,-1
    # Line 216
    addiu	$a4,$a4,272
    bnez	$a2,.L0da3557c
    # Line 215
    sw	$zero,-8($a4)
.L0da3558c:
    beqz	$t3,.L0da355cc
    nop
    nop
    nop
    nop
.L0da355a0:
    sw	$zero,2168($a4)
    sw	$zero,1896($a4)
    sw	$zero,1624($a4)
    sw	$zero,1352($a4)
    sw	$zero,1080($a4)
    # Line 216
    addiu	$a4,$a4,2176
    # Line 215
    sw	$zero,-1368($a4)
    # Line 216
    sltu	$t8,$a4,$a5
    # Line 215
    sw	$zero,-1640($a4)
    # Line 216
    bnez	$t8,.L0da355a0
    # Line 215
    sw	$zero,-1912($a4)
.L0da355cc:
    # Line 222
    lw	$t0,3792($a0)
    sll	$a7,$t0,0x4
    # Line 221
    lw	$a4,29664($a0)
    # Line 222
    addu	$a7,$a7,$t0
    sll	$a7,$a7,0x4
    li	$a2,1
    addu	$a5,$a7,$a4
    li	$t8,0xf0f0
    sltu	$t9,$a4,$a5
    # Line 225
    li	$t2,1
    # Line 222
    dsll	$t8,$t8,0x10
    beqz	$t9,.L0da356b8
    ori	$t8,$t8,0xf0f1
    addiu	$t9,$a7,271
    negu	$t3,$t9
    srl	$t1,$t9,0x1f
    movz	$t3,$t9,$t1
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x8
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    andi	$a6,$t0,0x7
    move	$a3,$zero
    beqz	$a6,.L0da3564c
    sra	$t9,$t0,0x3
.L0da35634:
    addiu	$a6,$a6,-1
    # Line 225
    addiu	$a4,$a4,272
    # Line 224
    addiu	$a3,$a3,1
    sw	$a3,-8($a4)
    bnez	$a6,.L0da35634
    addiu	$a2,$a2,1
.L0da3564c:
    beqz	$t9,.L0da356b0
    nop
    nop
    nop
    nop
.L0da35660:
    addiu	$a6,$a3,4
    sw	$a6,1080($a4)
    addiu	$a7,$a3,5
    sw	$a7,1352($a4)
    addiu	$t0,$a3,6
    sw	$t0,1624($a4)
    addiu	$a1,$a3,3
    addiu	$t1,$a3,7
    sw	$t1,1896($a4)
    addiu	$v1,$a3,2
    addiu	$at,$a3,1
    addiu	$a3,$a3,8
    sw	$a3,2168($a4)
    # Line 225
    addiu	$a4,$a4,2176
    # Line 224
    sw	$a1,-1368($a4)
    # Line 225
    sltu	$v0,$a4,$a5
    # Line 224
    sw	$v1,-1640($a4)
    addiu	$a2,$a2,8
    # Line 225
    bnez	$v0,.L0da35660
    # Line 224
    sw	$at,-1912($a4)
.L0da356b0:
    # Line 228
    jr	$ra
    # Line 227
    sw	$a2,29672($a0)
.L0da356b8:
    # Line 228
    jr	$ra
    # Line 227
    sw	$t2,29672($a0)
.end __glInvalidateSequenceNumbers

# Function: __glim_MatrixMode
# Declared: Line 232 (Source lines: 233-248)
# Address: 0x0da356c0 - 0x0da35764 (Size: 164 bytes, Frame: 16)
.globl __glim_MatrixMode
.ent __glim_MatrixMode
__glim_MatrixMode:
    # Line 247
    li	$a7,2
    # Line 233
    addiu	$sp,$sp,-16
    # Line 234
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 233
    lui	$v1,0x2
    # Line 236
    li	$a5,6144
    sd	$ra,8($sp)
    # Line 233
    addiu	$v1,$v1,-18740
    sd	$gp,0($sp)
    # Line 234
    beq	$at,$v0,.L0da35750
    # Line 233
    addu	$gp,$t9,$v1
    # Line 236
    li	$a1,5888
    beq	$a0,$a1,.L0da3572c
    li	$a3,5889
    beq	$a0,$a3,.L0da3572c
    li	$a4,5890
    beq	$a0,$a4,.L0da3572c
    nop
    beq	$a0,$a5,.L0da3572c
    # Line 243
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0da35720:
    # Line 248
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da3572c:
    # Line 246
    sw	$a0,1744($a2)
    # Line 247
    sw	$a7,4120($zero)
    ld	$ra,8($sp)
    lw	$a6,11756($a2)
    # Line 248
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 247
    ori	$a6,$a6,0x1
    # Line 248
    jr	$ra
    # Line 247
    sw	$a6,11756($a2)
.L0da35750:
    # Line 234
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35720
    ld	$ra,8($sp)
.end __glim_MatrixMode

# Function: __glim_LoadIdentity
# Declared: Line 250 (Source lines: 251-254)
# Address: 0x0da35770 - 0x0da357ec (Size: 124 bytes, Frame: 32)
.globl __glim_LoadIdentity
.ent __glim_LoadIdentity
__glim_LoadIdentity:
    # Line 252
    lw	$a2,4120($zero)
    lw	$a0,4112($zero)
    # Line 251
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$ra,16($sp)
    addiu	$at,$at,-18916
    sd	$gp,8($sp)
    # Line 252
    beqz	$a2,.L0da357d0
    # Line 251
    addu	$gp,$t9,$at
    # Line 252
    li	$v0,2
    beq	$a2,$v0,.L0da357b4
    sd	$a0,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da357dc
    nop
.L0da357b4:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,0($sp)
    sw	$zero,4120($zero)
.L0da357d0:
    # Line 253
    lw	$t9,11896($a0)
    jalr	$t9
    nop
.L0da357dc:
    ld	$ra,16($sp)
    # Line 254
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LoadIdentity

# Function: __glim_LoadMatrixf
# Declared: Line 256 (Source lines: 257-279)
# Address: 0x0da357f0 - 0x0da358d4 (Size: 228 bytes, Frame: 240)
.globl __glim_LoadMatrixf
.ent __glim_LoadMatrixf
__glim_LoadMatrixf:
    # Line 257
    addiu	$sp,$sp,-112
    # Line 259
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 257
    lui	$v1,0x2
    move	$a3,$a0
    sd	$ra,96($sp)
    addiu	$v1,$v1,-19044
    sd	$gp,88($sp)
    # Line 259
    beq	$at,$v0,.L0da358c0
    # Line 257
    addu	$gp,$t9,$v1
    # Line 261
    lwc1	$f15,0($a0)
    swc1	$f15,0($sp)
    # Line 262
    lwc1	$f14,4($a0)
    swc1	$f14,4($sp)
    # Line 263
    lwc1	$f13,8($a0)
    swc1	$f13,8($sp)
    # Line 264
    lwc1	$f12,12($a0)
    swc1	$f12,12($sp)
    # Line 265
    lwc1	$f11,16($a0)
    swc1	$f11,16($sp)
    # Line 266
    lwc1	$f10,20($a0)
    swc1	$f10,20($sp)
    # Line 267
    lwc1	$f9,24($a0)
    swc1	$f9,24($sp)
    # Line 268
    lwc1	$f8,28($a0)
    swc1	$f8,28($sp)
    # Line 269
    lwc1	$f7,32($a0)
    swc1	$f7,32($sp)
    # Line 270
    lwc1	$f6,36($a0)
    swc1	$f6,36($sp)
    # Line 271
    lwc1	$f5,40($a0)
    swc1	$f5,40($sp)
    # Line 272
    lwc1	$f4,44($a0)
    swc1	$f4,44($sp)
    # Line 273
    lwc1	$f3,48($a0)
    swc1	$f3,48($sp)
    # Line 274
    lwc1	$f2,52($a0)
    swc1	$f2,52($sp)
    # Line 275
    lwc1	$f1,56($a0)
    # Line 278
    # lw $t9, -23372($gp) # &__glDoLoadMatrix
    # Line 275
    swc1	$f1,56($sp)
    # Line 276
    lwc1	$f0,60($a0)
    # Line 278
    addiu	$a1,$sp,0
    # Line 277
    sw	$zero,64($sp)
    # Line 278
    move	$a0,$a4
    bal __glDoLoadMatrix
    # Line 276
    swc1	$f0,60($sp)
    ld	$ra,96($sp)
.L0da358b4:
    # Line 279
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da358c0:
    # Line 259
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da358b4
    ld	$ra,96($sp)
.end __glim_LoadMatrixf

# Function: __glim_LoadMatrixd
# Declared: Line 281 (Source lines: 282-304)
# Address: 0x0da358e0 - 0x0da35a04 (Size: 292 bytes, Frame: 240)
.globl __glim_LoadMatrixd
.ent __glim_LoadMatrixd
__glim_LoadMatrixd:
    # Line 282
    addiu	$sp,$sp,-112
    # Line 284
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 282
    lui	$v1,0x2
    move	$a3,$a0
    sd	$ra,96($sp)
    addiu	$v1,$v1,-19284
    sd	$gp,88($sp)
    # Line 284
    beq	$at,$v0,.L0da359f0
    # Line 282
    addu	$gp,$t9,$v1
    # Line 286
    ldc1	$f15,0($a0)
    cvt.s.d	$f15,$f15
    swc1	$f15,0($sp)
    # Line 287
    ldc1	$f14,8($a0)
    cvt.s.d	$f14,$f14
    swc1	$f14,4($sp)
    # Line 288
    ldc1	$f13,16($a0)
    cvt.s.d	$f13,$f13
    swc1	$f13,8($sp)
    # Line 289
    ldc1	$f12,24($a0)
    cvt.s.d	$f12,$f12
    swc1	$f12,12($sp)
    # Line 290
    ldc1	$f11,32($a0)
    cvt.s.d	$f11,$f11
    swc1	$f11,16($sp)
    # Line 291
    ldc1	$f10,40($a0)
    cvt.s.d	$f10,$f10
    swc1	$f10,20($sp)
    # Line 292
    ldc1	$f9,48($a0)
    cvt.s.d	$f9,$f9
    swc1	$f9,24($sp)
    # Line 293
    ldc1	$f8,56($a0)
    cvt.s.d	$f8,$f8
    swc1	$f8,28($sp)
    # Line 294
    ldc1	$f7,64($a0)
    cvt.s.d	$f7,$f7
    swc1	$f7,32($sp)
    # Line 295
    ldc1	$f6,72($a0)
    cvt.s.d	$f6,$f6
    swc1	$f6,36($sp)
    # Line 296
    ldc1	$f5,80($a0)
    cvt.s.d	$f5,$f5
    swc1	$f5,40($sp)
    # Line 297
    ldc1	$f4,88($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,44($sp)
    # Line 298
    ldc1	$f3,96($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,48($sp)
    # Line 299
    ldc1	$f2,104($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,52($sp)
    # Line 300
    ldc1	$f1,112($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,56($sp)
    # Line 301
    ldc1	$f0,120($a0)
    # Line 303
    # lw $t9, -23372($gp) # &__glDoLoadMatrix
    addiu	$a1,$sp,0
    # Line 302
    sw	$zero,64($sp)
    # Line 301
    cvt.s.d	$f0,$f0
    # Line 303
    move	$a0,$a4
    bal __glDoLoadMatrix
    # Line 301
    swc1	$f0,60($sp)
    ld	$ra,96($sp)
.L0da359e4:
    # Line 304
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da359f0:
    # Line 284
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da359e4
    ld	$ra,96($sp)
.end __glim_LoadMatrixd

# Function: __glim_MultMatrixf
# Declared: Line 306 (Source lines: 307-329)
# Address: 0x0da35a10 - 0x0da35af8 (Size: 232 bytes, Frame: 240)
.globl __glim_MultMatrixf
.ent __glim_MultMatrixf
__glim_MultMatrixf:
    # Line 307
    addiu	$sp,$sp,-112
    # Line 309
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 307
    lui	$v1,0x2
    move	$a4,$a0
    sd	$ra,96($sp)
    addiu	$v1,$v1,-19588
    sd	$gp,88($sp)
    # Line 309
    beq	$at,$v0,.L0da35ae4
    # Line 307
    addu	$gp,$t9,$v1
    # Line 311
    lwc1	$f15,0($a0)
    swc1	$f15,0($sp)
    # Line 312
    lwc1	$f14,4($a0)
    swc1	$f14,4($sp)
    # Line 313
    lwc1	$f13,8($a0)
    swc1	$f13,8($sp)
    # Line 314
    lwc1	$f12,12($a0)
    swc1	$f12,12($sp)
    # Line 315
    lwc1	$f11,16($a0)
    swc1	$f11,16($sp)
    # Line 316
    lwc1	$f10,20($a0)
    swc1	$f10,20($sp)
    # Line 317
    lwc1	$f9,24($a0)
    swc1	$f9,24($sp)
    # Line 318
    lwc1	$f8,28($a0)
    swc1	$f8,28($sp)
    # Line 319
    lwc1	$f7,32($a0)
    swc1	$f7,32($sp)
    # Line 320
    lwc1	$f6,36($a0)
    swc1	$f6,36($sp)
    # Line 321
    lwc1	$f5,40($a0)
    swc1	$f5,40($sp)
    # Line 322
    lwc1	$f4,44($a0)
    swc1	$f4,44($sp)
    # Line 323
    lwc1	$f3,48($a0)
    swc1	$f3,48($sp)
    # Line 324
    lwc1	$f2,52($a0)
    # Line 328
    la	$a2,__glMultiplyMatrix
    # Line 324
    swc1	$f2,52($sp)
    # Line 325
    lwc1	$f1,56($a0)
    # Line 328
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    # Line 325
    swc1	$f1,56($sp)
    # Line 326
    lwc1	$f0,60($a0)
    # Line 328
    addiu	$a1,$sp,0
    # Line 327
    sw	$zero,64($sp)
    # Line 328
    move	$a0,$a5
    bal __glDoMultMatrix
    # Line 326
    swc1	$f0,60($sp)
    ld	$ra,96($sp)
.L0da35ad8:
    # Line 329
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da35ae4:
    # Line 309
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35ad8
    ld	$ra,96($sp)
.end __glim_MultMatrixf

# Function: __glim_MultMatrixd
# Declared: Line 331 (Source lines: 332-354)
# Address: 0x0da35b00 - 0x0da35c28 (Size: 296 bytes, Frame: 240)
.globl __glim_MultMatrixd
.ent __glim_MultMatrixd
__glim_MultMatrixd:
    # Line 332
    addiu	$sp,$sp,-112
    # Line 334
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 332
    lui	$v1,0x2
    move	$a4,$a0
    sd	$ra,96($sp)
    addiu	$v1,$v1,-19828
    sd	$gp,88($sp)
    # Line 334
    beq	$at,$v0,.L0da35c14
    # Line 332
    addu	$gp,$t9,$v1
    # Line 336
    ldc1	$f15,0($a0)
    cvt.s.d	$f15,$f15
    swc1	$f15,0($sp)
    # Line 337
    ldc1	$f14,8($a0)
    cvt.s.d	$f14,$f14
    swc1	$f14,4($sp)
    # Line 338
    ldc1	$f13,16($a0)
    cvt.s.d	$f13,$f13
    swc1	$f13,8($sp)
    # Line 339
    ldc1	$f12,24($a0)
    cvt.s.d	$f12,$f12
    swc1	$f12,12($sp)
    # Line 340
    ldc1	$f11,32($a0)
    cvt.s.d	$f11,$f11
    swc1	$f11,16($sp)
    # Line 341
    ldc1	$f10,40($a0)
    cvt.s.d	$f10,$f10
    swc1	$f10,20($sp)
    # Line 342
    ldc1	$f9,48($a0)
    cvt.s.d	$f9,$f9
    swc1	$f9,24($sp)
    # Line 343
    ldc1	$f8,56($a0)
    cvt.s.d	$f8,$f8
    swc1	$f8,28($sp)
    # Line 344
    ldc1	$f7,64($a0)
    cvt.s.d	$f7,$f7
    swc1	$f7,32($sp)
    # Line 345
    ldc1	$f6,72($a0)
    cvt.s.d	$f6,$f6
    swc1	$f6,36($sp)
    # Line 346
    ldc1	$f5,80($a0)
    cvt.s.d	$f5,$f5
    swc1	$f5,40($sp)
    # Line 347
    ldc1	$f4,88($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,44($sp)
    # Line 348
    ldc1	$f3,96($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,48($sp)
    # Line 349
    ldc1	$f2,104($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,52($sp)
    # Line 350
    ldc1	$f1,112($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,56($sp)
    # Line 351
    ldc1	$f0,120($a0)
    # Line 353
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    la	$a2,__glMultiplyMatrix
    addiu	$a1,$sp,0
    # Line 352
    sw	$zero,64($sp)
    # Line 351
    cvt.s.d	$f0,$f0
    # Line 353
    move	$a0,$a5
    bal __glDoMultMatrix
    # Line 351
    swc1	$f0,60($sp)
    ld	$ra,96($sp)
.L0da35c08:
    # Line 354
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da35c14:
    # Line 334
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35c08
    ld	$ra,96($sp)
.end __glim_MultMatrixd

# Function: __glim_Rotatef
# Declared: Line 356 (Source lines: 357-361)
# Address: 0x0da35c30 - 0x0da35c9c (Size: 108 bytes, Frame: 16)
.globl __glim_Rotatef
.ent __glim_Rotatef
__glim_Rotatef:
    # Line 357
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    mov.s	$f16,$f15
    li	$v0,1
    lui	$v1,0x2
    mov.s	$f4,$f14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20132
    mov.s	$f5,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da35c88
    addu	$gp,$t9,$v1
    # Line 360
    # lw $t9, -23364($gp) # &__glDoRotate
    mov.s	$f15,$f14
    mov.s	$f14,$f13
    mov.s	$f13,$f12
    bal __glDoRotate
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0da35c7c:
    # Line 361
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da35c88:
    # Line 358
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35c7c
    ld	$ra,8($sp)
.end __glim_Rotatef

# Function: __glim_Rotated
# Declared: Line 363 (Source lines: 364-368)
# Address: 0x0da35ca0 - 0x0da35d10 (Size: 112 bytes, Frame: 16)
.globl __glim_Rotated
.ent __glim_Rotated
__glim_Rotated:
    # Line 364
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    mov.d	$f5,$f15
    li	$v0,1
    lui	$v1,0x2
    mov.d	$f4,$f14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20244
    mov.d	$f6,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da35cfc
    addu	$gp,$t9,$v1
    # Line 367
    cvt.s.d	$f16,$f15
    # lw $t9, -23364($gp) # &__glDoRotate
    cvt.s.d	$f15,$f14
    cvt.s.d	$f14,$f13
    cvt.s.d	$f13,$f12
    bal __glDoRotate
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0da35cf0:
    # Line 368
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da35cfc:
    # Line 365
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35cf0
    ld	$ra,8($sp)
.end __glim_Rotated

# Function: __glim_Scalef
# Declared: Line 370 (Source lines: 371-375)
# Address: 0x0da35d10 - 0x0da35d74 (Size: 100 bytes, Frame: 16)
.globl __glim_Scalef
.ent __glim_Scalef
__glim_Scalef:
    # Line 371
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    mov.s	$f15,$f14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20356
    mov.s	$f4,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da35d60
    addu	$gp,$t9,$v1
    # Line 374
    # lw $t9, -23356($gp) # &__glDoScale
    mov.s	$f14,$f13
    mov.s	$f13,$f12
    bal __glDoScale
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0da35d54:
    # Line 375
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da35d60:
    # Line 372
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35d54
    ld	$ra,8($sp)
.end __glim_Scalef

# Function: __glim_Scaled
# Declared: Line 377 (Source lines: 378-382)
# Address: 0x0da35d80 - 0x0da35de8 (Size: 104 bytes, Frame: 16)
.globl __glim_Scaled
.ent __glim_Scaled
__glim_Scaled:
    # Line 378
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    mov.d	$f4,$f14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20468
    mov.d	$f5,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da35dd4
    addu	$gp,$t9,$v1
    # Line 381
    # lw $t9, -23356($gp) # &__glDoScale
    cvt.s.d	$f15,$f14
    cvt.s.d	$f14,$f13
    cvt.s.d	$f13,$f12
    bal __glDoScale
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0da35dc8:
    # Line 382
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da35dd4:
    # Line 379
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35dc8
    ld	$ra,8($sp)
.end __glim_Scaled

# Function: __glim_Translatef
# Declared: Line 384 (Source lines: 385-389)
# Address: 0x0da35df0 - 0x0da35e54 (Size: 100 bytes, Frame: 16)
.globl __glim_Translatef
.ent __glim_Translatef
__glim_Translatef:
    # Line 385
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    mov.s	$f15,$f14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20580
    mov.s	$f4,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da35e40
    addu	$gp,$t9,$v1
    # Line 388
    # lw $t9, -23348($gp) # &__glDoTranslate
    mov.s	$f14,$f13
    mov.s	$f13,$f12
    bal __glDoTranslate
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0da35e34:
    # Line 389
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da35e40:
    # Line 386
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35e34
    ld	$ra,8($sp)
.end __glim_Translatef

# Function: __glim_Translated
# Declared: Line 391 (Source lines: 392-396)
# Address: 0x0da35e60 - 0x0da35ec8 (Size: 104 bytes, Frame: 16)
.globl __glim_Translated
.ent __glim_Translated
__glim_Translated:
    # Line 392
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    mov.d	$f4,$f14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20692
    mov.d	$f5,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da35eb4
    addu	$gp,$t9,$v1
    # Line 395
    # lw $t9, -23348($gp) # &__glDoTranslate
    cvt.s.d	$f15,$f14
    cvt.s.d	$f14,$f13
    cvt.s.d	$f13,$f12
    bal __glDoTranslate
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0da35ea8:
    # Line 396
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da35eb4:
    # Line 393
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35ea8
    ld	$ra,8($sp)
.end __glim_Translated

# Function: __glim_PushMatrix
# Declared: Line 398 (Source lines: 399-402)
# Address: 0x0da35ed0 - 0x0da35f4c (Size: 124 bytes, Frame: 32)
.globl __glim_PushMatrix
.ent __glim_PushMatrix
__glim_PushMatrix:
    # Line 400
    lw	$a2,4120($zero)
    lw	$a0,4112($zero)
    # Line 399
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$ra,16($sp)
    addiu	$at,$at,-20804
    sd	$gp,8($sp)
    # Line 400
    beqz	$a2,.L0da35f30
    # Line 399
    addu	$gp,$t9,$at
    # Line 400
    li	$v0,2
    beq	$a2,$v0,.L0da35f14
    sd	$a0,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35f3c
    nop
.L0da35f14:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,0($sp)
    sw	$zero,4120($zero)
.L0da35f30:
    # Line 401
    lw	$t9,11888($a0)
    jalr	$t9
    nop
.L0da35f3c:
    ld	$ra,16($sp)
    # Line 402
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PushMatrix

# Function: __glim_PopMatrix
# Declared: Line 404 (Source lines: 405-408)
# Address: 0x0da35f50 - 0x0da35fcc (Size: 124 bytes, Frame: 32)
.globl __glim_PopMatrix
.ent __glim_PopMatrix
__glim_PopMatrix:
    # Line 406
    lw	$a2,4120($zero)
    lw	$a0,4112($zero)
    # Line 405
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$ra,16($sp)
    addiu	$at,$at,-20932
    sd	$gp,8($sp)
    # Line 406
    beqz	$a2,.L0da35fb0
    # Line 405
    addu	$gp,$t9,$at
    # Line 406
    li	$v0,2
    beq	$a2,$v0,.L0da35f94
    sd	$a0,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da35fbc
    nop
.L0da35f94:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,0($sp)
    sw	$zero,4120($zero)
.L0da35fb0:
    # Line 407
    lw	$t9,11892($a0)
    jalr	$t9
    nop
.L0da35fbc:
    ld	$ra,16($sp)
    # Line 408
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PopMatrix

# Function: __glim_Frustum
# Declared: Line 410 (Source lines: 413-438)
# Address: 0x0da35fd0 - 0x0da36198 (Size: 456 bytes, Frame: 192)
.globl __glim_Frustum
.ent __glim_Frustum
__glim_Frustum:
    # Line 416
    lw	$a0,4112($zero)
    # Line 413
    addiu	$sp,$sp,-192
    sd	$ra,176($sp)
    sdc1	$f30,112($sp)
    sdc1	$f22,136($sp)
    mov.d	$f22,$f17
    sdc1	$f20,120($sp)
    mov.d	$f20,$f16
    sdc1	$f28,152($sp)
    mov.d	$f28,$f15
    # Line 416
    lw	$at,4120($zero)
    # Line 413
    mov.d	$f30,$f14
    sdc1	$f24,144($sp)
    # Line 416
    li	$v0,1
    # Line 413
    lui	$v1,0x2
    # Line 421
    dmtc1	$zero,$f4
    # Line 413
    mov.d	$f24,$f13
    sdc1	$f26,128($sp)
    addiu	$v1,$v1,-21060
    mov.d	$f26,$f12
    sd	$gp,168($sp)
    # Line 416
    beq	$at,$v0,.L0da36184
    # Line 413
    addu	$gp,$t9,$v1
    # Line 421
    c.le.d	$f16,$f4
    bc1t	.L0da36090
    # Line 423
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 421
    c.le.d $f17,$f4
    bc1t .L0da3608c
    mtc1	$zero,$f4
    sub.d	$f5,$f13,$f12
    cvt.s.d	$f5,$f5
    c.eq.s $f5,$f4
    bc1t .L0da36090
    # Line 423
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 421
    sub.d	$f6,$f15,$f14
    cvt.s.d	$f6,$f6
    c.eq.s $f6,$f4
    bc1t .L0da36090
    # Line 423
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 421
    sub.d	$f7,$f17,$f16
    cvt.s.d	$f7,$f7
    sdc1	$f6,96($sp)
    c.eq.s $f7,$f4
    sdc1	$f5,88($sp)
    sd	$a0,160($sp)
    bc1f .L0da360c0
    sdc1	$f7,104($sp)
.L0da3608c:
    # Line 423
    # lw $t9, -26452($gp) # &__glSetError
.L0da36090:
    jal	__glSetError
    li	$a0,1281
    ldc1	$f30,112($sp)
.L0da3609c:
    ldc1	$f20,120($sp)
    ldc1	$f26,128($sp)
    ldc1	$f22,136($sp)
    ld	$ra,176($sp)
    ldc1	$f24,144($sp)
    ldc1	$f28,152($sp)
    # Line 438
    ld	$gp,168($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da360c0:
    # Line 427
    ld	$t9,160($sp)
    lw	$t9,11880($t9)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 432
    add.d	$f11,$f20,$f22
    ldc1	$f14,104($sp)
    neg.d	$f11,$f11
    cvt.d.s	$f14,$f14
    div.d	$f11,$f11,$f14
    # Line 428
    ldc1	$f15,88($sp)
    # Line 430
    add.d	$f12,$f26,$f24
    # Line 428
    cvt.d.s	$f15,$f15
    # Line 430
    div.d	$f12,$f12,$f15
    # Line 429
    ldc1	$f10,96($sp)
    # Line 431
    add.d	$f13,$f30,$f28
    # Line 429
    cvt.d.s	$f10,$f10
    # Line 431
    div.d	$f13,$f13,$f10
    # Line 428
    ldc1	$f9,_lit8_4000000000000000
    mul.d	$f9,$f20,$f9
    # Line 429
    div.d	$f10,$f9,$f10
    # Line 428
    div.d	$f9,$f9,$f15
    # Line 434
    ldc1	$f8,_lit8_c000000000000000
    mul.d	$f8,$f20,$f8
    mul.d	$f8,$f22,$f8
    div.d	$f8,$f8,$f14
    # Line 437
    la	$a2,__glMultiplyMatrix
    # Line 436
    sw	$zero,64($sp)
    # Line 437
    ld	$a0,160($sp)
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    # Line 435
    mtc1	$zero,$f15
    # Line 433
    lwc1	$f14,_lit_bf800000
    # Line 435
    swc1	$f15,60($sp)
    # Line 433
    swc1	$f14,44($sp)
    # Line 431
    cvt.s.d	$f13,$f13
    # Line 430
    cvt.s.d	$f12,$f12
    # Line 431
    swc1	$f13,36($sp)
    # Line 432
    cvt.s.d	$f11,$f11
    # Line 430
    swc1	$f12,32($sp)
    # Line 429
    cvt.s.d	$f10,$f10
    # Line 432
    swc1	$f11,40($sp)
    # Line 428
    cvt.s.d	$f9,$f9
    # Line 429
    swc1	$f10,20($sp)
    # Line 428
    swc1	$f9,0($sp)
    # Line 434
    cvt.s.d	$f8,$f8
    # Line 437
    addiu	$a1,$sp,0
    bal __glDoMultMatrix
    # Line 434
    swc1	$f8,56($sp)
    b	.L0da3609c
    ldc1	$f30,112($sp)
.L0da36184:
    # Line 416
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da3609c
    ldc1	$f30,112($sp)
.end __glim_Frustum

# Function: __glim_Ortho
# Declared: Line 440 (Source lines: 442-482)
# Address: 0x0da361a0 - 0x0da363a0 (Size: 512 bytes, Frame: 192)
.globl __glim_Ortho
.ent __glim_Ortho
__glim_Ortho:
    # Line 442
    addiu	$sp,$sp,-192
    sd	$s0,152($sp)
    # Line 446
    lw	$s0,4112($zero)
    sd	$ra,184($sp)
    sdc1	$f24,176($sp)
    # Line 442
    sdc1	$f20,120($sp)
    mov.d	$f4,$f17
    sdc1	$f30,112($sp)
    mov.d	$f30,$f16
    sdc1	$f28,144($sp)
    mov.d	$f28,$f15
    # Line 446
    lw	$at,4120($zero)
    # Line 442
    mov.d	$f20,$f14
    sdc1	$f22,136($sp)
    # Line 446
    li	$v0,1
    # Line 442
    lui	$v1,0x2
    mov.d	$f22,$f13
    # Line 451
    dmtc1	$zero,$f24
    # Line 442
    sdc1	$f26,128($sp)
    addiu	$v1,$v1,-21524
    mov.d	$f26,$f12
    sd	$gp,160($sp)
    # Line 446
    beq	$at,$v0,.L0da3638c
    # Line 442
    addu	$gp,$t9,$v1
    # Line 451
    sub.d	$f5,$f13,$f12
    c.eq.d	$f5,$f24
    bc1t	.L0da36240
    # Line 452
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 451
    sub.d	$f6,$f15,$f14
    c.eq.d $f6,$f24
    bc1t .L0da36240
    # Line 452
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 451
    sub.d	$f0,$f17,$f16
    sdc1	$f17,168($sp)
    c.eq.d $f0,$f24
    sdc1	$f6,96($sp)
    sdc1	$f5,88($sp)
    bc1f .L0da36250
    sdc1	$f0,104($sp)
    # Line 452
    # lw $t9, -26452($gp) # &__glSetError
.L0da36240:
    jal	__glSetError
    li	$a0,1281
    b	.L0da36364
    ld	$s0,152($sp)
.L0da36250:
    # Line 456
    lw	$t9,11880($s0)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 459
    ldc1	$f9,96($sp)
    # Line 457
    ldc1	$f5,_lit8_4000000000000000
    # Line 459
    div.d	$f6,$f5,$f9
    # Line 457
    ldc1	$f8,88($sp)
    div.d	$f5,$f5,$f8
    # Line 461
    ldc1	$f10,104($sp)
    ldc1	$f7,_lit8_c000000000000000
    div.d	$f7,$f7,$f10
    # Line 458
    add.d	$f1,$f26,$f22
    neg.d	$f1,$f1
    div.d	$f1,$f1,$f8
    # Line 460
    add.d	$f2,$f20,$f28
    neg.d	$f2,$f2
    div.d	$f2,$f2,$f9
    # Line 462
    ldc1	$f4,168($sp)
    add.d	$f3,$f30,$f4
    neg.d	$f3,$f3
    div.d	$f3,$f3,$f10
    # Line 468
    c.eq.d $f26,$f24
    # Line 461
    cvt.s.d	$f7,$f7
    # Line 459
    cvt.s.d	$f6,$f6
    # Line 461
    swc1	$f7,40($sp)
    # Line 457
    cvt.s.d	$f5,$f5
    # Line 459
    swc1	$f6,20($sp)
    # Line 457
    swc1	$f5,0($sp)
    # Line 460
    cvt.s.d	$f2,$f2
    # Line 458
    cvt.s.d	$f1,$f1
    # Line 460
    swc1	$f2,52($sp)
    # Line 458
    swc1	$f1,48($sp)
    # Line 462
    cvt.s.d	$f3,$f3
    # Line 468
    bc1f .L0da36344
    # Line 462
    swc1	$f3,56($sp)
    # Line 468
    c.eq.d $f20,$f24
    bc1f .L0da36348
    # Line 478
    li	$a5,3
    # Line 468
    lw	$a0,1696($s0)
    mtc1	$a0,$f8
    cvt.d.w	$f8,$f8
    c.eq.d $f8,$f22
    lw	$a1,1700($s0)
    bc1f .L0da36344
    mtc1	$a1,$f9
    cvt.d.w	$f9,$f9
    c.eq.d $f9,$f28
    bc1f .L0da36348
    # Line 478
    li	$a5,3
    # Line 468
    c.le.d $f30,$f24
    bc1f .L0da36348
    # Line 478
    li	$a5,3
    # Line 468
    c.le.d	$f24,$f4
    bc1f	.L0da36344
    # Line 474
    li	$a4,5
    sw	$a4,64($sp)
    # Line 475
    lw	$a3,1696($s0)
    sh	$a3,68($sp)
    # Line 476
    lw	$a2,1700($s0)
    b	.L0da3634c
    sh	$a2,70($sp)
.L0da36344:
    # Line 478
    li	$a5,3
.L0da36348:
    sw	$a5,64($sp)
.L0da3634c:
    # Line 481
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    move	$a0,$s0
    la	$a2,__glMultiplyMatrix
    bal __glDoMultMatrix
    addiu	$a1,$sp,0
    ld	$s0,152($sp)
.L0da36364:
    ldc1	$f30,112($sp)
    ldc1	$f20,120($sp)
    ldc1	$f26,128($sp)
    ldc1	$f22,136($sp)
    ld	$ra,184($sp)
    ldc1	$f24,176($sp)
    ldc1	$f28,144($sp)
    # Line 482
    ld	$gp,160($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da3638c:
    # Line 446
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da36364
    ld	$s0,152($sp)
.end __glim_Ortho

# Function: __glUpdateViewport
# Declared: Line 484 (Source lines: 489-505)
# Address: 0x0da363a0 - 0x0da36450 (Size: 176 bytes, Frame: 0)
.globl __glUpdateViewport
.ent __glUpdateViewport
__glUpdateViewport:
    # Line 489
    lw	$a1,1696($a0)
    # Line 492
    lw	$v1,1688($a0)
    # Line 489
    mtc1	$a1,$f2
    # Line 492
    mtc1	$v1,$f1
    # Line 489
    cvt.s.w	$f2,$f2
    lwc1	$f6,3540($a0)
    # Line 490
    lw	$v0,1700($a0)
    # Line 492
    cvt.s.w	$f1,$f1
    # Line 490
    mtc1	$v0,$f5
    # Line 492
    madd.s	$f1,$f1,$f2,$f6
    lwc1	$f0,3668($a0)
    # Line 490
    cvt.s.w	$f5,$f5
    # Line 492
    lbu	$at,4848($a0)
    # Line 489
    mul.s	$f2,$f2,$f6
    # Line 491
    swc1	$f2,1720($a0)
    # Line 492
    add.s	$f0,$f0,$f1
    # Line 490
    mul.s	$f4,$f5,$f6
    # Line 492
    beqz	$at,.L0da3642c
    swc1	$f0,1724($a0)
    # Line 496
    lw	$a3,1692($a0)
    lw	$a2,3704($a0)
    mtc1	$a3,$f8
    mtc1	$a2,$f7
    cvt.s.w	$f8,$f8
    cvt.s.w	$f7,$f7
    madd.s	$f6,$f8,$f5,$f6
    lwc1	$f5,3676($a0)
    sub.s	$f5,$f7,$f5
    lwc1	$f3,3672($a0)
    sub.s	$f5,$f5,$f6
    # Line 495
    neg.s	$f6,$f4
    swc1	$f6,1728($a0)
    # Line 496
    add.s	$f3,$f3,$f5
    # Line 505
    jr	$ra
    # Line 496
    swc1	$f3,1732($a0)
.L0da3642c:
    # Line 502
    lw	$a4,1692($a0)
    mtc1	$a4,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f10,$f10,$f5,$f6
    lwc1	$f9,3672($a0)
    # Line 501
    swc1	$f4,1728($a0)
    # Line 502
    add.s	$f9,$f9,$f10
    # Line 505
    jr	$ra
    # Line 502
    swc1	$f9,1732($a0)
.end __glUpdateViewport

# Function: __glUpdateViewportTransform
# Declared: Line 507 (Source lines: 508-530)
# Address: 0x0da36450 - 0x0da364fc (Size: 172 bytes, Frame: 16)
.globl __glUpdateViewportTransform
.ent __glUpdateViewportTransform
__glUpdateViewportTransform:
    # Line 508
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 529
    lw	$a1,29660($a0)
    # Line 514
    lw	$a6,1696($a0)
    # Line 518
    lw	$a4,1700($a0)
    # Line 513
    lw	$t0,3660($a0)
    lw	$a7,1688($a0)
    # Line 508
    lui	$a3,0x2
    # Line 518
    lw	$t1,1692($a0)
    # Line 508
    addiu	$a3,$a3,-22212
    # Line 513
    addu	$a7,$a7,$t0
    # Line 518
    lw	$t0,3704($a0)
    # Line 515
    mtc1	$a7,$f3
    # Line 518
    lw	$a5,3664($a0)
    addu	$t1,$t1,$a4
    # Line 513
    sw	$a7,29716($a0)
    # Line 514
    addu	$a6,$a6,$a7
    # Line 518
    subu	$t0,$t0,$t1
    # Line 514
    sw	$a6,29724($a0)
    # Line 516
    mtc1	$a6,$f2
    # Line 518
    addu	$a5,$a5,$t0
    sd	$gp,8($sp)
    # Line 522
    mtc1	$a5,$f1
    # Line 521
    addu	$a4,$a4,$a5
    # Line 508
    addu	$gp,$t9,$a3
    # Line 529
    lw	$t9,11860($a0)
    # Line 515
    cvt.s.w	$f3,$f3
    # Line 523
    mtc1	$a4,$f0
    # Line 518
    sw	$a5,29720($a0)
    # Line 516
    cvt.s.w	$f2,$f2
    # Line 521
    sw	$a4,29728($a0)
    # Line 522
    cvt.s.w	$f1,$f1
    # Line 515
    swc1	$f3,29732($a0)
    # Line 523
    cvt.s.w	$f0,$f0
    # Line 516
    swc1	$f2,29740($a0)
    # Line 522
    swc1	$f1,29736($a0)
    # Line 529
    addiu	$a1,$a1,176
    jalr	$t9
    # Line 523
    swc1	$f0,29744($a0)
    ld	$ra,0($sp)
    # Line 530
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glUpdateViewportTransform

# Function: __glim_Viewport
# Declared: Line 532 (Source lines: 533-560)
# Address: 0x0da36500 - 0x0da365f0 (Size: 240 bytes, Frame: 32)
.globl __glim_Viewport
.ent __glim_Viewport
__glim_Viewport:
    # Line 533
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 534
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 533
    lui	$v1,0x2
    move	$a5,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-22388
    sd	$gp,8($sp)
    # Line 534
    beq	$at,$v0,.L0da365d8
    # Line 533
    addu	$gp,$t9,$v1
    # Line 536
    bltz	$a2,.L0da365c4
    # Line 537
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 536
    bltz	$a3,.L0da365c4
    # Line 537
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 549
    sw	$a1,1692($s0)
    # Line 538
    lw	$a4,3620($s0)
    # Line 542
    lw	$a1,3616($s0)
    # Line 553
    # lw $t9, -23452($gp) # &__glUpdateViewport
    # Line 538
    slt	$a6,$a4,$a3
    # Line 548
    sw	$a0,1688($s0)
    movz	$a4,$a3,$a6
    # Line 542
    slt	$a3,$a1,$a2
    # Line 551
    sw	$a4,1700($s0)
    movz	$a1,$a2,$a3
    # Line 553
    move	$a0,$s0
    bal __glUpdateViewport
    # Line 550
    sw	$a1,1696($s0)
    # Line 555
    lw	$t9,11912($s0)
    jal	__glUpdateViewport
    move	$a0,$s0
    # Line 557
    # lw $t9, -23448($gp) # &__glUpdateViewportTransform
    bal __glUpdateViewportTransform
    move	$a0,$s0
    # Line 559
    li	$a6,2
    sw	$a6,4120($zero)
    lw	$a5,11756($s0)
    ld	$ra,16($sp)
    # Line 560
    ld	$gp,8($sp)
    # Line 559
    ori	$a5,$a5,0x1
    sw	$a5,11756($s0)
    # Line 560
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da365b4:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 537
    # lw $t9, -26452($gp) # &__glSetError
.L0da365c4:
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0da365b4
    ld	$ra,16($sp)
.L0da365d8:
    # Line 534
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da365b4
    ld	$ra,16($sp)
.end __glim_Viewport

# Function: __glim_DepthRange
# Declared: Line 562 (Source lines: 563-568)
# Address: 0x0da365f0 - 0x0da3667c (Size: 140 bytes, Frame: 32)
.globl __glim_DepthRange
.ent __glim_DepthRange
__glim_DepthRange:
    # Line 564
    lw	$a0,4112($zero)
    # Line 563
    addiu	$sp,$sp,-32
    # Line 564
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 563
    lui	$v1,0x2
    sd	$ra,16($sp)
    addiu	$v1,$v1,-22628
    mov.d	$f14,$f13
    sd	$gp,8($sp)
    # Line 564
    beq	$at,$v0,.L0da36668
    # Line 563
    addu	$gp,$t9,$v1
    # Line 566
    # lw $t9, -32684($gp) # &sub_0da30000
    addiu	$t9,$t9,20912
    ld	$a0,0($sp)
    bal __glMultiplyMatrix
    mov.d	$f13,$f12
    # Line 567
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$v0,0($sp)
    ld	$ra,16($sp)
    lw	$at,11756($v0)
    # Line 568
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 567
    ori	$at,$at,0x1
    # Line 568
    jr	$ra
    # Line 567
    sw	$at,11756($v0)
.L0da3665c:
    # Line 568
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da36668:
    # Line 564
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da3665c
    ld	$ra,16($sp)
.end __glim_DepthRange

# Function: __glReadjustZCounts
# Declared: Line 597 (Source lines: 598-612)
# Address: 0x0da36680 - 0x0da36728 (Size: 168 bytes, Frame: 32)
.globl __glReadjustZCounts
.ent __glReadjustZCounts
__glReadjustZCounts:
    # Line 599
    lbu	$v0,1636($a0)
    # Line 598
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$at,$at,-22772
    sd	$gp,8($sp)
    # Line 599
    beqz	$v0,.L0da36718
    # Line 598
    addu	$gp,$t9,$at
    # Line 599
    lbu	$v0,3225($a0)
    beqz	$v0,.L0da36718
    nop
    lw	$a2,31312($a0)
    lw	$v1,31308($a0)
    beq	$v1,$a2,.L0da36718
    nop
    # Line 602
    lw	$t9,31336($s0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$s0,31228
    lw	$a2,31312($s0)
    lw	$a0,31308($s0)
    lui	$a1,0x8000
    xor	$a0,$a0,$a2
    and	$a0,$a0,$a1
    # Line 612
    ld	$gp,8($sp)
    # Line 602
    beqz	$a0,.L0da36708
    ld	$ra,16($sp)
    # Line 607
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11756($s0)
    lw	$a2,31312($s0)
    ori	$a1,$a1,0x80
    sw	$a1,11756($s0)
.L0da36708:
    # Line 610
    sw	$a2,31308($s0)
    # Line 612
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da36718:
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glReadjustZCounts

# Function: __glim_Scissor
# Declared: Line 614 (Source lines: 615-642)
# Address: 0x0da36730 - 0x0da36844 (Size: 276 bytes, Frame: 192)
.globl __glim_Scissor
.ent __glim_Scissor
__glim_Scissor:
    # Line 615
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 616
    lw	$s0,4112($zero)
    # Line 615
    sd	$s1,24($sp)
    sd	$s2,32($sp)
    move	$s2,$a3
    move	$s1,$a2
    # Line 616
    lw	$at,4120($zero)
    # Line 615
    sd	$s3,8($sp)
    # Line 616
    li	$v0,1
    # Line 615
    lui	$v1,0x2
    move	$s3,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-22948
    sd	$gp,40($sp)
    # Line 616
    beq	$at,$v0,.L0da36830
    # Line 615
    addu	$gp,$t9,$v1
    # Line 618
    bltz	$a2,.L0da36820
    # Line 619
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 618
    bltz	$a3,.L0da36820
    # Line 619
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 624
    lw	$a0,2524($s0)
    lw	$a4,2536($s0)
    lw	$a3,2532($s0)
    bne	$a0,$s3,.L0da367b8
    sd	$a1,0($sp)
    ld	$a2,0($sp)
    lw	$a1,2528($s0)
    bne	$a1,$a2,.L0da367b8
    nop
    bne	$a3,$s1,.L0da367b8
    nop
    beq	$a4,$s2,.L0da367fc
    nop
.L0da367b8:
    # Line 628
    lw	$a5,1792($s0)
    andi	$a5,$a5,0x4000
    beqz	$a5,.L0da367d0
    # Line 633
    nop	# was lw $t9, -23436($gp) # &__glReadjustZCounts
    bal __glReadjustZCounts
    move	$a0,$s0
.L0da367d0:
    # Line 639
    sw	$s2,2536($s0)
    # Line 638
    sw	$s1,2532($s0)
    # Line 640
    lw	$t9,11908($s0)
    # Line 636
    sw	$s3,2524($s0)
    # Line 637
    ld	$a6,0($sp)
    # Line 640
    move	$a0,$s0
    jal	__glReadjustZCounts
    # Line 637
    sw	$a6,2528($s0)
    # Line 641
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
.L0da367fc:
    ld	$s3,8($sp)
.L0da36800:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 642
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 619
    # lw $t9, -26452($gp) # &__glSetError
.L0da36820:
    jal	__glSetError
    li	$a0,1281
    b	.L0da36800
    ld	$s3,8($sp)
.L0da36830:
    # Line 616
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da36800
    ld	$s3,8($sp)
.end __glim_Scissor

# Function: __glim_ClipPlane
# Declared: Line 644 (Source lines: 645-675)
# Address: 0x0da36850 - 0x0da369a4 (Size: 340 bytes, Frame: 192)
.globl __glim_ClipPlane
.ent __glim_ClipPlane
__glim_ClipPlane:
    # Line 645
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 648
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 645
    sd	$s1,32($sp)
    # Line 648
    li	$v0,1
    # Line 645
    lui	$v1,0x2
    move	$s1,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-23236
    sd	$gp,40($sp)
    # Line 648
    beq	$at,$v0,.L0da36988
    # Line 645
    addu	$gp,$t9,$v1
    # Line 648
    sltiu	$a0,$a0,12288
    bnez	$a0,.L0da36970
    # Line 651
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 654
    lw	$a3,3600($s0)
    addiu	$a2,$s1,-12288
    sltu	$a2,$a2,$a3
    beqz	$a2,.L0da36958
    # Line 656
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 659
    ldc1	$f3,0($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    # Line 660
    ldc1	$f2,8($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    # Line 661
    ldc1	$f1,16($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    # Line 662
    ldc1	$f0,24($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 667
    lw	$a4,29660($s0)
    lbu	$a5,268($a4)
    beqz	$a5,.L0da368fc
    nop
    # Line 669
    lw	$t9,11900($s0)
    sd	$a4,16($sp)
    move	$a0,$s0
    jal	__glSetError
    ld	$a1,16($sp)
    ld	$a4,16($sp)
.L0da368fc:
    # Line 671
    lw	$t9,168($a4)
    addiu	$a2,$a4,88
    lw	$a0,1748($s0)
    addiu	$a1,$sp,0
    sll	$a3,$s1,0x4
    addu	$a0,$a0,$a3
    lui	$a3,0x3
    jalr	$t9
    subu	$a0,$a0,$a3
    # Line 675
    ld	$gp,40($sp)
    # Line 674
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    ld	$ra,48($sp)
    # Line 675
    ld	$s1,32($sp)
    # Line 674
    ori	$a4,$a4,0x1
    sw	$a4,11756($s0)
    # Line 675
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3694c:
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da36958:
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 656
    jalr	$t9
    li	$a0,1280
    b	.L0da3694c
    ld	$ra,48($sp)
.L0da36970:
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 651
    jalr	$t9
    li	$a0,1280
    b	.L0da3694c
    ld	$ra,48($sp)
.L0da36988:
    # Line 648
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da3694c
    ld	$ra,48($sp)
.end __glim_ClipPlane

# Function: __glPushModelViewMatrix
# Declared: Line 681 (Source lines: 682-696)
# Address: 0x0da369b0 - 0x0da36b5c (Size: 428 bytes, Frame: 192)
.globl __glPushModelViewMatrix
.ent __glPushModelViewMatrix
__glPushModelViewMatrix:
    # Line 689
    lw	$v1,3788($a0)
    sll	$v0,$v1,0x4
    lw	$at,29656($a0)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x4
    lw	$a4,29660($a0)
    addu	$at,$at,$v0
    # Line 682
    addiu	$sp,$sp,-64
    # Line 689
    addiu	$at,$at,-272
    # Line 682
    lui	$v0,0x2
    # Line 689
    sltu	$at,$a4,$at
    sd	$ra,8($sp)
    # Line 682
    addiu	$v0,$v0,-23588
    sd	$gp,56($sp)
    # Line 689
    beqz	$at,.L0da36b48
    # Line 682
    addu	$gp,$t9,$v0
    # Line 691
    addiu	$a5,$a4,272
    addiu	$t0,$a4,12
    addiu	$t2,$a4,28
    move	$a3,$zero
    sd	$s2,24($sp)
    li	$a2,68
    li	$a6,4
    sd	$s5,48($sp)
    addiu	$s5,$a4,4
    addiu	$s2,$a4,8
    sd	$s3,16($sp)
    addiu	$s3,$a4,20
    addiu	$t9,$a4,24
    sd	$s1,40($sp)
    addiu	$s1,$a4,16
    addiu	$t1,$a5,28
    sd	$s4,0($sp)
    addiu	$s4,$a5,4
    sd	$s0,32($sp)
    addiu	$s0,$a5,8
.L0da36a40:
    addiu	$a6,$a6,-1
    addu	$a1,$a3,$a4
    addiu	$a2,$a2,-1
    addu	$a7,$a3,$a5
    lw	$a1,0($a1)
    addiu	$a3,$a3,4
    bnez	$a6,.L0da36a40
    sw	$a1,0($a7)
    addiu	$ra,$a5,16
    addiu	$t8,$a5,24
    addiu	$t3,$a5,20
    li	$a7,0x20
    addiu	$a6,$a5,12
    nop
    nop
    nop
.L0da36a80:
    addu	$a1,$a3,$a4
    addu	$at,$a3,$a5
    lw	$a1,0($a1)
    addu	$v1,$a3,$s5
    sw	$a1,0($at)
    addu	$a1,$a3,$s4
    lw	$v1,0($v1)
    addu	$v0,$a3,$s2
    sw	$v1,0($a1)
    addu	$v1,$a3,$s0
    lw	$v0,0($v0)
    addu	$at,$a3,$t0
    sw	$v0,0($v1)
    addu	$v0,$a3,$a6
    lw	$at,0($at)
    addu	$a1,$a3,$s1
    sw	$at,0($v0)
    addu	$at,$a3,$ra
    lw	$a1,0($a1)
    addu	$v1,$a3,$s3
    sw	$a1,0($at)
    addu	$a1,$a3,$t3
    lw	$v1,0($v1)
    addu	$v0,$a3,$t9
    sw	$v1,0($a1)
    addu	$v1,$a3,$t8
    lw	$v0,0($v0)
    addiu	$a2,$a2,-8
    addu	$at,$a3,$t2
    sw	$v0,0($v1)
    addu	$v0,$a3,$t1
    lw	$at,0($at)
    addu	$a3,$a3,$a7
    bgtz	$a2,.L0da36a80
    sw	$at,0($v0)
    # Line 692
    addiu	$a2,$a4,272
    sw	$a2,29660($a0)
    # Line 696
    ld	$gp,56($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    ld	$ra,8($sp)
    ld	$s3,16($sp)
    ld	$s4,0($sp)
    ld	$s5,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da36b3c:
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da36b48:
    # Line 694
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1283
    b	.L0da36b3c
    ld	$ra,8($sp)
.end __glPushModelViewMatrix

# Function: __glPopModelViewMatrix
# Declared: Line 698 (Source lines: 699-722)
# Address: 0x0da36b60 - 0x0da36c04 (Size: 164 bytes, Frame: 32)
.globl __glPopModelViewMatrix
.ent __glPopModelViewMatrix
__glPopModelViewMatrix:
    # Line 704
    lw	$a4,29660($a0)
    lw	$at,29656($a0)
    # Line 699
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$v0,0x2
    # Line 704
    sltu	$at,$at,$a4
    # Line 699
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-24020
    sd	$gp,16($sp)
    # Line 704
    beqz	$at,.L0da36bf0
    # Line 699
    addu	$gp,$t9,$v0
    # Line 706
    addiu	$a1,$a4,-272
    sw	$a1,29660($a0)
    # Line 714
    lw	$a2,29668($a0)
    lw	$v0,-8($a4)
    lw	$a6,264($a2)
    addiu	$a5,$a4,-96
    bne	$v0,$a6,.L0da36bd4
    nop
.L0da36bb0:
    # Line 719
    lw	$t9,11860($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a5
.L0da36bc0:
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    # Line 722
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da36bd4:
    # Line 716
    sw	$a6,-8($a4)
    # Line 717
    lw	$t9,11884($a0)
    sd	$a5,0($sp)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0da36bb0
    ld	$a5,0($sp)
.L0da36bf0:
    # Line 721
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1284
    b	.L0da36bc0
    nop
.end __glPopModelViewMatrix

# Function: __glLoadIdentityModelViewMatrix
# Declared: Line 726 (Source lines: 727-744)
# Address: 0x0da36c10 - 0x0da36cc8 (Size: 184 bytes, Frame: 48)
.globl __glLoadIdentityModelViewMatrix
.ent __glLoadIdentityModelViewMatrix
__glLoadIdentityModelViewMatrix:
    # Line 727
    addiu	$sp,$sp,-48
    sd	$s8,32($sp)
    sd	$s1,8($sp)
    lui	$at,0x2
    sd	$gp,24($sp)
    addiu	$at,$at,-24196
    addu	$gp,$t9,$at
    # Line 732
    lw	$t9,11880($a0)
    # Line 731
    lw	$s1,29660($a0)
    # Line 727
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,16($sp)
    # Line 732
    jalr	$t9
    move	$a0,$s1
    # Line 733
    lw	$t9,11880($s0)
    addiu	$s8,$s1,88
    jalr	$t9
    move	$a0,$s8
    # Line 734
    lw	$t9,11852($s0)
    # Line 736
    move	$a0,$s0
    # Line 735
    sb	$zero,268($s1)
    # Line 736
    jalr	$t9
    move	$a1,$s1
    # Line 737
    lw	$t9,11856($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s8
    # Line 740
    lw	$a2,29668($s0)
    # Line 741
    lw	$v0,264($a2)
    sw	$v0,264($s1)
    # Line 742
    lw	$t9,11884($s0)
    move	$a1,$s1
    addiu	$s8,$s1,176
    jalr	$t9
    move	$a0,$s8
    # Line 743
    lw	$t9,11860($s0)
    move	$a0,$s0
    ld	$s1,8($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,32($sp)
    # Line 744
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glLoadIdentityModelViewMatrix

# Function: __glComputeInverseTranspose
# Declared: Line 746 (Source lines: 747-751)
# Address: 0x0da36cd0 - 0x0da36d30 (Size: 96 bytes, Frame: 48)
.globl __glComputeInverseTranspose
.ent __glComputeInverseTranspose
__glComputeInverseTranspose:
    # Line 747
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,-24388
    addu	$gp,$t9,$v0
    # Line 748
    lw	$t9,11876($a0)
    # Line 747
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 748
    addiu	$a0,$a1,88
    jalr	$t9
    sd	$a0,32($sp)
    # Line 749
    lw	$t9,11856($s8)
    move	$a0,$s8
    jalr	$t9
    ld	$a1,32($sp)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 750
    ld	$v1,24($sp)
    # Line 751
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 750
    sb	$zero,268($v1)
.end __glComputeInverseTranspose

# Function: __glPushProjectionMatrix
# Declared: Line 755 (Source lines: 756-771)
# Address: 0x0da36d30 - 0x0da36e48 (Size: 280 bytes, Frame: 16)
.globl __glPushProjectionMatrix
.ent __glPushProjectionMatrix
__glPushProjectionMatrix:
    # Line 763
    lw	$a1,3792($a0)
    sll	$v1,$a1,0x4
    lw	$v0,29664($a0)
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    lw	$a4,29668($a0)
    addu	$v0,$v0,$v1
    li	$a6,2
    addiu	$v0,$v0,-272
    # Line 756
    lui	$at,0x2
    # Line 763
    sltu	$v0,$a4,$v0
    # Line 756
    addiu	$sp,$sp,-16
    addiu	$at,$at,-24484
    sd	$gp,0($sp)
    # Line 763
    beqz	$v0,.L0da36e30
    # Line 756
    addu	$gp,$t9,$at
    addiu	$t3,$a4,8
    addiu	$t8,$a4,4
    li	$t1,0x10
    # Line 765
    move	$a3,$zero
    addiu	$a5,$a4,272
    li	$a2,22
    # Line 771
    ld	$gp,0($sp)
    addiu	$t2,$a5,8
.L0da36d90:
    addiu	$a6,$a6,-1
    # Line 765
    addu	$a7,$a3,$a4
    addiu	$a2,$a2,-1
    addu	$t0,$a3,$a5
    lw	$a7,0($a7)
    addiu	$a3,$a3,4
    bnez	$a6,.L0da36d90
    sw	$a7,0($t0)
    addiu	$a7,$a4,12
    addiu	$a6,$a5,12
    addiu	$t0,$a5,4
    nop
.L0da36dc0:
    addu	$v1,$a3,$a4
    addu	$a1,$a3,$a5
    lw	$v1,0($v1)
    addu	$v0,$a3,$t8
    sw	$v1,0($a1)
    addu	$v1,$a3,$t0
    lw	$v0,0($v0)
    addu	$at,$a3,$t3
    sw	$v0,0($v1)
    addu	$v0,$a3,$t2
    lw	$at,0($at)
    addiu	$a2,$a2,-4
    addu	$t9,$a3,$a7
    sw	$at,0($v0)
    addu	$at,$a3,$a6
    lw	$t9,0($t9)
    addu	$a3,$a3,$t1
    bgtz	$a2,.L0da36dc0
    sw	$t9,0($at)
    # Line 766
    lw	$a2,264($a4)
    # Line 771
    addiu	$sp,$sp,16
    # Line 766
    sw	$a2,536($a4)
    # Line 767
    addiu	$a1,$a4,272
    # Line 771
    jr	$ra
    # Line 767
    sw	$a1,29668($a0)
.L0da36e24:
    # Line 771
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da36e30:
    # Line 769
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0da36e24
    ld	$ra,8($sp)
.end __glPushProjectionMatrix

# Function: __glPopProjectionMatrix
# Declared: Line 773 (Source lines: 774-797)
# Address: 0x0da36e50 - 0x0da36ef0 (Size: 160 bytes, Frame: 32)
.globl __glPopProjectionMatrix
.ent __glPopProjectionMatrix
__glPopProjectionMatrix:
    # Line 779
    lw	$a5,29668($a0)
    lw	$at,29664($a0)
    # Line 774
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$v0,0x2
    # Line 779
    sltu	$at,$at,$a5
    # Line 774
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-24772
    sd	$gp,16($sp)
    # Line 779
    beqz	$at,.L0da36edc
    # Line 774
    addu	$gp,$t9,$v0
    # Line 781
    addiu	$a2,$a5,-272
    sw	$a2,29668($a0)
    # Line 788
    lw	$a1,29660($a0)
    lw	$a6,-8($a5)
    lw	$v0,264($a1)
    bne	$v0,$a6,.L0da36ec0
    addiu	$a4,$a1,176
.L0da36e9c:
    # Line 794
    lw	$t9,11860($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a4
.L0da36eac:
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    # Line 797
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da36ec0:
    # Line 791
    sw	$a6,264($a1)
    # Line 792
    lw	$t9,11884($a0)
    sd	$a4,0($sp)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0da36e9c
    ld	$a4,0($sp)
.L0da36edc:
    # Line 796
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1284
    b	.L0da36eac
    nop
.end __glPopProjectionMatrix

# Function: __glLoadIdentityProjectionMatrix
# Declared: Line 801 (Source lines: 802-821)
# Address: 0x0da36ef0 - 0x0da36fb0 (Size: 192 bytes, Frame: 48)
.globl __glLoadIdentityProjectionMatrix
.ent __glLoadIdentityProjectionMatrix
__glLoadIdentityProjectionMatrix:
    # Line 802
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    lui	$at,0x2
    sd	$gp,24($sp)
    addiu	$at,$at,-24932
    addu	$gp,$t9,$at
    # Line 807
    lw	$t9,11880($a0)
    # Line 806
    lw	$s1,29668($a0)
    # Line 802
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,16($sp)
    # Line 807
    jalr	$t9
    move	$a0,$s1
    # Line 809
    lw	$t9,11852($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 810
    lw	$a4,29672($s0)
    addiu	$a4,$a4,1
    beqz	$a4,.L0da36f98
    sw	$a4,29672($s0)
    # Line 813
    sw	$a4,264($s1)
    sd	$s8,32($sp)
.L0da36f4c:
    # Line 817
    lw	$s8,29660($s0)
    # Line 818
    sw	$a4,264($s8)
    # Line 819
    lw	$t9,11884($s0)
    move	$a2,$s1
    move	$a1,$s8
    addiu	$s8,$s8,176
    jalr	$t9
    move	$a0,$s8
    # Line 820
    lw	$t9,11860($s0)
    move	$a0,$s0
    ld	$s1,8($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,32($sp)
    # Line 821
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da36f98:
    # Line 811
    # lw $t9, -23520($gp) # &__glInvalidateSequenceNumbers
    bal __glInvalidateSequenceNumbers
    move	$a0,$s0
    lw	$a4,264($s1)
    b	.L0da36f4c
    sd	$s8,32($sp)
.end __glLoadIdentityProjectionMatrix

# Function: __glPushTextureMatrix
# Declared: Line 825 (Source lines: 826-840)
# Address: 0x0da36fb0 - 0x0da370c0 (Size: 272 bytes, Frame: 16)
.globl __glPushTextureMatrix
.ent __glPushTextureMatrix
__glPushTextureMatrix:
    # Line 833
    lw	$a1,3796($a0)
    sll	$v1,$a1,0x4
    lw	$v0,29676($a0)
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    lw	$a4,29680($a0)
    addu	$v0,$v0,$v1
    li	$a6,2
    addiu	$v0,$v0,-272
    # Line 826
    lui	$at,0x2
    # Line 833
    sltu	$v0,$a4,$v0
    # Line 826
    addiu	$sp,$sp,-16
    addiu	$at,$at,-25124
    sd	$gp,0($sp)
    # Line 833
    beqz	$v0,.L0da370a8
    # Line 826
    addu	$gp,$t9,$at
    addiu	$t3,$a4,8
    addiu	$t8,$a4,4
    li	$t1,0x10
    # Line 835
    move	$a3,$zero
    addiu	$a5,$a4,272
    li	$a2,22
    # Line 840
    ld	$gp,0($sp)
    addiu	$t2,$a5,8
.L0da37010:
    addiu	$a6,$a6,-1
    # Line 835
    addu	$a7,$a3,$a4
    addiu	$a2,$a2,-1
    addu	$t0,$a3,$a5
    lw	$a7,0($a7)
    addiu	$a3,$a3,4
    bnez	$a6,.L0da37010
    sw	$a7,0($t0)
    addiu	$a7,$a4,12
    addiu	$a6,$a5,12
    addiu	$t0,$a5,4
    nop
.L0da37040:
    addu	$v1,$a3,$a4
    addu	$a1,$a3,$a5
    lw	$v1,0($v1)
    addu	$v0,$a3,$t8
    sw	$v1,0($a1)
    addu	$v1,$a3,$t0
    lw	$v0,0($v0)
    addu	$at,$a3,$t3
    sw	$v0,0($v1)
    addu	$v0,$a3,$t2
    lw	$at,0($at)
    addiu	$a2,$a2,-4
    addu	$t9,$a3,$a7
    sw	$at,0($v0)
    addu	$at,$a3,$a6
    lw	$t9,0($t9)
    addu	$a3,$a3,$t1
    bgtz	$a2,.L0da37040
    sw	$t9,0($at)
    # Line 836
    addiu	$a1,$a4,272
    sw	$a1,29680($a0)
    # Line 840
    jr	$ra
    addiu	$sp,$sp,16
.L0da3709c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da370a8:
    # Line 838
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0da3709c
    ld	$ra,8($sp)
.end __glPushTextureMatrix

# Function: __glPopTextureMatrix
# Declared: Line 842 (Source lines: 843-853)
# Address: 0x0da370c0 - 0x0da3711c (Size: 92 bytes, Frame: 16)
.globl __glPopTextureMatrix
.ent __glPopTextureMatrix
__glPopTextureMatrix:
    # Line 848
    lw	$a2,29680($a0)
    lw	$v0,29676($a0)
    # Line 843
    lui	$at,0x2
    # Line 848
    sltu	$v0,$v0,$a2
    # Line 843
    addiu	$sp,$sp,-16
    addiu	$at,$at,-25396
    sd	$gp,0($sp)
    # Line 848
    beqz	$v0,.L0da37104
    # Line 843
    addu	$gp,$t9,$at
    # Line 850
    addiu	$v1,$a2,-272
    sw	$v1,29680($a0)
    # Line 853
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da370f8:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da37104:
    # Line 852
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1284
    b	.L0da370f8
    ld	$ra,8($sp)
.end __glPopTextureMatrix

# Function: __glLoadIdentityTextureMatrix
# Declared: Line 857 (Source lines: 858-863)
# Address: 0x0da37120 - 0x0da37174 (Size: 84 bytes, Frame: 32)
.globl __glLoadIdentityTextureMatrix
.ent __glLoadIdentityTextureMatrix
__glLoadIdentityTextureMatrix:
    # Line 858
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    lui	$at,0x2
    sd	$gp,16($sp)
    addiu	$at,$at,-25492
    addu	$gp,$t9,$at
    # Line 861
    lw	$t9,11880($a0)
    # Line 858
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 859
    lw	$a0,29680($a0)
    # Line 861
    jalr	$t9
    # Line 859
    sd	$a0,24($sp)
    # Line 862
    lw	$t9,11852($s8)
    move	$a0,$s8
    jalr	$t9
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 863
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLoadIdentityTextureMatrix

# Function: __glPushColorMatrix
# Declared: Line 867 (Source lines: 868-882)
# Address: 0x0da37180 - 0x0da37290 (Size: 272 bytes, Frame: 16)
.globl __glPushColorMatrix
.ent __glPushColorMatrix
__glPushColorMatrix:
    # Line 875
    lw	$a1,3800($a0)
    sll	$v1,$a1,0x4
    lw	$v0,29684($a0)
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    lw	$a4,29688($a0)
    addu	$v0,$v0,$v1
    li	$a6,2
    addiu	$v0,$v0,-272
    # Line 868
    lui	$at,0x2
    # Line 875
    sltu	$v0,$a4,$v0
    # Line 868
    addiu	$sp,$sp,-16
    addiu	$at,$at,-25588
    sd	$gp,0($sp)
    # Line 875
    beqz	$v0,.L0da37278
    # Line 868
    addu	$gp,$t9,$at
    addiu	$t3,$a4,8
    addiu	$t8,$a4,4
    li	$t1,0x10
    # Line 877
    move	$a3,$zero
    addiu	$a5,$a4,272
    li	$a2,22
    # Line 882
    ld	$gp,0($sp)
    addiu	$t2,$a5,8
.L0da371e0:
    addiu	$a6,$a6,-1
    # Line 877
    addu	$a7,$a3,$a4
    addiu	$a2,$a2,-1
    addu	$t0,$a3,$a5
    lw	$a7,0($a7)
    addiu	$a3,$a3,4
    bnez	$a6,.L0da371e0
    sw	$a7,0($t0)
    addiu	$a7,$a4,12
    addiu	$a6,$a5,12
    addiu	$t0,$a5,4
    nop
.L0da37210:
    addu	$v1,$a3,$a4
    addu	$a1,$a3,$a5
    lw	$v1,0($v1)
    addu	$v0,$a3,$t8
    sw	$v1,0($a1)
    addu	$v1,$a3,$t0
    lw	$v0,0($v0)
    addu	$at,$a3,$t3
    sw	$v0,0($v1)
    addu	$v0,$a3,$t2
    lw	$at,0($at)
    addiu	$a2,$a2,-4
    addu	$t9,$a3,$a7
    sw	$at,0($v0)
    addu	$at,$a3,$a6
    lw	$t9,0($t9)
    addu	$a3,$a3,$t1
    bgtz	$a2,.L0da37210
    sw	$t9,0($at)
    # Line 878
    addiu	$a1,$a4,272
    sw	$a1,29688($a0)
    # Line 882
    jr	$ra
    addiu	$sp,$sp,16
.L0da3726c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da37278:
    # Line 880
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0da3726c
    ld	$ra,8($sp)
.end __glPushColorMatrix

# Function: __glPopColorMatrix
# Declared: Line 884 (Source lines: 885-897)
# Address: 0x0da37290 - 0x0da372ec (Size: 92 bytes, Frame: 16)
.globl __glPopColorMatrix
.ent __glPopColorMatrix
__glPopColorMatrix:
    # Line 890
    lw	$a3,29688($a0)
    lw	$at,29684($a0)
    # Line 885
    addiu	$sp,$sp,-16
    lui	$v0,0x2
    # Line 890
    sltu	$at,$at,$a3
    sd	$ra,8($sp)
    # Line 885
    addiu	$v0,$v0,-25860
    sd	$gp,0($sp)
    # Line 890
    beqz	$at,.L0da372d0
    # Line 885
    addu	$gp,$t9,$v0
    # Line 897
    # lw $t9, -28400($gp) # &__glGenMatrixSignature
    # Line 892
    addiu	$a1,$a3,-272
    # Line 897
    jal	__glGenMatrixSignature
    # Line 892
    sw	$a1,29688($a0)
    b	.L0da372dc
    nop
.L0da372d0:
    # Line 894
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1284
.L0da372dc:
    ld	$ra,8($sp)
    # Line 895
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glPopColorMatrix

# Function: __glLoadIdentityColorMatrix
# Declared: Line 900 (Source lines: 901-908)
# Address: 0x0da372f0 - 0x0da3735c (Size: 108 bytes, Frame: 32)
.globl __glLoadIdentityColorMatrix
.ent __glLoadIdentityColorMatrix
__glLoadIdentityColorMatrix:
    # Line 901
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    lui	$at,0x2
    sd	$gp,24($sp)
    addiu	$at,$at,-25956
    addu	$gp,$t9,$at
    # Line 904
    lw	$t9,11880($a0)
    # Line 902
    lw	$s1,29688($a0)
    # Line 901
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,16($sp)
    # Line 904
    jalr	$t9
    move	$a0,$s1
    # Line 905
    # lw $t9, -28400($gp) # &__glGenMatrixSignature
    move	$a0,$s0
    jal	__glGenMatrixSignature
    move	$a1,$s1
    # Line 906
    lw	$t9,11852($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 908
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLoadIdentityColorMatrix

# Function: __glDoLoadMatrix
# Declared: Line 912 (Source lines: 913-963)
# Address: 0x0da37360 - 0x0da37530 (Size: 464 bytes, Frame: 48)
.globl __glDoLoadMatrix
.ent __glDoLoadMatrix
__glDoLoadMatrix:
    # Line 917
    li	$a3,6144
    # Line 913
    addiu	$sp,$sp,-48
    # Line 917
    lw	$a2,1744($a0)
    sd	$ra,40($sp)
    li	$at,5888
    # Line 913
    lui	$v0,0x2
    sd	$a0,24($sp)
    # Line 917
    li	$a0,5890
    # Line 913
    addiu	$v0,$v0,-26068
    sd	$gp,32($sp)
    # Line 917
    beq	$a2,$at,.L0da374a8
    # Line 913
    addu	$gp,$t9,$v0
    # Line 917
    li	$v1,5889
    beq	$a2,$v1,.L0da373b8
    nop
    beq	$a2,$a0,.L0da3747c
    # Line 952
    ld	$a0,24($sp)
    # Line 917
    beq	$a2,$a3,.L0da3743c
    ld	$ra,40($sp)
.L0da373ac:
    # Line 963
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da373b8:
    # Line 934
    ld	$a0,24($sp)
    lw	$t9,11872($a0)
    # Line 933
    lw	$a0,29668($a0)
    # Line 934
    jalr	$t9
    # Line 933
    sd	$a0,16($sp)
    # Line 936
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,11852($t9)
    jalr	$t9
    ld	$a1,16($sp)
    # Line 937
    ld	$ra,24($sp)
    lw	$a4,29672($ra)
    addiu	$a4,$a4,1
    # Line 940
    ld	$a5,16($sp)
    # Line 937
    beqz	$a4,.L0da37518
    sw	$a4,29672($ra)
    # Line 940
    sw	$a4,264($a5)
.L0da373fc:
    # Line 944
    ld	$t9,24($sp)
    lw	$a0,29660($t9)
    # Line 945
    sw	$a4,264($a0)
    # Line 946
    lw	$t9,11884($t9)
    ld	$a2,16($sp)
    move	$a1,$a0
    addiu	$a0,$a0,176
    jalr	$t9
    sd	$a0,8($sp)
    # Line 947
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,8($sp)
    b	.L0da373ac
    ld	$ra,40($sp)
.L0da3743c:
    # Line 958
    ld	$a0,24($sp)
    lw	$t9,11872($a0)
    # Line 957
    lw	$a0,29688($a0)
    # Line 958
    jalr	$t9
    # Line 957
    sd	$a0,16($sp)
    # Line 959
    # lw $t9, -28400($gp) # &__glGenMatrixSignature
    ld	$a0,24($sp)
    jal	__glGenMatrixSignature
    ld	$a1,16($sp)
    # Line 960
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,11852($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0da373ac
    ld	$ra,40($sp)
.L0da3747c:
    # Line 952
    lw	$t9,11872($a0)
    # Line 951
    lw	$a0,29680($a0)
    # Line 952
    jalr	$t9
    # Line 951
    sd	$a0,16($sp)
    # Line 953
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,11852($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0da373ac
    ld	$ra,40($sp)
.L0da374a8:
    # Line 920
    ld	$a0,24($sp)
    lw	$t9,11872($a0)
    # Line 919
    lw	$a0,29660($a0)
    # Line 920
    jalr	$t9
    # Line 919
    sd	$a0,16($sp)
    # Line 921
    ld	$a1,16($sp)
    # Line 923
    ld	$a0,24($sp)
    # Line 921
    li	$a2,1
    sb	$a2,268($a1)
    # Line 923
    lw	$t9,11852($a0)
    jalr	$t9
    nop
    # Line 926
    ld	$t9,24($sp)
    lw	$a2,29668($t9)
    # Line 927
    ld	$a1,16($sp)
    lw	$ra,264($a2)
    sw	$ra,264($a1)
    # Line 928
    lw	$t9,11884($t9)
    addiu	$a0,$a1,176
    jalr	$t9
    sd	$a0,0($sp)
    # Line 929
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,0($sp)
    b	.L0da373ac
    ld	$ra,40($sp)
.L0da37518:
    # Line 938
    # lw $t9, -23520($gp) # &__glInvalidateSequenceNumbers
    bal __glInvalidateSequenceNumbers
    ld	$a0,24($sp)
    ld	$a4,16($sp)
    b	.L0da373fc
    lw	$a4,264($a4)
.end __glDoLoadMatrix

# Function: __glDoMultMatrix
# Declared: Line 965 (Source lines: 968-1016)
# Address: 0x0da37530 - 0x0da37714 (Size: 484 bytes, Frame: 192)
.globl __glDoMultMatrix
.ent __glDoMultMatrix
__glDoMultMatrix:
    # Line 968
    move	$a5,$a2
    addiu	$sp,$sp,-64
    # Line 972
    lw	$a4,1744($a0)
    sd	$ra,56($sp)
    li	$at,5888
    # Line 968
    lui	$v0,0x2
    move	$a6,$a1
    sd	$a0,40($sp)
    addiu	$v0,$v0,-26532
    sd	$gp,48($sp)
    # Line 972
    beq	$a4,$at,.L0da37688
    # Line 968
    addu	$gp,$t9,$v0
    # Line 972
    li	$v1,5889
    beq	$a4,$v1,.L0da3758c
    li	$a1,6144
    li	$a0,5890
    beq	$a4,$a0,.L0da37658
    # Line 1004
    ld	$a0,40($sp)
    # Line 972
    beq	$a4,$a1,.L0da37614
    ld	$ra,56($sp)
.L0da37580:
    # Line 1016
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3758c:
    # Line 986
    ld	$a0,40($sp)
    # Line 987
    move	$t9,$a5
    # Line 986
    lw	$a1,29668($a0)
    # Line 987
    move	$a2,$a6
    jalr	$t9
    # Line 986
    sd	$a1,16($sp)
    # Line 989
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,11852($t9)
    jalr	$t9
    ld	$a1,16($sp)
    # Line 990
    ld	$ra,40($sp)
    lw	$a4,29672($ra)
    addiu	$a4,$a4,1
    # Line 993
    ld	$a5,16($sp)
    # Line 990
    beqz	$a4,.L0da376fc
    sw	$a4,29672($ra)
    # Line 993
    sw	$a4,264($a5)
.L0da375d4:
    # Line 997
    ld	$t9,40($sp)
    lw	$a0,29660($t9)
    # Line 998
    sw	$a4,264($a0)
    # Line 999
    lw	$t9,11884($t9)
    ld	$a2,16($sp)
    move	$a1,$a0
    addiu	$a0,$a0,176
    jalr	$t9
    sd	$a0,8($sp)
    # Line 1000
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,8($sp)
    b	.L0da37580
    ld	$ra,56($sp)
.L0da37614:
    # Line 1010
    ld	$a0,40($sp)
    # Line 1011
    move	$t9,$a5
    # Line 1010
    lw	$a1,29688($a0)
    # Line 1011
    move	$a2,$a6
    jalr	$t9
    # Line 1010
    sd	$a1,16($sp)
    # Line 1012
    # lw $t9, -28400($gp) # &__glGenMatrixSignature
    ld	$a0,40($sp)
    jal	__glGenMatrixSignature
    ld	$a1,16($sp)
    # Line 1013
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,11852($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0da37580
    ld	$ra,56($sp)
.L0da37658:
    # Line 1005
    move	$t9,$a5
    # Line 1004
    lw	$a1,29680($a0)
    # Line 1005
    move	$a2,$a6
    jalr	$t9
    # Line 1004
    sd	$a1,16($sp)
    # Line 1006
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,11852($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0da37580
    ld	$ra,56($sp)
.L0da37688:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 974
    ld	$a0,40($sp)
    # Line 975
    ld	$t9,24($sp)
    ld	$a2,32($sp)
    # Line 974
    lw	$a1,29660($a0)
    # Line 975
    jalr	$t9
    # Line 974
    sd	$a1,16($sp)
    # Line 976
    ld	$a1,16($sp)
    # Line 978
    ld	$a0,40($sp)
    # Line 976
    li	$ra,1
    sb	$ra,268($a1)
    # Line 978
    lw	$t9,11852($a0)
    jalr	$t9
    nop
    # Line 981
    ld	$a0,40($sp)
    ld	$t9,24($sp)
    ld	$a1,16($sp)
    ld	$a2,32($sp)
    addiu	$a1,$a1,176
    jalr	$t9
    sd	$a1,0($sp)
    # Line 982
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,0($sp)
    b	.L0da37580
    ld	$ra,56($sp)
.L0da376fc:
    # Line 991
    # lw $t9, -23520($gp) # &__glInvalidateSequenceNumbers
    bal __glInvalidateSequenceNumbers
    ld	$a0,40($sp)
    ld	$a4,16($sp)
    b	.L0da375d4
    lw	$a4,264($a4)
.end __glDoMultMatrix

# Function: __glDoRotate
# Declared: Line 1020 (Source lines: 1022-1061)
# Address: 0x0da37720 - 0x0da378b0 (Size: 400 bytes, Frame: 208)
.globl __glDoRotate
.ent __glDoRotate
__glDoRotate:
    # Line 1022
    addiu	$sp,$sp,-208
    sdc1	$f15,120($sp)
    sd	$s0,176($sp)
    # Line 1029
    swc1	$f16,8($sp)
    # Line 1028
    swc1	$f15,4($sp)
    # Line 1027
    swc1	$f14,0($sp)
    # Line 1030
    mtc1	$zero,$f0
    sd	$gp,192($sp)
    # Line 1022
    lui	$at,0x2
    addiu	$at,$at,-27028
    # Line 1030
    swc1	$f0,12($sp)
    # Line 1022
    addu	$gp,$t9,$at
    # Line 1031
    lw	$t9,11904($a0)
    # Line 1022
    sdc1	$f22,144($sp)
    # Line 1031
    addiu	$a1,$sp,0
    # Line 1022
    mov.s	$f22,$f14
    move	$s0,$a0
    sdc1	$f20,152($sp)
    mov.s	$f20,$f13
    sd	$ra,184($sp)
    # Line 1031
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 1036
    lwc1	$f12,_lit_3c8efa35
    # lw $t9, -22756($gp) # &__rcis
    jal	__rcis
    mul.s	$f12,$f20,$f12
    lwc1	$f14,20($sp)
    lwc1	$f16,16($sp)
    # Line 1037
    lwc1	$f15,24($sp)
    # Line 1036
    lwc1	$f13,_lit_3f800000
    # Line 1038
    mul.s	$f20,$f15,$f16
    # Line 1036
    sub.s	$f13,$f13,$f0
    # Line 1037
    mul.s	$f15,$f15,$f14
    # Line 1036
    sdc1	$f2,168($sp)
    mul.s	$f14,$f14,$f16
    # Line 1040
    lw	$t9,11880($s0)
    # Line 1038
    mul.s	$f20,$f13,$f20
    # Line 1036
    sdc1	$f0,160($sp)
    # Line 1037
    mul.s	$f15,$f13,$f15
    # Line 1036
    mul.s	$f13,$f13,$f14
    # Line 1037
    sdc1	$f15,128($sp)
    # Line 1040
    addiu	$a0,$sp,32
    jalr	$t9
    sdc1	$f13,136($sp)
    # Line 1054
    ldc1	$f25,168($sp)
    # Line 1047
    lwc1	$f16,20($sp)
    # Line 1052
    lwc1	$f23,_lit_3f800000
    # Line 1049
    nmsub.s	$f27,$f20,$f25,$f16
    # Line 1048
    madd.s	$f21,$f20,$f25,$f16
    # Line 1052
    lwc1	$f17,24($sp)
    # Line 1054
    ldc1	$f29,136($sp)
    # Line 1047
    nmsub.s	$f31,$f23,$f16,$f16
    mul.s	$f16,$f16,$f16
    # Line 1042
    lwc1	$f15,16($sp)
    # Line 1054
    madd.s	$f0,$f29,$f25,$f17
    # Line 1044
    ldc1	$f18,128($sp)
    # Line 1053
    nmsub.s	$f29,$f29,$f25,$f17
    # Line 1044
    madd.s	$f19,$f18,$f25,$f15
    # Line 1043
    nmsub.s	$f18,$f18,$f25,$f15
    # Line 1052
    ldc1	$f25,160($sp)
    nmsub.s	$f1,$f23,$f17,$f17
    # Line 1042
    nmsub.s	$f23,$f23,$f15,$f15
    # Line 1047
    madd.s	$f16,$f16,$f31,$f25
    # Line 1055
    ldc1	$f31,120($sp)
    # Line 1042
    mul.s	$f15,$f15,$f15
    # Line 1052
    mul.s	$f17,$f17,$f17
    # Line 1054
    swc1	$f0,36($sp)
    # Line 1053
    swc1	$f29,48($sp)
    # Line 1052
    madd.s	$f17,$f17,$f1,$f25
    # Line 1055
    mtc1	$zero,$f11
    # Line 1049
    swc1	$f27,40($sp)
    # Line 1042
    madd.s	$f15,$f15,$f23,$f25
    # Line 1048
    swc1	$f21,64($sp)
    # Line 1044
    swc1	$f19,56($sp)
    # Line 1055
    c.eq.s	$f22,$f11
    # Line 1043
    swc1	$f18,68($sp)
    # Line 1052
    swc1	$f17,72($sp)
    # Line 1047
    swc1	$f16,52($sp)
    # Line 1056
    li	$v0,2
    # Line 1058
    li	$v1,1
    # Line 1055
    bc1f	.L0da3787c
    # Line 1042
    swc1	$f15,32($sp)
    # Line 1055
    c.eq.s $f31,$f11
    bc1f .L0da3787c
    nop
    # Line 1056
    b	.L0da37880
    sw	$v0,96($sp)
.L0da3787c:
    # Line 1058
    sw	$v1,96($sp)
.L0da37880:
    # Line 1060
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    ldc1	$f22,144($sp)
    ldc1	$f20,152($sp)
    move	$a0,$s0
    la	$a2,__glMultiplyMatrix
    bal __glDoMultMatrix
    addiu	$a1,$sp,32
    ld	$ra,184($sp)
    ld	$s0,176($sp)
    # Line 1061
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glDoRotate

# Function: __glScaleMatrix
# Declared: Line 1068 (Source lines: 1075-1105)
# Address: 0x0da378b0 - 0x0da37950 (Size: 160 bytes, Frame: 0)
.globl __glScaleMatrix
.ent __glScaleMatrix
__glScaleMatrix:
    # Line 1083
    lwc1	$f0,0($a1)
    # Line 1080
    lwc1	$f2,4($a1)
    # Line 1081
    lwc1	$f3,8($a1)
    # Line 1082
    lwc1	$f4,12($a1)
    # Line 1092
    lwc1	$f5,16($a1)
    # Line 1089
    lwc1	$f7,20($a1)
    # Line 1090
    lwc1	$f8,24($a1)
    # Line 1091
    lwc1	$f9,28($a1)
    # Line 1101
    lwc1	$f10,32($a1)
    # Line 1098
    lwc1	$f12,36($a1)
    # Line 1077
    lwc1	$f11,8($a2)
    # Line 1100
    lwc1	$f14,44($a1)
    # Line 1099
    lwc1	$f13,40($a1)
    # Line 1076
    lwc1	$f6,4($a2)
    # Line 1075
    lwc1	$f1,0($a2)
    # Line 1100
    mul.s	$f14,$f14,$f11
    # Line 1099
    mul.s	$f13,$f13,$f11
    # Line 1104
    swc1	$f14,44($a1)
    # Line 1098
    mul.s	$f12,$f12,$f11
    # Line 1103
    swc1	$f13,40($a1)
    # Line 1101
    mul.s	$f10,$f10,$f11
    # Line 1102
    swc1	$f12,36($a1)
    # Line 1091
    mul.s	$f9,$f9,$f6
    # Line 1101
    swc1	$f10,32($a1)
    # Line 1090
    mul.s	$f8,$f8,$f6
    # Line 1095
    swc1	$f9,28($a1)
    # Line 1089
    mul.s	$f7,$f7,$f6
    # Line 1094
    swc1	$f8,24($a1)
    # Line 1092
    mul.s	$f5,$f5,$f6
    # Line 1093
    swc1	$f7,20($a1)
    # Line 1082
    mul.s	$f4,$f4,$f1
    # Line 1092
    swc1	$f5,16($a1)
    # Line 1081
    mul.s	$f3,$f3,$f1
    # Line 1086
    swc1	$f4,12($a1)
    # Line 1080
    mul.s	$f2,$f2,$f1
    # Line 1085
    swc1	$f3,8($a1)
    # Line 1083
    mul.s	$f0,$f0,$f1
    # Line 1084
    swc1	$f2,4($a1)
    # Line 1105
    jr	$ra
    # Line 1083
    swc1	$f0,0($a1)
.end __glScaleMatrix

# Function: __glDoScale
# Declared: Line 1107 (Source lines: 1108-1115)
# Address: 0x0da37950 - 0x0da37994 (Size: 68 bytes, Frame: 32)
.globl __glDoScale
.ent __glDoScale
__glDoScale:
    # Line 1108
    addiu	$sp,$sp,-32
    # Line 1113
    swc1	$f15,8($sp)
    # Line 1108
    lui	$at,0x2
    # Line 1112
    swc1	$f14,4($sp)
    # Line 1108
    addiu	$at,$at,-27588
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1114
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    # Line 1111
    swc1	$f13,0($sp)
    # Line 1108
    sd	$ra,16($sp)
    # Line 1114
    addiu	$a1,$sp,0
    bal __glDoMultMatrix
    la	$a2,__glScaleMatrix
    ld	$ra,16($sp)
    # Line 1115
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoScale

# Function: __glTranslateMatrix
# Declared: Line 1125 (Source lines: 1126-1150)
# Address: 0x0da379a0 - 0x0da37a54 (Size: 180 bytes, Frame: 0)
.globl __glTranslateMatrix
.ent __glTranslateMatrix
__glTranslateMatrix:
    # Line 1126
    lw	$at,64($a1)
    sltiu	$at,$at,4
    bnez	$at,.L0da379b4
    # Line 1132
    li	$v0,3
    sw	$v0,64($a1)
.L0da379b4:
    # Line 1135
    lwc1	$f9,0($a2)
    # Line 1136
    lwc1	$f2,4($a2)
    # Line 1144
    lwc1	$f7,28($a1)
    lwc1	$f8,12($a1)
    lwc1	$f10,44($a1)
    # Line 1137
    lwc1	$f4,8($a2)
    # Line 1144
    mul.s	$f7,$f7,$f2
    # Line 1142
    lwc1	$f5,24($a1)
    # Line 1144
    madd.s	$f7,$f7,$f8,$f9
    # Line 1142
    lwc1	$f6,8($a1)
    # Line 1144
    madd.s	$f7,$f7,$f10,$f4
    # Line 1140
    lwc1	$f3,20($a1)
    # Line 1142
    mul.s	$f5,$f5,$f2
    lwc1	$f8,40($a1)
    madd.s	$f5,$f5,$f6,$f9
    # Line 1140
    lwc1	$f6,4($a1)
    # Line 1146
    lwc1	$f1,16($a1)
    # Line 1140
    mul.s	$f3,$f3,$f2
    # Line 1142
    madd.s	$f5,$f5,$f8,$f4
    # Line 1146
    lwc1	$f8,0($a1)
    # Line 1140
    madd.s	$f3,$f3,$f6,$f9
    lwc1	$f6,36($a1)
    # Line 1146
    mul.s	$f1,$f1,$f2
    lwc1	$f2,32($a1)
    madd.s	$f1,$f1,$f8,$f9
    # Line 1140
    madd.s	$f3,$f3,$f6,$f4
    # Line 1144
    lwc1	$f6,60($a1)
    # Line 1146
    madd.s	$f1,$f1,$f2,$f4
    # Line 1142
    lwc1	$f4,56($a1)
    # Line 1140
    lwc1	$f2,52($a1)
    # Line 1146
    lwc1	$f0,48($a1)
    # Line 1144
    add.s	$f6,$f6,$f7
    # Line 1149
    swc1	$f6,60($a1)
    # Line 1142
    add.s	$f4,$f4,$f5
    # Line 1148
    swc1	$f4,56($a1)
    # Line 1140
    add.s	$f2,$f2,$f3
    # Line 1147
    swc1	$f2,52($a1)
    # Line 1146
    add.s	$f0,$f0,$f1
    # Line 1150
    jr	$ra
    # Line 1146
    swc1	$f0,48($a1)
.end __glTranslateMatrix

# Function: __glDoTranslate
# Declared: Line 1152 (Source lines: 1153-1160)
# Address: 0x0da37a60 - 0x0da37aa4 (Size: 68 bytes, Frame: 32)
.globl __glDoTranslate
.ent __glDoTranslate
__glDoTranslate:
    # Line 1153
    addiu	$sp,$sp,-32
    # Line 1158
    swc1	$f15,8($sp)
    # Line 1153
    lui	$at,0x2
    # Line 1157
    swc1	$f14,4($sp)
    # Line 1153
    addiu	$at,$at,-27860
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1159
    # lw $t9, -23368($gp) # &__glDoMultMatrix
    # Line 1156
    swc1	$f13,0($sp)
    # Line 1153
    sd	$ra,16($sp)
    # Line 1159
    addiu	$a1,$sp,0
    bal __glDoMultMatrix
    la	$a2,__glTranslateMatrix
    ld	$ra,16($sp)
    # Line 1160
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoTranslate

# Function: __glComputeClipBox
# Declared: Line 1170 (Source lines: 1171-1213)
# Address: 0x0da37ab0 - 0x0da37ba8 (Size: 248 bytes, Frame: 0)
.globl __glComputeClipBox
.ent __glComputeClipBox
__glComputeClipBox:
    # Line 1171
    lw	$at,1792($a0)
    andi	$at,$at,0x4000
    beqz	$at,.L0da37b68
    # Line 1202
    lbu	$t3,4848($a0)
    # Line 1180
    lw	$a5,2528($a0)
    # Line 1179
    lw	$a3,2524($a0)
    # Line 1181
    lw	$a4,2532($a0)
    # Line 1182
    lw	$a2,2536($a0)
    # Line 1181
    addu	$a4,$a4,$a3
    # Line 1182
    addu	$a2,$a2,$a5
    # Line 1184
    bltz	$a4,.L0da37b1c
    slt	$a6,$a3,$a4
    bltz	$a2,.L0da37b1c
    nop
    beqz	$a6,.L0da37b1c
    slt	$a7,$a5,$a2
    beqz	$a7,.L0da37b1c
    nop
    lw	$a6,3700($a0)
    lw	$a7,3704($a0)
    slt	$t0,$a3,$a6
    # Line 1191
    slt	$t2,$a7,$a2
    # Line 1184
    beqz	$t0,.L0da37b1c
    slt	$t1,$a5,$a7
    movn	$a2,$a7,$t2
    bnez	$t1,.L0da37b90
    # Line 1190
    slti	$t0,$a5,0
.L0da37b1c:
    # Line 1187
    move	$a2,$zero
    move	$a4,$zero
    move	$a5,$zero
    move	$a3,$zero
.L0da37b2c:
    # Line 1201
    lw	$t2,3660($a0)
    # Line 1202
    lw	$a6,3664($a0)
    addu	$t8,$t2,$a4
    sw	$t8,29708($a0)
    # Line 1201
    addu	$t2,$t2,$a3
    # Line 1202
    beqz	$t3,.L0da37b7c
    # Line 1201
    sw	$t2,29700($a0)
    # Line 1205
    lw	$t9,3704($a0)
    # Line 1207
    subu	$at,$t9,$a5
    # Line 1205
    subu	$t9,$t9,$a2
    # Line 1207
    addu	$at,$a6,$at
    sw	$at,29712($a0)
    # Line 1205
    addu	$t9,$a6,$t9
    # Line 1213
    jr	$ra
    # Line 1205
    sw	$t9,29704($a0)
.L0da37b68:
    # Line 1198
    lw	$a2,3704($a0)
    move	$a5,$zero
    # Line 1197
    lw	$a4,3700($a0)
    b	.L0da37b2c
    # Line 1198
    move	$a3,$zero
.L0da37b7c:
    # Line 1211
    addu	$v1,$a6,$a2
    sw	$v1,29712($a0)
    # Line 1210
    addu	$v0,$a6,$a5
    # Line 1213
    jr	$ra
    # Line 1210
    sw	$v0,29704($a0)
.L0da37b90:
    # Line 1189
    slti	$a1,$a3,0
    # Line 1190
    movn	$a5,$zero,$t0
    # Line 1189
    movn	$a3,$zero,$a1
    # Line 1190
    slt	$t1,$a6,$a4
    b	.L0da37b2c
    movn	$a4,$a6,$t1
.end __glComputeClipBox

# Function: __glReCompute2DMatrix
# Declared: Line 1509 (Source lines: 1510-1528)
# Address: 0x0da37bb0 - 0x0da37c4c (Size: 156 bytes, Frame: 0)
.globl __glReCompute2DMatrix
.ent __glReCompute2DMatrix
__glReCompute2DMatrix:
    # Line 1510
    lw	$v1,64($a1)
    lui	$v0,0x2
    sltiu	$v1,$v1,2
    addiu	$v0,$v0,-28196
    bnez	$v1,.L0da37c44
    addu	$at,$t9,$v0
    # Line 1517
    lwc1	$f7,1720($a0)
    lwc1	$f12,0($a1)
    # Line 1518
    lwc1	$f4,1728($a0)
    # Line 1517
    mul.s	$f12,$f12,$f7
    swc1	$f12,29748($a0)
    # Line 1518
    lwc1	$f11,4($a1)
    mul.s	$f11,$f11,$f4
    swc1	$f11,29752($a0)
    # Line 1519
    lwc1	$f10,16($a1)
    mul.s	$f10,$f10,$f7
    swc1	$f10,29764($a0)
    # Line 1520
    lwc1	$f9,20($a1)
    mul.s	$f9,$f9,$f4
    swc1	$f9,29768($a0)
    # Line 1521
    lwc1	$f8,40($a1)
    swc1	$f8,29788($a0)
    # Line 1522
    lwc1	$f6,48($a1)
    lwc1	$f5,1724($a0)
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,29796($a0)
    # Line 1523
    lwc1	$f3,52($a1)
    lwc1	$f2,1732($a0)
    madd.s	$f2,$f2,$f3,$f4
    # Line 1525
    lwc1	$f0,_lit_3f800000
    # Line 1523
    swc1	$f2,29800($a0)
    # Line 1524
    lwc1	$f1,56($a1)
    # Line 1525
    swc1	$f0,29808($a0)
    # Line 1524
    swc1	$f1,29804($a0)
    # Line 1526
    lw	$a1,64($a1)
    # Line 1528
    jr	$ra
    # Line 1526
    sw	$a1,29812($a0)
.L0da37c44:
    # Line 1528
    jr	$ra
    nop
.end __glReCompute2DMatrix

# Function: __glGenericPickMvpMatrixProcs
# Declared: Line 1536 (Source lines: 1537-1544)
# Address: 0x0da37c50 - 0x0da37cd0 (Size: 128 bytes, Frame: 32)
.globl __glGenericPickMvpMatrixProcs
.ent __glGenericPickMvpMatrixProcs
__glGenericPickMvpMatrixProcs:
    # Line 1538
    lw	$a2,29668($a0)
    # Line 1537
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$s0,0($sp)
    addiu	$at,$at,-28356
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1538
    # lw $t9, -23540($gp) # &__glPickMatrixType
    # Line 1537
    sd	$s1,8($sp)
    move	$s0,$a0
    move	$s1,$a1
    # Line 1538
    lw	$a1,29660($a0)
    # Line 1537
    sd	$ra,16($sp)
    # Line 1538
    bal __glPickMatrixType
    move	$a0,$s1
    # Line 1541
    # lw $t9, -23340($gp) # &__glReCompute2DMatrix
    move	$a0,$s0
    bal __glReCompute2DMatrix
    move	$a1,$s1
    # Line 1542
    lw	$t9,11852($s0)
    move	$a0,$s0
    jal	__glReCompute2DMatrix
    move	$a1,$s1
    # Line 1543
    lw	$t9,11848($s0)
    ld	$s1,8($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 1544
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glGenericPickMvpMatrixProcs

# Function: __glGenericPickMatrixProcs
# Declared: Line 1547 (Source lines: 1548-1601)
# Address: 0x0da37cd0 - 0x0da37da0 (Size: 208 bytes, Frame: 0)
.globl __glGenericPickMatrixProcs
.ent __glGenericPickMatrixProcs
__glGenericPickMatrixProcs:
    # Line 1549
    lw	$a3,64($a1)
    # Line 1548
    lui	$v0,0x2
    addiu	$v0,$v0,-28484
    # Line 1549
    beqz	$a3,.L0da37d3c
    # Line 1548
    addu	$at,$t9,$v0
    # Line 1549
    li	$v1,1
    beq	$a3,$v1,.L0da37d60
    # Line 1564
    nop	# was lw $t9, -32468($gp) # &__glMipsXForm2_W
    # Line 1549
    li	$a0,2
    beq	$a3,$a0,.L0da37d80
    li	$a2,3
    beq	$a3,$a2,.L0da37d1c
    li	$a4,4
    beq	$a3,$a4,.L0da37d1c
    li	$a5,5
    beq	$a3,$a5,.L0da37d20
    # Line 1590
    la	$a6,__glMipsXForm2_2DNRW
    # Line 1601
    jr	$ra
    nop
.L0da37d1c:
    # Line 1590
    la	$a6,__glMipsXForm2_2DNRW
.L0da37d20:
    # Line 1592
    la	$t0,__glMipsXForm4_2DNRW
    # Line 1590
    la	$a7,__glMipsXForm3_2DNRW
    # Line 1593
    sw	$a7,84($a1)
    # Line 1592
    sw	$t0,80($a1)
    # Line 1591
    sw	$a7,76($a1)
    # Line 1601
    jr	$ra
    # Line 1590
    sw	$a6,72($a1)
.L0da37d3c:
    # Line 1552
    la	$t1,__glMipsXForm2
    # Line 1553
    la	$t2,__glMipsXForm3
    # Line 1554
    la	$t3,__glMipsXForm4
    # Line 1555
    la	$t8,__glMipsXForm3AsmLink
    sw	$t8,84($a1)
    # Line 1554
    sw	$t3,80($a1)
    # Line 1553
    sw	$t2,76($a1)
    # Line 1601
    jr	$ra
    # Line 1552
    sw	$t1,72($a1)
.L0da37d60:
    # Line 1565
    la	$v0,__glMipsXForm3_W
    # Line 1566
    la	$v1,__glMipsXForm4_W
    # Line 1567
    la	$a0,__glMipsXForm3AsmLink_W
    sw	$a0,84($a1)
    # Line 1566
    sw	$v1,80($a1)
    # Line 1565
    sw	$v0,76($a1)
    # Line 1601
    jr	$ra
    # Line 1564
    sw	$t9,72($a1)
.L0da37d80:
    # Line 1576
    la	$a2,__glMipsXForm2_2DW
    # Line 1578
    la	$a4,__glMipsXForm4_2DW
    # Line 1576
    la	$a3,__glMipsXForm3_2DW
    # Line 1579
    sw	$a3,84($a1)
    # Line 1578
    sw	$a4,80($a1)
    # Line 1577
    sw	$a3,76($a1)
    # Line 1601
    jr	$ra
    # Line 1576
    sw	$a2,72($a1)
.end __glGenericPickMatrixProcs

# Function: __glGenericPickInvTransposeProcs
# Declared: Line 1604 (Source lines: 1605-1644)
# Address: 0x0da37da0 - 0x0da37e24 (Size: 132 bytes, Frame: 0)
.globl __glGenericPickInvTransposeProcs
.ent __glGenericPickInvTransposeProcs
__glGenericPickInvTransposeProcs:
    # Line 1605
    lui	$v0,0x2
    # Line 1612
    lw	$a3,64($a1)
    # Line 1605
    addiu	$v0,$v0,-28692
    addu	$at,$t9,$v0
    la	$a4,__glMipsXForm4
    # Line 1612
    li	$a5,5
    beqz	$a3,.L0da37e0c
    # Line 1607
    sw	$a4,80($a1)
    # Line 1612
    li	$v1,1
    # Line 1622
    la	$a7,__glMipsXForm3_W
    # Line 1612
    beq	$a3,$v1,.L0da37e14
    li	$a4,4
    li	$a0,2
    # Line 1629
    la	$t0,__glMipsXForm3_2DW
    # Line 1612
    beq	$a3,$a0,.L0da37e1c
    li	$a2,3
    beq	$a3,$a2,.L0da37e04
    # Line 1638
    la	$a6,__glMipsXForm3_2DNRW
    # Line 1612
    beq	$a3,$a4,.L0da37e04
    # Line 1638
    la	$a6,__glMipsXForm3_2DNRW
    # Line 1612
    beq	$a3,$a5,.L0da37e04
    # Line 1638
    la	$a6,__glMipsXForm3_2DNRW
    # Line 1644
    jr	$ra
    nop
    # Line 1638
    la	$a6,__glMipsXForm3_2DNRW
.L0da37e04:
    # Line 1644
    jr	$ra
    # Line 1638
    sw	$a6,76($a1)
.L0da37e0c:
    # Line 1644
    jr	$ra
    # Line 1615
    sw	$a4,76($a1)
.L0da37e14:
    # Line 1644
    jr	$ra
    # Line 1622
    sw	$a7,76($a1)
.L0da37e1c:
    # Line 1644
    jr	$ra
    # Line 1629
    sw	$t0,76($a1)
.end __glGenericPickInvTransposeProcs

.rdata
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_c000000000000000:
    .word 0xc0000000, 0x00000000
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

