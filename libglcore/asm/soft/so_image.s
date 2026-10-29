# Source: ../soft/so_image.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_image.c
# Total Functions: 6

.text

# Function: __glConvertStipple
# Declared: Line 73 (Source lines: 79-106)
# Address: 0x0d9e2c60 - 0x0d9e2ce0 (Size: 128 bytes, Frame: 0)
.globl __glConvertStipple
.ent __glConvertStipple
__glConvertStipple:
    # Line 80
    li	$a5,32
    move	$a4,$zero
    addiu	$a2,$a0,30008
    # Line 79
    addiu	$a3,$a0,512
.L0d9e2c70:
    # Line 90
    lbu	$t0,2($a3)
    # Line 88
    lbu	$a6,0($a3)
    # Line 92
    sll	$t0,$t0,0x8
    # Line 89
    lbu	$a7,1($a3)
    # Line 92
    sll	$a6,$a6,0x18
    lbu	$a1,3($a3)
    sll	$a7,$a7,0x10
    or	$a1,$a1,$t0
    or	$a6,$a6,$a7
    # Line 91
    addiu	$a3,$a3,8
    # Line 92
    or	$a1,$a1,$a6
    sw	$a1,0($a2)
    # Line 90
    lbu	$a0,-2($a3)
    # Line 88
    lbu	$v0,-4($a3)
    # Line 92
    sll	$a0,$a0,0x8
    # Line 89
    lbu	$v1,-3($a3)
    # Line 92
    addiu	$a2,$a2,8
    sll	$v0,$v0,0x18
    lbu	$at,-1($a3)
    # Line 87
    addiu	$a4,$a4,2
    # Line 92
    sll	$v1,$v1,0x10
    or	$at,$at,$a0
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 87
    bne	$a4,$a5,.L0d9e2c70
    # Line 92
    sw	$at,-4($a2)
    # Line 106
    jr	$ra
    nop
.end __glConvertStipple

# Function: __glImageSize
# Declared: Line 114 (Source lines: 115-125)
# Address: 0x0d9e2ce0 - 0x0d9e2dbc (Size: 220 bytes, Frame: 48)
.globl __glImageSize
.ent __glImageSize
__glImageSize:
    # Line 115
    addiu	$sp,$sp,-48
    lui	$v0,0x7
    sd	$s0,40($sp)
    addiu	$v0,$v0,-8020
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 119
    # lw $t9, -27540($gp) # &__glSpecElementsPerGroup
    # Line 115
    move	$s0,$a3
    sd	$a1,24($sp)
    # Line 119
    move	$a1,$a3
    # Line 115
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,32($sp)
    # Line 119
    jal	__glSpecElementsPerGroup
    move	$a0,$a2
    li	$v1,6656
    # Line 125
    ld	$a2,24($sp)
    # Line 119
    move	$a0,$v0
    # Line 125
    ld	$ra,32($sp)
    # Line 121
    addiu	$a3,$s8,7
    # Line 119
    bne	$s0,$v1,.L0d9e2d64
    # Line 121
    sra	$a3,$a3,0x3
    # Line 125
    mult	$a2,$a3
    mflo	$a1
    nop
    nop
    mult	$v0,$a1
    ld	$gp,16($sp)
    ld	$s0,40($sp)
    mflo	$v0
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9e2d64:
    # Line 123
    # lw $t9, -27536($gp) # &__glSpecBytesPerElement
    sd	$v0,0($sp)
    jal	__glSpecBytesPerElement
    move	$a0,$s0
    mult	$v0,$s8
    # Line 125
    ld	$a6,24($sp)
    # Line 123
    mflo	$a7
    nop
    nop
    # Line 125
    mult	$a6,$a7
    ld	$a4,0($sp)
    mflo	$a5
    nop
    nop
    mult	$a4,$a5
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,40($sp)
    mflo	$v0
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glImageSize

# Function: __glImageSize3D
# Declared: Line 128 (Source lines: 130-131)
# Address: 0x0d9e2dc0 - 0x0d9e2e14 (Size: 84 bytes, Frame: 32)
.globl __glImageSize3D
.ent __glImageSize3D
__glImageSize3D:
    # Line 130
    lui	$v1,0x7
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,-8244
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 131
    # lw $t9, -25856($gp) # &__glImageSize
    # Line 130
    move	$v0,$a4
    move	$at,$a3
    # Line 131
    move	$a3,$a4
    # Line 130
    sd	$s8,8($sp)
    move	$s8,$a2
    sd	$ra,0($sp)
    # Line 131
    bal __glImageSize
    move	$a2,$at
    mult	$v0,$s8
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    mflo	$v0
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glImageSize3D

# Function: __glFillImage3D
# Declared: Line 139 (Source lines: 143-468)
# Address: 0x0d9e2e20 - 0x0d9e3b08 (Size: 3304 bytes, Frame: 240)
.globl __glFillImage3D
.ent __glFillImage3D
__glFillImage3D:
    # Line 160
    lw	$v0,1224($a0)
    # Line 153
    lw	$t2,1196($a0)
    # Line 152
    lw	$t3,1200($a0)
    # Line 151
    lw	$t8,1204($a0)
    # Line 154
    lw	$t0,1208($a0)
    # Line 161
    lw	$t1,1228($a0)
    # Line 143
    addiu	$sp,$sp,-368
    # Line 161
    sd	$t1,152($sp)
    # Line 143
    sd	$s0,208($sp)
    # Line 159
    lbu	$s0,1188($a0)
    # Line 143
    sd	$s1,192($sp)
    # Line 158
    lbu	$s1,1189($a0)
    # Line 154
    sd	$t0,184($sp)
    # Line 143
    sd	$a3,264($sp)
    sd	$s7,144($sp)
    sd	$ra,96($sp)
    sd	$s6,88($sp)
    sd	$s3,80($sp)
    sd	$gp,224($sp)
    sd	$s2,232($sp)
    sd	$s5,200($sp)
    sd	$s4,216($sp)
    sd	$s8,240($sp)
    move	$s8,$a7
    move	$s4,$a5
    # Line 150
    lw	$v1,1212($a0)
    # Line 143
    move	$s5,$a2
    lui	$at,0x7
    # Line 150
    sd	$v1,176($sp)
    # Line 143
    move	$s2,$a1
    addiu	$at,$at,-8340
    # Line 149
    lw	$v1,1192($a0)
    sd	$v1,168($sp)
    # Line 171
    beqz	$a6,.L0d9e2f8c
    # Line 143
    addu	$gp,$t9,$at
    # Line 171
    beqz	$a7,.L0d9e2f8c
    nop
    sd	$a0,136($sp)
    sd	$t8,128($sp)
    # Line 177
    li	$a1,0x8363
    sd	$a6,120($sp)
    sltu	$t9,$a5,$a1
    sd	$t3,112($sp)
    bnez	$t9,.L0d9e2fc0
    sd	$t2,104($sp)
    sltu	$ra,$a1,$a5
    beqz	$ra,.L0d9e300c
    # Line 192
    move	$s3,$zero
    # Line 177
    li	$a1,0x8366
    sltu	$at,$a5,$a1
    bnez	$at,.L0d9e38ac
    sltu	$v1,$a1,$a5
    beqz	$v1,.L0d9e38c8
    li	$a1,0x8368
    sltu	$a0,$a5,$a1
    bnez	$a0,.L0d9e3af8
    li	$t2,0x8367
    sltu	$a2,$a1,$a5
    bnez	$a2,.L0d9e3890
    # Line 216
    li	$a7,0x85a3
