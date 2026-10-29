# Source: ../CRIME/crm_texture.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_texture.c
# Total Functions: 54

.text

# Function: __glCrmTexIoctl
# Declared: Line 54 (Source lines: 55-170)
# Address: 0x0d96e3b0 - 0x0d96e4f4 (Size: 324 bytes, Frame: 32)
.ent __glCrmTexIoctl
__glCrmTexIoctl:
    # Line 55
    addiu	$sp,$sp,-32
    # Line 58
    lw	$at,-22412($gp)
    # Line 55
    sd	$a2,8($sp)
    # Line 58
    li	$v0,22018
    # Line 55
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 58
    beqz	$at,.L0d96e3d8
    sd	$ra,24($sp)
    beq	$a1,$v0,.L0d96e454
    move	$ra,$ra
.L0d96e3d8:
    # Line 61
    # lw $t9, -22896($gp) # &ioctl
    move	$a1,$s0
    jal	ioctl
    ld	$a2,8($sp)
    sd	$v0,0($sp)
    beqz	$v0,.L0d96e410
    lw	$a0,-21560($gp)
    beqz	$a0,.L0d96e43c
    ld	$ra,24($sp)
    # Line 62
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,16520
    # Line 61
    lw	$a0,-21560($gp)
.L0d96e410:
    # Line 62
    beqz	$a0,.L0d96e438
    # Line 64
    li	$a2,22018
    li	$a1,22017
    beq	$s0,$a1,.L0d96e464
    # Line 67
    ld	$a1,8($sp)
    # Line 64
    beq	$s0,$a2,.L0d96e48c
    # Line 74
    nop	# was lw $t9, -22892($gp) # &printf
    # Line 64
    li	$a3,22019
    beq	$s0,$a3,.L0d96e4a4
    # Line 79
    la	$a0,sub_0da40000
.L0d96e438:
    ld	$ra,24($sp)
.L0d96e43c:
    # Line 170
    ld	$s0,16($sp)
    ld	$a4,0($sp)
    addiu	$sp,$sp,32
    # Line 91
    li	$v0,-1
    # Line 170
    jr	$ra
    movz	$v0,$zero,$a4
.L0d96e454:
    # Line 59
    move	$v0,$zero
    # Line 170
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96e464:
    # Line 67
    la	$a0,sub_0da40000
    lw	$a4,12($a1)
    # lw $t9, -22892($gp) # &printf
    lw	$a3,0($a1)
    lw	$a2,8($a1)
    lw	$a1,4($a1)
    jal	printf
    addiu	$a0,$a0,16664
    b	.L0d96e43c
    ld	$ra,24($sp)
.L0d96e48c:
    # Line 74
    la	$a0,sub_0da40000
    ld	$a1,8($sp)
    jalr	$t9
    addiu	$a0,$a0,16632
    b	.L0d96e43c
    ld	$ra,24($sp)
.L0d96e4a4:
    # Line 79
    ld	$a1,8($sp)
    # lw $t9, -22892($gp) # &printf
    lw	$a3,8($a1)
    lw	$a2,4($a1)
    lw	$a1,0($a1)
    jal	printf
    addiu	$a0,$a0,16544
    # Line 81
    ld	$a1,8($sp)
    la	$a0,sub_0da40000
    lw	$a6,32($a1)
    lw	$a5,28($a1)
    lw	$a4,24($a1)
    # lw $t9, -22892($gp) # &printf
    lw	$a3,20($a1)
    lw	$a2,16($a1)
    lw	$a1,12($a1)
    jal	printf
    addiu	$a0,$a0,16592
    b	.L0d96e43c
    ld	$ra,24($sp)
.end __glCrmTexIoctl

# Function: texFastBind
# Declared: Line 175 (Source lines: 175-181)
# Address: 0x0d96e500 - 0x0d96e540 (Size: 64 bytes, Frame: 16)
.ent texFastBind
texFastBind:
    # Line 175
    lw	$at,-21560($gp)
    addiu	$sp,$sp,-16
    sd	$s8,0($sp)
    move	$s8,$a1
    beqz	$at,.L0d96e528
    sd	$ra,8($sp)
    # Line 177
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,16720
.L0d96e528:
    ld	$ra,8($sp)
    # Line 181
    move	$v0,$zero
    # Line 180
    sb	$zero,-4096($s8)
    # Line 181
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end texFastBind

# Function: texIoctlBind
# Declared: Line 185 (Source lines: 185-208)
# Address: 0x0d96e540 - 0x0d96e5b8 (Size: 120 bytes, Frame: 32)
.ent texIoctlBind
texIoctlBind:
    # Line 185
    lw	$at,-21560($gp)
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    move	$a4,$a0
    beqz	$at,.L0d96e570
    sd	$ra,0($sp)
    sd	$a0,8($sp)
    # Line 201
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,16752
    ld	$a4,8($sp)
.L0d96e570:
    # Line 203
    # lw $t9, -22896($gp) # &ioctl
    addiu	$a2,$sp,28
    li	$a1,22096
    jal	ioctl
    lw	$a0,31504($a4)
    beqz	$v0,.L0d96e5ac
    ld	$ra,0($sp)
    # Line 204
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,16792
    ld	$ra,0($sp)
    # Line 205
    li	$v0,-1
    # Line 208
    jr	$ra
    addiu	$sp,$sp,32
.L0d96e5ac:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end texIoctlBind

# Function: crmUpdateSharedTiles
# Declared: Line 319 (Source lines: 320-411)
# Address: 0x0d96e5c0 - 0x0d96eb08 (Size: 1352 bytes, Frame: 192)
.ent crmUpdateSharedTiles
crmUpdateSharedTiles:
    # Line 320
    addiu	$sp,$sp,-192
    # Line 327
    lw	$v0,284($a1)
    sd	$v0,160($sp)
    lw	$v0,0($v0)
    andi	$at,$v0,0x80
    beqz	$at,.L0d96e5f0
    # Line 320
    sd	$a1,152($sp)
    # Line 331
    li	$v0,1
    # Line 411
    jr	$ra
    addiu	$sp,$sp,192
.L0d96e5e8:
    jr	$ra
    addiu	$sp,$sp,192
.L0d96e5f0:
    # Line 331
    andi	$a1,$v0,0x20
    beqz	$a1,.L0d96eab4
    nop
    sd	$s5,72($sp)
    sd	$s1,64($sp)
    sd	$ra,56($sp)
    sd	$s8,48($sp)
    sd	$s4,40($sp)
    sd	$s6,32($sp)
    sd	$s3,24($sp)
    sd	$s2,16($sp)
    sd	$s0,128($sp)
    sd	$a0,80($sp)
    # Line 337
    sd	$zero,104($sp)
    sd	$s7,136($sp)
    la	$s7,sub_0d970000
    ld	$a5,160($sp)
    sd	$zero,96($sp)
    addiu	$a5,$a5,12
    sd	$a5,120($sp)
    ld	$a4,152($sp)
    ld	$a0,96($sp)
    lw	$a4,236($a4)
    la	$a3,sub_0da40000
    li	$s0,-1
    sd	$a4,88($sp)
    sll	$a2,$a4,0x1e
    addiu	$s7,$s7,11952
    ld	$a1,104($sp)
    subu	$a2,$a2,$a4
    addiu	$a3,$a3,25624
    ld	$v0,88($sp)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    b	.L0d96e6d0
    sd	$a2,168($sp)
.L0d96e680:
    # Line 386
    ld	$a6,144($sp)
    lw	$a6,0($a6)
.L0d96e688:
    ld	$v0,88($sp)
.L0d96e68c:
    ld	$a0,96($sp)
    # Line 408
    ld	$t0,144($sp)
    ld	$a1,104($sp)
    li	$a7,-33
    and	$a7,$a7,$a6
    sw	$a7,0($t0)
.L0d96e6a4:
    # Line 338
    addiu	$a0,$a0,36
    sd	$a0,96($sp)
    addiu	$v0,$v0,-1
    sd	$v0,88($sp)
    li	$t0,396
    ld	$t1,168($sp)
    addiu	$a1,$a1,100
    sd	$a1,104($sp)
    addiu	$t1,$t1,4
    beq	$t0,$a0,.L0d96e8e0
    sd	$t1,168($sp)
.L0d96e6d0:
    # Line 343
    ld	$a5,152($sp)
    # Line 342
    ld	$a2,160($sp)
    # Line 343
    lw	$a5,228($a5)
    # Line 345
    slti	$a3,$v0,7
    # Line 342
    lw	$a2,32($a2)
    # Line 343
    addu	$a5,$a5,$a1
    # Line 345
    beqz	$a3,.L0d96e6a4
    # Line 342
    addu	$a2,$a2,$a0
    # Line 345
    lw	$a6,0($a2)
    andi	$a7,$a6,0x20
    beqz	$a7,.L0d96e6a4
    nop
    sd	$v0,88($sp)
    sd	$a5,112($sp)
    # Line 351
    lw	$a7,24($a5)
    # Line 350
    lw	$s4,20($a5)
    # Line 354
    li	$t0,1
    sd	$a2,144($sp)
    sllv	$t0,$t0,$v0
    sd	$a1,104($sp)
    beq	$t0,$s4,.L0d96e730
    sd	$a0,96($sp)
    bne	$t0,$a7,.L0d96e74c
    nop
.L0d96e730:
    beqz	$s4,.L0d96e74c
    nop
    beqz	$a7,.L0d96e74c
    ld	$t1,144($sp)
    lw	$t1,20($t1)
    bnez	$t1,.L0d96e750
    move	$v0,$zero
.L0d96e74c:
    li	$v0,1
.L0d96e750:
    bnez	$v0,.L0d96e8e0
    # Line 359
    li	$t2,64
    beq	$t0,$t2,.L0d96e928
    li	$t3,16
    beq	$t0,$t3,.L0d96e928
    # Line 361
    ld	$s1,160($sp)
    lw	$s1,20($s1)
    beqz	$s1,.L0d96ea04
    # Line 359
    li	$s1,1
    # Line 376
    ld	$v0,120($sp)
.L0d96e778:
    # Line 380
    lw	$s1,16($v0)
    # Line 383
    ld	$s3,144($sp)
    # Line 380
    ld	$t8,168($sp)
    # Line 383
    lw	$ra,16($s3)
    andi	$t9,$a6,0x4
    # Line 380
    lw	$t8,40($t8)
    # Line 383
    sllv	$s4,$s4,$ra
    # Line 379
    lw	$s3,20($s3)
    # Line 383
    beqz	$t9,.L0d96e940
    # Line 380
    addu	$s1,$s1,$t8
    # Line 383
    blez	$a7,.L0d96e68c
    ld	$v0,88($sp)
    li	$s2,1
    addiu	$s5,$a7,1
    sra	$s8,$s4,0x1
    li	$s6,32
    addiu	$t8,$s8,-1
    sd	$t8,176($sp)
    b	.L0d96e800
    slt	$s6,$s6,$s4
    nop
    nop
.L0d96e7d0:
    # Line 387
    move	$t9,$s7
    move	$a0,$s3
    move	$a1,$s1
    bal __glCrmPickTextureProcs
    move	$a2,$s4
.L0d96e7e4:
    # Line 389
    addiu	$s1,$s1,8
.L0d96e7e8:
    andi	$t9,$s2,0x3
    # Line 391
    andi	$t3,$s2,0xf
    # Line 386
    addiu	$s2,$s2,1
    # Line 389
    beqz	$t9,.L0d96e8bc
    # Line 388
    addu	$s3,$s4,$s3
.L0d96e7fc:
    # Line 386
    beq	$s5,$s2,.L0d96e680
.L0d96e800:
    # Line 387
    ld	$a6,176($sp)
    # Line 383
    bnez	$s6,.L0d96e7d0
    # Line 387
    move	$a5,$s3
    blez	$s8,.L0d96e7e4
    move	$v0,$s1
    sra	$a0,$s8,0x1
    andi	$ra,$s8,0x1
    beqz	$ra,.L0d96e844
    addiu	$v0,$v0,2
    addiu	$v0,$s1,2
    andi	$v1,$v0,0x7
    addiu	$a5,$s3,2
    lhu	$at,0($s3)
    addiu	$a6,$a6,-1
    beqz	$v1,.L0d96e8cc
    sh	$at,0($s1)
.L0d96e840:
    addiu	$v0,$v0,2
.L0d96e844:
    bnez	$a0,.L0d96eb00
    andi	$a2,$v0,0x7
.L0d96e84c:
    b	.L0d96e7e8
    # Line 389
    addiu	$s1,$s1,8
    nop
    nop
    nop
.L0d96e860:
    # Line 387
    addiu	$v0,$v0,2
    beq	$a6,$s0,.L0d96e84c
    andi	$a2,$v0,0x7
    lhu	$a1,0($a5)
.L0d96e870:
    addiu	$a6,$a6,-2
    beqz	$a2,.L0d96e8a8
    sh	$a1,-2($v0)
.L0d96e87c:
    addiu	$v0,$v0,2
    andi	$a4,$v0,0x7
    lhu	$a3,2($a5)
    addiu	$a5,$a5,4
    bnez	$a4,.L0d96e860
    sh	$a3,-2($v0)
    addiu	$v0,$v0,24
    addiu	$t0,$v0,7680
    andi	$a7,$v0,0x1e0
    b	.L0d96e860
    movz	$v0,$t0,$a7
.L0d96e8a8:
    addiu	$v0,$v0,24
    addiu	$t2,$v0,7680
    andi	$t1,$v0,0x1e0
    b	.L0d96e87c
    movz	$v0,$t2,$t1
.L0d96e8bc:
    # Line 391
    addiu	$s1,$s1,2016
    # Line 393
    addiu	$t8,$s1,-7680
    b	.L0d96e7fc
    movz	$s1,$t8,$t3
.L0d96e8cc:
    # Line 387
    addiu	$ra,$s1,7706
    addiu	$v0,$s1,26
    andi	$t9,$v0,0x1e0
    b	.L0d96e840
    movz	$v0,$ra,$t9
.L0d96e8e0:
    # Line 411
    ld	$s0,128($sp)
    ld	$s1,64($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s4,40($sp)
    ld	$s5,72($sp)
    ld	$s6,32($sp)
    ld	$s7,136($sp)
    # Line 410
    ld	$v1,160($sp)
    # Line 411
    ld	$ra,56($sp)
    li	$v0,1
    # Line 410
    lw	$a0,0($v1)
    # Line 411
    ld	$s8,48($sp)
    # Line 410
    li	$at,-33
    # Line 411
    addiu	$sp,$sp,192
    # Line 410
    and	$at,$at,$a0
    # Line 411
    jr	$ra
    # Line 410
    sw	$at,0($v1)
.L0d96e928:
    # Line 361
    ld	$a1,160($sp)
    lw	$a1,8($a1)
    beqz	$a1,.L0d96ea9c
    # Line 359
    move	$s1,$zero
    # Line 376
    b	.L0d96e778
    ld	$v0,160($sp)
.L0d96e940:
    # Line 386
    blez	$a7,.L0d96e688
    move	$s5,$a7
    li	$s6,32
    la	$s8,sub_0d970000
    addiu	$s2,$s1,128
    slt	$s6,$s6,$s4
    b	.L0d96e988
    addiu	$s8,$s8,16768
.L0d96e960:
    # Line 402
    move	$t9,$s8
    move	$a0,$s3
    move	$a1,$s2
    bal __glCrmPickTextureProcs
    move	$a2,$s4
.L0d96e974:
    # Line 398
    addiu	$s5,$s5,-1
.L0d96e978:
    # Line 405
    addiu	$s2,$s2,512
    addiu	$s1,$s1,512
    # Line 398
    blez	$s5,.L0d96e9f8
    # Line 404
    addu	$s3,$s4,$s3
.L0d96e988:
    # Line 386
    beqz	$s6,.L0d96e9e0
    # Line 399
    nop	# was lw $t9, -22808($gp) # &bcopy
    move	$t9,$s8
    move	$a0,$s3
    move	$a1,$s1
    bal __glCrmPickTextureProcs
    move	$a2,$s4
    ld	$ra,112($sp)
.L0d96e9a8:
    lw	$ra,20($ra)
    li	$at,1
    bne	$ra,$at,.L0d96e974
    nop
    bnez	$s6,.L0d96e960
    # Line 402
    nop	# was lw $t9, -22808($gp) # &bcopy
    move	$a0,$s3
    move	$a1,$s2
    jal	bcopy
    move	$a2,$s4
    b	.L0d96e978
    # Line 398
    addiu	$s5,$s5,-1
    nop
    nop
.L0d96e9e0:
    # Line 399
    move	$a0,$s3
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s4
    b	.L0d96e9a8
    ld	$ra,112($sp)
.L0d96e9f8:
    ld	$a6,144($sp)
    b	.L0d96e688
    # Line 398
    lw	$a6,0($a6)
.L0d96ea04:
    # Line 361
    ld	$t0,160($sp)
    lw	$t0,28($t0)
    bnez	$t0,.L0d96ea94
    nop
.L0d96ea14:
    sd	$a7,184($sp)
    # Line 365
    # lw $t9, -32732($gp) # &sub_0d970000
    # Line 364
    sw	$s1,8($sp)
    # Line 365
    ld	$a0,80($sp)
    addiu	$t9,$t9,-7248
    addiu	$a2,$sp,0
    # Line 363
    li	$a1,1
    sw	$a1,4($sp)
    # Line 365
    li	$a1,22017
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($a0)
    bnez	$v0,.L0d96eabc
    # Line 370
    sll	$v1,$s1,0x2
    ld	$v0,160($sp)
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    lw	$a3,0($sp)
    addu	$v0,$v0,$v1
    # Line 371
    sw	$s1,12($v0)
    # Line 370
    sw	$a3,8($v0)
    # Line 372
    lw	$a2,12($sp)
    # Line 373
    beqz	$a3,.L0d96e8e0
    # Line 372
    sw	$a2,16($v0)
    # Line 373
    beqz	$a2,.L0d96e8e0
    # Line 376
    ld	$t1,160($sp)
    ld	$a7,184($sp)
    lw	$t0,0($t1)
    ld	$a6,144($sp)
    ori	$t0,$t0,0x10
    sw	$t0,0($t1)
    b	.L0d96e778
    lw	$a6,0($a6)
.L0d96ea94:
    b	.L0d96e778
    ld	$v0,120($sp)
.L0d96ea9c:
    # Line 361
    ld	$t1,160($sp)
    lw	$t1,16($t1)
    beqz	$t1,.L0d96ea14
    nop
    b	.L0d96e778
    # Line 376
    ld	$v0,160($sp)
.L0d96eab4:
    # Line 334
    b	.L0d96e5e8
    li	$v0,1
.L0d96eabc:
    # Line 367
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s6,32($sp)
    ld	$s4,40($sp)
    ld	$s8,48($sp)
    ld	$ra,56($sp)
    ld	$s0,128($sp)
    ld	$s1,64($sp)
    ld	$s5,72($sp)
    ld	$s7,136($sp)
    # Line 368
    b	.L0d96e5e8
    move	$v0,$zero
    nop
    nop
.L0d96eb00:
    b	.L0d96e870
    # Line 387
    lhu	$a1,0($a5)
.end crmUpdateSharedTiles

# Function: crmCalcDMTexture
# Declared: Line 415 (Source lines: 416-421)
# Address: 0x0d96eb10 - 0x0d96eb64 (Size: 84 bytes, Frame: 32)
.ent crmCalcDMTexture
crmCalcDMTexture:
    # Line 416
    addiu	$sp,$sp,-32
    lui	$at,0xe
    sd	$gp,16($sp)
    addiu	$at,$at,8828
    addu	$gp,$t9,$at
    # Line 419
    lw	$t9,32508($a0)
    # Line 416
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 419
    jalr	$t9
    # Line 416
    move	$s8,$a1
    # Line 420
    lwc1	$f1,52($s8)
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    sub.d	$f0,$f0,$f1
    ld	$ra,0($sp)
    # Line 421
    ld	$gp,16($sp)
    # Line 420
    cvt.s.d	$f0,$f0
    swc1	$f0,52($s8)
    # Line 421
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end crmCalcDMTexture

# Function: crmDefineTexture
# Declared: Line 424 (Source lines: 426-544)
# Address: 0x0d96eb70 - 0x0d96efb8 (Size: 1096 bytes, Frame: 240)
.ent crmDefineTexture
crmDefineTexture:
    # Line 426
    addiu	$sp,$sp,-112
    sd	$s1,88($sp)
    sd	$s2,104($sp)
    sd	$s5,64($sp)
    sd	$s0,80($sp)
    # Line 431
    lw	$s0,284($a1)
    # Line 426
    sd	$s4,72($sp)
    # Line 431
    lw	$at,4($s0)
    # Line 426
    move	$s4,$a0
    sd	$s3,48($sp)
    move	$s3,$a1
    move	$s5,$a2
    sd	$s6,56($sp)
    move	$s6,$a3
    # Line 431
    bltz	$at,.L0d96ee18
    sd	$ra,96($sp)
    # Line 472
    lw	$v0,0($s0)
    andi	$v1,$v0,0x10
    beqz	$v1,.L0d96edc8
    # Line 480
    sd	$zero,40($sp)
.L0d96ebc0:
    # Line 478
    andi	$a0,$v0,0x80
.L0d96ebc4:
    beqz	$a0,.L0d96eee8
    nop
    lw	$v0,36($s0)
    beqz	$v0,.L0d96ef6c
    nop
    lw	$a0,156($v0)
    beqz	$a0,.L0d96ef74
    # Line 526
    move	$s2,$zero
    # Line 480
    lw	$s2,0($a0)
.L0d96ebe8:
    li	$a3,6
.L0d96ebec:
    addiu	$v0,$sp,0
    # Line 484
    sw	$zero,32($sp)
    sw	$zero,28($sp)
    sw	$zero,24($sp)
    sw	$zero,20($sp)
    sw	$zero,16($sp)
    sw	$zero,12($sp)
    move	$a2,$zero
    li	$a1,4
    li	$a6,10
    move	$a7,$zero
    addiu	$v0,$sp,0
.L0d96ec1c:
    lw	$a4,236($s3)
    slt	$a4,$a4,$a6
    # Line 485
    addiu	$a7,$a7,1
    # Line 489
    move	$a0,$s2
    # Line 484
    bnez	$a4,.L0d96ec44
    # Line 485
    addiu	$a6,$a6,-1
    # Line 487
    beqz	$s2,.L0d96ee04
    nop
.L0d96ec3c:
    # Line 491
    beqz	$s5,.L0d96edac
    # Line 489
    sw	$a0,12($v0)
.L0d96ec44:
    # Line 485
    bne	$a7,$a1,.L0d96ec1c
    addiu	$v0,$v0,4
    beqz	$s2,.L0d96edb4
    nop
.L0d96ec54:
    # Line 495
    beqz	$s5,.L0d96eed4
    nop
    # Line 497
    sw	$s2,32($sp)
.L0d96ec60:
    # Line 496
    sw	$s2,28($sp)
.L0d96ec64:
    # Line 504
    lw	$v0,4($s0)
    sw	$v0,0($sp)
    lw	$a5,0($s0)
    andi	$a5,$a5,0x80
    beqz	$a5,.L0d96ec84
    # Line 506
    lui	$a6,0x8000
    or	$a6,$v0,$a6
    sw	$a6,0($sp)
.L0d96ec84:
    lw	$t8,32($s0)
    lw	$t8,4($t8)
    slti	$t3,$t8,2
    # Line 508
    li	$t2,1
    movz	$t2,$t8,$t3
    sw	$t2,4($sp)
    lw	$t1,32($s0)
    # Line 510
    # lw $t9, -32732($gp) # &sub_0d970000
    # Line 508
    lw	$t1,8($t1)
    # Line 510
    addiu	$t9,$t9,-7248
    # Line 508
    slti	$t0,$t1,2
    # Line 509
    li	$a7,1
    # Line 510
    addiu	$a2,$sp,0
    movz	$a7,$t1,$t0
    # Line 509
    sw	$a7,8($sp)
    # Line 510
    li	$a1,22019
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s4)
    beqz	$v0,.L0d96ef44
    sltiu	$s1,$v0,1
    # Line 517
    lw	$t9,-21560($gp)
    beqz	$t9,.L0d96ecf4
    ld	$s5,64($sp)
    # Line 522
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    move	$a1,$s2
    jal	printf
    addiu	$a0,$a0,16824
.L0d96ecf4:
    move	$v0,$zero
.L0d96ecf8:
    # Line 526
    beqz	$s6,.L0d96ed88
    ld	$s2,104($sp)
    beqz	$s1,.L0d96eef0
    nop
    beqz	$v0,.L0d96ede4
    # Line 528
    lw	$a1,-22400($gp)
.L0d96ed10:
    sw	$s3,32504($s4)
    beqz	$a1,.L0d96ef2c
    lw	$a1,4($s0)
    # Line 532
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6912
    bal __glCrmGenericPickStoreProcs
    move	$a0,$s4
    sltiu	$s1,$v0,1
.L0d96ed30:
    # Line 536
    beqz	$s6,.L0d96ed88
    ld	$s2,104($sp)
.L0d96ed38:
    beqz	$s1,.L0d96ed88
    ld	$s2,104($sp)
    lw	$ra,0($s0)
    andi	$ra,$ra,0x80
    beqz	$ra,.L0d96ef00
    ld	$s2,104($sp)
    ld	$s2,104($sp)
    # Line 544
    ld	$s0,80($sp)
    move	$v0,$s1
    ld	$s1,88($sp)
    ld	$s3,48($sp)
    # Line 538
    la	$at,sub_0d970000
    ld	$ra,96($sp)
    # Line 544
    ld	$s6,56($sp)
    # Line 538
    addiu	$at,$at,-5360
    sw	$at,11996($s4)
    # Line 544
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
    ld	$s2,104($sp)
.L0d96ed88:
    ld	$s3,48($sp)
    ld	$s6,56($sp)
    ld	$ra,96($sp)
    ld	$s4,72($sp)
    ld	$s0,80($sp)
    move	$v0,$s1
    ld	$s1,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96edac:
    # Line 494
    bnez	$s2,.L0d96ec54
    nop
.L0d96edb4:
    # Line 500
    lw	$v1,8($s0)
    sw	$v1,28($sp)
    # Line 501
    lw	$v0,20($s0)
    b	.L0d96ec64
    sw	$v0,32($sp)
.L0d96edc8:
    # Line 472
    beqz	$a2,.L0d96ef8c
    andi	$a0,$v0,0x40
    beqz	$a0,.L0d96ebc4
    # Line 478
    andi	$a0,$v0,0x80
    # Line 526
    beqz	$a3,.L0d96efb0
    ld	$s5,64($sp)
    li	$s1,1
.L0d96ede4:
    ld	$a1,40($sp)
    bnez	$a1,.L0d96ed10
    # Line 528
    lw	$a1,-22400($gp)
    # Line 526
    lw	$a2,32504($s4)
    bne	$a2,$s3,.L0d96ed10
    # Line 528
    lw	$a1,-22400($gp)
    b	.L0d96ed30
    nop
.L0d96ee04:
    # Line 489
    lw	$a0,32($s0)
    addiu	$a2,$a2,36
    addu	$a0,$a0,$a2
    b	.L0d96ec3c
    lw	$a0,-12($a0)
.L0d96ee18:
    # Line 438
    lw	$a1,32560($a0)
    # Line 441
    lw	$v0,8($a1)
    sll	$a0,$v0,0x2
    addu	$a0,$a1,$a0
    lw	$a2,524($a0)
    # Line 456
    li	$t0,128
    # Line 463
    li	$a5,-1
    # Line 441
    move	$a7,$zero
    lwc1	$f4,_lit_3f800000
    beqz	$a2,.L0d96ee8c
    move	$a6,$v0
    move	$v0,$a1
    li	$t0,128
    nop
.L0d96ee50:
    lw	$a2,524($v0)
    beqz	$a2,.L0d96ef7c
    nop
    # Line 450
    lw	$a3,12($v0)
    lwc1	$f0,224($a3)
    c.lt.s	$f0,$f4
    movt	$a6,$a7,$fcc0
    # Line 445
    addiu	$a7,$a7,1
    addiu	$v0,$v0,4
    bne	$a7,$t0,.L0d96ee50
    movt.s	$f4,$f0,$fcc0
.L0d96ee7c:
    # Line 456
    sll	$a0,$a6,0x2
    move	$v0,$a6
    sw	$a6,8($a1)
    addu	$a0,$a1,$a0
.L0d96ee8c:
    # Line 458
    addiu	$a3,$v0,1
    move	$a2,$v0
    beq	$a3,$t0,.L0d96ef84
    sw	$a3,8($a1)
.L0d96ee9c:
    # Line 459
    lw	$v0,524($a0)
    beqz	$v0,.L0d96eeb8
    nop
    # Line 464
    lw	$a4,0($v0)
    # Line 463
    sw	$a5,4($v0)
    # Line 464
    ori	$a4,$a4,0x10
    sw	$a4,0($v0)
.L0d96eeb8:
    # Line 467
    sw	$s0,524($a0)
    # Line 466
    sw	$s3,12($a0)
    lw	$v0,0($s0)
    li	$a6,1
    sd	$a6,40($sp)
    b	.L0d96ebc0
    # Line 468
    sw	$a2,4($s0)
.L0d96eed4:
    # Line 495
    lw	$a7,236($s3)
    bne	$a7,$a3,.L0d96ec64
    nop
    b	.L0d96ec60
    # Line 497
    sw	$s2,32($sp)
.L0d96eee8:
    # Line 526
    b	.L0d96ebe8
    move	$s2,$zero
.L0d96eef0:
    # Line 536
    bnez	$s6,.L0d96ed38
    nop
    b	.L0d96ed88
    ld	$s2,104($sp)
.L0d96ef00:
    # Line 544
    ld	$s0,80($sp)
    move	$v0,$s1
    ld	$s1,88($sp)
    ld	$s3,48($sp)
    ld	$s6,56($sp)
    ld	$ra,96($sp)
    # Line 540
    lw	$t0,32508($s4)
    sw	$t0,11996($s4)
    # Line 544
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96ef2c:
    # Line 530
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6848
    bal __glCrmGenericPickStoreProcs
    move	$a0,$s4
    b	.L0d96ed30
    sltiu	$s1,$v0,1
.L0d96ef44:
    # Line 513
    lw	$v0,0($s0)
    li	$v1,-17
    and	$v0,$v0,$v1
    beqz	$s5,.L0d96ef9c
    sw	$v0,0($s0)
    # Line 515
    ori	$a0,$v0,0x40
    ld	$s5,64($sp)
    sw	$a0,0($s0)
.L0d96ef64:
    # Line 517
    b	.L0d96ecf8
    li	$v0,1
.L0d96ef6c:
    # Line 526
    b	.L0d96ebe8
    move	$s2,$zero
.L0d96ef74:
    b	.L0d96ebec
    # Line 480
    li	$a3,6
.L0d96ef7c:
    # Line 448
    b	.L0d96ee7c
    # Line 447
    move	$a6,$a7
.L0d96ef84:
    # Line 459
    b	.L0d96ee9c
    sw	$zero,8($a1)
.L0d96ef8c:
    # Line 522
    li	$s1,1
    ld	$s5,64($sp)
    b	.L0d96ecf8
    move	$v0,$zero
.L0d96ef9c:
    ld	$s5,64($sp)
    # Line 517
    li	$a1,-65
    and	$a1,$v0,$a1
    b	.L0d96ef64
    sw	$a1,0($s0)
.L0d96efb0:
    b	.L0d96ed30
    # Line 532
    li	$s1,1
.end crmDefineTexture

# Function: crmSetTextureParam
# Declared: Line 548 (Source lines: 549-758)
# Address: 0x0d96efc0 - 0x0d96f76c (Size: 1964 bytes, Frame: 240)
.ent crmSetTextureParam
crmSetTextureParam:
    # Line 563
    lw	$a1,32088($a0)
    # Line 549
    addiu	$sp,$sp,-112
    sd	$s3,72($sp)
    # Line 561
    lw	$s3,32188($a0)
    # Line 549
    sd	$s4,80($sp)
    sd	$s1,32($sp)
    # Line 563
    lw	$s1,28208($a0)
    # Line 561
    lw	$s4,32184($a0)
    # Line 549
    sd	$s2,64($sp)
    move	$s2,$a0
    # Line 563
    beqz	$s1,.L0d96f6c0
    sd	$ra,88($sp)
    # Line 565
    sll	$t8,$a1,0x10
    # Line 566
    ori	$a1,$a1,0x8000
    sw	$a1,32088($a0)
    # Line 571
    lw	$a7,284($s1)
    # Line 592
    lw	$a0,20($s1)
    # Line 574
    lw	$at,32($a7)
    sd	$s0,96($sp)
    # Line 565
    slti	$t8,$t8,0
    # Line 583
    lw	$t9,16($at)
    # Line 592
    li	$a2,9728
    # Line 565
    xori	$t8,$t8,0x1
    # Line 583
    lw	$s0,12($at)
    # Line 565
    sd	$t8,56($sp)
    # Line 583
    lui	$t8,0xc
    andi	$t9,$t9,0x3
    # Line 580
    sw	$zero,4($sp)
    # Line 583
    sll	$t9,$t9,0x12
    andi	$s0,$s0,0xf
    # Line 592
    lw	$a4,16($s1)
    # Line 583
    nor	$t8,$t8,$zero
    sll	$s0,$s0,0x14
    lw	$at,0($at)
    and	$s0,$s0,$t8
    # Line 586
    lui	$t8,0x100
    # Line 579
    sw	$zero,0($sp)
    # Line 588
    nor	$v0,$t8,$zero
    # Line 583
    or	$s0,$s0,$t9
    # Line 575
    lw	$a5,2484($s2)
    # Line 583
    andi	$at,$at,0x4
    # Line 588
    and	$v0,$s0,$v0
    # Line 573
    lw	$a6,228($s1)
    # Line 586
    or	$s0,$s0,$t8
    # Line 592
    beq	$a2,$a4,.L0d96f49c
    movz	$s0,$v0,$at
    li	$t1,9729
    beq	$t1,$a4,.L0d96f510
    # Line 597
    li	$t8,-897
    # Line 592
    li	$t9,9984
    beq	$a4,$t9,.L0d96f590
    li	$t0,1
    li	$ra,9985
    beq	$a4,$ra,.L0d96f650
    li	$at,9986
    beq	$a4,$at,.L0d96f698
    li	$v0,9987
    beq	$a4,$v0,.L0d96f6ec
    xor	$t9,$t1,$a0
    # Line 616
    beq	$a2,$a0,.L0d96f710
    # Line 618
    li	$v0,-65
    xor	$v1,$t1,$a0
    # Line 621
    ori	$a1,$s0,0x40
    movz	$s0,$a1,$v1
.L0d96f0c0:
    sd	$zero,24($sp)
.L0d96f0c4:
    # Line 634
    lw	$a4,4($s1)
    li	$t1,10497
    beq	$t1,$a4,.L0d96f4c8
    lw	$a7,-21556($gp)
    li	$a2,10496
    beq	$a4,$a2,.L0d96f538
    # Line 642
    li	$a0,1
    # Line 634
    li	$a3,0x812f
    beq	$a4,$a3,.L0d96f61c
    # Line 645
    sltu	$a1,$zero,$a7
    # Line 634
    li	$t2,0x812d
    beq	$a4,$t2,.L0d96f678
    sltu	$a1,$zero,$a7
    move	$a0,$zero
.L0d96f0fc:
    # Line 652
    lw	$a4,8($s1)
    beq	$t1,$a4,.L0d96f4e0
    # Line 654
    li	$t8,-13
    # Line 652
    li	$t3,10496
    beq	$a4,$t3,.L0d96f554
    li	$t8,0x812f
    beq	$a4,$t8,.L0d96f630
    # Line 662
    li	$t8,-13
    # Line 668
    li	$v0,1
    # Line 652
    li	$t9,0x812d
    xor	$t9,$a4,$t9
    # Line 665
    li	$ra,-13
    li	$v1,4
    li	$at,8
    movz	$at,$v1,$a1
    and	$ra,$s0,$ra
    movz	$a0,$v0,$t9
    or	$ra,$ra,$at
    movz	$s0,$ra,$t9
.L0d96f148:
    # Line 675
    lw	$a4,0($a5)
    li	$ra,8448
    # Line 670
    andi	$a0,$a0,0xff
    # Line 675
    beq	$a4,$ra,.L0d96f4ec
    # Line 670
    movn	$a0,$zero,$a1
    # Line 675
    li	$at,8449
    beq	$a4,$at,.L0d96f570
    li	$v0,3042
    beq	$a4,$v0,.L0d96f63c
    li	$v1,7681
    beq	$a4,$v1,.L0d96f450
    li	$a1,0x8062
    beq	$a4,$a1,.L0d96f450
    move	$a1,$zero
.L0d96f180:
    # Line 704
    lw	$a2,48($a6)
    # Line 701
    li	$t1,10
    # Line 700
    lw	$t8,236($s1)
    # Line 704
    subu	$a4,$t1,$a2
    # Line 711
    andi	$a2,$a2,0xf
    # Line 700
    andi	$t9,$t8,0xf
    # Line 701
    subu	$t8,$t1,$t8
    andi	$t8,$t8,0xf
    # Line 700
    li	$ra,-15361
    # Line 703
    lw	$a3,44($a6)
    # Line 701
    sll	$t8,$t8,0xe
    # Line 700
    and	$s0,$s0,$ra
    # Line 703
    subu	$t1,$t1,$a3
    # Line 710
    andi	$a3,$a3,0xf
    sll	$a3,$a3,0x4
    # Line 713
    lui	$t3,0xffff
    # Line 700
    sll	$t9,$t9,0xa
    # Line 712
    li	$t2,14
    # Line 700
    or	$s0,$s0,$t9
    # Line 713
    subu	$a7,$t2,$a4
    # Line 712
    subu	$t2,$t2,$t1
    # Line 706
    andi	$t1,$t1,0xf
    # Line 701
    lui	$t9,0x3
    # Line 706
    sll	$t1,$t1,0xc
    # Line 707
    andi	$a4,$a4,0xf
    # Line 712
    sllv	$t2,$t0,$t2
    # Line 713
    sllv	$a7,$t0,$a7
    # Line 712
    addiu	$t2,$t2,-1
    # Line 713
    addiu	$a7,$a7,-1
    # Line 712
    sll	$t2,$t2,0x10
    # Line 713
    andi	$a7,$a7,0xffff
    and	$t2,$t2,$t3
    or	$a7,$a7,$t2
    # Line 707
    li	$t2,-3841
    sll	$a4,$a4,0x8
    and	$t1,$t1,$t2
    or	$a4,$a4,$t1
    # Line 710
    li	$t1,-241
    # Line 701
    ori	$t9,$t9,0xc000
    # Line 710
    and	$a4,$a4,$t1
    # Line 713
    sd	$a7,40($sp)
    # Line 710
    or	$a3,$a3,$a4
    # Line 711
    li	$a4,-16
    # Line 701
    nor	$t9,$t9,$zero
    # Line 713
    sw	$a7,4($sp)
    # Line 711
    and	$a3,$a3,$a4
    # Line 701
    and	$s0,$s0,$t9
    # Line 711
    or	$a2,$a2,$a3
    sd	$a2,48($sp)
    # Line 701
    or	$s0,$s0,$t8
    # Line 713
    beqz	$a0,.L0d96f440
    # Line 711
    sw	$a2,0($sp)
    # Line 720
    lwc1	$f3,156($s1)
    lwc1	$f4,30752($s2)
    # Line 721
    lwc1	$f2,160($s1)
    lwc1	$f6,30756($s2)
    # Line 722
    lwc1	$f1,164($s1)
    lwc1	$f5,30760($s2)
    # Line 723
    lwc1	$f0,168($s1)
    # Line 720
    mul.s	$f3,$f3,$f4
    # Line 723
    lwc1	$f4,30792($s2)
    # Line 721
    mul.s	$f2,$f2,$f6
    # Line 720
    trunc.l.s	$f3,$f3
    # Line 722
    mul.s	$f1,$f1,$f5
    # Line 721
    trunc.l.s	$f2,$f2
    # Line 723
    mul.s	$f0,$f0,$f4
    # Line 720
    dmfc1	$ra,$f3
    # Line 722
    trunc.l.s	$f1,$f1
    # Line 721
    dmfc1	$v1,$f2
    # Line 723
    trunc.l.s	$f0,$f0
    # Line 725
    sll	$ra,$ra,0x18
    # Line 722
    dmfc1	$at,$f1
    # Line 725
    sll	$v1,$v1,0x10
    # Line 723
    dmfc1	$v0,$f0
    # Line 725
    sll	$at,$at,0x8
    # Line 723
    sll	$v0,$v0,0x0
    # Line 725
    or	$ra,$ra,$v1
    or	$at,$at,$v0
    or	$ra,$ra,$at
    sw	$ra,8544($s4)
    beqz	$a1,.L0d96f31c
    sw	$ra,8544($s3)
.L0d96f2c8:
    # Line 734
    lwc1	$f8,4($a5)
    # Line 735
    lwc1	$f7,8($a5)
    # Line 736
    lwc1	$f6,12($a5)
    # Line 734
    trunc.l.s	$f8,$f8
    # Line 737
    lwc1	$f5,16($a5)
    # Line 735
    trunc.l.s	$f7,$f7
    # Line 734
    dmfc1	$at,$f8
    # Line 736
    trunc.l.s	$f6,$f6
    # Line 735
    dmfc1	$a0,$f7
    # Line 737
    trunc.l.s	$f5,$f5
    # Line 739
    sll	$at,$at,0x18
    # Line 736
    dmfc1	$v0,$f6
    # Line 739
    sll	$a0,$a0,0x10
    # Line 737
    dmfc1	$v1,$f5
    # Line 739
    sll	$v0,$v0,0x8
    # Line 737
    sll	$v1,$v1,0x0
    # Line 739
    or	$at,$at,$a0
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,8552($s4)
    sw	$at,8552($s3)
.L0d96f31c:
    # Line 742
    # lw $t9, -32732($gp) # &sub_0d970000
.L0d96f320:
    addiu	$t9,$t9,-6720
    move	$a0,$s2
    bal __glCrmGenericPickStoreProcs
    move	$a1,$s1
    beqz	$v0,.L0d96f408
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-5264
    move	$a0,$s2
    move	$a1,$s1
    ld	$a2,24($sp)
    bal __glCrmGenericPickStoreProcs
    li	$a3,1
    beqz	$v0,.L0d96f408
    # Line 749
    ld	$ra,56($sp)
    beqz	$ra,.L0d96f4fc
    nop
    sw	$s0,8($sp)
.L0d96f364:
    # Line 751
    sw	$s0,8464($s4)
    # Line 754
    ld	$v0,56($sp)
    # Line 751
    lw	$at,8($sp)
    sw	$at,8464($s3)
    # Line 754
    bnez	$v0,.L0d96f3a4
    # Line 752
    sw	$at,32360($s2)
    # Line 754
    ld	$a0,48($sp)
.L0d96f380:
    lw	$v1,32364($s2)
    bne	$v1,$a0,.L0d96f3a8
    ld	$s0,96($sp)
    ld	$a2,40($sp)
    lw	$a1,32368($s2)
    ld	$s0,96($sp)
    ld	$ra,88($sp)
    beq	$a1,$a2,.L0d96f3f4
    ld	$s1,32($sp)
.L0d96f3a4:
    ld	$s0,96($sp)
.L0d96f3a8:
    # Line 569
    ld	$s1,32($sp)
    # Line 758
    lw	$a3,0($sp)
    lw	$a4,4($sp)
    ld	$ra,88($sp)
    # Line 757
    ld	$a5,40($sp)
    ld	$a6,48($sp)
    sw	$a6,16($sp)
    sw	$a5,20($sp)
    ldc1	$f10,16($sp)
    ldc1	$f9,16($sp)
    sdc1	$f10,8472($s4)
    sdc1	$f9,8472($s3)
    # Line 758
    sw	$a4,32368($s2)
    sw	$a3,32364($s2)
    # Line 569
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96f3f4:
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96f408:
    ld	$s0,96($sp)
    ld	$s1,32($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    # Line 745
    lw	$a7,32088($s2)
    li	$t0,0x8000
    ld	$ra,88($sp)
    # Line 744
    sw	$zero,28208($s2)
    # Line 745
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    sw	$a7,32088($s2)
    # Line 569
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96f440:
    # Line 725
    bnez	$a1,.L0d96f2c8
    nop
    b	.L0d96f320
    # Line 742
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
.L0d96f450:
    # Line 691
    lw	$a1,64($a6)
    li	$t9,6408
    li	$t1,0x8049
    # Line 690
    ori	$s0,$s0,0x3
    # Line 696
    li	$ra,0x812e
    # Line 691
    beq	$a1,$t1,.L0d96f490
    # Line 696
    addu	$ra,$ra,$s2
    # Line 691
    li	$t2,6409
    beq	$a1,$t2,.L0d96f490
    li	$t3,6410
    beq	$a1,$t3,.L0d96f490
    li	$t8,6407
    beq	$a1,$t8,.L0d96f490
    nop
    bne	$a1,$t9,.L0d96f494
    nop
.L0d96f490:
    # Line 696
    sb	$t0,0($ra)
.L0d96f494:
    # Line 697
    b	.L0d96f180
    move	$a1,$zero
.L0d96f49c:
    # Line 594
    li	$a1,-897
    and	$a1,$s0,$a1
    # Line 616
    beq	$a2,$a0,.L0d96f718
    # Line 594
    move	$s0,$a1
    # Line 616
    li	$a2,9729
    xor	$a2,$a0,$a2
    # Line 621
    ori	$a3,$a1,0x40
    movz	$s0,$a3,$a2
.L0d96f4bc:
    # Line 625
    sd	$zero,24($sp)
    b	.L0d96f0c4
    li	$t0,1
.L0d96f4c8:
    # Line 636
    sltu	$a1,$zero,$a7
    li	$t8,-49
    move	$a0,$zero
    and	$s0,$s0,$t8
    b	.L0d96f0fc
    ori	$s0,$s0,0x10
.L0d96f4e0:
    # Line 654
    and	$s0,$s0,$t8
    b	.L0d96f148
    ori	$s0,$s0,0x4
.L0d96f4ec:
    # Line 677
    move	$a1,$zero
    li	$t9,-4
    b	.L0d96f180
    and	$s0,$s0,$t9
.L0d96f4fc:
    # Line 749
    lw	$ra,32360($s2)
    beq	$ra,$s0,.L0d96f380
    # Line 754
    ld	$a0,48($sp)
    # Line 749
    b	.L0d96f364
    sw	$s0,8($sp)
.L0d96f510:
    # Line 597
    and	$s0,$s0,$t8
    # Line 618
    li	$t8,-65
    # Line 616
    beq	$a2,$a0,.L0d96f724
    # Line 597
    ori	$s0,$s0,0x80
    xor	$t9,$t1,$a0
    # Line 621
    ori	$ra,$s0,0x40
    movz	$s0,$ra,$t9
.L0d96f52c:
    # Line 625
    sd	$zero,24($sp)
    b	.L0d96f0c4
    li	$t0,1
.L0d96f538:
    # Line 639
    sltu	$a1,$zero,$a7
    li	$t9,-49
    li	$t8,32
    movz	$t8,$zero,$a7
    and	$s0,$s0,$t9
    # Line 642
    b	.L0d96f0fc
    # Line 639
    or	$s0,$s0,$t8
.L0d96f554:
    # Line 660
    li	$a0,1
    # Line 657
    li	$t9,-13
    li	$t8,8
    movz	$t8,$zero,$a1
    and	$s0,$s0,$t9
    # Line 660
    b	.L0d96f148
    # Line 657
    or	$s0,$s0,$t8
.L0d96f570:
    # Line 680
    lw	$t8,64($a6)
    li	$ra,-4
    li	$t9,6407
    and	$s0,$s0,$ra
    beq	$t8,$t9,.L0d96f738
    ori	$s0,$s0,0x1
.L0d96f588:
    # Line 683
    b	.L0d96f180
    move	$a1,$zero
.L0d96f590:
    # Line 600
    li	$t8,-897
    xor	$t9,$t1,$a0
    and	$s0,$s0,$t8
    # Line 616
    beq	$a2,$a0,.L0d96f72c
    # Line 600
    ori	$s0,$s0,0x100
    # Line 621
    ori	$ra,$s0,0x40
    movz	$s0,$ra,$t9
.L0d96f5ac:
    # Line 623
    li	$at,1
    sd	$at,24($sp)
.L0d96f5b4:
    # Line 625
    lw	$v0,0($a7)
    andi	$v0,$v0,0x80
    beqz	$v0,.L0d96f0c4
    nop
    lw	$a0,36($a7)
    beqz	$a0,.L0d96f5e8
    nop
    lw	$a4,156($a0)
    beqz	$a4,.L0d96f5e8
    nop
    lw	$v1,16($a4)
    bnez	$v1,.L0d96f0c4
    nop
.L0d96f5e8:
    ld	$s0,96($sp)
    # Line 569
    ld	$s1,32($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    # Line 629
    li	$a0,0x8000
    ld	$ra,88($sp)
    # Line 628
    sw	$zero,28208($s2)
    # Line 629
    nor	$a0,$a0,$zero
    and	$a0,$a1,$a0
    sw	$a0,32088($s2)
    # Line 569
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96f61c:
    # Line 644
    li	$t8,-49
    # Line 645
    move	$a0,$zero
    # Line 644
    and	$s0,$s0,$t8
    # Line 645
    b	.L0d96f0fc
    # Line 644
    ori	$s0,$s0,0x20
.L0d96f630:
    # Line 662
    and	$s0,$s0,$t8
    # Line 663
    b	.L0d96f148
    # Line 662
    ori	$s0,$s0,0x8
.L0d96f63c:
    # Line 685
    li	$t8,-4
    # Line 687
    li	$a1,1
    # Line 685
    and	$s0,$s0,$t8
    # Line 687
    b	.L0d96f180
    # Line 685
    ori	$s0,$s0,0x2
.L0d96f650:
    # Line 604
    li	$t8,-897
    xor	$t9,$t1,$a0
    and	$s0,$s0,$t8
    # Line 616
    beq	$a2,$a0,.L0d96f748
    # Line 604
    ori	$s0,$s0,0x180
    # Line 621
    ori	$ra,$s0,0x40
    movz	$s0,$ra,$t9
.L0d96f66c:
    # Line 623
    li	$at,1
    b	.L0d96f5b4
    sd	$at,24($sp)
.L0d96f678:
    # Line 650
    li	$a0,1
    # Line 647
    li	$t9,-49
    li	$ra,16
    li	$t8,32
    movz	$t8,$ra,$a7
    and	$s0,$s0,$t9
    # Line 650
    b	.L0d96f0fc
    # Line 647
    or	$s0,$s0,$t8
.L0d96f698:
    xor	$t9,$t1,$a0
    # Line 608
    li	$t8,-897
    # Line 623
    li	$at,1
    # Line 608
    and	$s0,$s0,$t8
    # Line 616
    beq	$a2,$a0,.L0d96f754
    # Line 608
    ori	$s0,$s0,0x200
    # Line 621
    ori	$ra,$s0,0x40
    movz	$s0,$ra,$t9
.L0d96f6b8:
    # Line 623
    b	.L0d96f5b4
    sd	$at,24($sp)
.L0d96f6c0:
    # Line 569
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    move	$ra,$ra
    # Line 568
    li	$v0,0x8000
    # Line 569
    ld	$s4,80($sp)
    addiu	$sp,$sp,112
    # Line 568
    nor	$v0,$v0,$zero
    and	$v0,$a1,$v0
    # Line 569
    jr	$ra
    # Line 568
    sw	$v0,32088($a0)
.L0d96f6ec:
    # Line 612
    li	$t8,-897
    # Line 623
    li	$at,1
    # Line 612
    and	$s0,$s0,$t8
    # Line 616
    beq	$a2,$a0,.L0d96f760
    # Line 612
    ori	$s0,$s0,0x280
    # Line 621
    ori	$ra,$s0,0x40
    movz	$s0,$ra,$t9
.L0d96f708:
    # Line 623
    b	.L0d96f5b4
    sd	$at,24($sp)
.L0d96f710:
    b	.L0d96f0c0
    # Line 618
    and	$s0,$s0,$v0
.L0d96f718:
    li	$s0,-65
    b	.L0d96f4bc
    and	$s0,$a1,$s0
.L0d96f724:
    b	.L0d96f52c
    and	$s0,$s0,$t8
.L0d96f72c:
    li	$t9,-65
    b	.L0d96f5ac
    and	$s0,$s0,$t9
.L0d96f738:
    # Line 682
    li	$ra,0x812e
    addu	$ra,$ra,$s2
    b	.L0d96f588
    sb	$t0,0($ra)
.L0d96f748:
    # Line 618
    li	$at,-65
    b	.L0d96f66c
    and	$s0,$s0,$at
.L0d96f754:
    li	$v0,-65
    b	.L0d96f6b8
    and	$s0,$s0,$v0
.L0d96f760:
    li	$v1,-65
    b	.L0d96f708
    and	$s0,$s0,$v1
.end crmSetTextureParam

# Function: __glCrmResetTextureState
# Declared: Line 763 (Source lines: 764-787)
# Address: 0x0d96f770 - 0x0d96f898 (Size: 296 bytes, Frame: 32)
.globl __glCrmResetTextureState
.ent __glCrmResetTextureState
__glCrmResetTextureState:
    # Line 771
    li	$a2,1
    sw	$a2,32552($a0)
    # Line 769
    sw	$zero,32364($a0)
    # Line 768
    sw	$zero,32360($a0)
    # Line 764
    lui	$a1,0xe
    # Line 767
    sw	$zero,32504($a0)
    # Line 764
    addiu	$sp,$sp,-32
    addiu	$a1,$a1,5660
    sd	$gp,0($sp)
    addu	$gp,$t9,$a1
    # Line 771
    lw	$at,-21560($gp)
    # Line 770
    lw	$v0,32088($a0)
    li	$v1,0x8000
    sd	$ra,16($sp)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 771
    bltz	$at,.L0d96f7e8
    # Line 770
    sw	$v0,32088($a0)
.L0d96f7b8:
    # Line 781
    lw	$a3,4120($zero)
    li	$a4,2
    beq	$a3,$a4,.L0d96f7dc
    ld	$ra,16($sp)
    # Line 785
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-4160
    bal __glCrmGenericPickStoreProcs
    nop
    ld	$ra,16($sp)
.L0d96f7dc:
    # Line 787
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96f7e8:
    sd	$a0,8($sp)
    # Line 774
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,16856
    # Line 775
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 774
    sw	$v0,-21560($gp)
    # Line 775
    jal	getenv
    addiu	$a0,$a0,16872
    # Line 776
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 775
    sw	$v0,-22412($gp)
    # Line 776
    jal	getenv
    addiu	$a0,$a0,16896
    # Line 777
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 776
    sw	$v0,-22404($gp)
    # Line 777
    jal	getenv
    addiu	$a0,$a0,16912
    # Line 778
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 777
    sw	$v0,-22408($gp)
    # Line 778
    jal	getenv
    addiu	$a0,$a0,16928
    # Line 779
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 778
    sltiu	$a1,$v0,1
    sw	$a1,-21556($gp)
    # Line 779
    jal	getenv
    addiu	$a0,$a0,16952
    # Line 780
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 779
    sw	$v0,-22400($gp)
    # Line 780
    jal	getenv
    addiu	$a0,$a0,16976
    # Line 781
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    # Line 780
    sw	$v0,-22396($gp)
    # Line 781
    jal	getenv
    addiu	$a0,$a0,17000
    ld	$a0,8($sp)
    b	.L0d96f7b8
    sw	$v0,-22416($gp)
.end __glCrmResetTextureState

# Function: crmFreeTexImage
# Declared: Line 793 (Source lines: 793-823)
# Address: 0x0d96f8a0 - 0x0d96f9e8 (Size: 328 bytes, Frame: 48)
.ent crmFreeTexImage
crmFreeTexImage:
    # Line 793
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s2,24($sp)
    move	$s2,$a2
    # Line 798
    beqz	$a1,.L0d96f9d0
    sd	$s0,32($sp)
    lw	$a1,284($a1)
    beqz	$a1,.L0d96f9d0
    sll	$t8,$a2,0x3
    lw	$s0,32($a1)
    addu	$t8,$t8,$a2
    sll	$t8,$t8,0x2
    addu	$s0,$s0,$t8
    beqz	$s0,.L0d96f9d4
    ld	$ra,40($sp)
    # Line 803
    lw	$t9,0($s0)
    andi	$t9,$t9,0x1
    beqz	$t9,.L0d96f910
    sd	$a0,8($sp)
    lw	$a1,20($s0)
    beqz	$a1,.L0d96f910
    # Line 805
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    nop
.L0d96f910:
    # Line 807
    ld	$ra,8($sp)
    lw	$ra,32552($ra)
    beqz	$ra,.L0d96f950
    nop
    lw	$at,0($s0)
    andi	$at,$at,0x2
    beqz	$at,.L0d96f950
    nop
    lw	$a2,24($s0)
    beqz	$a2,.L0d96f950
    # Line 809
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,8($sp)
    addiu	$t9,$t9,-7248
    li	$a1,22018
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($a0)
.L0d96f950:
    # Line 817
    sw	$zero,32($s0)
    # Line 816
    sw	$zero,24($s0)
    # Line 815
    sw	$zero,20($s0)
    # Line 814
    sw	$zero,8($s0)
    # Line 813
    sw	$zero,4($s0)
    # Line 812
    sw	$zero,0($s0)
    # Line 819
    lw	$a2,228($s1)
    sll	$a1,$s2,0x2
    subu	$a1,$a1,$s2
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$s2
    beqz	$a2,.L0d96f9d0
    sll	$a1,$a1,0x2
    sd	$a1,0($sp)
    addu	$a1,$a2,$a1
    lw	$a1,0($a1)
    beqz	$a1,.L0d96f9d4
    ld	$ra,40($sp)
    # Line 820
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	sub_0d970000
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    # Line 821
    ld	$v0,0($sp)
    lw	$at,228($s1)
    # Line 823
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 821
    addu	$at,$at,$v0
    # Line 823
    addiu	$sp,$sp,48
    jr	$ra
    # Line 821
    sw	$zero,0($at)
.L0d96f9d0:
    ld	$ra,40($sp)
.L0d96f9d4:
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 823
    jr	$ra
    addiu	$sp,$sp,48
.end crmFreeTexImage

# Function: crmFreeTexObj
# Declared: Line 829 (Source lines: 829-880)
# Address: 0x0d96f9f0 - 0x0d96fc00 (Size: 528 bytes, Frame: 208)
.ent crmFreeTexObj
crmFreeTexObj:
    # Line 831
    lw	$a2,32560($a0)
    # Line 829
    addiu	$sp,$sp,-80
    sd	$s2,16($sp)
    move	$s2,$a0
    # Line 836
    beqz	$a1,.L0d96fbd0
    sd	$s5,32($sp)
    lw	$s5,300($a1)
    beqz	$s5,.L0d96fbd0
    nop
    sd	$a2,8($sp)
    sd	$s4,64($sp)
    # Line 841
    lw	$s4,3732($a0)
    sd	$s1,48($sp)
    sd	$s0,56($sp)
    move	$s0,$zero
    blez	$s4,.L0d96fbe0
    sd	$s3,40($sp)
    la	$s1,sub_0d970000
    sd	$a1,0($sp)
    addiu	$s3,$a1,16
    sd	$ra,24($sp)
    addiu	$s1,$s1,-1888
    nop
    # Line 844
    move	$t9,$s1
.L0d96fa50:
    move	$a0,$s2
    move	$a1,$s3
    bal __glCrmResetTextureState
    move	$a2,$s0
    # Line 843
    addiu	$s0,$s0,1
    bne	$s4,$s0,.L0d96fa50
    # Line 844
    move	$t9,$s1
.L0d96fa6c:
    # Line 846
    lw	$a0,32552($s2)
    beqz	$a0,.L0d96faa0
    # Line 847
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    # Line 846
    lw	$a2,8($s5)
    beqz	$a2,.L0d96faa0
    # Line 847
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-7248
    li	$a1,22018
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s2)
    lw	$a0,32552($s2)
    # lw $t9, -32732($gp) # &sub_0d970000
.L0d96faa0:
    # Line 850
    beqz	$a0,.L0d96fabc
    # Line 847
    addiu	$t9,$t9,-7248
    # Line 850
    lw	$a2,20($s5)
    beqz	$a2,.L0d96fabc
    lw	$ra,8($s5)
    bne	$ra,$a2,.L0d96fbf0
    # Line 852
    li	$a1,22018
.L0d96fabc:
    # Line 855
    lw	$a0,4($s5)
.L0d96fac0:
    # Line 859
    ld	$a5,8($sp)
    # Line 855
    ld	$v0,8($sp)
    slti	$at,$a0,128
    bltz	$a0,.L0d96fb0c
    sll	$a3,$a0,0x2
    beqz	$at,.L0d96fb0c
    ld	$a2,8($sp)
    beqz	$v0,.L0d96fb0c
    addu	$a2,$a2,$a3
    lw	$v1,524($a2)
    bne	$v1,$s5,.L0d96fb0c
    nop
    # Line 858
    sw	$zero,12($a2)
    # Line 859
    lw	$a6,4($s5)
    sll	$a6,$a6,0x2
    addu	$a6,$a5,$a6
    sw	$zero,524($a6)
    # Line 860
    lw	$a4,4($s5)
    sw	$a4,8($a5)
.L0d96fb0c:
    lw	$a7,32504($s2)
    bne	$a7,$s3,.L0d96fb1c
    nop
    # Line 863
    sw	$zero,32504($s2)
.L0d96fb1c:
    lw	$a1,36($s5)
    beqz	$a1,.L0d96fb88
    ld	$s4,64($sp)
    lw	$a0,148($a1)
    beqz	$a0,.L0d96fb40
    # Line 867
    nop	# was lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    nop
    lw	$a1,36($s5)
.L0d96fb40:
    lw	$a0,152($a1)
    beqz	$a0,.L0d96fb58
    # Line 870
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
    lw	$a1,36($s5)
.L0d96fb58:
    lw	$a2,156($a1)
    beqz	$a2,.L0d96fb78
    nop
    # Line 873
    lw	$t9,12($s2)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$a2
    lw	$a1,36($s5)
.L0d96fb78:
    # Line 875
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    ld	$s4,64($sp)
.L0d96fb88:
    ld	$s0,56($sp)
    # Line 877
    lw	$t9,12($s2)
    ld	$s1,48($sp)
    ld	$s3,40($sp)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,32($s5)
    # Line 878
    lw	$t9,12($s2)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s5
    ld	$s5,32($sp)
    ld	$ra,24($sp)
    # Line 879
    ld	$t0,0($sp)
    # Line 880
    ld	$s2,16($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 879
    sw	$zero,300($t0)
.L0d96fbd0:
    ld	$s2,16($sp)
    ld	$s5,32($sp)
    # Line 880
    jr	$ra
    addiu	$sp,$sp,80
.L0d96fbe0:
    sd	$a1,0($sp)
    # Line 843
    addiu	$s3,$a1,16
    b	.L0d96fa6c
    sd	$ra,24($sp)
.L0d96fbf0:
    # Line 852
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s2)
    b	.L0d96fac0
    # Line 855
    lw	$a0,4($s5)
.end crmFreeTexObj

# Function: __glCrmFreeTexObj
# Declared: Line 886 (Source lines: 887-895)
# Address: 0x0d96fc00 - 0x0d96fc74 (Size: 116 bytes, Frame: 32)
.globl __glCrmFreeTexObj
.ent __glCrmFreeTexObj
__glCrmFreeTexObj:
    # Line 887
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,0($sp)
    lui	$at,0xe
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$at,$at,4492
    sd	$gp,16($sp)
    beqz	$a1,.L0d96fc48
    addu	$gp,$t9,$at
    # Line 889
    lw	$v0,300($a1)
    bnez	$v0,.L0d96fc60
    # Line 892
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    # Line 894
    # lw $t9, -23788($gp) # &__glFreeTexObj
.L0d96fc3c:
    move	$a0,$s1
    jal	__glFreeTexObj
    move	$a1,$s0
.L0d96fc48:
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 895
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96fc60:
    # Line 892
    addiu	$t9,$t9,-1552
    bal __glCrmResetTextureState
    nop
    b	.L0d96fc3c
    # Line 894
    nop	# was lw $t9, -23788($gp) # &__glFreeTexObj
.end __glCrmFreeTexObj

# Function: __glCrmFreeTextureState
# Declared: Line 902 (Source lines: 902-920)
# Address: 0x0d96fc80 - 0x0d96fd2c (Size: 172 bytes, Frame: 32)
.globl __glCrmFreeTextureState
.ent __glCrmFreeTextureState
__glCrmFreeTextureState:
    # Line 902
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    lui	$ra,0xe
    addiu	$ra,$ra,4364
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-1552
    # Line 907
    lw	$a1,28204($a0)
    # Line 902
    sd	$s0,16($sp)
    # Line 907
    bal __glCrmResetTextureState
    # Line 902
    move	$s0,$a0
    # Line 910
    # lw $t9, -32732($gp) # &sub_0d970000
    lw	$a1,28204($s0)
    addiu	$t9,$t9,-1552
    move	$a0,$s0
    bal __glCrmResetTextureState
    addiu	$a1,$a1,304
    lw	$a1,32560($s0)
    beqz	$a1,.L0d96fcf0
    ld	$ra,0($sp)
    # Line 913
    lw	$a3,0($a1)
    addiu	$a3,$a3,-1
    sw	$a3,0($a1)
    lw	$a1,32560($s0)
    lw	$a2,0($a1)
    blez	$a2,.L0d96fd04
    nop
.L0d96fcf0:
    # Line 920
    ld	$gp,8($sp)
    # Line 919
    sw	$zero,32552($s0)
    # Line 920
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96fd04:
    # Line 915
    lw	$t9,12($s0)
    jal	sub_0d970000
    move	$a0,$s0
    # Line 920
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    # Line 919
    sw	$zero,32552($s0)
    # Line 916
    sw	$zero,32560($s0)
    # Line 920
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmFreeTextureState

# Function: __glCrmInitTextureObject
# Declared: Line 923 (Source lines: 925-959)
# Address: 0x0d96fd30 - 0x0d96fe1c (Size: 236 bytes, Frame: 48)
.globl __glCrmInitTextureObject
.ent __glCrmInitTextureObject
__glCrmInitTextureObject:
    # Line 926
    lw	$a6,3732($a0)
    # Line 925
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    move	$v0,$a2
    sd	$s3,8($sp)
    lui	$at,0xe
    move	$s3,$a0
    sd	$ra,32($sp)
    addiu	$at,$at,4188
    sd	$gp,16($sp)
    # Line 931
    beqz	$a3,.L0d96fd8c
    # Line 925
    addu	$gp,$t9,$at
    # Line 931
    li	$v1,1
    beq	$a3,$v1,.L0d96fd90
    # Line 941
    la	$a4,__glCrmFreeTexObj
    # Line 936
    # lw $t9, -24444($gp) # &__glTexInitTextureObject
    jal	__glTexInitTextureObject
    ld	$a1,24($sp)
    ld	$ra,32($sp)
    ld	$s3,8($sp)
    # Line 959
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d96fd8c:
    # Line 941
    la	$a4,__glCrmFreeTexObj
.L0d96fd90:
    # Line 944
    la	$a2,__glCopyTexImage
    # Line 941
    ld	$a0,24($sp)
    # Line 947
    lwc1	$f0,_lit_3f800000
    # Line 945
    la	$a1,__glReadTexImage
    # Line 947
    swc1	$f0,240($a0)
    # Line 946
    sw	$v0,236($a0)
    # Line 945
    sw	$a1,268($a0)
    # Line 944
    sw	$a2,264($a0)
    # Line 943
    sb	$zero,12($a0)
    # Line 942
    sw	$a3,8($a0)
    # Line 941
    sw	$a4,4($a0)
    # Line 949
    lw	$t9,4($s3)
    li	$a2,36
    move	$a1,$a6
    jalr	$t9
    move	$a0,$s3
    # Line 951
    lw	$t9,4($s3)
    move	$a0,$s3
    li	$a2,40
    # Line 949
    sd	$v0,0($sp)
    # Line 951
    jalr	$t9
    li	$a1,1
    # Line 956
    sw	$zero,36($v0)
    # Line 954
    li	$a7,-1
    sw	$a7,4($v0)
    # Line 953
    sw	$zero,0($v0)
    # Line 959
    ld	$gp,16($sp)
    ld	$s3,8($sp)
    # Line 955
    ld	$a6,0($sp)
    ld	$ra,32($sp)
    # Line 958
    ld	$a5,24($sp)
    # Line 955
    sw	$a6,32($v0)
    # Line 959
    addiu	$sp,$sp,48
    jr	$ra
    # Line 958
    sw	$v0,300($a5)
.end __glCrmInitTextureObject

# Function: __glCrmPickTextureProcs
# Declared: Line 962 (Source lines: 963-1079)
# Address: 0x0d96fe20 - 0x0d970458 (Size: 1592 bytes, Frame: 208)
.globl __glCrmPickTextureProcs
.ent __glCrmPickTextureProcs
__glCrmPickTextureProcs:
    # Line 963
    addiu	$sp,$sp,-80
    lbu	$at,32011($a0)
    sd	$s0,56($sp)
    lui	$v0,0xe
    move	$s0,$a0
    sd	$ra,72($sp)
    addiu	$v0,$v0,3948
    sd	$gp,64($sp)
    beqz	$at,.L0d96fe78
    addu	$gp,$t9,$v0
    # Line 971
    # lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 970
    li	$a1,0x8000
    lw	$v1,32088($a0)
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 971
    jal	__glGenericPickTextureProcs
    # Line 970
    sw	$v1,32088($s0)
    ld	$ra,72($sp)
.L0d96fe68:
    ld	$s0,56($sp)
    # Line 1079
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96fe78:
    # Line 975
    lw	$a0,1792($a0)
    # Line 977
    dsll32	$a2,$a0,0x1
    bgez	$a2,.L0d96ffb8
    sw	$zero,28208($s0)
    # Line 984
    # lw $t9, -24240($gp) # &__glIsTextureConsistent
    sd	$a0,48($sp)
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,0x806f
    beqz	$v0,.L0d96fecc
    # Line 987
    move	$a6,$zero
    # Line 986
    # lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 985
    li	$a4,0x8000
    lw	$a3,32088($s0)
    # Line 986
    move	$a0,$s0
    # Line 985
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    # Line 986
    jal	__glGenericPickTextureProcs
    # Line 985
    sw	$a3,32088($s0)
    b	.L0d96fe68
    ld	$ra,72($sp)
.L0d96fecc:
    # Line 1005
    beqz	$a6,.L0d970034
    move	$a0,$a6
    lw	$a5,5864($s0)
    beqz	$a5,.L0d96fef0
    ld	$a7,48($sp)
    lui	$t0,0x8000
    and	$a7,$a7,$t0
    bnez	$a7,.L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
.L0d96fef0:
    # Line 1005
    lwc1	$f0,188($a0)
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    bc1f	.L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f1,192($a0)
    c.eq.s $f1,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f2,196($a0)
    c.eq.s $f2,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f3,200($a0)
    c.eq.s $f3,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f5,172($a0)
    lwc1	$f4,_lit_3f800000
    c.eq.s $f5,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f6,176($a0)
    c.eq.s $f6,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f7,180($a0)
    c.eq.s $f7,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1005
    lwc1	$f8,184($a0)
    c.eq.s $f8,$f4
    bc1f .L0d970010
    # Line 1013
    nop	# was lw $t9, -25312($gp) # &__glGenericPickTextureProcs
.L0d96ff78:
    # Line 1016
    beqz	$a6,.L0d970038
    # Line 1025
    ld	$a0,48($sp)
    # Line 1016
    lw	$t1,228($a6)
    lw	$t1,56($t1)
    beqz	$t1,.L0d970038
    # Line 1025
    ld	$a0,48($sp)
    # Line 1018
    # lw $t9, -25312($gp) # &__glGenericPickTextureProcs
    # Line 1017
    li	$t3,0x8000
    lw	$t2,32088($s0)
    # Line 1018
    move	$a0,$s0
    # Line 1017
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 1018
    jal	__glGenericPickTextureProcs
    # Line 1017
    sw	$t2,32088($s0)
    b	.L0d96fe68
    ld	$ra,72($sp)
.L0d96ffb8:
    # Line 987
    dsll32	$t8,$a0,0xe
    bgez	$t8,.L0d9701c0
    # Line 993
    dsll32	$ra,$a0,0xf
    # Line 991
    # lw $t9, -24240($gp) # &__glIsTextureConsistent
    sd	$a0,48($sp)
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,3553
    beqz	$v0,.L0d97020c
    # Line 992
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 993
    # lw $t9, -24460($gp) # &__glLookUpTexture
    li	$a1,3553
    move	$a0,$s0
    jal	__glLookUpTexture
    # Line 992
    sw	$v0,0($sp)
    # Line 993
    move	$a6,$v0
    b	.L0d96fecc
    sw	$v0,28208($s0)
    # Line 1013
    # lw $t9, -25312($gp) # &__glGenericPickTextureProcs
.L0d970010:
    # Line 1012
    li	$v0,0x8000
    lw	$at,32088($s0)
    # Line 1013
    move	$a0,$s0
    # Line 1012
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 1013
    jal	__glGenericPickTextureProcs
    # Line 1012
    sw	$at,32088($s0)
    b	.L0d96fe68
    ld	$ra,72($sp)
.L0d970034:
    # Line 1025
    ld	$a0,48($sp)
.L0d970038:
    lui	$v1,0xc
    and	$a0,$v1,$a0
    beq	$v1,$a0,.L0d9703a8
.L0d970044:
    # Line 1043
    ld	$a1,48($sp)
.L0d970048:
    dsll32	$a1,$a1,0xd
    bgez	$a1,.L0d97021c
    ld	$at,48($sp)
.L0d970054:
    # Line 1064
    la	$a0,__glCalcMixedTexture
.L0d970058:
    sw	$a0,11996($s0)
.L0d97005c:
    # Line 1069
    li	$a2,0x812e
.L0d970060:
    addu	$a2,$a2,$s0
    # Line 1068
    sw	$a0,32508($s0)
    # Line 1069
    beqz	$a6,.L0d970400
    sb	$zero,0($a2)
    li	$a5,6
    # Line 1072
    li	$a4,54
    move	$a3,$zero
    addiu	$a2,$a6,4
    lw	$a0,0($sp)
    nop
    nop
    nop
.L0d970090:
    addiu	$a5,$a5,-1
    addu	$a6,$a3,$a0
    addiu	$a4,$a4,-1
    addu	$t0,$a3,$a2
    lw	$a6,0($a6)
    addiu	$a3,$a3,4
    bnez	$a5,.L0d970090
    sw	$a6,0($t0)
    addiu	$a7,$a0,28
    addiu	$a5,$a2,28
    li	$t8,0x20
    addiu	$ra,$a2,4
    addiu	$t3,$a2,8
    addiu	$a1,$a2,12
    sd	$a1,24($sp)
    addiu	$t9,$a2,20
    addiu	$v1,$a0,20
    sd	$v1,40($sp)
    addiu	$t2,$a2,24
    addiu	$t1,$a0,24
    addiu	$v0,$a0,8
    sd	$v0,16($sp)
    addiu	$t0,$a2,16
    addiu	$a6,$a0,12
    sd	$a6,32($sp)
    addiu	$a6,$a0,16
    addiu	$at,$a0,4
    sd	$at,8($sp)
.L0d970100:
    addu	$at,$a3,$a0
    addu	$v0,$a3,$a2
    lw	$at,0($at)
    sw	$at,0($v0)
    ld	$a1,8($sp)
    ld	$v0,24($sp)
    ld	$v1,16($sp)
    addu	$a1,$a3,$a1
    addu	$at,$a3,$ra
    lw	$a1,0($a1)
    addu	$v1,$a3,$v1
    sw	$a1,0($at)
    lw	$v1,0($v1)
    addu	$a1,$a3,$t3
    ld	$at,32($sp)
    sw	$v1,0($a1)
    ld	$v1,40($sp)
    addu	$at,$a3,$at
    addu	$v0,$a3,$v0
    lw	$at,0($at)
    addu	$a1,$a3,$a6
    sw	$at,0($v0)
    addu	$at,$a3,$t0
    lw	$a1,0($a1)
    addu	$v1,$a3,$v1
    sw	$a1,0($at)
    addu	$a1,$a3,$t9
    lw	$v1,0($v1)
    addu	$v0,$a3,$t1
    sw	$v1,0($a1)
    addu	$v1,$a3,$t2
    lw	$v0,0($v0)
    addiu	$a4,$a4,-8
    addu	$at,$a3,$a7
    sw	$v0,0($v1)
    lw	$at,0($at)
    addu	$v0,$a3,$a5
    addu	$a3,$a3,$t8
    bgtz	$a4,.L0d970100
    sw	$at,0($v0)
    # Line 1074
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-4160
    la	$v0,__glNop
    move	$a0,$s0
    bal __glCrmGenericPickStoreProcs
    # Line 1073
    sw	$v0,12524($s0)
    b	.L0d96fe68
    ld	$ra,72($sp)
.L0d9701c0:
    # Line 993
    bgez	$ra,.L0d970214
    sd	$a0,48($sp)
    # Line 998
    # lw $t9, -24240($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,3552
    beqz	$v0,.L0d9703f8
    # Line 999
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3552
    # Line 1000
    # lw $t9, -24460($gp) # &__glLookUpTexture
    li	$a1,3552
    move	$a0,$s0
    jal	__glLookUpTexture
    # Line 999
    sw	$v0,0($sp)
    # Line 1000
    move	$a6,$v0
    b	.L0d96fecc
    sw	$v0,28208($s0)
.L0d97020c:
    b	.L0d96fecc
    # Line 993
    move	$a6,$zero
.L0d970214:
    b	.L0d96ff78
    # Line 1016
    move	$a6,$zero
.L0d97021c:
    # Line 1043
    dsll32	$at,$at,0xc
    bltz	$at,.L0d970054
    ld	$v0,48($sp)
    dsll32	$v0,$v0,0xb
    bltz	$v0,.L0d970054
    ld	$v1,48($sp)
    dsll32	$v1,$v1,0xa
    bltz	$v1,.L0d970058
    # Line 1064
    la	$a0,__glCalcMixedTexture
    # Line 1049
    lw	$a0,1744($s0)
    li	$a1,5890
    beq	$a0,$a1,.L0d97042c
    # Line 1047
    lw	$a0,29680($s0)
    # Line 1049
    lwc1	$f9,0($a0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f9,$f9
    c.eq.d	$f9,$f5
    bc1f	.L0d97042c
    nop
    lwc1	$f10,4($a0)
    dmtc1	$zero,$f4
    cvt.d.s	$f10,$f10
    c.eq.d $f10,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f11,8($a0)
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f12,12($a0)
    cvt.d.s	$f12,$f12
    c.eq.d $f12,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f13,16($a0)
    cvt.d.s	$f13,$f13
    c.eq.d $f13,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f14,20($a0)
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f5
    bc1f .L0d97042c
    nop
    lwc1	$f15,24($a0)
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f16,28($a0)
    cvt.d.s	$f16,$f16
    c.eq.d $f16,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f17,32($a0)
    cvt.d.s	$f17,$f17
    c.eq.d	$f17,$f4
    bc1f	.L0d97042c
    nop
    lwc1	$f18,36($a0)
    cvt.d.s	$f18,$f18
    c.eq.d $f18,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f19,40($a0)
    cvt.d.s	$f19,$f19
    c.eq.d $f19,$f5
    bc1f .L0d97042c
    nop
    lwc1	$f21,44($a0)
    cvt.d.s	$f21,$f21
    c.eq.d $f21,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f23,48($a0)
    cvt.d.s	$f23,$f23
    c.eq.d $f23,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f25,52($a0)
    cvt.d.s	$f25,$f25
    c.eq.d $f25,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f27,56($a0)
    cvt.d.s	$f27,$f27
    c.eq.d $f27,$f4
    bc1f .L0d97042c
    nop
    lwc1	$f29,60($a0)
    cvt.d.s	$f29,$f29
    c.eq.d $f29,$f5
    bc1f .L0d970430
    # Line 1061
    la	$a0,__glCalcTexture
    # Line 1058
    la	$a7,__glNop
    sw	$a7,11996($s0)
    b	.L0d97005c
    move	$a0,$a7
.L0d9703a8:
    # Line 1025
    ld	$a2,48($sp)
    dsll32	$a2,$a2,0xb
    bltz	$a2,.L0d970044
    ld	$a3,48($sp)
    dsll32	$a3,$a3,0xa
    bltz	$a3,.L0d970048
    # Line 1043
    ld	$a1,48($sp)
    # Line 1025
    lw	$a4,2108($s0)
    lw	$a0,1984($s0)
    bne	$a4,$a0,.L0d970044
    # Line 1031
    li	$a5,9216
    beq	$a0,$a5,.L0d970438
    li	$a7,9217
    beq	$a0,$a7,.L0d970444
    li	$t0,9218
    beq	$a0,$t0,.L0d970450
    # Line 1039
    la	$a0,__glCalcSphereMap
    # Line 1031
    lw	$a0,11996($s0)
.L0d9703f0:
    # Line 1041
    b	.L0d970060
    # Line 1069
    li	$a2,0x812e
.L0d9703f8:
    b	.L0d96fecc
    # Line 1000
    move	$a6,$zero
.L0d970400:
    # Line 1079
    ld	$gp,64($sp)
    # Line 1077
    lw	$t1,32088($s0)
    li	$t2,0x8000
    ld	$ra,72($sp)
    # Line 1076
    sw	$zero,12524($s0)
    # Line 1077
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    sw	$t1,32088($s0)
    # Line 1079
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d97042c:
    # Line 1061
    la	$a0,__glCalcTexture
.L0d970430:
    b	.L0d97005c
    sw	$a0,11996($s0)
.L0d970438:
    # Line 1033
    la	$a0,__glCalcEyeLinear
    b	.L0d9703f0
    sw	$a0,11996($s0)
.L0d970444:
    # Line 1036
    la	$a0,__glCalcObjectLinear
    # Line 1037
    b	.L0d9703f0
    # Line 1036
    sw	$a0,11996($s0)
.L0d970450:
    # Line 1040
    b	.L0d9703f0
    # Line 1039
    sw	$a0,11996($s0)
.end __glCrmPickTextureProcs

# Function: crmExtractTexel
# Declared: Line 1082 (Source lines: 1084-1219)
# Address: 0x0d970460 - 0x0d970970 (Size: 1296 bytes, Frame: 32)
.ent crmExtractTexel
crmExtractTexel:
    # Line 1095
    lw	$at,228($a1)
    li	$t8,0xa3d7
    dsll	$t8,$t8,0x10
    subu	$at,$a0,$at
    negu	$t3,$at
    srl	$t1,$at,0x1f
    ori	$t8,$t8,0xa3e
    movz	$t3,$at,$t1
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x6
    negu	$t0,$t2
    # Line 1084
    addiu	$sp,$sp,-32
    # Line 1095
    lw	$a2,284($a1)
    movz	$t0,$t2,$t1
    # Line 1084
    lui	$a7,0xe
    # Line 1095
    sll	$a6,$t0,0x3
    # Line 1084
    addiu	$a7,$a7,2348
    # Line 1095
    lw	$a2,32($a2)
    addu	$a6,$a6,$t0
    sd	$gp,8($sp)
    # Line 1084
    addu	$gp,$t9,$a7
    # Line 1095
    sll	$a6,$a6,0x2
    # Line 1097
    bltz	$a3,.L0d9704ec
    # Line 1095
    addu	$a2,$a2,$a6
    # Line 1097
    bltz	$a4,.L0d9704ec
    nop
    lw	$v0,24($a0)
    slt	$v0,$a3,$v0
    beqz	$v0,.L0d9704ec
    nop
    lw	$v1,20($a0)
    slt	$v1,$a4,$v1
    bnez	$v1,.L0d97052c
    nop
.L0d9704ec:
    # Line 1102
    lw	$a2,64($a0)
    li	$a3,0x8049
    beq	$a2,$a3,.L0d97064c
    li	$a4,6409
    beq	$a2,$a4,.L0d970660
    li	$a6,6410
    beq	$a2,$a6,.L0d970674
    li	$a7,6406
    beq	$a2,$a7,.L0d970690
    li	$t0,6407
    beq	$a2,$t0,.L0d9706a4
    li	$t1,6408
    beq	$a2,$t1,.L0d970620
.L0d970520:
    # Line 1219
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97052c:
    # Line 1127
    lw	$a7,0($a2)
    andi	$t2,$a7,0x2
    beqz	$t2,.L0d9706f8
    lw	$a1,16($a2)
    # Line 1140
    lw	$t1,4($a2)
    sra	$t2,$a3,0x7
    mult	$t1,$t2
    # Line 1135
    sllv	$a4,$a4,$a1
    # Line 1140
    andi	$t3,$a7,0x4
    sra	$v1,$a4,0x9
    mflo	$t0
    andi	$a6,$a3,0x7f
    # Line 1149
    sll	$t9,$a6,0x9
    # Line 1140
    addu	$v1,$v1,$t0
    # Line 1146
    li	$at,-128
    # Line 1140
    andi	$t0,$a4,0x1ff
    sll	$v1,$v1,0x10
    # Line 1146
    and	$at,$t0,$at
    sll	$at,$at,0x6
    andi	$v0,$t0,0x78
    # Line 1149
    addu	$t9,$t0,$t9
    # Line 1146
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    li	$v0,-52
    andi	$t0,$t0,0x7
    and	$v0,$a6,$v0
    sll	$v0,$v0,0x9
    andi	$t1,$a6,0x30
    sll	$t1,$t1,0x5
    andi	$a6,$a6,0x3
    # Line 1140
    lw	$t8,32($a2)
    # Line 1146
    addu	$v0,$v0,$t1
    sll	$a6,$a6,0x3
    addu	$at,$at,$t0
    addu	$v0,$v0,$a6
    # Line 1140
    addu	$t8,$t8,$v1
    # Line 1146
    addu	$at,$at,$v0
    # Line 1149
    addu	$t9,$t8,$t9
    # Line 1146
    addu	$t8,$t8,$at
    movz	$t8,$t9,$t3
.L0d9705cc:
    # Line 1156
    li	$t3,1
    # Line 1158
    lw	$a7,-21560($gp)
    # Line 1156
    beq	$a1,$t3,.L0d9706c8
    # Line 1158
    andi	$a6,$t8,0x1
    # Line 1156
    li	$t9,2
    # Line 1165
    lw	$v0,-21560($gp)
    # Line 1156
    beq	$a1,$t9,.L0d970714
    # Line 1165
    andi	$at,$t8,0x3
.L0d9705ec:
    # Line 1171
    lw	$a2,68($a0)
    lui	$a3,0xffff
    ori	$a3,$a3,0x7fc2
    la	$a1,sub_0da40000
    addu	$a2,$a2,$a3
    sltiu	$a3,$a2,27
    addiu	$a1,$a1,17048
    sll	$a2,$a2,0x2
    beqz	$a3,.L0d970520
    addu	$a1,$a1,$a2
    lw	$a4,0($a1)
    jr	$a4
    # Line 1200
    lw	$a1,0($sp)
.L0d970620:
    # Line 1122
    lwc1	$f3,156($a1)
    swc1	$f3,0($a5)
    # Line 1123
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1124
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1125
    lwc1	$f0,168($a1)
    # Line 1219
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1125
    swc1	$f0,16($a5)
.L0d97064c:
    # Line 1104
    lwc1	$f4,156($a1)
    # Line 1219
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1104
    swc1	$f4,20($a5)
.L0d970660:
    # Line 1107
    lwc1	$f5,156($a1)
    # Line 1219
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1107
    swc1	$f5,12($a5)
.L0d970674:
    # Line 1110
    lwc1	$f7,156($a1)
    swc1	$f7,12($a5)
    # Line 1111
    lwc1	$f6,168($a1)
    # Line 1219
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1111
    swc1	$f6,16($a5)
.L0d970690:
    # Line 1114
    lwc1	$f8,168($a1)
    # Line 1219
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1114
    swc1	$f8,16($a5)
.L0d9706a4:
    # Line 1117
    lwc1	$f11,156($a1)
    swc1	$f11,0($a5)
    # Line 1118
    lwc1	$f10,160($a1)
    swc1	$f10,4($a5)
    # Line 1119
    lwc1	$f9,164($a1)
    # Line 1219
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1119
    swc1	$f9,8($a5)
.L0d9706c8:
    # Line 1158
    beqz	$a6,.L0d970958
    nop
    beqz	$a7,.L0d970520
    # Line 1159
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    move	$a2,$a3
    move	$a1,$a4
    sd	$ra,16($sp)
    jal	printf
    addiu	$a0,$a0,17016
    b	.L0d970520
    ld	$ra,16($sp)
.L0d9706f8:
    # Line 1152
    lw	$t9,44($a0)
    sllv	$t9,$a3,$t9
    lw	$t8,20($a2)
    addu	$t9,$a4,$t9
    sllv	$t9,$t9,$a1
    b	.L0d9705cc
    addu	$t8,$t8,$t9
.L0d970714:
    # Line 1165
    beqz	$at,.L0d970964
    nop
    beqz	$v0,.L0d970520
    # Line 1166
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    move	$a2,$a3
    move	$a1,$a4
    sd	$ra,16($sp)
    jal	printf
    addiu	$a0,$a0,17016
    b	.L0d970520
    ld	$ra,16($sp)
.L0d970744:
    # Line 1175
    lw	$a1,0($sp)
    srl	$a1,$a1,0x8
    andi	$a1,$a1,0xff
    dmtc1	$a1,$f12
    ldc1	$f13,_lit8_406fe00000000000
    cvt.d.l	$f12,$f12
    div.d	$f12,$f12,$f13
    # Line 1219
    ld	$gp,8($sp)
    # Line 1175
    cvt.s.d	$f12,$f12
    # Line 1219
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1175
    swc1	$f12,20($a5)
.L0d970774:
    # Line 1210
    lw	$a1,0($sp)
    srl	$a7,$a1,0x18
    dmtc1	$a7,$f15
    # Line 1211
    srl	$a6,$a1,0x10
    andi	$a6,$a6,0xff
    # Line 1212
    srl	$a4,$a1,0x8
    # Line 1211
    dmtc1	$a6,$f14
    # Line 1212
    andi	$a4,$a4,0xff
    dmtc1	$a4,$f13
    # Line 1210
    cvt.s.l	$f15,$f15
    # Line 1211
    cvt.s.l	$f14,$f14
    # Line 1210
    lwc1	$f4,_lit_3b808081
    # Line 1212
    cvt.s.l	$f13,$f13
    # Line 1210
    mul.s	$f15,$f15,$f4
    swc1	$f15,0($a5)
    # Line 1211
    mul.s	$f14,$f14,$f4
    swc1	$f14,4($a5)
    # Line 1212
    mul.s	$f13,$f13,$f4
    swc1	$f13,8($a5)
    lw	$a2,64($a0)
    li	$a3,6408
    bne	$a2,$a3,.L0d970520
    # Line 1214
    andi	$t0,$a1,0xff
    dmtc1	$t0,$f16
    cvt.s.l	$f16,$f16
    mul.s	$f16,$f16,$f4
    b	.L0d970520
    swc1	$f16,16($a5)
.L0d9707e4:
    # Line 1200
    srl	$t9,$a1,0xa
    andi	$t9,$t9,0x1f
    # Line 1201
    srl	$t8,$a1,0x5
    # Line 1200
    dmtc1	$t9,$f21
    # Line 1201
    andi	$t8,$t8,0x1f
    dmtc1	$t8,$f19
    # Line 1202
    andi	$t3,$a1,0x1f
    dmtc1	$t3,$f17
    # Line 1200
    cvt.s.l	$f21,$f21
    # Line 1201
    cvt.s.l	$f19,$f19
    # Line 1200
    lwc1	$f18,_lit_3d042108
    # Line 1202
    cvt.s.l	$f17,$f17
    # Line 1200
    mul.s	$f21,$f21,$f18
    swc1	$f21,0($a5)
    # Line 1201
    mul.s	$f19,$f19,$f18
    swc1	$f19,4($a5)
    # Line 1202
    mul.s	$f17,$f17,$f18
    swc1	$f17,8($a5)
    lw	$t1,64($a0)
    li	$t2,6408
    bne	$t1,$t2,.L0d970520
    # Line 1204
    mtc1	$zero,$f25
    lwc1	$f23,_lit_3f800000
    andi	$at,$a1,0x8000
    movz.s	$f23,$f25,$at
    b	.L0d970520
    swc1	$f23,16($a5)
.L0d970850:
    # Line 1190
    lw	$a1,0($sp)
    srl	$a4,$a1,0xc
    andi	$a4,$a4,0xf
    dmtc1	$a4,$f31
    # Line 1191
    srl	$a3,$a1,0x8
    andi	$a3,$a3,0xf
    # Line 1192
    srl	$a2,$a1,0x4
    # Line 1191
    dmtc1	$a3,$f29
    # Line 1192
    andi	$a2,$a2,0xf
    dmtc1	$a2,$f27
    # Line 1190
    cvt.s.l	$f31,$f31
    # Line 1191
    cvt.s.l	$f29,$f29
    # Line 1190
    lwc1	$f4,_lit_3d888889
    # Line 1192
    cvt.s.l	$f27,$f27
    # Line 1190
    mul.s	$f31,$f31,$f4
    swc1	$f31,0($a5)
    # Line 1191
    mul.s	$f29,$f29,$f4
    swc1	$f29,4($a5)
    # Line 1192
    mul.s	$f27,$f27,$f4
    swc1	$f27,8($a5)
    lw	$v0,64($a0)
    li	$v1,6408
    bne	$v0,$v1,.L0d970520
    # Line 1194
    andi	$a6,$a1,0xf
    dmtc1	$a6,$f0
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f4
    b	.L0d970520
    swc1	$f0,16($a5)
.L0d9708c4:
    # Line 1181
    lw	$a7,0($sp)
    # Line 1182
    andi	$t0,$a7,0xff00
    dmtc1	$t0,$f2
    # Line 1181
    ldc1	$f3,_lit8_406fe00000000000
    # Line 1182
    cvt.d.l	$f2,$f2
    div.d	$f2,$f2,$f3
    # Line 1181
    srl	$a7,$a7,0x8
    andi	$a7,$a7,0xff
    dmtc1	$a7,$f1
    cvt.d.l	$f1,$f1
    div.d	$f1,$f1,$f3
    # Line 1219
    ld	$gp,8($sp)
    # Line 1182
    cvt.s.d	$f2,$f2
    swc1	$f2,16($a5)
    # Line 1181
    cvt.s.d	$f1,$f1
    # Line 1219
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1181
    swc1	$f1,12($a5)
.L0d97090c:
    # Line 1178
    lw	$t1,0($sp)
    srl	$t1,$t1,0x8
    andi	$t1,$t1,0xff
    dmtc1	$t1,$f3
    ldc1	$f4,_lit8_406fe00000000000
    cvt.d.l	$f3,$f3
    div.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    # Line 1179
    b	.L0d970520
    # Line 1178
    swc1	$f3,12($a5)
.L0d970934:
    # Line 1185
    lw	$t2,0($sp)
    andi	$t2,$t2,0xff
    dmtc1	$t2,$f4
    ldc1	$f5,_lit8_406fe00000000000
    cvt.d.l	$f4,$f4
    div.d	$f4,$f4,$f5
    cvt.s.d	$f4,$f4
    b	.L0d970520
    swc1	$f4,16($a5)
.L0d970958:
    # Line 1162
    lhu	$t3,0($t8)
    b	.L0d9705ec
    sw	$t3,0($sp)
.L0d970964:
    # Line 1169
    lw	$t9,0($t8)
    # Line 1170
    b	.L0d9705ec
    # Line 1169
    sw	$t9,0($sp)
.end crmExtractTexel

# Function: crmComputeTexLevelSize
# Declared: Line 1222 (Source lines: 1226-1414)
# Address: 0x0d970970 - 0x0d9710b4 (Size: 1860 bytes, Frame: 128)
.ent crmComputeTexLevelSize
crmComputeTexLevelSize:
    # Line 1233
    lw	$t2,3724($a0)
    addu	$t1,$a6,$a6
    # Line 1226
    addiu	$sp,$sp,-128
    sd	$s3,16($sp)
    # Line 1233
    subu	$s3,$a4,$t1
    # Line 1226
    sd	$s0,24($sp)
    # Line 1233
    slt	$at,$t2,$s3
    # Line 1226
    move	$s0,$a1
    sd	$s1,32($sp)
    move	$s1,$a2
    # Line 1233
    bnez	$at,.L0d970a54
    sd	$s2,48($sp)
    subu	$s2,$a5,$t1
    slt	$v0,$t2,$s2
    bnez	$v0,.L0d970a54
    nop
    sd	$a7,8($sp)
    # Line 1244
    sw	$zero,92($a1)
    # Line 1243
    sw	$zero,88($a1)
    # Line 1242
    sw	$zero,84($a1)
    # Line 1241
    sw	$zero,80($a1)
    # Line 1240
    sw	$zero,76($a1)
    # Line 1239
    sw	$zero,72($a1)
    # Line 1238
    sw	$a3,60($a1)
    # Line 1249
    lw	$t2,3260($a0)
    lw	$t0,3256($a0)
    lw	$a1,3264($a0)
    # Line 1252
    li	$v1,3
    li	$a2,6407
    sd	$a6,0($sp)
    # Line 1249
    addu	$t0,$t0,$t2
    sd	$ra,40($sp)
    # Line 1252
    beq	$a3,$v1,.L0d970acc
    # Line 1249
    addu	$a1,$a1,$t0
    # Line 1252
    beq	$a2,$a3,.L0d970acc
    li	$t2,4
    beq	$t2,$a3,.L0d970c08
    li	$a0,6408
    beq	$a0,$a3,.L0d970c0c
    # Line 1263
    slti	$ra,$a1,9
    # Line 1276
    li	$a1,0x8047
    sltu	$t3,$a3,$a1
    bnez	$t3,.L0d970bc4
    sltu	$t8,$a1,$a3
    bnez	$t8,.L0d970c50
    li	$a1,0x8052
    li	$a0,0x8045
    li	$a1,6410
.L0d970a30:
    # Line 1310
    sw	$a1,64($s0)
    # Line 1311
    sw	$a0,68($s0)
    # Line 1312
    li	$t9,8
    sw	$t9,88($s0)
    # Line 1313
    sw	$t9,84($s0)
    # Line 1315
    li	$ra,1
    sw	$ra,16($s1)
    # Line 1316
    b	.L0d970b0c
    # Line 1314
    sw	$t9,12($s1)
.L0d970a54:
    ld	$s2,48($sp)
    # Line 1414
    ld	$s0,24($sp)
    # Line 1235
    li	$v0,-1
    # Line 1414
    ld	$s1,32($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d970a70:
    # Line 1402
    li	$v1,2
    sw	$v1,0($s1)
    # Line 1407
    addiu	$v0,$s2,127
    # Line 1406
    sllv	$at,$s3,$a1
    # Line 1407
    sra	$v0,$v0,0x7
    sw	$v0,8($s1)
    # Line 1406
    addiu	$at,$at,511
    move	$a2,$v1
    sra	$at,$at,0x9
    sw	$at,4($s1)
.L0d970a98:
    # Line 1410
    lw	$a1,-22408($gp)
    bnez	$a1,.L0d970ab4
    ld	$s2,48($sp)
    ld	$a3,8($sp)
    beqz	$a3,.L0d970cdc
    # Line 1411
    ori	$v1,$a2,0x4
.L0d970ab0:
    ld	$s2,48($sp)
.L0d970ab4:
    # Line 1414
    ld	$s0,24($sp)
    move	$v0,$a0
    ld	$s1,32($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d970acc:
    # Line 1255
    slti	$a6,$a1,16
    beqz	$a6,.L0d970ae0
    lw	$a7,-22404($gp)
    beqz	$a7,.L0d970dcc
    nop
.L0d970ae0:
    # Line 1332
    sw	$a2,64($s0)
.L0d970ae4:
    # Line 1333
    li	$t8,0x8058
    sw	$t8,68($s0)
    # Line 1334
    li	$t3,8
    sw	$t3,72($s0)
    # Line 1335
    sw	$t3,76($s0)
    # Line 1336
    sw	$t3,80($s0)
    # Line 1338
    li	$t2,2
    sw	$t2,16($s1)
    # Line 1337
    li	$t0,1
    sw	$t0,12($s1)
.L0d970b0c:
    # Line 1382
    sw	$s2,24($s0)
    # Line 1381
    sw	$s3,20($s0)
    # Line 1380
    addiu	$t9,$t1,1
    sw	$t9,12($s0)
    # Line 1383
    # lw $t9, -25436($gp) # &__glFloorLog2
    # Line 1379
    sw	$a5,8($s0)
    # Line 1378
    sw	$a4,4($s0)
    # Line 1383
    move	$a0,$s3
    jal	__glFloorLog2
    # Line 1377
    sw	$zero,0($s0)
    # Line 1384
    # lw $t9, -25436($gp) # &__glFloorLog2
    move	$a0,$s2
    jal	__glFloorLog2
    # Line 1383
    sw	$v0,44($s0)
    ld	$ra,40($sp)
    # Line 1386
    mtc1	$s2,$f0
    # Line 1384
    sw	$v0,48($s0)
    # Line 1385
    mtc1	$s3,$f1
    # Line 1387
    ld	$a5,0($sp)
    # Line 1388
    la	$a4,sub_0d970000
    # Line 1386
    cvt.s.w	$f0,$f0
    # Line 1387
    sw	$a5,56($s0)
    # Line 1385
    cvt.s.w	$f1,$f1
    # Line 1388
    addiu	$a4,$a4,1120
    sw	$a4,96($s0)
    # Line 1386
    swc1	$f0,36($s0)
    # Line 1385
    swc1	$f1,32($s0)
    # Line 1395
    sw	$zero,32($s1)
    # Line 1397
    mult	$s3,$s2
    # Line 1394
    sw	$zero,28($s1)
    # Line 1397
    move	$a2,$s2
    slt	$a3,$s2,$s3
    # Line 1393
    sw	$zero,24($s1)
    # Line 1397
    movn	$a2,$s3,$a3
    # Line 1392
    sw	$zero,20($s1)
    # Line 1397
    slti	$a2,$a2,128
    # Line 1391
    sw	$zero,8($s1)
    # Line 1397
    lw	$a1,16($s1)
    # Line 1390
    sw	$zero,4($s1)
    # Line 1397
    mflo	$a0
    beqz	$a2,.L0d970a70
    sllv	$a0,$a0,$a1
    # Line 1400
    li	$a6,1
    sw	$a6,0($s1)
    b	.L0d970a98
    li	$a2,1
.L0d970bc4:
    # Line 1276
    li	$a1,0x803d
    sltu	$a7,$a3,$a1
    bnez	$a7,.L0d970c9c
    sltu	$t0,$a1,$a3
    bnez	$t0,.L0d970d20
    li	$a0,0x8042
    li	$a0,0x803e
.L0d970be0:
    # Line 1299
    li	$t9,6406
.L0d970be4:
    sw	$t9,64($s0)
    # Line 1300
    sw	$a0,68($s0)
    # Line 1301
    li	$t8,16
    sw	$t8,84($s0)
    # Line 1303
    li	$t3,1
    sw	$t3,16($s1)
    # Line 1302
    li	$t2,5
    # Line 1304
    b	.L0d970b0c
    # Line 1302
    sw	$t2,12($s1)
.L0d970c08:
    # Line 1263
    slti	$ra,$a1,9
.L0d970c0c:
    beqz	$ra,.L0d970c24
    li	$a1,0x8058
    lw	$at,-22404($gp)
    beqz	$at,.L0d970e78
    # Line 1264
    li	$a1,0x8056
    # Line 1263
    li	$a1,0x8058
.L0d970c24:
    # Line 1364
    sw	$a0,64($s0)
.L0d970c28:
    # Line 1365
    sw	$a1,68($s0)
    # Line 1366
    li	$v1,8
    sw	$v1,72($s0)
    # Line 1367
    sw	$v1,76($s0)
    # Line 1368
    sw	$v1,80($s0)
    # Line 1369
    sw	$v1,84($s0)
    # Line 1370
    li	$v0,2
    # Line 1371
    sw	$v0,16($s1)
    b	.L0d970b0c
    # Line 1370
    sw	$v0,12($s1)
.L0d970c50:
    # Line 1276
    sltu	$a6,$a3,$a1
    bnez	$a6,.L0d970ce4
    sltu	$a7,$a1,$a3
    beqz	$a7,.L0d970ae0
    li	$a1,0x8057
    sltu	$t0,$a3,$a1
    bnez	$t0,.L0d970e54
    li	$t3,0x8055
    sltu	$t2,$a1,$a3
    beqz	$t2,.L0d970e24
    nop
    li	$a1,0x805a
    sltu	$t3,$a3,$a1
    bnez	$t3,.L0d971014
    sltu	$t8,$a1,$a3
    bnez	$t8,.L0d971090
    li	$t9,0x805b
    b	.L0d970c24
    li	$a1,0x8058
.L0d970c9c:
    sltiu	$a1,$a3,6409
    bnez	$a1,.L0d970d3c
    sltiu	$t9,$a3,6406
    sltiu	$t9,$a3,6410
    beqz	$t9,.L0d970d98
    li	$a0,0x8042
    li	$a1,1
.L0d970cb8:
    # Line 1290
    li	$v0,6409
    sw	$v0,64($s0)
    # Line 1291
    sw	$a0,68($s0)
    # Line 1292
    li	$at,16
    sw	$at,88($s0)
    # Line 1294
    sw	$a1,16($s1)
    # Line 1293
    li	$ra,7
    # Line 1295
    b	.L0d970b0c
    # Line 1293
    sw	$ra,12($s1)
.L0d970cdc:
    # Line 1411
    b	.L0d970ab0
    sw	$v1,0($s1)
.L0d970ce4:
    # Line 1276
    li	$a0,0x804d
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d970d58
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d970ea0
    li	$a1,0x8049
.L0d970cfc:
    # Line 1280
    sw	$a1,64($s0)
.L0d970d00:
    # Line 1281
    sw	$a0,68($s0)
    # Line 1282
    li	$t2,16
    sw	$t2,92($s0)
    # Line 1284
    li	$t0,1
    sw	$t0,16($s1)
    # Line 1283
    li	$a7,6
    # Line 1285
    b	.L0d970b0c
    # Line 1283
    sw	$a7,12($s1)
.L0d970d20:
    # Line 1276
    sltu	$t3,$a3,$a0
    bnez	$t3,.L0d970d78
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d970ee8
    nop
    b	.L0d970cb8
    li	$a1,1
.L0d970d3c:
    bnez	$t9,.L0d970df8
    sltiu	$ra,$a3,2
    sltiu	$ra,$a3,6407
    beqz	$ra,.L0d970e14
    sltiu	$v0,$a3,6408
    b	.L0d970be0
    li	$a0,0x803e
.L0d970d58:
    li	$a1,0x804a
    sltu	$at,$a3,$a1
    bnez	$at,.L0d970ec8
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0d970f80
    li	$a1,0x804c
    b	.L0d970cfc
    li	$a1,0x8049
.L0d970d78:
    li	$a1,0x8040
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0d970f0c
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0d970fcc
    li	$v0,0x8041
    b	.L0d970cb8
    li	$a1,1
.L0d970d98:
    li	$a0,0x803b
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d970db8
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d970ff0
    li	$v1,0x803c
    b	.L0d970be0
    li	$a0,0x803e
.L0d970db8:
    sltiu	$t0,$a3,10768
    bnez	$t0,.L0d971000
    sltiu	$t2,$a3,10769
    beqz	$t2,.L0d970b0c
    nop
.L0d970dcc:
    # Line 1321
    sw	$a2,64($s0)
.L0d970dd0:
    # Line 1322
    li	$t9,0x8057
    sw	$t9,68($s0)
    # Line 1323
    li	$t8,5
    sw	$t8,72($s0)
    # Line 1324
    sw	$t8,76($s0)
    # Line 1325
    sw	$t8,80($s0)
    # Line 1326
    li	$t3,1
    # Line 1327
    sw	$t3,16($s1)
    # Line 1328
    b	.L0d970b0c
    # Line 1326
    sw	$t3,12($s1)
.L0d970df8:
    # Line 1276
    bnez	$ra,.L0d970f2c
    li	$a1,1
    sltiu	$at,$a3,3
    beqz	$at,.L0d970b0c
    li	$a0,0x8045
    b	.L0d970a30
    li	$a1,6410
.L0d970e14:
    bnez	$v0,.L0d970b0c
    nop
    beqz	$a1,.L0d970b0c
    li	$a1,0x8057
.L0d970e24:
    # Line 1342
    sw	$a0,64($s0)
    # Line 1343
    sw	$a1,68($s0)
    # Line 1344
    li	$a3,5
    sw	$a3,72($s0)
    # Line 1345
    sw	$a3,76($s0)
    # Line 1346
    sw	$a3,80($s0)
    # Line 1347
    li	$a2,1
    sw	$a2,84($s0)
    # Line 1349
    sw	$a2,16($s1)
    # Line 1348
    li	$v1,2
    # Line 1350
    b	.L0d970b0c
    # Line 1348
    sw	$v1,12($s1)
.L0d970e54:
    # Line 1276
    sltu	$a6,$a3,$t3
    bnez	$a6,.L0d970f3c
    sltu	$a7,$t3,$a3
    beqz	$a7,.L0d970e78
    li	$a1,0x8056
    bne	$a1,$a3,.L0d970b0c
    nop
    b	.L0d970e7c
    # Line 1352
    sw	$a0,64($s0)
.L0d970e78:
    sw	$a0,64($s0)
.L0d970e7c:
    # Line 1353
    sw	$a1,68($s0)
    # Line 1354
    sw	$t2,72($s0)
    # Line 1355
    sw	$t2,76($s0)
    # Line 1356
    sw	$t2,80($s0)
    # Line 1357
    sw	$t2,84($s0)
    # Line 1359
    li	$t0,1
    sw	$t0,16($s1)
    # Line 1360
    b	.L0d970b0c
    # Line 1358
    sw	$t2,12($s1)
.L0d970ea0:
    # Line 1276
    li	$a0,0x8050
    sltu	$t2,$a3,$a0
    bnez	$t2,.L0d970f5c
    sltu	$t3,$a0,$a3
    beqz	$t3,.L0d970dcc
    li	$t8,0x8051
    bne	$a3,$t8,.L0d970b0c
    nop
    b	.L0d970ae4
    # Line 1332
    sw	$a2,64($s0)
.L0d970ec8:
    # Line 1276
    li	$a1,0x8049
    sltu	$t9,$a3,$a1
    bnez	$t9,.L0d970f9c
    sltu	$ra,$a1,$a3
    bnez	$ra,.L0d970b0c
    nop
    b	.L0d970d00
    # Line 1280
    sw	$a1,64($s0)
.L0d970ee8:
    # Line 1276
    li	$a0,0x8045
    sltu	$at,$a3,$a0
    bnez	$at,.L0d970fb0
    li	$a1,0x8044
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d97106c
    li	$t3,0x8046
    b	.L0d970a30
    li	$a1,6410
.L0d970f0c:
    li	$a1,0x803f
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0d970fdc
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0d970b0c
    nop
    b	.L0d970cb8
    li	$a1,1
.L0d970f2c:
    bne	$a1,$a3,.L0d970b0c
    nop
    b	.L0d970cb8
    li	$a0,0x8042
.L0d970f3c:
    li	$a0,0x8054
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d971034
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d970b0c
    nop
    b	.L0d970ae4
    # Line 1332
    sw	$a2,64($s0)
.L0d970f5c:
    # Line 1276
    li	$a0,0x804f
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0d971048
    li	$t0,0x804e
    sltu	$t2,$a0,$a3
    bnez	$t2,.L0d970b0c
    nop
    b	.L0d970dd0
    # Line 1321
    sw	$a2,64($s0)
.L0d970f80:
    # Line 1276
    sltu	$t3,$a3,$a1
    bnez	$t3,.L0d971058
    sltu	$t8,$a1,$a3
    bnez	$t8,.L0d970b0c
    nop
    b	.L0d970cfc
    li	$a1,0x8049
.L0d970f9c:
    li	$t9,0x8048
    bne	$a3,$t9,.L0d970b0c
    li	$a0,0x8045
    b	.L0d970a30
    li	$a1,6410
.L0d970fb0:
    sltu	$ra,$a3,$a1
    bnez	$ra,.L0d97107c
    sltu	$at,$a1,$a3
    bnez	$at,.L0d970b0c
    nop
    b	.L0d970a30
    li	$a1,6410
.L0d970fcc:
    bne	$a3,$v0,.L0d970b0c
    nop
    b	.L0d970cb8
    li	$a1,1
.L0d970fdc:
    li	$a0,0x803e
    bne	$a0,$a3,.L0d970b0c
    nop
    b	.L0d970be4
    # Line 1299
    li	$t9,6406
.L0d970ff0:
    # Line 1276
    bne	$a3,$v1,.L0d970b0c
    nop
    b	.L0d970be0
    li	$a0,0x803e
.L0d971000:
    li	$a1,6410
    bne	$a1,$a3,.L0d970b0c
    nop
    b	.L0d970a30
    li	$a0,0x8045
.L0d971014:
    li	$a1,0x8059
    sltu	$a2,$a3,$a1
    bnez	$a2,.L0d9710a0
    sltu	$a6,$a1,$a3
    bnez	$a6,.L0d970b0c
    nop
    b	.L0d970c24
    li	$a1,0x8058
.L0d971034:
    li	$a7,0x8053
    bne	$a3,$a7,.L0d970b0c
    nop
    b	.L0d970ae4
    # Line 1332
    sw	$a2,64($s0)
.L0d971048:
    # Line 1276
    bne	$a3,$t0,.L0d970b0c
    nop
    b	.L0d970dd0
    # Line 1321
    sw	$a2,64($s0)
.L0d971058:
    # Line 1276
    li	$t2,0x804b
    bne	$a3,$t2,.L0d970b0c
    nop
    b	.L0d970cfc
    li	$a1,0x8049
.L0d97106c:
    bne	$a3,$t3,.L0d970b0c
    nop
    b	.L0d970a30
    li	$a1,6410
.L0d97107c:
    li	$t8,0x8043
    bne	$a3,$t8,.L0d970b0c
    nop
    b	.L0d970a30
    li	$a1,6410
.L0d971090:
    bne	$a3,$t9,.L0d970b0c
    nop
    b	.L0d970c24
    li	$a1,0x8058
.L0d9710a0:
    li	$a1,0x8058
    bne	$a1,$a3,.L0d970b0c
    nop
    b	.L0d970c28
    # Line 1364
    sw	$a0,64($s0)
.end crmComputeTexLevelSize

# Function: crmCreateLevel
# Declared: Line 1419 (Source lines: 1423-1677)
# Address: 0x0d9710c0 - 0x0d971a28 (Size: 2408 bytes, Frame: 128)
.ent crmCreateLevel
crmCreateLevel:
    # Line 1423
    addiu	$sp,$sp,-512
    sd	$a7,360($sp)
    sd	$a6,352($sp)
    sd	$a4,368($sp)
    sd	$s2,400($sp)
    move	$s2,$a3
    move	$a3,$a4
    move	$a4,$a5
    sd	$a5,344($sp)
    move	$a5,$a6
    move	$a6,$a7
    # Line 1431
    lbu	$a7,527($sp)
    sd	$s7,416($sp)
    # Line 1423
    sd	$s1,392($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    move	$s1,$a0
    sd	$ra,384($sp)
    sd	$s3,408($sp)
    move	$s3,$a2
    addiu	$t9,$t9,2416
    # Line 1431
    addiu	$a2,$sp,104
    # Line 1423
    sd	$s0,376($sp)
    move	$s0,$a1
    # Line 1431
    addiu	$a1,$sp,0
    bal __glCrmPickTextureProcs
    sd	$s4,424($sp)
    # Line 1452
    sll	$t8,$s2,0x2
    subu	$t8,$t8,$s2
    sll	$t8,$t8,0x3
    lw	$s4,228($s3)
    # Line 1454
    li	$t9,0x8063
    # Line 1452
    addu	$t8,$t8,$s2
    # Line 1431
    move	$s7,$v0
    # Line 1452
    sll	$t8,$t8,0x2
    # Line 1454
    beq	$s0,$t9,.L0d97159c
    # Line 1452
    addu	$s4,$s4,$t8
    # Line 1454
    li	$t9,0x8064
    beq	$s0,$t9,.L0d97159c
    nop
    # Line 1507
    bltz	$v0,.L0d971978
    # Line 1510
    nop	# was lw $t9, -26452($gp) # &__glSetError
    sd	$s5,432($sp)
    sd	$s6,440($sp)
    # Line 1514
    lw	$s6,284($s3)
    # Line 1515
    lw	$t9,32504($s1)
    sll	$t8,$s2,0x3
    addu	$t8,$t8,$s2
    lw	$s5,32($s6)
    sll	$t8,$t8,0x2
    beq	$t9,$s3,.L0d971720
    addu	$s5,$s5,$t8
    # Line 1519
    lw	$a1,0($s4)
.L0d971190:
    beqz	$a1,.L0d9711a8
    nop
    # Line 1523
    lw	$t9,12($s1)
    jal	__glSetError
    move	$a0,$s1
    # Line 1524
    sw	$zero,0($s4)
.L0d9711a8:
    # Line 1527
    lw	$a1,36($s6)
    beqz	$a1,.L0d9713fc
    # Line 1558
    lw	$t3,104($sp)
    # Line 1527
    lw	$t9,0($s6)
    andi	$t9,$t9,0x80
    beqz	$t9,.L0d9713fc
    # Line 1558
    lw	$t3,104($sp)
    # Line 1529
    beqz	$s2,.L0d9716c4
    lw	$v0,236($s3)
    ld	$s6,440($sp)
    ld	$s4,424($sp)
    ld	$s5,432($sp)
    ld	$s7,416($sp)
    # Line 1507
    ld	$s0,376($sp)
    ld	$ra,384($sp)
    ld	$s1,392($sp)
    # Line 1532
    move	$v0,$zero
    # Line 1507
    ld	$s2,400($sp)
    ld	$s3,408($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0d9711fc:
    # Line 1597
    sd	$zero,328($sp)
    move	$s7,$zero
.L0d971204:
    # Line 1600
    bne	$s7,$s0,.L0d9714c4
.L0d971208:
    ld	$at,336($sp)
    ld	$ra,328($sp)
    bne	$ra,$at,.L0d9714c4
    nop
.L0d971218:
    # Line 1601
    lw	$a0,24($s5)
    sw	$a0,128($sp)
    lw	$v1,28($s5)
    sw	$v1,132($sp)
    lw	$v0,32($s5)
    # Line 1628
    beq	$s7,$s0,.L0d97155c
    # Line 1601
    sw	$v0,136($sp)
.L0d971234:
    # Line 1628
    lw	$a1,32504($s1)
.L0d971238:
    bne	$a1,$s3,.L0d971244
    nop
    # Line 1632
    sw	$zero,32504($s1)
.L0d971244:
    # Line 1634
    lw	$a2,0($s6)
    ori	$a2,$a2,0x10
    sw	$a2,0($s6)
    lw	$a3,104($sp)
.L0d971254:
    # Line 1640
    lw	$a4,136($sp)
    # Line 1638
    lw	$s0,124($sp)
    # Line 1640
    andi	$a5,$a3,0x2
    # Line 1634
    andi	$a3,$a3,0x1
    # Line 1640
    movz	$a4,$zero,$a5
    movz	$s0,$a4,$a3
    beqz	$s0,.L0d971920
    addiu	$a1,$s4,12
    li	$a6,0x10
    addiu	$a7,$s4,4
    # Line 1665
    addiu	$t2,$sp,0
    addiu	$t1,$sp,12
    addiu	$a2,$s4,8
    li	$a0,4
    addiu	$t0,$sp,4
    lw	$a5,0($sp)
    li	$v0,0x18
    addiu	$a3,$sp,8
    sw	$a5,0($s4)
.L0d9712a0:
    addu	$t8,$a0,$t2
    addu	$t9,$a0,$s4
    lw	$t8,0($t8)
    addu	$t3,$a0,$t0
    sw	$t8,0($t9)
    addu	$t8,$a0,$a7
    lw	$t3,0($t3)
    addu	$a5,$a0,$a3
    sw	$t3,0($t8)
    addu	$t3,$a0,$a2
    lw	$a5,0($a5)
    addiu	$v0,$v0,-4
    addu	$a4,$a0,$t1
    sw	$a5,0($t3)
    addu	$a5,$a0,$a1
    lw	$a4,0($a4)
    addu	$a0,$a0,$a6
    bgtz	$v0,.L0d9712a0
    sw	$a4,0($a5)
    # Line 1666
    addiu	$v0,$sp,104
    lw	$a6,104($sp)
    sw	$a6,0($s5)
    lw	$a5,4($v0)
    sw	$a5,4($s5)
    lw	$a4,8($v0)
    sw	$a4,8($s5)
    lw	$a3,12($v0)
    sw	$a3,12($s5)
    lw	$a2,16($v0)
    sw	$a2,16($s5)
    lw	$v1,20($v0)
    sw	$v1,20($s5)
    lw	$at,24($v0)
    sw	$at,24($s5)
    lw	$ra,28($v0)
    sw	$ra,28($s5)
    lw	$t9,32($v0)
    sw	$t9,32($s5)
    # Line 1667
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    li	$a1,4
    sw	$v0,0($s4)
.L0d97134c:
    beqz	$s2,.L0d971734
.L0d971350:
    ld	$s7,416($sp)
.L0d971354:
    ld	$s5,432($sp)
    ld	$s4,424($sp)
    ld	$s6,440($sp)
    # Line 1677
    move	$v0,$s0
    # Line 1507
    ld	$s0,376($sp)
    ld	$ra,384($sp)
    ld	$s1,392($sp)
    ld	$s2,400($sp)
    ld	$s3,408($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0d971380:
    # Line 1544
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1546
    lw	$t0,0($s6)
    # Line 1548
    ld	$a7,320($sp)
    # Line 1547
    lw	$a2,32($s6)
    # Line 1546
    li	$t1,-129
    # Line 1545
    sw	$zero,36($s6)
    # Line 1546
    and	$t0,$t0,$t1
    sw	$t0,0($s6)
    # Line 1548
    bltz	$a7,.L0d9713e8
    move	$a3,$a7
    nop
    nop
    nop
    lw	$t2,0($a2)
.L0d9713c0:
    andi	$t2,$t2,0x2
    beqz	$t2,.L0d9713d8
    addiu	$a3,$a3,-1
    # Line 1553
    sw	$zero,32($a2)
    # Line 1552
    sw	$zero,8($a2)
    # Line 1551
    sw	$zero,4($a2)
.L0d9713d8:
    # Line 1555
    beqz	$s0,.L0d971758
    # Line 1556
    addiu	$a2,$a2,36
    # Line 1548
    bgezl	$a3,.L0d9713c0
    lw	$t2,0($a2)
.L0d9713e8:
    # Line 1558
    beqz	$s0,.L0d971758
    nop
    # Line 1561
    sw	$zero,28($s6)
.L0d9713f4:
    # Line 1560
    sw	$zero,16($s6)
    # Line 1558
    lw	$t3,104($sp)
.L0d9713fc:
    andi	$t3,$t3,0x1
    beqz	$t3,.L0d971898
    nop
    # Line 1567
    blez	$s7,.L0d971428
    nop
    # Line 1569
    lw	$t9,0($s6)
    ori	$t9,$t9,0x20
    sw	$t9,0($s6)
    # Line 1570
    lw	$t8,104($sp)
    ori	$t8,$t8,0x20
    sw	$t8,104($sp)
.L0d971428:
    # Line 1579
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,20($s5)
    # Line 1580
    beqz	$s7,.L0d971458
    sw	$zero,20($s5)
    # Line 1582
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s7
    beqz	$v0,.L0d97190c
    sw	$v0,124($sp)
.L0d971458:
    # Line 1584
    lw	$v1,104($sp)
.L0d97145c:
    lw	$v0,0($s5)
    andi	$v1,$v1,0x2
    beqz	$v1,.L0d9718a0
    andi	$v0,$v0,0x2
    # Line 1590
    lw	$a4,112($sp)
    lw	$a3,108($sp)
    # Line 1591
    lw	$a0,44($sp)
    # Line 1590
    mult	$a3,$a4
    # Line 1591
    lw	$a2,48($sp)
    slt	$a1,$a2,$a0
    movz	$a0,$a2,$a1
    # Line 1597
    move	$s7,$zero
    # Line 1591
    andi	$a0,$a0,0x1
    # Line 1590
    mflo	$s0
    # Line 1595
    beqz	$v0,.L0d9718e4
    sd	$a0,336($sp)
    lw	$a5,24($s5)
    beqz	$a5,.L0d9711fc
    nop
    # Line 1596
    lw	$t0,8($s5)
    lw	$a7,4($s5)
    mult	$a7,$t0
    mflo	$s7
    # Line 1597
    lw	$a6,28($s5)
    # Line 1600
    beq	$s7,$s0,.L0d971208
    sd	$a6,328($sp)
.L0d9714c4:
    # Line 1603
    beqz	$s7,.L0d971500
    # Line 1610
    la	$v0,sub_0d970000
.L0d9714cc:
    # Line 1603
    lw	$a2,24($s5)
    beqz	$a2,.L0d9714fc
    # Line 1604
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-7248
    li	$a1,22018
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s1)
    # Line 1610
    sw	$zero,32($s5)
    # Line 1609
    sw	$zero,24($s5)
    # Line 1608
    sw	$zero,8($s5)
    # Line 1607
    sw	$zero,4($s5)
    # Line 1606
    sw	$zero,0($s5)
.L0d9714fc:
    # Line 1610
    la	$v0,sub_0d970000
.L0d971500:
    beqz	$s0,.L0d971558
    addiu	$v0,$v0,-7248
    # Line 1614
    sw	$s0,292($sp)
    # Line 1615
    ld	$v1,336($sp)
    # Line 1616
    move	$t9,$v0
    addiu	$a2,$sp,288
    # Line 1615
    sw	$v1,296($sp)
    # Line 1616
    li	$a1,22017
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s1)
    bnez	$v0,.L0d971548
    # Line 1618
    lw	$a0,288($sp)
    # Line 1620
    lw	$a1,300($sp)
    # Line 1619
    ld	$a2,336($sp)
    sw	$a2,132($sp)
    # Line 1620
    sw	$a1,136($sp)
    b	.L0d971558
    # Line 1618
    sw	$a0,128($sp)
.L0d971548:
    # Line 1622
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 1623
    sw	$zero,136($sp)
.L0d971558:
    # Line 1628
    bne	$s7,$s0,.L0d971234
.L0d97155c:
    ld	$a4,336($sp)
    ld	$a3,328($sp)
    bne	$a3,$a4,.L0d971234
    lw	$a6,108($sp)
    lw	$a5,4($s5)
    lw	$a7,8($s5)
    lw	$t1,16($s5)
    bne	$a5,$a6,.L0d971234
    lw	$t0,112($sp)
    lw	$t2,120($sp)
    bne	$a7,$t0,.L0d971234
    nop
    beq	$t1,$t2,.L0d971254
    # Line 1634
    lw	$a3,104($sp)
    b	.L0d971238
    # Line 1628
    lw	$a1,32504($s1)
.L0d97159c:
    # Line 1454
    blez	$s2,.L0d9715d8
    # Line 1460
    ld	$a3,368($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a5,352($sp)
    move	$a0,$s1
    ld	$a6,360($sp)
    addiu	$t9,$t9,2416
    addiu	$a2,$sp,248
    ld	$a4,344($sp)
    sllv	$a5,$a5,$s2
    addiu	$a1,$sp,144
    lbu	$a7,527($sp)
    bal __glCrmPickTextureProcs
    sllv	$a4,$a4,$s2
    move	$s7,$v0
.L0d9715d8:
    # Line 1677
    blez	$s7,.L0d971780
    lw	$a6,104($sp)
    andi	$a6,$a6,0x1
    beqz	$a6,.L0d9718ec
    # Line 1470
    lw	$a1,112($sp)
    # Line 1472
    sw	$zero,312($sp)
    # Line 1468
    li	$a7,1
    sw	$a7,308($sp)
.L0d9715f8:
    # Line 1473
    la	$s0,sub_0d970000
    addiu	$s0,$s0,-7248
    move	$t9,$s0
    addiu	$a2,$sp,304
    sw	$zero,312($sp)
    li	$a1,22017
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s1)
    beqz	$v0,.L0d971770
    # Line 1476
    move	$t9,$s0
    # Line 1486
    sw	$zero,88($s4)
.L0d971624:
    sw	$zero,92($s4)
    # Line 1485
    sw	$zero,72($s4)
    sw	$zero,76($s4)
    sw	$zero,80($s4)
    sw	$zero,84($s4)
    # Line 1484
    sw	$zero,60($s4)
    sw	$zero,64($s4)
    sw	$zero,68($s4)
    # Line 1483
    sw	$zero,4($s4)
    sw	$zero,8($s4)
    sw	$zero,12($s4)
    sw	$zero,56($s4)
    # Line 1473
    la	$v0,__glNop
    # Line 1487
    blez	$s2,.L0d97169c
    sw	$v0,96($s4)
    # Line 1494
    lw	$s4,228($s3)
.L0d971664:
    # Line 1501
    sw	$v0,96($s4)
    # Line 1500
    sw	$zero,88($s4)
    sw	$zero,92($s4)
    # Line 1499
    sw	$zero,72($s4)
    sw	$zero,76($s4)
    sw	$zero,80($s4)
    sw	$zero,84($s4)
    # Line 1498
    sw	$zero,60($s4)
    sw	$zero,64($s4)
    sw	$zero,68($s4)
    # Line 1497
    sw	$zero,4($s4)
    sw	$zero,8($s4)
    sw	$zero,12($s4)
    sw	$zero,56($s4)
.L0d97169c:
    ld	$s4,424($sp)
.L0d9716a0:
    ld	$s7,416($sp)
    # Line 1507
    ld	$s0,376($sp)
    ld	$ra,384($sp)
    ld	$s1,392($sp)
    move	$v0,$zero
    ld	$s2,400($sp)
    ld	$s3,408($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0d9716c4:
    # Line 1532
    lw	$a0,148($a1)
    beqz	$a0,.L0d9716e0
    sd	$v0,320($sp)
    # Line 1535
    # lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    nop
    lw	$a1,36($s6)
.L0d9716e0:
    lw	$a0,152($a1)
    beqz	$a0,.L0d9716f8
    # Line 1538
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
    lw	$a1,36($s6)
.L0d9716f8:
    lw	$v0,156($a1)
    beqz	$v0,.L0d971380
    # Line 1542
    move	$s0,$zero
    lw	$t9,12($s1)
    move	$a1,$v0
    move	$a0,$s1
    jalr	$t9
    # Line 1541
    lbu	$s0,19($v0)
    # Line 1542
    b	.L0d971380
    lw	$a1,36($s6)
.L0d971720:
    # Line 1519
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s1
    b	.L0d971190
    lw	$a1,0($s4)
.L0d971734:
    # Line 1672
    lw	$t9,48($s4)
    sw	$t9,236($s3)
    lw	$t8,48($s4)
    lw	$v0,44($s4)
    slt	$t8,$t8,$v0
    beqz	$t8,.L0d971354
    ld	$s7,416($sp)
    # Line 1674
    b	.L0d971350
    sw	$v0,236($s3)
.L0d971758:
    # Line 1558
    lw	$ra,236($s3)
    li	$at,6
    bne	$ra,$at,.L0d9713fc
    lw	$t3,104($sp)
    b	.L0d9713f4
    # Line 1561
    sw	$zero,28($s6)
.L0d971770:
    # Line 1476
    lw	$a2,304($sp)
    li	$a1,22018
    bal __glCrmGenericPickStoreProcs
    lw	$a0,31504($s1)
.L0d971780:
    # Line 1494
    bltz	$s7,.L0d9719dc
    addiu	$a2,$sp,12
    addiu	$a3,$s4,12
    li	$a6,0x10
    addiu	$a1,$sp,4
    addiu	$t1,$s4,4
    # Line 1489
    addiu	$a7,$sp,0
    addiu	$t0,$s4,8
    addiu	$t2,$sp,8
    lw	$v1,0($sp)
    li	$a0,4
    li	$v0,0x18
    sw	$v1,0($s4)
.L0d9717b4:
    addu	$t8,$a0,$a7
    addu	$t9,$a0,$s4
    lw	$t8,0($t8)
    addu	$t3,$a0,$a1
    sw	$t8,0($t9)
    addu	$t8,$a0,$t1
    lw	$t3,0($t3)
    addu	$a5,$a0,$t2
    sw	$t3,0($t8)
    addu	$t3,$a0,$t0
    lw	$a5,0($a5)
    addiu	$v0,$v0,-4
    addu	$a4,$a0,$a2
    sw	$a5,0($t3)
    addu	$a5,$a0,$a3
    lw	$a4,0($a4)
    addu	$a0,$a0,$a6
    bgtz	$v0,.L0d9717b4
    sw	$a4,0($a5)
    la	$v0,__glNop
.L0d971804:
    blez	$s2,.L0d9716a0
    ld	$s4,424($sp)
    # Line 1494
    bltz	$s7,.L0d971664
    lw	$s4,228($s3)
    addiu	$t2,$s4,12
    li	$t0,0x10
    addiu	$a2,$s4,4
    addiu	$a6,$s4,8
    # Line 1503
    li	$a0,4
    addiu	$a7,$sp,144
    li	$v0,0x18
    lw	$t9,144($sp)
    addiu	$a3,$a7,12
    addiu	$a1,$a7,4
    addiu	$t1,$a7,8
    sw	$t9,0($s4)
.L0d971844:
    addu	$t8,$a0,$a7
    addu	$t9,$a0,$s4
    lw	$t8,0($t8)
    addu	$t3,$a0,$a1
    sw	$t8,0($t9)
    addu	$t8,$a0,$a2
    lw	$t3,0($t3)
    addu	$a5,$a0,$t1
    sw	$t3,0($t8)
    addu	$t3,$a0,$a6
    lw	$a5,0($a5)
    addiu	$v0,$v0,-4
    addu	$a4,$a0,$a3
    sw	$a5,0($t3)
    addu	$a5,$a0,$t2
    lw	$a4,0($a4)
    addu	$a0,$a0,$t0
    bgtz	$v0,.L0d971844
    sw	$a4,0($a5)
    b	.L0d9716a0
    ld	$s4,424($sp)
.L0d971898:
    b	.L0d971428
    # Line 1570
    move	$s7,$zero
.L0d9718a0:
    # Line 1595
    beqz	$v0,.L0d9719a8
    nop
    lw	$t9,24($s5)
    beqz	$t9,.L0d9719d0
    # Line 1597
    lw	$ra,28($s5)
    # Line 1596
    lw	$v0,8($s5)
    lw	$at,4($s5)
    mult	$at,$v0
    # Line 1597
    sd	$ra,328($sp)
    # Line 1596
    mflo	$s7
    nop
    nop
.L0d9718d0:
    # Line 1600
    beqz	$s7,.L0d9719b4
    ld	$a4,328($sp)
.L0d9718d8:
    # Line 1603
    sd	$zero,336($sp)
    b	.L0d9714cc
    move	$s0,$zero
.L0d9718e4:
    # Line 1597
    b	.L0d971204
    sd	$zero,328($sp)
.L0d9718ec:
    # Line 1470
    lw	$a0,108($sp)
    mult	$a0,$a1
    mflo	$v1
    # Line 1472
    sw	$zero,312($sp)
    # Line 1473
    bgtz	$v1,.L0d9715f8
    # Line 1470
    sw	$v1,308($sp)
    b	.L0d971624
    # Line 1486
    sw	$zero,88($s4)
.L0d97190c:
    # Line 1584
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d97145c
    lw	$v1,104($sp)
.L0d971920:
    # Line 1662
    sw	$zero,92($s4)
    # Line 1661
    sw	$zero,88($s4)
    # Line 1660
    sw	$zero,84($s4)
    # Line 1659
    sw	$zero,80($s4)
    # Line 1658
    sw	$zero,76($s4)
    # Line 1657
    sw	$zero,72($s4)
    # Line 1656
    sw	$zero,68($s4)
    # Line 1655
    sw	$zero,64($s4)
    # Line 1654
    li	$a3,1
    sw	$a3,60($s4)
    # Line 1653
    sw	$zero,56($s4)
    # Line 1652
    sw	$zero,48($s4)
    # Line 1651
    sw	$zero,44($s4)
    # Line 1650
    sw	$zero,24($s4)
    # Line 1649
    sw	$zero,20($s4)
    # Line 1648
    sw	$zero,12($s4)
    # Line 1647
    sw	$zero,8($s4)
    # Line 1646
    sw	$zero,4($s4)
    # Line 1645
    sw	$zero,0($s4)
    # Line 1663
    la	$a2,__glNop
    b	.L0d97134c
    sw	$a2,96($s4)
.L0d971978:
    ld	$s4,424($sp)
    ld	$s7,416($sp)
    # Line 1510
    jalr	$t9
    li	$a0,1281
    # Line 1507
    ld	$s0,376($sp)
    ld	$ra,384($sp)
    ld	$s1,392($sp)
    # Line 1511
    move	$v0,$zero
    # Line 1507
    ld	$s2,400($sp)
    ld	$s3,408($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0d9719a8:
    # Line 1597
    sd	$zero,328($sp)
    b	.L0d9718d0
    move	$s7,$zero
.L0d9719b4:
    # Line 1600
    beqz	$a4,.L0d971a1c
    nop
    # Line 1603
    bnez	$s7,.L0d9718d8
    nop
    sd	$zero,336($sp)
    b	.L0d9714fc
    move	$s0,$zero
.L0d9719d0:
    # Line 1597
    sd	$zero,328($sp)
    b	.L0d9718d0
    move	$s7,$zero
.L0d9719dc:
    # Line 1486
    sw	$zero,88($s4)
    sw	$zero,92($s4)
    # Line 1485
    sw	$zero,72($s4)
    sw	$zero,76($s4)
    sw	$zero,80($s4)
    sw	$zero,84($s4)
    # Line 1484
    sw	$zero,60($s4)
    sw	$zero,64($s4)
    sw	$zero,68($s4)
    # Line 1483
    sw	$zero,4($s4)
    sw	$zero,8($s4)
    sw	$zero,12($s4)
    sw	$zero,56($s4)
    la	$v0,__glNop
    # Line 1487
    b	.L0d971804
    sw	$v0,96($s4)
.L0d971a1c:
    # Line 1600
    sd	$zero,336($sp)
    b	.L0d971218
    move	$s0,$zero
.end crmCreateLevel

# Function: crmSpan_A16_to_A8
# Declared: Line 1685 (Source lines: 1688-1703)
# Address: 0x0d971a30 - 0x0d971c58 (Size: 552 bytes, Frame: 0)
.ent crmSpan_A16_to_A8
crmSpan_A16_to_A8:
    # Line 1689
    lw	$a6,184($a1)
    # Line 1691
    slti	$at,$a6,9
    # Line 1688
    move	$a4,$a2
    # Line 1691
    bnez	$at,.L0d971bc0
    # Line 1688
    move	$a5,$a3
    # Line 1691
    addiu	$t1,$a6,-1
    addiu	$a7,$a6,6
    slti	$t0,$a6,1
    movz	$a7,$t1,$t0
    sra	$a7,$a7,0x3
    andi	$v0,$a7,0x1
    beqz	$v0,.L0d971ad0
    sra	$a1,$a7,0x1
    # Line 1694
    lhu	$a0,0($a2)
    sra	$a0,$a0,0x8
    sh	$a0,0($a3)
    lhu	$v1,2($a2)
    sra	$v1,$v1,0x8
    sh	$v1,2($a3)
    # Line 1695
    lhu	$v0,4($a2)
    sra	$v0,$v0,0x8
    sh	$v0,4($a3)
    lhu	$at,6($a2)
    sra	$at,$at,0x8
    sh	$at,6($a3)
    # Line 1696
    lhu	$t9,8($a2)
    sra	$t9,$t9,0x8
    sh	$t9,8($a3)
    lhu	$t8,10($a2)
    sra	$t8,$t8,0x8
    sh	$t8,10($a3)
    # Line 1697
    lhu	$t3,12($a2)
    sra	$t3,$t3,0x8
    sh	$t3,12($a3)
    lhu	$t2,14($a2)
    # Line 1698
    addiu	$a6,$a6,-8
    addiu	$a5,$a3,16
    addiu	$a4,$a2,16
    # Line 1697
    sra	$t2,$t2,0x8
    sh	$t2,14($a3)
.L0d971ad0:
    move	$a2,$a5
    beqz	$a1,.L0d971bc0
    move	$a3,$a6
    move	$a1,$a4
.L0d971ae0:
    # Line 1694
    lhu	$a5,0($a1)
    sra	$a5,$a5,0x8
    sh	$a5,0($a2)
    lhu	$a4,2($a1)
    sra	$a4,$a4,0x8
    sh	$a4,2($a2)
    # Line 1695
    lhu	$a0,4($a1)
    sra	$a0,$a0,0x8
    sh	$a0,4($a2)
    lhu	$v1,6($a1)
    sra	$v1,$v1,0x8
    sh	$v1,6($a2)
    # Line 1696
    lhu	$v0,8($a1)
    sra	$v0,$v0,0x8
    sh	$v0,8($a2)
    lhu	$at,10($a1)
    sra	$at,$at,0x8
    sh	$at,10($a2)
    # Line 1697
    lhu	$t9,12($a1)
    sra	$t9,$t9,0x8
    sh	$t9,12($a2)
    lhu	$t8,14($a1)
    sra	$t8,$t8,0x8
    sh	$t8,14($a2)
    # Line 1694
    lhu	$t3,16($a1)
    sra	$t3,$t3,0x8
    sh	$t3,16($a2)
    lhu	$t2,18($a1)
    sra	$t2,$t2,0x8
    sh	$t2,18($a2)
    # Line 1695
    lhu	$t1,20($a1)
    sra	$t1,$t1,0x8
    sh	$t1,20($a2)
    lhu	$t0,22($a1)
    sra	$t0,$t0,0x8
    sh	$t0,22($a2)
    # Line 1696
    lhu	$a7,24($a1)
    sra	$a7,$a7,0x8
    sh	$a7,24($a2)
    lhu	$a6,26($a1)
    sra	$a6,$a6,0x8
    sh	$a6,26($a2)
    # Line 1697
    lhu	$a5,28($a1)
    sra	$a5,$a5,0x8
    sh	$a5,28($a2)
    # Line 1698
    addiu	$a3,$a3,-16
    # Line 1697
    lhu	$a4,30($a1)
    # Line 1698
    slti	$a5,$a3,9
    addiu	$a2,$a2,32
    # Line 1697
    sra	$a4,$a4,0x8
    # Line 1698
    addiu	$a1,$a1,32
    beqz	$a5,.L0d971ae0
    # Line 1697
    sh	$a4,-2($a2)
    move	$a5,$a2
    move	$a4,$a1
    move	$a6,$a3
.L0d971bc0:
    # Line 1700
    blez	$a6,.L0d971c50
    li	$a7,1
    slt	$t0,$a6,$a7
    movz	$a7,$a6,$t0
    andi	$a1,$a7,0x3
    beqz	$a1,.L0d971bfc
    sra	$t2,$a7,0x2
.L0d971bdc:
    # Line 1701
    lhu	$t1,0($a4)
    # Line 1700
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,-1
    # Line 1701
    addiu	$a5,$a5,2
    sra	$t1,$t1,0x8
    addiu	$a4,$a4,2
    bnez	$a1,.L0d971bdc
    sh	$t1,-2($a5)
.L0d971bfc:
    move	$a2,$a5
    move	$a1,$a4
    beqz	$t2,.L0d971c50
    move	$a3,$a6
    nop
.L0d971c10:
    lhu	$at,0($a1)
    sra	$at,$at,0x8
    sh	$at,0($a2)
    lhu	$t9,2($a1)
    sra	$t9,$t9,0x8
    sh	$t9,2($a2)
    lhu	$t8,4($a1)
    sra	$t8,$t8,0x8
    sh	$t8,4($a2)
    lhu	$t3,6($a1)
    # Line 1700
    addiu	$a3,$a3,-4
    # Line 1701
    addiu	$a2,$a2,8
    sra	$t3,$t3,0x8
    addiu	$a1,$a1,8
    # Line 1700
    bgtz	$a3,.L0d971c10
    # Line 1701
    sh	$t3,-2($a2)
.L0d971c50:
    # Line 1703
    jr	$ra
    nop
.end crmSpan_A16_to_A8

# Function: crmSpan_XA8_to_A8
# Declared: Line 1706 (Source lines: 1709-1724)
# Address: 0x0d971c60 - 0x0d971ea8 (Size: 584 bytes, Frame: 0)
.ent crmSpan_XA8_to_A8
crmSpan_XA8_to_A8:
    # Line 1710
    lw	$a6,184($a1)
    # Line 1712
    slti	$at,$a6,9
    # Line 1709
    move	$a4,$a2
    # Line 1712
    bnez	$at,.L0d971e20
    # Line 1709
    move	$a5,$a3
    # Line 1712
    addiu	$t1,$a6,-1
    addiu	$a7,$a6,6
    slti	$t0,$a6,1
    movz	$a7,$t1,$t0
    sra	$a7,$a7,0x3
    andi	$a1,$a7,0x3
    beqz	$a1,.L0d971ce8
    nop
.L0d971c94:
    # Line 1715
    lhu	$a0,0($a4)
    sb	$a0,0($a5)
    lhu	$v1,2($a4)
    sb	$v1,1($a5)
    # Line 1716
    lhu	$v0,4($a4)
    sb	$v0,2($a5)
    lhu	$at,6($a4)
    sb	$at,3($a5)
    # Line 1717
    lhu	$t9,8($a4)
    sb	$t9,4($a5)
    lhu	$t8,10($a4)
    sb	$t8,5($a5)
    # Line 1718
    lhu	$t3,12($a4)
    addiu	$a1,$a1,-1
    sb	$t3,6($a5)
    # Line 1719
    addiu	$a6,$a6,-8
    addiu	$a5,$a5,8
    # Line 1718
    lhu	$t2,14($a4)
    # Line 1719
    addiu	$a4,$a4,16
    bnez	$a1,.L0d971c94
    # Line 1718
    sb	$t2,-1($a5)
.L0d971ce8:
    sra	$a1,$a7,0x2
    move	$a2,$a5
    beqz	$a1,.L0d971e20
    move	$a3,$a6
    move	$a1,$a4
    nop
.L0d971d00:
    # Line 1715
    lhu	$t0,0($a1)
    sb	$t0,0($a2)
    lhu	$a7,2($a1)
    sb	$a7,1($a2)
    # Line 1716
    lhu	$a6,4($a1)
    sb	$a6,2($a2)
    lhu	$a5,6($a1)
    sb	$a5,3($a2)
    # Line 1717
    lhu	$a4,8($a1)
    sb	$a4,4($a2)
    lhu	$a0,10($a1)
    sb	$a0,5($a2)
    # Line 1718
    lhu	$v1,12($a1)
    sb	$v1,6($a2)
    lhu	$v0,14($a1)
    sb	$v0,7($a2)
    # Line 1715
    lhu	$at,16($a1)
    sb	$at,8($a2)
    lhu	$t9,18($a1)
    sb	$t9,9($a2)
    # Line 1716
    lhu	$t8,20($a1)
    sb	$t8,10($a2)
    lhu	$t3,22($a1)
    sb	$t3,11($a2)
    # Line 1717
    lhu	$t2,24($a1)
    sb	$t2,12($a2)
    lhu	$t1,26($a1)
    sb	$t1,13($a2)
    # Line 1718
    lhu	$t0,28($a1)
    sb	$t0,14($a2)
    lhu	$a7,30($a1)
    sb	$a7,15($a2)
    # Line 1715
    lhu	$a6,32($a1)
    sb	$a6,16($a2)
    lhu	$a5,34($a1)
    sb	$a5,17($a2)
    # Line 1716
    lhu	$a4,36($a1)
    sb	$a4,18($a2)
    lhu	$a0,38($a1)
    sb	$a0,19($a2)
    # Line 1717
    lhu	$v1,40($a1)
    sb	$v1,20($a2)
    lhu	$v0,42($a1)
    sb	$v0,21($a2)
    # Line 1718
    lhu	$at,44($a1)
    sb	$at,22($a2)
    lhu	$t9,46($a1)
    sb	$t9,23($a2)
    # Line 1715
    lhu	$t8,48($a1)
    sb	$t8,24($a2)
    lhu	$t3,50($a1)
    sb	$t3,25($a2)
    # Line 1716
    lhu	$t2,52($a1)
    sb	$t2,26($a2)
    lhu	$t1,54($a1)
    sb	$t1,27($a2)
    # Line 1717
    lhu	$t0,56($a1)
    sb	$t0,28($a2)
    lhu	$a7,58($a1)
    sb	$a7,29($a2)
    # Line 1719
    addiu	$a3,$a3,-32
    # Line 1718
    lhu	$a6,60($a1)
    # Line 1719
    slti	$a5,$a3,9
    # Line 1718
    sb	$a6,30($a2)
    # Line 1719
    addiu	$a2,$a2,32
    # Line 1718
    lhu	$a4,62($a1)
    # Line 1719
    addiu	$a1,$a1,64
    beqz	$a5,.L0d971d00
    # Line 1718
    sb	$a4,-1($a2)
    move	$a5,$a2
    move	$a4,$a1
    move	$a6,$a3
.L0d971e20:
    # Line 1721
    blez	$a6,.L0d971ea0
    li	$a7,1
    slt	$t1,$a6,$a7
    movz	$a7,$a6,$t1
    andi	$a1,$a7,0x3
    beqz	$a1,.L0d971e58
    sra	$t3,$a7,0x2
.L0d971e3c:
    addiu	$a1,$a1,-1
    addiu	$a6,$a6,-1
    # Line 1722
    addiu	$a5,$a5,1
    lhu	$t2,0($a4)
    addiu	$a4,$a4,2
    bnez	$a1,.L0d971e3c
    sb	$t2,-1($a5)
.L0d971e58:
    move	$a2,$a5
    move	$a1,$a4
    beqz	$t3,.L0d971ea0
    move	$a3,$a6
    nop
    nop
.L0d971e70:
    lhu	$v0,0($a1)
    sb	$v0,0($a2)
    lhu	$at,2($a1)
    sb	$at,1($a2)
    lhu	$t9,4($a1)
    # Line 1721
    addiu	$a3,$a3,-4
    # Line 1722
    sb	$t9,2($a2)
    addiu	$a2,$a2,4
    lhu	$t8,6($a1)
    addiu	$a1,$a1,8
    # Line 1721
    bgtz	$a3,.L0d971e70
    # Line 1722
    sb	$t8,-1($a2)
.L0d971ea0:
    # Line 1724
    jr	$ra
    nop
.end crmSpan_XA8_to_A8

# Function: crmSpan_RGB5_A1_to_A1_RGB5
# Declared: Line 1727 (Source lines: 1730-1750)
# Address: 0x0d971eb0 - 0x0d972088 (Size: 472 bytes, Frame: 0)
.ent crmSpan_RGB5_A1_to_A1_RGB5
crmSpan_RGB5_A1_to_A1_RGB5:
    # Line 1731
    lw	$a6,184($a1)
    # Line 1733
    slti	$at,$a6,9
    # Line 1730
    move	$a4,$a2
    # Line 1733
    bnez	$at,.L0d971f84
    # Line 1730
    move	$a5,$a3
    nop
    nop
    nop
.L0d971ed0:
    # Line 1736
    lhu	$a0,0($a4)
    sra	$v1,$a0,0x1
    sll	$a0,$a0,0xf
    or	$v1,$v1,$a0
    sh	$v1,0($a5)
    # Line 1737
    lhu	$v0,2($a4)
    sra	$at,$v0,0x1
    sll	$v0,$v0,0xf
    or	$at,$at,$v0
    sh	$at,2($a5)
    # Line 1738
    lhu	$t9,4($a4)
    sra	$t8,$t9,0x1
    sll	$t9,$t9,0xf
    or	$t8,$t8,$t9
    sh	$t8,4($a5)
    # Line 1739
    lhu	$t3,6($a4)
    sra	$t2,$t3,0x1
    sll	$t3,$t3,0xf
    or	$t2,$t2,$t3
    sh	$t2,6($a5)
    # Line 1740
    lhu	$t1,8($a4)
    sra	$t0,$t1,0x1
    sll	$t1,$t1,0xf
    or	$t0,$t0,$t1
    sh	$t0,8($a5)
    # Line 1741
    lhu	$a7,10($a4)
    sra	$a3,$a7,0x1
    sll	$a7,$a7,0xf
    or	$a3,$a3,$a7
    sh	$a3,10($a5)
    # Line 1742
    lhu	$a2,12($a4)
    sra	$a1,$a2,0x1
    sll	$a2,$a2,0xf
    or	$a1,$a1,$a2
    sh	$a1,12($a5)
    # Line 1743
    lhu	$a0,14($a4)
    # Line 1744
    addiu	$a4,$a4,16
    addiu	$a6,$a6,-8
    slti	$v1,$a6,9
    # Line 1743
    sra	$v0,$a0,0x1
    # Line 1744
    addiu	$a5,$a5,16
    # Line 1743
    sll	$a0,$a0,0xf
    or	$v0,$v0,$a0
    # Line 1744
    beqz	$v1,.L0d971ed0
    # Line 1743
    sh	$v0,-2($a5)
.L0d971f84:
    # Line 1746
    blez	$a6,.L0d972080
    li	$a2,1
    slt	$a1,$a6,$a2
    movz	$a2,$a6,$a1
    andi	$a1,$a2,0x7
    beqz	$a1,.L0d971fc8
    sra	$t0,$a2,0x3
.L0d971fa0:
    # Line 1747
    lhu	$a7,0($a4)
    # Line 1746
    addiu	$a6,$a6,-1
    # Line 1748
    addiu	$a5,$a5,2
    addiu	$a1,$a1,-1
    sra	$a3,$a7,0x1
    # Line 1747
    addiu	$a4,$a4,2
    # Line 1748
    sll	$a7,$a7,0xf
    or	$a3,$a3,$a7
    bnez	$a1,.L0d971fa0
    sh	$a3,-2($a5)
.L0d971fc8:
    beqz	$t0,.L0d972080
    nop
.L0d971fd0:
    # Line 1747
    lhu	$t2,0($a4)
    # Line 1748
    sra	$t1,$t2,0x1
    sll	$t2,$t2,0xf
    or	$t1,$t1,$t2
    sh	$t1,0($a5)
    # Line 1747
    lhu	$t0,2($a4)
    # Line 1748
    sra	$a7,$t0,0x1
    sll	$t0,$t0,0xf
    or	$a7,$a7,$t0
    sh	$a7,2($a5)
    # Line 1747
    lhu	$a3,4($a4)
    # Line 1748
    sra	$a2,$a3,0x1
    sll	$a3,$a3,0xf
    or	$a2,$a2,$a3
    sh	$a2,4($a5)
    # Line 1747
    lhu	$a1,6($a4)
    # Line 1748
    sra	$a0,$a1,0x1
    sll	$a1,$a1,0xf
    or	$a0,$a0,$a1
    sh	$a0,6($a5)
    # Line 1747
    lhu	$v1,8($a4)
    # Line 1748
    sra	$v0,$v1,0x1
    sll	$v1,$v1,0xf
    or	$v0,$v0,$v1
    sh	$v0,8($a5)
    # Line 1747
    lhu	$at,10($a4)
    # Line 1748
    sra	$t9,$at,0x1
    sll	$at,$at,0xf
    or	$t9,$t9,$at
    sh	$t9,10($a5)
    # Line 1747
    lhu	$t8,12($a4)
    # Line 1748
    sra	$t3,$t8,0x1
    sll	$t8,$t8,0xf
    or	$t3,$t3,$t8
    sh	$t3,12($a5)
    # Line 1747
    lhu	$t2,14($a4)
    # Line 1748
    addiu	$a5,$a5,16
    # Line 1746
    addiu	$a6,$a6,-8
    # Line 1748
    sra	$t1,$t2,0x1
    # Line 1747
    addiu	$a4,$a4,16
    # Line 1748
    sll	$t2,$t2,0xf
    or	$t1,$t1,$t2
    # Line 1746
    bgtz	$a6,.L0d971fd0
    # Line 1748
    sh	$t1,-2($a5)
.L0d972080:
    # Line 1750
    jr	$ra
    nop
.end crmSpan_RGB5_A1_to_A1_RGB5

# Function: crmSpan_A1_RGB5_to_RGB5_A1
# Declared: Line 1753 (Source lines: 1756-1776)
# Address: 0x0d972090 - 0x0d972268 (Size: 472 bytes, Frame: 0)
.ent crmSpan_A1_RGB5_to_RGB5_A1
crmSpan_A1_RGB5_to_RGB5_A1:
    # Line 1757
    lw	$a6,184($a1)
    # Line 1759
    slti	$at,$a6,9
    # Line 1756
    move	$a4,$a2
    # Line 1759
    bnez	$at,.L0d972164
    # Line 1756
    move	$a5,$a3
    nop
    nop
    nop
.L0d9720b0:
    # Line 1762
    lhu	$a0,0($a4)
    sra	$v1,$a0,0xf
    sll	$a0,$a0,0x1
    or	$v1,$v1,$a0
    sh	$v1,0($a5)
    # Line 1763
    lhu	$v0,2($a4)
    sra	$at,$v0,0xf
    sll	$v0,$v0,0x1
    or	$at,$at,$v0
    sh	$at,2($a5)
    # Line 1764
    lhu	$t9,4($a4)
    sra	$t8,$t9,0xf
    sll	$t9,$t9,0x1
    or	$t8,$t8,$t9
    sh	$t8,4($a5)
    # Line 1765
    lhu	$t3,6($a4)
    sra	$t2,$t3,0xf
    sll	$t3,$t3,0x1
    or	$t2,$t2,$t3
    sh	$t2,6($a5)
    # Line 1766
    lhu	$t1,8($a4)
    sra	$t0,$t1,0xf
    sll	$t1,$t1,0x1
    or	$t0,$t0,$t1
    sh	$t0,8($a5)
    # Line 1767
    lhu	$a7,10($a4)
    sra	$a3,$a7,0xf
    sll	$a7,$a7,0x1
    or	$a3,$a3,$a7
    sh	$a3,10($a5)
    # Line 1768
    lhu	$a2,12($a4)
    sra	$a1,$a2,0xf
    sll	$a2,$a2,0x1
    or	$a1,$a1,$a2
    sh	$a1,12($a5)
    # Line 1769
    lhu	$a0,14($a4)
    # Line 1770
    addiu	$a4,$a4,16
    addiu	$a6,$a6,-8
    slti	$v1,$a6,9
    # Line 1769
    sra	$v0,$a0,0xf
    # Line 1770
    addiu	$a5,$a5,16
    # Line 1769
    sll	$a0,$a0,0x1
    or	$v0,$v0,$a0
    # Line 1770
    beqz	$v1,.L0d9720b0
    # Line 1769
    sh	$v0,-2($a5)
.L0d972164:
    # Line 1772
    blez	$a6,.L0d972260
    li	$a2,1
    slt	$a1,$a6,$a2
    movz	$a2,$a6,$a1
    andi	$a1,$a2,0x7
    beqz	$a1,.L0d9721a8
    sra	$t0,$a2,0x3
.L0d972180:
    # Line 1773
    lhu	$a7,0($a4)
    # Line 1772
    addiu	$a6,$a6,-1
    # Line 1774
    addiu	$a5,$a5,2
    addiu	$a1,$a1,-1
    sra	$a3,$a7,0xf
    # Line 1773
    addiu	$a4,$a4,2
    # Line 1774
    sll	$a7,$a7,0x1
    or	$a3,$a3,$a7
    bnez	$a1,.L0d972180
    sh	$a3,-2($a5)
.L0d9721a8:
    beqz	$t0,.L0d972260
    nop
.L0d9721b0:
    # Line 1773
    lhu	$t2,0($a4)
    # Line 1774
    sra	$t1,$t2,0xf
    sll	$t2,$t2,0x1
    or	$t1,$t1,$t2
    sh	$t1,0($a5)
    # Line 1773
    lhu	$t0,2($a4)
    # Line 1774
    sra	$a7,$t0,0xf
    sll	$t0,$t0,0x1
    or	$a7,$a7,$t0
    sh	$a7,2($a5)
    # Line 1773
    lhu	$a3,4($a4)
    # Line 1774
    sra	$a2,$a3,0xf
    sll	$a3,$a3,0x1
    or	$a2,$a2,$a3
    sh	$a2,4($a5)
    # Line 1773
    lhu	$a1,6($a4)
    # Line 1774
    sra	$a0,$a1,0xf
    sll	$a1,$a1,0x1
    or	$a0,$a0,$a1
    sh	$a0,6($a5)
    # Line 1773
    lhu	$v1,8($a4)
    # Line 1774
    sra	$v0,$v1,0xf
    sll	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sh	$v0,8($a5)
    # Line 1773
    lhu	$at,10($a4)
    # Line 1774
    sra	$t9,$at,0xf
    sll	$at,$at,0x1
    or	$t9,$t9,$at
    sh	$t9,10($a5)
    # Line 1773
    lhu	$t8,12($a4)
    # Line 1774
    sra	$t3,$t8,0xf
    sll	$t8,$t8,0x1
    or	$t3,$t3,$t8
    sh	$t3,12($a5)
    # Line 1773
    lhu	$t2,14($a4)
    # Line 1774
    addiu	$a5,$a5,16
    # Line 1772
    addiu	$a6,$a6,-8
    # Line 1774
    sra	$t1,$t2,0xf
    # Line 1773
    addiu	$a4,$a4,16
    # Line 1774
    sll	$t2,$t2,0x1
    or	$t1,$t1,$t2
    # Line 1772
    bgtz	$a6,.L0d9721b0
    # Line 1774
    sh	$t1,-2($a5)
.L0d972260:
    # Line 1776
    jr	$ra
    nop
.end crmSpan_A1_RGB5_to_RGB5_A1

# Function: crmSpan_RGB5_to_RGB5_A1
# Declared: Line 1779 (Source lines: 1782-1802)
# Address: 0x0d972270 - 0x0d972508 (Size: 664 bytes, Frame: 0)
.ent crmSpan_RGB5_to_RGB5_A1
crmSpan_RGB5_to_RGB5_A1:
    # Line 1783
    lw	$a6,184($a1)
    # Line 1785
    slti	$at,$a6,9
    # Line 1782
    move	$a4,$a2
    # Line 1785
    bnez	$at,.L0d972460
    # Line 1782
    move	$a5,$a3
    # Line 1785
    addiu	$t1,$a6,-1
    addiu	$a7,$a6,6
    slti	$t0,$a6,1
    movz	$a7,$t1,$t0
    sra	$a7,$a7,0x3
    andi	$v0,$a7,0x1
    beqz	$v0,.L0d972330
    sra	$a1,$a7,0x1
    # Line 1788
    lhu	$a0,0($a2)
    sll	$a0,$a0,0x1
    ori	$a0,$a0,0x1
    sh	$a0,0($a3)
    # Line 1789
    lhu	$v1,2($a2)
    sll	$v1,$v1,0x1
    ori	$v1,$v1,0x1
    sh	$v1,2($a3)
    # Line 1790
    lhu	$v0,4($a2)
    sll	$v0,$v0,0x1
    ori	$v0,$v0,0x1
    sh	$v0,4($a3)
    # Line 1791
    lhu	$at,6($a2)
    sll	$at,$at,0x1
    ori	$at,$at,0x1
    sh	$at,6($a3)
    # Line 1792
    lhu	$t9,8($a2)
    sll	$t9,$t9,0x1
    ori	$t9,$t9,0x1
    sh	$t9,8($a3)
    # Line 1793
    lhu	$t8,10($a2)
    sll	$t8,$t8,0x1
    ori	$t8,$t8,0x1
    sh	$t8,10($a3)
    # Line 1794
    lhu	$t3,12($a2)
    sll	$t3,$t3,0x1
    ori	$t3,$t3,0x1
    sh	$t3,12($a3)
    # Line 1795
    lhu	$t2,14($a2)
    # Line 1796
    addiu	$a6,$a6,-8
    addiu	$a5,$a3,16
    # Line 1795
    sll	$t2,$t2,0x1
    # Line 1796
    addiu	$a4,$a2,16
    # Line 1795
    ori	$t2,$t2,0x1
    sh	$t2,14($a3)
.L0d972330:
    move	$a2,$a5
    beqz	$a1,.L0d972460
    move	$a3,$a6
    move	$a1,$a4
.L0d972340:
    # Line 1788
    lhu	$a5,0($a1)
    sll	$a5,$a5,0x1
    ori	$a5,$a5,0x1
    sh	$a5,0($a2)
    # Line 1789
    lhu	$a4,2($a1)
    sll	$a4,$a4,0x1
    ori	$a4,$a4,0x1
    sh	$a4,2($a2)
    # Line 1790
    lhu	$a0,4($a1)
    sll	$a0,$a0,0x1
    ori	$a0,$a0,0x1
    sh	$a0,4($a2)
    # Line 1791
    lhu	$v1,6($a1)
    sll	$v1,$v1,0x1
    ori	$v1,$v1,0x1
    sh	$v1,6($a2)
    # Line 1792
    lhu	$v0,8($a1)
    sll	$v0,$v0,0x1
    ori	$v0,$v0,0x1
    sh	$v0,8($a2)
    # Line 1793
    lhu	$at,10($a1)
    sll	$at,$at,0x1
    ori	$at,$at,0x1
    sh	$at,10($a2)
    # Line 1794
    lhu	$t9,12($a1)
    sll	$t9,$t9,0x1
    ori	$t9,$t9,0x1
    sh	$t9,12($a2)
    # Line 1795
    lhu	$t8,14($a1)
    sll	$t8,$t8,0x1
    ori	$t8,$t8,0x1
    sh	$t8,14($a2)
    # Line 1788
    lhu	$t3,16($a1)
    sll	$t3,$t3,0x1
    ori	$t3,$t3,0x1
    sh	$t3,16($a2)
    # Line 1789
    lhu	$t2,18($a1)
    sll	$t2,$t2,0x1
    ori	$t2,$t2,0x1
    sh	$t2,18($a2)
    # Line 1790
    lhu	$t1,20($a1)
    sll	$t1,$t1,0x1
    ori	$t1,$t1,0x1
    sh	$t1,20($a2)
    # Line 1791
    lhu	$t0,22($a1)
    sll	$t0,$t0,0x1
    ori	$t0,$t0,0x1
    sh	$t0,22($a2)
    # Line 1792
    lhu	$a7,24($a1)
    sll	$a7,$a7,0x1
    ori	$a7,$a7,0x1
    sh	$a7,24($a2)
    # Line 1793
    lhu	$a6,26($a1)
    sll	$a6,$a6,0x1
    ori	$a6,$a6,0x1
    sh	$a6,26($a2)
    # Line 1794
    lhu	$a5,28($a1)
    sll	$a5,$a5,0x1
    ori	$a5,$a5,0x1
    sh	$a5,28($a2)
    # Line 1796
    addiu	$a3,$a3,-16
    # Line 1795
    lhu	$a4,30($a1)
    # Line 1796
    addiu	$a1,$a1,32
    slti	$a5,$a3,9
    addiu	$a2,$a2,32
    # Line 1795
    sll	$a4,$a4,0x1
    ori	$a4,$a4,0x1
    # Line 1796
    beqz	$a5,.L0d972340
    # Line 1795
    sh	$a4,-2($a2)
    move	$a5,$a2
    move	$a4,$a1
    move	$a6,$a3
.L0d972460:
    # Line 1798
    blez	$a6,.L0d972500
    li	$a7,1
    slt	$t0,$a6,$a7
    movz	$a7,$a6,$t0
    andi	$a1,$a7,0x3
    beqz	$a1,.L0d9724a0
    sra	$t2,$a7,0x2
.L0d97247c:
    addiu	$a6,$a6,-1
    # Line 1800
    lhu	$t1,0($a4)
    addiu	$a5,$a5,2
    addiu	$a1,$a1,-1
    # Line 1799
    addiu	$a4,$a4,2
    # Line 1800
    sll	$t1,$t1,0x1
    ori	$t1,$t1,0x1
    bnez	$a1,.L0d97247c
    sh	$t1,-2($a5)
.L0d9724a0:
    move	$a2,$a5
    move	$a1,$a4
    beqz	$t2,.L0d972500
    move	$a3,$a6
.L0d9724b0:
    lhu	$at,0($a1)
    sll	$at,$at,0x1
    ori	$at,$at,0x1
    sh	$at,0($a2)
    lhu	$t9,2($a1)
    sll	$t9,$t9,0x1
    ori	$t9,$t9,0x1
    sh	$t9,2($a2)
    lhu	$t8,4($a1)
    sll	$t8,$t8,0x1
    ori	$t8,$t8,0x1
    sh	$t8,4($a2)
    lhu	$t3,6($a1)
    addiu	$a2,$a2,8
    # Line 1798
    addiu	$a3,$a3,-4
    # Line 1799
    addiu	$a1,$a1,8
    # Line 1800
    sll	$t3,$t3,0x1
    ori	$t3,$t3,0x1
    # Line 1798
    bgtz	$a3,.L0d9724b0
    # Line 1800
    sh	$t3,-2($a2)
.L0d972500:
    # Line 1802
    jr	$ra
    nop
.end crmSpan_RGB5_to_RGB5_A1

# Function: crmSpan_RGB8_to_RGBA8
# Declared: Line 1805 (Source lines: 1808-1828)
# Address: 0x0d972510 - 0x0d972664 (Size: 340 bytes, Frame: 0)
.ent crmSpan_RGB8_to_RGBA8
crmSpan_RGB8_to_RGBA8:
    # Line 1809
    lw	$a6,184($a1)
    # Line 1811
    slti	$at,$a6,9
    # Line 1808
    move	$a4,$a2
    # Line 1811
    bnez	$at,.L0d972624
    # Line 1808
    move	$a5,$a3
    # Line 1811
    li	$a2,255
    nop
    nop
.L0d972530:
    # Line 1814
    lbu	$t9,0($a4)
    sb	$t9,0($a5)
    lbu	$t8,1($a4)
    sb	$t8,1($a5)
    lbu	$t3,2($a4)
    sb	$t3,2($a5)
    sb	$a2,3($a5)
    # Line 1815
    lbu	$t2,3($a4)
    sb	$t2,4($a5)
    lbu	$t1,4($a4)
    sb	$t1,5($a5)
    lbu	$t0,5($a4)
    sb	$t0,6($a5)
    sb	$a2,7($a5)
    # Line 1816
    lbu	$a7,6($a4)
    sb	$a7,8($a5)
    lbu	$a3,7($a4)
    sb	$a3,9($a5)
    lbu	$a1,8($a4)
    sb	$a1,10($a5)
    sb	$a2,11($a5)
    # Line 1817
    lbu	$a0,9($a4)
    sb	$a0,12($a5)
    lbu	$v1,10($a4)
    sb	$v1,13($a5)
    lbu	$v0,11($a4)
    sb	$v0,14($a5)
    sb	$a2,15($a5)
    # Line 1818
    lbu	$at,12($a4)
    sb	$at,16($a5)
    lbu	$t9,13($a4)
    sb	$t9,17($a5)
    lbu	$t8,14($a4)
    sb	$t8,18($a5)
    sb	$a2,19($a5)
    # Line 1819
    lbu	$t3,15($a4)
    sb	$t3,20($a5)
    lbu	$t2,16($a4)
    sb	$t2,21($a5)
    lbu	$t1,17($a4)
    sb	$t1,22($a5)
    sb	$a2,23($a5)
    # Line 1820
    lbu	$t0,18($a4)
    sb	$t0,24($a5)
    lbu	$a7,19($a4)
    sb	$a7,25($a5)
    lbu	$a3,20($a4)
    sb	$a3,26($a5)
    sb	$a2,27($a5)
    # Line 1821
    lbu	$a1,21($a4)
    sb	$a1,28($a5)
    lbu	$a0,22($a4)
    # Line 1822
    addiu	$a6,$a6,-8
    # Line 1821
    sb	$a0,29($a5)
    # Line 1822
    addiu	$a5,$a5,32
    slti	$v1,$a6,9
    # Line 1821
    lbu	$v0,23($a4)
    sb	$a2,-1($a5)
    # Line 1822
    addiu	$a4,$a4,24
    beqz	$v1,.L0d972530
    # Line 1821
    sb	$v0,-2($a5)
.L0d972624:
    # Line 1824
    blez	$a6,.L0d97265c
    move	$a1,$a6
    li	$a2,255
.L0d972630:
    # Line 1825
    lbu	$v1,0($a4)
    sb	$v1,0($a5)
    lbu	$v0,1($a4)
    sb	$v0,1($a5)
    # Line 1826
    addiu	$a5,$a5,4
    # Line 1824
    addiu	$a1,$a1,-1
    # Line 1825
    lbu	$at,2($a4)
    sb	$a2,-1($a5)
    # Line 1826
    addiu	$a4,$a4,3
    # Line 1824
    bgtz	$a1,.L0d972630
    # Line 1825
    sb	$at,-2($a5)
.L0d97265c:
    # Line 1828
    jr	$ra
    nop
.end crmSpan_RGB8_to_RGBA8

# Function: crmSpan_RGBX8_to_RGBA8
# Declared: Line 1831 (Source lines: 1834-1849)
# Address: 0x0d972670 - 0x0d972898 (Size: 552 bytes, Frame: 0)
.ent crmSpan_RGBX8_to_RGBA8
crmSpan_RGBX8_to_RGBA8:
    # Line 1835
    lw	$a6,184($a1)
    # Line 1837
    slti	$at,$a6,9
    # Line 1834
    move	$a4,$a2
    # Line 1837
    bnez	$at,.L0d972800
    # Line 1834
    move	$a5,$a3
    # Line 1837
    addiu	$t1,$a6,-1
    addiu	$a7,$a6,6
    slti	$t0,$a6,1
    movz	$a7,$t1,$t0
    sra	$a7,$a7,0x3
    andi	$v0,$a7,0x1
    beqz	$v0,.L0d972710
    sra	$a1,$a7,0x1
    # Line 1840
    lw	$a0,0($a2)
    ori	$a0,$a0,0xff
    sw	$a0,0($a3)
    lw	$v1,4($a2)
    ori	$v1,$v1,0xff
    sw	$v1,4($a3)
    # Line 1841
    lw	$v0,8($a2)
    ori	$v0,$v0,0xff
    sw	$v0,8($a3)
    lw	$at,12($a2)
    ori	$at,$at,0xff
    sw	$at,12($a3)
    # Line 1842
    lw	$t9,16($a2)
    ori	$t9,$t9,0xff
    sw	$t9,16($a3)
    lw	$t8,20($a2)
    ori	$t8,$t8,0xff
    sw	$t8,20($a3)
    # Line 1843
    lw	$t3,24($a2)
    ori	$t3,$t3,0xff
    sw	$t3,24($a3)
    lw	$t2,28($a2)
    # Line 1844
    addiu	$a6,$a6,-8
    addiu	$a5,$a3,32
    addiu	$a4,$a2,32
    # Line 1843
    ori	$t2,$t2,0xff
    sw	$t2,28($a3)
.L0d972710:
    move	$a2,$a4
    beqz	$a1,.L0d972800
    move	$a3,$a6
    move	$a1,$a5
.L0d972720:
    # Line 1840
    lw	$a5,0($a2)
    ori	$a5,$a5,0xff
    sw	$a5,0($a1)
    lw	$a4,4($a2)
    ori	$a4,$a4,0xff
    sw	$a4,4($a1)
    # Line 1841
    lw	$a0,8($a2)
    ori	$a0,$a0,0xff
    sw	$a0,8($a1)
    lw	$v1,12($a2)
    ori	$v1,$v1,0xff
    sw	$v1,12($a1)
    # Line 1842
    lw	$v0,16($a2)
    ori	$v0,$v0,0xff
    sw	$v0,16($a1)
    lw	$at,20($a2)
    ori	$at,$at,0xff
    sw	$at,20($a1)
    # Line 1843
    lw	$t9,24($a2)
    ori	$t9,$t9,0xff
    sw	$t9,24($a1)
    lw	$t8,28($a2)
    ori	$t8,$t8,0xff
    sw	$t8,28($a1)
    # Line 1840
    lw	$t3,32($a2)
    ori	$t3,$t3,0xff
    sw	$t3,32($a1)
    lw	$t2,36($a2)
    ori	$t2,$t2,0xff
    sw	$t2,36($a1)
    # Line 1841
    lw	$t1,40($a2)
    ori	$t1,$t1,0xff
    sw	$t1,40($a1)
    lw	$t0,44($a2)
    ori	$t0,$t0,0xff
    sw	$t0,44($a1)
    # Line 1842
    lw	$a7,48($a2)
    ori	$a7,$a7,0xff
    sw	$a7,48($a1)
    lw	$a6,52($a2)
    ori	$a6,$a6,0xff
    sw	$a6,52($a1)
    # Line 1843
    lw	$a5,56($a2)
    # Line 1844
    addiu	$a3,$a3,-16
    # Line 1843
    ori	$a5,$a5,0xff
    sw	$a5,56($a1)
    # Line 1844
    slti	$a5,$a3,9
    # Line 1843
    lw	$a4,60($a2)
    # Line 1844
    addiu	$a1,$a1,64
    addiu	$a2,$a2,64
    # Line 1843
    ori	$a4,$a4,0xff
    # Line 1844
    beqz	$a5,.L0d972720
    # Line 1843
    sw	$a4,-4($a1)
    move	$a4,$a2
    move	$a5,$a1
    move	$a6,$a3
.L0d972800:
    # Line 1846
    blez	$a6,.L0d972890
    li	$a7,1
    slt	$t0,$a6,$a7
    movz	$a7,$a6,$t0
    andi	$a1,$a7,0x3
    beqz	$a1,.L0d97283c
    sra	$t2,$a7,0x2
.L0d97281c:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,-1
    # Line 1847
    lw	$t1,0($a4)
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    ori	$t1,$t1,0xff
    bnez	$a1,.L0d97281c
    sw	$t1,-4($a5)
.L0d97283c:
    move	$a1,$a5
    move	$a2,$a4
    beqz	$t2,.L0d972890
    move	$a3,$a6
    nop
.L0d972850:
    lw	$at,0($a2)
    ori	$at,$at,0xff
    sw	$at,0($a1)
    lw	$t9,4($a2)
    ori	$t9,$t9,0xff
    sw	$t9,4($a1)
    lw	$t8,8($a2)
    ori	$t8,$t8,0xff
    sw	$t8,8($a1)
    # Line 1846
    addiu	$a3,$a3,-4
    # Line 1847
    lw	$t3,12($a2)
    addiu	$a1,$a1,16
    addiu	$a2,$a2,16
    ori	$t3,$t3,0xff
    # Line 1846
    bgtz	$a3,.L0d972850
    # Line 1847
    sw	$t3,-4($a1)
.L0d972890:
    # Line 1849
    jr	$ra
    nop
.end crmSpan_RGBX8_to_RGBA8

# Function: crmSpan_RGBA8_to_A1_RGB5
# Declared: Line 1852 (Source lines: 1855-1882)
# Address: 0x0d9728a0 - 0x0d972bb8 (Size: 792 bytes, Frame: 0)
.ent crmSpan_RGBA8_to_A1_RGB5
crmSpan_RGBA8_to_A1_RGB5:
    # Line 1861
    lw	$a7,0($a1)
    li	$at,6407
    # Line 1855
    move	$a5,$a2
    move	$a6,$a3
    # Line 1861
    li	$v0,6408
    beq	$a7,$at,.L0d972a58
    # Line 1857
    lw	$a4,184($a1)
    # Line 1861
    bne	$a7,$v0,.L0d972a50
    nop
    # Line 1871
    blez	$a4,.L0d972a50
    move	$a2,$zero
    andi	$a1,$a4,0x3
    beqz	$a1,.L0d972930
    sra	$a0,$a4,0x2
.L0d9728d8:
    # Line 1876
    addiu	$a5,$a5,4
    # Line 1872
    lbu	$v1,-2($a5)
    # Line 1871
    addiu	$a2,$a2,1
    # Line 1872
    lbu	$a7,-1($a5)
    addiu	$a6,$a6,2
    addiu	$a1,$a1,-1
    lbu	$a0,-4($a5)
    srl	$v1,$v1,0x3
    andi	$a7,$a7,0x80
    lbu	$a3,-3($a5)
    sll	$a7,$a7,0x8
    andi	$a0,$a0,0xf8
    sll	$a0,$a0,0x7
    andi	$a3,$a3,0xf8
    andi	$v1,$v1,0x1f
    sll	$a3,$a3,0x2
    or	$v1,$v1,$a7
    or	$a0,$a0,$a3
    or	$v1,$v1,$a0
    bnez	$a1,.L0d9728d8
    sh	$v1,-2($a6)
    sra	$a0,$a4,0x2
.L0d972930:
    move	$a1,$a6
    beqz	$a0,.L0d972a50
    move	$a3,$a5
    nop
.L0d972940:
    lbu	$t0,2($a3)
    lbu	$t3,3($a3)
    lbu	$t1,0($a3)
    srl	$t0,$t0,0x3
    andi	$t3,$t3,0x80
    lbu	$t2,1($a3)
    sll	$t3,$t3,0x8
    andi	$t1,$t1,0xf8
    sll	$t1,$t1,0x7
    andi	$t2,$t2,0xf8
    andi	$t0,$t0,0x1f
    sll	$t2,$t2,0x2
    or	$t0,$t0,$t3
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sh	$t0,0($a1)
    lbu	$a7,6($a3)
    lbu	$t2,7($a3)
    lbu	$t0,4($a3)
    srl	$a7,$a7,0x3
    andi	$t2,$t2,0x80
    lbu	$t1,5($a3)
    sll	$t2,$t2,0x8
    andi	$t0,$t0,0xf8
    sll	$t0,$t0,0x7
    andi	$t1,$t1,0xf8
    andi	$a7,$a7,0x1f
    sll	$t1,$t1,0x2
    or	$a7,$a7,$t2
    or	$t0,$t0,$t1
    or	$a7,$a7,$t0
    sh	$a7,2($a1)
    lbu	$a6,10($a3)
    lbu	$t1,11($a3)
    lbu	$a7,8($a3)
    srl	$a6,$a6,0x3
    andi	$t1,$t1,0x80
    lbu	$t0,9($a3)
    sll	$t1,$t1,0x8
    andi	$a7,$a7,0xf8
    sll	$a7,$a7,0x7
    andi	$t0,$t0,0xf8
    andi	$a6,$a6,0x1f
    sll	$t0,$t0,0x2
    or	$a6,$a6,$t1
    or	$a7,$a7,$t0
    # Line 1876
    addiu	$a3,$a3,16
    # Line 1872
    or	$a6,$a6,$a7
    sh	$a6,4($a1)
    lbu	$a5,-2($a3)
    lbu	$t0,-1($a3)
    addiu	$a1,$a1,8
    # Line 1871
    addiu	$a2,$a2,4
    # Line 1872
    lbu	$a6,-4($a3)
    srl	$a5,$a5,0x3
    andi	$t0,$t0,0x80
    lbu	$a7,-3($a3)
    sll	$t0,$t0,0x8
    andi	$a6,$a6,0xf8
    sll	$a6,$a6,0x7
    andi	$a7,$a7,0xf8
    andi	$a5,$a5,0x1f
    sll	$a7,$a7,0x2
    or	$a5,$a5,$t0
    or	$a6,$a6,$a7
    or	$a5,$a5,$a6
    # Line 1871
    bne	$a4,$a2,.L0d972940
    # Line 1872
    sh	$a5,-2($a1)
.L0d972a50:
    # Line 1882
    jr	$ra
    nop
.L0d972a58:
    # Line 1863
    blez	$a4,.L0d972a50
    move	$a2,$zero
    andi	$a1,$a4,0x3
    beqz	$a1,.L0d972ab8
    sra	$t2,$a4,0x2
.L0d972a6c:
    # Line 1867
    addiu	$a5,$a5,3
    # Line 1864
    lbu	$t1,-1($a5)
    lbu	$t2,-3($a5)
    # Line 1863
    addiu	$a2,$a2,1
    # Line 1864
    lbu	$t3,-2($a5)
    srl	$t1,$t1,0x3
    andi	$t2,$t2,0xf8
    sll	$t2,$t2,0x7
    andi	$t3,$t3,0xf8
    addiu	$a1,$a1,-1
    sll	$t3,$t3,0x2
    andi	$t1,$t1,0x1f
    or	$t2,$t2,$t3
    addiu	$a6,$a6,2
    or	$t1,$t1,$t2
    ori	$t1,$t1,0x8000
    bnez	$a1,.L0d972a6c
    sh	$t1,-2($a6)
    sra	$t2,$a4,0x2
.L0d972ab8:
    move	$a1,$a6
    beqz	$t2,.L0d972a50
    move	$a3,$a5
    nop
    nop
    nop
.L0d972ad0:
    lbu	$at,2($a3)
    lbu	$v0,0($a3)
    lbu	$v1,1($a3)
    srl	$at,$at,0x3
    andi	$v0,$v0,0xf8
    sll	$v0,$v0,0x7
    andi	$v1,$v1,0xf8
    sll	$v1,$v1,0x2
    andi	$at,$at,0x1f
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    ori	$at,$at,0x8000
    sh	$at,0($a1)
    lbu	$t9,5($a3)
    lbu	$at,3($a3)
    lbu	$v0,4($a3)
    srl	$t9,$t9,0x3
    andi	$at,$at,0xf8
    sll	$at,$at,0x7
    andi	$v0,$v0,0xf8
    sll	$v0,$v0,0x2
    andi	$t9,$t9,0x1f
    or	$at,$at,$v0
    or	$t9,$t9,$at
    ori	$t9,$t9,0x8000
    sh	$t9,2($a1)
    lbu	$t8,8($a3)
    lbu	$t9,6($a3)
    lbu	$at,7($a3)
    srl	$t8,$t8,0x3
    andi	$t9,$t9,0xf8
    sll	$t9,$t9,0x7
    andi	$at,$at,0xf8
    sll	$at,$at,0x2
    andi	$t8,$t8,0x1f
    or	$t9,$t9,$at
    or	$t8,$t8,$t9
    # Line 1867
    addiu	$a3,$a3,12
    # Line 1864
    ori	$t8,$t8,0x8000
    sh	$t8,4($a1)
    lbu	$t3,-1($a3)
    lbu	$t8,-3($a3)
    lbu	$t9,-2($a3)
    srl	$t3,$t3,0x3
    andi	$t8,$t8,0xf8
    sll	$t8,$t8,0x7
    andi	$t9,$t9,0xf8
    # Line 1863
    addiu	$a2,$a2,4
    # Line 1864
    sll	$t9,$t9,0x2
    andi	$t3,$t3,0x1f
    or	$t8,$t8,$t9
    addiu	$a1,$a1,8
    or	$t3,$t3,$t8
    ori	$t3,$t3,0x8000
    # Line 1863
    bne	$a4,$a2,.L0d972ad0
    # Line 1864
    sh	$t3,-2($a1)
    b	.L0d972a50
    nop
.end crmSpan_RGBA8_to_A1_RGB5

# Function: crmSpan_RGBA8_to_RGBA4
# Declared: Line 1885 (Source lines: 1888-1915)
# Address: 0x0d972bc0 - 0x0d972ea8 (Size: 744 bytes, Frame: 0)
.ent crmSpan_RGBA8_to_RGBA4
crmSpan_RGBA8_to_RGBA4:
    # Line 1894
    lw	$a7,0($a1)
    li	$at,6407
    # Line 1888
    move	$a5,$a2
    move	$a6,$a3
    # Line 1894
    li	$v0,6408
    beq	$a7,$at,.L0d972d68
    # Line 1890
    lw	$a4,184($a1)
    # Line 1894
    bne	$a7,$v0,.L0d972d60
    nop
    # Line 1904
    blez	$a4,.L0d972d60
    move	$a2,$zero
    andi	$a1,$a4,0x3
    beqz	$a1,.L0d972c4c
    sra	$a0,$a4,0x2
.L0d972bf8:
    # Line 1909
    addiu	$a5,$a5,4
    # Line 1905
    lbu	$v1,-2($a5)
    lbu	$a7,-1($a5)
    # Line 1904
    addiu	$a2,$a2,1
    # Line 1905
    addiu	$a6,$a6,2
    lbu	$a0,-4($a5)
    addiu	$a1,$a1,-1
    andi	$v1,$v1,0xf0
    lbu	$a3,-3($a5)
    srl	$a7,$a7,0x4
    andi	$a0,$a0,0xf0
    sll	$a0,$a0,0x8
    andi	$a3,$a3,0xf0
    andi	$a7,$a7,0xf
    sll	$a3,$a3,0x4
    or	$v1,$v1,$a7
    or	$a0,$a0,$a3
    or	$v1,$v1,$a0
    bnez	$a1,.L0d972bf8
    sh	$v1,-2($a6)
    sra	$a0,$a4,0x2
.L0d972c4c:
    move	$a1,$a6
    beqz	$a0,.L0d972d60
    move	$a3,$a5
    nop
    nop
.L0d972c60:
    lbu	$t0,2($a3)
    lbu	$t3,3($a3)
    lbu	$t1,0($a3)
    andi	$t0,$t0,0xf0
    lbu	$t2,1($a3)
    srl	$t3,$t3,0x4
    andi	$t1,$t1,0xf0
    sll	$t1,$t1,0x8
    andi	$t2,$t2,0xf0
    andi	$t3,$t3,0xf
    sll	$t2,$t2,0x4
    or	$t0,$t0,$t3
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sh	$t0,0($a1)
    lbu	$a7,6($a3)
    lbu	$t2,7($a3)
    lbu	$t0,4($a3)
    andi	$a7,$a7,0xf0
    lbu	$t1,5($a3)
    srl	$t2,$t2,0x4
    andi	$t0,$t0,0xf0
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xf0
    andi	$t2,$t2,0xf
    sll	$t1,$t1,0x4
    or	$a7,$a7,$t2
    or	$t0,$t0,$t1
    or	$a7,$a7,$t0
    sh	$a7,2($a1)
    lbu	$a6,10($a3)
    lbu	$t1,11($a3)
    lbu	$a7,8($a3)
    andi	$a6,$a6,0xf0
    lbu	$t0,9($a3)
    srl	$t1,$t1,0x4
    andi	$a7,$a7,0xf0
    sll	$a7,$a7,0x8
    andi	$t0,$t0,0xf0
    andi	$t1,$t1,0xf
    sll	$t0,$t0,0x4
    or	$a6,$a6,$t1
    or	$a7,$a7,$t0
    # Line 1909
    addiu	$a3,$a3,16
    # Line 1905
    or	$a6,$a6,$a7
    sh	$a6,4($a1)
    lbu	$a5,-2($a3)
    lbu	$t0,-1($a3)
    addiu	$a1,$a1,8
    lbu	$a6,-4($a3)
    # Line 1904
    addiu	$a2,$a2,4
    # Line 1905
    andi	$a5,$a5,0xf0
    lbu	$a7,-3($a3)
    srl	$t0,$t0,0x4
    andi	$a6,$a6,0xf0
    sll	$a6,$a6,0x8
    andi	$a7,$a7,0xf0
    andi	$t0,$t0,0xf
    sll	$a7,$a7,0x4
    or	$a5,$a5,$t0
    or	$a6,$a6,$a7
    or	$a5,$a5,$a6
    # Line 1904
    bne	$a4,$a2,.L0d972c60
    # Line 1905
    sh	$a5,-2($a1)
.L0d972d60:
    # Line 1915
    jr	$ra
    nop
.L0d972d68:
    # Line 1896
    blez	$a4,.L0d972d60
    move	$a2,$zero
    andi	$a1,$a4,0x3
    beqz	$a1,.L0d972dc4
    sra	$t3,$a4,0x2
.L0d972d7c:
    # Line 1897
    lbu	$t2,0($a5)
    # Line 1896
    addiu	$a2,$a2,1
    # Line 1897
    lbu	$t3,1($a5)
    # Line 1900
    addiu	$a5,$a5,3
    # Line 1897
    andi	$t2,$t2,0xf0
    sll	$t2,$t2,0x8
    andi	$t3,$t3,0xf0
    lbu	$t1,-1($a5)
    addiu	$a1,$a1,-1
    sll	$t3,$t3,0x4
    andi	$t1,$t1,0xf0
    or	$t2,$t2,$t3
    addiu	$a6,$a6,2
    or	$t1,$t1,$t2
    ori	$t1,$t1,0xf
    bnez	$a1,.L0d972d7c
    sh	$t1,-2($a6)
    sra	$t3,$a4,0x2
.L0d972dc4:
    move	$a1,$a6
    beqz	$t3,.L0d972d60
    move	$a3,$a5
.L0d972dd0:
    lbu	$a6,0($a3)
    lbu	$a7,1($a3)
    andi	$a6,$a6,0xf0
    sll	$a6,$a6,0x8
    andi	$a7,$a7,0xf0
    lbu	$a5,2($a3)
    sll	$a7,$a7,0x4
    andi	$a5,$a5,0xf0
    or	$a6,$a6,$a7
    or	$a5,$a5,$a6
    ori	$a5,$a5,0xf
    sh	$a5,0($a1)
    lbu	$a0,3($a3)
    lbu	$a5,4($a3)
    andi	$a0,$a0,0xf0
    sll	$a0,$a0,0x8
    andi	$a5,$a5,0xf0
    lbu	$v1,5($a3)
    sll	$a5,$a5,0x4
    andi	$v1,$v1,0xf0
    or	$a0,$a0,$a5
    or	$v1,$v1,$a0
    ori	$v1,$v1,0xf
    sh	$v1,2($a1)
    lbu	$v0,6($a3)
    lbu	$v1,7($a3)
    andi	$v0,$v0,0xf0
    sll	$v0,$v0,0x8
    andi	$v1,$v1,0xf0
    lbu	$at,8($a3)
    sll	$v1,$v1,0x4
    andi	$at,$at,0xf0
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    ori	$at,$at,0xf
    sh	$at,4($a1)
    lbu	$t9,9($a3)
    lbu	$at,10($a3)
    # Line 1900
    addiu	$a3,$a3,12
    # Line 1897
    andi	$t9,$t9,0xf0
    sll	$t9,$t9,0x8
    andi	$at,$at,0xf0
    lbu	$t8,-1($a3)
    # Line 1896
    addiu	$a2,$a2,4
    # Line 1897
    sll	$at,$at,0x4
    andi	$t8,$t8,0xf0
    or	$t9,$t9,$at
    addiu	$a1,$a1,8
    or	$t8,$t8,$t9
    ori	$t8,$t8,0xf
    # Line 1896
    bne	$a4,$a2,.L0d972dd0
    # Line 1897
    sh	$t8,-2($a1)
    b	.L0d972d60
    nop
.end crmSpan_RGBA8_to_RGBA4

# Function: crmSubtileTexels
# Declared: Line 1955 (Source lines: 1957-2036)
# Address: 0x0d972eb0 - 0x0d973a34 (Size: 2948 bytes, Frame: 0)
.ent crmSubtileTexels
crmSubtileTexels:
    # Line 1957
    sra	$a6,$a2,0x1
    blez	$a6,.L0d9732cc
    # Line 1958
    andi	$at,$a1,0x7
    beqz	$at,.L0d972f20
    # Line 1966
    andi	$a4,$a1,0x1e0
    # Line 1961
    move	$a3,$a1
.L0d972ec8:
    # Line 1963
    addiu	$a0,$a0,2
    addiu	$a6,$a6,-1
    lhu	$v0,-2($a0)
    addiu	$a3,$a3,2
    # Line 1962
    andi	$v1,$a3,0x7
    blez	$a6,.L0d972f0c
    # Line 1963
    sh	$v0,-2($a3)
    # Line 1962
    beqz	$v1,.L0d972f10
    addiu	$a1,$a3,24
    # Line 1963
    addiu	$a0,$a0,2
    addiu	$a6,$a6,-1
    lhu	$a1,-2($a0)
    addiu	$a3,$a3,2
    # Line 1962
    andi	$a2,$a3,0x7
    blez	$a6,.L0d972f0c
    # Line 1963
    sh	$a1,-2($a3)
    # Line 1962
    bnez	$a2,.L0d972ec8
.L0d972f0c:
    addiu	$a1,$a3,24
.L0d972f10:
    # Line 1966
    addiu	$a5,$a3,7704
    # Line 1962
    andi	$a4,$a1,0x1e0
    movz	$a1,$a5,$a4
    # Line 1966
    andi	$a4,$a1,0x1e0
.L0d972f20:
    beqz	$a4,.L0d9730e0
    # Line 1982
    slti	$t3,$a6,64
    # Line 1972
    li	$t1,512
    subu	$t1,$t1,$a4
    # Line 1975
    li	$a7,31
    # Line 1972
    srl	$t1,$t1,0x3
    move	$t0,$t1
    slt	$t1,$a6,$t1
    # Line 1975
    andi	$a5,$a0,0x3
    # Line 1972
    movn	$t0,$a6,$t1
    # Line 1975
    li	$a2,-4
    slt	$a7,$a7,$t0
    # Line 1972
    move	$a3,$t0
    # Line 1975
    and	$a2,$t0,$a2
    beqz	$a5,.L0d97333c
    subu	$a6,$a6,$a2
    # Line 1977
    move	$a5,$a0
    beqz	$a7,.L0d973078
    move	$a4,$a1
    lhu	$v0,0($a0)
    sh	$v0,0($a1)
    lhu	$at,2($a0)
    sh	$at,2($a1)
    lhu	$t9,4($a0)
    sh	$t9,4($a1)
    lhu	$t8,6($a0)
    sh	$t8,6($a1)
    lhu	$t3,8($a0)
    sh	$t3,32($a1)
    lhu	$t2,10($a0)
    sh	$t2,34($a1)
    lhu	$t1,12($a0)
    sh	$t1,36($a1)
    lhu	$a7,14($a0)
    sh	$a7,38($a1)
    lhu	$a5,16($a0)
    sh	$a5,64($a1)
    lhu	$a4,18($a0)
    sh	$a4,66($a1)
    lhu	$a3,20($a0)
    sh	$a3,68($a1)
    lhu	$a2,22($a0)
    sh	$a2,70($a1)
    lhu	$v1,24($a0)
    sh	$v1,96($a1)
    lhu	$v0,26($a0)
    sh	$v0,98($a1)
    lhu	$at,28($a0)
    sh	$at,100($a1)
    lhu	$t9,30($a0)
    sh	$t9,102($a1)
    lhu	$t8,32($a0)
    sh	$t8,128($a1)
    lhu	$t3,34($a0)
    sh	$t3,130($a1)
    lhu	$t2,36($a0)
    sh	$t2,132($a1)
    lhu	$t1,38($a0)
    sh	$t1,134($a1)
    lhu	$a7,40($a0)
    sh	$a7,160($a1)
    lhu	$a5,42($a0)
    sh	$a5,162($a1)
    lhu	$a4,44($a0)
    sh	$a4,164($a1)
    lhu	$a3,46($a0)
    sh	$a3,166($a1)
    lhu	$a2,48($a0)
    sh	$a2,192($a1)
    lhu	$v1,50($a0)
    sh	$v1,194($a1)
    lhu	$v0,52($a0)
    sh	$v0,196($a1)
    lhu	$at,54($a0)
    sh	$at,198($a1)
    lhu	$t9,56($a0)
    sh	$t9,224($a1)
    lhu	$t8,58($a0)
    sh	$t8,226($a1)
    lhu	$t3,60($a0)
    sh	$t3,228($a1)
    addiu	$a3,$t0,-32
    lhu	$t2,62($a0)
    addiu	$a5,$a0,64
    addiu	$a4,$a1,256
    sh	$t2,230($a1)
.L0d973078:
    slti	$v1,$a3,4
    bnez	$v1,.L0d9730c8
    move	$a1,$a4
    nop
    nop
    nop
.L0d973090:
    lhu	$t0,0($a5)
    sh	$t0,0($a4)
    lhu	$a7,2($a5)
    sh	$a7,2($a4)
    addiu	$a3,$a3,-4
    lhu	$a2,4($a5)
    slti	$a1,$a3,4
    sh	$a2,4($a4)
    addiu	$a4,$a4,32
    lhu	$a0,6($a5)
    addiu	$a5,$a5,8
    beqz	$a1,.L0d973090
    sh	$a0,-26($a4)
    move	$a1,$a4
.L0d9730c8:
    move	$a0,$a5
.L0d9730cc:
    blez	$a6,.L0d9732cc
    # Line 1980
    addiu	$t2,$a1,7680
    # Line 1979
    andi	$t1,$a1,0x1e0
    movz	$a1,$t2,$t1
    # Line 1982
    slti	$t3,$a6,64
.L0d9730e0:
    bnez	$t3,.L0d9730f8
    # Line 2027
    li	$a5,3
    # Line 1982
    andi	$t8,$a1,0x1e0
    beqz	$t8,.L0d973478
    andi	$a2,$a0,0x7
    # Line 2027
    li	$a5,3
.L0d9730f8:
    slt	$a5,$a5,$a6
    beqz	$a5,.L0d97327c
    andi	$t0,$a0,0x3
    li	$a7,31
    beqz	$t0,.L0d9737b8
    slt	$a7,$a7,$a6
    # Line 2031
    move	$a3,$a0
    beqz	$a7,.L0d973230
    move	$a4,$a1
    lhu	$t1,0($a0)
    sh	$t1,0($a1)
    lhu	$t0,2($a0)
    sh	$t0,2($a1)
    lhu	$a7,4($a0)
    sh	$a7,4($a1)
    lhu	$a5,6($a0)
    sh	$a5,6($a1)
    lhu	$a4,8($a0)
    sh	$a4,32($a1)
    lhu	$a3,10($a0)
    sh	$a3,34($a1)
    lhu	$a2,12($a0)
    sh	$a2,36($a1)
    lhu	$v1,14($a0)
    sh	$v1,38($a1)
    lhu	$v0,16($a0)
    sh	$v0,64($a1)
    lhu	$at,18($a0)
    sh	$at,66($a1)
    lhu	$t9,20($a0)
    sh	$t9,68($a1)
    lhu	$t8,22($a0)
    sh	$t8,70($a1)
    lhu	$t3,24($a0)
    sh	$t3,96($a1)
    lhu	$t2,26($a0)
    sh	$t2,98($a1)
    lhu	$t1,28($a0)
    sh	$t1,100($a1)
    lhu	$t0,30($a0)
    sh	$t0,102($a1)
    lhu	$a7,32($a0)
    sh	$a7,128($a1)
    lhu	$a5,34($a0)
    sh	$a5,130($a1)
    lhu	$a4,36($a0)
    sh	$a4,132($a1)
    lhu	$a3,38($a0)
    sh	$a3,134($a1)
    lhu	$a2,40($a0)
    sh	$a2,160($a1)
    lhu	$v1,42($a0)
    sh	$v1,162($a1)
    lhu	$v0,44($a0)
    sh	$v0,164($a1)
    lhu	$at,46($a0)
    sh	$at,166($a1)
    lhu	$t9,48($a0)
    sh	$t9,192($a1)
    lhu	$t8,50($a0)
    sh	$t8,194($a1)
    lhu	$t3,52($a0)
    sh	$t3,196($a1)
    lhu	$t2,54($a0)
    sh	$t2,198($a1)
    lhu	$t1,56($a0)
    sh	$t1,224($a1)
    lhu	$t0,58($a0)
    sh	$t0,226($a1)
    lhu	$a7,60($a0)
    addiu	$a6,$a6,-32
    sh	$a7,228($a1)
    li	$a5,3
    addiu	$a4,$a1,256
    lhu	$t1,62($a0)
    slt	$a5,$a5,$a6
    addiu	$a3,$a0,64
    sh	$t1,230($a1)
.L0d973230:
    beqz	$a5,.L0d973278
    move	$a1,$a4
    nop
    nop
.L0d973240:
    lhu	$at,0($a3)
    sh	$at,0($a4)
    lhu	$t9,2($a3)
    sh	$t9,2($a4)
    addiu	$a6,$a6,-4
    lhu	$t8,4($a3)
    slti	$t3,$a6,4
    sh	$t8,4($a4)
    addiu	$a4,$a4,32
    lhu	$t2,6($a3)
    addiu	$a3,$a3,8
    beqz	$t3,.L0d973240
    sh	$t2,-26($a4)
    move	$a1,$a4
.L0d973278:
    move	$a0,$a3
.L0d97327c:
    blez	$a6,.L0d9732cc
    # Line 2034
    addu	$t0,$a6,$a6
    sra	$t0,$t0,0x1
    move	$a4,$a0
    move	$a3,$a1
    blez	$t0,.L0d9732cc
    addiu	$a5,$t0,-1
    andi	$t1,$t0,0x1
    beqz	$t1,.L0d9732c0
    li	$a7,-1
    addiu	$a3,$a1,2
    andi	$t3,$a3,0x7
    lhu	$t2,0($a0)
    addiu	$a4,$a0,2
    beqz	$t3,.L0d9738f8
    sh	$t2,0($a1)
.L0d9732bc:
    addiu	$a5,$a5,-1
.L0d9732c0:
    sra	$t8,$t0,0x1
    bnez	$t8,.L0d973a28
    addiu	$a3,$a3,2
.L0d9732cc:
    # Line 2036
    jr	$ra
    nop
    nop
    nop
    nop
.L0d9732e0:
    # Line 2034
    addiu	$a3,$a3,2
    andi	$at,$a3,0x7
    lhu	$t9,2($a4)
    addiu	$a4,$a4,4
    beqz	$at,.L0d973328
    sh	$t9,-2($a3)
.L0d9732f8:
    addiu	$a3,$a3,2
    beq	$a5,$a7,.L0d9732cc
    andi	$v1,$a3,0x7
    lhu	$v0,0($a4)
.L0d973308:
    addiu	$a5,$a5,-2
    bnez	$v1,.L0d9732e0
    sh	$v0,-2($a3)
    addiu	$a3,$a3,24
    addiu	$a1,$a3,7680
    andi	$a0,$a3,0x1e0
    b	.L0d9732e0
    movz	$a3,$a1,$a0
.L0d973328:
    addiu	$a3,$a3,24
    addiu	$a6,$a3,7680
    andi	$a2,$a3,0x1e0
    b	.L0d9732f8
    movz	$a3,$a6,$a2
.L0d97333c:
    # Line 1977
    move	$a5,$a0
    beqz	$a7,.L0d9733d4
    move	$a4,$a1
    lw	$t2,0($a0)
    sw	$t2,0($a1)
    lw	$t1,4($a0)
    sw	$t1,4($a1)
    lw	$a7,8($a0)
    sw	$a7,32($a1)
    lw	$a5,12($a0)
    sw	$a5,36($a1)
    lw	$a4,16($a0)
    sw	$a4,64($a1)
    lw	$a3,20($a0)
    sw	$a3,68($a1)
    lw	$a2,24($a0)
    sw	$a2,96($a1)
    lw	$v1,28($a0)
    sw	$v1,100($a1)
    lw	$v0,32($a0)
    sw	$v0,128($a1)
    lw	$at,36($a0)
    sw	$at,132($a1)
    lw	$t9,40($a0)
    sw	$t9,160($a1)
    lw	$t8,44($a0)
    sw	$t8,164($a1)
    lw	$t3,48($a0)
    sw	$t3,192($a1)
    lw	$t2,52($a0)
    sw	$t2,196($a1)
    lw	$t1,56($a0)
    sw	$t1,224($a1)
    addiu	$a3,$t0,-32
    lw	$a7,60($a0)
    addiu	$a5,$a0,64
    addiu	$a4,$a1,256
    sw	$a7,228($a1)
.L0d9733d4:
    slti	$t3,$a3,4
    bnez	$t3,.L0d973470
    move	$a1,$a4
    addiu	$a7,$a3,3
    slt	$t0,$a3,$zero
    movz	$a7,$a3,$t0
    sra	$a7,$a7,0x2
    andi	$t8,$a7,0x1
    beqz	$t8,.L0d97341c
    sra	$t3,$a7,0x1
    lw	$t2,0($a5)
    sw	$t2,0($a4)
    addiu	$a4,$a4,32
    lw	$t1,4($a5)
    addiu	$a3,$a3,-4
    addiu	$a5,$a5,8
    sw	$t1,-28($a4)
    sra	$t3,$a7,0x1
.L0d97341c:
    beqz	$t3,.L0d97346c
    move	$a1,$a4
    move	$a0,$a5
    nop
    nop
.L0d973430:
    lw	$v1,0($a0)
    sw	$v1,0($a1)
    lw	$v0,4($a0)
    sw	$v0,4($a1)
    addiu	$a3,$a3,-8
    lw	$at,8($a0)
    slti	$t9,$a3,4
    sw	$at,32($a1)
    addiu	$a1,$a1,64
    lw	$t8,12($a0)
    addiu	$a0,$a0,16
    beqz	$t9,.L0d973430
    sw	$t8,-28($a1)
    move	$a4,$a1
    move	$a5,$a0
.L0d97346c:
    move	$a1,$a4
.L0d973470:
    b	.L0d9730cc
    move	$a0,$a5
.L0d973478:
    # Line 1982
    bnez	$a2,.L0d973678
    # Line 1984
    addiu	$t1,$a6,63
    slt	$t2,$a6,$zero
    movz	$t1,$a6,$t2
    li	$a5,1
    sra	$t1,$t1,0x6
    slt	$t0,$t1,$a5
    movz	$a5,$t1,$t0
    andi	$a7,$a5,0x1
    move	$a4,$a0
    beqz	$a7,.L0d973534
    move	$a3,$a1
    # Line 1986
    ld	$t9,0($a0)
    sd	$t9,0($a1)
    ld	$t8,8($a0)
    sd	$t8,32($a1)
    ld	$t3,16($a0)
    sd	$t3,64($a1)
    ld	$t2,24($a0)
    sd	$t2,96($a1)
    # Line 1987
    ld	$t1,32($a0)
    sd	$t1,128($a1)
    ld	$t0,40($a0)
    sd	$t0,160($a1)
    ld	$a7,48($a0)
    sd	$a7,192($a1)
    ld	$a4,56($a0)
    sd	$a4,224($a1)
    # Line 1988
    ld	$a3,64($a0)
    sd	$a3,256($a1)
    ld	$a2,72($a0)
    sd	$a2,288($a1)
    ld	$v1,80($a0)
    sd	$v1,320($a1)
    ld	$v0,88($a0)
    sd	$v0,352($a1)
    # Line 1989
    ld	$at,96($a0)
    sd	$at,384($a1)
    ld	$t9,104($a0)
    sd	$t9,416($a1)
    ld	$t8,112($a0)
    sd	$t8,448($a1)
    # Line 1990
    addiu	$a6,$a6,-64
    # Line 1989
    ld	$t3,120($a0)
    # Line 1990
    addiu	$a4,$a0,128
    addiu	$a3,$a1,8192
    # Line 1989
    sd	$t3,480($a1)
.L0d973534:
    sra	$at,$a5,0x1
    beqz	$at,.L0d97366c
    move	$a1,$a3
    move	$a0,$a4
    nop
    nop
    nop
.L0d973550:
    # Line 1986
    ld	$a4,0($a0)
    sd	$a4,0($a1)
    ld	$a3,8($a0)
    sd	$a3,32($a1)
    ld	$a2,16($a0)
    sd	$a2,64($a1)
    ld	$v1,24($a0)
    sd	$v1,96($a1)
    # Line 1987
    ld	$v0,32($a0)
    sd	$v0,128($a1)
    ld	$at,40($a0)
    sd	$at,160($a1)
    ld	$t9,48($a0)
    sd	$t9,192($a1)
    ld	$t8,56($a0)
    sd	$t8,224($a1)
    # Line 1988
    ld	$t3,64($a0)
    sd	$t3,256($a1)
    ld	$t2,72($a0)
    sd	$t2,288($a1)
    ld	$t1,80($a0)
    sd	$t1,320($a1)
    ld	$t0,88($a0)
    sd	$t0,352($a1)
    # Line 1989
    ld	$a7,96($a0)
    sd	$a7,384($a1)
    ld	$a5,104($a0)
    sd	$a5,416($a1)
    ld	$a4,112($a0)
    sd	$a4,448($a1)
    ld	$a3,120($a0)
    sd	$a3,480($a1)
    # Line 1986
    ld	$a2,128($a0)
    sd	$a2,8192($a1)
    ld	$v1,136($a0)
    sd	$v1,8224($a1)
    ld	$v0,144($a0)
    sd	$v0,8256($a1)
    ld	$at,152($a0)
    sd	$at,8288($a1)
    # Line 1987
    ld	$t9,160($a0)
    sd	$t9,8320($a1)
    ld	$t8,168($a0)
    sd	$t8,8352($a1)
    ld	$t3,176($a0)
    sd	$t3,8384($a1)
    ld	$t2,184($a0)
    sd	$t2,8416($a1)
    # Line 1988
    ld	$t1,192($a0)
    sd	$t1,8448($a1)
    ld	$t0,200($a0)
    sd	$t0,8480($a1)
    ld	$a7,208($a0)
    sd	$a7,8512($a1)
    ld	$a5,216($a0)
    sd	$a5,8544($a1)
    # Line 1989
    ld	$a4,224($a0)
    sd	$a4,8576($a1)
    ld	$a3,232($a0)
    sd	$a3,8608($a1)
    # Line 1990
    addiu	$a6,$a6,-128
    # Line 1989
    ld	$a2,240($a0)
    # Line 1990
    slti	$v1,$a6,64
    # Line 1989
    sd	$a2,8640($a1)
    # Line 1990
    addiu	$a1,$a1,16384
    # Line 1989
    ld	$v0,248($a0)
    # Line 1990
    addiu	$a0,$a0,256
    beqz	$v1,.L0d973550
    # Line 1989
    sd	$v0,-7712($a1)
    move	$a3,$a1
    move	$a4,$a0
.L0d97366c:
    # Line 1992
    move	$a1,$a3
    b	.L0d9737a8
    move	$a0,$a4
.L0d973678:
    andi	$a5,$a0,0x3
    beqz	$a5,.L0d97390c
    # Line 2009
    li	$a7,-1
.L0d973684:
    li	$a3,1
.L0d973688:
    # Line 2013
    lhu	$v0,0($a0)
    sh	$v0,0($a1)
    lhu	$at,2($a0)
    sh	$at,2($a1)
    lhu	$t9,4($a0)
    sh	$t9,4($a1)
    lhu	$t8,6($a0)
    sh	$t8,6($a1)
    # Line 2014
    lhu	$t3,8($a0)
    sh	$t3,32($a1)
    lhu	$t2,10($a0)
    sh	$t2,34($a1)
    lhu	$t1,12($a0)
    sh	$t1,36($a1)
    lhu	$t0,14($a0)
    sh	$t0,38($a1)
    # Line 2015
    lhu	$a5,16($a0)
    sh	$a5,64($a1)
    lhu	$a4,18($a0)
    sh	$a4,66($a1)
    lhu	$a2,20($a0)
    sh	$a2,68($a1)
    lhu	$v1,22($a0)
    sh	$v1,70($a1)
    # Line 2016
    lhu	$v0,24($a0)
    sh	$v0,96($a1)
    lhu	$at,26($a0)
    sh	$at,98($a1)
    lhu	$t9,28($a0)
    sh	$t9,100($a1)
    lhu	$t8,30($a0)
    sh	$t8,102($a1)
    # Line 2017
    lhu	$t3,32($a0)
    sh	$t3,128($a1)
    lhu	$t2,34($a0)
    sh	$t2,130($a1)
    lhu	$t1,36($a0)
    sh	$t1,132($a1)
    lhu	$t0,38($a0)
    sh	$t0,134($a1)
    # Line 2018
    lhu	$a5,40($a0)
    sh	$a5,160($a1)
    lhu	$a4,42($a0)
    sh	$a4,162($a1)
    lhu	$a2,44($a0)
    sh	$a2,164($a1)
    lhu	$v1,46($a0)
    sh	$v1,166($a1)
    # Line 2019
    lhu	$v0,48($a0)
    sh	$v0,192($a1)
    lhu	$at,50($a0)
    sh	$at,194($a1)
    lhu	$t9,52($a0)
    sh	$t9,196($a1)
    lhu	$t8,54($a0)
    sh	$t8,198($a1)
    # Line 2020
    lhu	$t3,56($a0)
    sh	$t3,224($a1)
    lhu	$t2,58($a0)
    sh	$t2,226($a1)
    lhu	$t1,60($a0)
    # Line 2022
    addiu	$a3,$a3,-1
    # Line 2020
    sh	$t1,228($a1)
    # Line 2021
    addiu	$a6,$a6,-32
    addiu	$a1,$a1,256
    # Line 2020
    lhu	$t0,62($a0)
    # Line 2021
    addiu	$a0,$a0,64
    # Line 2022
    bne	$a3,$a7,.L0d973688
    # Line 2020
    sh	$t0,-26($a1)
    # Line 2023
    slti	$v1,$a6,64
    beqz	$v1,.L0d973684
    addiu	$a1,$a1,7680
.L0d9737a8:
    # Line 2025
    bgtz	$a6,.L0d9730f8
    # Line 2027
    li	$a5,3
    b	.L0d9732cc
    nop
.L0d9737b8:
    # Line 2031
    move	$a4,$a0
    beqz	$a7,.L0d973858
    move	$a3,$a1
    lw	$a7,0($a0)
    sw	$a7,0($a1)
    lw	$a5,4($a0)
    sw	$a5,4($a1)
    lw	$a4,8($a0)
    sw	$a4,32($a1)
    lw	$a3,12($a0)
    sw	$a3,36($a1)
    lw	$a2,16($a0)
    sw	$a2,64($a1)
    lw	$v1,20($a0)
    sw	$v1,68($a1)
    lw	$v0,24($a0)
    sw	$v0,96($a1)
    lw	$at,28($a0)
    sw	$at,100($a1)
    lw	$t9,32($a0)
    sw	$t9,128($a1)
    lw	$t8,36($a0)
    sw	$t8,132($a1)
    lw	$t3,40($a0)
    sw	$t3,160($a1)
    lw	$t2,44($a0)
    sw	$t2,164($a1)
    lw	$t1,48($a0)
    sw	$t1,192($a1)
    lw	$t0,52($a0)
    sw	$t0,196($a1)
    lw	$a7,56($a0)
    addiu	$a6,$a6,-32
    sw	$a7,224($a1)
    li	$a5,3
    addiu	$a4,$a0,64
    lw	$a2,60($a0)
    slt	$a5,$a5,$a6
    addiu	$a3,$a1,256
    sw	$a2,228($a1)
.L0d973858:
    beqz	$a5,.L0d9738ec
    addiu	$a5,$a6,3
    slt	$a7,$a6,$zero
    movz	$a5,$a6,$a7
    sra	$a5,$a5,0x2
    andi	$t0,$a5,0x1
    beqz	$t0,.L0d973898
    sra	$t2,$a5,0x1
    lw	$t1,0($a4)
    sw	$t1,0($a3)
    addiu	$a3,$a3,32
    lw	$t0,4($a4)
    addiu	$a6,$a6,-4
    addiu	$a4,$a4,8
    sw	$t0,-28($a3)
    sra	$t2,$a5,0x1
.L0d973898:
    beqz	$t2,.L0d9738ec
    move	$a0,$a3
    move	$a1,$a4
    nop
    nop
    nop
.L0d9738b0:
    lw	$v0,0($a1)
    sw	$v0,0($a0)
    lw	$at,4($a1)
    sw	$at,4($a0)
    addiu	$a6,$a6,-8
    lw	$t9,8($a1)
    slti	$t8,$a6,4
    sw	$t9,32($a0)
    addiu	$a0,$a0,64
    lw	$t3,12($a1)
    addiu	$a1,$a1,16
    beqz	$t8,.L0d9738b0
    sw	$t3,-28($a0)
    move	$a3,$a0
    move	$a4,$a1
.L0d9738ec:
    move	$a1,$a3
    b	.L0d97327c
    move	$a0,$a4
.L0d9738f8:
    # Line 2034
    addiu	$a0,$a1,7706
    addiu	$a3,$a1,26
    andi	$v1,$a3,0x1e0
    b	.L0d9732bc
    movz	$a3,$a0,$v1
.L0d97390c:
    # Line 1997
    lw	$a7,0($a0)
    sw	$a7,0($a1)
    lw	$a5,4($a0)
    sw	$a5,4($a1)
    lw	$a4,8($a0)
    sw	$a4,32($a1)
    lw	$a3,12($a0)
    sw	$a3,36($a1)
    # Line 1998
    lw	$a2,16($a0)
    sw	$a2,64($a1)
    lw	$v1,20($a0)
    sw	$v1,68($a1)
    lw	$v0,24($a0)
    sw	$v0,96($a1)
    lw	$at,28($a0)
    sw	$at,100($a1)
    # Line 1999
    lw	$t9,32($a0)
    sw	$t9,128($a1)
    lw	$t8,36($a0)
    sw	$t8,132($a1)
    lw	$t3,40($a0)
    sw	$t3,160($a1)
    lw	$t2,44($a0)
    sw	$t2,164($a1)
    # Line 2000
    lw	$t1,48($a0)
    sw	$t1,192($a1)
    lw	$t0,52($a0)
    sw	$t0,196($a1)
    lw	$a7,56($a0)
    sw	$a7,224($a1)
    lw	$a5,60($a0)
    sw	$a5,228($a1)
    # Line 2001
    lw	$a4,64($a0)
    sw	$a4,256($a1)
    lw	$a3,68($a0)
    sw	$a3,260($a1)
    lw	$a2,72($a0)
    sw	$a2,288($a1)
    lw	$v1,76($a0)
    sw	$v1,292($a1)
    # Line 2002
    lw	$v0,80($a0)
    sw	$v0,320($a1)
    lw	$at,84($a0)
    sw	$at,324($a1)
    lw	$t9,88($a0)
    sw	$t9,352($a1)
    lw	$t8,92($a0)
    sw	$t8,356($a1)
    # Line 2003
    lw	$t3,96($a0)
    sw	$t3,384($a1)
    lw	$t2,100($a0)
    sw	$t2,388($a1)
    lw	$t1,104($a0)
    sw	$t1,416($a1)
    lw	$t0,108($a0)
    sw	$t0,420($a1)
    # Line 2004
    lw	$a7,112($a0)
    sw	$a7,448($a1)
    lw	$a5,116($a0)
    sw	$a5,452($a1)
    # Line 2005
    addiu	$a6,$a6,-64
    # Line 2004
    lw	$a4,120($a0)
    # Line 2005
    slti	$a3,$a6,64
    # Line 2004
    sw	$a4,480($a1)
    # Line 2005
    addiu	$a1,$a1,8192
    # Line 2004
    lw	$a2,124($a0)
    # Line 2005
    addiu	$a0,$a0,128
    beqz	$a3,.L0d97390c
    # Line 2004
    sw	$a2,-7708($a1)
    b	.L0d9737a8
    nop
.L0d973a28:
    # Line 2034
    andi	$v1,$a3,0x7
    b	.L0d973308
    lhu	$v0,0($a4)
.end crmSubtileTexels

# Function: crmSubtileSpan
# Declared: Line 2039 (Source lines: 2041-2099)
# Address: 0x0d973a40 - 0x0d974178 (Size: 1848 bytes, Frame: 208)
.ent crmSubtileSpan
crmSubtileSpan:
    # Line 2041
    addiu	$sp,$sp,-80
    sd	$ra,64($sp)
    lui	$v0,0xe
    # Line 2046
    lwc1	$f0,200($a1)
    # Line 2041
    addiu	$v0,$v0,-11444
    sd	$gp,0($sp)
    addu	$gp,$t9,$v0
    # Line 2046
    lwc1	$f4,_lit_3f800000
    # Line 2041
    sd	$s6,32($sp)
    # Line 2045
    lwc1	$f1,196($a1)
    # Line 2041
    sd	$s2,16($sp)
    # Line 2046
    add.s	$f0,$f0,$f4
    swc1	$f0,200($a1)
    # Line 2045
    trunc.w.s	$f1,$f1
    # Line 2046
    lw	$at,32556($a0)
    # Line 2041
    sd	$s0,8($sp)
    # Line 2046
    trunc.w.s	$f0,$f0
    # Line 2041
    move	$s0,$a0
    move	$s2,$a3
    sd	$s3,24($sp)
    # Line 2045
    mfc1	$t2,$f1
    # Line 2041
    move	$s3,$a2
    # Line 2046
    lw	$t1,32520($a0)
    beqz	$at,.L0d973df0
    mfc1	$s6,$f0
    # Line 2051
    sra	$t0,$t1,0x1
    move	$a7,$a2
    blez	$t0,.L0d973b10
    addu	$a5,$t2,$a3
    li	$a0,1
    slt	$a2,$t0,$a0
    movz	$a0,$t0,$a2
    andi	$v1,$a0,0x1
    beqz	$v1,.L0d973b04
    li	$a6,1
    lhu	$t1,2($a5)
    addiu	$a7,$s3,2
    lhu	$t3,32556($s0)
    li	$a6,0x2
    addiu	$a5,$a5,2
    lhu	$a3,0($s3)
    andi	$a4,$a5,0x7
    nor	$t2,$t3,$zero
    and	$a3,$a3,$t3
    and	$t1,$t1,$t2
    or	$a3,$a3,$t1
    beqz	$a4,.L0d97406c
    sh	$a3,-2($a5)
.L0d973b00:
    addiu	$t0,$t0,-1
.L0d973b04:
    sra	$t8,$a0,0x1
    bnez	$t8,.L0d97412c
    addiu	$a6,$a6,1
.L0d973b10:
    lw	$a0,32512($s0)
    sd	$s5,56($sp)
    slti	$t9,$a0,2
    sd	$s1,48($sp)
    bnez	$t9,.L0d973d4c
    sd	$s4,40($sp)
    lui	$s5,0x1
    li	$s4,1
    b	.L0d974148
    addiu	$s1,$s0,4
    nop
    nop
.L0d973b40:
    lhu	$v0,2($a5)
    lhu	$a0,32556($a0)
    lhu	$ra,-2($a7)
    addiu	$a5,$a5,2
    andi	$at,$a5,0x7
    nor	$v1,$a0,$zero
    and	$ra,$ra,$a0
    and	$v0,$v0,$v1
    or	$ra,$ra,$v0
    beqz	$at,.L0d973bd8
    sh	$ra,-2($a5)
.L0d973b6c:
    blez	$t0,.L0d973b10
    addiu	$a6,$a6,1
    addiu	$a7,$a7,4
.L0d973b78:
    andi	$t2,$a6,0x1
    addiu	$t0,$t0,-2
    addu	$t2,$t2,$t2
    lhu	$a4,2($a5)
    addiu	$a6,$a6,1
    addu	$t2,$s0,$t2
    addiu	$a5,$a5,2
    andi	$a0,$a6,0x1
    lhu	$t2,32556($t2)
    lhu	$a2,-4($a7)
    andi	$a3,$a5,0x7
    addu	$a0,$a0,$a0
    addu	$a0,$s0,$a0
    nor	$t1,$t2,$zero
    and	$a2,$a2,$t2
    and	$a4,$a4,$t1
    or	$a2,$a2,$a4
    bnez	$a3,.L0d973b40
    sh	$a2,-2($a5)
    addiu	$a5,$a5,24
    addiu	$t8,$a5,7680
    andi	$t3,$a5,0x1e0
    b	.L0d973b40
    movz	$a5,$t8,$t3
.L0d973bd8:
    addiu	$a5,$a5,24
    addiu	$ra,$a5,7680
    andi	$t9,$a5,0x1e0
    b	.L0d973b6c
    movz	$a5,$ra,$t9
.L0d973bec:
    sra	$at,$a0,0x1
.L0d973bf0:
    bnez	$at,.L0d974140
    # Line 2056
    addiu	$a6,$a6,1
.L0d973bf8:
    lw	$a0,32512($s0)
.L0d973bfc:
    # Line 2053
    slt	$v0,$s4,$a0
    beqz	$v0,.L0d973d4c
    # Line 2055
    addu	$s2,$s5,$s2
    # Line 2056
    lw	$t0,32520($s1)
.L0d973c0c:
    li	$a6,1
    move	$a5,$s2
    # Line 2054
    lw	$t1,32516($s1)
    # Line 2053
    addiu	$s4,$s4,1
    # Line 2056
    sra	$t0,$t0,0x1
    # Line 2053
    addiu	$s1,$s1,4
    # Line 2054
    addu	$s3,$t1,$s3
    # Line 2056
    blez	$t0,.L0d973bfc
    move	$a7,$s3
    li	$a0,1
    slt	$t3,$t0,$a0
    movz	$a0,$t0,$t3
    andi	$t2,$a0,0x1
    beqz	$t2,.L0d973bf0
    sra	$at,$a0,0x1
    lhu	$ra,2($s2)
    addiu	$a7,$s3,2
    li	$a6,0x2
    lhu	$v0,32556($s0)
    addiu	$t0,$t0,-1
    lhu	$t8,0($s3)
    addiu	$a5,$s2,2
    andi	$t9,$a5,0x7
    nor	$at,$v0,$zero
    and	$t8,$t8,$v0
    and	$ra,$ra,$at
    or	$t8,$t8,$ra
    bnez	$t9,.L0d973bec
    sh	$t8,0($s2)
    addiu	$a2,$s2,7706
    addiu	$a5,$s2,26
    andi	$v1,$a5,0x1e0
    b	.L0d973bec
    movz	$a5,$a2,$v1
    nop
    nop
    nop
.L0d973ca0:
    lhu	$t1,2($a5)
    lhu	$t3,32556($t3)
    lhu	$a3,-2($a7)
    addiu	$a5,$a5,2
    andi	$a4,$a5,0x7
    nor	$t2,$t3,$zero
    and	$a3,$a3,$t3
    and	$t1,$t1,$t2
    or	$a3,$a3,$t1
    beqz	$a4,.L0d973d38
    sh	$a3,-2($a5)
.L0d973ccc:
    blez	$t0,.L0d973bf8
    addiu	$a6,$a6,1
    addiu	$a7,$a7,4
.L0d973cd8:
    andi	$v0,$a6,0x1
    addiu	$t0,$t0,-2
    addu	$v0,$v0,$v0
    lhu	$ra,2($a5)
    addiu	$a6,$a6,1
    addu	$v0,$s0,$v0
    addiu	$a5,$a5,2
    andi	$t3,$a6,0x1
    lhu	$v0,32556($v0)
    lhu	$t8,-4($a7)
    andi	$t9,$a5,0x7
    addu	$t3,$t3,$t3
    addu	$t3,$s0,$t3
    nor	$at,$v0,$zero
    and	$t8,$t8,$v0
    and	$ra,$ra,$at
    or	$t8,$t8,$ra
    bnez	$t9,.L0d973ca0
    sh	$t8,-2($a5)
    addiu	$a5,$a5,24
    addiu	$a0,$a5,7680
    andi	$v1,$a5,0x1e0
    b	.L0d973ca0
    movz	$a5,$a0,$v1
.L0d973d38:
    addiu	$a5,$a5,24
    addiu	$a3,$a5,7680
    andi	$a2,$a5,0x1e0
    b	.L0d973ccc
    movz	$a5,$a3,$a2
.L0d973d4c:
    # Line 2061
    andi	$a4,$s6,0x3
    beqz	$a4,.L0d973e74
    andi	$a0,$s6,0x7f
    ld	$ra,64($sp)
    ld	$s5,56($sp)
    ld	$s1,48($sp)
    # Line 2078
    beqz	$a0,.L0d973ed4
    ld	$s4,40($sp)
    # Line 2088
    lbu	$a5,32209($s0)
    beqz	$a5,.L0d973dd4
    move	$a0,$zero
.L0d973d78:
    # Line 2082
    lwc1	$f1,200($a1)
    add.s	$f1,$f1,$f4
    trunc.w.s	$f2,$f1
    mfc1	$s6,$f2
    # Line 2081
    lw	$a7,96($a1)
    # Line 2082
    andi	$a6,$s6,0x3
    # Line 2081
    addu	$a0,$a7,$a0
    # Line 2082
    beqz	$a6,.L0d973ea8
    swc1	$f1,200($a1)
.L0d973d9c:
    # Line 2088
    andi	$t0,$s6,0x7f
    beqz	$t0,.L0d973ec8
    nop
.L0d973da8:
    # Line 2093
    beqz	$a0,.L0d973dd4
.L0d973dac:
    # Line 2099
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    # Line 2097
    lw	$t1,92($a1)
    # Line 2099
    ld	$s6,32($sp)
    addiu	$sp,$sp,80
    # Line 2097
    addu	$t1,$a0,$t1
    # Line 2099
    jr	$ra
    # Line 2097
    sw	$t1,92($a1)
.L0d973dd4:
    # Line 2099
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d973df0:
    # Line 2053
    slti	$t3,$t1,33
    beqz	$t3,.L0d974080
    # Line 2059
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    sra	$t0,$t1,0x1
    move	$a6,$a2
    blez	$t0,.L0d973e4c
    addu	$a5,$t2,$a3
    li	$a0,1
    slt	$t9,$t0,$a0
    movz	$a0,$t0,$t9
    andi	$t8,$a0,0x1
    beqz	$t8,.L0d973e44
    sra	$v0,$a0,0x1
    addiu	$a5,$a5,2
    andi	$at,$a5,0x7
    lhu	$ra,0($a2)
    addiu	$a6,$a2,2
    beqz	$at,.L0d9740dc
    sh	$ra,-2($a5)
.L0d973e3c:
    addiu	$t0,$t0,-1
    sra	$v0,$a0,0x1
.L0d973e44:
    bnez	$v0,.L0d97416c
    addiu	$a5,$a5,2
.L0d973e4c:
    lw	$a0,32512($s0)
    sd	$s5,56($sp)
    slti	$v1,$a0,2
    sd	$s1,48($sp)
    bnez	$v1,.L0d973d4c
    sd	$s4,40($sp)
    lui	$s5,0x1
    li	$s4,1
    b	.L0d974160
    addiu	$s1,$s0,4
.L0d973e74:
    ld	$ra,64($sp)
    ld	$s5,56($sp)
    # Line 2061
    andi	$a2,$s6,0xf
    ld	$s1,48($sp)
    beqz	$a2,.L0d9740a4
    ld	$s4,40($sp)
    # Line 2078
    beqz	$a0,.L0d9740cc
    nop
    lbu	$a3,32209($s0)
    beqz	$a3,.L0d9740d4
    nop
    b	.L0d973d78
    li	$a0,2016
.L0d973ea8:
    # Line 2084
    andi	$a4,$s6,0xf
    bnez	$a4,.L0d973d9c
    addiu	$a0,$a0,2016
    # Line 2086
    andi	$a5,$s6,0x3f
    addiu	$a0,$a0,-7680
    # Line 2088
    addiu	$a6,$a0,30720
    b	.L0d973d9c
    movz	$a0,$a6,$a5
.L0d973ec8:
    # Line 2093
    lw	$a7,32516($s0)
    b	.L0d973da8
    addu	$a0,$a7,$a0
.L0d973ed4:
    # Line 2078
    move	$a0,$zero
.L0d973ed8:
    lbu	$t1,32209($s0)
    lw	$t0,32516($s0)
    bnez	$t1,.L0d973d78
    addu	$a0,$t0,$a0
    b	.L0d973da8
    nop
.L0d973ef0:
    bnez	$t2,.L0d974154
    # Line 2064
    addiu	$a5,$a5,2
.L0d973ef8:
    lw	$a0,32512($s0)
.L0d973efc:
    # Line 2061
    addiu	$s4,$s4,1
    slt	$t3,$s4,$a0
    # Line 2063
    addu	$s2,$s5,$s2
    # Line 2061
    beqz	$t3,.L0d973d4c
    addiu	$s1,$s1,4
    # Line 2063
    lw	$a2,32520($s1)
.L0d973f14:
    # Line 2062
    lw	$t8,32516($s1)
    # Line 2063
    slti	$t9,$a2,33
    # Line 2064
    move	$a5,$s2
    sra	$a7,$a2,0x1
    # Line 2063
    beqz	$t9,.L0d973fdc
    # Line 2062
    addu	$s3,$t8,$s3
    # Line 2064
    blez	$a7,.L0d973efc
    move	$a6,$s3
    li	$a0,1
    slt	$at,$a7,$a0
    movz	$a0,$a7,$at
    andi	$ra,$a0,0x1
    beqz	$ra,.L0d973ef0
    sra	$t2,$a0,0x1
    addiu	$a5,$s2,2
    andi	$v1,$a5,0x7
    addiu	$a6,$s3,2
    lhu	$v0,0($s3)
    addiu	$a7,$a7,-1
    bnez	$v1,.L0d973ef0
    sh	$v0,0($s2)
    addiu	$a3,$s2,7706
    addiu	$a5,$s2,26
    andi	$a2,$a5,0x1e0
    b	.L0d973ef0
    movz	$a5,$a3,$a2
    nop
.L0d973f80:
    addiu	$a5,$a5,2
    andi	$t0,$a5,0x7
    lhu	$a4,2($a6)
    addiu	$a6,$a6,4
    beqz	$t0,.L0d973fc8
    sh	$a4,-2($a5)
.L0d973f98:
    addiu	$a5,$a5,2
    blez	$a7,.L0d973ef8
    andi	$t2,$a5,0x7
    lhu	$t1,0($a6)
.L0d973fa8:
    addiu	$a7,$a7,-2
    bnez	$t2,.L0d973f80
    sh	$t1,-2($a5)
    addiu	$a5,$a5,24
    addiu	$t8,$a5,7680
    andi	$t3,$a5,0x1e0
    b	.L0d973f80
    movz	$a5,$t8,$t3
.L0d973fc8:
    addiu	$a5,$a5,24
    addiu	$ra,$a5,7680
    andi	$t9,$a5,0x1e0
    b	.L0d973f98
    movz	$a5,$ra,$t9
.L0d973fdc:
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,11952
    move	$a0,$s3
    sd	$a1,72($sp)
    bal __glCrmPickTextureProcs
    move	$a1,$s2
    ld	$a1,72($sp)
    lwc1	$f4,_lit_3f800000
    b	.L0d973efc
    lw	$a0,32512($s0)
    nop
    nop
    nop
.L0d974010:
    # Line 2059
    addiu	$a5,$a5,2
    blez	$t0,.L0d973e4c
    andi	$at,$a5,0x7
    lhu	$ra,0($a6)
.L0d974020:
    addiu	$t0,$t0,-2
    beqz	$at,.L0d974058
    sh	$ra,-2($a5)
.L0d97402c:
    addiu	$a5,$a5,2
    andi	$v1,$a5,0x7
    lhu	$v0,2($a6)
    addiu	$a6,$a6,4
    bnez	$v1,.L0d974010
    sh	$v0,-2($a5)
    addiu	$a5,$a5,24
    addiu	$a2,$a5,7680
    andi	$a0,$a5,0x1e0
    b	.L0d974010
    movz	$a5,$a2,$a0
.L0d974058:
    addiu	$a5,$a5,24
    addiu	$a4,$a5,7680
    andi	$a3,$a5,0x1e0
    b	.L0d97402c
    movz	$a5,$a4,$a3
.L0d97406c:
    # Line 2051
    addiu	$a5,$a5,24
    addiu	$t2,$a5,7680
    andi	$t1,$a5,0x1e0
    b	.L0d973b00
    movz	$a5,$t2,$t1
.L0d974080:
    # Line 2059
    addiu	$t9,$t9,11952
    sd	$a1,72($sp)
    addu	$a1,$t2,$a3
    move	$a0,$a2
    bal __glCrmPickTextureProcs
    move	$a2,$t1
    ld	$a1,72($sp)
    b	.L0d973e4c
    lwc1	$f4,_lit_3f800000
.L0d9740a4:
    # Line 2061
    andi	$at,$s6,0x3f
    beqz	$at,.L0d9740f0
    nop
    # Line 2078
    beqz	$a0,.L0d97410c
    nop
    lbu	$v0,32209($s0)
    beqz	$v0,.L0d974114
    nop
    b	.L0d973d78
    li	$a0,-5664
.L0d9740cc:
    b	.L0d973ed8
    li	$a0,2016
.L0d9740d4:
    b	.L0d973dac
    li	$a0,2016
.L0d9740dc:
    # Line 2059
    addiu	$a5,$a5,24
    addiu	$a2,$a5,7680
    andi	$v1,$a5,0x1e0
    b	.L0d973e3c
    movz	$a5,$a2,$v1
.L0d9740f0:
    # Line 2061
    beqz	$a0,.L0d97411c
    nop
    # Line 2078
    lbu	$a3,32209($s0)
    beqz	$a3,.L0d974124
    nop
    b	.L0d973d78
    li	$a0,25056
.L0d97410c:
    b	.L0d973ed8
    li	$a0,-5664
.L0d974114:
    b	.L0d973dac
    li	$a0,-5664
.L0d97411c:
    b	.L0d973ed8
    # Line 2061
    li	$a0,25056
.L0d974124:
    # Line 2078
    b	.L0d973dac
    li	$a0,25056
.L0d97412c:
    b	.L0d973b78
    # Line 2051
    addiu	$a7,$a7,4
    nop
    nop
    nop
.L0d974140:
    b	.L0d973cd8
    # Line 2056
    addiu	$a7,$a7,4
.L0d974148:
    # Line 2055
    addu	$s2,$s5,$s2
    b	.L0d973c0c
    # Line 2056
    lw	$t0,32520($s1)
.L0d974154:
    # Line 2064
    andi	$t2,$a5,0x7
    b	.L0d973fa8
    lhu	$t1,0($a6)
.L0d974160:
    # Line 2063
    addu	$s2,$s5,$s2
    b	.L0d973f14
    lw	$a2,32520($s1)
.L0d97416c:
    # Line 2059
    andi	$at,$a5,0x7
    b	.L0d974020
    lhu	$ra,0($a6)
.end crmSubtileSpan

# Function: crmTileTexels
# Declared: Line 2102 (Source lines: 2102-2143)
# Address: 0x0d974180 - 0x0d974550 (Size: 976 bytes, Frame: 0)
.ent crmTileTexels
crmTileTexels:
    # Line 2102
    slti	$at,$a2,2
    move	$a4,$a0
    bnez	$at,.L0d974540
    move	$a5,$a1
    # Line 2104
    andi	$v0,$a4,0x7
    andi	$a0,$a1,0x7
    bne	$a0,$v0,.L0d974548
    # Line 2106
    nop	# was lw $t9, -22808($gp) # &bcopy
    # Line 2110
    beqz	$a0,.L0d9741f8
    sra	$a2,$a2,0x1
    # Line 2112
    move	$a0,$a4
.L0d9741ac:
    # Line 2114
    addiu	$a0,$a0,2
    addiu	$a2,$a2,-1
    lhu	$v1,-2($a0)
    addiu	$a1,$a1,2
    # Line 2113
    andi	$a3,$a1,0x7
    blez	$a2,.L0d9741f0
    # Line 2114
    sh	$v1,-2($a1)
    # Line 2113
    beqz	$a3,.L0d9741f4
    # Line 2116
    move	$a5,$a1
    # Line 2114
    addiu	$a0,$a0,2
    addiu	$a2,$a2,-1
    lhu	$a4,-2($a0)
    addiu	$a1,$a1,2
    # Line 2113
    andi	$a5,$a1,0x7
    blez	$a2,.L0d9741f0
    # Line 2114
    sh	$a4,-2($a1)
    # Line 2113
    bnez	$a5,.L0d9741ac
.L0d9741f0:
    # Line 2116
    move	$a5,$a1
.L0d9741f4:
    move	$a4,$a0
.L0d9741f8:
    blez	$a2,.L0d974540
    # Line 2119
    slti	$a6,$a2,64
    move	$a1,$a5
    move	$a0,$a4
    bnez	$a6,.L0d9743e8
    # Line 2126
    slti	$a3,$a2,32
    # Line 2119
    slt	$a7,$a2,$zero
    addiu	$a6,$a2,63
    movz	$a6,$a2,$a7
    sra	$a6,$a6,0x6
    andi	$a7,$a6,0x1
    beqz	$a7,.L0d9742bc
    sra	$t3,$a6,0x1
    # Line 2122
    ld	$t2,0($a4)
    sd	$t2,0($a5)
    ld	$t1,8($a4)
    sd	$t1,8($a5)
    ld	$t0,16($a4)
    sd	$t0,16($a5)
    ld	$a7,24($a4)
    sd	$a7,24($a5)
    # Line 2123
    ld	$a3,32($a4)
    sd	$a3,32($a5)
    ld	$a1,40($a4)
    sd	$a1,40($a5)
    ld	$a0,48($a4)
    sd	$a0,48($a5)
    ld	$v1,56($a4)
    sd	$v1,56($a5)
    # Line 2124
    ld	$v0,64($a4)
    sd	$v0,64($a5)
    ld	$at,72($a4)
    sd	$at,72($a5)
    ld	$t9,80($a4)
    sd	$t9,80($a5)
    ld	$t8,88($a4)
    sd	$t8,88($a5)
    # Line 2125
    ld	$t3,96($a4)
    sd	$t3,96($a5)
    ld	$t2,104($a4)
    sd	$t2,104($a5)
    ld	$t1,112($a4)
    sd	$t1,112($a5)
    # Line 2126
    addiu	$a2,$a2,-64
    # Line 2125
    ld	$t0,120($a4)
    # Line 2126
    addiu	$a1,$a5,128
    addiu	$a0,$a4,128
    # Line 2125
    sd	$t0,120($a5)
    sra	$t3,$a6,0x1
.L0d9742bc:
    beqz	$t3,.L0d9743e4
    nop
    nop
    nop
    nop
.L0d9742d0:
    # Line 2122
    ld	$v1,0($a0)
    sd	$v1,0($a1)
    ld	$v0,8($a0)
    sd	$v0,8($a1)
    ld	$at,16($a0)
    sd	$at,16($a1)
    ld	$t9,24($a0)
    sd	$t9,24($a1)
    # Line 2123
    ld	$t8,32($a0)
    sd	$t8,32($a1)
    ld	$t3,40($a0)
    sd	$t3,40($a1)
    ld	$t2,48($a0)
    sd	$t2,48($a1)
    ld	$t1,56($a0)
    sd	$t1,56($a1)
    # Line 2124
    ld	$t0,64($a0)
    sd	$t0,64($a1)
    ld	$a7,72($a0)
    sd	$a7,72($a1)
    ld	$a6,80($a0)
    sd	$a6,80($a1)
    ld	$a5,88($a0)
    sd	$a5,88($a1)
    # Line 2125
    ld	$a4,96($a0)
    sd	$a4,96($a1)
    ld	$a3,104($a0)
    sd	$a3,104($a1)
    ld	$v1,112($a0)
    sd	$v1,112($a1)
    ld	$v0,120($a0)
    sd	$v0,120($a1)
    # Line 2122
    ld	$at,128($a0)
    sd	$at,128($a1)
    ld	$t9,136($a0)
    sd	$t9,136($a1)
    ld	$t8,144($a0)
    sd	$t8,144($a1)
    ld	$t3,152($a0)
    sd	$t3,152($a1)
    # Line 2123
    ld	$t2,160($a0)
    sd	$t2,160($a1)
    ld	$t1,168($a0)
    sd	$t1,168($a1)
    ld	$t0,176($a0)
    sd	$t0,176($a1)
    ld	$a7,184($a0)
    sd	$a7,184($a1)
    # Line 2124
    ld	$a6,192($a0)
    sd	$a6,192($a1)
    ld	$a5,200($a0)
    sd	$a5,200($a1)
    ld	$a4,208($a0)
    sd	$a4,208($a1)
    ld	$a3,216($a0)
    sd	$a3,216($a1)
    # Line 2125
    ld	$v1,224($a0)
    sd	$v1,224($a1)
    ld	$v0,232($a0)
    sd	$v0,232($a1)
    # Line 2126
    addiu	$a2,$a2,-128
    # Line 2125
    ld	$at,240($a0)
    # Line 2126
    slti	$t9,$a2,64
    # Line 2125
    sd	$at,240($a1)
    # Line 2126
    addiu	$a1,$a1,256
    # Line 2125
    ld	$t8,248($a0)
    # Line 2126
    addiu	$a0,$a0,256
    beqz	$t9,.L0d9742d0
    # Line 2125
    sd	$t8,-8($a1)
.L0d9743e4:
    # Line 2126
    slti	$a3,$a2,32
.L0d9743e8:
    bnez	$a3,.L0d974440
    # Line 2131
    slti	$t8,$a2,4
    # Line 2129
    ld	$t3,0($a0)
    sd	$t3,0($a1)
    ld	$t2,8($a0)
    sd	$t2,8($a1)
    ld	$t1,16($a0)
    sd	$t1,16($a1)
    ld	$t0,24($a0)
    sd	$t0,24($a1)
    # Line 2130
    ld	$a7,32($a0)
    sd	$a7,32($a1)
    ld	$a6,40($a0)
    sd	$a6,40($a1)
    ld	$a5,48($a0)
    sd	$a5,48($a1)
    # Line 2131
    addiu	$a1,$a1,64
    # Line 2130
    ld	$a4,56($a0)
    # Line 2131
    addiu	$a2,$a2,-32
    addiu	$a0,$a0,64
    # Line 2130
    sd	$a4,-8($a1)
    # Line 2131
    slti	$t8,$a2,4
.L0d974440:
    slt	$a6,$a2,$zero
    bnez	$t8,.L0d9744c4
    addiu	$a5,$a2,3
    movz	$a5,$a2,$a6
    sra	$a5,$a5,0x2
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d97447c
    sra	$t0,$a5,0x2
.L0d974460:
    addiu	$a4,$a4,-1
    # Line 2134
    addiu	$a2,$a2,-4
    addiu	$a1,$a1,8
    ld	$a7,0($a0)
    addiu	$a0,$a0,8
    bnez	$a4,.L0d974460
    sd	$a7,-8($a1)
.L0d97447c:
    beqz	$t0,.L0d9744c4
    nop
    nop
    nop
    nop
.L0d974490:
    ld	$t9,0($a0)
    sd	$t9,0($a1)
    ld	$t8,8($a0)
    sd	$t8,8($a1)
    addiu	$a2,$a2,-16
    ld	$t3,16($a0)
    slti	$t2,$a2,4
    sd	$t3,16($a1)
    addiu	$a1,$a1,32
    ld	$t1,24($a0)
    addiu	$a0,$a0,32
    beqz	$t2,.L0d974490
    sd	$t1,-8($a1)
.L0d9744c4:
    blez	$a2,.L0d974540
    # Line 2137
    li	$a5,1
    slt	$at,$a2,$a5
    movz	$a5,$a2,$at
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d9744fc
    sra	$v1,$a5,0x2
.L0d9744e0:
    addiu	$a4,$a4,-1
    # Line 2140
    addiu	$a2,$a2,-1
    # Line 2139
    addiu	$a1,$a1,2
    lhu	$v0,0($a0)
    addiu	$a0,$a0,2
    bnez	$a4,.L0d9744e0
    sh	$v0,-2($a1)
.L0d9744fc:
    beqz	$v1,.L0d974540
    nop
    nop
    nop
    nop
.L0d974510:
    lhu	$a6,0($a0)
    sh	$a6,0($a1)
    lhu	$a5,2($a0)
    sh	$a5,2($a1)
    lhu	$a4,4($a0)
    # Line 2140
    addiu	$a2,$a2,-4
    # Line 2139
    sh	$a4,4($a1)
    addiu	$a1,$a1,8
    lhu	$a3,6($a0)
    addiu	$a0,$a0,8
    # Line 2140
    bgtz	$a2,.L0d974510
    # Line 2139
    sh	$a3,-2($a1)
.L0d974540:
    # Line 2143
    jr	$ra
    nop
.L0d974548:
    jr	$t9
    # Line 2106
    move	$a0,$a4
.end crmTileTexels

# Function: crmTileSpan
# Declared: Line 2146 (Source lines: 2148-2187)
# Address: 0x0d974550 - 0x0d974a3c (Size: 1260 bytes, Frame: 208)
.ent crmTileSpan
crmTileSpan:
    # Line 2148
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    sd	$s4,56($sp)
    sd	$ra,40($sp)
    sd	$s1,64($sp)
    lui	$v0,0xe
    # Line 2153
    lwc1	$f0,200($a1)
    # Line 2148
    addiu	$v0,$v0,-14276
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2153
    lwc1	$f4,_lit_3f800000
    sd	$s5,72($sp)
    # Line 2152
    lwc1	$f1,196($a1)
    # Line 2148
    sd	$s3,8($sp)
    # Line 2153
    add.s	$f0,$f0,$f4
    swc1	$f0,200($a1)
    # Line 2152
    trunc.w.s	$f1,$f1
    # Line 2153
    lw	$at,32556($a0)
    # Line 2148
    sd	$s0,24($sp)
    # Line 2153
    trunc.w.s	$f0,$f0
    # Line 2148
    move	$s0,$a0
    move	$s3,$a3
    sd	$s2,0($sp)
    # Line 2152
    mfc1	$t0,$f1
    # Line 2148
    move	$s2,$a2
    # Line 2153
    lw	$a5,32520($a0)
    beqz	$at,.L0d974938
    mfc1	$t3,$f0
    # Line 2157
    sra	$a6,$a5,0x1
    blez	$a6,.L0d974710
    addu	$a7,$t0,$a3
    li	$a3,1
    slt	$v1,$a6,$a3
    movz	$a3,$a6,$v1
    andi	$a0,$a3,0x3
    beqz	$a0,.L0d974628
    li	$a5,1
.L0d9745e4:
    addiu	$a5,$a5,1
    andi	$t1,$a5,0x1
    addu	$t1,$t1,$t1
    lhu	$a4,2($a7)
    addu	$t1,$s0,$t1
    addiu	$a2,$a2,2
    lhu	$t1,32556($t1)
    addiu	$a6,$a6,-1
    addiu	$a7,$a7,2
    lhu	$a1,-2($a2)
    addiu	$a0,$a0,-1
    nor	$t0,$t1,$zero
    and	$a1,$a1,$t1
    and	$a4,$a4,$t0
    or	$a1,$a1,$a4
    bnez	$a0,.L0d9745e4
    sh	$a1,-2($a7)
.L0d974628:
    sra	$t2,$a3,0x2
    beqz	$t2,.L0d974710
    nop
    nop
    nop
    nop
.L0d974640:
    addiu	$ra,$a5,1
    andi	$ra,$ra,0x1
    addu	$ra,$ra,$ra
    lhu	$t8,2($a7)
    addu	$ra,$s0,$ra
    addiu	$t1,$a5,2
    lhu	$ra,32556($ra)
    lhu	$t2,0($a2)
    andi	$t1,$t1,0x1
    addu	$t1,$t1,$t1
    nor	$t9,$ra,$zero
    lhu	$a4,4($a7)
    and	$t2,$t2,$ra
    and	$t8,$t8,$t9
    addu	$t1,$s0,$t1
    or	$t2,$t2,$t8
    sh	$t2,0($a7)
    addiu	$a1,$a5,3
    lhu	$t1,32556($t1)
    andi	$a1,$a1,0x1
    lhu	$a3,2($a2)
    addu	$a1,$a1,$a1
    nor	$t0,$t1,$zero
    lhu	$v1,6($a7)
    and	$a3,$a3,$t1
    and	$a4,$a4,$t0
    addu	$a1,$s0,$a1
    or	$a3,$a3,$a4
    sh	$a3,2($a7)
    addiu	$a5,$a5,4
    lhu	$a1,32556($a1)
    andi	$at,$a5,0x1
    lhu	$v0,4($a2)
    addu	$at,$at,$at
    nor	$a0,$a1,$zero
    lhu	$t9,8($a7)
    and	$v0,$v0,$a1
    and	$v1,$v1,$a0
    addu	$at,$s0,$at
    or	$v0,$v0,$v1
    sh	$v0,4($a7)
    addiu	$a2,$a2,8
    lhu	$at,32556($at)
    addiu	$a7,$a7,8
    lhu	$t8,-2($a2)
    addiu	$a6,$a6,-4
    nor	$ra,$at,$zero
    and	$t8,$t8,$at
    and	$t9,$t9,$ra
    or	$t8,$t8,$t9
    bgtz	$a6,.L0d974640
    sh	$t8,-2($a7)
.L0d974710:
    lw	$a0,32512($s0)
    slti	$at,$a0,2
    bnez	$at,.L0d9748ac
    # Line 2167
    andi	$a2,$t3,0x7f
    # Line 2157
    lui	$s5,0x1
    li	$s4,1
    addiu	$s1,$s0,4
    # Line 2161
    addu	$s3,$s5,$s3
.L0d974730:
    # Line 2162
    lw	$a5,32520($s1)
    # Line 2160
    lw	$a6,32516($s1)
    # Line 2162
    sra	$a5,$a5,0x1
    move	$t0,$s3
    # Line 2160
    addu	$s2,$a6,$s2
    # Line 2162
    blez	$a5,.L0d974894
    move	$a6,$s2
    li	$a0,1
    slt	$a7,$a5,$a0
    movz	$a0,$a5,$a7
    andi	$t1,$a0,0x3
    li	$a7,1
    beqz	$t1,.L0d9747ac
    sra	$at,$a0,0x2
.L0d974768:
    addiu	$a7,$a7,1
    andi	$ra,$a7,0x1
    addu	$ra,$ra,$ra
    lhu	$t8,2($t0)
    addu	$ra,$s0,$ra
    addiu	$a6,$a6,2
    lhu	$ra,32556($ra)
    addiu	$a5,$a5,-1
    addiu	$t0,$t0,2
    lhu	$t2,-2($a6)
    addiu	$t1,$t1,-1
    nor	$t9,$ra,$zero
    and	$t2,$t2,$ra
    and	$t8,$t8,$t9
    or	$t2,$t2,$t8
    bnez	$t1,.L0d974768
    sh	$t2,-2($t0)
.L0d9747ac:
    beqz	$at,.L0d974890
    nop
    nop
    nop
    nop
.L0d9747c0:
    addiu	$a0,$a7,1
    andi	$a0,$a0,0x1
    addu	$a0,$a0,$a0
    lhu	$v0,2($t0)
    addu	$a0,$s0,$a0
    addiu	$ra,$a7,2
    lhu	$a0,32556($a0)
    lhu	$at,0($a6)
    andi	$ra,$ra,0x1
    addu	$ra,$ra,$ra
    nor	$v1,$a0,$zero
    lhu	$t8,4($t0)
    and	$at,$at,$a0
    and	$v0,$v0,$v1
    addu	$ra,$s0,$ra
    or	$at,$at,$v0
    sh	$at,0($t0)
    addiu	$t1,$a7,3
    lhu	$ra,32556($ra)
    andi	$t1,$t1,0x1
    lhu	$t2,2($a6)
    addu	$t1,$t1,$t1
    nor	$t9,$ra,$zero
    lhu	$a3,6($t0)
    and	$t2,$t2,$ra
    and	$t8,$t8,$t9
    addu	$t1,$s0,$t1
    or	$t2,$t2,$t8
    sh	$t2,2($t0)
    addiu	$a7,$a7,4
    lhu	$t1,32556($t1)
    andi	$a1,$a7,0x1
    lhu	$a2,4($a6)
    addu	$a1,$a1,$a1
    nor	$a4,$t1,$zero
    lhu	$v1,8($t0)
    and	$a2,$a2,$t1
    and	$a3,$a3,$a4
    addu	$a1,$s0,$a1
    or	$a2,$a2,$a3
    sh	$a2,4($t0)
    addiu	$a6,$a6,8
    lhu	$a1,32556($a1)
    addiu	$t0,$t0,8
    lhu	$v0,-2($a6)
    addiu	$a5,$a5,-4
    nor	$a0,$a1,$zero
    and	$v0,$v0,$a1
    and	$v1,$v1,$a0
    or	$v0,$v0,$v1
    bgtz	$a5,.L0d9747c0
    sh	$v0,-2($t0)
.L0d974890:
    lw	$a0,32512($s0)
.L0d974894:
    # Line 2159
    addiu	$s4,$s4,1
    slt	$a1,$s4,$a0
    addiu	$s1,$s1,4
    bnez	$a1,.L0d974730
    # Line 2161
    addu	$s3,$s5,$s3
.L0d9748a8:
    # Line 2167
    andi	$a2,$t3,0x7f
.L0d9748ac:
    beqz	$a2,.L0d97499c
    lbu	$a2,32209($s0)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,56($sp)
    ld	$s1,64($sp)
    # Line 2181
    beqz	$a2,.L0d974924
    ld	$s5,72($sp)
    move	$a0,$zero
.L0d9748d0:
    # Line 2179
    ld	$a3,16($sp)
    lwc1	$f1,200($a3)
    add.s	$f1,$f1,$f4
    trunc.w.s	$f2,$f1
    mfc1	$a4,$f2
    # Line 2178
    lw	$a5,96($a3)
    # Line 2179
    andi	$a4,$a4,0x7f
    # Line 2178
    addu	$a0,$a5,$a0
    # Line 2179
    beqz	$a4,.L0d9749c0
    swc1	$f1,200($a3)
.L0d9748f8:
    # Line 2181
    beqz	$a0,.L0d974928
    ld	$ra,40($sp)
    # Line 2187
    ld	$gp,32($sp)
    # Line 2185
    ld	$a6,16($sp)
    ld	$ra,40($sp)
    lw	$a5,92($a6)
    # Line 2187
    ld	$s0,24($sp)
    addiu	$sp,$sp,80
    # Line 2185
    addu	$a5,$a0,$a5
    # Line 2187
    jr	$ra
    # Line 2185
    sw	$a5,92($a6)
.L0d974924:
    ld	$ra,40($sp)
.L0d974928:
    ld	$s0,24($sp)
    # Line 2187
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d974938:
    # Line 2159
    slti	$a6,$a5,33
    bnez	$a6,.L0d974964
    sd	$t3,48($sp)
    # Line 2165
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,16768
    addu	$a1,$t0,$a3
    move	$a0,$a2
    bal __glCrmPickTextureProcs
    move	$a2,$a5
    b	.L0d97497c
    lw	$ra,32512($s0)
.L0d974964:
    # lw $t9, -22808($gp) # &bcopy
    move	$a0,$a2
    move	$a2,$a5
    jal	bcopy
    addu	$a1,$t0,$a3
    lw	$ra,32512($s0)
.L0d97497c:
    slti	$ra,$ra,2
    ld	$t3,48($sp)
    bnez	$ra,.L0d9748a8
    lwc1	$f4,_lit_3f800000
    lui	$s5,0x1
    li	$s4,1
    b	.L0d974a30
    addiu	$s1,$s0,4
.L0d97499c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,56($sp)
    ld	$s1,64($sp)
    ld	$s5,72($sp)
    # Line 2175
    bnez	$a2,.L0d9748d0
    lw	$a0,32516($s0)
    b	.L0d9748f8
    nop
.L0d9749c0:
    # Line 2181
    lw	$at,32516($s0)
    b	.L0d9748f8
    addu	$a0,$at,$a0
.L0d9749cc:
    # Line 2170
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,16768
    move	$a0,$s2
    bal __glCrmPickTextureProcs
    move	$a1,$s3
.L0d9749e0:
    # Line 2167
    lw	$ra,32512($s0)
    addiu	$s4,$s4,1
    slt	$ra,$s4,$ra
    # Line 2169
    addu	$s3,$s5,$s3
    # Line 2167
    beqz	$ra,.L0d974a24
    addiu	$s1,$s1,4
    # Line 2169
    lw	$a2,32520($s1)
.L0d9749fc:
    # Line 2168
    lw	$at,32516($s1)
    # Line 2169
    slti	$v0,$a2,33
    beqz	$v0,.L0d9749cc
    # Line 2168
    addu	$s2,$at,$s2
    # Line 2170
    # lw $t9, -22808($gp) # &bcopy
    move	$a0,$s2
    jal	bcopy
    move	$a1,$s3
    b	.L0d9749e0
    nop
.L0d974a24:
    ld	$t3,48($sp)
    b	.L0d9748a8
    lwc1	$f4,_lit_3f800000
.L0d974a30:
    # Line 2169
    addu	$s3,$s5,$s3
    b	.L0d9749fc
    lw	$a2,32520($s1)
.end crmTileSpan

# Function: crmCopySpan
# Declared: Line 2190 (Source lines: 2192-2209)
# Address: 0x0d974a40 - 0x0d974c64 (Size: 548 bytes, Frame: 32)
.ent crmCopySpan
crmCopySpan:
    # Line 2194
    lw	$v1,184($a1)
    lw	$v0,100($a1)
    mult	$v0,$v1
    # Line 2192
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$a7,$a2
    move	$s0,$a0
    # Line 2194
    lw	$v0,32556($a0)
    # Line 2192
    sd	$s1,16($sp)
    move	$s1,$a1
    lui	$at,0xe
    addiu	$at,$at,-15540
    # Line 2194
    mflo	$a5
    sd	$gp,0($sp)
    beqz	$v0,.L0d974bfc
    # Line 2192
    addu	$gp,$t9,$at
    # Line 2198
    sra	$a1,$a5,0x1
    li	$a5,1
    andi	$a0,$a1,0x3
    blez	$a1,.L0d974bc0
    addiu	$a6,$a1,-1
    li	$t1,-1
    beqz	$a0,.L0d974ae8
    sra	$t3,$a1,0x2
.L0d974aa0:
    addiu	$a5,$a5,1
    andi	$t2,$a5,0x1
    addu	$t2,$t2,$t2
    lhu	$a7,2($a3)
    addu	$t2,$s0,$t2
    addiu	$a2,$a2,2
    lhu	$t2,32556($t2)
    addiu	$a6,$a6,-1
    addiu	$a3,$a3,2
    lhu	$a4,-2($a2)
    addiu	$a0,$a0,-1
    nor	$t0,$t2,$zero
    and	$a4,$a4,$t2
    and	$a7,$a7,$t0
    or	$a4,$a4,$a7
    bnez	$a0,.L0d974aa0
    sh	$a4,-2($a3)
    sra	$t3,$a1,0x2
.L0d974ae8:
    beqz	$t3,.L0d974bc0
    nop
.L0d974af0:
    addiu	$v0,$a5,1
    andi	$v0,$v0,0x1
    addu	$v0,$v0,$v0
    lhu	$t9,2($a3)
    addu	$v0,$s0,$v0
    addiu	$t3,$a5,2
    lhu	$v0,32556($v0)
    lhu	$t8,0($a2)
    andi	$t3,$t3,0x1
    addu	$t3,$t3,$t3
    nor	$at,$v0,$zero
    lhu	$t0,4($a3)
    and	$t8,$t8,$v0
    and	$t9,$t9,$at
    addu	$t3,$s0,$t3
    or	$t8,$t8,$t9
    sh	$t8,0($a3)
    addiu	$a4,$a5,3
    lhu	$t3,32556($t3)
    andi	$a4,$a4,0x1
    lhu	$a7,2($a2)
    addu	$a4,$a4,$a4
    nor	$t2,$t3,$zero
    lhu	$a0,6($a3)
    and	$a7,$a7,$t3
    and	$t0,$t0,$t2
    addu	$a4,$s0,$a4
    or	$a7,$a7,$t0
    sh	$a7,2($a3)
    addiu	$a5,$a5,4
    lhu	$a4,32556($a4)
    andi	$v0,$a5,0x1
    lhu	$v1,4($a2)
    addu	$v0,$v0,$v0
    nor	$a1,$a4,$zero
    lhu	$t9,8($a3)
    and	$v1,$v1,$a4
    and	$a0,$a0,$a1
    addu	$v0,$s0,$v0
    or	$v1,$v1,$a0
    sh	$v1,4($a3)
    addiu	$a2,$a2,8
    lhu	$v0,32556($v0)
    addiu	$a3,$a3,8
    lhu	$t8,-2($a2)
    addiu	$a6,$a6,-4
    nor	$at,$v0,$zero
    and	$t8,$t8,$v0
    and	$t9,$t9,$at
    or	$t8,$t8,$t9
    bne	$a6,$t1,.L0d974af0
    sh	$t8,-2($a3)
.L0d974bc0:
    # Line 2200
    lbu	$v1,32209($s0)
    # Line 2205
    lwc1	$f0,_lit_40000000
    # Line 2209
    ld	$s0,8($sp)
    # Line 2200
    beqz	$v1,.L0d974c28
    lwc1	$f4,200($s1)
    # Line 2209
    ld	$gp,0($sp)
    # Line 2203
    lw	$a1,92($s1)
    # Line 2205
    add.s	$f0,$f4,$f0
    # Line 2203
    lw	$a0,96($s1)
    # Line 2205
    swc1	$f0,200($s1)
    # Line 2203
    addu	$a0,$a0,$a1
    sw	$a0,92($s1)
    # Line 2209
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d974bfc:
    # Line 2198
    slti	$a2,$a5,33
    bnez	$a2,.L0d974c48
    sd	$ra,24($sp)
    # Line 2200
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,16768
    move	$a0,$a7
    move	$a1,$a3
    bal __glCrmPickTextureProcs
    move	$a2,$a5
    b	.L0d974bc0
    ld	$ra,24($sp)
.L0d974c28:
    # Line 2207
    lwc1	$f1,_lit_3f800000
    # Line 2209
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    # Line 2207
    add.s	$f1,$f4,$f1
    swc1	$f1,200($s1)
    # Line 2209
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d974c48:
    # Line 2200
    # lw $t9, -22808($gp) # &bcopy
    move	$a0,$a7
    move	$a1,$a3
    jal	bcopy
    move	$a2,$a5
    b	.L0d974bc0
    ld	$ra,24($sp)
.end crmCopySpan

# Function: crmCheckFastTexStore
# Declared: Line 2212 (Source lines: 2220-2351)
# Address: 0x0d974c70 - 0x0d974f84 (Size: 788 bytes, Frame: 0)
.ent crmCheckFastTexStore
crmCheckFastTexStore:
    # Line 2222
    lw	$v1,32232($a0)
    # Line 2220
    lw	$v0,32228($a0)
    lw	$at,-22416($gp)
    # Line 2222
    beqz	$v1,.L0d974c8c
    # Line 2220
    movn	$v0,$zero,$at
    # Line 2222
    beqz	$v0,.L0d974c98
    nop
.L0d974c8c:
    lbu	$a7,1188($a0)
    beqz	$a7,.L0d974ca0
    # Line 2230
    li	$t1,5121
.L0d974c98:
    # Line 2349
    jr	$ra
    # Line 2224
    move	$v0,$zero
.L0d974ca0:
    # Line 2230
    beq	$t1,$a3,.L0d974d24
    li	$t0,5123
    beq	$a3,$t0,.L0d974d60
    li	$t2,0x8033
    beq	$a3,$t2,.L0d974d88
    li	$t3,0x8034
    beq	$a3,$t3,.L0d974da0
    li	$t8,5122
    beq	$a3,$t8,.L0d974cd0
    # Line 2283
    li	$t9,6409
    # Line 2349
    jr	$ra
    # Line 2287
    move	$v0,$zero
.L0d974cd0:
    # Line 2283
    bne	$a2,$t9,.L0d974d58
    nop
    beqz	$v0,.L0d974d58
    slti	$at,$a4,16
    bnez	$at,.L0d974d58
    slti	$v1,$a5,8
    bnez	$v1,.L0d974d58
    nop
    # Line 2285
    lw	$a0,68($a1)
.L0d974cf4:
    # Line 2288
    lui	$a4,0xffff
.L0d974cf8:
    ori	$a4,$a4,0x7fc2
    la	$a1,sub_0da40000
    addu	$a4,$a0,$a4
    sltiu	$a5,$a4,27
    addiu	$a1,$a1,17156
    sll	$a4,$a4,0x2
    beqz	$a5,.L0d974df4
    addu	$a1,$a1,$a4
    lw	$a5,0($a1)
    jr	$a5
    # Line 2319
    li	$a7,6410
.L0d974d24:
    # Line 2232
    lw	$a0,68($a1)
    li	$a7,0x8045
    beq	$a0,$a7,.L0d974e28
    li	$t0,0x8058
    beq	$a0,$t0,.L0d974e38
    li	$t2,0x8056
    beq	$a0,$t2,.L0d974dd4
    # Line 2241
    li	$t2,6407
    # Line 2232
    li	$t3,0x8057
    beq	$a0,$t3,.L0d974dd4
    # Line 2241
    li	$t2,6407
    # Line 2349
    jr	$ra
    # Line 2246
    move	$v0,$zero
.L0d974d58:
    # Line 2349
    jr	$ra
    # Line 2284
    move	$v0,$zero
.L0d974d60:
    # Line 2250
    lw	$a0,68($a1)
    li	$t8,0x803e
    beq	$a0,$t8,.L0d974dc0
    li	$t9,0x8042
    beq	$a0,$t9,.L0d974dc0
    li	$at,0x804d
    beq	$a0,$at,.L0d974dc0
    nop
    # Line 2349
    jr	$ra
    # Line 2257
    move	$v0,$zero
.L0d974d88:
    # Line 2261
    lw	$a0,68($a1)
    li	$v1,0x8056
    beq	$a0,$v1,.L0d974dfc
    nop
    # Line 2349
    jr	$ra
    # Line 2266
    move	$v0,$zero
.L0d974da0:
    # Line 2270
    lw	$a0,68($a1)
    li	$a7,0x8057
    beq	$a0,$a7,.L0d974e58
    li	$t0,0x8058
    beq	$a0,$t0,.L0d974e0c
    nop
    # Line 2349
    jr	$ra
    # Line 2279
    move	$v0,$zero
.L0d974dc0:
    # Line 2254
    beqz	$v0,.L0d974cf8
    # Line 2288
    lui	$a4,0xffff
    # Line 2349
    jr	$ra
    # Line 2254
    move	$v0,$zero
    # Line 2241
    li	$t2,6407
.L0d974dd4:
    beq	$a2,$t2,.L0d974de4
    li	$t3,6408
    bne	$a2,$t3,.L0d974dec
    nop
.L0d974de4:
    beqz	$v0,.L0d974cf8
    # Line 2288
    lui	$a4,0xffff
.L0d974dec:
    # Line 2349
    jr	$ra
    # Line 2244
    move	$v0,$zero
.L0d974df4:
    # Line 2349
    jr	$ra
    move	$v0,$zero
.L0d974dfc:
    # Line 2263
    beqz	$v0,.L0d974cf8
    # Line 2288
    lui	$a4,0xffff
    # Line 2349
    jr	$ra
    # Line 2263
    move	$v0,$zero
.L0d974e0c:
    # Line 2275
    beqz	$v0,.L0d974e20
    slti	$t8,$a4,16
    bnez	$t8,.L0d974e20
    slti	$t9,$a5,8
    nop
.L0d974e20:
    # Line 2349
    jr	$ra
    # Line 2275
    move	$v0,$zero
.L0d974e28:
    # Line 2234
    beqz	$v0,.L0d974cf8
    # Line 2288
    lui	$a4,0xffff
    # Line 2349
    jr	$ra
    # Line 2234
    move	$v0,$zero
.L0d974e38:
    # Line 2237
    beqz	$v0,.L0d974cf4
    slti	$at,$a4,16
    bnez	$at,.L0d974e50
    slti	$v1,$a5,8
    beqz	$v1,.L0d974cf8
    # Line 2288
    lui	$a4,0xffff
.L0d974e50:
    # Line 2349
    jr	$ra
    # Line 2237
    move	$v0,$zero
.L0d974e58:
    # Line 2272
    beqz	$v0,.L0d974cf8
    # Line 2288
    lui	$a4,0xffff
    # Line 2349
    jr	$ra
    # Line 2272
    move	$v0,$zero
.L0d974e68:
    # Line 2293
    li	$a0,6403
    beq	$a2,$a0,.L0d974ecc
    li	$a1,6409
    beq	$a2,$a1,.L0d974ecc
    li	$a3,0x8049
    beq	$a2,$a3,.L0d974ecc
    nop
    # Line 2349
    jr	$ra
    # Line 2303
    move	$v0,$zero
.L0d974e8c:
    # Line 2333
    li	$a4,6407
    beq	$a2,$a4,.L0d974f24
    li	$a5,6408
    beq	$a2,$a5,.L0d974efc
    # Line 2338
    li	$v0,1
    # Line 2349
    jr	$ra
    # Line 2345
    move	$v0,$zero
.L0d974ea8:
    # Line 2319
    beq	$a2,$a7,.L0d974edc
    nop
    # Line 2349
    jr	$ra
    # Line 2327
    move	$v0,$zero
.L0d974eb8:
    # Line 2307
    li	$t0,6406
    beq	$a2,$t0,.L0d974eec
    nop
    # Line 2349
    jr	$ra
    # Line 2315
    move	$v0,$zero
.L0d974ecc:
    # Line 2297
    beqz	$v0,.L0d974f34
    # Line 2299
    li	$t9,2
    # Line 2349
    jr	$ra
    # Line 2297
    move	$v0,$zero
.L0d974edc:
    # Line 2321
    beqz	$v0,.L0d974f48
    # Line 2322
    li	$at,2
    # Line 2349
    jr	$ra
    # Line 2321
    move	$v0,$zero
.L0d974eec:
    # Line 2309
    beqz	$v0,.L0d974f5c
    # Line 2311
    li	$a0,2
    # Line 2349
    jr	$ra
    # Line 2309
    move	$v0,$zero
.L0d974efc:
    # Line 2341
    sw	$v0,36($a6)
    # Line 2340
    li	$t2,4
    # Line 2342
    xor	$t3,$t1,$a3
    # Line 2340
    sw	$t2,28($a6)
    # Line 2342
    li	$t8,2
    sltiu	$t3,$t3,1
    movz	$t2,$t8,$t3
    sw	$t2,20($a6)
.L0d974f1c:
    # Line 2349
    jr	$ra
    # Line 2351
    li	$v0,1
.L0d974f24:
    # Line 2335
    beqz	$v0,.L0d974f70
    # Line 2336
    li	$a1,3
    # Line 2349
    jr	$ra
    # Line 2335
    move	$v0,$zero
.L0d974f34:
    # Line 2300
    sw	$t9,20($a6)
    # Line 2299
    sw	$t9,36($a6)
    # Line 2298
    li	$t8,1
    b	.L0d974f1c
    sw	$t8,28($a6)
.L0d974f48:
    # Line 2324
    sw	$at,20($a6)
    # Line 2323
    li	$v0,1
    sw	$v0,36($a6)
    # Line 2322
    b	.L0d974f1c
    sw	$at,28($a6)
.L0d974f5c:
    # Line 2312
    sw	$a0,20($a6)
    # Line 2311
    sw	$a0,36($a6)
    # Line 2310
    li	$v1,1
    b	.L0d974f1c
    sw	$v1,28($a6)
.L0d974f70:
    # Line 2338
    sw	$a1,20($a6)
    # Line 2337
    li	$v0,1
    sw	$v0,36($a6)
    # Line 2338
    b	.L0d974efc
    # Line 2336
    sw	$a1,28($a6)
.end crmCheckFastTexStore

# Function: crmTexSubImageStore
# Declared: Line 2355 (Source lines: 2360-2761)
# Address: 0x0d974f90 - 0x0d975f38 (Size: 4008 bytes, Frame: 240)
.ent crmTexSubImageStore
crmTexSubImageStore:
.L0d974f90:
    # Line 2367
    lw	$v0,32228($a0)
    # Line 2360
    addiu	$sp,$sp,-880
    sd	$ra,768($sp)
    sd	$s0,712($sp)
    sd	$s3,704($sp)
    move	$s3,$a0
    sd	$s1,688($sp)
    move	$s1,$a1
    move	$s0,$a5
    sd	$s6,696($sp)
    move	$s6,$a6
    # Line 2374
    beqz	$a5,.L0d975408
    sd	$s8,760($sp)
    beqz	$a6,.L0d975408
    lw	$a0,892($sp)
    beqz	$a0,.L0d97540c
    ld	$s8,760($sp)
    # Line 2378
    lw	$s8,284($a1)
    # Line 2379
    beqz	$s8,.L0d975408
    nop
    lw	$at,0($s8)
    andi	$at,$at,0x80
    bnez	$at,.L0d975408
    nop
    # Line 2392
    lbu	$t3,2523($s3)
    # Line 2391
    lbu	$t2,2522($s3)
    # Line 2385
    sll	$t0,$a2,0x2
    # Line 2384
    lw	$v1,32($s8)
    sll	$a5,$a2,0x3
    # Line 2385
    subu	$t0,$t0,$a2
    # Line 2389
    lbu	$t8,2520($s3)
    # Line 2384
    addu	$a5,$a5,$a2
    # Line 2385
    sll	$t0,$t0,0x3
    lw	$a1,228($a1)
    # Line 2384
    sll	$a5,$a5,0x2
    # Line 2385
    addu	$t0,$t0,$a2
    # Line 2390
    lbu	$a6,2521($s3)
    # Line 2385
    sll	$t0,$t0,0x2
    # Line 2384
    addu	$v1,$v1,$a5
    sd	$v1,720($sp)
    # Line 2385
    addu	$a1,$a1,$t0
    # Line 2393
    beqz	$t8,.L0d975428
    # Line 2387
    lw	$t9,20($a1)
    # Line 2399
    beqz	$a6,.L0d975434
    # Line 2397
    sw	$zero,32556($s3)
    # Line 2399
    beqz	$t2,.L0d975434
    nop
    beqz	$t3,.L0d975434
    nop
    # Line 2437
    sd	$zero,624($sp)
    sd	$t9,600($sp)
    sd	$a1,608($sp)
    sd	$a3,656($sp)
    sd	$a2,648($sp)
    sd	$a4,584($sp)
    sd	$a7,680($sp)
    sd	$v0,632($sp)
.L0d975074:
    # Line 2440
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$a6,$sp,32
    ld	$a2,680($sp)
    addiu	$t9,$t9,19568
    move	$a5,$s6
    move	$a4,$s0
    ld	$a1,608($sp)
    move	$a0,$s3
    bal __glCrmPickTextureProcs
    lw	$a3,884($sp)
    # Line 2446
    ld	$v1,680($sp)
    # Line 2441
    ld	$a2,720($sp)
    # Line 2448
    lw	$a1,892($sp)
    # Line 2441
    lw	$a2,16($a2)
    # Line 2448
    sw	$a1,40($sp)
    # Line 2447
    lw	$a0,884($sp)
    # Line 2446
    sw	$v1,32($sp)
    # Line 2445
    li	$at,1
    sw	$at,208($sp)
    # Line 2444
    sw	$s6,204($sp)
    # Line 2443
    sw	$s0,212($sp)
    sw	$s0,216($sp)
    # Line 2448
    andi	$ra,$v0,0xff
    # Line 2443
    sw	$s0,200($sp)
    # Line 2441
    sd	$a2,672($sp)
    # Line 2448
    beqz	$ra,.L0d975648
    # Line 2447
    sw	$a0,36($sp)
    # Line 2454
    ld	$a3,632($sp)
    lw	$a4,-22416($gp)
    # Line 2456
    # lw $t9, -27540($gp) # &__glSpecElementsPerGroup
    lw	$a1,884($sp)
    ld	$a0,680($sp)
    # Line 2454
    movn	$a3,$zero,$a4
    # Line 2456
    jal	__glSpecElementsPerGroup
    sd	$a3,632($sp)
    # lw $t9, -27536($gp) # &__glSpecBytesPerElement
    sd	$v0,664($sp)
    jal	__glSpecBytesPerElement
    lw	$a0,884($sp)
    ld	$t0,664($sp)
    mult	$t0,$v0
    ld	$a3,632($sp)
    lbu	$a7,903($sp)
    ld	$a4,584($sp)
    li	$ra,-1
    ld	$a5,608($sp)
    mflo	$a6
    beqz	$a7,.L0d9755bc
    sd	$s8,576($sp)
    # Line 2476
    mult	$a6,$s0
    # Line 2471
    lw	$t1,908($sp)
    # Line 2479
    move	$t8,$zero
    # Line 2474
    move	$s8,$t1
    # Line 2476
    mflo	$t2
    # Line 2479
    move	$t9,$zero
    movz	$s8,$t2,$t1
.L0d975154:
    # Line 2485
    lw	$v0,68($a5)
    li	$t3,0x803e
    beq	$v0,$t3,.L0d97571c
    li	$at,0x8057
    beq	$v0,$at,.L0d9756e4
    # Line 2491
    ld	$a7,680($sp)
    # Line 2485
    li	$v1,0x8056
    beq	$v0,$v1,.L0d975858
    li	$a0,0x8058
    beq	$v0,$a0,.L0d97589c
    # Line 2525
    ld	$v0,680($sp)
    # Line 2485
    andi	$a1,$a3,0x18
    beqz	$a1,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    # Line 2542
    sw	$s0,216($sp)
.L0d9751a0:
    # Line 2551
    mult	$a6,$t8
    mflo	$v0
    nop
    nop
    mult	$s8,$t9
    # Line 2550
    sw	$ra,296($sp)
    # Line 2551
    lw	$v1,892($sp)
    # Line 2552
    sw	$s8,48($sp)
    # Line 2551
    mflo	$a0
    # Line 2625
    ld	$t2,720($sp)
    # Line 2551
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    sw	$v0,44($sp)
    # Line 2625
    lw	$t2,0($t2)
    ld	$at,672($sp)
    andi	$v1,$t2,0x2
    # Line 2623
    move	$a5,$s0
    # Line 2624
    ld	$t3,656($sp)
    # Line 2625
    sllv	$s0,$s0,$at
    beqz	$v1,.L0d9757bc
    # Line 2624
    sllv	$t3,$t3,$at
    # Line 2625
    move	$a0,$zero
.L0d9751f8:
    # Line 2635
    ld	$a1,720($sp)
    lw	$a2,4($a1)
    sra	$a6,$a4,0x7
    mult	$a2,$a6
    li	$v0,512
    andi	$t8,$a4,0x7f
    # Line 2630
    addiu	$a7,$sp,32
    # Line 2635
    sra	$t0,$t3,0x9
    mflo	$t1
    lw	$a1,32($a1)
    andi	$a2,$t2,0x4
    addu	$t0,$t0,$t1
    andi	$a6,$t3,0x1ff
    sll	$t0,$t0,0x10
    sd	$s7,776($sp)
    beqz	$a2,.L0d975618
    addu	$a1,$a1,$t0
    # Line 2642
    # lw $t9, -32732($gp) # &sub_0d970000
    li	$s7,8
    addiu	$at,$a0,1
    move	$a0,$at
    addiu	$t9,$t9,14912
    sll	$at,$at,0x2
    # Line 2640
    li	$t2,-128
    # Line 2642
    addu	$at,$a7,$at
    # Line 2640
    and	$t2,$a6,$t2
    sll	$t2,$t2,0x6
    andi	$t3,$a6,0x78
    sll	$t3,$t3,0x2
    # Line 2639
    li	$a2,-52
    # Line 2640
    addu	$t2,$t2,$t3
    # Line 2639
    and	$a2,$t8,$a2
    sll	$a2,$a2,0x9
    andi	$t0,$t8,0x30
    sll	$t0,$t0,0x5
    andi	$v1,$t8,0x3
    # Line 2640
    andi	$t3,$a6,0x7
    # Line 2639
    sll	$v1,$v1,0x3
    addu	$a2,$a2,$t0
    addu	$a1,$a1,$v1
    # Line 2642
    sw	$t9,356($at)
    # Line 2640
    addu	$t2,$t2,$t3
    # Line 2639
    addu	$a1,$a1,$a2
.L0d9752a4:
    # Line 2651
    subu	$a2,$v0,$a6
    # Line 2652
    move	$at,$a2
    # Line 2651
    slt	$a2,$a2,$s0
    movz	$at,$s0,$a2
    # Line 2653
    subu	$s0,$s0,$at
    # Line 2651
    li	$v1,1
    sw	$v1,32512($s3)
    # Line 2653
    blez	$s0,.L0d975300
    # Line 2652
    sw	$at,32520($s3)
    nop
    nop
.L0d9752d0:
    # Line 2655
    li	$t3,512
    lw	$t1,32512($s3)
    slt	$t3,$t3,$s0
    move	$a6,$s0
    movn	$a6,$v0,$t3
    addiu	$t1,$t1,1
    # Line 2653
    subu	$s0,$s0,$a6
    # Line 2655
    sll	$t0,$t1,0x2
    addu	$t0,$s3,$t0
    sw	$t1,32512($s3)
    # Line 2653
    bgtz	$s0,.L0d9752d0
    # Line 2655
    sw	$a6,32516($t0)
.L0d975300:
    # Line 2657
    ld	$t8,720($sp)
    lw	$t8,4($t8)
    addiu	$t8,$t8,-1
    sll	$t8,$t8,0x10
    sw	$t8,32516($s3)
.L0d975314:
    # Line 2698
    sw	$a4,240($sp)
    # Line 2697
    sw	$t2,236($sp)
    # Line 2695
    sw	$s7,128($sp)
    # Line 2698
    mtc1	$a4,$f1
    # Line 2694
    sw	$a1,124($sp)
    # Line 2697
    mtc1	$t2,$f0
    # Line 2693
    sw	$a1,120($sp)
    # Line 2696
    ld	$at,672($sp)
    # Line 2698
    cvt.s.w	$f1,$f1
    # Line 2696
    li	$t9,1
    # Line 2698
    lw	$v0,296($sp)
    # Line 2697
    cvt.s.w	$f0,$f0
    # Line 2696
    sllv	$t9,$t9,$at
    sw	$t9,132($sp)
    # Line 2698
    swc1	$f1,232($sp)
    beq	$v0,$ra,.L0d9756d8
    # Line 2697
    swc1	$f0,228($sp)
    # Line 2705
    addiu	$a0,$v0,1
.L0d97535c:
    # Line 2707
    sw	$a0,384($sp)
    # Line 2709
    lw	$v0,32232($s3)
    beqz	$v0,.L0d9753e0
    sd	$a0,640($sp)
    sd	$a3,632($sp)
    bnez	$a3,.L0d9753ec
    sd	$a5,592($sp)
    # Line 2710
    lw	$v1,468($sp)
    lw	$v1,0($v1)
    li	$a0,0x8011
    beq	$v1,$a0,.L0d975d70
    sd	$v1,664($sp)
    ld	$a0,664($sp)
    li	$a1,0x8012
    beq	$a0,$a1,.L0d975d8c
.L0d975398:
    # Line 2719
    ld	$a3,640($sp)
    li	$a2,1
    slt	$a2,$a2,$a3
    bnez	$a2,.L0d9759a0
    sd	$a2,568($sp)
.L0d9753ac:
    # Line 2736
    lw	$a4,30648($s3)
    blez	$s6,.L0d975534
    sd	$a4,736($sp)
    sd	$s5,800($sp)
    lw	$s5,540($sp)
    sd	$s4,792($sp)
    ld	$a5,640($sp)
    lw	$s4,544($sp)
    sd	$s2,784($sp)
    sll	$a5,$a5,0x2
    addu	$a5,$a7,$a5
    b	.L0d975478
    sd	$a5,728($sp)
.L0d9753e0:
    sd	$a3,632($sp)
    # Line 2717
    beqz	$a3,.L0d975398
    sd	$a5,592($sp)
.L0d9753ec:
    # Line 2721
    # lw $t9, -23196($gp) # &viceCopyImage
    move	$a0,$s3
    ld	$s7,776($sp)
    jal	viceCopyImage
    addiu	$a1,$sp,32
    beqz	$v0,.L0d975b40
    ld	$s8,760($sp)
.L0d975408:
    ld	$s8,760($sp)
.L0d97540c:
    # Line 2685
    ld	$s0,712($sp)
    ld	$ra,768($sp)
    ld	$s1,688($sp)
    ld	$s3,704($sp)
    ld	$s6,696($sp)
    jr	$ra
    addiu	$sp,$sp,880
.L0d975428:
    # Line 2393
    beqz	$a6,.L0d975ac4
    nop
    # Line 2397
    sw	$zero,32556($s3)
.L0d975434:
    # Line 2399
    lw	$t0,68($a1)
    lui	$t1,0xffff
    ori	$t1,$t1,0x7fc2
    la	$a5,sub_0da40000
    addu	$t0,$t0,$t1
    sltiu	$t1,$t0,27
    addiu	$a5,$a5,17264
    sll	$t0,$t0,0x2
    beqz	$t1,.L0d975578
    addu	$a5,$a5,$t0
    lw	$ra,0($a5)
    jr	$ra
    # Line 2409
    lui	$at,0xff00
    nop
    nop
.L0d975470:
    # Line 2738
    blez	$s6,.L0d975528
    # Line 2755
    sw	$at,30648($s3)
.L0d975478:
    # Line 2741
    lw	$v0,296($sp)
    move	$s0,$zero
    addiu	$s1,$sp,32
    blez	$v0,.L0d9754c8
    lw	$a2,44($sp)
    nop
.L0d975490:
    # Line 2744
    addiu	$a1,$sp,32
    lw	$t9,360($s1)
    move	$s2,$s5
    andi	$v1,$s0,0x1
    move	$a0,$s3
    movn	$s2,$s4,$v1
    jalr	$t9
    move	$a3,$s2
    # Line 2742
    lw	$a0,296($sp)
    addiu	$s0,$s0,1
    slt	$a0,$s0,$a0
    # Line 2745
    move	$a2,$s2
    # Line 2742
    bnez	$a0,.L0d975490
    addiu	$s1,$s1,4
.L0d9754c8:
    # Line 2747
    ld	$t9,728($sp)
    lw	$t9,356($t9)
    move	$a0,$s3
    lw	$a3,124($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 2750
    lw	$v1,44($sp)
    # Line 2751
    lw	$v0,124($sp)
    # Line 2750
    addu	$v1,$s8,$v1
    sw	$v1,44($sp)
    # Line 2751
    addu	$v0,$s7,$v0
    sw	$v0,124($sp)
    # Line 2752
    lbu	$ra,32209($s3)
    # Line 2738
    addiu	$s6,$s6,-1
    # Line 2752
    ld	$a0,720($sp)
    # Line 2738
    ld	$at,736($sp)
    # Line 2752
    beqz	$ra,.L0d975470
    # Line 2753
    addu	$a1,$s7,$v0
    # Line 2752
    lw	$a0,0($a0)
    andi	$a0,$a0,0x2
    bnez	$a0,.L0d975470
    nop
    # Line 2753
    b	.L0d975470
    sw	$a1,124($sp)
.L0d975528:
    ld	$s4,792($sp)
    ld	$s2,784($sp)
    ld	$s5,800($sp)
.L0d975534:
    # Line 2738
    ld	$a2,568($sp)
    beqz	$a2,.L0d975408
    ld	$s7,776($sp)
    # Line 2759
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,540($sp)
    ld	$a3,640($sp)
    slti	$a3,$a3,3
    bnez	$a3,.L0d97540c
    ld	$s8,760($sp)
    # Line 2761
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,544($sp)
    b	.L0d97540c
    ld	$s8,760($sp)
.L0d975578:
    # Line 2406
    move	$a5,$zero
.L0d97557c:
    # Line 2430
    beqz	$a5,.L0d975408
    nop
    sd	$t9,600($sp)
    sd	$a1,608($sp)
    sd	$a3,656($sp)
    sd	$a2,648($sp)
    sd	$a4,584($sp)
    # Line 2434
    li	$a6,-1
    sd	$a7,680($sp)
    xor	$a6,$a6,$a5
    sd	$v0,632($sp)
    sltiu	$a6,$a6,1
    movn	$a5,$zero,$a6
    sd	$a5,624($sp)
    # Line 2437
    b	.L0d975074
    sw	$a5,32556($s3)
.L0d9755bc:
    # Line 2456
    lw	$t3,1192($s3)
    # Line 2461
    move	$t2,$t3
    movz	$t2,$s0,$t3
    # Line 2465
    mult	$a6,$t2
    # Line 2466
    lw	$s8,1204($s3)
    # Line 2465
    mflo	$t0
    # Line 2466
    mtc1	$t0,$f2
    mtc1	$s8,$f3
    cvt.d.w	$f2,$f2
    cvt.d.w	$f3,$f3
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$t1,$f2
    mult	$t1,$s8
    mflo	$a7
    subu	$a7,$t0,$a7
    # Line 2471
    lw	$t8,1200($s3)
    # Line 2466
    teq	$s8,$zero,0x7
    # Line 2468
    subu	$s8,$s8,$a7
    # Line 2470
    lw	$t9,1196($s3)
    # Line 2468
    addu	$s8,$t0,$s8
    # Line 2471
    b	.L0d975154
    movz	$s8,$t0,$a7
.L0d975618:
    # Line 2646
    move	$t2,$a6
    # Line 2645
    sll	$at,$t8,0x9
    addu	$a1,$a1,$at
    # Line 2648
    la	$s7,sub_0d970000
    addiu	$t9,$a0,1
    move	$a0,$t9
    sll	$t9,$t9,0x2
    addiu	$s7,$s7,17744
    addu	$t9,$a7,$t9
    sw	$s7,356($t9)
    b	.L0d9752a4
    move	$s7,$v0
.L0d975648:
    # Line 2557
    mtc1	$zero,$f4
    # Line 2559
    # lw $t9, -27848($gp) # &__glLoadUnpackModes
    # Line 2557
    swc1	$f4,228($sp)
    # Line 2558
    lwc1	$f3,3544($s3)
    # Line 2559
    addiu	$a1,$sp,32
    lbu	$a2,903($sp)
    move	$a0,$s3
    jal	__glLoadUnpackModes
    # Line 2558
    swc1	$f3,192($sp)
    # Line 2566
    li	$a3,1
    sw	$a3,156($sp)
    # Line 2565
    sw	$zero,152($sp)
    # Line 2564
    sw	$zero,168($sp)
    # Line 2563
    sw	$zero,164($sp)
    # Line 2562
    sw	$zero,160($sp)
    # Line 2567
    ld	$v1,608($sp)
    # Line 2561
    sw	$zero,120($sp)
    # Line 2567
    lw	$a2,4($v1)
    sw	$a2,172($sp)
    # Line 2568
    lw	$a1,8($v1)
    sw	$a1,176($sp)
    # Line 2569
    lw	$a0,232($s1)
    sw	$a0,464($sp)
    lw	$v1,68($v1)
    lui	$a0,0xffff
    ori	$a0,$a0,0x7fc2
    la	$v0,sub_0da40000
    addu	$v1,$v1,$a0
    sltiu	$a0,$v1,27
    addiu	$v0,$v0,17372
    sll	$v1,$v1,0x2
    beqz	$a0,.L0d9758c8
    addu	$v0,$v0,$v1
    lw	$a4,0($v0)
    jr	$a4
    # Line 2576
    li	$a0,2
.L0d9756d8:
    # Line 2703
    addiu	$a6,$a0,-1
    b	.L0d97535c
    sw	$a6,296($sp)
.L0d9756e4:
    # Line 2491
    li	$t0,6407
    beq	$a7,$t0,.L0d975ad4
    ld	$t1,680($sp)
    li	$t2,6408
    beq	$t1,$t2,.L0d975ad4
    andi	$t3,$a3,0x18
    beqz	$t3,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
.L0d97571c:
    # Line 2488
    la	$v0,sub_0d970000
    addu	$v1,$s0,$s0
    sw	$v1,536($sp)
    addiu	$v0,$v0,6704
.L0d97572c:
    # Line 2535
    andi	$a0,$a3,0x18
    beqz	$a0,.L0d97574c
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    # Line 2542
    sw	$s0,216($sp)
.L0d97574c:
    beqz	$v0,.L0d9751a0
    nop
    # Line 2551
    mult	$a6,$t8
    mflo	$t3
    nop
    nop
    mult	$s8,$t9
    # Line 2550
    sw	$ra,296($sp)
    # Line 2548
    sw	$v0,392($sp)
    # Line 2551
    lw	$at,892($sp)
    # Line 2552
    sw	$s8,48($sp)
    # Line 2551
    mflo	$v1
    # Line 2625
    ld	$t2,720($sp)
    # Line 2551
    addu	$at,$at,$v1
    addu	$t3,$t3,$at
    sw	$t3,44($sp)
    # Line 2625
    lw	$t2,0($t2)
    ld	$at,672($sp)
    andi	$v1,$t2,0x2
    # Line 2623
    move	$a5,$s0
    # Line 2625
    ld	$t3,656($sp)
    sllv	$s0,$s0,$at
    beqz	$v1,.L0d975c38
    # Line 2624
    sllv	$t3,$t3,$at
    # Line 2625
    li	$a0,1
    sd	$a0,640($sp)
    b	.L0d9751f8
    ld	$a0,640($sp)
.L0d9757bc:
    # Line 2661
    ld	$a1,720($sp)
    # Line 2665
    ld	$t0,672($sp)
    ld	$a7,600($sp)
    # Line 2661
    ori	$a6,$t2,0x20
    sw	$a6,0($a1)
    # Line 2665
    sllv	$a7,$a7,$t0
    # Line 2662
    ld	$a6,576($sp)
    # Line 2665
    mult	$a7,$a4
    # Line 2662
    lw	$a2,0($a6)
    ori	$a2,$a2,0x20
    sw	$a2,0($a6)
    # Line 2665
    lw	$a1,20($a1)
    mflo	$a2
    addu	$a1,$a1,$a2
    # Line 2668
    ld	$a2,624($sp)
    # Line 2665
    sd	$a7,560($sp)
    # Line 2668
    beqz	$a2,.L0d975c0c
    # Line 2665
    addu	$a1,$t3,$a1
    sd	$zero,640($sp)
    sd	$s7,776($sp)
.L0d97580c:
    # Line 2669
    ld	$t2,640($sp)
    # Line 2668
    ld	$s7,560($sp)
    # Line 2669
    la	$t1,sub_0d970000
    addiu	$t2,$t2,1
    # Line 2668
    addiu	$a7,$sp,32
    # Line 2669
    sd	$t2,640($sp)
    sll	$t2,$t2,0x2
    sd	$a1,752($sp)
    addu	$t2,$a7,$t2
    addiu	$t1,$t1,19008
    sw	$t1,356($t2)
    move	$t2,$zero
.L0d97583c:
    ld	$a0,640($sp)
    ld	$a1,752($sp)
    # Line 2690
    sw	$zero,32516($s3)
    # Line 2689
    sw	$s0,32520($s3)
    li	$t3,1
    b	.L0d975314
    # Line 2688
    sw	$t3,32512($s3)
.L0d975858:
    # Line 2513
    ld	$at,680($sp)
    li	$v0,6407
    beq	$at,$v0,.L0d975b10
    # Line 2516
    lw	$v0,884($sp)
    # Line 2513
    ld	$v1,680($sp)
    li	$a0,6408
    beq	$v1,$a0,.L0d975b10
    # Line 2516
    lw	$v0,884($sp)
    # Line 2513
    andi	$a1,$a3,0x18
    beqz	$a1,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
.L0d97589c:
    # Line 2525
    li	$v1,6407
    beq	$v0,$v1,.L0d975c90
    andi	$a0,$a3,0x18
    beqz	$a0,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
.L0d9758c8:
    # Line 2601
    move	$s0,$zero
.L0d9758cc:
    # Line 2603
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s3
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 2604
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s3
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 2607
    # lw $t9, -27724($gp) # &__glGenericPickCopyImageSpan
    li	$a2,1
    addiu	$a1,$sp,32
    li	$v0,-1
    # Line 2606
    sw	$v0,296($sp)
    # Line 2607
    move	$a0,$s3
    jal	__glGenericPickCopyImageSpan
    sd	$s0,744($sp)
    # Line 2610
    ld	$a5,744($sp)
    ld	$a4,584($sp)
    # Line 2607
    sd	$v0,640($sp)
    li	$ra,-1
    # Line 2610
    beqz	$a5,.L0d975930
    # Line 2608
    lw	$s0,216($sp)
    # Line 2610
    lw	$a0,296($sp)
    beq	$ra,$a0,.L0d975c20
    # Line 2611
    addiu	$at,$v0,1
.L0d975930:
    # Line 2615
    lbu	$t0,903($sp)
    # Line 2613
    lw	$a6,212($sp)
    # Line 2611
    addiu	$a7,$sp,32
    # Line 2615
    beqz	$t0,.L0d97595c
    # Line 2613
    sll	$a6,$a6,0x4
    # Line 2615
    lw	$t8,908($sp)
    beqz	$t8,.L0d97595c
    nop
    # Line 2616
    sw	$t8,48($sp)
    b	.L0d975964
    sd	$s8,576($sp)
.L0d97595c:
    lw	$t8,48($sp)
    sd	$s8,576($sp)
.L0d975964:
    # Line 2625
    ld	$t2,720($sp)
    lw	$t2,0($t2)
    ld	$t9,672($sp)
    andi	$t1,$t2,0x2
    # Line 2623
    move	$a5,$s0
    # Line 2624
    ld	$t3,656($sp)
    # Line 2625
    sllv	$s0,$s0,$t9
    # Line 2618
    move	$s8,$t8
    lw	$v0,44($sp)
    # Line 2625
    beqz	$t1,.L0d975bb4
    # Line 2624
    sllv	$t3,$t3,$t9
    # Line 2625
    sw	$a6,536($sp)
    move	$a3,$zero
    b	.L0d9751f8
    ld	$a0,640($sp)
.L0d9759a0:
    # Line 2731
    lw	$t9,0($s3)
    lw	$s0,536($sp)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    ld	$t3,640($sp)
    slti	$t3,$t3,3
    addiu	$a7,$sp,32
    bnez	$t3,.L0d9753ac
    sw	$v0,540($sp)
    # Line 2733
    lw	$t9,0($s3)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    addiu	$a7,$sp,32
    b	.L0d9753ac
    sw	$v0,544($sp)
.L0d9759e4:
    # Line 2403
    li	$a5,-1
    # Line 2404
    b	.L0d97557c
    # Line 2403
    movz	$a5,$zero,$t8
.L0d9759f0:
    # Line 2425
    lui	$v1,0xff00
    movz	$v1,$zero,$t8
    # Line 2426
    lui	$at,0xff
    or	$at,$v1,$at
    movz	$at,$v1,$a6
    # Line 2427
    ori	$ra,$at,0xff00
    movz	$ra,$at,$t2
    # Line 2428
    ori	$a5,$ra,0xff
    b	.L0d97557c
    movz	$a5,$ra,$t3
.L0d975a18:
    # Line 2413
    lui	$a5,0x7c00
    ori	$a5,$a5,0x7c00
    # Line 2414
    lui	$t0,0x3e0
    movz	$a5,$zero,$t8
    ori	$t0,$t0,0x3e0
    or	$t0,$a5,$t0
    movz	$t0,$a5,$a6
    # Line 2415
    lui	$v1,0x1f
    ori	$v1,$v1,0x1f
    # Line 2416
    li	$a5,-1
    # Line 2415
    or	$v1,$t0,$v1
    # Line 2416
    dsll	$a5,$a5,0x1f
    movz	$v1,$t0,$t2
    ori	$a5,$a5,0x8000
    or	$a5,$v1,$a5
    b	.L0d97557c
    movz	$a5,$v1,$t3
.L0d975a5c:
    # Line 2419
    lui	$ra,0xf000
    ori	$ra,$ra,0xf000
    # Line 2420
    lui	$t1,0xf00
    movz	$ra,$zero,$t8
    ori	$t1,$t1,0xf00
    or	$t1,$ra,$t1
    # Line 2421
    lui	$t0,0xf0
    movz	$t1,$ra,$a6
    ori	$t0,$t0,0xf0
    or	$t0,$t1,$t0
    # Line 2422
    lui	$a5,0xf
    movz	$t0,$t1,$t2
    ori	$a5,$a5,0xf
    or	$a5,$t0,$a5
    b	.L0d97557c
    movz	$a5,$t0,$t3
.L0d975a9c:
    # Line 2409
    ori	$at,$at,0xff00
    # Line 2410
    lui	$a5,0xff
    movz	$at,$zero,$t8
    ori	$a5,$a5,0xff
    or	$a5,$at,$a5
    b	.L0d97557c
    movz	$a5,$at,$t3
.L0d975ab8:
    # Line 2406
    li	$a5,-1
    b	.L0d97557c
    movz	$a5,$zero,$t3
.L0d975ac4:
    # Line 2393
    beqz	$t2,.L0d975d60
    nop
.L0d975acc:
    # Line 2399
    b	.L0d975434
    # Line 2397
    sw	$zero,32556($s3)
.L0d975ad4:
    # Line 2494
    lw	$v0,884($sp)
    li	$v1,5121
    beq	$v0,$v1,.L0d975da8
    li	$a1,0x8034
    beq	$v0,$a1,.L0d975dbc
    andi	$a2,$a3,0x18
    beqz	$a2,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
    # Line 2516
    lw	$v0,884($sp)
.L0d975b10:
    li	$v1,5121
    beq	$v0,$v1,.L0d975e08
    # Line 2518
    la	$v0,sub_0d970000
    # Line 2516
    andi	$a0,$a3,0x18
    beqz	$a0,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
.L0d975b40:
    # Line 2723
    ld	$a7,680($sp)
    ld	$a5,592($sp)
    ld	$a4,584($sp)
    ld	$a3,656($sp)
    ld	$a2,648($sp)
    # Line 2722
    sw	$zero,32228($s3)
    # Line 2723
    lw	$v0,884($sp)
    lw	$at,892($sp)
    lbu	$ra,903($sp)
    sw	$ra,20($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    sw	$at,12($sp)
    sw	$v0,4($sp)
    addiu	$t9,$t9,20368
    move	$a6,$s6
    move	$a1,$s1
    lw	$v0,908($sp)
    move	$a0,$s3
    bal .L0d974f90
    sw	$v0,28($sp)
    # Line 2685
    ld	$s0,712($sp)
    ld	$s1,688($sp)
    ld	$s6,696($sp)
    ld	$ra,768($sp)
    # Line 2725
    ld	$v1,632($sp)
    sw	$v1,32228($s3)
    # Line 2685
    ld	$s3,704($sp)
    jr	$ra
    addiu	$sp,$sp,880
.L0d975bb4:
    # Line 2661
    ld	$a1,720($sp)
    # Line 2664
    ld	$t8,672($sp)
    sd	$s7,776($sp)
    ld	$s7,600($sp)
    # Line 2661
    ori	$a3,$t2,0x20
    sw	$a3,0($a1)
    # Line 2664
    sllv	$s7,$s7,$t8
    # Line 2662
    ld	$a3,576($sp)
    # Line 2665
    mult	$s7,$a4
    # Line 2662
    lw	$a2,0($a3)
    ori	$a2,$a2,0x20
    sw	$a2,0($a3)
    # Line 2665
    lw	$a1,20($a1)
    mflo	$a2
    addu	$a1,$a1,$a2
    # Line 2668
    ld	$a2,624($sp)
    # Line 2664
    sd	$s7,560($sp)
    # Line 2668
    beqz	$a2,.L0d975de8
    # Line 2665
    addu	$a1,$t3,$a1
    # Line 2668
    sw	$a6,536($sp)
    b	.L0d97580c
    move	$a3,$zero
.L0d975c0c:
    beqz	$a3,.L0d975e18
    sd	$s7,776($sp)
    sd	$zero,640($sp)
    b	.L0d97580c
    sd	$s7,776($sp)
.L0d975c20:
    # Line 2611
    addiu	$t9,$sp,32
    sd	$at,640($sp)
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    b	.L0d975930
    sw	$a5,356($t9)
.L0d975c38:
    # Line 2661
    ld	$a1,720($sp)
    # Line 2664
    ld	$t8,672($sp)
    sd	$s7,776($sp)
    ld	$s7,600($sp)
    # Line 2661
    ori	$a6,$t2,0x20
    sw	$a6,0($a1)
    # Line 2664
    sllv	$s7,$s7,$t8
    # Line 2662
    ld	$a6,576($sp)
    # Line 2665
    mult	$s7,$a4
    # Line 2662
    lw	$a2,0($a6)
    ori	$a2,$a2,0x20
    sw	$a2,0($a6)
    # Line 2665
    lw	$a1,20($a1)
    mflo	$a2
    addu	$a1,$a1,$a2
    # Line 2668
    ld	$a2,624($sp)
    # Line 2664
    sd	$s7,560($sp)
    # Line 2668
    beqz	$a2,.L0d975ec4
    # Line 2665
    addu	$a1,$t3,$a1
    # Line 2668
    li	$t9,1
    b	.L0d97580c
    sd	$t9,640($sp)
.L0d975c90:
    # Line 2527
    lw	$at,884($sp)
    li	$v0,5121
    beq	$at,$v0,.L0d975edc
    andi	$v1,$a3,0x18
    beqz	$v1,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
.L0d975cc0:
    # Line 2576
    sw	$a0,180($sp)
    # Line 2575
    li	$v1,5123
    sw	$v1,116($sp)
    # Line 2574
    li	$v0,6403
    sw	$v0,112($sp)
    # Line 2577
    b	.L0d9758cc
    move	$s0,$zero
.L0d975cdc:
    # Line 2598
    li	$a3,4
    sw	$a3,180($sp)
    # Line 2597
    li	$a2,5121
    sw	$a2,116($sp)
    # Line 2596
    li	$a1,6408
    sw	$a1,112($sp)
    # Line 2599
    b	.L0d9758cc
    move	$s0,$zero
.L0d975cfc:
    # Line 2592
    li	$ra,2
    sw	$ra,180($sp)
    # Line 2594
    la	$s0,sub_0d970000
    # Line 2591
    li	$t9,0x8034
    sw	$t9,116($sp)
    # Line 2590
    li	$t8,6408
    sw	$t8,112($sp)
    # Line 2594
    b	.L0d9758cc
    addiu	$s0,$s0,7856
.L0d975d20:
    # Line 2587
    li	$v1,2
    sw	$v1,180($sp)
    # Line 2586
    li	$v0,0x8033
    sw	$v0,116($sp)
    # Line 2585
    li	$at,6408
    sw	$at,112($sp)
    # Line 2588
    b	.L0d9758cc
    move	$s0,$zero
.L0d975d40:
    # Line 2582
    li	$a2,2
    sw	$a2,180($sp)
    # Line 2581
    li	$a1,5121
    sw	$a1,116($sp)
    move	$a0,$a3
    # Line 2580
    sw	$a0,112($sp)
    # Line 2583
    b	.L0d9758cc
    move	$s0,$zero
.L0d975d60:
    # Line 2393
    bnez	$t3,.L0d975acc
    nop
    b	.L0d97540c
    ld	$s8,760($sp)
.L0d975d70:
    # Line 2712
    # lw $t9, -28248($gp) # &__glConv2dCopyImage
    move	$a0,$s3
    ld	$s7,776($sp)
    jal	__glConv2dCopyImage
    addiu	$a1,$sp,32
    b	.L0d97540c
    ld	$s8,760($sp)
.L0d975d8c:
    # Line 2715
    # lw $t9, -28244($gp) # &__glSep2dCopyImage
    move	$a0,$s3
    ld	$s7,776($sp)
    jal	__glSep2dCopyImage
    addiu	$a1,$sp,32
    b	.L0d97540c
    ld	$s8,760($sp)
.L0d975da8:
    # Line 2496
    la	$v0,sub_0d970000
    addiu	$v0,$v0,10400
.L0d975db0:
    # Line 2508
    addu	$v1,$s0,$s0
    b	.L0d97572c
    sw	$v1,536($sp)
.L0d975dbc:
    # Line 2500
    lw	$a0,32216($s3)
    beqz	$a0,.L0d975ef0
    # Line 2509
    andi	$a1,$a3,0x18
    beqz	$a1,.L0d9751a0
    nop
    # Line 2541
    lw	$at,764($s3)
    lw	$at,64($at)
    subu	$s0,$s0,$at
    addiu	$s0,$s0,1
    b	.L0d9751a0
    # Line 2542
    sw	$s0,216($sp)
.L0d975de8:
    # Line 2671
    ld	$v1,640($sp)
    beqz	$v1,.L0d975e18
    nop
    sw	$a6,536($sp)
    move	$t2,$zero
    move	$a3,$zero
    b	.L0d97583c
    sd	$a1,752($sp)
.L0d975e08:
    # Line 2519
    addu	$v1,$s0,$s0
    sw	$v1,536($sp)
    # Line 2518
    b	.L0d97572c
    addiu	$v0,$v0,11200
.L0d975e18:
    ld	$s7,776($sp)
    # Line 2673
    bne	$s0,$s8,.L0d975e3c
    sd	$v0,616($sp)
    ld	$a0,560($sp)
    bne	$a0,$s0,.L0d975e3c
    nop
    lbu	$a2,32209($s3)
    beqz	$a2,.L0d975efc
    nop
.L0d975e3c:
    # Line 2675
    blez	$s6,.L0d975408
    sd	$a1,752($sp)
    ld	$s1,752($sp)
    li	$a3,32
    slt	$a3,$a3,$s0
    b	.L0d975e98
    sd	$a3,552($sp)
.L0d975e58:
    # Line 2678
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,16768
    move	$a1,$s1
    ld	$a0,616($sp)
    bal __glCrmPickTextureProcs
    move	$a2,$s0
.L0d975e70:
    # Line 2679
    ld	$v1,616($sp)
    # Line 2680
    ld	$v0,560($sp)
    # Line 2677
    addiu	$s6,$s6,-1
    # Line 2680
    lbu	$ra,32209($s3)
    # Line 2679
    addu	$v1,$s8,$v1
    # Line 2680
    addu	$at,$v0,$s1
    # Line 2679
    sd	$v1,616($sp)
    # Line 2682
    addu	$s1,$v0,$at
    # Line 2677
    blez	$s6,.L0d975ebc
    movz	$s1,$at,$ra
.L0d975e98:
    # Line 2675
    ld	$a0,552($sp)
    bnez	$a0,.L0d975e58
    # Line 2678
    nop	# was lw $t9, -22808($gp) # &bcopy
    move	$a1,$s1
    ld	$a0,616($sp)
    jal	bcopy
    move	$a2,$s0
    b	.L0d975e70
    nop
.L0d975ebc:
    b	.L0d97540c
    ld	$s8,760($sp)
.L0d975ec4:
    # Line 2668
    move	$t2,$zero
    li	$a2,1
    sd	$a2,640($sp)
    addiu	$a7,$sp,32
    b	.L0d97583c
    sd	$a1,752($sp)
.L0d975edc:
    # Line 2529
    la	$v0,sub_0d970000
    # Line 2530
    sll	$v1,$s0,0x2
    sw	$v1,536($sp)
    # Line 2529
    b	.L0d97572c
    addiu	$v0,$v0,9488
.L0d975ef0:
    # Line 2505
    la	$v0,sub_0d970000
    b	.L0d975db0
    addiu	$v0,$v0,7856
.L0d975efc:
    # Line 2673
    mult	$s6,$s0
    mflo	$a2
    slti	$v1,$a2,33
    bnez	$v1,.L0d975f24
    # Line 2675
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,16768
    bal __glCrmPickTextureProcs
    ld	$a0,616($sp)
    b	.L0d97540c
    ld	$s8,760($sp)
.L0d975f24:
    # lw $t9, -22808($gp) # &bcopy
    jal	bcopy
    ld	$a0,616($sp)
    b	.L0d97540c
    ld	$s8,760($sp)
.end crmTexSubImageStore

# Function: crmTexSubImageRead
# Declared: Line 2767 (Source lines: 2770-2889)
# Address: 0x0d975f40 - 0x0d97631c (Size: 988 bytes, Frame: 192)
.ent crmTexSubImageRead
crmTexSubImageRead:
    # Line 2770
    addiu	$sp,$sp,-704
    sd	$a2,568($sp)
    sd	$a3,552($sp)
    sd	$a4,560($sp)
    sd	$s2,624($sp)
    sd	$s3,616($sp)
    sd	$s0,592($sp)
    move	$s0,$a0
    sd	$s4,608($sp)
    # Line 2779
    sll	$t8,$a2,0x2
    # Line 2770
    move	$s4,$a1
    # Line 2779
    lbu	$at,3536($a0)
    subu	$t8,$t8,$a2
    # Line 2770
    move	$s3,$a5
    sd	$s1,584($sp)
    # Line 2779
    sll	$t8,$t8,0x3
    # Line 2770
    move	$s2,$a6
    # Line 2779
    lw	$s1,228($a1)
    addu	$t8,$t8,$a2
    # Line 2770
    sd	$s5,600($sp)
    move	$s5,$a7
    # Line 2779
    sll	$t8,$t8,0x2
    sd	$ra,632($sp)
    beqz	$at,.L0d976284
    addu	$s1,$s1,$t8
.L0d975fa4:
    # Line 2787
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    move	$a4,$s5
    move	$a3,$s2
    move	$a2,$s3
    addiu	$a1,$sp,40
    move	$a0,$s0
    jal	__glInitReadImageSrcInfo
    lw	$a5,708($sp)
    # Line 2792
    li	$v0,1
    sw	$v0,164($sp)
    # Line 2791
    sw	$zero,160($sp)
    # Line 2790
    sw	$zero,176($sp)
    # Line 2789
    sw	$zero,172($sp)
    # Line 2788
    sw	$zero,168($sp)
    # Line 2793
    lw	$a0,208($sp)
    # Line 2794
    lw	$v1,212($sp)
    sw	$v1,184($sp)
    # Line 2793
    sw	$a0,180($sp)
    # Line 2795
    lw	$at,232($s4)
    sw	$at,472($sp)
    lw	$ra,232($s4)
    beq	$ra,$v0,.L0d9762a8
.L0d975ffc:
    # Line 2799
    nop	# was lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,40
    lbu	$a1,3536($s0)
    # Line 2838
    li	$t8,6408
    # Line 2844
    li	$a6,4
    # Line 2799
    beqz	$a1,.L0d9761c8
    # Line 2839
    li	$t9,5121
    # Line 2802
    beqz	$v0,.L0d9761dc
    nop
.L0d976028:
    # Line 2808
    lw	$v1,68($s1)
    lui	$a0,0xffff
    ori	$a0,$a0,0x7fc2
    la	$v0,sub_0da40000
    addu	$v1,$v1,$a0
    sltiu	$a0,$v1,27
    addiu	$v0,$v0,17480
    sll	$v1,$v1,0x2
    beqz	$a0,.L0d97605c
    addu	$v0,$v0,$v1
    lw	$a1,0($v0)
    jr	$a1
    # Line 2841
    li	$a0,2
.L0d97605c:
    # Line 2844
    lw	$v0,548($sp)
    lw	$a0,544($sp)
.L0d976064:
    # Line 2849
    lw	$a5,32292($s0)
    andi	$a7,$v0,0x3
    li	$t0,-769
    and	$a5,$a5,$t0
    sll	$t0,$a7,0x8
    # Line 2858
    lw	$s1,32228($s0)
    # Line 2851
    sll	$a7,$a7,0x2
    # Line 2850
    li	$t1,-241
    # Line 2855
    sw	$zero,32344($s0)
    # Line 2849
    or	$a5,$a5,$t0
    # Line 2850
    andi	$t0,$a0,0xf
    # Line 2854
    sb	$zero,32206($s0)
    # Line 2850
    sll	$t0,$t0,0x4
    and	$a5,$a5,$t1
    # Line 2856
    lw	$a4,11764($s0)
    # Line 2850
    or	$a5,$a5,$t0
    # Line 2851
    li	$t0,-13
    # Line 2856
    sw	$a4,32296($s0)
    # Line 2851
    and	$a5,$a5,$t0
    # Line 2848
    li	$t0,1
    # Line 2861
    lw	$a1,32060($s0)
    # Line 2851
    or	$a5,$a5,$a7
    # Line 2852
    li	$a7,-3
    # Line 2848
    sw	$t0,32216($s0)
    # Line 2852
    and	$a5,$a5,$a7
    # Line 2853
    li	$a7,-2
    and	$a5,$a5,$a7
    sw	$a5,32292($s0)
    # Line 2861
    lw	$a2,0($a1)
    # Line 2859
    lw	$a3,32232($s0)
    sd	$a3,576($sp)
    # Line 2861
    bne	$a2,$a6,.L0d976108
    lw	$v0,4($a1)
    lbu	$t1,4($v0)
    beqz	$t1,.L0d976108
    li	$t3,16
    lw	$t2,40($v0)
    beq	$t2,$t3,.L0d9762b4
    lw	$t8,44($v0)
    beqz	$t8,.L0d9762b8
    # Line 2865
    nop	# was lw $t9, -23204($gp) # &viceReadPixels
.L0d976108:
    # Line 2862
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    move	$a0,$s0
    jal	crmReadPixelsXfer
    addiu	$a1,$sp,40
.L0d976118:
    # Line 2880
    ld	$a2,568($sp)
    lw	$a7,120($sp)
    lw	$ra,124($sp)
    lw	$a4,708($sp)
    # Line 2874
    lw	$a3,208($sp)
    # Line 2877
    lw	$t1,212($sp)
    # Line 2880
    sw	$ra,4($sp)
    lw	$t3,128($sp)
    move	$a1,$s4
    li	$t0,1
    sw	$t0,20($sp)
    move	$a0,$s0
    slti	$at,$s3,0
    # lw $t9, -32732($gp) # &sub_0d970000
    # Line 2878
    ld	$t2,560($sp)
    # Line 2880
    move	$a6,$t1
    # Line 2878
    subu	$a4,$a4,$t1
    # Line 2877
    ld	$v0,552($sp)
    slti	$t1,$s2,0
    # Line 2880
    addiu	$t9,$t9,20368
    sw	$t3,12($sp)
    move	$a5,$a3
    # Line 2878
    addu	$a4,$t2,$a4
    # Line 2880
    lw	$ra,136($sp)
    # Line 2877
    subu	$a3,$s5,$a3
    movz	$a4,$t2,$t1
    # Line 2880
    sw	$ra,28($sp)
    # Line 2877
    addu	$a3,$v0,$a3
    # Line 2880
    bal __glCrmPickTextureProcs
    movz	$a3,$v0,$at
    ld	$ra,632($sp)
    # Line 2889
    ld	$s2,624($sp)
    ld	$s3,616($sp)
    ld	$s4,608($sp)
    ld	$s5,600($sp)
    # Line 2886
    ld	$at,576($sp)
    # Line 2889
    li	$v0,1
    # Line 2885
    sw	$s1,32228($s0)
    # Line 2889
    ld	$s1,584($sp)
    # Line 2888
    sw	$zero,32216($s0)
    # Line 2886
    sw	$at,32232($s0)
    # Line 2889
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0d9761c8:
    # Line 2801
    lw	$v1,32($sp)
    # Line 2802
    lw	$a0,36($sp)
    sw	$a0,3704($s0)
    bnez	$v0,.L0d976028
    # Line 2801
    sw	$v1,3700($s0)
.L0d9761dc:
    # Line 2889
    ld	$s0,592($sp)
    ld	$s1,584($sp)
    ld	$s2,624($sp)
    ld	$ra,632($sp)
    ld	$s3,616($sp)
    # Line 2805
    move	$v0,$zero
    # Line 2889
    ld	$s4,608($sp)
    ld	$s5,600($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0d976204:
    # Line 2822
    lw	$a1,32060($s0)
    lw	$a2,0($a1)
    li	$a6,4
    bne	$a2,$a6,.L0d976274
    nop
    lw	$v0,4($a1)
    lbu	$a3,4($v0)
    beqz	$a3,.L0d976274
    li	$a5,16
    lw	$a4,40($v0)
    beq	$a4,$a5,.L0d976238
    lw	$a7,44($v0)
    bnez	$a7,.L0d976274
.L0d976238:
    # Line 2829
    li	$t3,5122
    sw	$t3,44($sp)
    # Line 2828
    li	$t2,1
    sw	$t2,140($sp)
    # Line 2827
    sw	$t2,148($sp)
    # Line 2826
    sw	$t2,156($sp)
    # Line 2825
    li	$t1,5121
    sw	$t1,124($sp)
    # Line 2831
    li	$a0,7
    # Line 2823
    li	$t0,6409
    # Line 2824
    sw	$t0,120($sp)
    # Line 2823
    sw	$t0,40($sp)
    # Line 2832
    b	.L0d976064
    move	$v0,$t2
.L0d976270:
    li	$a6,4
.L0d976274:
    # Line 2839
    sw	$t9,124($sp)
    # Line 2840
    li	$v0,2
    # Line 2842
    b	.L0d976064
    # Line 2838
    sw	$t8,120($sp)
.L0d976284:
    # Line 2782
    lw	$ra,3700($a0)
    # Line 2784
    lw	$v0,32064($a0)
    # Line 2783
    lw	$at,3704($a0)
    # Line 2785
    lw	$v1,32068($a0)
    sw	$v1,3704($a0)
    # Line 2784
    sw	$v0,3700($a0)
    # Line 2783
    sw	$at,36($sp)
    # Line 2785
    b	.L0d975fa4
    # Line 2782
    sw	$ra,32($sp)
.L0d9762a8:
    # Line 2797
    lw	$a0,56($s1)
    b	.L0d975ffc
    sw	$a0,172($sp)
.L0d9762b4:
    # Line 2865
    # lw $t9, -23204($gp) # &viceReadPixels
.L0d9762b8:
    addiu	$a1,$sp,40
    move	$a0,$s0
    # Line 2864
    lui	$a2,0x40
    or	$a2,$s1,$a2
    # Line 2865
    jal	viceReadPixels
    # Line 2864
    sw	$a2,32228($s0)
    # Line 2866
    lw	$t0,32228($s0)
    lui	$t1,0x40
    # Line 2868
    lw	$a7,32636($s0)
    # Line 2866
    nor	$t1,$t1,$zero
    and	$t0,$t0,$t1
    sw	$t0,32228($s0)
    # Line 2871
    li	$a4,2
    sw	$a4,140($sp)
    # Line 2870
    li	$a5,5123
    sw	$a5,124($sp)
    # Line 2869
    li	$a6,6409
    sw	$a6,120($sp)
    # Line 2872
    lw	$a3,208($sp)
    # Line 2868
    sw	$a7,128($sp)
    # Line 2872
    addu	$a3,$a3,$a3
    sw	$a3,136($sp)
    # Line 2874
    sw	$zero,32228($s0)
    b	.L0d976118
    sw	$zero,32232($s0)
.end crmTexSubImageRead

# Function: crmTexSubImageCopyDMPbuffer
# Declared: Line 2893 (Source lines: 2896-3012)
# Address: 0x0d976320 - 0x0d976824 (Size: 1284 bytes, Frame: 160)
.ent crmTexSubImageCopyDMPbuffer
crmTexSubImageCopyDMPbuffer:
    # Line 2896
    addiu	$sp,$sp,-160
    # Line 2906
    bnez	$a3,.L0d976374
    # Line 2896
    move	$v0,$a0
    # Line 2906
    bnez	$a4,.L0d976374
    nop
    bnez	$a5,.L0d976374
    nop
    bnez	$a6,.L0d976374
    nop
    beqz	$a7,.L0d976374
    lw	$a0,164($sp)
    beqz	$a0,.L0d976374
    nop
    bnez	$a2,.L0d976374
    nop
    lw	$at,32232($v0)
    bnez	$at,.L0d976374
    nop
    lbu	$v1,32209($v0)
    beqz	$v1,.L0d976380
    # Line 2911
    sll	$a5,$a2,0x2
.L0d976374:
    # Line 2908
    move	$v0,$zero
.L0d976378:
    # Line 3012
    jr	$ra
    addiu	$sp,$sp,160
.L0d976380:
    # Line 2911
    subu	$a5,$a5,$a2
    sll	$a5,$a5,0x3
    lw	$a4,228($a1)
    addu	$a5,$a5,$a2
    sll	$a5,$a5,0x2
    # Line 2912
    lw	$a6,284($a1)
    # Line 2911
    addu	$a4,$a4,$a5
    # Line 2913
    sll	$t0,$a2,0x3
    # Line 2915
    lw	$t1,20($a4)
    # Line 2913
    lw	$a5,32($a6)
    addu	$t0,$t0,$a2
    sll	$t0,$t0,0x2
    # Line 2915
    bne	$t1,$a7,.L0d976480
    # Line 2913
    addu	$a5,$a5,$t0
    # Line 2915
    lw	$a2,24($a4)
    bne	$a2,$a0,.L0d976480
    nop
    lw	$a7,64($a4)
    li	$t0,6408
    bne	$a7,$t0,.L0d976480
    nop
    lw	$a0,32060($v0)
    lw	$t2,0($a0)
    li	$t3,5
    bne	$t2,$t3,.L0d976480
    nop
    lw	$a4,28($a0)
    beqz	$a4,.L0d976480
    nop
    # Line 2925
    lw	$a7,148($a4)
    beqz	$a7,.L0d976474
    # Line 2923
    lw	$a0,156($a4)
    # Line 2925
    beqz	$a0,.L0d976474
    nop
    lw	$t8,140($a4)
    bne	$t8,$t1,.L0d976474
    nop
    lw	$t9,144($a4)
    bne	$t9,$a2,.L0d976474
    nop
    lw	$a3,16($a5)
    lw	$at,12($a0)
    li	$v1,1
    sllv	$v1,$v1,$a3
    bne	$at,$v1,.L0d976474
    nop
    lw	$t0,16($a0)
    lbu	$t2,216($a1)
    bne	$t0,$t2,.L0d976474
    nop
    sd	$a0,16($sp)
    sd	$a4,24($sp)
    sd	$a6,48($sp)
    sd	$a5,32($sp)
    slti	$t3,$t1,64
    sd	$a1,40($sp)
    beqz	$t3,.L0d97648c
    sd	$v0,56($sp)
    slti	$t8,$a2,64
    beqz	$t8,.L0d976490
    # Line 2933
    nop	# was lw $t9, -22856($gp) # &dmBufferAttach
.L0d976474:
    # Line 2930
    move	$v0,$zero
    # Line 3012
    jr	$ra
    addiu	$sp,$sp,160
.L0d976480:
    # Line 2919
    move	$v0,$zero
    # Line 3012
    jr	$ra
    addiu	$sp,$sp,160
.L0d97648c:
    # Line 2933
    # lw $t9, -22856($gp) # &dmBufferAttach
.L0d976490:
    sd	$ra,72($sp)
    jal	dmBufferAttach
    move	$a0,$a7
    beqz	$v0,.L0d9764b4
    # Line 2934
    ld	$t9,56($sp)
    ld	$ra,72($sp)
    move	$v0,$zero
    # Line 3012
    jr	$ra
    addiu	$sp,$sp,160
.L0d9764b4:
    # Line 2934
    ld	$ra,40($sp)
    lw	$t9,28208($t9)
    beq	$t9,$ra,.L0d976774
    # Line 2948
    ld	$a4,40($sp)
.L0d9764c4:
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,56($sp)
    # Line 2941
    ld	$at,48($sp)
    # Line 2944
    ld	$v0,24($sp)
    # Line 2942
    lw	$v1,36($at)
    # Line 2941
    lw	$ra,0($at)
    # Line 2944
    sw	$v0,36($at)
    # Line 2946
    li	$v0,-33
    # Line 2941
    sd	$ra,0($sp)
    # Line 2945
    ori	$ra,$ra,0x90
    # Line 2946
    and	$ra,$ra,$v0
    sw	$ra,0($at)
    # Line 2948
    lw	$a3,28208($a0)
    ld	$a2,16($sp)
    addiu	$t9,$t9,-5264
    move	$a1,$a4
    # Line 2942
    sd	$v1,8($sp)
    # Line 2948
    xor	$a3,$a3,$a4
    lbu	$a2,19($a2)
    bal __glCrmGenericPickStoreProcs
    sltiu	$a3,$a3,1
    beqz	$v0,.L0d9767ac
    ld	$ra,72($sp)
    # Line 2952
    lw	$a0,-21560($gp)
    beqz	$a0,.L0d976548
    # Line 2955
    la	$a0,sub_0da40000
    ld	$a2,32($sp)
    # lw $t9, -22892($gp) # &printf
    ld	$a1,24($sp)
    lw	$a2,32($a2)
    lw	$a1,148($a1)
    jal	printf
    addiu	$a0,$a0,17592
.L0d976548:
    ld	$v0,8($sp)
    beqz	$v0,.L0d9767cc
    # Line 2960
    ld	$t9,56($sp)
    # Line 2964
    lw	$a0,148($v0)
    beqz	$a0,.L0d976570
    # Line 2968
    nop	# was lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    nop
    # Line 2969
    ld	$v0,8($sp)
    sw	$zero,148($v0)
.L0d976570:
    # Line 2971
    ld	$a3,48($sp)
    move	$a2,$v0
    sw	$v0,36($a3)
.L0d97657c:
    # Line 2977
    # lw $t9, -22860($gp) # &dmParamsCopyAllElems
    # Line 2974
    ld	$a0,24($sp)
    # Line 2975
    ld	$a1,48($sp)
    # Line 2974
    lw	$a6,140($a0)
    sw	$a6,140($a2)
    # Line 2975
    lw	$a5,36($a1)
    lw	$a4,144($a0)
    sw	$a4,144($a5)
    # Line 2976
    lw	$a3,36($a1)
    lw	$a2,148($a0)
    sw	$a2,148($a3)
    # Line 2977
    lw	$a1,36($a1)
    lw	$a0,152($a0)
    jal	dmParamsCopyAllElems
    lw	$a1,152($a1)
    # Line 2980
    ld	$a0,24($sp)
    # Line 2978
    ld	$a2,48($sp)
    # Line 2980
    # lw $t9, -22928($gp) # &dmBufferMapData
    # Line 2978
    lw	$a2,36($a2)
    ld	$a1,16($sp)
    lw	$a2,156($a2)
    lw	$a7,0($a1)
    sw	$a7,0($a2)
    lw	$a6,4($a1)
    sw	$a6,4($a2)
    lw	$a5,8($a1)
    sw	$a5,8($a2)
    lw	$a4,12($a1)
    sw	$a4,12($a2)
    lw	$a3,16($a1)
    sw	$a3,16($a2)
    lw	$a1,20($a1)
    sw	$a1,20($a2)
    # Line 2980
    jal	dmBufferMapData
    lw	$a0,148($a0)
    # Line 2982
    ld	$a3,40($sp)
    lw	$a3,236($a3)
    # Line 2980
    move	$a5,$v0
    # Line 2982
    bltz	$a3,.L0d9766cc
    move	$a1,$a3
    ld	$v0,32($sp)
    b	.L0d9766a8
    li	$a6,-37
.L0d976628:
    sd	$a5,64($sp)
    # Line 2985
    # lw $t9, -32732($gp) # &sub_0d970000
    sd	$v0,32($sp)
    ld	$a0,56($sp)
    addiu	$t9,$t9,-7248
    sd	$a1,80($sp)
    li	$a1,22018
    jal	sub_0d970000
    lw	$a0,31504($a0)
    ld	$a1,80($sp)
    # Line 2987
    ld	$v0,32($sp)
    ld	$a5,64($sp)
    lw	$a4,0($v0)
    li	$a6,-37
    sw	$zero,24($v0)
.L0d976664:
    # Line 2990
    lw	$a3,4($v0)
    lw	$a7,8($v0)
    mult	$a3,$a7
    mflo	$a2
    sll	$a2,$a2,0x10
    # Line 2989
    sw	$a5,32($v0)
    # Line 2990
    addu	$a5,$a5,$a2
    # Line 2993
    ld	$a2,48($sp)
.L0d976684:
    # Line 2992
    and	$a3,$a6,$a4
    sw	$a3,0($v0)
    # Line 2993
    lw	$a2,36($a2)
    lw	$a2,156($a2)
    lw	$a2,16($a2)
    beqz	$a2,.L0d976758
    # Line 2982
    addiu	$a1,$a1,-1
    bltz	$a1,.L0d9766dc
    # Line 2994
    addiu	$v0,$v0,36
.L0d9766a8:
    # Line 2982
    lw	$a4,0($v0)
    andi	$a7,$a4,0x2
    beqz	$a7,.L0d976684
    # Line 2993
    ld	$a2,48($sp)
    # Line 2982
    lw	$a2,24($v0)
    bnez	$a2,.L0d976628
    nop
    b	.L0d976664
    nop
.L0d9766cc:
    ld	$a2,48($sp)
    lw	$a2,36($a2)
    lw	$a2,156($a2)
    lw	$a2,16($a2)
.L0d9766dc:
    # Line 2996
    beqz	$a2,.L0d97675c
    ld	$a6,40($sp)
    ld	$a2,48($sp)
.L0d9766e8:
    lw	$a2,8($a2)
    beqz	$a2,.L0d976718
    ld	$ra,72($sp)
    # Line 2998
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,56($sp)
    addiu	$t9,$t9,-7248
    sd	$a5,64($sp)
    li	$a1,22018
    jal	sub_0d970000
    lw	$a0,31504($a0)
    ld	$ra,72($sp)
    ld	$a5,64($sp)
.L0d976718:
    # Line 3001
    ld	$a2,48($sp)
    lw	$a2,20($a2)
    beqz	$a2,.L0d976734
    ld	$a3,48($sp)
    lw	$a3,8($a3)
    bne	$a3,$a2,.L0d976788
    # Line 3003
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
.L0d976734:
    # Line 3009
    ld	$a4,48($sp)
    sw	$a5,28($a4)
    sw	$zero,24($a4)
    sw	$zero,20($a4)
    # Line 3008
    sw	$a5,16($a4)
    # Line 3007
    sw	$zero,12($a4)
    # Line 3006
    sw	$zero,8($a4)
.L0d976750:
    b	.L0d976378
    # Line 3012
    li	$v0,1
.L0d976758:
    # Line 2996
    ld	$a6,40($sp)
.L0d97675c:
    lw	$a6,236($a6)
    li	$a7,6
    bne	$a6,$a7,.L0d976750
    ld	$ra,72($sp)
    b	.L0d9766e8
    ld	$a2,48($sp)
.L0d976774:
    # Line 2938
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    ld	$a0,56($sp)
    b	.L0d9764c4
    # Line 2948
    ld	$a4,40($sp)
.L0d976788:
    # Line 3003
    ld	$a0,56($sp)
    addiu	$t9,$t9,-7248
    sd	$a5,64($sp)
    li	$a1,22018
    jalr	$t9
    lw	$a0,31504($a0)
    ld	$ra,72($sp)
    b	.L0d976734
    ld	$a5,64($sp)
.L0d9767ac:
    # Line 2951
    ld	$a3,8($sp)
    ld	$a2,48($sp)
    # Line 2950
    ld	$a1,0($sp)
    # Line 2952
    move	$v0,$zero
    # Line 2951
    sw	$a3,36($a2)
    # Line 2950
    ori	$a1,$a1,0x10
    # Line 2952
    b	.L0d976378
    # Line 2950
    sw	$a1,0($a2)
.L0d9767cc:
    # Line 2960
    move	$a0,$t9
    lw	$t9,4($t9)
    li	$a2,160
    jalr	$t9
    li	$a1,1
    ld	$ra,48($sp)
    # Line 2962
    ld	$a0,56($sp)
    # Line 2960
    sw	$v0,36($ra)
    # Line 2962
    lw	$t9,4($a0)
    li	$a2,24
    jalr	$t9
    li	$a1,1
    ld	$a0,48($sp)
    lw	$a1,36($a0)
    # Line 2964
    # lw $t9, -22948($gp) # &dmParamsCreate
    # Line 2962
    sw	$v0,156($a1)
    # Line 2964
    lw	$a0,36($a0)
    jal	dmParamsCreate
    addiu	$a0,$a0,152
    ld	$a2,48($sp)
    b	.L0d97657c
    lw	$a2,36($a2)
.end crmTexSubImageCopyDMPbuffer

# Function: crmTexParameter
# Declared: Line 3016 (Source lines: 3017-3074)
# Address: 0x0d976830 - 0x0d976a3c (Size: 524 bytes, Frame: 192)
.ent crmTexParameter
crmTexParameter:
    # Line 3017
    addiu	$sp,$sp,-64
    # Line 3018
    li	$at,3552
    # Line 3017
    move	$v0,$a2
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,16($sp)
    # Line 3018
    beq	$a0,$at,.L0d976870
    # Line 3017
    move	$s0,$a1
    # Line 3018
    li	$v1,3553
    beq	$a0,$v1,.L0d976874
    # Line 3021
    li	$a0,10242
.L0d97685c:
    # Line 3074
    move	$v0,$zero
.L0d976860:
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d976870:
    # Line 3021
    li	$a0,10242
.L0d976874:
    beq	$a0,$s0,.L0d976940
    li	$a1,10243
    beq	$s0,$a1,.L0d976944
    # Line 3029
    li	$at,1
    # Line 3021
    li	$a2,0x8191
    bne	$s0,$a2,.L0d97685c
    nop
    # Line 3052
    lw	$a3,4120($zero)
    li	$a4,1
    lw	$s0,4112($zero)
    beq	$a3,$a4,.L0d97685c
    sd	$v0,0($sp)
    # Line 3054
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    sd	$ra,48($sp)
    jal	__glLookUpTextureObject
    move	$a1,$s1
    ld	$ra,48($sp)
    # Line 3055
    beqz	$v0,.L0d97685c
    # Line 3054
    move	$a1,$v0
    # Line 3055
    lw	$a5,0($v0)
    slti	$a5,$a5,3
    beqz	$a5,.L0d976860
    # Line 3074
    move	$v0,$zero
    # Line 3058
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    move	$a1,$s1
    # Line 3059
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s0
    # Line 3058
    sd	$v0,40($sp)
    # Line 3059
    jal	__glLookUpTexture
    move	$a1,$s1
    ld	$ra,48($sp)
    ld	$a0,40($sp)
    # Line 3060
    beqz	$v0,.L0d97685c
    # Line 3059
    move	$a1,$v0
    # Line 3060
    beqz	$a0,.L0d97685c
    # Line 3064
    ld	$t0,0($sp)
    sb	$t0,212($a0)
    sb	$t0,216($v0)
    # Line 3066
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11756($s0)
    # Line 3074
    ld	$s1,24($sp)
    # Line 3067
    li	$v0,1
    # Line 3066
    ori	$a6,$a6,0x1
    sw	$a6,11756($s0)
    # Line 3074
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d976940:
    # Line 3029
    li	$at,1
.L0d976944:
    # Line 3024
    li	$t1,10496
    li	$t3,0x812d
    li	$t2,10497
    beq	$v0,$t1,.L0d976970
    li	$t8,0x812f
    beq	$v0,$t2,.L0d976970
    nop
    beq	$v0,$t3,.L0d976970
    nop
    bne	$v0,$t8,.L0d97685c
    nop
.L0d976970:
    # Line 3029
    lw	$t9,4120($zero)
    sd	$v0,0($sp)
    lw	$v1,4112($zero)
    beq	$t9,$at,.L0d97685c
    sd	$v1,8($sp)
    # Line 3031
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    ld	$a0,8($sp)
    sd	$ra,48($sp)
    jal	__glLookUpTextureObject
    move	$a1,$s1
    ld	$ra,48($sp)
    # Line 3032
    beqz	$v0,.L0d97685c
    # Line 3031
    move	$a1,$v0
    # Line 3032
    lw	$a0,0($v0)
    slti	$a0,$a0,3
    beqz	$a0,.L0d976860
    # Line 3074
    move	$v0,$zero
    # Line 3035
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    ld	$a0,8($sp)
    jal	__glLookUpTextureParams
    move	$a1,$s1
    # Line 3036
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 3035
    sd	$v0,32($sp)
    # Line 3036
    ld	$a0,8($sp)
    jal	__glLookUpTexture
    move	$a1,$s1
    ld	$ra,48($sp)
    ld	$a5,32($sp)
    # Line 3037
    beqz	$v0,.L0d97685c
    # Line 3036
    move	$a1,$v0
    # Line 3037
    beqz	$a5,.L0d97685c
    li	$a2,10242
    beq	$a2,$s0,.L0d976a30
    # Line 3039
    ld	$a6,0($sp)
    # Line 3041
    ld	$a3,0($sp)
    sw	$a3,4($a5)
    sw	$a3,8($v0)
.L0d976a04:
    # Line 3043
    li	$a5,2
    sw	$a5,4120($zero)
    ld	$a5,8($sp)
    # Line 3074
    ld	$s0,16($sp)
    # Line 3043
    lw	$a4,11756($a5)
    # Line 3044
    li	$v0,1
    # Line 3074
    ld	$s1,24($sp)
    addiu	$sp,$sp,64
    # Line 3043
    ori	$a4,$a4,0x1
    # Line 3074
    jr	$ra
    # Line 3043
    sw	$a4,11756($a5)
.L0d976a30:
    # Line 3039
    sw	$a6,0($a5)
    b	.L0d976a04
    sw	$a6,4($v0)
.end crmTexParameter

# Function: __glcrmim_TexParameterfv
# Declared: Line 3080 (Source lines: 3081-3086)
# Address: 0x0d976a40 - 0x0d976ab0 (Size: 112 bytes, Frame: 48)
.globl __glcrmim_TexParameterfv
.ent __glcrmim_TexParameterfv
__glcrmim_TexParameterfv:
    # Line 3081
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$ra,0xe
    # Line 3082
    lwc1	$f0,0($a2)
    # Line 3081
    addiu	$ra,$ra,-23732
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # Line 3082
    # lw $t9, -32732($gp) # &sub_0d970000
    trunc.l.s	$f0,$f0
    # Line 3081
    sd	$a1,8($sp)
    # Line 3082
    addiu	$t9,$t9,26672
    # Line 3081
    sd	$a0,0($sp)
    # Line 3082
    dmfc1	$at,$f0
    # Line 3081
    sd	$a2,16($sp)
    # Line 3082
    bal __glCrmPickTextureProcs
    sll	$a2,$at,0x0
    beqz	$v0,.L0d976a94
    ld	$ra,24($sp)
.L0d976a88:
    # Line 3086
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d976a94:
    # Line 3085
    # lw $t9, -24388($gp) # &__glim_TexParameterfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    jal	__glim_TexParameterfv
    ld	$a2,16($sp)
    b	.L0d976a88
    ld	$ra,24($sp)
.end __glcrmim_TexParameterfv

# Function: __glcrmim_TexParameterf
# Declared: Line 3088 (Source lines: 3089-3094)
# Address: 0x0d976ab0 - 0x0d976b1c (Size: 108 bytes, Frame: 192)
.globl __glcrmim_TexParameterf
.ent __glcrmim_TexParameterf
__glcrmim_TexParameterf:
    # Line 3089
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    lui	$ra,0xe
    addiu	$ra,$ra,-23844
    sd	$gp,24($sp)
    addu	$gp,$t9,$ra
    # Line 3090
    # lw $t9, -32732($gp) # &sub_0d970000
    trunc.l.s	$f0,$f14
    # Line 3089
    sd	$a1,8($sp)
    # Line 3090
    addiu	$t9,$t9,26672
    # Line 3089
    sd	$a0,0($sp)
    # Line 3090
    dmfc1	$a2,$f0
    # Line 3089
    swc1	$f14,48($sp)
    # Line 3090
    bal __glCrmPickTextureProcs
    sll	$a2,$a2,0x0
    beqz	$v0,.L0d976b00
    ld	$ra,16($sp)
.L0d976af4:
    # Line 3094
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d976b00:
    # Line 3093
    # lw $t9, -24388($gp) # &__glim_TexParameterfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    jal	__glim_TexParameterfv
    addiu	$a2,$sp,48
    b	.L0d976af4
    ld	$ra,16($sp)
.end __glcrmim_TexParameterf

# Function: __glcrmim_TexParameteriv
# Declared: Line 3096 (Source lines: 3097-3102)
# Address: 0x0d976b20 - 0x0d976b84 (Size: 100 bytes, Frame: 48)
.globl __glcrmim_TexParameteriv
.ent __glcrmim_TexParameteriv
__glcrmim_TexParameteriv:
    # Line 3097
    addiu	$sp,$sp,-48
    lui	$at,0xe
    sd	$a1,8($sp)
    addiu	$at,$at,-23956
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3098
    # lw $t9, -32732($gp) # &sub_0d970000
    # Line 3097
    sd	$a0,0($sp)
    sd	$a2,16($sp)
    # Line 3098
    addiu	$t9,$t9,26672
    # Line 3097
    sd	$ra,24($sp)
    # Line 3098
    bal __glCrmPickTextureProcs
    lw	$a2,0($a2)
    beqz	$v0,.L0d976b68
    ld	$ra,24($sp)
.L0d976b5c:
    # Line 3102
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d976b68:
    # Line 3101
    # lw $t9, -24380($gp) # &__glim_TexParameteriv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    jal	__glim_TexParameteriv
    ld	$a2,16($sp)
    b	.L0d976b5c
    ld	$ra,24($sp)
.end __glcrmim_TexParameteriv

# Function: __glcrmim_TexParameteri
# Declared: Line 3104 (Source lines: 3105-3110)
# Address: 0x0d976b90 - 0x0d976bf0 (Size: 96 bytes, Frame: 192)
.globl __glcrmim_TexParameteri
.ent __glcrmim_TexParameteri
__glcrmim_TexParameteri:
    # Line 3105
    lui	$at,0xe
    addiu	$sp,$sp,-64
    addiu	$at,$at,-24068
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3106
    # lw $t9, -32732($gp) # &sub_0d970000
    # Line 3105
    sw	$a2,52($sp)
    sd	$a1,8($sp)
    # Line 3106
    addiu	$t9,$t9,26672
    # Line 3105
    sd	$ra,16($sp)
    # Line 3106
    bal __glCrmPickTextureProcs
    # Line 3105
    sd	$a0,0($sp)
    # Line 3106
    beqz	$v0,.L0d976bd8
    # Line 3109
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    ld	$ra,16($sp)
.L0d976bcc:
    # Line 3110
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d976bd8:
    # Line 3109
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    jal	__glim_TexParameteriv
    addiu	$a2,$sp,52
    b	.L0d976bcc
    ld	$ra,16($sp)
.end __glcrmim_TexParameteri

# Function: __glcrmim_BindTextureEXT
# Declared: Line 3112 (Source lines: 3113-3165)
# Address: 0x0d976bf0 - 0x0d976f10 (Size: 800 bytes, Frame: 224)
.globl __glcrmim_BindTextureEXT
.ent __glcrmim_BindTextureEXT
__glcrmim_BindTextureEXT:
    # Line 3113
    lui	$v0,0xe
    addiu	$sp,$sp,-96
    addiu	$v0,$v0,-24164
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    lw	$at,-22396($gp)
    move	$a2,$a1
    beqz	$at,.L0d976c28
    sd	$ra,72($sp)
    # Line 3115
    # lw $t9, -23768($gp) # &__glim_BindTextureEXT
    jal	__glim_BindTextureEXT
    nop
    b	.L0d976c58
    ld	$ra,72($sp)
.L0d976c28:
    # Line 3120
    lw	$a1,4120($zero)
    lw	$v1,4112($zero)
    beqz	$a1,.L0d976c84
    sd	$v1,48($sp)
    li	$a3,2
    sd	$a2,80($sp)
    beq	$a1,$a3,.L0d976c64
    sd	$a0,88($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,72($sp)
.L0d976c58:
    # Line 3165
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d976c64:
    # Line 3120
    ld	$t9,48($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,88($sp)
    ld	$a2,80($sp)
    sw	$zero,4120($zero)
.L0d976c84:
    # Line 3122
    li	$ra,3552
    beq	$a0,$ra,.L0d976d2c
    # Line 3128
    li	$v0,1
    # Line 3122
    li	$at,3553
    beq	$a0,$at,.L0d976cac
    # Line 3130
    nop	# was lw $t9, -23768($gp) # &__glim_BindTextureEXT
    jal	__glim_BindTextureEXT
    move	$a1,$a2
    b	.L0d976c58
    ld	$ra,72($sp)
.L0d976cac:
    sd	$v0,40($sp)
.L0d976cb0:
    # Line 3134
    # lw $t9, -23772($gp) # &__glBindTexture
    ld	$a0,48($sp)
    jal	__glBindTexture
    ld	$a1,40($sp)
    ld	$v1,48($sp)
    lw	$v1,32088($v1)
    sll	$v1,$v1,0x10
    bgez	$v1,.L0d976d04
    # Line 3139
    ld	$a2,48($sp)
    # Line 3141
    ld	$a3,40($sp)
    # Line 3139
    lw	$a2,1792($a2)
    # Line 3141
    dsll32	$a0,$a2,0xe
    li	$a4,1
    # Line 3148
    ld	$a6,40($sp)
    # Line 3141
    bgez	$a0,.L0d976cf8
    # Line 3148
    dsll32	$a5,$a2,0xf
    # Line 3141
    beq	$a3,$a4,.L0d976ecc
    # Line 3143
    nop	# was lw $t9, -24240($gp) # &__glIsTextureConsistent
.L0d976cf8:
    # Line 3148
    bgez	$a5,.L0d976d08
    # Line 3163
    li	$t0,2
    # Line 3148
    beqz	$a6,.L0d976d34
.L0d976d04:
    # Line 3163
    li	$t0,2
.L0d976d08:
    sw	$t0,4120($zero)
    ld	$t0,48($sp)
    ld	$ra,72($sp)
    lw	$a7,11756($t0)
    # Line 3165
    ld	$gp,56($sp)
    addiu	$sp,$sp,96
    # Line 3163
    ori	$a7,$a7,0x1
    # Line 3165
    jr	$ra
    # Line 3163
    sw	$a7,11756($t0)
.L0d976d2c:
    b	.L0d976cb0
    # Line 3124
    sd	$zero,40($sp)
.L0d976d34:
    # Line 3150
    # lw $t9, -24240($gp) # &__glIsTextureConsistent
    ld	$a0,48($sp)
    jal	__glIsTextureConsistent
    li	$a1,3552
    beqz	$v0,.L0d976d04
    # Line 3151
    nop	# was lw $t9, -24460($gp) # &__glLookUpTexture
    ld	$a0,48($sp)
    jal	__glLookUpTexture
    li	$a1,3552
    # Line 3152
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    # Line 3151
    sd	$v0,64($sp)
    # Line 3152
    ld	$a0,48($sp)
    jal	__glLookUpTextureParams
    li	$a1,3552
    ld	$a7,64($sp)
    move	$a1,$v0
.L0d976d74:
    # Line 3156
    beqz	$a7,.L0d976d08
    # Line 3163
    li	$t0,2
    # Line 3156
    lw	$t2,228($a7)
    lw	$t2,56($t2)
    bnez	$t2,.L0d976d08
    # Line 3163
    li	$t0,2
    # Line 3157
    ld	$t3,48($sp)
    li	$a6,6
    # Line 3158
    li	$a5,54
    move	$a2,$zero
    addiu	$a4,$a7,4
    # Line 3157
    sw	$a7,28208($t3)
.L0d976da4:
    addiu	$a6,$a6,-1
    # Line 3158
    addu	$t8,$a2,$a1
    addiu	$a5,$a5,-1
    addu	$t9,$a2,$a4
    lw	$t8,0($t8)
    addiu	$a2,$a2,4
    bnez	$a6,.L0d976da4
    sw	$t8,0($t9)
    addiu	$a6,$a1,28
    addiu	$t9,$a4,28
    li	$t3,0x20
    addiu	$a0,$a1,4
    addiu	$ra,$a4,4
    addiu	$a3,$a4,12
    sd	$a3,24($sp)
    addiu	$t0,$a4,20
    addiu	$v1,$a1,20
    sd	$v1,16($sp)
    addiu	$t2,$a4,24
    addiu	$t1,$a1,24
    addiu	$a7,$a1,12
    sd	$a7,32($sp)
    addiu	$a7,$a4,16
    addiu	$v0,$a4,8
    sd	$v0,8($sp)
    addiu	$t8,$a1,16
    addiu	$at,$a1,8
    sd	$at,0($sp)
.L0d976e14:
    ld	$a3,8($sp)
    addu	$v0,$a2,$a1
    addu	$v1,$a2,$a4
    lw	$v0,0($v0)
    addu	$at,$a2,$a0
    sw	$v0,0($v1)
    addu	$v0,$a2,$ra
    lw	$at,0($at)
    sw	$at,0($v0)
    ld	$v1,0($sp)
    ld	$v0,24($sp)
    ld	$at,32($sp)
    addu	$v1,$a2,$v1
    addu	$a3,$a2,$a3
    lw	$v1,0($v1)
    addu	$at,$a2,$at
    sw	$v1,0($a3)
    addu	$v0,$a2,$v0
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$a3,$a2,$t8
    ld	$v1,16($sp)
    addu	$at,$a2,$a7
    lw	$a3,0($a3)
    sw	$a3,0($at)
    addu	$v1,$a2,$v1
    addu	$a3,$a2,$t0
    lw	$v1,0($v1)
    addu	$v0,$a2,$t1
    sw	$v1,0($a3)
    addu	$v1,$a2,$t2
    lw	$v0,0($v0)
    addiu	$a5,$a5,-8
    addu	$at,$a2,$a6
    sw	$v0,0($v1)
    lw	$at,0($at)
    addu	$v0,$a2,$t9
    addu	$a2,$a2,$t3
    bgtz	$a5,.L0d976e14
    sw	$at,0($v0)
    # Line 3159
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-4160
    bal __glCrmGenericPickStoreProcs
    ld	$a0,48($sp)
    b	.L0d976c58
    ld	$ra,72($sp)
.L0d976ecc:
    # Line 3143
    ld	$a0,48($sp)
    jal	sub_0d970000
    li	$a1,3553
    beqz	$v0,.L0d976d08
    # Line 3163
    li	$t0,2
    # Line 3144
    # lw $t9, -24460($gp) # &__glLookUpTexture
    ld	$a0,48($sp)
    jal	__glLookUpTexture
    li	$a1,3553
    # Line 3145
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    # Line 3144
    sd	$v0,64($sp)
    # Line 3145
    ld	$a0,48($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    ld	$a7,64($sp)
    # Line 3144
    b	.L0d976d74
    # Line 3145
    move	$a1,$v0
.end __glcrmim_BindTextureEXT

# Function: __glcrmim_GetTexImage
# Declared: Line 3168 (Source lines: 3170-3424)
# Address: 0x0d976f10 - 0x0d9779ec (Size: 2780 bytes, Frame: 208)
.globl __glcrmim_GetTexImage
.ent __glcrmim_GetTexImage
__glcrmim_GetTexImage:
    # Line 3170
    addiu	$sp,$sp,-720
    sd	$s5,528($sp)
    # Line 3184
    lw	$s5,4112($zero)
    sd	$s7,712($sp)
    sd	$ra,704($sp)
    sd	$s4,696($sp)
    sd	$s8,688($sp)
    # Line 3170
    sd	$s3,552($sp)
    sd	$s2,568($sp)
    move	$v0,$a4
    move	$s2,$a3
    sd	$s1,536($sp)
    move	$s1,$a2
    move	$s3,$a1
    # Line 3184
    lw	$at,4120($zero)
    # Line 3170
    sd	$s0,544($sp)
    # Line 3184
    li	$a5,1
    # Line 3170
    lui	$v1,0xe
    move	$s0,$a0
    sd	$s6,680($sp)
    addiu	$v1,$v1,-24964
    sd	$gp,560($sp)
    # Line 3184
    beq	$at,$a5,.L0d97788c
    # Line 3170
    addu	$gp,$t9,$v1
    # Line 3184
    li	$a0,0x806f
    beq	$s0,$a0,.L0d977994
    # Line 3187
    nop	# was lw $t9, -26016($gp) # &__glim_GetTexImage
    # Line 3190
    li	$a1,0x8063
    beq	$s0,$a1,.L0d9777ec
    # Line 3194
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 3190
    li	$a2,0x8064
    beq	$s0,$a2,.L0d9777ec
    # Line 3194
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 3190
    li	$a3,0x8070
    beq	$s0,$a3,.L0d9777e8
    sd	$a4,512($sp)
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s5
    jal	__glLookUpTexture
    move	$a1,$s0
    beqz	$v0,.L0d9777ec
    # Line 3194
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 3198
    bltz	$s3,.L0d977800
    # Line 3199
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 3198
    slti	$a4,$s3,11
    beqz	$a4,.L0d977800
    # Line 3199
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 3203
    sltiu	$a5,$s1,6407
    bnez	$a5,.L0d97700c
    sltiu	$a0,$s1,6405
    sltiu	$a6,$s1,6408
    bnez	$a6,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
    # Line 3203
    sltiu	$a0,$s1,6410
    bnez	$a0,.L0d977810
    sltiu	$a7,$s1,6409
    sltiu	$a7,$s1,6411
    bnez	$a7,.L0d977040
    li	$t0,0x8000
    beq	$s1,$t0,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
    b	.L0d97779c
    # Line 3215
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d97700c:
    # Line 3203
    bnez	$a0,.L0d977034
    sltiu	$t3,$s1,6404
    sltiu	$t1,$s1,6406
    bnez	$t1,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
    # Line 3203
    li	$t2,6406
    beq	$s1,$t2,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
    b	.L0d97779c
    # Line 3215
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d977034:
    # Line 3203
    bnez	$t3,.L0d977790
    li	$a2,6403
    beqz	$a0,.L0d977798
.L0d977040:
    # Line 3218
    sltiu	$a0,$s2,5126
.L0d977044:
    bnez	$a0,.L0d977090
    sltiu	$a1,$s2,5123
    sltiu	$t8,$s2,5127
    bnez	$t8,.L0d9770c0
    li	$a0,0x8034
    sltu	$t9,$s2,$a0
    bnez	$t9,.L0d9777ac
    sltu	$ra,$a0,$s2
    beqz	$ra,.L0d9777c8
    # Line 3240
    li	$a5,6408
    # Line 3218
    li	$a0,0x8036
    sltu	$at,$s2,$a0
    bnez	$at,.L0d9779a4
    li	$at,0x8035
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0d9777c8
    # Line 3240
    li	$a5,6408
    b	.L0d977830
    # Line 3250
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d977090:
    # Line 3218
    bnez	$a1,.L0d977768
    sltiu	$a2,$s2,5124
    bnez	$a2,.L0d9770c0
    sltiu	$a3,$s2,5125
    bnez	$a3,.L0d977828
    li	$t0,5124
    bnez	$a0,.L0d9770c4
    # Line 3255
    sll	$s6,$s3,0x2
    b	.L0d977830
    # Line 3250
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9770b8:
    # Line 3218
    bne	$s2,$a4,.L0d977830
    # Line 3250
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9770c0:
    # Line 3255
    sll	$s6,$s3,0x2
.L0d9770c4:
    subu	$s6,$s6,$s3
    sll	$s6,$s6,0x3
    lw	$s4,228($v0)
    addu	$s6,$s6,$s3
    sll	$s6,$s6,0x2
    # Line 3254
    lw	$a0,284($v0)
    # Line 3255
    addu	$s4,$s4,$s6
    # Line 3256
    sll	$t8,$s3,0x3
    # Line 3258
    lw	$t9,56($s4)
    # Line 3256
    lw	$s6,32($a0)
    addu	$t8,$t8,$s3
    sll	$t8,$t8,0x2
    # Line 3258
    bnez	$t9,.L0d977158
    # Line 3256
    addu	$s6,$s6,$t8
    # Line 3258
    lw	$t8,4($s4)
    beqz	$t8,.L0d97715c
    # Line 3259
    nop	# was lw $t9, -26016($gp) # &__glim_GetTexImage
    # Line 3258
    lw	$t9,8($s4)
    beqz	$t9,.L0d97715c
    # Line 3259
    nop	# was lw $t9, -26016($gp) # &__glim_GetTexImage
    # Line 3258
    lw	$ra,0($s4)
    beqz	$ra,.L0d97715c
    # Line 3259
    nop	# was lw $t9, -26016($gp) # &__glim_GetTexImage
    # Line 3260
    lw	$a2,68($s4)
    lui	$a3,0xffff
    ori	$a3,$a3,0x7fc2
    la	$a1,sub_0da40000
    addu	$a2,$a2,$a3
    sltiu	$at,$a2,27
    addiu	$a1,$a1,17648
    sll	$a2,$a2,0x2
    sd	$a0,520($sp)
    beqz	$at,.L0d9771dc
    addu	$a1,$a1,$a2
    lw	$a4,0($a1)
    jr	$a4
    # Line 3293
    la	$s0,sub_0d970000
.L0d977158:
    # Line 3259
    # lw $t9, -26016($gp) # &__glim_GetTexImage
.L0d97715c:
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s1
    move	$a3,$s2
    jal	__glim_GetTexImage
    ld	$a4,512($sp)
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d97717c:
    # Line 3368
    ld	$a5,624($sp)
    beqz	$a5,.L0d9771ac
    ld	$s7,712($sp)
    # Line 3423
    lw	$t9,12($s5)
.L0d97718c:
    move	$a0,$s5
    jalr	$t9
    lw	$a1,504($sp)
    # Line 3424
    lw	$t9,12($s5)
    move	$a0,$s5
    jalr	$t9
    lw	$a1,508($sp)
    ld	$s7,712($sp)
.L0d9771ac:
    ld	$s4,696($sp)
    ld	$s8,688($sp)
    ld	$s6,680($sp)
    # Line 3216
    ld	$gp,560($sp)
    ld	$s0,544($sp)
    ld	$s1,536($sp)
    ld	$ra,704($sp)
    ld	$s2,568($sp)
    ld	$s3,552($sp)
    ld	$s5,528($sp)
    jr	$ra
    addiu	$sp,$sp,720
.L0d9771dc:
    # Line 3305
    move	$s0,$zero
.L0d9771e0:
    # Line 3309
    ld	$a6,512($sp)
    # Line 3307
    lw	$a7,232($v0)
    # Line 3309
    # lw $t9, -26020($gp) # &__glInitImagePack
    move	$a5,$s2
    # Line 3307
    sw	$a7,432($sp)
    # Line 3309
    move	$a4,$s1
    addiu	$a1,$sp,0
    lw	$a3,8($s4)
    move	$a0,$s5
    jal	__glInitImagePack
    lw	$a2,4($s4)
    # Line 3312
    lw	$t2,56($s4)
    lw	$t3,132($sp)
    # Line 3315
    # lw $t9, -28080($gp) # &__glInitPacker
    # Line 3312
    addu	$t2,$t2,$t3
    sw	$t2,132($sp)
    # Line 3313
    lw	$t0,56($s4)
    lw	$t1,128($sp)
    # Line 3315
    addiu	$a1,$sp,0
    move	$a0,$s5
    # Line 3313
    addu	$t0,$t0,$t1
    # Line 3315
    jal	__glInitPacker
    # Line 3313
    sw	$t0,128($sp)
    # Line 3316
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s5
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 3321
    # lw $t9, -27724($gp) # &__glGenericPickCopyImageSpan
    li	$a2,1
    addiu	$a1,$sp,0
    # Line 3319
    lw	$s1,24($s4)
    # Line 3321
    move	$a0,$s5
    jal	__glGenericPickCopyImageSpan
    # Line 3318
    lw	$s2,20($s4)
    # Line 3324
    slti	$t8,$v0,3
    beqz	$t8,.L0d9772a0
    # Line 3321
    sd	$v0,624($sp)
    # Line 3324
    lw	$ra,0($sp)
    lw	$at,80($sp)
    bne	$ra,$at,.L0d9772a0
    lw	$v0,4($sp)
    lw	$v1,84($sp)
    bne	$v0,$v1,.L0d9772a0
    nop
    beqz	$s0,.L0d9779c8
    nop
    b	.L0d9772a4
    sd	$zero,624($sp)
.L0d9772a0:
    # Line 3327
    beqz	$s0,.L0d977318
.L0d9772a4:
    # Line 3331
    ld	$a0,624($sp)
    addiu	$a0,$a0,-1
    bltz	$a0,.L0d977308
    sd	$a0,672($sp)
    ld	$t8,624($sp)
    ld	$s3,672($sp)
    move	$a0,$t8
    andi	$t8,$t8,0x1
    addiu	$v0,$sp,-4
    sll	$s3,$s3,0x2
    beqz	$t8,.L0d9772e0
    addu	$s3,$sp,$s3
    addiu	$s3,$s3,-4
    # Line 3332
    lw	$t9,364($s3)
    sw	$t9,368($s3)
.L0d9772e0:
    sra	$ra,$a0,0x1
    beqz	$ra,.L0d977308
    nop
    nop
.L0d9772f0:
    lw	$v1,356($s3)
    lw	$at,360($s3)
    # Line 3331
    addiu	$s3,$s3,-8
    # Line 3332
    sw	$v1,368($s3)
    # Line 3331
    bne	$s3,$v0,.L0d9772f0
    # Line 3332
    sw	$at,372($s3)
.L0d977308:
    # Line 3335
    ld	$a0,624($sp)
    # Line 3334
    sw	$s0,360($sp)
    # Line 3335
    addiu	$a0,$a0,1
    sd	$a0,624($sp)
.L0d977318:
    ld	$a1,624($sp)
    beqz	$a1,.L0d977350
    nop
    # Line 3339
    lw	$t9,0($s5)
    move	$a0,$s5
    sll	$s0,$s2,0x4
    jalr	$t9
    move	$a1,$s0
    # Line 3340
    lw	$t9,0($s5)
    move	$a1,$s0
    move	$a0,$s5
    jalr	$t9
    # Line 3339
    sw	$v0,504($sp)
    # Line 3340
    sw	$v0,508($sp)
.L0d977350:
    # Line 3342
    lw	$v0,0($s6)
    lw	$a3,16($s6)
    andi	$a2,$v0,0x2
    sllv	$a3,$s2,$a3
    beqz	$a2,.L0d977850
    sd	$a3,592($sp)
    # Line 3353
    lw	$t0,32($s6)
    # Line 3346
    li	$a7,512
    # Line 3345
    andi	$s7,$v0,0x4
    # Line 3351
    lw	$s8,4($s6)
    # Line 3346
    li	$a6,8
    # Line 3353
    sd	$t0,656($sp)
    # Line 3345
    andi	$s7,$s7,0xff
    # Line 3352
    ld	$a4,592($sp)
    # Line 3346
    movz	$a6,$a7,$s7
    # Line 3351
    addiu	$s8,$s8,-1
    # Line 3346
    sd	$a6,584($sp)
    # Line 3352
    sll	$a5,$s8,0x9
    subu	$a4,$a4,$a5
    sd	$a4,592($sp)
.L0d9773a0:
    # Line 3360
    ld	$t8,520($sp)
    lw	$t8,0($t8)
    andi	$t8,$t8,0x80
    lw	$t9,30648($s5)
    beqz	$t8,.L0d9773dc
    sd	$t9,664($sp)
    # Line 3363
    lw	$at,96($sp)
    addiu	$v0,$s1,-1
    mult	$at,$v0
    lw	$t9,92($sp)
    # Line 3365
    negu	$at,$at
    sw	$at,96($sp)
    # Line 3363
    mflo	$ra
    addu	$t9,$t9,$ra
    sw	$t9,92($sp)
.L0d9773dc:
    # Line 3368
    addiu	$a0,$s1,-1
    sd	$a0,648($sp)
    blez	$s1,.L0d9779b4
    sd	$s1,640($sp)
    sll	$v0,$s8,0x10
    sd	$v0,616($sp)
    lw	$v0,92($sp)
    ld	$at,624($sp)
    la	$s6,sub_0d970000
    addiu	$v1,$at,-1
    sd	$v1,672($sp)
    lui	$s4,0x1
    ld	$t9,592($sp)
    li	$t8,32
    sltu	$at,$zero,$at
    sd	$at,608($sp)
    li	$s0,-1
    slt	$t8,$t8,$t9
    sd	$t8,576($sp)
    addiu	$s6,$s6,16768
    sra	$ra,$t9,0x1
    sd	$ra,632($sp)
    addiu	$ra,$ra,-1
    b	.L0d9775a0
    sd	$ra,600($sp)
.L0d977440:
    # Line 3372
    beqz	$s7,.L0d9776d4
    # Line 3382
    ld	$t2,576($sp)
.L0d977448:
    ld	$a1,632($sp)
    move	$v0,$s1
    move	$a0,$s3
    blez	$a1,.L0d977498
    ld	$a3,600($sp)
    ld	$a2,632($sp)
    move	$a4,$a2
    andi	$a2,$a2,0x1
    beqz	$a2,.L0d977490
    sra	$a7,$a4,0x1
    addiu	$v0,$s1,2
    andi	$a6,$v0,0x7
    lhu	$a5,0($s1)
    addiu	$a0,$s3,2
    beqz	$a6,.L0d977754
    sh	$a5,0($s3)
.L0d977488:
    addiu	$a3,$a3,-1
    sra	$a7,$a4,0x1
.L0d977490:
    bnez	$a7,.L0d9779e0
    addiu	$v0,$v0,2
.L0d977498:
    # Line 3384
    ld	$t0,624($sp)
.L0d97749c:
    beqz	$t0,.L0d977538
    # Line 3399
    lw	$v1,92($sp)
    # Line 3388
    ld	$t1,672($sp)
    blez	$t1,.L0d9776f8
    lw	$s1,504($sp)
    addiu	$s3,$sp,0
    move	$s2,$zero
    nop
    nop
.L0d9774c0:
    # Line 3391
    lw	$t9,360($s3)
    lw	$s6,508($sp)
    move	$a2,$s1
    lw	$t3,504($sp)
    addiu	$a1,$sp,0
    andi	$t2,$s2,0x1
    move	$a0,$s5
    movn	$s6,$t3,$t2
    jalr	$t9
    move	$a3,$s6
    # Line 3389
    ld	$t9,672($sp)
    addiu	$s2,$s2,1
    # Line 3392
    move	$s1,$s6
    # Line 3389
    ld	$t8,664($sp)
    addiu	$s3,$s3,4
    bne	$t9,$s2,.L0d9774c0
    # Line 3393
    sw	$t8,30648($s5)
    addiu	$v0,$sp,0
    # Line 3389
    ld	$s2,672($sp)
.L0d97750c:
    # Line 3395
    sll	$t9,$s2,0x2
    addu	$t9,$v0,$t9
    lw	$t9,360($t9)
    move	$a0,$s5
    move	$a2,$s1
    lw	$a3,92($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    la	$s6,sub_0d970000
    addiu	$s6,$s6,16768
    # Line 3399
    lw	$v1,92($sp)
.L0d977538:
    # Line 3401
    ld	$a0,656($sp)
    ld	$a1,584($sp)
    # Line 3399
    lw	$v0,96($sp)
    # Line 3401
    addu	$a0,$a1,$a0
    sd	$a0,656($sp)
    # Line 3399
    addu	$v0,$v0,$v1
    # Line 3401
    beqz	$s7,.L0d97756c
    # Line 3399
    sw	$v0,92($sp)
    nop
    nop
    # Line 3401
    ld	$a2,648($sp)
    andi	$a2,$a2,0x3
    beqz	$a2,.L0d977704
.L0d97756c:
    # Line 3411
    ld	$a7,648($sp)
    # Line 3419
    ld	$a4,656($sp)
    # Line 3368
    ld	$a3,640($sp)
    # Line 3419
    ld	$a6,616($sp)
    # Line 3368
    addiu	$a3,$a3,-1
    sd	$a3,640($sp)
    # Line 3419
    addu	$a6,$a6,$a4
    # Line 3411
    andi	$a5,$a7,0x7f
    # Line 3368
    addiu	$a7,$a7,-1
    sd	$a7,648($sp)
    movz	$a4,$a6,$a5
    blez	$a3,.L0d97717c
    sd	$a4,656($sp)
.L0d9775a0:
    # Line 3370
    lw	$t1,504($sp)
    ld	$t0,608($sp)
    # Line 3369
    ld	$s1,656($sp)
    # Line 3370
    move	$s3,$v0
    blez	$s8,.L0d9776cc
    movn	$s3,$t1,$t0
    b	.L0d9775d0
    move	$s2,$zero
.L0d9775c0:
    # Line 3372
    addiu	$s2,$s2,1
.L0d9775c4:
    # Line 3379
    addiu	$s3,$s3,512
    # Line 3372
    beq	$s2,$s8,.L0d977440
    # Line 3378
    addu	$s1,$s4,$s1
.L0d9775d0:
    # Line 3370
    beqz	$s7,.L0d97764c
    # Line 3374
    li	$a4,255
    move	$a3,$s3
    b	.L0d9779d0
    move	$v0,$s1
    nop
    nop
    nop
.L0d9775f0:
    addiu	$v0,$v0,2
    andi	$t3,$v0,0x7
    addiu	$a3,$a3,4
    lhu	$t2,-2($v0)
    beqz	$t3,.L0d977638
    sh	$t2,-2($a3)
.L0d977608:
    addiu	$v0,$v0,2
    beq	$a4,$s0,.L0d9775c0
    andi	$t9,$v0,0x7
    lhu	$t8,-2($v0)
.L0d977618:
    addiu	$a4,$a4,-2
    bnez	$t9,.L0d9775f0
    sh	$t8,0($a3)
    addiu	$v0,$v0,24
    addiu	$at,$v0,7680
    andi	$ra,$v0,0x1e0
    b	.L0d9775f0
    movz	$v0,$at,$ra
.L0d977638:
    addiu	$v0,$v0,24
    addiu	$a0,$v0,7680
    andi	$v1,$v0,0x1e0
    b	.L0d977608
    movz	$v0,$a0,$v1
.L0d97764c:
    # Line 3376
    move	$t9,$s6
    move	$a0,$s1
    move	$a1,$s3
    bal __glCrmPickTextureProcs
    li	$a2,512
    b	.L0d9775c4
    # Line 3372
    addiu	$s2,$s2,1
    nop
    nop
.L0d977670:
    # Line 3382
    addiu	$v0,$v0,2
    beq	$a3,$s0,.L0d977498
    andi	$a2,$v0,0x7
    lhu	$a1,-2($v0)
.L0d977680:
    addiu	$a3,$a3,-2
    beqz	$a2,.L0d9776b8
    sh	$a1,0($a0)
.L0d97768c:
    addiu	$v0,$v0,2
    andi	$a5,$v0,0x7
    addiu	$a0,$a0,4
    lhu	$a4,-2($v0)
    bnez	$a5,.L0d977670
    sh	$a4,-2($a0)
    addiu	$v0,$v0,24
    addiu	$a7,$v0,7680
    andi	$a6,$v0,0x1e0
    b	.L0d977670
    movz	$v0,$a7,$a6
.L0d9776b8:
    addiu	$v0,$v0,24
    addiu	$t1,$v0,7680
    andi	$t0,$v0,0x1e0
    b	.L0d97768c
    movz	$v0,$t1,$t0
.L0d9776cc:
    # Line 3372
    bnez	$s7,.L0d977448
    # Line 3382
    ld	$t2,576($sp)
.L0d9776d4:
    beqz	$t2,.L0d97773c
    # Line 3384
    nop	# was lw $t9, -22808($gp) # &bcopy
    move	$t9,$s6
    move	$a0,$s1
    move	$a1,$s3
    bal __glCrmPickTextureProcs
    ld	$a2,592($sp)
    b	.L0d97749c
    ld	$t0,624($sp)
.L0d9776f8:
    addiu	$v0,$sp,0
    b	.L0d97750c
    # Line 3389
    move	$s2,$zero
.L0d977704:
    # Line 3405
    ld	$t3,648($sp)
    ld	$t8,656($sp)
    andi	$t3,$t3,0xf
    addiu	$t8,$t8,2016
    bnez	$t3,.L0d97756c
    sd	$t8,656($sp)
    # Line 3408
    ld	$t8,656($sp)
    ld	$t9,648($sp)
    addiu	$t8,$t8,-7680
    andi	$t9,$t9,0x3f
    # Line 3411
    addiu	$ra,$t8,30720
    movz	$t8,$ra,$t9
    b	.L0d97756c
    sd	$t8,656($sp)
.L0d97773c:
    # Line 3384
    move	$a0,$s1
    move	$a1,$s3
    jal	bcopy
    ld	$a2,592($sp)
    b	.L0d97749c
    ld	$t0,624($sp)
.L0d977754:
    # Line 3382
    addiu	$at,$s1,7706
    addiu	$v0,$s1,26
    andi	$ra,$v0,0x1e0
    b	.L0d977488
    movz	$v0,$at,$ra
.L0d977768:
    # Line 3218
    sltiu	$v1,$s2,5121
    bnez	$v1,.L0d9770b8
    li	$a4,5120
    sltiu	$a0,$s2,5122
    bnez	$a0,.L0d9770c0
    li	$a1,5122
    beq	$s2,$a1,.L0d9770c4
    # Line 3255
    sll	$s6,$s3,0x2
    b	.L0d977830
    # Line 3250
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d977790:
    # Line 3203
    beq	$s1,$a2,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
.L0d977798:
    # Line 3215
    # lw $t9, -26452($gp) # &__glSetError
.L0d97779c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d9777ac:
    # Line 3218
    li	$a0,0x8033
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0d97786c
    li	$t8,0x8032
    sltu	$a4,$a0,$s2
    bnez	$a4,.L0d97782c
    # Line 3240
    li	$a5,6408
.L0d9777c8:
    beq	$s1,$a5,.L0d9770c0
    li	$a6,0x8000
    beq	$s1,$a6,.L0d9770c0
    # Line 3245
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d9777e8:
    # Line 3194
    # lw $t9, -26452($gp) # &__glSetError
.L0d9777ec:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9771ac
    ld	$s7,712($sp)
    # Line 3199
    # lw $t9, -26452($gp) # &__glSetError
.L0d977800:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d977810:
    # Line 3203
    bnez	$a7,.L0d977840
    li	$t1,6408
    bnez	$a0,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
    b	.L0d97779c
    # Line 3215
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d977828:
    # Line 3218
    beq	$s2,$t0,.L0d9770c0
.L0d97782c:
    # Line 3250
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d977830:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d977840:
    # Line 3203
    beq	$s1,$t1,.L0d977044
    # Line 3218
    sltiu	$a0,$s2,5126
    b	.L0d97779c
    # Line 3215
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d977850:
    # Line 3358
    lw	$t2,20($s6)
    # Line 3357
    ld	$t3,592($sp)
    # Line 3358
    move	$s8,$zero
    # Line 3357
    sd	$t3,584($sp)
    # Line 3358
    move	$s7,$zero
    b	.L0d9773a0
    sd	$t2,656($sp)
.L0d97786c:
    # Line 3218
    bne	$s2,$t8,.L0d97782c
    # Line 3228
    li	$t9,6407
    beq	$s1,$t9,.L0d9770c0
    # Line 3232
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d97788c:
    # Line 3184
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d9778a0:
    # Line 3268
    li	$v1,2
    sw	$v1,68($sp)
    # Line 3267
    li	$at,5123
    sw	$at,4($sp)
    # Line 3266
    li	$ra,6403
    sw	$ra,0($sp)
    # Line 3269
    b	.L0d9771e0
    move	$s0,$zero
.L0d9778c0:
    # Line 3299
    la	$a1,sub_0d970000
    li	$a3,4
    sw	$a3,68($sp)
    # Line 3298
    li	$a4,5121
    sw	$a4,4($sp)
    # Line 3297
    li	$a5,6408
    sw	$a5,0($sp)
    # Line 3299
    move	$s0,$zero
    lw	$a0,12($s6)
    li	$a2,1
    addiu	$a1,$a1,9840
    xor	$a0,$a0,$a2
    b	.L0d9771e0
    movz	$s0,$a1,$a0
.L0d9778f8:
    # Line 3289
    la	$a7,sub_0d970000
    li	$t1,2
    sw	$t1,68($sp)
    # Line 3288
    li	$t2,0x8034
    sw	$t2,4($sp)
    # Line 3287
    li	$t3,6408
    sw	$t3,0($sp)
    li	$t0,1
    # Line 3289
    lw	$a6,12($s6)
    addiu	$a7,$a7,8816
    # Line 3293
    addiu	$s0,$s0,8336
    xor	$a6,$a6,$t0
    b	.L0d9771e0
    movz	$s0,$a7,$a6
.L0d977930:
    # Line 3284
    li	$t9,2
    sw	$t9,68($sp)
    # Line 3283
    li	$t8,0x8033
    sw	$t8,4($sp)
    # Line 3282
    li	$s0,6408
    sw	$s0,0($sp)
    # Line 3285
    b	.L0d9771e0
    move	$s0,$zero
.L0d977950:
    # Line 3279
    li	$v1,2
    sw	$v1,68($sp)
    # Line 3278
    li	$at,5121
    sw	$at,4($sp)
    # Line 3277
    li	$ra,1
    sw	$ra,0($sp)
    # Line 3280
    b	.L0d9771e0
    move	$s0,$zero
.L0d977970:
    # Line 3273
    li	$ra,2
    sw	$ra,68($sp)
    # Line 3275
    la	$s0,sub_0d970000
    # Line 3272
    li	$t9,5121
    sw	$t9,4($sp)
    # Line 3271
    li	$t8,6406
    sw	$t8,0($sp)
    # Line 3275
    b	.L0d9771e0
    addiu	$s0,$s0,7264
.L0d977994:
    # Line 3187
    jalr	$t9
    move	$a0,$s0
    b	.L0d9771ac
    ld	$s7,712($sp)
.L0d9779a4:
    # Line 3218
    beq	$s2,$at,.L0d9777c8
    # Line 3240
    li	$a5,6408
    b	.L0d977830
    # Line 3250
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9779b4:
    # Line 3368
    ld	$v0,624($sp)
    beqz	$v0,.L0d9771ac
    ld	$s7,712($sp)
    b	.L0d97718c
    # Line 3423
    lw	$t9,12($s5)
.L0d9779c8:
    # Line 3324
    b	.L0d977350
    sd	$zero,624($sp)
.L0d9779d0:
    # Line 3374
    addiu	$v0,$v0,2
    andi	$t9,$v0,0x7
    b	.L0d977618
    lhu	$t8,-2($v0)
.L0d9779e0:
    # Line 3382
    andi	$a2,$v0,0x7
    b	.L0d977680
    lhu	$a1,-2($v0)
.end __glcrmim_GetTexImage

# Function: __glcrmim_TexImage1D
# Declared: Line 3430 (Source lines: 3434-3484)
# Address: 0x0d9779f0 - 0x0d977c6c (Size: 636 bytes, Frame: 144)
.globl __glcrmim_TexImage1D
.ent __glcrmim_TexImage1D
__glcrmim_TexImage1D:
    # Line 3440
    lw	$v1,4112($zero)
    # Line 3434
    addiu	$sp,$sp,-144
    sd	$a7,48($sp)
    sd	$a6,56($sp)
    sd	$a5,64($sp)
    sd	$a4,112($sp)
    sd	$a3,80($sp)
    sd	$a2,72($sp)
    sd	$a1,96($sp)
    sd	$a0,104($sp)
    # Line 3440
    lw	$v0,4120($zero)
    sd	$v1,88($sp)
    # Line 3434
    lui	$at,0xe
    sd	$ra,128($sp)
    addiu	$at,$at,-27748
    sd	$gp,120($sp)
    # Line 3440
    beqz	$v0,.L0d977a74
    # Line 3434
    addu	$gp,$t9,$at
    # Line 3440
    li	$v1,2
    beq	$v0,$v1,.L0d977a5c
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d977a4c:
    ld	$ra,128($sp)
.L0d977a50:
    # Line 3484
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d977a5c:
    # Line 3440
    ld	$t9,88($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d977a74:
    # Line 3443
    ld	$a0,88($sp)
    ld	$a1,104($sp)
    ld	$a2,96($sp)
    ld	$a3,72($sp)
    ld	$a4,80($sp)
    # lw $t9, -24212($gp) # &__glCheckTexImage1DArgs
    ld	$a5,112($sp)
    ld	$a6,64($sp)
    jal	__glCheckTexImage1DArgs
    ld	$a7,56($sp)
    beqz	$v0,.L0d977a4c
    # Line 3446
    ld	$ra,112($sp)
    beqz	$ra,.L0d977b14
    # Line 3449
    li	$v1,3552
    ld	$at,104($sp)
    bne	$at,$v1,.L0d977ae8
    # Line 3453
    ld	$a0,104($sp)
    # Line 3449
    ld	$a2,96($sp)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    lw	$a0,228($v0)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,56($a0)
    beqz	$a0,.L0d977bec
    sd	$v0,40($sp)
    # Line 3453
    ld	$a0,104($sp)
.L0d977ae8:
    ld	$a1,96($sp)
    ld	$a2,72($sp)
    ld	$a3,80($sp)
    ld	$a4,112($sp)
    # lw $t9, -24196($gp) # &__glim_TexImage1D
    ld	$a5,64($sp)
    ld	$a6,56($sp)
    jal	__glim_TexImage1D
    ld	$a7,48($sp)
    b	.L0d977a50
    ld	$ra,128($sp)
.L0d977b14:
    # Line 3458
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    sd	$v0,40($sp)
    ld	$a0,88($sp)
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$a2,0($v0)
    slti	$a2,$a2,3
    beqz	$a2,.L0d977c58
    move	$t2,$v0
    # Line 3466
    ld	$t3,88($sp)
    lw	$t3,764($t3)
    lw	$t8,64($t3)
    # Line 3465
    ld	$a5,80($sp)
    # Line 3466
    beqz	$t8,.L0d977b6c
    sd	$v0,32($sp)
    # Line 3468
    ld	$ra,80($sp)
    # Line 3466
    lw	$t9,0($t3)
    li	$at,0x8010
    # Line 3468
    subu	$ra,$ra,$t8
    xor	$t9,$t9,$at
    addiu	$ra,$ra,1
    movz	$a5,$ra,$t9
.L0d977b6c:
    # Line 3470
    ld	$a0,88($sp)
    ld	$a1,104($sp)
    ld	$a2,40($sp)
    ld	$a3,96($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a6,112($sp)
    ld	$a4,72($sp)
    li	$t0,1
    addiu	$t9,$t9,4288
    sw	$zero,12($sp)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    sw	$t0,4($sp)
    bal __glCrmPickTextureProcs
    addiu	$a6,$a6,1
    # Line 3474
    ld	$ra,48($sp)
    beqz	$ra,.L0d977bbc
    # Line 3480
    ld	$a0,32($sp)
    # Line 3474
    bnez	$v0,.L0d977c0c
    # Line 3480
    ld	$a0,32($sp)
.L0d977bbc:
    li	$v1,1
    sb	$v1,12($a0)
    # Line 3483
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$v0,88($sp)
    ld	$ra,128($sp)
    lw	$at,11756($v0)
    # Line 3484
    ld	$gp,120($sp)
    addiu	$sp,$sp,144
    # Line 3483
    ori	$at,$at,0x1
    # Line 3484
    jr	$ra
    # Line 3483
    sw	$at,11756($v0)
.L0d977bec:
    # Line 3451
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,88($sp)
    addiu	$t9,$t9,-1888
    ld	$a1,40($sp)
    jal	sub_0d970000
    ld	$a2,96($sp)
    b	.L0d977ae8
    # Line 3453
    ld	$a0,104($sp)
.L0d977c0c:
    # Line 3475
    ld	$a0,88($sp)
    ld	$a1,40($sp)
    ld	$a2,96($sp)
    ld	$a5,80($sp)
    sw	$zero,28($sp)
    sw	$zero,20($sp)
    ld	$a7,64($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$at,48($sp)
    ld	$ra,56($sp)
    addiu	$t9,$t9,20368
    move	$a3,$zero
    move	$a4,$zero
    sw	$ra,4($sp)
    li	$a6,1
    bal __glCrmPickTextureProcs
    sw	$at,12($sp)
    b	.L0d977bbc
    # Line 3480
    ld	$a0,32($sp)
.L0d977c58:
    # Line 3460
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d977a50
    ld	$ra,128($sp)
.end __glcrmim_TexImage1D

# Function: __glcrmlei_TexImage1D
# Declared: Line 3486 (Source lines: 3489-3550)
# Address: 0x0d977c70 - 0x0d977ee8 (Size: 632 bytes, Frame: 192)
.globl __glcrmlei_TexImage1D
.ent __glcrmlei_TexImage1D
__glcrmlei_TexImage1D:
    # Line 3489
    addiu	$sp,$sp,-192
    sd	$a7,48($sp)
    sd	$a6,56($sp)
    sd	$a5,96($sp)
    sd	$a4,72($sp)
    sd	$a3,64($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    # Line 3496
    lw	$v0,4120($zero)
    # Line 3489
    sd	$a0,104($sp)
    lui	$at,0xe
    sd	$ra,120($sp)
    addiu	$at,$at,-28388
    sd	$gp,112($sp)
    # Line 3496
    beqz	$v0,.L0d977cec
    # Line 3489
    addu	$gp,$t9,$at
    # Line 3496
    li	$v1,2
    beq	$v0,$v1,.L0d977cd8
    # Line 3499
    ld	$t9,104($sp)
    # Line 3502
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d977cc8:
    ld	$ra,120($sp)
.L0d977ccc:
    # Line 3550
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d977cd8:
    # Line 3499
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 3500
    sw	$zero,4120($zero)
.L0d977cec:
    # Line 3508
    ld	$a0,104($sp)
    ld	$a1,88($sp)
    ld	$a2,80($sp)
    ld	$a3,64($sp)
    ld	$a4,72($sp)
    # lw $t9, -24212($gp) # &__glCheckTexImage1DArgs
    ld	$a5,96($sp)
    ld	$a6,56($sp)
    jal	__glCheckTexImage1DArgs
    ld	$a7,48($sp)
    beqz	$v0,.L0d977cc8
    # Line 3511
    ld	$ra,96($sp)
    beqz	$ra,.L0d977d94
    # Line 3524
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    # Line 3515
    li	$v1,3552
    ld	$at,88($sp)
    bne	$at,$v1,.L0d977d5c
    ld	$a2,80($sp)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    lw	$a0,228($v0)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,56($a0)
    beqz	$a0,.L0d977e6c
    sd	$v0,40($sp)
.L0d977d5c:
    # Line 3519
    ld	$a0,104($sp)
.L0d977d60:
    ld	$a1,88($sp)
    ld	$a2,80($sp)
    ld	$a3,64($sp)
    ld	$a4,72($sp)
    ld	$a5,96($sp)
    ld	$a6,56($sp)
    # lw $t9, -24192($gp) # &__gllei_TexImage1D
    ld	$a7,48($sp)
    lw	$t0,196($sp)
    jal	__gllei_TexImage1D
    sw	$t0,4($sp)
    b	.L0d977ccc
    ld	$ra,120($sp)
.L0d977d94:
    sd	$v0,40($sp)
    # Line 3524
    ld	$a0,104($sp)
    jalr	$t9
    li	$a1,3552
    lw	$t1,0($v0)
    slti	$t1,$t1,3
    beqz	$t1,.L0d977ed4
    move	$t2,$v0
    # Line 3532
    ld	$t3,104($sp)
    lw	$t3,764($t3)
    lw	$t8,64($t3)
    # Line 3531
    ld	$a5,72($sp)
    # Line 3532
    beqz	$t8,.L0d977de8
    sd	$v0,32($sp)
    # Line 3534
    ld	$ra,72($sp)
    # Line 3532
    lw	$t9,0($t3)
    li	$at,0x8010
    # Line 3534
    subu	$ra,$ra,$t8
    xor	$t9,$t9,$at
    addiu	$ra,$ra,1
    movz	$a5,$ra,$t9
.L0d977de8:
    # Line 3536
    ld	$a0,104($sp)
    ld	$a1,88($sp)
    ld	$a2,40($sp)
    ld	$a3,80($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a6,96($sp)
    ld	$a4,64($sp)
    li	$t0,1
    addiu	$t9,$t9,4288
    sw	$zero,12($sp)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    sw	$t0,4($sp)
    bal __glCrmPickTextureProcs
    addiu	$a6,$a6,1
    # Line 3540
    lw	$t2,196($sp)
    beqz	$t2,.L0d977e3c
    # Line 3546
    ld	$a0,32($sp)
    # Line 3540
    bnez	$v0,.L0d977e8c
    # Line 3541
    ld	$a0,104($sp)
    # Line 3546
    ld	$a0,32($sp)
.L0d977e3c:
    li	$v1,1
    sb	$v1,12($a0)
    # Line 3549
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$v0,104($sp)
    ld	$ra,120($sp)
    lw	$at,11756($v0)
    # Line 3550
    ld	$gp,112($sp)
    addiu	$sp,$sp,192
    # Line 3549
    ori	$at,$at,0x1
    # Line 3550
    jr	$ra
    # Line 3549
    sw	$at,11756($v0)
.L0d977e6c:
    # Line 3517
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,104($sp)
    addiu	$t9,$t9,-1888
    ld	$a1,40($sp)
    jal	sub_0d970000
    ld	$a2,80($sp)
    b	.L0d977d60
    # Line 3519
    ld	$a0,104($sp)
.L0d977e8c:
    # Line 3541
    ld	$a1,40($sp)
    ld	$a2,80($sp)
    ld	$a5,72($sp)
    sw	$zero,28($sp)
    sw	$t2,12($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a7,56($sp)
    li	$ra,1
    sw	$ra,20($sp)
    addiu	$t9,$t9,20368
    move	$a3,$zero
    move	$a4,$zero
    ld	$ra,48($sp)
    sw	$ra,4($sp)
    bal __glCrmPickTextureProcs
    li	$a6,1
    b	.L0d977e3c
    # Line 3546
    ld	$a0,32($sp)
.L0d977ed4:
    # Line 3526
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d977ccc
    ld	$ra,120($sp)
.end __glcrmlei_TexImage1D

# Function: __glcrmim_TexImage2D
# Declared: Line 3553 (Source lines: 3556-3617)
# Address: 0x0d977ef0 - 0x0d9781ac (Size: 700 bytes, Frame: 208)
.globl __glcrmim_TexImage2D
.ent __glcrmim_TexImage2D
__glcrmim_TexImage2D:
    # Line 3563
    lw	$v1,4112($zero)
    # Line 3556
    addiu	$sp,$sp,-208
    sd	$a7,64($sp)
    sd	$a6,72($sp)
    sd	$a4,80($sp)
    sd	$a3,96($sp)
    sd	$a2,88($sp)
    sd	$a1,104($sp)
    # Line 3563
    sd	$v1,56($sp)
    # Line 3556
    sd	$s0,128($sp)
    # Line 3563
    lw	$v0,4120($zero)
    # Line 3556
    move	$s0,$a5
    sd	$s1,112($sp)
    lui	$at,0xe
    move	$s1,$a0
    sd	$ra,136($sp)
    addiu	$at,$at,-29028
    sd	$gp,120($sp)
    # Line 3563
    beqz	$v0,.L0d977f84
    # Line 3556
    addu	$gp,$t9,$at
    # Line 3563
    li	$v1,2
    beq	$v0,$v1,.L0d977f6c
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,136($sp)
.L0d977f58:
    # Line 3617
    ld	$gp,120($sp)
    ld	$s0,128($sp)
    ld	$s1,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d977f6c:
    # Line 3563
    ld	$t9,56($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d977f84:
    # Line 3573
    ld	$a7,72($sp)
    ld	$a4,96($sp)
    ld	$a3,88($sp)
    ld	$a2,104($sp)
    # lw $t9, -24208($gp) # &__glCheckTexImage2DArgs
    # Line 3563
    ld	$a0,56($sp)
    # Line 3568
    ld	$v0,80($sp)
    # Line 3563
    lbu	$at,32209($a0)
    # Line 3573
    ld	$ra,64($sp)
    # Line 3568
    addu	$a5,$v0,$v0
    # Line 3573
    move	$a6,$s0
    sw	$ra,4($sp)
    movz	$a5,$v0,$at
    move	$a1,$s1
    jal	__glCheckTexImage2DArgs
    sd	$a5,48($sp)
    beqz	$v0,.L0d977f58
    ld	$ra,136($sp)
    # Line 3576
    beqz	$s0,.L0d978044
    # Line 3589
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    # Line 3580
    li	$v1,3553
    bne	$s1,$v1,.L0d978010
    # Line 3584
    ld	$a1,104($sp)
    # Line 3580
    ld	$a2,104($sp)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    lw	$a0,228($v0)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,56($a0)
    beqz	$a0,.L0d978118
    sd	$v0,40($sp)
    # Line 3584
    ld	$a1,104($sp)
.L0d978010:
    ld	$a2,88($sp)
    ld	$a3,96($sp)
    ld	$a4,80($sp)
    ld	$a6,72($sp)
    # lw $t9, -24188($gp) # &__glim_TexImage2D
    ld	$a7,64($sp)
    move	$a0,$s1
    lw	$t0,212($sp)
    move	$a5,$s0
    jal	__glim_TexImage2D
    sw	$t0,4($sp)
    b	.L0d977f58
    ld	$ra,136($sp)
.L0d978044:
    sd	$v0,40($sp)
    # Line 3589
    ld	$a0,56($sp)
    jalr	$t9
    li	$a1,3553
    lw	$t1,0($v0)
    slti	$t1,$t1,3
    ld	$t2,48($sp)
    beqz	$t1,.L0d978198
    move	$t3,$v0
    # Line 3597
    ld	$t8,56($sp)
    lw	$t8,764($t8)
    lw	$t9,64($t8)
    # Line 3596
    ld	$a5,96($sp)
    # Line 3597
    beqz	$t9,.L0d978094
    sd	$v0,32($sp)
    lw	$t3,0($t8)
    li	$ra,0x8011
    beq	$t3,$ra,.L0d978138
    li	$at,0x8012
    beq	$t3,$at,.L0d978138
.L0d978094:
    # Line 3603
    ld	$a0,56($sp)
    ld	$a2,40($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a3,104($sp)
    move	$a1,$s1
    ld	$a4,88($sp)
    addiu	$t9,$t9,4288
    move	$a6,$t2
    move	$a7,$s0
    sw	$zero,12($sp)
    li	$v0,2
    bal __glCrmPickTextureProcs
    sw	$v0,4($sp)
    # Line 3607
    lw	$t2,212($sp)
    beqz	$t2,.L0d9780dc
    nop
    bnez	$v0,.L0d978154
    # Line 3608
    ld	$a0,56($sp)
.L0d9780dc:
    # Line 3617
    ld	$gp,120($sp)
.L0d9780e0:
    # Line 3613
    ld	$a0,32($sp)
    # Line 3617
    ld	$s0,128($sp)
    # Line 3613
    li	$v1,1
    sb	$v1,12($a0)
    # Line 3616
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$v0,56($sp)
    ld	$ra,136($sp)
    lw	$at,11756($v0)
    # Line 3617
    ld	$s1,112($sp)
    addiu	$sp,$sp,208
    # Line 3616
    ori	$at,$at,0x1
    # Line 3617
    jr	$ra
    # Line 3616
    sw	$at,11756($v0)
.L0d978118:
    # Line 3582
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,56($sp)
    addiu	$t9,$t9,-1888
    ld	$a1,40($sp)
    jal	sub_0d970000
    ld	$a2,104($sp)
    b	.L0d978010
    # Line 3584
    ld	$a1,104($sp)
.L0d978138:
    # Line 3600
    ld	$a5,96($sp)
    # Line 3601
    lw	$t3,68($t8)
    # Line 3600
    subu	$a5,$a5,$t9
    # Line 3601
    subu	$t2,$t2,$t3
    # Line 3600
    addiu	$a5,$a5,1
    b	.L0d978094
    # Line 3601
    addiu	$t2,$t2,1
.L0d978154:
    # Line 3608
    ld	$a1,40($sp)
    ld	$a2,104($sp)
    ld	$a5,96($sp)
    ld	$a6,80($sp)
    ld	$a7,72($sp)
    sw	$zero,28($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    sw	$zero,20($sp)
    sw	$t2,12($sp)
    addiu	$t9,$t9,20368
    move	$a3,$zero
    ld	$t0,64($sp)
    move	$a4,$zero
    bal __glCrmPickTextureProcs
    sw	$t0,4($sp)
    b	.L0d9780e0
    # Line 3617
    ld	$gp,120($sp)
.L0d978198:
    # Line 3591
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d977f58
    ld	$ra,136($sp)
.end __glcrmim_TexImage2D

# Function: __glcrmlei_TexImage2D
# Declared: Line 3619 (Source lines: 3623-3694)
# Address: 0x0d9781b0 - 0x0d978468 (Size: 696 bytes, Frame: 208)
.globl __glcrmlei_TexImage2D
.ent __glcrmlei_TexImage2D
__glcrmlei_TexImage2D:
    # Line 3623
    addiu	$sp,$sp,-208
    sd	$a7,56($sp)
    sd	$a5,64($sp)
    sd	$a4,80($sp)
    sd	$a3,72($sp)
    sd	$a2,88($sp)
    sd	$s1,96($sp)
    sd	$s0,104($sp)
    move	$s0,$a6
    # Line 3631
    lw	$v0,4120($zero)
    # Line 3623
    move	$s1,$a1
    sd	$s2,112($sp)
    lui	$at,0xe
    move	$s2,$a0
    sd	$ra,128($sp)
    addiu	$at,$at,-29732
    sd	$gp,120($sp)
    # Line 3631
    beqz	$v0,.L0d97823c
    # Line 3623
    addu	$gp,$t9,$at
    # Line 3631
    li	$v1,2
    beq	$v0,$v1,.L0d97822c
    # Line 3637
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d978210:
    # Line 3694
    ld	$gp,120($sp)
.L0d978214:
    ld	$ra,128($sp)
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$s2,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d97822c:
    # Line 3634
    lw	$t9,11784($s2)
    jalr	$t9
    nop
    # Line 3635
    sw	$zero,4120($zero)
.L0d97823c:
    # Line 3649
    ld	$a7,56($sp)
    ld	$a4,80($sp)
    ld	$a3,72($sp)
    ld	$a2,88($sp)
    # Line 3638
    lbu	$t1,32209($s2)
    # Line 3644
    ld	$t2,64($sp)
    # Line 3649
    # lw $t9, -24208($gp) # &__glCheckTexImage2DArgs
    move	$a6,$s0
    lw	$t0,212($sp)
    # Line 3644
    addu	$a5,$t2,$t2
    # Line 3649
    move	$a1,$s1
    sw	$t0,4($sp)
    movz	$a5,$t2,$t1
    move	$a0,$s2
    jal	__glCheckTexImage2DArgs
    sd	$a5,48($sp)
    beqz	$v0,.L0d978210
    nop
    # Line 3652
    beqz	$s0,.L0d978300
    # Line 3665
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    # Line 3656
    li	$t3,3553
    bne	$s1,$t3,.L0d9782c0
    ld	$ra,88($sp)
    sll	$t9,$ra,0x2
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    lw	$t8,228($v0)
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,56($t8)
    beqz	$t8,.L0d9783d0
    sd	$v0,40($sp)
.L0d9782c0:
    # Line 3660
    ld	$a2,88($sp)
.L0d9782c4:
    ld	$a3,72($sp)
    ld	$a4,80($sp)
    ld	$a5,64($sp)
    ld	$a7,56($sp)
    lw	$v0,212($sp)
    # lw $t9, -24184($gp) # &__gllei_TexImage2D
    sw	$v0,4($sp)
    move	$a0,$s2
    move	$a1,$s1
    lw	$at,220($sp)
    move	$a6,$s0
    jal	__gllei_TexImage2D
    sw	$at,12($sp)
    b	.L0d978214
    # Line 3694
    ld	$gp,120($sp)
.L0d978300:
    # Line 3665
    move	$a0,$s2
    sd	$v0,40($sp)
    jalr	$t9
    li	$a1,3553
    lw	$v1,0($v0)
    slti	$v1,$v1,3
    ld	$t2,48($sp)
    beqz	$v1,.L0d978454
    move	$a0,$v0
    # Line 3673
    lw	$t3,764($s2)
    lw	$t8,64($t3)
    # Line 3672
    ld	$a5,80($sp)
    # Line 3673
    beqz	$t8,.L0d97834c
    sd	$v0,32($sp)
    lw	$a0,0($t3)
    li	$a1,0x8011
    beq	$a0,$a1,.L0d9783f0
    li	$a2,0x8012
    beq	$a0,$a2,.L0d9783f0
.L0d97834c:
    # Line 3679
    ld	$a2,40($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    move	$a0,$s2
    ld	$a3,88($sp)
    move	$a1,$s1
    ld	$a4,72($sp)
    addiu	$t9,$t9,4288
    move	$a6,$t2
    move	$a7,$s0
    sw	$zero,12($sp)
    li	$t0,2
    bal __glCrmPickTextureProcs
    sw	$t0,4($sp)
    # Line 3683
    lw	$t2,220($sp)
    beqz	$t2,.L0d978394
    nop
    bnez	$v0,.L0d97840c
    # Line 3684
    ld	$a1,40($sp)
.L0d978394:
    # Line 3694
    ld	$gp,120($sp)
.L0d978398:
    ld	$s0,104($sp)
    # Line 3689
    ld	$a0,32($sp)
    ld	$ra,128($sp)
    li	$v1,1
    sb	$v1,12($a0)
    # Line 3693
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s2)
    # Line 3694
    ld	$s1,96($sp)
    # Line 3693
    ori	$at,$at,0x1
    sw	$at,11756($s2)
    # Line 3694
    ld	$s2,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9783d0:
    # Line 3658
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-1888
    ld	$a1,40($sp)
    move	$a0,$s2
    jal	sub_0d970000
    ld	$a2,88($sp)
    b	.L0d9782c4
    # Line 3660
    ld	$a2,88($sp)
.L0d9783f0:
    # Line 3676
    ld	$a5,80($sp)
    # Line 3677
    lw	$t9,68($t3)
    # Line 3676
    subu	$a5,$a5,$t8
    # Line 3677
    subu	$t2,$t2,$t9
    # Line 3676
    addiu	$a5,$a5,1
    b	.L0d97834c
    # Line 3677
    addiu	$t2,$t2,1
.L0d97840c:
    # Line 3684
    ld	$a2,88($sp)
    ld	$a5,80($sp)
    ld	$a6,64($sp)
    ld	$a7,56($sp)
    lw	$t0,212($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    sw	$zero,28($sp)
    move	$a0,$s2
    sw	$t2,12($sp)
    addiu	$t9,$t9,20368
    move	$a3,$zero
    li	$ra,1
    sw	$ra,20($sp)
    move	$a4,$zero
    bal __glCrmPickTextureProcs
    sw	$t0,4($sp)
    b	.L0d978398
    # Line 3694
    ld	$gp,120($sp)
.L0d978454:
    # Line 3667
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d978214
    # Line 3694
    ld	$gp,120($sp)
.end __glcrmlei_TexImage2D

# Function: __glcrmim_TexSubImage1DEXT
# Declared: Line 3708 (Source lines: 3711-3746)
# Address: 0x0d978470 - 0x0d97864c (Size: 476 bytes, Frame: 144)
.globl __glcrmim_TexSubImage1DEXT
.ent __glcrmim_TexSubImage1DEXT
__glcrmim_TexSubImage1DEXT:
    # Line 3711
    addiu	$sp,$sp,-144
    sd	$a6,56($sp)
    sd	$a5,80($sp)
    sd	$a4,72($sp)
    sd	$a3,96($sp)
    sd	$a2,88($sp)
    sd	$a1,104($sp)
    sd	$a0,64($sp)
    sd	$s0,112($sp)
    # Line 3715
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 3711
    lui	$at,0xe
    sd	$ra,128($sp)
    addiu	$at,$at,-30436
    sd	$gp,120($sp)
    # Line 3715
    beqz	$v0,.L0d9784ec
    # Line 3711
    addu	$gp,$t9,$at
    # Line 3715
    li	$v1,2
    beq	$v0,$v1,.L0d9784dc
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9784c8:
    ld	$ra,128($sp)
.L0d9784cc:
    ld	$s0,112($sp)
    # Line 3746
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9784dc:
    # Line 3715
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d9784ec:
    # Line 3718
    ld	$a1,64($sp)
    ld	$a2,104($sp)
    ld	$a3,88($sp)
    # lw $t9, -23828($gp) # &__glCheckTexSubImage1DArgs
    ld	$a4,96($sp)
    ld	$a5,72($sp)
    move	$a0,$s0
    jal	__glCheckTexSubImage1DArgs
    ld	$a6,80($sp)
    beqz	$v0,.L0d9784c8
    # Line 3724
    ld	$t8,104($sp)
    sll	$t3,$t8,0x2
    subu	$t3,$t3,$t8
    sll	$t3,$t3,0x3
    lw	$t2,228($v0)
    addu	$t3,$t3,$t8
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lw	$t2,56($t2)
    beqz	$t2,.L0d97856c
    # Line 3733
    ld	$t8,56($sp)
    # Line 3727
    ld	$a0,64($sp)
    ld	$a1,104($sp)
    ld	$a2,88($sp)
    ld	$a3,96($sp)
    # lw $t9, -23812($gp) # &__glim_TexSubImage1DEXT
    ld	$a4,72($sp)
    ld	$a5,80($sp)
    jal	__glim_TexSubImage1DEXT
    ld	$a6,56($sp)
    b	.L0d9784cc
    ld	$ra,128($sp)
.L0d97856c:
    # Line 3733
    beqz	$t8,.L0d9784cc
    ld	$ra,128($sp)
    ld	$t9,96($sp)
    beqz	$t9,.L0d9784cc
    ld	$ra,128($sp)
    sd	$v0,32($sp)
    # Line 3735
    lw	$ra,28208($s0)
    sd	$t2,40($sp)
    lw	$at,284($v0)
    beq	$ra,$v0,.L0d978638
    sd	$at,48($sp)
    # Line 3739
    ld	$a1,32($sp)
.L0d97859c:
    ld	$a2,104($sp)
    sw	$zero,28($sp)
    ld	$a7,72($sp)
    sw	$zero,20($sp)
    ld	$a5,96($sp)
    ld	$t1,80($sp)
    ld	$t2,56($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$t0,88($sp)
    move	$a0,$s0
    ld	$a3,40($sp)
    addiu	$t9,$t9,20368
    li	$a6,1
    move	$a4,$zero
    sw	$t2,12($sp)
    sw	$t1,4($sp)
    bal __glCrmPickTextureProcs
    addu	$a3,$a3,$t0
    # Line 3741
    ld	$v0,32($sp)
    lw	$ra,28208($s0)
    ld	$at,48($sp)
    bne	$ra,$v0,.L0d9784c8
    ld	$a0,104($sp)
    sll	$v1,$a0,0x3
    lw	$at,32($at)
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    andi	$at,$at,0x1
    beqz	$at,.L0d9784cc
    ld	$ra,128($sp)
    # Line 3743
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6720
    move	$a0,$s0
    jal	sub_0d970000
    move	$a1,$v0
    b	.L0d9784cc
    ld	$ra,128($sp)
.L0d978638:
    # Line 3737
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    b	.L0d97859c
    # Line 3739
    ld	$a1,32($sp)
.end __glcrmim_TexSubImage1DEXT

# Function: __glcrmlei_TexSubImage1DEXT
# Declared: Line 3748 (Source lines: 3751-3796)
# Address: 0x0d978650 - 0x0d978830 (Size: 480 bytes, Frame: 144)
.globl __glcrmlei_TexSubImage1DEXT
.ent __glcrmlei_TexSubImage1DEXT
__glcrmlei_TexSubImage1DEXT:
    # Line 3751
    addiu	$sp,$sp,-144
    sd	$a7,56($sp)
    sd	$a6,80($sp)
    sd	$a5,72($sp)
    sd	$a4,96($sp)
    sd	$a3,88($sp)
    sd	$a2,104($sp)
    sd	$a1,64($sp)
    # Line 3756
    lw	$v0,3200($a0)
    # Line 3751
    sd	$s0,112($sp)
    lui	$at,0xe
    move	$s0,$a0
    sd	$ra,128($sp)
    addiu	$at,$at,-30916
    sd	$gp,120($sp)
    # Line 3756
    beqz	$v0,.L0d9786cc
    # Line 3751
    addu	$gp,$t9,$at
    # Line 3756
    li	$v1,2
    beq	$v0,$v1,.L0d9786bc
    # Line 3762
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9786a8:
    ld	$ra,128($sp)
.L0d9786ac:
    ld	$s0,112($sp)
    # Line 3796
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9786bc:
    # Line 3759
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    # Line 3760
    sw	$zero,3200($s0)
.L0d9786cc:
    # Line 3768
    ld	$a1,64($sp)
    ld	$a2,104($sp)
    ld	$a3,88($sp)
    # lw $t9, -23828($gp) # &__glCheckTexSubImage1DArgs
    ld	$a4,96($sp)
    ld	$a5,72($sp)
    move	$a0,$s0
    jal	__glCheckTexSubImage1DArgs
    ld	$a6,80($sp)
    beqz	$v0,.L0d9786a8
    # Line 3774
    ld	$a2,104($sp)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    lw	$a0,228($v0)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,56($a0)
    beqz	$a0,.L0d978750
    # Line 3783
    ld	$a2,56($sp)
    # Line 3777
    ld	$a1,64($sp)
    ld	$a2,104($sp)
    ld	$a3,88($sp)
    ld	$a4,96($sp)
    # lw $t9, -23808($gp) # &__gllei_TexSubImage1DEXT
    ld	$a5,72($sp)
    ld	$a6,80($sp)
    move	$a0,$s0
    jal	__gllei_TexSubImage1DEXT
    ld	$a7,56($sp)
    b	.L0d9786ac
    ld	$ra,128($sp)
.L0d978750:
    # Line 3783
    beqz	$a2,.L0d9786a8
    ld	$a3,96($sp)
    beqz	$a3,.L0d9786ac
    ld	$ra,128($sp)
    sd	$v0,32($sp)
    # Line 3785
    lw	$a4,28208($s0)
    sd	$a0,40($sp)
    lw	$a5,284($v0)
    beq	$a4,$v0,.L0d97881c
    sd	$a5,48($sp)
    # Line 3789
    ld	$a1,32($sp)
.L0d97877c:
    ld	$a2,104($sp)
    sw	$zero,28($sp)
    ld	$a7,72($sp)
    ld	$a5,96($sp)
    li	$ra,1
    sw	$ra,20($sp)
    ld	$t1,80($sp)
    ld	$t2,56($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$t0,88($sp)
    move	$a0,$s0
    ld	$a3,40($sp)
    addiu	$t9,$t9,20368
    move	$a4,$zero
    sw	$t2,12($sp)
    move	$a6,$ra
    sw	$t1,4($sp)
    bal __glCrmPickTextureProcs
    addu	$a3,$a3,$t0
    # Line 3791
    ld	$v0,32($sp)
    lw	$at,28208($s0)
    ld	$v1,48($sp)
    bne	$at,$v0,.L0d9786a8
    ld	$a1,104($sp)
    sll	$a0,$a1,0x3
    lw	$v1,32($v1)
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d9786ac
    ld	$ra,128($sp)
    # Line 3793
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6720
    move	$a0,$s0
    jal	sub_0d970000
    move	$a1,$v0
    b	.L0d9786ac
    ld	$ra,128($sp)
.L0d97881c:
    # Line 3787
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    b	.L0d97877c
    # Line 3789
    ld	$a1,32($sp)
.end __glcrmlei_TexSubImage1DEXT

# Function: __glcrmim_TexSubImage2DEXT
# Declared: Line 3799 (Source lines: 3803-3847)
# Address: 0x0d978830 - 0x0d978a3c (Size: 524 bytes, Frame: 208)
.globl __glcrmim_TexSubImage2DEXT
.ent __glcrmim_TexSubImage2DEXT
__glcrmim_TexSubImage2DEXT:
    # Line 3803
    addiu	$sp,$sp,-208
    sd	$a7,80($sp)
    sd	$a6,72($sp)
    sd	$a5,96($sp)
    sd	$a4,104($sp)
    sd	$a3,64($sp)
    sd	$a2,88($sp)
    sd	$a0,56($sp)
    sd	$s0,120($sp)
    # Line 3809
    lw	$s0,4112($zero)
    lw	$v0,4120($zero)
    li	$v1,2
    # Line 3803
    sd	$s1,112($sp)
    lui	$at,0xe
    move	$s1,$a1
    sd	$ra,136($sp)
    addiu	$at,$at,-31396
    sd	$gp,128($sp)
    # Line 3809
    beqz	$v0,.L0d9788b8
    # Line 3803
    addu	$gp,$t9,$at
    # Line 3809
    beq	$v0,$v1,.L0d9788a8
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d978890:
    ld	$ra,136($sp)
.L0d978894:
    ld	$s1,112($sp)
    ld	$s0,120($sp)
    # Line 3847
    ld	$gp,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9788a8:
    # Line 3809
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d9788b8:
    # Line 3819
    ld	$a7,72($sp)
    ld	$a5,104($sp)
    ld	$a4,64($sp)
    ld	$a3,88($sp)
    ld	$a1,56($sp)
    # lw $t9, -23824($gp) # &__glCheckTexSubImage2DArgs
    # Line 3814
    ld	$t2,96($sp)
    # Line 3819
    move	$a2,$s1
    ld	$t0,80($sp)
    move	$a0,$s0
    # Line 3809
    lbu	$t1,32209($s0)
    # Line 3814
    addu	$a6,$t2,$t2
    # Line 3819
    sw	$t0,4($sp)
    # Line 3814
    addiu	$a6,$a6,-1
    # Line 3819
    jal	__glCheckTexSubImage2DArgs
    movz	$a6,$t2,$t1
    beqz	$v0,.L0d978890
    # Line 3834
    ld	$v1,104($sp)
    # Line 3825
    lw	$t2,212($sp)
    sll	$t8,$s1,0x2
    subu	$t8,$t8,$s1
    sll	$t8,$t8,0x3
    lw	$t3,228($v0)
    addu	$t8,$t8,$s1
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    lw	$t3,56($t3)
    beqz	$t3,.L0d97895c
    # Line 3828
    ld	$a0,56($sp)
    ld	$a2,88($sp)
    ld	$a3,64($sp)
    ld	$a4,104($sp)
    ld	$a5,96($sp)
    # lw $t9, -23804($gp) # &__glim_TexSubImage2DEXT
    ld	$a6,72($sp)
    ld	$a7,80($sp)
    move	$a1,$s1
    jal	__glim_TexSubImage2DEXT
    sw	$t2,4($sp)
    b	.L0d978894
    ld	$ra,136($sp)
.L0d97895c:
    # Line 3834
    beqz	$t2,.L0d978894
    ld	$ra,136($sp)
    beqz	$v1,.L0d978890
    ld	$a0,96($sp)
    beqz	$a0,.L0d978894
    ld	$ra,136($sp)
    sd	$v0,32($sp)
    # Line 3836
    lw	$a1,28208($s0)
    sd	$t3,40($sp)
    lw	$a2,284($v0)
    beq	$a1,$v0,.L0d978a28
    sd	$a2,48($sp)
    # Line 3840
    ld	$a1,32($sp)
.L0d978990:
    lw	$a5,212($sp)
    sw	$zero,28($sp)
    ld	$a7,72($sp)
    sw	$zero,20($sp)
    ld	$a6,96($sp)
    ld	$t1,80($sp)
    sw	$a5,12($sp)
    ld	$a4,64($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a3,40($sp)
    move	$a0,$s0
    ld	$t0,88($sp)
    addiu	$t9,$t9,20368
    move	$a2,$s1
    ld	$a5,104($sp)
    addu	$a4,$a3,$a4
    sw	$t1,4($sp)
    bal __glCrmPickTextureProcs
    addu	$a3,$a3,$t0
    # Line 3842
    ld	$v0,32($sp)
    lw	$ra,28208($s0)
    sll	$v1,$s1,0x3
    ld	$at,48($sp)
    addu	$v1,$v1,$s1
    bne	$ra,$v0,.L0d978890
    sll	$v1,$v1,0x2
    lw	$at,32($at)
    addu	$at,$at,$v1
    lw	$at,0($at)
    andi	$at,$at,0x1
    beqz	$at,.L0d978890
    # Line 3844
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6720
    move	$a0,$s0
    jal	sub_0d970000
    move	$a1,$v0
    b	.L0d978894
    ld	$ra,136($sp)
.L0d978a28:
    # Line 3838
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    b	.L0d978990
    # Line 3840
    ld	$a1,32($sp)
.end __glcrmim_TexSubImage2DEXT

# Function: __glcrmlei_TexSubImage2DEXT
# Declared: Line 3849 (Source lines: 3854-3907)
# Address: 0x0d978a40 - 0x0d978c5c (Size: 540 bytes, Frame: 208)
.globl __glcrmlei_TexSubImage2DEXT
.ent __glcrmlei_TexSubImage2DEXT
__glcrmlei_TexSubImage2DEXT:
    # Line 3854
    addiu	$sp,$sp,-208
    sd	$a7,72($sp)
    sd	$a6,88($sp)
    sd	$a5,96($sp)
    sd	$a4,64($sp)
    sd	$a3,80($sp)
    sd	$a1,56($sp)
    sd	$s1,104($sp)
    # Line 3861
    li	$v1,2
    lw	$v0,3200($a0)
    # Line 3854
    move	$s1,$a2
    sd	$s0,112($sp)
    lui	$at,0xe
    move	$s0,$a0
    sd	$ra,128($sp)
    addiu	$at,$at,-31924
    sd	$gp,120($sp)
    # Line 3861
    beqz	$v0,.L0d978ac4
    # Line 3854
    addu	$gp,$t9,$at
    # Line 3861
    beq	$v0,$v1,.L0d978ab4
    # Line 3867
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d978a9c:
    ld	$ra,128($sp)
.L0d978aa0:
    ld	$s1,104($sp)
    ld	$s0,112($sp)
    # Line 3907
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d978ab4:
    # Line 3864
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    # Line 3865
    sw	$zero,3200($s0)
.L0d978ac4:
    # Line 3879
    ld	$a7,72($sp)
    ld	$a5,96($sp)
    ld	$a4,64($sp)
    ld	$a3,80($sp)
    ld	$a1,56($sp)
    # lw $t9, -23824($gp) # &__glCheckTexSubImage2DArgs
    # Line 3874
    ld	$t2,88($sp)
    # Line 3879
    move	$a2,$s1
    lw	$t0,212($sp)
    move	$a0,$s0
    # Line 3868
    lbu	$t1,32209($s0)
    # Line 3874
    addu	$a6,$t2,$t2
    # Line 3879
    sw	$t0,4($sp)
    # Line 3874
    addiu	$a6,$a6,-1
    # Line 3879
    jal	__glCheckTexSubImage2DArgs
    movz	$a6,$t2,$t1
    beqz	$v0,.L0d978a9c
    # Line 3894
    ld	$t2,96($sp)
    # Line 3885
    lw	$a0,220($sp)
    sll	$a3,$s1,0x2
    subu	$a3,$a3,$s1
    sll	$a3,$a3,0x3
    lw	$a2,228($v0)
    addu	$a3,$a3,$s1
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a2,56($a2)
    beqz	$a2,.L0d978b74
    # Line 3888
    ld	$a1,56($sp)
    ld	$a3,80($sp)
    ld	$a4,64($sp)
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    ld	$a7,72($sp)
    lw	$t0,212($sp)
    # lw $t9, -23800($gp) # &__gllei_TexSubImage2DEXT
    lw	$t1,220($sp)
    move	$a0,$s0
    sw	$t1,12($sp)
    move	$a2,$s1
    jal	__gllei_TexSubImage2DEXT
    sw	$t0,4($sp)
    b	.L0d978aa0
    ld	$ra,128($sp)
.L0d978b74:
    # Line 3894
    beqz	$a0,.L0d978aa0
    ld	$ra,128($sp)
    beqz	$t2,.L0d978aa0
    ld	$ra,128($sp)
    ld	$t3,88($sp)
    beqz	$t3,.L0d978aa0
    ld	$ra,128($sp)
    sd	$v0,32($sp)
    # Line 3896
    lw	$t8,28208($s0)
    sd	$a2,40($sp)
    lw	$t9,284($v0)
    beq	$t8,$v0,.L0d978c48
    sd	$t9,48($sp)
    # Line 3900
    ld	$a1,32($sp)
.L0d978bac:
    lw	$t1,212($sp)
    lw	$a5,220($sp)
    sw	$zero,28($sp)
    ld	$a7,72($sp)
    ld	$a6,88($sp)
    li	$ra,1
    sw	$ra,20($sp)
    sw	$a5,12($sp)
    ld	$a4,64($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a3,40($sp)
    move	$a0,$s0
    ld	$t0,80($sp)
    addiu	$t9,$t9,20368
    move	$a2,$s1
    ld	$a5,96($sp)
    addu	$a4,$a3,$a4
    sw	$t1,4($sp)
    bal __glCrmPickTextureProcs
    addu	$a3,$a3,$t0
    # Line 3902
    ld	$v0,32($sp)
    lw	$at,28208($s0)
    sll	$a0,$s1,0x3
    ld	$v1,48($sp)
    addu	$a0,$a0,$s1
    bne	$at,$v0,.L0d978a9c
    sll	$a0,$a0,0x2
    lw	$v1,32($v1)
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d978a9c
    # Line 3904
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6720
    move	$a0,$s0
    jal	sub_0d970000
    move	$a1,$v0
    b	.L0d978aa0
    ld	$ra,128($sp)
.L0d978c48:
    # Line 3898
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    b	.L0d978bac
    # Line 3900
    ld	$a1,32($sp)
.end __glcrmlei_TexSubImage2DEXT

# Function: __glcrmim_CopyTexImage1DEXT
# Declared: Line 3924 (Source lines: 3930-3981)
# Address: 0x0d978c60 - 0x0d978ebc (Size: 604 bytes, Frame: 240)
.globl __glcrmim_CopyTexImage1DEXT
.ent __glcrmim_CopyTexImage1DEXT
__glcrmim_CopyTexImage1DEXT:
    # Line 3937
    lw	$v1,4112($zero)
    # Line 3930
    addiu	$sp,$sp,-112
    sd	$a6,80($sp)
    sd	$a5,64($sp)
    sd	$a4,32($sp)
    sd	$a3,40($sp)
    sd	$a2,56($sp)
    sd	$a1,88($sp)
    sd	$a0,48($sp)
    # Line 3937
    lw	$v0,4120($zero)
    sd	$ra,104($sp)
    # Line 3930
    lui	$at,0xe
    # Line 3937
    sd	$v1,72($sp)
    # Line 3930
    addiu	$at,$at,-32468
    sd	$gp,96($sp)
    # Line 3937
    beqz	$v0,.L0d978ce0
    # Line 3930
    addu	$gp,$t9,$at
    # Line 3937
    li	$v1,2
    beq	$v0,$v1,.L0d978cc8
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d978cb8:
    ld	$ra,104($sp)
.L0d978cbc:
    # Line 3981
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d978cc8:
    # Line 3937
    ld	$t9,72($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d978ce0:
    # Line 3940
    ld	$a0,72($sp)
    ld	$a1,48($sp)
    ld	$a2,88($sp)
    ld	$a3,56($sp)
    ld	$a4,40($sp)
    ld	$a5,32($sp)
    ld	$a6,64($sp)
    # lw $t9, -24200($gp) # &__glCheckCopyTexImageArgs
    li	$at,1
    sw	$at,12($sp)
    ld	$ra,80($sp)
    sw	$ra,4($sp)
    jal	__glCheckCopyTexImageArgs
    li	$a7,1
    beqz	$v0,.L0d978cb8
    # Line 3943
    ld	$v1,80($sp)
    beqz	$v1,.L0d978d80
    # Line 3954
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    # Line 3943
    ld	$a2,88($sp)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    lw	$a0,228($v0)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,56($a0)
    beqz	$a0,.L0d978e88
    sd	$v0,24($sp)
    # Line 3949
    ld	$a0,48($sp)
.L0d978d58:
    ld	$a1,88($sp)
    ld	$a2,56($sp)
    ld	$a3,40($sp)
    # lw $t9, -23752($gp) # &__glim_CopyTexImage1DEXT
    ld	$a4,32($sp)
    ld	$a5,64($sp)
    jal	__glim_CopyTexImage1DEXT
    ld	$a6,80($sp)
    b	.L0d978cbc
    ld	$ra,104($sp)
.L0d978d80:
    sd	$v0,24($sp)
    # Line 3954
    ld	$a0,72($sp)
    jalr	$t9
    li	$a1,3552
    lw	$a2,0($v0)
    slti	$a2,$a2,3
    beqz	$a2,.L0d978ea8
    move	$t8,$v0
    # Line 3962
    ld	$t3,72($sp)
    lw	$t3,764($t3)
    lw	$t2,64($t3)
    # Line 3961
    ld	$a5,64($sp)
    # Line 3962
    beqz	$t2,.L0d978dd4
    sd	$v0,16($sp)
    # Line 3964
    ld	$t9,64($sp)
    # Line 3962
    lw	$t8,0($t3)
    li	$ra,0x8010
    # Line 3964
    subu	$t9,$t9,$t2
    xor	$t8,$t8,$ra
    addiu	$t9,$t9,1
    movz	$a5,$t9,$t8
.L0d978dd4:
    # Line 3966
    ld	$a0,72($sp)
    ld	$a1,48($sp)
    ld	$a2,24($sp)
    ld	$a3,88($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a6,80($sp)
    ld	$a4,56($sp)
    li	$t0,1
    addiu	$t9,$t9,4288
    sw	$zero,12($sp)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    sw	$t0,4($sp)
    bal __glCrmPickTextureProcs
    addiu	$a6,$a6,1
    beqz	$v0,.L0d978e64
    # Line 3980
    li	$v1,2
    # Line 3971
    ld	$a0,72($sp)
    ld	$a1,24($sp)
    ld	$a2,88($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a5,40($sp)
    ld	$a6,32($sp)
    addiu	$t9,$t9,24384
    move	$a3,$zero
    move	$a4,$zero
    ld	$a7,64($sp)
    li	$at,1
    bal __glCrmPickTextureProcs
    sw	$at,4($sp)
    beqz	$v0,.L0d978cbc
    ld	$ra,104($sp)
    # Line 3976
    ld	$at,16($sp)
    li	$ra,1
    sb	$ra,12($at)
    # Line 3980
    li	$v1,2
.L0d978e64:
    sw	$v1,4120($zero)
    ld	$v1,72($sp)
    ld	$ra,104($sp)
    lw	$v0,11756($v1)
    # Line 3981
    ld	$gp,96($sp)
    addiu	$sp,$sp,112
    # Line 3980
    ori	$v0,$v0,0x1
    # Line 3981
    jr	$ra
    # Line 3980
    sw	$v0,11756($v1)
.L0d978e88:
    # Line 3947
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,72($sp)
    addiu	$t9,$t9,-1888
    ld	$a1,24($sp)
    jal	sub_0d970000
    ld	$a2,88($sp)
    b	.L0d978d58
    # Line 3949
    ld	$a0,48($sp)
.L0d978ea8:
    # Line 3956
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d978cbc
    ld	$ra,104($sp)
.end __glcrmim_CopyTexImage1DEXT

# Function: __glcrmim_CopyTexImage2DEXT
# Declared: Line 3983 (Source lines: 3988-4046)
# Address: 0x0d978ec0 - 0x0d979150 (Size: 656 bytes, Frame: 128)
.globl __glcrmim_CopyTexImage2DEXT
.ent __glcrmim_CopyTexImage2DEXT
__glcrmim_CopyTexImage2DEXT:
    # Line 3995
    lw	$v1,4112($zero)
    # Line 3988
    addiu	$sp,$sp,-128
    sd	$a6,64($sp)
    sd	$a5,88($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,72($sp)
    sd	$a0,80($sp)
    # Line 3995
    sd	$v1,40($sp)
    # Line 3988
    sd	$s1,112($sp)
    # Line 3995
    lw	$v0,4120($zero)
    # Line 3988
    move	$s1,$a7
    sd	$s0,104($sp)
    lui	$at,0xd
    move	$s0,$a1
    sd	$ra,120($sp)
    addiu	$at,$at,32460
    sd	$gp,96($sp)
    # Line 3995
    beqz	$v0,.L0d978f54
    # Line 3988
    addu	$gp,$t9,$at
    # Line 3995
    li	$v1,2
    beq	$v0,$v1,.L0d978f40
    ld	$t9,40($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,120($sp)
.L0d978f2c:
    # Line 4046
    ld	$gp,96($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d978f40:
    # Line 3995
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d978f54:
    # Line 4004
    ld	$a6,88($sp)
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,72($sp)
    ld	$a1,80($sp)
    # lw $t9, -24200($gp) # &__glCheckCopyTexImageArgs
    # Line 3995
    ld	$a0,40($sp)
    # Line 3999
    ld	$at,64($sp)
    # Line 3995
    lbu	$ra,32209($a0)
    # Line 4004
    li	$v0,2
    sw	$v0,12($sp)
    # Line 3999
    addu	$a7,$at,$at
    # Line 4004
    sw	$s1,4($sp)
    movz	$a7,$at,$ra
    move	$a2,$s0
    jal	__glCheckCopyTexImageArgs
    sd	$a7,32($sp)
    beqz	$v0,.L0d978f2c
    ld	$ra,120($sp)
    # Line 4007
    beqz	$s1,.L0d979000
    # Line 4018
    nop	# was lw $t9, -24456($gp) # &__glLookUpTextureObject
    # Line 4007
    sll	$a0,$s0,0x2
    subu	$a0,$a0,$s0
    sll	$a0,$a0,0x3
    lw	$v1,228($v0)
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,56($v1)
    beqz	$v1,.L0d979100
    sd	$v0,24($sp)
    # Line 4013
    ld	$a0,80($sp)
.L0d978fd4:
    ld	$a2,72($sp)
    ld	$a3,56($sp)
    # lw $t9, -23748($gp) # &__glim_CopyTexImage2DEXT
    ld	$a4,48($sp)
    move	$a1,$s0
    ld	$a5,88($sp)
    ld	$a6,64($sp)
    jal	__glim_CopyTexImage2DEXT
    move	$a7,$s1
    b	.L0d978f2c
    ld	$ra,120($sp)
.L0d979000:
    sd	$v0,24($sp)
    # Line 4018
    ld	$a0,40($sp)
    jalr	$t9
    li	$a1,3553
    lw	$a1,0($v0)
    slti	$a1,$a1,3
    ld	$t2,32($sp)
    beqz	$a1,.L0d97913c
    move	$t8,$v0
    # Line 4026
    ld	$t3,40($sp)
    lw	$t3,764($t3)
    lw	$t9,64($t3)
    # Line 4025
    ld	$a5,88($sp)
    # Line 4026
    beqz	$t9,.L0d979050
    sd	$v0,16($sp)
    lw	$t8,0($t3)
    li	$ra,0x8011
    beq	$t8,$ra,.L0d979120
    li	$at,0x8012
    beq	$t8,$at,.L0d979120
.L0d979050:
    # Line 4032
    ld	$a0,40($sp)
    ld	$a1,80($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a2,24($sp)
    move	$a3,$s0
    ld	$a4,72($sp)
    addiu	$t9,$t9,4288
    move	$a6,$t2
    move	$a7,$s1
    sw	$zero,12($sp)
    li	$v0,2
    bal __glCrmPickTextureProcs
    sw	$v0,4($sp)
    beqz	$v0,.L0d9790d0
    # Line 4037
    ld	$a0,40($sp)
    ld	$a1,24($sp)
    ld	$a5,56($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a6,48($sp)
    ld	$a7,88($sp)
    addiu	$t9,$t9,24384
    move	$a2,$s0
    move	$a3,$zero
    ld	$at,64($sp)
    move	$a4,$zero
    bal __glCrmPickTextureProcs
    sw	$at,4($sp)
    beqz	$v0,.L0d978f2c
    ld	$ra,120($sp)
    # Line 4041
    ld	$at,16($sp)
    li	$ra,1
    sb	$ra,12($at)
.L0d9790d0:
    # Line 4046
    ld	$gp,96($sp)
    ld	$s0,104($sp)
    # Line 4045
    li	$v1,2
    sw	$v1,4120($zero)
    ld	$v1,40($sp)
    ld	$ra,120($sp)
    lw	$v0,11756($v1)
    # Line 4046
    ld	$s1,112($sp)
    addiu	$sp,$sp,128
    # Line 4045
    ori	$v0,$v0,0x1
    # Line 4046
    jr	$ra
    # Line 4045
    sw	$v0,11756($v1)
.L0d979100:
    # Line 4011
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-1888
    ld	$a0,40($sp)
    ld	$a1,24($sp)
    jal	sub_0d970000
    move	$a2,$s0
    b	.L0d978fd4
    # Line 4013
    ld	$a0,80($sp)
.L0d979120:
    # Line 4029
    ld	$a5,88($sp)
    # Line 4030
    lw	$t8,68($t3)
    # Line 4029
    subu	$a5,$a5,$t9
    # Line 4030
    subu	$t2,$t2,$t8
    # Line 4029
    addiu	$a5,$a5,1
    b	.L0d979050
    # Line 4030
    addiu	$t2,$t2,1
.L0d97913c:
    # Line 4020
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d978f2c
    ld	$ra,120($sp)
.end __glcrmim_CopyTexImage2DEXT

# Function: __glcrmim_CopyTexSubImage1DEXT
# Declared: Line 4049 (Source lines: 4051-4083)
# Address: 0x0d979150 - 0x0d979330 (Size: 480 bytes, Frame: 128)
.globl __glcrmim_CopyTexSubImage1DEXT
.ent __glcrmim_CopyTexSubImage1DEXT
__glcrmim_CopyTexSubImage1DEXT:
    # Line 4056
    lw	$v1,4112($zero)
    # Line 4051
    addiu	$sp,$sp,-128
    sd	$a5,64($sp)
    sd	$a4,56($sp)
    sd	$a3,80($sp)
    sd	$a2,72($sp)
    sd	$a1,96($sp)
    sd	$a0,48($sp)
    # Line 4056
    lw	$v0,4120($zero)
    sd	$ra,112($sp)
    # Line 4051
    lui	$at,0xd
    # Line 4056
    sd	$v1,88($sp)
    # Line 4051
    addiu	$at,$at,31804
    sd	$gp,104($sp)
    # Line 4056
    beqz	$v0,.L0d9791cc
    # Line 4051
    addu	$gp,$t9,$at
    # Line 4056
    li	$v1,2
    beq	$v0,$v1,.L0d9791b8
    ld	$t9,88($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9791a8:
    ld	$ra,112($sp)
.L0d9791ac:
    # Line 4083
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9791b8:
    # Line 4056
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d9791cc:
    # Line 4059
    ld	$a0,88($sp)
    ld	$a1,48($sp)
    ld	$a2,96($sp)
    ld	$a3,72($sp)
    ld	$a6,80($sp)
    ld	$a7,56($sp)
    li	$at,1
    sw	$at,12($sp)
    # lw $t9, -23816($gp) # &__glCheckCopyTexSubImageArgs
    sw	$at,20($sp)
    move	$a4,$zero
    ld	$v0,64($sp)
    move	$a5,$zero
    jal	__glCheckCopyTexSubImageArgs
    sw	$v0,4($sp)
    beqz	$v0,.L0d9791ac
    ld	$ra,112($sp)
    # Line 4063
    ld	$a1,96($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$v1,228($v0)
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,56($v1)
    beqz	$v1,.L0d979264
    sd	$v0,32($sp)
    # Line 4066
    ld	$a0,48($sp)
    ld	$a1,96($sp)
    ld	$a2,72($sp)
    # lw $t9, -23744($gp) # &__glim_CopyTexSubImage1DEXT
    ld	$a3,80($sp)
    ld	$a4,56($sp)
    jal	__glim_CopyTexSubImage1DEXT
    ld	$a5,64($sp)
    b	.L0d9791ac
    ld	$ra,112($sp)
.L0d979264:
    # Line 4070
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    ld	$a0,88($sp)
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$a1,0($v0)
    slti	$a1,$a1,3
    bnez	$a1,.L0d979298
    # Line 4078
    ld	$a7,64($sp)
    # Line 4072
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9791ac
    ld	$ra,112($sp)
.L0d979298:
    # Line 4078
    ld	$a6,56($sp)
    ld	$a5,80($sp)
    ld	$a3,72($sp)
    ld	$a2,96($sp)
    # Line 4076
    ld	$a1,32($sp)
    # Line 4078
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a0,88($sp)
    # Line 4076
    lw	$t1,284($a1)
    # Line 4078
    addiu	$t9,$t9,24384
    li	$t0,1
    sw	$t0,4($sp)
    move	$a4,$zero
    bal __glCrmPickTextureProcs
    # Line 4076
    sd	$t1,40($sp)
    # Line 4078
    beqz	$v0,.L0d9791a8
    ld	$a3,32($sp)
    ld	$ra,88($sp)
    lw	$ra,28208($ra)
    bne	$ra,$a3,.L0d9791ac
    ld	$ra,112($sp)
    ld	$at,40($sp)
    ld	$v1,96($sp)
    sll	$v0,$v1,0x3
    lw	$at,32($at)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    andi	$at,$at,0x1
    beqz	$at,.L0d9791ac
    ld	$ra,112($sp)
    # Line 4081
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6720
    ld	$a0,88($sp)
    jal	sub_0d970000
    move	$a1,$a3
    b	.L0d9791ac
    ld	$ra,112($sp)
.end __glcrmim_CopyTexSubImage1DEXT

# Function: __glcrmim_CopyTexSubImage2DEXT
# Declared: Line 4085 (Source lines: 4087-4138)
# Address: 0x0d979330 - 0x0d97959c (Size: 620 bytes, Frame: 144)
.globl __glcrmim_CopyTexSubImage2DEXT
.ent __glcrmim_CopyTexSubImage2DEXT
__glcrmim_CopyTexSubImage2DEXT:
    # Line 4087
    addiu	$sp,$sp,-144
    sd	$a7,96($sp)
    sd	$a6,80($sp)
    sd	$a5,72($sp)
    sd	$a4,64($sp)
    sd	$a3,56($sp)
    sd	$a2,88($sp)
    sd	$a0,48($sp)
    sd	$s1,104($sp)
    # Line 4094
    lw	$s1,4112($zero)
    lw	$v0,4120($zero)
    # Line 4087
    sd	$s0,112($sp)
    lui	$at,0xd
    move	$s0,$a1
    sd	$ra,128($sp)
    addiu	$at,$at,31324
    sd	$gp,120($sp)
    # Line 4094
    beqz	$v0,.L0d9793b8
    # Line 4087
    addu	$gp,$t9,$at
    # Line 4094
    li	$v1,2
    beq	$v0,$v1,.L0d9793a8
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d979390:
    ld	$ra,128($sp)
.L0d979394:
    # Line 4138
    ld	$gp,120($sp)
    ld	$s0,112($sp)
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9793a8:
    # Line 4094
    lw	$t9,11784($s1)
    jalr	$t9
    move	$a0,$s1
    sw	$zero,4120($zero)
.L0d9793b8:
    # Line 4103
    ld	$a7,72($sp)
    ld	$a6,64($sp)
    ld	$a4,56($sp)
    ld	$a3,88($sp)
    ld	$a1,48($sp)
    # Line 4094
    lbu	$t1,32209($s1)
    # Line 4098
    ld	$t2,96($sp)
    # Line 4103
    li	$t3,2
    sw	$t3,20($sp)
    # lw $t9, -23816($gp) # &__glCheckCopyTexSubImageArgs
    # Line 4098
    addu	$t0,$t2,$t2
    # Line 4103
    move	$a5,$zero
    ld	$t3,80($sp)
    # Line 4098
    addiu	$t0,$t0,-1
    # Line 4103
    move	$a2,$s0
    sw	$t3,4($sp)
    movz	$t0,$t2,$t1
    move	$a0,$s1
    jal	__glCheckCopyTexSubImageArgs
    sw	$t0,12($sp)
    beqz	$v0,.L0d979394
    ld	$ra,128($sp)
    # Line 4107
    sll	$t9,$s0,0x2
    subu	$t9,$t9,$s0
    sll	$t9,$t9,0x3
    lw	$t8,228($v0)
    addu	$t9,$t9,$s0
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,56($t8)
    beqz	$t8,.L0d979468
    sd	$v0,40($sp)
    # Line 4110
    ld	$a0,48($sp)
    ld	$a2,88($sp)
    ld	$a3,56($sp)
    ld	$a4,64($sp)
    # lw $t9, -23740($gp) # &__glim_CopyTexSubImage2DEXT
    ld	$a5,72($sp)
    ld	$a6,80($sp)
    move	$a1,$s0
    jal	__glim_CopyTexSubImage2DEXT
    ld	$a7,96($sp)
    b	.L0d979394
    ld	$ra,128($sp)
.L0d979468:
    # Line 4115
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s1
    jal	__glLookUpTextureObject
    li	$a1,3553
    lw	$ra,0($v0)
    slti	$ra,$ra,3
    # Line 4121
    li	$v0,5
    # Line 4115
    beqz	$ra,.L0d979588
    # Line 4121
    ld	$v1,40($sp)
    lw	$at,32060($s1)
    lw	$at,0($at)
    lw	$v1,284($v1)
    beq	$at,$v0,.L0d979528
    sd	$v1,32($sp)
    # Line 4133
    ld	$a1,40($sp)
.L0d9794a4:
    ld	$a3,88($sp)
    ld	$a4,56($sp)
    ld	$a5,64($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a6,72($sp)
    ld	$a7,80($sp)
    addiu	$t9,$t9,24384
    move	$a0,$s1
    ld	$v0,96($sp)
    move	$a2,$s0
    bal __glCrmPickTextureProcs
    sw	$v0,4($sp)
    beqz	$v0,.L0d979390
    ld	$at,40($sp)
    lw	$ra,28208($s1)
    bne	$ra,$at,.L0d979390
    ld	$v0,32($sp)
    sll	$v1,$s0,0x3
    lw	$v0,32($v0)
    addu	$v1,$v1,$s0
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0d979394
    ld	$ra,128($sp)
    # Line 4136
    # lw $t9, -32732($gp) # &sub_0d970000
    addiu	$t9,$t9,-6720
    move	$a0,$s1
    jal	sub_0d970000
    ld	$a1,40($sp)
    b	.L0d979394
    ld	$ra,128($sp)
.L0d979528:
    # Line 4124
    ld	$a1,40($sp)
    ld	$a3,88($sp)
    ld	$a4,56($sp)
    ld	$a5,64($sp)
    # lw $t9, -32732($gp) # &sub_0d970000
    ld	$a6,72($sp)
    ld	$a7,80($sp)
    addiu	$t9,$t9,25376
    move	$a0,$s1
    ld	$at,96($sp)
    move	$a2,$s0
    bal __glCrmPickTextureProcs
    sw	$at,4($sp)
    bnez	$v0,.L0d979394
    ld	$ra,128($sp)
    # Line 4126
    lw	$ra,-21560($gp)
    beqz	$ra,.L0d9794a4
    # Line 4133
    ld	$a1,40($sp)
    # Line 4129
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,17760
    b	.L0d9794a4
    # Line 4133
    ld	$a1,40($sp)
.L0d979588:
    # Line 4117
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d979394
    ld	$ra,128($sp)
.end __glcrmim_CopyTexSubImage2DEXT

.late_rodata
jtbl_0da44298:
    .word .L0d970934
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d97090c
    .word .L0d970520
    .word .L0d970520
    .word .L0d9708c4
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970744
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970520
    .word .L0d970850
    .word .L0d9707e4
    .word .L0d970774
jtbl_0da44304:
    .word .L0d974eb8
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974e68
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974ea8
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974e68
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974df4
    .word .L0d974e8c
    .word .L0d974e8c
    .word .L0d974e8c
jtbl_0da44370:
    .word .L0d975ab8
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d9759e4
    .word .L0d975578
    .word .L0d975578
    .word .L0d975a9c
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d9759e4
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975578
    .word .L0d975a5c
    .word .L0d975a18
    .word .L0d9759f0
    .word .L0d975d40
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d975cc0
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d975d40
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d975cc0
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d9758c8
    .word .L0d975d20
    .word .L0d975cfc
    .word .L0d975cdc
jtbl_0da44448:
    .word .L0d976270
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d976204
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d976270
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d976204
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d97605c
    .word .L0d976270
    .word .L0d976204
    .word .L0d976270
jtbl_0da444f0:
    .word .L0d977970
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9778a0
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d977950
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9778a0
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d9771dc
    .word .L0d977930
    .word .L0d9778f8
    .word .L0d9778c0

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit_3b808081:
    .word 0x3b808081
_lit_3d042108:
    .word 0x3d042108
_lit_3d888889:
    .word 0x3d888889
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

