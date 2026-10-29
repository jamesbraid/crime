# Source: ../soft/so_names.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_names.c
# Total Functions: 37

.text

# Function: __glNamesNewArray
# Declared: Line 246 (Source lines: 247-285)
# Address: 0x0d9f1340 - 0x0d9f1494 (Size: 340 bytes, Frame: 192)
.globl __glNamesNewArray
.ent __glNamesNewArray
__glNamesNewArray:
    # Line 247
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lui	$at,0x6
    sd	$gp,40($sp)
    addiu	$at,$at,-1460
    addu	$gp,$t9,$at
    # Line 251
    lw	$t9,0($a0)
    # Line 247
    sd	$s2,56($sp)
    move	$s2,$a0
    sd	$a1,32($sp)
    # Line 251
    li	$a1,100
    jalr	$t9
    sd	$s4,8($sp)
    # Line 260
    ld	$a1,32($sp)
    # Line 251
    beqz	$v0,.L0d9f146c
    move	$s4,$v0
    # Line 259
    sw	$zero,4($v0)
    # Line 266
    li	$a2,16
    sw	$a2,16($v0)
    # Line 267
    li	$a3,3
    sw	$a3,20($v0)
    # Line 258
    sw	$zero,0($s4)
    # Line 257
    li	$a0,1
    sw	$a0,8($s4)
    sd	$s3,0($sp)
    # Line 267
    addiu	$s3,$v0,64
    # Line 260
    la	$v0,sub_0da40000
    sll	$v1,$a1,0x2
    sd	$s0,16($sp)
    # Line 267
    move	$s0,$s4
    # Line 260
    subu	$v1,$v1,$a1
    sd	$s1,24($sp)
    sll	$v1,$v1,0x3
    addiu	$v0,$v0,31632
    # Line 267
    move	$s1,$zero
    # Line 260
    addu	$v0,$v0,$v1
    sw	$v0,12($s4)
    nop
    nop
    nop
.L0d9f13e0:
    # Line 269
    lw	$t9,0($s2)
    move	$a0,$s2
    jalr	$t9
    li	$a1,24
    beqz	$v0,.L0d9f1464
    sw	$v0,24($s0)
    # Line 268
    addiu	$s0,$s0,4
    bne	$s0,$s3,.L0d9f13e0
    addiu	$s1,$s1,1
.L0d9f1404:
    # Line 276
    move	$s0,$s4
    addiu	$s3,$s4,12
    move	$s1,$zero
.L0d9f1410:
    # Line 277
    lw	$t9,0($s2)
    move	$a0,$s2
    jalr	$t9
    li	$a1,20
    bnez	$v0,.L0d9f1430
    sw	$v0,88($s0)
    # Line 281
    b	.L0d9f143c
    # Line 280
    sw	$s1,20($s4)
.L0d9f1430:
    # Line 276
    addiu	$s0,$s0,4
    bne	$s0,$s3,.L0d9f1410
    addiu	$s1,$s1,1