.L0d9e2f10:
    # Line 214
    move	$s3,$zero
.L0d9e2f14:
    li	$a4,6409
    li	$s4,5125
    b	.L0d9e3018
    sd	$v0,160($sp)
.L0d9e2f24:
    # Line 441
    blez	$s2,.L0d9e2f8c
    nop
    mult	$v0,$s1
    andi	$a0,$s2,0x3
    mflo	$s3
    lwc1	$f4,_lit_3f800000
    beqz	$a0,.L0d9e2f58
    move	$s4,$zero
.L0d9e2f44:
    addiu	$a0,$a0,-1
    addiu	$s4,$s4,1
    # Line 442
    swc1	$f4,0($s0)
    bnez	$a0,.L0d9e2f44
    # Line 443
    addu	$s0,$s3,$s0
.L0d9e2f58:
    sra	$a3,$s2,0x2
    beqz	$a3,.L0d9e2f8c
    nop
.L0d9e2f64:
    addu	$a6,$s3,$s0
    # Line 442
    swc1	$f4,0($s0)
    # Line 441
    addiu	$s4,$s4,4
    # Line 443
    addu	$a5,$s3,$a6
    # Line 442
    swc1	$f4,0($a6)
    # Line 443
    addu	$a4,$s3,$a5
    # Line 442
    swc1	$f4,0($a5)
    # Line 443
    addu	$s0,$s3,$a4
    # Line 441
    bne	$s2,$s4,.L0d9e2f64
    # Line 442
    swc1	$f4,0($a4)
.L0d9e2f8c:
    # Line 468
    ld	$gp,224($sp)
