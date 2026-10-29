# Source: ../CRIME/crm_line.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_line.c
# Total Functions: 9

.text

# Function: __glCrmWideLineRep
# Declared: Line 35 (Source lines: 36-84)
# Address: 0x0d94b220 - 0x0d94b3dc (Size: 444 bytes, Frame: 224)
.globl __glCrmWideLineRep
.ent __glCrmWideLineRep
__glCrmWideLineRep:
    # Line 42
    lw	$a3,12372($a0)
    # Line 47
    lw	$a4,29944($a0)
    # Line 41
    lw	$a2,12368($a0)
    # Line 36
    addiu	$sp,$sp,-96
    lui	$at,0x10
    sd	$s4,24($sp)
    # Line 47
    addiu	$s4,$a4,-1
    # Line 36
    sd	$s1,16($sp)
    move	$s1,$a0
    addiu	$at,$at,23404
    sd	$gp,8($sp)
    # Line 47
    bltz	$s4,.L0d94b3c4
    # Line 36
    addu	$gp,$t9,$at
    sd	$s0,64($sp)
    sd	$ra,56($sp)
    sd	$s5,72($sp)
    sd	$s7,80($sp)
    # Line 47
    li	$s7,-1
    subu	$s5,$a3,$a2
    sd	$s5,0($sp)
    slt	$s5,$a2,$a3
    sd	$s3,48($sp)
    sll	$s3,$a3,0x2
    sd	$s6,40($sp)
    sll	$s6,$a2,0x2
    addu	$s3,$s3,$a0
    sd	$s2,32($sp)
    b	.L0d94b2f8
    addu	$s6,$s6,$a0
    nop
    nop
    nop
.L0d94b2a0:
    # Line 49
    beqz	$s2,.L0d94b390
    nop
    # Line 66
    lw	$t9,12396($s1)
    jalr	$t9
    move	$a0,$s1
.L0d94b2b4:
    # Line 70
    lw	$t8,29852($s1)
.L0d94b2b8:
    beqz	$t8,.L0d94b35c
    # Line 47
    addiu	$s4,$s4,-1
    # Line 77
    lw	$t9,29868($s1)
    # Line 78
    lw	$ra,32120($s1)
    # Line 80
    lw	$v0,32156($s1)
    # Line 79
    lw	$at,32148($s1)
    # Line 80
    addiu	$v0,$v0,2048
    sw	$v0,32156($s1)
    # Line 79
    addiu	$at,$at,2048
    sw	$at,32148($s1)
    # Line 78
    addiu	$ra,$ra,1
    sw	$ra,32120($s1)
    # Line 77
    addiu	$t9,$t9,1
    sw	$t9,29868($s1)
.L0d94b2f0:
    # Line 47
    beq	$s4,$s7,.L0d94b3ac
    ld	$s2,32($sp)
.L0d94b2f8:
    beqz	$s5,.L0d94b390
    move	$s2,$zero
    b	.L0d94b32c
    move	$s0,$s6
    nop
    nop
