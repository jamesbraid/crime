# Source: ../soft/so_select.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_select.c
# Total Functions: 9

.text

# Function: __glim_SelectBuffer
# Declared: Line 25 (Source lines: 26-41)
# Address: 0x0da04780 - 0x0da04820 (Size: 160 bytes, Frame: 16)
.globl __glim_SelectBuffer
.ent __glim_SelectBuffer
__glim_SelectBuffer:
    # Line 31
    li	$a4,7170
    # Line 26
    addiu	$sp,$sp,-16
    # Line 27
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 26
    lui	$v1,0x5
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-14836
    sd	$gp,0($sp)
    # Line 27
    beq	$at,$v0,.L0da047fc
    # Line 26
    addu	$gp,$t9,$v1
    # Line 27
    bltz	$a0,.L0da04810
    # Line 30
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 31
    lw	$a2,3204($a3)
    beq	$a2,$a4,.L0da047ec
    # Line 34
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 40
    sw	$a1,4908($a3)
    # Line 39
    sw	$a0,4912($a3)
    # Line 38
    sw	$a1,4904($a3)
    # Line 37
    sb	$zero,4900($a3)
    # Line 41
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da047e0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da047ec:
    # Line 34
    jal	__glSetError
    li	$a0,1282
    b	.L0da047e0
    ld	$ra,8($sp)
.L0da047fc:
    # Line 27
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da047e0
    ld	$ra,8($sp)
.L0da04810:
    # Line 30
    jalr	$t9
    li	$a0,1281
    b	.L0da047e0
    ld	$ra,8($sp)
.end __glim_SelectBuffer

# Function: __glim_InitNames
# Declared: Line 43 (Source lines: 44-51)
# Address: 0x0da04820 - 0x0da0488c (Size: 108 bytes, Frame: 16)
.globl __glim_InitNames
.ent __glim_InitNames
__glim_InitNames:
    # Line 45
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 44
    lui	$at,0x5
    # Line 45
    lw	$a1,4112($zero)
    # Line 44
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14996
    sd	$gp,0($sp)
    # Line 45
    beq	$v0,$v1,.L0da04874
    # Line 44
    addu	$gp,$t9,$at
    # Line 45
    lw	$v0,3204($a1)
    li	$v1,7170
    beq	$v0,$v1,.L0da0485c
.L0da04850:
    # Line 51
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da0485c:
    # Line 49
    sb	$zero,4888($a1)
    # Line 51
    ld	$gp,0($sp)
    # Line 48
    lw	$a0,4892($a1)
    # Line 51
    addiu	$sp,$sp,16
    jr	$ra
    # Line 48
    sw	$a0,4896($a1)
.L0da04874:
    # Line 45
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da04850
    ld	$ra,8($sp)
.end __glim_InitNames

# Function: __glim_LoadName
# Declared: Line 53 (Source lines: 54-65)
# Address: 0x0da04890 - 0x0da04920 (Size: 144 bytes, Frame: 16)
.globl __glim_LoadName
.ent __glim_LoadName
__glim_LoadName:
    # Line 55
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 54
    lui	$at,0x5
    # Line 55
    lw	$a2,4112($zero)
    # Line 54
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15108
    sd	$gp,0($sp)
    # Line 55
    beq	$v0,$v1,.L0da04908
    # Line 54
    addu	$gp,$t9,$at
    # Line 55
    lw	$v0,3204($a2)
    li	$v1,7170
    bne	$v0,$v1,.L0da048e8
    nop
    lw	$a3,4896($a2)
    lw	$a1,4892($a2)
    beq	$a1,$a3,.L0da048f4
    # Line 59
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 62
    sw	$a0,-4($a3)
    # Line 63
    sb	$zero,4888($a2)
    # Line 65
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da048e8:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da048f4:
    sd	$ra,8($sp)
    # Line 59
    jal	__glSetError
    li	$a0,1282
    b	.L0da048e8
    ld	$ra,8($sp)
