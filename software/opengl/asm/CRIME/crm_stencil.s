# Source: ../CRIME/crm_stencil.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_stencil.c
# Total Functions: 13

.text

# Function: __glCrmPassStencilMask
# Declared: Line 26 (Source lines: 27-36)
# Address: 0x0d96d110 - 0x0d96d15c (Size: 76 bytes, Frame: 16)
.globl __glCrmPassStencilMask
.ent __glCrmPassStencilMask
__glCrmPassStencilMask:
    # Line 31
    lbu	$at,32009($a0)
    # Line 27
    addiu	$sp,$sp,-16
    # Line 31
    beqz	$at,.L0d96d154
    # Line 29
    lw	$a2,32188($a0)
    # Line 31
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x8000
    beqz	$v0,.L0d96d154
    nop
    # Line 33
    lw	$a1,32184($a0)
    lh	$a3,1674($a0)
    sw	$a3,0($sp)
    lw	$a0,0($sp)
    lw	$v1,0($sp)
    sw	$a0,8680($a1)
    # Line 36
    addiu	$sp,$sp,16
    jr	$ra
    # Line 33
    sw	$v1,8680($a2)
.L0d96d154:
    # Line 36
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmPassStencilMask

# Function: __glCrmEnableStencilTest
# Declared: Line 38 (Source lines: 39-66)
# Address: 0x0d96d160 - 0x0d96d244 (Size: 228 bytes, Frame: 32)
.globl __glCrmEnableStencilTest
.ent __glCrmEnableStencilTest
__glCrmEnableStencilTest:
    # Line 42
    lbu	$v0,32009($a0)
    # Line 39
    addiu	$sp,$sp,-32
    lui	$at,0xe
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$at,$at,15404
    sd	$gp,8($sp)
    # Line 42
    beqz	$v0,.L0d96d224
    # Line 39
    addu	$gp,$t9,$at
    # Line 42
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x8000
    beqz	$v0,.L0d96d224
    nop
    # Line 44
    lw	$v1,31328($a0)
    lw	$a0,32088($a0)
    sd	$ra,16($sp)
    ori	$a0,$a0,0x1
    beqz	$v1,.L0d96d1bc
    sw	$a0,32088($s0)
    # Line 46
    # lw $t9, -31792($gp) # &__glCrmForceNonTagClear
    move	$a0,$s0
    jal	__glCrmForceNonTagClear
    addiu	$a1,$s0,31228
.L0d96d1bc:
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    lw	$a1,-32608($a0)
    beqz	$a1,.L0d96d1e8
    # Line 51
    li	$a2,2
    # Line 49
    sw	$zero,-32608($a0)
    # Line 50
    sw	$zero,31128($s0)
    # Line 51
    sw	$a2,4120($zero)
    lw	$a1,11756($s0)
    ori	$a1,$a1,0x4
    sw	$a1,11756($s0)
.L0d96d1e8:
    # Line 62
    # lw $t9, -31332($gp) # &__glCrmPassStencilMask
    bal __glCrmPassStencilMask
    move	$a0,$s0
    lw	$a3,32088($s0)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0d96d214
    ld	$ra,16($sp)
    # Line 64
    # lw $t9, -31324($gp) # &__glCrmPassStencilMode
    bal __glCrmPassStencilMode
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d96d214:
    ld	$s0,0($sp)
    # Line 66
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96d224:
    # Line 48
    lbu	$a4,31324($s0)
    # Line 58
    li	$a6,-2
    # Line 48
    beqz	$a4,.L0d96d1e8
    sd	$ra,16($sp)
    # Line 58
    lw	$a5,32088($s0)
    and	$a5,$a5,$a6
    b	.L0d96d1e8
    sw	$a5,32088($s0)
.end __glCrmEnableStencilTest

# Function: __glCrmPassStencilMode
# Declared: Line 68 (Source lines: 69-138)
# Address: 0x0d96d250 - 0x0d96d444 (Size: 500 bytes, Frame: 16)
.globl __glCrmPassStencilMode
.ent __glCrmPassStencilMode
__glCrmPassStencilMode:
    # Line 69
    addiu	$sp,$sp,-16
    # Line 108
    li	$t3,5
    # Line 71
    lbu	$at,31324($a0)
    # Line 96
    li	$t2,5386
    # Line 91
    li	$a6,5
    # Line 79
    li	$a5,5386
    # Line 96
    li	$t1,7683
    # Line 79
    li	$a1,7682
    # Line 71
    beqz	$at,.L0d96d3d4
    lw	$a3,32188($a0)
    # Line 79
    lw	$a2,1676($a0)
    beqz	$a2,.L0d96d3dc
    xor	$a5,$a2,$a5
    li	$v0,7680
    beq	$a2,$v0,.L0d96d3e4
    # Line 83
    move	$a4,$zero
    # Line 79
    li	$v1,7681
    beq	$a2,$v1,.L0d96d3fc
    # Line 87
    li	$a4,3
    # Line 79
    beq	$a2,$a1,.L0d96d414
    nop
    li	$a4,7683
    beq	$a2,$a4,.L0d96d42c
    # Line 93
    move	$a4,$zero
    movz	$a4,$a6,$a5