.L0d94b310:
    # Line 51
    lw	$t9,12304($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d94b2b4
.L0d94b320:
    # Line 49
    addiu	$s0,$s0,4
.L0d94b324:
    beq	$s0,$s3,.L0d94b2a0
    nop
.L0d94b32c:
    # Line 47
    bnez	$s2,.L0d94b310
    nop
    # Line 56
    lw	$t9,12240($s0)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0d94b320
    nop
    lbu	$v1,30476($s1)
    bnez	$v1,.L0d94b3a4
    # Line 61
    li	$s2,1
    b	.L0d94b324
    # Line 49
    addiu	$s0,$s0,4
.L0d94b35c:
    # Line 72
    lw	$a0,29872($s1)
    # Line 73
    lw	$a1,32124($s1)
    # Line 75
    lw	$a3,32160($s1)
    # Line 74
    lw	$a2,32152($s1)
    # Line 75
    addiu	$a3,$a3,2048
    sw	$a3,32160($s1)
    # Line 74
    addiu	$a2,$a2,2048
    sw	$a2,32152($s1)
    # Line 73
    addiu	$a1,$a1,1
    sw	$a1,32124($s1)
    # Line 72
    addiu	$a0,$a0,1
    # Line 75
    b	.L0d94b2f0
    # Line 72
    sw	$a0,29872($s1)
.L0d94b390:
    # Line 68
    lw	$t9,12392($s1)
    jalr	$t9
    move	$a0,$s1
    b	.L0d94b2b8
    # Line 70
    lw	$t8,29852($s1)
.L0d94b3a4:
    # Line 59
    b	.L0d94b2b4
    # Line 58
    sb	$zero,30476($s1)
.L0d94b3ac:
    ld	$s6,40($sp)
    ld	$s3,48($sp)
    ld	$ra,56($sp)
    ld	$s0,64($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
.L0d94b3c4:
    # Line 84
    ld	$gp,8($sp)
    move	$v0,$zero
    ld	$s1,16($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glCrmWideLineRep

# Function: __glCrmWideStippledLineRep
# Declared: Line 90 (Source lines: 91-148)
# Address: 0x0d94b3e0 - 0x0d94b604 (Size: 548 bytes, Frame: 224)
.globl __glCrmWideStippledLineRep
.ent __glCrmWideStippledLineRep
__glCrmWideStippledLineRep:
    # Line 111
    lw	$a2,30472($a0)
    # Line 103
    lw	$a5,476($a0)
    # Line 100
    lw	$a7,12372($a0)
    # Line 99
    lw	$a6,12368($a0)
    # Line 91
    addiu	$sp,$sp,-352
    sd	$s0,288($sp)
    sd	$s2,304($sp)
    sd	$s4,296($sp)
    sd	$s5,264($sp)
    sd	$s3,328($sp)
    # Line 101
    lw	$s3,30248($a0)
    # Line 91
    sd	$s6,336($sp)
    sd	$s7,280($sp)
    # Line 111
    addiu	$s3,$s3,31
    # Line 91
    sd	$ra,312($sp)
    lui	$at,0x10
    # Line 111
    sra	$s3,$s3,0x5
    # Line 91
    sd	$s1,272($sp)
    move	$s1,$a0
    addiu	$at,$at,22956
    sd	$gp,320($sp)
    # Line 111
    blez	$s3,.L0d94b490
    # Line 91
    addu	$gp,$t9,$at
    andi	$t8,$s3,0x1
    # Line 111
    move	$a4,$zero
    beqz	$t8,.L0d94b460
    addiu	$a3,$sp,0
    # Line 114
    addiu	$a3,$sp,4
    lw	$t9,0($a2)
    # Line 113
    li	$a4,1
    # Line 114
    addiu	$a2,$a2,4
    sw	$t9,0($sp)
.L0d94b460:
    sra	$ra,$s3,0x1
    beqz	$ra,.L0d94b490
    nop
    nop
.L0d94b470:
    lw	$v0,0($a2)
    # Line 113
    addiu	$a4,$a4,2
    # Line 114
    sw	$v0,0($a3)
    addiu	$a3,$a3,8
    lw	$at,4($a2)
    addiu	$a2,$a2,8
    # Line 113
    bne	$s3,$a4,.L0d94b470
    # Line 114
    sw	$at,-4($a3)
.L0d94b490:
    # Line 118
    addiu	$s4,$a5,-1
    bltz	$s4,.L0d94b5d0
    li	$s7,-1
    subu	$s5,$a7,$a6
    sd	$s5,256($sp)
    slt	$s5,$a6,$a7
    sll	$s2,$a7,0x2
    sll	$s6,$a6,0x2
    addu	$s2,$s2,$s1
    b	.L0d94b4fc
    addu	$s6,$s6,$s1
    nop
.L0d94b4c0:
    # Line 140
    lw	$t8,29868($s1)
    # Line 141
    lw	$t9,32120($s1)
    # Line 143
    lw	$at,32156($s1)
    # Line 142
    lw	$ra,32148($s1)
    # Line 143
    addiu	$at,$at,2048
    sw	$at,32156($s1)
    # Line 142
    addiu	$ra,$ra,2048
    sw	$ra,32148($s1)
    # Line 141
    addiu	$t9,$t9,1
    sw	$t9,32120($s1)
    # Line 140
    addiu	$t8,$t8,1
    sw	$t8,29868($s1)
.L0d94b4f0:
    # Line 118
    addiu	$s4,$s4,-1
    beq	$s4,$s7,.L0d94b5d0
    nop
.L0d94b4fc:
    beqz	$s5,.L0d94b528
    move	$s0,$s6
    nop
    nop
    # Line 120
    lw	$t9,12304($s0)
.L0d94b510:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d94b534
    # Line 119
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d94b510
    # Line 120
    lw	$t9,12304($s0)
.L0d94b528:
    # Line 125
    lw	$t9,12396($s1)
    jalr	$t9
    move	$a0,$s1
.L0d94b534:
    # Line 126
    beqz	$s4,.L0d94b4f0
    andi	$v0,$s3,0x1
    # Line 128
    blez	$s3,.L0d94b590
    lw	$a3,30472($s1)
    addiu	$a2,$sp,0
    sra	$a0,$s3,0x1
    beqz	$v0,.L0d94b568
    move	$a4,$zero
    # Line 131
    addiu	$a3,$a3,4
    lw	$v1,0($sp)
    # Line 130
    li	$a4,1
    # Line 131
    addiu	$a2,$sp,4
    sw	$v1,-4($a3)
.L0d94b568:
    beqz	$a0,.L0d94b590
    nop
.L0d94b570:
    lw	$a5,0($a2)
    # Line 130
    addiu	$a4,$a4,2
    # Line 131
    sw	$a5,0($a3)
    addiu	$a3,$a3,8
    lw	$a1,4($a2)
    addiu	$a2,$a2,8
    # Line 130
    bne	$s3,$a4,.L0d94b570
    # Line 131
    sw	$a1,-4($a3)
.L0d94b590:
    # Line 130
    lw	$a6,29852($s1)
    bnez	$a6,.L0d94b4c0
    nop
    # Line 135
    lw	$a7,29872($s1)
    # Line 136
    lw	$t0,32124($s1)
    # Line 138
    lw	$t2,32160($s1)
    # Line 137
    lw	$t1,32152($s1)
    # Line 138
    addiu	$t2,$t2,2048
    sw	$t2,32160($s1)
    # Line 137
    addiu	$t1,$t1,2048
    sw	$t1,32152($s1)
    # Line 136
    addiu	$t0,$t0,1
    sw	$t0,32124($s1)
    # Line 135
    addiu	$a7,$a7,1
    # Line 138
    b	.L0d94b4f0
    # Line 135
    sw	$a7,29872($s1)
.L0d94b5d0:
    # Line 148
    ld	$gp,320($sp)
    ld	$s0,288($sp)
    ld	$s1,272($sp)
    ld	$s2,304($sp)
    ld	$s3,328($sp)
    ld	$s4,296($sp)
    ld	$ra,312($sp)
    ld	$s5,264($sp)
    move	$v0,$zero
    ld	$s6,336($sp)
    ld	$s7,280($sp)
    jr	$ra
    addiu	$sp,$sp,352
.end __glCrmWideStippledLineRep

# Function: __glCrmScissorLine
# Declared: Line 156 (Source lines: 157-253)
# Address: 0x0d94b610 - 0x0d94b918 (Size: 776 bytes, Frame: 208)
.globl __glCrmScissorLine
.ent __glCrmScissorLine
__glCrmScissorLine:
    # Line 176
    lw	$a5,32124($a0)
    # Line 175
    lw	$a3,32120($a0)
    # Line 174
    lw	$a4,29872($a0)
    # Line 157
    addiu	$sp,$sp,-80
    sd	$s4,8($sp)
    # Line 171
    lw	$s4,29712($a0)
    # Line 157
    sd	$s3,16($sp)
    # Line 170
    lw	$s3,29704($a0)
    # Line 157
    sd	$s1,0($sp)
    # Line 169
    lw	$s1,29708($a0)
    # Line 168
    lw	$t2,29700($a0)
    # Line 173
    lw	$a2,29868($a0)
    sd	$s7,48($sp)
    sd	$s5,56($sp)
    # Line 178
    slt	$at,$a2,$t2
    sd	$ra,40($sp)
    bnez	$at,.L0d94b694
    sd	$s6,24($sp)
    slt	$v0,$a2,$s1
    beqz	$v0,.L0d94b694
    slt	$v1,$a4,$s3
    bnez	$v1,.L0d94b694
    slt	$a1,$a4,$s4
    beqz	$a1,.L0d94b694
    slt	$a6,$a3,$t2
    bnez	$a6,.L0d94b694
    slt	$a7,$a3,$s1
    beqz	$a7,.L0d94b694
    slt	$t0,$a5,$s3
    bnez	$t0,.L0d94b694
    slt	$t1,$a5,$s4
    bnez	$t1,.L0d94b8f4
    move	$s5,$s5
.L0d94b694:
    # Line 209
    lw	$s6,30472($a0)
    # Line 188
    lw	$a3,32144($a0)
    # Line 187
    lw	$t1,32140($a0)
    # Line 186
    lw	$a5,32136($a0)
    # Line 188
    lw	$ra,32132($a0)
    lw	$v0,29852($a0)
    # Line 199
    move	$t8,$zero
    # Line 188
    lw	$t3,32128($a0)
    movz	$t8,$ra,$v0
    # Line 185
    lw	$at,30248($a0)
    sd	$s8,72($sp)
    # Line 199
    move	$t9,$zero
    movz	$ra,$zero,$v0
    sd	$s0,64($sp)
    movz	$t9,$t3,$v0
    sd	$s2,32($sp)
    # Line 185
    move	$s5,$at
    # Line 209
    beqz	$at,.L0d94b8bc
    movz	$t3,$zero,$v0
    li	$s2,-1
    li	$s8,32
    move	$a7,$zero
    b	.L0d94b748
    subu	$s0,$a3,$t1
.L0d94b6f4:
    # Line 223
    nor	$v1,$a3,$zero
.L0d94b6f8:
    # Line 224
    addiu	$a7,$a7,1
    # Line 223
    and	$a6,$a6,$v1
.L0d94b700:
    # Line 227
    addu	$a2,$a2,$t9
    # Line 238
    srl	$a3,$a3,0x1
    # Line 231
    addu	$v1,$a2,$t3
    slti	$a1,$a5,1
    # Line 220
    addiu	$t0,$t0,-1
    movz	$a2,$v1,$a1
    # Line 233
    addu	$v0,$s0,$a5
    # Line 228
    addu	$a4,$a4,$ra
    # Line 232
    addu	$at,$a4,$t8
    movn	$v0,$a5,$a1
    # Line 235
    addu	$a5,$v0,$t1
    movz	$a4,$at,$a1
.L0d94b730:
    sra	$a1,$s7,0x1
    bnez	$a1,.L0d94b7ec
    # Line 220
    addiu	$t0,$t0,-2
.L0d94b73c:
    # Line 244
    sw	$a6,0($s6)
    beqz	$s5,.L0d94b87c
    addiu	$s6,$s6,4
.L0d94b748:
    # Line 221
    slt	$v1,$a2,$s1
    # Line 213
    li	$a3,32
    move	$s7,$s5
    slt	$a3,$a3,$s5
    # Line 221
    slt	$a1,$a4,$s3
    # Line 213
    movn	$s7,$s8,$a3
    # Line 221
    slt	$v0,$a2,$t2
    # Line 220
    addiu	$t0,$s7,-1
    li	$a6,-1
    andi	$at,$s7,0x1
    bltz	$t0,.L0d94b73c
    # Line 216
    subu	$s5,$s5,$s7
    # Line 220
    lui	$a3,0x8000
    beqz	$at,.L0d94b730
    li	$a6,-1
    # Line 221
    bnez	$v0,.L0d94b6f4
    slt	$at,$a4,$s4
    beqz	$v1,.L0d94b6f8
    # Line 223
    nor	$v1,$a3,$zero
    # Line 221
    bnez	$a1,.L0d94b6f8
    # Line 223
    nor	$v1,$a3,$zero
    # Line 221
    bnez	$at,.L0d94b700
    nop
    b	.L0d94b6f8
    # Line 223
    nor	$v1,$a3,$zero
.L0d94b7ac:
    nor	$v0,$a3,$zero
.L0d94b7b0:
    # Line 224
    addiu	$a7,$a7,1
    # Line 223
    and	$a6,$a6,$v0
.L0d94b7b8:
    # Line 238
    srl	$a3,$a3,0x1
    # Line 228
    addu	$a4,$a4,$ra
    # Line 227
    addu	$a2,$a2,$t9
    # Line 233
    addu	$v0,$s0,$a5
    slti	$v1,$a5,1
    movn	$v0,$a5,$v1
    # Line 231
    addu	$at,$a2,$t3
    # Line 232
    addu	$a1,$a4,$t8
    movz	$a2,$at,$v1
    # Line 235
    addu	$a5,$v0,$t1
    # Line 220
    beq	$t0,$s2,.L0d94b73c
    movz	$a4,$a1,$v1
    addiu	$t0,$t0,-2
.L0d94b7ec:
    # Line 221
    slt	$v1,$a2,$t2
    slt	$v0,$a4,$s4
    slt	$at,$a4,$s3
    bnez	$v1,.L0d94b814
    slt	$a1,$a2,$s1
    beqz	$a1,.L0d94b818
    # Line 223
    nor	$v1,$a3,$zero
    # Line 221
    bnez	$at,.L0d94b818
    # Line 223
    nor	$v1,$a3,$zero
    # Line 221
    bnez	$v0,.L0d94b820
.L0d94b814:
    # Line 223
    nor	$v1,$a3,$zero
.L0d94b818:
    # Line 224
    addiu	$a7,$a7,1
    # Line 223
    and	$a6,$a6,$v1
.L0d94b820:
    # Line 228
    addu	$a4,$a4,$ra
    # Line 227
    addu	$a2,$a2,$t9
    slti	$a1,$a5,1
    # Line 231
    addu	$at,$a2,$t3
    # Line 233
    addu	$v1,$s0,$a5
    movz	$a2,$at,$a1
    movn	$v1,$a5,$a1
    # Line 221
    slt	$v0,$a2,$t2
    # Line 238
    srl	$a3,$a3,0x1
    # Line 235
    addu	$a5,$v1,$t1
    # Line 232
    addu	$at,$a4,$t8
    # Line 221
    bnez	$v0,.L0d94b7ac
    movz	$a4,$at,$a1
    slt	$v0,$a2,$s1
    slt	$a1,$a4,$s4
    beqz	$v0,.L0d94b7ac
    slt	$v1,$a4,$s3
    bnez	$v1,.L0d94b7b0
    # Line 223
    nor	$v0,$a3,$zero
    # Line 221
    bnez	$a1,.L0d94b7b8
    nop
    b	.L0d94b7b0
    # Line 223
    nor	$v0,$a3,$zero
.L0d94b87c:
    # Line 244
    lw	$a2,30248($a0)
    beq	$a2,$a7,.L0d94b8c0
    # Line 252
    li	$v0,1
    ld	$s7,48($sp)
    ld	$s8,72($sp)
    ld	$s5,56($sp)
    ld	$s0,64($sp)
    ld	$s6,24($sp)
    ld	$s2,32($sp)
    ld	$ra,40($sp)
    # Line 253
    ld	$s1,0($sp)
    # Line 249
    li	$v0,1
    # Line 253
    ld	$s3,16($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94b8bc:
    # Line 252
    li	$v0,1
.L0d94b8c0:
    sb	$v0,30476($a0)
    ld	$s2,32($sp)
    ld	$s0,64($sp)
    ld	$s8,72($sp)
    ld	$s5,56($sp)
    ld	$s7,48($sp)
    ld	$s6,24($sp)
    ld	$ra,40($sp)
    # Line 253
    ld	$s1,0($sp)
    ld	$s3,16($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94b8f4:
    move	$s7,$s7
    ld	$s1,0($sp)
    move	$ra,$ra
    move	$s6,$s6
    # Line 182
    move	$v0,$zero
    # Line 253
    ld	$s3,16($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glCrmScissorLine

# Function: __glCrmScissorStippledLine
# Declared: Line 258 (Source lines: 259-358)
# Address: 0x0d94b920 - 0x0d94bca4 (Size: 900 bytes, Frame: 224)
.globl __glCrmScissorStippledLine
.ent __glCrmScissorStippledLine
__glCrmScissorStippledLine:
    # Line 278
    lw	$a4,29872($a0)
    # Line 276
    lw	$a6,32124($a0)
    # Line 275
    lw	$a5,32120($a0)
    # Line 259
    addiu	$sp,$sp,-96
    sd	$s5,16($sp)
    # Line 273
    lw	$s5,29712($a0)
    # Line 259
    sd	$s4,24($sp)
    # Line 272
    lw	$s4,29704($a0)
    # Line 259
    sd	$s2,32($sp)
    # Line 271
    lw	$s2,29708($a0)
    # Line 277
    lw	$a3,29868($a0)
    # Line 259
    sd	$s1,8($sp)
    # Line 270
    lw	$s1,29700($a0)
    sd	$s8,56($sp)
    sd	$s7,64($sp)
    # Line 281
    slt	$at,$a3,$s1
    sd	$ra,80($sp)
    # Line 259
    move	$a2,$a0
    # Line 281
    bnez	$at,.L0d94b9ac
    sd	$s6,40($sp)
    slt	$v0,$a3,$s2
    beqz	$v0,.L0d94b9ac
    slt	$v1,$a4,$s4
    bnez	$v1,.L0d94b9ac
    slt	$a0,$a4,$s5
    beqz	$a0,.L0d94b9ac
    slt	$a1,$a5,$s1
    bnez	$a1,.L0d94b9ac
    slt	$a7,$a5,$s2
    beqz	$a7,.L0d94b9ac
    slt	$t0,$a6,$s4
    bnez	$t0,.L0d94b9ac
    slt	$t1,$a6,$s5
    bnez	$t1,.L0d94bc5c
    move	$s7,$s7
.L0d94b9ac:
    # Line 312
    lw	$s7,30472($a2)
    # Line 292
    lw	$a7,32144($a2)
    # Line 291
    lw	$t2,32140($a2)
    # Line 292
    lw	$t3,32132($a2)
    lw	$v0,29852($a2)
    # Line 303
    move	$t8,$zero
    # Line 292
    lw	$t9,32128($a2)
    movz	$t8,$t3,$v0
    # Line 289
    lw	$at,30248($a2)
    # Line 290
    lw	$a5,32136($a2)
    # Line 303
    move	$ra,$zero
    movz	$t3,$zero,$v0
    sd	$s0,72($sp)
    movz	$ra,$t9,$v0
    sd	$s3,48($sp)
    # Line 289
    move	$s6,$at
    # Line 312
    beqz	$at,.L0d94bc18
    movz	$t9,$zero,$v0
    li	$s3,-1
    li	$a0,32
    move	$a6,$zero
    subu	$s0,$a7,$t2
    b	.L0d94bc98
    sd	$a2,0($sp)
.L0d94ba0c:
    # Line 328
    nor	$v1,$a2,$zero
.L0d94ba10:
    # Line 329
    addiu	$a6,$a6,1
    # Line 328
    and	$a7,$a7,$v1
.L0d94ba18:
    # Line 344
    srl	$a2,$a2,0x1
    # Line 337
    addu	$v1,$a3,$t9
    slti	$a1,$a5,1
    movz	$a3,$v1,$a1
    # Line 339
    addu	$v0,$s0,$a5
    # Line 334
    addu	$a4,$a4,$t3
    # Line 338
    addu	$at,$a4,$t8
    movn	$v0,$a5,$a1
    # Line 341
    addu	$a5,$v0,$t2
    movz	$a4,$at,$a1
.L0d94ba40:
    sra	$a1,$s8,0x1
    bnez	$a1,.L0d94bc90
    # Line 326
    slt	$v0,$a3,$s2
.L0d94ba4c:
    slt	$v1,$a3,$s1
.L0d94ba50:
    # Line 350
    and	$a2,$t0,$a7
    sw	$a2,0($s7)
    beqz	$s6,.L0d94bbd4
    addiu	$s7,$s7,4
    # Line 324
    lui	$a2,0x8000
.L0d94ba64:
    # Line 316
    li	$a7,32
    move	$s8,$s6
    slt	$a7,$a7,$s6
    movn	$s8,$a0,$a7
    # Line 326
    slt	$a1,$a3,$s2
    # Line 324
    addiu	$t1,$s8,-1
    li	$a7,-1
    andi	$at,$s8,0x1
    # Line 321
    lw	$t0,0($s7)
    # Line 324
    bltz	$t1,.L0d94bc54
    # Line 319
    subu	$s6,$s6,$s8
    beqz	$at,.L0d94ba40
    # Line 324
    li	$a7,-1
    and	$v0,$t0,$a2
    addiu	$t1,$t1,-1
    # Line 333
    addu	$a3,$a3,$ra
    # Line 324
    beqz	$v0,.L0d94bc4c
    # Line 326
    slt	$at,$a4,$s4
    bnez	$v1,.L0d94ba0c
    slt	$v0,$a4,$s5
    beqz	$a1,.L0d94ba10
    # Line 328
    nor	$v1,$a2,$zero
    # Line 326
    bnez	$at,.L0d94ba10
    # Line 328
    nor	$v1,$a2,$zero
    # Line 326
    bnez	$v0,.L0d94ba18
    nop
    b	.L0d94ba10
    # Line 328
    nor	$v1,$a2,$zero
    nop
    nop
    nop
.L0d94bae0:
    nor	$v1,$a2,$zero
.L0d94bae4:
    # Line 329
    addiu	$a6,$a6,1
    # Line 328
    and	$a7,$a7,$v1
.L0d94baec:
    # Line 344
    srl	$a2,$a2,0x1
    # Line 339
    addu	$v1,$s0,$a5
    slti	$a1,$a5,1
    # Line 334
    addu	$a4,$a4,$t3
    movn	$v1,$a5,$a1
    # Line 338
    addu	$at,$a4,$t8
    # Line 333
    addu	$a3,$a3,$ra
    movz	$a4,$at,$a1
    # Line 337
    addu	$v0,$a3,$t9
    # Line 341
    addu	$a5,$v1,$t2
    movz	$a3,$v0,$a1
    # Line 324
    beq	$t1,$s3,.L0d94ba4c
    # Line 326
    slt	$v0,$a3,$s2
    # Line 324
    and	$a1,$t0,$a2
.L0d94bb24:
    # Line 326
    slt	$v1,$a4,$s4
    slt	$at,$a3,$s1
    # Line 324
    beqz	$a1,.L0d94bbc4
    addiu	$t1,$t1,-2
    # Line 326
    bnez	$at,.L0d94bb50
    slt	$a1,$a4,$s5
    beqz	$v0,.L0d94bb54
    # Line 328
    nor	$at,$a2,$zero
    # Line 326
    bnez	$v1,.L0d94bb54
    # Line 328
    nor	$at,$a2,$zero
    # Line 326
    bnez	$a1,.L0d94bb5c
.L0d94bb50:
    # Line 328
    nor	$at,$a2,$zero
.L0d94bb54:
    # Line 329
    addiu	$a6,$a6,1
    # Line 328
    and	$a7,$a7,$at
.L0d94bb5c:
    # Line 334
    addu	$a4,$a4,$t3
    # Line 333
    addu	$a3,$a3,$ra
    # Line 337
    addu	$at,$a3,$t9
    # Line 339
    addu	$v1,$s0,$a5
    slti	$v0,$a5,1
    # Line 344
    srl	$a2,$a2,0x1
    # Line 324
    and	$a1,$t0,$a2
    movn	$v1,$a5,$v0
    movz	$a3,$at,$v0
    # Line 341
    addu	$a5,$v1,$t2
    # Line 338
    addu	$v1,$a4,$t8
    # Line 324
    beqz	$a1,.L0d94bbcc
    movz	$a4,$v1,$v0
    # Line 326
    slt	$a1,$a3,$s1
    slt	$v0,$a4,$s4
    bnez	$a1,.L0d94bae0
    slt	$v1,$a4,$s5
    slt	$at,$a3,$s2
    beqz	$at,.L0d94bae0
    nop
    bnez	$v0,.L0d94bae0
    nop
    bnez	$v1,.L0d94baec
    nop
    b	.L0d94bae4
    # Line 328
    nor	$v1,$a2,$zero
.L0d94bbc4:
    b	.L0d94bb5c
    # Line 331
    addiu	$a6,$a6,1
.L0d94bbcc:
    b	.L0d94baec
    addiu	$a6,$a6,1
.L0d94bbd4:
    # Line 350
    ld	$a0,0($sp)
    lw	$a0,30248($a0)
    beq	$a0,$a6,.L0d94bc1c
    ld	$s3,48($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    ld	$s0,72($sp)
    ld	$s6,40($sp)
    ld	$s3,48($sp)
    # Line 358
    ld	$s1,8($sp)
    ld	$ra,80($sp)
    ld	$s2,32($sp)
    # Line 355
    move	$v0,$zero
    # Line 358
    ld	$s4,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d94bc18:
    ld	$s3,48($sp)
.L0d94bc1c:
    ld	$s0,72($sp)
    ld	$s8,56($sp)
    ld	$s7,64($sp)
    ld	$s6,40($sp)
    ld	$s1,8($sp)
    ld	$ra,80($sp)
    ld	$s2,32($sp)
    li	$v0,1
    ld	$s4,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d94bc4c:
    b	.L0d94ba18
    # Line 331
    addiu	$a6,$a6,1
.L0d94bc54:
    b	.L0d94ba50
    # Line 326
    slt	$v1,$a3,$s1
.L0d94bc5c:
    # Line 358
    ld	$s1,8($sp)
    move	$s8,$s8
    ld	$s2,32($sp)
    move	$ra,$ra
    move	$s6,$s6
    # Line 285
    move	$v0,$zero
    # Line 358
    ld	$s4,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
    nop
    nop
    nop
.L0d94bc90:
    b	.L0d94bb24
    # Line 324
    and	$a1,$t0,$a2
.L0d94bc98:
    # Line 326
    slt	$v1,$a3,$s1
    b	.L0d94ba64
    # Line 324
    lui	$a2,0x8000
.end __glCrmScissorStippledLine

# Function: __glCrmRenderCheapFogLine
# Declared: Line 365 (Source lines: 367-391)
# Address: 0x0d94bcb0 - 0x0d94bdb4 (Size: 260 bytes, Frame: 240)
.globl __glCrmRenderCheapFogLine
.ent __glCrmRenderCheapFogLine
__glCrmRenderCheapFogLine:
    # Line 373
    lwc1	$f15,176($a1)
    # Line 371
    lw	$at,32188($a0)
    # Line 367
    addiu	$sp,$sp,-112
    # Line 371
    sd	$at,88($sp)
    # Line 367
    sd	$s8,56($sp)
    sd	$ra,40($sp)
    sd	$s0,96($sp)
    sd	$s1,48($sp)
    lui	$v0,0x10
    sd	$gp,64($sp)
    addiu	$v0,$v0,20700
    addu	$gp,$t9,$v0
    # Line 373
    lw	$t9,12532($a0)
    # Line 367
    move	$s1,$a0
    sd	$s2,104($sp)
    move	$s2,$a1
    move	$s0,$a2
    # Line 373
    lw	$a2,8($a1)
    nop
    addiu	$a1,$sp,0
    jalr	$t9
    # Line 371
    lw	$s8,32184($a0)
    # Line 374
    lw	$t9,12532($s1)
    move	$a0,$s1
    lwc1	$f15,176($s0)
    lw	$a2,8($s0)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 377
    lw	$a6,8($s0)
    # Line 376
    lw	$a7,8($s2)
    # Line 378
    sw	$sp,8($s2)
    # Line 379
    addiu	$a5,$sp,16
    sw	$a5,8($s0)
    # Line 382
    ld	$a0,88($sp)
    lui	$a4,0xf
    ori	$a4,$a4,0xf000
    sw	$a4,32($sp)
    lw	$a3,32($sp)
    lw	$a2,32($sp)
    sw	$a3,8568($s8)
    sw	$a2,8568($a0)
    # Line 383
    sw	$zero,36($sp)
    lw	$a1,36($sp)
    lw	$v1,36($sp)
    sw	$a1,8576($s8)
    sw	$v1,8576($a0)
    # Line 386
    lw	$t9,12476($s1)
    # Line 376
    sd	$a7,80($sp)
    # Line 386
    move	$a2,$s0
    move	$a1,$s2
    # Line 377
    sd	$a6,72($sp)
    # Line 386
    jalr	$t9
    move	$a0,$s1
    ld	$s1,48($sp)
    ld	$s8,56($sp)
    # Line 391
    ld	$gp,64($sp)
    # Line 390
    ld	$t0,72($sp)
    # Line 389
    ld	$t1,80($sp)
    sw	$t1,8($s2)
    ld	$ra,40($sp)
    # Line 390
    sw	$t0,8($s0)
    # Line 391
    ld	$s0,96($sp)
    ld	$s2,104($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCrmRenderCheapFogLine

# Function: __glCrmRenderAliasLine
# Declared: Line 401 (Source lines: 403-515)
# Address: 0x0d94bdc0 - 0x0d94c044 (Size: 644 bytes, Frame: 208)
.globl __glCrmRenderAliasLine
.ent __glCrmRenderAliasLine
__glCrmRenderAliasLine:
    # Line 403
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sd	$ra,24($sp)
    lui	$at,0x10
    sd	$s2,16($sp)
    addiu	$at,$at,20428
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 411
    # lw $t9, -25748($gp) # &__glInitLineData
    # Line 403
    sd	$s3,8($sp)
    move	$s3,$a2
    move	$s2,$a1
    sd	$s0,32($sp)
    # Line 411
    nop
    # Line 403
    move	$s0,$a0
    # Line 411
    jal	__glInitLineData
    # Line 408
    lw	$s1,30436($a0)
    # Line 411
    lw	$a1,29856($s0)
    # Line 419
    lwc1	$f21,29864($s0)
    sdc1	$f22,64($sp)
    # Line 437
    li	$a6,4354
    # Line 419
    andi	$v0,$s1,0x4000
    # Line 411
    beqz	$a1,.L0d94c00c
    sdc1	$f20,72($sp)
    # Line 419
    lwc1	$f20,3544($s0)
    # Line 414
    lwc1	$f22,29860($s0)
    # Line 429
    andi	$a2,$s1,0x8000
    # Line 419
    beqz	$v0,.L0d94be68
    div.s	$f20,$f20,$f21
    # Line 426
    lwc1	$f23,136($s2)
    lwc1	$f25,136($s3)
    sub.s	$f25,$f25,$f23
    mul.s	$f25,$f20,$f25
    # Line 427
    madd.s	$f23,$f23,$f22,$f25
    # Line 428
    trunc.w.s	$f25,$f25
    mfc1	$a0,$f25
    # Line 427
    trunc.l.s	$f23,$f23
    # Line 428
    swc1	$f25,30324($s0)
    # Line 429
    sll	$a0,$a0,0x5
    sw	$a0,30328($s0)
    # Line 427
    dmfc1	$v1,$f23
    sw	$v1,30204($s0)
.L0d94be68:
    # Line 429
    beqz	$a2,.L0d94be7c
    # Line 437
    andi	$a4,$s1,0x1000
    # Line 429
    lbu	$a3,29848($s0)
    beqz	$a3,.L0d94c034
    # Line 437
    li	$t3,1
.L0d94be7c:
    beqz	$a4,.L0d94bf00
    # Line 458
    andi	$a7,$s1,0x8
    # Line 437
    lw	$a5,1912($s0)
    bne	$a5,$a6,.L0d94beb0
    nop
    # Line 449
    lwc1	$f5,104($s2)
    swc1	$f5,29940($s0)
    # Line 450
    lwc1	$f7,104($s2)
    lwc1	$f6,104($s3)
    sub.s	$f6,$f6,$f7
    mul.s	$f6,$f20,$f6
    b	.L0d94bef4
    swc1	$f6,30432($s0)
.L0d94beb0:
    # Line 453
    lw	$t9,12536($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    # Line 454
    lw	$t9,12536($s0)
    # Line 453
    sdc1	$f0,0($sp)
    # Line 454
    move	$a0,$s0
    # Line 453
    sdc1	$f0,56($sp)
    # Line 454
    jalr	$t9
    move	$a1,$s3
    # Line 456
    ldc1	$f9,0($sp)
    ldc1	$f5,56($sp)
    sub.s	$f6,$f0,$f9
    lw	$a1,29856($s0)
    # Line 455
    swc1	$f9,29940($s0)
    # Line 456
    mul.s	$f6,$f20,$f6
    swc1	$f6,30432($s0)
.L0d94bef4:
    # Line 458
    madd.s	$f7,$f5,$f22,$f6
    swc1	$f7,30244($s0)
    andi	$a7,$s1,0x8
.L0d94bf00:
    # Line 500
    andi	$t2,$s1,0x1
    # Line 458
    beqz	$a7,.L0d94bf70
    # Line 474
    andi	$t0,$s1,0x2
    # Line 465
    lwc1	$f18,48($s2)
    lwc1	$f17,48($s3)
    sub.s	$f17,$f17,$f18
    mul.s	$f17,$f20,$f17
    swc1	$f17,30380($s0)
    # Line 466
    lwc1	$f16,52($s2)
    lwc1	$f15,52($s3)
    sub.s	$f15,$f15,$f16
    mul.s	$f15,$f20,$f15
    swc1	$f15,30384($s0)
    # Line 467
    lwc1	$f14,48($s2)
    swc1	$f14,30224($s0)
    # Line 468
    lwc1	$f13,52($s2)
    swc1	$f13,30228($s0)
    # Line 469
    lwc1	$f12,60($s2)
    lwc1	$f11,60($s3)
    sub.s	$f11,$f11,$f12
    mul.s	$f11,$f20,$f11
    swc1	$f11,30392($s0)
    # Line 470
    lwc1	$f10,60($s2)
    swc1	$f10,30236($s0)
    # Line 473
    lwc1	$f9,140($s2)
    swc1	$f9,32164($s0)
    # Line 474
    lwc1	$f8,140($s3)
    swc1	$f8,32168($s0)
.L0d94bf70:
    beqz	$t0,.L0d94bfd8
    lw	$a0,8($s3)
    # Line 478
    lw	$a3,8($s2)
    # Line 485
    lwc1	$f0,0($a0)
    lwc1	$f1,0($a3)
    # Line 489
    lwc1	$f4,12($a0)
    # Line 485
    lbu	$t1,3220($s0)
    # Line 490
    lwc1	$f5,4($a3)
    # Line 485
    sub.s	$f0,$f0,$f1
    # Line 488
    lwc1	$f6,8($a3)
    # Line 489
    lwc1	$f7,12($a3)
    # Line 485
    beqz	$t1,.L0d94bfd0
    mul.s	$f0,$f20,$f0
    # Line 488
    lwc1	$f3,8($a0)
    # Line 490
    lwc1	$f2,4($a0)
    # Line 489
    sub.s	$f4,$f4,$f7
    # Line 488
    sub.s	$f3,$f3,$f6
    # Line 489
    mul.s	$f4,$f20,$f4
    # Line 490
    sub.s	$f2,$f2,$f5
    # Line 492
    swc1	$f4,30296($s0)
    # Line 488
    mul.s	$f3,$f20,$f3
    # Line 490
    mul.s	$f2,$f20,$f2
    # Line 491
    swc1	$f3,30292($s0)
    # Line 490
    swc1	$f2,30288($s0)
.L0d94bfd0:
    # Line 494
    swc1	$f0,30284($s0)
    # Line 495
    lw	$a0,8($s2)
.L0d94bfd8:
    # Line 507
    lwc1	$f8,4($a0)
    # Line 505
    lwc1	$f9,8($a0)
    # Line 500
    beqz	$t2,.L0d94bff8
    lwc1	$f0,0($a0)
    # Line 506
    lwc1	$f10,12($a0)
    # Line 507
    swc1	$f8,30212($s0)
    # Line 508
    swc1	$f9,30216($s0)
    # Line 509
    swc1	$f10,30220($s0)
.L0d94bff8:
    # Line 514
    lw	$t9,12380($s0)
    # Line 513
    sw	$a1,30248($s0)
    # Line 514
    move	$a0,$s0
    jalr	$t9
    # Line 511
    swc1	$f0,30208($s0)
.L0d94c00c:
    ld	$s3,8($sp)
    ld	$s2,16($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$ra,24($sp)
    ldc1	$f20,72($sp)
    ldc1	$f22,64($sp)
    # Line 515
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94c034:
    # Line 437
    sb	$t3,29848($s0)
    # Line 436
    sw	$zero,29844($s0)
    # Line 437
    b	.L0d94be7c
    # Line 435
    sw	$zero,29840($s0)
.end __glCrmRenderAliasLine

# Function: __glCrmRenderAntiAliasLine
# Declared: Line 517 (Source lines: 519-744)
# Address: 0x0d94c050 - 0x0d94c744 (Size: 1780 bytes, Frame: 192)
.globl __glCrmRenderAntiAliasLine
.ent __glCrmRenderAntiAliasLine
__glCrmRenderAntiAliasLine:
    # Line 532
    lw	$at,32184($a0)
    lw	$v0,32188($a0)
    # Line 519
    addiu	$sp,$sp,-192
    # Line 532
    sd	$v0,24($sp)
    sd	$at,16($sp)
    # Line 519
    sd	$s8,40($sp)
    sd	$ra,48($sp)
    lui	$v1,0x10
    sd	$s7,64($sp)
    addiu	$v1,$v1,19772
    sd	$gp,72($sp)
    addu	$gp,$t9,$v1
    # Line 534
    # lw $t9, -25736($gp) # &__glInitAALineData
    # Line 519
    sd	$s0,56($sp)
    move	$s0,$a2
    move	$s7,$a1
    sd	$s6,32($sp)
    # Line 534
    nop
    # Line 519
    move	$s6,$a0
    # Line 534
    jal	__glInitAALineData
    # Line 530
    lw	$s8,30436($a0)
    sdc1	$f28,144($sp)
    sdc1	$f24,136($sp)
    sdc1	$f22,128($sp)
    sdc1	$f30,120($sp)
    sdc1	$f20,112($sp)
    # Line 534
    mtc1	$zero,$f5
    lwc1	$f0,29864($s6)
    sdc1	$f26,104($sp)
    sd	$s5,184($sp)
    sd	$s1,176($sp)
    c.eq.s	$f0,$f5
    sd	$s4,168($sp)
    sd	$s3,160($sp)
    bc1t	.L0d94c640
    sd	$s2,152($sp)
    # Line 542
    lwc1	$f20,3544($s6)
    andi	$a0,$s8,0x4000
    # Line 537
    lwc1	$f22,29860($s6)
    # Line 542
    beqz	$a0,.L0d94c12c
    div.s	$f20,$f20,$f0
    # Line 547
    lwc1	$f25,136($s0)
    lwc1	$f27,136($s7)
    sub.s	$f25,$f25,$f27
    mul.s	$f25,$f20,$f25
    trunc.w.s	$f25,$f25
    # Line 551
    cvt.s.w	$f23,$f25
    # Line 547
    mfc1	$a1,$f25
    swc1	$f25,30324($s6)
    # Line 549
    sll	$a1,$a1,0x5
    sw	$a1,30328($s6)
    # Line 551
    lwc1	$f21,136($s7)
    madd.s	$f21,$f21,$f23,$f22
    trunc.w.s	$f21,$f21
    swc1	$f21,30204($s6)
.L0d94c12c:
    andi	$a2,$s8,0x8000
    beqz	$a2,.L0d94c144
    sd	$a2,80($sp)
    lbu	$a3,29848($s6)
    beqz	$a3,.L0d94c6d0
    # Line 559
    li	$a7,1
.L0d94c144:
    andi	$a4,$s8,0x1000
    beqz	$a4,.L0d94c1c4
    # Line 578
    andi	$a7,$s8,0x2
    # Line 559
    lw	$a5,1912($s6)
    li	$a6,4354
    bne	$a5,$a6,.L0d94c180
    nop
    # Line 568
    lwc1	$f6,104($s7)
    swc1	$f6,29940($s6)
    # Line 569
    lwc1	$f5,104($s0)
    lwc1	$f7,104($s7)
    sub.s	$f5,$f5,$f7
    mul.s	$f5,$f20,$f5
    b	.L0d94c1b8
    swc1	$f5,30432($s6)
.L0d94c180:
    # Line 573
    lw	$t9,12536($s6)
    move	$a0,$s6
    jalr	$t9
    move	$a1,$s7
    # Line 574
    lw	$t9,12536($s6)
    move	$a0,$s6
    # Line 573
    mov.s	$f24,$f0
    # Line 574
    jalr	$t9
    move	$a1,$s0
    # Line 576
    sub.s	$f5,$f0,$f24
    # Line 575
    swc1	$f24,29940($s6)
    # Line 576
    mul.s	$f5,$f20,$f5
    # Line 575
    mov.s	$f6,$f24
    # Line 576
    swc1	$f5,30432($s6)
.L0d94c1b8:
    # Line 578
    madd.s	$f7,$f6,$f22,$f5
    swc1	$f7,30244($s6)
    andi	$a7,$s8,0x2
.L0d94c1c4:
    lbu	$a1,3220($s6)
    beqz	$a7,.L0d94c22c
    lw	$a0,8($s0)
    # Line 583
    lw	$a3,8($s7)
    # Line 589
    lwc1	$f8,0($a0)
    lwc1	$f9,0($a3)
    sub.s	$f8,$f8,$f9
    mul.s	$f8,$f20,$f8
    beqz	$a1,.L0d94c228
    swc1	$f8,30284($s6)
    # Line 591
    lwc1	$f14,4($a0)
    lwc1	$f15,4($a3)
    sub.s	$f14,$f14,$f15
    mul.s	$f14,$f20,$f14
    swc1	$f14,30288($s6)
    # Line 592
    lwc1	$f12,8($a0)
    lwc1	$f13,8($a3)
    sub.s	$f12,$f12,$f13
    mul.s	$f12,$f20,$f12
    swc1	$f12,30292($s6)
    # Line 593
    lwc1	$f10,12($a0)
    lwc1	$f11,12($a3)
    sub.s	$f10,$f10,$f11
    mul.s	$f10,$f20,$f10
    swc1	$f10,30296($s6)
.L0d94c228:
    # Line 595
    lw	$a0,8($s7)
.L0d94c22c:
    # Line 600
    lwc1	$f16,0($a0)
    beqz	$a1,.L0d94c250
    swc1	$f16,30208($s6)
    # Line 602
    lwc1	$f19,4($a0)
    swc1	$f19,30212($s6)
    # Line 603
    lwc1	$f18,8($a0)
    swc1	$f18,30216($s6)
    # Line 604
    lwc1	$f17,12($a0)
    swc1	$f17,30220($s6)
.L0d94c250:
    lbu	$t0,28216($s6)
    beqz	$t0,.L0d94c2dc
    nop
    # Line 612
    lwc1	$f3,48($s0)
    lwc1	$f4,48($s7)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f20,$f3
    swc1	$f3,30380($s6)
    # Line 613
    lwc1	$f1,52($s0)
    lwc1	$f2,52($s7)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f20,$f1
    swc1	$f1,30384($s6)
    # Line 614
    lwc1	$f0,48($s7)
    swc1	$f0,30224($s6)
    # Line 615
    lwc1	$f31,52($s7)
    swc1	$f31,30228($s6)
    # Line 616
    lwc1	$f27,60($s0)
    lwc1	$f29,60($s7)
    sub.s	$f27,$f27,$f29
    mul.s	$f27,$f20,$f27
    swc1	$f27,30392($s6)
    # Line 617
    lwc1	$f25,60($s7)
    swc1	$f25,30236($s6)
    # Line 620
    lwc1	$f23,140($s7)
    swc1	$f23,32164($s6)
    # Line 621
    lwc1	$f21,140($s0)
    # Line 623
    lw	$a0,2484($s6)
    # Line 621
    swc1	$f21,32168($s6)
    # Line 623
    lw	$a0,0($a0)
    li	$t1,0x8062
    beq	$a0,$t1,.L0d94c68c
    li	$a1,7681
    beq	$a0,$a1,.L0d94c68c
    nop
.L0d94c2dc:
    # Line 649
    lwc1	$f30,29988($s6)
    # Line 648
    lwc1	$f26,29984($s6)
    # Line 647
    lwc1	$f28,29980($s6)
    # Line 646
    lwc1	$f24,29976($s6)
    # Line 644
    lw	$s4,29884($s6)
    # Line 643
    lw	$s5,29876($s6)
    # Line 640
    lw	$s2,29872($s6)
    # Line 639
    lw	$s1,29868($s6)
    # Line 637
    lw	$s3,29896($s6)
    # Line 652
    mtc1	$s2,$f25
    # Line 636
    lw	$s0,29892($s6)
    # Line 651
    mtc1	$s1,$f23
    # Line 634
    lw	$a0,29944($s6)
    # Line 641
    lw	$a3,29880($s6)
    # Line 652
    cvt.s.w	$f25,$f25
    # Line 651
    lwc1	$f0,3540($s6)
    cvt.s.w	$f23,$f23
    # Line 653
    lwc1	$f21,29960($s6)
    # Line 652
    lwc1	$f31,132($s7)
    # Line 651
    lwc1	$f29,128($s7)
    # Line 652
    add.s	$f25,$f25,$f0
    # Line 655
    lwc1	$f22,29972($s6)
    # Line 651
    add.s	$f23,$f23,$f0
    # Line 655
    lwc1	$f27,29968($s6)
    # Line 652
    sub.s	$f25,$f25,$f31
    # Line 653
    lwc1	$f20,29964($s6)
    # Line 651
    sub.s	$f23,$f23,$f29
    # Line 655
    ld	$a2,80($sp)
    mul.s	$f22,$f22,$f25
    # Line 642
    lw	$a4,29888($s6)
    # Line 655
    madd.s	$f22,$f22,$f27,$f23
    # Line 642
    sd	$a4,88($sp)
    # Line 653
    mul.s	$f20,$f20,$f25
    # Line 641
    sd	$a3,96($sp)
    # Line 655
    beqz	$a2,.L0d94c3ac
    # Line 653
    madd.s	$f20,$f20,$f21,$f23
    # Line 659
    lh	$t0,482($s6)
    lw	$a7,29840($s6)
    # Line 664
    mtc1	$t0,$f29
    # Line 659
    mult	$a7,$t0
    # Line 664
    cvt.s.w	$f29,$f29
    lwc1	$f27,3544($s6)
    # Line 659
    lw	$a5,29844($s6)
    mflo	$a6
    # Line 664
    div.s	$f27,$f27,$f29
    # Line 659
    addu	$a5,$a5,$a6
    mtc1	$a5,$f29
    cvt.s.w	$f29,$f29
    sd	$s8,8($sp)
    sub.s	$f29,$f29,$f0
    swc1	$f29,30000($s6)
    # Line 664
    swc1	$f27,30004($s6)
.L0d94c3ac:
    sd	$s8,8($sp)
    # Line 668
    addiu	$s8,$a0,-1
    bltz	$s8,.L0d94c584
    ld	$a5,80($sp)
    lui	$s7,0x7fff
    b	.L0d94c428
    ori	$s7,$s7,0xffff
    nop
    nop
.L0d94c3d0:
    # Line 709
    sw	$s2,29872($s6)
    # Line 708
    sw	$s1,29868($s6)
    # Line 707
    sw	$s3,29896($s6)
    # Line 706
    sw	$s0,29892($s6)
    # Line 705
    swc1	$f22,29996($s6)
    # Line 712
    lw	$t9,12380($s6)
    # Line 704
    swc1	$f20,29992($s6)
    # Line 711
    lw	$t8,29856($s6)
    # Line 712
    move	$a0,$s6
    jalr	$t9
    # Line 711
    sw	$t8,30248($s6)
    # Line 712
    lw	$t9,29852($s6)
    # Line 668
    addiu	$s8,$s8,-1
    # Line 712
    beqz	$t9,.L0d94c568
    # Line 668
    li	$ra,-1
    # Line 721
    lwc1	$f0,29968($s6)
    # Line 720
    lwc1	$f31,29960($s6)
    # Line 721
    add.s	$f22,$f0,$f22
    # Line 719
    addiu	$s1,$s1,1
    # Line 720
    add.s	$f20,$f31,$f20
.L0d94c420:
    # Line 668
    beq	$s8,$ra,.L0d94c584
    ld	$a5,80($sp)
.L0d94c428:
    lwc1	$f0,3540($s6)
    neg.s	$f0,$f0
    c.lt.s $f0,$f20
    bc1f .L0d94c4b0
    nop
    b	.L0d94c464
    # Line 671
    subu	$s0,$s0,$s3
.L0d94c444:
    # Line 680
    sub.s	$f22,$f22,$f26
    # Line 682
    subu	$s2,$s2,$s4
    # Line 681
    subu	$s1,$s1,$s5
    # Line 679
    sub.s	$f20,$f20,$f24
.L0d94c454:
    # Line 682
    c.lt.s $f0,$f20
    bc1f .L0d94c4b0
    nop
    # Line 671
    subu	$s0,$s0,$s3
.L0d94c464:
    bltz	$s0,.L0d94c530
    # Line 677
    ld	$a2,88($sp)
    # Line 680
    sub.s	$f22,$f22,$f26
    # Line 682
    subu	$s2,$s2,$s4
    # Line 681
    subu	$s1,$s1,$s5
    # Line 679
    sub.s	$f20,$f20,$f24
.L0d94c47c:
    # Line 682
    c.lt.s $f0,$f20
    bc1f .L0d94c4b0
    nop
    # Line 671
    subu	$s0,$s0,$s3
    bgez	$s0,.L0d94c444
    # Line 677
    ld	$v0,88($sp)
    # Line 676
    ld	$at,96($sp)
    # Line 675
    sub.s	$f22,$f22,$f30
    # Line 673
    and	$s0,$s0,$s7
    # Line 677
    subu	$s2,$s2,$v0
    # Line 674
    sub.s	$f20,$f20,$f28
    # Line 677
    b	.L0d94c454
    # Line 676
    subu	$s1,$s1,$at
.L0d94c4b0:
    # Line 682
    c.le.s $f20,$f0
    bc1f .L0d94c3d0
    nop
    b	.L0d94c4e4
    # Line 688
    addu	$s0,$s0,$s3
.L0d94c4c4:
    # Line 697
    add.s	$f22,$f26,$f22
    # Line 699
    addu	$s2,$s2,$s4
    # Line 698
    addu	$s1,$s1,$s5
    # Line 696
    add.s	$f20,$f24,$f20
.L0d94c4d4:
    # Line 699
    c.le.s $f20,$f0
    bc1f .L0d94c3d0
    nop
    # Line 688
    addu	$s0,$s0,$s3
.L0d94c4e4:
    bltz	$s0,.L0d94c54c
    # Line 694
    ld	$a4,88($sp)
    # Line 697
    add.s	$f22,$f26,$f22
    # Line 699
    addu	$s2,$s2,$s4
    # Line 698
    addu	$s1,$s1,$s5
    # Line 696
    add.s	$f20,$f24,$f20
.L0d94c4fc:
    # Line 699
    c.le.s $f20,$f0
    bc1f .L0d94c3d0
    nop
    # Line 688
    addu	$s0,$s0,$s3
    bgez	$s0,.L0d94c4c4
    # Line 694
    ld	$a0,88($sp)
    # Line 693
    ld	$v1,96($sp)
    # Line 692
    add.s	$f22,$f30,$f22
    # Line 690
    and	$s0,$s0,$s7
    # Line 694
    addu	$s2,$s2,$a0
    # Line 691
    add.s	$f20,$f28,$f20
    # Line 694
    b	.L0d94c4d4
    # Line 693
    addu	$s1,$s1,$v1
.L0d94c530:
    # Line 676
    ld	$a1,96($sp)
    # Line 675
    sub.s	$f22,$f22,$f30
    # Line 673
    and	$s0,$s0,$s7
    # Line 677
    subu	$s2,$s2,$a2
    # Line 674
    sub.s	$f20,$f20,$f28
    # Line 677
    b	.L0d94c47c
    # Line 676
    subu	$s1,$s1,$a1
.L0d94c54c:
    # Line 693
    ld	$a3,96($sp)
    # Line 692
    add.s	$f22,$f30,$f22
    # Line 690
    and	$s0,$s0,$s7
    # Line 694
    addu	$s2,$s2,$a4
    # Line 691
    add.s	$f20,$f28,$f20
    # Line 694
    b	.L0d94c4fc
    # Line 693
    addu	$s1,$s1,$a3
.L0d94c568:
    # Line 717
    lwc1	$f2,29972($s6)
    # Line 716
    lwc1	$f1,29964($s6)
    # Line 717
    add.s	$f22,$f2,$f22
    # Line 715
    addiu	$s2,$s2,1
    # Line 717
    b	.L0d94c420
    # Line 716
    add.s	$f20,$f1,$f20
    # Line 668
    ld	$a5,80($sp)
.L0d94c584:
    beqz	$a5,.L0d94c604
    # Line 738
    ld	$t0,8($sp)
    # Line 731
    # lw $t9, -22852($gp) # &ceilf
    jal	ceilf
    lwc1	$f12,29956($s6)
    # Line 735
    trunc.w.s	$f3,$f0
    mfc1	$a7,$f3
    # Line 736
    lw	$a6,29844($s6)
    addu	$a6,$a6,$a7
    # Line 735
    lh	$t0,482($s6)
    # Line 736
    mtc1	$a6,$f4
    # Line 735
    mtc1	$t0,$f5
    # Line 736
    cvt.d.w	$f4,$f4
    # Line 735
    cvt.d.w	$f5,$f5
    # Line 736
    div.d	$f4,$f4,$f5
    # Line 735
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f5
    # Line 736
    trunc.w.d	$f4,$f4
    mfc1	$t3,$f4
    mult	$t3,$t0
    # Line 735
    trunc.w.d	$f3,$f3
    mfc1	$t2,$f3
    lw	$t1,29840($s6)
    # Line 736
    teq	$t0,$zero,0x7
    # Line 735
    addu	$t1,$t1,$t2
    andi	$t1,$t1,0xf
    sw	$t1,29840($s6)
    # Line 736
    mflo	$a7
    # Line 735
    teq	$t0,$zero,0x7
    # Line 736
    subu	$a6,$a6,$a7
    sw	$a6,29844($s6)
    # Line 738
    ld	$t0,8($sp)
.L0d94c604:
    andi	$t0,$t0,0x8
    beqz	$t0,.L0d94c644
    ld	$s2,152($sp)
    lw	$t1,32088($s6)
    sll	$t1,$t1,0x10
    bgez	$t1,.L0d94c644
    ld	$s2,152($sp)
    lw	$a0,2484($s6)
    lw	$a0,0($a0)
    li	$t2,0x8062
    beq	$a0,$t2,.L0d94c6e4
    ld	$s5,184($sp)
    li	$a1,7681
    beq	$a0,$a1,.L0d94c6e4
    ld	$s5,184($sp)
.L0d94c640:
    ld	$s2,152($sp)
.L0d94c644:
    ld	$s6,32($sp)
    ld	$s3,160($sp)
    ld	$s8,40($sp)
    ld	$s4,168($sp)
    ld	$s0,56($sp)
    ld	$s7,64($sp)
    ld	$s1,176($sp)
    ld	$s5,184($sp)
    ldc1	$f26,104($sp)
    ldc1	$f20,112($sp)
    ldc1	$f30,120($sp)
    ldc1	$f22,128($sp)
    ld	$ra,48($sp)
    ldc1	$f24,136($sp)
    ldc1	$f28,144($sp)
    # Line 744
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d94c68c:
    # Line 626
    lw	$a6,32360($s6)
    sw	$a6,0($sp)
    # Line 627
    lw	$a4,0($sp)
    # Line 628
    ld	$a3,24($sp)
    # Line 627
    li	$a5,-4
    and	$a4,$a4,$a5
    # Line 628
    ld	$a5,16($sp)
    # Line 627
    ori	$a4,$a4,0x1
    sw	$a4,0($sp)
    # Line 628
    lw	$a2,0($sp)
    sw	$a4,8464($a5)
    # Line 630
    mtc1	$zero,$f6
    # Line 628
    sw	$a2,8464($a3)
    # Line 629
    lwc1	$f5,30792($s6)
    # Line 630
    swc1	$f6,30296($s6)
    b	.L0d94c2dc
    # Line 629
    swc1	$f5,30220($s6)
.L0d94c6d0:
    # Line 559
    sb	$a7,29848($s6)
    # Line 558
    sw	$zero,29844($s6)
    # Line 559
    b	.L0d94c144
    # Line 557
    sw	$zero,29840($s6)
    ld	$s5,184($sp)
.L0d94c6e4:
    ld	$s1,176($sp)
    ld	$s4,168($sp)
    ld	$s3,160($sp)
    ld	$s2,152($sp)
    ldc1	$f28,144($sp)
    ldc1	$f24,136($sp)
    ldc1	$f22,128($sp)
    ldc1	$f30,120($sp)
    ldc1	$f20,112($sp)
    ldc1	$f26,104($sp)
    # Line 744
    ld	$gp,72($sp)
    ld	$s0,56($sp)
    ld	$s7,64($sp)
    ld	$s8,40($sp)
    # Line 741
    ld	$t1,24($sp)
    lw	$t2,32360($s6)
    ld	$t3,16($sp)
    # Line 744
    ld	$ra,48($sp)
    # Line 741
    sw	$t2,8464($t3)
    lw	$t0,32360($s6)
    # Line 744
    ld	$s6,32($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 741
    sw	$t0,8464($t1)
.end __glCrmRenderAntiAliasLine

# Function: __glCrmRenderFrontBackLine
# Declared: Line 751 (Source lines: 752-788)
# Address: 0x0d94c750 - 0x0d94c8f8 (Size: 424 bytes, Frame: 224)
.globl __glCrmRenderFrontBackLine
.ent __glCrmRenderFrontBackLine
__glCrmRenderFrontBackLine:
    # Line 759
    lw	$v0,32088($a0)
    # Line 752
    addiu	$sp,$sp,-96
    sd	$s3,16($sp)
    move	$s3,$a1
    # Line 767
    lw	$a1,30656($a0)
    # Line 752
    sd	$s1,64($sp)
    # Line 754
    lw	$s1,32184($a0)
    # Line 759
    sw	$v0,0($sp)
    # Line 752
    sd	$ra,24($sp)
    sd	$s4,32($sp)
    sd	$s2,8($sp)
    lui	$v1,0x10
    # Line 754
    lw	$s2,32188($a0)
    # Line 752
    addiu	$v1,$v1,17980
    sd	$gp,80($sp)
    addu	$gp,$t9,$v1
    # Line 767
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 752
    sd	$s0,40($sp)
    move	$s0,$a0
    # Line 760
    lw	$at,8680($s2)
    # Line 752
    move	$s4,$a2
    # Line 767
    bal __glCrmSetStoreBuffer
    sd	$at,48($sp)
    # Line 768
    lw	$a2,32088($s0)
    lw	$a1,32092($s0)
    li	$a0,-3
    and	$a0,$a0,$a2
    # Line 767
    sd	$v0,72($sp)
    # Line 768
    beq	$a1,$a0,.L0d94c7e4
    sw	$a0,32088($s0)
    # Line 769
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d94c7e4:
    # Line 772
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,56($sp)
    # Line 770
    sw	$zero,4($sp)
    lw	$ra,4($sp)
    sw	$ra,8680($s1)
    lw	$ra,4($sp)
    sw	$ra,8680($s2)
    # Line 772
    lw	$t9,-32504($t9)
    move	$a2,$s4
    move	$a1,$s3
    jal	__glCrmSetStoreBuffer
    move	$a0,$s0
    # Line 778
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    lw	$a1,30660($s0)
    # Line 779
    lw	$a1,0($sp)
    lw	$a2,32088($s0)
    srl	$a1,$a1,0x1
    li	$a0,-3
    andi	$a1,$a1,0x1
    lw	$at,32092($s0)
    and	$a0,$a0,$a2
    sll	$a1,$a1,0x1
    ld	$v0,48($sp)
    or	$a0,$a0,$a1
    ld	$a5,56($sp)
    beq	$at,$a0,.L0d94c878
    sw	$a0,32088($s0)
    # Line 780
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d94c878:
    # Line 781
    sw	$v0,8680($s1)
    sw	$v0,8680($s2)
    # Line 783
    lw	$t9,-32504($a5)
    move	$a2,$s4
    move	$a1,$s3
    jal	__glCrmSetStoreBuffer
    move	$a0,$s0
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s4,32($sp)
    # Line 785
    lw	$a0,0($sp)
    lw	$a7,32092($s0)
    ld	$s1,64($sp)
    ld	$v0,72($sp)
    beq	$a7,$a0,.L0d94c8d4
    sw	$a0,32088($s0)
    # Line 786
    lw	$t3,32184($s0)
    sw	$a0,8216($t3)
    lw	$t2,32188($s0)
    lw	$t1,32088($s0)
    sw	$t1,8216($t2)
    lw	$t0,32088($s0)
    sw	$t0,32092($s0)
.L0d94c8d4:
    # Line 787
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    move	$a1,$v0
    ld	$ra,24($sp)
    ld	$s0,40($sp)
    # Line 788
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glCrmRenderFrontBackLine

# Function: __glCrmRenderLeftRightLine
# Declared: Line 798 (Source lines: 799-846)
# Address: 0x0d94c900 - 0x0d94cadc (Size: 476 bytes, Frame: 208)
.globl __glCrmRenderLeftRightLine
.ent __glCrmRenderLeftRightLine
__glCrmRenderLeftRightLine:
    # Line 805
    lw	$v1,32088($a0)
    # Line 799
    addiu	$sp,$sp,-80
    # Line 805
    sw	$v1,0($sp)
    sd	$ra,72($sp)
    # Line 799
    sd	$s4,48($sp)
    sd	$gp,64($sp)
    sd	$s2,16($sp)
    # Line 801
    lw	$s2,32188($a0)
    # Line 799
    lui	$a3,0x10
    sd	$s1,24($sp)
    addiu	$a3,$a3,17548
    # Line 811
    lw	$a6,8200($s2)
    # Line 801
    lw	$s1,32184($a0)
    # Line 799
    addu	$gp,$t9,$a3
    # Line 811
    li	$a4,-2
    # Line 799
    la	$v0,__glCrmRenderFrontBackLine
    # Line 811
    nor	$a5,$a6,$zero
    # Line 806
    lw	$a7,8680($s2)
    # Line 811
    and	$a4,$a4,$a6
    andi	$a5,$a5,0x1
    or	$a4,$a4,$a5
    sw	$a4,8200($s2)
    # Line 812
    sw	$a4,8200($s1)
    lw	$at,12472($a0)
    # Line 799
    move	$s4,$a2
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s3,40($sp)
    move	$s3,$a1
    # Line 819
    li	$a1,-3
    # Line 812
    beq	$at,$v0,.L0d94c9c4
    # Line 806
    sd	$a7,8($sp)
    # Line 819
    lw	$a0,32088($a0)
    lw	$t0,32092($s0)
    and	$a0,$a0,$a1
    beq	$t0,$a0,.L0d94c9b0
    sw	$a0,32088($s0)
    # Line 820
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d94c9b0:
    # Line 821
    sw	$zero,4($sp)
    lw	$a7,4($sp)
    lw	$a6,4($sp)
    sw	$a7,8680($s1)
    sw	$a6,8680($s2)
.L0d94c9c4:
    # Line 824
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,32($sp)
    lw	$t9,-32484($t9)
    move	$a2,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s0
    # Line 829
    lw	$a0,8200($s2)
    li	$v0,-2
    nor	$v1,$a0,$zero
    # Line 830
    la	$at,__glCrmRenderFrontBackLine
    # Line 829
    and	$v0,$v0,$a0
    andi	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sw	$v0,8200($s2)
    # Line 830
    sw	$v0,8200($s1)
    lw	$ra,12472($s0)
    # Line 837
    lw	$a2,0($sp)
    li	$a3,-3
    # Line 830
    beq	$ra,$at,.L0d94ca64
    # Line 837
    srl	$a2,$a2,0x1
    # Line 839
    ld	$a7,8($sp)
    # Line 837
    lw	$a0,32088($s0)
    andi	$a2,$a2,0x1
    lw	$a1,32092($s0)
    sll	$a2,$a2,0x1
    and	$a0,$a0,$a3
    or	$a0,$a0,$a2
    beq	$a1,$a0,.L0d94ca5c
    sw	$a0,32088($s0)
    # Line 838
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d94ca5c:
    # Line 839
    sw	$a7,8680($s1)
    sw	$a7,8680($s2)
.L0d94ca64:
    # Line 842
    ld	$t9,32($sp)
    lw	$t9,-32484($t9)
    ld	$s2,16($sp)
    move	$a0,$s0
    move	$a1,$s3
    ld	$s1,24($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$s3,40($sp)
    # Line 844
    lw	$a0,0($sp)
    lw	$at,32092($s0)
    ld	$ra,72($sp)
    ld	$s4,48($sp)
    beq	$at,$a0,.L0d94cacc
    sw	$a0,32088($s0)
    # Line 845
    lw	$a1,32184($s0)
    # Line 846
    ld	$gp,64($sp)
    # Line 845
    sw	$a0,8216($a1)
    lw	$a0,32188($s0)
    lw	$v1,32088($s0)
    sw	$v1,8216($a0)
    lw	$v0,32088($s0)
    sw	$v0,32092($s0)
    # Line 846
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94cacc:
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glCrmRenderLeftRightLine