.L0da04908:
    # Line 55
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da048e8
    ld	$ra,8($sp)
.end __glim_LoadName

# Function: __glim_PopName
# Declared: Line 67 (Source lines: 68-79)
# Address: 0x0da04920 - 0x0da049b4 (Size: 148 bytes, Frame: 16)
.globl __glim_PopName
.ent __glim_PopName
__glim_PopName:
    # Line 69
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 68
    lui	$at,0x5
    # Line 69
    lw	$a1,4112($zero)
    # Line 68
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15252
    sd	$gp,0($sp)
    # Line 69
    beq	$v0,$v1,.L0da0499c
    # Line 68
    addu	$gp,$t9,$at
    # Line 69
    lw	$v0,3204($a1)
    li	$v1,7170
    bne	$v0,$v1,.L0da0497c
    nop
    lw	$a2,4896($a1)
    lw	$a0,4892($a1)
    beq	$a0,$a2,.L0da04988
    # Line 73
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 77
    sb	$zero,4888($a1)
    # Line 76
    addiu	$a2,$a2,-4
    sw	$a2,4896($a1)
    # Line 79
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da0497c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da04988:
    sd	$ra,8($sp)
    # Line 73
    jal	__glSetError
    li	$a0,1284
    b	.L0da0497c
    ld	$ra,8($sp)
.L0da0499c:
    # Line 69
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da0497c
    ld	$ra,8($sp)
.end __glim_PopName

# Function: __glim_PushName
# Declared: Line 81 (Source lines: 82-94)
# Address: 0x0da049c0 - 0x0da04a6c (Size: 172 bytes, Frame: 16)
.globl __glim_PushName
.ent __glim_PushName
__glim_PushName:
    # Line 83
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 82
    lui	$at,0x5
    # Line 83
    lw	$a2,4112($zero)
    # Line 82
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15412
    sd	$gp,0($sp)
    # Line 83
    beq	$v0,$v1,.L0da04a54
    # Line 82
    addu	$gp,$t9,$at
    # Line 83
    lw	$v0,3204($a2)
    li	$v1,7170
    bne	$v0,$v1,.L0da04a34
    nop
    lw	$a4,3784($a2)
    lw	$a1,4892($a2)
    lw	$a3,4896($a2)
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    sltu	$a1,$a3,$a1
    beqz	$a1,.L0da04a40
    # Line 87
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 90
    sw	$a0,0($a3)
    # Line 92
    sb	$zero,4888($a2)
    # Line 91
    lw	$a5,4896($a2)
    # Line 94
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 91
    addiu	$a5,$a5,4
    # Line 94
    jr	$ra
    # Line 91
    sw	$a5,4896($a2)
.L0da04a34:
    # Line 94
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da04a40:
    sd	$ra,8($sp)
    # Line 87
    jal	__glSetError
    li	$a0,1283
    b	.L0da04a34
    ld	$ra,8($sp)
.L0da04a54:
    # Line 83
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da04a34
    ld	$ra,8($sp)
.end __glim_PushName

# Function: __glSelectHit
# Declared: Line 103 (Source lines: 106-164)
# Address: 0x0da04a70 - 0x0da04bb0 (Size: 320 bytes, Frame: 0)
.globl __glSelectHit
.ent __glSelectHit
__glSelectHit:
    # Line 107
    lbu	$a5,4900($a0)
    lw	$a4,4912($a0)
    lw	$a3,4904($a0)
    # Line 111
    li	$a6,32
    # Line 107
    sll	$a4,$a4,0x2
    # Line 106
    lw	$a2,4908($a0)
    # Line 107
    bnez	$a5,.L0da04b08
    addu	$a3,$a3,$a4
    # Line 111
    lw	$a5,31240($a0)
    beq	$a5,$a6,.L0da04b10
    nop
    # Line 121
    lw	$a5,31304($a0)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f1
    lwc1	$f0,3564($a0)
    cvt.s.l	$f1,$f1
    mul.s	$f0,$f0,$f13
    div.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$a4,$f0
    sll	$a4,$a4,0x0
