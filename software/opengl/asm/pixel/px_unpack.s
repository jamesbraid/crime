# Source: ../pixel/px_unpack.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_unpack.c
# Total Functions: 101

.text

# Function: __glElementsPerGroup
# Declared: Line 29 (Source lines: 31-51)
# Address: 0x0d9b3f00 - 0x0d9b4024 (Size: 292 bytes, Frame: 0)
.globl __glElementsPerGroup
.ent __glElementsPerGroup
__glElementsPerGroup:
    # Line 31
    sltiu	$at,$a0,6406
    li	$a2,0x8000
    bnez	$at,.L0d9b3f50
    sltu	$v1,$a0,$a2
    sltiu	$v0,$a0,6407
    bnez	$v0,.L0d9b3f9c
    li	$a1,6410
    bnez	$v1,.L0d9b3fe0
    sltiu	$v0,$a0,6408
    sltu	$a1,$a2,$a0
    li	$a2,0x80e1
    sltu	$a4,$a2,$a0
    beqz	$a1,.L0d9b3f48
    sltu	$a3,$a0,$a2
    bnez	$a3,.L0d9b4014
    li	$a3,0x80e0
    bnez	$a4,.L0d9b3fac
    nop
.L0d9b3f48:
    # Line 51
    jr	$ra
    # Line 41
    li	$v0,4
.L0d9b3f50:
    # Line 31
    li	$t1,6405
    sltiu	$a5,$a0,6402
    sltiu	$a6,$a0,6403
    sltiu	$t0,$a0,6405
    bnez	$a5,.L0d9b3fb4
    sltiu	$a7,$a0,6404
    li	$t2,6403
    bnez	$a6,.L0d9b3f9c
    nop
    bnez	$a7,.L0d9b3f94
    nop
    bnez	$t0,.L0d9b3f9c
    nop
    bne	$a0,$t1,.L0d9b3fac
    nop
    b	.L0d9b3f9c
    nop
.L0d9b3f94:
    bne	$a0,$t2,.L0d9b3fac
    nop
.L0d9b3f9c:
    # Line 51
    jr	$ra
    # Line 49
    li	$v0,1
.L0d9b3fa4:
    # Line 31
    beq	$a0,$t3,.L0d9b3ffc
    nop
.L0d9b3fac:
    # Line 51
    jr	$ra
    li	$v0,1
.L0d9b3fb4:
    # Line 31
    li	$at,6401
    sltiu	$t8,$a0,6400
    li	$t3,1
    bnez	$t8,.L0d9b3fa4
    sltiu	$t9,$a0,6401
    bnez	$t9,.L0d9b3f9c
    nop
    bne	$a0,$at,.L0d9b3fac
    nop
    b	.L0d9b3f9c
    nop
.L0d9b3fe0:
    li	$a2,6407
    bnez	$v0,.L0d9b4004
    sltiu	$v1,$a0,6409
    bnez	$v1,.L0d9b3f48
    nop
    bne	$a0,$a1,.L0d9b3fac
    nop
.L0d9b3ffc:
    # Line 51
    jr	$ra
    # Line 37
    li	$v0,2
.L0d9b4004:
    # Line 31
    bne	$a0,$a2,.L0d9b3fac
    nop
.L0d9b400c:
    # Line 51
    jr	$ra
    # Line 34
    li	$v0,3
.L0d9b4014:
    # Line 31
    bne	$a0,$a3,.L0d9b3fac
    nop
    b	.L0d9b400c
    nop
.end __glElementsPerGroup

# Function: __glBytesPerElement
# Declared: Line 58 (Source lines: 59-90)
# Address: 0x0d9b4030 - 0x0d9b41cc (Size: 412 bytes, Frame: 0)
.globl __glBytesPerElement
.ent __glBytesPerElement
__glBytesPerElement:
    # Line 60
    li	$a3,0x8035
    # Line 59
    lui	$v0,0xa
    # Line 60
    sltu	$v1,$a0,$a3
    # Line 59
    addiu	$v0,$v0,-12964
    # Line 60
    bnez	$v1,.L0d9b4094
    # Line 59
    addu	$at,$t9,$v0
    # Line 60
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0d9b4118
    li	$a3,0x8365
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d9b4120
    sltu	$a2,$a3,$a0
    beqz	$a2,.L0d9b4184
    li	$a7,0x8366
    li	$a3,0x8367
    sltu	$a4,$a0,$a3
    li	$a6,0x8368
    bnez	$a4,.L0d9b4194
    sltu	$a5,$a3,$a0
    beqz	$a5,.L0d9b4118
    nop
    bne	$a0,$a6,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
    b	.L0d9b41bc
    nop
.L0d9b4094:
    # Line 60
    sltiu	$a7,$a0,6656
    bnez	$a7,.L0d9b40dc
    sltiu	$a3,$a0,5122
    sltiu	$t0,$a0,6657
    li	$a6,0x8032
    bnez	$t0,.L0d9b418c
    # Line 77
    lwc1	$f0,_lit_3e000000
    # Line 60
    li	$a3,0x8033
    sltu	$t1,$a0,$a3
    li	$t3,0x8034
    bnez	$t1,.L0d9b4174
    sltu	$t2,$a3,$a0
    beqz	$t2,.L0d9b4184
    nop
    bne	$a0,$t3,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
.L0d9b40d4:
    jr	$ra
    # Line 69
    lwc1	$f0,_lit_3f000000
.L0d9b40dc:
    # Line 60
    bnez	$a3,.L0d9b4104
    li	$t9,5123
    sltiu	$t8,$a0,5123
    bnez	$t8,.L0d9b41c4
    # Line 80
    lwc1	$f0,_lit_40000000
    # Line 60
    beq	$a0,$t9,.L0d9b41c4
    nop
.L0d9b40f8:
    # Line 90
    lwc1	$f0,_lit_40800000
.L0d9b40fc:
    jr	$ra
    nop
.L0d9b4104:
    # Line 60
    sltiu	$v0,$a0,5121
    bnez	$v0,.L0d9b41a4
    li	$t0,5120
    beqz	$a3,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
.L0d9b4118:
    jr	$ra
    # Line 85
    lwc1	$f0,_lit_3f800000
.L0d9b4120:
    # Line 60
    li	$a3,0x8363
    sltu	$v1,$a0,$a3
    li	$t1,0x8036
    li	$a2,0x8364
    # Line 66
    lwc1	$f0,_lit_3f2aaaab
    # Line 60
    bnez	$v1,.L0d9b4154
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0d9b414c
    nop
    bne	$a0,$a2,.L0d9b40f8
    nop
.L0d9b414c:
    # Line 90
    jr	$ra
    nop
.L0d9b4154:
    # Line 60
    li	$a3,0x8362
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9b41b4
    sltu	$a5,$a3,$a0
    beqz	$a5,.L0d9b417c
    nop
    # Line 90
    jr	$ra
    lwc1	$f0,_lit_40800000
.L0d9b4174:
    # Line 60
    bne	$a0,$a6,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
.L0d9b417c:
    jr	$ra
    # Line 63
    lwc1	$f0,_lit_3eaaaaab
.L0d9b4184:
    # Line 90
    jr	$ra
    # Line 75
    lwc1	$f0,_lit_3f000000
.L0d9b418c:
    # Line 90
    jr	$ra
    nop
.L0d9b4194:
    # Line 60
    bne	$a0,$a7,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
    b	.L0d9b40d4
    nop
.L0d9b41a4:
    # Line 60
    bne	$a0,$t0,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
    b	.L0d9b4118
    nop
.L0d9b41b4:
    # Line 60
    bne	$a0,$t1,.L0d9b40fc
    # Line 90
    lwc1	$f0,_lit_40800000
.L0d9b41bc:
    jr	$ra
    # Line 72
    lwc1	$f0,_lit_3f800000
.L0d9b41c4:
    # Line 90
    jr	$ra
    nop
.end __glBytesPerElement

# Function: __glSpecElementsPerGroup
# Declared: Line 100 (Source lines: 106-139)
# Address: 0x0d9b41d0 - 0x0d9b4394 (Size: 452 bytes, Frame: 0)
.globl __glSpecElementsPerGroup
.ent __glSpecElementsPerGroup
__glSpecElementsPerGroup:
    # Line 106
    li	$a3,0x8363
    sltu	$at,$a1,$a3
    bnez	$at,.L0d9b421c
    sltu	$v0,$a3,$a1
    beqz	$v0,.L0d9b424c
    li	$a3,0x8366
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0d9b42f4
    sltu	$a2,$a3,$a1
    beqz	$a2,.L0d9b424c
    li	$t9,0x8367
    li	$a3,0x8368
    sltu	$a4,$a1,$a3
    bnez	$a4,.L0d9b437c
    sltu	$a5,$a3,$a1
    bnez	$a5,.L0d9b428c
    # Line 124
    li	$a1,0x8000
    b	.L0d9b424c
    nop
.L0d9b421c:
    # Line 106
    li	$a3,0x8035
    sltu	$a6,$a1,$a3
    bnez	$a6,.L0d9b4254
    sltu	$a7,$a3,$a1
    beqz	$a7,.L0d9b424c
    li	$t3,0x8036
    li	$a3,0x8362
    sltu	$t0,$a1,$a3
    bnez	$t0,.L0d9b435c
    sltu	$t1,$a3,$a1
    bnez	$t1,.L0d9b428c
    # Line 124
    li	$a1,0x8000
.L0d9b424c:
    # Line 139
    jr	$ra
    # Line 119
    li	$v0,1
.L0d9b4254:
    # Line 106
    li	$a3,0x8033
    sltu	$t2,$a1,$a3
    li	$t8,0x8034
    bnez	$t2,.L0d9b4280
    sltu	$t3,$a3,$a1
    beqz	$t3,.L0d9b424c
    nop
    bne	$a1,$t8,.L0d9b428c
    # Line 124
    li	$a1,0x8000
    b	.L0d9b424c
    nop
.L0d9b4280:
    # Line 106
    li	$t9,0x8032
    beq	$a1,$t9,.L0d9b424c
    # Line 124
    li	$a1,0x8000
.L0d9b428c:
    sltu	$at,$a0,$a1
    bnez	$at,.L0d9b42cc
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0d9b4318
    li	$t1,0x80e0
    li	$a1,0x80e1
    sltu	$v1,$a0,$a1
    li	$a3,0x81bb
    bnez	$v1,.L0d9b433c
    sltu	$a2,$a1,$a0
    beqz	$a2,.L0d9b4318
    nop
    bne	$a0,$a3,.L0d9b42ec
    nop
    # Line 139
    jr	$ra
    # Line 137
    li	$v0,2
.L0d9b42cc:
    # Line 124
    sltiu	$a1,$a0,6408
    bnez	$a1,.L0d9b4320
    li	$a5,6410
    sltiu	$a4,$a0,6409
    bnez	$a4,.L0d9b4318
    nop
    beq	$a0,$a5,.L0d9b438c
    nop
.L0d9b42ec:
    # Line 139
    jr	$ra
    li	$v0,1
.L0d9b42f4:
    # Line 106
    li	$a3,0x8365
    sltu	$a6,$a1,$a3
    li	$t2,0x8364
    bnez	$a6,.L0d9b434c
    sltu	$a7,$a3,$a1
    bnez	$a7,.L0d9b428c
    # Line 124
    li	$a1,0x8000
    b	.L0d9b424c
    nop
.L0d9b4318:
    # Line 139
    jr	$ra
    # Line 133
    li	$v0,4
.L0d9b4320:
    # Line 124
    sltiu	$t0,$a0,6407
    bnez	$t0,.L0d9b436c
    li	$t8,1
    beqz	$a1,.L0d9b42ec
    nop
.L0d9b4334:
    # Line 139
    jr	$ra
    # Line 127
    li	$v0,3
.L0d9b433c:
    # Line 124
    bne	$a0,$t1,.L0d9b42ec
    nop
    b	.L0d9b4334
    nop
.L0d9b434c:
    # Line 106
    bne	$a1,$t2,.L0d9b428c
    # Line 124
    li	$a1,0x8000
    b	.L0d9b424c
    nop
.L0d9b435c:
    # Line 106
    bne	$a1,$t3,.L0d9b428c
    # Line 124
    li	$a1,0x8000
    b	.L0d9b424c
    nop
.L0d9b436c:
    bne	$a0,$t8,.L0d9b42ec
    nop
    # Line 139
    jr	$ra
    # Line 135
    li	$v0,2
.L0d9b437c:
    # Line 106
    bne	$a1,$t9,.L0d9b428c
    # Line 124
    li	$a1,0x8000
    b	.L0d9b424c
    nop
.L0d9b438c:
    # Line 139
    jr	$ra
    # Line 129
    li	$v0,2
.end __glSpecElementsPerGroup

# Function: __glSpecBytesPerElement
# Declared: Line 148 (Source lines: 150-176)
# Address: 0x0d9b43a0 - 0x0d9b4564 (Size: 452 bytes, Frame: 0)
.globl __glSpecBytesPerElement
.ent __glSpecBytesPerElement
__glSpecBytesPerElement:
    # Line 150
    li	$a2,0x8034
    sltu	$at,$a0,$a2
    bnez	$at,.L0d9b43f8
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0d9b4454
    li	$a2,0x8364
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0d9b4498
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0d9b4454
    li	$t3,0x8365
    li	$a2,0x8367
    sltu	$a3,$a0,$a2
    li	$a5,0x8368
    bnez	$a3,.L0d9b4438
    sltu	$a4,$a2,$a0
    beqz	$a4,.L0d9b44e0
    nop
    bne	$a0,$a5,.L0d9b4464
    nop
    b	.L0d9b44e0
    nop
.L0d9b43f8:
    sltiu	$a2,$a0,5125
    bnez	$a2,.L0d9b446c
    sltiu	$a3,$a0,5122
    sltiu	$a6,$a0,5126
    bnez	$a6,.L0d9b44e0
    li	$a2,0x8032
    sltu	$a7,$a0,$a2
    bnez	$a7,.L0d9b4504
    sltiu	$a6,$a0,6656
    sltu	$t0,$a2,$a0
    beqz	$t0,.L0d9b44fc
    li	$t1,0x8033
    bne	$a0,$t1,.L0d9b4464
    nop
    b	.L0d9b4454
    nop
.L0d9b4438:
    li	$a2,0x8366
    sltu	$t2,$a0,$a2
    bnez	$t2,.L0d9b4554
    nop
    sltu	$t3,$a2,$a0
    bnez	$t3,.L0d9b4464
    nop
.L0d9b4454:
    # Line 176
    jr	$ra
    # Line 159
    li	$v0,2
.L0d9b445c:
    # Line 150
    beq	$a0,$t8,.L0d9b44fc
    nop
.L0d9b4464:
    # Line 176
    jr	$ra
    move	$v0,$zero
.L0d9b446c:
    # Line 150
    bnez	$a3,.L0d9b44e8
    sltiu	$at,$a0,5124
    sltiu	$t9,$a0,5123
    bnez	$t9,.L0d9b4454
    li	$t2,5123
    bnez	$at,.L0d9b4544
    nop
    beqz	$a2,.L0d9b4464
    nop
    b	.L0d9b44e0
    nop
.L0d9b4498:
    li	$a2,0x8362
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d9b44c4
    li	$a1,0x8363
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0d9b44fc
    nop
    bne	$a0,$a1,.L0d9b4464
    nop
    b	.L0d9b4454
    nop
.L0d9b44c4:
    li	$a2,0x8036
    sltu	$a3,$a0,$a2
    li	$t0,0x8035
    bnez	$a3,.L0d9b4524
    sltu	$a4,$a2,$a0
    bnez	$a4,.L0d9b4464
    nop
.L0d9b44e0:
    # Line 176
    jr	$ra
    # Line 172
    li	$v0,4
.L0d9b44e8:
    # Line 150
    sltiu	$a5,$a0,5121
    bnez	$a5,.L0d9b445c
    li	$t8,5120
    beqz	$a3,.L0d9b4464
    nop
.L0d9b44fc:
    # Line 176
    jr	$ra
    # Line 164
    li	$v0,1
.L0d9b4504:
    # Line 150
    sltiu	$a7,$a0,6657
    # Line 174
    li	$v0,1
    # Line 150
    bnez	$a6,.L0d9b4534
    li	$t1,5126
    beqz	$a7,.L0d9b4464
    nop
    # Line 176
    jr	$ra
    nop
.L0d9b4524:
    # Line 150
    bne	$a0,$t0,.L0d9b4464
    nop
    b	.L0d9b44e0
    nop
.L0d9b4534:
    bne	$a0,$t1,.L0d9b4464
    nop
    b	.L0d9b44e0
    nop
.L0d9b4544:
    bne	$a0,$t2,.L0d9b4464
    nop
    b	.L0d9b4454
    nop
.L0d9b4554:
    bne	$a0,$t3,.L0d9b4464
    nop
    b	.L0d9b4454
    nop
.end __glSpecBytesPerElement

# Function: __glInitUnpacker
# Declared: Line 181 (Source lines: 182-248)
# Address: 0x0d9b4570 - 0x0d9b4754 (Size: 484 bytes, Frame: 224)
.globl __glInitUnpacker
.ent __glInitUnpacker
__glInitUnpacker:
    # Line 203
    lw	$a0,0($a1)
    # Line 199
    lw	$v0,52($a1)
    # Line 182
    addiu	$sp,$sp,-96
    sd	$s3,72($sp)
    # Line 199
    sd	$v0,48($sp)
    sd	$s7,80($sp)
    # Line 182
    sd	$s2,0($sp)
    # Line 201
    lw	$s2,40($a1)
    # Line 182
    sd	$s5,16($sp)
    # Line 200
    lw	$s5,68($a1)
    # Line 182
    sd	$s4,8($sp)
    # Line 198
    lw	$s4,48($a1)
    # Line 182
    sd	$s8,32($sp)
    sd	$s0,64($sp)
    lui	$at,0xa
    sd	$s1,24($sp)
    addiu	$at,$at,-14308
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 203
    # lw $t9, -27540($gp) # &__glSpecElementsPerGroup
    # Line 196
    lw	$s1,4($a1)
    # Line 182
    move	$s0,$a1
    # Line 197
    lw	$s8,8($a1)
    # Line 182
    sd	$ra,40($sp)
    # Line 203
    bal __glSpecElementsPerGroup
    move	$a1,$s1
    # Line 206
    # lw $t9, -27536($gp) # &__glSpecBytesPerElement
    # Line 203
    move	$s3,$v0
    # Line 206
    move	$a0,$s1
    bal __glSpecBytesPerElement
    # Line 204
    lw	$s7,60($s0)
    # Line 210
    mult	$v0,$s3
    mflo	$a3
    nop
    nop
    mult	$a3,$s7
    # Line 212
    mtc1	$s5,$f1
    # Line 210
    li	$a6,6656
    # Line 212
    addiu	$t3,$s7,7
    addiu	$t1,$s7,14
    slt	$t2,$t3,$zero
    xor	$t0,$a6,$s1
    movz	$t1,$t3,$t2
    sra	$t1,$t1,0x3
    # Line 210
    mflo	$a1
    movz	$a1,$t1,$t0
    # Line 212
    mtc1	$a1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a7,$f0
    mult	$a7,$s5
    # Line 218
    slti	$t8,$v0,2
    # Line 212
    teq	$s5,$zero,0x7
    ld	$ra,40($sp)
    # Line 218
    andi	$a2,$s4,0x7
    # Line 207
    li	$a7,1
    ld	$a4,48($sp)
    xor	$a5,$v0,$a7
    # Line 212
    mflo	$v1
    # Line 248
    ld	$gp,56($sp)
    # Line 207
    sltiu	$a5,$a5,1
    # Line 212
    subu	$v1,$a1,$v1
    ld	$s7,80($sp)
    # Line 207
    movn	$s2,$zero,$a5
    # Line 216
    subu	$a0,$s5,$v1
    ld	$s5,16($sp)
    addu	$a0,$a1,$a0
    # Line 218
    beqz	$a2,.L0d9b4694
    movz	$a0,$a1,$v1
    beq	$a6,$s1,.L0d9b46a4
    nop
.L0d9b4694:
    beqz	$s2,.L0d9b46ac
    nop
    bnez	$t8,.L0d9b46ac
    nop
.L0d9b46a4:
    # Line 220
    b	.L0d9b46b0
    sb	$zero,72($s0)
.L0d9b46ac:
    # Line 222
    sb	$a7,72($s0)
.L0d9b46b0:
    mult	$a4,$a0
    mflo	$a5
    ld	$s2,0($sp)
    beq	$a6,$s1,.L0d9b4724
    addu	$a5,$s8,$a5
    # Line 230
    mult	$a3,$s4
    ld	$s1,24($sp)
    ld	$s8,32($sp)
    mflo	$a6
    addu	$a6,$a5,$a6
    sw	$a6,12($s0)
.L0d9b46dc:
    ld	$s4,8($sp)
    # Line 247
    sb	$zero,430($s0)
    # Line 246
    sb	$zero,429($s0)
    # Line 245
    sb	$a7,428($s0)
    # Line 244
    sb	$zero,427($s0)
    # Line 243
    sb	$zero,426($s0)
    # Line 242
    sb	$a7,425($s0)
    # Line 241
    sb	$zero,424($s0)
    # Line 238
    sw	$zero,24($s0)
    # Line 237
    sw	$v0,36($s0)
    # Line 236
    sw	$s3,32($s0)
    # Line 235
    sw	$s3,28($s0)
    # Line 234
    sw	$a3,20($s0)
    # Line 233
    sw	$a0,16($s0)
    # Line 248
    ld	$s0,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9b4724:
    # Line 226
    addiu	$t0,$s4,7
    slt	$t1,$s4,$zero
    ld	$s1,24($sp)
    movz	$t0,$s4,$t1
    ld	$s8,32($sp)
    sra	$t0,$t0,0x3
    addu	$t1,$a5,$t0
    sw	$t1,12($s0)
    sll	$t0,$t0,0x3
    subu	$t0,$s4,$t0
    # Line 228
    b	.L0d9b46dc
    sw	$t0,76($s0)
.end __glInitUnpacker

# Function: __glInitUnpacker3D
# Declared: Line 250 (Source lines: 251-263)
# Address: 0x0d9b4760 - 0x0d9b47d0 (Size: 112 bytes, Frame: 32)
.globl __glInitUnpacker3D
.ent __glInitUnpacker3D
__glInitUnpacker3D:
    # Line 251
    lui	$at,0xa
    addiu	$sp,$sp,-32
    addiu	$at,$at,-14804
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 255
    # lw $t9, -27532($gp) # &__glInitUnpacker
    # Line 251
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 255
    bal __glInitUnpacker
    # Line 251
    move	$s8,$a1
    # Line 258
    lw	$a3,64($s8)
    lw	$a2,16($s8)
    mult	$a2,$a3
    # Line 260
    lw	$a1,56($s8)
    # Line 258
    mflo	$a0
    nop
    nop
    # Line 260
    mult	$a1,$a0
    # Line 263
    ld	$gp,16($sp)
    # Line 260
    lw	$v0,12($s8)
    ld	$ra,0($sp)
    # Line 262
    sw	$a0,24($s8)
    # Line 260
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,12($s8)
    # Line 263
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitUnpacker3D

# Function: __glSpanUnpackBitmap
# Declared: Line 270 (Source lines: 272-590)
# Address: 0x0d9b47d0 - 0x0d9b598c (Size: 4540 bytes, Frame: 0)
.globl __glSpanUnpackBitmap
.ent __glSpanUnpackBitmap
__glSpanUnpackBitmap:
    # Line 298
    lwc1	$f4,3544($a0)
    # Line 295
    lbu	$t1,0($a2)
    # Line 300
    li	$t8,1
    lw	$v1,44($a1)
    # Line 286
    move	$a7,$a3
    # Line 293
    lw	$a6,168($a1)
    # Line 272
    lui	$v0,0xa
    # Line 291
    lw	$t3,76($a1)
    # Line 285
    move	$t2,$a2
    # Line 272
    addiu	$v0,$v0,-14916
    # Line 287
    lw	$t0,312($a1)
    # Line 300
    beqz	$v1,.L0d9b4c60
    # Line 272
    addu	$at,$t9,$v0
    # Line 300
    la	$a4,sub_0da40000
    sltiu	$t9,$t3,8
    addiu	$a4,$a4,18384
    sll	$a5,$t3,0x2
    beqz	$t9,.L0d9b4828
    addu	$a4,$a4,$a5
    lw	$a5,0($a4)
    jr	$a5
    move	$a4,$t8
.L0d9b4828:
    move	$a4,$t8
.L0d9b482c:
    # Line 356
    slti	$t1,$a6,8
.L0d9b4830:
    bnez	$t1,.L0d9b48ac
    addiu	$a2,$a6,7
    slt	$a3,$a6,$zero
    movz	$a2,$a6,$a3
    sra	$a2,$a2,0x3
    andi	$t3,$a2,0x1
    beqz	$t3,.L0d9b48a0
    mtc1	$zero,$f5
    # Line 360
    addiu	$a4,$a4,-1
    # Line 358
    addiu	$t2,$t2,1
    # Line 359
    addiu	$a6,$a6,-8
    # Line 360
    beqz	$a4,.L0d9b524c
    # Line 357
    lbu	$t1,-1($t2)
.L0d9b4864:
    # Line 365
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5268
.L0d9b486c:
    # Line 370
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5284
.L0d9b4874:
    # Line 375
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b52a0
.L0d9b487c:
    # Line 380
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b52bc
.L0d9b4884:
    # Line 385
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b52d8
.L0d9b488c:
    # Line 390
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b52f4
.L0d9b4894:
    # Line 395
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5310
    # Line 396
    andi	$a1,$t1,0x80
.L0d9b48a0:
    sra	$a5,$a2,0x1
    bnezl	$a5,.L0d9b49ec
    # Line 360
    addiu	$a4,$a4,-1
.L0d9b48ac:
    # Line 398
    beqz	$a6,.L0d9b492c
    # Line 403
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4c84
    # Line 402
    lbu	$t1,0($t2)
.L0d9b48bc:
    # Line 406
    beq	$a6,$t8,.L0d9b492c
    # Line 409
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4ca0
.L0d9b48c8:
    # Line 412
    li	$t2,2
    beq	$a6,$t2,.L0d9b492c
    # Line 415
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4cbc
.L0d9b48d8:
    # Line 418
    li	$t3,3
    beq	$a6,$t3,.L0d9b492c
    # Line 421
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4cd8
.L0d9b48e8:
    # Line 424
    li	$t9,4
    beq	$a6,$t9,.L0d9b492c
    # Line 427
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4cf4
.L0d9b48f8:
    # Line 430
    li	$v0,5
    beq	$a6,$v0,.L0d9b492c
    # Line 433
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4d10
.L0d9b4908:
    # Line 436
    li	$v1,6
    beq	$a6,$v1,.L0d9b492c
    nop
    # Line 439
    bne	$a4,$t8,.L0d9b492c
    andi	$a0,$t1,0x40
    beqz	$a0,.L0d9b5370
    # Line 442
    mtc1	$zero,$f0
    # Line 590
    jr	$ra
    # Line 441
    swc1	$f4,0($a7)
.L0d9b492c:
    # Line 590
    jr	$ra
    nop
.L0d9b4934:
    # Line 372
    addiu	$a7,$a7,4
    swc1	$f4,-4($a7)
    nop
.L0d9b4940:
    # Line 375
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4a68
    # Line 376
    andi	$t3,$t1,0x8
.L0d9b494c:
    # Line 380
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4a80
    # Line 381
    andi	$t9,$t1,0x10
.L0d9b4958:
    # Line 385
    addiu	$a4,$a4,-1
    # Line 358
    addiu	$t2,$t2,1
    # Line 385
    beqz	$a4,.L0d9b4a98
    # Line 359
    addiu	$a6,$a6,-8
.L0d9b4968:
    # Line 390
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4ab4
    # Line 391
    andi	$v1,$t1,0x40
.L0d9b4974:
    # Line 395
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4acc
    # Line 396
    andi	$a0,$t1,0x80
.L0d9b4980:
    # Line 360
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4ae4
    # Line 357
    lbu	$t1,-1($t2)
.L0d9b498c:
    # Line 365
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b00
    # Line 398
    slti	$a1,$a6,8
.L0d9b4998:
    # Line 370
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b1c
    # Line 371
    andi	$a3,$t1,0x4
.L0d9b49a4:
    # Line 375
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b34
    # Line 376
    andi	$a5,$t1,0x8
.L0d9b49b0:
    # Line 380
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b4c
    # Line 381
    andi	$t3,$t1,0x10
.L0d9b49bc:
    # Line 385
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b64
    # Line 386
    andi	$t9,$t1,0x20
.L0d9b49c8:
    # Line 390
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b7c
    # Line 391
    andi	$v0,$t1,0x40
.L0d9b49d4:
    # Line 395
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4b94
    # Line 396
    andi	$v1,$t1,0x80
.L0d9b49e0:
    # Line 398
    bnez	$a1,.L0d9b48ac
    nop
    # Line 360
    addiu	$a4,$a4,-1
.L0d9b49ec:
    # Line 358
    addiu	$t2,$t2,1
    # Line 359
    addiu	$a6,$a6,-8
    # Line 360
    beqz	$a4,.L0d9b4a30
    # Line 357
    lbu	$t1,-1($t2)
.L0d9b49fc:
    # Line 365
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4a4c
.L0d9b4a04:
    # Line 370
    addiu	$a4,$a4,-1
    bnez	$a4,.L0d9b4940
    # Line 371
    andi	$a2,$t1,0x4
    lh	$a4,0($t0)
    bnez	$a2,.L0d9b4934
    addiu	$t0,$t0,2
    # Line 373
    addiu	$a7,$a7,4
    b	.L0d9b4940
    swc1	$f5,-4($a7)
    nop
    nop
.L0d9b4a30:
    # Line 361
    andi	$a3,$t1,0x1
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b4bac
    addiu	$t0,$t0,2
    # Line 362
    addiu	$a7,$a7,4
    b	.L0d9b49fc
    swc1	$f4,-4($a7)
.L0d9b4a4c:
    # Line 366
    andi	$a5,$t1,0x2
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b4bb8
    addiu	$t0,$t0,2
    # Line 367
    addiu	$a7,$a7,4
    b	.L0d9b4a04
    swc1	$f4,-4($a7)
.L0d9b4a68:
    # Line 376
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b4bc4
    addiu	$t0,$t0,2
    # Line 377
    addiu	$a7,$a7,4
    b	.L0d9b494c
    swc1	$f4,-4($a7)
.L0d9b4a80:
    # Line 381
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b4bd0
    addiu	$t0,$t0,2
    # Line 382
    addiu	$a7,$a7,4
    b	.L0d9b4958
    swc1	$f4,-4($a7)
.L0d9b4a98:
    # Line 386
    andi	$v0,$t1,0x20
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b4bdc
    addiu	$t0,$t0,2
    # Line 387
    addiu	$a7,$a7,4
    b	.L0d9b4968
    swc1	$f4,-4($a7)
.L0d9b4ab4:
    # Line 391
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b4be8
    addiu	$t0,$t0,2
    # Line 392
    addiu	$a7,$a7,4
    b	.L0d9b4974
    swc1	$f4,-4($a7)
.L0d9b4acc:
    # Line 396
    lh	$a4,0($t0)
    beqz	$a0,.L0d9b4bf4
    addiu	$t0,$t0,2
    # Line 397
    addiu	$a7,$a7,4
    b	.L0d9b4980
    swc1	$f4,-4($a7)
.L0d9b4ae4:
    # Line 361
    andi	$a1,$t1,0x1
    lh	$a4,0($t0)
    beqz	$a1,.L0d9b4c00
    addiu	$t0,$t0,2
    # Line 362
    addiu	$a7,$a7,4
    b	.L0d9b498c
    swc1	$f4,-4($a7)
.L0d9b4b00:
    # Line 366
    andi	$a2,$t1,0x2
    lh	$a4,0($t0)
    beqz	$a2,.L0d9b4c0c
    addiu	$t0,$t0,2
    # Line 367
    addiu	$a7,$a7,4
    b	.L0d9b4998
    swc1	$f4,-4($a7)
.L0d9b4b1c:
    # Line 371
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b4c18
    addiu	$t0,$t0,2
    # Line 372
    addiu	$a7,$a7,4
    b	.L0d9b49a4
    swc1	$f4,-4($a7)
.L0d9b4b34:
    # Line 376
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b4c24
    addiu	$t0,$t0,2
    # Line 377
    addiu	$a7,$a7,4
    b	.L0d9b49b0
    swc1	$f4,-4($a7)
.L0d9b4b4c:
    # Line 381
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b4c30
    addiu	$t0,$t0,2
    # Line 382
    addiu	$a7,$a7,4
    b	.L0d9b49bc
    swc1	$f4,-4($a7)
.L0d9b4b64:
    # Line 386
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b4c3c
    addiu	$t0,$t0,2
    # Line 387
    addiu	$a7,$a7,4
    b	.L0d9b49c8
    swc1	$f4,-4($a7)
.L0d9b4b7c:
    # Line 391
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b4c48
    addiu	$t0,$t0,2
    # Line 392
    addiu	$a7,$a7,4
    b	.L0d9b49d4
    swc1	$f4,-4($a7)
.L0d9b4b94:
    # Line 396
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b4c54
    addiu	$t0,$t0,2
    # Line 397
    addiu	$a7,$a7,4
    b	.L0d9b49e0
    swc1	$f4,-4($a7)
.L0d9b4bac:
    # Line 363
    addiu	$a7,$a7,4
    b	.L0d9b49fc
    swc1	$f5,-4($a7)
.L0d9b4bb8:
    # Line 368
    addiu	$a7,$a7,4
    b	.L0d9b4a04
    swc1	$f5,-4($a7)
.L0d9b4bc4:
    # Line 378
    addiu	$a7,$a7,4
    b	.L0d9b494c
    swc1	$f5,-4($a7)
.L0d9b4bd0:
    # Line 383
    addiu	$a7,$a7,4
    b	.L0d9b4958
    swc1	$f5,-4($a7)
.L0d9b4bdc:
    # Line 388
    addiu	$a7,$a7,4
    b	.L0d9b4968
    swc1	$f5,-4($a7)
.L0d9b4be8:
    # Line 393
    addiu	$a7,$a7,4
    b	.L0d9b4974
    swc1	$f5,-4($a7)
.L0d9b4bf4:
    # Line 398
    addiu	$a7,$a7,4
    b	.L0d9b4980
    swc1	$f5,-4($a7)
.L0d9b4c00:
    # Line 363
    addiu	$a7,$a7,4
    b	.L0d9b498c
    swc1	$f5,-4($a7)
.L0d9b4c0c:
    # Line 368
    addiu	$a7,$a7,4
    b	.L0d9b4998
    swc1	$f5,-4($a7)
.L0d9b4c18:
    # Line 373
    addiu	$a7,$a7,4
    b	.L0d9b49a4
    swc1	$f5,-4($a7)
.L0d9b4c24:
    # Line 378
    addiu	$a7,$a7,4
    b	.L0d9b49b0
    swc1	$f5,-4($a7)
.L0d9b4c30:
    # Line 383
    addiu	$a7,$a7,4
    b	.L0d9b49bc
    swc1	$f5,-4($a7)
.L0d9b4c3c:
    # Line 388
    addiu	$a7,$a7,4
    b	.L0d9b49c8
    swc1	$f5,-4($a7)
.L0d9b4c48:
    # Line 393
    addiu	$a7,$a7,4
    b	.L0d9b49d4
    swc1	$f5,-4($a7)
.L0d9b4c54:
    # Line 398
    addiu	$a7,$a7,4
    b	.L0d9b49e0
    swc1	$f5,-4($a7)
.L0d9b4c60:
    # Line 442
    la	$a4,sub_0da40000
    sltiu	$t9,$t3,8
    addiu	$a4,$a4,18416
    sll	$a5,$t3,0x2
    beqz	$t9,.L0d9b4d28
    addu	$a4,$a4,$a5
    lw	$a5,0($a4)
    jr	$a5
    move	$a4,$t8
.L0d9b4c84:
    # Line 404
    andi	$t2,$t1,0x1
    lh	$a4,0($t0)
    beqz	$t2,.L0d9b53fc
    addiu	$t0,$t0,2
    # Line 405
    addiu	$a7,$a7,4
    b	.L0d9b48bc
    swc1	$f4,-4($a7)
.L0d9b4ca0:
    # Line 410
    andi	$t3,$t1,0x2
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b542c
    addiu	$t0,$t0,2
    # Line 411
    addiu	$a7,$a7,4
    b	.L0d9b48c8
    swc1	$f4,-4($a7)
.L0d9b4cbc:
    # Line 416
    andi	$t9,$t1,0x4
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b545c
    addiu	$t0,$t0,2
    # Line 417
    addiu	$a7,$a7,4
    b	.L0d9b48d8
    swc1	$f4,-4($a7)
.L0d9b4cd8:
    # Line 422
    andi	$v0,$t1,0x8
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b5488
    addiu	$t0,$t0,2
    # Line 423
    addiu	$a7,$a7,4
    b	.L0d9b48e8
    swc1	$f4,-4($a7)
.L0d9b4cf4:
    # Line 428
    andi	$v1,$t1,0x10
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b54b4
    addiu	$t0,$t0,2
    # Line 429
    addiu	$a7,$a7,4
    b	.L0d9b48f8
    swc1	$f4,-4($a7)
.L0d9b4d10:
    # Line 434
    andi	$a0,$t1,0x20
    beqz	$a0,.L0d9b54c8
    lh	$a4,0($t0)
    # Line 435
    addiu	$a7,$a7,4
    b	.L0d9b4908
    swc1	$f4,-4($a7)
.L0d9b4d28:
    move	$a4,$t8
.L0d9b4d2c:
    # Line 500
    slti	$a1,$a6,8
.L0d9b4d30:
    bnez	$a1,.L0d9b4dac
    addiu	$a2,$a6,7
    slt	$a3,$a6,$zero
    movz	$a2,$a6,$a3
    sra	$a2,$a2,0x3
    andi	$a3,$a2,0x1
    beqz	$a3,.L0d9b4da0
    mtc1	$zero,$f5
    # Line 504
    addiu	$a4,$a4,-1
    # Line 502
    addiu	$t2,$t2,1
    # Line 503
    addiu	$a6,$a6,-8
    # Line 504
    beqz	$a4,.L0d9b55cc
    # Line 501
    lbu	$t1,-1($t2)
.L0d9b4d64:
    # Line 509
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b55e8
.L0d9b4d6c:
    # Line 514
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5604
.L0d9b4d74:
    # Line 519
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5620
.L0d9b4d7c:
    # Line 524
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b563c
.L0d9b4d84:
    # Line 529
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5658
.L0d9b4d8c:
    # Line 534
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5674
.L0d9b4d94:
    # Line 539
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5690
    # Line 540
    andi	$t3,$t1,0x1
.L0d9b4da0:
    sra	$a5,$a2,0x1
    bnezl	$a5,.L0d9b4f04
    # Line 504
    addiu	$a4,$a4,-1
.L0d9b4dac:
    # Line 542
    beqz	$a6,.L0d9b492c
    # Line 547
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5390
    # Line 546
    lbu	$t1,0($t2)
.L0d9b4dbc:
    # Line 550
    beq	$a6,$t8,.L0d9b492c
    # Line 553
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b53ac
.L0d9b4dc8:
    # Line 556
    li	$t2,2
    beq	$a6,$t2,.L0d9b492c
    # Line 559
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b53e0
.L0d9b4dd8:
    # Line 562
    li	$t3,3
    beq	$a6,$t3,.L0d9b492c
    # Line 565
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5410
.L0d9b4de8:
    # Line 568
    li	$t9,4
    beq	$a6,$t9,.L0d9b492c
    # Line 571
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5440
.L0d9b4df8:
    # Line 574
    li	$v0,5
    beq	$a6,$v0,.L0d9b492c
    # Line 577
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5470
.L0d9b4e08:
    # Line 580
    li	$v1,6
    beq	$a6,$v1,.L0d9b492c
    nop
    # Line 583
    bne	$a4,$t8,.L0d9b492c
    andi	$a0,$t1,0x2
    beqz	$a0,.L0d9b578c
    # Line 586
    mtc1	$zero,$f11
    # Line 590
    jr	$ra
    # Line 585
    swc1	$f4,0($a7)
.L0d9b4e2c:
    # Line 506
    addiu	$a7,$a7,4
    swc1	$f4,-4($a7)
    nop
    nop
    nop
.L0d9b4e40:
    # Line 509
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b508c
    # Line 510
    andi	$v1,$t1,0x40
.L0d9b4e4c:
    # Line 514
    addiu	$a4,$a4,-1
    # Line 502
    addiu	$t2,$t2,1
    # Line 514
    beqz	$a4,.L0d9b4f30
    # Line 503
    addiu	$a6,$a6,-8
.L0d9b4e5c:
    # Line 519
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4f4c
    # Line 520
    andi	$a5,$t1,0x10
.L0d9b4e68:
    # Line 524
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4f64
    # Line 525
    andi	$t3,$t1,0x8
.L0d9b4e74:
    # Line 529
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4f7c
    # Line 530
    andi	$t9,$t1,0x4
.L0d9b4e80:
    # Line 534
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4f94
    # Line 535
    andi	$v0,$t1,0x2
.L0d9b4e8c:
    # Line 539
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4fac
    # Line 540
    andi	$v1,$t1,0x1
.L0d9b4e98:
    # Line 504
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4fc4
    # Line 501
    lbu	$t1,-1($t2)
.L0d9b4ea4:
    # Line 509
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4fe0
    # Line 510
    andi	$a1,$t1,0x40
.L0d9b4eb0:
    # Line 514
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b4ff8
    # Line 542
    slti	$a1,$a6,8
.L0d9b4ebc:
    # Line 519
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5014
    # Line 520
    andi	$a3,$t1,0x10
.L0d9b4ec8:
    # Line 524
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b502c
    # Line 525
    andi	$a5,$t1,0x8
.L0d9b4ed4:
    # Line 529
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5044
    # Line 530
    andi	$t3,$t1,0x4
.L0d9b4ee0:
    # Line 534
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b505c
    # Line 535
    andi	$t9,$t1,0x2
.L0d9b4eec:
    # Line 539
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5074
    # Line 540
    andi	$v0,$t1,0x1
.L0d9b4ef8:
    # Line 542
    bnez	$a1,.L0d9b4dac
    nop
    # Line 504
    addiu	$a4,$a4,-1
.L0d9b4f04:
    # Line 502
    addiu	$t2,$t2,1
    # Line 503
    addiu	$a6,$a6,-8
    # Line 504
    bnez	$a4,.L0d9b4e40
    # Line 501
    lbu	$t1,-1($t2)
    # Line 505
    andi	$a2,$t1,0x80
    lh	$a4,0($t0)
    bnez	$a2,.L0d9b4e2c
    addiu	$t0,$t0,2
    # Line 507
    addiu	$a7,$a7,4
    b	.L0d9b4e40
    swc1	$f5,-4($a7)
.L0d9b4f30:
    # Line 515
    andi	$a3,$t1,0x20
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b50a4
    addiu	$t0,$t0,2
    # Line 516
    addiu	$a7,$a7,4
    b	.L0d9b4e5c
    swc1	$f4,-4($a7)
.L0d9b4f4c:
    # Line 520
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b50b0
    addiu	$t0,$t0,2
    # Line 521
    addiu	$a7,$a7,4
    b	.L0d9b4e68
    swc1	$f4,-4($a7)
.L0d9b4f64:
    # Line 525
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b50bc
    addiu	$t0,$t0,2
    # Line 526
    addiu	$a7,$a7,4
    b	.L0d9b4e74
    swc1	$f4,-4($a7)
.L0d9b4f7c:
    # Line 530
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b50c8
    addiu	$t0,$t0,2
    # Line 531
    addiu	$a7,$a7,4
    b	.L0d9b4e80
    swc1	$f4,-4($a7)
.L0d9b4f94:
    # Line 535
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b50d4
    addiu	$t0,$t0,2
    # Line 536
    addiu	$a7,$a7,4
    b	.L0d9b4e8c
    swc1	$f4,-4($a7)
.L0d9b4fac:
    # Line 540
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b50e0
    addiu	$t0,$t0,2
    # Line 541
    addiu	$a7,$a7,4
    b	.L0d9b4e98
    swc1	$f4,-4($a7)
.L0d9b4fc4:
    # Line 505
    andi	$a0,$t1,0x80
    lh	$a4,0($t0)
    beqz	$a0,.L0d9b50ec
    addiu	$t0,$t0,2
    # Line 506
    addiu	$a7,$a7,4
    b	.L0d9b4ea4
    swc1	$f4,-4($a7)
.L0d9b4fe0:
    # Line 510
    lh	$a4,0($t0)
    beqz	$a1,.L0d9b50f8
    addiu	$t0,$t0,2
    # Line 511
    addiu	$a7,$a7,4
    b	.L0d9b4eb0
    swc1	$f4,-4($a7)
.L0d9b4ff8:
    # Line 515
    andi	$a2,$t1,0x20
    lh	$a4,0($t0)
    beqz	$a2,.L0d9b5104
    addiu	$t0,$t0,2
    # Line 516
    addiu	$a7,$a7,4
    b	.L0d9b4ebc
    swc1	$f4,-4($a7)
.L0d9b5014:
    # Line 520
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b5110
    addiu	$t0,$t0,2
    # Line 521
    addiu	$a7,$a7,4
    b	.L0d9b4ec8
    swc1	$f4,-4($a7)
.L0d9b502c:
    # Line 525
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b511c
    addiu	$t0,$t0,2
    # Line 526
    addiu	$a7,$a7,4
    b	.L0d9b4ed4
    swc1	$f4,-4($a7)
.L0d9b5044:
    # Line 530
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b5128
    addiu	$t0,$t0,2
    # Line 531
    addiu	$a7,$a7,4
    b	.L0d9b4ee0
    swc1	$f4,-4($a7)
.L0d9b505c:
    # Line 535
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b5134
    addiu	$t0,$t0,2
    # Line 536
    addiu	$a7,$a7,4
    b	.L0d9b4eec
    swc1	$f4,-4($a7)
.L0d9b5074:
    # Line 540
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b5140
    addiu	$t0,$t0,2
    # Line 541
    addiu	$a7,$a7,4
    b	.L0d9b4ef8
    swc1	$f4,-4($a7)
.L0d9b508c:
    # Line 510
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b514c
    addiu	$t0,$t0,2
    # Line 511
    addiu	$a7,$a7,4
    b	.L0d9b4e4c
    swc1	$f4,-4($a7)
.L0d9b50a4:
    # Line 517
    addiu	$a7,$a7,4
    b	.L0d9b4e5c
    swc1	$f5,-4($a7)
.L0d9b50b0:
    # Line 522
    addiu	$a7,$a7,4
    b	.L0d9b4e68
    swc1	$f5,-4($a7)
.L0d9b50bc:
    # Line 527
    addiu	$a7,$a7,4
    b	.L0d9b4e74
    swc1	$f5,-4($a7)
.L0d9b50c8:
    # Line 532
    addiu	$a7,$a7,4
    b	.L0d9b4e80
    swc1	$f5,-4($a7)
.L0d9b50d4:
    # Line 537
    addiu	$a7,$a7,4
    b	.L0d9b4e8c
    swc1	$f5,-4($a7)
.L0d9b50e0:
    # Line 542
    addiu	$a7,$a7,4
    b	.L0d9b4e98
    swc1	$f5,-4($a7)
.L0d9b50ec:
    # Line 507
    addiu	$a7,$a7,4
    b	.L0d9b4ea4
    swc1	$f5,-4($a7)
.L0d9b50f8:
    # Line 512
    addiu	$a7,$a7,4
    b	.L0d9b4eb0
    swc1	$f5,-4($a7)
.L0d9b5104:
    # Line 517
    addiu	$a7,$a7,4
    b	.L0d9b4ebc
    swc1	$f5,-4($a7)
.L0d9b5110:
    # Line 522
    addiu	$a7,$a7,4
    b	.L0d9b4ec8
    swc1	$f5,-4($a7)
.L0d9b511c:
    # Line 527
    addiu	$a7,$a7,4
    b	.L0d9b4ed4
    swc1	$f5,-4($a7)
.L0d9b5128:
    # Line 532
    addiu	$a7,$a7,4
    b	.L0d9b4ee0
    swc1	$f5,-4($a7)
.L0d9b5134:
    # Line 537
    addiu	$a7,$a7,4
    b	.L0d9b4eec
    swc1	$f5,-4($a7)
.L0d9b5140:
    # Line 542
    addiu	$a7,$a7,4
    b	.L0d9b4ef8
    swc1	$f5,-4($a7)
.L0d9b514c:
    # Line 512
    addiu	$a7,$a7,4
    b	.L0d9b4e4c
    swc1	$f5,-4($a7)
.L0d9b5158:
    # Line 305
    andi	$a0,$t1,0x2
    addiu	$t0,$t0,2
    beqz	$a0,.L0d9b56a8
    lh	$a4,-2($t0)
    # Line 306
    addiu	$a7,$a3,4
    swc1	$f4,0($a3)
.L0d9b5170:
    # Line 309
    addiu	$a1,$a6,-1
    bnez	$a1,.L0d9b5188
    move	$a6,$a1
    b	.L0d9b4830
    # Line 356
    slti	$t1,$a6,8
.L0d9b5184:
    move	$a4,$t8
.L0d9b5188:
    # Line 311
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b549c
    # Line 312
    andi	$v1,$t1,0x4
.L0d9b5194:
    # Line 316
    addiu	$a6,$a6,-1
    bnez	$a6,.L0d9b51ac
    nop
    b	.L0d9b4830
    # Line 356
    slti	$t1,$a6,8
.L0d9b51a8:
    move	$a4,$t8
.L0d9b51ac:
    # Line 318
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b53c8
    # Line 319
    andi	$a0,$t1,0x8
.L0d9b51b8:
    # Line 323
    addiu	$a6,$a6,-1
    bnez	$a6,.L0d9b51cc
    nop
    b	.L0d9b4830
    # Line 356
    slti	$t1,$a6,8
.L0d9b51cc:
    # Line 325
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5378
    # Line 326
    andi	$t9,$t1,0x10
.L0d9b51d8:
    # Line 330
    addiu	$a6,$a6,-1
    beqz	$a6,.L0d9b482c
    nop
.L0d9b51e4:
    # Line 332
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5358
    # Line 333
    andi	$t3,$t1,0x20
.L0d9b51f0:
    # Line 337
    addiu	$a6,$a6,-1
    beqz	$a6,.L0d9b482c
    nop
.L0d9b51fc:
    # Line 339
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5340
    # Line 340
    andi	$a5,$t1,0x40
.L0d9b5208:
    # Line 344
    addiu	$a6,$a6,-1
    beqz	$a6,.L0d9b482c
    nop
.L0d9b5214:
    # Line 346
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5328
    # Line 347
    andi	$a3,$t1,0x80
.L0d9b5220:
    # Line 352
    addiu	$t2,$a2,1
    b	.L0d9b482c
    # Line 351
    addiu	$a6,$a6,-1
.L0d9b522c:
    b	.L0d9b51e4
    move	$a4,$t8
.L0d9b5234:
    b	.L0d9b51fc
    move	$a4,$t8
.L0d9b523c:
    b	.L0d9b5214
    move	$a4,$t8
.L0d9b5244:
    b	.L0d9b482c
    move	$a4,$t8
.L0d9b524c:
    # Line 361
    andi	$a3,$t1,0x1
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b56b8
    addiu	$t0,$t0,2
    # Line 362
    addiu	$a7,$a7,4
    b	.L0d9b4864
    swc1	$f4,-4($a7)
.L0d9b5268:
    # Line 366
    andi	$a5,$t1,0x2
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b56c4
    addiu	$t0,$t0,2
    # Line 367
    addiu	$a7,$a7,4
    b	.L0d9b486c
    swc1	$f4,-4($a7)
.L0d9b5284:
    # Line 371
    andi	$t3,$t1,0x4
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b56d0
    addiu	$t0,$t0,2
    # Line 372
    addiu	$a7,$a7,4
    b	.L0d9b4874
    swc1	$f4,-4($a7)
.L0d9b52a0:
    # Line 376
    andi	$t9,$t1,0x8
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b56dc
    addiu	$t0,$t0,2
    # Line 377
    addiu	$a7,$a7,4
    b	.L0d9b487c
    swc1	$f4,-4($a7)
.L0d9b52bc:
    # Line 381
    andi	$v0,$t1,0x10
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b56e8
    addiu	$t0,$t0,2
    # Line 382
    addiu	$a7,$a7,4
    b	.L0d9b4884
    swc1	$f4,-4($a7)
.L0d9b52d8:
    # Line 386
    andi	$v1,$t1,0x20
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b56f4
    addiu	$t0,$t0,2
    # Line 387
    addiu	$a7,$a7,4
    b	.L0d9b488c
    swc1	$f4,-4($a7)
.L0d9b52f4:
    # Line 391
    andi	$a0,$t1,0x40
    lh	$a4,0($t0)
    beqz	$a0,.L0d9b5700
    addiu	$t0,$t0,2
    # Line 392
    addiu	$a7,$a7,4
    b	.L0d9b4894
    swc1	$f4,-4($a7)
.L0d9b5310:
    # Line 396
    lh	$a4,0($t0)
    beqz	$a1,.L0d9b570c
    addiu	$t0,$t0,2
    # Line 397
    addiu	$a7,$a7,4
    b	.L0d9b48a0
    swc1	$f4,-4($a7)
.L0d9b5328:
    # Line 347
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b574c
    addiu	$t0,$t0,2
    # Line 348
    addiu	$a7,$a7,4
    b	.L0d9b5220
    swc1	$f4,-4($a7)
.L0d9b5340:
    # Line 340
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b5778
    addiu	$t0,$t0,2
    # Line 341
    addiu	$a7,$a7,4
    b	.L0d9b5208
    swc1	$f4,-4($a7)
.L0d9b5358:
    # Line 333
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b57ac
    addiu	$t0,$t0,2
    # Line 334
    addiu	$a7,$a7,4
    b	.L0d9b51f0
    swc1	$f4,-4($a7)
.L0d9b5370:
    # Line 590
    jr	$ra
    # Line 442
    swc1	$f0,0($a7)
.L0d9b5378:
    # Line 326
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b57c0
    addiu	$t0,$t0,2
    # Line 327
    addiu	$a7,$a7,4
    b	.L0d9b51d8
    swc1	$f4,-4($a7)
.L0d9b5390:
    # Line 548
    andi	$v0,$t1,0x80
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b57ec
    addiu	$t0,$t0,2
    # Line 549
    addiu	$a7,$a7,4
    b	.L0d9b4dbc
    swc1	$f4,-4($a7)
.L0d9b53ac:
    # Line 554
    andi	$v1,$t1,0x40
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b5800
    addiu	$t0,$t0,2
    # Line 555
    addiu	$a7,$a7,4
    b	.L0d9b4dc8
    swc1	$f4,-4($a7)
.L0d9b53c8:
    # Line 319
    lh	$a4,0($t0)
    beqz	$a0,.L0d9b5814
    addiu	$t0,$t0,2
    # Line 320
    addiu	$a7,$a7,4
    b	.L0d9b51b8
    swc1	$f4,-4($a7)
.L0d9b53e0:
    # Line 560
    andi	$a1,$t1,0x20
    lh	$a4,0($t0)
    beqz	$a1,.L0d9b5828
    addiu	$t0,$t0,2
    # Line 561
    addiu	$a7,$a7,4
    b	.L0d9b4dd8
    swc1	$f4,-4($a7)
.L0d9b53fc:
    # Line 406
    mtc1	$zero,$f1
    addiu	$a2,$a7,4
    move	$a7,$a2
    b	.L0d9b48bc
    swc1	$f1,-4($a2)
.L0d9b5410:
    # Line 566
    andi	$a3,$t1,0x10
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b583c
    addiu	$t0,$t0,2
    # Line 567
    addiu	$a7,$a7,4
    b	.L0d9b4de8
    swc1	$f4,-4($a7)
.L0d9b542c:
    # Line 412
    mtc1	$zero,$f2
    addiu	$a5,$a7,4
    move	$a7,$a5
    b	.L0d9b48c8
    swc1	$f2,-4($a5)
.L0d9b5440:
    # Line 572
    andi	$t2,$t1,0x8
    lh	$a4,0($t0)
    beqz	$t2,.L0d9b5868
    addiu	$t0,$t0,2
    # Line 573
    addiu	$a7,$a7,4
    b	.L0d9b4df8
    swc1	$f4,-4($a7)
.L0d9b545c:
    # Line 418
    mtc1	$zero,$f3
    addiu	$t3,$a7,4
    move	$a7,$t3
    b	.L0d9b48d8
    swc1	$f3,-4($t3)
.L0d9b5470:
    # Line 578
    andi	$t9,$t1,0x4
    beqz	$t9,.L0d9b587c
    lh	$a4,0($t0)
    # Line 579
    addiu	$a7,$a7,4
    b	.L0d9b4e08
    swc1	$f4,-4($a7)
.L0d9b5488:
    # Line 424
    mtc1	$zero,$f5
    addiu	$v0,$a7,4
    move	$a7,$v0
    b	.L0d9b48e8
    swc1	$f5,-4($v0)
.L0d9b549c:
    # Line 312
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b5890
    addiu	$t0,$t0,2
    # Line 313
    addiu	$a7,$a7,4
    b	.L0d9b5194
    swc1	$f4,-4($a7)
.L0d9b54b4:
    # Line 430
    mtc1	$zero,$f6
    addiu	$a0,$a7,4
    move	$a7,$a0
    b	.L0d9b48f8
    swc1	$f6,-4($a0)
.L0d9b54c8:
    # Line 436
    mtc1	$zero,$f7
    addiu	$a1,$a7,4
    move	$a7,$a1
    b	.L0d9b4908
    swc1	$f7,-4($a1)
.L0d9b54dc:
    # Line 449
    andi	$a5,$t1,0x40
    addiu	$t0,$t0,2
    beqz	$a5,.L0d9b58a4
    lh	$a4,-2($t0)
    # Line 450
    addiu	$a7,$a3,4
    swc1	$f4,0($a3)
.L0d9b54f4:
    # Line 453
    addiu	$t3,$a6,-1
    bnez	$t3,.L0d9b550c
    move	$a6,$t3
    b	.L0d9b4d30
    # Line 500
    slti	$a1,$a6,8
.L0d9b5508:
    move	$a4,$t8
.L0d9b550c:
    # Line 455
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5850
    # Line 456
    andi	$a3,$t1,0x20
.L0d9b5518:
    # Line 460
    addiu	$a6,$a6,-1
    bnez	$a6,.L0d9b5530
    nop
    b	.L0d9b4d30
    # Line 500
    slti	$a1,$a6,8
.L0d9b552c:
    move	$a4,$t8
.L0d9b5530:
    # Line 462
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b57d4
    # Line 463
    andi	$t9,$t1,0x10
.L0d9b553c:
    # Line 467
    addiu	$a6,$a6,-1
    bnez	$a6,.L0d9b5550
    nop
    b	.L0d9b4d30
    # Line 500
    slti	$a1,$a6,8
.L0d9b5550:
    # Line 469
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5794
    # Line 470
    andi	$a3,$t1,0x8
.L0d9b555c:
    # Line 474
    addiu	$a6,$a6,-1
    beqz	$a6,.L0d9b4d30
    # Line 500
    slti	$a1,$a6,8
.L0d9b5568:
    # Line 476
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5760
    # Line 477
    andi	$a0,$t1,0x4
.L0d9b5574:
    # Line 481
    addiu	$a6,$a6,-1
    beqz	$a6,.L0d9b4d30
    # Line 500
    slti	$a1,$a6,8
.L0d9b5580:
    # Line 483
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5734
    # Line 484
    andi	$v0,$t1,0x2
.L0d9b558c:
    # Line 488
    addiu	$a6,$a6,-1
    beqz	$a6,.L0d9b4d30
    # Line 500
    slti	$a1,$a6,8
.L0d9b5598:
    # Line 490
    addiu	$a4,$a4,-1
    beqz	$a4,.L0d9b5718
.L0d9b55a0:
    # Line 496
    addiu	$t2,$a2,1
    b	.L0d9b4d2c
    # Line 495
    addiu	$a6,$a6,-1
.L0d9b55ac:
    b	.L0d9b5568
    move	$a4,$t8
.L0d9b55b4:
    b	.L0d9b5580
    move	$a4,$t8
.L0d9b55bc:
    b	.L0d9b5598
    move	$a4,$t8
.L0d9b55c4:
    b	.L0d9b4d2c
    move	$a4,$t8
.L0d9b55cc:
    # Line 505
    andi	$t9,$t1,0x80
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b58b4
    addiu	$t0,$t0,2
    # Line 506
    addiu	$a7,$a7,4
    b	.L0d9b4d64
    swc1	$f4,-4($a7)
.L0d9b55e8:
    # Line 510
    andi	$v0,$t1,0x40
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b58c0
    addiu	$t0,$t0,2
    # Line 511
    addiu	$a7,$a7,4
    b	.L0d9b4d6c
    swc1	$f4,-4($a7)
.L0d9b5604:
    # Line 515
    andi	$v1,$t1,0x20
    lh	$a4,0($t0)
    beqz	$v1,.L0d9b58cc
    addiu	$t0,$t0,2
    # Line 516
    addiu	$a7,$a7,4
    b	.L0d9b4d74
    swc1	$f4,-4($a7)
.L0d9b5620:
    # Line 520
    andi	$a0,$t1,0x10
    lh	$a4,0($t0)
    beqz	$a0,.L0d9b58d8
    addiu	$t0,$t0,2
    # Line 521
    addiu	$a7,$a7,4
    b	.L0d9b4d7c
    swc1	$f4,-4($a7)
.L0d9b563c:
    # Line 525
    andi	$a1,$t1,0x8
    lh	$a4,0($t0)
    beqz	$a1,.L0d9b58e4
    addiu	$t0,$t0,2
    # Line 526
    addiu	$a7,$a7,4
    b	.L0d9b4d84
    swc1	$f4,-4($a7)
.L0d9b5658:
    # Line 530
    andi	$a3,$t1,0x4
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b58f0
    addiu	$t0,$t0,2
    # Line 531
    addiu	$a7,$a7,4
    b	.L0d9b4d8c
    swc1	$f4,-4($a7)
.L0d9b5674:
    # Line 535
    andi	$a5,$t1,0x2
    lh	$a4,0($t0)
    beqz	$a5,.L0d9b58fc
    addiu	$t0,$t0,2
    # Line 536
    addiu	$a7,$a7,4
    b	.L0d9b4d94
    swc1	$f4,-4($a7)
.L0d9b5690:
    # Line 540
    lh	$a4,0($t0)
    beqz	$t3,.L0d9b5908
    addiu	$t0,$t0,2
    # Line 541
    addiu	$a7,$a7,4
    b	.L0d9b4da0
    swc1	$f4,-4($a7)
.L0d9b56a8:
    # Line 307
    mtc1	$zero,$f8
    addiu	$a7,$a3,4
    b	.L0d9b5170
    swc1	$f8,0($a3)
.L0d9b56b8:
    # Line 363
    addiu	$a7,$a7,4
    b	.L0d9b4864
    swc1	$f5,-4($a7)
.L0d9b56c4:
    # Line 368
    addiu	$a7,$a7,4
    b	.L0d9b486c
    swc1	$f5,-4($a7)
.L0d9b56d0:
    # Line 373
    addiu	$a7,$a7,4
    b	.L0d9b4874
    swc1	$f5,-4($a7)
.L0d9b56dc:
    # Line 378
    addiu	$a7,$a7,4
    b	.L0d9b487c
    swc1	$f5,-4($a7)
.L0d9b56e8:
    # Line 383
    addiu	$a7,$a7,4
    b	.L0d9b4884
    swc1	$f5,-4($a7)
.L0d9b56f4:
    # Line 388
    addiu	$a7,$a7,4
    b	.L0d9b488c
    swc1	$f5,-4($a7)
.L0d9b5700:
    # Line 393
    addiu	$a7,$a7,4
    b	.L0d9b4894
    swc1	$f5,-4($a7)
.L0d9b570c:
    # Line 398
    addiu	$a7,$a7,4
    b	.L0d9b48a0
    swc1	$f5,-4($a7)
.L0d9b5718:
    # Line 491
    andi	$t9,$t1,0x1
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b5914
    addiu	$t0,$t0,2
    # Line 492
    addiu	$a7,$a7,4
    b	.L0d9b55a0
    swc1	$f4,-4($a7)
.L0d9b5734:
    # Line 484
    lh	$a4,0($t0)
    beqz	$v0,.L0d9b5928
    addiu	$t0,$t0,2
    # Line 485
    addiu	$a7,$a7,4
    b	.L0d9b558c
    swc1	$f4,-4($a7)
.L0d9b574c:
    # Line 349
    mtc1	$zero,$f9
    addiu	$v1,$a7,4
    move	$a7,$v1
    b	.L0d9b5220
    swc1	$f9,-4($v1)
.L0d9b5760:
    # Line 477
    lh	$a4,0($t0)
    beqz	$a0,.L0d9b593c
    addiu	$t0,$t0,2
    # Line 478
    addiu	$a7,$a7,4
    b	.L0d9b5574
    swc1	$f4,-4($a7)
.L0d9b5778:
    # Line 342
    mtc1	$zero,$f10
    addiu	$a1,$a7,4
    move	$a7,$a1
    b	.L0d9b5208
    swc1	$f10,-4($a1)
.L0d9b578c:
    # Line 590
    jr	$ra
    # Line 586
    swc1	$f11,0($a7)
.L0d9b5794:
    # Line 470
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b5950
    addiu	$t0,$t0,2
    # Line 471
    addiu	$a7,$a7,4
    b	.L0d9b555c
    swc1	$f4,-4($a7)
.L0d9b57ac:
    # Line 335
    mtc1	$zero,$f12
    addiu	$a5,$a7,4
    move	$a7,$a5
    b	.L0d9b51f0
    swc1	$f12,-4($a5)
.L0d9b57c0:
    # Line 328
    mtc1	$zero,$f13
    addiu	$t3,$a7,4
    move	$a7,$t3
    b	.L0d9b51d8
    swc1	$f13,-4($t3)
.L0d9b57d4:
    # Line 463
    lh	$a4,0($t0)
    beqz	$t9,.L0d9b5964
    addiu	$t0,$t0,2
    # Line 464
    addiu	$a7,$a7,4
    b	.L0d9b553c
    swc1	$f4,-4($a7)
.L0d9b57ec:
    # Line 550
    mtc1	$zero,$f14
    addiu	$v0,$a7,4
    move	$a7,$v0
    b	.L0d9b4dbc
    swc1	$f14,-4($v0)
.L0d9b5800:
    # Line 556
    mtc1	$zero,$f15
    addiu	$v1,$a7,4
    move	$a7,$v1
    b	.L0d9b4dc8
    swc1	$f15,-4($v1)
.L0d9b5814:
    # Line 321
    mtc1	$zero,$f16
    addiu	$a0,$a7,4
    move	$a7,$a0
    b	.L0d9b51b8
    swc1	$f16,-4($a0)
.L0d9b5828:
    # Line 562
    mtc1	$zero,$f17
    addiu	$a1,$a7,4
    move	$a7,$a1
    b	.L0d9b4dd8
    swc1	$f17,-4($a1)
.L0d9b583c:
    # Line 568
    mtc1	$zero,$f18
    addiu	$a2,$a7,4
    move	$a7,$a2
    b	.L0d9b4de8
    swc1	$f18,-4($a2)
.L0d9b5850:
    # Line 456
    lh	$a4,0($t0)
    beqz	$a3,.L0d9b5978
    addiu	$t0,$t0,2
    # Line 457
    addiu	$a7,$a7,4
    b	.L0d9b5518
    swc1	$f4,-4($a7)
.L0d9b5868:
    # Line 574
    mtc1	$zero,$f19
    addiu	$a5,$a7,4
    move	$a7,$a5
    b	.L0d9b4df8
    swc1	$f19,-4($a5)
.L0d9b587c:
    # Line 580
    mtc1	$zero,$f21
    addiu	$t0,$a7,4
    move	$a7,$t0
    b	.L0d9b4e08
    swc1	$f21,-4($t0)
.L0d9b5890:
    # Line 314
    mtc1	$zero,$f23
    addiu	$t3,$a7,4
    move	$a7,$t3
    b	.L0d9b5194
    swc1	$f23,-4($t3)
.L0d9b58a4:
    # Line 451
    mtc1	$zero,$f25
    addiu	$a7,$a3,4
    b	.L0d9b54f4
    swc1	$f25,0($a3)
.L0d9b58b4:
    # Line 507
    addiu	$a7,$a7,4
    b	.L0d9b4d64
    swc1	$f5,-4($a7)
.L0d9b58c0:
    # Line 512
    addiu	$a7,$a7,4
    b	.L0d9b4d6c
    swc1	$f5,-4($a7)
.L0d9b58cc:
    # Line 517
    addiu	$a7,$a7,4
    b	.L0d9b4d74
    swc1	$f5,-4($a7)
.L0d9b58d8:
    # Line 522
    addiu	$a7,$a7,4
    b	.L0d9b4d7c
    swc1	$f5,-4($a7)
.L0d9b58e4:
    # Line 527
    addiu	$a7,$a7,4
    b	.L0d9b4d84
    swc1	$f5,-4($a7)
.L0d9b58f0:
    # Line 532
    addiu	$a7,$a7,4
    b	.L0d9b4d8c
    swc1	$f5,-4($a7)
.L0d9b58fc:
    # Line 537
    addiu	$a7,$a7,4
    b	.L0d9b4d94
    swc1	$f5,-4($a7)
.L0d9b5908:
    # Line 542
    addiu	$a7,$a7,4
    b	.L0d9b4da0
    swc1	$f5,-4($a7)
.L0d9b5914:
    # Line 493
    mtc1	$zero,$f27
    addiu	$t9,$a7,4
    move	$a7,$t9
    b	.L0d9b55a0
    swc1	$f27,-4($t9)
.L0d9b5928:
    # Line 486
    mtc1	$zero,$f29
    addiu	$v0,$a7,4
    move	$a7,$v0
    b	.L0d9b558c
    swc1	$f29,-4($v0)
.L0d9b593c:
    # Line 479
    mtc1	$zero,$f31
    addiu	$v1,$a7,4
    move	$a7,$v1
    b	.L0d9b5574
    swc1	$f31,-4($v1)
.L0d9b5950:
    # Line 472
    mtc1	$zero,$f0
    addiu	$a0,$a7,4
    move	$a7,$a0
    b	.L0d9b555c
    swc1	$f0,-4($a0)
.L0d9b5964:
    # Line 465
    mtc1	$zero,$f1
    addiu	$a1,$a7,4
    move	$a7,$a1
    b	.L0d9b553c
    swc1	$f1,-4($a1)
.L0d9b5978:
    # Line 458
    mtc1	$zero,$f2
    addiu	$a3,$a7,4
    move	$a7,$a3
    b	.L0d9b5518
    swc1	$f2,-4($a3)
.end __glSpanUnpackBitmap

# Function: __glSpanUnpackBitmap2
# Declared: Line 598 (Source lines: 600-778)
# Address: 0x0d9b5990 - 0x0d9b61ac (Size: 2076 bytes, Frame: 0)
.globl __glSpanUnpackBitmap2
.ent __glSpanUnpackBitmap2
__glSpanUnpackBitmap2:
    # Line 619
    lw	$v1,44($a1)
    # Line 612
    move	$t0,$a3
    # Line 619
    lbu	$a6,0($a2)
    # Line 600
    lui	$v0,0xa
    # Line 617
    lw	$a7,180($a1)
    # Line 611
    move	$t1,$a2
    # Line 600
    addiu	$v0,$v0,-19460
    # Line 615
    lw	$t2,76($a1)
    # Line 619
    beqz	$v1,.L0d9b5cf4
    # Line 600
    addu	$at,$t9,$v0
    # Line 619
    la	$a5,sub_0da40000
    sltiu	$t8,$t2,8
    addiu	$a5,$a5,18448
    sll	$t3,$t2,0x2
    beqz	$t8,.L0d9b5ad4
    addu	$a5,$a5,$t3
    lw	$t2,0($a5)
    jr	$t2
    # Line 624
    andi	$t3,$a6,0x2
.L0d9b59dc:
    beqz	$t3,.L0d9b6130
    # Line 625
    mtc1	$zero,$f13
    # Line 624
    lwc1	$f0,3544($a0)
    addiu	$t0,$a3,4
    swc1	$f0,0($a3)
.L0d9b59f0:
    # Line 626
    addiu	$t8,$a7,-1
    beqz	$t8,.L0d9b5ad4
    move	$a7,$t8
.L0d9b59fc:
    # Line 627
    andi	$t9,$a6,0x4
    beqz	$t9,.L0d9b6120
    # Line 629
    mtc1	$zero,$f12
    # Line 628
    lwc1	$f1,3544($a0)
    addiu	$v0,$t0,4
    move	$t0,$v0
    swc1	$f1,-4($v0)
.L0d9b5a18:
    # Line 630
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5ad4
.L0d9b5a20:
    # Line 631
    andi	$v1,$a6,0x8
    beqz	$v1,.L0d9b60d8
    # Line 633
    mtc1	$zero,$f6
    # Line 632
    lwc1	$f2,3544($a0)
    addiu	$a1,$t0,4
    move	$t0,$a1
    swc1	$f2,-4($a1)
.L0d9b5a3c:
    # Line 634
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5ad4
.L0d9b5a44:
    # Line 635
    andi	$a3,$a6,0x10
    beqz	$a3,.L0d9b60b0
    # Line 637
    mtc1	$zero,$f3
    # Line 636
    lwc1	$f3,3544($a0)
    addiu	$a4,$t0,4
    move	$t0,$a4
    swc1	$f3,-4($a4)
.L0d9b5a60:
    # Line 638
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5ad4
.L0d9b5a68:
    # Line 639
    andi	$a5,$a6,0x20
    beqz	$a5,.L0d9b60a0
    # Line 641
    mtc1	$zero,$f2
    # Line 640
    lwc1	$f4,3544($a0)
    addiu	$t2,$t0,4
    move	$t0,$t2
    swc1	$f4,-4($t2)
.L0d9b5a84:
    # Line 642
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5ad4
.L0d9b5a8c:
    # Line 643
    andi	$t3,$a6,0x40
    beqz	$t3,.L0d9b6090
    # Line 645
    mtc1	$zero,$f1
    # Line 644
    lwc1	$f5,3544($a0)
    addiu	$t8,$t0,4
    move	$t0,$t8
    swc1	$f5,-4($t8)
.L0d9b5aa8:
    # Line 646
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5ad4
.L0d9b5ab0:
    # Line 647
    andi	$t9,$a6,0x80
    beqz	$t9,.L0d9b6080
    # Line 649
    mtc1	$zero,$f0
    # Line 648
    lwc1	$f6,3544($a0)
    addiu	$v0,$t0,4
    move	$t0,$v0
    swc1	$f6,-4($v0)
.L0d9b5acc:
    # Line 651
    addiu	$t1,$a2,1
    # Line 650
    addiu	$a7,$a7,-1
.L0d9b5ad4:
    # Line 655
    slti	$v1,$a7,8
    bnez	$v1,.L0d9b5c08
    nop
    b	.L0d9b5b04
    mtc1	$zero,$f4
    nop
    nop
.L0d9b5af0:
    # Line 673
    lwc1	$f7,3544($a0)
    addiu	$t0,$a3,4
    swc1	$f7,0($a3)
.L0d9b5afc:
    # Line 674
    bnez	$a1,.L0d9b5c08
    nop
.L0d9b5b04:
    # Line 656
    lbu	$a6,0($t1)
    # Line 658
    andi	$a2,$a6,0x1
    addiu	$a7,$a7,-8
    # Line 657
    addiu	$t1,$t1,1
    # Line 658
    beqz	$a2,.L0d9b5bc8
    # Line 660
    andi	$a3,$a6,0x2
    # Line 659
    lwc1	$f8,3544($a0)
    addiu	$a2,$t0,4
    swc1	$f8,0($t0)
.L0d9b5b28:
    # Line 660
    beqz	$a3,.L0d9b5bd4
    # Line 662
    andi	$a4,$a6,0x4
    # Line 661
    lwc1	$f9,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f9,0($a2)
.L0d9b5b3c:
    # Line 664
    andi	$t0,$a6,0x8
    # Line 666
    andi	$t2,$a6,0x10
    # Line 662
    beqz	$a4,.L0d9b5be0
    # Line 664
    addiu	$a5,$a3,4
    # Line 663
    lwc1	$f10,3544($a0)
    addiu	$a5,$a3,4
    swc1	$f10,0($a3)
.L0d9b5b58:
    # Line 668
    andi	$t3,$a6,0x20
    # Line 664
    beqz	$t0,.L0d9b5be8
    # Line 666
    addiu	$a2,$a5,4
    # Line 665
    lwc1	$f11,3544($a0)
    addiu	$a2,$a5,4
    swc1	$f11,0($a5)
.L0d9b5b70:
    # Line 666
    beqz	$t2,.L0d9b5bf0
    # Line 668
    addiu	$a3,$a2,4
    # Line 667
    lwc1	$f12,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f12,0($a2)
.L0d9b5b84:
    # Line 670
    andi	$t8,$a6,0x40
    # Line 674
    slti	$a1,$a7,8
    # Line 672
    andi	$t9,$a6,0x80
    # Line 668
    beqz	$t3,.L0d9b5bf8
    # Line 670
    addiu	$a2,$a3,4
    # Line 669
    lwc1	$f13,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f13,0($a3)
.L0d9b5ba4:
    # Line 670
    beqz	$t8,.L0d9b5c00
    # Line 672
    addiu	$a3,$a2,4
    # Line 671
    lwc1	$f14,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f14,0($a2)
.L0d9b5bb8:
    # Line 672
    bnez	$t9,.L0d9b5af0
    # Line 674
    addiu	$t0,$a3,4
    b	.L0d9b5afc
    swc1	$f4,0($a3)
.L0d9b5bc8:
    # Line 660
    swc1	$f4,0($t0)
    b	.L0d9b5b28
    addiu	$a2,$t0,4
.L0d9b5bd4:
    # Line 662
    swc1	$f4,0($a2)
    b	.L0d9b5b3c
    addiu	$a3,$a2,4
.L0d9b5be0:
    b	.L0d9b5b58
    # Line 664
    swc1	$f4,0($a3)
.L0d9b5be8:
    b	.L0d9b5b70
    # Line 666
    swc1	$f4,0($a5)
.L0d9b5bf0:
    b	.L0d9b5b84
    # Line 668
    swc1	$f4,0($a2)
.L0d9b5bf8:
    b	.L0d9b5ba4
    # Line 670
    swc1	$f4,0($a3)
.L0d9b5c00:
    b	.L0d9b5bb8
    # Line 672
    swc1	$f4,0($a2)
.L0d9b5c08:
    # Line 674
    beqz	$a7,.L0d9b5cec
    nop
    # Line 677
    lbu	$a6,0($t1)
    andi	$v0,$a6,0x1
    beqz	$v0,.L0d9b5e34
    # Line 679
    mtc1	$zero,$f3
    # Line 678
    lwc1	$f15,3544($a0)
    addiu	$a2,$t0,4
    swc1	$f15,0($t0)
.L0d9b5c2c:
    # Line 679
    li	$v1,1
    beq	$a7,$v1,.L0d9b5cec
    # Line 680
    andi	$a1,$a6,0x2
    beqz	$a1,.L0d9b603c
    # Line 682
    mtc1	$zero,$f21
    # Line 681
    lwc1	$f16,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f16,0($a2)
.L0d9b5c4c:
    # Line 682
    li	$a2,2
    beq	$a7,$a2,.L0d9b5cec
    # Line 683
    andi	$a4,$a6,0x4
    beqz	$a4,.L0d9b6048
    # Line 685
    mtc1	$zero,$f23
    # Line 684
    lwc1	$f17,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f17,0($a3)
.L0d9b5c6c:
    # Line 685
    li	$a5,3
    beq	$a7,$a5,.L0d9b5cec
    # Line 686
    andi	$t0,$a6,0x8
    beqz	$t0,.L0d9b6054
    # Line 688
    mtc1	$zero,$f25
    # Line 687
    lwc1	$f18,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f18,0($a2)
.L0d9b5c8c:
    # Line 688
    li	$t1,4
    beq	$a7,$t1,.L0d9b5cec
    # Line 689
    andi	$t2,$a6,0x10
    beqz	$t2,.L0d9b6060
    # Line 691
    mtc1	$zero,$f27
    # Line 690
    lwc1	$f19,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f19,0($a3)
.L0d9b5cac:
    # Line 691
    li	$t3,5
    beq	$a7,$t3,.L0d9b5cec
    # Line 692
    andi	$t8,$a6,0x20
    beqz	$t8,.L0d9b606c
    # Line 694
    mtc1	$zero,$f29
    # Line 693
    lwc1	$f21,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f21,0($a2)
.L0d9b5ccc:
    # Line 694
    li	$t9,6
    beq	$a7,$t9,.L0d9b5cec
    # Line 695
    andi	$v0,$a6,0x40
    beqz	$v0,.L0d9b6078
    # Line 697
    mtc1	$zero,$f31
    # Line 696
    lwc1	$f23,3544($a0)
    # Line 778
    jr	$ra
    # Line 696
    swc1	$f23,0($a3)
.L0d9b5cec:
    # Line 778
    jr	$ra
    nop
.L0d9b5cf4:
    # Line 697
    la	$a5,sub_0da40000
    sltiu	$t8,$t2,8
    addiu	$a5,$a5,18480
    sll	$t3,$t2,0x2
    beqz	$t8,.L0d9b5e20
    addu	$a5,$a5,$t3
    lw	$t2,0($a5)
    jr	$t2
    # Line 702
    andi	$t3,$a6,0x40
.L0d9b5d18:
    beqz	$t3,.L0d9b61a0
    # Line 703
    mtc1	$zero,$f21
    # Line 702
    lwc1	$f25,3544($a0)
    addiu	$t0,$a3,4
    swc1	$f25,0($a3)
.L0d9b5d2c:
    # Line 704
    addiu	$t8,$a7,-1
    beqz	$t8,.L0d9b5e20
    move	$a7,$t8
.L0d9b5d38:
    # Line 705
    andi	$t9,$a6,0x20
    beqz	$t9,.L0d9b6190
    # Line 707
    mtc1	$zero,$f19
    # Line 706
    lwc1	$f27,3544($a0)
    addiu	$v0,$t0,4
    move	$t0,$v0
    swc1	$f27,-4($v0)
.L0d9b5d54:
    # Line 708
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5e24
    # Line 733
    slti	$v1,$a7,8
.L0d9b5d60:
    # Line 709
    andi	$v1,$a6,0x10
    beqz	$v1,.L0d9b617c
    # Line 710
    addiu	$a1,$t0,4
    lwc1	$f29,3544($a0)
    move	$t0,$a1
    swc1	$f29,-4($a1)
.L0d9b5d78:
    # Line 712
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5e24
    # Line 733
    slti	$v1,$a7,8
.L0d9b5d84:
    # Line 713
    andi	$a3,$a6,0x8
    beqz	$a3,.L0d9b616c
    # Line 715
    mtc1	$zero,$f17
    # Line 714
    lwc1	$f31,3544($a0)
    addiu	$a4,$t0,4
    move	$t0,$a4
    swc1	$f31,-4($a4)
.L0d9b5da0:
    # Line 716
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5e24
    # Line 733
    slti	$v1,$a7,8
.L0d9b5dac:
    # Line 717
    andi	$a5,$a6,0x4
    beqz	$a5,.L0d9b615c
    # Line 719
    mtc1	$zero,$f16
    # Line 718
    lwc1	$f0,3544($a0)
    addiu	$t2,$t0,4
    move	$t0,$t2
    swc1	$f0,-4($t2)
.L0d9b5dc8:
    # Line 720
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5e24
    # Line 733
    slti	$v1,$a7,8
.L0d9b5dd4:
    # Line 721
    andi	$t3,$a6,0x2
    beqz	$t3,.L0d9b614c
    # Line 723
    mtc1	$zero,$f15
    # Line 722
    lwc1	$f1,3544($a0)
    addiu	$t8,$t0,4
    move	$t0,$t8
    swc1	$f1,-4($t8)
.L0d9b5df0:
    # Line 724
    addiu	$a7,$a7,-1
    beqz	$a7,.L0d9b5e24
    # Line 733
    slti	$v1,$a7,8
.L0d9b5dfc:
    # Line 725
    andi	$t9,$a6,0x1
    beqz	$t9,.L0d9b613c
    # Line 727
    mtc1	$zero,$f14
    # Line 726
    lwc1	$f2,3544($a0)
    addiu	$v0,$t0,4
    move	$t0,$v0
    swc1	$f2,-4($v0)
.L0d9b5e18:
    # Line 729
    addiu	$t1,$a2,1
    # Line 728
    addiu	$a7,$a7,-1
.L0d9b5e20:
    # Line 733
    slti	$v1,$a7,8
.L0d9b5e24:
    bnez	$v1,.L0d9b5f58
    nop
    b	.L0d9b5e6c
    mtc1	$zero,$f4
.L0d9b5e34:
    # Line 679
    addiu	$a2,$t0,4
    b	.L0d9b5c2c
    swc1	$f3,0($t0)
.L0d9b5e40:
    # Line 749
    lwc1	$f5,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f5,0($a2)
.L0d9b5e4c:
    # Line 752
    slti	$a2,$a7,8
    # Line 750
    beqz	$a1,.L0d9b5f50
    # Line 752
    addiu	$t0,$a3,4
    # Line 751
    lwc1	$f6,3544($a0)
    addiu	$t0,$a3,4
    swc1	$f6,0($a3)
.L0d9b5e64:
    # Line 752
    bnez	$a2,.L0d9b5f58
    nop
.L0d9b5e6c:
    # Line 734
    lbu	$a6,0($t1)
    # Line 736
    andi	$a3,$a6,0x80
    addiu	$a7,$a7,-8
    # Line 735
    addiu	$t1,$t1,1
    # Line 736
    beqz	$a3,.L0d9b5f1c
    # Line 738
    andi	$a4,$a6,0x40
    # Line 737
    lwc1	$f7,3544($a0)
    addiu	$a3,$t0,4
    swc1	$f7,0($t0)
.L0d9b5e90:
    # Line 740
    andi	$a5,$a6,0x20
    # Line 738
    beqz	$a4,.L0d9b5f28
    # Line 740
    addiu	$a2,$a3,4
    # Line 739
    lwc1	$f8,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f8,0($a3)
.L0d9b5ea8:
    # Line 742
    andi	$t0,$a6,0x10
    # Line 744
    andi	$t2,$a6,0x8
    # Line 740
    beqz	$a5,.L0d9b5f30
    # Line 742
    addiu	$a3,$a2,4
    # Line 741
    lwc1	$f9,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f9,0($a2)
.L0d9b5ec4:
    # Line 746
    andi	$t3,$a6,0x4
    # Line 742
    beqz	$t0,.L0d9b5f38
    # Line 744
    addiu	$a2,$a3,4
    # Line 743
    lwc1	$f10,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f10,0($a3)
.L0d9b5edc:
    # Line 744
    beqz	$t2,.L0d9b5f40
    # Line 746
    addiu	$a3,$a2,4
    # Line 745
    lwc1	$f11,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f11,0($a2)
.L0d9b5ef0:
    # Line 748
    andi	$t8,$a6,0x2
    # Line 750
    andi	$a1,$a6,0x1
    # Line 746
    beqz	$t3,.L0d9b5f48
    # Line 748
    addiu	$a2,$a3,4
    # Line 747
    lwc1	$f12,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f12,0($a3)
.L0d9b5f0c:
    # Line 748
    bnez	$t8,.L0d9b5e40
    # Line 750
    addiu	$a3,$a2,4
    b	.L0d9b5e4c
    swc1	$f4,0($a2)
.L0d9b5f1c:
    # Line 738
    swc1	$f4,0($t0)
    b	.L0d9b5e90
    addiu	$a3,$t0,4
.L0d9b5f28:
    b	.L0d9b5ea8
    # Line 740
    swc1	$f4,0($a3)
.L0d9b5f30:
    b	.L0d9b5ec4
    # Line 742
    swc1	$f4,0($a2)
.L0d9b5f38:
    b	.L0d9b5edc
    # Line 744
    swc1	$f4,0($a3)
.L0d9b5f40:
    b	.L0d9b5ef0
    # Line 746
    swc1	$f4,0($a2)
.L0d9b5f48:
    b	.L0d9b5f0c
    # Line 748
    swc1	$f4,0($a3)
.L0d9b5f50:
    b	.L0d9b5e64
    # Line 752
    swc1	$f4,0($a3)
.L0d9b5f58:
    beqz	$a7,.L0d9b5cec
    nop
    # Line 755
    lbu	$a6,0($t1)
    andi	$t9,$a6,0x80
    beqz	$t9,.L0d9b60c0
    # Line 757
    mtc1	$zero,$f4
    # Line 756
    lwc1	$f13,3544($a0)
    addiu	$a2,$t0,4
    swc1	$f13,0($t0)
.L0d9b5f7c:
    # Line 757
    li	$v0,1
    beq	$a7,$v0,.L0d9b5cec
    # Line 758
    andi	$v1,$a6,0x40
    beqz	$v1,.L0d9b60cc
    # Line 760
    mtc1	$zero,$f5
    # Line 759
    lwc1	$f14,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f14,0($a2)
.L0d9b5f9c:
    # Line 760
    li	$a1,2
    beq	$a7,$a1,.L0d9b5cec
    # Line 761
    andi	$a2,$a6,0x20
    beqz	$a2,.L0d9b60e8
    # Line 763
    mtc1	$zero,$f7
    # Line 762
    lwc1	$f15,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f15,0($a3)
.L0d9b5fbc:
    # Line 763
    li	$a3,3
    beq	$a7,$a3,.L0d9b5cec
    # Line 764
    andi	$a4,$a6,0x10
    beqz	$a4,.L0d9b60f4
    # Line 766
    mtc1	$zero,$f8
    # Line 765
    lwc1	$f16,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f16,0($a2)
.L0d9b5fdc:
    # Line 766
    li	$a5,4
    beq	$a7,$a5,.L0d9b5cec
    # Line 767
    andi	$t0,$a6,0x8
    beqz	$t0,.L0d9b6100
    # Line 769
    mtc1	$zero,$f9
    # Line 768
    lwc1	$f17,3544($a0)
    addiu	$a2,$a3,4
    swc1	$f17,0($a3)
.L0d9b5ffc:
    # Line 769
    li	$t1,5
    beq	$a7,$t1,.L0d9b5cec
    # Line 770
    andi	$t2,$a6,0x4
    beqz	$t2,.L0d9b610c
    # Line 772
    mtc1	$zero,$f10
    # Line 771
    lwc1	$f18,3544($a0)
    addiu	$a3,$a2,4
    swc1	$f18,0($a2)
.L0d9b601c:
    # Line 772
    li	$t3,6
    beq	$a7,$t3,.L0d9b5cec
    # Line 773
    andi	$t8,$a6,0x2
    beqz	$t8,.L0d9b6118
    # Line 775
    mtc1	$zero,$f11
    # Line 774
    lwc1	$f19,3544($a0)
    # Line 778
    jr	$ra
    # Line 774
    swc1	$f19,0($a3)
.L0d9b603c:
    # Line 682
    addiu	$a3,$a2,4
    b	.L0d9b5c4c
    swc1	$f21,0($a2)
.L0d9b6048:
    # Line 685
    addiu	$a2,$a3,4
    b	.L0d9b5c6c
    swc1	$f23,0($a3)
.L0d9b6054:
    # Line 688
    addiu	$a3,$a2,4
    b	.L0d9b5c8c
    swc1	$f25,0($a2)
.L0d9b6060:
    # Line 691
    addiu	$a2,$a3,4
    b	.L0d9b5cac
    swc1	$f27,0($a3)
.L0d9b606c:
    # Line 694
    addiu	$a3,$a2,4
    b	.L0d9b5ccc
    swc1	$f29,0($a2)
.L0d9b6078:
    # Line 778
    jr	$ra
    # Line 697
    swc1	$f31,0($a3)
.L0d9b6080:
    # Line 649
    addiu	$t9,$t0,4
    move	$t0,$t9
    b	.L0d9b5acc
    swc1	$f0,-4($t9)
.L0d9b6090:
    # Line 645
    addiu	$v0,$t0,4
    move	$t0,$v0
    b	.L0d9b5aa8
    swc1	$f1,-4($v0)
.L0d9b60a0:
    # Line 641
    addiu	$v1,$t0,4
    move	$t0,$v1
    b	.L0d9b5a84
    swc1	$f2,-4($v1)
.L0d9b60b0:
    # Line 637
    addiu	$a1,$t0,4
    move	$t0,$a1
    b	.L0d9b5a60
    swc1	$f3,-4($a1)
.L0d9b60c0:
    # Line 757
    addiu	$a2,$t0,4
    b	.L0d9b5f7c
    swc1	$f4,0($t0)
.L0d9b60cc:
    # Line 760
    addiu	$a3,$a2,4
    b	.L0d9b5f9c
    swc1	$f5,0($a2)
.L0d9b60d8:
    # Line 633
    addiu	$a3,$t0,4
    move	$t0,$a3
    b	.L0d9b5a3c
    swc1	$f6,-4($a3)
.L0d9b60e8:
    # Line 763
    addiu	$a2,$a3,4
    b	.L0d9b5fbc
    swc1	$f7,0($a3)
.L0d9b60f4:
    # Line 766
    addiu	$a3,$a2,4
    b	.L0d9b5fdc
    swc1	$f8,0($a2)
.L0d9b6100:
    # Line 769
    addiu	$a2,$a3,4
    b	.L0d9b5ffc
    swc1	$f9,0($a3)
.L0d9b610c:
    # Line 772
    addiu	$a3,$a2,4
    b	.L0d9b601c
    swc1	$f10,0($a2)
.L0d9b6118:
    # Line 778
    jr	$ra
    # Line 775
    swc1	$f11,0($a3)
.L0d9b6120:
    # Line 629
    addiu	$a4,$t0,4
    move	$t0,$a4
    b	.L0d9b5a18
    swc1	$f12,-4($a4)
.L0d9b6130:
    # Line 625
    addiu	$t0,$a3,4
    b	.L0d9b59f0
    swc1	$f13,0($a3)
.L0d9b613c:
    # Line 727
    addiu	$a5,$t0,4
    move	$t0,$a5
    b	.L0d9b5e18
    swc1	$f14,-4($a5)
.L0d9b614c:
    # Line 723
    addiu	$t2,$t0,4
    move	$t0,$t2
    b	.L0d9b5df0
    swc1	$f15,-4($t2)
.L0d9b615c:
    # Line 719
    addiu	$t3,$t0,4
    move	$t0,$t3
    b	.L0d9b5dc8
    swc1	$f16,-4($t3)
.L0d9b616c:
    # Line 715
    addiu	$t8,$t0,4
    move	$t0,$t8
    b	.L0d9b5da0
    swc1	$f17,-4($t8)
.L0d9b617c:
    # Line 711
    mtc1	$zero,$f18
    addiu	$t9,$t0,4
    move	$t0,$t9
    b	.L0d9b5d78
    swc1	$f18,-4($t9)
.L0d9b6190:
    # Line 707
    addiu	$v0,$t0,4
    move	$t0,$v0
    b	.L0d9b5d54
    swc1	$f19,-4($v0)
.L0d9b61a0:
    # Line 703
    addiu	$t0,$a3,4
    b	.L0d9b5d2c
    swc1	$f21,0($a3)
.end __glSpanUnpackBitmap2

# Function: __glSpanUnpackRGBubyte
# Declared: Line 787 (Source lines: 789-817)
# Address: 0x0d9b61b0 - 0x0d9b6214 (Size: 100 bytes, Frame: 0)
.globl __glSpanUnpackRGBubyte
.ent __glSpanUnpackRGBubyte
__glSpanUnpackRGBubyte:
    # Line 789
    move	$a5,$a2
    # Line 804
    lw	$a7,312($a1)
    # Line 789
    move	$a6,$a3
    # Line 800
    lw	$t0,180($a1)
    # Line 804
    move	$a4,$zero
    nop
    nop
    nop
.L0d9b61d0:
    # Line 808
    lbu	$a2,0($a5)
    sb	$a2,0($a6)
    # Line 809
    lbu	$a1,1($a5)
    sb	$a1,1($a6)
    # Line 810
    lbu	$a0,2($a5)
    sb	$a0,2($a6)
    # Line 814
    lh	$v1,0($a7)
    # Line 813
    addiu	$a7,$a7,2
    # Line 815
    addiu	$a4,$a4,1
    slt	$v0,$a4,$t0
    # Line 814
    sll	$at,$v1,0x2
    # Line 811
    addiu	$a6,$a6,3
    # Line 814
    subu	$at,$at,$v1
    # Line 815
    bnez	$v0,.L0d9b61d0
    # Line 814
    addu	$a5,$a5,$at
    # Line 817
    jr	$ra
    nop
.end __glSpanUnpackRGBubyte

# Function: __glSpanUnpackIndexUbyte
# Declared: Line 826 (Source lines: 828-854)
# Address: 0x0d9b6220 - 0x0d9b62bc (Size: 156 bytes, Frame: 0)
.globl __glSpanUnpackIndexUbyte
.ent __glSpanUnpackIndexUbyte
__glSpanUnpackIndexUbyte:
    # Line 839
    lw	$a5,180($a1)
    # Line 843
    li	$t1,1
    slt	$v0,$a5,$t1
    movz	$t1,$a5,$v0
    andi	$at,$t1,0x1
    # Line 828
    move	$a4,$a2
    move	$a6,$a3
    # Line 843
    move	$t0,$zero
    beqz	$at,.L0d9b6264
    lw	$a7,312($a1)
    # Line 847
    lbu	$a0,0($a2)
    sb	$a0,0($a3)
    # Line 851
    lh	$v1,0($a7)
    # Line 852
    li	$t0,1
    # Line 850
    addiu	$a7,$a7,2
    # Line 848
    addiu	$a6,$a3,1
    # Line 851
    addu	$a4,$v1,$a2
.L0d9b6264:
    sra	$a1,$t1,0x1
    move	$a3,$a6
    beqz	$a1,.L0d9b62b4
    move	$a2,$a7
    move	$a1,$t0
    nop
    nop
.L0d9b6280:
    # Line 847
    lbu	$a7,0($a4)
    sb	$a7,0($a3)
    # Line 851
    lh	$a6,0($a2)
    addu	$a6,$a6,$a4
    # Line 847
    lbu	$t0,0($a6)
    # Line 852
    addiu	$a1,$a1,2
    # Line 847
    sb	$t0,1($a3)
    # Line 852
    slt	$a7,$a1,$a5
    # Line 851
    lh	$a4,2($a2)
    # Line 850
    addiu	$a2,$a2,4
    # Line 848
    addiu	$a3,$a3,2
    # Line 852
    bnez	$a7,.L0d9b6280
    # Line 851
    addu	$a4,$a4,$a6
.L0d9b62b4:
    # Line 854
    jr	$ra
    nop
.end __glSpanUnpackIndexUbyte

# Function: __glSpanUnpackRGBAubyte
# Declared: Line 868 (Source lines: 870-899)
# Address: 0x0d9b62c0 - 0x0d9b6328 (Size: 104 bytes, Frame: 0)
.globl __glSpanUnpackRGBAubyte
.ent __glSpanUnpackRGBAubyte
__glSpanUnpackRGBAubyte:
    # Line 870
    move	$a5,$a2
    # Line 885
    lw	$a7,312($a1)
    # Line 870
    move	$a6,$a3
    # Line 881
    lw	$t0,180($a1)
    # Line 885
    move	$a4,$zero
    nop
    nop
    nop
.L0d9b62e0:
    # Line 889
    lbu	$a1,0($a5)
    sb	$a1,0($a6)
    # Line 890
    lbu	$a0,1($a5)
    sb	$a0,1($a6)
    # Line 891
    lbu	$v1,2($a5)
    sb	$v1,2($a6)
    # Line 892
    lbu	$v0,3($a5)
    sb	$v0,3($a6)
    # Line 897
    addiu	$a4,$a4,1
    # Line 896
    lh	$at,0($a7)
    # Line 895
    addiu	$a7,$a7,2
    # Line 897
    slt	$v0,$a4,$t0
    # Line 893
    addiu	$a6,$a6,4
    # Line 896
    sll	$at,$at,0x2
    # Line 897
    bnez	$v0,.L0d9b62e0
    # Line 896
    addu	$a5,$a5,$at
    # Line 899
    jr	$ra
    nop
.end __glSpanUnpackRGBAubyte

# Function: __glSpanSwapBytes2
# Declared: Line 906 (Source lines: 908-928)
# Address: 0x0d9b6330 - 0x0d9b6378 (Size: 72 bytes, Frame: 0)
.globl __glSpanSwapBytes2
.ent __glSpanSwapBytes2
__glSpanSwapBytes2:
    # Line 914
    lw	$v0,32($a1)
    # Line 910
    lw	$at,180($a1)
    # Line 914
    mult	$at,$v0
    mflo	$a6
    # Line 908
    move	$a5,$a2
    # Line 914
    move	$a1,$zero
    blez	$a6,.L0d9b6370
    # Line 908
    move	$a4,$a3
.L0d9b6350:
    # Line 921
    lbu	$a0,0($a5)
    # Line 925
    addiu	$a4,$a4,2
    # Line 923
    lbu	$v1,1($a5)
    # Line 920
    addiu	$a1,$a1,1
    # Line 924
    sb	$a0,-1($a4)
    # Line 926
    addiu	$a5,$a5,2
    # Line 920
    bne	$a6,$a1,.L0d9b6350
    # Line 923
    sb	$v1,-2($a4)
.L0d9b6370:
    # Line 928
    jr	$ra
    nop
.end __glSpanSwapBytes2

# Function: __glSpanSwapBytes2Dst
# Declared: Line 936 (Source lines: 938-958)
# Address: 0x0d9b6380 - 0x0d9b63c8 (Size: 72 bytes, Frame: 0)
.globl __glSpanSwapBytes2Dst
.ent __glSpanSwapBytes2Dst
__glSpanSwapBytes2Dst:
    # Line 944
    lw	$v0,112($a1)
    # Line 940
    lw	$at,180($a1)
    # Line 944
    mult	$at,$v0
    mflo	$a6
    # Line 938
    move	$a5,$a2
    # Line 944
    move	$a1,$zero
    blez	$a6,.L0d9b63c0
    # Line 938
    move	$a4,$a3
.L0d9b63a0:
    # Line 951
    lbu	$a0,0($a5)
    # Line 955
    addiu	$a4,$a4,2
    # Line 953
    lbu	$v1,1($a5)
    # Line 950
    addiu	$a1,$a1,1
    # Line 954
    sb	$a0,-1($a4)
    # Line 956
    addiu	$a5,$a5,2
    # Line 950
    bne	$a6,$a1,.L0d9b63a0
    # Line 953
    sb	$v1,-2($a4)
.L0d9b63c0:
    # Line 958
    jr	$ra
    nop
.end __glSpanSwapBytes2Dst

# Function: __glSpanSwapAndSkipBytes2
# Declared: Line 965 (Source lines: 967-994)
# Address: 0x0d9b63d0 - 0x0d9b6448 (Size: 120 bytes, Frame: 0)
.globl __glSpanSwapAndSkipBytes2
.ent __glSpanSwapAndSkipBytes2
__glSpanSwapAndSkipBytes2:
    # Line 969
    lw	$t1,180($a1)
    # Line 975
    lw	$a7,312($a1)
    # Line 967
    move	$a4,$a2
    # Line 974
    lw	$t0,20($a1)
    # Line 967
    move	$a5,$a3
    # Line 975
    blez	$t1,.L0d9b6440
    # Line 973
    lw	$a6,32($a1)
    # Line 975
    move	$a2,$zero
.L0d9b63f0:
    blez	$a6,.L0d9b6420
    move	$a1,$zero
    nop
    nop
.L0d9b6400:
    # Line 983
    lbu	$v0,0($a4)
    # Line 987
    addiu	$a5,$a5,2
    # Line 985
    lbu	$at,1($a4)
    # Line 982
    addiu	$a1,$a1,1
    # Line 986
    sb	$v0,-1($a5)
    # Line 988
    addiu	$a4,$a4,2
    # Line 982
    bne	$a6,$a1,.L0d9b6400
    # Line 985
    sb	$at,-2($a5)
.L0d9b6420:
    # Line 992
    lh	$a0,0($a7)
    addiu	$a0,$a0,-1
    mult	$t0,$a0
    # Line 981
    addiu	$a2,$a2,1
    # Line 991
    addiu	$a7,$a7,2
    # Line 992
    mflo	$v1
    # Line 981
    bne	$t1,$a2,.L0d9b63f0
    # Line 992
    addu	$a4,$a4,$v1
.L0d9b6440:
    # Line 994
    jr	$ra
    nop
.end __glSpanSwapAndSkipBytes2

# Function: __glSpanSwapBytes4
# Declared: Line 1001 (Source lines: 1003-1027)
# Address: 0x0d9b6450 - 0x0d9b64a8 (Size: 88 bytes, Frame: 0)
.globl __glSpanSwapBytes4
.ent __glSpanSwapBytes4
__glSpanSwapBytes4:
    # Line 1009
    lw	$v0,32($a1)
    # Line 1005
    lw	$at,180($a1)
    # Line 1009
    mult	$at,$v0
    mflo	$a6
    # Line 1003
    move	$a5,$a2
    # Line 1009
    move	$a1,$zero
    blez	$a6,.L0d9b64a0
    # Line 1003
    move	$a4,$a3
.L0d9b6470:
    # Line 1016
    lbu	$a0,2($a5)
    # Line 1018
    lbu	$a3,0($a5)
    # Line 1019
    lbu	$a2,1($a5)
    # Line 1024
    addiu	$a4,$a4,4
    # Line 1020
    lbu	$v1,3($a5)
    # Line 1023
    sb	$a3,-1($a4)
    # Line 1022
    sb	$a2,-2($a4)
    # Line 1015
    addiu	$a1,$a1,1
    # Line 1021
    sb	$a0,-3($a4)
    # Line 1025
    addiu	$a5,$a5,4
    # Line 1015
    bne	$a6,$a1,.L0d9b6470
    # Line 1020
    sb	$v1,-4($a4)
.L0d9b64a0:
    # Line 1027
    jr	$ra
    nop
.end __glSpanSwapBytes4

# Function: __glSpanSwapBytes4Dst
# Declared: Line 1035 (Source lines: 1037-1061)
# Address: 0x0d9b64b0 - 0x0d9b6508 (Size: 88 bytes, Frame: 0)
.globl __glSpanSwapBytes4Dst
.ent __glSpanSwapBytes4Dst
__glSpanSwapBytes4Dst:
    # Line 1043
    lw	$v0,112($a1)
    # Line 1039
    lw	$at,180($a1)
    # Line 1043
    mult	$at,$v0
    mflo	$a6
    # Line 1037
    move	$a5,$a2
    # Line 1043
    move	$a1,$zero
    blez	$a6,.L0d9b6500
    # Line 1037
    move	$a4,$a3
.L0d9b64d0:
    # Line 1050
    lbu	$a0,2($a5)
    # Line 1052
    lbu	$a3,0($a5)
    # Line 1053
    lbu	$a2,1($a5)
    # Line 1058
    addiu	$a4,$a4,4
    # Line 1054
    lbu	$v1,3($a5)
    # Line 1057
    sb	$a3,-1($a4)
    # Line 1056
    sb	$a2,-2($a4)
    # Line 1049
    addiu	$a1,$a1,1
    # Line 1055
    sb	$a0,-3($a4)
    # Line 1059
    addiu	$a5,$a5,4
    # Line 1049
    bne	$a6,$a1,.L0d9b64d0
    # Line 1054
    sb	$v1,-4($a4)
.L0d9b6500:
    # Line 1061
    jr	$ra
    nop
.end __glSpanSwapBytes4Dst

# Function: __glSpanSwapAndSkipBytes4
# Declared: Line 1068 (Source lines: 1070-1101)
# Address: 0x0d9b6510 - 0x0d9b6598 (Size: 136 bytes, Frame: 0)
.globl __glSpanSwapAndSkipBytes4
.ent __glSpanSwapAndSkipBytes4
__glSpanSwapAndSkipBytes4:
    # Line 1072
    lw	$t1,180($a1)
    # Line 1078
    lw	$a7,312($a1)
    # Line 1070
    move	$a4,$a2
    # Line 1077
    lw	$t0,20($a1)
    # Line 1070
    move	$a5,$a3
    # Line 1078
    blez	$t1,.L0d9b6590
    # Line 1076
    lw	$a6,32($a1)
    # Line 1078
    move	$a2,$zero
.L0d9b6530:
    blez	$a6,.L0d9b6570
    move	$a1,$zero
    nop
    nop
.L0d9b6540:
    # Line 1086
    lbu	$v1,2($a4)
    # Line 1088
    lbu	$a0,3($a4)
    sb	$a0,0($a5)
    # Line 1089
    sb	$v1,1($a5)
    # Line 1090
    lbu	$v0,0($a4)
    # Line 1094
    addiu	$a5,$a5,4
    # Line 1085
    addiu	$a1,$a1,1
    # Line 1092
    lbu	$at,1($a4)
    # Line 1093
    sb	$v0,-1($a5)
    # Line 1095
    addiu	$a4,$a4,4
    # Line 1085
    bne	$a6,$a1,.L0d9b6540
    # Line 1092
    sb	$at,-2($a5)
.L0d9b6570:
    # Line 1099
    lh	$a3,0($a7)
    addiu	$a3,$a3,-1
    mult	$t0,$a3
    # Line 1084
    addiu	$a2,$a2,1
    # Line 1098
    addiu	$a7,$a7,2
    # Line 1099
    mflo	$a1
    # Line 1084
    bne	$t1,$a2,.L0d9b6530
    # Line 1099
    addu	$a4,$a4,$a1
.L0d9b6590:
    # Line 1101
    jr	$ra
    nop
.end __glSpanSwapAndSkipBytes4

# Function: __glSpanSkipPixels1
# Declared: Line 1108 (Source lines: 1110-1131)
# Address: 0x0d9b65a0 - 0x0d9b665c (Size: 188 bytes, Frame: 0)
.globl __glSpanSkipPixels1
.ent __glSpanSkipPixels1
__glSpanSkipPixels1:
    # Line 1112
    lw	$t1,180($a1)
    # Line 1117
    lw	$a7,312($a1)
    # Line 1110
    move	$a5,$a2
    # Line 1116
    lw	$t2,20($a1)
    # Line 1110
    move	$a6,$a3
    # Line 1117
    blez	$t1,.L0d9b6654
    # Line 1115
    lw	$a4,32($a1)
    b	.L0d9b6624
    # Line 1117
    move	$t0,$zero
    nop
    nop
    nop
.L0d9b65d0:
    move	$a1,$a5
    beqz	$at,.L0d9b6608
    move	$a2,$a6
    nop
.L0d9b65e0:
    # Line 1125
    lbu	$v1,0($a1)
    # Line 1124
    addiu	$a3,$a3,2
    # Line 1125
    sb	$v1,0($a2)
    addiu	$a2,$a2,2
    lbu	$v0,1($a1)
    addiu	$a1,$a1,2
    # Line 1124
    bne	$a4,$a3,.L0d9b65e0
    # Line 1125
    sb	$v0,-1($a2)
    move	$a5,$a1
    move	$a6,$a2
.L0d9b6608:
    # Line 1129
    lh	$a1,0($a7)
    addiu	$a1,$a1,-1
    mult	$t2,$a1
    # Line 1128
    addiu	$a7,$a7,2
    # Line 1129
    mflo	$a0
    # Line 1123
    beq	$t1,$t0,.L0d9b6654
    # Line 1129
    addu	$a5,$a5,$a0
.L0d9b6624:
    # Line 1117
    blez	$a4,.L0d9b6608
    # Line 1123
    addiu	$t0,$t0,1
    # Line 1117
    move	$a3,$zero
    andi	$a2,$a4,0x1
    beqz	$a2,.L0d9b65d0
    sra	$at,$a4,0x1
    # Line 1124
    li	$a3,1
    # Line 1125
    addiu	$a6,$a6,1
    lbu	$t3,0($a5)
    addiu	$a5,$a5,1
    b	.L0d9b65d0
    sb	$t3,-1($a6)
.L0d9b6654:
    # Line 1131
    jr	$ra
    nop
.end __glSpanSkipPixels1

# Function: __glSpanSkipPixels2
# Declared: Line 1139 (Source lines: 1141-1162)
# Address: 0x0d9b6660 - 0x0d9b671c (Size: 188 bytes, Frame: 0)
.globl __glSpanSkipPixels2
.ent __glSpanSkipPixels2
__glSpanSkipPixels2:
    # Line 1143
    lw	$t1,180($a1)
    # Line 1148
    lw	$a7,312($a1)
    # Line 1141
    move	$a5,$a2
    # Line 1147
    lw	$t2,20($a1)
    # Line 1141
    move	$a6,$a3
    # Line 1148
    blez	$t1,.L0d9b6714
    # Line 1146
    lw	$a4,32($a1)
    b	.L0d9b66e4
    # Line 1148
    move	$t0,$zero
    nop
    nop
    nop
.L0d9b6690:
    move	$a1,$a5
    beqz	$at,.L0d9b66c8
    move	$a2,$a6
    nop
.L0d9b66a0:
    # Line 1156
    lhu	$v1,0($a1)
    # Line 1155
    addiu	$a3,$a3,2
    # Line 1156
    sh	$v1,0($a2)
    addiu	$a2,$a2,4
    lhu	$v0,2($a1)
    addiu	$a1,$a1,4
    # Line 1155
    bne	$a4,$a3,.L0d9b66a0
    # Line 1156
    sh	$v0,-2($a2)
    move	$a5,$a1
    move	$a6,$a2
.L0d9b66c8:
    # Line 1160
    lh	$a1,0($a7)
    addiu	$a1,$a1,-1
    mult	$t2,$a1
    # Line 1159
    addiu	$a7,$a7,2
    # Line 1160
    mflo	$a0
    # Line 1154
    beq	$t1,$t0,.L0d9b6714
    # Line 1160
    addu	$a5,$a5,$a0
.L0d9b66e4:
    # Line 1148
    blez	$a4,.L0d9b66c8
    # Line 1154
    addiu	$t0,$t0,1
    # Line 1148
    move	$a3,$zero
    andi	$a2,$a4,0x1
    beqz	$a2,.L0d9b6690
    sra	$at,$a4,0x1
    # Line 1155
    li	$a3,1
    # Line 1156
    addiu	$a6,$a6,2
    lhu	$t3,0($a5)
    addiu	$a5,$a5,2
    b	.L0d9b6690
    sh	$t3,-2($a6)
.L0d9b6714:
    # Line 1162
    jr	$ra
    nop
.end __glSpanSkipPixels2

# Function: __glSpanSkipPixels4
# Declared: Line 1170 (Source lines: 1172-1193)
# Address: 0x0d9b6720 - 0x0d9b67dc (Size: 188 bytes, Frame: 0)
.globl __glSpanSkipPixels4
.ent __glSpanSkipPixels4
__glSpanSkipPixels4:
    # Line 1174
    lw	$t1,180($a1)
    # Line 1179
    lw	$a7,312($a1)
    # Line 1172
    move	$a5,$a2
    # Line 1178
    lw	$t2,20($a1)
    # Line 1172
    move	$a6,$a3
    # Line 1179
    blez	$t1,.L0d9b67d4
    # Line 1177
    lw	$a4,32($a1)
    b	.L0d9b67a4
    # Line 1179
    move	$t0,$zero
    nop
    nop
    nop
.L0d9b6750:
    move	$a1,$a5
    beqz	$at,.L0d9b6788
    move	$a2,$a6
    nop
.L0d9b6760:
    # Line 1187
    lw	$v1,0($a1)
    # Line 1186
    addiu	$a3,$a3,2
    # Line 1187
    sw	$v1,0($a2)
    addiu	$a2,$a2,8
    lw	$v0,4($a1)
    addiu	$a1,$a1,8
    # Line 1186
    bne	$a4,$a3,.L0d9b6760
    # Line 1187
    sw	$v0,-4($a2)
    move	$a5,$a1
    move	$a6,$a2
.L0d9b6788:
    # Line 1191
    lh	$a1,0($a7)
    addiu	$a1,$a1,-1
    mult	$t2,$a1
    # Line 1190
    addiu	$a7,$a7,2
    # Line 1191
    mflo	$a0
    # Line 1185
    beq	$t1,$t0,.L0d9b67d4
    # Line 1191
    addu	$a5,$a5,$a0
.L0d9b67a4:
    # Line 1179
    blez	$a4,.L0d9b6788
    # Line 1185
    addiu	$t0,$t0,1
    # Line 1179
    move	$a3,$zero
    andi	$a2,$a4,0x1
    beqz	$a2,.L0d9b6750
    sra	$at,$a4,0x1
    # Line 1186
    li	$a3,1
    # Line 1187
    addiu	$a6,$a6,4
    lw	$t3,0($a5)
    addiu	$a5,$a5,4
    b	.L0d9b6750
    sw	$t3,-4($a6)
.L0d9b67d4:
    # Line 1193
    jr	$ra
    nop
.end __glSpanSkipPixels4

# Function: __glSpanSlowSkipPixels2
# Declared: Line 1201 (Source lines: 1203-1230)
# Address: 0x0d9b67e0 - 0x0d9b6858 (Size: 120 bytes, Frame: 0)
.globl __glSpanSlowSkipPixels2
.ent __glSpanSlowSkipPixels2
__glSpanSlowSkipPixels2:
    # Line 1205
    lw	$t1,180($a1)
    # Line 1211
    lw	$a7,312($a1)
    # Line 1203
    move	$a4,$a2
    # Line 1210
    lw	$t0,20($a1)
    # Line 1203
    move	$a5,$a3
    # Line 1211
    blez	$t1,.L0d9b6850
    # Line 1209
    lw	$a6,32($a1)
    # Line 1211
    move	$a2,$zero
.L0d9b6800:
    blez	$a6,.L0d9b6830
    move	$a1,$zero
    nop
    nop
.L0d9b6810:
    # Line 1220
    lbu	$v0,1($a4)
    # Line 1223
    addiu	$a5,$a5,2
    # Line 1221
    lbu	$at,0($a4)
    # Line 1218
    addiu	$a1,$a1,1
    # Line 1222
    sb	$v0,-1($a5)
    # Line 1224
    addiu	$a4,$a4,2
    # Line 1218
    bne	$a6,$a1,.L0d9b6810
    # Line 1221
    sb	$at,-2($a5)
.L0d9b6830:
    # Line 1228
    lh	$a0,0($a7)
    addiu	$a0,$a0,-1
    mult	$t0,$a0
    # Line 1217
    addiu	$a2,$a2,1
    # Line 1227
    addiu	$a7,$a7,2
    # Line 1228
    mflo	$v1
    # Line 1217
    bne	$t1,$a2,.L0d9b6800
    # Line 1228
    addu	$a4,$a4,$v1
.L0d9b6850:
    # Line 1230
    jr	$ra
    nop
.end __glSpanSlowSkipPixels2

# Function: __glSpanSlowSkipPixels4
# Declared: Line 1238 (Source lines: 1240-1271)
# Address: 0x0d9b6860 - 0x0d9b68e8 (Size: 136 bytes, Frame: 0)
.globl __glSpanSlowSkipPixels4
.ent __glSpanSlowSkipPixels4
__glSpanSlowSkipPixels4:
    # Line 1242
    lw	$t1,180($a1)
    # Line 1248
    lw	$a7,312($a1)
    # Line 1240
    move	$a4,$a2
    # Line 1247
    lw	$t0,20($a1)
    # Line 1240
    move	$a5,$a3
    # Line 1248
    blez	$t1,.L0d9b68e0
    # Line 1246
    lw	$a6,32($a1)
    # Line 1248
    move	$a2,$zero
.L0d9b6880:
    blez	$a6,.L0d9b68c0
    move	$a1,$zero
    nop
    nop
.L0d9b6890:
    # Line 1257
    lbu	$v0,1($a4)
    # Line 1258
    lbu	$v1,2($a4)
    # Line 1259
    lbu	$a0,3($a4)
    # Line 1264
    addiu	$a5,$a5,4
    # Line 1260
    lbu	$at,0($a4)
    # Line 1263
    sb	$a0,-1($a5)
    # Line 1262
    sb	$v1,-2($a5)
    # Line 1255
    addiu	$a1,$a1,1
    # Line 1261
    sb	$v0,-3($a5)
    # Line 1265
    addiu	$a4,$a4,4
    # Line 1255
    bne	$a6,$a1,.L0d9b6890
    # Line 1260
    sb	$at,-4($a5)
.L0d9b68c0:
    # Line 1269
    lh	$a3,0($a7)
    addiu	$a3,$a3,-1
    mult	$t0,$a3
    # Line 1254
    addiu	$a2,$a2,1
    # Line 1268
    addiu	$a7,$a7,2
    # Line 1269
    mflo	$a1
    # Line 1254
    bne	$t1,$a2,.L0d9b6880
    # Line 1269
    addu	$a4,$a4,$a1
.L0d9b68e0:
    # Line 1271
    jr	$ra
    nop
.end __glSpanSlowSkipPixels4

# Function: __glSpanAlignPixels2
# Declared: Line 1278 (Source lines: 1280-1301)
# Address: 0x0d9b68f0 - 0x0d9b6938 (Size: 72 bytes, Frame: 0)
.globl __glSpanAlignPixels2
.ent __glSpanAlignPixels2
__glSpanAlignPixels2:
    # Line 1286
    lw	$v0,32($a1)
    # Line 1282
    lw	$at,180($a1)
    # Line 1286
    mult	$at,$v0
    mflo	$a6
    # Line 1280
    move	$a5,$a2
    # Line 1286
    move	$a1,$zero
    blez	$a6,.L0d9b6930
    # Line 1280
    move	$a4,$a3
.L0d9b6910:
    # Line 1295
    lbu	$a0,1($a5)
    # Line 1298
    addiu	$a4,$a4,2
    # Line 1296
    lbu	$v1,0($a5)
    # Line 1293
    addiu	$a1,$a1,1
    # Line 1297
    sb	$a0,-1($a4)
    # Line 1299
    addiu	$a5,$a5,2
    # Line 1293
    bne	$a6,$a1,.L0d9b6910
    # Line 1296
    sb	$v1,-2($a4)
.L0d9b6930:
    # Line 1301
    jr	$ra
    nop
.end __glSpanAlignPixels2

# Function: __glSpanAlignPixels2Dst
# Declared: Line 1309 (Source lines: 1311-1332)
# Address: 0x0d9b6940 - 0x0d9b6988 (Size: 72 bytes, Frame: 0)
.globl __glSpanAlignPixels2Dst
.ent __glSpanAlignPixels2Dst
__glSpanAlignPixels2Dst:
    # Line 1317
    lw	$v0,112($a1)
    # Line 1313
    lw	$at,180($a1)
    # Line 1317
    mult	$at,$v0
    mflo	$a6
    # Line 1311
    move	$a5,$a2
    # Line 1317
    move	$a1,$zero
    blez	$a6,.L0d9b6980
    # Line 1311
    move	$a4,$a3
.L0d9b6960:
    # Line 1326
    lbu	$a0,1($a5)
    # Line 1329
    addiu	$a4,$a4,2
    # Line 1327
    lbu	$v1,0($a5)
    # Line 1324
    addiu	$a1,$a1,1
    # Line 1328
    sb	$a0,-1($a4)
    # Line 1330
    addiu	$a5,$a5,2
    # Line 1324
    bne	$a6,$a1,.L0d9b6960
    # Line 1327
    sb	$v1,-2($a4)
.L0d9b6980:
    # Line 1332
    jr	$ra
    nop
.end __glSpanAlignPixels2Dst

# Function: __glSpanAlignPixels4
# Declared: Line 1339 (Source lines: 1341-1366)
# Address: 0x0d9b6990 - 0x0d9b69e8 (Size: 88 bytes, Frame: 0)
.globl __glSpanAlignPixels4
.ent __glSpanAlignPixels4
__glSpanAlignPixels4:
    # Line 1347
    lw	$v0,32($a1)
    # Line 1343
    lw	$at,180($a1)
    # Line 1347
    mult	$at,$v0
    mflo	$a6
    # Line 1341
    move	$a5,$a2
    # Line 1347
    move	$a1,$zero
    blez	$a6,.L0d9b69e0
    # Line 1341
    move	$a4,$a3
.L0d9b69b0:
    # Line 1356
    lbu	$a0,1($a5)
    # Line 1357
    lbu	$a2,2($a5)
    # Line 1358
    lbu	$a3,3($a5)
    # Line 1363
    addiu	$a4,$a4,4
    # Line 1359
    lbu	$v1,0($a5)
    # Line 1362
    sb	$a3,-1($a4)
    # Line 1361
    sb	$a2,-2($a4)
    # Line 1354
    addiu	$a1,$a1,1
    # Line 1360
    sb	$a0,-3($a4)
    # Line 1364
    addiu	$a5,$a5,4
    # Line 1354
    bne	$a6,$a1,.L0d9b69b0
    # Line 1359
    sb	$v1,-4($a4)
.L0d9b69e0:
    # Line 1366
    jr	$ra
    nop
.end __glSpanAlignPixels4

# Function: __glSpanAlignPixels4Dst
# Declared: Line 1374 (Source lines: 1376-1401)
# Address: 0x0d9b69f0 - 0x0d9b6a48 (Size: 88 bytes, Frame: 0)
.globl __glSpanAlignPixels4Dst
.ent __glSpanAlignPixels4Dst
__glSpanAlignPixels4Dst:
    # Line 1382
    lw	$v0,112($a1)
    # Line 1378
    lw	$at,180($a1)
    # Line 1382
    mult	$at,$v0
    mflo	$a6
    # Line 1376
    move	$a5,$a2
    # Line 1382
    move	$a1,$zero
    blez	$a6,.L0d9b6a40
    # Line 1376
    move	$a4,$a3
.L0d9b6a10:
    # Line 1391
    lbu	$a0,1($a5)
    # Line 1392
    lbu	$a2,2($a5)
    # Line 1393
    lbu	$a3,3($a5)
    # Line 1398
    addiu	$a4,$a4,4
    # Line 1394
    lbu	$v1,0($a5)
    # Line 1397
    sb	$a3,-1($a4)
    # Line 1396
    sb	$a2,-2($a4)
    # Line 1389
    addiu	$a1,$a1,1
    # Line 1395
    sb	$a0,-3($a4)
    # Line 1399
    addiu	$a5,$a5,4
    # Line 1389
    bne	$a6,$a1,.L0d9b6a10
    # Line 1394
    sb	$v1,-4($a4)
.L0d9b6a40:
    # Line 1401
    jr	$ra
    nop
.end __glSpanAlignPixels4Dst

# Function: __glSpanUnpackUbyte
# Declared: Line 1408 (Source lines: 1410-1424)
# Address: 0x0d9b6a50 - 0x0d9b6b18 (Size: 200 bytes, Frame: 0)
.globl __glSpanUnpackUbyte
.ent __glSpanUnpackUbyte
__glSpanUnpackUbyte:
    # Line 1415
    lw	$v0,28($a1)
    # Line 1412
    lw	$at,180($a1)
    # Line 1415
    mult	$at,$v0
    mflo	$a5
    # Line 1410
    move	$a6,$a2
    # Line 1415
    move	$a2,$zero
    blez	$a5,.L0d9b6b10
    # Line 1410
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9b6aa4
    sra	$a1,$a5,0x2
.L0d9b6a7c:
    # Line 1422
    lbu	$v1,0($a6)
    sll	$v1,$v1,0x2
    addu	$v1,$a0,$v1
    addiu	$a3,$a3,-1
    lwc1	$f0,3824($v1)
    # Line 1421
    addiu	$a2,$a2,1
    # Line 1422
    addiu	$a7,$a7,4
    addiu	$a6,$a6,1
    bnez	$a3,.L0d9b6a7c
    swc1	$f0,-4($a7)
.L0d9b6aa4:
    move	$a4,$a6
    beqz	$a1,.L0d9b6b10
    move	$a3,$a7
.L0d9b6ab0:
    lbu	$t1,0($a4)
    sll	$t1,$t1,0x2
    addu	$t1,$a0,$t1
    lwc1	$f4,3824($t1)
    swc1	$f4,0($a3)
    lbu	$t0,1($a4)
    sll	$t0,$t0,0x2
    addu	$t0,$a0,$t0
    lwc1	$f3,3824($t0)
    swc1	$f3,4($a3)
    lbu	$a7,2($a4)
    sll	$a7,$a7,0x2
    addu	$a7,$a0,$a7
    lwc1	$f2,3824($a7)
    swc1	$f2,8($a3)
    lbu	$a6,3($a4)
    sll	$a6,$a6,0x2
    addu	$a6,$a0,$a6
    # Line 1421
    addiu	$a2,$a2,4
    # Line 1422
    lwc1	$f1,3824($a6)
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    # Line 1421
    bne	$a5,$a2,.L0d9b6ab0
    # Line 1422
    swc1	$f1,-4($a3)
.L0d9b6b10:
    # Line 1424
    jr	$ra
    nop
.end __glSpanUnpackUbyte

# Function: __glSpanUnpackByte
# Declared: Line 1431 (Source lines: 1433-1447)
# Address: 0x0d9b6b20 - 0x0d9b6c28 (Size: 264 bytes, Frame: 0)
.globl __glSpanUnpackByte
.ent __glSpanUnpackByte
__glSpanUnpackByte:
    # Line 1438
    lw	$v0,28($a1)
    # Line 1435
    lw	$at,180($a1)
    # Line 1438
    mult	$at,$v0
    mflo	$a5
    # Line 1433
    move	$a6,$a2
    # Line 1438
    move	$a2,$zero
    blez	$a5,.L0d9b6c20
    # Line 1433
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9b6b80
    sra	$a1,$a5,0x2
.L0d9b6b4c:
    # Line 1445
    lb	$v1,0($a6)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3552($a0)
    addiu	$a3,$a3,-1
    # Line 1444
    addiu	$a2,$a2,1
    # Line 1445
    addiu	$a7,$a7,4
    mul.s	$f0,$f0,$f1
    addiu	$a6,$a6,1
    bnez	$a3,.L0d9b6b4c
    swc1	$f0,-4($a7)
.L0d9b6b80:
    move	$a4,$a6
    beqz	$a1,.L0d9b6c20
    move	$a3,$a7
    nop
.L0d9b6b90:
    lb	$t1,0($a4)
    sll	$t1,$t1,0x1
    addiu	$t1,$t1,1
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3552($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a3)
    lb	$t0,1($a4)
    sll	$t0,$t0,0x1
    addiu	$t0,$t0,1
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3552($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lb	$a7,2($a4)
    sll	$a7,$a7,0x1
    addiu	$a7,$a7,1
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3552($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    lb	$a6,3($a4)
    sll	$a6,$a6,0x1
    addiu	$a6,$a6,1
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3552($a0)
    # Line 1444
    addiu	$a2,$a2,4
    # Line 1445
    addiu	$a3,$a3,16
    mul.s	$f1,$f1,$f2
    addiu	$a4,$a4,4
    # Line 1444
    bne	$a5,$a2,.L0d9b6b90
    # Line 1445
    swc1	$f1,-4($a3)
.L0d9b6c20:
    # Line 1447
    jr	$ra
    nop
.end __glSpanUnpackByte

# Function: __glSpanUnpackUshort
# Declared: Line 1454 (Source lines: 1456-1470)
# Address: 0x0d9b6c30 - 0x0d9b6d18 (Size: 232 bytes, Frame: 0)
.globl __glSpanUnpackUshort
.ent __glSpanUnpackUshort
__glSpanUnpackUshort:
    # Line 1461
    lw	$v0,28($a1)
    # Line 1458
    lw	$at,180($a1)
    # Line 1461
    mult	$at,$v0
    mflo	$a5
    # Line 1456
    move	$a6,$a2
    # Line 1461
    move	$a2,$zero
    blez	$a5,.L0d9b6d10
    # Line 1456
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9b6c88
    sra	$a1,$a5,0x2
.L0d9b6c5c:
    # Line 1468
    lhu	$v1,0($a6)
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3560($a0)
    addiu	$a3,$a3,-1
    # Line 1467
    addiu	$a2,$a2,1
    # Line 1468
    addiu	$a7,$a7,4
    mul.s	$f0,$f0,$f1
    addiu	$a6,$a6,2
    bnez	$a3,.L0d9b6c5c
    swc1	$f0,-4($a7)
.L0d9b6c88:
    move	$a4,$a6
    beqz	$a1,.L0d9b6d10
    move	$a3,$a7
    nop
    nop
    nop
.L0d9b6ca0:
    lhu	$t1,0($a4)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3560($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a3)
    lhu	$t0,2($a4)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3560($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lhu	$a7,4($a4)
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3560($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    lhu	$a6,6($a4)
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3560($a0)
    # Line 1467
    addiu	$a2,$a2,4
    # Line 1468
    addiu	$a3,$a3,16
    mul.s	$f1,$f1,$f2
    addiu	$a4,$a4,8
    # Line 1467
    bne	$a5,$a2,.L0d9b6ca0
    # Line 1468
    swc1	$f1,-4($a3)
.L0d9b6d10:
    # Line 1470
    jr	$ra
    nop
.end __glSpanUnpackUshort

# Function: __glSpanUnpackShort
# Declared: Line 1477 (Source lines: 1479-1493)
# Address: 0x0d9b6d20 - 0x0d9b6e28 (Size: 264 bytes, Frame: 0)
.globl __glSpanUnpackShort
.ent __glSpanUnpackShort
__glSpanUnpackShort:
    # Line 1484
    lw	$v0,28($a1)
    # Line 1481
    lw	$at,180($a1)
    # Line 1484
    mult	$at,$v0
    mflo	$a5
    # Line 1479
    move	$a6,$a2
    # Line 1484
    move	$a2,$zero
    blez	$a5,.L0d9b6e20
    # Line 1479
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9b6d80
    sra	$a1,$a5,0x2
.L0d9b6d4c:
    # Line 1491
    lh	$v1,0($a6)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3560($a0)
    addiu	$a3,$a3,-1
    # Line 1490
    addiu	$a2,$a2,1
    # Line 1491
    addiu	$a7,$a7,4
    mul.s	$f0,$f0,$f1
    addiu	$a6,$a6,2
    bnez	$a3,.L0d9b6d4c
    swc1	$f0,-4($a7)
.L0d9b6d80:
    move	$a4,$a6
    beqz	$a1,.L0d9b6e20
    move	$a3,$a7
    nop
.L0d9b6d90:
    lh	$t1,0($a4)
    sll	$t1,$t1,0x1
    addiu	$t1,$t1,1
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3560($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a3)
    lh	$t0,2($a4)
    sll	$t0,$t0,0x1
    addiu	$t0,$t0,1
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3560($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lh	$a7,4($a4)
    sll	$a7,$a7,0x1
    addiu	$a7,$a7,1
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3560($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    lh	$a6,6($a4)
    sll	$a6,$a6,0x1
    addiu	$a6,$a6,1
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3560($a0)
    # Line 1490
    addiu	$a2,$a2,4
    # Line 1491
    addiu	$a3,$a3,16
    mul.s	$f1,$f1,$f2
    addiu	$a4,$a4,8
    # Line 1490
    bne	$a5,$a2,.L0d9b6d90
    # Line 1491
    swc1	$f1,-4($a3)
.L0d9b6e20:
    # Line 1493
    jr	$ra
    nop
.end __glSpanUnpackShort

# Function: __glSpanUnpackUint
# Declared: Line 1500 (Source lines: 1502-1516)
# Address: 0x0d9b6e30 - 0x0d9b6f38 (Size: 264 bytes, Frame: 0)
.globl __glSpanUnpackUint
.ent __glSpanUnpackUint
__glSpanUnpackUint:
    # Line 1507
    lw	$v0,28($a1)
    # Line 1504
    lw	$at,180($a1)
    # Line 1507
    mult	$at,$v0
    mflo	$a5
    # Line 1502
    move	$a6,$a2
    # Line 1507
    move	$a2,$zero
    blez	$a5,.L0d9b6f30
    # Line 1502
    move	$a7,$a3
    andi	$a3,$a5,0x3
    beqz	$a3,.L0d9b6e90
    sra	$a1,$a5,0x2
.L0d9b6e5c:
    # Line 1514
    lw	$v1,0($a6)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    cvt.s.l	$f0,$f0
    lwc1	$f1,3568($a0)
    addiu	$a3,$a3,-1
    # Line 1513
    addiu	$a2,$a2,1
    # Line 1514
    addiu	$a7,$a7,4
    mul.s	$f0,$f0,$f1
    addiu	$a6,$a6,4
    bnez	$a3,.L0d9b6e5c
    swc1	$f0,-4($a7)
.L0d9b6e90:
    move	$a4,$a6
    beqz	$a1,.L0d9b6f30
    move	$a3,$a7
    nop
.L0d9b6ea0:
    lw	$t1,0($a4)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f4
    cvt.s.l	$f4,$f4
    lwc1	$f5,3568($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a3)
    lw	$t0,4($a4)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f3
    cvt.s.l	$f3,$f3
    lwc1	$f4,3568($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lw	$a7,8($a4)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f2
    cvt.s.l	$f2,$f2
    lwc1	$f3,3568($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    lw	$a6,12($a4)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f1
    cvt.s.l	$f1,$f1
    lwc1	$f2,3568($a0)
    # Line 1513
    addiu	$a2,$a2,4
    # Line 1514
    addiu	$a3,$a3,16
    mul.s	$f1,$f1,$f2
    addiu	$a4,$a4,16
    # Line 1513
    bne	$a5,$a2,.L0d9b6ea0
    # Line 1514
    swc1	$f1,-4($a3)
.L0d9b6f30:
    # Line 1516
    jr	$ra
    nop
.end __glSpanUnpackUint

# Function: __glSpanUnpackInt
# Declared: Line 1523 (Source lines: 1525-1539)
# Address: 0x0d9b6f40 - 0x0d9b7048 (Size: 264 bytes, Frame: 0)
.globl __glSpanUnpackInt
.ent __glSpanUnpackInt
__glSpanUnpackInt:
    # Line 1527
    lw	$v1,180($a1)
    # Line 1530
    lw	$a1,28($a1)
    mult	$v1,$a1
    # Line 1525
    move	$a7,$a2
    move	$t0,$a3
    lui	$v0,0xa
    addiu	$v0,$v0,-25012
    # Line 1530
    mflo	$a6
    move	$a3,$zero
    # Line 1525
    addu	$at,$t9,$v0
    # Line 1530
    blez	$a6,.L0d9b7040
    andi	$a4,$a6,0x3
    lwc1	$f4,_lit_40000000
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0d9b6fb0
    nop
.L0d9b6f80:
    # Line 1537
    lw	$a2,0($a7)
    mtc1	$a2,$f1
    cvt.s.w	$f1,$f1
    madd.s	$f1,$f5,$f1,$f4
    lwc1	$f0,3568($a0)
    addiu	$a4,$a4,-1
    # Line 1536
    addiu	$a3,$a3,1
    # Line 1537
    addiu	$t0,$t0,4
    mul.s	$f0,$f0,$f1
    addiu	$a7,$a7,4
    bnez	$a4,.L0d9b6f80
    swc1	$f0,-4($t0)
.L0d9b6fb0:
    sra	$a4,$a6,0x2
    beqz	$a4,.L0d9b7040
    move	$a5,$a7
    move	$a4,$t0
.L0d9b6fc0:
    lw	$t2,0($a5)
    mtc1	$t2,$f11
    cvt.s.w	$f11,$f11
    madd.s	$f11,$f5,$f11,$f4
    lwc1	$f10,3568($a0)
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($a4)
    lw	$t1,4($a5)
    mtc1	$t1,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f5,$f9,$f4
    lwc1	$f8,3568($a0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,4($a4)
    lw	$t0,8($a5)
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    madd.s	$f7,$f5,$f7,$f4
    lwc1	$f6,3568($a0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,8($a4)
    lw	$a7,12($a5)
    mtc1	$a7,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f3,$f5,$f3,$f4
    lwc1	$f2,3568($a0)
    # Line 1536
    addiu	$a3,$a3,4
    # Line 1537
    addiu	$a4,$a4,16
    mul.s	$f2,$f2,$f3
    addiu	$a5,$a5,16
    # Line 1536
    bne	$a6,$a3,.L0d9b6fc0
    # Line 1537
    swc1	$f2,-4($a4)
.L0d9b7040:
    # Line 1539
    jr	$ra
    nop
.end __glSpanUnpackInt

# Function: __glSpanUnpack332Ubyte
# Declared: Line 1545 (Source lines: 1547-1564)
# Address: 0x0d9b7050 - 0x0d9b71d8 (Size: 392 bytes, Frame: 0)
.globl __glSpanUnpack332Ubyte
.ent __glSpanUnpack332Ubyte
__glSpanUnpack332Ubyte:
    # Line 1547
    move	$a6,$a3
    # Line 1549
    lw	$a5,180($a1)
    # Line 1547
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-25284
    andi	$v1,$a5,0x1
    # Line 1551
    blez	$a5,.L0d9b71d0
    # Line 1547
    addu	$at,$t9,$v0
    # Line 1551
    move	$a2,$zero
    ldc1	$f5,_lit8_4008000000000000
    beqz	$v1,.L0d9b70ec
    ldc1	$f4,_lit8_401c000000000000
    # Line 1559
    lbu	$a0,0($a7)
    # Line 1560
    sra	$a2,$a0,0x5
    # Line 1561
    sra	$a1,$a0,0x2
    # Line 1562
    andi	$a0,$a0,0x3
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1560
    andi	$a2,$a2,0x7
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1561
    andi	$a1,$a1,0x7
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1562
    cvt.s.d	$f0,$f0
    swc1	$f0,8($a3)
    # Line 1560
    cvt.s.d	$f2,$f2
    # Line 1562
    addiu	$a6,$a3,12
    # Line 1561
    cvt.s.d	$f1,$f1
    # Line 1560
    swc1	$f2,0($a3)
    # Line 1559
    addiu	$a7,$a7,1
    # Line 1558
    li	$a2,1
    # Line 1561
    swc1	$f1,4($a3)
.L0d9b70ec:
    sra	$a3,$a5,0x1
    beqz	$a3,.L0d9b71d0
    move	$a4,$a6
    move	$a3,$a7
    nop
.L0d9b7100:
    # Line 1559
    lbu	$t1,0($a3)
    # Line 1560
    sra	$t3,$t1,0x5
    # Line 1561
    sra	$t2,$t1,0x2
    # Line 1562
    andi	$t1,$t1,0x3
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f5
    # Line 1561
    andi	$t2,$t2,0x7
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1560
    andi	$t3,$t3,0x7
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1562
    cvt.s.d	$f8,$f8
    swc1	$f8,8($a4)
    # Line 1561
    cvt.s.d	$f9,$f9
    # Line 1560
    cvt.s.d	$f10,$f10
    # Line 1561
    swc1	$f9,4($a4)
    # Line 1560
    swc1	$f10,0($a4)
    # Line 1559
    lbu	$a6,1($a3)
    # Line 1560
    sra	$t0,$a6,0x5
    # Line 1561
    sra	$a7,$a6,0x2
    # Line 1562
    andi	$a6,$a6,0x3
    mtc1	$a6,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f5
    # Line 1560
    andi	$t0,$t0,0x7
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1561
    andi	$a7,$a7,0x7
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1562
    addiu	$a4,$a4,24
    cvt.s.d	$f3,$f3
    # Line 1558
    addiu	$a2,$a2,2
    # Line 1562
    swc1	$f3,-4($a4)
    # Line 1560
    cvt.s.d	$f7,$f7
    # Line 1561
    cvt.s.d	$f6,$f6
    # Line 1560
    swc1	$f7,-12($a4)
    # Line 1559
    addiu	$a3,$a3,2
    # Line 1558
    bne	$a5,$a2,.L0d9b7100
    # Line 1561
    swc1	$f6,-8($a4)
.L0d9b71d0:
    # Line 1564
    jr	$ra
    nop
.end __glSpanUnpack332Ubyte

# Function: __glSpanUnpack233RevUbyte
# Declared: Line 1570 (Source lines: 1572-1589)
# Address: 0x0d9b71e0 - 0x0d9b7368 (Size: 392 bytes, Frame: 0)
.globl __glSpanUnpack233RevUbyte
.ent __glSpanUnpack233RevUbyte
__glSpanUnpack233RevUbyte:
    # Line 1572
    move	$a6,$a3
    # Line 1574
    lw	$a5,180($a1)
    # Line 1572
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-25684
    andi	$v1,$a5,0x1
    # Line 1576
    blez	$a5,.L0d9b7360
    # Line 1572
    addu	$at,$t9,$v0
    # Line 1576
    move	$a2,$zero
    ldc1	$f5,_lit8_4008000000000000
    beqz	$v1,.L0d9b727c
    ldc1	$f4,_lit8_401c000000000000
    # Line 1584
    lbu	$a0,0($a7)
    # Line 1585
    andi	$a2,$a0,0x7
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1586
    sra	$a1,$a0,0x3
    andi	$a1,$a1,0x7
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1587
    sra	$a0,$a0,0x6
    andi	$a0,$a0,0x3
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1585
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a3)
    # Line 1586
    cvt.s.d	$f1,$f1
    # Line 1587
    addiu	$a6,$a3,12
    cvt.s.d	$f0,$f0
    # Line 1586
    swc1	$f1,4($a3)
    # Line 1584
    addiu	$a7,$a7,1
    # Line 1583
    li	$a2,1
    # Line 1587
    swc1	$f0,8($a3)
.L0d9b727c:
    sra	$a3,$a5,0x1
    beqz	$a3,.L0d9b7360
    move	$a4,$a6
    move	$a3,$a7
    nop
.L0d9b7290:
    # Line 1584
    lbu	$t1,0($a3)
    # Line 1585
    andi	$t3,$t1,0x7
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1586
    sra	$t2,$t1,0x3
    andi	$t2,$t2,0x7
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1587
    sra	$t1,$t1,0x6
    andi	$t1,$t1,0x3
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f5
    # Line 1585
    cvt.s.d	$f10,$f10
    swc1	$f10,0($a4)
    # Line 1586
    cvt.s.d	$f9,$f9
    swc1	$f9,4($a4)
    # Line 1587
    cvt.s.d	$f8,$f8
    swc1	$f8,8($a4)
    # Line 1584
    lbu	$a6,1($a3)
    # Line 1585
    andi	$t0,$a6,0x7
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1586
    sra	$a7,$a6,0x3
    andi	$a7,$a7,0x7
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1587
    sra	$a6,$a6,0x6
    andi	$a6,$a6,0x3
    mtc1	$a6,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f5
    addiu	$a4,$a4,24
    # Line 1585
    cvt.s.d	$f7,$f7
    # Line 1583
    addiu	$a2,$a2,2
    # Line 1585
    swc1	$f7,-12($a4)
    # Line 1586
    cvt.s.d	$f6,$f6
    # Line 1587
    cvt.s.d	$f3,$f3
    # Line 1586
    swc1	$f6,-8($a4)
    # Line 1584
    addiu	$a3,$a3,2
    # Line 1583
    bne	$a5,$a2,.L0d9b7290
    # Line 1587
    swc1	$f3,-4($a4)
.L0d9b7360:
    # Line 1589
    jr	$ra
    nop
.end __glSpanUnpack233RevUbyte

# Function: __glSpanUnpack565Ushort
# Declared: Line 1595 (Source lines: 1597-1614)
# Address: 0x0d9b7370 - 0x0d9b74f8 (Size: 392 bytes, Frame: 0)
.globl __glSpanUnpack565Ushort
.ent __glSpanUnpack565Ushort
__glSpanUnpack565Ushort:
    # Line 1597
    move	$a6,$a3
    # Line 1599
    lw	$a5,180($a1)
    # Line 1597
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-26084
    andi	$v1,$a5,0x1
    # Line 1601
    blez	$a5,.L0d9b74f0
    # Line 1597
    addu	$at,$t9,$v0
    # Line 1601
    move	$a2,$zero
    ldc1	$f5,_lit8_404f800000000000
    beqz	$v1,.L0d9b740c
    ldc1	$f4,_lit8_403f000000000000
    # Line 1609
    lhu	$a0,0($a7)
    # Line 1610
    sra	$a2,$a0,0xb
    # Line 1611
    sra	$a1,$a0,0x5
    # Line 1612
    andi	$a0,$a0,0x1f
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1610
    andi	$a2,$a2,0x1f
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1611
    andi	$a1,$a1,0x3f
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f5
    # Line 1612
    cvt.s.d	$f0,$f0
    swc1	$f0,8($a3)
    # Line 1610
    cvt.s.d	$f2,$f2
    # Line 1612
    addiu	$a6,$a3,12
    # Line 1611
    cvt.s.d	$f1,$f1
    # Line 1610
    swc1	$f2,0($a3)
    # Line 1609
    addiu	$a7,$a7,2
    # Line 1608
    li	$a2,1
    # Line 1611
    swc1	$f1,4($a3)
.L0d9b740c:
    sra	$a3,$a5,0x1
    beqz	$a3,.L0d9b74f0
    move	$a4,$a6
    move	$a3,$a7
    nop
.L0d9b7420:
    # Line 1609
    lhu	$t1,0($a3)
    # Line 1610
    sra	$t3,$t1,0xb
    # Line 1611
    sra	$t2,$t1,0x5
    # Line 1612
    andi	$t1,$t1,0x1f
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1611
    andi	$t2,$t2,0x3f
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f5
    # Line 1610
    andi	$t3,$t3,0x1f
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1612
    cvt.s.d	$f8,$f8
    swc1	$f8,8($a4)
    # Line 1611
    cvt.s.d	$f9,$f9
    # Line 1610
    cvt.s.d	$f10,$f10
    # Line 1611
    swc1	$f9,4($a4)
    # Line 1610
    swc1	$f10,0($a4)
    # Line 1609
    lhu	$a6,2($a3)
    # Line 1610
    sra	$t0,$a6,0xb
    # Line 1611
    sra	$a7,$a6,0x5
    # Line 1612
    andi	$a6,$a6,0x1f
    mtc1	$a6,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1610
    andi	$t0,$t0,0x1f
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1611
    andi	$a7,$a7,0x3f
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f5
    # Line 1612
    addiu	$a4,$a4,24
    cvt.s.d	$f3,$f3
    # Line 1608
    addiu	$a2,$a2,2
    # Line 1612
    swc1	$f3,-4($a4)
    # Line 1610
    cvt.s.d	$f7,$f7
    # Line 1611
    cvt.s.d	$f6,$f6
    # Line 1610
    swc1	$f7,-12($a4)
    # Line 1609
    addiu	$a3,$a3,4
    # Line 1608
    bne	$a5,$a2,.L0d9b7420
    # Line 1611
    swc1	$f6,-8($a4)
.L0d9b74f0:
    # Line 1614
    jr	$ra
    nop
.end __glSpanUnpack565Ushort

# Function: __glSpanUnpack565RevUshort
# Declared: Line 1620 (Source lines: 1622-1639)
# Address: 0x0d9b7500 - 0x0d9b7688 (Size: 392 bytes, Frame: 0)
.globl __glSpanUnpack565RevUshort
.ent __glSpanUnpack565RevUshort
__glSpanUnpack565RevUshort:
    # Line 1622
    move	$a6,$a3
    # Line 1624
    lw	$a5,180($a1)
    # Line 1622
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-26484
    andi	$v1,$a5,0x1
    # Line 1626
    blez	$a5,.L0d9b7680
    # Line 1622
    addu	$at,$t9,$v0
    # Line 1626
    move	$a2,$zero
    ldc1	$f5,_lit8_404f800000000000
    beqz	$v1,.L0d9b759c
    ldc1	$f4,_lit8_403f000000000000
    # Line 1634
    lhu	$a0,0($a7)
    # Line 1635
    andi	$a2,$a0,0x1f
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1636
    sra	$a1,$a0,0x5
    andi	$a1,$a1,0x3f
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f5
    # Line 1637
    sra	$a0,$a0,0xb
    andi	$a0,$a0,0x1f
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1635
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a3)
    # Line 1636
    cvt.s.d	$f1,$f1
    # Line 1637
    addiu	$a6,$a3,12
    cvt.s.d	$f0,$f0
    # Line 1636
    swc1	$f1,4($a3)
    # Line 1634
    addiu	$a7,$a7,2
    # Line 1633
    li	$a2,1
    # Line 1637
    swc1	$f0,8($a3)
.L0d9b759c:
    sra	$a3,$a5,0x1
    beqz	$a3,.L0d9b7680
    move	$a4,$a6
    move	$a3,$a7
    nop
.L0d9b75b0:
    # Line 1634
    lhu	$t1,0($a3)
    # Line 1635
    andi	$t3,$t1,0x1f
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1636
    sra	$t2,$t1,0x5
    andi	$t2,$t2,0x3f
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f5
    # Line 1637
    sra	$t1,$t1,0xb
    andi	$t1,$t1,0x1f
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1635
    cvt.s.d	$f10,$f10
    swc1	$f10,0($a4)
    # Line 1636
    cvt.s.d	$f9,$f9
    swc1	$f9,4($a4)
    # Line 1637
    cvt.s.d	$f8,$f8
    swc1	$f8,8($a4)
    # Line 1634
    lhu	$a6,2($a3)
    # Line 1635
    andi	$t0,$a6,0x1f
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1636
    sra	$a7,$a6,0x5
    andi	$a7,$a7,0x3f
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f5
    # Line 1637
    sra	$a6,$a6,0xb
    andi	$a6,$a6,0x1f
    mtc1	$a6,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    addiu	$a4,$a4,24
    # Line 1635
    cvt.s.d	$f7,$f7
    # Line 1633
    addiu	$a2,$a2,2
    # Line 1635
    swc1	$f7,-12($a4)
    # Line 1636
    cvt.s.d	$f6,$f6
    # Line 1637
    cvt.s.d	$f3,$f3
    # Line 1636
    swc1	$f6,-8($a4)
    # Line 1634
    addiu	$a3,$a3,4
    # Line 1633
    bne	$a5,$a2,.L0d9b75b0
    # Line 1637
    swc1	$f3,-4($a4)
.L0d9b7680:
    # Line 1639
    jr	$ra
    nop
.end __glSpanUnpack565RevUshort

# Function: __glSpanUnpack4444Ushort
# Declared: Line 1645 (Source lines: 1647-1665)
# Address: 0x0d9b7690 - 0x0d9b7878 (Size: 488 bytes, Frame: 0)
.globl __glSpanUnpack4444Ushort
.ent __glSpanUnpack4444Ushort
__glSpanUnpack4444Ushort:
    # Line 1647
    move	$a6,$a3
    # Line 1649
    lw	$a5,180($a1)
    # Line 1647
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-26884
    andi	$v1,$a5,0x1
    # Line 1651
    blez	$a5,.L0d9b7870
    # Line 1647
    addu	$at,$t9,$v0
    # Line 1651
    move	$a2,$zero
    sra	$a4,$a5,0x1
    beqz	$v1,.L0d9b774c
    ldc1	$f4,_lit8_402e000000000000
    # Line 1659
    lhu	$a0,0($a7)
    # Line 1660
    sra	$a3,$a0,0xc
    # Line 1661
    sra	$a2,$a0,0x8
    # Line 1662
    sra	$a1,$a0,0x4
    # Line 1663
    andi	$a0,$a0,0xf
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1661
    andi	$a2,$a2,0xf
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1660
    andi	$a3,$a3,0xf
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1662
    andi	$a1,$a1,0xf
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1663
    addiu	$a6,$a6,16
    cvt.s.d	$f0,$f0
    swc1	$f0,-4($a6)
    # Line 1660
    cvt.s.d	$f3,$f3
    # Line 1661
    cvt.s.d	$f2,$f2
    # Line 1660
    swc1	$f3,-16($a6)
    # Line 1662
    cvt.s.d	$f1,$f1
    # Line 1661
    swc1	$f2,-12($a6)
    # Line 1659
    addiu	$a7,$a7,2
    # Line 1658
    li	$a2,1
    # Line 1662
    swc1	$f1,-8($a6)
.L0d9b774c:
    beqz	$a4,.L0d9b7870
    move	$a3,$a7
    move	$a4,$a6
    nop
    nop
.L0d9b7760:
    # Line 1659
    lhu	$t2,0($a3)
    # Line 1660
    sra	$t9,$t2,0xc
    # Line 1661
    sra	$t8,$t2,0x8
    # Line 1662
    sra	$t3,$t2,0x4
    # Line 1663
    andi	$t2,$t2,0xf
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1661
    andi	$t8,$t8,0xf
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1662
    andi	$t3,$t3,0xf
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1660
    andi	$t9,$t9,0xf
    mtc1	$t9,$f12
    cvt.s.w	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1663
    cvt.s.d	$f9,$f9
    swc1	$f9,12($a4)
    # Line 1662
    cvt.s.d	$f10,$f10
    # Line 1661
    cvt.s.d	$f11,$f11
    # Line 1662
    swc1	$f10,8($a4)
    # Line 1660
    cvt.s.d	$f12,$f12
    # Line 1661
    swc1	$f11,4($a4)
    # Line 1660
    swc1	$f12,0($a4)
    # Line 1659
    lhu	$a6,2($a3)
    # Line 1660
    sra	$t1,$a6,0xc
    # Line 1661
    sra	$t0,$a6,0x8
    # Line 1662
    sra	$a7,$a6,0x4
    # Line 1663
    andi	$a6,$a6,0xf
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    cvt.d.s	$f5,$f5
    div.d	$f5,$f5,$f4
    # Line 1661
    andi	$t0,$t0,0xf
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1660
    andi	$t1,$t1,0xf
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1662
    andi	$a7,$a7,0xf
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1663
    addiu	$a4,$a4,32
    cvt.s.d	$f5,$f5
    swc1	$f5,-4($a4)
    # Line 1660
    cvt.s.d	$f8,$f8
    # Line 1658
    addiu	$a2,$a2,2
    # Line 1661
    cvt.s.d	$f7,$f7
    # Line 1660
    swc1	$f8,-16($a4)
    # Line 1662
    cvt.s.d	$f6,$f6
    # Line 1661
    swc1	$f7,-12($a4)
    # Line 1659
    addiu	$a3,$a3,4
    # Line 1658
    bne	$a5,$a2,.L0d9b7760
    # Line 1662
    swc1	$f6,-8($a4)
.L0d9b7870:
    # Line 1665
    jr	$ra
    nop
.end __glSpanUnpack4444Ushort

# Function: __glSpanUnpack4444RevUshort
# Declared: Line 1671 (Source lines: 1673-1691)
# Address: 0x0d9b7880 - 0x0d9b7a68 (Size: 488 bytes, Frame: 0)
.globl __glSpanUnpack4444RevUshort
.ent __glSpanUnpack4444RevUshort
__glSpanUnpack4444RevUshort:
    # Line 1673
    move	$a6,$a3
    # Line 1675
    lw	$a5,180($a1)
    # Line 1673
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-27380
    andi	$v1,$a5,0x1
    # Line 1677
    blez	$a5,.L0d9b7a60
    # Line 1673
    addu	$at,$t9,$v0
    # Line 1677
    move	$a2,$zero
    sra	$a4,$a5,0x1
    beqz	$v1,.L0d9b793c
    ldc1	$f4,_lit8_402e000000000000
    # Line 1685
    lhu	$a0,0($a7)
    # Line 1686
    andi	$a3,$a0,0xf
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1688
    sra	$a1,$a0,0x8
    andi	$a1,$a1,0xf
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1687
    sra	$a2,$a0,0x4
    andi	$a2,$a2,0xf
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1689
    sra	$a0,$a0,0xc
    andi	$a0,$a0,0xf
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    addiu	$a6,$a6,16
    # Line 1686
    cvt.s.d	$f3,$f3
    swc1	$f3,-16($a6)
    # Line 1687
    cvt.s.d	$f2,$f2
    # Line 1688
    cvt.s.d	$f1,$f1
    # Line 1687
    swc1	$f2,-12($a6)
    # Line 1689
    cvt.s.d	$f0,$f0
    # Line 1688
    swc1	$f1,-8($a6)
    # Line 1685
    addiu	$a7,$a7,2
    # Line 1684
    li	$a2,1
    # Line 1689
    swc1	$f0,-4($a6)
.L0d9b793c:
    beqz	$a4,.L0d9b7a60
    move	$a3,$a7
    move	$a4,$a6
    nop
    nop
.L0d9b7950:
    # Line 1685
    lhu	$t2,0($a3)
    # Line 1686
    andi	$t9,$t2,0xf
    mtc1	$t9,$f12
    cvt.s.w	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1687
    sra	$t8,$t2,0x4
    andi	$t8,$t8,0xf
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1688
    sra	$t3,$t2,0x8
    andi	$t3,$t3,0xf
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1689
    sra	$t2,$t2,0xc
    andi	$t2,$t2,0xf
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1686
    cvt.s.d	$f12,$f12
    swc1	$f12,0($a4)
    # Line 1687
    cvt.s.d	$f11,$f11
    swc1	$f11,4($a4)
    # Line 1688
    cvt.s.d	$f10,$f10
    swc1	$f10,8($a4)
    # Line 1689
    cvt.s.d	$f9,$f9
    swc1	$f9,12($a4)
    # Line 1685
    lhu	$a6,2($a3)
    # Line 1686
    andi	$t1,$a6,0xf
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1687
    sra	$t0,$a6,0x4
    andi	$t0,$t0,0xf
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1688
    sra	$a7,$a6,0x8
    andi	$a7,$a7,0xf
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1689
    sra	$a6,$a6,0xc
    andi	$a6,$a6,0xf
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    cvt.d.s	$f5,$f5
    div.d	$f5,$f5,$f4
    addiu	$a4,$a4,32
    # Line 1686
    cvt.s.d	$f8,$f8
    swc1	$f8,-16($a4)
    # Line 1687
    cvt.s.d	$f7,$f7
    # Line 1684
    addiu	$a2,$a2,2
    # Line 1687
    swc1	$f7,-12($a4)
    # Line 1688
    cvt.s.d	$f6,$f6
    # Line 1689
    cvt.s.d	$f5,$f5
    # Line 1688
    swc1	$f6,-8($a4)
    # Line 1685
    addiu	$a3,$a3,4
    # Line 1684
    bne	$a5,$a2,.L0d9b7950
    # Line 1689
    swc1	$f5,-4($a4)
.L0d9b7a60:
    # Line 1691
    jr	$ra
    nop
.end __glSpanUnpack4444RevUshort

# Function: __glSpanUnpack5551Ushort
# Declared: Line 1697 (Source lines: 1699-1717)
# Address: 0x0d9b7a70 - 0x0d9b7c30 (Size: 448 bytes, Frame: 0)
.globl __glSpanUnpack5551Ushort
.ent __glSpanUnpack5551Ushort
__glSpanUnpack5551Ushort:
    # Line 1699
    move	$a6,$a3
    # Line 1701
    lw	$a5,180($a1)
    # Line 1699
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-27876
    andi	$v1,$a5,0x1
    # Line 1703
    blez	$a5,.L0d9b7c28
    # Line 1699
    addu	$at,$t9,$v0
    # Line 1703
    move	$a2,$zero
    sra	$a4,$a5,0x1
    beqz	$v1,.L0d9b7b20
    ldc1	$f4,_lit8_403f000000000000
    # Line 1711
    lhu	$a0,0($a7)
    # Line 1713
    sra	$a2,$a0,0x6
    andi	$a2,$a2,0x1f
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1712
    sra	$a3,$a0,0xb
    andi	$a3,$a3,0x1f
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1714
    sra	$a1,$a0,0x1
    andi	$a1,$a1,0x1f
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1715
    andi	$a0,$a0,0x1
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,16
    swc1	$f0,-4($a6)
    # Line 1712
    cvt.s.d	$f3,$f3
    # Line 1713
    cvt.s.d	$f2,$f2
    # Line 1712
    swc1	$f3,-16($a6)
    # Line 1714
    cvt.s.d	$f1,$f1
    # Line 1713
    swc1	$f2,-12($a6)
    # Line 1711
    addiu	$a7,$a7,2
    # Line 1710
    li	$a2,1
    # Line 1714
    swc1	$f1,-8($a6)
.L0d9b7b20:
    beqz	$a4,.L0d9b7c28
    move	$a3,$a7
    move	$a4,$a6
    nop
.L0d9b7b30:
    # Line 1711
    lhu	$t2,0($a3)
    # Line 1713
    sra	$t8,$t2,0x6
    andi	$t8,$t8,0x1f
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1714
    sra	$t3,$t2,0x1
    andi	$t3,$t3,0x1f
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1712
    sra	$t9,$t2,0xb
    andi	$t9,$t9,0x1f
    mtc1	$t9,$f12
    cvt.s.w	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1715
    andi	$t2,$t2,0x1
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,12($a4)
    # Line 1714
    cvt.s.d	$f10,$f10
    # Line 1713
    cvt.s.d	$f11,$f11
    # Line 1714
    swc1	$f10,8($a4)
    # Line 1712
    cvt.s.d	$f12,$f12
    # Line 1713
    swc1	$f11,4($a4)
    # Line 1712
    swc1	$f12,0($a4)
    # Line 1711
    lhu	$a6,2($a3)
    # Line 1713
    sra	$t0,$a6,0x6
    andi	$t0,$t0,0x1f
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1712
    sra	$t1,$a6,0xb
    andi	$t1,$t1,0x1f
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1714
    sra	$a7,$a6,0x1
    andi	$a7,$a7,0x1f
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1715
    andi	$a6,$a6,0x1
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    addiu	$a4,$a4,32
    swc1	$f5,-4($a4)
    # Line 1712
    cvt.s.d	$f8,$f8
    # Line 1710
    addiu	$a2,$a2,2
    # Line 1713
    cvt.s.d	$f7,$f7
    # Line 1712
    swc1	$f8,-16($a4)
    # Line 1714
    cvt.s.d	$f6,$f6
    # Line 1713
    swc1	$f7,-12($a4)
    # Line 1711
    addiu	$a3,$a3,4
    # Line 1710
    bne	$a5,$a2,.L0d9b7b30
    # Line 1714
    swc1	$f6,-8($a4)
.L0d9b7c28:
    # Line 1717
    jr	$ra
    nop
.end __glSpanUnpack5551Ushort

# Function: __glSpanUnpack1555RevUshort
# Declared: Line 1723 (Source lines: 1725-1743)
# Address: 0x0d9b7c30 - 0x0d9b7df0 (Size: 448 bytes, Frame: 0)
.globl __glSpanUnpack1555RevUshort
.ent __glSpanUnpack1555RevUshort
__glSpanUnpack1555RevUshort:
    # Line 1725
    move	$a6,$a3
    # Line 1727
    lw	$a5,180($a1)
    # Line 1725
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-28324
    andi	$v1,$a5,0x1
    # Line 1729
    blez	$a5,.L0d9b7de8
    # Line 1725
    addu	$at,$t9,$v0
    # Line 1729
    move	$a2,$zero
    sra	$a4,$a5,0x1
    beqz	$v1,.L0d9b7ce0
    ldc1	$f4,_lit8_403f000000000000
    # Line 1737
    lhu	$a0,0($a7)
    # Line 1738
    andi	$a3,$a0,0x1f
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1739
    sra	$a2,$a0,0x5
    andi	$a2,$a2,0x1f
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1740
    sra	$a1,$a0,0xa
    andi	$a1,$a1,0x1f
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1741
    sra	$a0,$a0,0xf
    andi	$a0,$a0,0x1
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,16
    swc1	$f0,-4($a6)
    # Line 1738
    cvt.s.d	$f3,$f3
    swc1	$f3,-16($a6)
    # Line 1739
    cvt.s.d	$f2,$f2
    # Line 1740
    cvt.s.d	$f1,$f1
    # Line 1739
    swc1	$f2,-12($a6)
    # Line 1737
    addiu	$a7,$a7,2
    # Line 1736
    li	$a2,1
    # Line 1740
    swc1	$f1,-8($a6)
.L0d9b7ce0:
    beqz	$a4,.L0d9b7de8
    move	$a3,$a7
    move	$a4,$a6
    nop
.L0d9b7cf0:
    # Line 1737
    lhu	$t2,0($a3)
    # Line 1738
    andi	$t9,$t2,0x1f
    mtc1	$t9,$f12
    cvt.s.w	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1740
    sra	$t3,$t2,0xa
    andi	$t3,$t3,0x1f
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1739
    sra	$t8,$t2,0x5
    andi	$t8,$t8,0x1f
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1741
    sra	$t2,$t2,0xf
    andi	$t2,$t2,0x1
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,12($a4)
    # Line 1738
    cvt.s.d	$f12,$f12
    swc1	$f12,0($a4)
    # Line 1740
    cvt.s.d	$f10,$f10
    # Line 1739
    cvt.s.d	$f11,$f11
    # Line 1740
    swc1	$f10,8($a4)
    # Line 1739
    swc1	$f11,4($a4)
    # Line 1737
    lhu	$a6,2($a3)
    # Line 1738
    andi	$t1,$a6,0x1f
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1739
    sra	$t0,$a6,0x5
    andi	$t0,$t0,0x1f
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1740
    sra	$a7,$a6,0xa
    andi	$a7,$a7,0x1f
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1741
    sra	$a6,$a6,0xf
    andi	$a6,$a6,0x1
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    addiu	$a4,$a4,32
    swc1	$f5,-4($a4)
    # Line 1738
    cvt.s.d	$f8,$f8
    # Line 1736
    addiu	$a2,$a2,2
    # Line 1738
    swc1	$f8,-16($a4)
    # Line 1739
    cvt.s.d	$f7,$f7
    # Line 1740
    cvt.s.d	$f6,$f6
    # Line 1739
    swc1	$f7,-12($a4)
    # Line 1737
    addiu	$a3,$a3,4
    # Line 1736
    bne	$a5,$a2,.L0d9b7cf0
    # Line 1740
    swc1	$f6,-8($a4)
.L0d9b7de8:
    # Line 1743
    jr	$ra
    nop
.end __glSpanUnpack1555RevUshort

# Function: __glSpanUnpack8888Uint
# Declared: Line 1749 (Source lines: 1751-1770)
# Address: 0x0d9b7df0 - 0x0d9b7fd0 (Size: 480 bytes, Frame: 0)
.globl __glSpanUnpack8888Uint
.ent __glSpanUnpack8888Uint
__glSpanUnpack8888Uint:
    # Line 1751
    move	$a6,$a3
    # Line 1753
    lw	$a5,180($a1)
    # Line 1751
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-28772
    andi	$v1,$a5,0x1
    # Line 1755
    blez	$a5,.L0d9b7fc8
    # Line 1751
    addu	$at,$t9,$v0
    # Line 1755
    move	$a2,$zero
    sra	$a4,$a5,0x1
    beqz	$v1,.L0d9b7ea8
    ldc1	$f4,_lit8_406fe00000000000
    # Line 1763
    lw	$a0,0($a7)
    # Line 1765
    srl	$a3,$a0,0x18
    # Line 1766
    srl	$a2,$a0,0x10
    # Line 1767
    srl	$a1,$a0,0x8
    # Line 1768
    andi	$a0,$a0,0xff
    dmtc1	$a0,$f0
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1765
    dmtc1	$a3,$f3
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1766
    andi	$a2,$a2,0xff
    dmtc1	$a2,$f2
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1767
    andi	$a1,$a1,0xff
    dmtc1	$a1,$f1
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1768
    addiu	$a6,$a6,16
    # Line 1765
    cvt.s.d	$f3,$f3
    # Line 1768
    cvt.s.d	$f0,$f0
    # Line 1765
    swc1	$f3,-16($a6)
    # Line 1768
    swc1	$f0,-4($a6)
    # Line 1766
    cvt.s.d	$f2,$f2
    # Line 1767
    cvt.s.d	$f1,$f1
    # Line 1766
    swc1	$f2,-12($a6)
    # Line 1763
    addiu	$a7,$a7,4
    # Line 1762
    li	$a2,1
    # Line 1767
    swc1	$f1,-8($a6)
.L0d9b7ea8:
    beqz	$a4,.L0d9b7fc8
    move	$a3,$a7
    move	$a4,$a6
    nop
    nop
    nop
.L0d9b7ec0:
    # Line 1763
    lw	$t2,0($a3)
    # Line 1765
    srl	$t9,$t2,0x18
    dmtc1	$t9,$f12
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1766
    srl	$t8,$t2,0x10
    andi	$t8,$t8,0xff
    dmtc1	$t8,$f11
    cvt.s.l	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1767
    srl	$t3,$t2,0x8
    andi	$t3,$t3,0xff
    dmtc1	$t3,$f10
    cvt.s.l	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1768
    andi	$t2,$t2,0xff
    dmtc1	$t2,$f9
    cvt.s.l	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1765
    cvt.s.d	$f12,$f12
    swc1	$f12,0($a4)
    # Line 1766
    cvt.s.d	$f11,$f11
    swc1	$f11,4($a4)
    # Line 1767
    cvt.s.d	$f10,$f10
    swc1	$f10,8($a4)
    # Line 1768
    cvt.s.d	$f9,$f9
    swc1	$f9,12($a4)
    # Line 1763
    lw	$a6,4($a3)
    # Line 1765
    srl	$t1,$a6,0x18
    dmtc1	$t1,$f8
    cvt.s.l	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1766
    srl	$t0,$a6,0x10
    andi	$t0,$t0,0xff
    dmtc1	$t0,$f7
    cvt.s.l	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1767
    srl	$a7,$a6,0x8
    andi	$a7,$a7,0xff
    dmtc1	$a7,$f6
    cvt.s.l	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1768
    andi	$a6,$a6,0xff
    dmtc1	$a6,$f5
    cvt.s.l	$f5,$f5
    cvt.d.s	$f5,$f5
    div.d	$f5,$f5,$f4
    addiu	$a4,$a4,32
    # Line 1765
    cvt.s.d	$f8,$f8
    swc1	$f8,-16($a4)
    # Line 1766
    cvt.s.d	$f7,$f7
    # Line 1762
    addiu	$a2,$a2,2
    # Line 1766
    swc1	$f7,-12($a4)
    # Line 1767
    cvt.s.d	$f6,$f6
    # Line 1768
    cvt.s.d	$f5,$f5
    # Line 1767
    swc1	$f6,-8($a4)
    # Line 1763
    addiu	$a3,$a3,8
    # Line 1762
    bne	$a5,$a2,.L0d9b7ec0
    # Line 1768
    swc1	$f5,-4($a4)
.L0d9b7fc8:
    # Line 1770
    jr	$ra
    nop
.end __glSpanUnpack8888Uint

# Function: __glSpanUnpack8888RevUint
# Declared: Line 1776 (Source lines: 1778-1797)
# Address: 0x0d9b7fd0 - 0x0d9b81b0 (Size: 480 bytes, Frame: 0)
.globl __glSpanUnpack8888RevUint
.ent __glSpanUnpack8888RevUint
__glSpanUnpack8888RevUint:
    # Line 1778
    move	$a6,$a3
    # Line 1780
    lw	$a5,180($a1)
    # Line 1778
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-29252
    andi	$v1,$a5,0x1
    # Line 1782
    blez	$a5,.L0d9b81a8
    # Line 1778
    addu	$at,$t9,$v0
    # Line 1782
    move	$a2,$zero
    sra	$a4,$a5,0x1
    beqz	$v1,.L0d9b8088
    ldc1	$f4,_lit8_406fe00000000000
    # Line 1790
    lw	$a0,0($a7)
    # Line 1793
    srl	$a2,$a0,0x8
    # Line 1794
    srl	$a1,$a0,0x10
    # Line 1792
    andi	$a3,$a0,0xff
    # Line 1795
    srl	$a0,$a0,0x18
    dmtc1	$a0,$f0
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1792
    dmtc1	$a3,$f3
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1793
    andi	$a2,$a2,0xff
    dmtc1	$a2,$f2
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1794
    andi	$a1,$a1,0xff
    dmtc1	$a1,$f1
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1795
    addiu	$a6,$a6,16
    # Line 1792
    cvt.s.d	$f3,$f3
    # Line 1795
    cvt.s.d	$f0,$f0
    # Line 1792
    swc1	$f3,-16($a6)
    # Line 1795
    swc1	$f0,-4($a6)
    # Line 1793
    cvt.s.d	$f2,$f2
    # Line 1794
    cvt.s.d	$f1,$f1
    # Line 1793
    swc1	$f2,-12($a6)
    # Line 1790
    addiu	$a7,$a7,4
    # Line 1789
    li	$a2,1
    # Line 1794
    swc1	$f1,-8($a6)
.L0d9b8088:
    beqz	$a4,.L0d9b81a8
    move	$a3,$a7
    move	$a4,$a6
    nop
    nop
    nop
.L0d9b80a0:
    # Line 1790
    lw	$t2,0($a3)
    # Line 1792
    andi	$t9,$t2,0xff
    dmtc1	$t9,$f12
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1793
    srl	$t8,$t2,0x8
    andi	$t8,$t8,0xff
    dmtc1	$t8,$f11
    cvt.s.l	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1794
    srl	$t3,$t2,0x10
    andi	$t3,$t3,0xff
    dmtc1	$t3,$f10
    cvt.s.l	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f4
    # Line 1795
    srl	$t2,$t2,0x18
    dmtc1	$t2,$f9
    cvt.s.l	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1792
    cvt.s.d	$f12,$f12
    swc1	$f12,0($a4)
    # Line 1793
    cvt.s.d	$f11,$f11
    swc1	$f11,4($a4)
    # Line 1794
    cvt.s.d	$f10,$f10
    swc1	$f10,8($a4)
    # Line 1795
    cvt.s.d	$f9,$f9
    swc1	$f9,12($a4)
    # Line 1790
    lw	$a6,4($a3)
    # Line 1792
    andi	$t1,$a6,0xff
    dmtc1	$t1,$f8
    cvt.s.l	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1793
    srl	$t0,$a6,0x8
    andi	$t0,$t0,0xff
    dmtc1	$t0,$f7
    cvt.s.l	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1794
    srl	$a7,$a6,0x10
    andi	$a7,$a7,0xff
    dmtc1	$a7,$f6
    cvt.s.l	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f4
    # Line 1795
    srl	$a6,$a6,0x18
    dmtc1	$a6,$f5
    cvt.s.l	$f5,$f5
    cvt.d.s	$f5,$f5
    div.d	$f5,$f5,$f4
    addiu	$a4,$a4,32
    # Line 1792
    cvt.s.d	$f8,$f8
    swc1	$f8,-16($a4)
    # Line 1793
    cvt.s.d	$f7,$f7
    # Line 1789
    addiu	$a2,$a2,2
    # Line 1793
    swc1	$f7,-12($a4)
    # Line 1794
    cvt.s.d	$f6,$f6
    # Line 1795
    cvt.s.d	$f5,$f5
    # Line 1794
    swc1	$f6,-8($a4)
    # Line 1790
    addiu	$a3,$a3,8
    # Line 1789
    bne	$a5,$a2,.L0d9b80a0
    # Line 1795
    swc1	$f5,-4($a4)
.L0d9b81a8:
    # Line 1797
    jr	$ra
    nop
.end __glSpanUnpack8888RevUint

# Function: __glSpanUnpack_10_10_10_2_Uint
# Declared: Line 1803 (Source lines: 1806-1825)
# Address: 0x0d9b81b0 - 0x0d9b8390 (Size: 480 bytes, Frame: 0)
.globl __glSpanUnpack_10_10_10_2_Uint
.ent __glSpanUnpack_10_10_10_2_Uint
__glSpanUnpack_10_10_10_2_Uint:
    # Line 1806
    move	$a6,$a3
    # Line 1808
    lw	$a5,180($a1)
    # Line 1806
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-29732
    andi	$v1,$a5,0x1
    # Line 1810
    blez	$a5,.L0d9b8388
    # Line 1806
    addu	$at,$t9,$v0
    # Line 1810
    move	$a2,$zero
    sra	$a4,$a5,0x1
    ldc1	$f5,_lit8_4008000000000000
    beqz	$v1,.L0d9b826c
    ldc1	$f4,_lit8_408ff80000000000
    # Line 1818
    lw	$a0,0($a7)
    # Line 1820
    srl	$a3,$a0,0x16
    # Line 1821
    srl	$a2,$a0,0xc
    # Line 1822
    srl	$a1,$a0,0x2
    # Line 1823
    andi	$a0,$a0,0x3
    dmtc1	$a0,$f0
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1820
    dmtc1	$a3,$f3
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1821
    andi	$a2,$a2,0x3ff
    dmtc1	$a2,$f2
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1822
    andi	$a1,$a1,0x3ff
    dmtc1	$a1,$f1
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1823
    addiu	$a6,$a6,16
    # Line 1820
    cvt.s.d	$f3,$f3
    # Line 1823
    cvt.s.d	$f0,$f0
    # Line 1820
    swc1	$f3,-16($a6)
    # Line 1823
    swc1	$f0,-4($a6)
    # Line 1821
    cvt.s.d	$f2,$f2
    # Line 1822
    cvt.s.d	$f1,$f1
    # Line 1821
    swc1	$f2,-12($a6)
    # Line 1818
    addiu	$a7,$a7,4
    # Line 1817
    li	$a2,1
    # Line 1822
    swc1	$f1,-8($a6)
.L0d9b826c:
    beqz	$a4,.L0d9b8388
    move	$a3,$a7
    move	$a4,$a6
    nop
    nop
.L0d9b8280:
    # Line 1818
    lw	$t2,0($a3)
    # Line 1820
    srl	$t9,$t2,0x16
    dmtc1	$t9,$f13
    cvt.s.l	$f13,$f13
    cvt.d.s	$f13,$f13
    div.d	$f13,$f13,$f4
    # Line 1821
    srl	$t8,$t2,0xc
    andi	$t8,$t8,0x3ff
    dmtc1	$t8,$f12
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1822
    srl	$t3,$t2,0x2
    andi	$t3,$t3,0x3ff
    dmtc1	$t3,$f11
    cvt.s.l	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1823
    andi	$t2,$t2,0x3
    dmtc1	$t2,$f10
    cvt.s.l	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f5
    # Line 1820
    cvt.s.d	$f13,$f13
    swc1	$f13,0($a4)
    # Line 1821
    cvt.s.d	$f12,$f12
    swc1	$f12,4($a4)
    # Line 1822
    cvt.s.d	$f11,$f11
    swc1	$f11,8($a4)
    # Line 1823
    cvt.s.d	$f10,$f10
    swc1	$f10,12($a4)
    # Line 1818
    lw	$a6,4($a3)
    # Line 1820
    srl	$t1,$a6,0x16
    dmtc1	$t1,$f9
    cvt.s.l	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1821
    srl	$t0,$a6,0xc
    andi	$t0,$t0,0x3ff
    dmtc1	$t0,$f8
    cvt.s.l	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1822
    srl	$a7,$a6,0x2
    andi	$a7,$a7,0x3ff
    dmtc1	$a7,$f7
    cvt.s.l	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1823
    andi	$a6,$a6,0x3
    dmtc1	$a6,$f6
    cvt.s.l	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f5
    addiu	$a4,$a4,32
    # Line 1820
    cvt.s.d	$f9,$f9
    swc1	$f9,-16($a4)
    # Line 1821
    cvt.s.d	$f8,$f8
    # Line 1817
    addiu	$a2,$a2,2
    # Line 1821
    swc1	$f8,-12($a4)
    # Line 1822
    cvt.s.d	$f7,$f7
    # Line 1823
    cvt.s.d	$f6,$f6
    # Line 1822
    swc1	$f7,-8($a4)
    # Line 1818
    addiu	$a3,$a3,8
    # Line 1817
    bne	$a5,$a2,.L0d9b8280
    # Line 1823
    swc1	$f6,-4($a4)
.L0d9b8388:
    # Line 1825
    jr	$ra
    nop
.end __glSpanUnpack_10_10_10_2_Uint

# Function: __glSpanUnpack_2_10_10_10_RevUint
# Declared: Line 1831 (Source lines: 1834-1854)
# Address: 0x0d9b8390 - 0x0d9b8570 (Size: 480 bytes, Frame: 0)
.globl __glSpanUnpack_2_10_10_10_RevUint
.ent __glSpanUnpack_2_10_10_10_RevUint
__glSpanUnpack_2_10_10_10_RevUint:
    # Line 1834
    move	$a6,$a3
    # Line 1836
    lw	$a5,180($a1)
    # Line 1834
    move	$a7,$a2
    lui	$v0,0xa
    addiu	$v0,$v0,-30212
    andi	$v1,$a5,0x1
    # Line 1838
    blez	$a5,.L0d9b8568
    # Line 1834
    addu	$at,$t9,$v0
    # Line 1838
    move	$a2,$zero
    sra	$a4,$a5,0x1
    ldc1	$f5,_lit8_4008000000000000
    beqz	$v1,.L0d9b844c
    ldc1	$f4,_lit8_408ff80000000000
    # Line 1846
    lw	$a0,0($a7)
    # Line 1849
    srl	$a2,$a0,0xa
    # Line 1850
    srl	$a1,$a0,0x14
    # Line 1848
    andi	$a3,$a0,0x3ff
    # Line 1851
    srl	$a0,$a0,0x1e
    dmtc1	$a0,$f0
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1848
    dmtc1	$a3,$f3
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1849
    andi	$a2,$a2,0x3ff
    dmtc1	$a2,$f2
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1850
    andi	$a1,$a1,0x3ff
    dmtc1	$a1,$f1
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1851
    addiu	$a6,$a6,16
    # Line 1848
    cvt.s.d	$f3,$f3
    # Line 1851
    cvt.s.d	$f0,$f0
    # Line 1848
    swc1	$f3,-16($a6)
    # Line 1851
    swc1	$f0,-4($a6)
    # Line 1849
    cvt.s.d	$f2,$f2
    # Line 1850
    cvt.s.d	$f1,$f1
    # Line 1849
    swc1	$f2,-12($a6)
    # Line 1846
    addiu	$a7,$a7,4
    # Line 1845
    li	$a2,1
    # Line 1850
    swc1	$f1,-8($a6)
.L0d9b844c:
    beqz	$a4,.L0d9b8568
    move	$a3,$a7
    move	$a4,$a6
    nop
    nop
.L0d9b8460:
    # Line 1846
    lw	$t2,0($a3)
    # Line 1848
    andi	$t9,$t2,0x3ff
    dmtc1	$t9,$f13
    cvt.s.l	$f13,$f13
    cvt.d.s	$f13,$f13
    div.d	$f13,$f13,$f4
    # Line 1849
    srl	$t8,$t2,0xa
    andi	$t8,$t8,0x3ff
    dmtc1	$t8,$f12
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    div.d	$f12,$f12,$f4
    # Line 1850
    srl	$t3,$t2,0x14
    andi	$t3,$t3,0x3ff
    dmtc1	$t3,$f11
    cvt.s.l	$f11,$f11
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f4
    # Line 1851
    srl	$t2,$t2,0x1e
    dmtc1	$t2,$f10
    cvt.s.l	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f5
    # Line 1848
    cvt.s.d	$f13,$f13
    swc1	$f13,0($a4)
    # Line 1849
    cvt.s.d	$f12,$f12
    swc1	$f12,4($a4)
    # Line 1850
    cvt.s.d	$f11,$f11
    swc1	$f11,8($a4)
    # Line 1851
    cvt.s.d	$f10,$f10
    swc1	$f10,12($a4)
    # Line 1846
    lw	$a6,4($a3)
    # Line 1848
    andi	$t1,$a6,0x3ff
    dmtc1	$t1,$f9
    cvt.s.l	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f4
    # Line 1849
    srl	$t0,$a6,0xa
    andi	$t0,$t0,0x3ff
    dmtc1	$t0,$f8
    cvt.s.l	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f4
    # Line 1850
    srl	$a7,$a6,0x14
    andi	$a7,$a7,0x3ff
    dmtc1	$a7,$f7
    cvt.s.l	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f4
    # Line 1851
    srl	$a6,$a6,0x1e
    dmtc1	$a6,$f6
    cvt.s.l	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f5
    addiu	$a4,$a4,32
    # Line 1848
    cvt.s.d	$f9,$f9
    swc1	$f9,-16($a4)
    # Line 1849
    cvt.s.d	$f8,$f8
    # Line 1845
    addiu	$a2,$a2,2
    # Line 1849
    swc1	$f8,-12($a4)
    # Line 1850
    cvt.s.d	$f7,$f7
    # Line 1851
    cvt.s.d	$f6,$f6
    # Line 1850
    swc1	$f7,-8($a4)
    # Line 1846
    addiu	$a3,$a3,8
    # Line 1845
    bne	$a5,$a2,.L0d9b8460
    # Line 1851
    swc1	$f6,-4($a4)
.L0d9b8568:
    # Line 1854
    jr	$ra
    nop
.end __glSpanUnpack_2_10_10_10_RevUint

# Function: __glSpanUnpackUbyteI
# Declared: Line 1861 (Source lines: 1863-1875)
# Address: 0x0d9b8570 - 0x0d9b8618 (Size: 168 bytes, Frame: 0)
.globl __glSpanUnpackUbyteI
.ent __glSpanUnpackUbyteI
__glSpanUnpackUbyteI:
    # Line 1865
    lw	$a4,180($a1)
    # Line 1863
    move	$a5,$a2
    # Line 1867
    blez	$a4,.L0d9b8610
    # Line 1863
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9b85b4
    # Line 1867
    move	$a1,$zero
.L0d9b8590:
    # Line 1873
    lbu	$at,0($a5)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1872
    addiu	$a1,$a1,1
    # Line 1873
    addiu	$a6,$a6,4
    addiu	$a5,$a5,1
    bnez	$a2,.L0d9b8590
    swc1	$f0,-4($a6)
.L0d9b85b4:
    move	$a2,$a5
    beqz	$v0,.L0d9b8610
    move	$a3,$a6
.L0d9b85c0:
    lbu	$a6,0($a2)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a3)
    lbu	$a5,1($a2)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lbu	$a0,2($a2)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lbu	$v1,3($a2)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    # Line 1872
    addiu	$a1,$a1,4
    # Line 1873
    addiu	$a3,$a3,16
    addiu	$a2,$a2,4
    # Line 1872
    bne	$a4,$a1,.L0d9b85c0
    # Line 1873
    swc1	$f1,-4($a3)
.L0d9b8610:
    # Line 1875
    jr	$ra
    nop
.end __glSpanUnpackUbyteI

# Function: __glSpanUnpackByteI
# Declared: Line 1882 (Source lines: 1884-1896)
# Address: 0x0d9b8620 - 0x0d9b86c8 (Size: 168 bytes, Frame: 0)
.globl __glSpanUnpackByteI
.ent __glSpanUnpackByteI
__glSpanUnpackByteI:
    # Line 1886
    lw	$a4,180($a1)
    # Line 1884
    move	$a5,$a2
    # Line 1888
    blez	$a4,.L0d9b86c0
    # Line 1884
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9b8664
    # Line 1888
    move	$a1,$zero
.L0d9b8640:
    # Line 1894
    lb	$at,0($a5)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1893
    addiu	$a1,$a1,1
    # Line 1894
    addiu	$a6,$a6,4
    addiu	$a5,$a5,1
    bnez	$a2,.L0d9b8640
    swc1	$f0,-4($a6)
.L0d9b8664:
    move	$a2,$a5
    beqz	$v0,.L0d9b86c0
    move	$a3,$a6
.L0d9b8670:
    lb	$a6,0($a2)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a3)
    lb	$a5,1($a2)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lb	$a0,2($a2)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lb	$v1,3($a2)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    # Line 1893
    addiu	$a1,$a1,4
    # Line 1894
    addiu	$a3,$a3,16
    addiu	$a2,$a2,4
    # Line 1893
    bne	$a4,$a1,.L0d9b8670
    # Line 1894
    swc1	$f1,-4($a3)
.L0d9b86c0:
    # Line 1896
    jr	$ra
    nop
.end __glSpanUnpackByteI

# Function: __glSpanUnpackUshortI
# Declared: Line 1903 (Source lines: 1905-1917)
# Address: 0x0d9b86d0 - 0x0d9b8778 (Size: 168 bytes, Frame: 0)
.globl __glSpanUnpackUshortI
.ent __glSpanUnpackUshortI
__glSpanUnpackUshortI:
    # Line 1907
    lw	$a4,180($a1)
    # Line 1905
    move	$a5,$a2
    # Line 1909
    blez	$a4,.L0d9b8770
    # Line 1905
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9b8714
    # Line 1909
    move	$a1,$zero
.L0d9b86f0:
    # Line 1915
    lhu	$at,0($a5)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1914
    addiu	$a1,$a1,1
    # Line 1915
    addiu	$a6,$a6,4
    addiu	$a5,$a5,2
    bnez	$a2,.L0d9b86f0
    swc1	$f0,-4($a6)
.L0d9b8714:
    move	$a2,$a5
    beqz	$v0,.L0d9b8770
    move	$a3,$a6
.L0d9b8720:
    lhu	$a6,0($a2)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a3)
    lhu	$a5,2($a2)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lhu	$a0,4($a2)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lhu	$v1,6($a2)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    # Line 1914
    addiu	$a1,$a1,4
    # Line 1915
    addiu	$a3,$a3,16
    addiu	$a2,$a2,8
    # Line 1914
    bne	$a4,$a1,.L0d9b8720
    # Line 1915
    swc1	$f1,-4($a3)
.L0d9b8770:
    # Line 1917
    jr	$ra
    nop
.end __glSpanUnpackUshortI

# Function: __glSpanUnpackShortI
# Declared: Line 1924 (Source lines: 1926-1938)
# Address: 0x0d9b8780 - 0x0d9b8828 (Size: 168 bytes, Frame: 0)
.globl __glSpanUnpackShortI
.ent __glSpanUnpackShortI
__glSpanUnpackShortI:
    # Line 1928
    lw	$a4,180($a1)
    # Line 1926
    move	$a5,$a2
    # Line 1930
    blez	$a4,.L0d9b8820
    # Line 1926
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9b87c4
    # Line 1930
    move	$a1,$zero
.L0d9b87a0:
    # Line 1936
    lh	$at,0($a5)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1935
    addiu	$a1,$a1,1
    # Line 1936
    addiu	$a6,$a6,4
    addiu	$a5,$a5,2
    bnez	$a2,.L0d9b87a0
    swc1	$f0,-4($a6)
.L0d9b87c4:
    move	$a2,$a5
    beqz	$v0,.L0d9b8820
    move	$a3,$a6
.L0d9b87d0:
    lh	$a6,0($a2)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a3)
    lh	$a5,2($a2)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lh	$a0,4($a2)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lh	$v1,6($a2)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    # Line 1935
    addiu	$a1,$a1,4
    # Line 1936
    addiu	$a3,$a3,16
    addiu	$a2,$a2,8
    # Line 1935
    bne	$a4,$a1,.L0d9b87d0
    # Line 1936
    swc1	$f1,-4($a3)
.L0d9b8820:
    # Line 1938
    jr	$ra
    nop
.end __glSpanUnpackShortI

# Function: __glSpanUnpackUintI
# Declared: Line 1945 (Source lines: 1947-1959)
# Address: 0x0d9b8830 - 0x0d9b8908 (Size: 216 bytes, Frame: 0)
.globl __glSpanUnpackUintI
.ent __glSpanUnpackUintI
__glSpanUnpackUintI:
    # Line 1949
    lw	$a4,180($a1)
    # Line 1947
    move	$a5,$a2
    # Line 1951
    blez	$a4,.L0d9b8900
    # Line 1947
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9b887c
    # Line 1951
    move	$a1,$zero
.L0d9b8850:
    # Line 1957
    lw	$at,0($a5)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    cvt.s.l	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1956
    addiu	$a1,$a1,1
    # Line 1957
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9b8850
    swc1	$f0,-4($a6)
.L0d9b887c:
    move	$a2,$a5
    beqz	$v0,.L0d9b8900
    move	$a3,$a6
    nop
    nop
.L0d9b8890:
    lw	$a6,0($a2)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f4
    cvt.s.l	$f4,$f4
    swc1	$f4,0($a3)
    lw	$a5,4($a2)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,4($a3)
    lw	$a0,8($a2)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,8($a3)
    lw	$v1,12($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    cvt.s.l	$f1,$f1
    # Line 1956
    addiu	$a1,$a1,4
    # Line 1957
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    # Line 1956
    bne	$a4,$a1,.L0d9b8890
    # Line 1957
    swc1	$f1,-4($a3)
.L0d9b8900:
    # Line 1959
    jr	$ra
    nop
.end __glSpanUnpackUintI

# Function: __glSpanUnpackIntI
# Declared: Line 1966 (Source lines: 1968-1980)
# Address: 0x0d9b8910 - 0x0d9b89b8 (Size: 168 bytes, Frame: 0)
.globl __glSpanUnpackIntI
.ent __glSpanUnpackIntI
__glSpanUnpackIntI:
    # Line 1970
    lw	$a4,180($a1)
    # Line 1968
    move	$a5,$a2
    # Line 1972
    blez	$a4,.L0d9b89b0
    # Line 1968
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$v0,$a4,0x2
    beqz	$a2,.L0d9b8954
    # Line 1972
    move	$a1,$zero
.L0d9b8930:
    # Line 1978
    lw	$at,0($a5)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 1977
    addiu	$a1,$a1,1
    # Line 1978
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9b8930
    swc1	$f0,-4($a6)
.L0d9b8954:
    move	$a2,$a5
    beqz	$v0,.L0d9b89b0
    move	$a3,$a6
.L0d9b8960:
    lw	$a6,0($a2)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a3)
    lw	$a5,4($a2)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lw	$a0,8($a2)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lw	$v1,12($a2)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    # Line 1977
    addiu	$a1,$a1,4
    # Line 1978
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    # Line 1977
    bne	$a4,$a1,.L0d9b8960
    # Line 1978
    swc1	$f1,-4($a3)
.L0d9b89b0:
    # Line 1980
    jr	$ra
    nop
.end __glSpanUnpackIntI

# Function: __glSpanUnpackNonCompUint
# Declared: Line 1988 (Source lines: 1990-2004)
# Address: 0x0d9b89c0 - 0x0d9b8aa8 (Size: 232 bytes, Frame: 0)
.globl __glSpanUnpackNonCompUint
.ent __glSpanUnpackNonCompUint
__glSpanUnpackNonCompUint:
    # Line 1995
    lw	$v0,28($a1)
    # Line 1992
    lw	$at,180($a1)
    # Line 1995
    mult	$at,$v0
    mflo	$a4
    # Line 1990
    move	$a6,$a3
    move	$a5,$a2
    # Line 1995
    blez	$a4,.L0d9b8aa0
    andi	$a2,$a4,0x3
    sra	$a0,$a4,0x2
    beqz	$a2,.L0d9b8a18
    move	$a1,$zero
.L0d9b89ec:
    # Line 2002
    lw	$v1,0($a5)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    cvt.s.l	$f0,$f0
    addiu	$a2,$a2,-1
    # Line 2001
    addiu	$a1,$a1,1
    # Line 2002
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9b89ec
    swc1	$f0,-4($a6)
.L0d9b8a18:
    move	$a2,$a5
    beqz	$a0,.L0d9b8aa0
    move	$a3,$a6
    nop
    nop
    nop
.L0d9b8a30:
    lw	$t0,0($a2)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f4
    cvt.s.l	$f4,$f4
    swc1	$f4,0($a3)
    lw	$a7,4($a2)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,4($a3)
    lw	$a6,8($a2)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,8($a3)
    lw	$a5,12($a2)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f1
    cvt.s.l	$f1,$f1
    # Line 2001
    addiu	$a1,$a1,4
    # Line 2002
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    # Line 2001
    bne	$a4,$a1,.L0d9b8a30
    # Line 2002
    swc1	$f1,-4($a3)
.L0d9b8aa0:
    # Line 2004
    jr	$ra
    nop
.end __glSpanUnpackNonCompUint

# Function: __glSpanClampPreFloat
# Declared: Line 2011 (Source lines: 2013-2030)
# Address: 0x0d9b8ab0 - 0x0d9b8b70 (Size: 192 bytes, Frame: 0)
.globl __glSpanClampPreFloat
.ent __glSpanClampPreFloat
__glSpanClampPreFloat:
    # Line 2016
    lw	$v0,28($a1)
    # Line 2015
    lw	$at,180($a1)
    # Line 2022
    mult	$at,$v0
    mflo	$a7
    # Line 2013
    move	$a6,$a2
    move	$a5,$a3
    # Line 2022
    blez	$a7,.L0d9b8b18
    lwc1	$f5,3544($a0)
    mtc1	$zero,$f6
    andi	$v1,$a7,0x1
    move	$a1,$zero
    beqz	$v1,.L0d9b8b10
    sra	$a0,$a7,0x1
    # Line 2025
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 2024
    addiu	$a1,$a1,1
    # Line 2025
    bc1f	.L0d9b8b00
    addiu	$a6,$a2,4
    # Line 2026
    b	.L0d9b8b08
    mov.s	$f4,$f5
.L0d9b8b00:
    # Line 2027
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b8b08:
    # Line 2028
    swc1	$f4,0($a5)
    addiu	$a5,$a5,4
.L0d9b8b10:
    bnezl	$a0,.L0d9b8b38
    # Line 2025
    lwc1	$f4,0($a6)
.L0d9b8b18:
    # Line 2030
    jr	$ra
    nop
.L0d9b8b20:
    # Line 2027
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b8b28:
    # Line 2028
    swc1	$f4,4($a5)
    # Line 2024
    beq	$a7,$a1,.L0d9b8b18
    # Line 2028
    addiu	$a5,$a5,8
    # Line 2025
    lwc1	$f4,0($a6)
.L0d9b8b38:
    c.lt.s $f5,$f4
    bc1f .L0d9b8b4c
    # Line 2024
    addiu	$a1,$a1,2
    # Line 2026
    b	.L0d9b8b54
    mov.s	$f4,$f5
.L0d9b8b4c:
    # Line 2027
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b8b54:
    # Line 2028
    swc1	$f4,0($a5)
    # Line 2025
    lwc1	$f4,4($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8b20
    addiu	$a6,$a6,8
    # Line 2026
    b	.L0d9b8b28
    mov.s	$f4,$f5
.end __glSpanClampPreFloat

# Function: __glSpanClampNegPreFloat
# Declared: Line 2042 (Source lines: 2044-2061)
# Address: 0x0d9b8b70 - 0x0d9b8c30 (Size: 192 bytes, Frame: 0)
.globl __glSpanClampNegPreFloat
.ent __glSpanClampNegPreFloat
__glSpanClampNegPreFloat:
    # Line 2047
    lw	$v0,28($a1)
    # Line 2046
    lw	$at,180($a1)
    # Line 2054
    mult	$at,$v0
    # Line 2053
    lwc1	$f5,3544($a0)
    # Line 2054
    mflo	$a7
    # Line 2044
    move	$a6,$a2
    move	$a5,$a3
    # Line 2054
    blez	$a7,.L0d9b8bd8
    neg.s	$f6,$f5
    move	$a1,$zero
    andi	$v1,$a7,0x1
    beqz	$v1,.L0d9b8bd0
    sra	$a0,$a7,0x1
    # Line 2056
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 2055
    addiu	$a1,$a1,1
    # Line 2056
    bc1f	.L0d9b8bc0
    addiu	$a6,$a2,4
    # Line 2057
    b	.L0d9b8bc8
    mov.s	$f4,$f5
.L0d9b8bc0:
    # Line 2058
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b8bc8:
    # Line 2059
    swc1	$f4,0($a5)
    addiu	$a5,$a5,4
.L0d9b8bd0:
    bnezl	$a0,.L0d9b8bf8
    # Line 2056
    lwc1	$f4,0($a6)
.L0d9b8bd8:
    # Line 2061
    jr	$ra
    nop
.L0d9b8be0:
    # Line 2058
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b8be8:
    # Line 2059
    swc1	$f4,4($a5)
    # Line 2055
    beq	$a7,$a1,.L0d9b8bd8
    # Line 2059
    addiu	$a5,$a5,8
    # Line 2056
    lwc1	$f4,0($a6)
.L0d9b8bf8:
    c.lt.s $f5,$f4
    bc1f .L0d9b8c0c
    # Line 2055
    addiu	$a1,$a1,2
    # Line 2057
    b	.L0d9b8c14
    mov.s	$f4,$f5
.L0d9b8c0c:
    # Line 2058
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b8c14:
    # Line 2059
    swc1	$f4,0($a5)
    # Line 2056
    lwc1	$f4,4($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8be0
    addiu	$a6,$a6,8
    # Line 2057
    b	.L0d9b8be8
    mov.s	$f4,$f5
.end __glSpanClampNegPreFloat

# Function: __glSpanClampPostFloat
# Declared: Line 2068 (Source lines: 2070-2087)
# Address: 0x0d9b8c30 - 0x0d9b8cf0 (Size: 192 bytes, Frame: 0)
.globl __glSpanClampPostFloat
.ent __glSpanClampPostFloat
__glSpanClampPostFloat:
    # Line 2073
    lw	$v0,108($a1)
    # Line 2072
    lw	$at,184($a1)
    # Line 2079
    mult	$at,$v0
    mflo	$a7
    # Line 2070
    move	$a6,$a2
    move	$a5,$a3
    # Line 2079
    blez	$a7,.L0d9b8c98
    lwc1	$f5,3544($a0)
    mtc1	$zero,$f6
    andi	$v1,$a7,0x1
    move	$a1,$zero
    beqz	$v1,.L0d9b8c90
    sra	$a0,$a7,0x1
    # Line 2082
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 2081
    addiu	$a1,$a1,1
    # Line 2082
    bc1f	.L0d9b8c80
    addiu	$a6,$a2,4
    # Line 2083
    b	.L0d9b8c88
    mov.s	$f4,$f5
.L0d9b8c80:
    # Line 2084
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b8c88:
    # Line 2085
    swc1	$f4,0($a5)
    addiu	$a5,$a5,4
.L0d9b8c90:
    bnezl	$a0,.L0d9b8cb8
    # Line 2082
    lwc1	$f4,0($a6)
.L0d9b8c98:
    # Line 2087
    jr	$ra
    nop
.L0d9b8ca0:
    # Line 2084
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b8ca8:
    # Line 2085
    swc1	$f4,4($a5)
    # Line 2081
    beq	$a7,$a1,.L0d9b8c98
    # Line 2085
    addiu	$a5,$a5,8
    # Line 2082
    lwc1	$f4,0($a6)
.L0d9b8cb8:
    c.lt.s $f5,$f4
    bc1f .L0d9b8ccc
    # Line 2081
    addiu	$a1,$a1,2
    # Line 2083
    b	.L0d9b8cd4
    mov.s	$f4,$f5
.L0d9b8ccc:
    # Line 2084
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b8cd4:
    # Line 2085
    swc1	$f4,0($a5)
    # Line 2082
    lwc1	$f4,4($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8ca0
    addiu	$a6,$a6,8
    # Line 2083
    b	.L0d9b8ca8
    mov.s	$f4,$f5
.end __glSpanClampPostFloat

# Function: __glSpanClampRed
# Declared: Line 2090 (Source lines: 2092-2110)
# Address: 0x0d9b8cf0 - 0x0d9b8df4 (Size: 260 bytes, Frame: 0)
.globl __glSpanClampRed
.ent __glSpanClampRed
__glSpanClampRed:
    # Line 2094
    lw	$a7,184($a1)
    # Line 2092
    move	$a5,$a2
    move	$a6,$a3
    # Line 2099
    blez	$a7,.L0d9b8d64
    lwc1	$f5,30752($a0)
    mtc1	$zero,$f6
    andi	$at,$a7,0x1
    move	$a1,$zero
    beqz	$at,.L0d9b8d5c
    sra	$v0,$a7,0x1
    # Line 2102
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    bc1f	.L0d9b8d30
    # Line 2101
    addiu	$a1,$a1,1
    # Line 2103
    b	.L0d9b8d38
    mov.s	$f4,$f5
.L0d9b8d30:
    # Line 2104
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b8d38:
    # Line 2105
    swc1	$f4,0($a6)
    # Line 2106
    lwc1	$f2,4($a5)
    swc1	$f2,4($a6)
    # Line 2107
    lwc1	$f1,8($a5)
    swc1	$f1,8($a6)
    # Line 2108
    lwc1	$f0,12($a5)
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    swc1	$f0,-4($a6)
.L0d9b8d5c:
    bnezl	$v0,.L0d9b8da4
    # Line 2102
    lwc1	$f4,0($a5)
.L0d9b8d64:
    # Line 2110
    jr	$ra
    nop
    nop
.L0d9b8d70:
    # Line 2104
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b8d78:
    # Line 2105
    swc1	$f4,16($a6)
    # Line 2106
    lwc1	$f8,20($a5)
    swc1	$f8,20($a6)
    # Line 2107
    lwc1	$f7,24($a5)
    swc1	$f7,24($a6)
    # Line 2108
    lwc1	$f3,28($a5)
    addiu	$a6,$a6,32
    addiu	$a5,$a5,32
    # Line 2101
    beq	$a7,$a1,.L0d9b8d64
    # Line 2108
    swc1	$f3,-4($a6)
    # Line 2102
    lwc1	$f4,0($a5)
.L0d9b8da4:
    c.lt.s $f5,$f4
    bc1f .L0d9b8db8
    # Line 2101
    addiu	$a1,$a1,2
    # Line 2103
    b	.L0d9b8dc0
    mov.s	$f4,$f5
.L0d9b8db8:
    # Line 2104
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b8dc0:
    # Line 2105
    swc1	$f4,0($a6)
    # Line 2106
    lwc1	$f11,4($a5)
    swc1	$f11,4($a6)
    # Line 2107
    lwc1	$f10,8($a5)
    swc1	$f10,8($a6)
    # Line 2108
    lwc1	$f9,12($a5)
    swc1	$f9,12($a6)
    # Line 2102
    lwc1	$f4,16($a5)
    c.lt.s $f5,$f4
    bc1f .L0d9b8d70
    nop
    # Line 2103
    b	.L0d9b8d78
    mov.s	$f4,$f5
.end __glSpanClampRed

# Function: __glSpanClampGreen
# Declared: Line 2112 (Source lines: 2114-2132)
# Address: 0x0d9b8e00 - 0x0d9b8f04 (Size: 260 bytes, Frame: 0)
.globl __glSpanClampGreen
.ent __glSpanClampGreen
__glSpanClampGreen:
    # Line 2116
    lw	$a7,184($a1)
    # Line 2114
    move	$a6,$a2
    move	$a5,$a3
    # Line 2121
    blez	$a7,.L0d9b8e74
    lwc1	$f5,30756($a0)
    mtc1	$zero,$f6
    andi	$at,$a7,0x1
    move	$a1,$zero
    beqz	$at,.L0d9b8e6c
    sra	$v0,$a7,0x1
    # Line 2124
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    # Line 2125
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    bc1f	.L0d9b8e48
    # Line 2123
    addiu	$a1,$a1,1
    # Line 2126
    b	.L0d9b8e50
    mov.s	$f4,$f5
.L0d9b8e48:
    # Line 2127
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b8e50:
    # Line 2128
    swc1	$f4,4($a5)
    # Line 2129
    lwc1	$f2,8($a6)
    swc1	$f2,8($a5)
    # Line 2130
    lwc1	$f1,12($a6)
    addiu	$a5,$a5,16
    addiu	$a6,$a6,16
    swc1	$f1,-4($a5)
.L0d9b8e6c:
    bnezl	$v0,.L0d9b8eac
    # Line 2124
    lwc1	$f8,0($a6)
.L0d9b8e74:
    # Line 2132
    jr	$ra
    nop
    nop
.L0d9b8e80:
    # Line 2127
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b8e88:
    # Line 2128
    swc1	$f4,20($a5)
    # Line 2129
    lwc1	$f7,24($a6)
    swc1	$f7,24($a5)
    # Line 2130
    lwc1	$f3,28($a6)
    addiu	$a5,$a5,32
    addiu	$a6,$a6,32
    # Line 2123
    beq	$a7,$a1,.L0d9b8e74
    # Line 2130
    swc1	$f3,-4($a5)
    # Line 2124
    lwc1	$f8,0($a6)
.L0d9b8eac:
    swc1	$f8,0($a5)
    # Line 2125
    lwc1	$f4,4($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8ec8
    # Line 2123
    addiu	$a1,$a1,2
    # Line 2126
    b	.L0d9b8ed0
    mov.s	$f4,$f5
.L0d9b8ec8:
    # Line 2127
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b8ed0:
    # Line 2128
    swc1	$f4,4($a5)
    # Line 2129
    lwc1	$f11,8($a6)
    swc1	$f11,8($a5)
    # Line 2130
    lwc1	$f10,12($a6)
    swc1	$f10,12($a5)
    # Line 2124
    lwc1	$f9,16($a6)
    swc1	$f9,16($a5)
    # Line 2125
    lwc1	$f4,20($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8e80
    nop
    # Line 2126
    b	.L0d9b8e88
    mov.s	$f4,$f5
.end __glSpanClampGreen

# Function: __glSpanClampBlue
# Declared: Line 2134 (Source lines: 2136-2154)
# Address: 0x0d9b8f10 - 0x0d9b9014 (Size: 260 bytes, Frame: 0)
.globl __glSpanClampBlue
.ent __glSpanClampBlue
__glSpanClampBlue:
    # Line 2138
    lw	$a7,184($a1)
    # Line 2136
    move	$a6,$a2
    move	$a5,$a3
    # Line 2143
    blez	$a7,.L0d9b8f84
    lwc1	$f5,30760($a0)
    mtc1	$zero,$f6
    andi	$at,$a7,0x1
    move	$a1,$zero
    beqz	$at,.L0d9b8f7c
    sra	$v0,$a7,0x1
    # Line 2146
    lwc1	$f1,0($a2)
    swc1	$f1,0($a3)
    # Line 2147
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 2148
    lwc1	$f4,8($a2)
    c.lt.s	$f5,$f4
    bc1f	.L0d9b8f60
    # Line 2145
    addiu	$a1,$a1,1
    # Line 2149
    b	.L0d9b8f68
    mov.s	$f4,$f5
.L0d9b8f60:
    # Line 2150
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b8f68:
    # Line 2151
    swc1	$f4,8($a5)
    # Line 2152
    lwc1	$f2,12($a6)
    addiu	$a5,$a5,16
    addiu	$a6,$a6,16
    swc1	$f2,-4($a5)
.L0d9b8f7c:
    bnezl	$v0,.L0d9b8fb4
    # Line 2146
    lwc1	$f7,0($a6)
.L0d9b8f84:
    # Line 2154
    jr	$ra
    nop
    nop
.L0d9b8f90:
    # Line 2150
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b8f98:
    # Line 2151
    swc1	$f4,24($a5)
    # Line 2152
    lwc1	$f3,28($a6)
    addiu	$a5,$a5,32
    addiu	$a6,$a6,32
    # Line 2145
    beq	$a7,$a1,.L0d9b8f84
    # Line 2152
    swc1	$f3,-4($a5)
    # Line 2146
    lwc1	$f7,0($a6)
.L0d9b8fb4:
    swc1	$f7,0($a5)
    # Line 2147
    lwc1	$f4,4($a6)
    swc1	$f4,4($a5)
    # Line 2148
    lwc1	$f4,8($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8fd8
    # Line 2145
    addiu	$a1,$a1,2
    # Line 2149
    b	.L0d9b8fe0
    mov.s	$f4,$f5
.L0d9b8fd8:
    # Line 2150
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b8fe0:
    # Line 2151
    swc1	$f4,8($a5)
    # Line 2152
    lwc1	$f10,12($a6)
    swc1	$f10,12($a5)
    # Line 2146
    lwc1	$f9,16($a6)
    swc1	$f9,16($a5)
    # Line 2147
    lwc1	$f8,20($a6)
    swc1	$f8,20($a5)
    # Line 2148
    lwc1	$f4,24($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b8f90
    nop
    # Line 2149
    b	.L0d9b8f98
    mov.s	$f4,$f5
.end __glSpanClampBlue

# Function: __glSpanClampAlpha
# Declared: Line 2156 (Source lines: 2158-2176)
# Address: 0x0d9b9020 - 0x0d9b9120 (Size: 256 bytes, Frame: 0)
.globl __glSpanClampAlpha
.ent __glSpanClampAlpha
__glSpanClampAlpha:
    # Line 2160
    lw	$a7,184($a1)
    # Line 2158
    move	$a6,$a2
    move	$a5,$a3
    # Line 2165
    blez	$a7,.L0d9b9094
    lwc1	$f5,30792($a0)
    mtc1	$zero,$f6
    andi	$at,$a7,0x1
    move	$a1,$zero
    beqz	$at,.L0d9b908c
    sra	$v0,$a7,0x1
    # Line 2168
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2169
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 2170
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 2171
    lwc1	$f4,12($a2)
    c.lt.s	$f5,$f4
    # Line 2167
    addiu	$a1,$a1,1
    # Line 2171
    bc1f	.L0d9b907c
    addiu	$a6,$a2,16
    # Line 2172
    b	.L0d9b9084
    mov.s	$f4,$f5
.L0d9b907c:
    # Line 2173
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc1
.L0d9b9084:
    # Line 2174
    swc1	$f4,12($a5)
    addiu	$a5,$a5,16
.L0d9b908c:
    bnezl	$v0,.L0d9b90b8
    # Line 2168
    lwc1	$f7,0($a6)
.L0d9b9094:
    # Line 2176
    jr	$ra
    nop
    nop
.L0d9b90a0:
    # Line 2173
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc2
.L0d9b90a8:
    # Line 2174
    swc1	$f4,28($a5)
    # Line 2167
    beq	$a7,$a1,.L0d9b9094
    # Line 2174
    addiu	$a5,$a5,32
    # Line 2168
    lwc1	$f7,0($a6)
.L0d9b90b8:
    swc1	$f7,0($a5)
    # Line 2169
    lwc1	$f4,4($a6)
    swc1	$f4,4($a5)
    # Line 2170
    lwc1	$f3,8($a6)
    swc1	$f3,8($a5)
    # Line 2171
    lwc1	$f4,12($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b90e4
    # Line 2167
    addiu	$a1,$a1,2
    # Line 2172
    b	.L0d9b90ec
    mov.s	$f4,$f5
.L0d9b90e4:
    # Line 2173
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b90ec:
    # Line 2174
    swc1	$f4,12($a5)
    # Line 2168
    lwc1	$f10,16($a6)
    swc1	$f10,16($a5)
    # Line 2169
    lwc1	$f9,20($a6)
    swc1	$f9,20($a5)
    # Line 2170
    lwc1	$f8,24($a6)
    swc1	$f8,24($a5)
    # Line 2171
    lwc1	$f4,28($a6)
    c.lt.s $f5,$f4
    bc1f .L0d9b90a0
    addiu	$a6,$a6,32
    # Line 2172
    b	.L0d9b90a8
    mov.s	$f4,$f5
.end __glSpanClampAlpha

# Function: __glSpanClampRGB
# Declared: Line 2179 (Source lines: 2181-2210)
# Address: 0x0d9b9120 - 0x0d9b92dc (Size: 444 bytes, Frame: 0)
.globl __glSpanClampRGB
.ent __glSpanClampRGB
__glSpanClampRGB:
    # Line 2183
    lw	$a7,184($a1)
    # Line 2190
    lwc1	$f9,30760($a0)
    # Line 2181
    move	$a5,$a2
    # Line 2189
    lwc1	$f8,30756($a0)
    # Line 2181
    move	$a6,$a3
    # Line 2188
    lwc1	$f7,30752($a0)
    # Line 2190
    blez	$a7,.L0d9b918c
    andi	$at,$a7,0x1
    mtc1	$zero,$f10
    move	$a1,$zero
    beqz	$at,.L0d9b9184
    sra	$v0,$a7,0x1
    # Line 2194
    lwc1	$f5,0($a2)
    c.lt.s	$f7,$f5
    bc1f	.L0d9b9294
    # Line 2193
    addiu	$a1,$a1,1
    # Line 2195
    b	.L0d9b929c
    mov.s	$f5,$f7
.L0d9b9168:
    # Line 2206
    c.lt.s $f4,$f10
    movt.s	$f4,$f10,$fcc1
.L0d9b9170:
    # Line 2207
    swc1	$f4,8($a6)
    # Line 2208
    lwc1	$f0,12($a5)
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    swc1	$f0,-4($a6)
.L0d9b9184:
    bnezl	$v0,.L0d9b91c4
    # Line 2194
    lwc1	$f5,0($a5)
.L0d9b918c:
    # Line 2210
    jr	$ra
    nop
    nop
    nop
    nop
.L0d9b91a0:
    # Line 2206
    c.lt.s $f4,$f10
    movt.s	$f4,$f10,$fcc2
.L0d9b91a8:
    # Line 2207
    swc1	$f4,24($a6)
    # Line 2208
    lwc1	$f1,28($a5)
    addiu	$a6,$a6,32
    addiu	$a5,$a5,32
    # Line 2193
    beq	$a7,$a1,.L0d9b918c
    # Line 2208
    swc1	$f1,-4($a6)
    # Line 2194
    lwc1	$f5,0($a5)
.L0d9b91c4:
    c.lt.s $f7,$f5
    bc1f .L0d9b91d8
    nop
    # Line 2195
    b	.L0d9b91e0
    mov.s	$f5,$f7
.L0d9b91d8:
    # Line 2196
    c.lt.s $f5,$f10
    movt.s	$f5,$f10,$fcc4
.L0d9b91e0:
    # Line 2197
    swc1	$f5,0($a6)
    # Line 2199
    lwc1	$f6,4($a5)
    c.lt.s $f8,$f6
    bc1f .L0d9b91fc
    nop
    # Line 2200
    b	.L0d9b9204
    mov.s	$f6,$f8
.L0d9b91fc:
    # Line 2201
    c.lt.s $f6,$f10
    movt.s	$f6,$f10,$fcc6
.L0d9b9204:
    # Line 2202
    swc1	$f6,4($a6)
    # Line 2204
    lwc1	$f4,8($a5)
    c.lt.s $f9,$f4
    bc1f .L0d9b9220
    # Line 2193
    addiu	$a1,$a1,2
    # Line 2205
    b	.L0d9b9228
    mov.s	$f4,$f9
.L0d9b9220:
    # Line 2206
    c.lt.s	$f4,$f10
    movt.s	$f4,$f10,$fcc0
.L0d9b9228:
    # Line 2207
    swc1	$f4,8($a6)
    # Line 2208
    lwc1	$f2,12($a5)
    swc1	$f2,12($a6)
    # Line 2194
    lwc1	$f5,16($a5)
    c.lt.s $f7,$f5
    bc1f .L0d9b924c
    nop
    # Line 2195
    b	.L0d9b9254
    mov.s	$f5,$f7
.L0d9b924c:
    # Line 2196
    c.lt.s $f5,$f10
    movt.s	$f5,$f10,$fcc2
.L0d9b9254:
    # Line 2197
    swc1	$f5,16($a6)
    # Line 2199
    lwc1	$f6,20($a5)
    c.lt.s $f8,$f6
    bc1f .L0d9b9270
    nop
    # Line 2200
    b	.L0d9b9278
    mov.s	$f6,$f8
.L0d9b9270:
    # Line 2201
    c.lt.s $f6,$f10
    movt.s	$f6,$f10,$fcc4
.L0d9b9278:
    # Line 2202
    swc1	$f6,20($a6)
    # Line 2204
    lwc1	$f4,24($a5)
    c.lt.s $f9,$f4
    bc1f .L0d9b91a0
    nop
    # Line 2205
    b	.L0d9b91a8
    mov.s	$f4,$f9
.L0d9b9294:
    # Line 2196
    c.lt.s $f5,$f10
    movt.s	$f5,$f10,$fcc6
.L0d9b929c:
    # Line 2197
    swc1	$f5,0($a6)
    # Line 2199
    lwc1	$f6,4($a5)
    c.lt.s $f8,$f6
    bc1f .L0d9b92b8
    nop
    # Line 2200
    b	.L0d9b92c0
    mov.s	$f6,$f8
.L0d9b92b8:
    # Line 2201
    c.lt.s	$f6,$f10
    movt.s	$f6,$f10,$fcc0
.L0d9b92c0:
    # Line 2202
    swc1	$f6,4($a6)
    # Line 2204
    lwc1	$f4,8($a5)
    c.lt.s $f9,$f4
    bc1f .L0d9b9168
    nop
    # Line 2205
    b	.L0d9b9170
    mov.s	$f4,$f9
.end __glSpanClampRGB

# Function: __glSpanClampRGBA
# Declared: Line 2213 (Source lines: 2215-2251)
# Address: 0x0d9b92e0 - 0x0d9b93b0 (Size: 208 bytes, Frame: 0)
.globl __glSpanClampRGBA
.ent __glSpanClampRGBA
__glSpanClampRGBA:
    # Line 2227
    lwc1	$f10,30792($a0)
    # Line 2217
    lw	$a7,184($a1)
    # Line 2226
    lwc1	$f8,30760($a0)
    # Line 2215
    move	$a6,$a2
    # Line 2225
    lwc1	$f9,30756($a0)
    # Line 2215
    move	$a5,$a3
    # Line 2227
    blez	$a7,.L0d9b93a8
    # Line 2224
    lwc1	$f7,30752($a0)
    # Line 2227
    mtc1	$zero,$f6
    b	.L0d9b9324
    move	$a1,$zero
    nop
.L0d9b9310:
    # Line 2248
    c.lt.s	$f4,$f6
    movt.s	$f4,$f6,$fcc0
.L0d9b9318:
    # Line 2249
    swc1	$f4,12($a5)
    # Line 2230
    beq	$a7,$a1,.L0d9b93a8
    # Line 2249
    addiu	$a5,$a5,16
.L0d9b9324:
    # Line 2231
    lwc1	$f5,0($a6)
    c.lt.s $f7,$f5
    bc1f .L0d9b933c
    # Line 2230
    addiu	$a1,$a1,1
    # Line 2232
    b	.L0d9b9344
    mov.s	$f5,$f7
.L0d9b933c:
    # Line 2233
    c.lt.s $f5,$f6
    movt.s	$f5,$f6,$fcc2
.L0d9b9344:
    # Line 2234
    swc1	$f5,0($a5)
    # Line 2236
    lwc1	$f4,4($a6)
    c.lt.s $f9,$f4
    bc1f .L0d9b9360
    nop
    # Line 2237
    b	.L0d9b9368
    mov.s	$f4,$f9
.L0d9b9360:
    # Line 2238
    c.lt.s $f4,$f6
    movt.s	$f4,$f6,$fcc4
.L0d9b9368:
    # Line 2239
    swc1	$f4,4($a5)
    # Line 2241
    lwc1	$f5,8($a6)
    c.lt.s $f8,$f5
    bc1f .L0d9b9384
    nop
    # Line 2242
    b	.L0d9b938c
    mov.s	$f5,$f8
.L0d9b9384:
    # Line 2243
    c.lt.s $f5,$f6
    movt.s	$f5,$f6,$fcc6
.L0d9b938c:
    # Line 2244
    swc1	$f5,8($a5)
    # Line 2246
    lwc1	$f4,12($a6)
    c.lt.s $f10,$f4
    bc1f .L0d9b9310
    addiu	$a6,$a6,16
    # Line 2247
    b	.L0d9b9318
    mov.s	$f4,$f10
.L0d9b93a8:
    # Line 2251
    jr	$ra
    nop
.end __glSpanClampRGBA

# Function: __glSpanClampSigned
# Declared: Line 2259 (Source lines: 2261-2276)
# Address: 0x0d9b93b0 - 0x0d9b9468 (Size: 184 bytes, Frame: 0)
.globl __glSpanClampSigned
.ent __glSpanClampSigned
__glSpanClampSigned:
    # Line 2264
    lw	$v0,108($a1)
    # Line 2263
    lw	$at,184($a1)
    # Line 2267
    mult	$at,$v0
    mflo	$a4
    # Line 2261
    move	$a6,$a3
    move	$a5,$a2
    # Line 2267
    blez	$a4,.L0d9b9460
    andi	$a2,$a4,0x3
    mtc1	$zero,$f4
    sra	$v1,$a4,0x2
    beqz	$a2,.L0d9b9404
    move	$a1,$zero
.L0d9b93e0:
    # Line 2272
    lwc1	$f0,0($a5)
    # Line 2274
    c.lt.s	$f0,$f4
    addiu	$a2,$a2,-1
    # Line 2271
    addiu	$a1,$a1,1
    # Line 2274
    addiu	$a6,$a6,4
    movt.s	$f0,$f4,$fcc0
    # Line 2272
    addiu	$a5,$a5,4
    bnez	$a2,.L0d9b93e0
    # Line 2274
    swc1	$f0,-4($a6)
.L0d9b9404:
    move	$a2,$a5
    beqz	$v1,.L0d9b9460
    move	$a3,$a6
.L0d9b9410:
    # Line 2272
    lwc1	$f5,0($a2)
    # Line 2274
    c.lt.s $f5,$f4
    movt.s	$f5,$f4,$fcc4
    swc1	$f5,0($a3)
    # Line 2272
    lwc1	$f3,4($a2)
    # Line 2274
    c.lt.s $f3,$f4
    movt.s	$f3,$f4,$fcc3
    swc1	$f3,4($a3)
    # Line 2272
    lwc1	$f2,8($a2)
    # Line 2274
    c.lt.s $f2,$f4
    movt.s	$f2,$f4,$fcc2
    swc1	$f2,8($a3)
    # Line 2272
    lwc1	$f1,12($a2)
    # Line 2274
    c.lt.s $f1,$f4
    # Line 2271
    addiu	$a1,$a1,4
    # Line 2274
    addiu	$a3,$a3,16
    movt.s	$f1,$f4,$fcc1
    # Line 2272
    addiu	$a2,$a2,16
    # Line 2271
    bne	$a4,$a1,.L0d9b9410
    # Line 2274
    swc1	$f1,-4($a3)
.L0d9b9460:
    # Line 2276
    jr	$ra
    nop
.end __glSpanClampSigned

# Function: __glSpanExpandRed
# Declared: Line 2282 (Source lines: 2284-2299)
# Address: 0x0d9b9470 - 0x0d9b94c0 (Size: 80 bytes, Frame: 0)
.globl __glSpanExpandRed
.ent __glSpanExpandRed
__glSpanExpandRed:
    # Line 2286
    lw	$a7,180($a1)
    # Line 2284
    move	$a5,$a2
    # Line 2291
    lwc1	$f5,30752($a0)
    # Line 2284
    move	$a6,$a3
    # Line 2291
    mtc1	$zero,$f6
    move	$a1,$zero
    blez	$a7,.L0d9b94b8
    # Line 2290
    lwc1	$f4,30792($a0)
.L0d9b9490:
    # Line 2297
    addiu	$a6,$a6,16
    # Line 2294
    lwc1	$f0,0($a5)
    # Line 2295
    swc1	$f6,-12($a6)
    # Line 2296
    swc1	$f6,-8($a6)
    # Line 2293
    addiu	$a1,$a1,1
    # Line 2297
    swc1	$f4,-4($a6)
    # Line 2294
    mul.s	$f0,$f0,$f5
    addiu	$a5,$a5,4
    # Line 2293
    bne	$a7,$a1,.L0d9b9490
    # Line 2294
    swc1	$f0,-16($a6)
.L0d9b94b8:
    # Line 2299
    jr	$ra
    nop
.end __glSpanExpandRed

# Function: __glSpanExpandGreen
# Declared: Line 2304 (Source lines: 2306-2321)
# Address: 0x0d9b94c0 - 0x0d9b9510 (Size: 80 bytes, Frame: 0)
.globl __glSpanExpandGreen
.ent __glSpanExpandGreen
__glSpanExpandGreen:
    # Line 2308
    lw	$a7,180($a1)
    # Line 2306
    move	$a5,$a2
    # Line 2313
    lwc1	$f5,30792($a0)
    # Line 2306
    move	$a6,$a3
    # Line 2313
    mtc1	$zero,$f6
    move	$a1,$zero
    blez	$a7,.L0d9b9508
    # Line 2312
    lwc1	$f4,30756($a0)
.L0d9b94e0:
    # Line 2316
    swc1	$f6,0($a6)
    # Line 2317
    lwc1	$f0,0($a5)
    # Line 2319
    addiu	$a6,$a6,16
    # Line 2318
    swc1	$f6,-8($a6)
    # Line 2315
    addiu	$a1,$a1,1
    # Line 2319
    swc1	$f5,-4($a6)
    # Line 2317
    mul.s	$f0,$f0,$f4
    addiu	$a5,$a5,4
    # Line 2315
    bne	$a7,$a1,.L0d9b94e0
    # Line 2317
    swc1	$f0,-12($a6)
.L0d9b9508:
    # Line 2321
    jr	$ra
    nop
.end __glSpanExpandGreen

# Function: __glSpanExpandBlue
# Declared: Line 2326 (Source lines: 2328-2343)
# Address: 0x0d9b9510 - 0x0d9b9560 (Size: 80 bytes, Frame: 0)
.globl __glSpanExpandBlue
.ent __glSpanExpandBlue
__glSpanExpandBlue:
    # Line 2330
    lw	$a7,180($a1)
    # Line 2328
    move	$a5,$a2
    # Line 2335
    lwc1	$f5,30792($a0)
    # Line 2328
    move	$a6,$a3
    # Line 2335
    mtc1	$zero,$f6
    move	$a1,$zero
    blez	$a7,.L0d9b9558
    # Line 2334
    lwc1	$f4,30760($a0)
.L0d9b9530:
    # Line 2339
    swc1	$f6,4($a6)
    # Line 2338
    swc1	$f6,0($a6)
    # Line 2340
    lwc1	$f0,0($a5)
    # Line 2341
    addiu	$a6,$a6,16
    # Line 2337
    addiu	$a1,$a1,1
    # Line 2341
    swc1	$f5,-4($a6)
    # Line 2340
    mul.s	$f0,$f0,$f4
    addiu	$a5,$a5,4
    # Line 2337
    bne	$a7,$a1,.L0d9b9530
    # Line 2340
    swc1	$f0,-8($a6)
.L0d9b9558:
    # Line 2343
    jr	$ra
    nop
.end __glSpanExpandBlue

# Function: __glSpanExpandAlpha
# Declared: Line 2348 (Source lines: 2350-2364)
# Address: 0x0d9b9560 - 0x0d9b95b0 (Size: 80 bytes, Frame: 0)
.globl __glSpanExpandAlpha
.ent __glSpanExpandAlpha
__glSpanExpandAlpha:
    # Line 2352
    lw	$a7,180($a1)
    # Line 2350
    move	$a5,$a2
    move	$a6,$a3
    # Line 2356
    blez	$a7,.L0d9b95a8
    lwc1	$f4,30792($a0)
    mtc1	$zero,$f5
    move	$a1,$zero
    nop
.L0d9b9580:
    # Line 2359
    swc1	$f5,0($a6)
    # Line 2360
    swc1	$f5,4($a6)
    # Line 2361
    swc1	$f5,8($a6)
    # Line 2362
    lwc1	$f0,0($a5)
    # Line 2358
    addiu	$a1,$a1,1
    # Line 2362
    addiu	$a6,$a6,16
    mul.s	$f0,$f0,$f4
    addiu	$a5,$a5,4
    # Line 2358
    bne	$a7,$a1,.L0d9b9580
    # Line 2362
    swc1	$f0,-4($a6)
.L0d9b95a8:
    # Line 2364
    jr	$ra
    nop
.end __glSpanExpandAlpha

# Function: __glSpanExpandRGB
# Declared: Line 2369 (Source lines: 2371-2393)
# Address: 0x0d9b95b0 - 0x0d9b96e8 (Size: 312 bytes, Frame: 0)
.globl __glSpanExpandRGB
.ent __glSpanExpandRGB
__glSpanExpandRGB:
    # Line 2382
    lwc1	$f6,30760($a0)
    # Line 2373
    lw	$a5,180($a1)
    # Line 2381
    lwc1	$f7,30756($a0)
    # Line 2380
    lwc1	$f4,30752($a0)
    # Line 2371
    move	$a6,$a3
    move	$a7,$a2
    # Line 2382
    blez	$a5,.L0d9b96e0
    # Line 2378
    lwc1	$f5,30792($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9b961c
    # Line 2382
    move	$a1,$zero
.L0d9b95e0:
    # Line 2385
    lwc1	$f2,0($a7)
    # Line 2386
    lwc1	$f1,4($a7)
    # Line 2391
    addiu	$a6,$a6,16
    # Line 2387
    lwc1	$f0,8($a7)
    # Line 2391
    swc1	$f5,-4($a6)
    # Line 2385
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    # Line 2386
    mul.s	$f1,$f1,$f7
    # Line 2388
    swc1	$f2,-16($a6)
    # Line 2384
    addiu	$a1,$a1,1
    # Line 2387
    mul.s	$f0,$f0,$f6
    # Line 2389
    swc1	$f1,-12($a6)
    # Line 2387
    addiu	$a7,$a7,12
    bnez	$a2,.L0d9b95e0
    # Line 2390
    swc1	$f0,-8($a6)
.L0d9b961c:
    move	$a2,$a7
    beqz	$at,.L0d9b96e0
    move	$a3,$a6
    nop
    nop
.L0d9b9630:
    # Line 2387
    lwc1	$f16,8($a2)
    # Line 2386
    lwc1	$f17,4($a2)
    # Line 2385
    lwc1	$f18,0($a2)
    # Line 2391
    swc1	$f5,12($a3)
    # Line 2387
    mul.s	$f16,$f16,$f6
    # Line 2386
    mul.s	$f17,$f17,$f7
    # Line 2390
    swc1	$f16,8($a3)
    # Line 2385
    mul.s	$f18,$f18,$f4
    # Line 2389
    swc1	$f17,4($a3)
    # Line 2388
    swc1	$f18,0($a3)
    # Line 2387
    lwc1	$f13,20($a2)
    # Line 2386
    lwc1	$f14,16($a2)
    # Line 2385
    lwc1	$f15,12($a2)
    # Line 2391
    swc1	$f5,28($a3)
    # Line 2387
    mul.s	$f13,$f13,$f6
    # Line 2386
    mul.s	$f14,$f14,$f7
    # Line 2390
    swc1	$f13,24($a3)
    # Line 2385
    mul.s	$f15,$f15,$f4
    # Line 2389
    swc1	$f14,20($a3)
    # Line 2388
    swc1	$f15,16($a3)
    # Line 2387
    lwc1	$f10,32($a2)
    # Line 2386
    lwc1	$f11,28($a2)
    # Line 2385
    lwc1	$f12,24($a2)
    # Line 2391
    swc1	$f5,44($a3)
    # Line 2387
    mul.s	$f10,$f10,$f6
    # Line 2386
    mul.s	$f11,$f11,$f7
    # Line 2390
    swc1	$f10,40($a3)
    # Line 2385
    mul.s	$f12,$f12,$f4
    # Line 2389
    swc1	$f11,36($a3)
    # Line 2388
    swc1	$f12,32($a3)
    # Line 2385
    lwc1	$f9,36($a2)
    # Line 2386
    lwc1	$f8,40($a2)
    # Line 2391
    addiu	$a3,$a3,64
    # Line 2387
    lwc1	$f3,44($a2)
    # Line 2391
    swc1	$f5,-4($a3)
    # Line 2385
    mul.s	$f9,$f9,$f4
    # Line 2384
    addiu	$a1,$a1,4
    # Line 2386
    mul.s	$f8,$f8,$f7
    # Line 2388
    swc1	$f9,-16($a3)
    # Line 2387
    mul.s	$f3,$f3,$f6
    # Line 2389
    swc1	$f8,-12($a3)
    # Line 2387
    addiu	$a2,$a2,48
    # Line 2384
    bne	$a5,$a1,.L0d9b9630
    # Line 2390
    swc1	$f3,-8($a3)
.L0d9b96e0:
    # Line 2393
    jr	$ra
    nop
.end __glSpanExpandRGB

# Function: __glSpanExpandBGR
# Declared: Line 2400 (Source lines: 2402-2424)
# Address: 0x0d9b96f0 - 0x0d9b9828 (Size: 312 bytes, Frame: 0)
.globl __glSpanExpandBGR
.ent __glSpanExpandBGR
__glSpanExpandBGR:
    # Line 2413
    lwc1	$f6,30760($a0)
    # Line 2404
    lw	$a5,180($a1)
    # Line 2412
    lwc1	$f7,30756($a0)
    # Line 2411
    lwc1	$f4,30752($a0)
    # Line 2402
    move	$a6,$a3
    move	$a7,$a2
    # Line 2413
    blez	$a5,.L0d9b9820
    # Line 2409
    lwc1	$f5,30792($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9b975c
    # Line 2413
    move	$a1,$zero
.L0d9b9720:
    # Line 2419
    lwc1	$f2,8($a7)
    # Line 2417
    lwc1	$f1,4($a7)
    # Line 2422
    addiu	$a6,$a6,16
    # Line 2416
    lwc1	$f0,0($a7)
    # Line 2422
    swc1	$f5,-4($a6)
    # Line 2419
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    # Line 2417
    mul.s	$f1,$f1,$f7
    # Line 2419
    swc1	$f2,-16($a6)
    # Line 2415
    addiu	$a1,$a1,1
    # Line 2416
    mul.s	$f0,$f0,$f6
    # Line 2420
    swc1	$f1,-12($a6)
    # Line 2418
    addiu	$a7,$a7,12
    bnez	$a2,.L0d9b9720
    # Line 2421
    swc1	$f0,-8($a6)
.L0d9b975c:
    move	$a2,$a7
    beqz	$at,.L0d9b9820
    move	$a3,$a6
    nop
    nop
.L0d9b9770:
    # Line 2416
    lwc1	$f16,0($a2)
    # Line 2417
    lwc1	$f17,4($a2)
    # Line 2419
    lwc1	$f18,8($a2)
    # Line 2422
    swc1	$f5,12($a3)
    # Line 2416
    mul.s	$f16,$f16,$f6
    # Line 2417
    mul.s	$f17,$f17,$f7
    # Line 2421
    swc1	$f16,8($a3)
    # Line 2419
    mul.s	$f18,$f18,$f4
    # Line 2420
    swc1	$f17,4($a3)
    # Line 2419
    swc1	$f18,0($a3)
    # Line 2416
    lwc1	$f13,12($a2)
    # Line 2417
    lwc1	$f14,16($a2)
    # Line 2419
    lwc1	$f15,20($a2)
    # Line 2422
    swc1	$f5,28($a3)
    # Line 2416
    mul.s	$f13,$f13,$f6
    # Line 2417
    mul.s	$f14,$f14,$f7
    # Line 2421
    swc1	$f13,24($a3)
    # Line 2419
    mul.s	$f15,$f15,$f4
    # Line 2420
    swc1	$f14,20($a3)
    # Line 2419
    swc1	$f15,16($a3)
    # Line 2416
    lwc1	$f10,24($a2)
    # Line 2417
    lwc1	$f11,28($a2)
    # Line 2419
    lwc1	$f12,32($a2)
    # Line 2422
    swc1	$f5,44($a3)
    # Line 2416
    mul.s	$f10,$f10,$f6
    # Line 2417
    mul.s	$f11,$f11,$f7
    # Line 2421
    swc1	$f10,40($a3)
    # Line 2419
    mul.s	$f12,$f12,$f4
    # Line 2420
    swc1	$f11,36($a3)
    # Line 2419
    swc1	$f12,32($a3)
    lwc1	$f9,44($a2)
    # Line 2417
    lwc1	$f8,40($a2)
    # Line 2422
    addiu	$a3,$a3,64
    # Line 2416
    lwc1	$f3,36($a2)
    # Line 2422
    swc1	$f5,-4($a3)
    # Line 2419
    mul.s	$f9,$f9,$f4
    # Line 2415
    addiu	$a1,$a1,4
    # Line 2417
    mul.s	$f8,$f8,$f7
    # Line 2419
    swc1	$f9,-16($a3)
    # Line 2416
    mul.s	$f3,$f3,$f6
    # Line 2420
    swc1	$f8,-12($a3)
    # Line 2418
    addiu	$a2,$a2,48
    # Line 2415
    bne	$a5,$a1,.L0d9b9770
    # Line 2421
    swc1	$f3,-8($a3)
.L0d9b9820:
    # Line 2424
    jr	$ra
    nop
.end __glSpanExpandBGR

# Function: __glSpanExpandLuminance
# Declared: Line 2429 (Source lines: 2431-2451)
# Address: 0x0d9b9830 - 0x0d9b9898 (Size: 104 bytes, Frame: 0)
.globl __glSpanExpandLuminance
.ent __glSpanExpandLuminance
__glSpanExpandLuminance:
    # Line 2442
    lwc1	$f6,30760($a0)
    # Line 2433
    lw	$a7,180($a1)
    # Line 2441
    lwc1	$f7,30756($a0)
    # Line 2431
    move	$a5,$a2
    # Line 2440
    lwc1	$f4,30752($a0)
    # Line 2431
    move	$a6,$a3
    # Line 2442
    blez	$a7,.L0d9b9890
    # Line 2438
    lwc1	$f5,30792($a0)
    # Line 2442
    move	$a1,$zero
    nop
    nop
    nop
.L0d9b9860:
    # Line 2445
    lwc1	$f0,0($a5)
    # Line 2449
    addiu	$a6,$a6,16
    swc1	$f5,-4($a6)
    # Line 2446
    mul.s	$f2,$f4,$f0
    # Line 2444
    addiu	$a1,$a1,1
    # Line 2447
    mul.s	$f1,$f7,$f0
    # Line 2446
    swc1	$f2,-16($a6)
    # Line 2448
    mul.s	$f0,$f6,$f0
    # Line 2447
    swc1	$f1,-12($a6)
    # Line 2445
    addiu	$a5,$a5,4
    # Line 2444
    bne	$a7,$a1,.L0d9b9860
    # Line 2448
    swc1	$f0,-8($a6)
.L0d9b9890:
    # Line 2451
    jr	$ra
    nop
.end __glSpanExpandLuminance

# Function: __glSpanExpandLuminanceAlpha
# Declared: Line 2456 (Source lines: 2458-2478)
# Address: 0x0d9b98a0 - 0x0d9b99d8 (Size: 312 bytes, Frame: 0)
.globl __glSpanExpandLuminanceAlpha
.ent __glSpanExpandLuminanceAlpha
__glSpanExpandLuminanceAlpha:
    # Line 2469
    lwc1	$f6,30760($a0)
    # Line 2460
    lw	$a5,180($a1)
    # Line 2468
    lwc1	$f7,30756($a0)
    # Line 2467
    lwc1	$f4,30752($a0)
    # Line 2458
    move	$a6,$a3
    move	$a7,$a2
    # Line 2469
    blez	$a5,.L0d9b99d0
    # Line 2465
    lwc1	$f5,30792($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9b990c
    # Line 2469
    move	$a1,$zero
.L0d9b98d0:
    # Line 2472
    lwc1	$f1,0($a7)
    # Line 2473
    mul.s	$f3,$f4,$f1
    swc1	$f3,0($a6)
    # Line 2474
    mul.s	$f2,$f7,$f1
    swc1	$f2,4($a6)
    # Line 2475
    mul.s	$f1,$f6,$f1
    swc1	$f1,8($a6)
    # Line 2476
    lwc1	$f0,4($a7)
    addiu	$a2,$a2,-1
    # Line 2471
    addiu	$a1,$a1,1
    # Line 2476
    addiu	$a6,$a6,16
    mul.s	$f0,$f0,$f5
    addiu	$a7,$a7,8
    bnez	$a2,.L0d9b98d0
    swc1	$f0,-4($a6)
.L0d9b990c:
    move	$a2,$a7
    beqz	$at,.L0d9b99d0
    move	$a3,$a6
    nop
    nop
.L0d9b9920:
    # Line 2472
    lwc1	$f23,0($a2)
    # Line 2473
    mul.s	$f27,$f4,$f23
    swc1	$f27,0($a3)
    # Line 2474
    mul.s	$f25,$f7,$f23
    swc1	$f25,4($a3)
    # Line 2475
    mul.s	$f23,$f6,$f23
    swc1	$f23,8($a3)
    # Line 2476
    lwc1	$f21,4($a2)
    mul.s	$f21,$f21,$f5
    swc1	$f21,12($a3)
    # Line 2472
    lwc1	$f17,8($a2)
    # Line 2473
    mul.s	$f19,$f4,$f17
    swc1	$f19,16($a3)
    # Line 2474
    mul.s	$f18,$f7,$f17
    swc1	$f18,20($a3)
    # Line 2475
    mul.s	$f17,$f6,$f17
    swc1	$f17,24($a3)
    # Line 2476
    lwc1	$f16,12($a2)
    mul.s	$f16,$f16,$f5
    swc1	$f16,28($a3)
    # Line 2472
    lwc1	$f13,16($a2)
    # Line 2473
    mul.s	$f15,$f4,$f13
    swc1	$f15,32($a3)
    # Line 2474
    mul.s	$f14,$f7,$f13
    swc1	$f14,36($a3)
    # Line 2475
    mul.s	$f13,$f6,$f13
    swc1	$f13,40($a3)
    # Line 2476
    lwc1	$f12,20($a2)
    mul.s	$f12,$f12,$f5
    swc1	$f12,44($a3)
    # Line 2472
    lwc1	$f9,24($a2)
    # Line 2473
    mul.s	$f11,$f4,$f9
    swc1	$f11,48($a3)
    # Line 2474
    mul.s	$f10,$f7,$f9
    swc1	$f10,52($a3)
    # Line 2475
    mul.s	$f9,$f6,$f9
    swc1	$f9,56($a3)
    # Line 2476
    lwc1	$f8,28($a2)
    # Line 2471
    addiu	$a1,$a1,4
    # Line 2476
    addiu	$a3,$a3,64
    mul.s	$f8,$f8,$f5
    addiu	$a2,$a2,32
    # Line 2471
    bne	$a5,$a1,.L0d9b9920
    # Line 2476
    swc1	$f8,-4($a3)
.L0d9b99d0:
    # Line 2478
    jr	$ra
    nop
.end __glSpanExpandLuminanceAlpha

# Function: __glSpanExpandRedAlpha
# Declared: Line 2483 (Source lines: 2485-2505)
# Address: 0x0d9b99e0 - 0x0d9b9a38 (Size: 88 bytes, Frame: 0)
.globl __glSpanExpandRedAlpha
.ent __glSpanExpandRedAlpha
__glSpanExpandRedAlpha:
    # Line 2487
    lw	$a7,180($a1)
    # Line 2485
    move	$a5,$a2
    # Line 2495
    lwc1	$f5,30752($a0)
    # Line 2485
    move	$a6,$a3
    # Line 2495
    mtc1	$zero,$f6
    move	$a1,$zero
    blez	$a7,.L0d9b9a30
    # Line 2493
    lwc1	$f4,30792($a0)
.L0d9b9a00:
    # Line 2500
    lwc1	$f1,0($a5)
    # Line 2502
    swc1	$f6,8($a6)
    # Line 2501
    swc1	$f6,4($a6)
    # Line 2500
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($a6)
    # Line 2503
    lwc1	$f0,4($a5)
    # Line 2498
    addiu	$a1,$a1,1
    # Line 2503
    addiu	$a6,$a6,16
    mul.s	$f0,$f0,$f4
    addiu	$a5,$a5,8
    # Line 2498
    bne	$a7,$a1,.L0d9b9a00
    # Line 2503
    swc1	$f0,-4($a6)
.L0d9b9a30:
    # Line 2505
    jr	$ra
    nop
.end __glSpanExpandRedAlpha

# Function: __glSpanExpandIntensity
# Declared: Line 2511 (Source lines: 2513-2533)
# Address: 0x0d9b9a40 - 0x0d9b9b10 (Size: 208 bytes, Frame: 0)
.globl __glSpanExpandIntensity
.ent __glSpanExpandIntensity
__glSpanExpandIntensity:
    # Line 2524
    lwc1	$f6,30760($a0)
    # Line 2515
    lw	$a5,180($a1)
    # Line 2523
    lwc1	$f7,30756($a0)
    # Line 2513
    move	$a6,$a2
    # Line 2522
    lwc1	$f4,30752($a0)
    # Line 2513
    move	$a7,$a3
    # Line 2524
    blez	$a5,.L0d9b9b08
    # Line 2520
    lwc1	$f5,30792($a0)
    # Line 2524
    move	$a1,$zero
    andi	$at,$a5,0x1
    beqz	$at,.L0d9b9aa0
    sra	$v0,$a5,0x1
    # Line 2527
    lwc1	$f0,0($a2)
    # Line 2528
    mul.s	$f2,$f4,$f0
    swc1	$f2,0($a3)
    # Line 2529
    mul.s	$f1,$f7,$f0
    swc1	$f1,4($a3)
    # Line 2530
    mul.s	$f1,$f6,$f0
    # Line 2531
    addiu	$a7,$a3,16
    mul.s	$f0,$f5,$f0
    # Line 2530
    swc1	$f1,8($a3)
    # Line 2526
    li	$a1,1
    # Line 2527
    addiu	$a6,$a2,4
    # Line 2531
    swc1	$f0,12($a3)
.L0d9b9aa0:
    move	$a2,$a6
    beqz	$v0,.L0d9b9b08
    move	$a3,$a7
    nop
.L0d9b9ab0:
    # Line 2527
    lwc1	$f10,0($a2)
    # Line 2528
    mul.s	$f13,$f4,$f10
    swc1	$f13,0($a3)
    # Line 2529
    mul.s	$f12,$f7,$f10
    swc1	$f12,4($a3)
    # Line 2530
    mul.s	$f11,$f6,$f10
    swc1	$f11,8($a3)
    # Line 2531
    mul.s	$f10,$f5,$f10
    swc1	$f10,12($a3)
    # Line 2527
    lwc1	$f3,4($a2)
    # Line 2531
    addiu	$a3,$a3,32
    # Line 2528
    mul.s	$f9,$f4,$f3
    swc1	$f9,-16($a3)
    # Line 2529
    mul.s	$f8,$f7,$f3
    # Line 2526
    addiu	$a1,$a1,2
    # Line 2529
    swc1	$f8,-12($a3)
    # Line 2530
    mul.s	$f8,$f6,$f3
    # Line 2531
    mul.s	$f3,$f5,$f3
    # Line 2530
    swc1	$f8,-8($a3)
    # Line 2527
    addiu	$a2,$a2,8
    # Line 2526
    bne	$a5,$a1,.L0d9b9ab0
    # Line 2531
    swc1	$f3,-4($a3)
.L0d9b9b08:
    # Line 2533
    jr	$ra
    nop
.end __glSpanExpandIntensity

# Function: __glSpanExpandRedNS
# Declared: Line 2539 (Source lines: 2541-2554)
# Address: 0x0d9b9b10 - 0x0d9b9b6c (Size: 92 bytes, Frame: 0)
.globl __glSpanExpandRedNS
.ent __glSpanExpandRedNS
__glSpanExpandRedNS:
    # Line 2541
    move	$a6,$a3
    # Line 2543
    lw	$a7,180($a1)
    # Line 2541
    move	$a5,$a2
    lui	$v0,0x9
    # Line 2545
    move	$a2,$zero
    # Line 2541
    addiu	$v0,$v0,29308
    # Line 2545
    blez	$a7,.L0d9b9b64
    # Line 2541
    addu	$at,$t9,$v0
    # Line 2545
    mtc1	$zero,$f4
    lwc1	$f5,_lit_3f800000
    nop
    nop
.L0d9b9b40:
    # Line 2552
    addiu	$a6,$a6,16
    # Line 2549
    lwc1	$f0,0($a5)
    # Line 2550
    swc1	$f4,-12($a6)
    # Line 2551
    swc1	$f4,-8($a6)
    # Line 2548
    addiu	$a2,$a2,1
    # Line 2552
    swc1	$f5,-4($a6)
    # Line 2549
    addiu	$a5,$a5,4
    # Line 2548
    bne	$a7,$a2,.L0d9b9b40
    # Line 2549
    swc1	$f0,-16($a6)
.L0d9b9b64:
    # Line 2554
    jr	$ra
    nop
.end __glSpanExpandRedNS

# Function: __glSpanExpandGreenNS
# Declared: Line 2560 (Source lines: 2562-2575)
# Address: 0x0d9b9b70 - 0x0d9b9bcc (Size: 92 bytes, Frame: 0)
.globl __glSpanExpandGreenNS
.ent __glSpanExpandGreenNS
__glSpanExpandGreenNS:
    # Line 2562
    move	$a6,$a3
    # Line 2564
    lw	$a7,180($a1)
    # Line 2562
    move	$a5,$a2
    lui	$v0,0x9
    # Line 2566
    move	$a2,$zero
    # Line 2562
    addiu	$v0,$v0,29212
    # Line 2566
    blez	$a7,.L0d9b9bc4
    # Line 2562
    addu	$at,$t9,$v0
    # Line 2566
    mtc1	$zero,$f4
    lwc1	$f5,_lit_3f800000
    nop
    nop
.L0d9b9ba0:
    # Line 2570
    swc1	$f4,0($a6)
    # Line 2573
    addiu	$a6,$a6,16
    # Line 2571
    lwc1	$f0,0($a5)
    # Line 2572
    swc1	$f4,-8($a6)
    # Line 2569
    addiu	$a2,$a2,1
    # Line 2573
    swc1	$f5,-4($a6)
    # Line 2571
    addiu	$a5,$a5,4
    # Line 2569
    bne	$a7,$a2,.L0d9b9ba0
    # Line 2571
    swc1	$f0,-12($a6)
.L0d9b9bc4:
    # Line 2575
    jr	$ra
    nop
.end __glSpanExpandGreenNS

# Function: __glSpanExpandBlueNS
# Declared: Line 2581 (Source lines: 2583-2596)
# Address: 0x0d9b9bd0 - 0x0d9b9c2c (Size: 92 bytes, Frame: 0)
.globl __glSpanExpandBlueNS
.ent __glSpanExpandBlueNS
__glSpanExpandBlueNS:
    # Line 2583
    move	$a6,$a3
    # Line 2585
    lw	$a7,180($a1)
    # Line 2583
    move	$a5,$a2
    lui	$v0,0x9
    # Line 2587
    move	$a2,$zero
    # Line 2583
    addiu	$v0,$v0,29116
    # Line 2587
    blez	$a7,.L0d9b9c24
    # Line 2583
    addu	$at,$t9,$v0
    # Line 2587
    mtc1	$zero,$f4
    lwc1	$f5,_lit_3f800000
    nop
    nop
.L0d9b9c00:
    # Line 2592
    swc1	$f4,4($a6)
    # Line 2591
    swc1	$f4,0($a6)
    # Line 2594
    addiu	$a6,$a6,16
    # Line 2590
    addiu	$a2,$a2,1
    # Line 2593
    lwc1	$f0,0($a5)
    # Line 2594
    swc1	$f5,-4($a6)
    # Line 2593
    addiu	$a5,$a5,4
    # Line 2590
    bne	$a7,$a2,.L0d9b9c00
    # Line 2593
    swc1	$f0,-8($a6)
.L0d9b9c24:
    # Line 2596
    jr	$ra
    nop
.end __glSpanExpandBlueNS

# Function: __glSpanExpandAlphaNS
# Declared: Line 2602 (Source lines: 2604-2617)
# Address: 0x0d9b9c30 - 0x0d9b9c7c (Size: 76 bytes, Frame: 0)
.globl __glSpanExpandAlphaNS
.ent __glSpanExpandAlphaNS
__glSpanExpandAlphaNS:
    # Line 2606
    lw	$a6,180($a1)
    # Line 2604
    move	$a4,$a2
    # Line 2608
    blez	$a6,.L0d9b9c74
    # Line 2604
    move	$a5,$a3
    # Line 2608
    mtc1	$zero,$f4
    move	$a1,$zero
    nop
    nop
.L0d9b9c50:
    # Line 2612
    swc1	$f4,0($a5)
    # Line 2613
    swc1	$f4,4($a5)
    # Line 2614
    swc1	$f4,8($a5)
    # Line 2611
    addiu	$a1,$a1,1
    # Line 2615
    lwc1	$f0,0($a4)
    addiu	$a5,$a5,16
    addiu	$a4,$a4,4
    # Line 2611
    bne	$a6,$a1,.L0d9b9c50
    # Line 2615
    swc1	$f0,-4($a5)
.L0d9b9c74:
    # Line 2617
    jr	$ra
    nop
.end __glSpanExpandAlphaNS

# Function: __glSpanExpandRGBNS
# Declared: Line 2623 (Source lines: 2625-2637)
# Address: 0x0d9b9c80 - 0x0d9b9d78 (Size: 248 bytes, Frame: 0)
.globl __glSpanExpandRGBNS
.ent __glSpanExpandRGBNS
__glSpanExpandRGBNS:
    # Line 2625
    move	$a7,$a2
    # Line 2627
    lw	$a5,180($a1)
    # Line 2625
    move	$a6,$a3
    lui	$v0,0x9
    addiu	$v0,$v0,28940
    andi	$a3,$a5,0x3
    # Line 2629
    blez	$a5,.L0d9b9d70
    # Line 2625
    addu	$at,$t9,$v0
    sra	$v1,$a5,0x2
    # Line 2629
    move	$a2,$zero
    beqz	$a3,.L0d9b9ce0
    lwc1	$f4,_lit_3f800000
.L0d9b9cb0:
    # Line 2632
    lwc1	$f2,0($a7)
    swc1	$f2,0($a6)
    # Line 2633
    lwc1	$f1,4($a7)
    swc1	$f1,4($a6)
    # Line 2635
    addiu	$a6,$a6,16
    addiu	$a3,$a3,-1
    # Line 2634
    lwc1	$f0,8($a7)
    # Line 2631
    addiu	$a2,$a2,1
    # Line 2635
    swc1	$f4,-4($a6)
    # Line 2634
    addiu	$a7,$a7,12
    bnez	$a3,.L0d9b9cb0
    swc1	$f0,-8($a6)
.L0d9b9ce0:
    move	$a3,$a7
    beqz	$v1,.L0d9b9d70
    move	$a4,$a6
    nop
.L0d9b9cf0:
    # Line 2632
    lwc1	$f15,0($a3)
    swc1	$f15,0($a4)
    # Line 2633
    lwc1	$f14,4($a3)
    swc1	$f14,4($a4)
    # Line 2634
    lwc1	$f13,8($a3)
    # Line 2635
    swc1	$f4,12($a4)
    # Line 2634
    swc1	$f13,8($a4)
    # Line 2632
    lwc1	$f12,12($a3)
    swc1	$f12,16($a4)
    # Line 2633
    lwc1	$f11,16($a3)
    swc1	$f11,20($a4)
    # Line 2634
    lwc1	$f10,20($a3)
    # Line 2635
    swc1	$f4,28($a4)
    # Line 2634
    swc1	$f10,24($a4)
    # Line 2632
    lwc1	$f9,24($a3)
    swc1	$f9,32($a4)
    # Line 2633
    lwc1	$f8,28($a3)
    swc1	$f8,36($a4)
    # Line 2634
    lwc1	$f7,32($a3)
    # Line 2635
    swc1	$f4,44($a4)
    # Line 2634
    swc1	$f7,40($a4)
    # Line 2632
    lwc1	$f6,36($a3)
    swc1	$f6,48($a4)
    # Line 2633
    lwc1	$f5,40($a3)
    swc1	$f5,52($a4)
    # Line 2635
    addiu	$a4,$a4,64
    # Line 2631
    addiu	$a2,$a2,4
    # Line 2634
    lwc1	$f3,44($a3)
    # Line 2635
    swc1	$f4,-4($a4)
    # Line 2634
    addiu	$a3,$a3,48
    # Line 2631
    bne	$a5,$a2,.L0d9b9cf0
    # Line 2634
    swc1	$f3,-8($a4)
.L0d9b9d70:
    # Line 2637
    jr	$ra
    nop
.end __glSpanExpandRGBNS

# Function: __glSpanExpandBGRNS
# Declared: Line 2645 (Source lines: 2647-2663)
# Address: 0x0d9b9d80 - 0x0d9b9e78 (Size: 248 bytes, Frame: 0)
.globl __glSpanExpandBGRNS
.ent __glSpanExpandBGRNS
__glSpanExpandBGRNS:
    # Line 2647
    move	$a7,$a2
    # Line 2649
    lw	$a5,180($a1)
    # Line 2647
    move	$a6,$a3
    lui	$v0,0x9
    addiu	$v0,$v0,28684
    andi	$a3,$a5,0x3
    # Line 2651
    blez	$a5,.L0d9b9e70
    # Line 2647
    addu	$at,$t9,$v0
    sra	$v1,$a5,0x2
    # Line 2651
    move	$a2,$zero
    beqz	$a3,.L0d9b9de0
    lwc1	$f4,_lit_3f800000
.L0d9b9db0:
    # Line 2655
    lwc1	$f1,4($a7)
    # Line 2658
    lwc1	$f2,8($a7)
    # Line 2661
    addiu	$a6,$a6,16
    # Line 2654
    lwc1	$f0,0($a7)
    # Line 2661
    swc1	$f4,-4($a6)
    addiu	$a3,$a3,-1
    # Line 2658
    swc1	$f2,-16($a6)
    # Line 2653
    addiu	$a2,$a2,1
    # Line 2659
    swc1	$f1,-12($a6)
    # Line 2656
    addiu	$a7,$a7,12
    bnez	$a3,.L0d9b9db0
    # Line 2660
    swc1	$f0,-8($a6)
.L0d9b9de0:
    move	$a3,$a7
    beqz	$v1,.L0d9b9e70
    move	$a4,$a6
    nop
.L0d9b9df0:
    # Line 2655
    lwc1	$f14,4($a3)
    # Line 2658
    lwc1	$f15,8($a3)
    # Line 2654
    lwc1	$f13,0($a3)
    # Line 2661
    swc1	$f4,12($a4)
    # Line 2660
    swc1	$f13,8($a4)
    # Line 2659
    swc1	$f14,4($a4)
    # Line 2658
    swc1	$f15,0($a4)
    # Line 2655
    lwc1	$f11,16($a3)
    # Line 2658
    lwc1	$f12,20($a3)
    # Line 2654
    lwc1	$f10,12($a3)
    # Line 2661
    swc1	$f4,28($a4)
    # Line 2660
    swc1	$f10,24($a4)
    # Line 2659
    swc1	$f11,20($a4)
    # Line 2658
    swc1	$f12,16($a4)
    # Line 2655
    lwc1	$f8,28($a3)
    # Line 2658
    lwc1	$f9,32($a3)
    # Line 2654
    lwc1	$f7,24($a3)
    # Line 2661
    swc1	$f4,44($a4)
    # Line 2660
    swc1	$f7,40($a4)
    # Line 2659
    swc1	$f8,36($a4)
    # Line 2658
    swc1	$f9,32($a4)
    # Line 2655
    lwc1	$f5,40($a3)
    # Line 2658
    lwc1	$f6,44($a3)
    # Line 2661
    addiu	$a4,$a4,64
    # Line 2654
    lwc1	$f3,36($a3)
    # Line 2661
    swc1	$f4,-4($a4)
    # Line 2653
    addiu	$a2,$a2,4
    # Line 2658
    swc1	$f6,-16($a4)
    # Line 2659
    swc1	$f5,-12($a4)
    # Line 2656
    addiu	$a3,$a3,48
    # Line 2653
    bne	$a5,$a2,.L0d9b9df0
    # Line 2660
    swc1	$f3,-8($a4)
.L0d9b9e70:
    # Line 2663
    jr	$ra
    nop
.end __glSpanExpandBGRNS

# Function: __glSpanExpandLuminanceNS
# Declared: Line 2669 (Source lines: 2671-2685)
# Address: 0x0d9b9e80 - 0x0d9b9edc (Size: 92 bytes, Frame: 0)
.globl __glSpanExpandLuminanceNS
.ent __glSpanExpandLuminanceNS
__glSpanExpandLuminanceNS:
    # Line 2671
    move	$a6,$a3
    # Line 2673
    lw	$a7,180($a1)
    # Line 2671
    move	$a5,$a2
    lui	$v0,0x9
    # Line 2675
    move	$a2,$zero
    # Line 2671
    addiu	$v0,$v0,28428
    # Line 2675
    blez	$a7,.L0d9b9ed4
    # Line 2671
    addu	$at,$t9,$v0
    # Line 2675
    lwc1	$f4,_lit_3f800000
    nop
    nop
    nop
.L0d9b9eb0:
    # Line 2683
    addiu	$a6,$a6,16
    # Line 2679
    lwc1	$f0,0($a5)
    # Line 2683
    swc1	$f4,-4($a6)
    # Line 2678
    addiu	$a2,$a2,1
    # Line 2680
    swc1	$f0,-16($a6)
    # Line 2681
    swc1	$f0,-12($a6)
    # Line 2679
    addiu	$a5,$a5,4
    # Line 2678
    bne	$a7,$a2,.L0d9b9eb0
    # Line 2682
    swc1	$f0,-8($a6)
.L0d9b9ed4:
    # Line 2685
    jr	$ra
    nop
.end __glSpanExpandLuminanceNS

# Function: __glSpanExpandLuminanceAlphaNS
# Declared: Line 2691 (Source lines: 2693-2707)
# Address: 0x0d9b9ee0 - 0x0d9b9f30 (Size: 80 bytes, Frame: 0)
.globl __glSpanExpandLuminanceAlphaNS
.ent __glSpanExpandLuminanceAlphaNS
__glSpanExpandLuminanceAlphaNS:
    # Line 2695
    lw	$a6,180($a1)
    # Line 2693
    move	$a4,$a2
    # Line 2697
    blez	$a6,.L0d9b9f28
    # Line 2693
    move	$a5,$a3
    # Line 2697
    move	$a1,$zero
    nop
    nop
    nop
.L0d9b9f00:
    # Line 2701
    lwc1	$f1,0($a4)
    # Line 2702
    swc1	$f1,0($a5)
    # Line 2703
    swc1	$f1,4($a5)
    # Line 2704
    swc1	$f1,8($a5)
    # Line 2700
    addiu	$a1,$a1,1
    # Line 2705
    lwc1	$f0,4($a4)
    addiu	$a5,$a5,16
    addiu	$a4,$a4,8
    # Line 2700
    bne	$a6,$a1,.L0d9b9f00
    # Line 2705
    swc1	$f0,-4($a5)
.L0d9b9f28:
    # Line 2707
    jr	$ra
    nop
.end __glSpanExpandLuminanceAlphaNS

# Function: __glSpanExpandRedAlphaNS
# Declared: Line 2713 (Source lines: 2715-2732)
# Address: 0x0d9b9f30 - 0x0d9b9f80 (Size: 80 bytes, Frame: 0)
.globl __glSpanExpandRedAlphaNS
.ent __glSpanExpandRedAlphaNS
__glSpanExpandRedAlphaNS:
    # Line 2717
    lw	$a6,180($a1)
    # Line 2715
    move	$a4,$a2
    # Line 2719
    blez	$a6,.L0d9b9f78
    # Line 2715
    move	$a5,$a3
    # Line 2719
    mtc1	$zero,$f4
    move	$a1,$zero
    nop
    nop
.L0d9b9f50:
    # Line 2727
    lwc1	$f1,0($a4)
    # Line 2729
    swc1	$f4,8($a5)
    # Line 2728
    swc1	$f4,4($a5)
    # Line 2727
    swc1	$f1,0($a5)
    # Line 2725
    addiu	$a1,$a1,1
    # Line 2730
    lwc1	$f0,4($a4)
    addiu	$a5,$a5,16
    addiu	$a4,$a4,8
    # Line 2725
    bne	$a6,$a1,.L0d9b9f50
    # Line 2730
    swc1	$f0,-4($a5)
.L0d9b9f78:
    # Line 2732
    jr	$ra
    nop
.end __glSpanExpandRedAlphaNS

# Function: __glSpanExpandIntensityNS
# Declared: Line 2739 (Source lines: 2741-2755)
# Address: 0x0d9b9f80 - 0x0d9b9fcc (Size: 76 bytes, Frame: 0)
.globl __glSpanExpandIntensityNS
.ent __glSpanExpandIntensityNS
__glSpanExpandIntensityNS:
    # Line 2743
    lw	$a6,180($a1)
    # Line 2741
    move	$a4,$a2
    # Line 2745
    blez	$a6,.L0d9b9fc4
    # Line 2741
    move	$a5,$a3
    # Line 2745
    move	$a1,$zero
    nop
    nop
    nop
.L0d9b9fa0:
    # Line 2749
    lwc1	$f0,0($a4)
    # Line 2753
    addiu	$a5,$a5,16
    # Line 2750
    swc1	$f0,-16($a5)
    # Line 2748
    addiu	$a1,$a1,1
    # Line 2751
    swc1	$f0,-12($a5)
    # Line 2752
    swc1	$f0,-8($a5)
    # Line 2749
    addiu	$a4,$a4,4
    # Line 2748
    bne	$a6,$a1,.L0d9b9fa0
    # Line 2753
    swc1	$f0,-4($a5)
.L0d9b9fc4:
    # Line 2755
    jr	$ra
    nop
.end __glSpanExpandIntensityNS

# Function: __glSpanZeroFillAlpha
# Declared: Line 2762 (Source lines: 2764-2776)
# Address: 0x0d9b9fd0 - 0x0d9ba0b8 (Size: 232 bytes, Frame: 0)
.globl __glSpanZeroFillAlpha
.ent __glSpanZeroFillAlpha
__glSpanZeroFillAlpha:
    # Line 2766
    lw	$a4,180($a1)
    # Line 2764
    move	$a6,$a2
    # Line 2768
    blez	$a4,.L0d9ba0b0
    # Line 2764
    move	$a5,$a3
    # Line 2768
    mtc1	$zero,$f4
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9ba024
    move	$a1,$zero
.L0d9b9ff4:
    # Line 2771
    lwc1	$f2,0($a6)
    swc1	$f2,0($a5)
    # Line 2772
    lwc1	$f1,4($a6)
    swc1	$f1,4($a5)
    # Line 2774
    addiu	$a5,$a5,16
    addiu	$a2,$a2,-1
    # Line 2773
    lwc1	$f0,8($a6)
    # Line 2770
    addiu	$a1,$a1,1
    # Line 2774
    swc1	$f4,-4($a5)
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9b9ff4
    # Line 2773
    swc1	$f0,-8($a5)
.L0d9ba024:
    move	$a3,$a6
    beqz	$at,.L0d9ba0b0
    move	$a2,$a5
.L0d9ba030:
    # Line 2771
    lwc1	$f15,0($a3)
    swc1	$f15,0($a2)
    # Line 2772
    lwc1	$f14,4($a3)
    swc1	$f14,4($a2)
    # Line 2773
    lwc1	$f13,8($a3)
    # Line 2774
    swc1	$f4,12($a2)
    # Line 2773
    swc1	$f13,8($a2)
    # Line 2771
    lwc1	$f12,16($a3)
    swc1	$f12,16($a2)
    # Line 2772
    lwc1	$f11,20($a3)
    swc1	$f11,20($a2)
    # Line 2773
    lwc1	$f10,24($a3)
    # Line 2774
    swc1	$f4,28($a2)
    # Line 2773
    swc1	$f10,24($a2)
    # Line 2771
    lwc1	$f9,32($a3)
    swc1	$f9,32($a2)
    # Line 2772
    lwc1	$f8,36($a3)
    swc1	$f8,36($a2)
    # Line 2773
    lwc1	$f7,40($a3)
    # Line 2774
    swc1	$f4,44($a2)
    # Line 2773
    swc1	$f7,40($a2)
    # Line 2771
    lwc1	$f6,48($a3)
    swc1	$f6,48($a2)
    # Line 2772
    lwc1	$f5,52($a3)
    swc1	$f5,52($a2)
    # Line 2774
    addiu	$a2,$a2,64
    # Line 2770
    addiu	$a1,$a1,4
    # Line 2773
    lwc1	$f3,56($a3)
    # Line 2774
    swc1	$f4,-4($a2)
    addiu	$a3,$a3,64
    # Line 2770
    bne	$a4,$a1,.L0d9ba030
    # Line 2773
    swc1	$f3,-8($a2)
.L0d9ba0b0:
    # Line 2776
    jr	$ra
    nop
.end __glSpanZeroFillAlpha

# Function: __glSpanScaleRGBA
# Declared: Line 2783 (Source lines: 2785-2809)
# Address: 0x0d9ba0c0 - 0x0d9ba218 (Size: 344 bytes, Frame: 0)
.globl __glSpanScaleRGBA
.ent __glSpanScaleRGBA
__glSpanScaleRGBA:
    # Line 2798
    lwc1	$f6,30792($a0)
    # Line 2791
    lw	$a5,180($a1)
    # Line 2797
    lwc1	$f7,30760($a0)
    # Line 2796
    lwc1	$f4,30756($a0)
    # Line 2785
    move	$a7,$a3
    move	$a6,$a2
    # Line 2798
    blez	$a5,.L0d9ba210
    # Line 2795
    lwc1	$f5,30752($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9ba134
    # Line 2798
    move	$a1,$zero
.L0d9ba0f0:
    # Line 2802
    lwc1	$f3,0($a6)
    # Line 2801
    lwc1	$f2,4($a6)
    # Line 2802
    mul.s	$f3,$f3,$f5
    swc1	$f3,0($a7)
    # Line 2801
    mul.s	$f2,$f2,$f4
    # Line 2803
    swc1	$f2,4($a7)
    # Line 2804
    lwc1	$f1,8($a6)
    # Line 2805
    lwc1	$f0,12($a6)
    # Line 2807
    addiu	$a7,$a7,16
    addiu	$a2,$a2,-1
    # Line 2804
    mul.s	$f1,$f1,$f7
    # Line 2799
    addiu	$a1,$a1,1
    # Line 2805
    mul.s	$f0,$f0,$f6
    # Line 2806
    swc1	$f1,-8($a7)
    # Line 2805
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba0f0
    # Line 2807
    swc1	$f0,-4($a7)
.L0d9ba134:
    move	$a2,$a6
    beqz	$at,.L0d9ba210
    move	$a3,$a7
.L0d9ba140:
    # Line 2802
    lwc1	$f27,0($a2)
    # Line 2801
    lwc1	$f25,4($a2)
    # Line 2802
    mul.s	$f27,$f27,$f5
    swc1	$f27,0($a3)
    # Line 2801
    mul.s	$f25,$f25,$f4
    # Line 2803
    swc1	$f25,4($a3)
    # Line 2804
    lwc1	$f23,8($a2)
    # Line 2805
    lwc1	$f21,12($a2)
    # Line 2804
    mul.s	$f23,$f23,$f7
    # Line 2806
    swc1	$f23,8($a3)
    # Line 2805
    mul.s	$f21,$f21,$f6
    # Line 2807
    swc1	$f21,12($a3)
    # Line 2802
    lwc1	$f19,16($a2)
    # Line 2801
    lwc1	$f18,20($a2)
    # Line 2802
    mul.s	$f19,$f19,$f5
    swc1	$f19,16($a3)
    # Line 2801
    mul.s	$f18,$f18,$f4
    # Line 2803
    swc1	$f18,20($a3)
    # Line 2804
    lwc1	$f17,24($a2)
    # Line 2805
    lwc1	$f16,28($a2)
    # Line 2804
    mul.s	$f17,$f17,$f7
    # Line 2806
    swc1	$f17,24($a3)
    # Line 2805
    mul.s	$f16,$f16,$f6
    # Line 2807
    swc1	$f16,28($a3)
    # Line 2802
    lwc1	$f15,32($a2)
    # Line 2801
    lwc1	$f14,36($a2)
    # Line 2802
    mul.s	$f15,$f15,$f5
    swc1	$f15,32($a3)
    # Line 2801
    mul.s	$f14,$f14,$f4
    # Line 2803
    swc1	$f14,36($a3)
    # Line 2804
    lwc1	$f13,40($a2)
    # Line 2805
    lwc1	$f12,44($a2)
    # Line 2804
    mul.s	$f13,$f13,$f7
    # Line 2806
    swc1	$f13,40($a3)
    # Line 2805
    mul.s	$f12,$f12,$f6
    # Line 2807
    swc1	$f12,44($a3)
    # Line 2802
    lwc1	$f11,48($a2)
    # Line 2801
    lwc1	$f10,52($a2)
    # Line 2802
    mul.s	$f11,$f11,$f5
    swc1	$f11,48($a3)
    # Line 2801
    mul.s	$f10,$f10,$f4
    # Line 2803
    swc1	$f10,52($a3)
    # Line 2804
    lwc1	$f9,56($a2)
    # Line 2805
    lwc1	$f8,60($a2)
    # Line 2807
    addiu	$a3,$a3,64
    # Line 2799
    addiu	$a1,$a1,4
    # Line 2804
    mul.s	$f9,$f9,$f7
    # Line 2805
    mul.s	$f8,$f8,$f6
    # Line 2806
    swc1	$f9,-8($a3)
    # Line 2805
    addiu	$a2,$a2,64
    # Line 2799
    bne	$a5,$a1,.L0d9ba140
    # Line 2807
    swc1	$f8,-4($a3)
.L0d9ba210:
    # Line 2809
    jr	$ra
    nop
.end __glSpanScaleRGBA

# Function: __glSpanScaleABGR
# Declared: Line 2816 (Source lines: 2818-2842)
# Address: 0x0d9ba220 - 0x0d9ba378 (Size: 344 bytes, Frame: 0)
.globl __glSpanScaleABGR
.ent __glSpanScaleABGR
__glSpanScaleABGR:
    # Line 2831
    lwc1	$f6,30792($a0)
    # Line 2824
    lw	$a5,180($a1)
    # Line 2830
    lwc1	$f7,30760($a0)
    # Line 2829
    lwc1	$f4,30756($a0)
    # Line 2818
    move	$a7,$a3
    move	$a6,$a2
    # Line 2831
    blez	$a5,.L0d9ba370
    # Line 2828
    lwc1	$f5,30752($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9ba294
    # Line 2831
    move	$a1,$zero
.L0d9ba250:
    # Line 2837
    lwc1	$f3,12($a6)
    # Line 2835
    lwc1	$f2,8($a6)
    # Line 2834
    lwc1	$f1,4($a6)
    # Line 2840
    addiu	$a7,$a7,16
    # Line 2837
    mul.s	$f3,$f3,$f5
    # Line 2833
    lwc1	$f0,0($a6)
    # Line 2837
    swc1	$f3,-16($a7)
    # Line 2835
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    # Line 2838
    swc1	$f2,-12($a7)
    # Line 2834
    mul.s	$f1,$f1,$f7
    # Line 2832
    addiu	$a1,$a1,1
    # Line 2833
    mul.s	$f0,$f0,$f6
    # Line 2839
    swc1	$f1,-8($a7)
    # Line 2836
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba250
    # Line 2840
    swc1	$f0,-4($a7)
.L0d9ba294:
    move	$a2,$a6
    beqz	$at,.L0d9ba370
    move	$a3,$a7
.L0d9ba2a0:
    # Line 2837
    lwc1	$f27,12($a2)
    # Line 2835
    lwc1	$f25,8($a2)
    # Line 2834
    lwc1	$f23,4($a2)
    # Line 2837
    mul.s	$f27,$f27,$f5
    # Line 2833
    lwc1	$f21,0($a2)
    # Line 2837
    swc1	$f27,0($a3)
    # Line 2835
    mul.s	$f25,$f25,$f4
    # Line 2838
    swc1	$f25,4($a3)
    # Line 2834
    mul.s	$f23,$f23,$f7
    # Line 2839
    swc1	$f23,8($a3)
    # Line 2833
    mul.s	$f21,$f21,$f6
    # Line 2840
    swc1	$f21,12($a3)
    # Line 2837
    lwc1	$f19,28($a2)
    # Line 2835
    lwc1	$f18,24($a2)
    # Line 2834
    lwc1	$f17,20($a2)
    # Line 2837
    mul.s	$f19,$f19,$f5
    # Line 2833
    lwc1	$f16,16($a2)
    # Line 2837
    swc1	$f19,16($a3)
    # Line 2835
    mul.s	$f18,$f18,$f4
    # Line 2838
    swc1	$f18,20($a3)
    # Line 2834
    mul.s	$f17,$f17,$f7
    # Line 2839
    swc1	$f17,24($a3)
    # Line 2833
    mul.s	$f16,$f16,$f6
    # Line 2840
    swc1	$f16,28($a3)
    # Line 2837
    lwc1	$f15,44($a2)
    # Line 2835
    lwc1	$f14,40($a2)
    # Line 2834
    lwc1	$f13,36($a2)
    # Line 2837
    mul.s	$f15,$f15,$f5
    # Line 2833
    lwc1	$f12,32($a2)
    # Line 2837
    swc1	$f15,32($a3)
    # Line 2835
    mul.s	$f14,$f14,$f4
    # Line 2838
    swc1	$f14,36($a3)
    # Line 2834
    mul.s	$f13,$f13,$f7
    # Line 2839
    swc1	$f13,40($a3)
    # Line 2833
    mul.s	$f12,$f12,$f6
    # Line 2840
    swc1	$f12,44($a3)
    # Line 2837
    lwc1	$f11,60($a2)
    # Line 2835
    lwc1	$f10,56($a2)
    # Line 2834
    lwc1	$f9,52($a2)
    # Line 2840
    addiu	$a3,$a3,64
    # Line 2837
    mul.s	$f11,$f11,$f5
    # Line 2833
    lwc1	$f8,48($a2)
    # Line 2837
    swc1	$f11,-16($a3)
    # Line 2835
    mul.s	$f10,$f10,$f4
    # Line 2832
    addiu	$a1,$a1,4
    # Line 2838
    swc1	$f10,-12($a3)
    # Line 2834
    mul.s	$f9,$f9,$f7
    # Line 2833
    mul.s	$f8,$f8,$f6
    # Line 2839
    swc1	$f9,-8($a3)
    # Line 2836
    addiu	$a2,$a2,64
    # Line 2832
    bne	$a5,$a1,.L0d9ba2a0
    # Line 2840
    swc1	$f8,-4($a3)
.L0d9ba370:
    # Line 2842
    jr	$ra
    nop
.end __glSpanScaleABGR

# Function: __glSpanScaleBGRA
# Declared: Line 2851 (Source lines: 2853-2877)
# Address: 0x0d9ba380 - 0x0d9ba4d8 (Size: 344 bytes, Frame: 0)
.globl __glSpanScaleBGRA
.ent __glSpanScaleBGRA
__glSpanScaleBGRA:
    # Line 2866
    lwc1	$f6,30792($a0)
    # Line 2859
    lw	$a5,180($a1)
    # Line 2865
    lwc1	$f7,30760($a0)
    # Line 2864
    lwc1	$f4,30756($a0)
    # Line 2853
    move	$a7,$a3
    move	$a6,$a2
    # Line 2866
    blez	$a5,.L0d9ba4d0
    # Line 2863
    lwc1	$f5,30752($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9ba3f4
    # Line 2866
    move	$a1,$zero
.L0d9ba3b0:
    # Line 2870
    lwc1	$f3,8($a6)
    # Line 2869
    lwc1	$f2,4($a6)
    # Line 2868
    lwc1	$f1,0($a6)
    # Line 2875
    addiu	$a7,$a7,16
    # Line 2870
    mul.s	$f3,$f3,$f5
    # Line 2871
    lwc1	$f0,12($a6)
    # Line 2872
    swc1	$f3,-16($a7)
    # Line 2869
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    # Line 2873
    swc1	$f2,-12($a7)
    # Line 2868
    mul.s	$f1,$f1,$f7
    # Line 2867
    addiu	$a1,$a1,1
    # Line 2871
    mul.s	$f0,$f0,$f6
    # Line 2874
    swc1	$f1,-8($a7)
    # Line 2871
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba3b0
    # Line 2875
    swc1	$f0,-4($a7)
.L0d9ba3f4:
    move	$a2,$a6
    beqz	$at,.L0d9ba4d0
    move	$a3,$a7
.L0d9ba400:
    # Line 2870
    lwc1	$f27,8($a2)
    # Line 2869
    lwc1	$f25,4($a2)
    # Line 2868
    lwc1	$f23,0($a2)
    # Line 2870
    mul.s	$f27,$f27,$f5
    # Line 2871
    lwc1	$f21,12($a2)
    # Line 2872
    swc1	$f27,0($a3)
    # Line 2869
    mul.s	$f25,$f25,$f4
    # Line 2873
    swc1	$f25,4($a3)
    # Line 2868
    mul.s	$f23,$f23,$f7
    # Line 2874
    swc1	$f23,8($a3)
    # Line 2871
    mul.s	$f21,$f21,$f6
    # Line 2875
    swc1	$f21,12($a3)
    # Line 2870
    lwc1	$f19,24($a2)
    # Line 2869
    lwc1	$f18,20($a2)
    # Line 2868
    lwc1	$f17,16($a2)
    # Line 2870
    mul.s	$f19,$f19,$f5
    # Line 2871
    lwc1	$f16,28($a2)
    # Line 2872
    swc1	$f19,16($a3)
    # Line 2869
    mul.s	$f18,$f18,$f4
    # Line 2873
    swc1	$f18,20($a3)
    # Line 2868
    mul.s	$f17,$f17,$f7
    # Line 2874
    swc1	$f17,24($a3)
    # Line 2871
    mul.s	$f16,$f16,$f6
    # Line 2875
    swc1	$f16,28($a3)
    # Line 2870
    lwc1	$f15,40($a2)
    # Line 2869
    lwc1	$f14,36($a2)
    # Line 2868
    lwc1	$f13,32($a2)
    # Line 2870
    mul.s	$f15,$f15,$f5
    # Line 2871
    lwc1	$f12,44($a2)
    # Line 2872
    swc1	$f15,32($a3)
    # Line 2869
    mul.s	$f14,$f14,$f4
    # Line 2873
    swc1	$f14,36($a3)
    # Line 2868
    mul.s	$f13,$f13,$f7
    # Line 2874
    swc1	$f13,40($a3)
    # Line 2871
    mul.s	$f12,$f12,$f6
    # Line 2875
    swc1	$f12,44($a3)
    # Line 2870
    lwc1	$f11,56($a2)
    # Line 2869
    lwc1	$f10,52($a2)
    # Line 2868
    lwc1	$f9,48($a2)
    # Line 2875
    addiu	$a3,$a3,64
    # Line 2870
    mul.s	$f11,$f11,$f5
    # Line 2871
    lwc1	$f8,60($a2)
    # Line 2872
    swc1	$f11,-16($a3)
    # Line 2869
    mul.s	$f10,$f10,$f4
    # Line 2867
    addiu	$a1,$a1,4
    # Line 2873
    swc1	$f10,-12($a3)
    # Line 2868
    mul.s	$f9,$f9,$f7
    # Line 2871
    mul.s	$f8,$f8,$f6
    # Line 2874
    swc1	$f9,-8($a3)
    # Line 2871
    addiu	$a2,$a2,64
    # Line 2867
    bne	$a5,$a1,.L0d9ba400
    # Line 2875
    swc1	$f8,-4($a3)
.L0d9ba4d0:
    # Line 2877
    jr	$ra
    nop
.end __glSpanScaleBGRA

# Function: __glSpanPreReorderABGR
# Declared: Line 2884 (Source lines: 2886-2903)
# Address: 0x0d9ba4e0 - 0x0d9ba5d8 (Size: 248 bytes, Frame: 0)
.globl __glSpanPreReorderABGR
.ent __glSpanPreReorderABGR
__glSpanPreReorderABGR:
    # Line 2888
    lw	$a4,180($a1)
    # Line 2886
    move	$a6,$a2
    # Line 2890
    blez	$a4,.L0d9ba5d0
    # Line 2886
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9ba534
    # Line 2890
    move	$a1,$zero
.L0d9ba500:
    # Line 2894
    lwc1	$f0,0($a6)
    # Line 2895
    lwc1	$f1,4($a6)
    # Line 2898
    lwc1	$f3,12($a6)
    # Line 2901
    addiu	$a5,$a5,16
    # Line 2896
    lwc1	$f2,8($a6)
    # Line 2898
    swc1	$f3,-16($a5)
    addiu	$a2,$a2,-1
    # Line 2899
    swc1	$f2,-12($a5)
    # Line 2893
    addiu	$a1,$a1,1
    # Line 2900
    swc1	$f1,-8($a5)
    # Line 2897
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba500
    # Line 2901
    swc1	$f0,-4($a5)
.L0d9ba534:
    move	$a2,$a6
    beqz	$at,.L0d9ba5d0
    move	$a3,$a5
.L0d9ba540:
    # Line 2894
    lwc1	$f16,0($a2)
    # Line 2895
    lwc1	$f17,4($a2)
    # Line 2898
    lwc1	$f19,12($a2)
    # Line 2896
    lwc1	$f18,8($a2)
    # Line 2898
    swc1	$f19,0($a3)
    # Line 2899
    swc1	$f18,4($a3)
    # Line 2900
    swc1	$f17,8($a3)
    # Line 2901
    swc1	$f16,12($a3)
    # Line 2894
    lwc1	$f12,16($a2)
    # Line 2895
    lwc1	$f13,20($a2)
    # Line 2898
    lwc1	$f15,28($a2)
    # Line 2896
    lwc1	$f14,24($a2)
    # Line 2898
    swc1	$f15,16($a3)
    # Line 2899
    swc1	$f14,20($a3)
    # Line 2900
    swc1	$f13,24($a3)
    # Line 2901
    swc1	$f12,28($a3)
    # Line 2894
    lwc1	$f8,32($a2)
    # Line 2895
    lwc1	$f9,36($a2)
    # Line 2898
    lwc1	$f11,44($a2)
    # Line 2896
    lwc1	$f10,40($a2)
    # Line 2898
    swc1	$f11,32($a3)
    # Line 2899
    swc1	$f10,36($a3)
    # Line 2900
    swc1	$f9,40($a3)
    # Line 2901
    swc1	$f8,44($a3)
    # Line 2894
    lwc1	$f4,48($a2)
    # Line 2895
    lwc1	$f5,52($a2)
    # Line 2898
    lwc1	$f7,60($a2)
    # Line 2901
    addiu	$a3,$a3,64
    # Line 2896
    lwc1	$f6,56($a2)
    # Line 2898
    swc1	$f7,-16($a3)
    # Line 2893
    addiu	$a1,$a1,4
    # Line 2899
    swc1	$f6,-12($a3)
    # Line 2900
    swc1	$f5,-8($a3)
    # Line 2897
    addiu	$a2,$a2,64
    # Line 2893
    bne	$a4,$a1,.L0d9ba540
    # Line 2901
    swc1	$f4,-4($a3)
.L0d9ba5d0:
    # Line 2903
    jr	$ra
    nop
.end __glSpanPreReorderABGR

# Function: __glSpanPreReorderBGRA
# Declared: Line 2911 (Source lines: 2913-2930)
# Address: 0x0d9ba5e0 - 0x0d9ba6d8 (Size: 248 bytes, Frame: 0)
.globl __glSpanPreReorderBGRA
.ent __glSpanPreReorderBGRA
__glSpanPreReorderBGRA:
    # Line 2915
    lw	$a4,180($a1)
    # Line 2913
    move	$a6,$a2
    # Line 2917
    blez	$a4,.L0d9ba6d0
    # Line 2913
    move	$a5,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9ba634
    # Line 2917
    move	$a1,$zero
.L0d9ba600:
    # Line 2921
    lwc1	$f1,0($a6)
    # Line 2922
    lwc1	$f2,4($a6)
    # Line 2923
    lwc1	$f3,8($a6)
    # Line 2928
    addiu	$a5,$a5,16
    # Line 2924
    lwc1	$f0,12($a6)
    # Line 2925
    swc1	$f3,-16($a5)
    addiu	$a2,$a2,-1
    # Line 2926
    swc1	$f2,-12($a5)
    # Line 2920
    addiu	$a1,$a1,1
    # Line 2927
    swc1	$f1,-8($a5)
    # Line 2924
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba600
    # Line 2928
    swc1	$f0,-4($a5)
.L0d9ba634:
    move	$a2,$a6
    beqz	$at,.L0d9ba6d0
    move	$a3,$a5
.L0d9ba640:
    # Line 2921
    lwc1	$f17,0($a2)
    # Line 2922
    lwc1	$f18,4($a2)
    # Line 2923
    lwc1	$f19,8($a2)
    # Line 2924
    lwc1	$f16,12($a2)
    # Line 2925
    swc1	$f19,0($a3)
    # Line 2926
    swc1	$f18,4($a3)
    # Line 2927
    swc1	$f17,8($a3)
    # Line 2928
    swc1	$f16,12($a3)
    # Line 2921
    lwc1	$f13,16($a2)
    # Line 2922
    lwc1	$f14,20($a2)
    # Line 2923
    lwc1	$f15,24($a2)
    # Line 2924
    lwc1	$f12,28($a2)
    # Line 2925
    swc1	$f15,16($a3)
    # Line 2926
    swc1	$f14,20($a3)
    # Line 2927
    swc1	$f13,24($a3)
    # Line 2928
    swc1	$f12,28($a3)
    # Line 2921
    lwc1	$f9,32($a2)
    # Line 2922
    lwc1	$f10,36($a2)
    # Line 2923
    lwc1	$f11,40($a2)
    # Line 2924
    lwc1	$f8,44($a2)
    # Line 2925
    swc1	$f11,32($a3)
    # Line 2926
    swc1	$f10,36($a3)
    # Line 2927
    swc1	$f9,40($a3)
    # Line 2928
    swc1	$f8,44($a3)
    # Line 2921
    lwc1	$f5,48($a2)
    # Line 2922
    lwc1	$f6,52($a2)
    # Line 2923
    lwc1	$f7,56($a2)
    # Line 2928
    addiu	$a3,$a3,64
    # Line 2924
    lwc1	$f4,60($a2)
    # Line 2925
    swc1	$f7,-16($a3)
    # Line 2920
    addiu	$a1,$a1,4
    # Line 2926
    swc1	$f6,-12($a3)
    # Line 2927
    swc1	$f5,-8($a3)
    # Line 2924
    addiu	$a2,$a2,64
    # Line 2920
    bne	$a4,$a1,.L0d9ba640
    # Line 2928
    swc1	$f4,-4($a3)
.L0d9ba6d0:
    # Line 2930
    jr	$ra
    nop
.end __glSpanPreReorderBGRA

# Function: __glSpanPreUnscaleRGBA
# Declared: Line 2937 (Source lines: 2939-2963)
# Address: 0x0d9ba6e0 - 0x0d9ba838 (Size: 344 bytes, Frame: 0)
.globl __glSpanPreUnscaleRGBA
.ent __glSpanPreUnscaleRGBA
__glSpanPreUnscaleRGBA:
    # Line 2952
    lwc1	$f6,30812($a0)
    # Line 2945
    lw	$a5,180($a1)
    # Line 2951
    lwc1	$f7,30808($a0)
    # Line 2950
    lwc1	$f4,30804($a0)
    # Line 2939
    move	$a7,$a3
    move	$a6,$a2
    # Line 2952
    blez	$a5,.L0d9ba830
    # Line 2949
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9ba754
    # Line 2952
    move	$a1,$zero
.L0d9ba710:
    # Line 2956
    lwc1	$f3,0($a6)
    # Line 2955
    lwc1	$f2,4($a6)
    # Line 2956
    mul.s	$f3,$f3,$f5
    swc1	$f3,0($a7)
    # Line 2955
    mul.s	$f2,$f2,$f4
    # Line 2957
    swc1	$f2,4($a7)
    # Line 2958
    lwc1	$f1,8($a6)
    # Line 2959
    lwc1	$f0,12($a6)
    # Line 2961
    addiu	$a7,$a7,16
    addiu	$a2,$a2,-1
    # Line 2958
    mul.s	$f1,$f1,$f7
    # Line 2953
    addiu	$a1,$a1,1
    # Line 2959
    mul.s	$f0,$f0,$f6
    # Line 2960
    swc1	$f1,-8($a7)
    # Line 2959
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba710
    # Line 2961
    swc1	$f0,-4($a7)
.L0d9ba754:
    move	$a2,$a6
    beqz	$at,.L0d9ba830
    move	$a3,$a7
.L0d9ba760:
    # Line 2956
    lwc1	$f27,0($a2)
    # Line 2955
    lwc1	$f25,4($a2)
    # Line 2956
    mul.s	$f27,$f27,$f5
    swc1	$f27,0($a3)
    # Line 2955
    mul.s	$f25,$f25,$f4
    # Line 2957
    swc1	$f25,4($a3)
    # Line 2958
    lwc1	$f23,8($a2)
    # Line 2959
    lwc1	$f21,12($a2)
    # Line 2958
    mul.s	$f23,$f23,$f7
    # Line 2960
    swc1	$f23,8($a3)
    # Line 2959
    mul.s	$f21,$f21,$f6
    # Line 2961
    swc1	$f21,12($a3)
    # Line 2956
    lwc1	$f19,16($a2)
    # Line 2955
    lwc1	$f18,20($a2)
    # Line 2956
    mul.s	$f19,$f19,$f5
    swc1	$f19,16($a3)
    # Line 2955
    mul.s	$f18,$f18,$f4
    # Line 2957
    swc1	$f18,20($a3)
    # Line 2958
    lwc1	$f17,24($a2)
    # Line 2959
    lwc1	$f16,28($a2)
    # Line 2958
    mul.s	$f17,$f17,$f7
    # Line 2960
    swc1	$f17,24($a3)
    # Line 2959
    mul.s	$f16,$f16,$f6
    # Line 2961
    swc1	$f16,28($a3)
    # Line 2956
    lwc1	$f15,32($a2)
    # Line 2955
    lwc1	$f14,36($a2)
    # Line 2956
    mul.s	$f15,$f15,$f5
    swc1	$f15,32($a3)
    # Line 2955
    mul.s	$f14,$f14,$f4
    # Line 2957
    swc1	$f14,36($a3)
    # Line 2958
    lwc1	$f13,40($a2)
    # Line 2959
    lwc1	$f12,44($a2)
    # Line 2958
    mul.s	$f13,$f13,$f7
    # Line 2960
    swc1	$f13,40($a3)
    # Line 2959
    mul.s	$f12,$f12,$f6
    # Line 2961
    swc1	$f12,44($a3)
    # Line 2956
    lwc1	$f11,48($a2)
    # Line 2955
    lwc1	$f10,52($a2)
    # Line 2956
    mul.s	$f11,$f11,$f5
    swc1	$f11,48($a3)
    # Line 2955
    mul.s	$f10,$f10,$f4
    # Line 2957
    swc1	$f10,52($a3)
    # Line 2958
    lwc1	$f9,56($a2)
    # Line 2959
    lwc1	$f8,60($a2)
    # Line 2961
    addiu	$a3,$a3,64
    # Line 2953
    addiu	$a1,$a1,4
    # Line 2958
    mul.s	$f9,$f9,$f7
    # Line 2959
    mul.s	$f8,$f8,$f6
    # Line 2960
    swc1	$f9,-8($a3)
    # Line 2959
    addiu	$a2,$a2,64
    # Line 2953
    bne	$a5,$a1,.L0d9ba760
    # Line 2961
    swc1	$f8,-4($a3)
.L0d9ba830:
    # Line 2963
    jr	$ra
    nop
.end __glSpanPreUnscaleRGBA

# Function: __glSpanPostUnscaleRGBA
# Declared: Line 2971 (Source lines: 2973-2997)
# Address: 0x0d9ba840 - 0x0d9ba998 (Size: 344 bytes, Frame: 0)
.globl __glSpanPostUnscaleRGBA
.ent __glSpanPostUnscaleRGBA
__glSpanPostUnscaleRGBA:
    # Line 2986
    lwc1	$f6,30812($a0)
    # Line 2979
    lw	$a5,184($a1)
    # Line 2985
    lwc1	$f7,30808($a0)
    # Line 2984
    lwc1	$f4,30804($a0)
    # Line 2973
    move	$a7,$a3
    move	$a6,$a2
    # Line 2986
    blez	$a5,.L0d9ba990
    # Line 2983
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9ba8b4
    # Line 2986
    move	$a1,$zero
.L0d9ba870:
    # Line 2990
    lwc1	$f3,0($a6)
    # Line 2989
    lwc1	$f2,4($a6)
    # Line 2990
    mul.s	$f3,$f3,$f5
    swc1	$f3,0($a7)
    # Line 2989
    mul.s	$f2,$f2,$f4
    # Line 2991
    swc1	$f2,4($a7)
    # Line 2992
    lwc1	$f1,8($a6)
    # Line 2993
    lwc1	$f0,12($a6)
    # Line 2995
    addiu	$a7,$a7,16
    addiu	$a2,$a2,-1
    # Line 2992
    mul.s	$f1,$f1,$f7
    # Line 2987
    addiu	$a1,$a1,1
    # Line 2993
    mul.s	$f0,$f0,$f6
    # Line 2994
    swc1	$f1,-8($a7)
    # Line 2993
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba870
    # Line 2995
    swc1	$f0,-4($a7)
.L0d9ba8b4:
    move	$a2,$a6
    beqz	$at,.L0d9ba990
    move	$a3,$a7
.L0d9ba8c0:
    # Line 2990
    lwc1	$f27,0($a2)
    # Line 2989
    lwc1	$f25,4($a2)
    # Line 2990
    mul.s	$f27,$f27,$f5
    swc1	$f27,0($a3)
    # Line 2989
    mul.s	$f25,$f25,$f4
    # Line 2991
    swc1	$f25,4($a3)
    # Line 2992
    lwc1	$f23,8($a2)
    # Line 2993
    lwc1	$f21,12($a2)
    # Line 2992
    mul.s	$f23,$f23,$f7
    # Line 2994
    swc1	$f23,8($a3)
    # Line 2993
    mul.s	$f21,$f21,$f6
    # Line 2995
    swc1	$f21,12($a3)
    # Line 2990
    lwc1	$f19,16($a2)
    # Line 2989
    lwc1	$f18,20($a2)
    # Line 2990
    mul.s	$f19,$f19,$f5
    swc1	$f19,16($a3)
    # Line 2989
    mul.s	$f18,$f18,$f4
    # Line 2991
    swc1	$f18,20($a3)
    # Line 2992
    lwc1	$f17,24($a2)
    # Line 2993
    lwc1	$f16,28($a2)
    # Line 2992
    mul.s	$f17,$f17,$f7
    # Line 2994
    swc1	$f17,24($a3)
    # Line 2993
    mul.s	$f16,$f16,$f6
    # Line 2995
    swc1	$f16,28($a3)
    # Line 2990
    lwc1	$f15,32($a2)
    # Line 2989
    lwc1	$f14,36($a2)
    # Line 2990
    mul.s	$f15,$f15,$f5
    swc1	$f15,32($a3)
    # Line 2989
    mul.s	$f14,$f14,$f4
    # Line 2991
    swc1	$f14,36($a3)
    # Line 2992
    lwc1	$f13,40($a2)
    # Line 2993
    lwc1	$f12,44($a2)
    # Line 2992
    mul.s	$f13,$f13,$f7
    # Line 2994
    swc1	$f13,40($a3)
    # Line 2993
    mul.s	$f12,$f12,$f6
    # Line 2995
    swc1	$f12,44($a3)
    # Line 2990
    lwc1	$f11,48($a2)
    # Line 2989
    lwc1	$f10,52($a2)
    # Line 2990
    mul.s	$f11,$f11,$f5
    swc1	$f11,48($a3)
    # Line 2989
    mul.s	$f10,$f10,$f4
    # Line 2991
    swc1	$f10,52($a3)
    # Line 2992
    lwc1	$f9,56($a2)
    # Line 2993
    lwc1	$f8,60($a2)
    # Line 2995
    addiu	$a3,$a3,64
    # Line 2987
    addiu	$a1,$a1,4
    # Line 2992
    mul.s	$f9,$f9,$f7
    # Line 2993
    mul.s	$f8,$f8,$f6
    # Line 2994
    swc1	$f9,-8($a3)
    # Line 2993
    addiu	$a2,$a2,64
    # Line 2987
    bne	$a5,$a1,.L0d9ba8c0
    # Line 2995
    swc1	$f8,-4($a3)
.L0d9ba990:
    # Line 2997
    jr	$ra
    nop
.end __glSpanPostUnscaleRGBA

# Function: __glSpanUnscaleABGR
# Declared: Line 3004 (Source lines: 3006-3030)
# Address: 0x0d9ba9a0 - 0x0d9baaf8 (Size: 344 bytes, Frame: 0)
.globl __glSpanUnscaleABGR
.ent __glSpanUnscaleABGR
__glSpanUnscaleABGR:
    # Line 3019
    lwc1	$f6,30812($a0)
    # Line 3012
    lw	$a5,184($a1)
    # Line 3018
    lwc1	$f7,30808($a0)
    # Line 3017
    lwc1	$f4,30804($a0)
    # Line 3006
    move	$a7,$a3
    move	$a6,$a2
    # Line 3019
    blez	$a5,.L0d9baaf0
    # Line 3016
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9baa14
    # Line 3019
    move	$a1,$zero
.L0d9ba9d0:
    # Line 3025
    lwc1	$f3,12($a6)
    # Line 3023
    lwc1	$f2,8($a6)
    # Line 3022
    lwc1	$f1,4($a6)
    # Line 3028
    addiu	$a7,$a7,16
    # Line 3025
    mul.s	$f3,$f3,$f6
    # Line 3021
    lwc1	$f0,0($a6)
    # Line 3025
    swc1	$f3,-16($a7)
    # Line 3023
    mul.s	$f2,$f2,$f7
    addiu	$a2,$a2,-1
    # Line 3026
    swc1	$f2,-12($a7)
    # Line 3022
    mul.s	$f1,$f1,$f4
    # Line 3020
    addiu	$a1,$a1,1
    # Line 3021
    mul.s	$f0,$f0,$f5
    # Line 3027
    swc1	$f1,-8($a7)
    # Line 3024
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9ba9d0
    # Line 3028
    swc1	$f0,-4($a7)
.L0d9baa14:
    move	$a2,$a6
    beqz	$at,.L0d9baaf0
    move	$a3,$a7
.L0d9baa20:
    # Line 3025
    lwc1	$f27,12($a2)
    # Line 3023
    lwc1	$f25,8($a2)
    # Line 3022
    lwc1	$f23,4($a2)
    # Line 3025
    mul.s	$f27,$f27,$f6
    # Line 3021
    lwc1	$f21,0($a2)
    # Line 3025
    swc1	$f27,0($a3)
    # Line 3023
    mul.s	$f25,$f25,$f7
    # Line 3026
    swc1	$f25,4($a3)
    # Line 3022
    mul.s	$f23,$f23,$f4
    # Line 3027
    swc1	$f23,8($a3)
    # Line 3021
    mul.s	$f21,$f21,$f5
    # Line 3028
    swc1	$f21,12($a3)
    # Line 3025
    lwc1	$f19,28($a2)
    # Line 3023
    lwc1	$f18,24($a2)
    # Line 3022
    lwc1	$f17,20($a2)
    # Line 3025
    mul.s	$f19,$f19,$f6
    # Line 3021
    lwc1	$f16,16($a2)
    # Line 3025
    swc1	$f19,16($a3)
    # Line 3023
    mul.s	$f18,$f18,$f7
    # Line 3026
    swc1	$f18,20($a3)
    # Line 3022
    mul.s	$f17,$f17,$f4
    # Line 3027
    swc1	$f17,24($a3)
    # Line 3021
    mul.s	$f16,$f16,$f5
    # Line 3028
    swc1	$f16,28($a3)
    # Line 3025
    lwc1	$f15,44($a2)
    # Line 3023
    lwc1	$f14,40($a2)
    # Line 3022
    lwc1	$f13,36($a2)
    # Line 3025
    mul.s	$f15,$f15,$f6
    # Line 3021
    lwc1	$f12,32($a2)
    # Line 3025
    swc1	$f15,32($a3)
    # Line 3023
    mul.s	$f14,$f14,$f7
    # Line 3026
    swc1	$f14,36($a3)
    # Line 3022
    mul.s	$f13,$f13,$f4
    # Line 3027
    swc1	$f13,40($a3)
    # Line 3021
    mul.s	$f12,$f12,$f5
    # Line 3028
    swc1	$f12,44($a3)
    # Line 3025
    lwc1	$f11,60($a2)
    # Line 3023
    lwc1	$f10,56($a2)
    # Line 3022
    lwc1	$f9,52($a2)
    # Line 3028
    addiu	$a3,$a3,64
    # Line 3025
    mul.s	$f11,$f11,$f6
    # Line 3021
    lwc1	$f8,48($a2)
    # Line 3025
    swc1	$f11,-16($a3)
    # Line 3023
    mul.s	$f10,$f10,$f7
    # Line 3020
    addiu	$a1,$a1,4
    # Line 3026
    swc1	$f10,-12($a3)
    # Line 3022
    mul.s	$f9,$f9,$f4
    # Line 3021
    mul.s	$f8,$f8,$f5
    # Line 3027
    swc1	$f9,-8($a3)
    # Line 3024
    addiu	$a2,$a2,64
    # Line 3020
    bne	$a5,$a1,.L0d9baa20
    # Line 3028
    swc1	$f8,-4($a3)
.L0d9baaf0:
    # Line 3030
    jr	$ra
    nop
.end __glSpanUnscaleABGR

# Function: __glSpanUnscaleBGRA
# Declared: Line 3039 (Source lines: 3041-3065)
# Address: 0x0d9bab00 - 0x0d9bac58 (Size: 344 bytes, Frame: 0)
.globl __glSpanUnscaleBGRA
.ent __glSpanUnscaleBGRA
__glSpanUnscaleBGRA:
    # Line 3054
    lwc1	$f6,30812($a0)
    # Line 3047
    lw	$a5,184($a1)
    # Line 3053
    lwc1	$f7,30808($a0)
    # Line 3052
    lwc1	$f4,30804($a0)
    # Line 3041
    move	$a7,$a3
    move	$a6,$a2
    # Line 3054
    blez	$a5,.L0d9bac50
    # Line 3051
    lwc1	$f5,30800($a0)
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9bab74
    # Line 3054
    move	$a1,$zero
.L0d9bab30:
    # Line 3058
    lwc1	$f3,8($a6)
    # Line 3057
    lwc1	$f2,4($a6)
    # Line 3056
    lwc1	$f1,0($a6)
    # Line 3063
    addiu	$a7,$a7,16
    # Line 3058
    mul.s	$f3,$f3,$f7
    # Line 3059
    lwc1	$f0,12($a6)
    # Line 3060
    swc1	$f3,-16($a7)
    # Line 3057
    mul.s	$f2,$f2,$f4
    addiu	$a2,$a2,-1
    # Line 3061
    swc1	$f2,-12($a7)
    # Line 3056
    mul.s	$f1,$f1,$f5
    # Line 3055
    addiu	$a1,$a1,1
    # Line 3059
    mul.s	$f0,$f0,$f6
    # Line 3062
    swc1	$f1,-8($a7)
    # Line 3059
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9bab30
    # Line 3063
    swc1	$f0,-4($a7)
.L0d9bab74:
    move	$a2,$a6
    beqz	$at,.L0d9bac50
    move	$a3,$a7
.L0d9bab80:
    # Line 3058
    lwc1	$f27,8($a2)
    # Line 3057
    lwc1	$f25,4($a2)
    # Line 3056
    lwc1	$f23,0($a2)
    # Line 3058
    mul.s	$f27,$f27,$f7
    # Line 3059
    lwc1	$f21,12($a2)
    # Line 3060
    swc1	$f27,0($a3)
    # Line 3057
    mul.s	$f25,$f25,$f4
    # Line 3061
    swc1	$f25,4($a3)
    # Line 3056
    mul.s	$f23,$f23,$f5
    # Line 3062
    swc1	$f23,8($a3)
    # Line 3059
    mul.s	$f21,$f21,$f6
    # Line 3063
    swc1	$f21,12($a3)
    # Line 3058
    lwc1	$f19,24($a2)
    # Line 3057
    lwc1	$f18,20($a2)
    # Line 3056
    lwc1	$f17,16($a2)
    # Line 3058
    mul.s	$f19,$f19,$f7
    # Line 3059
    lwc1	$f16,28($a2)
    # Line 3060
    swc1	$f19,16($a3)
    # Line 3057
    mul.s	$f18,$f18,$f4
    # Line 3061
    swc1	$f18,20($a3)
    # Line 3056
    mul.s	$f17,$f17,$f5
    # Line 3062
    swc1	$f17,24($a3)
    # Line 3059
    mul.s	$f16,$f16,$f6
    # Line 3063
    swc1	$f16,28($a3)
    # Line 3058
    lwc1	$f15,40($a2)
    # Line 3057
    lwc1	$f14,36($a2)
    # Line 3056
    lwc1	$f13,32($a2)
    # Line 3058
    mul.s	$f15,$f15,$f7
    # Line 3059
    lwc1	$f12,44($a2)
    # Line 3060
    swc1	$f15,32($a3)
    # Line 3057
    mul.s	$f14,$f14,$f4
    # Line 3061
    swc1	$f14,36($a3)
    # Line 3056
    mul.s	$f13,$f13,$f5
    # Line 3062
    swc1	$f13,40($a3)
    # Line 3059
    mul.s	$f12,$f12,$f6
    # Line 3063
    swc1	$f12,44($a3)
    # Line 3058
    lwc1	$f11,56($a2)
    # Line 3057
    lwc1	$f10,52($a2)
    # Line 3056
    lwc1	$f9,48($a2)
    # Line 3063
    addiu	$a3,$a3,64
    # Line 3058
    mul.s	$f11,$f11,$f7
    # Line 3059
    lwc1	$f8,60($a2)
    # Line 3060
    swc1	$f11,-16($a3)
    # Line 3057
    mul.s	$f10,$f10,$f4
    # Line 3055
    addiu	$a1,$a1,4
    # Line 3061
    swc1	$f10,-12($a3)
    # Line 3056
    mul.s	$f9,$f9,$f5
    # Line 3059
    mul.s	$f8,$f8,$f6
    # Line 3062
    swc1	$f9,-8($a3)
    # Line 3059
    addiu	$a2,$a2,64
    # Line 3055
    bne	$a5,$a1,.L0d9bab80
    # Line 3063
    swc1	$f8,-4($a3)
.L0d9bac50:
    # Line 3065
    jr	$ra
    nop
.end __glSpanUnscaleBGRA

# Function: __glSpanGetMemRGBA
# Declared: Line 3076 (Source lines: 3078-3095)
# Address: 0x0d9bac60 - 0x0d9bad58 (Size: 248 bytes, Frame: 0)
.globl __glSpanGetMemRGBA
.ent __glSpanGetMemRGBA
__glSpanGetMemRGBA:
    # Line 3083
    lw	$a4,180($a1)
    # Line 3078
    move	$a5,$a2
    # Line 3086
    blez	$a4,.L0d9bad50
    # Line 3078
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9bacb4
    # Line 3086
    move	$a1,$zero
.L0d9bac80:
    # Line 3089
    lwc1	$f3,0($a5)
    swc1	$f3,0($a6)
    # Line 3090
    lwc1	$f2,4($a5)
    swc1	$f2,4($a6)
    # Line 3091
    lwc1	$f1,8($a5)
    swc1	$f1,8($a6)
    addiu	$a2,$a2,-1
    # Line 3092
    lwc1	$f0,12($a5)
    # Line 3088
    addiu	$a1,$a1,1
    # Line 3092
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9bac80
    swc1	$f0,-4($a6)
.L0d9bacb4:
    move	$a2,$a5
    beqz	$at,.L0d9bad50
    move	$a3,$a6
.L0d9bacc0:
    # Line 3089
    lwc1	$f19,0($a2)
    swc1	$f19,0($a3)
    # Line 3090
    lwc1	$f18,4($a2)
    swc1	$f18,4($a3)
    # Line 3091
    lwc1	$f17,8($a2)
    swc1	$f17,8($a3)
    # Line 3092
    lwc1	$f16,12($a2)
    swc1	$f16,12($a3)
    # Line 3089
    lwc1	$f15,16($a2)
    swc1	$f15,16($a3)
    # Line 3090
    lwc1	$f14,20($a2)
    swc1	$f14,20($a3)
    # Line 3091
    lwc1	$f13,24($a2)
    swc1	$f13,24($a3)
    # Line 3092
    lwc1	$f12,28($a2)
    swc1	$f12,28($a3)
    # Line 3089
    lwc1	$f11,32($a2)
    swc1	$f11,32($a3)
    # Line 3090
    lwc1	$f10,36($a2)
    swc1	$f10,36($a3)
    # Line 3091
    lwc1	$f9,40($a2)
    swc1	$f9,40($a3)
    # Line 3092
    lwc1	$f8,44($a2)
    swc1	$f8,44($a3)
    # Line 3089
    lwc1	$f7,48($a2)
    swc1	$f7,48($a3)
    # Line 3090
    lwc1	$f6,52($a2)
    swc1	$f6,52($a3)
    # Line 3091
    lwc1	$f5,56($a2)
    swc1	$f5,56($a3)
    # Line 3088
    addiu	$a1,$a1,4
    # Line 3092
    lwc1	$f4,60($a2)
    addiu	$a3,$a3,64
    addiu	$a2,$a2,64
    # Line 3088
    bne	$a4,$a1,.L0d9bacc0
    # Line 3092
    swc1	$f4,-4($a3)
.L0d9bad50:
    # Line 3095
    jr	$ra
    nop
.end __glSpanGetMemRGBA

# Function: __glSpanGetMemRGB
# Declared: Line 3101 (Source lines: 3103-3120)
# Address: 0x0d9bad60 - 0x0d9bae48 (Size: 232 bytes, Frame: 0)
.globl __glSpanGetMemRGB
.ent __glSpanGetMemRGB
__glSpanGetMemRGB:
    # Line 3108
    lw	$a4,180($a1)
    # Line 3103
    move	$a5,$a2
    # Line 3111
    blez	$a4,.L0d9bae40
    # Line 3103
    move	$a6,$a3
    # Line 3111
    mtc1	$zero,$f4
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9badb4
    move	$a1,$zero
.L0d9bad84:
    # Line 3114
    lwc1	$f2,0($a5)
    swc1	$f2,0($a6)
    # Line 3115
    lwc1	$f1,4($a5)
    swc1	$f1,4($a6)
    # Line 3117
    addiu	$a6,$a6,16
    addiu	$a2,$a2,-1
    # Line 3116
    lwc1	$f0,8($a5)
    # Line 3113
    addiu	$a1,$a1,1
    # Line 3117
    swc1	$f4,-4($a6)
    # Line 3116
    addiu	$a5,$a5,12
    bnez	$a2,.L0d9bad84
    swc1	$f0,-8($a6)
.L0d9badb4:
    move	$a2,$a5
    beqz	$at,.L0d9bae40
    move	$a3,$a6
.L0d9badc0:
    # Line 3114
    lwc1	$f15,0($a2)
    swc1	$f15,0($a3)
    # Line 3115
    lwc1	$f14,4($a2)
    swc1	$f14,4($a3)
    # Line 3116
    lwc1	$f13,8($a2)
    # Line 3117
    swc1	$f4,12($a3)
    # Line 3116
    swc1	$f13,8($a3)
    # Line 3114
    lwc1	$f12,12($a2)
    swc1	$f12,16($a3)
    # Line 3115
    lwc1	$f11,16($a2)
    swc1	$f11,20($a3)
    # Line 3116
    lwc1	$f10,20($a2)
    # Line 3117
    swc1	$f4,28($a3)
    # Line 3116
    swc1	$f10,24($a3)
    # Line 3114
    lwc1	$f9,24($a2)
    swc1	$f9,32($a3)
    # Line 3115
    lwc1	$f8,28($a2)
    swc1	$f8,36($a3)
    # Line 3116
    lwc1	$f7,32($a2)
    # Line 3117
    swc1	$f4,44($a3)
    # Line 3116
    swc1	$f7,40($a3)
    # Line 3114
    lwc1	$f6,36($a2)
    swc1	$f6,48($a3)
    # Line 3115
    lwc1	$f5,40($a2)
    swc1	$f5,52($a3)
    # Line 3117
    addiu	$a3,$a3,64
    # Line 3113
    addiu	$a1,$a1,4
    # Line 3116
    lwc1	$f3,44($a2)
    # Line 3117
    swc1	$f4,-4($a3)
    # Line 3116
    addiu	$a2,$a2,48
    # Line 3113
    bne	$a4,$a1,.L0d9badc0
    # Line 3116
    swc1	$f3,-8($a3)
.L0d9bae40:
    # Line 3120
    jr	$ra
    nop
.end __glSpanGetMemRGB

# Function: __glSpanGetMemL
# Declared: Line 3126 (Source lines: 3128-3144)
# Address: 0x0d9bae50 - 0x0d9bae9c (Size: 76 bytes, Frame: 0)
.globl __glSpanGetMemL
.ent __glSpanGetMemL
__glSpanGetMemL:
    # Line 3133
    lw	$a6,180($a1)
    # Line 3128
    move	$a5,$a2
    # Line 3136
    blez	$a6,.L0d9bae94
    # Line 3128
    move	$a4,$a3
    # Line 3136
    mtc1	$zero,$f4
    move	$a1,$zero
    nop
    nop
.L0d9bae70:
    # Line 3142
    addiu	$a4,$a4,16
    # Line 3139
    lwc1	$f0,0($a5)
    # Line 3140
    swc1	$f4,-12($a4)
    # Line 3141
    swc1	$f4,-8($a4)
    # Line 3138
    addiu	$a1,$a1,1
    # Line 3142
    swc1	$f4,-4($a4)
    # Line 3139
    addiu	$a5,$a5,4
    # Line 3138
    bne	$a6,$a1,.L0d9bae70
    # Line 3139
    swc1	$f0,-16($a4)
.L0d9bae94:
    # Line 3144
    jr	$ra
    nop
.end __glSpanGetMemL

# Function: __glSpanGetMemLA
# Declared: Line 3150 (Source lines: 3152-3168)
# Address: 0x0d9baea0 - 0x0d9baef0 (Size: 80 bytes, Frame: 0)
.globl __glSpanGetMemLA
.ent __glSpanGetMemLA
__glSpanGetMemLA:
    # Line 3157
    lw	$a6,180($a1)
    # Line 3152
    move	$a5,$a2
    # Line 3160
    blez	$a6,.L0d9baee8
    # Line 3152
    move	$a4,$a3
    # Line 3160
    mtc1	$zero,$f4
    move	$a1,$zero
    nop
    nop
.L0d9baec0:
    # Line 3163
    lwc1	$f1,0($a5)
    # Line 3165
    swc1	$f4,8($a4)
    # Line 3164
    swc1	$f4,4($a4)
    # Line 3163
    swc1	$f1,0($a4)
    # Line 3162
    addiu	$a1,$a1,1
    # Line 3166
    lwc1	$f0,4($a5)
    addiu	$a4,$a4,16
    addiu	$a5,$a5,8
    # Line 3162
    bne	$a6,$a1,.L0d9baec0
    # Line 3166
    swc1	$f0,-4($a4)
.L0d9baee8:
    # Line 3168
    jr	$ra
    nop
.end __glSpanGetMemLA

# Function: __glSpanGetMemI
# Declared: Line 3174 (Source lines: 3176-3192)
# Address: 0x0d9baef0 - 0x0d9baf3c (Size: 76 bytes, Frame: 0)
.globl __glSpanGetMemI
.ent __glSpanGetMemI
__glSpanGetMemI:
    # Line 3181
    lw	$a6,180($a1)
    # Line 3176
    move	$a5,$a2
    # Line 3184
    blez	$a6,.L0d9baf34
    # Line 3176
    move	$a4,$a3
    # Line 3184
    mtc1	$zero,$f4
    move	$a1,$zero
    nop
    nop
.L0d9baf10:
    # Line 3190
    addiu	$a4,$a4,16
    # Line 3187
    lwc1	$f0,0($a5)
    # Line 3188
    swc1	$f4,-12($a4)
    # Line 3189
    swc1	$f4,-8($a4)
    # Line 3186
    addiu	$a1,$a1,1
    # Line 3190
    swc1	$f4,-4($a4)
    # Line 3187
    addiu	$a5,$a5,4
    # Line 3186
    bne	$a6,$a1,.L0d9baf10
    # Line 3187
    swc1	$f0,-16($a4)
.L0d9baf34:
    # Line 3192
    jr	$ra
    nop
.end __glSpanGetMemI

# Function: __glSpanMemPutRGBA
# Declared: Line 3205 (Source lines: 3207-3224)
# Address: 0x0d9baf40 - 0x0d9bb038 (Size: 248 bytes, Frame: 0)
.globl __glSpanMemPutRGBA
.ent __glSpanMemPutRGBA
__glSpanMemPutRGBA:
    # Line 3212
    lw	$a4,180($a1)
    # Line 3207
    move	$a5,$a2
    # Line 3215
    blez	$a4,.L0d9bb030
    # Line 3207
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9baf94
    # Line 3215
    move	$a1,$zero
.L0d9baf60:
    # Line 3218
    lwc1	$f3,0($a5)
    swc1	$f3,0($a6)
    # Line 3219
    lwc1	$f2,4($a5)
    swc1	$f2,4($a6)
    # Line 3220
    lwc1	$f1,8($a5)
    swc1	$f1,8($a6)
    addiu	$a2,$a2,-1
    # Line 3221
    lwc1	$f0,12($a5)
    # Line 3217
    addiu	$a1,$a1,1
    # Line 3221
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9baf60
    swc1	$f0,-4($a6)
.L0d9baf94:
    move	$a2,$a5
    beqz	$at,.L0d9bb030
    move	$a3,$a6
.L0d9bafa0:
    # Line 3218
    lwc1	$f19,0($a2)
    swc1	$f19,0($a3)
    # Line 3219
    lwc1	$f18,4($a2)
    swc1	$f18,4($a3)
    # Line 3220
    lwc1	$f17,8($a2)
    swc1	$f17,8($a3)
    # Line 3221
    lwc1	$f16,12($a2)
    swc1	$f16,12($a3)
    # Line 3218
    lwc1	$f15,16($a2)
    swc1	$f15,16($a3)
    # Line 3219
    lwc1	$f14,20($a2)
    swc1	$f14,20($a3)
    # Line 3220
    lwc1	$f13,24($a2)
    swc1	$f13,24($a3)
    # Line 3221
    lwc1	$f12,28($a2)
    swc1	$f12,28($a3)
    # Line 3218
    lwc1	$f11,32($a2)
    swc1	$f11,32($a3)
    # Line 3219
    lwc1	$f10,36($a2)
    swc1	$f10,36($a3)
    # Line 3220
    lwc1	$f9,40($a2)
    swc1	$f9,40($a3)
    # Line 3221
    lwc1	$f8,44($a2)
    swc1	$f8,44($a3)
    # Line 3218
    lwc1	$f7,48($a2)
    swc1	$f7,48($a3)
    # Line 3219
    lwc1	$f6,52($a2)
    swc1	$f6,52($a3)
    # Line 3220
    lwc1	$f5,56($a2)
    swc1	$f5,56($a3)
    # Line 3217
    addiu	$a1,$a1,4
    # Line 3221
    lwc1	$f4,60($a2)
    addiu	$a3,$a3,64
    addiu	$a2,$a2,64
    # Line 3217
    bne	$a4,$a1,.L0d9bafa0
    # Line 3221
    swc1	$f4,-4($a3)
.L0d9bb030:
    # Line 3224
    jr	$ra
    nop
.end __glSpanMemPutRGBA

# Function: __glSpanMemPutRGB
# Declared: Line 3230 (Source lines: 3232-3249)
# Address: 0x0d9bb040 - 0x0d9bb118 (Size: 216 bytes, Frame: 0)
.globl __glSpanMemPutRGB
.ent __glSpanMemPutRGB
__glSpanMemPutRGB:
    # Line 3237
    lw	$a4,180($a1)
    # Line 3232
    move	$a5,$a2
    # Line 3240
    blez	$a4,.L0d9bb110
    # Line 3232
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9bb08c
    # Line 3240
    move	$a1,$zero
.L0d9bb060:
    # Line 3243
    lwc1	$f2,0($a5)
    swc1	$f2,0($a6)
    # Line 3244
    lwc1	$f1,4($a5)
    swc1	$f1,4($a6)
    addiu	$a2,$a2,-1
    # Line 3245
    lwc1	$f0,8($a5)
    # Line 3242
    addiu	$a1,$a1,1
    # Line 3245
    addiu	$a6,$a6,12
    # Line 3246
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9bb060
    # Line 3245
    swc1	$f0,-4($a6)
.L0d9bb08c:
    move	$a3,$a5
    beqz	$at,.L0d9bb110
    move	$a2,$a6
    nop
    nop
.L0d9bb0a0:
    # Line 3243
    lwc1	$f14,0($a3)
    swc1	$f14,0($a2)
    # Line 3244
    lwc1	$f13,4($a3)
    swc1	$f13,4($a2)
    # Line 3245
    lwc1	$f12,8($a3)
    swc1	$f12,8($a2)
    # Line 3243
    lwc1	$f11,16($a3)
    swc1	$f11,12($a2)
    # Line 3244
    lwc1	$f10,20($a3)
    swc1	$f10,16($a2)
    # Line 3245
    lwc1	$f9,24($a3)
    swc1	$f9,20($a2)
    # Line 3243
    lwc1	$f8,32($a3)
    swc1	$f8,24($a2)
    # Line 3244
    lwc1	$f7,36($a3)
    swc1	$f7,28($a2)
    # Line 3245
    lwc1	$f6,40($a3)
    swc1	$f6,32($a2)
    # Line 3243
    lwc1	$f5,48($a3)
    swc1	$f5,36($a2)
    # Line 3244
    lwc1	$f4,52($a3)
    swc1	$f4,40($a2)
    # Line 3242
    addiu	$a1,$a1,4
    # Line 3245
    lwc1	$f3,56($a3)
    addiu	$a2,$a2,48
    # Line 3246
    addiu	$a3,$a3,64
    # Line 3242
    bne	$a4,$a1,.L0d9bb0a0
    # Line 3245
    swc1	$f3,-4($a2)
.L0d9bb110:
    # Line 3249
    jr	$ra
    nop
.end __glSpanMemPutRGB

# Function: __glSpanMemPutL
# Declared: Line 3255 (Source lines: 3257-3272)
# Address: 0x0d9bb120 - 0x0d9bb1a8 (Size: 136 bytes, Frame: 0)
.globl __glSpanMemPutL
.ent __glSpanMemPutL
__glSpanMemPutL:
    # Line 3262
    lw	$a4,180($a1)
    # Line 3257
    move	$a5,$a2
    # Line 3265
    blez	$a4,.L0d9bb1a0
    # Line 3257
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9bb15c
    # Line 3265
    move	$a1,$zero
.L0d9bb140:
    addiu	$a2,$a2,-1
    # Line 3268
    lwc1	$f0,0($a5)
    # Line 3267
    addiu	$a1,$a1,1
    # Line 3268
    addiu	$a6,$a6,4
    # Line 3269
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9bb140
    # Line 3268
    swc1	$f0,-4($a6)
.L0d9bb15c:
    move	$a2,$a6
    beqz	$at,.L0d9bb1a0
    move	$a3,$a5
    nop
    nop
.L0d9bb170:
    lwc1	$f4,0($a3)
    swc1	$f4,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    swc1	$f2,8($a2)
    # Line 3267
    addiu	$a1,$a1,4
    # Line 3268
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,16
    # Line 3269
    addiu	$a3,$a3,64
    # Line 3267
    bne	$a4,$a1,.L0d9bb170
    # Line 3268
    swc1	$f1,-4($a2)
.L0d9bb1a0:
    # Line 3272
    jr	$ra
    nop
.end __glSpanMemPutL

# Function: __glSpanMemPutLA
# Declared: Line 3278 (Source lines: 3280-3296)
# Address: 0x0d9bb1b0 - 0x0d9bb258 (Size: 168 bytes, Frame: 0)
.globl __glSpanMemPutLA
.ent __glSpanMemPutLA
__glSpanMemPutLA:
    # Line 3285
    lw	$a4,180($a1)
    # Line 3280
    move	$a5,$a2
    # Line 3288
    blez	$a4,.L0d9bb250
    # Line 3280
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9bb1f4
    # Line 3288
    move	$a1,$zero
.L0d9bb1d0:
    # Line 3291
    lwc1	$f1,0($a5)
    swc1	$f1,0($a6)
    addiu	$a2,$a2,-1
    # Line 3293
    lwc1	$f0,12($a5)
    # Line 3290
    addiu	$a1,$a1,1
    # Line 3293
    addiu	$a6,$a6,8
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9bb1d0
    swc1	$f0,-4($a6)
.L0d9bb1f4:
    move	$a2,$a5
    beqz	$at,.L0d9bb250
    move	$a3,$a6
.L0d9bb200:
    # Line 3291
    lwc1	$f9,0($a2)
    swc1	$f9,0($a3)
    # Line 3293
    lwc1	$f8,12($a2)
    swc1	$f8,4($a3)
    # Line 3291
    lwc1	$f7,16($a2)
    swc1	$f7,8($a3)
    # Line 3293
    lwc1	$f6,28($a2)
    swc1	$f6,12($a3)
    # Line 3291
    lwc1	$f5,32($a2)
    swc1	$f5,16($a3)
    # Line 3293
    lwc1	$f4,44($a2)
    swc1	$f4,20($a3)
    # Line 3291
    lwc1	$f3,48($a2)
    swc1	$f3,24($a3)
    # Line 3290
    addiu	$a1,$a1,4
    # Line 3293
    lwc1	$f2,60($a2)
    addiu	$a3,$a3,32
    addiu	$a2,$a2,64
    # Line 3290
    bne	$a4,$a1,.L0d9bb200
    # Line 3293
    swc1	$f2,-4($a3)
.L0d9bb250:
    # Line 3296
    jr	$ra
    nop
.end __glSpanMemPutLA

# Function: __glSpanMemPutI
# Declared: Line 3302 (Source lines: 3304-3319)
# Address: 0x0d9bb260 - 0x0d9bb2e8 (Size: 136 bytes, Frame: 0)
.globl __glSpanMemPutI
.ent __glSpanMemPutI
__glSpanMemPutI:
    # Line 3309
    lw	$a4,180($a1)
    # Line 3304
    move	$a5,$a2
    # Line 3312
    blez	$a4,.L0d9bb2e0
    # Line 3304
    move	$a6,$a3
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d9bb29c
    # Line 3312
    move	$a1,$zero
.L0d9bb280:
    addiu	$a2,$a2,-1
    # Line 3315
    lwc1	$f0,0($a5)
    # Line 3314
    addiu	$a1,$a1,1
    # Line 3315
    addiu	$a6,$a6,4
    # Line 3316
    addiu	$a5,$a5,16
    bnez	$a2,.L0d9bb280
    # Line 3315
    swc1	$f0,-4($a6)
.L0d9bb29c:
    move	$a2,$a6
    beqz	$at,.L0d9bb2e0
    move	$a3,$a5
    nop
    nop
.L0d9bb2b0:
    lwc1	$f4,0($a3)
    swc1	$f4,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,4($a2)
    lwc1	$f2,32($a3)
    swc1	$f2,8($a2)
    # Line 3314
    addiu	$a1,$a1,4
    # Line 3315
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,16
    # Line 3316
    addiu	$a3,$a3,64
    # Line 3314
    bne	$a4,$a1,.L0d9bb2b0
    # Line 3315
    swc1	$f1,-4($a2)
.L0d9bb2e0:
    # Line 3319
    jr	$ra
    nop
.end __glSpanMemPutI

.late_rodata
jtbl_0da447d0:
    .word .L0d9b5244
    .word .L0d9b5158
    .word .L0d9b5184
    .word .L0d9b51a8
    .word .L0d9b51cc
    .word .L0d9b522c
    .word .L0d9b5234
    .word .L0d9b523c
    .word .L0d9b55c4
    .word .L0d9b54dc
    .word .L0d9b5508
    .word .L0d9b552c
    .word .L0d9b5550
    .word .L0d9b55ac
    .word .L0d9b55b4
    .word .L0d9b55bc
jtbl_0da44810:
    .word .L0d9b5ad4
    .word .L0d9b59dc
    .word .L0d9b59fc
    .word .L0d9b5a20
    .word .L0d9b5a44
    .word .L0d9b5a68
    .word .L0d9b5a8c
    .word .L0d9b5ab0
    .word .L0d9b5e20
    .word .L0d9b5d18
    .word .L0d9b5d38
    .word .L0d9b5d60
    .word .L0d9b5d84
    .word .L0d9b5dac
    .word .L0d9b5dd4
    .word .L0d9b5dfc

.rdata
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_401c000000000000:
    .word 0x401c0000, 0x00000000
_lit8_402e000000000000:
    .word 0x402e0000, 0x00000000
_lit8_403f000000000000:
    .word 0x403f0000, 0x00000000
_lit8_404f800000000000:
    .word 0x404f8000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_408ff80000000000:
    .word 0x408ff800, 0x00000000
_lit_3e000000:
    .word 0x3e000000
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f000000:
    .word 0x3f000000
_lit_3f2aaaab:
    .word 0x3f2aaaab
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40800000:
    .word 0x40800000