.L0d9e2f90:
    ld	$s0,208($sp)
    ld	$s1,192($sp)
    ld	$s2,232($sp)
    ld	$s3,80($sp)
    ld	$s4,216($sp)
    ld	$s5,200($sp)
    ld	$ra,96($sp)
    ld	$s6,88($sp)
    ld	$s7,144($sp)
    ld	$s8,240($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0d9e2fc0:
    # Line 177
    li	$a1,0x8035
    sltu	$a7,$a5,$a1
    bnez	$a7,.L0d9e3858
    sltu	$t0,$a1,$a5
    beqz	$t0,.L0d9e2f10
    li	$a1,0x8362
    sltu	$t1,$a5,$a1
    bnez	$t1,.L0d9e39e0
    li	$a0,0x8036
    sltu	$t2,$a1,$a5
    bnez	$t2,.L0d9e388c
    # Line 184
    move	$s3,$zero
.L0d9e2ff0:
    li	$a4,6409
    li	$s4,5121
    b	.L0d9e3018
    sd	$v0,160($sp)
.L0d9e3000:
    # Line 177
    bne	$a5,$t3,.L0d9e3890
    # Line 216
    li	$a7,0x85a3
    # Line 192
    move	$s3,$zero
.L0d9e300c:
    li	$a4,6409
    li	$s4,5123
    sd	$v0,160($sp)
.L0d9e3018:
    # Line 228
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    ld	$s6,168($sp)
    jal	__glElementsPerGroup
    move	$a0,$a4
    move	$t9,$s2
    slt	$ra,$zero,$s6
    li	$t8,6656
    sd	$v0,248($sp)
    movn	$t9,$s6,$ra
    bne	$s4,$t8,.L0d9e3130
    sd	$t9,40($sp)
    # Line 244
    ld	$v1,248($sp)
    ld	$a0,40($sp)
    mult	$a0,$v1
    ld	$t9,128($sp)
    mflo	$v0
    mtc1	$t9,$f1
    addiu	$a1,$v0,7
    addiu	$v0,$v0,14
    slt	$a0,$a1,$zero
    movz	$v0,$a1,$a0
    sra	$v0,$v0,0x3
    mtc1	$v0,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    mult	$a1,$t9
    # Line 249
    ld	$a0,112($sp)
    # Line 244
    mflo	$at
    nop
    nop
    # Line 249
    mult	$v1,$a0
    # Line 244
    subu	$at,$v0,$at
    # Line 247
    subu	$s6,$t9,$at
    # Line 249
    ld	$ra,104($sp)
    # Line 247
    addu	$s6,$v0,$s6
    movz	$s6,$v0,$at
    # Line 249
    mflo	$a4
    nop
    nop
    mult	$ra,$s6
    # Line 244
    teq	$t9,$zero,0x7
    # Line 249
    addiu	$s7,$a4,7
    slt	$t8,$a4,$zero
    movz	$s7,$a4,$t8
    # Line 255
    move	$s0,$s8
    # Line 249
    ld	$t8,120($sp)
    sra	$s7,$s7,0x3
    sll	$a5,$s7,0x3
    mflo	$t9
    subu	$a4,$a4,$a5
    addu	$t8,$t8,$t9
    # Line 255
    blez	$s5,.L0d9e2f8c
    # Line 249
    addu	$s7,$s7,$t8
    # Line 255
    ld	$t3,248($sp)
    mult	$t3,$s2
    la	$t2,sub_0da40000
    move	$s4,$zero
    addiu	$t2,$t2,31304
    la	$a5,__glMsbToLsbTable
    li	$a2,8
    addu	$t3,$a4,$t2
    subu	$a2,$a2,$a4
    subu	$a6,$t2,$a4
    lbu	$t3,272($t3)
    mflo	$ra
    b	.L0d9e372c
    lbu	$a6,264($a6)
.L0d9e3130:
    # Line 296
    # lw $t9, -27536($gp) # &__glSpecBytesPerElement
    jal	__glSpecBytesPerElement
    move	$a0,$s4
    # Line 306
    ld	$t3,248($sp)
    mult	$v0,$t3
    ld	$t2,40($sp)
    mflo	$a2
    nop
    nop
    mult	$a2,$t2
    ld	$v1,128($sp)
    mtc1	$v1,$f2
    mflo	$t0
    mtc1	$t0,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$t1,$f1
    mult	$t1,$v1
    # Line 314
    ld	$a5,176($sp)
    # Line 306
    mflo	$a7
    subu	$a7,$t0,$a7
    # Line 314
    slt	$a6,$zero,$a5
    # Line 309
    subu	$s6,$v1,$a7
    # Line 314
    movz	$a5,$s5,$a6
    # Line 309
    addu	$s6,$t0,$s6
    movz	$s6,$t0,$a7
    # Line 314
    mult	$s6,$a5
    ld	$a4,184($sp)
    mflo	$a1
    nop
    nop
    mult	$a1,$a4
    ld	$a3,112($sp)
    mflo	$ra
    nop
    nop
    mult	$a2,$a3
    ld	$a0,104($sp)
    mflo	$t8
    nop
    nop
    mult	$a0,$s6
    # Line 298
    xori	$at,$v0,0x1
    sltiu	$at,$at,1
    # Line 296
    move	$s1,$v0
    # Line 298
    movn	$s0,$zero,$at
    # Line 314
    ld	$s7,120($sp)
    # Line 306
    teq	$v1,$zero,0x7
    # Line 314
    mflo	$t9
    addu	$s7,$s7,$ra
    addu	$t8,$t8,$t9
    beqz	$s3,.L0d9e32e0
    addu	$s7,$s7,$t8
    sd	$a1,72($sp)
    # Line 322
    ld	$a1,248($sp)
    mult	$a1,$s2
    mflo	$v1
    nop
    nop
    mult	$v0,$v1
    ld	$v0,264($sp)
    mflo	$ra
    nop
    nop
    mult	$s5,$v0
    mflo	$at
    nop
    nop
    mult	$ra,$at
    ld	$t9,136($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    mflo	$a1
    jalr	$t9
    nop
    ld	$a1,72($sp)
    sw	$v0,0($sp)
    move	$a0,$v0
    # Line 325
    beqz	$v0,.L0d9e32e0
    sd	$s0,280($sp)
    # Line 328
    ld	$a2,280($sp)
    bnez	$a2,.L0d9e32f0
    # Line 326
    move	$s0,$v0
.L0d9e3284:
    sd	$s8,64($sp)
    # Line 332
    ld	$a2,264($sp)
    sd	$s2,56($sp)
    sd	$s3,48($sp)
    blez	$a2,.L0d9e3410
    sw	$s4,348($sp)
    ld	$a5,248($sp)
    mult	$a5,$s2
    mflo	$a3
    nop
    nop
    mult	$s5,$s6
    mflo	$a4
    nop
    nop
    mult	$s1,$a3
    sd	$s2,56($sp)
    sw	$s4,348($sp)
    move	$s8,$zero
    sd	$a1,72($sp)
    mflo	$s3
    b	.L0d9e3958
    sd	$a4,256($sp)
.L0d9e32e0:
    sd	$s0,280($sp)
    # Line 328
    ld	$a6,280($sp)
    beqz	$a6,.L0d9e3284
    move	$s0,$s8
.L0d9e32f0:
    sd	$s8,64($sp)
    ld	$a7,264($sp)
    sd	$s2,56($sp)
    sd	$s3,48($sp)
    blez	$a7,.L0d9e3410
    sw	$s4,348($sp)
    ld	$a4,56($sp)
    ld	$a3,248($sp)
    mult	$a3,$a4
    addiu	$s8,$s7,-1
    addiu	$a2,$s1,-1
    slti	$s2,$s1,1
    addu	$a2,$s7,$a2
    sd	$s3,48($sp)
    xori	$s2,$s2,0x1
    mflo	$ra
    sw	$s4,348($sp)
    b	.L0d9e3354
    move	$a3,$zero
    nop
.L0d9e3340:
    # Line 332
    ld	$a5,264($sp)
.L0d9e3344:
    addiu	$a3,$a3,1
    # Line 345
    addu	$a2,$a1,$a2
    # Line 332
    beq	$a5,$a3,.L0d9e3410
    # Line 345
    addu	$s8,$a1,$s8
.L0d9e3354:
    # Line 328
    blez	$s5,.L0d9e3344
    # Line 332
    ld	$a5,264($sp)
    # Line 328
    move	$v0,$a2
    move	$s3,$s8
    b	.L0d9e3380
    move	$s4,$zero
    nop
.L0d9e3370:
    # Line 334
    addiu	$s4,$s4,1
    # Line 343
    addu	$v0,$s6,$v0
    # Line 334
    beq	$s5,$s4,.L0d9e3340
    # Line 343
    addu	$s3,$s6,$s3
.L0d9e3380:
    # Line 328
    blez	$ra,.L0d9e3370
    addiu	$t8,$s0,1
    move	$t3,$v0
    move	$t2,$s3
    b	.L0d9e33dc
    move	$t9,$zero
    nop
    nop
.L0d9e33a0:
    beqz	$a7,.L0d9e33cc
    nop
    nop
    nop
.L0d9e33b0:
    # Line 338
    lbu	$t1,0($a4)
    # Line 337
    addiu	$a4,$a4,-2
    # Line 338
    sb	$t1,-1($a6)
    # Line 337
    addiu	$a6,$a6,2
    # Line 338
    lbu	$t0,1($a4)
    # Line 337
    bne	$a4,$t2,.L0d9e33b0
    # Line 338
    sb	$t0,-2($a6)
.L0d9e33cc:
    # Line 341
    addu	$t3,$s1,$t3
    addu	$t2,$s1,$t2
    # Line 336
    beq	$ra,$t9,.L0d9e3370
    # Line 340
    addu	$t8,$s1,$t8
.L0d9e33dc:
    addu	$s0,$s1,$s0
    # Line 328
    beqz	$s2,.L0d9e33cc
    # Line 336
    addiu	$t9,$t9,1
    # Line 328
    move	$a4,$t3
    andi	$at,$s1,0x1
    sra	$a7,$s1,0x1
    beqz	$at,.L0d9e33a0
    move	$a6,$t8
    # Line 337
    addiu	$a4,$t3,-1
    # Line 338
    lbu	$v1,0($t3)
    # Line 337
    addiu	$a6,$t8,1
    b	.L0d9e33a0
    # Line 338
    sb	$v1,-1($t8)
.L0d9e3410:
    # Line 369
    ld	$a0,48($sp)
    beqz	$a0,.L0d9e2f8c
    lw	$s6,0($sp)
    beqz	$s6,.L0d9e2f8c
    # Line 373
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
    ld	$s0,152($sp)
    jal	__glElementsPerGroup
    ld	$a0,48($sp)
    move	$a2,$v0
    # Line 383
    ld	$a4,160($sp)
    # Line 378
    li	$a3,1
    # Line 383
    li	$a5,0x85a3
    # Line 381
    move	$ra,$zero
    # Line 376
    li	$a1,0x842f
    xor	$a1,$s0,$a1
    # Line 383
    beq	$a4,$a5,.L0d9e39f0
    movz	$ra,$a3,$a1
    ld	$a3,160($sp)
    li	$a4,0x85a4
    beq	$a3,$a4,.L0d9e3a10
.L0d9e3460:
    # Line 399
    ld	$a5,48($sp)
    li	$a6,6407
    beq	$a5,$a6,.L0d9e38e0
    # Line 406
    addu	$t8,$s1,$s1
    # Line 399
    ld	$a7,48($sp)
    li	$t0,6408
    beq	$a7,$t0,.L0d9e38e0
    # Line 406
    addu	$t8,$s1,$s1
    # Line 399
    ld	$t1,48($sp)
    li	$t2,0x80e0
    beq	$t1,$t2,.L0d9e38e0
    # Line 406
    addu	$t8,$s1,$s1
    # Line 399
    ld	$t3,48($sp)
    li	$t8,0x80e1
    beq	$t3,$t8,.L0d9e38dc
    ld	$t9,48($sp)
    li	$at,0x8000
    beq	$t9,$at,.L0d9e3ad8
.L0d9e34a8:
    # Line 419
    ld	$a0,56($sp)
    mult	$a0,$s5
    ld	$v0,264($sp)
    mflo	$v1
    nop
    nop
    mult	$v0,$v1
    mflo	$a5
    ld	$s0,64($sp)
    # Line 418
    move	$s2,$s6
    # Line 419
    blez	$a5,.L0d9e3698
    sd	$a2,272($sp)
    mult	$a2,$s1
    sd	$a2,272($sp)
    sll	$a0,$s1,0x2
    lw	$s8,24($sp)
    lw	$v0,12($sp)
    move	$s4,$zero
    mflo	$s3
    lw	$a7,28($sp)
    b	.L0d9e354c
    addu	$a1,$s8,$s1
.L0d9e3500:
    # Line 429
    sb	$zero,0($a2)
    # Line 430
    lbu	$t0,0($t3)
    # Line 431
    move	$t8,$zero
    # Line 430
    sb	$t0,0($a3)
.L0d9e3510:
    # Line 428
    addiu	$t2,$t2,1
    addiu	$a2,$a2,1
    addiu	$a3,$a3,1
    addiu	$a4,$a4,1
    addiu	$a6,$a6,1
    addiu	$t3,$t3,1
    # Line 431
    sb	$t8,-1($a4)
.L0d9e352c:
    sra	$t1,$s1,0x1
    bnez	$t1,.L0d9e3640
    nop
.L0d9e3538:
    # Line 421
    addiu	$s4,$s4,2
    slt	$t2,$s4,$a5
    # Line 434
    addu	$s0,$s3,$s5
    # Line 421
    beqz	$t2,.L0d9e3698
    # Line 433
    addu	$s2,$a0,$s2
.L0d9e354c:
    # Line 419
    blez	$s1,.L0d9e3690
    addu	$a3,$a7,$s0
    addu	$t9,$a1,$s0
    lw	$a4,32($sp)
    addu	$a2,$s8,$s0
    addu	$s7,$v0,$s2
    lw	$s6,4($sp)
    move	$a6,$s7
    lw	$t3,8($sp)
    move	$t8,$a4
    addu	$a4,$a4,$s0
    addu	$s6,$s6,$s2
    addu	$t3,$t3,$s2
    move	$t2,$s6
    nop
    nop
    nop
.L0d9e3590:
    # Line 423
    lbu	$at,0($t2)
    sb	$at,0($a2)
    # Line 422
    addiu	$t2,$t2,1
    # Line 424
    lbu	$t1,0($t3)
    # Line 422
    addiu	$t3,$t3,1
    addiu	$a2,$a2,1
    # Line 424
    sb	$t1,0($a3)
    # Line 422
    addiu	$a3,$a3,1
    addiu	$a4,$a4,1
    # Line 425
    lbu	$t0,0($a6)
    # Line 422
    addiu	$a6,$a6,1
    bne	$a2,$t9,.L0d9e3590
    # Line 425
    sb	$t0,-1($a4)
    # Line 427
    move	$a6,$s7
    move	$t2,$s6
    addu	$t9,$s3,$t9
    addu	$s5,$s3,$s0
    addu	$a4,$t8,$s5
    lw	$t3,16($sp)
    andi	$v1,$s1,0x1
    addu	$a3,$a7,$s5
    addu	$a2,$s8,$s5
    beqz	$v1,.L0d9e352c
    addu	$t3,$t3,$s2
    bnez	$ra,.L0d9e3500
    nop
    # Line 429
    lbu	$at,0($s6)
    sb	$at,0($a2)
    # Line 430
    lbu	$t8,0($t3)
    sb	$t8,0($a3)
    b	.L0d9e3510
    # Line 431
    lbu	$t8,0($s7)
.L0d9e3610:
    # Line 429
    sb	$zero,1($a2)
    # Line 430
    lbu	$v1,1($t3)
    # Line 431
    move	$t8,$zero
    # Line 430
    sb	$v1,1($a3)
.L0d9e3620:
    # Line 428
    addiu	$t2,$t2,2
    addiu	$a3,$a3,2
    addiu	$a2,$a2,2
    addiu	$a6,$a6,2
    addiu	$a4,$a4,2
    addiu	$t3,$t3,2
    beq	$a2,$t9,.L0d9e3538
    # Line 431
    sb	$t8,-1($a4)
.L0d9e3640:
    # Line 427
    beqz	$ra,.L0d9e3678
    nop
    # Line 429
    sb	$zero,0($a2)
    # Line 430
    lbu	$t0,0($t3)
    # Line 431
    move	$t8,$zero
    # Line 430
    sb	$t0,0($a3)
.L0d9e3658:
    # Line 427
    bnez	$ra,.L0d9e3610
    # Line 431
    sb	$t8,0($a4)
    # Line 429
    lbu	$t8,1($t2)
    sb	$t8,1($a2)
    # Line 430
    lbu	$t1,1($t3)
    sb	$t1,1($a3)
    b	.L0d9e3620
    # Line 431
    lbu	$t8,1($a6)
.L0d9e3678:
    # Line 429
    lbu	$v1,0($t2)
    sb	$v1,0($a2)
    # Line 430
    lbu	$at,0($t3)
    sb	$at,0($a3)
    b	.L0d9e3658
    # Line 431
    lbu	$t8,0($a6)
.L0d9e3690:
    # Line 427
    b	.L0d9e3538
    addu	$s5,$s3,$s0
.L0d9e3698:
    # Line 436
    ld	$t9,136($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    sd	$a5,288($sp)
    lw	$a1,0($sp)
    jalr	$t9
    ld	$s2,288($sp)
    ld	$v0,272($sp)
    li	$ra,4
    bne	$v0,$ra,.L0d9e2f8c
    # Line 439
    ld	$t8,64($sp)
    # Line 438
    lw	$t9,348($sp)
    lw	$s0,20($sp)
    # Line 439
    li	$ra,5126
    beq	$t9,$ra,.L0d9e2f24
    # Line 438
    addu	$s0,$s0,$t8
    # Line 439
    li	$v1,5120
    beq	$t9,$v1,.L0d9e3a30
    li	$a1,5122
    beq	$t9,$a1,.L0d9e3a30
    li	$a3,5124
    beq	$t9,$a3,.L0d9e3a30
    nop
    blez	$s2,.L0d9e2f90
    # Line 468
    ld	$gp,224($sp)
    # Line 439
    mult	$v0,$s1
    li	$a1,255
    move	$s4,$zero
    mflo	$s3
    b	.L0d9e39c8
    addu	$a0,$s1,$s0
    nop
    nop
    nop
.L0d9e3720:
    # Line 256
    addiu	$s4,$s4,1
    beq	$s5,$s4,.L0d9e2f8c
    # Line 293
    addu	$s7,$s6,$s7
.L0d9e372c:
    # Line 257
    move	$v0,$ra
    # Line 258
    bnez	$ra,.L0d9e375c
    move	$s2,$s7
    b	.L0d9e3720
    nop
.L0d9e3740:
    # Line 286
    lbu	$a7,272($a7)
    # Line 288
    move	$v0,$zero
    # Line 286
    and	$a7,$a0,$a7
    sb	$a7,0($s0)
.L0d9e3750:
    # Line 291
    addiu	$s2,$s2,2
    beqz	$v0,.L0d9e3720
    # Line 290
    addiu	$s0,$s0,1
.L0d9e375c:
    # Line 258
    beqz	$s1,.L0d9e3838
    lbu	$a3,0($s2)
    # Line 262
    addu	$a0,$a3,$a5
    lbu	$a0,0($a0)
.L0d9e376c:
    # Line 264
    beqz	$a4,.L0d9e379c
    slt	$a7,$a2,$v0
    and	$a3,$a0,$a6
    beqz	$a7,.L0d9e3828
    sllv	$a3,$a3,$a4
    beqz	$s1,.L0d9e3848
    lbu	$a0,1($s2)
    # Line 270
    addu	$a7,$a0,$a5
    lbu	$a7,0($a7)
.L0d9e3790:
    # Line 274
    and	$a0,$a7,$t3
    srav	$a0,$a0,$a2
    or	$a0,$a3,$a0
.L0d9e379c:
    # Line 278
    slti	$a1,$v0,8
    bnez	$a1,.L0d9e37b4
    # Line 286
    addu	$a3,$v0,$t2
    # Line 284
    addiu	$v0,$v0,-8
    b	.L0d9e37c4
    # Line 283
    sb	$a0,0($s0)
.L0d9e37b4:
    # Line 286
    lbu	$a3,272($a3)
    # Line 288
    move	$v0,$zero
    # Line 286
    and	$a3,$a0,$a3
    sb	$a3,0($s0)
.L0d9e37c4:
    # Line 291
    beqz	$v0,.L0d9e3720
    # Line 290
    addiu	$s0,$s0,1
    # Line 258
    beqz	$s1,.L0d9e3840
    lbu	$a3,1($s2)
    # Line 262
    addu	$a0,$a3,$a5
    lbu	$a0,0($a0)
.L0d9e37dc:
    # Line 264
    beqz	$a4,.L0d9e3814
    # Line 278
    slti	$a1,$v0,8
    # Line 264
    slt	$a7,$a2,$v0
    and	$a3,$a0,$a6
    beqz	$a7,.L0d9e3830
    sllv	$a3,$a3,$a4
    beqz	$s1,.L0d9e3850
    lbu	$a0,2($s2)
    # Line 270
    addu	$a7,$a0,$a5
    lbu	$a7,0($a7)
.L0d9e3804:
    # Line 274
    and	$a0,$a7,$t3
    srav	$a0,$a0,$a2
    or	$a0,$a3,$a0
.L0d9e3810:
    # Line 278
    slti	$a1,$v0,8
.L0d9e3814:
    bnez	$a1,.L0d9e3740
    # Line 286
    addu	$a7,$v0,$t2
    # Line 284
    addiu	$v0,$v0,-8
    b	.L0d9e3750
    # Line 283
    sb	$a0,0($s0)
.L0d9e3828:
    b	.L0d9e379c
    # Line 278
    move	$a0,$a3
.L0d9e3830:
    b	.L0d9e3810
    move	$a0,$a3
.L0d9e3838:
    b	.L0d9e376c
    # Line 264
    move	$a0,$a3
.L0d9e3840:
    b	.L0d9e37dc
    move	$a0,$a3
.L0d9e3848:
    b	.L0d9e3790
    # Line 272
    move	$a7,$a0
.L0d9e3850:
    b	.L0d9e3804
    move	$a7,$a0
.L0d9e3858:
    # Line 177
    li	$a1,0x8033
    sltu	$a2,$a5,$a1
    bnez	$a2,.L0d9e3884
    li	$a6,0x8032
    sltu	$a3,$a1,$a5
    beqz	$a3,.L0d9e38c8
    li	$a5,0x8034
    bne	$s4,$a5,.L0d9e3890
    # Line 216
    li	$a7,0x85a3
    b	.L0d9e38cc
    # Line 203
    move	$s3,$zero
.L0d9e3884:
    # Line 177
    beq	$a5,$a6,.L0d9e2ff0
    # Line 184
    move	$s3,$zero
.L0d9e388c:
    # Line 216
    li	$a7,0x85a3
.L0d9e3890:
    beq	$v0,$a7,.L0d9e3900
    # Line 222
    move	$s3,$a4
    # Line 216
    li	$t0,0x85a4
    beq	$v0,$t0,.L0d9e38fc
    move	$s3,$zero
    b	.L0d9e3018
    sd	$v0,160($sp)
.L0d9e38ac:
    # Line 177
    li	$a1,0x8365
    sltu	$t1,$a5,$a1
    bnez	$t1,.L0d9e3000
    li	$t3,0x8364
    sltu	$t2,$a1,$a5
    bnez	$t2,.L0d9e3890
    # Line 216
    li	$a7,0x85a3
.L0d9e38c8:
    # Line 203
    move	$s3,$zero
.L0d9e38cc:
    li	$a4,6409
    li	$s4,5123
    b	.L0d9e3018
    sd	$v0,160($sp)
.L0d9e38dc:
    # Line 406
    addu	$t8,$s1,$s1
.L0d9e38e0:
    sw	$t8,32($sp)
    # Line 405
    sw	$s1,28($sp)
    # Line 404
    sw	$zero,24($sp)
    # Line 407
    sll	$t3,$s1,0x2
    subu	$t3,$t3,$s1
    b	.L0d9e34a8
    sw	$t3,20($sp)
.L0d9e38fc:
    # Line 222
    move	$s3,$a4
.L0d9e3900:
    # Line 223
    li	$a4,6410
    b	.L0d9e3018
    sd	$v0,160($sp)
    nop
.L0d9e3910:
    # Line 354
    blez	$s5,.L0d9e3944
    move	$s2,$s7
    move	$s4,$zero
    nop
.L0d9e3920:
    # Line 356
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s0
    move	$a1,$s2
    jal	memcpy
    move	$a2,$s3
    # Line 355
    addiu	$s4,$s4,1
    # Line 358
    addu	$s2,$s6,$s2
    # Line 355
    bne	$s5,$s4,.L0d9e3920
    # Line 357
    addu	$s0,$s3,$s0
.L0d9e3944:
    # Line 348
    ld	$ra,264($sp)
    ld	$t9,72($sp)
    addiu	$s8,$s8,1
    beq	$ra,$s8,.L0d9e3410
    # Line 361
    addu	$s7,$t9,$s7
.L0d9e3958:
    # Line 332
    bne	$s3,$s6,.L0d9e3910
    # Line 351
    nop	# was lw $t9, -22900($gp) # &memcpy
    move	$a0,$s0
    move	$a1,$s7
    jal	memcpy
    ld	$a2,256($sp)
    # Line 352
    ld	$at,256($sp)
    b	.L0d9e3944
    addu	$s0,$at,$s0
.L0d9e397c:
    addiu	$a2,$a2,-1
    # Line 459
    addiu	$v0,$v0,1
    bnez	$a2,.L0d9e397c
    # Line 460
    sb	$a1,-1($v0)
.L0d9e398c:
    sra	$v1,$s1,0x2
    beqz	$v1,.L0d9e39b8
    nop
    nop
    nop
.L0d9e39a0:
    sb	$a1,3($v0)
    sb	$a1,2($v0)
    # Line 459
    addiu	$v0,$v0,4
    # Line 460
    sb	$a1,-3($v0)
    # Line 459
    bne	$v0,$a0,.L0d9e39a0
    # Line 460
    sb	$a1,-4($v0)
.L0d9e39b8:
    # Line 458
    addiu	$s4,$s4,1
    # Line 462
    addu	$a0,$s3,$a0
    # Line 458
    beq	$s2,$s4,.L0d9e2f8c
    # Line 462
    addu	$s0,$s3,$s0
.L0d9e39c8:
    # Line 439
    blez	$s1,.L0d9e39b8
    andi	$a2,$s1,0x3
    bnez	$a2,.L0d9e397c
    move	$v0,$s0
    b	.L0d9e398c
    nop
.L0d9e39e0:
    # Line 177
    bne	$a5,$a0,.L0d9e3890
    # Line 216
    li	$a7,0x85a3
    b	.L0d9e2f14
    # Line 214
    move	$s3,$zero
.L0d9e39f0:
    # Line 387
    addu	$a3,$s1,$s1
    sw	$a3,12($sp)
    # Line 386
    sw	$s1,8($sp)
    # Line 385
    sw	$zero,4($sp)
    # Line 388
    sll	$a1,$s1,0x2
    subu	$a1,$a1,$s1
    b	.L0d9e3460
    sw	$a1,16($sp)
.L0d9e3a10:
    # Line 394
    addu	$a5,$s1,$s1
    sw	$a5,16($sp)
    # Line 392
    sw	$zero,8($sp)
    # Line 391
    sw	$s1,4($sp)
    # Line 393
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    # Line 395
    b	.L0d9e3460
    # Line 393
    sw	$a4,12($sp)
.L0d9e3a30:
    # Line 449
    blez	$s2,.L0d9e2f90
    # Line 468
    ld	$gp,224($sp)
    # Line 449
    mult	$v0,$s1
    li	$a1,255
    li	$a6,127
    move	$s4,$zero
    addu	$a0,$s1,$s0
    addiu	$a3,$s0,1
    addiu	$a4,$s1,-1
    li	$a5,1
    mflo	$s3
    b	.L0d9e3abc
    slt	$a5,$a5,$s1
    nop
    nop
    nop
.L0d9e3a70:
    addiu	$a2,$a2,-1
    # Line 451
    addiu	$v0,$v0,1
    bnez	$a2,.L0d9e3a70
    # Line 452
    sb	$a1,-1($v0)
.L0d9e3a80:
    sra	$a7,$a4,0x2
    beqz	$a7,.L0d9e3aa8
    nop
    nop
.L0d9e3a90:
    sb	$a1,3($v0)
    sb	$a1,2($v0)
    # Line 451
    addiu	$v0,$v0,4
    # Line 452
    sb	$a1,-3($v0)
    # Line 451
    bne	$v0,$a0,.L0d9e3a90
    # Line 452
    sb	$a1,-4($v0)
.L0d9e3aa8:
    # Line 449
    addiu	$s4,$s4,1
    # Line 454
    addu	$a3,$s3,$a3
    addu	$a0,$s3,$a0
    # Line 449
    beq	$s2,$s4,.L0d9e2f8c
    # Line 454
    addu	$s0,$s3,$s0
.L0d9e3abc:
    # Line 450
    beqz	$a5,.L0d9e3aa8
    sb	$a6,0($s0)
    andi	$a2,$a4,0x3
    bnez	$a2,.L0d9e3a70
    move	$v0,$a3
    b	.L0d9e3a80
    nop
.L0d9e3ad8:
    # Line 412
    addu	$t1,$s1,$s1
    sw	$t1,28($sp)
    # Line 411
    sw	$s1,24($sp)
    # Line 410
    sw	$zero,20($sp)
    # Line 413
    sll	$t0,$s1,0x2
    subu	$t0,$t0,$s1
    # Line 414
    b	.L0d9e34a8
    # Line 413
    sw	$t0,32($sp)
.L0d9e3af8:
    # Line 177
    bne	$a5,$t2,.L0d9e3890
    # Line 216
    li	$a7,0x85a3
    b	.L0d9e2f14
    # Line 214
    move	$s3,$zero
.end __glFillImage3D

# Function: __glFillImage
# Declared: Line 470 (Source lines: 473-475)
# Address: 0x0d9e3b10 - 0x0d9e3b58 (Size: 72 bytes, Frame: 16)
.globl __glFillImage
.ent __glFillImage
__glFillImage:
    # Line 473
    lui	$v0,0x7
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,-11652
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    move	$at,$a3
    # Line 474
    # lw $t9, -25848($gp) # &__glFillImage3D
    li	$a3,1
    # Line 473
    move	$a7,$a6
    move	$a6,$a5
    move	$a5,$a4
    sd	$ra,0($sp)
    # Line 474
    bal __glFillImage3D
    move	$a4,$at
    ld	$ra,0($sp)
    # Line 475
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFillImage

# Function: __glEmptyImage
# Declared: Line 483 (Source lines: 486-642)
# Address: 0x0d9e3b60 - 0x0d9e401c (Size: 1212 bytes, Frame: 144)
.globl __glEmptyImage
.ent __glEmptyImage
__glEmptyImage:
    # Line 498
    lbu	$t8,1144($a0)
    # Line 494
    lw	$t1,1152($a0)
    # Line 493
    lw	$t2,1156($a0)
    # Line 492
    lw	$t3,1160($a0)
    # Line 491
    lw	$v0,1148($a0)
    # Line 486
    addiu	$sp,$sp,-144
    sd	$s2,96($sp)
    # Line 497
    lbu	$s2,1145($a0)
    sd	$s5,24($sp)
    sd	$ra,128($sp)
    # Line 486
    sd	$s1,64($sp)
    sd	$s0,72($sp)
    move	$s0,$a5
    move	$s1,$a4
    sd	$s4,80($sp)
    move	$s4,$a2
    sd	$s6,88($sp)
    lui	$at,0x7
    move	$s6,$a1
    sd	$s3,8($sp)
    addiu	$at,$at,-11732
    sd	$gp,104($sp)
    # Line 505
    beqz	$a6,.L0d9e3ce8
    # Line 486
    addu	$gp,$t9,$at
    sd	$t8,56($sp)
    sd	$t3,16($sp)
    sd	$t2,48($sp)
    sd	$a6,40($sp)
    sd	$t1,32($sp)
    # Line 505
    beqz	$a5,.L0d9e3ce8
    sd	$v0,112($sp)
    # Line 508
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    ld	$s5,112($sp)
    jal	__glElementsPerGroup
    move	$a0,$a3
    li	$v1,6656
    move	$a0,$s6
    move	$s3,$v0
    slt	$v0,$zero,$s5
    bne	$s1,$v1,.L0d9e3d14
    movn	$a0,$s5,$v0
    # Line 525
    mult	$a0,$s3
    ld	$ra,16($sp)
    mflo	$v1
    mtc1	$ra,$f1
    addiu	$a2,$v1,7
    addiu	$v1,$v1,14
    slt	$a1,$a2,$zero
    movz	$v1,$a2,$a1
    sra	$v1,$v1,0x3
    mtc1	$v1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a2,$f0
    mult	$a2,$ra
    # Line 530
    ld	$a1,48($sp)
    # Line 525
    mflo	$v0
    nop
    nop
    # Line 530
    mult	$s3,$a1
    # Line 525
    subu	$v0,$v1,$v0
    # Line 528
    subu	$s5,$ra,$v0
    # Line 530
    ld	$at,32($sp)
    # Line 528
    addu	$s5,$v1,$s5
    movz	$s5,$v1,$v0
    # Line 530
    mflo	$a5
    nop
    nop
    mult	$at,$s5
    # Line 525
    teq	$ra,$zero,0x7
    # Line 530
    addiu	$t8,$a5,7
    slt	$t9,$a5,$zero
    movz	$t8,$a5,$t9
    ld	$t9,40($sp)
    sra	$t8,$t8,0x3
    sll	$a6,$t8,0x3
    mflo	$ra
    subu	$a5,$a5,$a6
    addu	$t9,$t9,$ra
    sd	$s3,120($sp)
    # Line 536
    blez	$s4,.L0d9e3ce8
    # Line 530
    addu	$t8,$t8,$t9
    # Line 536
    ld	$s3,120($sp)
    mult	$s3,$s6
    la	$t3,sub_0da40000
    li	$t2,8
    addiu	$t3,$t3,31304
    la	$a6,__glMsbToLsbTable
    subu	$t2,$t2,$a5
    subu	$a2,$t3,$a5
    move	$s3,$zero
    addu	$t9,$a5,$t3
    lbu	$a2,264($a2)
    mflo	$t1
    b	.L0d9e3ed0
    lbu	$t9,272($t9)
.L0d9e3ce8:
    # Line 642
    ld	$gp,104($sp)
.L0d9e3cec:
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,96($sp)
    ld	$s3,8($sp)
    ld	$ra,128($sp)
    ld	$s4,80($sp)
    ld	$s5,24($sp)
    ld	$s6,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9e3d14:
    # Line 601
    # lw $t9, -27536($gp) # &__glSpecBytesPerElement
    ld	$s2,16($sp)
    sd	$a0,0($sp)
    jal	__glSpecBytesPerElement
    move	$a0,$s1
    # Line 605
    mult	$v0,$s3
    ld	$a4,0($sp)
    mflo	$at
    nop
    nop
    mult	$at,$a4
    mtc1	$s2,$f2
    mflo	$a2
    mtc1	$a2,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a3,$f1
    mult	$a3,$s2
    mflo	$a1
    subu	$a1,$a2,$a1
    # Line 608
    subu	$s5,$s2,$a1
    # Line 610
    ld	$a0,32($sp)
    # Line 608
    addu	$s5,$a2,$s5
    movz	$s5,$a2,$a1
    # Line 610
    mult	$a0,$s5
    ld	$v1,48($sp)
    mflo	$t9
    nop
    nop
    mult	$at,$v1
    # Line 603
    ld	$t8,56($sp)
    xori	$ra,$v0,0x1
    # Line 605
    teq	$s2,$zero,0x7
    # Line 603
    sltiu	$ra,$ra,1
    # Line 610
    ld	$at,40($sp)
    # Line 603
    movn	$t8,$zero,$ra
    # Line 610
    addu	$t9,$t9,$at
    mflo	$s1
    # Line 612
    beqz	$t8,.L0d9e3fa4
    # Line 610
    addu	$s1,$s1,$t9
    # Line 612
    blez	$s4,.L0d9e3ce8
    sd	$s3,120($sp)
    ld	$t3,120($sp)
    mult	$t3,$s6
    addiu	$a2,$v0,-1
    move	$s3,$zero
    slti	$t2,$v0,1
    xori	$t2,$t2,0x1
    mflo	$t1
    b	.L0d9e3dfc
    addiu	$t3,$s1,1
    nop
    nop
.L0d9e3df0:
    # Line 616
    addiu	$s3,$s3,1
    beq	$s4,$s3,.L0d9e3ce8
    # Line 625
    addu	$t3,$s5,$t3
.L0d9e3dfc:
    # Line 612
    blez	$t1,.L0d9e3df0
    move	$a5,$t3
    addiu	$a4,$s0,-1
    addu	$a1,$a2,$s0
    b	.L0d9e3e5c
    move	$a6,$zero
    nop
    nop
    nop
.L0d9e3e20:
    beqz	$t8,.L0d9e3e4c
    nop
    nop
    nop
.L0d9e3e30:
    # Line 620
    lbu	$ra,0($a0)
    # Line 619
    addiu	$a0,$a0,-2
    # Line 620
    sb	$ra,-1($a3)
    # Line 619
    addiu	$a3,$a3,2
    # Line 620
    lbu	$t9,1($a0)
    # Line 619
    bne	$a0,$a4,.L0d9e3e30
    # Line 620
    sb	$t9,-2($a3)
.L0d9e3e4c:
    # Line 623
    addu	$a5,$v0,$a5
    # Line 622
    addu	$a1,$v0,$a1
    # Line 618
    beq	$t1,$a6,.L0d9e3df0
    # Line 622
    addu	$a4,$v0,$a4
.L0d9e3e5c:
    addu	$s0,$v0,$s0
    # Line 612
    beqz	$t2,.L0d9e3e4c
    # Line 618
    addiu	$a6,$a6,1
    # Line 612
    move	$a0,$a1
    andi	$at,$v0,0x1
    sra	$t8,$v0,0x1
    beqz	$at,.L0d9e3e20
    move	$a3,$a5
    # Line 619
    addiu	$a0,$a1,-1
    # Line 620
    lbu	$v1,0($a1)
    # Line 619
    addiu	$a3,$a5,1
    b	.L0d9e3e20
    # Line 620
    sb	$v1,-1($a5)
.L0d9e3e90:
    # Line 577
    beqz	$a3,.L0d9e3ec4
    # Line 582
    andi	$a0,$t9,0xff
    and	$a1,$a0,$a3
    lbu	$a4,0($v0)
    beqz	$s2,.L0d9e3f94
    nor	$a0,$a0,$zero
    # Line 589
    addu	$a3,$a4,$a6
    lbu	$a3,0($a3)
    and	$a3,$a0,$a3
    or	$a3,$a1,$a3
    # Line 593
    addu	$a3,$a3,$a6
    lbu	$a3,0($a3)
    sb	$a3,0($v0)
.L0d9e3ec4:
    # Line 537
    addiu	$s3,$s3,1
    beq	$s4,$s3,.L0d9e3ce8
    # Line 598
    addu	$t8,$s5,$t8
.L0d9e3ed0:
    # Line 538
    move	$a1,$t1
    # Line 539
    move	$s1,$t8
    # Line 540
    beqz	$t1,.L0d9e3ec4
    move	$a0,$a2
    b	.L0d9e3f18
    move	$a3,$zero
    nop
    nop
.L0d9e3ef0:
    # Line 566
    addu	$a4,$v0,$a6
    lbu	$a4,0($a4)
    sb	$a4,0($s1)
.L0d9e3efc:
    # Line 568
    slti	$a7,$a1,8
    # Line 574
    move	$a1,$zero
    movz	$a1,$t0,$a7
    # Line 577
    li	$a0,255
    addiu	$v0,$s1,1
    beqz	$a1,.L0d9e3e90
    move	$s1,$v0
.L0d9e3f18:
    # Line 540
    addu	$v0,$a5,$a1
    # Line 576
    addiu	$s0,$s0,1
    # Line 540
    slti	$ra,$v0,8
    # Line 572
    addiu	$t0,$a1,-8
    # Line 552
    lbu	$v1,-1($s0)
    # Line 546
    lbu	$a4,0($s1)
    # Line 540
    beqz	$ra,.L0d9e3f40
    # Line 546
    addu	$at,$v0,$t3
    lbu	$at,272($at)
    and	$a0,$a0,$at
.L0d9e3f40:
    beqz	$s2,.L0d9e3f8c
    # Line 550
    addu	$v0,$a4,$a6
    lbu	$v0,0($v0)
.L0d9e3f4c:
    # Line 559
    sllv	$a7,$v1,$t2
    # Line 557
    srav	$a4,$v1,$a5
    # Line 561
    and	$v1,$a0,$v1
    # Line 559
    andi	$a7,$a7,0xff
    # Line 557
    or	$a4,$a3,$a4
    movn	$a3,$a7,$a5
    # Line 552
    nor	$a7,$a0,$zero
    and	$v0,$a7,$v0
    # Line 557
    andi	$a4,$a4,0xff
    # Line 561
    or	$v1,$v0,$v1
    # Line 557
    and	$a4,$a0,$a4
    or	$v0,$v0,$a4
    # Line 561
    bnez	$s2,.L0d9e3ef0
    movz	$v0,$v1,$a5
    b	.L0d9e3efc
    # Line 568
    sb	$v0,0($s1)
.L0d9e3f8c:
    b	.L0d9e3f4c
    # Line 552
    move	$v0,$a4
.L0d9e3f94:
    # Line 589
    and	$t0,$a0,$a4
    or	$t0,$a1,$t0
    b	.L0d9e3ec4
    # Line 595
    sb	$t0,0($v0)
.L0d9e3fa4:
    # Line 616
    mult	$s3,$s6
    mflo	$t1
    nop
    nop
    mult	$v0,$t1
    mflo	$s2
    beq	$s2,$s5,.L0d9e3ffc
    nop
    # Line 633
    blez	$s4,.L0d9e3ce8
    move	$s3,$zero
    nop
.L0d9e3fd0:
    # Line 635
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s0
    jal	memcpy
    move	$a2,$s2
    # Line 634
    addiu	$s3,$s3,1
    # Line 637
    addu	$s1,$s5,$s1
    # Line 634
    bne	$s4,$s3,.L0d9e3fd0
    # Line 636
    addu	$s0,$s2,$s0
    b	.L0d9e3cec
    # Line 642
    ld	$gp,104($sp)
.L0d9e3ffc:
    # Line 630
    mult	$s2,$s4
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    mflo	$a2
    jal	memcpy
    move	$a1,$s0
    b	.L0d9e3cec
    # Line 642
    ld	$gp,104($sp)
.end __glEmptyImage

.rdata
_lit_3f800000:
    .word 0x3f800000

