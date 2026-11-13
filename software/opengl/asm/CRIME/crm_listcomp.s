# Source: ../CRIME/crm_listcomp.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_listcomp.c
# Total Functions: 17

.text

# Function: crmlcCheckTexImageArgs
# Declared: Line 51 (Source lines: 54-126)
# Address: 0x0d950220 - 0x0d950514 (Size: 756 bytes, Frame: 16)
.ent crmlcCheckTexImageArgs
crmlcCheckTexImageArgs:
    # Line 54
    addiu	$sp,$sp,-16
    # Line 57
    bltz	$a3,.L0d9503f8
    sd	$ra,0($sp)
    slti	$at,$a3,2
    beqz	$at,.L0d9503fc
    # Line 58
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 61
    bltz	$a1,.L0d9504b8
    # Line 62
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 61
    bltz	$a2,.L0d9504b4
    # Line 65
    slti	$v0,$a4,6407
    bnez	$v0,.L0d950288
    slti	$a1,$a4,6404
    slti	$v0,$a4,6408
    bnez	$v0,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    # Line 65
    slti	$v0,$a4,6410
    bnez	$v0,.L0d950410
    slti	$t9,$a4,6409
    slti	$v1,$a4,6411
    bnez	$v1,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    # Line 65
    li	$a1,0x8000
    beq	$a4,$a1,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    b	.L0d950430
    # Line 81
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d950288:
    # Line 65
    bnez	$a1,.L0d9502b8
    slti	$a6,$a4,6403
    slti	$a2,$a4,6405
    bnez	$a2,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    # Line 65
    slti	$a3,$a4,6406
    bnez	$a3,.L0d9504a4
    li	$a6,6405
    bnez	$v0,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    b	.L0d950430
    # Line 81
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9502b8:
    # Line 65
    bnez	$a6,.L0d950364
    li	$v0,6400
    beqz	$a1,.L0d950430
    # Line 81
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9502c8:
    # Line 84
    slti	$a7,$a5,5126
.L0d9502cc:
    bnez	$a7,.L0d950324
    slti	$t8,$a5,5123
    slti	$t0,$a5,5127
    bnez	$t0,.L0d95034c
    li	$v0,0x8034
    slt	$t1,$a5,$v0
    beqz	$t1,.L0d950388
    slt	$a3,$v0,$a5
    li	$v0,0x8032
    slt	$t2,$a5,$v0
    beqz	$t2,.L0d95046c
    slt	$a1,$v0,$a5
    li	$t3,6656
    beq	$a5,$t3,.L0d9504ec
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d950308:
    jal	__gllc_InvalidEnum
    nop
    ld	$ra,0($sp)
    # Line 123
    li	$v0,1
    # Line 82
    jr	$ra
    addiu	$sp,$sp,16
.L0d950320:
    # Line 84
    slti	$t8,$a5,5123
.L0d950324:
    bnez	$t8,.L0d9503d4
    slti	$t2,$a5,5121
    slti	$t9,$a5,5124
    bnez	$t9,.L0d95034c
    slti	$ra,$a5,5125
    bnez	$ra,.L0d950494
    li	$a3,5124
    slti	$at,$a5,5126
    beqz	$at,.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d95034c:
    ld	$ra,0($sp)
.L0d950350:
    # Line 126
    move	$v0,$zero
    # Line 82
    jr	$ra
    addiu	$sp,$sp,16
.L0d95035c:
    jr	$ra
    addiu	$sp,$sp,16
.L0d950364:
    # Line 65
    bne	$a4,$v0,.L0d95042c
    # Line 84
    slti	$v1,$a5,5126
    bnez	$v1,.L0d950320
    slti	$a1,$a5,5127
    bnez	$a1,.L0d95034c
    li	$v0,0x8034
    slt	$a2,$a5,$v0
    bnez	$a2,.L0d950458
    slt	$a3,$v0,$a5
.L0d950388:
    beqz	$a3,.L0d9503b0
    # Line 112
    li	$t0,6408
    # Line 84
    li	$v0,0x8036
    slt	$a6,$a5,$v0
    bnez	$a6,.L0d9504cc
    li	$a7,0x8035
    slt	$a7,$v0,$a5
    bnez	$a7,.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 112
    li	$t0,6408
.L0d9503b0:
    beq	$a4,$t0,.L0d95034c
    li	$t1,0x8000
    beq	$a4,$t1,.L0d95034c
    # Line 117
    nop	# was lw $t9, -31072($gp) # &__gllc_InvalidOperation
    jal	__gllc_InvalidOperation
    nop
    ld	$ra,0($sp)
    # Line 118
    b	.L0d95035c
    li	$v0,1