.L0d96d2b4:
    # Line 96
    lw	$a2,1680($a0)
.L0d96d2b8:
    # Line 125
    li	$v1,5
    # Line 113
    li	$v0,5386
    li	$at,7683
    # Line 98
    li	$a5,1
    # Line 96
    beqz	$a2,.L0d96d300
    xor	$t2,$a2,$t2
    li	$a6,7680
    beq	$a2,$a6,.L0d96d3ec
    # Line 102
    li	$a5,2
    # Line 96
    li	$a7,7681
    beq	$a2,$a7,.L0d96d404
    li	$t0,7682
    beq	$a2,$t0,.L0d96d41c
    # Line 106
    li	$a5,4
    # Line 96
    beq	$a2,$t1,.L0d96d434
    nop
    # Line 110
    move	$a5,$zero
    movz	$a5,$t3,$t2
.L0d96d300:
    # Line 113
    lw	$a2,1684($a0)
.L0d96d304:
    # Line 115
    li	$a6,1
    # Line 113
    beqz	$a2,.L0d96d340
    xor	$v0,$a2,$v0
    li	$t3,7680
    beq	$a2,$t3,.L0d96d3f4
    li	$t8,7681
    beq	$a2,$t8,.L0d96d40c
    # Line 119
    li	$a6,2
    # Line 113
    li	$t9,7682
    beq	$a2,$t9,.L0d96d424
    # Line 123
    li	$a6,4
    # Line 113
    beq	$a2,$at,.L0d96d43c
    nop
    # Line 127
    move	$a6,$zero
    movz	$a6,$v1,$v0
.L0d96d340:
    # Line 130
    lh	$a2,1670($a0)
.L0d96d344:
    # Line 135
    andi	$a4,$a4,0xf
    # Line 131
    lui	$a7,0xff
    lh	$t0,1672($a0)
    # Line 135
    sll	$a4,$a4,0x8
    # Line 131
    nor	$a7,$a7,$zero
    andi	$t0,$t0,0xff
    # Line 130
    sll	$a2,$a2,0x18
    # Line 131
    and	$a2,$a2,$a7
    # Line 132
    lw	$a7,1664($a0)
    # Line 131
    sll	$t0,$t0,0x10
    or	$a2,$a2,$t0
    # Line 132
    li	$t0,0xf000
    nor	$t0,$t0,$zero
    andi	$a7,$a7,0x7
    sll	$a7,$a7,0xc
    and	$a2,$a2,$t0
    or	$a2,$a2,$a7
    # Line 135
    li	$a7,-3841
    and	$a2,$a2,$a7
    li	$a7,-241
    or	$a2,$a2,$a4
    andi	$a4,$a5,0xf
    sll	$a4,$a4,0x4
    and	$a2,$a2,$a7
    or	$a2,$a2,$a4
    li	$a4,-16
    andi	$a1,$a6,0xf
    and	$a2,$a2,$a4
    or	$a1,$a1,$a2
    sw	$a1,0($sp)
    # Line 137
    lw	$a2,32184($a0)
    lw	$v1,0($sp)
    sw	$a1,8672($a2)
    # Line 138
    addiu	$sp,$sp,16
    jr	$ra
    # Line 137
    sw	$v1,8672($a3)
.L0d96d3d4:
    # Line 138
    jr	$ra
    addiu	$sp,$sp,16
.L0d96d3dc:
    b	.L0d96d2b4
    # Line 81
    li	$a4,1
.L0d96d3e4:
    # Line 83
    b	.L0d96d2b8
    # Line 96
    lw	$a2,1680($a0)
.L0d96d3ec:
    # Line 100
    b	.L0d96d300
    move	$a5,$zero
.L0d96d3f4:
    # Line 117
    b	.L0d96d340
    move	$a6,$zero
.L0d96d3fc:
    # Line 85
    b	.L0d96d2b4
    li	$a4,2
.L0d96d404:
    # Line 102
    b	.L0d96d304
    # Line 113
    lw	$a2,1684($a0)
.L0d96d40c:
    # Line 119
    b	.L0d96d344
    # Line 130
    lh	$a2,1670($a0)
.L0d96d414:
    # Line 87
    b	.L0d96d2b8
    # Line 96
    lw	$a2,1680($a0)
.L0d96d41c:
    # Line 104
    b	.L0d96d300
    li	$a5,3
.L0d96d424:
    # Line 121
    b	.L0d96d340
    li	$a6,3
.L0d96d42c:
    # Line 89
    b	.L0d96d2b4
    li	$a4,4
.L0d96d434:
    # Line 106
    b	.L0d96d304
    # Line 113
    lw	$a2,1684($a0)
.L0d96d43c:
    # Line 123
    b	.L0d96d344
    # Line 130
    lh	$a2,1670($a0)
.end __glCrmPassStencilMode

# Function: __glCrmUpdatePolyStipple
# Declared: Line 141 (Source lines: 141-251)
# Address: 0x0d96d450 - 0x0d96d814 (Size: 964 bytes, Frame: 224)
.globl __glCrmUpdatePolyStipple
.ent __glCrmUpdatePolyStipple
__glCrmUpdatePolyStipple:
    # Line 141
    addiu	$sp,$sp,-96
    sd	$s1,64($sp)
    # Line 154
    lw	$s1,32188($a0)
    # Line 141
    sd	$s0,56($sp)
    # Line 156
    lbu	$v0,32009($a0)
    # Line 141
    sd	$s2,72($sp)
    lui	$at,0xe
    move	$s2,$a0
    # Line 154
    lw	$s0,32184($a0)
    # Line 141
    addiu	$at,$at,14652
    sd	$gp,80($sp)
    # Line 156
    beqz	$v0,.L0d96d7bc
    # Line 141
    addu	$gp,$t9,$at
    # Line 156
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x8000
    bnez	$v0,.L0d96d7bc
    lui	$a0,0x1
    addu	$a0,$s2,$a0
    lw	$v0,-32608($a0)
    andi	$v1,$v0,0x2
    beqz	$v1,.L0d96d7bc
    andi	$a1,$v0,0x4
    beqz	$a1,.L0d96d7bc
    sd	$a0,48($sp)
    # Line 168
    lw	$a6,0($sp)
    lui	$t0,0xffff
    li	$a7,0xf000
    nor	$a7,$a7,$zero
    or	$a6,$a6,$t0
    and	$a6,$a6,$a7
    li	$a7,-4096
    ori	$a6,$a6,0x2000
    and	$a6,$a6,$a7
    # Line 169
    sw	$a6,8672($s0)
    # Line 168
    sw	$a6,0($sp)
    # Line 169
    lw	$a5,0($sp)
    sw	$a5,8672($s1)
    # Line 170
    li	$a4,255
    sw	$a4,4($sp)
    lw	$a3,4($sp)
    lw	$a2,4($sp)
    sw	$a3,8680($s0)
    sw	$a2,8680($s1)
    # Line 177
    lw	$t9,32324($s2)
    li	$a1,4096
    sd	$ra,88($sp)
    jalr	$t9
    move	$a0,$s2
    # Line 178
    beqz	$v0,.L0d96d7d4
    nop
    lw	$a0,32320($s2)
    beqz	$a0,.L0d96d7d4
    sltu	$t1,$v0,$a0
    bnez	$t1,.L0d96d7d4
    lui	$t2,0x2
    addu	$t2,$a0,$t2
    sltu	$t2,$v0,$t2
    beqz	$t2,.L0d96d7d4
    # Line 186
    move	$a4,$v0
    move	$a7,$s2
    sd	$v0,40($sp)
    lui	$a5,0xff00
    addiu	$t0,$s2,128
    # Line 188
    lui	$a3,0x8000
.L0d96d550:
    lw	$a6,30008($a7)
    # Line 187
    addiu	$a7,$a7,4
    nop
    nop
.L0d96d560:
    move	$t3,$zero
    # Line 190
    and	$t8,$a6,$a3
    # Line 189
    srl	$a3,$a3,0x1
    # Line 190
    addiu	$a4,$a4,4
    movn	$t3,$a5,$t8
    # Line 189
    bnez	$a3,.L0d96d560
    # Line 190
    sw	$t3,-4($a4)
    # Line 187
    bne	$a7,$t0,.L0d96d550
    # Line 188
    lui	$a3,0x8000
    # Line 206
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    # Line 200
    li	$at,4648
    sw	$at,8($sp)
    # Line 206
    addiu	$a1,$s2,31108
    # Line 201
    sw	$at,8192($s0)
    # Line 206
    move	$a0,$s2
    jal	__glCrmSetDrawBuffer
    # Line 201
    sw	$at,8192($s1)
    # Line 211
    lw	$v0,32092($s2)
    lui	$a0,0x60
    ori	$a0,$a0,0x40
    beq	$a0,$v0,.L0d96d5d0
    nop
    # Line 212
    lw	$a2,32184($s2)
    sw	$a0,8216($a2)
    lw	$a1,32188($s2)
    sw	$a0,12($sp)
    sw	$a0,8216($a1)
    sw	$a0,32092($s2)
.L0d96d5d0:
    # Line 215
    lw	$a0,16($sp)
    lui	$a1,0xff
    ori	$a1,$a1,0xffff
    and	$a0,$a0,$a1
    lui	$a2,0x300
    lui	$a1,0x3
    lw	$a3,32096($s2)
    or	$a0,$a0,$a2
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    beq	$a3,$a0,.L0d96d61c
    # Line 218
    li	$ra,4
    # Line 216
    lw	$a3,32184($s2)
    sw	$a0,16($sp)
    sw	$a0,8288($a3)
    lw	$a3,32188($s2)
    sw	$a0,8288($a3)
    sw	$a0,32096($s2)
    # Line 218
    li	$ra,4
.L0d96d61c:
    sw	$ra,8360($s0)
    sw	$ra,8360($s1)
    # Line 219
    sw	$ra,8364($s0)
    # Line 220
    ld	$t8,40($sp)
    lui	$t9,0x1
    # Line 219
    sw	$ra,8364($s1)
    # Line 220
    ori	$t9,$t9,0xffff
    and	$t8,$t8,$t9
    sw	$t8,8352($s0)
    sw	$t8,8352($s1)
    # Line 223
    lw	$t3,3704($s2)
    mtc1	$t3,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f3,3672($s2)
    lwc1	$f2,3676($s2)
    add.s	$f1,$f1,$f3
    sub.s	$f1,$f1,$f2
    # Line 222
    lwc1	$f0,3668($s2)
    # Line 225
    lw	$a6,3700($s2)
    # Line 223
    trunc.w.s	$f1,$f1
    # Line 226
    addiu	$t3,$t3,31
    # Line 225
    addiu	$a6,$a6,31
    # Line 226
    sra	$t3,$t3,0x5
    # Line 222
    trunc.w.s	$f0,$f0
    # Line 223
    mfc1	$a7,$f1
    # Line 225
    sra	$a6,$a6,0x5
    # Line 222
    mfc1	$t2,$f0
    # Line 229
    beqz	$t3,.L0d96d740
    addiu	$t0,$a7,-31
    move	$t1,$zero
    lui	$a5,0x7
    addiu	$t8,$t2,31
    ori	$a5,$a5,0xffff
    # Line 231
    sll	$a0,$a7,0x6
    and	$a0,$a5,$a0
    nop
    nop
.L0d96d6b0:
    # Line 236
    move	$a4,$t8
    # Line 231
    sw	$a0,20($sp)
    lw	$v1,20($sp)
    lw	$v0,20($sp)
    sw	$v1,8324($s0)
    # Line 233
    sll	$at,$t0,0x6
    # Line 231
    sw	$v0,8324($s1)
    # Line 233
    and	$at,$a5,$at
    sw	$at,24($sp)
    lw	$ra,24($sp)
    lw	$t9,24($sp)
    sw	$ra,8332($s0)
    # Line 235
    move	$v0,$t2
    # Line 236
    beqz	$a6,.L0d96d728
    # Line 233
    sw	$t9,8332($s1)
    # Line 236
    move	$a3,$zero
.L0d96d6f0:
    # Line 238
    sll	$ra,$v0,0x6
    and	$ra,$a5,$ra
    sw	$ra,28($sp)
    # Line 239
    sll	$t9,$a4,0x6
    # Line 238
    lw	$a1,28($sp)
    # Line 239
    and	$t9,$a5,$t9
    sw	$t9,32($sp)
    # Line 237
    addiu	$a3,$a3,1
    # Line 239
    lw	$a2,32($sp)
    # Line 241
    addiu	$a4,$a4,32
    # Line 239
    sw	$a2,10376($s0)
    # Line 240
    addiu	$v0,$v0,32
    # Line 237
    bne	$a6,$a3,.L0d96d6f0
    # Line 238
    sw	$a1,8320($s0)
.L0d96d728:
    # Line 230
    addiu	$t1,$t1,1
    # Line 243
    addiu	$a7,$a7,-32
    # Line 244
    addiu	$t0,$t0,-32
    # Line 231
    sll	$a0,$a7,0x6
    # Line 230
    bne	$t3,$t1,.L0d96d6b0
    # Line 231
    and	$a0,$a5,$a0
.L0d96d740:
    # Line 230
    lw	$at,32092($s2)
    lw	$v0,32088($s2)
    beq	$at,$v0,.L0d96d770
    # Line 247
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    # Line 246
    lw	$a2,32184($s2)
    sw	$v0,8216($a2)
    lw	$a1,32188($s2)
    lw	$a0,32088($s2)
    sw	$a0,8216($a1)
    lw	$v1,32088($s2)
    sw	$v1,32092($s2)
    # Line 247
    # lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d96d770:
    move	$a0,$s2
    jal	__glCrmSetReadBuffer
    lw	$a1,11764($s2)
    # Line 248
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    ld	$s0,48($sp)
    move	$a0,$s2
    jal	__glCrmSetDrawBuffer
    lw	$a1,11760($s2)
    # Line 251
    ld	$gp,80($sp)
    ld	$s1,64($sp)
    # Line 250
    lw	$a3,-32608($s0)
    ld	$ra,88($sp)
    # Line 251
    ld	$s2,72($sp)
    # Line 250
    li	$a4,-5
    and	$a3,$a3,$a4
    sw	$a3,-32608($s0)
    # Line 251
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d96d7bc:
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d96d7d4:
    # Line 179
    lw	$t9,32324($s2)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$zero
    # Line 251
    ld	$gp,80($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    # Line 180
    ld	$a6,48($sp)
    ld	$ra,88($sp)
    lw	$a5,-32608($a6)
    # Line 251
    ld	$s2,72($sp)
    # Line 180
    li	$a7,-7
    # Line 251
    addiu	$sp,$sp,96
    # Line 180
    and	$a5,$a5,$a7
    # Line 251
    jr	$ra
    # Line 180
    sw	$a5,-32608($a6)
.end __glCrmUpdatePolyStipple

# Function: PickStencil
# Declared: Line 254 (Source lines: 256-256)
# Address: 0x0d96d820 - 0x0d96d828 (Size: 8 bytes, Frame: 0)
.ent PickStencil
PickStencil:
    # Line 256
    jr	$ra
    nop
.end PickStencil

# Function: FetchStencil
# Declared: Line 259 (Source lines: 291-291)
# Address: 0x0d96d830 - 0x0d96d838 (Size: 8 bytes, Frame: 0)
.ent FetchStencil
FetchStencil:
    # Line 291
    jr	$ra
    move	$v0,$zero
.end FetchStencil

# Function: StoreStencil
# Declared: Line 295 (Source lines: 296-341)
# Address: 0x0d96d840 - 0x0d96d95c (Size: 284 bytes, Frame: 192)
.ent StoreStencil
StoreStencil:
    # Line 296
    addiu	$sp,$sp,-576
    sd	$a3,536($sp)
    sd	$s0,544($sp)
    # Line 300
    lw	$s0,0($a0)
    # Line 296
    sd	$a2,528($sp)
    # Line 300
    lh	$v0,1674($s0)
    # Line 296
    sd	$a1,520($sp)
    lui	$at,0xe
    sd	$a0,512($sp)
    addiu	$at,$at,13644
    sd	$gp,552($sp)
    # Line 300
    beqz	$v0,.L0d96d94c
    # Line 296
    addu	$gp,$t9,$at
    # Line 312
    lw	$t9,32324($s0)
    move	$a0,$s0
    sd	$ra,560($sp)
    jalr	$t9
    li	$a1,4
    # Line 315
    ld	$a5,520($sp)
    # Line 313
    ld	$a6,536($sp)
    # Line 316
    ld	$a4,528($sp)
    # Line 313
    sll	$a6,$a6,0x18
    sw	$a6,0($v0)
    # Line 323
    li	$a1,6401
    sw	$a1,0($sp)
    # Line 322
    li	$a3,4
    sw	$a3,16($sp)
    # Line 321
    sw	$v0,8($sp)
    # Line 320
    sw	$v0,12($sp)
    # Line 317
    li	$a2,1
    # Line 319
    sw	$a2,172($sp)
    # Line 318
    sw	$a2,220($sp)
    # Line 317
    sw	$a2,216($sp)
    # Line 316
    sw	$a4,208($sp)
    # Line 315
    sw	$a5,204($sp)
    # Line 329
    lbu	$a0,32202($s0)
    # Line 330
    sb	$zero,32202($s0)
    # Line 328
    sw	$zero,32224($s0)
    # Line 331
    lw	$v0,32292($s0)
    # Line 326
    sb	$a2,32206($s0)
    # Line 331
    li	$v1,-241
    and	$v0,$v0,$v1
    # Line 327
    ld	$v1,512($sp)
    sw	$v1,32300($s0)
    # Line 332
    li	$v1,-769
    # Line 331
    ori	$v0,$v0,0x20
    # Line 335
    addiu	$a1,$sp,0
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 332
    and	$v0,$v0,$v1
    # Line 325
    sw	$a2,32216($s0)
    # Line 333
    li	$v1,-13
    # Line 332
    ori	$v0,$v0,0x200
    # Line 329
    sd	$a0,504($sp)
    # Line 335
    move	$a0,$s0
    # Line 333
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x8
    # Line 335
    jal	crmDrawPixelsXfer
    # Line 333
    sw	$v0,32292($s0)
    # Line 341
    ld	$gp,552($sp)
    # Line 338
    sw	$zero,32216($s0)
    # Line 337
    sb	$zero,32206($s0)
    ld	$ra,560($sp)
    # Line 339
    ld	$a7,504($sp)
    sb	$a7,32202($s0)
    # Line 341
    ld	$s0,544($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d96d94c:
    ld	$s0,544($sp)
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,576
.end StoreStencil

# Function: TestFunc
# Declared: Line 344 (Source lines: 349-349)
# Address: 0x0d96d960 - 0x0d96d968 (Size: 8 bytes, Frame: 0)
.ent TestFunc
TestFunc:
    # Line 349
    jr	$ra
    li	$v0,1
.end TestFunc

# Function: ClearStencil
# Declared: Line 353 (Source lines: 354-441)
# Address: 0x0d96d970 - 0x0d96dc1c (Size: 684 bytes, Frame: 224)
.ent ClearStencil
ClearStencil:
    # Line 354
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    # Line 355
    lw	$s0,0($a0)
    lw	$at,31328($s0)
    # Line 354
    sd	$a0,56($sp)
    lui	$v0,0xe
    sd	$ra,80($sp)
    addiu	$v0,$v0,13340
    sd	$gp,72($sp)
    # Line 355
    beqz	$at,.L0d96d9b0
    # Line 354
    addu	$gp,$t9,$v0
    # Line 365
    # lw $t9, -31792($gp) # &__glCrmForceNonTagClear
    addiu	$a1,$s0,31228
    move	$a0,$s0
    jal	__glCrmForceNonTagClear
    # Line 364
    sb	$zero,31324($s0)
.L0d96d9b0:
    # Line 365
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$v1,-32608($a2)
    # Line 370
    li	$a4,2
    # Line 365
    beqz	$v1,.L0d96d9e0
    # Line 369
    ld	$a5,56($sp)
    # Line 368
    sw	$zero,-32608($a2)
    # Line 369
    sw	$zero,20($a5)
    # Line 370
    sw	$a4,4120($zero)
    lw	$a3,11756($s0)
    ori	$a3,$a3,0x4
    sw	$a3,11756($s0)
.L0d96d9e0:
    lh	$a2,1674($s0)
    # Line 376
    andi	$a3,$a2,0xff
    # Line 370
    beqz	$a2,.L0d96db8c
    # Line 376
    xori	$a3,$a3,0xff
    sltu	$a3,$zero,$a3
    beqz	$a3,.L0d96dba0
    # Line 386
    ld	$at,56($sp)
.L0d96d9fc:
    # Line 399
    beqz	$a3,.L0d96db90
    ld	$ra,80($sp)
    # Line 441
    ld	$gp,72($sp)
    # Line 420
    ld	$a7,56($sp)
    # Line 407
    lw	$a4,32188($s0)
    # Line 420
    lw	$a7,0($a7)
    # Line 418
    lw	$t0,8672($a4)
    # Line 420
    lui	$t1,0xff
    lh	$a7,1668($a7)
    ori	$a6,$t1,0xffff
    and	$a6,$t0,$a6
    sll	$a7,$a7,0x18
    or	$a6,$a6,$a7
    # Line 425
    li	$a7,0xf000
    # Line 407
    lw	$a2,32184($s0)
    # Line 425
    nor	$a7,$a7,$zero
    or	$a6,$a6,$t1
    # Line 412
    lw	$a5,32088($s0)
    # Line 425
    and	$a6,$a6,$a7
    # Line 427
    lh	$t1,1674($s0)
    # Line 425
    li	$a7,-3841
    ori	$a6,$a6,0x7000
    # Line 427
    sw	$t1,24($sp)
    # Line 425
    and	$a6,$a6,$a7
    li	$t1,-241
    # Line 427
    lw	$a7,24($sp)
    # Line 425
    ori	$a6,$a6,0x200
    # Line 427
    sw	$a7,8680($a2)
    # Line 425
    and	$a6,$a6,$t1
    # Line 427
    lw	$a7,24($sp)
    # Line 425
    li	$t1,-16
    ori	$a6,$a6,0x20
    # Line 427
    sw	$a7,8680($a4)
    # Line 425
    and	$a6,$a6,$t1
    # Line 412
    srl	$a5,$a5,0x14
    # Line 425
    ori	$a6,$a6,0x2
    # Line 429
    sw	$a6,8672($a2)
    # Line 412
    andi	$a5,$a5,0x1
    lui	$t1,0x40
    # Line 429
    sw	$a6,8672($a4)
    # Line 412
    sll	$a5,$a5,0x14
    # Line 429
    lw	$a7,32092($s0)
    # Line 412
    ori	$t1,$t1,0x1
    or	$a5,$a5,$t1
    # Line 418
    sw	$t0,16($sp)
    # Line 416
    lui	$a3,0x302
    # Line 429
    beq	$a7,$a5,.L0d96dad4
    # Line 425
    sw	$a6,20($sp)
    # Line 430
    lw	$t1,32184($s0)
    sw	$a5,8216($t1)
    lw	$t1,32188($s0)
    sw	$a5,28($sp)
    sw	$a5,8216($t1)
    sw	$a5,32092($s0)
.L0d96dad4:
    lw	$t2,32096($s0)
    beq	$a3,$t2,.L0d96daf8
    nop
    # Line 431
    lw	$t8,32184($s0)
    sw	$a3,8288($t8)
    lw	$t3,32188($s0)
    sw	$a3,32($sp)
    sw	$a3,8288($t3)
    sw	$a3,32096($s0)
.L0d96daf8:
    # Line 432
    lw	$a5,29700($s0)
    sll	$a5,$a5,0x6
    sw	$a5,36($sp)
    lw	$a3,36($sp)
    sw	$a3,8320($a2)
    # Line 433
    lw	$a1,29704($s0)
    sll	$a1,$a1,0x6
    sw	$a1,40($sp)
    lw	$a0,40($sp)
    sw	$a0,8324($a2)
    # Line 434
    lw	$v1,29708($s0)
    sll	$v1,$v1,0x6
    sw	$v1,44($sp)
    lw	$v0,44($sp)
    sw	$v0,8328($a2)
    # Line 435
    lw	$at,29712($s0)
    sll	$at,$at,0x6
    sw	$at,48($sp)
    lw	$ra,48($sp)
    sw	$ra,10380($a2)
    lw	$a0,32088($s0)
    lw	$t9,32092($s0)
    # Line 438
    lw	$t2,16($sp)
    # Line 435
    beq	$t9,$a0,.L0d96db78
    ld	$ra,80($sp)
    # Line 437
    lw	$t1,32184($s0)
    sw	$a0,8216($t1)
    lw	$t0,32188($s0)
    lw	$a7,32088($s0)
    sw	$a7,8216($t0)
    lw	$a6,32088($s0)
    sw	$a6,32092($s0)
.L0d96db78:
    # Line 438
    sw	$t2,8672($a2)
    # Line 441
    ld	$s0,64($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 438
    sw	$t2,8672($a4)
.L0d96db8c:
    ld	$ra,80($sp)
.L0d96db90:
    ld	$s0,64($sp)
    # Line 441
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d96dba0:
    # Line 386
    lw	$at,0($at)
    lh	$at,1668($at)
    # Line 389
    li	$t8,2
    sb	$t8,9($sp)
    # Line 388
    li	$t9,4
    # Line 387
    lui	$ra,0x8888
    # Line 388
    sb	$t9,8($sp)
    # Line 387
    ori	$ra,$ra,0x8888
    sw	$ra,4($sp)
    # Line 386
    sll	$at,$at,0x18
    sw	$at,0($sp)
    # Line 390
    lw	$t3,32088($s0)
    # Line 396
    # lw $t9, -22896($gp) # &ioctl
    # Line 390
    sll	$t3,$t3,0xb
    # Line 396
    addiu	$a2,$sp,0
    # Line 390
    slti	$t3,$t3,0
    sb	$t3,10($sp)
    # Line 396
    li	$a1,22022
    jal	ioctl
    lw	$a0,31504($s0)
    beqz	$v0,.L0d96dc10
    # Line 399
    lbu	$a3,10($sp)
    # Line 397
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,8352
    # Line 399
    lbu	$a3,10($sp)
.L0d96dc10:
    andi	$a3,$a3,0x2
    b	.L0d96d9fc
    sltu	$a3,$zero,$a3
.end ClearStencil

# Function: crmPickPolyStippleMode
# Declared: Line 453 (Source lines: 456-477)
# Address: 0x0d96dc20 - 0x0d96dccc (Size: 172 bytes, Frame: 0)
.ent crmPickPolyStippleMode
crmPickPolyStippleMode:
    # Line 459
    lbu	$at,31324($a0)
    li	$a6,1
    # Line 456
    lui	$a3,0x1
    # Line 459
    lw	$t2,31328($a0)
    # Line 456
    addu	$a3,$a0,$a3
    # Line 475
    li	$t1,2
    # Line 459
    beq	$a6,$at,.L0d96dc78
    # Line 456
    lw	$a5,-32608($a3)
.L0d96dc40:
    # Line 469
    move	$a4,$zero
.L0d96dc44:
    sw	$zero,-32608($a3)
    lw	$a7,20($a1)
    beq	$a6,$a7,.L0d96dcb4
    nop
.L0d96dc54:
    # Line 470
    beq	$a4,$a5,.L0d96dc70
    nop
    # Line 475
    sw	$t1,4120($zero)
.L0d96dc60:
    lw	$t0,11756($a0)
    ori	$t0,$t0,0x4
    # Line 477
    jr	$ra
    # Line 475
    sw	$t0,11756($a0)
.L0d96dc70:
    # Line 477
    jr	$ra
    nop
.L0d96dc78:
    # Line 459
    bnez	$t2,.L0d96dc44
    # Line 469
    move	$a4,$zero
    # Line 459
    lw	$t3,20($a1)
    bne	$a6,$t3,.L0d96dc44
    # Line 469
    move	$a4,$zero
    # Line 459
    lw	$t8,1792($a0)
    andi	$t8,$t8,0x8000
    bnez	$t8,.L0d96dc40
    andi	$t9,$a5,0x2
    beqz	$t9,.L0d96dcc0
    # Line 464
    ori	$a4,$a5,0x4
    # Line 470
    beq	$a4,$a5,.L0d96dc70
    # Line 464
    sw	$a4,-32608($a3)
    b	.L0d96dc60
    # Line 475
    sw	$t1,4120($zero)
.L0d96dcb4:
    # Line 471
    sw	$zero,20($a1)
    b	.L0d96dc54
    lw	$a4,-32608($a3)
.L0d96dcc0:
    move	$a4,$a6
    b	.L0d96dc54
    # Line 466
    sw	$a6,-32608($a3)
.end crmPickPolyStippleMode

# Function: MakeCurrentStencil
# Declared: Line 480 (Source lines: 482-489)
# Address: 0x0d96dcd0 - 0x0d96dd4c (Size: 124 bytes, Frame: 32)
.globl MakeCurrentStencil
.ent MakeCurrentStencil
MakeCurrentStencil:
    # Line 482
    lui	$at,0xe
    addiu	$sp,$sp,-32
    addiu	$at,$at,12476
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 483
    # lw $t9, -26716($gp) # &__glMakeCurrentBuffer
    # Line 482
    sd	$s8,16($sp)
    move	$s8,$a2
    sd	$s0,0($sp)
    # Line 483
    nop
    # Line 482
    sd	$ra,8($sp)
    # Line 483
    jal	__glMakeCurrentBuffer
    # Line 482
    move	$s0,$a0
    # Line 485
    lw	$v0,4($s0)
    # Line 486
    li	$ra,1
    # Line 485
    bnez	$v0,.L0d96dd18
    lw	$v1,8($s0)
    beqz	$v1,.L0d96dd44
.L0d96dd18:
    # Line 488
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-9184
    move	$a0,$s8
    bal __glCrmUpdatePolyStipple
    move	$a1,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s8,16($sp)
    # Line 489
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96dd44:
    # Line 486
    b	.L0d96dd18
    sw	$ra,20($s0)
.end MakeCurrentStencil

# Function: ResizeStencil
# Declared: Line 492 (Source lines: 494-515)
# Address: 0x0d96dd50 - 0x0d96ddf4 (Size: 164 bytes, Frame: 0)
.ent ResizeStencil
ResizeStencil:
    # Line 500
    lw	$at,4($a0)
    lw	$v0,8($a0)
    # Line 503
    lui	$a5,0x1
    # Line 500
    bne	$at,$a1,.L0d96dd6c
    # Line 494
    lw	$a4,0($a0)
    # Line 500
    beq	$v0,$a2,.L0d96ddd4
    # Line 503
    addu	$a5,$a4,$a5
.L0d96dd6c:
    # Line 500
    li	$a7,1
    lw	$a6,20($a0)
    lui	$a5,0x1
    beq	$a6,$a7,.L0d96dddc
    addu	$a5,$a4,$a5
.L0d96dd80:
    # Line 508
    sw	$a1,28($a0)
.L0d96dd84:
    # Line 507
    sw	$a2,8($a0)
    # Line 506
    sw	$a1,4($a0)
    # Line 510
    lw	$t0,-32608($a5)
    andi	$t0,$t0,0x4
    beqz	$t0,.L0d96ddcc
    li	$a0,2
    lw	$t1,1792($a4)
    andi	$t1,$t1,0x2000
    beqz	$t1,.L0d96ddcc
    nop
    lw	$t2,4120($zero)
    beq	$t2,$a0,.L0d96ddcc
    nop
    # Line 513
    sw	$a0,4120($zero)
    lw	$t3,11756($a4)
    ori	$t3,$t3,0x4
    # Line 515
    jr	$ra
    # Line 513
    sw	$t3,11756($a4)
.L0d96ddcc:
    # Line 515
    jr	$ra
    nop
.L0d96ddd4:
    b	.L0d96dd84
    # Line 508
    sw	$a1,28($a0)
.L0d96dddc:
    # Line 500
    lw	$a6,-32608($a5)
    andi	$a7,$a6,0x2
    beqz	$a7,.L0d96dd80
    # Line 503
    ori	$t0,$a6,0x4
    b	.L0d96dd80
    sw	$t0,-32608($a5)
.end ResizeStencil

# Function: __glCrmInitStencil
# Declared: Line 518 (Source lines: 519-553)
# Address: 0x0d96de00 - 0x0d96ded8 (Size: 216 bytes, Frame: 32)
.globl __glCrmInitStencil
.ent __glCrmInitStencil
__glCrmInitStencil:
    # Line 519
    lui	$at,0xe
    addiu	$sp,$sp,-32
    addiu	$at,$at,12172
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 520
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 519
    sd	$s8,8($sp)
    move	$s8,$a0
    move	$a0,$a1
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 520
    jal	__glInitBuffer
    move	$a1,$s8
    # Line 534
    la	$t0,__glNop
    # Line 537
    la	$a7,MakeCurrentStencil
    # Line 549
    la	$a6,sub_0d970000
    # Line 547
    la	$a5,sub_0d970000
    # Line 546
    la	$a4,sub_0d970000
    # Line 545
    la	$a3,sub_0d970000
    # Line 544
    la	$a2,sub_0d970000
    # Line 534
    la	$a0,sub_0d970000
    # Line 553
    ld	$gp,16($sp)
    # Line 534
    ld	$v1,24($sp)
    lw	$a1,3248($s8)
    sw	$a1,12($v1)
    # Line 535
    lw	$v0,3244($s8)
    # Line 552
    sw	$t0,112($v1)
    # Line 551
    sw	$t0,108($v1)
    # Line 550
    sw	$t0,104($v1)
    # Line 542
    sw	$zero,20($v1)
    # Line 541
    sw	$zero,16($v1)
    # Line 540
    sw	$zero,64($v1)
    # Line 537
    sw	$a7,44($v1)
    # Line 549
    addiu	$a6,$a6,-9888
    sw	$a6,100($v1)
    # Line 547
    addiu	$a5,$a5,-10192
    sw	$a5,96($v1)
    # Line 546
    addiu	$a4,$a4,-10176
    sw	$a4,92($v1)
    # Line 545
    addiu	$a3,$a3,-9872
    sw	$a3,116($v1)
    # Line 544
    addiu	$a2,$a2,-10208
    sw	$a2,88($v1)
    # Line 534
    addiu	$a0,$a0,-8880
    # Line 539
    sw	$a0,56($v1)
    ld	$ra,0($sp)
    # Line 535
    addu	$v0,$v0,$a1
    # Line 538
    sw	$a0,52($v1)
    # Line 535
    addiu	$v0,$v0,7
    # Line 553
    ld	$s8,8($sp)
    # Line 535
    sra	$v0,$v0,0x3
    # Line 553
    addiu	$sp,$sp,32
    jr	$ra
    # Line 535
    sw	$v0,24($v1)
.end __glCrmInitStencil