.L0d9f143c:
    # Line 285
    ld	$gp,40($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s2,56($sp)
    ld	$s3,0($sp)
    move	$v0,$s4
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9f1464:
    # Line 273
    b	.L0d9f1404
    # Line 272
    sw	$s1,16($s4)
.L0d9f146c:
    # Line 254
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 285
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    # Line 255
    move	$v0,$zero
    # Line 285
    ld	$s2,56($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glNamesNewArray

# Function: freeLeafData
# Declared: Line 288 (Source lines: 289-294)
# Address: 0x0d9f14a0 - 0x0d9f14b0 (Size: 16 bytes, Frame: 0)
.ent freeLeafData
freeLeafData:
    # Line 289
    move	$t9,$a0
    # Line 294
    lw	$t9,12($t9)
    jr	$t9
    nop
.end freeLeafData

# Function: freeLeaf
# Declared: Line 298 (Source lines: 299-304)
# Address: 0x0d9f14b0 - 0x0d9f14f8 (Size: 72 bytes, Frame: 32)
.ent freeLeaf
freeLeaf:
    # Line 299
    lw	$a3,12($a1)
    addiu	$sp,$sp,-32
    sd	$s3,0($sp)
    move	$s3,$a0
    beqz	$a3,.L0d9f14e0
    sd	$ra,8($sp)
    # Line 301
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5280
    sd	$a1,16($sp)
    bal __glNamesNewArray
    move	$a1,$a3
    ld	$a1,16($sp)
.L0d9f14e0:
    # Line 303
    lw	$t9,12($s3)
    ld	$ra,8($sp)
    move	$a0,$s3
    # Line 304
    ld	$s3,0($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end freeLeaf

# Function: freeBranch
# Declared: Line 307 (Source lines: 308-309)
# Address: 0x0d9f1500 - 0x0d9f1510 (Size: 16 bytes, Frame: 0)
.ent freeBranch
freeBranch:
    # Line 308
    move	$t9,$a0
    # Line 309
    lw	$t9,12($t9)
    jr	$t9
    nop
.end freeBranch

# Function: __glNamesFreeTree
# Declared: Line 316 (Source lines: 318-349)
# Address: 0x0d9f1510 - 0x0d9f1674 (Size: 356 bytes, Frame: 192)
.globl __glNamesFreeTree
.ent __glNamesFreeTree
__glNamesFreeTree:
.L0d9f1510:
    # Line 318
    addiu	$sp,$sp,-64
    sd	$s4,32($sp)
    move	$a5,$a3
    move	$s4,$a0
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s1,16($sp)
    lui	$at,0x6
    move	$s1,$a2
    sd	$ra,40($sp)
    addiu	$at,$at,-1924
    sd	$gp,8($sp)
    beqz	$a2,.L0d9f15fc
    addu	$gp,$t9,$at
    # Line 324
    lw	$v0,4($a1)
    slt	$v0,$a3,$v0
    bnez	$v0,.L0d9f1618
    # Line 327
    nop	# was lw $t9, -25412($gp) # &__glNamesFreeTree
    sd	$s2,48($sp)
    # Line 334
    lw	$t8,12($a2)
    lw	$s2,12($a1)
    # Line 337
    lw	$a1,4($a2)
    move	$s0,$zero
    # Line 334
    beqz	$t8,.L0d9f15e4
    lw	$s2,4($s2)
    # Line 337
    lw	$a0,8($a2)
    subu	$a0,$a0,$a1
    addiu	$a0,$a0,1
    beqz	$a0,.L0d9f15e8
    # Line 347
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$s3,56($sp)
    b	.L0d9f15ac
    # Line 337
    sll	$s3,$a0,0x2
    nop
    nop
    nop
.L0d9f15a0:
    # Line 338
    addiu	$s0,$s0,4
    beq	$s0,$s3,.L0d9f15e0
    nop
.L0d9f15ac:
    # Line 337
    lw	$a1,12($s1)
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    beq	$a1,$s2,.L0d9f15a0
    nop
    # Line 341
    lw	$t9,16($s1)
    lw	$t9,12($t9)
    jal	sub_0d9f0000
    move	$a0,$s4
    # Line 343
    lw	$ra,12($s1)
    addu	$ra,$ra,$s0
    b	.L0d9f15a0
    sw	$s2,0($ra)
.L0d9f15e0:
    ld	$s3,56($sp)
.L0d9f15e4:
    # Line 347
    # lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f15e8:
    addiu	$t9,$t9,5296
    move	$a0,$s4
    ld	$s2,48($sp)
    bal __glNamesNewArray
    move	$a1,$s1
.L0d9f15fc:
    # Line 349
    ld	$gp,8($sp)
.L0d9f1600:
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9f1618:
    # Line 327
    addiu	$a3,$a3,1
    sd	$a3,0($sp)
    bal .L0d9f1510
    lw	$a2,20($a2)
    # Line 328
    # lw $t9, -25412($gp) # &__glNamesFreeTree
    move	$a0,$s4
    ld	$a3,0($sp)
    move	$a1,$s0
    bal .L0d9f1510
    lw	$a2,16($s1)
    # Line 329
    # lw $t9, -25412($gp) # &__glNamesFreeTree
    move	$a0,$s4
    ld	$a3,0($sp)
    move	$a1,$s0
    bal .L0d9f1510
    lw	$a2,12($s1)
    # Line 331
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5376
    move	$a0,$s4
    bal __glNamesNewArray
    move	$a1,$s1
    b	.L0d9f1600
    # Line 349
    ld	$gp,8($sp)
.end __glNamesFreeTree

# Function: __glNamesFreeArray
# Declared: Line 350 (Source lines: 351-364)
# Address: 0x0d9f1680 - 0x0d9f176c (Size: 236 bytes, Frame: 48)
.globl __glNamesFreeArray
.ent __glNamesFreeArray
__glNamesFreeArray:
    # Line 351
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$s3,0($sp)
    sd	$s2,8($sp)
    move	$s2,$a1
    move	$s3,$a0
    lw	$at,16($a1)
    sd	$s0,24($sp)
    move	$s0,$a1
    lui	$v0,0x6
    sd	$s1,32($sp)
    move	$s1,$zero
    addiu	$v0,$v0,-2292
    sd	$gp,16($sp)
    beqz	$at,.L0d9f16e4
    addu	$gp,$t9,$v0
.L0d9f16c0:
    # Line 355
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,24($s0)
    # Line 354
    lw	$v1,16($s2)
    addiu	$s1,$s1,1
    sltu	$v1,$s1,$v1
    bnez	$v1,.L0d9f16c0
    addiu	$s0,$s0,4
.L0d9f16e4:
    lw	$a0,20($s2)
    move	$s1,$zero
    beqz	$a0,.L0d9f1724
    move	$s0,$s2
    nop
    nop
    nop
.L0d9f1700:
    # Line 358
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,88($s0)
    # Line 357
    lw	$a1,20($s2)
    addiu	$s1,$s1,1
    sltu	$a1,$s1,$a1
    bnez	$a1,.L0d9f1700
    addiu	$s0,$s0,4
.L0d9f1724:
    # Line 361
    # lw $t9, -25412($gp) # &__glNamesFreeTree
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a3,$zero
    bal __glNamesFreeTree
    lw	$a2,0($s2)
    # Line 363
    lw	$t9,12($s3)
    move	$a0,$s3
    jal	__glNamesFreeTree
    move	$a1,$s2
    ld	$ra,40($sp)
    ld	$s3,0($sp)
    ld	$s2,8($sp)
    # Line 364
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glNamesFreeArray

# Function: findLeaf
# Declared: Line 379 (Source lines: 384-410)
# Address: 0x0d9f1770 - 0x0d9f17f0 (Size: 128 bytes, Frame: 0)
.ent findLeaf
findLeaf:
    # Line 384
    lw	$a5,4($a0)
    # Line 399
    move	$v0,$zero
    # Line 388
    blez	$a5,.L0d9f17c4
    # Line 386
    lw	$a4,0($a0)
    # Line 388
    beqz	$a4,.L0d9f17bc
    nop
    nop
    # Line 397
    addiu	$a5,$a5,-1
.L0d9f1790:
    # Line 396
    lw	$a6,4($a4)
    lw	$a7,8($a4)
    sltu	$a7,$a7,$a1
    sltu	$a6,$a6,$a1
    addu	$a6,$a6,$a7
    sll	$a6,$a6,0x2
    addu	$a4,$a4,$a6
    # Line 397
    blez	$a5,.L0d9f17c4
    # Line 396
    lw	$a4,12($a4)
    # Line 397
    bnez	$a4,.L0d9f1790
    addiu	$a5,$a5,-1
.L0d9f17bc:
    # Line 410
    jr	$ra
    nop
.L0d9f17c4:
    # Line 397
    beqz	$a4,.L0d9f17bc
    nop
    # Line 408
    lw	$t0,4($a4)
    lw	$a7,8($a4)
    # Line 410
    move	$v0,$zero
    # Line 408
    sltu	$t0,$a1,$t0
    sltu	$a7,$a7,$a1
    and	$t0,$a2,$t0
    or	$a7,$a7,$t0
    # Line 410
    jr	$ra
    movz	$v0,$a4,$a7
.end findLeaf

# Function: copyLeafInfo
# Declared: Line 417 (Source lines: 423-429)
# Address: 0x0d9f17f0 - 0x0d9f18ec (Size: 252 bytes, Frame: 0)
.ent copyLeafInfo
copyLeafInfo:
    # Line 423
    lw	$t0,4($a1)
    lw	$a7,8($a1)
    # Line 424
    lw	$t1,4($a0)
    # Line 423
    subu	$a7,$a7,$t0
    addiu	$a7,$a7,1
    # Line 424
    subu	$t0,$t0,$t1
    beqz	$a7,.L0d9f18e4
    andi	$a6,$a7,0x3
    sll	$a3,$t0,0x2
    move	$a4,$zero
    addu	$a5,$t0,$a7
    beqz	$a6,.L0d9f184c
    sll	$a5,$a5,0x2
.L0d9f1824:
    # Line 427
    lw	$t0,12($a0)
    lw	$t1,12($a1)
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$a3
    # Line 426
    addiu	$a3,$a3,4
    # Line 427
    addu	$t1,$t1,$a4
    lw	$t0,0($t0)
    # Line 426
    addiu	$a4,$a4,4
    bnez	$a6,.L0d9f1824
    # Line 427
    sw	$t0,0($t1)
.L0d9f184c:
    sra	$t1,$a7,0x2
    beqz	$t1,.L0d9f18e4
    nop
    nop
    nop
.L0d9f1860:
    lw	$t2,12($a0)
    lw	$t3,12($a1)
    addu	$t2,$t2,$a3
    addu	$t3,$t3,$a4
    lw	$t2,0($t2)
    sw	$t2,0($t3)
    lw	$a6,12($a0)
    # Line 426
    addiu	$t1,$a3,4
    # Line 427
    lw	$a7,12($a1)
    # Line 426
    addiu	$t0,$a4,4
    # Line 427
    addu	$a6,$a6,$t1
    addu	$a7,$a7,$t0
    lw	$a6,0($a6)
    sw	$a6,0($a7)
    lw	$at,12($a0)
    # Line 426
    addiu	$a2,$a3,8
    # Line 427
    lw	$v0,12($a1)
    # Line 426
    addiu	$v1,$a4,8
    # Line 427
    addu	$at,$at,$a2
    addu	$v0,$v0,$v1
    lw	$at,0($at)
    sw	$at,0($v0)
    lw	$t2,12($a0)
    # Line 426
    addiu	$t9,$a3,12
    addiu	$a3,$a3,16
    # Line 427
    lw	$t3,12($a1)
    # Line 426
    addiu	$t8,$a4,12
    # Line 427
    addu	$t2,$t2,$t9
    addu	$t3,$t3,$t8
    lw	$t2,0($t2)
    # Line 426
    addiu	$a4,$a4,16
    bne	$a3,$a5,.L0d9f1860
    # Line 427
    sw	$t2,0($t3)
.L0d9f18e4:
    # Line 429
    jr	$ra
    nop
.end copyLeafInfo

# Function: fixMemoryProblem
# Declared: Line 434 (Source lines: 435-456)
# Address: 0x0d9f18f0 - 0x0d9f1a20 (Size: 304 bytes, Frame: 48)
.ent fixMemoryProblem
fixMemoryProblem:
    # Line 435
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$s1,24($sp)
    # Line 438
    lw	$s1,16($a1)
    # Line 435
    sd	$s4,32($sp)
    sd	$s2,40($sp)
    # Line 438
    sltiu	$at,$s1,16
    # Line 435
    move	$s2,$a0
    move	$s4,$a1
    sd	$s3,8($sp)
    # Line 438
    addiu	$s3,$a1,64
    sd	$s0,16($sp)
    beqz	$at,.L0d9f1954
    sll	$s0,$s1,0x2
    addu	$s0,$a1,$s0
    nop
.L0d9f1930:
    # Line 439
    lw	$t9,0($s2)
    move	$a0,$s2
    jalr	$t9
    li	$a1,24
    beqz	$v0,.L0d9f19f8
    sw	$v0,24($s0)
    # Line 438
    addiu	$s0,$s0,4
    bne	$s0,$s3,.L0d9f1930
    addiu	$s1,$s1,1
.L0d9f1954:
    # Line 447
    lw	$s1,20($s4)
    sltiu	$t9,$s1,3
    addiu	$s3,$s4,12
    li	$t8,16
    # Line 446
    sw	$t8,16($s4)
    # Line 447
    beqz	$t9,.L0d9f19a4
    sll	$s0,$s1,0x2
    addu	$s0,$s4,$s0
    nop
    nop
    nop
.L0d9f1980:
    # Line 448
    lw	$t9,0($s2)
    move	$a0,$s2
    jalr	$t9
    li	$a1,20
    beqz	$v0,.L0d9f19d0
    sw	$v0,88($s0)
    # Line 447
    addiu	$s0,$s0,4
    bne	$s0,$s3,.L0d9f1980
    addiu	$s1,$s1,1
.L0d9f19a4:
    # Line 456
    ld	$s0,16($sp)
    # Line 455
    li	$s1,3
    sw	$s1,20($s4)
    # Line 456
    ld	$s1,24($sp)
    ld	$ra,0($sp)
    ld	$s2,40($sp)
    li	$v0,1
    ld	$s3,8($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f19d0:
    ld	$s0,16($sp)
    # Line 451
    sw	$s1,20($s4)
    # Line 456
    ld	$s1,24($sp)
    ld	$ra,0($sp)
    ld	$s2,40($sp)
    # Line 452
    move	$v0,$zero
    # Line 456
    ld	$s3,8($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f19f8:
    ld	$s0,16($sp)
    # Line 442
    sw	$s1,16($s4)
    # Line 456
    ld	$s1,24($sp)
    ld	$ra,0($sp)
    ld	$s2,40($sp)
    # Line 443
    move	$v0,$zero
    # Line 456
    ld	$s3,8($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end fixMemoryProblem

# Function: computeMax
# Declared: Line 463 (Source lines: 465-479)
# Address: 0x0d9f1a20 - 0x0d9f1a68 (Size: 72 bytes, Frame: 0)
.ent computeMax
computeMax:
    # Line 465
    slt	$at,$a1,$a2
    beqz	$at,.L0d9f1a44
    nop
    nop
.L0d9f1a30:
    lw	$a4,20($a0)
    beqz	$a4,.L0d9f1a4c
    # Line 476
    addiu	$a1,$a1,1
    bne	$a1,$a2,.L0d9f1a30
    # Line 470
    move	$a0,$a4
.L0d9f1a44:
    # Line 479
    jr	$ra
    lw	$v0,8($a0)
.L0d9f1a4c:
    # Line 476
    lw	$v0,16($a0)
    beqz	$v0,.L0d9f1a60
    nop
    # Line 479
    jr	$ra
    # Line 472
    lw	$v0,8($a0)
.L0d9f1a60:
    # Line 479
    jr	$ra
    # Line 474
    lw	$v0,4($a0)
.end computeMax

# Function: pushMaxVal
# Declared: Line 486 (Source lines: 490-506)
# Address: 0x0d9f1a70 - 0x0d9f1ac4 (Size: 84 bytes, Frame: 0)
.ent pushMaxVal
pushMaxVal:
    # Line 490
    lw	$at,0($a0)
    beqz	$at,.L0d9f1abc
    move	$a3,$at
    b	.L0d9f1aa0
    lw	$v1,12($a3)
.L0d9f1a84:
    # Line 492
    bnez	$a4,.L0d9f1abc
    sw	$a1,4($a3)
.L0d9f1a8c:
    # Line 490
    lw	$v0,0($a3)
    # Line 504
    move	$a0,$a3
    # Line 490
    beqz	$v0,.L0d9f1abc
    move	$a3,$v0
    lw	$v1,12($a3)
.L0d9f1aa0:
    beq	$v1,$a0,.L0d9f1a84
    lw	$a4,16($a3)
    # Line 494
    bne	$a4,$a0,.L0d9f1a8c
    nop
    # Line 497
    lw	$a0,20($a3)
    beqz	$a0,.L0d9f1a8c
    sw	$a1,8($a3)
.L0d9f1abc:
    # Line 506
    jr	$ra
    nop
.end pushMaxVal

# Function: allocLeafData
# Declared: Line 508 (Source lines: 509-521)
# Address: 0x0d9f1ad0 - 0x0d9f1b68 (Size: 152 bytes, Frame: 32)
.ent allocLeafData
allocLeafData:
    # Line 513
    lw	$t8,4($a1)
    # Line 509
    addiu	$sp,$sp,-32
    sd	$s1,24($sp)
    # Line 513
    lw	$s1,8($a1)
    # Line 514
    lw	$t9,0($a0)
    # Line 513
    subu	$s1,$s1,$t8
    # Line 509
    sd	$s0,16($sp)
    # Line 513
    addiu	$s1,$s1,1
    # Line 509
    move	$s0,$a1
    # Line 513
    sd	$s1,0($sp)
    # Line 514
    sll	$s1,$s1,0x2
    sd	$ra,8($sp)
    jalr	$t9
    move	$a1,$s1
    # Line 518
    move	$a1,$zero
    # Line 514
    beqz	$v0,.L0d9f1b50
    sw	$v0,12($s0)
    # Line 518
    ld	$t9,0($sp)
    blez	$t9,.L0d9f1b3c
    # Line 521
    li	$v0,1
.L0d9f1b20:
    # Line 519
    lw	$at,12($s0)
    lw	$ra,16($s0)
    addu	$at,$at,$a1
    # Line 518
    addiu	$a1,$a1,4
    # Line 519
    lw	$ra,4($ra)
    # Line 518
    bne	$a1,$s1,.L0d9f1b20
    # Line 519
    sw	$ra,0($at)
.L0d9f1b3c:
    # Line 521
    ld	$ra,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f1b50:
    ld	$ra,8($sp)
    # Line 516
    move	$v0,$zero
    # Line 521
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end allocLeafData

# Function: reallocLeafData
# Declared: Line 524 (Source lines: 525-539)
# Address: 0x0d9f1b70 - 0x0d9f1bd0 (Size: 96 bytes, Frame: 16)
.ent reallocLeafData
reallocLeafData:
    # Line 530
    lw	$a3,4($a1)
    lw	$a2,8($a1)
    # Line 525
    move	$t9,$a0
    addiu	$sp,$sp,-16
    # Line 530
    lw	$t9,8($t9)
    # Line 525
    sd	$a1,0($sp)
    # Line 530
    subu	$a2,$a2,$a3
    lw	$a1,12($a1)
    sll	$a2,$a2,0x2
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,4
    # Line 539
    ld	$ra,8($sp)
    # Line 530
    beqz	$v0,.L0d9f1bc4
    move	$a2,$v0
    # Line 539
    ld	$ra,8($sp)
    # Line 533
    ld	$a4,0($sp)
    # Line 534
    li	$v0,1
    # Line 539
    addiu	$sp,$sp,16
    jr	$ra
    # Line 533
    sw	$a2,12($a4)
.L0d9f1bc4:
    # Line 539
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.end reallocLeafData

# Function: allocLeaf
# Declared: Line 543 (Source lines: 544-564)
# Address: 0x0d9f1bd0 - 0x0d9f1c4c (Size: 124 bytes, Frame: 16)
.ent allocLeaf
allocLeaf:
    # Line 544
    move	$t9,$a0
    # Line 547
    lw	$t9,0($t9)
    # Line 544
    addiu	$sp,$sp,-16
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 547
    jalr	$t9
    li	$a1,20
    ld	$ra,0($sp)
    bnez	$v0,.L0d9f1c30
    move	$a2,$v0
    # Line 556
    lw	$v1,20($s8)
    addiu	$v1,$v1,-1
    # Line 557
    sll	$v0,$v1,0x2
    # Line 556
    sw	$v1,20($s8)
    # Line 557
    addu	$v0,$s8,$v0
    lw	$v0,88($v0)
    # Line 561
    sw	$zero,12($v0)
    # Line 560
    sw	$zero,0($v0)
    # Line 562
    lw	$s8,12($s8)
    sw	$s8,16($v0)
    # Line 564
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f1c30:
    # Line 561
    sw	$zero,12($v0)
    # Line 560
    sw	$zero,0($v0)
    # Line 562
    lw	$a0,12($s8)
    # Line 564
    ld	$s8,8($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 562
    sw	$a0,16($v0)
.end allocLeaf

# Function: allocBranch
# Declared: Line 571 (Source lines: 572-592)
# Address: 0x0d9f1c50 - 0x0d9f1cc4 (Size: 116 bytes, Frame: 16)
.ent allocBranch
allocBranch:
    # Line 572
    move	$t9,$a0
    # Line 575
    lw	$t9,0($t9)
    # Line 572
    addiu	$sp,$sp,-16
    sd	$a1,8($sp)
    sd	$ra,0($sp)
    # Line 575
    jalr	$t9
    li	$a1,24
    ld	$ra,0($sp)
    bnez	$v0,.L0d9f1cac
    move	$a2,$v0
    # Line 585
    ld	$a0,8($sp)
    lw	$v1,16($a0)
    addiu	$v1,$v1,-1
    # Line 586
    sll	$v0,$v1,0x2
    # Line 585
    sw	$v1,16($a0)
    # Line 586
    addu	$v0,$a0,$v0
    lw	$v0,24($v0)
    # Line 590
    sw	$zero,0($v0)
    # Line 589
    sw	$zero,12($v0)
    sw	$zero,16($v0)
    # Line 592
    addiu	$sp,$sp,16
    jr	$ra
    # Line 589
    sw	$zero,20($v0)
.L0d9f1cac:
    # Line 590
    sw	$zero,0($v0)
    # Line 589
    sw	$zero,12($v0)
    sw	$zero,16($v0)
    sw	$zero,20($v0)
    # Line 592
    jr	$ra
    addiu	$sp,$sp,16
.end allocBranch

# Function: deleteChild
# Declared: Line 600 (Source lines: 602-629)
# Address: 0x0d9f1cd0 - 0x0d9f1dc0 (Size: 240 bytes, Frame: 16)
.ent deleteChild
deleteChild:
    # Line 606
    lw	$a5,16($a1)
    lw	$at,12($a1)
    lw	$a6,4($a0)
    # Line 602
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a1
    # Line 606
    bne	$at,$a2,.L0d9f1d3c
    sd	$ra,8($sp)
    # Line 609
    sw	$a5,12($a1)
    # Line 610
    lw	$a5,20($a1)
    # Line 611
    sw	$zero,20($a1)
    # Line 612
    lw	$v0,8($a1)
    sw	$v0,4($a1)
    move	$ra,$ra
    beqz	$a5,.L0d9f1d94
    # Line 610
    sw	$a5,16($a1)
    # Line 614
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6688
    move	$a0,$a5
    move	$a2,$a6
    bal __glNamesFreeArray
    addiu	$a1,$a3,1
    ld	$ra,8($sp)
    # Line 615
    sw	$v0,8($s0)
    # Line 629
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f1d3c:
    # Line 616
    bne	$a5,$a2,.L0d9f1da4
    # Line 627
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    move	$ra,$ra
    # Line 618
    lw	$a5,20($a1)
    # Line 619
    sw	$zero,20($a1)
    beqz	$a5,.L0d9f1d84
    # Line 618
    sw	$a5,16($a1)
    # Line 621
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6688
    move	$a0,$a5
    move	$a2,$a6
    bal __glNamesFreeArray
    addiu	$a1,$a3,1
    ld	$ra,8($sp)
    # Line 622
    sw	$v0,8($s0)
.L0d9f1d78:
    ld	$s0,0($sp)
    # Line 629
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f1d84:
    # Line 623
    sw	$zero,8($a1)
    # Line 629
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f1d94:
    # Line 616
    sw	$zero,8($a1)
    # Line 629
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f1da4:
    # Line 627
    addiu	$t9,$t9,6768
    lw	$a1,8($a1)
    move	$a0,$s0
    bal __glNamesFreeArray
    # Line 626
    sw	$zero,20($s0)
    b	.L0d9f1d78
    ld	$ra,8($sp)
.end deleteChild

# Function: addChild
# Declared: Line 636 (Source lines: 638-666)
# Address: 0x0d9f1dc0 - 0x0d9f1ea4 (Size: 228 bytes, Frame: 32)
.ent addChild
addChild:
    # Line 638
    addiu	$sp,$sp,-32
    # Line 641
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 638
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 641
    addiu	$t9,$t9,6688
    move	$a0,$a1
    addiu	$a1,$a2,1
    sd	$ra,16($sp)
    bal __glNamesFreeArray
    move	$a2,$a3
    # Line 643
    sw	$s0,0($s1)
    # Line 644
    lw	$ra,8($s0)
    sltu	$ra,$ra,$v0
    # Line 649
    lw	$a1,4($s0)
    # Line 644
    beqz	$ra,.L0d9f1e2c
    lw	$a0,16($s0)
    beqz	$a0,.L0d9f1e2c
    # Line 649
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6768
    move	$a1,$v0
    move	$a0,$s0
    bal __glNamesFreeArray
    # Line 646
    sw	$s1,20($s0)
    b	.L0d9f1e4c
    ld	$ra,16($sp)
.L0d9f1e2c:
    # Line 649
    sltu	$ra,$a1,$v0
    beqz	$ra,.L0d9f1e5c
    nop
    # Line 654
    sw	$v0,8($s0)
    # Line 653
    sw	$s1,16($s0)
    # Line 654
    beqz	$a0,.L0d9f1e88
    # Line 652
    sw	$a0,20($s0)
    ld	$ra,16($sp)
.L0d9f1e4c:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 666
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f1e5c:
    # Line 661
    lw	$at,12($s0)
    # Line 662
    sw	$s1,12($s0)
    # Line 666
    ld	$s1,8($sp)
    # Line 664
    sw	$v0,4($s0)
    # Line 663
    sw	$a1,8($s0)
    # Line 666
    ld	$ra,16($sp)
    # Line 660
    sw	$a0,20($s0)
    # Line 661
    sw	$at,16($s0)
    # Line 666
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f1e88:
    # Line 657
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6768
    move	$a0,$s0
    bal __glNamesFreeArray
    move	$a1,$v0
    b	.L0d9f1e4c
    ld	$ra,16($sp)
.end addChild

# Function: splitParent
# Declared: Line 674 (Source lines: 679-723)
# Address: 0x0d9f1eb0 - 0x0d9f205c (Size: 428 bytes, Frame: 208)
.ent splitParent
splitParent:
    # Line 686
    lw	$v0,4($a0)
    # Line 687
    lw	$v1,16($a0)
    # Line 679
    addiu	$sp,$sp,-80
    sd	$a4,72($sp)
    # Line 689
    lw	$at,20($a0)
    sw	$at,8($sp)
    # Line 687
    sw	$v1,4($sp)
    # Line 686
    sw	$v0,16($sp)
    # Line 679
    sd	$a0,56($sp)
    sd	$s3,32($sp)
    sd	$ra,40($sp)
    # Line 685
    lw	$ra,12($a0)
    # Line 679
    sd	$a1,48($sp)
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 688
    lw	$a1,8($a0)
    # Line 679
    move	$s3,$a2
    # Line 688
    sw	$a1,20($sp)
    # Line 679
    addiu	$t9,$t9,6688
    move	$a2,$a4
    # Line 690
    addiu	$a1,$a3,1
    sd	$a1,64($sp)
    # Line 685
    sw	$ra,0($sp)
    # Line 690
    bal __glNamesFreeArray
    move	$a0,$at
    # Line 692
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 691
    sw	$s3,12($sp)
    # Line 690
    sw	$v0,24($sp)
    # Line 692
    addiu	$t9,$t9,6688
    ld	$a1,64($sp)
    move	$a0,$s3
    bal __glNamesFreeArray
    ld	$a2,72($sp)
    sw	$v0,28($sp)
    addiu	$a6,$sp,16
    lw	$a4,8($a6)
    lw	$a2,12($a6)
    addiu	$a7,$sp,12
    addiu	$a1,$a6,12
    # Line 698
    lw	$v0,12($sp)
    # Line 695
    addiu	$a1,$a1,-4
    # Line 692
    sltu	$ra,$a2,$a4
    beqz	$ra,.L0d9f1f70
    nop
    # Line 701
    sw	$a2,8($a6)
    # Line 699
    sw	$a4,12($a6)
    # Line 700
    lw	$at,-4($a7)
    # Line 702
    sw	$v0,-4($a7)
    # Line 700
    sw	$at,12($sp)
.L0d9f1f70:
    # Line 695
    beq	$a1,$a6,.L0d9f1fe0
    ld	$s3,32($sp)
    # Line 692
    lw	$a4,-4($a1)
    lw	$a2,0($a1)
    sltu	$v1,$a2,$a4
    beqz	$v1,.L0d9f1fa4
    nop
    # Line 701
    sw	$a2,-4($a1)
    # Line 699
    sw	$a4,0($a1)
    # Line 700
    lw	$a0,-8($a7)
    # Line 698
    lw	$a3,-4($a7)
    # Line 702
    sw	$a3,-8($a7)
    # Line 700
    sw	$a0,-4($a7)
.L0d9f1fa4:
    # Line 695
    addiu	$a1,$a1,-4
    beq	$a1,$a6,.L0d9f1fe0
    ld	$s3,32($sp)
    # Line 692
    lw	$a4,-4($a1)
    lw	$a2,0($a1)
    sltu	$a5,$a2,$a4
    beqz	$a5,.L0d9f1fdc
    nop
    # Line 701
    sw	$a2,-4($a1)
    # Line 699
    sw	$a4,0($a1)
    # Line 700
    lw	$a6,-12($a7)
    # Line 698
    lw	$t0,-8($a7)
    # Line 702
    sw	$t0,-12($a7)
    # Line 700
    sw	$a6,-8($a7)
.L0d9f1fdc:
    ld	$s3,32($sp)
.L0d9f1fe0:
    # Line 707
    lw	$ra,16($sp)
    # Line 709
    lw	$a1,20($sp)
    # Line 708
    lw	$t3,0($sp)
    # Line 707
    ld	$t1,56($sp)
    # Line 710
    lw	$t2,4($sp)
    # Line 711
    sw	$zero,20($t1)
    # Line 710
    sw	$t2,16($t1)
    # Line 709
    sw	$a1,8($t1)
    # Line 714
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 708
    sw	$t3,12($t1)
    # Line 707
    sw	$ra,4($t1)
    # Line 714
    addiu	$t9,$t9,6768
    # Line 712
    sw	$t1,0($t3)
    # Line 714
    move	$a0,$t1
    bal __glNamesFreeArray
    # Line 713
    sw	$t1,0($t2)
    # Line 716
    lw	$a1,24($sp)
    # Line 718
    lw	$a0,28($sp)
    # Line 717
    lw	$v1,8($sp)
    # Line 716
    ld	$at,48($sp)
    # Line 719
    lw	$v0,12($sp)
    # Line 720
    sw	$zero,20($at)
    # Line 719
    sw	$v0,16($at)
    # Line 718
    sw	$a0,8($at)
    # Line 717
    sw	$v1,12($at)
    ld	$ra,40($sp)
    # Line 716
    sw	$a1,4($at)
    # Line 721
    sw	$at,0($v1)
    # Line 723
    addiu	$sp,$sp,80
    jr	$ra
    # Line 722
    sw	$at,0($v0)
.end splitParent

# Function: buildParent
# Declared: Line 729 (Source lines: 731-749)
# Address: 0x0d9f2060 - 0x0d9f2120 (Size: 192 bytes, Frame: 48)
.ent buildParent
buildParent:
    # Line 734
    sw	$a0,0($a1)
    # Line 735
    sw	$a0,0($a2)
    # Line 731
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$s3,24($sp)
    # lw $t9, -32700($gp) # &sub_0d9f0000
    move	$s3,$a3
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    # Line 736
    move	$a0,$a1
    # Line 731
    addiu	$t9,$t9,6688
    # Line 736
    move	$a1,$zero
    # Line 731
    sd	$s0,40($sp)
    move	$s0,$a2
    # Line 736
    move	$a2,$a3
    bal __glNamesFreeArray
    sd	$s1,0($sp)
    # Line 737
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 736
    move	$s1,$v0
    # Line 737
    addiu	$t9,$t9,6688
    move	$a0,$s0
    move	$a1,$zero
    bal __glNamesFreeArray
    move	$a2,$s3
    ld	$a0,8($sp)
    sltu	$ra,$s1,$v0
    # Line 749
    ld	$s3,24($sp)
    # Line 737
    beqz	$ra,.L0d9f20fc
    ld	$a2,16($sp)
    # Line 742
    sw	$v0,8($a0)
    # Line 739
    sw	$a2,12($a0)
    # Line 741
    sw	$s0,16($a0)
    # Line 749
    ld	$s0,40($sp)
    ld	$ra,32($sp)
    # Line 740
    sw	$s1,4($a0)
    # Line 749
    ld	$s1,0($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f20fc:
    # Line 746
    sw	$a2,16($a0)
    # Line 745
    sw	$v0,4($a0)
    # Line 744
    sw	$s0,12($a0)
    # Line 749
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    # Line 747
    sw	$s1,8($a0)
    # Line 749
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end buildParent

# Function: insertLeaf
# Declared: Line 754 (Source lines: 756-834)
# Address: 0x0d9f2120 - 0x0d9f23c8 (Size: 680 bytes, Frame: 208)
.ent insertLeaf
insertLeaf:
    # Line 764
    lw	$v0,8($a2)
    # Line 756
    addiu	$sp,$sp,-80
    sd	$s5,40($sp)
    sd	$s2,72($sp)
    # Line 765
    lw	$s2,4($a1)
    # Line 756
    sd	$s0,64($sp)
    # Line 766
    lw	$s0,0($a1)
    # Line 756
    sd	$s8,48($sp)
    move	$s8,$a0
    sd	$s7,56($sp)
    move	$s7,$a1
    # Line 766
    beqz	$s0,.L0d9f2374
    sd	$ra,0($sp)
    # Line 774
    blez	$s2,.L0d9f23ac
    sd	$s1,8($sp)
    andi	$at,$s2,0x1
    sra	$a0,$s2,0x1
    beqz	$at,.L0d9f218c
    move	$s1,$zero
    lw	$v1,4($s0)
    # Line 777
    lw	$ra,8($s0)
    # Line 774
    sltu	$v1,$v1,$v0
    # Line 787
    addiu	$s1,$s1,1
    # Line 779
    lw	$a7,20($s0)
    # Line 774
    bnez	$v1,.L0d9f2364
    # Line 777
    sltu	$ra,$ra,$v0
    lw	$s0,12($s0)
.L0d9f218c:
    bnezl	$a0,.L0d9f22a0
    # Line 774
    lw	$ra,4($s0)
.L0d9f2194:
    sd	$s4,16($sp)
    sd	$s6,24($sp)
    # Line 787
    move	$s1,$s2
    sd	$s3,32($sp)
.L0d9f21a4:
    # Line 796
    lw	$s3,0($s0)
    # Line 798
    la	$s6,sub_0d9f0000
    # Line 795
    move	$s4,$a2
    # Line 798
    addiu	$s1,$s1,-1
    beqz	$s3,.L0d9f2214
    addiu	$s6,$s6,7248
    nop
.L0d9f21c0:
    lw	$t8,20($s3)
    la	$s0,sub_0d9f0000
    beqz	$t8,.L0d9f231c
    addiu	$s0,$s0,7856
    # Line 811
    move	$t9,$s6
    move	$a0,$s8
    bal __glNamesFreeArray
    move	$a1,$s7
    move	$s5,$v0
    # Line 812
    move	$a0,$s3
    move	$a1,$v0
    move	$t9,$s0
    move	$a2,$s4
    move	$a3,$s1
    bal __glNamesFreeArray
    move	$a4,$s2
    # Line 819
    move	$s0,$s3
    # Line 820
    lw	$s3,0($s3)
    # Line 818
    move	$s4,$s5
    # Line 821
    bnez	$s3,.L0d9f21c0
    addiu	$s1,$s1,-1
.L0d9f2214:
    # Line 830
    move	$t9,$s6
    move	$a0,$s8
    bal __glNamesFreeArray
    move	$a1,$s7
    # Line 831
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 830
    move	$s5,$v0
    ld	$s1,8($sp)
    # Line 831
    move	$a0,$v0
    addiu	$t9,$t9,8288
    ld	$s6,24($sp)
    move	$a1,$s0
    move	$a2,$s4
    ld	$s3,32($sp)
    bal __glNamesFreeArray
    move	$a3,$s2
    ld	$s4,16($sp)
    # Line 834
    ld	$s0,64($sp)
    ld	$s2,72($sp)
    # Line 832
    sw	$s5,0($s7)
    # Line 834
    ld	$s5,40($sp)
    # Line 833
    lw	$s8,4($s7)
    ld	$ra,0($sp)
    addiu	$s8,$s8,1
    sw	$s8,4($s7)
    # Line 834
    ld	$s7,56($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
    nop
    nop
.L0d9f2290:
    # Line 777
    lw	$s0,12($s0)
.L0d9f2294:
    # Line 787
    beq	$s1,$s2,.L0d9f2194
    nop
    # Line 774
    lw	$ra,4($s0)
.L0d9f22a0:
    # Line 777
    lw	$a0,8($s0)
    # Line 774
    sltu	$ra,$ra,$v0
    # Line 787
    addiu	$s1,$s1,2
    # Line 779
    lw	$a7,20($s0)
    # Line 774
    bnez	$ra,.L0d9f22e4
    # Line 777
    sltu	$a0,$a0,$v0
    lw	$s0,12($s0)
.L0d9f22bc:
    # Line 774
    lw	$at,4($s0)
.L0d9f22c0:
    # Line 777
    lw	$v1,8($s0)
    # Line 774
    sltu	$at,$at,$v0
    # Line 779
    lw	$a7,20($s0)
    # Line 774
    beqz	$at,.L0d9f2290
    # Line 777
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0d9f2304
    nop
    # Line 779
    b	.L0d9f2294
    lw	$s0,16($s0)
.L0d9f22e4:
    # Line 777
    bnez	$a0,.L0d9f22f4
    nop
    # Line 779
    b	.L0d9f22bc
    lw	$s0,16($s0)
.L0d9f22f4:
    beqz	$a7,.L0d9f2314
    # Line 784
    lw	$s0,16($s0)
    # Line 782
    b	.L0d9f22bc
    move	$s0,$a7
.L0d9f2304:
    # Line 779
    beqz	$a7,.L0d9f2294
    # Line 784
    lw	$s0,16($s0)
    # Line 782
    b	.L0d9f2294
    move	$s0,$a7
.L0d9f2314:
    b	.L0d9f22c0
    # Line 774
    lw	$at,4($s0)
.L0d9f231c:
    # Line 803
    ld	$ra,0($sp)
    ld	$s0,64($sp)
    # Line 802
    move	$a2,$s1
    # Line 803
    ld	$s1,8($sp)
    # Line 802
    move	$a3,$s2
    # Line 803
    ld	$s2,72($sp)
    # Line 802
    move	$a0,$s3
    # Line 803
    ld	$s3,32($sp)
    # Line 802
    move	$a1,$s4
    # Line 803
    ld	$s4,16($sp)
    # Line 802
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 803
    ld	$s5,40($sp)
    ld	$s6,24($sp)
    # Line 802
    addiu	$t9,$t9,7616
    # Line 803
    ld	$s7,56($sp)
    ld	$s8,48($sp)
    bgezl	$zero,__glNamesFreeArray
    addiu	$sp,$sp,80
.L0d9f2364:
    # Line 777
    bnez	$ra,.L0d9f239c
    nop
    # Line 779
    b	.L0d9f218c
    lw	$s0,16($s0)
.L0d9f2374:
    # Line 770
    sw	$a2,0($a1)
    # Line 769
    sw	$zero,4($a1)
    # Line 834
    ld	$s0,64($sp)
    ld	$s2,72($sp)
    move	$ra,$ra
    move	$s5,$s5
    ld	$s7,56($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f239c:
    # Line 779
    beqz	$a7,.L0d9f23c0
    nop
    # Line 782
    b	.L0d9f218c
    move	$s0,$a7
.L0d9f23ac:
    sd	$s4,16($sp)
    sd	$s6,24($sp)
    # Line 787
    move	$s1,$zero
    b	.L0d9f21a4
    sd	$s3,32($sp)
.L0d9f23c0:
    b	.L0d9f218c
    # Line 784
    lw	$s0,16($s0)
.end insertLeaf

# Function: deleteLeaf
# Declared: Line 840 (Source lines: 842-909)
# Address: 0x0d9f23d0 - 0x0d9f2608 (Size: 568 bytes, Frame: 224)
.ent deleteLeaf
deleteLeaf:
    # Line 842
    addiu	$sp,$sp,-96
    sd	$a0,80($sp)
    sd	$s0,64($sp)
    # Line 850
    lw	$s0,0($a2)
    # Line 842
    sd	$s2,72($sp)
    sd	$s7,56($sp)
    move	$s7,$a1
    # Line 850
    bnez	$s0,.L0d9f243c
    # Line 849
    lw	$s2,4($a1)
    # Line 853
    sw	$zero,0($a1)
    # Line 909
    ld	$s0,64($sp)
    ld	$s2,72($sp)
    ld	$s7,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f240c:
    ld	$s0,64($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,32($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    ld	$s6,0($sp)
    ld	$s7,56($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f243c:
    # Line 857
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$a3,$s2,-1
    sd	$a3,88($sp)
    addiu	$t9,$t9,7376
    sd	$ra,48($sp)
    move	$a0,$a1
    move	$a1,$s0
    bal __glNamesFreeArray
    sd	$s5,40($sp)
    sd	$s1,24($sp)
    sd	$s4,16($sp)
    # Line 862
    ld	$v0,88($sp)
    lw	$ra,16($s0)
    sd	$s6,0($sp)
    move	$s6,$s2
    sd	$s3,32($sp)
    addiu	$s3,$v0,-1
    sd	$s8,8($sp)
    bnez	$ra,.L0d9f240c
    move	$s5,$v0
    sd	$s1,24($sp)
    sd	$s4,16($sp)
    b	.L0d9f24dc
    sd	$s8,8($sp)
.L0d9f249c:
    # Line 891
    lw	$at,20($s0)
    bnez	$at,.L0d9f2560
    # Line 896
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 904
    # lw $t9, -32700($gp) # &sub_0d9f0000
    move	$a0,$s0
    addiu	$t9,$t9,7616
    move	$a1,$s4
    move	$a2,$s5
    bal __glNamesFreeArray
    move	$a3,$s2
    # Line 907
    lw	$ra,16($s1)
    move	$s0,$s1
    # Line 906
    addiu	$s3,$s3,-1
    addiu	$s6,$s6,-1
    # Line 907
    bnez	$ra,.L0d9f240c
    # Line 906
    addiu	$s5,$s5,-1
.L0d9f24dc:
    # Line 868
    lw	$s1,0($s0)
    beqz	$s1,.L0d9f25dc
    # Line 865
    lw	$s4,12($s0)
    # Line 882
    # lw $t9, -32700($gp) # &sub_0d9f0000
    move	$a0,$s7
    addiu	$t9,$t9,7376
    move	$a1,$s1
    move	$a2,$s0
    bal __glNamesFreeArray
    move	$a3,$s3
    # Line 883
    la	$s8,sub_0d9f0000
    addiu	$s8,$s8,5376
    move	$t9,$s8
    ld	$a0,80($sp)
    bal __glNamesNewArray
    move	$a1,$s0
    # Line 886
    la	$s0,sub_0d9f0000
    addiu	$s0,$s0,6688
    move	$t9,$s0
    move	$a0,$s4
    move	$a1,$s6
    bal __glNamesFreeArray
    move	$a2,$s2
    # Line 887
    lw	$a1,16($s1)
    # Line 886
    move	$s8,$v0
    # Line 887
    lw	$t8,4($s1)
    beqz	$a1,.L0d9f2558
    # Line 891
    move	$s0,$a1
    # Line 887
    sltu	$t8,$t8,$v0
    bnez	$t8,.L0d9f249c
    nop
.L0d9f2558:
    # Line 889
    b	.L0d9f249c
    lw	$s0,12($s1)
.L0d9f2560:
    # Line 896
    addiu	$t9,$t9,7248
    ld	$a0,80($sp)
    bal __glNamesFreeArray
    move	$a1,$s7
    # Line 897
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 896
    move	$s8,$v0
    # Line 897
    move	$a0,$s0
    move	$a1,$v0
    addiu	$t9,$t9,7856
    move	$a2,$s4
    move	$a3,$s5
    bal __glNamesFreeArray
    move	$a4,$s2
    # Line 900
    ld	$ra,48($sp)
    ld	$s0,64($sp)
    # Line 899
    move	$a0,$s1
    # Line 900
    ld	$s1,24($sp)
    # Line 899
    move	$a3,$s2
    # Line 900
    ld	$s2,72($sp)
    # Line 899
    move	$a2,$s3
    # Line 900
    ld	$s3,32($sp)
    ld	$s4,16($sp)
    # Line 899
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 900
    ld	$s5,40($sp)
    ld	$s6,0($sp)
    # Line 899
    addiu	$t9,$t9,7616
    # Line 900
    ld	$s7,56($sp)
    # Line 899
    move	$a1,$s8
    # Line 900
    ld	$s8,8($sp)
    bgezl	$zero,__glNamesFreeArray
    addiu	$sp,$sp,96
.L0d9f25dc:
    # Line 875
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5376
    ld	$a0,80($sp)
    bal __glNamesNewArray
    move	$a1,$s0
    # Line 876
    sw	$s4,0($s7)
    # Line 877
    sw	$zero,0($s4)
    # Line 878
    lw	$ra,4($s7)
    addiu	$ra,$ra,-1
    b	.L0d9f240c
    sw	$ra,4($s7)
.end deleteLeaf

# Function: resizeLeaf
# Declared: Line 916 (Source lines: 918-947)
# Address: 0x0d9f2610 - 0x0d9f2780 (Size: 368 bytes, Frame: 48)
.ent resizeLeaf
resizeLeaf:
    # Line 922
    lw	$a5,4($a1)
    # Line 923
    lw	$at,8($a1)
    # Line 925
    sw	$a2,4($a1)
    # Line 918
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    # Line 925
    bne	$a3,$at,.L0d9f2740
    # Line 918
    move	$s1,$a2
.L0d9f2634:
    # Line 928
    lw	$v0,12($s0)
    # Line 936
    move	$a2,$zero
    subu	$a6,$s1,$a5
    subu	$a7,$a3,$s1
    addiu	$a7,$a7,1
    # Line 928
    beqz	$v0,.L0d9f2730
    # Line 936
    sll	$a1,$a7,0x2
    andi	$a5,$a7,0x3
    beqz	$a6,.L0d9f2718
    # Line 946
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 936
    beqz	$a7,.L0d9f2714
    sll	$a3,$a6,0x2
    beqz	$a5,.L0d9f2690
    sra	$t2,$a7,0x2
.L0d9f266c:
    # Line 943
    lw	$t1,12($s0)
    addiu	$a5,$a5,-1
    addu	$t0,$t1,$a3
    addu	$t1,$t1,$a2
    # Line 939
    addiu	$a2,$a2,4
    # Line 943
    lw	$t0,0($t0)
    # Line 939
    addiu	$a3,$a3,4
    bnez	$a5,.L0d9f266c
    # Line 943
    sw	$t0,0($t1)
.L0d9f2690:
    beqz	$t2,.L0d9f2714
    nop
    nop
    nop
.L0d9f26a0:
    lw	$v0,12($s0)
    addu	$at,$v0,$a3
    addu	$v0,$v0,$a2
    lw	$at,0($at)
    sw	$at,0($v0)
    lw	$at,12($s0)
    # Line 939
    addiu	$t9,$a3,4
    addiu	$v0,$a2,4
    # Line 943
    addu	$t9,$at,$t9
    addu	$at,$at,$v0
    lw	$t9,0($t9)
    sw	$t9,0($at)
    lw	$t9,12($s0)
    # Line 939
    addiu	$t8,$a3,8
    addiu	$at,$a2,8
    # Line 943
    addu	$t8,$t9,$t8
    addu	$t9,$t9,$at
    lw	$t8,0($t8)
    sw	$t8,0($t9)
    lw	$t8,12($s0)
    # Line 939
    addiu	$t9,$a2,12
    addiu	$t3,$a3,12
    addiu	$a2,$a2,16
    # Line 943
    addu	$t3,$t8,$t3
    addu	$t8,$t8,$t9
    lw	$t3,0($t3)
    # Line 939
    addiu	$a3,$a3,16
    bne	$a2,$a1,.L0d9f26a0
    # Line 943
    sw	$t3,0($t8)
.L0d9f2714:
    # Line 946
    # lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f2718:
    addiu	$t9,$t9,7024
    move	$a1,$s0
    # Line 947
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    bgezl	$zero,__glNamesFreeArray
    addiu	$sp,$sp,48
.L0d9f2730:
    # Line 930
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f2740:
    sd	$a5,32($sp)
    sd	$a3,0($sp)
    # Line 928
    # lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$a0,24($sp)
    addiu	$t9,$t9,6768
    ld	$at,0($sp)
    move	$a0,$s0
    sd	$ra,40($sp)
    # Line 927
    sw	$at,8($s0)
    # Line 928
    bal __glNamesFreeArray
    move	$a1,$at
    ld	$ra,40($sp)
    ld	$a3,0($sp)
    ld	$a5,32($sp)
    b	.L0d9f2634
    ld	$a0,24($sp)
.end resizeLeaf

# Function: prevLeaf
# Declared: Line 952 (Source lines: 957-1004)
# Address: 0x0d9f2780 - 0x0d9f2890 (Size: 272 bytes, Frame: 0)
.ent prevLeaf
prevLeaf:
    # Line 957
    lw	$a3,0($a0)
    # Line 960
    li	$a2,-1
    # Line 957
    beqz	$a3,.L0d9f286c
    # Line 958
    move	$v0,$zero
.L0d9f2790:
    # Line 960
    lw	$at,20($a3)
    beq	$at,$a0,.L0d9f27b8
    # Line 970
    lw	$v0,16($a3)
    beq	$v0,$a0,.L0d9f2858
    # Line 984
    move	$a0,$a3
    # Line 985
    lw	$a3,0($a3)
    # Line 986
    bnez	$a3,.L0d9f2790
    addiu	$a2,$a2,-1
.L0d9f27b0:
    # Line 1004
    jr	$ra
    # Line 988
    move	$v0,$zero
.L0d9f27b8:
    # Line 968
    lw	$a3,16($a3)
    # Line 988
    beqz	$a3,.L0d9f27b0
    # Line 969
    addiu	$a2,$a2,1
.L0d9f27c4:
    # Line 988
    beqz	$a2,.L0d9f27f4
    negu	$a4,$a2
    andi	$v1,$a4,0x1
    beqz	$v1,.L0d9f27ec
    sra	$a0,$a4,0x1
    lw	$a0,20($a3)
    beqz	$a0,.L0d9f2874
    # Line 1001
    addiu	$a2,$a2,1
    # Line 995
    move	$a3,$a0
.L0d9f27e8:
    sra	$a0,$a4,0x1
.L0d9f27ec:
    bnezl	$a0,.L0d9f2820
    # Line 988
    lw	$a0,20($a3)
.L0d9f27f4:
    # Line 1004
    jr	$ra
    move	$v0,$a3
    nop
.L0d9f2800:
    # Line 995
    move	$a3,$a0
.L0d9f2804:
    # Line 988
    lw	$a0,20($a3)
.L0d9f2808:
    beqz	$a0,.L0d9f283c
    nop
    # Line 995
    move	$a3,$a0
.L0d9f2814:
    # Line 1001
    beqz	$a2,.L0d9f27f4
    nop
    # Line 988
    lw	$a0,20($a3)
.L0d9f2820:
    bnez	$a0,.L0d9f2800
    # Line 1001
    addiu	$a2,$a2,2
    # Line 995
    lw	$a0,16($a3)
    beqz	$a0,.L0d9f2850
    # Line 999
    lw	$a3,12($a3)
    # Line 997
    b	.L0d9f2804
    move	$a3,$a0
.L0d9f283c:
    # Line 995
    lw	$a0,16($a3)
    beqz	$a0,.L0d9f2814
    # Line 999
    lw	$a3,12($a3)
    # Line 997
    b	.L0d9f2814
    move	$a3,$a0
.L0d9f2850:
    b	.L0d9f2808
    # Line 988
    lw	$a0,20($a3)
.L0d9f2858:
    # Line 973
    lw	$a3,12($a3)
    # Line 988
    bnez	$a3,.L0d9f27c4
    # Line 974
    addiu	$a2,$a2,1
    b	.L0d9f27b0
    nop
.L0d9f286c:
    # Line 1004
    jr	$ra
    nop
.L0d9f2874:
    # Line 995
    lw	$a0,16($a3)
    beqz	$a0,.L0d9f2888
    nop
    # Line 997
    b	.L0d9f27e8
    move	$a3,$a0
.L0d9f2888:
    b	.L0d9f27e8
    # Line 999
    lw	$a3,12($a3)
.end prevLeaf

# Function: firstLeaf
# Declared: Line 1010 (Source lines: 1015-1027)
# Address: 0x0d9f2890 - 0x0d9f28cc (Size: 60 bytes, Frame: 0)
.ent firstLeaf
firstLeaf:
    # Line 1017
    lw	$a2,0($a0)
    # Line 1020
    move	$v0,$zero
    # Line 1017
    beqz	$a2,.L0d9f28c4
    # Line 1015
    lw	$a3,4($a0)
    # Line 1020
    beqz	$a3,.L0d9f28bc
    move	$a1,$zero
    nop
    nop
.L0d9f28b0:
    # Line 1025
    addiu	$a1,$a1,1
    bne	$a3,$a1,.L0d9f28b0
    # Line 1024
    lw	$a2,12($a2)
.L0d9f28bc:
    # Line 1027
    jr	$ra
    move	$v0,$a2
.L0d9f28c4:
    jr	$ra
    nop
.end firstLeaf

# Function: nextLeaf
# Declared: Line 1033 (Source lines: 1038-1084)
# Address: 0x0d9f28d0 - 0x0d9f2968 (Size: 152 bytes, Frame: 0)
.ent nextLeaf
nextLeaf:
    # Line 1038
    lw	$a3,0($a0)
    # Line 1041
    li	$a2,-1
    # Line 1038
    beqz	$a3,.L0d9f2960
    # Line 1039
    move	$v0,$zero
.L0d9f28e0:
    # Line 1041
    lw	$at,12($a3)
    beq	$at,$a0,.L0d9f294c
    # Line 1051
    lw	$v0,16($a3)
    bne	$v0,$a0,.L0d9f2938
    # Line 1070
    move	$a0,$a3
    # Line 1051
    lw	$a0,20($a3)
    beqz	$a0,.L0d9f2934
    nop
    # Line 1058
    move	$a3,$a0
    # Line 1074
    beqz	$a0,.L0d9f2944
    # Line 1059
    addiu	$a2,$a2,1
.L0d9f290c:
    # Line 1074
    beqz	$a2,.L0d9f292c
    nop
    nop
    nop
    nop
.L0d9f2920:
    # Line 1081
    addiu	$a2,$a2,1
    bnez	$a2,.L0d9f2920
    # Line 1080
    lw	$a3,12($a3)
.L0d9f292c:
    # Line 1084
    jr	$ra
    move	$v0,$a3
.L0d9f2934:
    # Line 1070
    move	$a0,$a3
.L0d9f2938:
    # Line 1071
    lw	$a3,0($a3)
    # Line 1072
    bnez	$a3,.L0d9f28e0
    addiu	$a2,$a2,-1
.L0d9f2944:
    # Line 1084
    jr	$ra
    # Line 1074
    move	$v0,$zero
.L0d9f294c:
    # Line 1049
    lw	$a3,16($a3)
    # Line 1074
    bnez	$a3,.L0d9f290c
    # Line 1050
    addiu	$a2,$a2,1
    b	.L0d9f2944
    nop
.L0d9f2960:
    # Line 1084
    jr	$ra
    nop
.end nextLeaf

# Function: mergeLeaves
# Declared: Line 1093 (Source lines: 1095-1172)
# Address: 0x0d9f2970 - 0x0d9f2cf0 (Size: 896 bytes, Frame: 192)
.ent mergeLeaves
mergeLeaves:
    # Line 1095
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    lw	$a6,4($a2)
    lw	$at,12($a1)
    move	$v0,$a0
    lw	$a7,4($a1)
    move	$s0,$a1
    sd	$s1,48($sp)
    move	$s1,$a2
    bnez	$at,.L0d9f29d4
    sltu	$a5,$a7,$a6
    bnez	$a5,.L0d9f2ca8
    sd	$ra,56($sp)
    # Line 1107
    sw	$a6,4($a1)
.L0d9f29a8:
    # Line 1109
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5296
    move	$a0,$v0
    bal __glNamesNewArray
    move	$a1,$s1
    ld	$ra,56($sp)
    # Line 1110
    li	$v0,1
    # Line 1172
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9f29d4:
    sd	$ra,56($sp)
    # Line 1110
    lw	$a2,8($a1)
    lw	$t0,8($s1)
    sd	$a0,0($sp)
    subu	$v1,$a2,$a7
    subu	$at,$t0,$a6
    addiu	$v1,$v1,1
    sd	$v1,32($sp)
    addiu	$at,$at,1
    beqz	$a5,.L0d9f2b34
    sd	$at,24($sp)
    # Line 1126
    # lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$a2,8($sp)
    addiu	$t9,$t9,7024
    ld	$a0,0($sp)
    bal __glNamesFreeArray
    # Line 1125
    sw	$t0,8($s0)
    # Line 1126
    beqz	$v0,.L0d9f2ccc
    # Line 1135
    ld	$ra,24($sp)
    beqz	$ra,.L0d9f2b04
    move	$v0,$zero
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    andi	$a5,$a2,0x3
    sll	$a1,$a1,0x2
    move	$a7,$a2
    beqz	$a5,.L0d9f2a6c
    sll	$a2,$a2,0x2
.L0d9f2a44:
    # Line 1136
    lw	$a3,12($s1)
    lw	$a4,12($s0)
    addiu	$a5,$a5,-1
    addu	$a3,$a3,$v0
    # Line 1135
    addiu	$v0,$v0,4
    # Line 1136
    addu	$a4,$a4,$a1
    lw	$a3,0($a3)
    # Line 1135
    addiu	$a1,$a1,4
    bnez	$a5,.L0d9f2a44
    # Line 1136
    sw	$a3,0($a4)
.L0d9f2a6c:
    sra	$a4,$a7,0x2
    beqz	$a4,.L0d9f2b04
    nop
    nop
    nop
.L0d9f2a80:
    lw	$a0,12($s1)
    lw	$a3,12($s0)
    addu	$a0,$a0,$v0
    addu	$a3,$a3,$a1
    lw	$a0,0($a0)
    sw	$a0,0($a3)
    lw	$t9,12($s1)
    # Line 1135
    addiu	$v1,$v0,4
    # Line 1136
    lw	$ra,12($s0)
    # Line 1135
    addiu	$at,$a1,4
    # Line 1136
    addu	$t9,$t9,$v1
    addu	$ra,$ra,$at
    lw	$t9,0($t9)
    sw	$t9,0($ra)
    lw	$t1,12($s1)
    # Line 1135
    addiu	$t8,$v0,8
    # Line 1136
    lw	$t2,12($s0)
    # Line 1135
    addiu	$t3,$a1,8
    # Line 1136
    addu	$t1,$t1,$t8
    addu	$t2,$t2,$t3
    lw	$t1,0($t1)
    sw	$t1,0($t2)
    lw	$a5,12($s1)
    # Line 1135
    addiu	$t0,$v0,12
    addiu	$v0,$v0,16
    # Line 1136
    lw	$a6,12($s0)
    # Line 1135
    addiu	$a7,$a1,12
    # Line 1136
    addu	$a5,$a5,$t0
    addu	$a6,$a6,$a7
    lw	$a5,0($a5)
    # Line 1135
    addiu	$a1,$a1,16
    bne	$v0,$a2,.L0d9f2a80
    # Line 1136
    sw	$a5,0($a6)
.L0d9f2b04:
    # Line 1139
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5296
    ld	$a0,0($sp)
    bal __glNamesNewArray
    move	$a1,$s1
    # Line 1141
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6768
    move	$a0,$s0
    bal __glNamesFreeArray
    lw	$a1,8($s0)
    b	.L0d9f2c80
    nop
.L0d9f2b34:
    # Line 1152
    # lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$t0,16($sp)
    addiu	$t9,$t9,7024
    ld	$a0,0($sp)
    move	$a1,$s1
    bal __glNamesFreeArray
    # Line 1151
    sw	$a2,8($s1)
    # Line 1152
    beqz	$v0,.L0d9f2ce0
    ld	$ra,56($sp)
    # Line 1161
    ld	$at,32($sp)
    beqz	$at,.L0d9f2c44
    move	$v0,$zero
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    andi	$a5,$a2,0x3
    sll	$a1,$a1,0x2
    move	$a6,$a2
    beqz	$a5,.L0d9f2ba8
    sll	$a2,$a2,0x2
.L0d9f2b80:
    # Line 1162
    lw	$a3,12($s0)
    lw	$a4,12($s1)
    addiu	$a5,$a5,-1
    addu	$a3,$a3,$v0
    # Line 1161
    addiu	$v0,$v0,4
    # Line 1162
    addu	$a4,$a4,$a1
    lw	$a3,0($a3)
    # Line 1161
    addiu	$a1,$a1,4
    bnez	$a5,.L0d9f2b80
    # Line 1162
    sw	$a3,0($a4)
.L0d9f2ba8:
    sra	$a4,$a6,0x2
    beqz	$a4,.L0d9f2c44
    nop
    nop
    nop
    nop
.L0d9f2bc0:
    lw	$a3,12($s0)
    lw	$a4,12($s1)
    addu	$a3,$a3,$v0
    addu	$a4,$a4,$a1
    lw	$a3,0($a3)
    sw	$a3,0($a4)
    lw	$t9,12($s0)
    # Line 1161
    addiu	$a0,$v0,4
    # Line 1162
    lw	$at,12($s1)
    # Line 1161
    addiu	$v1,$a1,4
    # Line 1162
    addu	$t9,$t9,$a0
    addu	$at,$at,$v1
    lw	$t9,0($t9)
    sw	$t9,0($at)
    lw	$t1,12($s0)
    # Line 1161
    addiu	$t8,$v0,8
    # Line 1162
    lw	$t2,12($s1)
    # Line 1161
    addiu	$t3,$a1,8
    # Line 1162
    addu	$t1,$t1,$t8
    addu	$t2,$t2,$t3
    lw	$t1,0($t1)
    sw	$t1,0($t2)
    lw	$a5,12($s0)
    # Line 1161
    addiu	$t0,$v0,12
    addiu	$v0,$v0,16
    # Line 1162
    lw	$a6,12($s1)
    # Line 1161
    addiu	$a7,$a1,12
    # Line 1162
    addu	$a5,$a5,$t0
    addu	$a6,$a6,$a7
    lw	$a5,0($a5)
    # Line 1161
    addiu	$a1,$a1,16
    bne	$v0,$a2,.L0d9f2bc0
    # Line 1162
    sw	$a5,0($a6)
.L0d9f2c44:
    # Line 1165
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5280
    ld	$a0,0($sp)
    bal __glNamesNewArray
    lw	$a1,12($s0)
    # Line 1170
    ld	$a0,0($sp)
    # Line 1166
    lw	$ra,4($s1)
    # Line 1170
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1166
    sw	$ra,4($s0)
    # Line 1168
    lw	$ra,12($s1)
    # Line 1170
    addiu	$t9,$t9,5296
    # Line 1168
    sw	$ra,12($s0)
    # Line 1170
    move	$a1,$s1
    bal __glNamesNewArray
    # Line 1169
    sw	$zero,12($s1)
.L0d9f2c80:
    ld	$ra,56($sp)
    # Line 1172
    li	$v0,1
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9f2c98:
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9f2ca8:
    # Line 1105
    # lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$a0,0($sp)
    addiu	$t9,$t9,6768
    # Line 1104
    lw	$a1,8($a2)
    # Line 1105
    move	$a0,$s0
    bal __glNamesFreeArray
    # Line 1104
    sw	$a1,8($s0)
    b	.L0d9f29a8
    ld	$v0,0($sp)
.L0d9f2ccc:
    ld	$ra,56($sp)
    # Line 1132
    ld	$at,8($sp)
    # Line 1133
    move	$v0,$zero
    b	.L0d9f2c98
    # Line 1132
    sw	$at,8($s0)
.L0d9f2ce0:
    # Line 1158
    ld	$v0,16($sp)
    sw	$v0,8($s1)
    # Line 1159
    b	.L0d9f2c98
    move	$v0,$zero
.end mergeLeaves

# Function: mergeLeaf
# Declared: Line 1178 (Source lines: 1180-1222)
# Address: 0x0d9f2cf0 - 0x0d9f2eac (Size: 444 bytes, Frame: 48)
.ent mergeLeaf
mergeLeaf:
    # Line 1180
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1183
    # lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$ra,24($sp)
    # Line 1180
    sd	$s0,32($sp)
    # Line 1183
    addiu	$t9,$t9,10448
    # Line 1180
    move	$s0,$a2
    sd	$a0,16($sp)
    # Line 1183
    move	$a0,$a2
    bal __glNamesFreeArray
    sd	$s1,0($sp)
    beqz	$v0,.L0d9f2d6c
    move	$s1,$v0
    lw	$at,8($s0)
    lw	$ra,4($v0)
    # Line 1187
    lw	$a2,12($s0)
    # Line 1183
    addiu	$at,$at,1
    # Line 1187
    lw	$v0,12($v0)
    # Line 1183
    bne	$ra,$at,.L0d9f2d6c
    # Line 1187
    lw	$v1,4($s0)
    beqz	$a2,.L0d9f2e14
    nop
    beqz	$v0,.L0d9f2d6c
    nop
.L0d9f2d50:
    beqz	$a2,.L0d9f2d6c
    nop
    lw	$v0,8($s1)
    subu	$v0,$v0,$v1
    sltiu	$v0,$v0,1024
    bnez	$v0,.L0d9f2e1c
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f2d6c:
    # Line 1203
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,10112
    bal __glNamesFreeArray
    move	$a0,$s0
    beqz	$v0,.L0d9f2e00
    move	$s1,$v0
    lw	$at,8($v0)
    lw	$ra,4($s0)
    addiu	$at,$at,1
    # Line 1207
    lw	$a2,12($s0)
    # Line 1203
    bne	$ra,$at,.L0d9f2e00
    # Line 1207
    lw	$v0,12($v0)
    beqz	$v0,.L0d9f2e74
    nop
    beqz	$a2,.L0d9f2e04
    # Line 1222
    ld	$ra,24($sp)
.L0d9f2dac:
    # Line 1207
    beqz	$v0,.L0d9f2e04
    # Line 1222
    ld	$ra,24($sp)
    # Line 1207
    lw	$v1,4($s1)
    lw	$v0,8($s0)
    subu	$v0,$v0,$v1
    sltiu	$v0,$v0,1024
    beqz	$v0,.L0d9f2e04
    # Line 1222
    ld	$ra,24($sp)
    # Line 1211
    # lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f2dd0:
    addiu	$t9,$t9,9168
    ld	$a0,16($sp)
    ld	$a1,8($sp)
    bal __glNamesFreeArray
    move	$a2,$s1
    # Line 1212
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,10608
    move	$a1,$s0
    ld	$a0,16($sp)
    bal __glNamesFreeArray
    move	$a2,$s1
    beqz	$v0,.L0d9f2e84
.L0d9f2e00:
    # Line 1222
    ld	$ra,24($sp)
.L0d9f2e04:
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f2e14:
    # Line 1187
    bnez	$v0,.L0d9f2d50
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f2e1c:
    addiu	$t9,$t9,9168
    # Line 1191
    ld	$a0,16($sp)
    ld	$a1,8($sp)
    bal __glNamesFreeArray
    move	$a2,$s1
    # Line 1192
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,10608
    move	$a1,$s0
    ld	$a0,16($sp)
    bal __glNamesFreeArray
    move	$a2,$s1
    bnez	$v0,.L0d9f2d6c
    # Line 1196
    ld	$a0,16($sp)
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$a1,8($sp)
    # Line 1197
    ld	$ra,24($sp)
    # Line 1196
    addiu	$t9,$t9,8480
    # Line 1197
    ld	$s0,32($sp)
    # Line 1196
    move	$a2,$s1
    # Line 1197
    ld	$s1,0($sp)
    bgezl	$zero,__glNamesFreeArray
    addiu	$sp,$sp,48
.L0d9f2e74:
    # Line 1207
    bnez	$a2,.L0d9f2dac
    nop
    b	.L0d9f2dd0
    # Line 1211
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f2e84:
    # Line 1216
    ld	$a0,16($sp)
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$a1,8($sp)
    # Line 1217
    ld	$ra,24($sp)
    # Line 1216
    addiu	$t9,$t9,8480
    # Line 1217
    ld	$s0,32($sp)
    # Line 1216
    move	$a2,$s1
    # Line 1217
    ld	$s1,0($sp)
    bgezl	$zero,__glNamesFreeArray
    addiu	$sp,$sp,48
.end mergeLeaf

# Function: __glNamesNewData
# Declared: Line 1224 (Source lines: 1226-1383)
# Address: 0x0d9f2eb0 - 0x0d9f33a8 (Size: 1272 bytes, Frame: 240)
.globl __glNamesNewData
.ent __glNamesNewData
__glNamesNewData:
    # Line 1226
    addiu	$sp,$sp,-112
    sd	$s3,72($sp)
    sd	$s1,56($sp)
    sd	$s4,80($sp)
    li	$v1,1
    sd	$ra,64($sp)
    lui	$ra,0x6
    move	$s4,$a2
    lw	$v0,12($a1)
    addiu	$ra,$ra,-8484
    # Line 1235
    li	$a2,1
    sd	$gp,88($sp)
    # Line 1226
    addu	$gp,$t9,$ra
    move	$s1,$a3
    lui	$at,0x4000
    # Line 1235
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1226
    move	$s3,$a0
    ori	$at,$at,0x1
    lbu	$v0,20($v0)
    sd	$s2,96($sp)
    move	$s2,$a1
    # Line 1235
    addiu	$t9,$t9,6000
    sd	$s0,104($sp)
    move	$a1,$s4
    movz	$at,$v1,$v0
    move	$a0,$s2
    bal __glNamesFreeArray
    sd	$at,48($sp)
    # Line 1241
    beqz	$v0,.L0d9f2fb0
    # Line 1235
    move	$s0,$v0
    # Line 1241
    lw	$at,12($v0)
    beqz	$at,.L0d9f2fb0
    nop
.L0d9f2f34:
    # Line 1245
    beqz	$s0,.L0d9f3254
    # Line 1258
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1274
    lw	$v0,12($s0)
    beqz	$v0,.L0d9f3020
    nop
    # Line 1279
    lw	$s2,4($s0)
    lw	$a2,16($s0)
    subu	$s2,$s4,$s2
    sll	$s2,$s2,0x2
    lw	$v1,4($a2)
    addu	$a1,$v0,$s2
    lw	$a1,0($a1)
    bne	$v1,$a1,.L0d9f2ffc
    nop
.L0d9f2f6c:
    # Line 1283
    beqz	$s1,.L0d9f2f88
    nop
    # Line 1286
    lw	$t9,12($s0)
    # Line 1287
    ld	$t8,48($sp)
    # Line 1286
    addu	$t9,$t9,$s2
    sw	$s1,0($t9)
    # Line 1287
    sw	$t8,0($s1)
.L0d9f2f88:
    ld	$s0,104($sp)
    # Line 1289
    li	$v0,1
.L0d9f2f90:
    # Line 1383
    ld	$gp,88($sp)
    ld	$s1,56($sp)
    ld	$ra,64($sp)
    ld	$s2,96($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9f2fb0:
    # Line 1245
    lw	$ra,16($s2)
    li	$at,16
    bne	$ra,$at,.L0d9f2fd0
    # Line 1247
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1245
    lw	$v0,20($s2)
    li	$v1,3
    beq	$v0,$v1,.L0d9f2f34
    # Line 1247
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f2fd0:
    addiu	$t9,$t9,6384
    move	$a0,$s3
    bal __glNamesFreeArray
    move	$a1,$s2
    bnez	$v0,.L0d9f2f34
    # Line 1248
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,104($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 1249
    b	.L0d9f2f90
    move	$v0,$zero
.L0d9f2ffc:
    # Line 1282
    lw	$t9,12($a2)
    jalr	$t9
    move	$a0,$s3
    # Line 1283
    lw	$ra,16($s0)
    lw	$at,12($s0)
    addu	$at,$at,$s2
    lw	$ra,4($ra)
    b	.L0d9f2f6c
    sw	$ra,0($at)
.L0d9f3020:
    # Line 1289
    beqz	$s1,.L0d9f32f8
    # Line 1295
    li	$v0,1
    # Line 1306
    lw	$a2,4($s0)
    # Line 1305
    addiu	$a0,$s4,-8
    # Line 1306
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d9f3048
    # Line 1305
    move	$v0,$a0
    # Line 1306
    sltu	$v1,$s4,$a0
    beqz	$v1,.L0d9f304c
    nop
.L0d9f3048:
    # Line 1307
    move	$v0,$a2
.L0d9f304c:
    # Line 1310
    lw	$a3,8($s0)
    # Line 1309
    addiu	$a1,$v0,15
    # Line 1310
    sltu	$a0,$a3,$a1
    bnez	$a0,.L0d9f306c
    # Line 1309
    move	$a0,$a1
    # Line 1310
    sltu	$a4,$a1,$v0
    beqz	$a4,.L0d9f3074
    # Line 1311
    subu	$a6,$v0,$a2
.L0d9f306c:
    move	$a0,$a3
    subu	$a6,$v0,$a2
.L0d9f3074:
    sltiu	$a6,$a6,16
    movn	$v0,$a2,$a6
    # Line 1315
    subu	$a5,$a3,$a0
    sltiu	$a5,$a5,16
    # Line 1318
    bne	$a2,$v0,.L0d9f30f8
    movn	$a0,$a3,$a5
    sd	$a0,32($sp)
    bne	$a3,$a0,.L0d9f3300
    sd	$v0,40($sp)
    # Line 1326
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6864
    move	$a0,$s3
    bal __glNamesFreeArray
    move	$a1,$s0
    beqz	$v0,.L0d9f336c
    # Line 1330
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1335
    lw	$v1,4($s0)
    lw	$v0,12($s0)
    # Line 1338
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1335
    subu	$v1,$s4,$v1
    sll	$v1,$v1,0x2
    # Line 1338
    ld	$at,48($sp)
    addiu	$t9,$t9,11504
    # Line 1335
    addu	$v0,$v0,$v1
    # Line 1338
    move	$a2,$s0
    move	$a1,$s2
    # Line 1335
    sw	$s1,0($v0)
    # Line 1338
    move	$a0,$s3
    bal __glNamesFreeArray
    # Line 1336
    sw	$at,0($s1)
    ld	$s0,104($sp)
    # Line 1339
    b	.L0d9f2f90
    li	$v0,1
.L0d9f30f8:
    sd	$v0,40($sp)
    sd	$a0,32($sp)
    # Line 1345
    bne	$a3,$a0,.L0d9f3130
    addiu	$a6,$v0,-1
    # Line 1352
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,9744
    move	$a0,$s3
    move	$a1,$s0
    bal __glNamesFreeArray
    move	$a3,$a6
    la	$v0,sub_0d9f0000
    ld	$s0,104($sp)
    b	.L0d9f31a0
    addiu	$v0,$v0,7120
.L0d9f3130:
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7120
    # Line 1357
    move	$a0,$s3
    sd	$a6,8($sp)
    bal __glNamesFreeArray
    move	$a1,$s2
    sd	$v0,0($sp)
    # Line 1361
    ld	$a3,8($sp)
    # Line 1359
    ld	$ra,32($sp)
    # Line 1361
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1359
    addiu	$ra,$ra,1
    sw	$ra,4($v0)
    # Line 1360
    lw	$ra,8($s0)
    # Line 1361
    addiu	$t9,$t9,9744
    move	$a1,$s0
    # Line 1360
    sw	$ra,8($v0)
    # Line 1361
    move	$a0,$s3
    bal __glNamesFreeArray
    lw	$a2,4($s0)
    # Line 1362
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,8480
    ld	$s0,104($sp)
    move	$a0,$s3
    move	$a1,$s2
    bal __glNamesFreeArray
    ld	$a2,0($sp)
    la	$v0,sub_0d9f0000
    addiu	$v0,$v0,7120
.L0d9f31a0:
    # Line 1364
    move	$t9,$v0
    move	$a0,$s3
    bal __glNamesFreeArray
    move	$a1,$s2
    sd	$v0,24($sp)
    # Line 1367
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$v1,40($sp)
    # Line 1366
    ld	$a0,32($sp)
    # Line 1367
    addiu	$t9,$t9,6864
    # Line 1364
    move	$a1,$v0
    # Line 1366
    sw	$a0,8($v0)
    # Line 1367
    move	$a0,$s3
    bal __glNamesFreeArray
    # Line 1365
    sw	$v1,4($v0)
    la	$a3,sub_0d9f0000
    # Line 1367
    beqz	$v0,.L0d9f332c
    addiu	$a3,$a3,8480
    # Line 1378
    ld	$a2,24($sp)
    lw	$a6,4($a2)
    lw	$a5,12($a2)
    subu	$a6,$s4,$a6
    sll	$a6,$a6,0x2
    # Line 1379
    ld	$a4,48($sp)
    # Line 1381
    move	$t9,$a3
    # Line 1378
    addu	$a5,$a5,$a6
    # Line 1381
    move	$a0,$s3
    # Line 1378
    sw	$s1,0($a5)
    # Line 1381
    move	$a1,$s2
    bal __glNamesFreeArray
    # Line 1379
    sw	$a4,0($s1)
    # Line 1382
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,11504
    move	$a0,$s3
    move	$a1,$s2
    bal __glNamesFreeArray
    ld	$a2,24($sp)
    # Line 1383
    ld	$gp,88($sp)
    ld	$s1,56($sp)
    ld	$ra,64($sp)
    ld	$s2,96($sp)
    li	$v0,1
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9f3254:
    # Line 1258
    addiu	$t9,$t9,7120
    move	$a0,$s3
    ld	$s0,104($sp)
    bal __glNamesFreeArray
    move	$a1,$s2
    sd	$v0,16($sp)
    # Line 1259
    sw	$s4,4($v0)
    beqz	$s1,.L0d9f32a4
    sw	$s4,8($v0)
    # Line 1261
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6864
    move	$a0,$s3
    bal __glNamesFreeArray
    ld	$a1,16($sp)
    beqz	$v0,.L0d9f3380
    # Line 1270
    ld	$ra,48($sp)
    # Line 1269
    ld	$at,16($sp)
    lw	$at,12($at)
    sw	$s1,0($at)
    # Line 1270
    sw	$ra,0($s1)
.L0d9f32a4:
    # Line 1272
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,8480
    move	$a0,$s3
    move	$a1,$s2
    bal __glNamesFreeArray
    ld	$a2,16($sp)
    # Line 1273
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,11504
    move	$a0,$s3
    move	$a1,$s2
    bal __glNamesFreeArray
    ld	$a2,16($sp)
    # Line 1383
    ld	$gp,88($sp)
    ld	$s1,56($sp)
    ld	$ra,64($sp)
    ld	$s2,96($sp)
    # Line 1274
    li	$v0,1
    # Line 1383
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9f32f8:
    # Line 1295
    b	.L0d9f2f90
    ld	$s0,104($sp)
.L0d9f3300:
    # Line 1345
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$a2,32($sp)
    addiu	$t9,$t9,9744
    move	$a0,$s3
    move	$a1,$s0
    bal __glNamesFreeArray
    addiu	$a2,$a2,1
    la	$v0,sub_0d9f0000
    ld	$s0,104($sp)
    b	.L0d9f31a0
    addiu	$v0,$v0,7120
.L0d9f332c:
    # Line 1371
    move	$t9,$a3
    move	$a0,$s3
    move	$a1,$s2
    bal __glNamesFreeArray
    ld	$a2,24($sp)
    # Line 1372
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,11504
    move	$a0,$s3
    move	$a1,$s2
    bal __glNamesFreeArray
    ld	$a2,24($sp)
    # Line 1373
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 1374
    b	.L0d9f2f90
    move	$v0,$zero
.L0d9f336c:
    ld	$s0,104($sp)
    # Line 1330
    jalr	$t9
    li	$a0,1285
    # Line 1331
    b	.L0d9f2f90
    move	$v0,$zero
.L0d9f3380:
    # Line 1265
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5296
    move	$a0,$s3
    bal __glNamesNewArray
    ld	$a1,16($sp)
    # Line 1266
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 1267
    b	.L0d9f2f90
    move	$v0,$zero
.end __glNamesNewData

# Function: __glNamesLockData
# Declared: Line 1397 (Source lines: 1399-1416)
# Address: 0x0d9f33b0 - 0x0d9f3448 (Size: 152 bytes, Frame: 32)
.globl __glNamesLockData
.ent __glNamesLockData
__glNamesLockData:
    # Line 1399
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lui	$ra,0x6
    addiu	$ra,$ra,-9764
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 1407
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1399
    move	$a0,$a1
    # Line 1407
    addiu	$t9,$t9,6000
    # Line 1399
    move	$at,$a2
    sd	$a2,0($sp)
    # Line 1407
    li	$a2,1
    bal __glNamesFreeArray
    move	$a1,$at
    # Line 1408
    beqz	$v0,.L0d9f3438
    # Line 1416
    ld	$ra,16($sp)
    # Line 1408
    lw	$a3,12($v0)
    beqz	$a3,.L0d9f3434
    # Line 1412
    lw	$a4,4($v0)
    ld	$a2,0($sp)
    subu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    addu	$a2,$a3,$a2
    lw	$a2,0($a2)
    # Line 1416
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    # Line 1412
    beqz	$a2,.L0d9f342c
    # Line 1416
    move	$v0,$a2
    # Line 1414
    lw	$a5,0($a2)
    addiu	$a5,$a5,1
    sw	$a5,0($a2)
.L0d9f342c:
    # Line 1416
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f3434:
    ld	$ra,16($sp)
.L0d9f3438:
    # Line 1409
    move	$v0,$zero
    # Line 1416
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glNamesLockData

# Function: __glNamesLockDataList
# Declared: Line 1431 (Source lines: 1434-1715)
# Address: 0x0d9f3450 - 0x0d9f3e54 (Size: 2564 bytes, Frame: 224)
.globl __glNamesLockDataList
.ent __glNamesLockDataList
__glNamesLockDataList:
    # Line 1434
    addiu	$sp,$sp,-96
    sdc1	$f20,80($sp)
    sd	$s8,16($sp)
    sd	$s5,8($sp)
    sd	$s0,0($sp)
    sd	$s4,88($sp)
    sd	$s1,64($sp)
    sd	$s2,32($sp)
    sd	$s6,48($sp)
    sd	$s3,40($sp)
    lui	$v1,0x6
    move	$s3,$a4
    sd	$s7,56($sp)
    addiu	$v1,$v1,-9924
    move	$s6,$a1
    sd	$gp,72($sp)
    addu	$gp,$t9,$v1
    move	$s2,$a6
    # Line 1443
    addiu	$v1,$a3,-5120
    la	$v0,sub_0da40000
    # Line 1434
    move	$s1,$a2
    # Line 1441
    lw	$s7,12($a1)
    # Line 1443
    sltiu	$at,$v1,10
    sd	$ra,24($sp)
    sll	$v1,$v1,0x2
    addiu	$v0,$v0,20512
    # Line 1441
    lw	$s7,4($s7)
    # Line 1443
    beqz	$at,.L0d9f3500
    addu	$v0,$v0,$v1
    lw	$a0,0($v0)
    jr	$a0
    # Line 1611
    addiu	$t9,$a2,-1
.L0d9f34d0:
    # Line 1715
    ld	$gp,72($sp)
    ld	$s0,0($sp)
    ld	$s1,64($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    ld	$s5,8($sp)
    ld	$ra,24($sp)
    ld	$s6,48($sp)
    ld	$s7,56($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f3500:
    ld	$s2,32($sp)
.L0d9f3504:
    ld	$s3,40($sp)
    ld	$s6,48($sp)
    ld	$s4,88($sp)
    ld	$s7,56($sp)
    ld	$s0,0($sp)
    ld	$s1,64($sp)
    ld	$s5,8($sp)
    ld	$ra,24($sp)
    ld	$s8,16($sp)
    ldc1	$f20,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f3538:
    # Line 1462
    la	$s5,sub_0d9f0000
    move	$s4,$s4
    mov.d	$f20,$f20
    move	$s8,$a5
    addiu	$s5,$s5,6000
.L0d9f354c:
    # Line 1465
    addiu	$s1,$s1,-1
    bltz	$s1,.L0d9f34d0
    nop
    # Line 1467
    lb	$s0,0($s8)
    addiu	$s8,$s8,1
    b	.L0d9f35b4
    addu	$s0,$s0,$s3
    nop
    nop
.L0d9f3570:
    # Line 1488
    lw	$a0,0($a0)
    # Line 1485
    addiu	$s1,$s1,-1
    # Line 1484
    addiu	$s2,$s2,4
.L0d9f357c:
    # Line 1483
    lw	$a3,0($a0)
    addiu	$a3,$a3,1
    sw	$a3,0($a0)
    # Line 1485
    bltz	$s1,.L0d9f34d0
    # Line 1484
    sw	$a0,-4($s2)
    # Line 1486
    lb	$s0,0($s8)
    addu	$s0,$s0,$a4
    sltu	$a5,$a2,$s0
    addiu	$s8,$s8,1
    # Line 1488
    sll	$a0,$s0,0x2
    # Line 1486
    beqz	$a5,.L0d9f3570
    # Line 1488
    addu	$a0,$a1,$a0
    # Line 1491
    lw	$t8,4($v0)
    addu	$s0,$t8,$s0
.L0d9f35b4:
    # Line 1469
    move	$t9,$s5
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    # Line 1470
    beqz	$v0,.L0d9f3600
    nop
    lw	$a1,12($v0)
    # Line 1480
    lw	$a2,8($v0)
    # Line 1470
    beqz	$a1,.L0d9f3600
    # Line 1476
    lw	$a4,4($v0)
    subu	$a0,$s0,$a4
    # Line 1485
    addiu	$s1,$s1,-1
    # Line 1476
    sll	$a0,$a0,0x2
    # Line 1480
    subu	$a2,$a2,$a4
    # Line 1476
    addu	$a0,$a1,$a0
    # Line 1479
    subu	$a4,$s3,$a4
    b	.L0d9f3e44
    # Line 1476
    lw	$a0,0($a0)
.L0d9f3600:
    # Line 1495
    lw	$a1,0($s7)
    # Line 1496
    addiu	$s2,$s2,4
    # Line 1495
    addiu	$a1,$a1,1
    sw	$a1,0($s7)
    # Line 1497
    b	.L0d9f354c
    # Line 1496
    sw	$s7,-4($s2)
.L0d9f3618:
    # Line 1693
    addiu	$a3,$a2,-1
    # Line 1691
    move	$s8,$a5
    # Line 1693
    bltz	$a3,.L0d9f3500
    move	$s1,$a3
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3858
    addiu	$s5,$s5,6000
.L0d9f363c:
    # Line 1672
    addiu	$t8,$a2,-1
    # Line 1670
    move	$s8,$a5
    # Line 1672
    bltz	$t8,.L0d9f3500
    move	$s1,$t8
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3938
    addiu	$s5,$s5,6000
.L0d9f3660:
    # Line 1651
    addiu	$t8,$a2,-1
    # Line 1649
    move	$s8,$a5
    # Line 1651
    bltz	$t8,.L0d9f3500
    move	$s1,$t8
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3a08
    addiu	$s5,$s5,6000
.L0d9f3684:
    # Line 1631
    addiu	$t8,$a2,-1
    # Line 1629
    move	$s8,$a5
    # Line 1631
    bltz	$t8,.L0d9f3500
    move	$s1,$t8
    dsll32	$t8,$a4,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f20
    la	$s5,sub_0d9f0000
    li	$s4,-1
    move	$a7,$zero
    addiu	$s5,$s5,6000
    b	.L0d9f3ac8
    cvt.s.l	$f20,$f20
.L0d9f36b8:
    # Line 1609
    move	$s8,$a5
    # Line 1611
    bltz	$t9,.L0d9f3500
    move	$s1,$t9
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3b88
    addiu	$s5,$s5,6000
.L0d9f36d8:
    # Line 1591
    addiu	$t8,$a2,-1
    # Line 1589
    move	$s8,$a5
    # Line 1591
    bltz	$t8,.L0d9f3500
    move	$s1,$t8
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3c48
    addiu	$s5,$s5,6000
.L0d9f36fc:
    # Line 1571
    addiu	$t8,$a2,-1
    # Line 1569
    move	$s8,$a5
    # Line 1571
    bltz	$t8,.L0d9f3500
    move	$s1,$t8
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3d08
    addiu	$s5,$s5,6000
.L0d9f3720:
    # Line 1551
    addiu	$t8,$a2,-1
    # Line 1549
    move	$s8,$a5
    # Line 1551
    bltz	$t8,.L0d9f3500
    move	$s1,$t8
    la	$s5,sub_0d9f0000
    move	$a7,$zero
    li	$s4,-1
    b	.L0d9f3dc8
    addiu	$s5,$s5,6000
.L0d9f3744:
    # Line 1507
    la	$s5,sub_0d9f0000
    move	$s8,$a5
    addiu	$s5,$s5,6000
.L0d9f3750:
    # Line 1510
    addiu	$s1,$s1,-1
    bltz	$s1,.L0d9f3818
    nop
    # Line 1512
    lbu	$s0,0($s8)
    addiu	$s8,$s8,1
    b	.L0d9f37b4
    addu	$s0,$s0,$s3
    nop
.L0d9f3770:
    # Line 1533
    lw	$a0,0($a0)
    # Line 1530
    addiu	$s1,$s1,-1
    # Line 1529
    addiu	$s2,$s2,4
.L0d9f377c:
    # Line 1528
    lw	$a3,0($a0)
    addiu	$a3,$a3,1
    sw	$a3,0($a0)
    # Line 1530
    bltz	$s1,.L0d9f3818
    # Line 1529
    sw	$a0,-4($s2)
    # Line 1531
    lbu	$s0,0($s8)
    addu	$s0,$a2,$s0
    sltu	$a5,$a4,$s0
    addiu	$s8,$s8,1
    # Line 1533
    sll	$a0,$s0,0x2
    # Line 1531
    beqz	$a5,.L0d9f3770
    # Line 1533
    addu	$a0,$a1,$a0
    # Line 1536
    lw	$t8,4($v0)
    addu	$s0,$t8,$s0
.L0d9f37b4:
    # Line 1514
    move	$t9,$s5
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    # Line 1515
    beqz	$v0,.L0d9f3800
    nop
    lw	$a1,12($v0)
    # Line 1525
    lw	$a4,8($v0)
    # Line 1515
    beqz	$a1,.L0d9f3800
    # Line 1521
    lw	$a2,4($v0)
    subu	$a0,$s0,$a2
    # Line 1530
    addiu	$s1,$s1,-1
    # Line 1521
    sll	$a0,$a0,0x2
    # Line 1525
    subu	$a4,$a4,$a2
    # Line 1521
    addu	$a0,$a1,$a0
    # Line 1524
    subu	$a2,$s3,$a2
    b	.L0d9f3e4c
    # Line 1521
    lw	$a0,0($a0)
.L0d9f3800:
    # Line 1540
    lw	$a1,0($s7)
    # Line 1541
    addiu	$s2,$s2,4
    # Line 1540
    addiu	$a1,$a1,1
    sw	$a1,0($s7)
    # Line 1542
    b	.L0d9f3750
    # Line 1541
    sw	$s7,-4($s2)
.L0d9f3818:
    b	.L0d9f3504
    ld	$s2,32($sp)
.L0d9f3820:
    # Line 1701
    lw	$a2,4($a7)
    subu	$a2,$s0,$a2
    sll	$a2,$a2,0x2
    addu	$a2,$v0,$a2
    lw	$a2,0($a2)
    # Line 1702
    lw	$a4,0($a2)
    # Line 1703
    addiu	$a3,$s2,4
    # Line 1702
    addiu	$a4,$a4,1
    sw	$a4,0($a2)
    # Line 1703
    move	$s2,$a3
    sw	$a2,-4($a3)
.L0d9f384c:
    # Line 1693
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f38f0
    nop
.L0d9f3858:
    # Line 1694
    lbu	$ra,2($s8)
    lbu	$t8,0($s8)
    sll	$ra,$ra,0x8
    lbu	$t9,1($s8)
    lbu	$s0,3($s8)
    sll	$t8,$t8,0x18
    sll	$t9,$t9,0x10
    or	$s0,$s0,$ra
    or	$t8,$t8,$t9
    # Line 1696
    addiu	$s8,$s8,4
    # Line 1694
    or	$s0,$s0,$t8
    # Line 1697
    beqz	$a7,.L0d9f38a8
    # Line 1694
    addu	$s0,$s3,$s0
    # Line 1697
    lw	$at,4($a7)
    sltu	$at,$s0,$at
    bnez	$at,.L0d9f38ac
    # Line 1698
    move	$t9,$s5
    # Line 1697
    lw	$v0,8($a7)
    sltu	$v0,$v0,$s0
    beqz	$v0,.L0d9f38c0
.L0d9f38a8:
    # Line 1698
    move	$t9,$s5
.L0d9f38ac:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f38c0:
    # Line 1700
    beqz	$a7,.L0d9f38d4
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3820
    nop
.L0d9f38d4:
    # Line 1705
    lw	$a0,0($s7)
    # Line 1706
    addiu	$v1,$s2,4
    # Line 1705
    addiu	$a0,$a0,1
    sw	$a0,0($s7)
    # Line 1706
    move	$s2,$v1
    b	.L0d9f384c
    sw	$s7,-4($v1)
.L0d9f38f0:
    b	.L0d9f3504
    ld	$s2,32($sp)
    nop
    nop
.L0d9f3900:
    # Line 1679
    lw	$a1,4($a7)
    subu	$a1,$s0,$a1
    sll	$a1,$a1,0x2
    addu	$a1,$v0,$a1
    lw	$a1,0($a1)
    # Line 1680
    lw	$a3,0($a1)
    # Line 1681
    addiu	$a2,$s2,4
    # Line 1680
    addiu	$a3,$a3,1
    sw	$a3,0($a1)
    # Line 1681
    move	$s2,$a2
    sw	$a1,-4($a2)
.L0d9f392c:
    # Line 1672
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f39c4
    nop
.L0d9f3938:
    # Line 1673
    lbu	$t8,0($s8)
    lbu	$t9,1($s8)
    sll	$t8,$t8,0x10
    lbu	$s0,2($s8)
    sll	$t9,$t9,0x8
    or	$t8,$t8,$t9
    # Line 1674
    addiu	$s8,$s8,3
    # Line 1673
    or	$s0,$s0,$t8
    # Line 1675
    beqz	$a7,.L0d9f397c
    # Line 1673
    addu	$s0,$s3,$s0
    # Line 1675
    lw	$t9,4($a7)
    sltu	$t9,$s0,$t9
    bnez	$t9,.L0d9f3980
    # Line 1676
    move	$t9,$s5
    # Line 1675
    lw	$ra,8($a7)
    sltu	$ra,$ra,$s0
    beqz	$ra,.L0d9f3994
.L0d9f397c:
    # Line 1676
    move	$t9,$s5
.L0d9f3980:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3994:
    # Line 1678
    beqz	$a7,.L0d9f39a8
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3900
    nop
.L0d9f39a8:
    # Line 1683
    lw	$v0,0($s7)
    # Line 1684
    addiu	$at,$s2,4
    # Line 1683
    addiu	$v0,$v0,1
    sw	$v0,0($s7)
    # Line 1684
    move	$s2,$at
    b	.L0d9f392c
    sw	$s7,-4($at)
.L0d9f39c4:
    b	.L0d9f3504
    ld	$s2,32($sp)
    nop
.L0d9f39d0:
    # Line 1658
    lw	$v1,4($a7)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v0,$v1
    lw	$v1,0($v1)
    # Line 1659
    lw	$a1,0($v1)
    # Line 1660
    addiu	$a0,$s2,4
    # Line 1659
    addiu	$a1,$a1,1
    sw	$a1,0($v1)
    # Line 1660
    move	$s2,$a0
    sw	$v1,-4($a0)
.L0d9f39fc:
    # Line 1651
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f3a88
    nop
.L0d9f3a08:
    # Line 1652
    lbu	$t8,0($s8)
    lbu	$s0,1($s8)
    sll	$t8,$t8,0x8
    # Line 1653
    addiu	$s8,$s8,2
    # Line 1652
    or	$s0,$s0,$t8
    # Line 1654
    beqz	$a7,.L0d9f3a40
    # Line 1652
    addu	$s0,$s3,$s0
    # Line 1654
    lw	$t9,4($a7)
    sltu	$t9,$s0,$t9
    bnez	$t9,.L0d9f3a44
    # Line 1655
    move	$t9,$s5
    # Line 1654
    lw	$ra,8($a7)
    sltu	$ra,$ra,$s0
    beqz	$ra,.L0d9f3a58
.L0d9f3a40:
    # Line 1655
    move	$t9,$s5
.L0d9f3a44:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3a58:
    # Line 1657
    beqz	$a7,.L0d9f3a6c
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f39d0
    nop
.L0d9f3a6c:
    # Line 1662
    lw	$v0,0($s7)
    # Line 1663
    addiu	$at,$s2,4
    # Line 1662
    addiu	$v0,$v0,1
    sw	$v0,0($s7)
    # Line 1663
    move	$s2,$at
    b	.L0d9f39fc
    sw	$s7,-4($at)
.L0d9f3a88:
    b	.L0d9f3504
    ld	$s2,32($sp)
.L0d9f3a90:
    # Line 1637
    lw	$v1,4($a7)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v0,$v1
    lw	$v1,0($v1)
    # Line 1638
    lw	$a1,0($v1)
    # Line 1639
    addiu	$a0,$s2,4
    # Line 1638
    addiu	$a1,$a1,1
    sw	$a1,0($v1)
    # Line 1639
    move	$s2,$a0
    sw	$v1,-4($a0)
.L0d9f3abc:
    # Line 1631
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f3b48
    nop
.L0d9f3ac8:
    # Line 1632
    lwc1	$f21,0($s8)
    add.s	$f21,$f21,$f20
    trunc.l.s	$f21,$f21
    dmfc1	$s0,$f21
    addiu	$s8,$s8,4
    # Line 1633
    beqz	$a7,.L0d9f3b00
    # Line 1632
    sll	$s0,$s0,0x0
    # Line 1633
    lw	$t8,4($a7)
    sltu	$t8,$s0,$t8
    bnez	$t8,.L0d9f3b04
    # Line 1634
    move	$t9,$s5
    # Line 1633
    lw	$t9,8($a7)
    sltu	$t9,$t9,$s0
    beqz	$t9,.L0d9f3b18
.L0d9f3b00:
    # Line 1634
    move	$t9,$s5
.L0d9f3b04:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3b18:
    # Line 1636
    beqz	$a7,.L0d9f3b2c
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3a90
    nop
.L0d9f3b2c:
    # Line 1641
    lw	$at,0($s7)
    # Line 1642
    addiu	$ra,$s2,4
    # Line 1641
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1642
    move	$s2,$ra
    b	.L0d9f3abc
    sw	$s7,-4($ra)
.L0d9f3b48:
    b	.L0d9f3504
    ld	$s2,32($sp)
.L0d9f3b50:
    # Line 1617
    lw	$v1,4($a7)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v0,$v1
    lw	$v1,0($v1)
    # Line 1618
    lw	$a1,0($v1)
    # Line 1619
    addiu	$a0,$s2,4
    # Line 1618
    addiu	$a1,$a1,1
    sw	$a1,0($v1)
    # Line 1619
    move	$s2,$a0
    sw	$v1,-4($a0)
.L0d9f3b7c:
    # Line 1611
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f3bfc
    nop
.L0d9f3b88:
    # Line 1612
    lw	$s0,0($s8)
    addiu	$s8,$s8,4
    # Line 1613
    beqz	$a7,.L0d9f3bb4
    # Line 1612
    addu	$s0,$s0,$s3
    # Line 1613
    lw	$t8,4($a7)
    sltu	$t8,$s0,$t8
    bnez	$t8,.L0d9f3bb8
    # Line 1614
    move	$t9,$s5
    # Line 1613
    lw	$t9,8($a7)
    sltu	$t9,$t9,$s0
    beqz	$t9,.L0d9f3bcc
.L0d9f3bb4:
    # Line 1614
    move	$t9,$s5
.L0d9f3bb8:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3bcc:
    # Line 1616
    beqz	$a7,.L0d9f3be0
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3b50
    nop
.L0d9f3be0:
    # Line 1621
    lw	$at,0($s7)
    # Line 1622
    addiu	$ra,$s2,4
    # Line 1621
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1622
    move	$s2,$ra
    b	.L0d9f3b7c
    sw	$s7,-4($ra)
.L0d9f3bfc:
    b	.L0d9f3504
    ld	$s2,32($sp)
    nop
    nop
    nop
.L0d9f3c10:
    # Line 1597
    lw	$v1,4($a7)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v0,$v1
    lw	$v1,0($v1)
    # Line 1598
    lw	$a1,0($v1)
    # Line 1599
    addiu	$a0,$s2,4
    # Line 1598
    addiu	$a1,$a1,1
    sw	$a1,0($v1)
    # Line 1599
    move	$s2,$a0
    sw	$v1,-4($a0)
.L0d9f3c3c:
    # Line 1591
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f3cbc
    nop
.L0d9f3c48:
    # Line 1592
    lw	$s0,0($s8)
    addiu	$s8,$s8,4
    # Line 1593
    beqz	$a7,.L0d9f3c74
    # Line 1592
    addu	$s0,$s0,$s3
    # Line 1593
    lw	$t8,4($a7)
    sltu	$t8,$s0,$t8
    bnez	$t8,.L0d9f3c78
    # Line 1594
    move	$t9,$s5
    # Line 1593
    lw	$t9,8($a7)
    sltu	$t9,$t9,$s0
    beqz	$t9,.L0d9f3c8c
.L0d9f3c74:
    # Line 1594
    move	$t9,$s5
.L0d9f3c78:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3c8c:
    # Line 1596
    beqz	$a7,.L0d9f3ca0
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3c10
    nop
.L0d9f3ca0:
    # Line 1601
    lw	$at,0($s7)
    # Line 1602
    addiu	$ra,$s2,4
    # Line 1601
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1602
    move	$s2,$ra
    b	.L0d9f3c3c
    sw	$s7,-4($ra)
.L0d9f3cbc:
    b	.L0d9f3504
    ld	$s2,32($sp)
    nop
    nop
    nop
.L0d9f3cd0:
    # Line 1577
    lw	$v1,4($a7)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v0,$v1
    lw	$v1,0($v1)
    # Line 1578
    lw	$a1,0($v1)
    # Line 1579
    addiu	$a0,$s2,4
    # Line 1578
    addiu	$a1,$a1,1
    sw	$a1,0($v1)
    # Line 1579
    move	$s2,$a0
    sw	$v1,-4($a0)
.L0d9f3cfc:
    # Line 1571
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f3d7c
    nop
.L0d9f3d08:
    # Line 1572
    lhu	$s0,0($s8)
    addiu	$s8,$s8,2
    # Line 1573
    beqz	$a7,.L0d9f3d34
    # Line 1572
    addu	$s0,$s0,$s3
    # Line 1573
    lw	$t8,4($a7)
    sltu	$t8,$s0,$t8
    bnez	$t8,.L0d9f3d38
    # Line 1574
    move	$t9,$s5
    # Line 1573
    lw	$t9,8($a7)
    sltu	$t9,$t9,$s0
    beqz	$t9,.L0d9f3d4c
.L0d9f3d34:
    # Line 1574
    move	$t9,$s5
.L0d9f3d38:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3d4c:
    # Line 1576
    beqz	$a7,.L0d9f3d60
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3cd0
    nop
.L0d9f3d60:
    # Line 1581
    lw	$at,0($s7)
    # Line 1582
    addiu	$ra,$s2,4
    # Line 1581
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1582
    move	$s2,$ra
    b	.L0d9f3cfc
    sw	$s7,-4($ra)
.L0d9f3d7c:
    b	.L0d9f3504
    ld	$s2,32($sp)
    nop
    nop
    nop
.L0d9f3d90:
    # Line 1557
    lw	$v1,4($a7)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v0,$v1
    lw	$v1,0($v1)
    # Line 1558
    lw	$a1,0($v1)
    # Line 1559
    addiu	$a0,$s2,4
    # Line 1558
    addiu	$a1,$a1,1
    sw	$a1,0($v1)
    # Line 1559
    move	$s2,$a0
    sw	$v1,-4($a0)
.L0d9f3dbc:
    # Line 1551
    addiu	$s1,$s1,-1
    beq	$s1,$s4,.L0d9f3e3c
    nop
.L0d9f3dc8:
    # Line 1552
    lh	$s0,0($s8)
    addiu	$s8,$s8,2
    # Line 1553
    beqz	$a7,.L0d9f3df4
    # Line 1552
    addu	$s0,$s0,$s3
    # Line 1553
    lw	$t8,4($a7)
    sltu	$t8,$s0,$t8
    bnez	$t8,.L0d9f3df8
    # Line 1554
    move	$t9,$s5
    # Line 1553
    lw	$t9,8($a7)
    sltu	$t9,$t9,$s0
    beqz	$t9,.L0d9f3e0c
.L0d9f3df4:
    # Line 1554
    move	$t9,$s5
.L0d9f3df8:
    move	$a0,$s6
    move	$a1,$s0
    bal __glNamesFreeArray
    li	$a2,1
    move	$a7,$v0
.L0d9f3e0c:
    # Line 1556
    beqz	$a7,.L0d9f3e20
    nop
    lw	$v0,12($a7)
    bnez	$v0,.L0d9f3d90
    nop
.L0d9f3e20:
    # Line 1561
    lw	$at,0($s7)
    # Line 1562
    addiu	$ra,$s2,4
    # Line 1561
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1562
    move	$s2,$ra
    b	.L0d9f3dbc
    sw	$s7,-4($ra)
.L0d9f3e3c:
    b	.L0d9f3504
    ld	$s2,32($sp)
.L0d9f3e44:
    b	.L0d9f357c
    # Line 1484
    addiu	$s2,$s2,4
.L0d9f3e4c:
    b	.L0d9f377c
    # Line 1529
    addiu	$s2,$s2,4
.end __glNamesLockDataList

# Function: __glNamesUnlockData
# Declared: Line 1720 (Source lines: 1721-1734)
# Address: 0x0d9f3e60 - 0x0d9f3ea8 (Size: 72 bytes, Frame: 16)
.globl __glNamesUnlockData
.ent __glNamesUnlockData
__glNamesUnlockData:
    # Line 1726
    lw	$v0,0($a1)
    # Line 1721
    addiu	$sp,$sp,-16
    lui	$at,0x6
    # Line 1726
    addiu	$v0,$v0,-1
    sd	$gp,0($sp)
    # Line 1721
    addiu	$at,$at,-12500
    # Line 1726
    sw	$v0,0($a1)
    beqz	$v0,.L0d9f3e90
    # Line 1721
    addu	$gp,$t9,$at
.L0d9f3e84:
    # Line 1734
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f3e90:
    # Line 1732
    lw	$t9,12($a0)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0d9f3e84
    ld	$ra,8($sp)
.end __glNamesUnlockData

# Function: __glNamesUnlockDataList
# Declared: Line 1742 (Source lines: 1744-1763)
# Address: 0x0d9f3eb0 - 0x0d9f3fb4 (Size: 260 bytes, Frame: 48)
.globl __glNamesUnlockDataList
.ent __glNamesUnlockDataList
__glNamesUnlockDataList:
    # Line 1744
    andi	$t8,$a1,0x1
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a2
    lui	$at,0x6
    sd	$s2,0($sp)
    move	$s2,$a0
    addiu	$at,$at,-12580
    sd	$gp,16($sp)
    blez	$a1,.L0d9f3f20
    addu	$gp,$t9,$at
    move	$a0,$a1
    sd	$s1,40($sp)
    sll	$s1,$a1,0x2
    sd	$ra,32($sp)
    beqz	$t8,.L0d9f3f0c
    addu	$s1,$s1,$a2
    # Line 1753
    lw	$a1,0($a2)
    # Line 1754
    lw	$t9,0($a1)
    addiu	$t9,$t9,-1
    beqz	$t9,.L0d9f3f9c
    sw	$t9,0($a1)
.L0d9f3f08:
    # Line 1752
    addiu	$s0,$s0,4
.L0d9f3f0c:
    sra	$ra,$a0,0x1
    bnezl	$ra,.L0d9f3f64
    # Line 1753
    lw	$a1,0($s0)
    ld	$ra,32($sp)
.L0d9f3f1c:
    ld	$s1,40($sp)
.L0d9f3f20:
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    # Line 1763
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
    nop
    nop
    nop
.L0d9f3f40:
    # Line 1753
    lw	$a1,4($s0)
.L0d9f3f44:
    # Line 1754
    lw	$at,0($a1)
    addiu	$at,$at,-1
    beqz	$at,.L0d9f3f88
    sw	$at,0($a1)
    # Line 1752
    addiu	$s0,$s0,8
.L0d9f3f58:
    beq	$s0,$s1,.L0d9f3f1c
    ld	$ra,32($sp)
    # Line 1753
    lw	$a1,0($s0)
.L0d9f3f64:
    # Line 1754
    lw	$v0,0($a1)
    addiu	$v0,$v0,-1
    bnez	$v0,.L0d9f3f40
    sw	$v0,0($a1)
    # Line 1760
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    b	.L0d9f3f44
    # Line 1753
    lw	$a1,4($s0)
.L0d9f3f88:
    # Line 1760
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    b	.L0d9f3f58
    # Line 1752
    addiu	$s0,$s0,8
.L0d9f3f9c:
    # Line 1760
    lw	$t9,12($s2)
    sd	$a0,24($sp)
    jalr	$t9
    move	$a0,$s2
    b	.L0d9f3f08
    ld	$a0,24($sp)
.end __glNamesUnlockDataList

# Function: __glNamesGenRange
# Declared: Line 1766 (Source lines: 1768-1881)
# Address: 0x0d9f3fc0 - 0x0d9f432c (Size: 876 bytes, Frame: 208)
.globl __glNamesGenRange
.ent __glNamesGenRange
__glNamesGenRange:
    # Line 1768
    addiu	$sp,$sp,-80
    sd	$s3,56($sp)
    sd	$s1,24($sp)
    sd	$s2,40($sp)
    move	$s2,$a2
    move	$s1,$a1
    # Line 1780
    lw	$at,16($a1)
    # Line 1768
    sd	$s4,16($sp)
    # Line 1780
    li	$v0,16
    # Line 1768
    lui	$v1,0x6
    move	$s4,$a0
    sd	$ra,64($sp)
    addiu	$v1,$v1,-12852
    sd	$gp,48($sp)
    # Line 1780
    bne	$at,$v0,.L0d9f400c
    # Line 1768
    addu	$gp,$t9,$v1
    # Line 1780
    lw	$a0,20($a1)
    li	$a1,3
    beq	$a0,$a1,.L0d9f4028
.L0d9f400c:
    # Line 1782
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6384
    move	$a0,$s4
    bal __glNamesFreeArray
    move	$a1,$s1
    beqz	$v0,.L0d9f4220
    # Line 1783
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9f4028:
    # Line 1788
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,10384
    move	$a0,$s1
    bal __glNamesFreeArray
    sd	$s0,72($sp)
    # Line 1793
    beqz	$v0,.L0d9f4100
    # Line 1788
    move	$s0,$v0
    # Line 1793
    lw	$a0,4($v0)
    sltu	$ra,$s2,$a0
    beqz	$ra,.L0d9f408c
    nop
    lw	$at,12($v0)
    bnez	$at,.L0d9f41b4
    # Line 1804
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    # Line 1798
    subu	$v0,$a0,$s2
    sw	$v0,4($s0)
.L0d9f4070:
    ld	$s3,56($sp)
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s2,40($sp)
    # Line 1881
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f408c:
    # Line 1794
    la	$v0,sub_0d9f0000
    b	.L0d9f40a4
    addiu	$v0,$v0,10448
.L0d9f4098:
    la	$v0,sub_0d9f0000
    # Line 1849
    move	$s0,$s3
    addiu	$v0,$v0,10448
.L0d9f40a4:
    # Line 1815
    move	$t9,$v0
    bal __glNamesFreeArray
    move	$a0,$s0
    # Line 1816
    beqz	$v0,.L0d9f4100
    # Line 1815
    move	$s3,$v0
    # Line 1818
    lw	$a2,8($s0)
    # Line 1819
    lw	$a0,4($v0)
    # Line 1818
    addiu	$v0,$a2,1
    # Line 1819
    subu	$a1,$a0,$v0
    sltu	$v1,$a1,$s2
    bnez	$v1,.L0d9f4098
    nop
    lw	$a3,12($s0)
    sd	$a1,8($sp)
    beqz	$a3,.L0d9f428c
    sd	$v0,32($sp)
    # Line 1832
    lw	$a4,12($s3)
    bnez	$a4,.L0d9f423c
    # Line 1835
    subu	$v0,$a0,$s2
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    # Line 1837
    b	.L0d9f4070
    # Line 1835
    sw	$v0,4($s3)
.L0d9f4100:
    # Line 1852
    beqz	$s0,.L0d9f42cc
    # Line 1853
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1861
    lw	$a0,8($s0)
    addu	$v0,$s2,$a0
    sltu	$a5,$v0,$a0
    bnez	$a5,.L0d9f4210
    nop
    # Line 1865
    lw	$a6,12($s0)
    bnez	$a6,.L0d9f4150
    addiu	$s2,$a0,1
    # Line 1870
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$s4,16($sp)
    addiu	$t9,$t9,6768
    ld	$s1,24($sp)
    move	$a1,$v0
    move	$a0,$s0
    bal __glNamesFreeArray
    # Line 1869
    sw	$v0,8($s0)
    # Line 1872
    b	.L0d9f4070
    move	$v0,$s2
.L0d9f4150:
    # Line 1875
    # lw $t9, -32700($gp) # &sub_0d9f0000
    sd	$v0,0($sp)
    addiu	$t9,$t9,7120
    ld	$s0,72($sp)
    move	$a0,$s4
    ld	$s3,56($sp)
    bal __glNamesFreeArray
    move	$a1,$s1
    # Line 1879
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1878
    ld	$ra,0($sp)
    # Line 1879
    addiu	$t9,$t9,8480
    # Line 1875
    move	$a2,$v0
    # Line 1879
    move	$a1,$s1
    # Line 1878
    sw	$ra,8($v0)
    # Line 1879
    move	$a0,$s4
    bal __glNamesFreeArray
    # Line 1877
    sw	$s2,4($v0)
    # Line 1881
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s1,24($sp)
    move	$v0,$s2
    ld	$s2,40($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f41b4:
    # Line 1804
    addiu	$t9,$t9,7120
    ld	$s0,72($sp)
    move	$a0,$s4
    ld	$s3,56($sp)
    bal __glNamesFreeArray
    move	$a1,$s1
    # Line 1808
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1804
    move	$a2,$v0
    # Line 1808
    addiu	$t9,$t9,8480
    move	$a1,$s1
    move	$a0,$s4
    # Line 1807
    sw	$s2,8($v0)
    # Line 1806
    li	$at,1
    # Line 1808
    bal __glNamesFreeArray
    # Line 1806
    sw	$at,4($v0)
    # Line 1881
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s1,24($sp)
    # Line 1810
    li	$v0,1
    # Line 1881
    ld	$s2,40($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f4210:
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    # Line 1865
    b	.L0d9f4070
    move	$v0,$zero
.L0d9f4220:
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    # Line 1783
    jal	sub_0d9f0000
    li	$a0,1285
    # Line 1784
    move	$v0,$zero
    b	.L0d9f4070
    sd	$s0,72($sp)
.L0d9f423c:
    # Line 1839
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7120
    move	$a0,$s4
    bal __glNamesFreeArray
    move	$a1,$s1
    # Line 1843
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1839
    move	$a2,$v0
    # Line 1841
    ld	$at,32($sp)
    # Line 1843
    move	$a1,$s1
    addiu	$t9,$t9,8480
    move	$a0,$s4
    # Line 1841
    sw	$at,4($v0)
    # Line 1842
    addu	$at,$s2,$at
    addiu	$at,$at,-1
    # Line 1843
    bal __glNamesFreeArray
    # Line 1842
    sw	$at,8($v0)
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    # Line 1845
    b	.L0d9f4070
    ld	$v0,32($sp)
.L0d9f428c:
    # Line 1826
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6768
    move	$a0,$s0
    # Line 1825
    addu	$a1,$s2,$a2
    # Line 1826
    bal __glNamesFreeArray
    # Line 1825
    sw	$a1,8($s0)
    # Line 1828
    ld	$ra,8($sp)
    bne	$s2,$ra,.L0d9f42bc
    nop
    lw	$at,12($s3)
    beqz	$at,.L0d9f4310
    # Line 1829
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
.L0d9f42bc:
    ld	$s4,16($sp)
.L0d9f42c0:
    ld	$s1,24($sp)
    # Line 1832
    b	.L0d9f4070
    ld	$v0,32($sp)
.L0d9f42cc:
    # Line 1853
    addiu	$t9,$t9,7120
    move	$a0,$s4
    bal __glNamesFreeArray
    move	$a1,$s1
    # Line 1857
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1853
    move	$a2,$v0
    # Line 1857
    addiu	$t9,$t9,8480
    move	$a1,$s1
    move	$a0,$s4
    # Line 1856
    sw	$s2,8($v0)
    # Line 1855
    li	$at,1
    # Line 1857
    bal __glNamesFreeArray
    # Line 1855
    sw	$at,4($v0)
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    # Line 1859
    b	.L0d9f4070
    li	$v0,1
.L0d9f4310:
    # Line 1829
    addiu	$t9,$t9,11504
    move	$a0,$s4
    move	$a1,$s1
    bal __glNamesFreeArray
    move	$a2,$s0
    b	.L0d9f42c0
    ld	$s4,16($sp)
.end __glNamesGenRange

# Function: __glNamesDeleteRange
# Declared: Line 1886 (Source lines: 1888-2025)
# Address: 0x0d9f4330 - 0x0d9f475c (Size: 1068 bytes, Frame: 160)
.globl __glNamesDeleteRange
.ent __glNamesDeleteRange
__glNamesDeleteRange:
    # Line 1888
    addiu	$sp,$sp,-160
    sd	$s1,64($sp)
    sd	$s5,56($sp)
    sd	$s0,48($sp)
    sd	$s4,40($sp)
    sd	$ra,32($sp)
    sd	$s8,24($sp)
    sd	$s7,80($sp)
    move	$v0,$a3
    move	$s7,$a0
    sd	$s6,96($sp)
    move	$s6,$a1
    sd	$s2,104($sp)
    lui	$at,0x6
    move	$s2,$a2
    sd	$s3,16($sp)
    addiu	$at,$at,-13732
    sd	$gp,88($sp)
    beqz	$a3,.L0d9f4560
    addu	$gp,$t9,$at
    # Line 1907
    lw	$v1,16($a1)
    li	$a0,16
    beq	$v1,$a0,.L0d9f4700
    sd	$a3,72($sp)
    li	$s3,1
.L0d9f4394:
    # Line 1916
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6000
    move	$a0,$s6
    move	$a1,$s2
    # Line 1912
    sd	$s2,144($sp)
    # Line 1916
    bal __glNamesFreeArray
    move	$a2,$zero
    beqz	$v0,.L0d9f4560
    move	$s1,$v0
    la	$s0,sub_0d9f0000
    ld	$t8,72($sp)
    lui	$s8,0xc000
    lui	$s5,0x4000
    sd	$s3,8($sp)
    addiu	$s0,$s0,10448
    addu	$t8,$t8,$s2
    addiu	$t8,$t8,-1
    b	.L0d9f44b8
    sd	$t8,136($sp)
.L0d9f43e0:
    # Line 1989
    beq	$a3,$t9,.L0d9f46d8
    # Line 1993
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    beqz	$ra,.L0d9f4404
    # Line 1996
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6384
    move	$a0,$s7
    bal __glNamesFreeArray
    move	$a1,$s6
    beqz	$v0,.L0d9f4554
.L0d9f4404:
    # Line 2002
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,7120
    move	$a0,$s7
    bal __glNamesFreeArray
    move	$a1,$s6
    # Line 2004
    ld	$v1,128($sp)
    addiu	$v1,$v1,1
    sw	$v1,4($v0)
    # Line 2005
    lw	$at,8($s1)
    sw	$at,8($v0)
    lw	$ra,12($s1)
    beqz	$ra,.L0d9f4468
    # Line 2002
    move	$s3,$v0
    # Line 2007
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6864
    move	$a0,$s7
    bal __glNamesFreeArray
    move	$a1,$v0
    beqz	$v0,.L0d9f4738
    # Line 2013
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 2017
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,6128
    move	$a0,$s1
    bal __glNamesFreeArray
    move	$a1,$s3
.L0d9f4468:
    # Line 2019
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$a3,120($sp)
    addiu	$t9,$t9,9744
    move	$a0,$s7
    move	$a1,$s1
    lw	$a2,4($s1)
    bal __glNamesFreeArray
    addiu	$a3,$a3,-1
    # Line 2020
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,8480
    move	$a0,$s7
    move	$a1,$s6
    bal __glNamesFreeArray
    move	$a2,$s3
    la	$s0,sub_0d9f0000
    sd	$s3,0($sp)
    addiu	$s0,$s0,10448
.L0d9f44ac:
    # Line 1917
    ld	$t8,0($sp)
.L0d9f44b0:
    beqz	$t8,.L0d9f4560
    move	$s1,$t8
.L0d9f44b8:
    # Line 1918
    move	$t9,$s0
    bal __glNamesFreeArray
    move	$a0,$s1
    # Line 1919
    lw	$a2,4($s1)
    # Line 1921
    ld	$t9,136($sp)
    # Line 1920
    lw	$a3,8($s1)
    # Line 1918
    move	$a0,$v0
    # Line 1924
    ld	$a0,144($sp)
    # Line 1921
    sltu	$t9,$t9,$a2
    # Line 1925
    ld	$a5,136($sp)
    lw	$at,12($s1)
    # Line 1921
    bnez	$t9,.L0d9f4560
    # Line 1924
    sltu	$v1,$a2,$a0
    # Line 1925
    sltu	$a4,$a5,$a3
    # Line 1922
    ld	$ra,144($sp)
    sltu	$ra,$a3,$ra
    sd	$v0,0($sp)
    # Line 1925
    move	$a1,$a3
    # Line 1922
    bnez	$ra,.L0d9f44ac
    # Line 1925
    movn	$a1,$a5,$a4
    # Line 1924
    move	$v0,$a2
    # Line 1925
    sd	$a1,128($sp)
    # Line 1924
    movn	$v0,$a0,$v1
    # Line 1925
    beqz	$at,.L0d9f45d4
    sd	$v0,120($sp)
    # Line 1932
    ld	$a0,128($sp)
    # Line 1933
    ld	$s2,120($sp)
    # Line 1932
    subu	$a0,$a0,$a2
    # Line 1931
    lw	$s3,12($s6)
    # Line 1932
    addiu	$a0,$a0,1
    # Line 1933
    subu	$s2,$s2,$a2
    # Line 1932
    sd	$a0,112($sp)
    # Line 1933
    sltu	$a0,$s2,$a0
    beqz	$a0,.L0d9f45a4
    # Line 1931
    lw	$s3,4($s3)
    # Line 1933
    ld	$s4,112($sp)
    sll	$s0,$s2,0x2
    b	.L0d9f4664
    sll	$s4,$s4,0x2
.L0d9f4554:
    # Line 1997
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
.L0d9f4560:
    # Line 2025
    ld	$gp,88($sp)
.L0d9f4564:
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$s3,16($sp)
    ld	$s4,40($sp)
    ld	$s5,56($sp)
    ld	$ra,32($sp)
    ld	$s6,96($sp)
    ld	$s7,80($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9f4594:
    # Line 1933
    ld	$a0,112($sp)
    la	$s0,sub_0d9f0000
    addiu	$s0,$s0,10448
    sltu	$a0,$s2,$a0
.L0d9f45a4:
    # Line 1958
    beqz	$a0,.L0d9f46f8
    nop
    beqz	$s2,.L0d9f4718
    ld	$a6,112($sp)
    # Line 1976
    lw	$t8,4($s1)
    # Line 1975
    sd	$s1,0($sp)
    sd	$t8,144($sp)
    # Line 1976
    addu	$t9,$t8,$s2
    move	$a2,$t8
    addiu	$t9,$t9,-1
    sd	$t9,128($sp)
.L0d9f45d0:
    # Line 1975
    lw	$a3,8($s1)
.L0d9f45d4:
    ld	$at,120($sp)
    # Line 1989
    ld	$t9,128($sp)
    # Line 1975
    ld	$v0,128($sp)
    bne	$a2,$at,.L0d9f43e0
    # Line 1993
    ld	$ra,8($sp)
    # Line 1975
    bne	$a3,$v0,.L0d9f46a4
    # Line 1989
    nop	# was lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 1985
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,9168
    move	$a0,$s7
    move	$a1,$s6
    bal __glNamesFreeArray
    move	$a2,$s1
    # Line 1986
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,5296
    move	$a0,$s7
    bal __glNamesNewArray
    move	$a1,$s1
    b	.L0d9f44b0
    # Line 1917
    ld	$t8,0($sp)
.L0d9f4624:
    # Line 1947
    slti	$ra,$a3,2
.L0d9f4628:
    beqz	$ra,.L0d9f46c4
    nop
    lw	$a1,12($s1)
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
.L0d9f463c:
    # Line 1951
    lw	$t9,16($s1)
    lw	$t9,12($t9)
    jal	sub_0d9f0000
    move	$a0,$s7
    # Line 1953
    lw	$ra,12($s1)
    addu	$ra,$ra,$s0
    sw	$s3,0($ra)
.L0d9f4658:
    # Line 1933
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L0d9f4594
    addiu	$s2,$s2,1
.L0d9f4664:
    lw	$a1,12($s1)
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    beq	$a1,$s3,.L0d9f4658
    nop
    lw	$a2,12($s6)
    lbu	$a2,20($a2)
    beqz	$a2,.L0d9f463c
    nop
    lw	$a3,0($a1)
    slt	$a4,$a3,$s5
    bnez	$a4,.L0d9f4628
    # Line 1947
    slti	$ra,$a3,2
    # Line 1942
    addu	$a3,$a3,$s8
    b	.L0d9f4624
    sw	$a3,0($a1)
.L0d9f46a4:
    # Line 1989
    ld	$a2,128($sp)
    addiu	$t9,$t9,9744
    move	$a0,$s7
    move	$a1,$s1
    bal __glNamesFreeArray
    addiu	$a2,$a2,1
    b	.L0d9f44b0
    # Line 1917
    ld	$t8,0($sp)
.L0d9f46c4:
    la	$s0,sub_0d9f0000
    ld	$a0,112($sp)
    addiu	$s0,$s0,10448
    b	.L0d9f45a4
    # Line 1933
    sltu	$a0,$s2,$a0
.L0d9f46d8:
    # Line 1993
    ld	$a3,120($sp)
    addiu	$t9,$t9,9744
    move	$a0,$s7
    move	$a1,$s1
    bal __glNamesFreeArray
    addiu	$a3,$a3,-1
    b	.L0d9f44b0
    # Line 1917
    ld	$t8,0($sp)
.L0d9f46f8:
    b	.L0d9f45d0
    # Line 1975
    lw	$a2,4($s1)
.L0d9f4700:
    # Line 1907
    lw	$a4,20($a1)
    li	$a5,3
    bne	$a4,$a5,.L0d9f4394
    li	$s3,1
    b	.L0d9f4394
    move	$s3,$zero
.L0d9f4718:
    # Line 1958
    sltiu	$a6,$a6,2
    bnez	$a6,.L0d9f44b0
    # Line 1917
    ld	$t8,0($sp)
    # Line 1966
    lw	$a7,4($s1)
    # Line 1965
    sd	$s1,0($sp)
    # Line 1966
    addiu	$a7,$a7,1
    b	.L0d9f44ac
    sd	$a7,144($sp)
.L0d9f4738:
    # Line 2013
    addiu	$t9,$t9,5296
    move	$a0,$s7
    bal __glNamesNewArray
    move	$a1,$s3
    # Line 2014
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d9f4564
    # Line 2025
    ld	$gp,88($sp)
.end __glNamesDeleteRange

# Function: __glNamesIsName
# Declared: Line 2028 (Source lines: 2030-2037)
# Address: 0x0d9f4760 - 0x0d9f47b0 (Size: 80 bytes, Frame: 16)
.globl __glNamesIsName
.ent __glNamesIsName
__glNamesIsName:
    # Line 2030
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x6
    addiu	$ra,$ra,-14804
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 2034
    # lw $t9, -32700($gp) # &sub_0d9f0000
    # Line 2030
    move	$at,$a2
    # Line 2034
    addiu	$t9,$t9,6000
    li	$a2,1
    # Line 2030
    move	$a0,$a1
    # Line 2034
    bal __glNamesFreeArray
    move	$a1,$at
    ld	$ra,0($sp)
    # Line 2035
    li	$at,1
    # Line 2037
    ld	$gp,8($sp)
    addiu	$sp,$sp,16
    movz	$at,$zero,$v0
    jr	$ra
    move	$v0,$at
.end __glNamesIsName

# Function: __glNamesGenNames
# Declared: Line 2045 (Source lines: 2047-2057)
# Address: 0x0d9f47b0 - 0x0d9f4888 (Size: 216 bytes, Frame: 32)
.globl __glNamesGenNames
.ent __glNamesGenNames
__glNamesGenNames:
    # Line 2047
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$v0,0x6
    move	$s0,$a2
    sd	$a3,0($sp)
    addiu	$v0,$v0,-14884
    sd	$gp,16($sp)
    beqz	$a3,.L0d9f4878
    addu	$gp,$t9,$v0
    # Line 2052
    # lw $t9, -25384($gp) # &__glNamesGenRange
    sd	$ra,24($sp)
    bal __glNamesGenRange
    nop
    ld	$ra,24($sp)
    # Line 2053
    blez	$s0,.L0d9f4878
    # Line 2052
    move	$a0,$v0
    # Line 2053
    sll	$a1,$s0,0x2
    ld	$a2,0($sp)
    andi	$a5,$s0,0x7
    sra	$a4,$s0,0x3
    move	$a3,$a2
    beqz	$a5,.L0d9f4820
    addu	$a1,$a1,$a2
.L0d9f480c:
    addiu	$a5,$a5,-1
    # Line 2054
    sw	$a0,0($a3)
    # Line 2053
    addiu	$a0,$a0,1
    bnez	$a5,.L0d9f480c
    addiu	$a3,$a3,4
.L0d9f4820:
    beqz	$a4,.L0d9f4878
    nop
    nop
    nop
.L0d9f4830:
    # Line 2054
    sw	$a0,0($a3)
    # Line 2053
    addiu	$t3,$a0,7
    # Line 2054
    sw	$t3,28($a3)
    # Line 2053
    addiu	$t2,$a0,6
    # Line 2054
    sw	$t2,24($a3)
    # Line 2053
    addiu	$t1,$a0,5
    # Line 2054
    sw	$t1,20($a3)
    # Line 2053
    addiu	$t0,$a0,4
    # Line 2054
    sw	$t0,16($a3)
    # Line 2053
    addiu	$a7,$a0,3
    # Line 2054
    sw	$a7,12($a3)
    # Line 2053
    addiu	$a3,$a3,32
    addiu	$a6,$a0,2
    # Line 2054
    sw	$a6,-24($a3)
    # Line 2053
    addiu	$a5,$a0,1
    addiu	$a0,$a0,8
    bne	$a3,$a1,.L0d9f4830
    # Line 2054
    sw	$a5,-28($a3)
.L0d9f4878:
    ld	$s0,8($sp)
    # Line 2057
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glNamesGenNames

# Function: __glNamesDeleteNames
# Declared: Line 2062 (Source lines: 2064-2083)
# Address: 0x0d9f4890 - 0x0d9f49d0 (Size: 320 bytes, Frame: 192)
.globl __glNamesDeleteNames
.ent __glNamesDeleteNames
__glNamesDeleteNames:
    # Line 2064
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    andi	$t8,$a2,0x1
    sd	$s0,0($sp)
    move	$s0,$a3
    sd	$s2,16($sp)
    lui	$at,0x6
    move	$s2,$a1
    # Line 2075
    lw	$a6,0($a3)
    # Line 2064
    addiu	$at,$at,-15108
    move	$s3,$a0
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    sd	$ra,40($sp)
    # Line 2075
    beqz	$a2,.L0d9f4900
    move	$a5,$a6
    move	$a0,$a2
    sd	$s1,48($sp)
    sll	$s1,$a2,0x2
    beqz	$t8,.L0d9f48f0
    addu	$s1,$s1,$a3
    bne	$a6,$a6,.L0d9f49a8
.L0d9f48e8:
    # Line 2076
    addiu	$a5,$a5,1
    addiu	$s0,$s0,4
.L0d9f48f0:
    sra	$ra,$a0,0x1
    bnezl	$ra,.L0d9f4950
    # Line 2075
    lw	$at,0($s0)
.L0d9f48fc:
    ld	$s1,48($sp)
.L0d9f4900:
    # Line 2082
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$a6
    ld	$s0,0($sp)
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    ld	$ra,40($sp)
    ld	$s3,8($sp)
    ld	$s2,16($sp)
    # Line 2083
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
    nop
    nop
.L0d9f4940:
    # Line 2076
    addiu	$s0,$s0,8
    beq	$s0,$s1,.L0d9f48fc
    addiu	$a5,$a5,1
    # Line 2075
    lw	$at,0($s0)
.L0d9f4950:
    bne	$at,$a5,.L0d9f4988
    # Line 2078
    nop	# was lw $t9, -25380($gp) # &__glNamesDeleteRange
.L0d9f4958:
    # Line 2075
    lw	$v0,4($s0)
    # Line 2076
    addiu	$a5,$a5,1
    # Line 2075
    beq	$v0,$a5,.L0d9f4940
    # Line 2078
    nop	# was lw $t9, -25380($gp) # &__glNamesDeleteRange
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$a6
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    # Line 2079
    lw	$a6,4($s0)
    b	.L0d9f4940
    move	$a5,$a6
.L0d9f4988:
    # Line 2078
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$a6
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    # Line 2079
    lw	$a6,0($s0)
    b	.L0d9f4958
    move	$a5,$a6
.L0d9f49a8:
    # Line 2078
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    move	$a0,$s3
    sd	$a2,32($sp)
    move	$a2,$a6
    bal __glNamesDeleteRange
    subu	$a3,$a6,$a6
    # Line 2079
    lw	$a6,0($s0)
    ld	$a0,32($sp)
    b	.L0d9f48e8
    move	$a5,$a6
.end __glNamesDeleteNames

.late_rodata
jtbl_0da45020:
    .word .L0d9f3538
    .word .L0d9f3744
    .word .L0d9f3720
    .word .L0d9f36fc
    .word .L0d9f36d8
    .word .L0d9f36b8
    .word .L0d9f3684
    .word .L0d9f3660
    .word .L0d9f363c
    .word .L0d9f3618