.L0da04ac8:
    lbu	$a6,4888($a0)
    beqz	$a6,.L0da04b20
    # Line 125
    li	$a6,1
    # Line 153
    lw	$a2,4920($a0)
    lw	$a7,0($a2)
    sltu	$a7,$a4,$a7
    beqz	$a7,.L0da04af0
    nop
    # Line 158
    sw	$a4,0($a2)
    lw	$a2,4920($a0)
.L0da04af0:
    lw	$t0,4($a2)
    sltu	$t0,$t0,$a4
    beqz	$t0,.L0da04b08
    nop
    # Line 164
    jr	$ra
    # Line 161
    sw	$a4,4($a2)
.L0da04b08:
    # Line 164
    jr	$ra
    nop
.L0da04b10:
    # Line 119
    trunc.l.s	$f2,$f13
    dmfc1	$a4,$f2
    b	.L0da04ac8
    sll	$a4,$a4,0x0
.L0da04b20:
    # Line 125
    beq	$a2,$a3,.L0da04ba4
    sb	$a6,4888($a0)
    # Line 138
    addiu	$a5,$a2,4
    # Line 134
    lw	$t1,4892($a0)
    lw	$t0,4896($a0)
    subu	$t0,$t0,$t1
    sra	$t0,$t0,0x2
    sw	$t0,0($a2)
    # Line 135
    lw	$a7,4916($a0)
    addiu	$a7,$a7,1
    # Line 138
    beq	$a5,$a3,.L0da04ba4
    # Line 135
    sw	$a7,4916($a0)
    # Line 143
    addiu	$t2,$a2,8
    # Line 139
    sw	$a5,4920($a0)
    # Line 143
    beq	$a3,$t2,.L0da04ba4
    # Line 140
    sw	$a4,4($a2)
    # Line 144
    sw	$a4,8($a2)
    # Line 147
    lw	$t3,4896($a0)
    lw	$a5,4892($a0)
    sltu	$t3,$a5,$t3
    beqz	$t3,.L0da04b9c
    # Line 144
    addiu	$a2,$a2,12
.L0da04b78:
    # Line 148
    beq	$a2,$a3,.L0da04ba4
    nop
    # Line 151
    lw	$t9,0($a5)
    sw	$t9,0($a2)
    # Line 147
    lw	$t8,4896($a0)
    addiu	$a5,$a5,4
    sltu	$t8,$a5,$t8
    bnez	$t8,.L0da04b78
    # Line 151
    addiu	$a2,$a2,4
.L0da04b9c:
    # Line 164
    jr	$ra
    # Line 153
    sw	$a2,4908($a0)
.L0da04ba4:
    # Line 131
    sw	$a3,4908($a0)
    # Line 164
    jr	$ra
    # Line 130
    sb	$a6,4900($a0)
.end __glSelectHit

# Function: __glSelectTriangle
# Declared: Line 166 (Source lines: 168-197)
# Address: 0x0da04bb0 - 0x0da04cd8 (Size: 296 bytes, Frame: 48)
.globl __glSelectTriangle
.ent __glSelectTriangle
__glSelectTriangle:
    # Line 168
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 187
    li	$a5,1029
    # Line 168
    lw	$at,1792($a0)
    move	$s1,$a3
    sd	$s2,0($sp)
    move	$s2,$a2
    sd	$s0,8($sp)
    lui	$v0,0x5
    andi	$at,$at,0x1000
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v0,$v0,-15908
    sd	$gp,24($sp)
    beqz	$at,.L0da04c6c
    addu	$gp,$t9,$v0
    lwc1	$f10,128($a3)
    lwc1	$f4,128($a1)
    lwc1	$f9,132($a3)
    lwc1	$f7,132($a1)
    lwc1	$f8,132($a2)
    lw	$v1,496($a0)
    lwc1	$f6,128($a2)
    sub.s	$f7,$f7,$f9
    lbu	$v0,4848($a0)
    sub.s	$f8,$f8,$f9
    xori	$v1,$v1,0x901
    sub.s	$f4,$f4,$f10
    sltiu	$v1,$v1,1
    sub.s	$f6,$f6,$f10
    xor	$v0,$v0,$v1
    mtc1	$zero,$f5
    # Line 183
    li	$a2,1
    # Line 168
    mul.s	$f4,$f4,$f8
    # Line 187
    lw	$a0,492($s0)
    li	$a3,1032
    # Line 168
    beqz	$v0,.L0da04cb8
    nmsub.s	$f4,$f4,$f6,$f7
    # Line 183
    c.le.s	$f5,$f4
    movf	$a2,$zero,$fcc0