.L0d9503d4:
    # Line 84
    bnez	$t2,.L0d950448
    li	$at,5120
    slti	$t3,$a5,5122
    bnez	$t3,.L0d95034c
    li	$t8,5122
    beq	$a5,$t8,.L0d950350
    ld	$ra,0($sp)
    b	.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9503f8:
    # Line 58
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9503fc:
    jal	__gllc_InvalidValue
    nop
    ld	$ra,0($sp)
    # Line 59
    b	.L0d95035c
    li	$v0,1
.L0d950410:
    # Line 65
    bnez	$t9,.L0d950428
    li	$ra,6408
    bnez	$v0,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    b	.L0d950430
    # Line 81
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d950428:
    # Line 65
    beq	$a4,$ra,.L0d9502c8
.L0d95042c:
    # Line 81
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d950430:
    jal	__gllc_InvalidEnum
    nop
    ld	$ra,0($sp)
    # Line 82
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d950448:
    # Line 84
    beq	$a5,$at,.L0d950350
    ld	$ra,0($sp)
    b	.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d950458:
    # Line 84
    li	$v0,0x8032
    slt	$v1,$a5,$v0
    bnez	$v1,.L0d950504
    li	$t1,6656
    slt	$a1,$v0,$a5
.L0d95046c:
    # Line 100
    li	$a2,6407
    # Line 84
    bnez	$a1,.L0d9504dc
    li	$t0,0x8033
    # Line 100
    beq	$a4,$a2,.L0d95034c
    # Line 104
    nop	# was lw $t9, -31072($gp) # &__gllc_InvalidOperation
    jal	__gllc_InvalidOperation
    nop
    ld	$ra,0($sp)
    # Line 105
    b	.L0d95035c
    li	$v0,1
.L0d950494:
    # Line 84
    beq	$a5,$a3,.L0d950350
    ld	$ra,0($sp)
    b	.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9504a4:
    # Line 65
    beq	$a4,$a6,.L0d9502cc
    # Line 84
    slti	$a7,$a5,5126
    b	.L0d950430
    # Line 81
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9504b4:
    # Line 62
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9504b8:
    jal	__gllc_InvalidValue
    nop
    ld	$ra,0($sp)
    # Line 63
    b	.L0d95035c
    li	$v0,1
.L0d9504cc:
    # Line 84
    beq	$a5,$a7,.L0d9503b0
    # Line 112
    li	$t0,6408
    b	.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9504dc:
    # Line 84
    beq	$a5,$t0,.L0d9503b0
    # Line 112
    li	$t0,6408
    b	.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9504ec:
    # Line 87
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    nop
    ld	$ra,0($sp)
    # Line 88
    b	.L0d95035c
    li	$v0,1
.L0d950504:
    # Line 84
    bne	$a5,$t1,.L0d950308
    # Line 122
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d950350
    ld	$ra,0($sp)
.end crmlcCheckTexImageArgs

# Function: __glcrmle_TexImage1D
# Declared: Line 142 (Source lines: 143-152)
# Address: 0x0d950520 - 0x0d95059c (Size: 124 bytes, Frame: 48)
.globl __glcrmle_TexImage1D
.ent __glcrmle_TexImage1D
__glcrmle_TexImage1D:
    # Line 143
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 148
    lw	$a0,4112($zero)
    # Line 143
    sd	$ra,16($sp)
    # Line 148
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    # Line 143
    lui	$v0,0x10
    # Line 148
    lw	$a3,8($s8)
    # Line 143
    addiu	$v0,$v0,2156
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 148
    # lw $t9, -31256($gp) # &__glcrmlei_TexImage1D
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    addiu	$at,$s8,32
    jal	__glcrmlei_TexImage1D
    sw	$at,4($sp)
    # Line 152
    lw	$v0,28($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,32
.end __glcrmle_TexImage1D

# Function: __glcrmlc_TexImage1D
# Declared: Line 155 (Source lines: 159-201)
# Address: 0x0d9505a0 - 0x0d950740 (Size: 416 bytes, Frame: 240)
.globl __glcrmlc_TexImage1D
.ent __glcrmlc_TexImage1D
__glcrmlc_TexImage1D:
    # Line 159
    addiu	$sp,$sp,-112
    sd	$s0,80($sp)
    move	$v0,$a3
    # Line 163
    lw	$s0,4112($zero)
    # Line 159
    sd	$s1,72($sp)
    # Line 163
    li	$at,0x8063
    # Line 159
    lui	$v1,0x10
    move	$s1,$a0
    sd	$ra,96($sp)
    addiu	$v1,$v1,2028
    sd	$gp,88($sp)
    # Line 163
    beq	$a0,$at,.L0d9506f8
    # Line 159
    addu	$gp,$t9,$v1
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    sd	$a7,16($sp)
    sd	$a4,64($sp)
    sd	$a5,56($sp)
    # Line 168
    li	$a0,3552
    sd	$a6,48($sp)
    beq	$s1,$a0,.L0d95061c
    sd	$a3,40($sp)
    # Line 171
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    ld	$ra,96($sp)
.L0d950608:
    # Line 201
    ld	$gp,88($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d95061c:
    # Line 174
    # lw $t9, -32740($gp) # &sub_0d950000
    ld	$a1,40($sp)
    ld	$a5,48($sp)
    addiu	$t9,$t9,544
    move	$a0,$s0
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    bal __glCrmStoreStippledLine
    li	$a2,1
    bnez	$v0,.L0d950608
    ld	$ra,96($sp)
    # Line 178
    # lw $t9, -25856($gp) # &__glImageSize
    ld	$a0,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 181
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 179
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 181
    move	$a0,$s0
    # Line 179
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 181
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    beqz	$v0,.L0d950608
    ld	$ra,96($sp)
    # Line 193
    ld	$a4,0($sp)
    sd	$v0,8($sp)
    # Line 186
    sw	$s1,16($v0)
    # Line 183
    li	$a3,10000
    sh	$a3,12($v0)
    # Line 193
    sw	$a4,44($v0)
    # Line 187
    ld	$a5,32($sp)
    # Line 188
    ld	$a6,24($sp)
    # Line 189
    ld	$a7,40($sp)
    # Line 190
    ld	$t0,64($sp)
    # Line 191
    ld	$t1,56($sp)
    # Line 192
    ld	$t2,48($sp)
    sw	$t2,40($v0)
    # Line 191
    sw	$t1,36($v0)
    # Line 190
    sw	$t0,32($v0)
    # Line 189
    sw	$a7,28($v0)
    # Line 188
    sw	$a6,24($v0)
    # Line 195
    blez	$a4,.L0d9506dc
    # Line 187
    sw	$a5,20($v0)
    # Line 195
    ld	$t3,16($sp)
    bnez	$t3,.L0d950710
.L0d9506dc:
    # Line 200
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9506e0:
    ld	$a1,8($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_TexImage1D
    b	.L0d950608
    ld	$ra,96($sp)
.L0d9506f8:
    # Line 166
    lw	$t9,6072($s0)
    lw	$t9,176($t9)
    jalr	$t9
    nop
    b	.L0d950608
    ld	$ra,96($sp)
.L0d950710:
    # Line 196
    ld	$a1,40($sp)
    ld	$a5,16($sp)
    # lw $t9, -25844($gp) # &__glFillImage
    ld	$a6,8($sp)
    move	$a0,$s0
    ld	$a4,48($sp)
    li	$a2,1
    ld	$a3,56($sp)
    jal	__glFillImage
    addiu	$a6,$a6,48
    b	.L0d9506e0
    # Line 200
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.end __glcrmlc_TexImage1D

# Function: __glcrmle_TexImage2D
# Declared: Line 217 (Source lines: 218-228)
# Address: 0x0d950740 - 0x0d9507c4 (Size: 132 bytes, Frame: 48)
.globl __glcrmle_TexImage2D
.ent __glcrmle_TexImage2D
__glcrmle_TexImage2D:
    # Line 218
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 223
    lw	$a0,4112($zero)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    # Line 218
    lui	$v1,0x10
    # Line 223
    lw	$a1,0($s8)
    # Line 218
    addiu	$v1,$v1,1612
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 223
    # lw $t9, -31248($gp) # &__glcrmlei_TexImage2D
    lw	$at,28($s8)
    addiu	$v0,$s8,36
    sw	$v0,12($sp)
    jal	__glcrmlei_TexImage2D
    sw	$at,4($sp)
    # Line 228
    lw	$v0,32($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,36
.end __glcrmle_TexImage2D

# Function: __glcrmlc_TexImage2D
# Declared: Line 231 (Source lines: 236-279)
# Address: 0x0d9507d0 - 0x0d95096c (Size: 412 bytes, Frame: 192)
.globl __glcrmlc_TexImage2D
.ent __glcrmlc_TexImage2D
__glcrmlc_TexImage2D:
    # Line 236
    addiu	$sp,$sp,-192
    sd	$s0,88($sp)
    move	$v0,$a4
    # Line 240
    lw	$s0,4112($zero)
    # Line 236
    sd	$s1,96($sp)
    # Line 240
    li	$at,0x8064
    # Line 236
    lui	$v1,0x10
    move	$s1,$a0
    sd	$ra,112($sp)
    addiu	$v1,$v1,1468
    sd	$gp,104($sp)
    # Line 240
    beq	$a0,$at,.L0d95094c
    # Line 236
    addu	$gp,$t9,$v1
    sd	$a1,80($sp)
    sd	$a2,72($sp)
    sd	$a5,64($sp)
    sd	$a6,48($sp)
    sd	$a7,56($sp)
    # Line 245
    li	$a0,3553
    sd	$a3,32($sp)
    beq	$s1,$a0,.L0d95084c
    sd	$a4,40($sp)
    # Line 248
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
.L0d950834:
    ld	$ra,112($sp)
.L0d950838:
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    # Line 279
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d95084c:
    # Line 251
    ld	$a1,32($sp)
    # lw $t9, -32740($gp) # &sub_0d950000
    ld	$a2,40($sp)
    ld	$a3,64($sp)
    addiu	$t9,$t9,544
    ld	$a4,48($sp)
    move	$a0,$s0
    bal __glCrmStoreStippledLine
    ld	$a5,56($sp)
    bnez	$v0,.L0d950838
    ld	$ra,112($sp)
    # Line 255
    ld	$a0,32($sp)
    # lw $t9, -25856($gp) # &__glImageSize
    ld	$a1,40($sp)
    ld	$a2,48($sp)
    jal	__glImageSize
    ld	$a3,56($sp)
    # Line 258
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 256
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 258
    move	$a0,$s0
    # Line 256
    and	$a1,$a1,$a2
    sd	$a1,16($sp)
    # Line 258
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,36
    ld	$a7,48($sp)
    ld	$a4,56($sp)
    ld	$t2,32($sp)
    beqz	$v0,.L0d950834
    ld	$t3,40($sp)
    sd	$v0,24($sp)
    # Line 270
    sw	$a4,44($v0)
    # Line 269
    sw	$a7,40($v0)
    # Line 267
    sw	$t3,32($v0)
    # Line 266
    sw	$t2,28($v0)
    # Line 263
    sw	$s1,16($v0)
    # Line 260
    li	$a3,10001
    sh	$a3,12($v0)
    # Line 264
    ld	$a6,80($sp)
    # Line 265
    ld	$t0,72($sp)
    # Line 268
    ld	$t1,64($sp)
    # Line 271
    ld	$a5,16($sp)
    sw	$a5,48($v0)
    # Line 268
    sw	$t1,36($v0)
    # Line 265
    sw	$t0,24($v0)
    # Line 273
    blez	$a5,.L0d950930
    # Line 264
    sw	$a6,20($v0)
    # Line 273
    lw	$a5,196($sp)
    beqz	$a5,.L0d950930
    # Line 274
    nop	# was lw $t9, -25844($gp) # &__glFillImage
    move	$a0,$s0
    move	$a1,$t2
    ld	$a6,24($sp)
    move	$a2,$t3
    move	$a3,$a7
    jal	__glFillImage
    addiu	$a6,$a6,52
.L0d950930:
    # Line 278
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_TexImage2D
    b	.L0d950838
    ld	$ra,112($sp)
.L0d95094c:
    # Line 243
    lw	$ra,196($sp)
    sw	$ra,4($sp)
    lw	$t9,6072($s0)
    lw	$t9,180($t9)
    jalr	$t9
    nop
    b	.L0d950838
    ld	$ra,112($sp)
.end __glcrmlc_TexImage2D

# Function: __glcrmle_TexSubImage1DEXT
# Declared: Line 293 (Source lines: 294-303)
# Address: 0x0d950970 - 0x0d9509e4 (Size: 116 bytes, Frame: 32)
.globl __glcrmle_TexSubImage1DEXT
.ent __glcrmle_TexSubImage1DEXT
__glcrmle_TexSubImage1DEXT:
    # Line 294
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 299
    lw	$a0,4112($zero)
    # Line 294
    sd	$ra,0($sp)
    # Line 299
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    # Line 294
    lui	$at,0x10
    # Line 299
    lw	$a4,12($s8)
    # Line 294
    addiu	$at,$at,1052
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 299
    # lw $t9, -31240($gp) # &__glcrmlei_TexSubImage1DEXT
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    addiu	$a7,$s8,28
    jal	__glcrmlei_TexSubImage1DEXT
    lw	$a1,0($s8)
    # Line 303
    lw	$v0,24($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,16($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,28
.end __glcrmle_TexSubImage1DEXT

# Function: __glcrmlc_TexSubImage1DEXT
# Declared: Line 306 (Source lines: 310-346)
# Address: 0x0d9509f0 - 0x0d950b4c (Size: 348 bytes, Frame: 224)
.globl __glcrmlc_TexSubImage1DEXT
.ent __glcrmlc_TexSubImage1DEXT
__glcrmlc_TexSubImage1DEXT:
    # Line 310
    addiu	$sp,$sp,-96
    sd	$a6,16($sp)
    sd	$a5,64($sp)
    sd	$a4,56($sp)
    sd	$a3,48($sp)
    sd	$a2,40($sp)
    sd	$a1,32($sp)
    sd	$a0,24($sp)
    sd	$s0,72($sp)
    # Line 314
    lw	$s0,4112($zero)
    li	$at,3552
    # Line 310
    lui	$v0,0x10
    sd	$ra,88($sp)
    addiu	$v0,$v0,924
    sd	$gp,80($sp)
    # Line 314
    beq	$a0,$at,.L0d950a54
    # Line 310
    addu	$gp,$t9,$v0
    # Line 317
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    ld	$ra,88($sp)
.L0d950a44:
    ld	$s0,72($sp)
    # Line 346
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d950a54:
    # Line 320
    # lw $t9, -32740($gp) # &sub_0d950000
    ld	$a1,48($sp)
    addiu	$t9,$t9,544
    move	$a0,$s0
    ld	$a5,64($sp)
    move	$a3,$zero
    ld	$a4,56($sp)
    bal __glCrmStoreStippledLine
    li	$a2,1
    bnez	$v0,.L0d950a44
    ld	$ra,88($sp)
    # Line 324
    # lw $t9, -25856($gp) # &__glImageSize
    ld	$a0,48($sp)
    ld	$a3,64($sp)
    ld	$a2,56($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 327
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 325
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 327
    move	$a0,$s0
    # Line 325
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 327
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,28
    beqz	$v0,.L0d950a44
    ld	$ra,88($sp)
    sd	$v0,8($sp)
    # Line 329
    li	$a3,10002
    sh	$a3,12($v0)
    # Line 332
    ld	$a5,24($sp)
    # Line 333
    ld	$a6,32($sp)
    # Line 334
    ld	$a7,40($sp)
    # Line 335
    ld	$t0,48($sp)
    # Line 336
    ld	$t1,56($sp)
    # Line 337
    ld	$t2,64($sp)
    # Line 338
    ld	$a4,0($sp)
    sw	$a4,40($v0)
    # Line 337
    sw	$t2,36($v0)
    # Line 336
    sw	$t1,32($v0)
    # Line 335
    sw	$t0,28($v0)
    # Line 334
    sw	$a7,24($v0)
    # Line 333
    sw	$a6,20($v0)
    # Line 338
    blez	$a4,.L0d950b30
    # Line 332
    sw	$a5,16($v0)
    # Line 341
    ld	$a1,48($sp)
    ld	$a5,16($sp)
    # lw $t9, -25844($gp) # &__glFillImage
    ld	$a6,8($sp)
    move	$a0,$s0
    ld	$a4,64($sp)
    li	$a2,1
    ld	$a3,56($sp)
    jal	__glFillImage
    addiu	$a6,$a6,44
.L0d950b30:
    # Line 345
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_TexSubImage1DEXT
    b	.L0d950a44
    ld	$ra,88($sp)
.end __glcrmlc_TexSubImage1DEXT

# Function: __glcrmle_TexSubImage2DEXT
# Declared: Line 362 (Source lines: 363-373)
# Address: 0x0d950b50 - 0x0d950bd4 (Size: 132 bytes, Frame: 48)
.globl __glcrmle_TexSubImage2DEXT
.ent __glcrmle_TexSubImage2DEXT
__glcrmle_TexSubImage2DEXT:
    # Line 363
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 368
    lw	$a0,4112($zero)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    # Line 363
    lui	$v1,0x10
    # Line 368
    lw	$a1,0($s8)
    # Line 363
    addiu	$v1,$v1,572
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 368
    # lw $t9, -31232($gp) # &__glcrmlei_TexSubImage2DEXT
    lw	$at,28($s8)
    addiu	$v0,$s8,36
    sw	$v0,12($sp)
    jal	__glcrmlei_TexSubImage2DEXT
    sw	$at,4($sp)
    # Line 373
    lw	$v0,32($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,36
.end __glcrmle_TexSubImage2DEXT

# Function: __glcrmlc_TexSubImage2DEXT
# Declared: Line 376 (Source lines: 381-419)
# Address: 0x0d950be0 - 0x0d950d4c (Size: 364 bytes, Frame: 176)
.globl __glcrmlc_TexSubImage2DEXT
.ent __glcrmlc_TexSubImage2DEXT
__glcrmlc_TexSubImage2DEXT:
    # Line 381
    addiu	$sp,$sp,-176
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$a4,48($sp)
    sd	$a3,32($sp)
    sd	$a2,24($sp)
    sd	$a1,40($sp)
    sd	$a0,16($sp)
    sd	$s0,80($sp)
    # Line 385
    lw	$s0,4112($zero)
    li	$at,3553
    # Line 381
    lui	$v0,0x10
    sd	$ra,96($sp)
    addiu	$v0,$v0,428
    sd	$gp,88($sp)
    # Line 385
    beq	$a0,$at,.L0d950c48
    # Line 381
    addu	$gp,$t9,$v0
    # Line 388
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
.L0d950c34:
    ld	$ra,96($sp)
.L0d950c38:
    ld	$s0,80($sp)
    # Line 419
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d950c48:
    # Line 391
    # lw $t9, -32740($gp) # &sub_0d950000
    ld	$a1,48($sp)
    ld	$a2,56($sp)
    addiu	$t9,$t9,544
    move	$a0,$s0
    ld	$a4,64($sp)
    move	$a3,$zero
    bal __glCrmStoreStippledLine
    ld	$a5,72($sp)
    bnez	$v0,.L0d950c34
    # Line 395
    ld	$a0,48($sp)
    # lw $t9, -25856($gp) # &__glImageSize
    ld	$a1,56($sp)
    ld	$a2,64($sp)
    jal	__glImageSize
    ld	$a3,72($sp)
    # Line 398
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 396
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 398
    move	$a0,$s0
    # Line 396
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 398
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,36
    beqz	$v0,.L0d950c38
    ld	$ra,96($sp)
    sd	$v0,8($sp)
    # Line 400
    li	$a3,10003
    sh	$a3,12($v0)
    # Line 403
    ld	$a5,16($sp)
    # Line 404
    ld	$a6,40($sp)
    # Line 405
    ld	$a7,24($sp)
    # Line 406
    ld	$t0,32($sp)
    # Line 407
    ld	$t1,48($sp)
    # Line 408
    ld	$t2,56($sp)
    # Line 409
    ld	$t3,64($sp)
    # Line 410
    ld	$t8,72($sp)
    # Line 411
    ld	$a4,0($sp)
    sw	$a4,48($v0)
    # Line 410
    sw	$t8,44($v0)
    # Line 409
    sw	$t3,40($v0)
    # Line 408
    sw	$t2,36($v0)
    # Line 407
    sw	$t1,32($v0)
    # Line 406
    sw	$t0,28($v0)
    # Line 405
    sw	$a7,24($v0)
    # Line 404
    sw	$a6,20($v0)
    # Line 411
    blez	$a4,.L0d950d30
    # Line 403
    sw	$a5,16($v0)
    # Line 414
    ld	$a1,48($sp)
    ld	$a2,56($sp)
    ld	$a3,64($sp)
    # lw $t9, -25844($gp) # &__glFillImage
    ld	$a6,8($sp)
    move	$a0,$s0
    ld	$a4,72($sp)
    lw	$a5,180($sp)
    jal	__glFillImage
    addiu	$a6,$a6,52
.L0d950d30:
    # Line 418
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_TexSubImage2DEXT
    b	.L0d950c38
    ld	$ra,96($sp)
.end __glcrmlc_TexSubImage2DEXT

# Function: __glcrmlc_Vertex3f
# Declared: Line 466 (Source lines: 467-485)
# Address: 0x0d950d50 - 0x0d950e10 (Size: 192 bytes, Frame: 48)
.globl __glcrmlc_Vertex3f
.ent __glcrmlc_Vertex3f
__glcrmlc_Vertex3f:
    # Line 467
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    lui	$at,0x10
    sd	$s0,40($sp)
    addiu	$at,$at,60
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 472
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 470
    lw	$s0,4112($zero)
    # Line 472
    li	$a1,12
    # Line 467
    sdc1	$f12,0($sp)
    sd	$ra,32($sp)
    # Line 472
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d950de4
    # Line 485
    ld	$ra,32($sp)
    # Line 474
    li	$a0,10004
    sh	$a0,12($v0)
    # Line 477
    ldc1	$f1,8($sp)
    # Line 476
    ldc1	$f2,0($sp)
    # Line 478
    ldc1	$f0,16($sp)
    # Line 476
    swc1	$f2,16($v0)
    # Line 478
    swc1	$f0,24($v0)
    # Line 477
    swc1	$f1,20($v0)
    # Line 479
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x1
    beq	$a0,$a1,.L0d950df4
    sw	$v1,4996($s0)
    # Line 481
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_Vertex3fv
    # Line 485
    ld	$ra,32($sp)
.L0d950de4:
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d950df4:
    # Line 483
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_Vertex3fv
    b	.L0d950de4
    # Line 485
    ld	$ra,32($sp)
.end __glcrmlc_Vertex3f

# Function: __glcrmlc_Vertex3fv
# Declared: Line 487 (Source lines: 488-506)
# Address: 0x0d950e10 - 0x0d950ec8 (Size: 184 bytes, Frame: 32)
.globl __glcrmlc_Vertex3fv
.ent __glcrmlc_Vertex3fv
__glcrmlc_Vertex3fv:
    # Line 488
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,-132
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 493
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 491
    lw	$s0,4112($zero)
    # Line 493
    li	$a1,12
    # Line 488
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 493
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d950e98
    # Line 497
    ld	$a0,0($sp)
    # Line 495
    li	$a1,10004
    sh	$a1,12($v0)
    # Line 497
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 498
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 499
    lwc1	$f0,8($a0)
    swc1	$f0,24($v0)
    # Line 500
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x1
    beq	$a0,$a1,.L0d950eac
    sw	$v1,4996($s0)
    # Line 502
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_Vertex3fv
.L0d950e98:
    # Line 506
    ld	$ra,16($sp)
.L0d950e9c:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d950eac:
    # Line 504
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_Vertex3fv
    b	.L0d950e9c
    # Line 506
    ld	$ra,16($sp)
.end __glcrmlc_Vertex3fv

# Function: __glcrmlc_Color3f
# Declared: Line 508 (Source lines: 509-527)
# Address: 0x0d950ed0 - 0x0d950f8c (Size: 188 bytes, Frame: 48)
.globl __glcrmlc_Color3f
.ent __glcrmlc_Color3f
__glcrmlc_Color3f:
    # Line 509
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    lui	$at,0x10
    sd	$s0,40($sp)
    addiu	$at,$at,-324
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 514
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 512
    lw	$s0,4112($zero)
    # Line 514
    li	$a1,12
    # Line 509
    sdc1	$f12,0($sp)
    sd	$ra,32($sp)
    # Line 514
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d950f5c
    # Line 516
    li	$a0,10005
    sh	$a0,12($v0)
    # Line 519
    ldc1	$f1,8($sp)
    # Line 518
    ldc1	$f2,0($sp)
    # Line 520
    ldc1	$f0,16($sp)
    # Line 518
    swc1	$f2,16($v0)
    # Line 520
    swc1	$f0,24($v0)
    # Line 519
    swc1	$f1,20($v0)
    # Line 521
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x4
    beq	$a0,$a1,.L0d950f70
    sw	$v1,4996($s0)
    # Line 523
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_Color3fv
.L0d950f5c:
    # Line 527
    ld	$ra,32($sp)
.L0d950f60:
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d950f70:
    # Line 525
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_Color3fv
    b	.L0d950f60
    # Line 527
    ld	$ra,32($sp)
.end __glcrmlc_Color3f

# Function: __glcrmlc_Color3fv
# Declared: Line 529 (Source lines: 530-548)
# Address: 0x0d950f90 - 0x0d95104c (Size: 188 bytes, Frame: 32)
.globl __glcrmlc_Color3fv
.ent __glcrmlc_Color3fv
__glcrmlc_Color3fv:
    # Line 530
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,-516
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 535
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 533
    lw	$s0,4112($zero)
    # Line 535
    li	$a1,12
    # Line 530
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 535
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d951020
    # Line 548
    ld	$ra,16($sp)
    # Line 539
    ld	$a0,0($sp)
    # Line 537
    li	$a1,10005
    sh	$a1,12($v0)
    # Line 539
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 540
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 541
    lwc1	$f0,8($a0)
    swc1	$f0,24($v0)
    # Line 542
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x4
    beq	$a0,$a1,.L0d951030
    sw	$v1,4996($s0)
    # Line 544
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_Color3fv
    # Line 548
    ld	$ra,16($sp)
.L0d951020:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d951030:
    # Line 546
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_Color3fv
    b	.L0d951020
    # Line 548
    ld	$ra,16($sp)
.end __glcrmlc_Color3fv

# Function: __glcrmlc_Normal3f
# Declared: Line 551 (Source lines: 552-570)
# Address: 0x0d951050 - 0x0d951110 (Size: 192 bytes, Frame: 48)
.globl __glcrmlc_Normal3f
.ent __glcrmlc_Normal3f
__glcrmlc_Normal3f:
    # Line 552
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    lui	$at,0x10
    sd	$s0,40($sp)
    addiu	$at,$at,-708
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 557
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 555
    lw	$s0,4112($zero)
    # Line 557
    li	$a1,12
    # Line 552
    sdc1	$f12,0($sp)
    sd	$ra,32($sp)
    # Line 557
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d9510e4
    # Line 570
    ld	$ra,32($sp)
    # Line 559
    li	$a0,10006
    sh	$a0,12($v0)
    # Line 562
    ldc1	$f1,8($sp)
    # Line 561
    ldc1	$f2,0($sp)
    # Line 563
    ldc1	$f0,16($sp)
    # Line 561
    swc1	$f2,16($v0)
    # Line 563
    swc1	$f0,24($v0)
    # Line 562
    swc1	$f1,20($v0)
    # Line 564
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x2
    beq	$a0,$a1,.L0d9510f4
    sw	$v1,4996($s0)
    # Line 566
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_Normal3fv
    # Line 570
    ld	$ra,32($sp)
.L0d9510e4:
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9510f4:
    # Line 568
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_Normal3fv
    b	.L0d9510e4
    # Line 570
    ld	$ra,32($sp)
.end __glcrmlc_Normal3f

# Function: __glcrmlc_Normal3fv
# Declared: Line 573 (Source lines: 574-592)
# Address: 0x0d951110 - 0x0d9511c8 (Size: 184 bytes, Frame: 32)
.globl __glcrmlc_Normal3fv
.ent __glcrmlc_Normal3fv
__glcrmlc_Normal3fv:
    # Line 574
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,-900
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 579
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 577
    lw	$s0,4112($zero)
    # Line 579
    li	$a1,12
    # Line 574
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 579
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d951198
    # Line 583
    ld	$a0,0($sp)
    # Line 581
    li	$a1,10006
    sh	$a1,12($v0)
    # Line 583
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 584
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 585
    lwc1	$f0,8($a0)
    swc1	$f0,24($v0)
    # Line 586
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x2
    beq	$a0,$a1,.L0d9511ac
    sw	$v1,4996($s0)
    # Line 588
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_Normal3fv
.L0d951198:
    # Line 592
    ld	$ra,16($sp)
.L0d95119c:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9511ac:
    # Line 590
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_Normal3fv
    b	.L0d95119c
    # Line 592
    ld	$ra,16($sp)
.end __glcrmlc_Normal3fv

# Function: __glcrmlc_TexCoord2f
# Declared: Line 594 (Source lines: 595-612)
# Address: 0x0d9511d0 - 0x0d951284 (Size: 180 bytes, Frame: 48)
.globl __glcrmlc_TexCoord2f
.ent __glcrmlc_TexCoord2f
__glcrmlc_TexCoord2f:
    # Line 595
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    lui	$at,0x10
    sd	$s0,32($sp)
    addiu	$at,$at,-1092
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 600
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 598
    lw	$s0,4112($zero)
    # Line 600
    li	$a1,8
    # Line 595
    sdc1	$f12,0($sp)
    sd	$ra,24($sp)
    # Line 600
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d951258
    # Line 612
    ld	$ra,24($sp)
    # Line 602
    li	$a0,10007
    sh	$a0,12($v0)
    # Line 605
    ldc1	$f0,8($sp)
    # Line 604
    ldc1	$f1,0($sp)
    # Line 605
    swc1	$f0,20($v0)
    # Line 604
    swc1	$f1,16($v0)
    # Line 606
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x8
    beq	$a0,$a1,.L0d951268
    sw	$v1,4996($s0)
    # Line 608
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_TexCoord2fv
    # Line 612
    ld	$ra,24($sp)
.L0d951258:
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d951268:
    # Line 610
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexCoord2fv
    b	.L0d951258
    # Line 612
    ld	$ra,24($sp)
.end __glcrmlc_TexCoord2f

# Function: __glcrmlc_TexCoord2fv
# Declared: Line 615 (Source lines: 616-633)
# Address: 0x0d951290 - 0x0d951344 (Size: 180 bytes, Frame: 32)
.globl __glcrmlc_TexCoord2fv
.ent __glcrmlc_TexCoord2fv
__glcrmlc_TexCoord2fv:
    # Line 616
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,-1284
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 621
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 619
    lw	$s0,4112($zero)
    # Line 621
    li	$a1,8
    # Line 616
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 621
    jal	__glDlistAllocOp2
    move	$a0,$s0
    beqz	$v0,.L0d951318
    # Line 633
    ld	$ra,16($sp)
    # Line 625
    ld	$a0,0($sp)
    # Line 623
    li	$a1,10007
    sh	$a1,12($v0)
    # Line 625
    lwc1	$f1,0($a0)
    swc1	$f1,16($v0)
    # Line 626
    lwc1	$f0,4($a0)
    swc1	$f0,20($v0)
    # Line 627
    lw	$a0,4984($s0)
    li	$a1,4865
    lw	$v1,4996($s0)
    ori	$v1,$v1,0x8
    beq	$a0,$a1,.L0d951328
    sw	$v1,4996($s0)
    # Line 629
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glcrmle_TexCoord2fv
    # Line 633
    ld	$ra,16($sp)
.L0d951318:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d951328:
    # Line 631
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s0
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexCoord2fv
    b	.L0d951318
    # Line 633
    ld	$ra,16($sp)
.end __glcrmlc_TexCoord2fv

