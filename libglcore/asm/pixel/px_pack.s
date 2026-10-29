# Source: ../pixel/px_pack.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_pack.c
# Total Functions: 56

.text

# Function: __glInitPacker
# Declared: Line 33 (Source lines: 34-99)
# Address: 0x0d9a4320 - 0x0d9a4500 (Size: 480 bytes, Frame: 224)
.globl __glInitPacker
.ent __glInitPacker
__glInitPacker:
    # Line 55
    lw	$a0,80($a1)
    # Line 51
    lw	$v0,132($a1)
    # Line 34
    addiu	$sp,$sp,-96
    sd	$s3,72($sp)
    # Line 51
    sd	$v0,48($sp)
    sd	$s7,80($sp)
    # Line 34
    sd	$s2,0($sp)
    # Line 53
    lw	$s2,120($a1)
    # Line 34
    sd	$s5,16($sp)
    # Line 52
    lw	$s5,148($a1)
    # Line 34
    sd	$s4,8($sp)
    # Line 50
    lw	$s4,128($a1)
    # Line 34
    sd	$s8,32($sp)
    sd	$s0,64($sp)
    lui	$at,0xb
    sd	$s1,24($sp)
    addiu	$at,$at,-13716
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 55
    # lw $t9, -27540($gp) # &__glSpecElementsPerGroup
    # Line 48
    lw	$s1,84($a1)
    # Line 34
    move	$s0,$a1
    # Line 49
    lw	$s8,88($a1)
    # Line 34
    sd	$ra,40($sp)
    # Line 55
    jal	__glSpecElementsPerGroup
    move	$a1,$s1
    # Line 58
    # lw $t9, -27536($gp) # &__glSpecBytesPerElement
    # Line 55
    move	$s3,$v0
    # Line 58
    move	$a0,$s1
    jal	__glSpecBytesPerElement
    # Line 56
    lw	$s7,140($s0)
    # Line 62
    mult	$v0,$s3
    mflo	$a3
    nop
    nop
    mult	$a3,$s7
    # Line 64
    mtc1	$s5,$f1
    # Line 62
    li	$a6,6656
    # Line 64
    addiu	$t3,$s7,7
    addiu	$t1,$s7,14
    slt	$t2,$t3,$zero
    xor	$t0,$a6,$s1
    movz	$t1,$t3,$t2
    sra	$t1,$t1,0x3
    # Line 62
    mflo	$a1
    movz	$a1,$t1,$t0
    # Line 64
    mtc1	$a1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a7,$f0
    mult	$a7,$s5
    # Line 70
    slti	$t8,$v0,2
    # Line 64
    teq	$s5,$zero,0x7
    ld	$ra,40($sp)
    # Line 70
    andi	$a2,$s4,0x7
    # Line 59
    li	$a7,1
    ld	$a4,48($sp)
    xor	$a5,$v0,$a7
    # Line 64
    mflo	$v1
    # Line 99
    ld	$gp,56($sp)
    # Line 59
    sltiu	$a5,$a5,1
    # Line 64
    subu	$v1,$a1,$v1
    ld	$s7,80($sp)
    # Line 59
    movn	$s2,$zero,$a5
    # Line 68
    subu	$a0,$s5,$v1
    ld	$s5,16($sp)
    addu	$a0,$a1,$a0
    # Line 70
    beqz	$a2,.L0d9a4444
    movz	$a0,$a1,$v1
    beq	$a6,$s1,.L0d9a4454
    nop
.L0d9a4444:
    beqz	$s2,.L0d9a445c
    nop
    bnez	$t8,.L0d9a445c
    nop
.L0d9a4454:
    # Line 72
    b	.L0d9a4460
    sb	$zero,152($s0)
.L0d9a445c:
    # Line 74
    sb	$a7,152($s0)
.L0d9a4460:
    mult	$a4,$a0
    mflo	$a5
    ld	$s2,0($sp)
    beq	$a6,$s1,.L0d9a44d0
    addu	$a5,$s8,$a5
    # Line 82
    mult	$a3,$s4
    ld	$s1,24($sp)
    ld	$s8,32($sp)
    mflo	$a6
    addu	$a6,$a5,$a6
    sw	$a6,92($s0)
.L0d9a448c:
    ld	$s4,8($sp)
    # Line 98
    sb	$zero,430($s0)
    # Line 97
    sb	$zero,429($s0)
    # Line 96
    sb	$a7,428($s0)
    # Line 95
    sb	$zero,427($s0)
    # Line 94
    sb	$a7,425($s0)
    # Line 93
    sb	$zero,424($s0)
    # Line 90
    sw	$zero,104($s0)
    # Line 89
    sw	$v0,116($s0)
    # Line 88
    sw	$s3,112($s0)
    # Line 87
    sw	$s3,108($s0)
    # Line 86
    sw	$a3,100($s0)
    # Line 85
    sw	$a0,96($s0)
    # Line 99
    ld	$s0,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9a44d0:
    # Line 78
    addiu	$t0,$s4,7
    slt	$t1,$s4,$zero
    ld	$s1,24($sp)
    movz	$t0,$s4,$t1
    ld	$s8,32($sp)
    sra	$t0,$t0,0x3
    addu	$t1,$a5,$t0
    sw	$t1,92($s0)
    sll	$t0,$t0,0x3
    subu	$t0,$s4,$t0
    # Line 80
    b	.L0d9a448c
    sw	$t0,156($s0)
.end __glInitPacker

# Function: __glInitPacker3D
# Declared: Line 101 (Source lines: 102-114)
# Address: 0x0d9a4500 - 0x0d9a4570 (Size: 112 bytes, Frame: 32)
.globl __glInitPacker3D
.ent __glInitPacker3D
__glInitPacker3D:
    # Line 102
    lui	$at,0xb
    addiu	$sp,$sp,-32
    addiu	$at,$at,-14196
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 106
    # lw $t9, -28080($gp) # &__glInitPacker
    # Line 102
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 106
    bal __glInitPacker
    # Line 102
    move	$s8,$a1
    # Line 109
    lw	$a3,144($s8)
    lw	$a2,96($s8)
    mult	$a2,$a3
    # Line 111
    lw	$a1,136($s8)
    # Line 109
    mflo	$a0
    nop
    nop
    # Line 111
    mult	$a1,$a0
    # Line 114
    ld	$gp,16($sp)
    # Line 111
    lw	$v0,92($s8)
    ld	$ra,0($sp)
    # Line 113
    sw	$a0,104($s8)
    # Line 111
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,92($s8)
    # Line 114
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitPacker3D

# Function: __glSpanReduceRed
# Declared: Line 120 (Source lines: 122-133)
# Address: 0x0d9a4570 - 0x0d9a4608 (Size: 152 bytes, Frame: 0)
.globl __glSpanReduceRed
.ent __glSpanReduceRed
__glSpanReduceRed:
    # Line 124
    lw	$a5,184($a1)
    # Line 122
    move	$a6,$a3
    move	$a7,$a2
    # Line 127
    blez	$a5,.L0d9a4600
    lwc1	$f4,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a45b4
    move	$a1,$zero
.L0d9a4594:
    # Line 130
    lwc1	$f0,0($a7)
    addiu	$a2,$a2,-1
    # Line 129
    addiu	$a1,$a1,1
    # Line 130
    addiu	$a6,$a6,4
    mul.s	$f0,$f0,$f4
    # Line 131
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4594
    # Line 130
    swc1	$f0,-4($a6)
.L0d9a45b4:
    move	$a2,$a6
    beqz	$at,.L0d9a4600
    move	$a3,$a7
.L0d9a45c0:
    lwc1	$f5,0($a3)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($a2)
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a2)
    lwc1	$f1,48($a3)
    # Line 129
    addiu	$a1,$a1,4
    # Line 130
    addiu	$a2,$a2,16
    mul.s	$f1,$f1,$f4
    # Line 131
    addiu	$a3,$a3,64
    # Line 129
    bne	$a5,$a1,.L0d9a45c0
    # Line 130
    swc1	$f1,-4($a2)
.L0d9a4600:
    # Line 133
    jr	$ra
    nop
.end __glSpanReduceRed

# Function: __glSpanReduceGreen
# Declared: Line 139 (Source lines: 141-153)
# Address: 0x0d9a4610 - 0x0d9a46a8 (Size: 152 bytes, Frame: 0)
.globl __glSpanReduceGreen
.ent __glSpanReduceGreen
__glSpanReduceGreen:
    # Line 143
    lw	$a5,184($a1)
    # Line 141
    move	$a6,$a3
    # Line 148
    addiu	$a7,$a2,4
    blez	$a5,.L0d9a46a0
    # Line 146
    lwc1	$f4,30804($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4654
    # Line 148
    move	$a1,$zero
.L0d9a4634:
    # Line 150
    lwc1	$f0,0($a7)
    addiu	$a2,$a2,-1
    # Line 149
    addiu	$a1,$a1,1
    # Line 150
    addiu	$a6,$a6,4
    mul.s	$f0,$f0,$f4
    # Line 151
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4634
    # Line 150
    swc1	$f0,-4($a6)
.L0d9a4654:
    move	$a2,$a6
    beqz	$at,.L0d9a46a0
    move	$a3,$a7
.L0d9a4660:
    lwc1	$f5,0($a3)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($a2)
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a2)
    lwc1	$f1,48($a3)
    # Line 149
    addiu	$a1,$a1,4
    # Line 150
    addiu	$a2,$a2,16
    mul.s	$f1,$f1,$f4
    # Line 151
    addiu	$a3,$a3,64
    # Line 149
    bne	$a5,$a1,.L0d9a4660
    # Line 150
    swc1	$f1,-4($a2)
.L0d9a46a0:
    # Line 153
    jr	$ra
    nop
.end __glSpanReduceGreen

# Function: __glSpanReduceBlue
# Declared: Line 159 (Source lines: 161-173)
# Address: 0x0d9a46b0 - 0x0d9a4748 (Size: 152 bytes, Frame: 0)
.globl __glSpanReduceBlue
.ent __glSpanReduceBlue
__glSpanReduceBlue:
    # Line 163
    lw	$a5,184($a1)
    # Line 161
    move	$a6,$a3
    # Line 168
    addiu	$a7,$a2,8
    blez	$a5,.L0d9a4740
    # Line 166
    lwc1	$f4,30808($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a46f4
    # Line 168
    move	$a1,$zero
.L0d9a46d4:
    # Line 170
    lwc1	$f0,0($a7)
    addiu	$a2,$a2,-1
    # Line 169
    addiu	$a1,$a1,1
    # Line 170
    addiu	$a6,$a6,4
    mul.s	$f0,$f0,$f4
    # Line 171
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a46d4
    # Line 170
    swc1	$f0,-4($a6)
.L0d9a46f4:
    move	$a2,$a6
    beqz	$at,.L0d9a4740
    move	$a3,$a7
.L0d9a4700:
    lwc1	$f5,0($a3)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($a2)
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a2)
    lwc1	$f1,48($a3)
    # Line 169
    addiu	$a1,$a1,4
    # Line 170
    addiu	$a2,$a2,16
    mul.s	$f1,$f1,$f4
    # Line 171
    addiu	$a3,$a3,64
    # Line 169
    bne	$a5,$a1,.L0d9a4700
    # Line 170
    swc1	$f1,-4($a2)
.L0d9a4740:
    # Line 173
    jr	$ra
    nop
.end __glSpanReduceBlue

# Function: __glSpanReduceAlpha
# Declared: Line 179 (Source lines: 181-193)
# Address: 0x0d9a4750 - 0x0d9a47e8 (Size: 152 bytes, Frame: 0)
.globl __glSpanReduceAlpha
.ent __glSpanReduceAlpha
__glSpanReduceAlpha:
    # Line 183
    lw	$a5,184($a1)
    # Line 181
    move	$a6,$a3
    # Line 188
    addiu	$a7,$a2,12
    blez	$a5,.L0d9a47e0
    # Line 186
    lwc1	$f4,30812($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4794
    # Line 188
    move	$a1,$zero
.L0d9a4774:
    # Line 190
    lwc1	$f0,0($a7)
    addiu	$a2,$a2,-1
    # Line 189
    addiu	$a1,$a1,1
    # Line 190
    addiu	$a6,$a6,4
    mul.s	$f0,$f0,$f4
    # Line 191
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4774
    # Line 190
    swc1	$f0,-4($a6)
.L0d9a4794:
    move	$a2,$a6
    beqz	$at,.L0d9a47e0
    move	$a3,$a7
.L0d9a47a0:
    lwc1	$f5,0($a3)
    mul.s	$f5,$f5,$f4
    swc1	$f5,0($a2)
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a2)
    lwc1	$f1,48($a3)
    # Line 189
    addiu	$a1,$a1,4
    # Line 190
    addiu	$a2,$a2,16
    mul.s	$f1,$f1,$f4
    # Line 191
    addiu	$a3,$a3,64
    # Line 189
    bne	$a5,$a1,.L0d9a47a0
    # Line 190
    swc1	$f1,-4($a2)
.L0d9a47e0:
    # Line 193
    jr	$ra
    nop
.end __glSpanReduceAlpha

# Function: __glSpanReduceRGB
# Declared: Line 199 (Source lines: 201-220)
# Address: 0x0d9a47f0 - 0x0d9a4908 (Size: 280 bytes, Frame: 0)
.globl __glSpanReduceRGB
.ent __glSpanReduceRGB
__glSpanReduceRGB:
    # Line 203
    lw	$a5,184($a1)
    # Line 208
    lwc1	$f6,30804($a0)
    # Line 201
    move	$a6,$a3
    # Line 207
    lwc1	$f5,30808($a0)
    # Line 201
    move	$a7,$a2
    # Line 206
    lwc1	$f4,30800($a0)
    # Line 208
    blez	$a5,.L0d9a4900
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4854
    move	$a1,$zero
.L0d9a481c:
    # Line 215
    lwc1	$f2,0($a7)
    # Line 213
    lwc1	$f1,4($a7)
    # Line 214
    lwc1	$f0,8($a7)
    # Line 217
    addiu	$a6,$a6,12
    # Line 215
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    swc1	$f2,-12($a6)
    # Line 213
    mul.s	$f1,$f1,$f6
    # Line 211
    addiu	$a1,$a1,1
    # Line 214
    mul.s	$f0,$f0,$f5
    # Line 216
    swc1	$f1,-8($a6)
    # Line 218
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a481c
    # Line 217
    swc1	$f0,-4($a6)
.L0d9a4854:
    move	$a3,$a7
    beqz	$at,.L0d9a4900
    move	$a2,$a6
.L0d9a4860:
    # Line 215
    lwc1	$f17,0($a3)
    # Line 213
    lwc1	$f16,4($a3)
    # Line 214
    lwc1	$f15,8($a3)
    # Line 215
    mul.s	$f17,$f17,$f4
    swc1	$f17,0($a2)
    # Line 213
    mul.s	$f16,$f16,$f6
    # Line 216
    swc1	$f16,4($a2)
    # Line 214
    mul.s	$f15,$f15,$f5
    # Line 217
    swc1	$f15,8($a2)
    # Line 215
    lwc1	$f14,16($a3)
    # Line 213
    lwc1	$f13,20($a3)
    # Line 214
    lwc1	$f12,24($a3)
    # Line 215
    mul.s	$f14,$f14,$f4
    swc1	$f14,12($a2)
    # Line 213
    mul.s	$f13,$f13,$f6
    # Line 216
    swc1	$f13,16($a2)
    # Line 214
    mul.s	$f12,$f12,$f5
    # Line 217
    swc1	$f12,20($a2)
    # Line 215
    lwc1	$f11,32($a3)
    # Line 213
    lwc1	$f10,36($a3)
    # Line 214
    lwc1	$f9,40($a3)
    # Line 215
    mul.s	$f11,$f11,$f4
    swc1	$f11,24($a2)
    # Line 213
    mul.s	$f10,$f10,$f6
    # Line 216
    swc1	$f10,28($a2)
    # Line 214
    mul.s	$f9,$f9,$f5
    # Line 217
    swc1	$f9,32($a2)
    # Line 215
    lwc1	$f8,48($a3)
    # Line 213
    lwc1	$f7,52($a3)
    # Line 214
    lwc1	$f3,56($a3)
    # Line 217
    addiu	$a2,$a2,48
    # Line 215
    mul.s	$f8,$f8,$f4
    # Line 211
    addiu	$a1,$a1,4
    # Line 215
    swc1	$f8,-12($a2)
    # Line 213
    mul.s	$f7,$f7,$f6
    # Line 214
    mul.s	$f3,$f3,$f5
    # Line 216
    swc1	$f7,-8($a2)
    # Line 218
    addiu	$a3,$a3,64
    # Line 211
    bne	$a5,$a1,.L0d9a4860
    # Line 217
    swc1	$f3,-4($a2)
.L0d9a4900:
    # Line 220
    jr	$ra
    nop
.end __glSpanReduceRGB

# Function: __glSpanReduceBGR
# Declared: Line 228 (Source lines: 230-249)
# Address: 0x0d9a4910 - 0x0d9a4a28 (Size: 280 bytes, Frame: 0)
.globl __glSpanReduceBGR
.ent __glSpanReduceBGR
__glSpanReduceBGR:
    # Line 232
    lw	$a5,184($a1)
    # Line 237
    lwc1	$f6,30804($a0)
    # Line 230
    move	$a6,$a3
    # Line 236
    lwc1	$f5,30808($a0)
    # Line 230
    move	$a7,$a2
    # Line 235
    lwc1	$f4,30800($a0)
    # Line 237
    blez	$a5,.L0d9a4a20
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4974
    move	$a1,$zero
.L0d9a493c:
    # Line 244
    lwc1	$f2,0($a7)
    # Line 242
    lwc1	$f1,4($a7)
    # Line 243
    lwc1	$f0,8($a7)
    # Line 246
    addiu	$a6,$a6,12
    # Line 244
    mul.s	$f2,$f2,$f5
    addiu	$a2,$a2,-1
    swc1	$f2,-12($a6)
    # Line 242
    mul.s	$f1,$f1,$f6
    # Line 240
    addiu	$a1,$a1,1
    # Line 243
    mul.s	$f0,$f0,$f4
    # Line 245
    swc1	$f1,-8($a6)
    # Line 247
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a493c
    # Line 246
    swc1	$f0,-4($a6)
.L0d9a4974:
    move	$a3,$a7
    beqz	$at,.L0d9a4a20
    move	$a2,$a6
.L0d9a4980:
    # Line 244
    lwc1	$f17,0($a3)
    # Line 242
    lwc1	$f16,4($a3)
    # Line 243
    lwc1	$f15,8($a3)
    # Line 244
    mul.s	$f17,$f17,$f5
    swc1	$f17,0($a2)
    # Line 242
    mul.s	$f16,$f16,$f6
    # Line 245
    swc1	$f16,4($a2)
    # Line 243
    mul.s	$f15,$f15,$f4
    # Line 246
    swc1	$f15,8($a2)
    # Line 244
    lwc1	$f14,16($a3)
    # Line 242
    lwc1	$f13,20($a3)
    # Line 243
    lwc1	$f12,24($a3)
    # Line 244
    mul.s	$f14,$f14,$f5
    swc1	$f14,12($a2)
    # Line 242
    mul.s	$f13,$f13,$f6
    # Line 245
    swc1	$f13,16($a2)
    # Line 243
    mul.s	$f12,$f12,$f4
    # Line 246
    swc1	$f12,20($a2)
    # Line 244
    lwc1	$f11,32($a3)
    # Line 242
    lwc1	$f10,36($a3)
    # Line 243
    lwc1	$f9,40($a3)
    # Line 244
    mul.s	$f11,$f11,$f5
    swc1	$f11,24($a2)
    # Line 242
    mul.s	$f10,$f10,$f6
    # Line 245
    swc1	$f10,28($a2)
    # Line 243
    mul.s	$f9,$f9,$f4
    # Line 246
    swc1	$f9,32($a2)
    # Line 244
    lwc1	$f8,48($a3)
    # Line 242
    lwc1	$f7,52($a3)
    # Line 243
    lwc1	$f3,56($a3)
    # Line 246
    addiu	$a2,$a2,48
    # Line 244
    mul.s	$f8,$f8,$f5
    # Line 240
    addiu	$a1,$a1,4
    # Line 244
    swc1	$f8,-12($a2)
    # Line 242
    mul.s	$f7,$f7,$f6
    # Line 243
    mul.s	$f3,$f3,$f4
    # Line 245
    swc1	$f7,-8($a2)
    # Line 247
    addiu	$a3,$a3,64
    # Line 240
    bne	$a5,$a1,.L0d9a4980
    # Line 246
    swc1	$f3,-4($a2)
.L0d9a4a20:
    # Line 249
    jr	$ra
    nop
.end __glSpanReduceBGR

# Function: __glSpanReorderABGR
# Declared: Line 255 (Source lines: 257-278)
# Address: 0x0d9a4a30 - 0x0d9a4b88 (Size: 344 bytes, Frame: 0)
.globl __glSpanReorderABGR
.ent __glSpanReorderABGR
__glSpanReorderABGR:
    # Line 265
    lwc1	$f6,30812($a0)
    # Line 259
    lw	$a5,184($a1)
    # Line 264
    lwc1	$f7,30804($a0)
    # Line 263
    lwc1	$f4,30808($a0)
    # Line 257
    move	$a6,$a3
    move	$a7,$a2
    # Line 265
    blez	$a5,.L0d9a4b80
    # Line 262
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4aa4
    # Line 265
    move	$a1,$zero
.L0d9a4a60:
    # Line 273
    lwc1	$f3,12($a7)
    # Line 271
    lwc1	$f2,8($a7)
    # Line 270
    lwc1	$f1,4($a7)
    # Line 276
    addiu	$a6,$a6,16
    # Line 273
    mul.s	$f3,$f3,$f6
    # Line 269
    lwc1	$f0,0($a7)
    # Line 273
    swc1	$f3,-16($a6)
    # Line 271
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    # Line 274
    swc1	$f2,-12($a6)
    # Line 270
    mul.s	$f1,$f1,$f7
    # Line 268
    addiu	$a1,$a1,1
    # Line 269
    mul.s	$f0,$f0,$f5
    # Line 275
    swc1	$f1,-8($a6)
    # Line 272
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4a60
    # Line 276
    swc1	$f0,-4($a6)
.L0d9a4aa4:
    move	$a2,$a7
    beqz	$at,.L0d9a4b80
    move	$a3,$a6
.L0d9a4ab0:
    # Line 273
    lwc1	$f27,12($a2)
    # Line 271
    lwc1	$f25,8($a2)
    # Line 270
    lwc1	$f23,4($a2)
    # Line 273
    mul.s	$f27,$f27,$f6
    # Line 269
    lwc1	$f21,0($a2)
    # Line 273
    swc1	$f27,0($a3)
    # Line 271
    mul.s	$f25,$f25,$f4
    # Line 274
    swc1	$f25,4($a3)
    # Line 270
    mul.s	$f23,$f23,$f7
    # Line 275
    swc1	$f23,8($a3)
    # Line 269
    mul.s	$f21,$f21,$f5
    # Line 276
    swc1	$f21,12($a3)
    # Line 273
    lwc1	$f19,28($a2)
    # Line 271
    lwc1	$f18,24($a2)
    # Line 270
    lwc1	$f17,20($a2)
    # Line 273
    mul.s	$f19,$f19,$f6
    # Line 269
    lwc1	$f16,16($a2)
    # Line 273
    swc1	$f19,16($a3)
    # Line 271
    mul.s	$f18,$f18,$f4
    # Line 274
    swc1	$f18,20($a3)
    # Line 270
    mul.s	$f17,$f17,$f7
    # Line 275
    swc1	$f17,24($a3)
    # Line 269
    mul.s	$f16,$f16,$f5
    # Line 276
    swc1	$f16,28($a3)
    # Line 273
    lwc1	$f15,44($a2)
    # Line 271
    lwc1	$f14,40($a2)
    # Line 270
    lwc1	$f13,36($a2)
    # Line 273
    mul.s	$f15,$f15,$f6
    # Line 269
    lwc1	$f12,32($a2)
    # Line 273
    swc1	$f15,32($a3)
    # Line 271
    mul.s	$f14,$f14,$f4
    # Line 274
    swc1	$f14,36($a3)
    # Line 270
    mul.s	$f13,$f13,$f7
    # Line 275
    swc1	$f13,40($a3)
    # Line 269
    mul.s	$f12,$f12,$f5
    # Line 276
    swc1	$f12,44($a3)
    # Line 273
    lwc1	$f11,60($a2)
    # Line 271
    lwc1	$f10,56($a2)
    # Line 270
    lwc1	$f9,52($a2)
    # Line 276
    addiu	$a3,$a3,64
    # Line 273
    mul.s	$f11,$f11,$f6
    # Line 269
    lwc1	$f8,48($a2)
    # Line 273
    swc1	$f11,-16($a3)
    # Line 271
    mul.s	$f10,$f10,$f4
    # Line 268
    addiu	$a1,$a1,4
    # Line 274
    swc1	$f10,-12($a3)
    # Line 270
    mul.s	$f9,$f9,$f7
    # Line 269
    mul.s	$f8,$f8,$f5
    # Line 275
    swc1	$f9,-8($a3)
    # Line 272
    addiu	$a2,$a2,64
    # Line 268
    bne	$a5,$a1,.L0d9a4ab0
    # Line 276
    swc1	$f8,-4($a3)
.L0d9a4b80:
    # Line 278
    jr	$ra
    nop
.end __glSpanReorderABGR

# Function: __glSpanReorderBGRA
# Declared: Line 284 (Source lines: 286-307)
# Address: 0x0d9a4b90 - 0x0d9a4ce8 (Size: 344 bytes, Frame: 0)
.globl __glSpanReorderBGRA
.ent __glSpanReorderBGRA
__glSpanReorderBGRA:
    # Line 294
    lwc1	$f6,30812($a0)
    # Line 288
    lw	$a5,184($a1)
    # Line 293
    lwc1	$f7,30804($a0)
    # Line 292
    lwc1	$f4,30808($a0)
    # Line 286
    move	$a6,$a3
    move	$a7,$a2
    # Line 294
    blez	$a5,.L0d9a4ce0
    # Line 291
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4c04
    # Line 294
    move	$a1,$zero
.L0d9a4bc0:
    # Line 300
    lwc1	$f3,8($a7)
    # Line 299
    lwc1	$f2,4($a7)
    # Line 298
    lwc1	$f1,0($a7)
    # Line 305
    addiu	$a6,$a6,16
    # Line 300
    mul.s	$f3,$f3,$f4
    # Line 301
    lwc1	$f0,12($a7)
    # Line 302
    swc1	$f3,-16($a6)
    # Line 299
    mul.s	$f2,$f2,$f7
    addiu	$a2,$a2,-1
    # Line 303
    swc1	$f2,-12($a6)
    # Line 298
    mul.s	$f1,$f1,$f5
    # Line 297
    addiu	$a1,$a1,1
    # Line 301
    mul.s	$f0,$f0,$f6
    # Line 304
    swc1	$f1,-8($a6)
    # Line 301
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4bc0
    # Line 305
    swc1	$f0,-4($a6)
.L0d9a4c04:
    move	$a2,$a7
    beqz	$at,.L0d9a4ce0
    move	$a3,$a6
.L0d9a4c10:
    # Line 300
    lwc1	$f27,8($a2)
    # Line 299
    lwc1	$f25,4($a2)
    # Line 298
    lwc1	$f23,0($a2)
    # Line 300
    mul.s	$f27,$f27,$f4
    # Line 301
    lwc1	$f21,12($a2)
    # Line 302
    swc1	$f27,0($a3)
    # Line 299
    mul.s	$f25,$f25,$f7
    # Line 303
    swc1	$f25,4($a3)
    # Line 298
    mul.s	$f23,$f23,$f5
    # Line 304
    swc1	$f23,8($a3)
    # Line 301
    mul.s	$f21,$f21,$f6
    # Line 305
    swc1	$f21,12($a3)
    # Line 300
    lwc1	$f19,24($a2)
    # Line 299
    lwc1	$f18,20($a2)
    # Line 298
    lwc1	$f17,16($a2)
    # Line 300
    mul.s	$f19,$f19,$f4
    # Line 301
    lwc1	$f16,28($a2)
    # Line 302
    swc1	$f19,16($a3)
    # Line 299
    mul.s	$f18,$f18,$f7
    # Line 303
    swc1	$f18,20($a3)
    # Line 298
    mul.s	$f17,$f17,$f5
    # Line 304
    swc1	$f17,24($a3)
    # Line 301
    mul.s	$f16,$f16,$f6
    # Line 305
    swc1	$f16,28($a3)
    # Line 300
    lwc1	$f15,40($a2)
    # Line 299
    lwc1	$f14,36($a2)
    # Line 298
    lwc1	$f13,32($a2)
    # Line 300
    mul.s	$f15,$f15,$f4
    # Line 301
    lwc1	$f12,44($a2)
    # Line 302
    swc1	$f15,32($a3)
    # Line 299
    mul.s	$f14,$f14,$f7
    # Line 303
    swc1	$f14,36($a3)
    # Line 298
    mul.s	$f13,$f13,$f5
    # Line 304
    swc1	$f13,40($a3)
    # Line 301
    mul.s	$f12,$f12,$f6
    # Line 305
    swc1	$f12,44($a3)
    # Line 300
    lwc1	$f11,56($a2)
    # Line 299
    lwc1	$f10,52($a2)
    # Line 298
    lwc1	$f9,48($a2)
    # Line 305
    addiu	$a3,$a3,64
    # Line 300
    mul.s	$f11,$f11,$f4
    # Line 301
    lwc1	$f8,60($a2)
    # Line 302
    swc1	$f11,-16($a3)
    # Line 299
    mul.s	$f10,$f10,$f7
    # Line 297
    addiu	$a1,$a1,4
    # Line 303
    swc1	$f10,-12($a3)
    # Line 298
    mul.s	$f9,$f9,$f5
    # Line 301
    mul.s	$f8,$f8,$f6
    # Line 304
    swc1	$f9,-8($a3)
    # Line 301
    addiu	$a2,$a2,64
    # Line 297
    bne	$a5,$a1,.L0d9a4c10
    # Line 305
    swc1	$f8,-4($a3)
.L0d9a4ce0:
    # Line 307
    jr	$ra
    nop
.end __glSpanReorderBGRA

# Function: __glSpanReduceLuminance
# Declared: Line 313 (Source lines: 315-333)
# Address: 0x0d9a4cf0 - 0x0d9a4e18 (Size: 296 bytes, Frame: 0)
.globl __glSpanReduceLuminance
.ent __glSpanReduceLuminance
__glSpanReduceLuminance:
    # Line 325
    lwc1	$f6,3544($a0)
    # Line 317
    lw	$a5,184($a1)
    # Line 323
    lwc1	$f7,30804($a0)
    # Line 322
    lwc1	$f4,30808($a0)
    # Line 315
    move	$a6,$a3
    move	$a7,$a2
    # Line 325
    blez	$a5,.L0d9a4e10
    # Line 321
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4d58
    # Line 325
    move	$a1,$zero
.L0d9a4d20:
    # Line 328
    lwc1	$f0,4($a7)
    lwc1	$f2,0($a7)
    mul.s	$f0,$f0,$f7
    lwc1	$f1,8($a7)
    madd.s	$f0,$f0,$f2,$f5
    madd.s	$f0,$f0,$f1,$f4
    # Line 329
    c.lt.s	$f6,$f0
    addiu	$a2,$a2,-1
    # Line 327
    addiu	$a1,$a1,1
    # Line 330
    addiu	$a6,$a6,4
    # Line 329
    movt.s	$f0,$f6,$fcc0
    # Line 331
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4d20
    # Line 330
    swc1	$f0,-4($a6)
.L0d9a4d58:
    move	$a3,$a7
    beqz	$at,.L0d9a4e10
    move	$a2,$a6
    nop
    nop
    nop
.L0d9a4d70:
    # Line 328
    lwc1	$f8,4($a3)
    lwc1	$f10,0($a3)
    lwc1	$f9,8($a3)
    mul.s	$f8,$f8,$f7
    madd.s	$f8,$f8,$f10,$f5
    madd.s	$f8,$f8,$f9,$f4
    # Line 329
    c.lt.s $f6,$f8
    movt.s	$f8,$f6,$fcc4
    # Line 330
    swc1	$f8,0($a2)
    # Line 328
    lwc1	$f3,20($a3)
    lwc1	$f9,16($a3)
    lwc1	$f8,24($a3)
    mul.s	$f3,$f3,$f7
    madd.s	$f3,$f3,$f9,$f5
    madd.s	$f3,$f3,$f8,$f4
    # Line 329
    c.lt.s $f6,$f3
    movt.s	$f3,$f6,$fcc3
    # Line 330
    swc1	$f3,4($a2)
    # Line 328
    lwc1	$f2,36($a3)
    lwc1	$f8,32($a3)
    lwc1	$f3,40($a3)
    mul.s	$f2,$f2,$f7
    madd.s	$f2,$f2,$f8,$f5
    madd.s	$f2,$f2,$f3,$f4
    # Line 329
    c.lt.s $f6,$f2
    movt.s	$f2,$f6,$fcc2
    # Line 330
    swc1	$f2,8($a2)
    # Line 328
    lwc1	$f1,52($a3)
    lwc1	$f3,48($a3)
    lwc1	$f2,56($a3)
    mul.s	$f1,$f1,$f7
    madd.s	$f1,$f1,$f3,$f5
    madd.s	$f1,$f1,$f2,$f4
    # Line 329
    c.lt.s $f6,$f1
    # Line 327
    addiu	$a1,$a1,4
    # Line 330
    addiu	$a2,$a2,16
    # Line 329
    movt.s	$f1,$f6,$fcc1
    # Line 331
    addiu	$a3,$a3,64
    # Line 327
    bne	$a5,$a1,.L0d9a4d70
    # Line 330
    swc1	$f1,-4($a2)
.L0d9a4e10:
    # Line 333
    jr	$ra
    nop
.end __glSpanReduceLuminance

# Function: __glSpanReduceLuminanceAlpha
# Declared: Line 339 (Source lines: 341-361)
# Address: 0x0d9a4e20 - 0x0d9a4f88 (Size: 360 bytes, Frame: 0)
.globl __glSpanReduceLuminanceAlpha
.ent __glSpanReduceLuminanceAlpha
__glSpanReduceLuminanceAlpha:
    # Line 352
    lwc1	$f6,3544($a0)
    # Line 350
    lwc1	$f7,30812($a0)
    # Line 343
    lw	$a5,184($a1)
    # Line 349
    lwc1	$f4,30804($a0)
    # Line 348
    lwc1	$f8,30808($a0)
    # Line 341
    move	$a6,$a3
    move	$a7,$a2
    # Line 352
    blez	$a5,.L0d9a4f80
    # Line 347
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9a4e98
    # Line 352
    move	$a1,$zero
.L0d9a4e54:
    # Line 355
    lwc1	$f1,4($a7)
    lwc1	$f3,0($a7)
    mul.s	$f1,$f1,$f4
    lwc1	$f2,8($a7)
    madd.s	$f1,$f1,$f3,$f5
    madd.s	$f1,$f1,$f2,$f8
    # Line 357
    c.lt.s	$f6,$f1
    movt.s	$f1,$f6,$fcc0
    swc1	$f1,0($a6)
    # Line 359
    lwc1	$f0,12($a7)
    addiu	$a2,$a2,-1
    # Line 354
    addiu	$a1,$a1,1
    # Line 359
    addiu	$a6,$a6,8
    mul.s	$f0,$f0,$f7
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4e54
    swc1	$f0,-4($a6)
.L0d9a4e98:
    move	$a2,$a7
    beqz	$at,.L0d9a4f80
    move	$a3,$a6
    nop
    nop
    nop
.L0d9a4eb0:
    # Line 355
    lwc1	$f14,4($a2)
    lwc1	$f16,0($a2)
    lwc1	$f15,8($a2)
    mul.s	$f14,$f14,$f4
    madd.s	$f14,$f14,$f16,$f5
    madd.s	$f14,$f14,$f15,$f8
    # Line 357
    c.lt.s $f6,$f14
    movt.s	$f14,$f6,$fcc4
    swc1	$f14,0($a3)
    # Line 359
    lwc1	$f13,12($a2)
    mul.s	$f13,$f13,$f7
    swc1	$f13,4($a3)
    # Line 355
    lwc1	$f12,20($a2)
    lwc1	$f14,16($a2)
    lwc1	$f13,24($a2)
    mul.s	$f12,$f12,$f4
    madd.s	$f12,$f12,$f14,$f5
    madd.s	$f12,$f12,$f13,$f8
    # Line 357
    c.lt.s $f6,$f12
    movt.s	$f12,$f6,$fcc3
    swc1	$f12,8($a3)
    # Line 359
    lwc1	$f11,28($a2)
    mul.s	$f11,$f11,$f7
    swc1	$f11,12($a3)
    # Line 355
    lwc1	$f10,36($a2)
    lwc1	$f12,32($a2)
    lwc1	$f11,40($a2)
    mul.s	$f10,$f10,$f4
    madd.s	$f10,$f10,$f12,$f5
    madd.s	$f10,$f10,$f11,$f8
    # Line 357
    c.lt.s $f6,$f10
    movt.s	$f10,$f6,$fcc2
    swc1	$f10,16($a3)
    # Line 359
    lwc1	$f9,44($a2)
    mul.s	$f9,$f9,$f7
    swc1	$f9,20($a3)
    # Line 355
    lwc1	$f3,52($a2)
    lwc1	$f10,48($a2)
    lwc1	$f9,56($a2)
    mul.s	$f3,$f3,$f4
    madd.s	$f3,$f3,$f10,$f5
    madd.s	$f3,$f3,$f9,$f8
    # Line 357
    c.lt.s $f6,$f3
    movt.s	$f3,$f6,$fcc1
    swc1	$f3,24($a3)
    # Line 359
    lwc1	$f2,60($a2)
    # Line 354
    addiu	$a1,$a1,4
    # Line 359
    addiu	$a3,$a3,32
    mul.s	$f2,$f2,$f7
    addiu	$a2,$a2,64
    # Line 354
    bne	$a5,$a1,.L0d9a4eb0
    # Line 359
    swc1	$f2,-4($a3)
.L0d9a4f80:
    # Line 361
    jr	$ra
    nop
.end __glSpanReduceLuminanceAlpha

# Function: __glSpanReduceRedAlpha
# Declared: Line 367 (Source lines: 369-382)
# Address: 0x0d9a4f90 - 0x0d9a5068 (Size: 216 bytes, Frame: 0)
.globl __glSpanReduceRedAlpha
.ent __glSpanReduceRedAlpha
__glSpanReduceRedAlpha:
    # Line 371
    lw	$a5,184($a1)
    # Line 369
    move	$a6,$a3
    # Line 375
    lwc1	$f5,30812($a0)
    move	$a1,$zero
    # Line 369
    move	$a7,$a2
    # Line 374
    lwc1	$f4,30800($a0)
    # Line 375
    blez	$a5,.L0d9a5060
    andi	$a2,$a5,0x3
    beqz	$a2,.L0d9a4fe4
    sra	$at,$a5,0x2
.L0d9a4fb8:
    # Line 378
    lwc1	$f1,0($a7)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a6)
    # Line 380
    lwc1	$f0,12($a7)
    addiu	$a2,$a2,-1
    # Line 377
    addiu	$a1,$a1,1
    # Line 380
    addiu	$a6,$a6,8
    mul.s	$f0,$f0,$f5
    addiu	$a7,$a7,16
    bnez	$a2,.L0d9a4fb8
    swc1	$f0,-4($a6)
.L0d9a4fe4:
    move	$a2,$a7
    beqz	$at,.L0d9a5060
    move	$a3,$a6
.L0d9a4ff0:
    # Line 378
    lwc1	$f11,0($a2)
    mul.s	$f11,$f11,$f4
    swc1	$f11,0($a3)
    # Line 380
    lwc1	$f10,12($a2)
    mul.s	$f10,$f10,$f5
    swc1	$f10,4($a3)
    # Line 378
    lwc1	$f9,16($a2)
    mul.s	$f9,$f9,$f4
    swc1	$f9,8($a3)
    # Line 380
    lwc1	$f8,28($a2)
    mul.s	$f8,$f8,$f5
    swc1	$f8,12($a3)
    # Line 378
    lwc1	$f7,32($a2)
    mul.s	$f7,$f7,$f4
    swc1	$f7,16($a3)
    # Line 380
    lwc1	$f6,44($a2)
    mul.s	$f6,$f6,$f5
    swc1	$f6,20($a3)
    # Line 378
    lwc1	$f3,48($a2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($a3)
    # Line 380
    lwc1	$f2,60($a2)
    # Line 377
    addiu	$a1,$a1,4
    # Line 380
    addiu	$a3,$a3,32
    mul.s	$f2,$f2,$f5
    addiu	$a2,$a2,64
    # Line 377
    bne	$a5,$a1,.L0d9a4ff0
    # Line 380
    swc1	$f2,-4($a3)
.L0d9a5060:
    # Line 382
    jr	$ra
    nop
.end __glSpanReduceRedAlpha

# Function: __glSpanReduceRedNS
# Declared: Line 388 (Source lines: 390-400)
# Address: 0x0d9a5070 - 0x0d9a50f8 (Size: 136 bytes, Frame: 0)
.globl __glSpanReduceRedNS
.ent __glSpanReduceRedNS
__glSpanReduceRedNS:
    # Line 392
    lw	$a4,184($a1)
    # Line 390
    move	$a6,$a2
    # Line 394
    blez	$a4,.L0d9a50f0
    # Line 390
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a50ac
    # Line 394
    move	$a1,$zero
.L0d9a5090:
    addiu	$a2,$a2,-1
    # Line 397
    lwc1	$f0,0($a6)
    # Line 396
    addiu	$a1,$a1,1
    # Line 397
    addiu	$a5,$a5,4
    # Line 398
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a5090
    # Line 397
    swc1	$f0,-4($a5)
.L0d9a50ac:
    move	$a2,$a5
    beqz	$at,.L0d9a50f0
    move	$a3,$a6
    nop
    nop
.L0d9a50c0:
    lwc1	$f4,0($a3)
    swc1	$f4,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    swc1	$f2,8($a2)
    # Line 396
    addiu	$a1,$a1,4
    # Line 397
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,16
    # Line 398
    addiu	$a3,$a3,64
    # Line 396
    bne	$a4,$a1,.L0d9a50c0
    # Line 397
    swc1	$f1,-4($a2)
.L0d9a50f0:
    # Line 400
    jr	$ra
    nop
.end __glSpanReduceRedNS

# Function: __glSpanReduceGreenNS
# Declared: Line 406 (Source lines: 408-419)
# Address: 0x0d9a5100 - 0x0d9a5188 (Size: 136 bytes, Frame: 0)
.globl __glSpanReduceGreenNS
.ent __glSpanReduceGreenNS
__glSpanReduceGreenNS:
    # Line 410
    lw	$a4,184($a1)
    # Line 408
    move	$a5,$a3
    # Line 414
    blez	$a4,.L0d9a5180
    addiu	$a6,$a2,4
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a513c
    move	$a1,$zero
.L0d9a5120:
    addiu	$a2,$a2,-1
    # Line 416
    lwc1	$f0,0($a6)
    # Line 415
    addiu	$a1,$a1,1
    # Line 416
    addiu	$a5,$a5,4
    # Line 417
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a5120
    # Line 416
    swc1	$f0,-4($a5)
.L0d9a513c:
    move	$a2,$a5
    beqz	$at,.L0d9a5180
    move	$a3,$a6
    nop
    nop
.L0d9a5150:
    lwc1	$f4,0($a3)
    swc1	$f4,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    swc1	$f2,8($a2)
    # Line 415
    addiu	$a1,$a1,4
    # Line 416
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,16
    # Line 417
    addiu	$a3,$a3,64
    # Line 415
    bne	$a4,$a1,.L0d9a5150
    # Line 416
    swc1	$f1,-4($a2)
.L0d9a5180:
    # Line 419
    jr	$ra
    nop
.end __glSpanReduceGreenNS

# Function: __glSpanReduceBlueNS
# Declared: Line 425 (Source lines: 427-438)
# Address: 0x0d9a5190 - 0x0d9a5218 (Size: 136 bytes, Frame: 0)
.globl __glSpanReduceBlueNS
.ent __glSpanReduceBlueNS
__glSpanReduceBlueNS:
    # Line 429
    lw	$a4,184($a1)
    # Line 427
    move	$a5,$a3
    # Line 433
    blez	$a4,.L0d9a5210
    addiu	$a6,$a2,8
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a51cc
    move	$a1,$zero
.L0d9a51b0:
    addiu	$a2,$a2,-1
    # Line 435
    lwc1	$f0,0($a6)
    # Line 434
    addiu	$a1,$a1,1
    # Line 435
    addiu	$a5,$a5,4
    # Line 436
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a51b0
    # Line 435
    swc1	$f0,-4($a5)
.L0d9a51cc:
    move	$a2,$a5
    beqz	$at,.L0d9a5210
    move	$a3,$a6
    nop
    nop
.L0d9a51e0:
    lwc1	$f4,0($a3)
    swc1	$f4,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    swc1	$f2,8($a2)
    # Line 434
    addiu	$a1,$a1,4
    # Line 435
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,16
    # Line 436
    addiu	$a3,$a3,64
    # Line 434
    bne	$a4,$a1,.L0d9a51e0
    # Line 435
    swc1	$f1,-4($a2)
.L0d9a5210:
    # Line 438
    jr	$ra
    nop
.end __glSpanReduceBlueNS

# Function: __glSpanReduceAlphaNS
# Declared: Line 444 (Source lines: 446-457)
# Address: 0x0d9a5220 - 0x0d9a52a8 (Size: 136 bytes, Frame: 0)
.globl __glSpanReduceAlphaNS
.ent __glSpanReduceAlphaNS
__glSpanReduceAlphaNS:
    # Line 448
    lw	$a4,184($a1)
    # Line 446
    move	$a5,$a3
    # Line 452
    blez	$a4,.L0d9a52a0
    addiu	$a6,$a2,12
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a525c
    move	$a1,$zero
.L0d9a5240:
    addiu	$a2,$a2,-1
    # Line 454
    lwc1	$f0,0($a6)
    # Line 453
    addiu	$a1,$a1,1
    # Line 454
    addiu	$a5,$a5,4
    # Line 455
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a5240
    # Line 454
    swc1	$f0,-4($a5)
.L0d9a525c:
    move	$a2,$a5
    beqz	$at,.L0d9a52a0
    move	$a3,$a6
    nop
    nop
.L0d9a5270:
    lwc1	$f4,0($a3)
    swc1	$f4,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    swc1	$f2,8($a2)
    # Line 453
    addiu	$a1,$a1,4
    # Line 454
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,16
    # Line 455
    addiu	$a3,$a3,64
    # Line 453
    bne	$a4,$a1,.L0d9a5270
    # Line 454
    swc1	$f1,-4($a2)
.L0d9a52a0:
    # Line 457
    jr	$ra
    nop
.end __glSpanReduceAlphaNS

# Function: __glSpanReduceRGBNS
# Declared: Line 463 (Source lines: 465-481)
# Address: 0x0d9a52b0 - 0x0d9a5388 (Size: 216 bytes, Frame: 0)
.globl __glSpanReduceRGBNS
.ent __glSpanReduceRGBNS
__glSpanReduceRGBNS:
    # Line 467
    lw	$a4,184($a1)
    # Line 465
    move	$a6,$a2
    # Line 469
    blez	$a4,.L0d9a5380
    # Line 465
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a52fc
    # Line 469
    move	$a1,$zero
.L0d9a52d0:
    # Line 474
    lwc1	$f1,4($a6)
    # Line 476
    lwc1	$f2,0($a6)
    # Line 478
    addiu	$a5,$a5,12
    # Line 475
    lwc1	$f0,8($a6)
    addiu	$a2,$a2,-1
    # Line 476
    swc1	$f2,-12($a5)
    # Line 472
    addiu	$a1,$a1,1
    # Line 477
    swc1	$f1,-8($a5)
    # Line 479
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a52d0
    # Line 478
    swc1	$f0,-4($a5)
.L0d9a52fc:
    move	$a3,$a6
    beqz	$at,.L0d9a5380
    move	$a2,$a5
    nop
    nop
.L0d9a5310:
    # Line 474
    lwc1	$f13,4($a3)
    # Line 476
    lwc1	$f14,0($a3)
    # Line 475
    lwc1	$f12,8($a3)
    # Line 476
    swc1	$f14,0($a2)
    # Line 477
    swc1	$f13,4($a2)
    # Line 478
    swc1	$f12,8($a2)
    # Line 474
    lwc1	$f10,20($a3)
    # Line 476
    lwc1	$f11,16($a3)
    # Line 475
    lwc1	$f9,24($a3)
    # Line 476
    swc1	$f11,12($a2)
    # Line 477
    swc1	$f10,16($a2)
    # Line 478
    swc1	$f9,20($a2)
    # Line 474
    lwc1	$f7,36($a3)
    # Line 476
    lwc1	$f8,32($a3)
    # Line 475
    lwc1	$f6,40($a3)
    # Line 476
    swc1	$f8,24($a2)
    # Line 477
    swc1	$f7,28($a2)
    # Line 478
    swc1	$f6,32($a2)
    # Line 474
    lwc1	$f4,52($a3)
    # Line 476
    lwc1	$f5,48($a3)
    # Line 478
    addiu	$a2,$a2,48
    # Line 475
    lwc1	$f3,56($a3)
    # Line 472
    addiu	$a1,$a1,4
    # Line 476
    swc1	$f5,-12($a2)
    # Line 477
    swc1	$f4,-8($a2)
    # Line 479
    addiu	$a3,$a3,64
    # Line 472
    bne	$a4,$a1,.L0d9a5310
    # Line 478
    swc1	$f3,-4($a2)
.L0d9a5380:
    # Line 481
    jr	$ra
    nop
.end __glSpanReduceRGBNS

# Function: __glSpanReduceBGRNS
# Declared: Line 489 (Source lines: 491-507)
# Address: 0x0d9a5390 - 0x0d9a5468 (Size: 216 bytes, Frame: 0)
.globl __glSpanReduceBGRNS
.ent __glSpanReduceBGRNS
__glSpanReduceBGRNS:
    # Line 493
    lw	$a4,184($a1)
    # Line 491
    move	$a6,$a2
    # Line 495
    blez	$a4,.L0d9a5460
    # Line 491
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a53dc
    # Line 495
    move	$a1,$zero
.L0d9a53b0:
    # Line 500
    lwc1	$f1,4($a6)
    # Line 502
    lwc1	$f2,0($a6)
    # Line 504
    addiu	$a5,$a5,12
    # Line 501
    lwc1	$f0,8($a6)
    addiu	$a2,$a2,-1
    # Line 502
    swc1	$f2,-12($a5)
    # Line 498
    addiu	$a1,$a1,1
    # Line 503
    swc1	$f1,-8($a5)
    # Line 505
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a53b0
    # Line 504
    swc1	$f0,-4($a5)
.L0d9a53dc:
    move	$a3,$a6
    beqz	$at,.L0d9a5460
    move	$a2,$a5
    nop
    nop
.L0d9a53f0:
    # Line 500
    lwc1	$f13,4($a3)
    # Line 502
    lwc1	$f14,0($a3)
    # Line 501
    lwc1	$f12,8($a3)
    # Line 502
    swc1	$f14,0($a2)
    # Line 503
    swc1	$f13,4($a2)
    # Line 504
    swc1	$f12,8($a2)
    # Line 500
    lwc1	$f10,20($a3)
    # Line 502
    lwc1	$f11,16($a3)
    # Line 501
    lwc1	$f9,24($a3)
    # Line 502
    swc1	$f11,12($a2)
    # Line 503
    swc1	$f10,16($a2)
    # Line 504
    swc1	$f9,20($a2)
    # Line 500
    lwc1	$f7,36($a3)
    # Line 502
    lwc1	$f8,32($a3)
    # Line 501
    lwc1	$f6,40($a3)
    # Line 502
    swc1	$f8,24($a2)
    # Line 503
    swc1	$f7,28($a2)
    # Line 504
    swc1	$f6,32($a2)
    # Line 500
    lwc1	$f4,52($a3)
    # Line 502
    lwc1	$f5,48($a3)
    # Line 504
    addiu	$a2,$a2,48
    # Line 501
    lwc1	$f3,56($a3)
    # Line 498
    addiu	$a1,$a1,4
    # Line 502
    swc1	$f5,-12($a2)
    # Line 503
    swc1	$f4,-8($a2)
    # Line 505
    addiu	$a3,$a3,64
    # Line 498
    bne	$a4,$a1,.L0d9a53f0
    # Line 504
    swc1	$f3,-4($a2)
.L0d9a5460:
    # Line 507
    jr	$ra
    nop
.end __glSpanReduceBGRNS

# Function: __glSpanReorderABGRNS
# Declared: Line 513 (Source lines: 515-532)
# Address: 0x0d9a5470 - 0x0d9a5568 (Size: 248 bytes, Frame: 0)
.globl __glSpanReorderABGRNS
.ent __glSpanReorderABGRNS
__glSpanReorderABGRNS:
    # Line 517
    lw	$a4,184($a1)
    # Line 515
    move	$a6,$a2
    # Line 519
    blez	$a4,.L0d9a5560
    # Line 515
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a54c4
    # Line 519
    move	$a1,$zero
.L0d9a5490:
    # Line 523
    lwc1	$f0,0($a6)
    # Line 524
    lwc1	$f1,4($a6)
    # Line 527
    lwc1	$f3,12($a6)
    # Line 530
    addiu	$a5,$a5,16
    # Line 525
    lwc1	$f2,8($a6)
    # Line 527
    swc1	$f3,-16($a5)
    addiu	$a2,$a2,-1
    # Line 528
    swc1	$f2,-12($a5)
    # Line 522
    addiu	$a1,$a1,1
    # Line 529
    swc1	$f1,-8($a5)
    # Line 526
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a5490
    # Line 530
    swc1	$f0,-4($a5)
.L0d9a54c4:
    move	$a2,$a6
    beqz	$at,.L0d9a5560
    move	$a3,$a5
.L0d9a54d0:
    # Line 523
    lwc1	$f16,0($a2)
    # Line 524
    lwc1	$f17,4($a2)
    # Line 527
    lwc1	$f19,12($a2)
    # Line 525
    lwc1	$f18,8($a2)
    # Line 527
    swc1	$f19,0($a3)
    # Line 528
    swc1	$f18,4($a3)
    # Line 529
    swc1	$f17,8($a3)
    # Line 530
    swc1	$f16,12($a3)
    # Line 523
    lwc1	$f12,16($a2)
    # Line 524
    lwc1	$f13,20($a2)
    # Line 527
    lwc1	$f15,28($a2)
    # Line 525
    lwc1	$f14,24($a2)
    # Line 527
    swc1	$f15,16($a3)
    # Line 528
    swc1	$f14,20($a3)
    # Line 529
    swc1	$f13,24($a3)
    # Line 530
    swc1	$f12,28($a3)
    # Line 523
    lwc1	$f8,32($a2)
    # Line 524
    lwc1	$f9,36($a2)
    # Line 527
    lwc1	$f11,44($a2)
    # Line 525
    lwc1	$f10,40($a2)
    # Line 527
    swc1	$f11,32($a3)
    # Line 528
    swc1	$f10,36($a3)
    # Line 529
    swc1	$f9,40($a3)
    # Line 530
    swc1	$f8,44($a3)
    # Line 523
    lwc1	$f4,48($a2)
    # Line 524
    lwc1	$f5,52($a2)
    # Line 527
    lwc1	$f7,60($a2)
    # Line 530
    addiu	$a3,$a3,64
    # Line 525
    lwc1	$f6,56($a2)
    # Line 527
    swc1	$f7,-16($a3)
    # Line 522
    addiu	$a1,$a1,4
    # Line 528
    swc1	$f6,-12($a3)
    # Line 529
    swc1	$f5,-8($a3)
    # Line 526
    addiu	$a2,$a2,64
    # Line 522
    bne	$a4,$a1,.L0d9a54d0
    # Line 530
    swc1	$f4,-4($a3)
.L0d9a5560:
    # Line 532
    jr	$ra
    nop
.end __glSpanReorderABGRNS

# Function: __glSpanReorderBGRANS
# Declared: Line 538 (Source lines: 540-557)
# Address: 0x0d9a5570 - 0x0d9a5668 (Size: 248 bytes, Frame: 0)
.globl __glSpanReorderBGRANS
.ent __glSpanReorderBGRANS
__glSpanReorderBGRANS:
    # Line 542
    lw	$a4,184($a1)
    # Line 540
    move	$a6,$a2
    # Line 544
    blez	$a4,.L0d9a5660
    # Line 540
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a55c4
    # Line 544
    move	$a1,$zero
.L0d9a5590:
    # Line 548
    lwc1	$f1,0($a6)
    # Line 549
    lwc1	$f2,4($a6)
    # Line 550
    lwc1	$f3,8($a6)
    # Line 555
    addiu	$a5,$a5,16
    # Line 551
    lwc1	$f0,12($a6)
    # Line 552
    swc1	$f3,-16($a5)
    addiu	$a2,$a2,-1
    # Line 553
    swc1	$f2,-12($a5)
    # Line 547
    addiu	$a1,$a1,1
    # Line 554
    swc1	$f1,-8($a5)
    # Line 551
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a5590
    # Line 555
    swc1	$f0,-4($a5)
.L0d9a55c4:
    move	$a2,$a6
    beqz	$at,.L0d9a5660
    move	$a3,$a5
.L0d9a55d0:
    # Line 548
    lwc1	$f17,0($a2)
    # Line 549
    lwc1	$f18,4($a2)
    # Line 550
    lwc1	$f19,8($a2)
    # Line 551
    lwc1	$f16,12($a2)
    # Line 552
    swc1	$f19,0($a3)
    # Line 553
    swc1	$f18,4($a3)
    # Line 554
    swc1	$f17,8($a3)
    # Line 555
    swc1	$f16,12($a3)
    # Line 548
    lwc1	$f13,16($a2)
    # Line 549
    lwc1	$f14,20($a2)
    # Line 550
    lwc1	$f15,24($a2)
    # Line 551
    lwc1	$f12,28($a2)
    # Line 552
    swc1	$f15,16($a3)
    # Line 553
    swc1	$f14,20($a3)
    # Line 554
    swc1	$f13,24($a3)
    # Line 555
    swc1	$f12,28($a3)
    # Line 548
    lwc1	$f9,32($a2)
    # Line 549
    lwc1	$f10,36($a2)
    # Line 550
    lwc1	$f11,40($a2)
    # Line 551
    lwc1	$f8,44($a2)
    # Line 552
    swc1	$f11,32($a3)
    # Line 553
    swc1	$f10,36($a3)
    # Line 554
    swc1	$f9,40($a3)
    # Line 555
    swc1	$f8,44($a3)
    # Line 548
    lwc1	$f5,48($a2)
    # Line 549
    lwc1	$f6,52($a2)
    # Line 550
    lwc1	$f7,56($a2)
    # Line 555
    addiu	$a3,$a3,64
    # Line 551
    lwc1	$f4,60($a2)
    # Line 552
    swc1	$f7,-16($a3)
    # Line 547
    addiu	$a1,$a1,4
    # Line 553
    swc1	$f6,-12($a3)
    # Line 554
    swc1	$f5,-8($a3)
    # Line 551
    addiu	$a2,$a2,64
    # Line 547
    bne	$a4,$a1,.L0d9a55d0
    # Line 555
    swc1	$f4,-4($a3)
.L0d9a5660:
    # Line 557
    jr	$ra
    nop
.end __glSpanReorderBGRANS

# Function: __glSpanReduceRedAlphaNS
# Declared: Line 563 (Source lines: 565-576)
# Address: 0x0d9a5670 - 0x0d9a5718 (Size: 168 bytes, Frame: 0)
.globl __glSpanReduceRedAlphaNS
.ent __glSpanReduceRedAlphaNS
__glSpanReduceRedAlphaNS:
    # Line 567
    lw	$a4,184($a1)
    # Line 565
    move	$a6,$a2
    # Line 569
    blez	$a4,.L0d9a5710
    # Line 565
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a56b4
    # Line 569
    move	$a1,$zero
.L0d9a5690:
    # Line 572
    lwc1	$f1,0($a6)
    swc1	$f1,0($a5)
    addiu	$a2,$a2,-1
    # Line 574
    lwc1	$f0,12($a6)
    # Line 571
    addiu	$a1,$a1,1
    # Line 574
    addiu	$a5,$a5,8
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9a5690
    swc1	$f0,-4($a5)
.L0d9a56b4:
    move	$a2,$a6
    beqz	$at,.L0d9a5710
    move	$a3,$a5
.L0d9a56c0:
    # Line 572
    lwc1	$f9,0($a2)
    swc1	$f9,0($a3)
    # Line 574
    lwc1	$f8,12($a2)
    swc1	$f8,4($a3)
    # Line 572
    lwc1	$f7,16($a2)
    swc1	$f7,8($a3)
    # Line 574
    lwc1	$f6,28($a2)
    swc1	$f6,12($a3)
    # Line 572
    lwc1	$f5,32($a2)
    swc1	$f5,16($a3)
    # Line 574
    lwc1	$f4,44($a2)
    swc1	$f4,20($a3)
    # Line 572
    lwc1	$f3,48($a2)
    swc1	$f3,24($a3)
    # Line 571
    addiu	$a1,$a1,4
    # Line 574
    lwc1	$f2,60($a2)
    addiu	$a3,$a3,32
    addiu	$a2,$a2,64
    # Line 571
    bne	$a4,$a1,.L0d9a56c0
    # Line 574
    swc1	$f2,-4($a3)
.L0d9a5710:
    # Line 576
    jr	$ra
    nop
.end __glSpanReduceRedAlphaNS

# Function: __glSpanPackUbyte
# Declared: Line 582 (Source lines: 584-598)
# Address: 0x0d9a5720 - 0x0d9a5818 (Size: 248 bytes, Frame: 0)
.globl __glSpanPackUbyte
.ent __glSpanPackUbyte
__glSpanPackUbyte:
    # Line 589
    lw	$v0,108($a1)
    # Line 586
    lw	$at,184($a1)
    # Line 589
    mult	$at,$v0
    mflo	$a5
    # Line 584
    move	$a6,$a2
    # Line 589
    move	$a2,$zero
    blez	$a5,.L0d9a5810
    # Line 584
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9a577c
    sra	$a1,$a5,0x2
.L0d9a574c:
    # Line 596
    lwc1	$f1,0($a6)
    lwc1	$f2,3548($a0)
    lwc1	$f0,3540($a0)
    madd.s	$f0,$f0,$f1,$f2
    trunc.w.s	$f0,$f0
    addiu	$a3,$a3,-1
    # Line 595
    addiu	$a2,$a2,1
    # Line 596
    addiu	$a7,$a7,1
    mfc1	$v1,$f0
    addiu	$a6,$a6,4
    bnez	$a3,.L0d9a574c
    sb	$v1,-1($a7)
.L0d9a577c:
    move	$a4,$a6
    beqz	$a1,.L0d9a5810
    move	$a3,$a7
    nop
    nop
.L0d9a5790:
    lwc1	$f13,0($a4)
    lwc1	$f14,3548($a0)
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f14
    trunc.w.s	$f12,$f12
    mfc1	$t1,$f12
    sb	$t1,0($a3)
    lwc1	$f10,4($a4)
    lwc1	$f11,3548($a0)
    lwc1	$f9,3540($a0)
    madd.s	$f9,$f9,$f10,$f11
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    sb	$t0,1($a3)
    lwc1	$f7,8($a4)
    lwc1	$f8,3548($a0)
    lwc1	$f6,3540($a0)
    madd.s	$f6,$f6,$f7,$f8
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    sb	$a7,2($a3)
    lwc1	$f4,12($a4)
    lwc1	$f5,3548($a0)
    lwc1	$f3,3540($a0)
    madd.s	$f3,$f3,$f4,$f5
    trunc.w.s	$f3,$f3
    # Line 595
    addiu	$a2,$a2,4
    # Line 596
    addiu	$a3,$a3,4
    mfc1	$a6,$f3
    addiu	$a4,$a4,16
    # Line 595
    bne	$a5,$a2,.L0d9a5790
    # Line 596
    sb	$a6,-1($a3)
.L0d9a5810:
    # Line 598
    jr	$ra
    nop
.end __glSpanPackUbyte

# Function: __glSpanPackByte
# Declared: Line 604 (Source lines: 606-620)
# Address: 0x0d9a5820 - 0x0d9a58cc (Size: 172 bytes, Frame: 192)
.globl __glSpanPackByte
.ent __glSpanPackByte
__glSpanPackByte:
    # Line 611
    lw	$v1,108($a1)
    # Line 608
    lw	$v0,184($a1)
    # Line 611
    mult	$v0,$v1
    # Line 606
    addiu	$sp,$sp,-64
    sd	$s4,8($sp)
    move	$s4,$a0
    sd	$s0,16($sp)
    move	$s0,$a3
    lui	$at,0xb
    sd	$s3,0($sp)
    # Line 611
    mflo	$s3
    # Line 606
    sd	$s1,24($sp)
    move	$s1,$a2
    addiu	$at,$at,-19092
    sd	$gp,32($sp)
    # Line 611
    blez	$s3,.L0d9a58b0
    # Line 606
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$s2,40($sp)
    # Line 611
    move	$s2,$zero
.L0d9a5870:
    # Line 618
    lwc1	$f14,3548($s4)
    lwc1	$f13,0($s1)
    lwc1	$f12,3540($s4)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    addiu	$s0,$s0,1
    addiu	$s1,$s1,4
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    # Line 617
    addiu	$s2,$s2,1
    # Line 618
    mfc1	$a0,$f15
    # Line 617
    bne	$s3,$s2,.L0d9a5870
    # Line 618
    sb	$a0,-1($s0)
    ld	$s2,40($sp)
    ld	$ra,48($sp)
.L0d9a58b0:
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 620
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSpanPackByte

# Function: __glSpanPackUshort
# Declared: Line 626 (Source lines: 628-642)
# Address: 0x0d9a58d0 - 0x0d9a59c8 (Size: 248 bytes, Frame: 0)
.globl __glSpanPackUshort
.ent __glSpanPackUshort
__glSpanPackUshort:
    # Line 633
    lw	$v0,108($a1)
    # Line 630
    lw	$at,184($a1)
    # Line 633
    mult	$at,$v0
    mflo	$a5
    # Line 628
    move	$a6,$a2
    # Line 633
    move	$a2,$zero
    blez	$a5,.L0d9a59c0
    # Line 628
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9a592c
    sra	$a1,$a5,0x2
.L0d9a58fc:
    # Line 640
    lwc1	$f1,0($a6)
    lwc1	$f2,3556($a0)
    lwc1	$f0,3540($a0)
    madd.s	$f0,$f0,$f1,$f2
    trunc.w.s	$f0,$f0
    addiu	$a3,$a3,-1
    # Line 639
    addiu	$a2,$a2,1
    # Line 640
    addiu	$a7,$a7,2
    mfc1	$v1,$f0
    addiu	$a6,$a6,4
    bnez	$a3,.L0d9a58fc
    sh	$v1,-2($a7)
.L0d9a592c:
    move	$a4,$a6
    beqz	$a1,.L0d9a59c0
    move	$a3,$a7
    nop
    nop
.L0d9a5940:
    lwc1	$f13,0($a4)
    lwc1	$f14,3556($a0)
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f14
    trunc.w.s	$f12,$f12
    mfc1	$t1,$f12
    sh	$t1,0($a3)
    lwc1	$f10,4($a4)
    lwc1	$f11,3556($a0)
    lwc1	$f9,3540($a0)
    madd.s	$f9,$f9,$f10,$f11
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    sh	$t0,2($a3)
    lwc1	$f7,8($a4)
    lwc1	$f8,3556($a0)
    lwc1	$f6,3540($a0)
    madd.s	$f6,$f6,$f7,$f8
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    sh	$a7,4($a3)
    lwc1	$f4,12($a4)
    lwc1	$f5,3556($a0)
    lwc1	$f3,3540($a0)
    madd.s	$f3,$f3,$f4,$f5
    trunc.w.s	$f3,$f3
    # Line 639
    addiu	$a2,$a2,4
    # Line 640
    addiu	$a3,$a3,8
    mfc1	$a6,$f3
    addiu	$a4,$a4,16
    # Line 639
    bne	$a5,$a2,.L0d9a5940
    # Line 640
    sh	$a6,-2($a3)
.L0d9a59c0:
    # Line 642
    jr	$ra
    nop
.end __glSpanPackUshort

# Function: __glSpanPackShort
# Declared: Line 648 (Source lines: 650-664)
# Address: 0x0d9a59d0 - 0x0d9a5a7c (Size: 172 bytes, Frame: 192)
.globl __glSpanPackShort
.ent __glSpanPackShort
__glSpanPackShort:
    # Line 655
    lw	$v1,108($a1)
    # Line 652
    lw	$v0,184($a1)
    # Line 655
    mult	$v0,$v1
    # Line 650
    addiu	$sp,$sp,-64
    sd	$s4,8($sp)
    move	$s4,$a0
    sd	$s0,16($sp)
    move	$s0,$a3
    lui	$at,0xb
    sd	$s3,0($sp)
    # Line 655
    mflo	$s3
    # Line 650
    sd	$s1,24($sp)
    move	$s1,$a2
    addiu	$at,$at,-19524
    sd	$gp,32($sp)
    # Line 655
    blez	$s3,.L0d9a5a60
    # Line 650
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$s2,40($sp)
    # Line 655
    move	$s2,$zero
.L0d9a5a20:
    # Line 662
    lwc1	$f14,3556($s4)
    lwc1	$f13,0($s1)
    lwc1	$f12,3540($s4)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    addiu	$s0,$s0,2
    addiu	$s1,$s1,4
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    # Line 661
    addiu	$s2,$s2,1
    # Line 662
    mfc1	$a0,$f15
    # Line 661
    bne	$s3,$s2,.L0d9a5a20
    # Line 662
    sh	$a0,-2($s0)
    ld	$s2,40($sp)
    ld	$ra,48($sp)
.L0d9a5a60:
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 664
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSpanPackShort

# Function: __glSpanPackUint
# Declared: Line 670 (Source lines: 672-686)
# Address: 0x0d9a5a80 - 0x0d9a5b78 (Size: 248 bytes, Frame: 0)
.globl __glSpanPackUint
.ent __glSpanPackUint
__glSpanPackUint:
    # Line 677
    lw	$v0,108($a1)
    # Line 674
    lw	$at,184($a1)
    # Line 677
    mult	$at,$v0
    mflo	$a5
    # Line 672
    move	$a6,$a2
    # Line 677
    move	$a2,$zero
    blez	$a5,.L0d9a5b70
    # Line 672
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9a5adc
    sra	$a1,$a5,0x2
.L0d9a5aac:
    # Line 684
    lwc1	$f1,0($a6)
    lwc1	$f2,3564($a0)
    lwc1	$f0,3540($a0)
    madd.s	$f0,$f0,$f1,$f2
    trunc.l.s	$f0,$f0
    addiu	$a3,$a3,-1
    # Line 683
    addiu	$a2,$a2,1
    # Line 684
    addiu	$a7,$a7,4
    dmfc1	$v1,$f0
    addiu	$a6,$a6,4
    bnez	$a3,.L0d9a5aac
    sw	$v1,-4($a7)
.L0d9a5adc:
    move	$a4,$a6
    beqz	$a1,.L0d9a5b70
    move	$a3,$a7
    nop
    nop
.L0d9a5af0:
    lwc1	$f13,0($a4)
    lwc1	$f14,3564($a0)
    lwc1	$f12,3540($a0)
    madd.s	$f12,$f12,$f13,$f14
    trunc.l.s	$f12,$f12
    dmfc1	$t1,$f12
    sw	$t1,0($a3)
    lwc1	$f10,4($a4)
    lwc1	$f11,3564($a0)
    lwc1	$f9,3540($a0)
    madd.s	$f9,$f9,$f10,$f11
    trunc.l.s	$f9,$f9
    dmfc1	$t0,$f9
    sw	$t0,4($a3)
    lwc1	$f7,8($a4)
    lwc1	$f8,3564($a0)
    lwc1	$f6,3540($a0)
    madd.s	$f6,$f6,$f7,$f8
    trunc.l.s	$f6,$f6
    dmfc1	$a7,$f6
    sw	$a7,8($a3)
    lwc1	$f4,12($a4)
    lwc1	$f5,3564($a0)
    lwc1	$f3,3540($a0)
    madd.s	$f3,$f3,$f4,$f5
    trunc.l.s	$f3,$f3
    # Line 683
    addiu	$a2,$a2,4
    # Line 684
    addiu	$a3,$a3,16
    dmfc1	$a6,$f3
    addiu	$a4,$a4,16
    # Line 683
    bne	$a5,$a2,.L0d9a5af0
    # Line 684
    sw	$a6,-4($a3)
.L0d9a5b70:
    # Line 686
    jr	$ra
    nop
.end __glSpanPackUint

# Function: __glSpanPackInt
# Declared: Line 692 (Source lines: 694-708)
# Address: 0x0d9a5b80 - 0x0d9a5c28 (Size: 168 bytes, Frame: 192)
.globl __glSpanPackInt
.ent __glSpanPackInt
__glSpanPackInt:
    # Line 699
    lw	$v1,108($a1)
    # Line 696
    lw	$v0,184($a1)
    # Line 699
    mult	$v0,$v1
    # Line 694
    addiu	$sp,$sp,-64
    sd	$s4,8($sp)
    move	$s4,$a0
    sd	$s0,16($sp)
    move	$s0,$a3
    lui	$at,0xb
    sd	$s3,0($sp)
    # Line 699
    mflo	$s3
    # Line 694
    sd	$s1,24($sp)
    move	$s1,$a2
    addiu	$at,$at,-19956
    sd	$gp,32($sp)
    # Line 699
    blez	$s3,.L0d9a5c0c
    # Line 694
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$s2,40($sp)
    # Line 699
    move	$s2,$zero
.L0d9a5bd0:
    # Line 706
    lwc1	$f14,3564($s4)
    lwc1	$f13,0($s1)
    lwc1	$f12,3540($s4)
    # lw $t9, -22848($gp) # &floorf
    mul.s	$f13,$f13,$f14
    addiu	$s0,$s0,4
    addiu	$s1,$s1,4
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 705
    addiu	$s2,$s2,1
    # Line 706
    trunc.w.s	$f15,$f0
    # Line 705
    bne	$s3,$s2,.L0d9a5bd0
    # Line 706
    swc1	$f15,-4($s0)
    ld	$s2,40($sp)
    ld	$ra,48($sp)
.L0d9a5c0c:
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 708
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSpanPackInt

# Function: __glSpanPack332Ubyte
# Declared: Line 715 (Source lines: 717-737)
# Address: 0x0d9a5c30 - 0x0d9a5db8 (Size: 392 bytes, Frame: 0)
.globl __glSpanPack332Ubyte
.ent __glSpanPack332Ubyte
__glSpanPack332Ubyte:
    # Line 717
    move	$a6,$a3
    # Line 719
    lw	$a5,184($a1)
    # Line 717
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-20132
    andi	$v1,$a5,0x1
    # Line 721
    blez	$a5,.L0d9a5db0
    # Line 717
    addu	$at,$t9,$v0
    # Line 721
    move	$a2,$zero
    lwc1	$f5,_lit_40400000
    beqz	$v1,.L0d9a5ccc
    lwc1	$f4,_lit_40e00000
    # Line 730
    lwc1	$f2,0($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0xff
    sll	$a0,$a0,0x5
    andi	$a0,$a0,0xe0
    sb	$a0,0($a3)
    # Line 732
    lwc1	$f1,4($a7)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xff
    sll	$a1,$a1,0x2
    andi	$a1,$a1,0x1c
    or	$a0,$a0,$a1
    sb	$a0,0($a3)
    # Line 734
    lwc1	$f0,8($a7)
    mul.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 728
    li	$a2,1
    # Line 735
    addiu	$a6,$a3,1
    # Line 734
    andi	$a1,$a1,0x3
    # Line 733
    addiu	$a7,$a7,12
    # Line 734
    or	$a0,$a0,$a1
    sb	$a0,0($a3)
.L0d9a5ccc:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a5db0
    move	$a4,$a6
    nop
.L0d9a5ce0:
    # Line 730
    lwc1	$f10,0($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$a7,$f10
    andi	$a7,$a7,0xff
    sll	$a7,$a7,0x5
    andi	$a7,$a7,0xe0
    sb	$a7,0($a4)
    # Line 732
    lwc1	$f9,4($a3)
    mul.s	$f9,$f9,$f4
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xff
    sll	$t0,$t0,0x2
    andi	$t0,$t0,0x1c
    or	$a7,$a7,$t0
    sb	$a7,0($a4)
    # Line 734
    lwc1	$f8,8($a3)
    mul.s	$f8,$f8,$f5
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f8
    andi	$t0,$t0,0x3
    or	$a7,$a7,$t0
    sb	$a7,0($a4)
    # Line 730
    lwc1	$f7,12($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a6,$f7
    andi	$a6,$a6,0xff
    sll	$a6,$a6,0x5
    andi	$a6,$a6,0xe0
    sb	$a6,1($a4)
    # Line 732
    lwc1	$f6,16($a3)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xff
    sll	$a7,$a7,0x2
    andi	$a7,$a7,0x1c
    or	$a6,$a6,$a7
    sb	$a6,1($a4)
    # Line 734
    lwc1	$f3,20($a3)
    mul.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    # Line 735
    addiu	$a4,$a4,2
    # Line 728
    addiu	$a2,$a2,2
    # Line 733
    addiu	$a3,$a3,24
    # Line 734
    andi	$a7,$a7,0x3
    or	$a6,$a6,$a7
    # Line 728
    bne	$a5,$a2,.L0d9a5ce0
    # Line 734
    sb	$a6,-1($a4)
.L0d9a5db0:
    # Line 737
    jr	$ra
    nop
.end __glSpanPack332Ubyte

# Function: __glSpanPack233RevUbyte
# Declared: Line 743 (Source lines: 745-765)
# Address: 0x0d9a5dc0 - 0x0d9a5f48 (Size: 392 bytes, Frame: 0)
.globl __glSpanPack233RevUbyte
.ent __glSpanPack233RevUbyte
__glSpanPack233RevUbyte:
    # Line 745
    move	$a6,$a3
    # Line 747
    lw	$a5,184($a1)
    # Line 745
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-20532
    andi	$v1,$a5,0x1
    # Line 749
    blez	$a5,.L0d9a5f40
    # Line 745
    addu	$at,$t9,$v0
    # Line 749
    move	$a2,$zero
    lwc1	$f5,_lit_40400000
    beqz	$v1,.L0d9a5e5c
    lwc1	$f4,_lit_40e00000
    # Line 758
    lwc1	$f2,0($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0x7
    sb	$a0,0($a3)
    # Line 760
    lwc1	$f1,4($a7)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xff
    sll	$a1,$a1,0x3
    andi	$a1,$a1,0x38
    or	$a0,$a0,$a1
    sb	$a0,0($a3)
    # Line 762
    lwc1	$f0,8($a7)
    mul.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    andi	$a1,$a1,0xff
    # Line 756
    li	$a2,1
    # Line 762
    sll	$a1,$a1,0x6
    # Line 763
    addiu	$a6,$a3,1
    # Line 762
    andi	$a1,$a1,0xc0
    # Line 761
    addiu	$a7,$a7,12
    # Line 762
    or	$a0,$a0,$a1
    sb	$a0,0($a3)
.L0d9a5e5c:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a5f40
    move	$a4,$a6
    nop
.L0d9a5e70:
    # Line 758
    lwc1	$f10,0($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$a7,$f10
    andi	$a7,$a7,0x7
    sb	$a7,0($a4)
    # Line 760
    lwc1	$f9,4($a3)
    mul.s	$f9,$f9,$f4
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xff
    sll	$t0,$t0,0x3
    andi	$t0,$t0,0x38
    or	$a7,$a7,$t0
    sb	$a7,0($a4)
    # Line 762
    lwc1	$f8,8($a3)
    mul.s	$f8,$f8,$f5
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f8
    andi	$t0,$t0,0xff
    sll	$t0,$t0,0x6
    andi	$t0,$t0,0xc0
    or	$a7,$a7,$t0
    sb	$a7,0($a4)
    # Line 758
    lwc1	$f7,12($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a6,$f7
    andi	$a6,$a6,0x7
    sb	$a6,1($a4)
    # Line 760
    lwc1	$f6,16($a3)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xff
    sll	$a7,$a7,0x3
    andi	$a7,$a7,0x38
    or	$a6,$a6,$a7
    sb	$a6,1($a4)
    # Line 762
    lwc1	$f3,20($a3)
    mul.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    # Line 763
    addiu	$a4,$a4,2
    # Line 762
    andi	$a7,$a7,0xff
    # Line 756
    addiu	$a2,$a2,2
    # Line 762
    sll	$a7,$a7,0x6
    # Line 761
    addiu	$a3,$a3,24
    # Line 762
    andi	$a7,$a7,0xc0
    or	$a6,$a6,$a7
    # Line 756
    bne	$a5,$a2,.L0d9a5e70
    # Line 762
    sb	$a6,-1($a4)
.L0d9a5f40:
    # Line 765
    jr	$ra
    nop
.end __glSpanPack233RevUbyte

# Function: __glSpanPack565Ushort
# Declared: Line 771 (Source lines: 773-793)
# Address: 0x0d9a5f50 - 0x0d9a60d8 (Size: 392 bytes, Frame: 0)
.globl __glSpanPack565Ushort
.ent __glSpanPack565Ushort
__glSpanPack565Ushort:
    # Line 773
    move	$a6,$a3
    # Line 775
    lw	$a5,184($a1)
    # Line 773
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-20932
    andi	$v1,$a5,0x1
    # Line 777
    blez	$a5,.L0d9a60d0
    # Line 773
    addu	$at,$t9,$v0
    # Line 777
    move	$a2,$zero
    lwc1	$f5,_lit_427c0000
    beqz	$v1,.L0d9a5fec
    lwc1	$f4,_lit_41f80000
    # Line 786
    lwc1	$f2,0($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0xb
    andi	$a0,$a0,0xf800
    sh	$a0,0($a3)
    # Line 788
    lwc1	$f1,4($a7)
    mul.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x5
    andi	$a1,$a1,0x7e0
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 790
    lwc1	$f0,8($a7)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 784
    li	$a2,1
    # Line 791
    addiu	$a6,$a3,2
    # Line 790
    andi	$a1,$a1,0x1f
    # Line 789
    addiu	$a7,$a7,12
    # Line 790
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
.L0d9a5fec:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a60d0
    move	$a4,$a6
    nop
.L0d9a6000:
    # Line 786
    lwc1	$f10,0($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$a7,$f10
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0xb
    andi	$a7,$a7,0xf800
    sh	$a7,0($a4)
    # Line 788
    lwc1	$f9,4($a3)
    mul.s	$f9,$f9,$f5
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x5
    andi	$t0,$t0,0x7e0
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 790
    lwc1	$f8,8($a3)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f8
    andi	$t0,$t0,0x1f
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 786
    lwc1	$f7,12($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a6,$f7
    andi	$a6,$a6,0xffff
    sll	$a6,$a6,0xb
    andi	$a6,$a6,0xf800
    sh	$a6,2($a4)
    # Line 788
    lwc1	$f6,16($a3)
    mul.s	$f6,$f6,$f5
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x5
    andi	$a7,$a7,0x7e0
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 790
    lwc1	$f3,20($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    # Line 791
    addiu	$a4,$a4,4
    # Line 784
    addiu	$a2,$a2,2
    # Line 789
    addiu	$a3,$a3,24
    # Line 790
    andi	$a7,$a7,0x1f
    or	$a6,$a6,$a7
    # Line 784
    bne	$a5,$a2,.L0d9a6000
    # Line 790
    sh	$a6,-2($a4)
.L0d9a60d0:
    # Line 793
    jr	$ra
    nop
.end __glSpanPack565Ushort

# Function: __glSpanPack565RevUshort
# Declared: Line 799 (Source lines: 801-821)
# Address: 0x0d9a60e0 - 0x0d9a6268 (Size: 392 bytes, Frame: 0)
.globl __glSpanPack565RevUshort
.ent __glSpanPack565RevUshort
__glSpanPack565RevUshort:
    # Line 801
    move	$a6,$a3
    # Line 803
    lw	$a5,184($a1)
    # Line 801
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-21332
    andi	$v1,$a5,0x1
    # Line 805
    blez	$a5,.L0d9a6260
    # Line 801
    addu	$at,$t9,$v0
    # Line 805
    move	$a2,$zero
    lwc1	$f5,_lit_427c0000
    beqz	$v1,.L0d9a617c
    lwc1	$f4,_lit_41f80000
    # Line 814
    lwc1	$f2,0($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0x1f
    sh	$a0,0($a3)
    # Line 816
    lwc1	$f1,4($a7)
    mul.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x5
    andi	$a1,$a1,0x7e0
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 818
    lwc1	$f0,8($a7)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    andi	$a1,$a1,0xffff
    # Line 812
    li	$a2,1
    # Line 818
    sll	$a1,$a1,0xb
    # Line 819
    addiu	$a6,$a3,2
    # Line 818
    andi	$a1,$a1,0xf800
    # Line 817
    addiu	$a7,$a7,12
    # Line 818
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
.L0d9a617c:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a6260
    move	$a4,$a6
    nop
.L0d9a6190:
    # Line 814
    lwc1	$f10,0($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$a7,$f10
    andi	$a7,$a7,0x1f
    sh	$a7,0($a4)
    # Line 816
    lwc1	$f9,4($a3)
    mul.s	$f9,$f9,$f5
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x5
    andi	$t0,$t0,0x7e0
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 818
    lwc1	$f8,8($a3)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f8
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0xb
    andi	$t0,$t0,0xf800
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 814
    lwc1	$f7,12($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a6,$f7
    andi	$a6,$a6,0x1f
    sh	$a6,2($a4)
    # Line 816
    lwc1	$f6,16($a3)
    mul.s	$f6,$f6,$f5
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x5
    andi	$a7,$a7,0x7e0
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 818
    lwc1	$f3,20($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    # Line 819
    addiu	$a4,$a4,4
    # Line 818
    andi	$a7,$a7,0xffff
    # Line 812
    addiu	$a2,$a2,2
    # Line 818
    sll	$a7,$a7,0xb
    # Line 817
    addiu	$a3,$a3,24
    # Line 818
    andi	$a7,$a7,0xf800
    or	$a6,$a6,$a7
    # Line 812
    bne	$a5,$a2,.L0d9a6190
    # Line 818
    sh	$a6,-2($a4)
.L0d9a6260:
    # Line 821
    jr	$ra
    nop
.end __glSpanPack565RevUshort

# Function: __glSpanPack4444Ushort
# Declared: Line 827 (Source lines: 829-851)
# Address: 0x0d9a6270 - 0x0d9a6460 (Size: 496 bytes, Frame: 0)
.globl __glSpanPack4444Ushort
.ent __glSpanPack4444Ushort
__glSpanPack4444Ushort:
    # Line 829
    move	$a6,$a3
    # Line 831
    lw	$a5,184($a1)
    # Line 829
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-21732
    andi	$v1,$a5,0x1
    # Line 833
    blez	$a5,.L0d9a6458
    # Line 829
    addu	$at,$t9,$v0
    # Line 833
    move	$a2,$zero
    beqz	$v1,.L0d9a632c
    lwc1	$f4,_lit_41700000
    # Line 842
    lwc1	$f3,0($a7)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0xc
    andi	$a0,$a0,0xf000
    sh	$a0,0($a3)
    # Line 844
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x8
    andi	$a1,$a1,0xf00
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 846
    lwc1	$f1,8($a7)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x4
    andi	$a1,$a1,0xf0
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 848
    lwc1	$f0,12($a7)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 840
    li	$a2,1
    # Line 849
    addiu	$a6,$a3,2
    # Line 848
    andi	$a1,$a1,0xf
    # Line 847
    addiu	$a7,$a7,16
    # Line 848
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
.L0d9a632c:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a6458
    move	$a4,$a6
    nop
.L0d9a6340:
    # Line 842
    lwc1	$f12,0($a3)
    mul.s	$f12,$f12,$f4
    trunc.w.s	$f12,$f12
    mfc1	$a7,$f12
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0xc
    andi	$a7,$a7,0xf000
    sh	$a7,0($a4)
    # Line 844
    lwc1	$f11,4($a3)
    mul.s	$f11,$f11,$f4
    trunc.w.s	$f11,$f11
    mfc1	$t0,$f11
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x8
    andi	$t0,$t0,0xf00
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 846
    lwc1	$f10,8($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$t0,$f10
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x4
    andi	$t0,$t0,0xf0
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 848
    lwc1	$f9,12($a3)
    mul.s	$f9,$f9,$f4
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xf
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 842
    lwc1	$f8,16($a3)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$a6,$f8
    andi	$a6,$a6,0xffff
    sll	$a6,$a6,0xc
    andi	$a6,$a6,0xf000
    sh	$a6,2($a4)
    # Line 844
    lwc1	$f7,20($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a7,$f7
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x8
    andi	$a7,$a7,0xf00
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 846
    lwc1	$f6,24($a3)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x4
    andi	$a7,$a7,0xf0
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 848
    lwc1	$f5,28($a3)
    mul.s	$f5,$f5,$f4
    trunc.w.s	$f5,$f5
    mfc1	$a7,$f5
    # Line 849
    addiu	$a4,$a4,4
    # Line 840
    addiu	$a2,$a2,2
    # Line 847
    addiu	$a3,$a3,32
    # Line 848
    andi	$a7,$a7,0xf
    or	$a6,$a6,$a7
    # Line 840
    bne	$a5,$a2,.L0d9a6340
    # Line 848
    sh	$a6,-2($a4)
.L0d9a6458:
    # Line 851
    jr	$ra
    nop
.end __glSpanPack4444Ushort

# Function: __glSpanPack4444RevUshort
# Declared: Line 857 (Source lines: 859-881)
# Address: 0x0d9a6460 - 0x0d9a6650 (Size: 496 bytes, Frame: 0)
.globl __glSpanPack4444RevUshort
.ent __glSpanPack4444RevUshort
__glSpanPack4444RevUshort:
    # Line 859
    move	$a6,$a3
    # Line 861
    lw	$a5,184($a1)
    # Line 859
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-22228
    andi	$v1,$a5,0x1
    # Line 863
    blez	$a5,.L0d9a6648
    # Line 859
    addu	$at,$t9,$v0
    # Line 863
    move	$a2,$zero
    beqz	$v1,.L0d9a651c
    lwc1	$f4,_lit_41700000
    # Line 872
    lwc1	$f3,0($a7)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    andi	$a0,$a0,0xf
    sh	$a0,0($a3)
    # Line 874
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x4
    andi	$a1,$a1,0xf0
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 876
    lwc1	$f1,8($a7)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x8
    andi	$a1,$a1,0xf00
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 878
    lwc1	$f0,12($a7)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    andi	$a1,$a1,0xffff
    # Line 870
    li	$a2,1
    # Line 878
    sll	$a1,$a1,0xc
    # Line 879
    addiu	$a6,$a3,2
    # Line 878
    andi	$a1,$a1,0xf000
    # Line 877
    addiu	$a7,$a7,16
    # Line 878
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
.L0d9a651c:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a6648
    move	$a4,$a6
    nop
.L0d9a6530:
    # Line 872
    lwc1	$f12,0($a3)
    mul.s	$f12,$f12,$f4
    trunc.w.s	$f12,$f12
    mfc1	$a7,$f12
    andi	$a7,$a7,0xf
    sh	$a7,0($a4)
    # Line 874
    lwc1	$f11,4($a3)
    mul.s	$f11,$f11,$f4
    trunc.w.s	$f11,$f11
    mfc1	$t0,$f11
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x4
    andi	$t0,$t0,0xf0
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 876
    lwc1	$f10,8($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$t0,$f10
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x8
    andi	$t0,$t0,0xf00
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 878
    lwc1	$f9,12($a3)
    mul.s	$f9,$f9,$f4
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0xc
    andi	$t0,$t0,0xf000
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 872
    lwc1	$f8,16($a3)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$a6,$f8
    andi	$a6,$a6,0xf
    sh	$a6,2($a4)
    # Line 874
    lwc1	$f7,20($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a7,$f7
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x4
    andi	$a7,$a7,0xf0
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 876
    lwc1	$f6,24($a3)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x8
    andi	$a7,$a7,0xf00
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 878
    lwc1	$f5,28($a3)
    mul.s	$f5,$f5,$f4
    trunc.w.s	$f5,$f5
    mfc1	$a7,$f5
    # Line 879
    addiu	$a4,$a4,4
    # Line 878
    andi	$a7,$a7,0xffff
    # Line 870
    addiu	$a2,$a2,2
    # Line 878
    sll	$a7,$a7,0xc
    # Line 877
    addiu	$a3,$a3,32
    # Line 878
    andi	$a7,$a7,0xf000
    or	$a6,$a6,$a7
    # Line 870
    bne	$a5,$a2,.L0d9a6530
    # Line 878
    sh	$a6,-2($a4)
.L0d9a6648:
    # Line 881
    jr	$ra
    nop
.end __glSpanPack4444RevUshort

# Function: __glSpanPack5551Ushort
# Declared: Line 887 (Source lines: 889-911)
# Address: 0x0d9a6650 - 0x0d9a6838 (Size: 488 bytes, Frame: 0)
.globl __glSpanPack5551Ushort
.ent __glSpanPack5551Ushort
__glSpanPack5551Ushort:
    # Line 889
    move	$a6,$a3
    # Line 891
    lw	$a5,184($a1)
    # Line 889
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-22724
    andi	$v1,$a5,0x1
    # Line 893
    blez	$a5,.L0d9a6830
    # Line 889
    addu	$at,$t9,$v0
    # Line 893
    move	$a2,$zero
    beqz	$v1,.L0d9a6708
    lwc1	$f4,_lit_41f80000
    # Line 902
    lwc1	$f3,0($a7)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0xb
    andi	$a0,$a0,0xf800
    sh	$a0,0($a3)
    # Line 904
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x6
    andi	$a1,$a1,0x7c0
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 906
    lwc1	$f1,8($a7)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x1
    andi	$a1,$a1,0x3e
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 908
    lwc1	$f0,12($a7)
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 900
    li	$a2,1
    # Line 909
    addiu	$a6,$a3,2
    # Line 908
    andi	$a1,$a1,0x1
    # Line 907
    addiu	$a7,$a7,16
    # Line 908
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
.L0d9a6708:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a6830
    move	$a4,$a6
    nop
    nop
.L0d9a6720:
    # Line 902
    lwc1	$f12,0($a3)
    mul.s	$f12,$f12,$f4
    trunc.w.s	$f12,$f12
    mfc1	$a7,$f12
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0xb
    andi	$a7,$a7,0xf800
    sh	$a7,0($a4)
    # Line 904
    lwc1	$f11,4($a3)
    mul.s	$f11,$f11,$f4
    trunc.w.s	$f11,$f11
    mfc1	$t0,$f11
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x6
    andi	$t0,$t0,0x7c0
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 906
    lwc1	$f10,8($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$t0,$f10
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x1
    andi	$t0,$t0,0x3e
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 908
    lwc1	$f9,12($a3)
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0x1
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 902
    lwc1	$f8,16($a3)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$a6,$f8
    andi	$a6,$a6,0xffff
    sll	$a6,$a6,0xb
    andi	$a6,$a6,0xf800
    sh	$a6,2($a4)
    # Line 904
    lwc1	$f7,20($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a7,$f7
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x6
    andi	$a7,$a7,0x7c0
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 906
    lwc1	$f6,24($a3)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x1
    andi	$a7,$a7,0x3e
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 908
    lwc1	$f5,28($a3)
    trunc.w.s	$f5,$f5
    mfc1	$a7,$f5
    # Line 909
    addiu	$a4,$a4,4
    # Line 900
    addiu	$a2,$a2,2
    # Line 907
    addiu	$a3,$a3,32
    # Line 908
    andi	$a7,$a7,0x1
    or	$a6,$a6,$a7
    # Line 900
    bne	$a5,$a2,.L0d9a6720
    # Line 908
    sh	$a6,-2($a4)
.L0d9a6830:
    # Line 911
    jr	$ra
    nop
.end __glSpanPack5551Ushort

# Function: __glSpanPack1555RevUshort
# Declared: Line 917 (Source lines: 919-941)
# Address: 0x0d9a6840 - 0x0d9a6a28 (Size: 488 bytes, Frame: 0)
.globl __glSpanPack1555RevUshort
.ent __glSpanPack1555RevUshort
__glSpanPack1555RevUshort:
    # Line 919
    move	$a6,$a3
    # Line 921
    lw	$a5,184($a1)
    # Line 919
    move	$a7,$a2
    lui	$v0,0xb
    addiu	$v0,$v0,-23220
    andi	$v1,$a5,0x1
    # Line 923
    blez	$a5,.L0d9a6a20
    # Line 919
    addu	$at,$t9,$v0
    # Line 923
    move	$a2,$zero
    beqz	$v1,.L0d9a68f8
    lwc1	$f4,_lit_41f80000
    # Line 932
    lwc1	$f3,0($a7)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    andi	$a0,$a0,0x1f
    sh	$a0,0($a3)
    # Line 934
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x5
    andi	$a1,$a1,0x3e0
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 936
    lwc1	$f1,8($a7)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0xa
    andi	$a1,$a1,0x7c00
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
    # Line 938
    lwc1	$f0,12($a7)
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    andi	$a1,$a1,0xffff
    # Line 930
    li	$a2,1
    # Line 938
    sll	$a1,$a1,0xf
    # Line 939
    addiu	$a6,$a3,2
    # Line 938
    andi	$a1,$a1,0x8000
    # Line 937
    addiu	$a7,$a7,16
    # Line 938
    or	$a0,$a0,$a1
    sh	$a0,0($a3)
.L0d9a68f8:
    sra	$a1,$a5,0x1
    move	$a3,$a7
    beqz	$a1,.L0d9a6a20
    move	$a4,$a6
    nop
    nop
.L0d9a6910:
    # Line 932
    lwc1	$f12,0($a3)
    mul.s	$f12,$f12,$f4
    trunc.w.s	$f12,$f12
    mfc1	$a7,$f12
    andi	$a7,$a7,0x1f
    sh	$a7,0($a4)
    # Line 934
    lwc1	$f11,4($a3)
    mul.s	$f11,$f11,$f4
    trunc.w.s	$f11,$f11
    mfc1	$t0,$f11
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0x5
    andi	$t0,$t0,0x3e0
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 936
    lwc1	$f10,8($a3)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$t0,$f10
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0xa
    andi	$t0,$t0,0x7c00
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 938
    lwc1	$f9,12($a3)
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f9
    andi	$t0,$t0,0xffff
    sll	$t0,$t0,0xf
    andi	$t0,$t0,0x8000
    or	$a7,$a7,$t0
    sh	$a7,0($a4)
    # Line 932
    lwc1	$f8,16($a3)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$a6,$f8
    andi	$a6,$a6,0x1f
    sh	$a6,2($a4)
    # Line 934
    lwc1	$f7,20($a3)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a7,$f7
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0x5
    andi	$a7,$a7,0x3e0
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 936
    lwc1	$f6,24($a3)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a7,$f6
    andi	$a7,$a7,0xffff
    sll	$a7,$a7,0xa
    andi	$a7,$a7,0x7c00
    or	$a6,$a6,$a7
    sh	$a6,2($a4)
    # Line 938
    lwc1	$f5,28($a3)
    trunc.w.s	$f5,$f5
    mfc1	$a7,$f5
    # Line 939
    addiu	$a4,$a4,4
    # Line 938
    andi	$a7,$a7,0xffff
    # Line 930
    addiu	$a2,$a2,2
    # Line 938
    sll	$a7,$a7,0xf
    # Line 937
    addiu	$a3,$a3,32
    # Line 938
    andi	$a7,$a7,0x8000
    or	$a6,$a6,$a7
    # Line 930
    bne	$a5,$a2,.L0d9a6910
    # Line 938
    sh	$a6,-2($a4)
.L0d9a6a20:
    # Line 941
    jr	$ra
    nop
.end __glSpanPack1555RevUshort

# Function: __glSpanPack8888Uint
# Declared: Line 947 (Source lines: 949-971)
# Address: 0x0d9a6a30 - 0x0d9a6c10 (Size: 480 bytes, Frame: 0)
.globl __glSpanPack8888Uint
.ent __glSpanPack8888Uint
__glSpanPack8888Uint:
    # Line 949
    move	$t0,$a2
    # Line 951
    lw	$a7,184($a1)
    # Line 949
    move	$t1,$a3
    lui	$v0,0xb
    addiu	$v0,$v0,-23716
    andi	$v1,$a7,0x1
    # Line 953
    blez	$a7,.L0d9a6c08
    # Line 949
    addu	$at,$t9,$v0
    # Line 953
    lui	$a5,0xff00
    lui	$a6,0xff
    move	$a3,$zero
    beqz	$v1,.L0d9a6aec
    lwc1	$f4,_lit_437f0000
    # Line 962
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f3
    sll	$a0,$a0,0x18
    and	$a0,$a5,$a0
    sw	$a0,0($t1)
    # Line 964
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$a1,$f2
    sll	$a1,$a1,0x10
    and	$a1,$a6,$a1
    or	$a0,$a0,$a1
    sw	$a0,0($t1)
    # Line 966
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    sll	$a1,$a1,0x8
    andi	$a1,$a1,0xff00
    or	$a0,$a0,$a1
    sw	$a0,0($t1)
    # Line 968
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f4
    trunc.l.s	$f0,$f0
    dmfc1	$a1,$f0
    # Line 960
    li	$a3,1
    # Line 968
    sll	$a1,$a1,0x0
    # Line 969
    addiu	$t1,$t1,4
    # Line 968
    andi	$a1,$a1,0xff
    # Line 967
    addiu	$t0,$a2,16
    # Line 968
    or	$a0,$a0,$a1
    sw	$a0,-4($t1)
.L0d9a6aec:
    sra	$a1,$a7,0x1
    move	$a2,$t0
    beqz	$a1,.L0d9a6c08
    move	$a4,$t1
    nop
.L0d9a6b00:
    # Line 962
    lwc1	$f12,0($a2)
    mul.s	$f12,$f12,$f4
    trunc.l.s	$f12,$f12
    dmfc1	$t1,$f12
    sll	$t1,$t1,0x18
    and	$t1,$a5,$t1
    sw	$t1,0($a4)
    # Line 964
    lwc1	$f11,4($a2)
    mul.s	$f11,$f11,$f4
    trunc.l.s	$f11,$f11
    dmfc1	$t2,$f11
    sll	$t2,$t2,0x10
    and	$t2,$a6,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a4)
    # Line 966
    lwc1	$f10,8($a2)
    mul.s	$f10,$f10,$f4
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x8
    andi	$t2,$t2,0xff00
    or	$t1,$t1,$t2
    sw	$t1,0($a4)
    # Line 968
    lwc1	$f9,12($a2)
    mul.s	$f9,$f9,$f4
    trunc.l.s	$f9,$f9
    dmfc1	$t2,$f9
    sll	$t2,$t2,0x0
    andi	$t2,$t2,0xff
    or	$t1,$t1,$t2
    sw	$t1,0($a4)
    # Line 962
    lwc1	$f8,16($a2)
    mul.s	$f8,$f8,$f4
    trunc.l.s	$f8,$f8
    dmfc1	$t0,$f8
    sll	$t0,$t0,0x18
    and	$t0,$a5,$t0
    sw	$t0,4($a4)
    # Line 964
    lwc1	$f7,20($a2)
    mul.s	$f7,$f7,$f4
    trunc.l.s	$f7,$f7
    dmfc1	$t1,$f7
    sll	$t1,$t1,0x10
    and	$t1,$a6,$t1
    or	$t0,$t0,$t1
    sw	$t0,4($a4)
    # Line 966
    lwc1	$f6,24($a2)
    mul.s	$f6,$f6,$f4
    trunc.l.s	$f6,$f6
    dmfc1	$t1,$f6
    sll	$t1,$t1,0x8
    andi	$t1,$t1,0xff00
    or	$t0,$t0,$t1
    sw	$t0,4($a4)
    # Line 968
    lwc1	$f5,28($a2)
    mul.s	$f5,$f5,$f4
    trunc.l.s	$f5,$f5
    dmfc1	$t1,$f5
    # Line 969
    addiu	$a4,$a4,8
    # Line 960
    addiu	$a3,$a3,2
    # Line 968
    sll	$t1,$t1,0x0
    # Line 967
    addiu	$a2,$a2,32
    # Line 968
    andi	$t1,$t1,0xff
    or	$t0,$t0,$t1
    # Line 960
    bne	$a7,$a3,.L0d9a6b00
    # Line 968
    sw	$t0,-4($a4)
.L0d9a6c08:
    # Line 971
    jr	$ra
    nop
.end __glSpanPack8888Uint

# Function: __glSpanPack8888RevUint
# Declared: Line 977 (Source lines: 979-1001)
# Address: 0x0d9a6c10 - 0x0d9a6df0 (Size: 480 bytes, Frame: 0)
.globl __glSpanPack8888RevUint
.ent __glSpanPack8888RevUint
__glSpanPack8888RevUint:
    # Line 979
    move	$t0,$a2
    # Line 981
    lw	$a7,184($a1)
    # Line 979
    move	$t1,$a3
    lui	$v0,0xb
    addiu	$v0,$v0,-24196
    andi	$v1,$a7,0x1
    # Line 983
    blez	$a7,.L0d9a6de8
    # Line 979
    addu	$at,$t9,$v0
    # Line 983
    lui	$a5,0xff
    lui	$a6,0xff00
    move	$a3,$zero
    beqz	$v1,.L0d9a6ccc
    lwc1	$f4,_lit_437f0000
    # Line 992
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f3
    sll	$a0,$a0,0x0
    andi	$a0,$a0,0xff
    sw	$a0,0($t1)
    # Line 994
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$a1,$f2
    sll	$a1,$a1,0x8
    andi	$a1,$a1,0xff00
    or	$a0,$a0,$a1
    sw	$a0,0($t1)
    # Line 996
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    sll	$a1,$a1,0x10
    and	$a1,$a5,$a1
    or	$a0,$a0,$a1
    sw	$a0,0($t1)
    # Line 998
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f4
    trunc.l.s	$f0,$f0
    dmfc1	$a1,$f0
    # Line 990
    li	$a3,1
    # Line 998
    sll	$a1,$a1,0x18
    # Line 999
    addiu	$t1,$t1,4
    # Line 998
    and	$a1,$a6,$a1
    # Line 997
    addiu	$t0,$a2,16
    # Line 998
    or	$a0,$a0,$a1
    sw	$a0,-4($t1)
.L0d9a6ccc:
    sra	$a1,$a7,0x1
    move	$a2,$t0
    beqz	$a1,.L0d9a6de8
    move	$a4,$t1
    nop
.L0d9a6ce0:
    # Line 992
    lwc1	$f12,0($a2)
    mul.s	$f12,$f12,$f4
    trunc.l.s	$f12,$f12
    dmfc1	$t1,$f12
    sll	$t1,$t1,0x0
    andi	$t1,$t1,0xff
    sw	$t1,0($a4)
    # Line 994
    lwc1	$f11,4($a2)
    mul.s	$f11,$f11,$f4
    trunc.l.s	$f11,$f11
    dmfc1	$t2,$f11
    sll	$t2,$t2,0x8
    andi	$t2,$t2,0xff00
    or	$t1,$t1,$t2
    sw	$t1,0($a4)
    # Line 996
    lwc1	$f10,8($a2)
    mul.s	$f10,$f10,$f4
    trunc.l.s	$f10,$f10
    dmfc1	$t2,$f10
    sll	$t2,$t2,0x10
    and	$t2,$a5,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a4)
    # Line 998
    lwc1	$f9,12($a2)
    mul.s	$f9,$f9,$f4
    trunc.l.s	$f9,$f9
    dmfc1	$t2,$f9
    sll	$t2,$t2,0x18
    and	$t2,$a6,$t2
    or	$t1,$t1,$t2
    sw	$t1,0($a4)
    # Line 992
    lwc1	$f8,16($a2)
    mul.s	$f8,$f8,$f4
    trunc.l.s	$f8,$f8
    dmfc1	$t0,$f8
    sll	$t0,$t0,0x0
    andi	$t0,$t0,0xff
    sw	$t0,4($a4)
    # Line 994
    lwc1	$f7,20($a2)
    mul.s	$f7,$f7,$f4
    trunc.l.s	$f7,$f7
    dmfc1	$t1,$f7
    sll	$t1,$t1,0x8
    andi	$t1,$t1,0xff00
    or	$t0,$t0,$t1
    sw	$t0,4($a4)
    # Line 996
    lwc1	$f6,24($a2)
    mul.s	$f6,$f6,$f4
    trunc.l.s	$f6,$f6
    dmfc1	$t1,$f6
    sll	$t1,$t1,0x10
    and	$t1,$a5,$t1
    or	$t0,$t0,$t1
    sw	$t0,4($a4)
    # Line 998
    lwc1	$f5,28($a2)
    mul.s	$f5,$f5,$f4
    trunc.l.s	$f5,$f5
    dmfc1	$t1,$f5
    # Line 999
    addiu	$a4,$a4,8
    # Line 990
    addiu	$a3,$a3,2
    # Line 998
    sll	$t1,$t1,0x18
    # Line 997
    addiu	$a2,$a2,32
    # Line 998
    and	$t1,$a6,$t1
    or	$t0,$t0,$t1
    # Line 990
    bne	$a7,$a3,.L0d9a6ce0
    # Line 998
    sw	$t0,-4($a4)
.L0d9a6de8:
    # Line 1001
    jr	$ra
    nop
.end __glSpanPack8888RevUint

# Function: __glSpanPack_10_10_10_2_Uint
# Declared: Line 1007 (Source lines: 1010-1032)
# Address: 0x0d9a6df0 - 0x0d9a6fe0 (Size: 496 bytes, Frame: 0)
.globl __glSpanPack_10_10_10_2_Uint
.ent __glSpanPack_10_10_10_2_Uint
__glSpanPack_10_10_10_2_Uint:
    # Line 1010
    move	$t0,$a2
    # Line 1012
    lw	$a7,184($a1)
    # Line 1010
    move	$t1,$a3
    lui	$v0,0xb
    # Line 1014
    move	$a3,$zero
    # Line 1010
    addiu	$v0,$v0,-24676
    # Line 1014
    blez	$a7,.L0d9a6fd8
    # Line 1010
    addu	$at,$t9,$v0
    # Line 1014
    lui	$a6,0x3f
    andi	$t2,$a7,0x1
    lui	$a5,0xffc0
    lwc1	$f5,_lit_40400000
    lwc1	$f4,_lit_447fc000
    beqz	$t2,.L0d9a6eb4
    ori	$a6,$a6,0xf000
    # Line 1023
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$t3,$f3
    sll	$t3,$t3,0x16
    and	$t3,$a5,$t3
    sw	$t3,0($t1)
    # Line 1025
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$t8,$f2
    sll	$t8,$t8,0xc
    and	$t8,$a6,$t8
    or	$t3,$t3,$t8
    sw	$t3,0($t1)
    # Line 1027
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$t8,$f1
    sll	$t8,$t8,0x2
    andi	$t8,$t8,0xffc
    or	$t3,$t3,$t8
    sw	$t3,0($t1)
    # Line 1029
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$t8,$f0
    # Line 1021
    li	$a3,1
    # Line 1029
    sll	$t8,$t8,0x0
    # Line 1030
    addiu	$t1,$t1,4
    # Line 1029
    andi	$t8,$t8,0x3
    # Line 1028
    addiu	$t0,$a2,16
    # Line 1029
    or	$t3,$t3,$t8
    sw	$t3,-4($t1)
.L0d9a6eb4:
    sra	$t8,$a7,0x1
    move	$a2,$t0
    beqz	$t8,.L0d9a6fd8
    move	$a4,$t1
    nop
    nop
    nop
.L0d9a6ed0:
    # Line 1023
    lwc1	$f13,0($a2)
    mul.s	$f13,$f13,$f4
    trunc.l.s	$f13,$f13
    dmfc1	$v0,$f13
    sll	$v0,$v0,0x16
    and	$v0,$a5,$v0
    sw	$v0,0($a4)
    # Line 1025
    lwc1	$f12,4($a2)
    mul.s	$f12,$f12,$f4
    trunc.l.s	$f12,$f12
    dmfc1	$v1,$f12
    sll	$v1,$v1,0xc
    and	$v1,$a6,$v1
    or	$v0,$v0,$v1
    sw	$v0,0($a4)
    # Line 1027
    lwc1	$f11,8($a2)
    mul.s	$f11,$f11,$f4
    trunc.l.s	$f11,$f11
    dmfc1	$v1,$f11
    sll	$v1,$v1,0x2
    andi	$v1,$v1,0xffc
    or	$v0,$v0,$v1
    sw	$v0,0($a4)
    # Line 1029
    lwc1	$f10,12($a2)
    mul.s	$f10,$f10,$f5
    trunc.l.s	$f10,$f10
    dmfc1	$v1,$f10
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0x3
    or	$v0,$v0,$v1
    sw	$v0,0($a4)
    # Line 1023
    lwc1	$f9,16($a2)
    mul.s	$f9,$f9,$f4
    trunc.l.s	$f9,$f9
    dmfc1	$t9,$f9
    sll	$t9,$t9,0x16
    and	$t9,$a5,$t9
    sw	$t9,4($a4)
    # Line 1025
    lwc1	$f8,20($a2)
    mul.s	$f8,$f8,$f4
    trunc.l.s	$f8,$f8
    dmfc1	$v0,$f8
    sll	$v0,$v0,0xc
    and	$v0,$a6,$v0
    or	$t9,$t9,$v0
    sw	$t9,4($a4)
    # Line 1027
    lwc1	$f7,24($a2)
    mul.s	$f7,$f7,$f4
    trunc.l.s	$f7,$f7
    dmfc1	$v0,$f7
    sll	$v0,$v0,0x2
    andi	$v0,$v0,0xffc
    or	$t9,$t9,$v0
    sw	$t9,4($a4)
    # Line 1029
    lwc1	$f6,28($a2)
    mul.s	$f6,$f6,$f5
    trunc.l.s	$f6,$f6
    dmfc1	$v0,$f6
    # Line 1030
    addiu	$a4,$a4,8
    # Line 1021
    addiu	$a3,$a3,2
    # Line 1029
    sll	$v0,$v0,0x0
    # Line 1028
    addiu	$a2,$a2,32
    # Line 1029
    andi	$v0,$v0,0x3
    or	$t9,$t9,$v0
    # Line 1021
    bne	$a7,$a3,.L0d9a6ed0
    # Line 1029
    sw	$t9,-4($a4)
.L0d9a6fd8:
    # Line 1032
    jr	$ra
    nop
.end __glSpanPack_10_10_10_2_Uint

# Function: __glSpanPack_2_10_10_10_RevUint
# Declared: Line 1038 (Source lines: 1041-1063)
# Address: 0x0d9a6fe0 - 0x0d9a71d0 (Size: 496 bytes, Frame: 0)
.globl __glSpanPack_2_10_10_10_RevUint
.ent __glSpanPack_2_10_10_10_RevUint
__glSpanPack_2_10_10_10_RevUint:
    # Line 1041
    move	$t1,$a2
    # Line 1043
    lw	$t0,184($a1)
    # Line 1041
    move	$t2,$a3
    lui	$v0,0xb
    # Line 1045
    move	$a3,$zero
    # Line 1041
    addiu	$v0,$v0,-25172
    # Line 1045
    blez	$t0,.L0d9a71c8
    # Line 1041
    addu	$at,$t9,$v0
    # Line 1045
    lui	$a5,0xf
    andi	$t3,$t0,0x1
    lui	$a6,0x3ff0
    lui	$a7,0xc000
    lwc1	$f5,_lit_40400000
    lwc1	$f4,_lit_447fc000
    beqz	$t3,.L0d9a70a8
    ori	$a5,$a5,0xfc00
    # Line 1054
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$t8,$f3
    sll	$t8,$t8,0x0
    andi	$t8,$t8,0x3ff
    sw	$t8,0($t2)
    # Line 1056
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$t9,$f2
    sll	$t9,$t9,0xa
    and	$t9,$a5,$t9
    or	$t8,$t8,$t9
    sw	$t8,0($t2)
    # Line 1058
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$t9,$f1
    sll	$t9,$t9,0x14
    and	$t9,$a6,$t9
    or	$t8,$t8,$t9
    sw	$t8,0($t2)
    # Line 1060
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$t9,$f0
    # Line 1052
    li	$a3,1
    # Line 1060
    sll	$t9,$t9,0x1e
    # Line 1061
    addiu	$t2,$t2,4
    # Line 1060
    and	$t9,$a7,$t9
    # Line 1059
    addiu	$t1,$a2,16
    # Line 1060
    or	$t8,$t8,$t9
    sw	$t8,-4($t2)
.L0d9a70a8:
    sra	$t9,$t0,0x1
    move	$a4,$t1
    beqz	$t9,.L0d9a71c8
    move	$a2,$t2
    nop
    nop
.L0d9a70c0:
    # Line 1054
    lwc1	$f13,0($a4)
    mul.s	$f13,$f13,$f4
    trunc.l.s	$f13,$f13
    dmfc1	$v1,$f13
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0x3ff
    sw	$v1,0($a2)
    # Line 1056
    lwc1	$f12,4($a4)
    mul.s	$f12,$f12,$f4
    trunc.l.s	$f12,$f12
    dmfc1	$a0,$f12
    sll	$a0,$a0,0xa
    and	$a0,$a5,$a0
    or	$v1,$v1,$a0
    sw	$v1,0($a2)
    # Line 1058
    lwc1	$f11,8($a4)
    mul.s	$f11,$f11,$f4
    trunc.l.s	$f11,$f11
    dmfc1	$a0,$f11
    sll	$a0,$a0,0x14
    and	$a0,$a6,$a0
    or	$v1,$v1,$a0
    sw	$v1,0($a2)
    # Line 1060
    lwc1	$f10,12($a4)
    mul.s	$f10,$f10,$f5
    trunc.l.s	$f10,$f10
    dmfc1	$a0,$f10
    sll	$a0,$a0,0x1e
    and	$a0,$a7,$a0
    or	$v1,$v1,$a0
    sw	$v1,0($a2)
    # Line 1054
    lwc1	$f9,16($a4)
    mul.s	$f9,$f9,$f4
    trunc.l.s	$f9,$f9
    dmfc1	$v0,$f9
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0x3ff
    sw	$v0,4($a2)
    # Line 1056
    lwc1	$f8,20($a4)
    mul.s	$f8,$f8,$f4
    trunc.l.s	$f8,$f8
    dmfc1	$v1,$f8
    sll	$v1,$v1,0xa
    and	$v1,$a5,$v1
    or	$v0,$v0,$v1
    sw	$v0,4($a2)
    # Line 1058
    lwc1	$f7,24($a4)
    mul.s	$f7,$f7,$f4
    trunc.l.s	$f7,$f7
    dmfc1	$v1,$f7
    sll	$v1,$v1,0x14
    and	$v1,$a6,$v1
    or	$v0,$v0,$v1
    sw	$v0,4($a2)
    # Line 1060
    lwc1	$f6,28($a4)
    mul.s	$f6,$f6,$f5
    trunc.l.s	$f6,$f6
    dmfc1	$v1,$f6
    # Line 1061
    addiu	$a2,$a2,8
    # Line 1052
    addiu	$a3,$a3,2
    # Line 1060
    sll	$v1,$v1,0x1e
    # Line 1059
    addiu	$a4,$a4,32
    # Line 1060
    and	$v1,$a7,$v1
    or	$v0,$v0,$v1
    # Line 1052
    bne	$t0,$a3,.L0d9a70c0
    # Line 1060
    sw	$v0,-4($a2)
.L0d9a71c8:
    # Line 1063
    jr	$ra
    nop
.end __glSpanPack_2_10_10_10_RevUint

# Function: __glSpanPackUbyteI
# Declared: Line 1070 (Source lines: 1072-1084)
# Address: 0x0d9a71d0 - 0x0d9a7278 (Size: 168 bytes, Frame: 0)
.globl __glSpanPackUbyteI
.ent __glSpanPackUbyteI
__glSpanPackUbyteI:
    # Line 1074
    lw	$a4,184($a1)
    # Line 1072
    move	$a5,$a2
    # Line 1076
    blez	$a4,.L0d9a7270
    # Line 1072
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9a7214
    # Line 1076
    move	$a1,$zero
.L0d9a71f0:
    # Line 1082
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1081
    addiu	$a1,$a1,1
    # Line 1082
    addiu	$a6,$a6,1
    mfc1	$at,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a71f0
    sb	$at,-1($a6)
.L0d9a7214:
    move	$a2,$a5
    beqz	$v0,.L0d9a7270
    move	$a3,$a6
.L0d9a7220:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$a6,$f4
    sb	$a6,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    sb	$a5,1($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    sb	$a0,2($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1081
    addiu	$a1,$a1,4
    # Line 1082
    addiu	$a3,$a3,4
    mfc1	$v1,$f1
    addiu	$a2,$a2,16
    # Line 1081
    bne	$a4,$a1,.L0d9a7220
    # Line 1082
    sb	$v1,-1($a3)
.L0d9a7270:
    # Line 1084
    jr	$ra
    nop
.end __glSpanPackUbyteI

# Function: __glSpanPackByteI
# Declared: Line 1091 (Source lines: 1093-1105)
# Address: 0x0d9a7280 - 0x0d9a7348 (Size: 200 bytes, Frame: 0)
.globl __glSpanPackByteI
.ent __glSpanPackByteI
__glSpanPackByteI:
    # Line 1095
    lw	$a4,184($a1)
    # Line 1093
    move	$a5,$a2
    # Line 1097
    blez	$a4,.L0d9a7340
    # Line 1093
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9a72c8
    # Line 1097
    move	$a1,$zero
.L0d9a72a0:
    # Line 1103
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    # Line 1102
    addiu	$a1,$a1,1
    addiu	$a2,$a2,-1
    # Line 1103
    mfc1	$at,$f0
    addiu	$a6,$a6,1
    addiu	$a5,$a5,4
    andi	$at,$at,0x7f
    bnez	$a2,.L0d9a72a0
    sb	$at,-1($a6)
.L0d9a72c8:
    move	$a2,$a5
    beqz	$v0,.L0d9a7340
    move	$a3,$a6
    nop
    nop
    nop
.L0d9a72e0:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$a6,$f4
    andi	$a6,$a6,0x7f
    sb	$a6,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    andi	$a5,$a5,0x7f
    sb	$a5,1($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0x7f
    sb	$a0,2($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1102
    addiu	$a1,$a1,4
    # Line 1103
    mfc1	$v1,$f1
    addiu	$a3,$a3,4
    addiu	$a2,$a2,16
    andi	$v1,$v1,0x7f
    # Line 1102
    bne	$a4,$a1,.L0d9a72e0
    # Line 1103
    sb	$v1,-1($a3)
.L0d9a7340:
    # Line 1105
    jr	$ra
    nop
.end __glSpanPackByteI

# Function: __glSpanPackUshortI
# Declared: Line 1112 (Source lines: 1114-1126)
# Address: 0x0d9a7350 - 0x0d9a73f8 (Size: 168 bytes, Frame: 0)
.globl __glSpanPackUshortI
.ent __glSpanPackUshortI
__glSpanPackUshortI:
    # Line 1116
    lw	$a4,184($a1)
    # Line 1114
    move	$a5,$a2
    # Line 1118
    blez	$a4,.L0d9a73f0
    # Line 1114
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9a7394
    # Line 1118
    move	$a1,$zero
.L0d9a7370:
    # Line 1124
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1123
    addiu	$a1,$a1,1
    # Line 1124
    addiu	$a6,$a6,2
    mfc1	$at,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a7370
    sh	$at,-2($a6)
.L0d9a7394:
    move	$a2,$a5
    beqz	$v0,.L0d9a73f0
    move	$a3,$a6
.L0d9a73a0:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$a6,$f4
    sh	$a6,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    sh	$a5,2($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    sh	$a0,4($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1123
    addiu	$a1,$a1,4
    # Line 1124
    addiu	$a3,$a3,8
    mfc1	$v1,$f1
    addiu	$a2,$a2,16
    # Line 1123
    bne	$a4,$a1,.L0d9a73a0
    # Line 1124
    sh	$v1,-2($a3)
.L0d9a73f0:
    # Line 1126
    jr	$ra
    nop
.end __glSpanPackUshortI

# Function: __glSpanPackShortI
# Declared: Line 1133 (Source lines: 1135-1147)
# Address: 0x0d9a7400 - 0x0d9a74c8 (Size: 200 bytes, Frame: 0)
.globl __glSpanPackShortI
.ent __glSpanPackShortI
__glSpanPackShortI:
    # Line 1137
    lw	$a4,184($a1)
    # Line 1135
    move	$a5,$a2
    # Line 1139
    blez	$a4,.L0d9a74c0
    # Line 1135
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9a7448
    # Line 1139
    move	$a1,$zero
.L0d9a7420:
    # Line 1145
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    # Line 1144
    addiu	$a1,$a1,1
    addiu	$a2,$a2,-1
    # Line 1145
    mfc1	$at,$f0
    addiu	$a6,$a6,2
    addiu	$a5,$a5,4
    andi	$at,$at,0x7fff
    bnez	$a2,.L0d9a7420
    sh	$at,-2($a6)
.L0d9a7448:
    move	$a2,$a5
    beqz	$v0,.L0d9a74c0
    move	$a3,$a6
    nop
    nop
    nop
.L0d9a7460:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$a6,$f4
    andi	$a6,$a6,0x7fff
    sh	$a6,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    andi	$a5,$a5,0x7fff
    sh	$a5,2($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0x7fff
    sh	$a0,4($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1144
    addiu	$a1,$a1,4
    # Line 1145
    mfc1	$v1,$f1
    addiu	$a3,$a3,8
    addiu	$a2,$a2,16
    andi	$v1,$v1,0x7fff
    # Line 1144
    bne	$a4,$a1,.L0d9a7460
    # Line 1145
    sh	$v1,-2($a3)
.L0d9a74c0:
    # Line 1147
    jr	$ra
    nop
.end __glSpanPackShortI

# Function: __glSpanPackUintI
# Declared: Line 1154 (Source lines: 1156-1168)
# Address: 0x0d9a74d0 - 0x0d9a7578 (Size: 168 bytes, Frame: 0)
.globl __glSpanPackUintI
.ent __glSpanPackUintI
__glSpanPackUintI:
    # Line 1158
    lw	$a4,184($a1)
    # Line 1156
    move	$a5,$a2
    # Line 1160
    blez	$a4,.L0d9a7570
    # Line 1156
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9a7514
    # Line 1160
    move	$a1,$zero
.L0d9a74f0:
    # Line 1166
    lwc1	$f0,0($a5)
    trunc.l.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1165
    addiu	$a1,$a1,1
    # Line 1166
    addiu	$a6,$a6,4
    dmfc1	$at,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a74f0
    sw	$at,-4($a6)
.L0d9a7514:
    move	$a2,$a5
    beqz	$v0,.L0d9a7570
    move	$a3,$a6
.L0d9a7520:
    lwc1	$f4,0($a2)
    trunc.l.s	$f4,$f4
    dmfc1	$a6,$f4
    sw	$a6,0($a3)
    lwc1	$f3,4($a2)
    trunc.l.s	$f3,$f3
    dmfc1	$a5,$f3
    sw	$a5,4($a3)
    lwc1	$f2,8($a2)
    trunc.l.s	$f2,$f2
    dmfc1	$a0,$f2
    sw	$a0,8($a3)
    lwc1	$f1,12($a2)
    trunc.l.s	$f1,$f1
    # Line 1165
    addiu	$a1,$a1,4
    # Line 1166
    addiu	$a3,$a3,16
    dmfc1	$v1,$f1
    addiu	$a2,$a2,16
    # Line 1165
    bne	$a4,$a1,.L0d9a7520
    # Line 1166
    sw	$v1,-4($a3)
.L0d9a7570:
    # Line 1168
    jr	$ra
    nop
.end __glSpanPackUintI

# Function: __glSpanPackIntI
# Declared: Line 1175 (Source lines: 1177-1189)
# Address: 0x0d9a7580 - 0x0d9a7648 (Size: 200 bytes, Frame: 0)
.globl __glSpanPackIntI
.ent __glSpanPackIntI
__glSpanPackIntI:
    # Line 1179
    lw	$a5,184($a1)
    # Line 1177
    move	$a6,$a2
    # Line 1181
    blez	$a5,.L0d9a7640
    # Line 1177
    move	$a7,$a3
    # Line 1181
    move	$a2,$zero
    andi	$a1,$a5,0x3
    sra	$t1,$a5,0x2
    lui	$a4,0x7fff
    beqz	$a1,.L0d9a75d0
    ori	$a4,$a4,0xffff
.L0d9a75a8:
    # Line 1187
    lwc1	$f0,0($a6)
    trunc.w.s	$f0,$f0
    # Line 1186
    addiu	$a2,$a2,1
    addiu	$a1,$a1,-1
    # Line 1187
    mfc1	$t0,$f0
    addiu	$a7,$a7,4
    addiu	$a6,$a6,4
    and	$t0,$a4,$t0
    bnez	$a1,.L0d9a75a8
    sw	$t0,-4($a7)
.L0d9a75d0:
    move	$a1,$a6
    beqz	$t1,.L0d9a7640
    move	$a3,$a7
    nop
.L0d9a75e0:
    lwc1	$f4,0($a1)
    trunc.w.s	$f4,$f4
    mfc1	$t9,$f4
    and	$t9,$a4,$t9
    sw	$t9,0($a3)
    lwc1	$f3,4($a1)
    trunc.w.s	$f3,$f3
    mfc1	$t8,$f3
    and	$t8,$a4,$t8
    sw	$t8,4($a3)
    lwc1	$f2,8($a1)
    trunc.w.s	$f2,$f2
    mfc1	$t3,$f2
    and	$t3,$a4,$t3
    sw	$t3,8($a3)
    lwc1	$f1,12($a1)
    trunc.w.s	$f1,$f1
    # Line 1186
    addiu	$a2,$a2,4
    # Line 1187
    mfc1	$t2,$f1
    addiu	$a3,$a3,16
    addiu	$a1,$a1,16
    and	$t2,$a4,$t2
    # Line 1186
    bne	$a5,$a2,.L0d9a75e0
    # Line 1187
    sw	$t2,-4($a3)
.L0d9a7640:
    # Line 1189
    jr	$ra
    nop
.end __glSpanPackIntI

# Function: __glSpanPackNonCompUbyte
# Declared: Line 1199 (Source lines: 1201-1215)
# Address: 0x0d9a7650 - 0x0d9a7708 (Size: 184 bytes, Frame: 0)
.globl __glSpanPackNonCompUbyte
.ent __glSpanPackNonCompUbyte
__glSpanPackNonCompUbyte:
    # Line 1206
    lw	$v0,108($a1)
    # Line 1203
    lw	$at,184($a1)
    # Line 1206
    mult	$at,$v0
    mflo	$a4
    # Line 1201
    move	$a6,$a3
    move	$a5,$a2
    # Line 1206
    blez	$a4,.L0d9a7700
    andi	$a2,$a4,0x3
    sra	$a0,$a4,0x2
    beqz	$a2,.L0d9a76a0
    move	$a1,$zero
.L0d9a767c:
    # Line 1213
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1212
    addiu	$a1,$a1,1
    # Line 1213
    addiu	$a6,$a6,1
    mfc1	$v1,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a767c
    sb	$v1,-1($a6)
.L0d9a76a0:
    move	$a2,$a5
    beqz	$a0,.L0d9a7700
    move	$a3,$a6
    nop
.L0d9a76b0:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$t0,$f4
    sb	$t0,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    sb	$a7,1($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    sb	$a6,2($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1212
    addiu	$a1,$a1,4
    # Line 1213
    addiu	$a3,$a3,4
    mfc1	$a5,$f1
    addiu	$a2,$a2,16
    # Line 1212
    bne	$a4,$a1,.L0d9a76b0
    # Line 1213
    sb	$a5,-1($a3)
.L0d9a7700:
    # Line 1215
    jr	$ra
    nop
.end __glSpanPackNonCompUbyte

# Function: __glSpanPackNonCompByte
# Declared: Line 1222 (Source lines: 1224-1238)
# Address: 0x0d9a7710 - 0x0d9a77c8 (Size: 184 bytes, Frame: 0)
.globl __glSpanPackNonCompByte
.ent __glSpanPackNonCompByte
__glSpanPackNonCompByte:
    # Line 1229
    lw	$v0,108($a1)
    # Line 1226
    lw	$at,184($a1)
    # Line 1229
    mult	$at,$v0
    mflo	$a4
    # Line 1224
    move	$a6,$a3
    move	$a5,$a2
    # Line 1229
    blez	$a4,.L0d9a77c0
    andi	$a2,$a4,0x3
    sra	$a0,$a4,0x2
    beqz	$a2,.L0d9a7760
    move	$a1,$zero
.L0d9a773c:
    # Line 1236
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1235
    addiu	$a1,$a1,1
    # Line 1236
    addiu	$a6,$a6,1
    mfc1	$v1,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a773c
    sb	$v1,-1($a6)
.L0d9a7760:
    move	$a2,$a5
    beqz	$a0,.L0d9a77c0
    move	$a3,$a6
    nop
.L0d9a7770:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$t0,$f4
    sb	$t0,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    sb	$a7,1($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    sb	$a6,2($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1235
    addiu	$a1,$a1,4
    # Line 1236
    addiu	$a3,$a3,4
    mfc1	$a5,$f1
    addiu	$a2,$a2,16
    # Line 1235
    bne	$a4,$a1,.L0d9a7770
    # Line 1236
    sb	$a5,-1($a3)
.L0d9a77c0:
    # Line 1238
    jr	$ra
    nop
.end __glSpanPackNonCompByte

# Function: __glSpanPackNonCompUshort
# Declared: Line 1245 (Source lines: 1247-1261)
# Address: 0x0d9a77d0 - 0x0d9a7888 (Size: 184 bytes, Frame: 0)
.globl __glSpanPackNonCompUshort
.ent __glSpanPackNonCompUshort
__glSpanPackNonCompUshort:
    # Line 1252
    lw	$v0,108($a1)
    # Line 1249
    lw	$at,184($a1)
    # Line 1252
    mult	$at,$v0
    mflo	$a4
    # Line 1247
    move	$a6,$a3
    move	$a5,$a2
    # Line 1252
    blez	$a4,.L0d9a7880
    andi	$a2,$a4,0x3
    sra	$a0,$a4,0x2
    beqz	$a2,.L0d9a7820
    move	$a1,$zero
.L0d9a77fc:
    # Line 1259
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1258
    addiu	$a1,$a1,1
    # Line 1259
    addiu	$a6,$a6,2
    mfc1	$v1,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a77fc
    sh	$v1,-2($a6)
.L0d9a7820:
    move	$a2,$a5
    beqz	$a0,.L0d9a7880
    move	$a3,$a6
    nop
.L0d9a7830:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$t0,$f4
    sh	$t0,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    sh	$a7,2($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    sh	$a6,4($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1258
    addiu	$a1,$a1,4
    # Line 1259
    addiu	$a3,$a3,8
    mfc1	$a5,$f1
    addiu	$a2,$a2,16
    # Line 1258
    bne	$a4,$a1,.L0d9a7830
    # Line 1259
    sh	$a5,-2($a3)
.L0d9a7880:
    # Line 1261
    jr	$ra
    nop
.end __glSpanPackNonCompUshort

# Function: __glSpanPackNonCompShort
# Declared: Line 1268 (Source lines: 1270-1284)
# Address: 0x0d9a7890 - 0x0d9a7948 (Size: 184 bytes, Frame: 0)
.globl __glSpanPackNonCompShort
.ent __glSpanPackNonCompShort
__glSpanPackNonCompShort:
    # Line 1275
    lw	$v0,108($a1)
    # Line 1272
    lw	$at,184($a1)
    # Line 1275
    mult	$at,$v0
    mflo	$a4
    # Line 1270
    move	$a6,$a3
    move	$a5,$a2
    # Line 1275
    blez	$a4,.L0d9a7940
    andi	$a2,$a4,0x3
    sra	$a0,$a4,0x2
    beqz	$a2,.L0d9a78e0
    move	$a1,$zero
.L0d9a78bc:
    # Line 1282
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1281
    addiu	$a1,$a1,1
    # Line 1282
    addiu	$a6,$a6,2
    mfc1	$v1,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a78bc
    sh	$v1,-2($a6)
.L0d9a78e0:
    move	$a2,$a5
    beqz	$a0,.L0d9a7940
    move	$a3,$a6
    nop
.L0d9a78f0:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    mfc1	$t0,$f4
    sh	$t0,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    sh	$a7,2($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    sh	$a6,4($a3)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    # Line 1281
    addiu	$a1,$a1,4
    # Line 1282
    addiu	$a3,$a3,8
    mfc1	$a5,$f1
    addiu	$a2,$a2,16
    # Line 1281
    bne	$a4,$a1,.L0d9a78f0
    # Line 1282
    sh	$a5,-2($a3)
.L0d9a7940:
    # Line 1284
    jr	$ra
    nop
.end __glSpanPackNonCompShort

# Function: __glSpanPackNonCompUint
# Declared: Line 1291 (Source lines: 1293-1307)
# Address: 0x0d9a7950 - 0x0d9a7a08 (Size: 184 bytes, Frame: 0)
.globl __glSpanPackNonCompUint
.ent __glSpanPackNonCompUint
__glSpanPackNonCompUint:
    # Line 1298
    lw	$v0,108($a1)
    # Line 1295
    lw	$at,184($a1)
    # Line 1298
    mult	$at,$v0
    mflo	$a4
    # Line 1293
    move	$a6,$a3
    move	$a5,$a2
    # Line 1298
    blez	$a4,.L0d9a7a00
    andi	$a2,$a4,0x3
    sra	$a0,$a4,0x2
    beqz	$a2,.L0d9a79a0
    move	$a1,$zero
.L0d9a797c:
    # Line 1305
    lwc1	$f0,0($a5)
    trunc.l.s	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1304
    addiu	$a1,$a1,1
    # Line 1305
    addiu	$a6,$a6,4
    dmfc1	$v1,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a797c
    sw	$v1,-4($a6)
.L0d9a79a0:
    move	$a2,$a5
    beqz	$a0,.L0d9a7a00
    move	$a3,$a6
    nop
.L0d9a79b0:
    lwc1	$f4,0($a2)
    trunc.l.s	$f4,$f4
    dmfc1	$t0,$f4
    sw	$t0,0($a3)
    lwc1	$f3,4($a2)
    trunc.l.s	$f3,$f3
    dmfc1	$a7,$f3
    sw	$a7,4($a3)
    lwc1	$f2,8($a2)
    trunc.l.s	$f2,$f2
    dmfc1	$a6,$f2
    sw	$a6,8($a3)
    lwc1	$f1,12($a2)
    trunc.l.s	$f1,$f1
    # Line 1304
    addiu	$a1,$a1,4
    # Line 1305
    addiu	$a3,$a3,16
    dmfc1	$a5,$f1
    addiu	$a2,$a2,16
    # Line 1304
    bne	$a4,$a1,.L0d9a79b0
    # Line 1305
    sw	$a5,-4($a3)
.L0d9a7a00:
    # Line 1307
    jr	$ra
    nop
.end __glSpanPackNonCompUint

# Function: __glSpanPackNonCompInt
# Declared: Line 1314 (Source lines: 1316-1330)
# Address: 0x0d9a7a10 - 0x0d9a7ab8 (Size: 168 bytes, Frame: 0)
.globl __glSpanPackNonCompInt
.ent __glSpanPackNonCompInt
__glSpanPackNonCompInt:
    # Line 1321
    lw	$v0,108($a1)
    # Line 1318
    lw	$at,184($a1)
    # Line 1321
    mult	$at,$v0
    mflo	$a4
    # Line 1316
    move	$a6,$a3
    move	$a5,$a2
    # Line 1321
    blez	$a4,.L0d9a7ab0
    andi	$a2,$a4,0x3
    sra	$v1,$a4,0x2
    beqz	$a2,.L0d9a7a5c
    move	$a1,$zero
.L0d9a7a3c:
    # Line 1328
    lwc1	$f0,0($a5)
    addiu	$a2,$a2,-1
    # Line 1327
    addiu	$a1,$a1,1
    # Line 1328
    addiu	$a6,$a6,4
    trunc.w.s	$f0,$f0
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9a7a3c
    swc1	$f0,-4($a6)
.L0d9a7a5c:
    move	$a2,$a5
    beqz	$v1,.L0d9a7ab0
    move	$a3,$a6
    nop
    nop
.L0d9a7a70:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    swc1	$f4,0($a3)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    swc1	$f3,4($a3)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    swc1	$f2,8($a3)
    lwc1	$f1,12($a2)
    # Line 1327
    addiu	$a1,$a1,4
    # Line 1328
    addiu	$a3,$a3,16
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,16
    # Line 1327
    bne	$a4,$a1,.L0d9a7a70
    # Line 1328
    swc1	$f1,-4($a3)
.L0d9a7ab0:
    # Line 1330
    jr	$ra
    nop
.end __glSpanPackNonCompInt

# Function: __glSpanCopy
# Declared: Line 1333 (Source lines: 1335-1340)
# Address: 0x0d9a7ac0 - 0x0d9a7b1c (Size: 92 bytes, Frame: 16)
.globl __glSpanCopy
.ent __glSpanCopy
__glSpanCopy:
    # Line 1339
    lw	$a4,180($a1)
    lw	$a0,28($a1)
    mult	$a0,$a4
    lw	$v0,36($a1)
    mflo	$v1
    nop
    nop
    mult	$v0,$v1
    # Line 1335
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,-27956
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1339
    # lw $t9, -22900($gp) # &memcpy
    # Line 1335
    move	$a1,$a2
    # Line 1339
    mflo	$a2
    # Line 1335
    sd	$ra,0($sp)
    # Line 1339
    jal	memcpy
    # Line 1335
    move	$a0,$a3
    ld	$ra,0($sp)
    # Line 1340
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSpanCopy

# Function: __glSpanPackBitmap
# Declared: Line 1347 (Source lines: 1349-1531)
# Address: 0x0d9a7b20 - 0x0d9a824c (Size: 1836 bytes, Frame: 0)
.globl __glSpanPackBitmap
.ent __glSpanPackBitmap
__glSpanPackBitmap:
    # Line 1372
    lw	$v1,124($a1)
    # Line 1365
    move	$a5,$a2
    # Line 1372
    lbu	$t0,0($a3)
    # Line 1349
    lui	$v0,0xb
    # Line 1370
    lw	$a6,168($a1)
    # Line 1364
    move	$a7,$a3
    # Line 1349
    addiu	$v0,$v0,-28052
    # Line 1368
    lw	$t1,156($a1)
    # Line 1372
    beqz	$v1,.L0d9a7ed4
    # Line 1349
    addu	$at,$t9,$v0
    # Line 1372
    beqz	$t1,.L0d9a7cb0
    # Line 1407
    slti	$a1,$a6,8
    # Line 1372
    la	$a4,sub_0da40000
    sltiu	$t2,$t1,8
    addiu	$a4,$a4,18256
    sll	$a7,$t1,0x2
    beqz	$t2,.L0d9a7ca4
    addu	$a4,$a4,$a7
    lw	$a7,0($a4)
    jr	$a7
    # Line 1391
    li	$v1,-17
.L0d9a7b74:
    # Line 1378
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    addiu	$a5,$a2,4
    ori	$t3,$t0,0x2
    # Line 1379
    li	$t8,-3
    # Line 1380
    addiu	$t1,$a6,-1
    # Line 1378
    mfc1	$t2,$f0
    # Line 1380
    move	$a6,$t1
    # Line 1379
    and	$t0,$t0,$t8
    # Line 1378
    andi	$t2,$t2,0x1
    # Line 1380
    beqz	$t1,.L0d9a7ca4
    movn	$t0,$t3,$t2
.L0d9a7ba4:
    # Line 1382
    lwc1	$f1,0($a5)
    trunc.w.s	$f1,$f1
    addiu	$a5,$a5,4
    # Line 1384
    addiu	$a6,$a6,-1
    # Line 1383
    li	$t9,-5
    # Line 1382
    mfc1	$t3,$f1
    ori	$t8,$t0,0x4
    # Line 1383
    and	$t0,$t0,$t9
    # Line 1382
    andi	$t3,$t3,0x1
    # Line 1384
    beqz	$a6,.L0d9a7ca4
    movn	$t0,$t8,$t3
.L0d9a7bd0:
    # Line 1386
    lwc1	$f2,0($a5)
    trunc.w.s	$f2,$f2
    addiu	$a5,$a5,4
    # Line 1388
    addiu	$a6,$a6,-1
    # Line 1387
    li	$v0,-9
    # Line 1386
    mfc1	$t8,$f2
    ori	$t9,$t0,0x8
    # Line 1387
    and	$t0,$t0,$v0
    # Line 1386
    andi	$t8,$t8,0x1
    # Line 1388
    beqz	$a6,.L0d9a7ca4
    movn	$t0,$t9,$t8
.L0d9a7bfc:
    # Line 1390
    lwc1	$f3,0($a5)
    trunc.w.s	$f3,$f3
    addiu	$a5,$a5,4
    # Line 1392
    addiu	$a6,$a6,-1
    # Line 1390
    mfc1	$t9,$f3
    ori	$v0,$t0,0x10
    # Line 1391
    and	$t0,$t0,$v1
    # Line 1390
    andi	$t9,$t9,0x1
    # Line 1392
    beqz	$a6,.L0d9a7ca4
    movn	$t0,$v0,$t9
.L0d9a7c24:
    # Line 1394
    lwc1	$f4,0($a5)
    trunc.w.s	$f4,$f4
    mfc1	$v0,$f4
    addiu	$a5,$a5,4
    # Line 1396
    addiu	$a6,$a6,-1
    # Line 1394
    andi	$v0,$v0,0x1
    # Line 1395
    li	$a0,-33
    # Line 1394
    ori	$v1,$t0,0x20
    # Line 1395
    and	$t0,$t0,$a0
    # Line 1396
    beqz	$a6,.L0d9a7ca4
    movn	$t0,$v1,$v0
.L0d9a7c50:
    # Line 1398
    lwc1	$f5,0($a5)
    trunc.w.s	$f5,$f5
    mfc1	$v1,$f5
    addiu	$a5,$a5,4
    # Line 1400
    addiu	$a6,$a6,-1
    # Line 1398
    andi	$v1,$v1,0x1
    # Line 1399
    li	$a1,-65
    # Line 1398
    ori	$a0,$t0,0x40
    # Line 1399
    and	$t0,$t0,$a1
    # Line 1400
    beqz	$a6,.L0d9a7ca4
    movn	$t0,$a0,$v1
.L0d9a7c7c:
    # Line 1402
    lwc1	$f6,0($a5)
    trunc.w.s	$f6,$f6
    mfc1	$a0,$f6
    # Line 1404
    addiu	$a6,$a6,-1
    # Line 1402
    andi	$a0,$a0,0x1
    # Line 1403
    li	$a2,-129
    # Line 1402
    ori	$a1,$t0,0x80
    # Line 1403
    and	$t0,$t0,$a2
    # Line 1402
    addiu	$a5,$a5,4
    movn	$t0,$a1,$a0
.L0d9a7ca4:
    # Line 1407
    addiu	$a7,$a3,1
    # Line 1406
    sb	$t0,0($a3)
    # Line 1407
    slti	$a1,$a6,8
.L0d9a7cb0:
    bnez	$a1,.L0d9a7d98
    nop
    nop
    nop
.L0d9a7cc0:
    # Line 1411
    lwc1	$f14,0($a5)
    lwc1	$f13,4($a5)
    trunc.w.s	$f14,$f14
    # Line 1413
    lwc1	$f12,8($a5)
    # Line 1411
    trunc.w.s	$f13,$f13
    mfc1	$t0,$f14
    # Line 1414
    lwc1	$f11,12($a5)
    # Line 1413
    trunc.w.s	$f12,$f12
    # Line 1411
    mfc1	$a3,$f13
    andi	$t0,$t0,0x1
    li	$a4,1
    movz	$a4,$zero,$t0
    # Line 1415
    lwc1	$f10,16($a5)
    # Line 1414
    trunc.w.s	$f11,$f11
    # Line 1413
    mfc1	$a1,$f12
    # Line 1411
    andi	$a3,$a3,0x1
    # Line 1413
    ori	$a2,$a4,0x2
    movz	$a2,$a4,$a3
    # Line 1416
    lwc1	$f9,20($a5)
    # Line 1415
    trunc.w.s	$f10,$f10
    # Line 1414
    mfc1	$v1,$f11
    # Line 1413
    andi	$a1,$a1,0x1
    # Line 1414
    ori	$a0,$a2,0x4
    movz	$a0,$a2,$a1
    # Line 1417
    lwc1	$f8,24($a5)
    # Line 1416
    trunc.w.s	$f9,$f9
    # Line 1415
    mfc1	$t9,$f10
    # Line 1414
    andi	$v1,$v1,0x1
    # Line 1415
    ori	$v0,$a0,0x8
    movz	$v0,$a0,$v1
    # Line 1419
    lwc1	$f7,28($a5)
    # Line 1417
    trunc.w.s	$f8,$f8
    # Line 1416
    mfc1	$t3,$f9
    # Line 1415
    andi	$t9,$t9,0x1
    # Line 1416
    ori	$t8,$v0,0x10
    movz	$t8,$v0,$t9
    # Line 1419
    trunc.w.s	$f7,$f7
    # Line 1417
    mfc1	$t1,$f8
    # Line 1416
    andi	$t3,$t3,0x1
    # Line 1417
    ori	$t2,$t8,0x20
    # Line 1411
    addiu	$a6,$a6,-8
    movz	$t2,$t8,$t3
    # Line 1419
    mfc1	$a4,$f7
    # Line 1417
    andi	$t1,$t1,0x1
    # Line 1418
    ori	$t0,$t2,0x40
    # Line 1421
    slti	$a3,$a6,8
    movz	$t0,$t2,$t1
    # Line 1419
    andi	$a4,$a4,0x1
    ori	$a2,$t0,0x80
    # Line 1421
    addiu	$a7,$a7,1
    movz	$a2,$t0,$a4
    # Line 1419
    addiu	$a5,$a5,32
    # Line 1421
    beqz	$a3,.L0d9a7cc0
    # Line 1420
    sb	$a2,-1($a7)
.L0d9a7d98:
    # Line 1421
    beqz	$a6,.L0d9a7ecc
    # Line 1425
    la	$a2,sub_0da40000
    sll	$a4,$a6,0x2
    sltiu	$t1,$a6,8
    addu	$a3,$a5,$a4
    addiu	$a5,$a3,-4
    addiu	$a2,$a2,18288
    # Line 1424
    lbu	$t0,0($a7)
    # Line 1425
    beqz	$t1,.L0d9a7ec4
    addu	$a2,$a2,$a4
    lw	$a4,0($a2)
    jr	$a4
    nop
.L0d9a7dcc:
    # Line 1428
    lwc1	$f15,-4($a3)
    trunc.w.s	$f15,$f15
    mfc1	$a6,$f15
    ori	$t1,$t0,0x40
    # Line 1429
    li	$t2,-65
    and	$t0,$t0,$t2
    # Line 1428
    andi	$a6,$a6,0x1
    addiu	$a5,$a3,-8
    movn	$t0,$t1,$a6
.L0d9a7df0:
    # Line 1431
    lwc1	$f16,0($a5)
    trunc.w.s	$f16,$f16
    mfc1	$t1,$f16
    andi	$t1,$t1,0x1
    # Line 1432
    li	$t3,-33
    # Line 1431
    ori	$t2,$t0,0x20
    # Line 1432
    and	$t0,$t0,$t3
    # Line 1431
    addiu	$a5,$a5,-4
    movn	$t0,$t2,$t1
.L0d9a7e14:
    # Line 1434
    lwc1	$f17,0($a5)
    trunc.w.s	$f17,$f17
    mfc1	$t2,$f17
    andi	$t2,$t2,0x1
    # Line 1435
    li	$t8,-17
    # Line 1434
    ori	$t3,$t0,0x10
    # Line 1435
    and	$t0,$t0,$t8
    # Line 1434
    addiu	$a5,$a5,-4
    movn	$t0,$t3,$t2
.L0d9a7e38:
    # Line 1437
    lwc1	$f18,0($a5)
    trunc.w.s	$f18,$f18
    mfc1	$t3,$f18
    andi	$t3,$t3,0x1
    # Line 1438
    li	$t9,-9
    # Line 1437
    ori	$t8,$t0,0x8
    # Line 1438
    and	$t0,$t0,$t9
    # Line 1437
    addiu	$a5,$a5,-4
    movn	$t0,$t8,$t3
.L0d9a7e5c:
    # Line 1440
    lwc1	$f19,0($a5)
    trunc.w.s	$f19,$f19
    mfc1	$t8,$f19
    andi	$t8,$t8,0x1
    # Line 1441
    li	$v0,-5
    # Line 1440
    ori	$t9,$t0,0x4
    # Line 1441
    and	$t0,$t0,$v0
    # Line 1440
    addiu	$a5,$a5,-4
    movn	$t0,$t9,$t8
.L0d9a7e80:
    # Line 1443
    lwc1	$f21,0($a5)
    trunc.w.s	$f21,$f21
    mfc1	$t9,$f21
    andi	$t9,$t9,0x1
    # Line 1444
    li	$v1,-3
    # Line 1443
    ori	$v0,$t0,0x2
    # Line 1444
    and	$t0,$t0,$v1
    # Line 1443
    addiu	$a5,$a5,-4
    movn	$t0,$v0,$t9
.L0d9a7ea4:
    # Line 1445
    lwc1	$f23,0($a5)
    trunc.w.s	$f23,$f23
    mfc1	$v0,$f23
    andi	$v0,$v0,0x1
    # Line 1447
    li	$a0,-2
    # Line 1446
    ori	$v1,$t0,0x1
    # Line 1447
    and	$t0,$t0,$a0
    movn	$t0,$v1,$v0
.L0d9a7ec4:
    # Line 1531
    jr	$ra
    # Line 1450
    sb	$t0,0($a7)
.L0d9a7ecc:
    # Line 1531
    jr	$ra
    nop
.L0d9a7ed4:
    # Line 1450
    sltiu	$t2,$t1,8
    beqz	$t1,.L0d9a8034
    la	$a4,sub_0da40000
    sll	$a7,$t1,0x2
    addiu	$a4,$a4,18320
    beqz	$t2,.L0d9a802c
    addu	$a4,$a4,$a7
    # Line 1469
    li	$v1,-9
    # Line 1450
    lw	$a7,0($a4)
    # Line 1477
    li	$a1,-3
    # Line 1450
    jr	$a7
    # Line 1473
    li	$a0,-5
.L0d9a7f04:
    # Line 1456
    lwc1	$f25,0($a2)
    trunc.w.s	$f25,$f25
    addiu	$a5,$a2,4
    ori	$t3,$t0,0x40
    # Line 1457
    li	$t8,-65
    # Line 1458
    addiu	$t1,$a6,-1
    # Line 1456
    mfc1	$t2,$f25
    # Line 1458
    move	$a6,$t1
    # Line 1457
    and	$t0,$t0,$t8
    # Line 1456
    andi	$t2,$t2,0x1
    # Line 1458
    beqz	$t1,.L0d9a802c
    movn	$t0,$t3,$t2
.L0d9a7f34:
    # Line 1460
    lwc1	$f27,0($a5)
    trunc.w.s	$f27,$f27
    mfc1	$t3,$f27
    addiu	$a5,$a5,4
    # Line 1462
    addiu	$a6,$a6,-1
    # Line 1460
    andi	$t3,$t3,0x1
    # Line 1461
    li	$t9,-33
    # Line 1460
    ori	$t8,$t0,0x20
    # Line 1461
    and	$t0,$t0,$t9
    # Line 1462
    beqz	$a6,.L0d9a802c
    movn	$t0,$t8,$t3
.L0d9a7f60:
    # Line 1464
    lwc1	$f29,0($a5)
    trunc.w.s	$f29,$f29
    addiu	$a5,$a5,4
    # Line 1466
    addiu	$a6,$a6,-1
    # Line 1465
    li	$v0,-17
    # Line 1464
    mfc1	$t8,$f29
    ori	$t9,$t0,0x10
    # Line 1465
    and	$t0,$t0,$v0
    # Line 1464
    andi	$t8,$t8,0x1
    # Line 1466
    beqz	$a6,.L0d9a802c
    movn	$t0,$t9,$t8
.L0d9a7f8c:
    # Line 1468
    lwc1	$f31,0($a5)
    trunc.w.s	$f31,$f31
    addiu	$a5,$a5,4
    # Line 1470
    addiu	$a6,$a6,-1
    # Line 1468
    mfc1	$t9,$f31
    ori	$v0,$t0,0x8
    # Line 1469
    and	$t0,$t0,$v1
    # Line 1468
    andi	$t9,$t9,0x1
    # Line 1470
    beqz	$a6,.L0d9a802c
    movn	$t0,$v0,$t9
.L0d9a7fb4:
    # Line 1472
    lwc1	$f0,0($a5)
    trunc.w.s	$f0,$f0
    addiu	$a5,$a5,4
    # Line 1474
    addiu	$a6,$a6,-1
    # Line 1472
    mfc1	$v0,$f0
    ori	$v1,$t0,0x4
    # Line 1473
    and	$t0,$t0,$a0
    # Line 1472
    andi	$v0,$v0,0x1
    # Line 1474
    beqz	$a6,.L0d9a802c
    movn	$t0,$v1,$v0
.L0d9a7fdc:
    # Line 1476
    lwc1	$f1,0($a5)
    trunc.w.s	$f1,$f1
    addiu	$a5,$a5,4
    # Line 1478
    addiu	$a6,$a6,-1
    # Line 1476
    mfc1	$v1,$f1
    ori	$a0,$t0,0x2
    # Line 1477
    and	$t0,$t0,$a1
    # Line 1476
    andi	$v1,$v1,0x1
    # Line 1478
    beqz	$a6,.L0d9a802c
    movn	$t0,$a0,$v1
.L0d9a8004:
    # Line 1480
    lwc1	$f2,0($a5)
    trunc.w.s	$f2,$f2
    # Line 1482
    addiu	$a6,$a6,-1
    # Line 1480
    mfc1	$a0,$f2
    ori	$a1,$t0,0x1
    # Line 1481
    li	$a2,-2
    and	$t0,$t0,$a2
    # Line 1480
    andi	$a0,$a0,0x1
    addiu	$a5,$a5,4
    movn	$t0,$a1,$a0
.L0d9a802c:
    # Line 1485
    addiu	$a7,$a3,1
    # Line 1484
    sb	$t0,0($a3)
.L0d9a8034:
    # Line 1485
    slti	$a1,$a6,8
    bnez	$a1,.L0d9a8118
    nop
.L0d9a8040:
    # Line 1489
    lwc1	$f10,0($a5)
    lwc1	$f9,4($a5)
    trunc.w.s	$f10,$f10
    # Line 1491
    lwc1	$f8,8($a5)
    # Line 1489
    trunc.w.s	$f9,$f9
    mfc1	$t0,$f10
    # Line 1492
    lwc1	$f7,12($a5)
    # Line 1491
    trunc.w.s	$f8,$f8
    # Line 1489
    mfc1	$a3,$f9
    andi	$t0,$t0,0x1
    li	$a4,128
    movz	$a4,$zero,$t0
    # Line 1493
    lwc1	$f6,16($a5)
    # Line 1492
    trunc.w.s	$f7,$f7
    # Line 1491
    mfc1	$a1,$f8
    # Line 1489
    andi	$a3,$a3,0x1
    # Line 1491
    ori	$a2,$a4,0x40
    movz	$a2,$a4,$a3
    # Line 1494
    lwc1	$f5,20($a5)
    # Line 1493
    trunc.w.s	$f6,$f6
    # Line 1492
    mfc1	$v1,$f7
    # Line 1491
    andi	$a1,$a1,0x1
    # Line 1492
    ori	$a0,$a2,0x20
    movz	$a0,$a2,$a1
    # Line 1495
    lwc1	$f4,24($a5)
    # Line 1494
    trunc.w.s	$f5,$f5
    # Line 1493
    mfc1	$t9,$f6
    # Line 1492
    andi	$v1,$v1,0x1
    # Line 1493
    ori	$v0,$a0,0x10
    movz	$v0,$a0,$v1
    # Line 1497
    lwc1	$f3,28($a5)
    # Line 1495
    trunc.w.s	$f4,$f4
    # Line 1494
    mfc1	$t3,$f5
    # Line 1493
    andi	$t9,$t9,0x1
    # Line 1494
    ori	$t8,$v0,0x8
    movz	$t8,$v0,$t9
    # Line 1497
    trunc.w.s	$f3,$f3
    # Line 1495
    mfc1	$t1,$f4
    # Line 1494
    andi	$t3,$t3,0x1
    # Line 1495
    ori	$t2,$t8,0x4
    # Line 1489
    addiu	$a6,$a6,-8
    movz	$t2,$t8,$t3
    # Line 1497
    mfc1	$a4,$f3
    # Line 1495
    andi	$t1,$t1,0x1
    # Line 1496
    ori	$t0,$t2,0x2
    # Line 1499
    slti	$a3,$a6,8
    movz	$t0,$t2,$t1
    # Line 1497
    andi	$a4,$a4,0x1
    ori	$a2,$t0,0x1
    # Line 1499
    addiu	$a7,$a7,1
    movz	$a2,$t0,$a4
    # Line 1497
    addiu	$a5,$a5,32
    # Line 1499
    beqz	$a3,.L0d9a8040
    # Line 1498
    sb	$a2,-1($a7)
.L0d9a8118:
    # Line 1499
    beqz	$a6,.L0d9a7ecc
    # Line 1522
    li	$v1,-65
    # Line 1516
    li	$t9,-17
    # Line 1503
    sll	$a4,$a6,0x2
    la	$a2,sub_0da40000
    sltiu	$t1,$a6,8
    addu	$a3,$a5,$a4
    addiu	$a5,$a3,-4
    addiu	$a2,$a2,18352
    # Line 1502
    lbu	$t0,0($a7)
    # Line 1503
    beqz	$t1,.L0d9a8244
    addu	$a2,$a2,$a4
    # Line 1513
    li	$t8,-9
    # Line 1503
    lw	$a4,0($a2)
    jr	$a4
    nop
.L0d9a8158:
    # Line 1506
    lwc1	$f11,-4($a3)
    trunc.w.s	$f11,$f11
    mfc1	$a6,$f11
    andi	$a6,$a6,0x1
    # Line 1507
    li	$t2,-3
    # Line 1506
    ori	$t1,$t0,0x2
    # Line 1507
    and	$t0,$t0,$t2
    # Line 1506
    addiu	$a5,$a3,-8
    movn	$t0,$t1,$a6
.L0d9a817c:
    # Line 1509
    lwc1	$f12,0($a5)
    trunc.w.s	$f12,$f12
    mfc1	$t1,$f12
    ori	$t2,$t0,0x4
    # Line 1510
    li	$t3,-5
    and	$t0,$t0,$t3
    # Line 1509
    andi	$t1,$t1,0x1
    addiu	$a5,$a5,-4
    movn	$t0,$t2,$t1
.L0d9a81a0:
    # Line 1512
    lwc1	$f13,0($a5)
    trunc.w.s	$f13,$f13
    mfc1	$t2,$f13
    ori	$t3,$t0,0x8
    # Line 1513
    and	$t0,$t0,$t8
    # Line 1512
    andi	$t2,$t2,0x1
    addiu	$a5,$a5,-4
    movn	$t0,$t3,$t2
.L0d9a81c0:
    # Line 1515
    lwc1	$f14,0($a5)
    trunc.w.s	$f14,$f14
    mfc1	$t3,$f14
    ori	$t8,$t0,0x10
    # Line 1516
    and	$t0,$t0,$t9
    # Line 1515
    andi	$t3,$t3,0x1
    addiu	$a5,$a5,-4
    movn	$t0,$t8,$t3
.L0d9a81e0:
    # Line 1519
    li	$v0,-33
    # Line 1518
    lwc1	$f15,0($a5)
    trunc.w.s	$f15,$f15
    mfc1	$t8,$f15
    ori	$t9,$t0,0x20
    # Line 1519
    and	$t0,$t0,$v0
    # Line 1518
    andi	$t8,$t8,0x1
    addiu	$a5,$a5,-4
    movn	$t0,$t9,$t8
.L0d9a8204:
    # Line 1521
    lwc1	$f16,0($a5)
    trunc.w.s	$f16,$f16
    mfc1	$t9,$f16
    ori	$v0,$t0,0x40
    # Line 1522
    and	$t0,$t0,$v1
    # Line 1521
    andi	$t9,$t9,0x1
    addiu	$a5,$a5,-4
    movn	$t0,$v0,$t9
.L0d9a8224:
    # Line 1525
    li	$a0,-129
    # Line 1523
    lwc1	$f17,0($a5)
    trunc.w.s	$f17,$f17
    mfc1	$v0,$f17
    # Line 1524
    ori	$v1,$t0,0x80
    # Line 1525
    and	$t0,$t0,$a0
    # Line 1523
    andi	$v0,$v0,0x1
    movn	$t0,$v1,$v0
.L0d9a8244:
    # Line 1531
    jr	$ra
    # Line 1528
    sb	$t0,0($a7)
.end __glSpanPackBitmap

# Function: __glSpanRGBAScaleBias
# Declared: Line 1537 (Source lines: 1539-1568)
# Address: 0x0d9a8250 - 0x0d9a83b8 (Size: 360 bytes, Frame: 0)
.globl __glSpanRGBAScaleBias
.ent __glSpanRGBAScaleBias
__glSpanRGBAScaleBias:
    # Line 1559
    lwc1	$f7,344($a1)
    # Line 1558
    lwc1	$f4,340($a1)
    # Line 1557
    lwc1	$f8,336($a1)
    # Line 1556
    lwc1	$f9,332($a1)
    # Line 1554
    lwc1	$f5,328($a1)
    # Line 1546
    lw	$a4,184($a1)
    # Line 1553
    lwc1	$f11,324($a1)
    # Line 1552
    lwc1	$f10,320($a1)
    # Line 1539
    move	$a6,$a3
    move	$a5,$a2
    # Line 1559
    blez	$a4,.L0d9a83b0
    # Line 1551
    lwc1	$f6,316($a1)
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9a82d4
    # Line 1559
    move	$a1,$zero
.L0d9a8290:
    # Line 1563
    lwc1	$f3,0($a5)
    madd.s	$f3,$f9,$f3,$f6
    swc1	$f3,0($a6)
    # Line 1564
    lwc1	$f2,4($a5)
    madd.s	$f2,$f8,$f2,$f10
    swc1	$f2,4($a6)
    # Line 1565
    lwc1	$f1,8($a5)
    madd.s	$f1,$f4,$f1,$f11
    swc1	$f1,8($a6)
    # Line 1566
    lwc1	$f0,12($a5)
    madd.s	$f0,$f7,$f0,$f5
    addiu	$a2,$a2,-1
    # Line 1562
    addiu	$a1,$a1,1
    # Line 1566
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9a8290
    swc1	$f0,-4($a6)
.L0d9a82d4:
    move	$a2,$a5
    beqz	$at,.L0d9a83b0
    move	$a3,$a6
.L0d9a82e0:
    # Line 1563
    lwc1	$f1,0($a2)
    madd.s	$f1,$f9,$f1,$f6
    swc1	$f1,0($a3)
    # Line 1564
    lwc1	$f0,4($a2)
    madd.s	$f0,$f8,$f0,$f10
    swc1	$f0,4($a3)
    # Line 1565
    lwc1	$f31,8($a2)
    madd.s	$f31,$f4,$f31,$f11
    swc1	$f31,8($a3)
    # Line 1566
    lwc1	$f29,12($a2)
    madd.s	$f29,$f7,$f29,$f5
    swc1	$f29,12($a3)
    # Line 1563
    lwc1	$f27,16($a2)
    madd.s	$f27,$f9,$f27,$f6
    swc1	$f27,16($a3)
    # Line 1564
    lwc1	$f25,20($a2)
    madd.s	$f25,$f8,$f25,$f10
    swc1	$f25,20($a3)
    # Line 1565
    lwc1	$f23,24($a2)
    madd.s	$f23,$f4,$f23,$f11
    swc1	$f23,24($a3)
    # Line 1566
    lwc1	$f21,28($a2)
    madd.s	$f21,$f7,$f21,$f5
    swc1	$f21,28($a3)
    # Line 1563
    lwc1	$f19,32($a2)
    madd.s	$f19,$f9,$f19,$f6
    swc1	$f19,32($a3)
    # Line 1564
    lwc1	$f18,36($a2)
    madd.s	$f18,$f8,$f18,$f10
    swc1	$f18,36($a3)
    # Line 1565
    lwc1	$f17,40($a2)
    madd.s	$f17,$f4,$f17,$f11
    swc1	$f17,40($a3)
    # Line 1566
    lwc1	$f16,44($a2)
    madd.s	$f16,$f7,$f16,$f5
    swc1	$f16,44($a3)
    # Line 1563
    lwc1	$f15,48($a2)
    madd.s	$f15,$f9,$f15,$f6
    swc1	$f15,48($a3)
    # Line 1564
    lwc1	$f14,52($a2)
    madd.s	$f14,$f8,$f14,$f10
    swc1	$f14,52($a3)
    # Line 1565
    lwc1	$f13,56($a2)
    madd.s	$f13,$f4,$f13,$f11
    swc1	$f13,56($a3)
    # Line 1566
    lwc1	$f12,60($a2)
    madd.s	$f12,$f7,$f12,$f5
    # Line 1562
    addiu	$a1,$a1,4
    # Line 1566
    addiu	$a3,$a3,64
    addiu	$a2,$a2,64
    # Line 1562
    bne	$a4,$a1,.L0d9a82e0
    # Line 1566
    swc1	$f12,-4($a3)
.L0d9a83b0:
    # Line 1568
    jr	$ra
    nop
.end __glSpanRGBAScaleBias

# Function: __glSpanRGBAScaleBiasReduce
# Declared: Line 1574 (Source lines: 1576-1653)
# Address: 0x0d9a83c0 - 0x0d9a87b0 (Size: 1008 bytes, Frame: 192)
.globl __glSpanRGBAScaleBiasReduce
.ent __glSpanRGBAScaleBiasReduce
__glSpanRGBAScaleBiasReduce:
    # Line 1590
    lw	$t2,108($a1)
    # Line 1586
    lw	$t3,184($a1)
    # Line 1592
    lwc1	$f0,316($a1)
    # Line 1593
    lwc1	$f1,320($a1)
    # Line 1594
    lwc1	$f2,324($a1)
    # Line 1595
    lwc1	$f3,328($a1)
    # Line 1597
    lwc1	$f4,332($a1)
    # Line 1598
    lwc1	$f5,336($a1)
    # Line 1599
    lwc1	$f6,340($a1)
    # Line 1600
    lwc1	$f7,344($a1)
    # Line 1602
    lwc1	$f8,30800($a0)
    # Line 1603
    lwc1	$f9,30804($a0)
    # Line 1605
    lwc1	$f11,30812($a0)
    # Line 1576
    addiu	$sp,$sp,-64
    # Line 1604
    lwc1	$f10,30808($a0)
    # Line 1605
    swc1	$f11,44($sp)
    # Line 1604
    swc1	$f10,40($sp)
    # Line 1603
    swc1	$f9,36($sp)
    # Line 1602
    swc1	$f8,32($sp)
    # Line 1600
    swc1	$f7,28($sp)
    # Line 1599
    swc1	$f6,24($sp)
    # Line 1598
    swc1	$f5,20($sp)
    # Line 1597
    swc1	$f4,16($sp)
    # Line 1595
    swc1	$f3,12($sp)
    # Line 1607
    lw	$a6,80($a1)
    li	$at,0x80e1
    # Line 1594
    swc1	$f2,8($sp)
    # Line 1576
    move	$a5,$a2
    move	$t0,$a3
    # Line 1593
    swc1	$f1,4($sp)
    # Line 1607
    li	$a7,1
    beq	$a6,$at,.L0d9a8778
    # Line 1592
    swc1	$f0,0($sp)
    # Line 1607
    li	$v0,0x8000
    beq	$a6,$v0,.L0d9a8794
    nop
    beq	$a7,$a6,.L0d9a8610
    li	$v1,6410
    beq	$a6,$v1,.L0d9a8610
    # Line 1631
    li	$a2,3
    sw	$a2,60($sp)
    # Line 1630
    li	$a0,2
    sw	$a0,56($sp)
    # Line 1629
    sw	$a7,52($sp)
    # Line 1628
    sw	$zero,48($sp)
.L0d9a8474:
    # Line 1633
    lbu	$a3,428($a1)
    beqz	$a3,.L0d9a8628
    nop
    blez	$t3,.L0d9a8608
    addiu	$a4,$sp,16
    addiu	$a6,$sp,0
    addiu	$a7,$sp,32
    move	$t1,$zero
    addiu	$a3,$sp,48
    sll	$t8,$t2,0x2
    b	.L0d9a85e8
    addu	$a3,$a3,$t8
    nop
    nop
    nop
.L0d9a84b0:
    # Line 1639
    lw	$t9,0($a2)
    sll	$t9,$t9,0x2
    addu	$v1,$t9,$a6
    lwc1	$f15,0($v1)
    addu	$v0,$t9,$a5
    lwc1	$f14,0($v0)
    addu	$at,$t9,$a4
    lwc1	$f13,0($at)
    madd.s	$f13,$f13,$f14,$f15
    addu	$t9,$t9,$a7
    lwc1	$f12,0($t9)
    addiu	$a1,$a1,-1
    addiu	$t0,$t0,4
    mul.s	$f12,$f12,$f13
    # Line 1637
    addiu	$a2,$a2,4
    bnez	$a1,.L0d9a84b0
    # Line 1639
    swc1	$f12,-4($t0)
.L0d9a84f4:
    sra	$at,$t2,0x2
    beqz	$at,.L0d9a85e0
    move	$a1,$t0
.L0d9a8500:
    lw	$t0,0($a2)
    sll	$t0,$t0,0x2
    addu	$at,$t0,$a6
    lwc1	$f5,0($at)
    addu	$t9,$t0,$a5
    lwc1	$f4,0($t9)
    addu	$t8,$t0,$a4
    lwc1	$f3,0($t8)
    madd.s	$f3,$f3,$f4,$f5
    lw	$a0,4($a2)
    addu	$t0,$t0,$a7
    lwc1	$f2,0($t0)
    sll	$a0,$a0,0x2
    addu	$t9,$a0,$a6
    lwc1	$f1,0($t9)
    mul.s	$f2,$f2,$f3
    addu	$t8,$a0,$a5
    swc1	$f2,0($a1)
    lwc1	$f0,0($t8)
    addu	$t0,$a0,$a4
    lwc1	$f31,0($t0)
    madd.s	$f31,$f31,$f0,$f1
    lw	$v1,8($a2)
    addu	$a0,$a0,$a7
    lwc1	$f29,0($a0)
    sll	$v1,$v1,0x2
    addu	$t8,$v1,$a6
    lwc1	$f27,0($t8)
    mul.s	$f29,$f29,$f31
    addu	$t0,$v1,$a5
    swc1	$f29,4($a1)
    lwc1	$f25,0($t0)
    addu	$a0,$v1,$a4
    lwc1	$f23,0($a0)
    madd.s	$f23,$f23,$f25,$f27
    lw	$v0,12($a2)
    addu	$v1,$v1,$a7
    lwc1	$f21,0($v1)
    sll	$v0,$v0,0x2
    addu	$t0,$v0,$a6
    lwc1	$f19,0($t0)
    mul.s	$f21,$f21,$f23
    addu	$a0,$v0,$a5
    swc1	$f21,8($a1)
    lwc1	$f18,0($a0)
    addu	$v1,$v0,$a4
    lwc1	$f17,0($v1)
    madd.s	$f17,$f17,$f18,$f19
    addu	$v0,$v0,$a7
    lwc1	$f16,0($v0)
    # Line 1637
    addiu	$a2,$a2,16
    # Line 1639
    addiu	$a1,$a1,16
    mul.s	$f16,$f16,$f17
    # Line 1637
    bne	$a2,$a3,.L0d9a8500
    # Line 1639
    swc1	$f16,-4($a1)
    move	$t0,$a1
.L0d9a85e0:
    # Line 1636
    beq	$t3,$t1,.L0d9a8608
    # Line 1642
    addiu	$a5,$a5,16
.L0d9a85e8:
    # Line 1633
    blez	$t2,.L0d9a85e0
    # Line 1636
    addiu	$t1,$t1,1
    andi	$a1,$t2,0x3
    # Line 1633
    addiu	$a2,$sp,48
    bnez	$a1,.L0d9a84b0
    nop
    b	.L0d9a84f4
    nop
.L0d9a8608:
    # Line 1653
    jr	$ra
    addiu	$sp,$sp,64
.L0d9a8610:
    # Line 1625
    sw	$zero,60($sp)
    # Line 1624
    sw	$zero,56($sp)
    # Line 1623
    li	$t1,3
    sw	$t1,52($sp)
    # Line 1626
    b	.L0d9a8474
    # Line 1622
    sw	$zero,48($sp)
.L0d9a8628:
    # Line 1636
    blez	$t3,.L0d9a8608
    addiu	$a4,$sp,16
    addiu	$a6,$sp,0
    move	$t1,$zero
    addiu	$a3,$sp,48
    sll	$a7,$t2,0x2
    b	.L0d9a8758
    addu	$a3,$a3,$a7
    nop
    nop
.L0d9a8650:
    # Line 1648
    lw	$t8,0($a2)
    sll	$t8,$t8,0x2
    addu	$at,$t8,$a6
    lwc1	$f8,0($at)
    addu	$t9,$t8,$a5
    lwc1	$f7,0($t9)
    addu	$t8,$t8,$a4
    lwc1	$f6,0($t8)
    madd.s	$f6,$f6,$f7,$f8
    addiu	$a1,$a1,-1
    addiu	$t0,$t0,4
    # Line 1646
    addiu	$a2,$a2,4
    bnez	$a1,.L0d9a8650
    # Line 1648
    swc1	$f6,-4($t0)
.L0d9a8688:
    sra	$t9,$t2,0x2
    beqz	$t9,.L0d9a8750
    move	$a1,$t0
    nop
    nop
    nop
.L0d9a86a0:
    lw	$a0,0($a2)
    sll	$a0,$a0,0x2
    addu	$t0,$a0,$a6
    lwc1	$f21,0($t0)
    addu	$a7,$a0,$a5
    lwc1	$f19,0($a7)
    addu	$a0,$a0,$a4
    lwc1	$f18,0($a0)
    lw	$v1,4($a2)
    madd.s	$f18,$f18,$f19,$f21
    sll	$v1,$v1,0x2
    addu	$a7,$v1,$a6
    lwc1	$f17,0($a7)
    addu	$a0,$v1,$a5
    swc1	$f18,0($a1)
    lwc1	$f16,0($a0)
    addu	$v1,$v1,$a4
    lwc1	$f15,0($v1)
    lw	$v0,8($a2)
    madd.s	$f15,$f15,$f16,$f17
    sll	$v0,$v0,0x2
    addu	$a0,$v0,$a6
    lwc1	$f14,0($a0)
    addu	$v1,$v0,$a5
    swc1	$f15,4($a1)
    lwc1	$f13,0($v1)
    addu	$v0,$v0,$a4
    lwc1	$f12,0($v0)
    lw	$at,12($a2)
    madd.s	$f12,$f12,$f13,$f14
    sll	$at,$at,0x2
    addu	$v1,$at,$a6
    lwc1	$f11,0($v1)
    addu	$v0,$at,$a5
    swc1	$f12,8($a1)
    lwc1	$f10,0($v0)
    addu	$at,$at,$a4
    lwc1	$f9,0($at)
    madd.s	$f9,$f9,$f10,$f11
    # Line 1646
    addiu	$a2,$a2,16
    # Line 1648
    addiu	$a1,$a1,16
    # Line 1646
    bne	$a2,$a3,.L0d9a86a0
    # Line 1648
    swc1	$f9,-4($a1)
    move	$t0,$a1
.L0d9a8750:
    # Line 1645
    beq	$t3,$t1,.L0d9a8608
    # Line 1650
    addiu	$a5,$a5,16
.L0d9a8758:
    # Line 1636
    blez	$t2,.L0d9a8750
    # Line 1645
    addiu	$t1,$t1,1
    andi	$a1,$t2,0x3
    # Line 1636
    addiu	$a2,$sp,48
    bnez	$a1,.L0d9a8650
    nop
    b	.L0d9a8688
    nop
.L0d9a8778:
    # Line 1612
    li	$a3,3
    sw	$a3,60($sp)
    # Line 1611
    sw	$zero,56($sp)
    # Line 1610
    sw	$a7,52($sp)
    # Line 1609
    li	$a2,2
    b	.L0d9a8474
    sw	$a2,48($sp)
.L0d9a8794:
    # Line 1618
    sw	$zero,60($sp)
    # Line 1617
    sw	$a7,56($sp)
    # Line 1616
    li	$a6,2
    sw	$a6,52($sp)
    # Line 1615
    li	$a4,3
    # Line 1619
    b	.L0d9a8474
    # Line 1615
    sw	$a4,48($sp)
.end __glSpanRGBAScaleBiasReduce

.late_rodata
jtbl_0da44750:
    .word .L0d9a7ca4
    .word .L0d9a7b74
    .word .L0d9a7ba4
    .word .L0d9a7bd0
    .word .L0d9a7bfc
    .word .L0d9a7c24
    .word .L0d9a7c50
    .word .L0d9a7c7c
    .word .L0d9a7ec4
    .word .L0d9a7ea4
    .word .L0d9a7e80
    .word .L0d9a7e5c
    .word .L0d9a7e38
    .word .L0d9a7e14
    .word .L0d9a7df0
    .word .L0d9a7dcc
    .word .L0d9a802c
    .word .L0d9a7f04
    .word .L0d9a7f34
    .word .L0d9a7f60
    .word .L0d9a7f8c
    .word .L0d9a7fb4
    .word .L0d9a7fdc
    .word .L0d9a8004
    .word .L0d9a8244
    .word .L0d9a8224
    .word .L0d9a8204
    .word .L0d9a81e0
    .word .L0d9a81c0
    .word .L0d9a81a0
    .word .L0d9a817c
    .word .L0d9a8158

.rdata
_lit_40400000:
    .word 0x40400000
_lit_40e00000:
    .word 0x40e00000
_lit_41700000:
    .word 0x41700000
_lit_41f80000:
    .word 0x41f80000
_lit_427c0000:
    .word 0x427c0000
_lit_437f0000:
    .word 0x437f0000
_lit_447fc000:
    .word 0x447fc000