.L0da04c50:
    # Line 187
    beq	$a0,$a3,.L0da04c9c
    li	$a4,1028
    beq	$a0,$a4,.L0da04cc8
    nop
.L0da04c60:
    bne	$a0,$a5,.L0da04c70
    # Line 194
    nop	# was lw $t9, -24820($gp) # &__glSelectHit
    # Line 187
    beqz	$a2,.L0da04c9c
.L0da04c6c:
    # Line 194
    nop	# was lw $t9, -24820($gp) # &__glSelectHit
.L0da04c70:
    move	$a0,$s0
    bal __glSelectHit
    lwc1	$f13,136($a1)
    # Line 195
    # lw $t9, -24820($gp) # &__glSelectHit
    move	$a0,$s0
    bal __glSelectHit
    lwc1	$f13,136($s2)
    # Line 196
    # lw $t9, -24820($gp) # &__glSelectHit
    move	$a0,$s0
    bal __glSelectHit
    lwc1	$f13,136($s1)
.L0da04c9c:
    ld	$s2,0($sp)
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 197
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da04cb8:
    # Line 185
    c.lt.s $f4,$f5
    li	$a2,1
    b	.L0da04c50
    movf	$a2,$zero,$fcc1
.L0da04cc8:
    # Line 187
    bnez	$a2,.L0da04c9c
    nop
    b	.L0da04c60
    nop
.end __glSelectTriangle

# Function: __glSelectLine
# Declared: Line 199 (Source lines: 200-203)
# Address: 0x0da04ce0 - 0x0da04d3c (Size: 92 bytes, Frame: 32)
.globl __glSelectLine
.ent __glSelectLine
__glSelectLine:
    # Line 200
    lui	$at,0x5
    # Line 201
    lwc1	$f13,136($a1)
    # Line 200
    addiu	$sp,$sp,-32
    addiu	$at,$at,-16212
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 201
    # lw $t9, -24820($gp) # &__glSelectHit
    # Line 200
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    # Line 201
    nop
    # Line 200
    sd	$ra,0($sp)
    # Line 201
    bal __glSelectHit
    # Line 200
    move	$s8,$a0
    # Line 202
    # lw $t9, -24820($gp) # &__glSelectHit
    ld	$v0,24($sp)
    move	$a0,$s8
    bal __glSelectHit
    lwc1	$f13,136($v0)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 203
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSelectLine

# Function: __glSelectPoint
# Declared: Line 205 (Source lines: 206-208)
# Address: 0x0da04d40 - 0x0da04d74 (Size: 52 bytes, Frame: 16)
.globl __glSelectPoint
.ent __glSelectPoint
__glSelectPoint:
    # Line 206
    lui	$at,0x5
    addiu	$sp,$sp,-16
    addiu	$at,$at,-16308
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 207
    # lw $t9, -24820($gp) # &__glSelectHit
    # Line 206
    sd	$ra,0($sp)
    # Line 207
    bal __glSelectHit
    lwc1	$f13,136($a1)
    ld	$ra,0($sp)
    # Line 208
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSelectPoint

