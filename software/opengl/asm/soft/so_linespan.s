# Source: ../soft/so_linespan.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linespan.c
# Total Functions: 20

.text

# Function: __glProcessLine
# Declared: Line 28 (Source lines: 29-64)
# Address: 0x0d9e78a0 - 0x0d9e7a30 (Size: 400 bytes, Frame: 0)
.globl __glProcessLine
.ent __glProcessLine
__glProcessLine:
    # Line 29
    lui	$at,0x1
    # Line 44
    sb	$zero,30476($a0)
    # Line 29
    ori	$at,$at,0x150
    # Line 42
    lw	$v0,12368($a0)
    # Line 29
    subu	$sp,$sp,$at
    sd	$ra,32($sp)
    sd	$s0,40($sp)
    sd	$s2,56($sp)
    sd	$s3,48($sp)
    # Line 37
    lui	$a1,0xffff
    # Line 38
    lui	$a2,0xffff
    sd	$gp,8($sp)
    # Line 36
    lui	$v1,0xffff
    # Line 29
    move	$a3,$s8
    sd	$s1,24($sp)
    sd	$a3,16($sp)
    addu	$s8,$sp,$at
    lui	$at,0x7
    move	$s1,$a0
    # Line 39
    lw	$a3,11760($a0)
    # Line 29
    addiu	$at,$at,-27412
    # Line 39
    sw	$a3,30480($a0)
    # Line 36
    addu	$v1,$v1,$s8
    # Line 38
    addu	$a2,$a2,$s8
    # Line 37
    addu	$a1,$a1,$s8
    # Line 38
    addiu	$a2,$a2,-272
    sw	$a2,30472($a0)
    # Line 37
    addiu	$a1,$a1,-16
    sw	$a1,30468($a0)
    # Line 36
    addiu	$v1,$v1,32752
    sw	$v1,30464($a0)
    # Line 44
    blez	$v0,.L0d9e79f4
    # Line 29
    addu	$gp,$t9,$at
    # Line 44
    move	$s2,$zero
    move	$s0,$a0
    sll	$s3,$v0,0x2
    b	.L0d9e795c
    addu	$s3,$s3,$a0
    nop
    nop
.L0d9e7940:
    # Line 49
    lw	$t9,12304($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d9e79c8
.L0d9e7950:
    # Line 47
    addiu	$s0,$s0,4
.L0d9e7954:
    beq	$s0,$s3,.L0d9e798c
    nop
.L0d9e795c:
    # Line 44
    bnez	$s2,.L0d9e7940
    nop
    # Line 54
    lw	$t9,12240($s0)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0d9e7950
    nop
    lbu	$t8,30476($s1)
    bnez	$t8,.L0d9e7a28
    # Line 56
    li	$s2,1
    b	.L0d9e7954
    # Line 47
    addiu	$s0,$s0,4
.L0d9e798c:
    beqz	$s2,.L0d9e79f4
    nop
    # Line 62
    lw	$t9,12388($s1)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s0,40($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 64
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$t9,16($sp)
    ld	$s1,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t9
.L0d9e79c8:
    # Line 51
    li	$v0,1
.L0d9e79cc:
    ld	$s0,40($sp)
    ld	$s3,48($sp)
    ld	$s2,56($sp)
    # Line 64
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$at,16($sp)
    ld	$s1,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d9e79f4:
    lw	$t9,12384($s1)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s0,40($sp)
    jalr	$t9
    move	$a0,$s1
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$v1,16($sp)
    ld	$s1,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0d9e7a28:
    # Line 55
    b	.L0d9e79cc
    li	$v0,1
.end __glProcessLine

# Function: __glProcessLine3NW
# Declared: Line 77 (Source lines: 78-106)
# Address: 0x0d9e7a30 - 0x0d9e7b90 (Size: 352 bytes, Frame: 0)
.globl __glProcessLine3NW
.ent __glProcessLine3NW
__glProcessLine3NW:
    # Line 88
    sb	$zero,30476($a0)
    # Line 78
    lui	$at,0x1
    # Line 86
    lw	$v0,11760($a0)
    # Line 78
    ori	$at,$at,0x140
    # Line 86
    sw	$v0,30480($a0)
    # Line 78
    subu	$sp,$sp,$at
    # Line 85
    lui	$v1,0xffff
    # Line 78
    move	$a3,$s8
    sd	$a3,32($sp)
    # Line 84
    lui	$a1,0xffff
    # Line 83
    lui	$a2,0xffff
    # Line 78
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    addu	$s8,$sp,$at
    lui	$at,0x7
    move	$s0,$a0
    sd	$gp,24($sp)
    addiu	$at,$at,-27812
    # Line 83
    addu	$a2,$a2,$s8
    # Line 78
    addu	$gp,$t9,$at
    # Line 91
    lw	$t9,12240($a0)
    # Line 84
    addu	$a1,$a1,$s8
    # Line 83
    addiu	$a2,$a2,32752
    sw	$a2,30464($a0)
    # Line 85
    addu	$v1,$v1,$s8
    # Line 84
    addiu	$a1,$a1,-16
    sw	$a1,30468($a0)
    # Line 91
    nop
    # Line 85
    addiu	$v1,$v1,-272
    # Line 91
    jalr	$t9
    # Line 85
    sw	$v1,30472($a0)
    # Line 91
    beqz	$v0,.L0d9e7b14
    nop
    lbu	$a4,30476($s0)
    beqz	$a4,.L0d9e7ae0
    # Line 92
    li	$a0,1
    ld	$s0,8($sp)
.L0d9e7ac4:
    ld	$ra,16($sp)
    # Line 99
    ld	$a5,32($sp)
    move	$v0,$a0
    ld	$gp,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L0d9e7ae0:
    # Line 102
    lw	$t9,12308($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0d9e7b50
    nop
    # Line 99
    ld	$gp,24($sp)
    ld	$ra,16($sp)
    ld	$a6,32($sp)
    # Line 103
    li	$v0,1
    # Line 99
    ld	$s0,8($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a6
.L0d9e7b14:
    # Line 95
    lw	$t9,12244($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0d9e7b78
    nop
    lbu	$a7,30476($s0)
    beqz	$a7,.L0d9e7b50
    # Line 96
    li	$v0,1
    # Line 99
    ld	$gp,24($sp)
    ld	$ra,16($sp)
    ld	$t0,32($sp)
    ld	$s0,8($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t0
.L0d9e7b50:
    # Line 106
    lw	$t9,12312($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 99
    ld	$gp,24($sp)
    ld	$ra,16($sp)
    ld	$t1,32($sp)
    ld	$s0,8($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L0d9e7b78:
    lw	$t9,12248($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$s0,8($sp)
    b	.L0d9e7ac4
    move	$a0,$v0
.end __glProcessLine3NW

# Function: __glWideLineRep
# Declared: Line 114 (Source lines: 115-156)
# Address: 0x0d9e7b90 - 0x0d9e7d08 (Size: 376 bytes, Frame: 224)
.globl __glWideLineRep
.ent __glWideLineRep
__glWideLineRep:
    # Line 120
    lw	$a3,12372($a0)
    # Line 125
    lw	$a4,29944($a0)
    # Line 119
    lw	$a2,12368($a0)
    # Line 115
    addiu	$sp,$sp,-96
    lui	$at,0x7
    sd	$s4,24($sp)
    # Line 125
    addiu	$s4,$a4,-1
    # Line 115
    sd	$s1,16($sp)
    move	$s1,$a0
    addiu	$at,$at,-28164
    sd	$gp,8($sp)
    # Line 125
    bltz	$s4,.L0d9e7cf0
    # Line 115
    addu	$gp,$t9,$at
    sd	$s0,64($sp)
    sd	$ra,56($sp)
    sd	$s5,72($sp)
    sd	$s7,80($sp)
    # Line 125
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
    b	.L0d9e7c44
    addu	$s6,$s6,$a0
    nop
    nop
    nop
.L0d9e7c10:
    # Line 127
    beqz	$s2,.L0d9e7cbc
    nop
    # Line 144
    lw	$t9,12396($s1)
    jalr	$t9
    move	$a0,$s1
.L0d9e7c24:
    # Line 148
    lw	$t8,29852($s1)
.L0d9e7c28:
    beqz	$t8,.L0d9e7cac
    # Line 125
    addiu	$s4,$s4,-1
    # Line 152
    lw	$t9,29868($s1)
    addiu	$t9,$t9,1
    sw	$t9,29868($s1)
.L0d9e7c3c:
    # Line 125
    beq	$s4,$s7,.L0d9e7cd8
    ld	$s2,32($sp)
.L0d9e7c44:
    beqz	$s5,.L0d9e7cbc
    move	$s2,$zero
    b	.L0d9e7c7c
    move	$s0,$s6
    nop
    nop
    nop
.L0d9e7c60:
    # Line 129
    lw	$t9,12304($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d9e7c24
.L0d9e7c70:
    # Line 127
    addiu	$s0,$s0,4
.L0d9e7c74:
    beq	$s0,$s3,.L0d9e7c10
    nop
.L0d9e7c7c:
    # Line 125
    bnez	$s2,.L0d9e7c60
    nop
    # Line 134
    lw	$t9,12240($s0)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0d9e7c70
    nop
    lbu	$ra,30476($s1)
    bnez	$ra,.L0d9e7cd0
    # Line 139
    li	$s2,1
    b	.L0d9e7c74
    # Line 127
    addiu	$s0,$s0,4
.L0d9e7cac:
    # Line 150
    lw	$at,29872($s1)
    addiu	$at,$at,1
    b	.L0d9e7c3c
    sw	$at,29872($s1)
.L0d9e7cbc:
    # Line 146
    lw	$t9,12392($s1)
    jalr	$t9
    move	$a0,$s1
    b	.L0d9e7c28
    # Line 148
    lw	$t8,29852($s1)
.L0d9e7cd0:
    # Line 137
    b	.L0d9e7c24
    # Line 136
    sb	$zero,30476($s1)
.L0d9e7cd8:
    ld	$s6,40($sp)
    ld	$s3,48($sp)
    ld	$ra,56($sp)
    ld	$s0,64($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
.L0d9e7cf0:
    # Line 156
    ld	$gp,8($sp)
    move	$v0,$zero
    ld	$s1,16($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glWideLineRep

# Function: __glWideStippleLineRep
# Declared: Line 164 (Source lines: 165-215)
# Address: 0x0d9e7d10 - 0x0d9e7ef0 (Size: 480 bytes, Frame: 224)
.globl __glWideStippleLineRep
.ent __glWideStippleLineRep
__glWideStippleLineRep:
    # Line 184
    lw	$a2,30472($a0)
    # Line 176
    lw	$a5,476($a0)
    # Line 173
    lw	$a7,12372($a0)
    # Line 172
    lw	$a6,12368($a0)
    # Line 165
    addiu	$sp,$sp,-352
    sd	$s0,288($sp)
    sd	$s2,304($sp)
    sd	$s4,296($sp)
    sd	$s5,264($sp)
    sd	$s3,328($sp)
    # Line 174
    lw	$s3,30248($a0)
    # Line 165
    sd	$s6,336($sp)
    sd	$s7,280($sp)
    # Line 184
    addiu	$s3,$s3,31
    # Line 165
    sd	$ra,312($sp)
    lui	$at,0x7
    # Line 184
    sra	$s3,$s3,0x5
    # Line 165
    sd	$s1,272($sp)
    move	$s1,$a0
    addiu	$at,$at,-28548
    sd	$gp,320($sp)
    # Line 184
    blez	$s3,.L0d9e7dc0
    # Line 165
    addu	$gp,$t9,$at
    andi	$t8,$s3,0x1
    # Line 184
    move	$a4,$zero
    beqz	$t8,.L0d9e7d90
    addiu	$a3,$sp,0
    # Line 187
    addiu	$a3,$sp,4
    lw	$t9,0($a2)
    # Line 186
    li	$a4,1
    # Line 187
    addiu	$a2,$a2,4
    sw	$t9,0($sp)
.L0d9e7d90:
    sra	$ra,$s3,0x1
    beqz	$ra,.L0d9e7dc0
    nop
    nop
.L0d9e7da0:
    lw	$v0,0($a2)
    # Line 186
    addiu	$a4,$a4,2
    # Line 187
    sw	$v0,0($a3)
    addiu	$a3,$a3,8
    lw	$at,4($a2)
    addiu	$a2,$a2,8
    # Line 186
    bne	$s3,$a4,.L0d9e7da0
    # Line 187
    sw	$at,-4($a3)
.L0d9e7dc0:
    # Line 191
    addiu	$s4,$a5,-1
    bltz	$s4,.L0d9e7ebc
    li	$s7,-1
    subu	$s5,$a7,$a6
    sd	$s5,256($sp)
    slt	$s5,$a6,$a7
    sll	$s2,$a7,0x2
    sll	$s6,$a6,0x2
    addu	$s2,$s2,$s1
    b	.L0d9e7e08
    addu	$s6,$s6,$s1
    nop
.L0d9e7df0:
    # Line 210
    lw	$t8,29868($s1)
    addiu	$t8,$t8,1
    sw	$t8,29868($s1)
.L0d9e7dfc:
    # Line 191
    addiu	$s4,$s4,-1
    beq	$s4,$s7,.L0d9e7ebc
    nop
.L0d9e7e08:
    beqz	$s5,.L0d9e7e38
    move	$s0,$s6
    nop
    nop
    nop
    # Line 193
    lw	$t9,12304($s0)
.L0d9e7e20:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d9e7e44
    # Line 192
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d9e7e20
    # Line 193
    lw	$t9,12304($s0)
.L0d9e7e38:
    # Line 198
    lw	$t9,12396($s1)
    jalr	$t9
    move	$a0,$s1
.L0d9e7e44:
    # Line 199
    beqz	$s4,.L0d9e7dfc
    andi	$t9,$s3,0x1
    # Line 201
    blez	$s3,.L0d9e7ea0
    lw	$a3,30472($s1)
    addiu	$a2,$sp,0
    sra	$at,$s3,0x1
    beqz	$t9,.L0d9e7e78
    move	$a4,$zero
    # Line 204
    addiu	$a3,$a3,4
    lw	$ra,0($sp)
    # Line 203
    li	$a4,1
    # Line 204
    addiu	$a2,$sp,4
    sw	$ra,-4($a3)
.L0d9e7e78:
    beqz	$at,.L0d9e7ea0
    nop
.L0d9e7e80:
    lw	$v1,0($a2)
    # Line 203
    addiu	$a4,$a4,2
    # Line 204
    sw	$v1,0($a3)
    addiu	$a3,$a3,8
    lw	$v0,4($a2)
    addiu	$a2,$a2,8
    # Line 203
    bne	$s3,$a4,.L0d9e7e80
    # Line 204
    sw	$v0,-4($a3)
.L0d9e7ea0:
    # Line 203
    lw	$a0,29852($s1)
    bnez	$a0,.L0d9e7df0
    nop
    # Line 208
    lw	$a1,29872($s1)
    addiu	$a1,$a1,1
    b	.L0d9e7dfc
    sw	$a1,29872($s1)
.L0d9e7ebc:
    # Line 215
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
.end __glWideStippleLineRep

# Function: __glDrawBothLine
# Declared: Line 226 (Source lines: 227-297)
# Address: 0x0d9e7ef0 - 0x0d9e8368 (Size: 1144 bytes, Frame: 0)
.globl __glDrawBothLine
.ent __glDrawBothLine
__glDrawBothLine:
    # Line 241
    lw	$a4,30464($a0)
    # Line 235
    lw	$a6,12376($a0)
    # Line 227
    li	$at,0x8090
    # Line 234
    lw	$a5,12372($a0)
    # Line 227
    subu	$sp,$sp,$at
    sd	$s4,80($sp)
    move	$v0,$s8
    sd	$v0,96($sp)
    # Line 241
    lbu	$v0,3220($a0)
    # Line 227
    sd	$s1,104($sp)
    addu	$s8,$sp,$at
    lui	$at,0x7
    move	$s1,$a0
    # Line 233
    lw	$s4,30248($a0)
    # Line 227
    addiu	$at,$at,-29028
    sd	$gp,88($sp)
    # Line 241
    beqz	$v0,.L0d9e8258
    # Line 227
    addu	$gp,$t9,$at
    # Line 241
    blez	$s4,.L0d9e8030
    andi	$a0,$s4,0x3
    lui	$a2,0xffff
    move	$a3,$zero
    addu	$a2,$a2,$s8
    beqz	$a0,.L0d9e7f88
    addiu	$a2,$a2,32752
.L0d9e7f54:
    # Line 245
    lwc1	$f3,0($a4)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a4)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a4)
    swc1	$f1,8($a2)
    addiu	$a0,$a0,-1
    lwc1	$f0,12($a4)
    # Line 244
    addiu	$a3,$a3,1
    # Line 245
    addiu	$a2,$a2,16
    addiu	$a4,$a4,16
    bnez	$a0,.L0d9e7f54
    swc1	$f0,-4($a2)
.L0d9e7f88:
    sra	$a7,$s4,0x2
    beqz	$a7,.L0d9e8030
    move	$a0,$a4
    nop
    nop
    nop
.L0d9e7fa0:
    lwc1	$f19,0($a0)
    swc1	$f19,0($a2)
    lwc1	$f18,4($a0)
    swc1	$f18,4($a2)
    lwc1	$f17,8($a0)
    swc1	$f17,8($a2)
    lwc1	$f16,12($a0)
    swc1	$f16,12($a2)
    lwc1	$f15,16($a0)
    swc1	$f15,16($a2)
    lwc1	$f14,20($a0)
    swc1	$f14,20($a2)
    lwc1	$f13,24($a0)
    swc1	$f13,24($a2)
    lwc1	$f12,28($a0)
    swc1	$f12,28($a2)
    lwc1	$f11,32($a0)
    swc1	$f11,32($a2)
    lwc1	$f10,36($a0)
    swc1	$f10,36($a2)
    lwc1	$f9,40($a0)
    swc1	$f9,40($a2)
    lwc1	$f8,44($a0)
    swc1	$f8,44($a2)
    lwc1	$f7,48($a0)
    swc1	$f7,48($a2)
    lwc1	$f6,52($a0)
    swc1	$f6,52($a2)
    lwc1	$f5,56($a0)
    swc1	$f5,56($a2)
    # Line 244
    addiu	$a3,$a3,4
    # Line 245
    lwc1	$f4,60($a0)
    addiu	$a2,$a2,64
    addiu	$a0,$a0,64
    # Line 244
    bne	$s4,$a3,.L0d9e7fa0
    # Line 245
    swc1	$f4,-4($a2)
.L0d9e8030:
    sd	$s6,56($sp)
    sd	$s3,48($sp)
    sd	$s7,40($sp)
    sd	$s5,32($sp)
    sd	$s0,24($sp)
.L0d9e8044:
    # Line 248
    subu	$s6,$a6,$a5
    sd	$s6,64($sp)
    move	$s5,$zero
    slt	$s6,$a5,$a6
    sd	$ra,16($sp)
    addiu	$s7,$s1,30664
    sd	$s7,72($sp)
    sll	$t0,$a5,0x2
    addiu	$s7,$s1,30884
    sd	$s2,8($sp)
    sll	$s3,$a6,0x2
    addu	$s3,$s3,$s1
    addu	$t0,$t0,$s1
    sd	$t0,112($sp)
    # Line 260
    move	$s2,$zero
.L0d9e8080:
    # Line 248
    beqz	$s5,.L0d9e8140
    # Line 260
    ld	$s0,112($sp)
    sw	$s7,30480($s1)
.L0d9e808c:
    bnez	$s6,.L0d9e80bc
    nop
    b	.L0d9e80f0
    nop
    nop
.L0d9e80a0:
    # Line 265
    lw	$t9,12304($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d9e80f0
.L0d9e80b0:
    # Line 263
    addiu	$s0,$s0,4
.L0d9e80b4:
    beq	$s0,$s3,.L0d9e80f0
    nop
.L0d9e80bc:
    # Line 260
    bnez	$s2,.L0d9e80a0
    nop
    # Line 270
    lw	$t9,12240($s0)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0d9e80b0
    nop
    lbu	$t8,30476($s1)
    bnez	$t8,.L0d9e80ec
    # Line 275
    li	$s2,1
    b	.L0d9e80b4
    # Line 263
    addiu	$s0,$s0,4
.L0d9e80ec:
    # Line 272
    sb	$zero,30476($s1)
.L0d9e80f0:
    # Line 280
    beqz	$s5,.L0d9e814c
.L0d9e80f4:
    # Line 256
    li	$t9,2
.L0d9e80f8:
    addiu	$s5,$s5,1
    bne	$s5,$t9,.L0d9e8080
    # Line 260
    move	$s2,$zero
    # Line 297
    ld	$gp,88($sp)
    ld	$s0,24($sp)
    ld	$s1,104($sp)
    ld	$s2,8($sp)
    ld	$s3,48($sp)
    ld	$s4,80($sp)
    ld	$s5,32($sp)
    ld	$s6,56($sp)
    ld	$ra,16($sp)
    ld	$at,96($sp)
    move	$v0,$zero
    ld	$s7,40($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d9e8140:
    # Line 258
    ld	$v0,72($sp)
    b	.L0d9e808c
    sw	$v0,30480($s1)
.L0d9e814c:
    # Line 281
    move	$a3,$zero
    lbu	$v1,3220($s1)
    andi	$a0,$s4,0x3
    lui	$a4,0xffff
    sra	$a5,$s4,0x2
    addu	$a4,$a4,$s8
    lw	$a2,30464($s1)
    beqz	$v1,.L0d9e82e8
    addiu	$a4,$a4,32752
    blez	$s4,.L0d9e80f8
    # Line 256
    li	$t9,2
    beqz	$a0,.L0d9e81b4
    nop
.L0d9e8180:
    # Line 285
    lwc1	$f27,0($a4)
    swc1	$f27,0($a2)
    lwc1	$f25,4($a4)
    swc1	$f25,4($a2)
    lwc1	$f23,8($a4)
    swc1	$f23,8($a2)
    addiu	$a0,$a0,-1
    lwc1	$f21,12($a4)
    # Line 284
    addiu	$a3,$a3,1
    # Line 285
    addiu	$a2,$a2,16
    addiu	$a4,$a4,16
    bnez	$a0,.L0d9e8180
    swc1	$f21,-4($a2)
.L0d9e81b4:
    beqz	$a5,.L0d9e8250
    move	$a0,$a4
    nop
.L0d9e81c0:
    lwc1	$f13,0($a0)
    swc1	$f13,0($a2)
    lwc1	$f12,4($a0)
    swc1	$f12,4($a2)
    lwc1	$f11,8($a0)
    swc1	$f11,8($a2)
    lwc1	$f10,12($a0)
    swc1	$f10,12($a2)
    lwc1	$f9,16($a0)
    swc1	$f9,16($a2)
    lwc1	$f8,20($a0)
    swc1	$f8,20($a2)
    lwc1	$f7,24($a0)
    swc1	$f7,24($a2)
    lwc1	$f6,28($a0)
    swc1	$f6,28($a2)
    lwc1	$f5,32($a0)
    swc1	$f5,32($a2)
    lwc1	$f4,36($a0)
    swc1	$f4,36($a2)
    lwc1	$f3,40($a0)
    swc1	$f3,40($a2)
    lwc1	$f2,44($a0)
    swc1	$f2,44($a2)
    lwc1	$f1,48($a0)
    swc1	$f1,48($a2)
    lwc1	$f0,52($a0)
    swc1	$f0,52($a2)
    lwc1	$f31,56($a0)
    swc1	$f31,56($a2)
    # Line 284
    addiu	$a3,$a3,4
    # Line 285
    lwc1	$f29,60($a0)
    addiu	$a2,$a2,64
    addiu	$a0,$a0,64
    # Line 284
    bne	$s4,$a3,.L0d9e81c0
    # Line 285
    swc1	$f29,-4($a2)
.L0d9e8250:
    b	.L0d9e80f8
    # Line 256
    li	$t9,2
.L0d9e8258:
    sd	$s6,56($sp)
    sd	$s3,48($sp)
    sd	$s7,40($sp)
    # Line 244
    blez	$s4,.L0d9e82e0
    sd	$s5,32($sp)
    andi	$a0,$s4,0x3
    lui	$a2,0xffff
    move	$a3,$zero
    addu	$a2,$a2,$s8
    beqz	$a0,.L0d9e82a0
    addiu	$a2,$a2,32752
.L0d9e8284:
    addiu	$a0,$a0,-1
    # Line 249
    lwc1	$f14,0($a4)
    # Line 248
    addiu	$a3,$a3,1
    # Line 251
    addiu	$a2,$a2,16
    # Line 250
    addiu	$a4,$a4,16
    bnez	$a0,.L0d9e8284
    # Line 249
    swc1	$f14,-16($a2)
.L0d9e82a0:
    sra	$a7,$s4,0x2
    beqz	$a7,.L0d9e82e0
    move	$a0,$a4
    nop
.L0d9e82b0:
    lwc1	$f18,0($a0)
    swc1	$f18,0($a2)
    lwc1	$f17,16($a0)
    swc1	$f17,16($a2)
    lwc1	$f16,32($a0)
    swc1	$f16,32($a2)
    # Line 248
    addiu	$a3,$a3,4
    # Line 249
    lwc1	$f15,48($a0)
    # Line 251
    addiu	$a2,$a2,64
    # Line 250
    addiu	$a0,$a0,64
    # Line 248
    bne	$s4,$a3,.L0d9e82b0
    # Line 249
    swc1	$f15,-16($a2)
.L0d9e82e0:
    b	.L0d9e8044
    sd	$s0,24($sp)
.L0d9e82e8:
    # Line 284
    blez	$s4,.L0d9e80f4
    andi	$a0,$s4,0x3
    lui	$a4,0xffff
    move	$a3,$zero
    addu	$a4,$a4,$s8
    beqz	$a0,.L0d9e8320
    addiu	$a4,$a4,32752
.L0d9e8304:
    addiu	$a0,$a0,-1
    # Line 289
    lwc1	$f19,0($a4)
    # Line 288
    addiu	$a3,$a3,1
    # Line 291
    addiu	$a2,$a2,16
    # Line 290
    addiu	$a4,$a4,16
    bnez	$a0,.L0d9e8304
    # Line 289
    swc1	$f19,-16($a2)
.L0d9e8320:
    sra	$a5,$s4,0x2
    beqz	$a5,.L0d9e8360
    nop
    nop
.L0d9e8330:
    lwc1	$f27,0($a4)
    swc1	$f27,0($a2)
    lwc1	$f25,16($a4)
    swc1	$f25,16($a2)
    lwc1	$f23,32($a4)
    swc1	$f23,32($a2)
    # Line 288
    addiu	$a3,$a3,4
    # Line 289
    lwc1	$f21,48($a4)
    # Line 291
    addiu	$a2,$a2,64
    # Line 290
    addiu	$a4,$a4,64
    # Line 288
    bne	$s4,$a3,.L0d9e8330
    # Line 289
    swc1	$f21,-16($a2)
.L0d9e8360:
    b	.L0d9e80f8
    # Line 256
    li	$t9,2
.end __glDrawBothLine

# Function: __glDrawBothStippledLine
# Declared: Line 305 (Source lines: 306-385)
# Address: 0x0d9e8370 - 0x0d9e8878 (Size: 1288 bytes, Frame: 0)
.globl __glDrawBothStippledLine
.ent __glDrawBothStippledLine
__glDrawBothStippledLine:
    # Line 323
    lw	$a3,30464($a0)
    # Line 314
    lw	$a6,12372($a0)
    # Line 306
    li	$at,0x8190
    # Line 313
    lw	$a5,12376($a0)
    # Line 306
    subu	$sp,$sp,$at
    sd	$s0,56($sp)
    sd	$s1,112($sp)
    sd	$s3,96($sp)
    sd	$s5,104($sp)
    sd	$s6,80($sp)
    sd	$s7,88($sp)
    sd	$ra,48($sp)
    sd	$s4,40($sp)
    move	$v0,$s8
    sd	$v0,72($sp)
    # Line 323
    lbu	$v0,3220($a0)
    # Line 316
    lw	$s4,30248($a0)
    # Line 306
    addu	$s8,$sp,$at
    lui	$at,0x7
    sd	$s2,32($sp)
    move	$s2,$a0
    addiu	$at,$at,-30180
    sd	$gp,64($sp)
    # Line 323
    beqz	$v0,.L0d9e8774
    # Line 306
    addu	$gp,$t9,$at
    # Line 323
    blez	$s4,.L0d9e84c0
    andi	$a4,$s4,0x3
    lui	$a0,0xffff
    move	$a2,$zero
    addu	$a0,$a0,$s8
    beqz	$a4,.L0d9e8424
    addiu	$a0,$a0,32752
.L0d9e83f0:
    # Line 327
    lwc1	$f3,0($a3)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a3)
    swc1	$f1,8($a0)
    addiu	$a4,$a4,-1
    lwc1	$f0,12($a3)
    # Line 326
    addiu	$a2,$a2,1
    # Line 327
    addiu	$a0,$a0,16
    addiu	$a3,$a3,16
    bnez	$a4,.L0d9e83f0
    swc1	$f0,-4($a0)
.L0d9e8424:
    sra	$a1,$s4,0x2
    beqz	$a1,.L0d9e84c0
    nop
.L0d9e8430:
    lwc1	$f19,0($a3)
    swc1	$f19,0($a0)
    lwc1	$f18,4($a3)
    swc1	$f18,4($a0)
    lwc1	$f17,8($a3)
    swc1	$f17,8($a0)
    lwc1	$f16,12($a3)
    swc1	$f16,12($a0)
    lwc1	$f15,16($a3)
    swc1	$f15,16($a0)
    lwc1	$f14,20($a3)
    swc1	$f14,20($a0)
    lwc1	$f13,24($a3)
    swc1	$f13,24($a0)
    lwc1	$f12,28($a3)
    swc1	$f12,28($a0)
    lwc1	$f11,32($a3)
    swc1	$f11,32($a0)
    lwc1	$f10,36($a3)
    swc1	$f10,36($a0)
    lwc1	$f9,40($a3)
    swc1	$f9,40($a0)
    lwc1	$f8,44($a3)
    swc1	$f8,44($a0)
    lwc1	$f7,48($a3)
    swc1	$f7,48($a0)
    lwc1	$f6,52($a3)
    swc1	$f6,52($a0)
    lwc1	$f5,56($a3)
    swc1	$f5,56($a0)
    # Line 326
    addiu	$a2,$a2,4
    # Line 327
    lwc1	$f4,60($a3)
    addiu	$a0,$a0,64
    addiu	$a3,$a3,64
    # Line 326
    bne	$s4,$a2,.L0d9e8430
    # Line 327
    swc1	$f4,-4($a0)
.L0d9e84c0:
    # Line 343
    addiu	$s1,$s4,31
.L0d9e84c4:
    sra	$s1,$s1,0x5
    blez	$s1,.L0d9e8530
    lw	$a3,30472($s2)
    lui	$a0,0xffff
    andi	$t8,$s1,0x1
    addu	$a0,$a0,$s8
    move	$a2,$zero
    addiu	$a0,$a0,32496
    beqz	$t8,.L0d9e8500
    move	$a4,$a0
    # Line 345
    li	$a2,1
    # Line 346
    lw	$a1,0($a3)
    addiu	$a4,$a0,4
    addiu	$a3,$a3,4
    sw	$a1,0($a0)
.L0d9e8500:
    sra	$a7,$s1,0x1
    beqz	$a7,.L0d9e8530
    nop
    nop
.L0d9e8510:
    lw	$t1,0($a3)
    # Line 345
    addiu	$a2,$a2,2
    # Line 346
    sw	$t1,0($a4)
    addiu	$a4,$a4,8
    lw	$t0,4($a3)
    addiu	$a3,$a3,8
    # Line 345
    bne	$s1,$a2,.L0d9e8510
    # Line 346
    sw	$t0,-4($a4)
.L0d9e8530:
    # Line 345
    move	$s5,$zero
    subu	$s6,$a5,$a6
    sd	$s6,8($sp)
    slt	$s6,$a6,$a5
    addiu	$s7,$s2,30664
    sll	$t2,$a6,0x2
    sd	$s7,16($sp)
    addiu	$s7,$s2,30884
    sll	$s3,$a5,0x2
    addu	$s3,$s3,$s2
    addu	$t2,$t2,$s2
    sd	$t2,24($sp)
.L0d9e8560:
    beqz	$s5,.L0d9e8768
    # Line 354
    ld	$s0,24($sp)
    sw	$s7,30480($s2)
.L0d9e856c:
    beqz	$s6,.L0d9e8598
    nop
    nop
    nop
    # Line 357
    lw	$t9,12304($s0)
.L0d9e8580:
    jalr	$t9
    move	$a0,$s2
    bnez	$v0,.L0d9e8598
    # Line 356
    addiu	$s0,$s0,4
    bnel	$s0,$s3,.L0d9e8580
    # Line 357
    lw	$t9,12304($s0)
.L0d9e8598:
    # Line 362
    beqz	$s5,.L0d9e85ec
    andi	$a4,$s4,0x3
.L0d9e85a0:
    # Line 350
    li	$t8,2
.L0d9e85a4:
    addiu	$s5,$s5,1
    bne	$s5,$t8,.L0d9e8560
    nop
    # Line 385
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    ld	$s1,112($sp)
    ld	$s2,32($sp)
    ld	$s3,96($sp)
    ld	$s4,40($sp)
    ld	$s5,104($sp)
    ld	$s6,80($sp)
    ld	$ra,48($sp)
    ld	$t9,72($sp)
    move	$v0,$zero
    ld	$s7,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t9
.L0d9e85ec:
    # Line 363
    lbu	$ra,3220($s2)
    move	$a2,$zero
    lui	$a3,0xffff
    andi	$a5,$s1,0x1
    addu	$a3,$a3,$s8
    lw	$a0,30464($s2)
    beqz	$ra,.L0d9e87f8
    addiu	$a3,$a3,32752
    blez	$s4,.L0d9e86f0
    nop
    beqz	$a4,.L0d9e8650
    nop
.L0d9e861c:
    # Line 367
    lwc1	$f27,0($a3)
    swc1	$f27,0($a0)
    lwc1	$f25,4($a3)
    swc1	$f25,4($a0)
    lwc1	$f23,8($a3)
    swc1	$f23,8($a0)
    addiu	$a4,$a4,-1
    lwc1	$f21,12($a3)
    # Line 366
    addiu	$a2,$a2,1
    # Line 367
    addiu	$a0,$a0,16
    addiu	$a3,$a3,16
    bnez	$a4,.L0d9e861c
    swc1	$f21,-4($a0)
.L0d9e8650:
    sra	$a4,$s4,0x2
    beqz	$a4,.L0d9e86f0
    nop
    nop
.L0d9e8660:
    lwc1	$f13,0($a3)
    swc1	$f13,0($a0)
    lwc1	$f12,4($a3)
    swc1	$f12,4($a0)
    lwc1	$f11,8($a3)
    swc1	$f11,8($a0)
    lwc1	$f10,12($a3)
    swc1	$f10,12($a0)
    lwc1	$f9,16($a3)
    swc1	$f9,16($a0)
    lwc1	$f8,20($a3)
    swc1	$f8,20($a0)
    lwc1	$f7,24($a3)
    swc1	$f7,24($a0)
    lwc1	$f6,28($a3)
    swc1	$f6,28($a0)
    lwc1	$f5,32($a3)
    swc1	$f5,32($a0)
    lwc1	$f4,36($a3)
    swc1	$f4,36($a0)
    lwc1	$f3,40($a3)
    swc1	$f3,40($a0)
    lwc1	$f2,44($a3)
    swc1	$f2,44($a0)
    lwc1	$f1,48($a3)
    swc1	$f1,48($a0)
    lwc1	$f0,52($a3)
    swc1	$f0,52($a0)
    lwc1	$f31,56($a3)
    swc1	$f31,56($a0)
    # Line 366
    addiu	$a2,$a2,4
    # Line 367
    lwc1	$f29,60($a3)
    addiu	$a0,$a0,64
    addiu	$a3,$a3,64
    # Line 366
    bne	$s4,$a2,.L0d9e8660
    # Line 367
    swc1	$f29,-4($a0)
.L0d9e86f0:
    # Line 377
    lui	$a3,0xffff
.L0d9e86f4:
    blez	$s1,.L0d9e85a0
    lw	$a4,30472($s2)
    addu	$a3,$a3,$s8
    move	$a2,$zero
    beqz	$a5,.L0d9e872c
    addiu	$a3,$a3,32496
    # Line 380
    lui	$a3,0xffff
    addu	$a3,$a3,$s8
    addiu	$a3,$a3,32496
    addiu	$a4,$a4,4
    lw	$a5,0($a3)
    # Line 379
    li	$a2,1
    # Line 380
    addiu	$a3,$a3,4
    sw	$a5,-4($a4)
.L0d9e872c:
    sra	$a5,$s1,0x1
    beqz	$a5,.L0d9e8760
    nop
    nop
    nop
.L0d9e8740:
    lw	$a7,0($a3)
    # Line 379
    addiu	$a2,$a2,2
    # Line 380
    sw	$a7,0($a4)
    addiu	$a4,$a4,8
    lw	$a6,4($a3)
    addiu	$a3,$a3,8
    # Line 379
    bne	$s1,$a2,.L0d9e8740
    # Line 380
    sw	$a6,-4($a4)
.L0d9e8760:
    b	.L0d9e85a4
    # Line 350
    li	$t8,2
.L0d9e8768:
    # Line 352
    ld	$t0,16($sp)
    b	.L0d9e856c
    sw	$t0,30480($s2)
.L0d9e8774:
    # Line 326
    blez	$s4,.L0d9e87f0
    andi	$a4,$s4,0x3
    lui	$a0,0xffff
    move	$a2,$zero
    addu	$a0,$a0,$s8
    beqz	$a4,.L0d9e87ac
    addiu	$a0,$a0,32752
.L0d9e8790:
    addiu	$a4,$a4,-1
    # Line 331
    lwc1	$f14,0($a3)
    # Line 330
    addiu	$a2,$a2,1
    # Line 333
    addiu	$a0,$a0,16
    # Line 332
    addiu	$a3,$a3,16
    bnez	$a4,.L0d9e8790
    # Line 331
    swc1	$f14,-16($a0)
.L0d9e87ac:
    sra	$a1,$s4,0x2
    beqz	$a1,.L0d9e87f0
    nop
    nop
    nop
.L0d9e87c0:
    lwc1	$f18,0($a3)
    swc1	$f18,0($a0)
    lwc1	$f17,16($a3)
    swc1	$f17,16($a0)
    lwc1	$f16,32($a3)
    swc1	$f16,32($a0)
    # Line 330
    addiu	$a2,$a2,4
    # Line 331
    lwc1	$f15,48($a3)
    # Line 333
    addiu	$a0,$a0,64
    # Line 332
    addiu	$a3,$a3,64
    # Line 330
    bne	$s4,$a2,.L0d9e87c0
    # Line 331
    swc1	$f15,-16($a0)
.L0d9e87f0:
    b	.L0d9e84c4
    # Line 343
    addiu	$s1,$s4,31
.L0d9e87f8:
    # Line 366
    blez	$s4,.L0d9e86f4
    # Line 377
    lui	$a3,0xffff
    # Line 366
    move	$a2,$zero
    andi	$a4,$s4,0x3
    lui	$a3,0xffff
    addu	$a3,$a3,$s8
    beqz	$a4,.L0d9e8834
    addiu	$a3,$a3,32752
.L0d9e8818:
    addiu	$a4,$a4,-1
    # Line 371
    lwc1	$f19,0($a3)
    # Line 370
    addiu	$a2,$a2,1
    # Line 373
    addiu	$a0,$a0,16
    # Line 372
    addiu	$a3,$a3,16
    bnez	$a4,.L0d9e8818
    # Line 371
    swc1	$f19,-16($a0)
.L0d9e8834:
    sra	$a4,$s4,0x2
    beqz	$a4,.L0d9e8870
    nop
.L0d9e8840:
    lwc1	$f27,0($a3)
    swc1	$f27,0($a0)
    lwc1	$f25,16($a3)
    swc1	$f25,16($a0)
    lwc1	$f23,32($a3)
    swc1	$f23,32($a0)
    # Line 370
    addiu	$a2,$a2,4
    # Line 371
    lwc1	$f21,48($a3)
    # Line 373
    addiu	$a0,$a0,64
    # Line 372
    addiu	$a3,$a3,64
    # Line 370
    bne	$s4,$a2,.L0d9e8840
    # Line 371
    swc1	$f21,-16($a0)
.L0d9e8870:
    b	.L0d9e86f4
    # Line 377
    lui	$a3,0xffff
.end __glDrawBothStippledLine

# Function: __glScissorLine
# Declared: Line 388 (Source lines: 389-523)
# Address: 0x0d9e8880 - 0x0d9e8c98 (Size: 1048 bytes, Frame: 208)
.globl __glScissorLine
.ent __glScissorLine
__glScissorLine:
    # Line 413
    lw	$a4,29872($a0)
    # Line 410
    lw	$t8,29888($a0)
    # Line 409
    lw	$t3,29880($a0)
    # Line 389
    addiu	$sp,$sp,-80
    sd	$s4,16($sp)
    # Line 407
    lw	$s4,29712($a0)
    # Line 389
    sd	$s5,0($sp)
    # Line 402
    lw	$s5,30248($a0)
    # Line 389
    sd	$s3,24($sp)
    # Line 406
    lw	$s3,29704($a0)
    # Line 389
    sd	$s1,8($sp)
    # Line 404
    lw	$t2,29700($a0)
    # Line 412
    lw	$a2,29868($a0)
    # Line 405
    lw	$s1,29708($a0)
    sd	$s0,40($sp)
    # Line 418
    slt	$at,$a2,$t2
    sd	$s7,48($sp)
    bnez	$at,.L0d9e8a2c
    sd	$ra,32($sp)
    slt	$v0,$a2,$s1
    beqz	$v0,.L0d9e8a2c
    slt	$v1,$a4,$s3
    bnez	$v1,.L0d9e8a2c
    slt	$a1,$a4,$s4
    beqz	$a1,.L0d9e8a2c
    # Line 425
    addiu	$a3,$s5,-1
    mult	$a3,$t3
    mflo	$a5
    addu	$a5,$a2,$a5
    slt	$a6,$a5,$t2
    bnez	$a6,.L0d9e892c
    sd	$s6,56($sp)
    slt	$a6,$a5,$s1
    beqz	$a6,.L0d9e892c
    nop
    mult	$a3,$t8
    mflo	$a5
    addu	$a5,$a4,$a5
    slt	$a7,$a5,$s3
    bnez	$a7,.L0d9e892c
    slt	$a6,$a5,$s4
    bnez	$a6,.L0d9e8c68
    move	$s7,$s7
.L0d9e892c:
    # Line 433
    lw	$t0,29896($a0)
    slti	$at,$t0,0
    # Line 437
    negu	$s0,$t0
    movz	$s0,$t0,$at
    # Line 454
    srl	$a7,$s0,0x10
    multu	$a3,$a7
    andi	$a6,$s0,0xffff
    mflo	$t9
    nop
    nop
    mult	$a3,$a6
    # Line 438
    lui	$a5,0x7fff
    # Line 432
    lw	$v0,29892($a0)
    # Line 438
    ori	$a5,$a5,0xffff
    subu	$a5,$a5,$v0
    movz	$a5,$v0,$at
    # Line 454
    andi	$t1,$a5,0xffff
    mflo	$ra
    srl	$t0,$a5,0x10
    addu	$t1,$t1,$ra
    addu	$t0,$t0,$t9
    srl	$t1,$t1,0x10
    addu	$t0,$t0,$t1
    srl	$t0,$t0,0xf
    mult	$t3,$t0
    subu	$a7,$s5,$t0
    # Line 430
    lw	$ra,29876($a0)
    # Line 454
    addiu	$a7,$a7,-1
    mflo	$a6
    nop
    nop
    mult	$a7,$ra
    addu	$a6,$a6,$a2
    mflo	$t1
    addu	$a6,$a6,$t1
    slt	$t1,$a6,$t2
    bnez	$t1,.L0d9e8a40
    # Line 431
    lw	$t9,29884($a0)
    # Line 454
    slt	$t1,$a6,$s1
    beqz	$t1,.L0d9e8a40
    nop
    mult	$t8,$t0
    mflo	$a3
    nop
    nop
    mult	$a7,$t9
    addu	$a3,$a4,$a3
    mflo	$a6
    addu	$a3,$a3,$a6
    slt	$at,$a3,$s3
    bnez	$at,.L0d9e8a40
    slt	$a6,$a3,$s4
    beqz	$a6,.L0d9e8a40
    ld	$s6,56($sp)
    ld	$s7,48($sp)
    ld	$s0,40($sp)
    # Line 523
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s3,24($sp)
    # Line 456
    move	$v0,$zero
    # Line 523
    ld	$s4,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e8a2c:
    # Line 463
    lw	$ra,29876($a0)
    lw	$t9,29884($a0)
    lw	$s0,29896($a0)
    # Line 462
    lw	$a5,29892($a0)
    sd	$s6,56($sp)
.L0d9e8a40:
    # Line 480
    lw	$s6,30472($a0)
    sd	$s8,72($sp)
    beqz	$s5,.L0d9e8c30
    sd	$s2,64($sp)
    move	$a7,$zero
    li	$s2,-1
    li	$s8,32
    lui	$t0,0x7fff
    b	.L0d9e8ac0
    ori	$t0,$t0,0xffff
.L0d9e8a68:
    # Line 493
    nor	$at,$a3,$zero
.L0d9e8a6c:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    and	$a6,$a6,$at
.L0d9e8a74:
    # Line 490
    addiu	$t1,$t1,-1
    # Line 508
    srl	$a3,$a3,0x1
    # Line 500
    addu	$at,$t3,$a2
    # Line 503
    addu	$a2,$ra,$a2
    # Line 497
    addu	$v1,$a5,$s0
    # Line 501
    addu	$a1,$t8,$a4
    slti	$v0,$v1,0
    # Line 504
    addu	$a4,$t9,$a4
    movn	$a2,$at,$v0
    # Line 499
    and	$a5,$v1,$t0
    movn	$a4,$a1,$v0
    movz	$a5,$v1,$v0
.L0d9e8aa4:
    sra	$v0,$s7,0x1
    # Line 491
    slt	$a1,$a4,$s3
    bnez	$v0,.L0d9e8c90
    slt	$at,$a4,$s4
.L0d9e8ab4:
    # Line 514
    sw	$a6,0($s6)
    beqz	$s5,.L0d9e8bf4
    addiu	$s6,$s6,4
.L0d9e8ac0:
    # Line 491
    slt	$v0,$a2,$s1
    # Line 483
    li	$v1,32
    move	$s7,$s5
    slt	$v1,$v1,$s5
    # Line 491
    slt	$at,$a2,$t2
    # Line 483
    movn	$s7,$s8,$v1
    # Line 490
    li	$a6,-1
    addiu	$t1,$s7,-1
    # Line 491
    slt	$v1,$a4,$s3
    andi	$a1,$s7,0x1
    # Line 490
    bltz	$t1,.L0d9e8ab4
    # Line 486
    subu	$s5,$s5,$s7
    # Line 490
    lui	$a3,0x8000
    beqz	$a1,.L0d9e8aa4
    li	$a6,-1
    # Line 491
    bnez	$at,.L0d9e8a68
    slt	$a1,$a4,$s4
    beqz	$v0,.L0d9e8a6c
    # Line 493
    nor	$at,$a3,$zero
    # Line 491
    bnez	$v1,.L0d9e8a6c
    # Line 493
    nor	$at,$a3,$zero
    # Line 491
    bnez	$a1,.L0d9e8a74
    nop
    b	.L0d9e8a6c
    # Line 493
    nor	$at,$a3,$zero
.L0d9e8b24:
    nor	$at,$a3,$zero
.L0d9e8b28:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    and	$a6,$a6,$at
.L0d9e8b30:
    # Line 508
    srl	$a3,$a3,0x1
    # Line 500
    addu	$at,$t3,$a2
    # Line 501
    addu	$a1,$t8,$a4
    # Line 497
    addu	$v1,$a5,$s0
    # Line 499
    and	$a5,$v1,$t0
    slti	$v0,$v1,0
    # Line 504
    addu	$a4,$t9,$a4
    movz	$a5,$v1,$v0
    # Line 503
    addu	$a2,$ra,$a2
    movn	$a4,$a1,$v0
    movn	$a2,$at,$v0
    # Line 491
    slt	$a1,$a4,$s3
    # Line 490
    beq	$t1,$s2,.L0d9e8ab4
    # Line 491
    slt	$at,$a4,$s4
    slt	$v1,$a2,$s1
.L0d9e8b6c:
    slt	$v0,$a2,$t2
    bnez	$v0,.L0d9e8b8c
    # Line 490
    addiu	$t1,$t1,-2
    # Line 491
    beqz	$v1,.L0d9e8b90
    # Line 493
    nor	$v0,$a3,$zero
    # Line 491
    bnez	$a1,.L0d9e8b90
    # Line 493
    nor	$v0,$a3,$zero
    # Line 491
    bnez	$at,.L0d9e8b98
.L0d9e8b8c:
    # Line 493
    nor	$v0,$a3,$zero
.L0d9e8b90:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    and	$a6,$a6,$v0
.L0d9e8b98:
    # Line 508
    srl	$a3,$a3,0x1
    # Line 497
    addu	$a1,$a5,$s0
    # Line 500
    addu	$a5,$t3,$a2
    # Line 503
    addu	$a2,$ra,$a2
    slti	$v1,$a1,0
    # Line 501
    addu	$v0,$t8,$a4
    movn	$a2,$a5,$v1
    # Line 504
    addu	$a4,$t9,$a4
    # Line 491
    slt	$at,$a2,$t2
    # Line 499
    and	$a5,$a1,$t0
    movn	$a4,$v0,$v1
    # Line 491
    slt	$v0,$a4,$s3
    bnez	$at,.L0d9e8b24
    movz	$a5,$a1,$v1
    slt	$at,$a2,$s1
    beqz	$at,.L0d9e8b24
    slt	$v1,$a4,$s4
    bnez	$v0,.L0d9e8b28
    # Line 493
    nor	$at,$a3,$zero
    # Line 491
    bnez	$v1,.L0d9e8b30
    nop
    b	.L0d9e8b28
    # Line 493
    nor	$at,$a3,$zero
.L0d9e8bf4:
    # Line 514
    lw	$a1,30248($a0)
    beq	$a1,$a7,.L0d9e8c30
    ld	$s0,40($sp)
    ld	$s7,48($sp)
    ld	$s8,72($sp)
    ld	$s2,64($sp)
    ld	$s6,56($sp)
    # Line 523
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s3,24($sp)
    # Line 519
    li	$v0,1
    # Line 523
    ld	$s4,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e8c30:
    # Line 522
    li	$v0,1
    sb	$v0,30476($a0)
    ld	$s2,64($sp)
    ld	$s8,72($sp)
    ld	$s7,48($sp)
    ld	$s0,40($sp)
    ld	$s6,56($sp)
    # Line 523
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e8c68:
    ld	$s1,8($sp)
    move	$s6,$s6
    ld	$s3,24($sp)
    move	$ra,$ra
    move	$s0,$s0
    # Line 427
    move	$v0,$zero
    # Line 523
    ld	$s4,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e8c90:
    b	.L0d9e8b6c
    # Line 491
    slt	$v1,$a2,$s1
.end __glScissorLine

# Function: __glScissorStippledLine
# Declared: Line 526 (Source lines: 527-664)
# Address: 0x0d9e8ca0 - 0x0d9e9108 (Size: 1128 bytes, Frame: 224)
.globl __glScissorStippledLine
.ent __glScissorStippledLine
__glScissorStippledLine:
    # Line 552
    lw	$a4,29872($a0)
    # Line 549
    lw	$t8,29888($a0)
    # Line 548
    lw	$t3,29880($a0)
    # Line 527
    addiu	$sp,$sp,-96
    sd	$s5,8($sp)
    # Line 546
    lw	$s5,29712($a0)
    # Line 527
    sd	$s6,32($sp)
    # Line 541
    lw	$s6,30248($a0)
    # Line 551
    lw	$a3,29868($a0)
    # Line 527
    sd	$s1,16($sp)
    # Line 543
    lw	$s1,29700($a0)
    # Line 527
    sd	$s4,24($sp)
    # Line 545
    lw	$s4,29704($a0)
    # Line 557
    slt	$at,$a3,$s1
    # Line 527
    sd	$s2,40($sp)
    move	$v0,$a0
    # Line 557
    bnez	$at,.L0d9e8e34
    # Line 544
    lw	$s2,29708($a0)
    # Line 557
    slt	$v1,$a3,$s2
    beqz	$v1,.L0d9e8e34
    slt	$a0,$a4,$s4
    bnez	$a0,.L0d9e8e34
    slt	$a1,$a4,$s5
    beqz	$a1,.L0d9e8e34
    # Line 564
    addiu	$a0,$s6,-1
    mult	$a0,$t3
    mflo	$a5
    addu	$a5,$a3,$a5
    slt	$a2,$a5,$s1
    bnez	$a2,.L0d9e8d44
    slt	$a6,$a5,$s2
    beqz	$a6,.L0d9e8d44
    nop
    mult	$a0,$t8
    mflo	$a5
    addu	$a5,$a4,$a5
    slt	$a7,$a5,$s4
    bnez	$a7,.L0d9e8d44
    slt	$a6,$a5,$s5
    bnez	$a6,.L0d9e90e0
    nop
.L0d9e8d44:
    # Line 572
    lw	$t0,29896($v0)
    sd	$ra,72($sp)
    sd	$s0,64($sp)
    # Line 576
    negu	$s0,$t0
    slti	$ra,$t0,0
    movz	$s0,$t0,$ra
    # Line 593
    srl	$a7,$s0,0x10
    multu	$a0,$a7
    andi	$a6,$s0,0xffff
    mflo	$t2
    nop
    nop
    mult	$a0,$a6
    # Line 571
    lw	$at,29892($v0)
    # Line 577
    lui	$a5,0x7fff
    ori	$a5,$a5,0xffff
    subu	$a5,$a5,$at
    movz	$a5,$at,$ra
    # Line 593
    andi	$t1,$a5,0xffff
    mflo	$t9
    srl	$t0,$a5,0x10
    addu	$t1,$t1,$t9
    addu	$t0,$t0,$t2
    srl	$t1,$t1,0x10
    addu	$t0,$t0,$t1
    srl	$t0,$t0,0xf
    mult	$t3,$t0
    # Line 569
    lw	$ra,29876($v0)
    # Line 593
    subu	$a7,$s6,$t0
    addiu	$a7,$a7,-1
    mflo	$a6
    nop
    nop
    mult	$a7,$ra
    addu	$a6,$a6,$a3
    mflo	$t1
    addu	$a6,$a6,$t1
    slt	$t1,$a6,$s1
    bnez	$t1,.L0d9e8e50
    # Line 570
    lw	$t9,29884($v0)
    # Line 593
    slt	$t1,$a6,$s2
    beqz	$t1,.L0d9e8e50
    nop
    mult	$t8,$t0
    mflo	$a0
    nop
    nop
    mult	$a7,$t9
    addu	$a0,$a4,$a0
    mflo	$a1
    addu	$a0,$a0,$a1
    slt	$t2,$a0,$s4
    bnez	$t2,.L0d9e8e50
    slt	$a1,$a0,$s5
    beqz	$a1,.L0d9e8e50
    nop
    ld	$ra,72($sp)
    ld	$s0,64($sp)
    # Line 595
    b	.L0d9e90bc
    move	$v0,$zero
.L0d9e8e34:
    sd	$ra,72($sp)
    # Line 602
    lw	$ra,29876($v0)
    lw	$t9,29884($v0)
    sd	$s0,64($sp)
    lw	$s0,29896($v0)
    # Line 601
    lw	$a5,29892($v0)
    sd	$s7,56($sp)
.L0d9e8e50:
    sd	$s7,56($sp)
    # Line 618
    lw	$s7,30472($v0)
    sd	$s8,48($sp)
    beqz	$s6,.L0d9e9088
    sd	$s3,80($sp)
    move	$a6,$zero
    li	$s3,-1
    li	$a0,32
    sd	$s8,48($sp)
    lui	$a7,0x7fff
    sd	$v0,0($sp)
    b	.L0d9e90fc
    ori	$a7,$a7,0xffff
.L0d9e8e84:
    # Line 634
    nor	$at,$v0,$zero
.L0d9e8e88:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    and	$t0,$t0,$at
.L0d9e8e90:
    # Line 650
    srl	$v0,$v0,0x1
    # Line 642
    addu	$at,$t3,$a3
    # Line 645
    addu	$a3,$ra,$a3
    # Line 639
    addu	$a1,$a5,$s0
    # Line 643
    addu	$a2,$t8,$a4
    slti	$v1,$a1,0
    # Line 646
    addu	$a4,$t9,$a4
    movn	$a3,$at,$v1
    # Line 641
    and	$a5,$a1,$a7
    movn	$a4,$a2,$v1
    movz	$a5,$a1,$v1
.L0d9e8ebc:
    sra	$v1,$s8,0x1
    bnez	$v1,.L0d9e90f0
    # Line 632
    slt	$a1,$a4,$s4
.L0d9e8ec8:
    # Line 656
    and	$a1,$t1,$t0
    sw	$a1,0($s7)
    # Line 632
    slt	$a1,$a3,$s1
    # Line 656
    beqz	$s6,.L0d9e9044
    addiu	$s7,$s7,4
    # Line 622
    li	$a2,32
.L0d9e8ee0:
    move	$s8,$s6
    slt	$a2,$a2,$s6
    # Line 630
    lui	$v0,0x8000
    # Line 622
    movn	$s8,$a0,$a2
    # Line 630
    li	$t0,-1
    addiu	$t2,$s8,-1
    # Line 632
    slt	$a2,$a3,$s2
    andi	$at,$s8,0x1
    # Line 627
    lw	$t1,0($s7)
    # Line 630
    bltz	$t2,.L0d9e8ec8
    # Line 625
    subu	$s6,$s6,$s8
    beqz	$at,.L0d9e8ebc
    # Line 630
    li	$t0,-1
    and	$v1,$t1,$v0
    addiu	$t2,$t2,-1
    beqz	$v1,.L0d9e90d8
    # Line 632
    slt	$at,$a4,$s4
    bnez	$a1,.L0d9e8e84
    slt	$v1,$a4,$s5
    beqz	$a2,.L0d9e8e84
    nop
    bnez	$at,.L0d9e8e88
    # Line 634
    nor	$at,$v0,$zero
    # Line 632
    bnez	$v1,.L0d9e8e90
    nop
    b	.L0d9e8e88
    # Line 634
    nor	$at,$v0,$zero
.L0d9e8f4c:
    nor	$a1,$v0,$zero
.L0d9e8f50:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    and	$t0,$t0,$a1
.L0d9e8f58:
    # Line 630
    addiu	$t2,$t2,-2
    # Line 639
    addu	$at,$a5,$s0
    # Line 641
    and	$a5,$at,$a7
    slti	$a2,$at,0
    # Line 643
    addu	$a1,$t8,$a4
    movz	$a5,$at,$a2
    # Line 646
    addu	$a4,$t9,$a4
    # Line 650
    srl	$v0,$v0,0x1
    # Line 642
    addu	$v1,$t3,$a3
    # Line 645
    addu	$a3,$ra,$a3
    movn	$a3,$v1,$a2
    # Line 630
    and	$v1,$t1,$v0
    movn	$a4,$a1,$a2
    beqz	$v1,.L0d9e903c
    # Line 632
    slt	$a1,$a3,$s1
    slt	$v1,$a4,$s5
    slt	$at,$a4,$s4
    bnez	$a1,.L0d9e8fb8
    slt	$a2,$a3,$s2
    beqz	$a2,.L0d9e8fbc
    # Line 634
    nor	$a1,$v0,$zero
    # Line 632
    bnez	$at,.L0d9e8fbc
    # Line 634
    nor	$a1,$v0,$zero
    # Line 632
    bnez	$v1,.L0d9e8fc4
.L0d9e8fb8:
    # Line 634
    nor	$a1,$v0,$zero
.L0d9e8fbc:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    and	$t0,$t0,$a1
.L0d9e8fc4:
    # Line 650
    srl	$v0,$v0,0x1
    # Line 642
    addu	$a1,$t3,$a3
    # Line 645
    addu	$a3,$ra,$a3
    # Line 639
    addu	$at,$a5,$s0
    # Line 641
    and	$a5,$at,$a7
    slti	$a2,$at,0
    # Line 643
    addu	$v1,$t8,$a4
    movz	$a5,$at,$a2
    # Line 646
    addu	$a4,$t9,$a4
    movn	$a3,$a1,$a2
    movn	$a4,$v1,$a2
    # Line 632
    slt	$v1,$a3,$s2
    # Line 630
    beq	$t2,$s3,.L0d9e8ec8
    # Line 632
    slt	$a1,$a4,$s4
    # Line 630
    and	$a2,$t1,$v0
.L0d9e9000:
    # Line 632
    slt	$at,$a3,$s1
    # Line 630
    beqz	$a2,.L0d9e9034
    nop
    # Line 632
    bnez	$at,.L0d9e8f4c
    slt	$a2,$a4,$s5
    beqz	$v1,.L0d9e8f4c
    nop
    bnez	$a1,.L0d9e8f50
    # Line 634
    nor	$a1,$v0,$zero
    # Line 632
    bnez	$a2,.L0d9e8f58
    nop
    b	.L0d9e8f50
    # Line 634
    nor	$a1,$v0,$zero
.L0d9e9034:
    b	.L0d9e8f58
    # Line 637
    addiu	$a6,$a6,1
.L0d9e903c:
    b	.L0d9e8fc4
    addiu	$a6,$a6,1
.L0d9e9044:
    # Line 656
    ld	$a3,0($sp)
    lw	$a3,30248($a3)
    beq	$a3,$a6,.L0d9e908c
    ld	$s3,80($sp)
    ld	$s3,80($sp)
    ld	$s0,64($sp)
    ld	$s7,56($sp)
    ld	$s8,48($sp)
    # Line 664
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$ra,72($sp)
    ld	$s4,24($sp)
    # Line 661
    move	$v0,$zero
    # Line 664
    ld	$s5,8($sp)
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9e9088:
    ld	$s3,80($sp)
.L0d9e908c:
    ld	$s8,48($sp)
    ld	$s7,56($sp)
    ld	$s0,64($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$ra,72($sp)
    ld	$s4,24($sp)
    li	$v0,1
    ld	$s5,8($sp)
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9e90bc:
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s4,24($sp)
    ld	$s5,8($sp)
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9e90d8:
    b	.L0d9e8e90
    # Line 637
    addiu	$a6,$a6,1
.L0d9e90e0:
    # Line 566
    b	.L0d9e90bc
    move	$v0,$zero
    nop
    nop
.L0d9e90f0:
    # Line 632
    slt	$v1,$a3,$s2
    b	.L0d9e9000
    # Line 630
    and	$a2,$t1,$v0
.L0d9e90fc:
    # Line 632
    slt	$a1,$a3,$s1
    b	.L0d9e8ee0
    # Line 622
    li	$a2,32
.end __glScissorStippledLine

# Function: __glStippleLine
# Declared: Line 670 (Source lines: 671-726)
# Address: 0x0d9e9110 - 0x0d9e93d8 (Size: 712 bytes, Frame: 224)
.globl __glStippleLine
.ent __glStippleLine
__glStippleLine:
    # Line 680
    lw	$a3,29844($a0)
    # Line 671
    addiu	$sp,$sp,-96
    sd	$s4,32($sp)
    # Line 684
    lhu	$s4,480($a0)
    # Line 671
    sd	$s3,40($sp)
    # Line 681
    lh	$s3,482($a0)
    # Line 671
    sd	$s8,8($sp)
    # Line 679
    lw	$s8,30472($a0)
    # Line 671
    sd	$s7,16($sp)
    # Line 678
    lw	$s7,30248($a0)
    sd	$s6,80($sp)
    # Line 671
    move	$a6,$a0
    # Line 682
    lw	$a5,29840($a0)
    # Line 671
    sd	$s5,24($sp)
    # Line 683
    li	$s5,1
    # Line 684
    beqz	$s7,.L0d9e938c
    # Line 683
    sllv	$a2,$s5,$a5
    sd	$s1,72($sp)
    sd	$s0,64($sp)
    sd	$ra,56($sp)
    # Line 684
    move	$a4,$zero
    sd	$s2,48($sp)
    li	$s6,-1
    li	$a0,32
    sd	$a6,0($sp)
    nop
    nop
    nop
.L0d9e9180:
    # Line 688
    li	$at,32
    move	$t2,$s7
    slt	$at,$at,$s7
    movn	$t2,$a0,$at
    # Line 695
    addiu	$t0,$t2,-1
    li	$a6,-1
    bltz	$t0,.L0d9e9308
    # Line 691
    subu	$s7,$s7,$t2
    # Line 695
    lui	$a7,0x8000
    andi	$t1,$t2,0x3
    sra	$t9,$t2,0x2
    beqz	$t1,.L0d9e91fc
    li	$a6,-1
.L0d9e91b4:
    # Line 698
    nor	$t3,$a7,$zero
    # Line 709
    srl	$a7,$a7,0x1
    # Line 699
    addiu	$t8,$a4,1
    # Line 695
    and	$a1,$a2,$s4
    movz	$a4,$t8,$a1
    # Line 702
    addiu	$a3,$a3,1
    slt	$v0,$a3,$s3
    # Line 703
    addiu	$v1,$a5,1
    movz	$a3,$zero,$v0
    andi	$v1,$v1,0xf
    movz	$a5,$v1,$v0
    # Line 698
    and	$t3,$a6,$t3
    addiu	$t1,$t1,-1
    movz	$a6,$t3,$a1
    # Line 704
    sllv	$v1,$s5,$v1
    # Line 695
    addiu	$t0,$t0,-1
    bnez	$t1,.L0d9e91b4
    movz	$a2,$v1,$v0
.L0d9e91fc:
    beqz	$t9,.L0d9e9308
    nop
    nop
    nop
    nop
.L0d9e9210:
    # Line 709
    srl	$t3,$a7,0x3
    srl	$t9,$a7,0x2
    srl	$ra,$a7,0x1
    # Line 698
    nor	$s1,$a7,$zero
    # Line 709
    srl	$a7,$a7,0x4
    # Line 699
    addiu	$s0,$a4,1
    # Line 695
    and	$t8,$a2,$s4
    movn	$s0,$a4,$t8
    # Line 698
    and	$s1,$a6,$s1
    movn	$s1,$a6,$t8
    # Line 703
    addiu	$t2,$a5,1
    # Line 702
    addiu	$a3,$a3,1
    # Line 703
    andi	$t2,$t2,0xf
    # Line 702
    slt	$s2,$a3,$s3
    # Line 704
    sllv	$t1,$s5,$t2
    movn	$t1,$a2,$s2
    # Line 699
    addiu	$t8,$s0,1
    # Line 695
    and	$a6,$t1,$s4
    movz	$s0,$t8,$a6
    # Line 698
    nor	$ra,$ra,$zero
    movn	$t2,$a5,$s2
    movz	$a3,$zero,$s2
    # Line 703
    addiu	$at,$t2,1
    # Line 702
    addiu	$a3,$a3,1
    # Line 703
    andi	$at,$at,0xf
    # Line 698
    and	$ra,$s1,$ra
    # Line 704
    sllv	$v0,$s5,$at
    movz	$s1,$ra,$a6
    # Line 702
    slt	$ra,$a3,$s3
    # Line 698
    nor	$a6,$t3,$zero
    movz	$t1,$v0,$ra
    # Line 699
    addiu	$t8,$s0,1
    # Line 695
    and	$s2,$t1,$s4
    # Line 698
    nor	$t9,$t9,$zero
    movz	$s0,$t8,$s2
    # Line 699
    addiu	$a4,$s0,1
    movz	$a3,$zero,$ra
    movz	$t2,$at,$ra
    # Line 702
    addiu	$a3,$a3,1
    # Line 698
    and	$t9,$s1,$t9
    # Line 702
    slt	$a5,$a3,$s3
    movz	$s1,$t9,$s2
    # Line 703
    addiu	$t9,$t2,1
    movz	$a3,$zero,$a5
    andi	$t9,$t9,0xf
    # Line 698
    and	$a6,$s1,$a6
    movz	$t2,$t9,$a5
    # Line 702
    addiu	$a3,$a3,1
    # Line 704
    sllv	$t9,$s5,$t9
    # Line 702
    slt	$a1,$a3,$s3
    movz	$t1,$t9,$a5
    movz	$a3,$zero,$a1
    # Line 695
    and	$t3,$t1,$s4
    movn	$a6,$s1,$t3
    # Line 703
    addiu	$a5,$t2,1
    movn	$a4,$s0,$t3
    andi	$a5,$a5,0xf
    # Line 695
    addiu	$t0,$t0,-4
    # Line 704
    sllv	$a2,$s5,$a5
    movn	$a5,$t2,$a1
    # Line 695
    bne	$t0,$s6,.L0d9e9210
    movn	$a2,$t1,$a1
.L0d9e9308:
    # Line 714
    sw	$a6,0($s8)
    bnez	$s7,.L0d9e9180
    addiu	$s8,$s8,4
    # Line 718
    ld	$t8,0($sp)
    sw	$a5,29840($t8)
    beqz	$a4,.L0d9e93a4
    # Line 717
    sw	$a3,29844($t8)
    ld	$s6,80($sp)
    # Line 721
    ld	$t9,0($sp)
    ld	$s1,72($sp)
    lw	$t9,30248($t9)
    ld	$s0,64($sp)
    ld	$ra,56($sp)
    beq	$t9,$a4,.L0d9e9364
    ld	$s2,48($sp)
    # Line 726
    ld	$s3,40($sp)
    ld	$s4,32($sp)
    ld	$s5,24($sp)
    # Line 723
    li	$v0,1
    # Line 726
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9e9364:
    ld	$s3,40($sp)
    ld	$s4,32($sp)
    # Line 725
    ld	$s8,0($sp)
    # Line 726
    ld	$s7,16($sp)
    # Line 725
    sb	$s5,30476($s8)
    # Line 726
    li	$v0,1
    ld	$s5,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9e938c:
    # Line 718
    sw	$a5,29840($a0)
    # Line 717
    sw	$a3,29844($a0)
    sd	$s1,72($sp)
    sd	$s0,64($sp)
    sd	$ra,56($sp)
    sd	$s2,48($sp)
.L0d9e93a4:
    ld	$s2,48($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s6,80($sp)
    # Line 726
    ld	$s3,40($sp)
    ld	$s4,32($sp)
    ld	$ra,56($sp)
    ld	$s5,24($sp)
    # Line 721
    move	$v0,$zero
    # Line 726
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glStippleLine

# Function: __glStencilTestLine
# Declared: Line 732 (Source lines: 733-802)
# Address: 0x0d9e93e0 - 0x0d9e9680 (Size: 672 bytes, Frame: 192)
.globl __glStencilTestLine
.ent __glStencilTestLine
__glStencilTestLine:
    # Line 748
    lw	$a3,31108($a0)
    lw	$t1,29872($a0)
    lw	$t2,3664($a3)
    lw	$a7,31136($a0)
    # Line 756
    lh	$t3,1672($a0)
    # Line 748
    subu	$t1,$t1,$t2
    # Line 754
    lw	$t8,31180($a0)
    # Line 733
    addiu	$sp,$sp,-64
    # Line 748
    mult	$a7,$t1
    # Line 733
    sd	$s3,16($sp)
    # Line 757
    lw	$s3,30472($a0)
    # Line 733
    sd	$s1,0($sp)
    # Line 750
    lw	$t0,29884($a0)
    # Line 755
    lw	$s1,31184($a0)
    sd	$s5,48($sp)
    # Line 748
    mflo	$a5
    nop
    nop
    # Line 750
    mult	$t0,$a7
    sd	$s4,40($sp)
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    # Line 751
    lw	$a6,29888($a0)
    # Line 748
    lw	$a2,29868($a0)
    lw	$a4,31124($a0)
    # Line 750
    mflo	$t9
    nop
    nop
    # Line 751
    mult	$a6,$a7
    # Line 733
    sd	$s2,8($sp)
    # Line 743
    lw	$s2,30248($a0)
    # Line 748
    lw	$a3,3660($a3)
    addu	$a4,$a4,$a5
    # Line 750
    lw	$t2,29876($a0)
    # Line 748
    addu	$a2,$a2,$a4
    # Line 751
    lw	$t0,29880($a0)
    # Line 748
    subu	$a2,$a2,$a3
    # Line 753
    lw	$t1,29896($a0)
    # Line 750
    addu	$t2,$t2,$t9
    # Line 751
    mflo	$t9
    # Line 752
    lw	$a4,29892($a0)
    # Line 757
    beqz	$s2,.L0d9e9658
    # Line 751
    addu	$t0,$t0,$t9
    # Line 757
    move	$s0,$zero
    li	$t9,-1
    li	$s5,32
    lui	$a5,0x7fff
    b	.L0d9e94dc
    ori	$a5,$a5,0xffff
.L0d9e94a4:
    # Line 785
    srl	$a3,$a3,0x1
    # Line 780
    addu	$v0,$t0,$a2
    # Line 777
    addu	$at,$a4,$t1
    # Line 782
    addu	$a2,$t2,$a2
    slti	$a6,$at,0
    # Line 779
    and	$a4,$at,$a5
    movn	$a2,$v0,$a6
    movz	$a4,$at,$a6
.L0d9e94c4:
    sra	$v1,$s4,0x1
    bnezl	$v1,.L0d9e95a4
    # Line 769
    lbu	$a6,0($a2)
.L0d9e94d0:
    # Line 790
    sw	$ra,0($s3)
.L0d9e94d4:
    beqz	$s2,.L0d9e95f8
    addiu	$s3,$s3,4
.L0d9e94dc:
    # Line 761
    li	$a1,32
    move	$a6,$s2
    slt	$a1,$a1,$s2
    movn	$a6,$s5,$a1
    # Line 768
    li	$ra,-1
    addiu	$a7,$a6,-1
    andi	$a3,$a6,0x1
    move	$s4,$a6
    bltz	$a7,.L0d9e9630
    # Line 764
    subu	$s2,$s2,$a6
    # Line 768
    li	$ra,-1
    beqz	$a3,.L0d9e94c4
    lui	$a3,0x8000
    # Line 769
    lbu	$a6,0($a2)
    and	$at,$a6,$t3
    addu	$at,$t8,$at
    lbu	$at,0($at)
    bnez	$at,.L0d9e94a4
    # Line 768
    addiu	$a7,$a7,-1
    # Line 773
    addu	$v0,$a6,$s1
    # Line 774
    addiu	$s0,$s0,1
    # Line 772
    nor	$v1,$a3,$zero
    # Line 773
    lbu	$v0,0($v0)
    # Line 772
    and	$ra,$ra,$v1
    # Line 774
    b	.L0d9e94a4
    # Line 773
    sb	$v0,0($a2)
    nop
    nop
    nop
.L0d9e9550:
    # Line 780
    addu	$v0,$t0,$a2
    # Line 782
    addu	$a2,$t2,$a2
    slti	$v1,$a1,0
    movn	$a2,$v0,$v1
    # Line 769
    lbu	$a6,0($a2)
    and	$at,$a6,$t3
    addu	$at,$t8,$at
    lbu	$at,0($at)
    # Line 785
    srl	$a3,$a3,0x1
    # Line 769
    beqz	$at,.L0d9e95dc
    movz	$a4,$a1,$v1
.L0d9e957c:
    # Line 785
    srl	$a3,$a3,0x1
    # Line 780
    addu	$a6,$t0,$a2
    # Line 777
    addu	$a1,$a4,$t1
    # Line 782
    addu	$a2,$t2,$a2
    slti	$v1,$a1,0
    movn	$a2,$a6,$v1
    # Line 779
    and	$a4,$a1,$a5
    # Line 768
    beq	$a7,$t9,.L0d9e94d0
    movz	$a4,$a1,$v1
    # Line 769
    lbu	$a6,0($a2)
.L0d9e95a4:
    and	$at,$a6,$t3
    addu	$at,$t8,$at
    lbu	$at,0($at)
    # Line 768
    addiu	$a7,$a7,-2
    # Line 777
    addu	$a1,$a4,$t1
    # Line 769
    bnez	$at,.L0d9e9550
    # Line 779
    and	$a4,$a1,$a5
    # Line 773
    addu	$v0,$a6,$s1
    # Line 774
    addiu	$s0,$s0,1
    # Line 772
    nor	$v1,$a3,$zero
    # Line 773
    lbu	$v0,0($v0)
    # Line 772
    and	$ra,$ra,$v1
    # Line 774
    b	.L0d9e9550
    # Line 773
    sb	$v0,0($a2)
.L0d9e95dc:
    addu	$v1,$a6,$s1
    # Line 774
    addiu	$s0,$s0,1
    # Line 772
    nor	$a1,$a3,$zero
    # Line 773
    lbu	$v1,0($v1)
    # Line 772
    and	$ra,$ra,$a1
    # Line 774
    b	.L0d9e957c
    # Line 773
    sb	$v1,0($a2)
.L0d9e95f8:
    # Line 790
    beqz	$s0,.L0d9e9658
    nop
    # Line 794
    lw	$a1,30248($a0)
    ld	$s5,48($sp)
    ld	$s4,40($sp)
    beq	$a1,$s0,.L0d9e9638
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    # Line 802
    ld	$s1,0($sp)
    # Line 798
    li	$v0,1
    # Line 802
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e9630:
    b	.L0d9e94d4
    # Line 790
    sw	$ra,0($s3)
.L0d9e9638:
    # Line 801
    li	$v0,1
    sb	$v0,30476($a0)
    ld	$s0,24($sp)
    # Line 802
    ld	$s1,0($sp)
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e9658:
    ld	$s0,24($sp)
    ld	$s4,40($sp)
    ld	$s5,48($sp)
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    # Line 794
    move	$v0,$zero
    # Line 802
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glStencilTestLine

# Function: __glStencilTestStippledLine
# Declared: Line 808 (Source lines: 809-876)
# Address: 0x0d9e9680 - 0x0d9e9948 (Size: 712 bytes, Frame: 192)
.globl __glStencilTestStippledLine
.ent __glStencilTestStippledLine
__glStencilTestStippledLine:
    # Line 833
    lh	$t8,1672($a0)
    # Line 825
    lw	$a3,31108($a0)
    lw	$t1,29872($a0)
    lw	$t2,3664($a3)
    lw	$a7,31136($a0)
    # Line 831
    lw	$t9,31180($a0)
    # Line 809
    addiu	$sp,$sp,-64
    # Line 825
    subu	$t1,$t1,$t2
    # Line 809
    sd	$s2,8($sp)
    # Line 825
    mult	$a7,$t1
    # Line 832
    lw	$s2,31184($a0)
    # Line 809
    sd	$s4,16($sp)
    # Line 820
    lw	$s4,30472($a0)
    # Line 827
    lw	$t0,29884($a0)
    sd	$s5,56($sp)
    sd	$s1,48($sp)
    # Line 825
    mflo	$a5
    nop
    nop
    # Line 827
    mult	$t0,$a7
    sd	$s0,40($sp)
    sd	$s6,32($sp)
    sd	$ra,24($sp)
    # Line 828
    lw	$a6,29888($a0)
    # Line 809
    sd	$s3,0($sp)
    # Line 819
    lw	$at,30248($a0)
    # Line 827
    mflo	$t3
    nop
    nop
    # Line 828
    mult	$a6,$a7
    # Line 825
    lw	$a4,31124($a0)
    lw	$a2,29868($a0)
    lw	$a3,3660($a3)
    addu	$a4,$a4,$a5
    # Line 827
    lw	$t1,29876($a0)
    # Line 825
    addu	$a2,$a2,$a4
    # Line 819
    move	$s3,$at
    # Line 828
    lw	$t2,29880($a0)
    # Line 825
    subu	$a2,$a2,$a3
    # Line 830
    lw	$t0,29896($a0)
    # Line 827
    addu	$t1,$t1,$t3
    # Line 828
    mflo	$t3
    # Line 829
    lw	$a4,29892($a0)
    # Line 833
    beqz	$at,.L0d9e9904
    # Line 828
    addu	$t2,$t2,$t3
    # Line 833
    move	$ra,$zero
    li	$s0,-1
    li	$s6,32
    lui	$a5,0x7fff
    b	.L0d9e978c
    ori	$a5,$a5,0xffff
.L0d9e974c:
    # Line 854
    addiu	$ra,$ra,1
.L0d9e9750:
    # Line 864
    srl	$a3,$a3,0x1
    # Line 859
    addu	$v0,$t2,$a2
    # Line 856
    addu	$at,$a4,$t0
    # Line 861
    addu	$a2,$t1,$a2
    slti	$t3,$at,0
    # Line 858
    and	$a4,$at,$a5
    movn	$a2,$v0,$t3
    movz	$a4,$at,$t3
.L0d9e9770:
    sra	$v1,$s5,0x1
    bnez	$v1,.L0d9e9940
    # Line 845
    and	$v1,$a6,$a3
.L0d9e977c:
    # Line 869
    and	$a1,$a6,$s1
.L0d9e9780:
    sw	$a1,0($s4)
    beqz	$s3,.L0d9e98cc
    addiu	$s4,$s4,4
.L0d9e978c:
    # Line 837
    li	$a3,32
    move	$t3,$s3
    slt	$a3,$a3,$s3
    # Line 845
    li	$s1,-1
    # Line 837
    movn	$t3,$s6,$a3
    # Line 845
    lui	$a3,0x8000
    addiu	$a7,$t3,-1
    andi	$at,$t3,0x1
    move	$s5,$t3
    # Line 842
    lw	$a6,0($s4)
    # Line 845
    bltz	$a7,.L0d9e9930
    # Line 840
    subu	$s3,$s3,$t3
    beqz	$at,.L0d9e9770
    # Line 845
    li	$s1,-1
    and	$v0,$a6,$a3
    beqz	$v0,.L0d9e974c
    addiu	$a7,$a7,-1
    # Line 847
    lbu	$t3,0($a2)
    and	$v1,$t3,$t8
    addu	$v1,$t9,$v1
    lbu	$v1,0($v1)
    bnez	$v1,.L0d9e9750
    # Line 851
    addu	$a1,$t3,$s2
    # Line 852
    addiu	$ra,$ra,1
    # Line 850
    nor	$at,$a3,$zero
    # Line 851
    lbu	$a1,0($a1)
    # Line 850
    and	$s1,$s1,$at
    b	.L0d9e9750
    # Line 851
    sb	$a1,0($a2)
.L0d9e9800:
    # Line 854
    addiu	$ra,$ra,1
.L0d9e9804:
    # Line 859
    addu	$v1,$t2,$a2
.L0d9e9808:
    # Line 861
    addu	$a2,$t1,$a2
    # Line 856
    addu	$at,$a4,$t0
    # Line 864
    srl	$a3,$a3,0x1
    slti	$t3,$at,0
    # Line 845
    and	$v0,$a6,$a3
    addiu	$a7,$a7,-2
    movn	$a2,$v1,$t3
    # Line 858
    and	$a4,$at,$a5
    # Line 845
    beqz	$v0,.L0d9e98a8
    movz	$a4,$at,$t3
    # Line 847
    lbu	$t3,0($a2)
    and	$a1,$t3,$t8
    addu	$a1,$t9,$a1
    lbu	$a1,0($a1)
    beqz	$a1,.L0d9e98b0
.L0d9e9844:
    # Line 859
    addu	$v0,$t2,$a2
    # Line 861
    addu	$a2,$t1,$a2
    # Line 856
    addu	$at,$a4,$t0
    # Line 864
    srl	$a3,$a3,0x1
    slti	$t3,$at,0
    # Line 845
    and	$v1,$a6,$a3
    movn	$a2,$v0,$t3
    # Line 858
    and	$a4,$at,$a5
    # Line 845
    beq	$a7,$s0,.L0d9e977c
    movz	$a4,$at,$t3
.L0d9e986c:
    beqz	$v1,.L0d9e9800
    nop
    # Line 847
    lbu	$t3,0($a2)
    and	$a1,$t3,$t8
    addu	$a1,$t9,$a1
    lbu	$a1,0($a1)
    bnez	$a1,.L0d9e9808
    # Line 859
    addu	$v1,$t2,$a2
    # Line 851
    addu	$at,$t3,$s2
    # Line 852
    addiu	$ra,$ra,1
    # Line 850
    nor	$v0,$a3,$zero
    # Line 851
    lbu	$at,0($at)
    # Line 850
    and	$s1,$s1,$v0
    b	.L0d9e9804
    # Line 851
    sb	$at,0($a2)
.L0d9e98a8:
    b	.L0d9e9844
    # Line 854
    addiu	$ra,$ra,1
.L0d9e98b0:
    # Line 851
    addu	$v0,$t3,$s2
    # Line 852
    addiu	$ra,$ra,1
    # Line 850
    nor	$v1,$a3,$zero
    # Line 851
    lbu	$v0,0($v0)
    # Line 850
    and	$s1,$s1,$v1
    b	.L0d9e9844
    # Line 851
    sb	$v0,0($a2)
.L0d9e98cc:
    # Line 869
    lw	$v1,30248($a0)
    beq	$v1,$ra,.L0d9e9908
    ld	$s6,32($sp)
    ld	$s5,56($sp)
    ld	$s1,48($sp)
    ld	$s0,40($sp)
    ld	$s6,32($sp)
    ld	$ra,24($sp)
    # Line 876
    ld	$s2,8($sp)
    # Line 874
    move	$v0,$zero
    # Line 876
    ld	$s3,0($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e9904:
    ld	$s6,32($sp)
.L0d9e9908:
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s5,56($sp)
    ld	$ra,24($sp)
    ld	$s2,8($sp)
    li	$v0,1
    ld	$s3,0($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e9930:
    b	.L0d9e9780
    # Line 869
    and	$a1,$a6,$s1
    nop
    nop
.L0d9e9940:
    b	.L0d9e986c
    nop
.end __glStencilTestStippledLine

# Function: __glDepthTestStippledLine
# Declared: Line 965 (Source lines: 966-1040)
# Address: 0x0d9e9950 - 0x0d9e9c18 (Size: 712 bytes, Frame: 192)
.globl __glDepthTestStippledLine
.ent __glDepthTestStippledLine
__glDepthTestStippledLine:
    # Line 994
    lw	$a2,12024($a0)
    # Line 995
    lw	$t1,30204($a0)
    # Line 997
    lw	$t2,30328($a0)
    # Line 966
    addiu	$sp,$sp,-192
    # Line 997
    sd	$t2,32($sp)
    # Line 995
    sd	$t1,56($sp)
    # Line 979
    lw	$at,30248($a0)
    sd	$at,72($sp)
    sd	$s8,176($sp)
    sd	$s1,168($sp)
    sd	$s0,160($sp)
    sd	$s7,152($sp)
    sd	$ra,144($sp)
    sd	$s4,136($sp)
    # Line 985
    lw	$t3,29872($a0)
    # Line 966
    sd	$s5,16($sp)
    # Line 985
    lw	$s5,31228($a0)
    # Line 966
    sd	$s2,24($sp)
    # Line 985
    lw	$s2,3664($s5)
    lw	$a3,31256($a0)
    sd	$s6,128($sp)
    subu	$t3,$t3,$s2
    sd	$s3,120($sp)
    mult	$a3,$t3
    sd	$gp,8($sp)
    # Line 993
    lw	$a7,31308($a0)
    sd	$a7,40($sp)
    # Line 987
    lw	$t0,29884($a0)
    # Line 980
    lw	$a7,30472($a0)
    sd	$a7,64($sp)
    # Line 985
    mflo	$v1
    nop
    nop
    # Line 987
    mult	$t0,$a3
    # Line 985
    lw	$v0,29868($a0)
    # Line 996
    lw	$a4,30324($a0)
    # Line 992
    lw	$a6,31316($a0)
    # Line 988
    lw	$a1,29888($a0)
    # Line 992
    sd	$a6,48($sp)
    # Line 996
    srav	$a4,$a4,$a6
    # Line 985
    lw	$s2,31244($a0)
    # Line 987
    mflo	$a6
    nop
    nop
    # Line 988
    mult	$a1,$a3
    # Line 966
    lui	$t8,0x6
    # Line 985
    lw	$s5,3660($s5)
    sll	$v1,$v1,0x2
    sll	$v0,$v0,0x2
    # Line 996
    sd	$a4,112($sp)
    # Line 985
    addu	$s2,$s2,$v1
    # Line 987
    lw	$a4,29876($a0)
    # Line 985
    sll	$s5,$s5,0x2
    addu	$s2,$s2,$v0
    # Line 966
    addiu	$t8,$t8,29756
    # Line 985
    subu	$s2,$s2,$s5
    # Line 989
    lw	$s5,29892($a0)
    # Line 966
    move	$a5,$a0
    addu	$gp,$t9,$t8
    # Line 988
    lw	$a3,29880($a0)
    # Line 990
    lw	$a1,29896($a0)
    # Line 987
    addu	$a4,$a4,$a6
    # Line 988
    mflo	$a6
    # Line 990
    sd	$a1,104($sp)
    # Line 997
    beqz	$at,.L0d9e9bcc
    # Line 988
    addu	$a3,$a3,$a6
    # Line 997
    sll	$t9,$a3,0x2
    sd	$t9,96($sp)
    li	$a0,-1
    sll	$t8,$a4,0x2
    sd	$t8,88($sp)
    move	$s4,$zero
    sd	$a5,0($sp)
    lui	$s6,0x7fff
    sd	$a2,80($sp)
    b	.L0d9e9c0c
    ori	$s6,$s6,0xffff
    nop
    nop
    nop
.L0d9e9a90:
    # Line 1032
    ld	$at,64($sp)
.L0d9e9a94:
    # Line 1033
    ld	$v1,56($sp)
    ld	$a1,32($sp)
    ld	$ra,72($sp)
    addu	$v1,$a1,$v1
    sd	$v1,56($sp)
    # Line 1010
    lui	$s0,0x8000
    # Line 1032
    and	$v0,$s8,$s7
    sw	$v0,0($at)
    addiu	$at,$at,4
    # Line 1033
    beqz	$ra,.L0d9e9b88
    sd	$at,64($sp)
    # Line 1001
    ld	$a3,72($sp)
.L0d9e9ac4:
    # Line 1006
    ld	$s1,40($sp)
    # Line 1001
    li	$ra,32
    li	$s8,32
    # Line 1006
    ld	$t9,48($sp)
    # Line 1001
    move	$a2,$a3
    slt	$s8,$s8,$a3
    # Line 1006
    ld	$t8,56($sp)
    # Line 1001
    movn	$a2,$ra,$s8
    # Line 1010
    li	$s7,-1
    # Line 1007
    ld	$s8,64($sp)
    # Line 1010
    addiu	$s3,$a2,-1
    # Line 1006
    srlv	$t8,$t8,$t9
    # Line 1004
    subu	$a3,$a3,$a2
    sd	$a3,72($sp)
    # Line 1006
    addu	$s1,$s1,$t8
    # Line 1010
    bltz	$s3,.L0d9e9c04
    # Line 1007
    lw	$s8,0($s8)
    b	.L0d9e9b74
    # Line 1010
    li	$s7,-1
.L0d9e9b10:
    # Line 1012
    move	$a0,$s1
    lw	$a1,0($s2)
    jalr	$t9
    move	$a2,$s2
    # Line 1014
    addiu	$at,$s4,1
    # Line 1013
    nor	$ra,$s0,$zero
    movz	$s4,$at,$v0
    and	$ra,$s7,$ra
    li	$a0,-1
    movz	$s7,$ra,$v0
.L0d9e9b38:
    # Line 1022
    ld	$a1,96($sp)
    # Line 1019
    ld	$v1,104($sp)
    # Line 1027
    srl	$s0,$s0,0x1
    # Line 1010
    addiu	$s3,$s3,-1
    # Line 1024
    ld	$a3,88($sp)
    # Line 1017
    ld	$a2,112($sp)
    # Line 1022
    addu	$a1,$a1,$s2
    # Line 1019
    addu	$v1,$s5,$v1
    # Line 1024
    addu	$s2,$a3,$s2
    slti	$v0,$v1,0
    # Line 1017
    addu	$s1,$a2,$s1
    movn	$s2,$a1,$v0
    # Line 1021
    and	$s5,$v1,$s6
    # Line 1010
    beq	$s3,$a0,.L0d9e9a90
    movz	$s5,$v1,$v0
.L0d9e9b74:
    and	$a2,$s8,$s0
    bnez	$a2,.L0d9e9b10
    # Line 1012
    ld	$t9,80($sp)
    b	.L0d9e9b38
    # Line 1016
    addiu	$s4,$s4,1
.L0d9e9b88:
    # Line 1033
    ld	$a3,0($sp)
    lw	$a3,30248($a3)
    beq	$a3,$s4,.L0d9e9bcc
    ld	$s8,176($sp)
    ld	$s1,168($sp)
    ld	$s0,160($sp)
    ld	$s7,152($sp)
    ld	$s4,136($sp)
    ld	$s6,128($sp)
    ld	$s3,120($sp)
    ld	$ra,144($sp)
    # Line 1040
    ld	$gp,8($sp)
    # Line 1038
    move	$v0,$zero
    # Line 1040
    ld	$s2,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9e9bcc:
    ld	$s3,120($sp)
    ld	$s6,128($sp)
    ld	$s4,136($sp)
    ld	$s7,152($sp)
    ld	$s0,160($sp)
    ld	$s1,168($sp)
    ld	$s8,176($sp)
    ld	$ra,144($sp)
    ld	$gp,8($sp)
    li	$v0,1
    ld	$s2,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9e9c04:
    b	.L0d9e9a94
    # Line 1032
    ld	$at,64($sp)
.L0d9e9c0c:
    # Line 1010
    lui	$s0,0x8000
    b	.L0d9e9ac4
    # Line 1001
    ld	$a3,72($sp)
.end __glDepthTestStippledLine

# Function: __glDepthTestStencilLine
# Declared: Line 1043 (Source lines: 1044-1138)
# Address: 0x0d9e9c20 - 0x0d9e9f98 (Size: 888 bytes, Frame: 224)
.globl __glDepthTestStencilLine
.ent __glDepthTestStencilLine
__glDepthTestStencilLine:
    # Line 1044
    addiu	$sp,$sp,-224
    sd	$s8,24($sp)
    sd	$s7,16($sp)
    # Line 1065
    lw	$at,31228($a0)
    lw	$s7,29872($a0)
    lw	$v0,3664($at)
    lw	$s8,31256($a0)
    # Line 1080
    lw	$t1,31192($a0)
    # Line 1065
    subu	$v0,$s7,$v0
    # Line 1082
    lw	$t2,31308($a0)
    # Line 1065
    mult	$s8,$v0
    # Line 1084
    lw	$t3,30204($a0)
    sd	$t3,88($sp)
    # Line 1082
    sd	$t2,72($sp)
    # Line 1064
    lw	$t0,29884($a0)
    # Line 1080
    sd	$t1,128($sp)
    # Line 1085
    lw	$a6,30324($a0)
    # Line 1065
    mflo	$a3
    nop
    nop
    # Line 1067
    mult	$s8,$t0
    # Line 1081
    lw	$a7,31316($a0)
    sd	$a7,64($sp)
    # Line 1085
    srav	$a6,$a6,$a7
    sd	$a6,168($sp)
    # Line 1062
    lw	$a1,29888($a0)
    # Line 1079
    lw	$a6,31188($a0)
    # Line 1044
    sd	$s5,40($sp)
    # Line 1067
    mflo	$a4
    nop
    nop
    # Line 1068
    mult	$s8,$a1
    # Line 1072
    lw	$s5,31108($a0)
    # Line 1079
    sd	$a6,104($sp)
    # Line 1072
    lw	$t8,3664($s5)
    lw	$v1,31136($a0)
    lw	$s5,3660($s5)
    subu	$s7,$s7,$t8
    # Line 1065
    lw	$at,3660($at)
    # Line 1068
    mflo	$a2
    nop
    nop
    # Line 1072
    mult	$v1,$s7
    # Line 1044
    sd	$s2,8($sp)
    # Line 1087
    lw	$s2,30472($a0)
    # Line 1044
    sd	$s0,32($sp)
    # Line 1086
    lw	$s0,30328($a0)
    sd	$s0,56($sp)
    # Line 1065
    lw	$s0,29868($a0)
    # Line 1072
    mflo	$t8
    nop
    nop
    # Line 1074
    mult	$v1,$t0
    # Line 1087
    sd	$s2,80($sp)
    # Line 1044
    lui	$a5,0x6
    # Line 1065
    lw	$s2,31244($a0)
    # Line 1044
    addiu	$a5,$a5,29036
    sd	$gp,48($sp)
    addu	$gp,$t9,$a5
    # Line 1065
    sll	$t9,$a3,0x2
    # Line 1063
    lw	$a3,29876($a0)
    # Line 1065
    addu	$s2,$s2,$t9
    sll	$t9,$s0,0x2
    addu	$s2,$s2,$t9
    sll	$t9,$at,0x2
    # Line 1059
    lw	$at,30248($a0)
    # Line 1072
    lw	$s7,31124($a0)
    # Line 1074
    mflo	$a5
    nop
    nop
    # Line 1075
    mult	$v1,$a1
    # Line 1059
    sd	$at,96($sp)
    # Line 1083
    lw	$s8,12024($a0)
    # Line 1072
    addu	$s7,$s7,$t8
    # Line 1044
    move	$v0,$a0
    # Line 1072
    addu	$s0,$s0,$s7
    # Line 1077
    lw	$s7,29896($a0)
    # Line 1065
    subu	$s2,$s2,$t9
    # Line 1067
    addu	$a4,$a3,$a4
    # Line 1061
    lw	$v1,29880($a0)
    # Line 1072
    subu	$s0,$s0,$s5
    # Line 1076
    lw	$s5,29892($a0)
    # Line 1074
    addu	$a3,$a3,$a5
    sd	$a3,160($sp)
    # Line 1068
    addu	$a2,$v1,$a2
    # Line 1075
    mflo	$a1
    addu	$v1,$v1,$a1
    # Line 1087
    beqz	$at,.L0d9e9f70
    sd	$v1,152($sp)
    sd	$s1,176($sp)
    sd	$ra,184($sp)
    sd	$s4,192($sp)
    sd	$s3,208($sp)
    sd	$zero,112($sp)
    sll	$t9,$a2,0x2
    sd	$t9,136($sp)
    sll	$t8,$a4,0x2
    sd	$t8,144($sp)
    sd	$s6,200($sp)
    lui	$s6,0x7fff
    sd	$v0,0($sp)
    b	.L0d9e9f8c
    ori	$s6,$s6,0xffff
    nop
.L0d9e9dc0:
    # Line 1124
    ld	$v0,120($sp)
    ld	$at,80($sp)
    # Line 1125
    ld	$v1,88($sp)
    ld	$a1,56($sp)
    ld	$ra,96($sp)
    addu	$v1,$a1,$v1
    sd	$v1,88($sp)
    # Line 1099
    lui	$s3,0x8000
    # Line 1124
    sw	$v0,0($at)
    addiu	$at,$at,4
    # Line 1125
    beqz	$ra,.L0d9e9ef4
    sd	$at,80($sp)
    # Line 1091
    ld	$a2,96($sp)
.L0d9e9df4:
    # Line 1096
    ld	$t9,64($sp)
    # Line 1091
    li	$at,32
    li	$ra,32
    # Line 1096
    ld	$t8,88($sp)
    # Line 1091
    move	$v0,$a2
    slt	$ra,$ra,$a2
    # Line 1099
    li	$a5,-1
    # Line 1096
    ld	$s1,72($sp)
    # Line 1091
    movn	$v0,$at,$ra
    # Line 1096
    srlv	$t8,$t8,$t9
    # Line 1099
    addiu	$s4,$v0,-1
    # Line 1096
    addu	$s1,$s1,$t8
    # Line 1099
    li	$at,-1
    # Line 1094
    subu	$a2,$a2,$v0
    # Line 1099
    bltz	$s4,.L0d9e9eec
    sd	$a2,96($sp)
    b	.L0d9e9e9c
    sd	$at,120($sp)
    nop
.L0d9e9e40:
    # Line 1101
    ld	$v0,128($sp)
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0d9e9e50:
    # Line 1099
    addiu	$s4,$s4,-1
    # Line 1119
    srl	$s3,$s3,0x1
    # Line 1109
    addu	$a1,$s5,$s7
    # Line 1115
    ld	$a4,144($sp)
    # Line 1111
    and	$s5,$a1,$s6
    slti	$v1,$a1,0
    # Line 1112
    ld	$a3,136($sp)
    movz	$s5,$a1,$v1
    # Line 1113
    ld	$a2,152($sp)
    # Line 1112
    addu	$a3,$a3,$s2
    # Line 1115
    addu	$s2,$a4,$s2
    # Line 1116
    ld	$a4,160($sp)
    movn	$s2,$a3,$v1
    # Line 1107
    ld	$a3,168($sp)
    # Line 1113
    addu	$a2,$a2,$s0
    # Line 1116
    addu	$s0,$a4,$s0
    # Line 1107
    addu	$s1,$a3,$s1
    # Line 1099
    beq	$s4,$a0,.L0d9e9dc0
    movn	$s0,$a2,$v1
.L0d9e9e9c:
    # Line 1100
    move	$t9,$s8
    move	$a0,$s1
    lw	$a1,0($s2)
    jalr	$t9
    move	$a2,$s2
    li	$a0,-1
    bnez	$v0,.L0d9e9e40
    lbu	$a2,0($s0)
    # Line 1105
    ld	$a5,112($sp)
    # Line 1103
    ld	$a4,104($sp)
    # Line 1105
    addiu	$a5,$a5,1
    sd	$a5,112($sp)
    # Line 1104
    ld	$a5,120($sp)
    # Line 1103
    addu	$a4,$a2,$a4
    # Line 1104
    nor	$a6,$s3,$zero
    # Line 1103
    lbu	$a4,0($a4)
    # Line 1104
    and	$a5,$a5,$a6
    sd	$a5,120($sp)
    b	.L0d9e9e50
    # Line 1103
    sb	$a4,0($s0)
.L0d9e9eec:
    b	.L0d9e9dc0
    sd	$a5,120($sp)
.L0d9e9ef4:
    ld	$s3,208($sp)
    ld	$s6,200($sp)
    # Line 1125
    ld	$a6,112($sp)
    ld	$s4,192($sp)
    ld	$ra,184($sp)
    beqz	$a6,.L0d9e9f70
    ld	$s1,176($sp)
    ld	$s2,8($sp)
    ld	$s7,16($sp)
    # Line 1130
    ld	$a7,0($sp)
    ld	$t0,112($sp)
    lw	$a7,30248($a7)
    move	$s3,$s3
    move	$s6,$s6
    ld	$s8,24($sp)
    move	$s4,$s4
    move	$ra,$ra
    ld	$s0,32($sp)
    move	$s1,$s1
    beq	$a7,$t0,.L0d9e9f58
    ld	$s5,40($sp)
    # Line 1134
    li	$v0,1
.L0d9e9f4c:
    # Line 1138
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9e9f58:
    # Line 1137
    ld	$v1,0($sp)
    # Line 1138
    ld	$gp,48($sp)
    addiu	$sp,$sp,224
    # Line 1137
    li	$v0,1
    # Line 1138
    jr	$ra
    # Line 1137
    sb	$v0,30476($v1)
.L0d9e9f70:
    ld	$s2,8($sp)
    ld	$s7,16($sp)
    ld	$s8,24($sp)
    ld	$s0,32($sp)
    ld	$s5,40($sp)
    # Line 1130
    b	.L0d9e9f4c
    move	$v0,$zero
.L0d9e9f8c:
    # Line 1099
    lui	$s3,0x8000
    b	.L0d9e9df4
    # Line 1091
    ld	$a2,96($sp)
.end __glDepthTestStencilLine

# Function: __glDepthTestStencilStippledLine
# Declared: Line 1141 (Source lines: 1142-1234)
# Address: 0x0d9e9fa0 - 0x0d9ea33c (Size: 924 bytes, Frame: 224)
.globl __glDepthTestStencilStippledLine
.ent __glDepthTestStencilStippledLine
__glDepthTestStencilStippledLine:
    # Line 1178
    lw	$t2,31316($a0)
    # Line 1142
    addiu	$sp,$sp,-224
    # Line 1178
    sd	$t2,64($sp)
    sd	$s1,216($sp)
    sd	$s7,208($sp)
    sd	$ra,200($sp)
    sd	$s4,192($sp)
    sd	$s6,184($sp)
    # Line 1164
    lw	$v0,31228($a0)
    lw	$at,29872($a0)
    lw	$a4,3664($v0)
    lw	$a3,31256($a0)
    # Line 1184
    lw	$t1,30324($a0)
    # Line 1164
    subu	$a4,$at,$a4
    sd	$s2,176($sp)
    mult	$a3,$a4
    # Line 1184
    srav	$t1,$t1,$t2
    sd	$t1,168($sp)
    # Line 1142
    lui	$a7,0x6
    sd	$gp,8($sp)
    addiu	$a7,$a7,28140
    addu	$gp,$t9,$a7
    # Line 1179
    lw	$a7,31308($a0)
    # Line 1163
    lw	$t3,29884($a0)
    # Line 1179
    sd	$a7,56($sp)
    # Line 1176
    lw	$a7,29896($a0)
    # Line 1164
    mflo	$a6
    nop
    nop
    # Line 1166
    mult	$a3,$t3
    # Line 1176
    sd	$a7,160($sp)
    # Line 1183
    lw	$t8,30204($a0)
    sd	$t8,72($sp)
    # Line 1161
    lw	$a1,29888($a0)
    # Line 1171
    lw	$t8,31124($a0)
    # Line 1142
    sd	$s5,16($sp)
    # Line 1166
    mflo	$a4
    nop
    nop
    # Line 1167
    mult	$a3,$a1
    # Line 1171
    lw	$s5,31108($a0)
    # Line 1164
    lw	$v0,3660($v0)
    # Line 1171
    lw	$a2,3664($s5)
    lw	$v1,31136($a0)
    lw	$s5,3660($s5)
    subu	$at,$at,$a2
    # Line 1180
    lw	$a2,12024($a0)
    # Line 1167
    mflo	$a3
    nop
    nop
    # Line 1171
    mult	$v1,$at
    # Line 1142
    sd	$s3,40($sp)
    # Line 1182
    lw	$s3,31192($a0)
    # Line 1142
    sd	$s0,24($sp)
    sd	$s8,32($sp)
    # Line 1185
    lw	$s8,30328($a0)
    sd	$s8,48($sp)
    # Line 1171
    mflo	$s8
    nop
    nop
    # Line 1173
    mult	$v1,$t3
    # Line 1181
    lw	$s0,31188($a0)
    sd	$s0,96($sp)
    # Line 1164
    lw	$s0,29868($a0)
    # Line 1182
    sd	$s3,112($sp)
    # Line 1142
    move	$a5,$a0
    # Line 1164
    lw	$s3,31244($a0)
    sll	$t9,$a6,0x2
    # Line 1157
    lw	$at,30248($a0)
    # Line 1173
    mflo	$a6
    nop
    nop
    # Line 1174
    mult	$v1,$a1
    # Line 1164
    addu	$s3,$s3,$t9
    sll	$t9,$s0,0x2
    # Line 1157
    sd	$at,88($sp)
    # Line 1164
    addu	$s3,$s3,$t9
    # Line 1171
    addu	$t8,$t8,$s8
    # Line 1160
    lw	$s8,29880($a0)
    # Line 1164
    sll	$t9,$v0,0x2
    # Line 1171
    addu	$s0,$s0,$t8
    # Line 1162
    lw	$a1,29876($a0)
    # Line 1164
    subu	$s3,$s3,$t9
    # Line 1171
    subu	$s0,$s0,$s5
    # Line 1175
    lw	$s5,29892($a0)
    # Line 1167
    addu	$a3,$s8,$a3
    # Line 1158
    lw	$v1,30472($a0)
    # Line 1166
    addu	$a4,$a1,$a4
    # Line 1158
    sd	$v1,80($sp)
    # Line 1173
    addu	$a1,$a1,$a6
    # Line 1174
    mflo	$v0
    # Line 1173
    sd	$a1,152($sp)
    # Line 1185
    beqz	$at,.L0d9ea2f0
    # Line 1174
    addu	$s8,$s8,$v0
    # Line 1185
    sd	$zero,128($sp)
    sll	$t9,$a3,0x2
    sd	$t9,136($sp)
    sll	$t8,$a4,0x2
    sd	$t8,144($sp)
    li	$a0,-1
    sd	$a5,0($sp)
    lui	$s6,0x7fff
    sd	$a2,120($sp)
    b	.L0d9ea330
    ori	$s6,$s6,0xffff
    nop
    nop
    nop
.L0d9ea150:
    # Line 1225
    ld	$at,80($sp)
    ld	$v0,104($sp)
    # Line 1226
    ld	$v1,72($sp)
    ld	$a1,48($sp)
    ld	$ra,88($sp)
    addu	$v1,$a1,$v1
    sd	$v1,72($sp)
    # Line 1198
    lui	$s1,0x8000
    # Line 1225
    and	$v0,$s7,$v0
    sw	$v0,0($at)
    addiu	$at,$at,4
    # Line 1226
    beqz	$ra,.L0d9ea2a4
    sd	$at,80($sp)
    # Line 1194
    ld	$t8,64($sp)
.L0d9ea188:
    ld	$s7,72($sp)
    # Line 1189
    li	$ra,32
    ld	$a3,88($sp)
    li	$t9,32
    # Line 1194
    srlv	$s7,$s7,$t8
    ld	$s2,56($sp)
    # Line 1189
    move	$a2,$a3
    slt	$t9,$t9,$a3
    movn	$a2,$ra,$t9
    # Line 1194
    addu	$s2,$s2,$s7
    # Line 1195
    ld	$s7,80($sp)
    # Line 1198
    addiu	$s4,$a2,-1
    li	$t1,-1
    # Line 1192
    subu	$a3,$a3,$a2
    sd	$a3,88($sp)
    # Line 1198
    li	$ra,-1
    bltz	$s4,.L0d9ea328
    # Line 1195
    lw	$s7,0($s7)
    b	.L0d9ea25c
    # Line 1198
    sd	$ra,104($sp)
    nop
    nop
.L0d9ea1e0:
    # Line 1200
    ld	$t9,120($sp)
    move	$a0,$s2
    lw	$a1,0($s3)
    jalr	$t9
    move	$a2,$s3
    li	$a0,-1
    beqz	$v0,.L0d9ea274
    lbu	$a2,0($s0)
    # Line 1201
    ld	$at,112($sp)
    addu	$at,$a2,$at
    lbu	$at,0($at)
    sb	$at,0($s0)
.L0d9ea210:
    # Line 1213
    ld	$a4,136($sp)
    # Line 1220
    srl	$s1,$s1,0x1
    # Line 1210
    ld	$v1,160($sp)
    # Line 1214
    addu	$a1,$s8,$s0
    # Line 1198
    addiu	$s4,$s4,-1
    # Line 1216
    ld	$a5,144($sp)
    # Line 1217
    ld	$a3,152($sp)
    # Line 1213
    addu	$a4,$a4,$s3
    # Line 1210
    addu	$v1,$s5,$v1
    # Line 1208
    ld	$a2,168($sp)
    # Line 1216
    addu	$s3,$a5,$s3
    slti	$v0,$v1,0
    # Line 1217
    addu	$s0,$a3,$s0
    movn	$s3,$a4,$v0
    # Line 1208
    addu	$s2,$a2,$s2
    movn	$s0,$a1,$v0
    # Line 1212
    and	$s5,$v1,$s6
    # Line 1198
    beq	$s4,$a0,.L0d9ea150
    movz	$s5,$v1,$v0
.L0d9ea25c:
    and	$a5,$s7,$s1
    ld	$a6,128($sp)
    bnez	$a5,.L0d9ea1e0
    # Line 1207
    addiu	$a6,$a6,1
    b	.L0d9ea210
    sd	$a6,128($sp)
.L0d9ea274:
    # Line 1205
    ld	$t0,128($sp)
    # Line 1203
    ld	$a7,96($sp)
    # Line 1205
    addiu	$t0,$t0,1
    sd	$t0,128($sp)
    # Line 1204
    ld	$t0,104($sp)
    # Line 1203
    addu	$a7,$a2,$a7
    # Line 1204
    nor	$t1,$s1,$zero
    # Line 1203
    lbu	$a7,0($a7)
    # Line 1204
    and	$t0,$t0,$t1
    sd	$t0,104($sp)
    b	.L0d9ea210
    # Line 1203
    sb	$a7,0($s0)
.L0d9ea2a4:
    # Line 1226
    ld	$t0,0($sp)
    ld	$t1,128($sp)
    lw	$t0,30248($t0)
    beq	$t0,$t1,.L0d9ea2f4
    ld	$s2,176($sp)
    ld	$s1,216($sp)
    ld	$s7,208($sp)
    ld	$s4,192($sp)
    ld	$s6,184($sp)
    ld	$s2,176($sp)
    # Line 1234
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$ra,200($sp)
    ld	$s3,40($sp)
    # Line 1231
    move	$v0,$zero
    # Line 1234
    ld	$s5,16($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9ea2f0:
    ld	$s2,176($sp)
.L0d9ea2f4:
    ld	$s6,184($sp)
    ld	$s4,192($sp)
    ld	$s7,208($sp)
    ld	$s1,216($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$ra,200($sp)
    ld	$s3,40($sp)
    li	$v0,1
    ld	$s5,16($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9ea328:
    b	.L0d9ea150
    sd	$t1,104($sp)
.L0d9ea330:
    # Line 1198
    lui	$s1,0x8000
    b	.L0d9ea188
    # Line 1194
    ld	$t8,64($sp)
.end __glDepthTestStencilStippledLine

# Function: __glDepthPassLine
# Declared: Line 1237 (Source lines: 1251-1270)
# Address: 0x0d9ea340 - 0x0d9ea4e0 (Size: 416 bytes, Frame: 0)
.globl __glDepthPassLine
.ent __glDepthPassLine
__glDepthPassLine:
    # Line 1251
    lw	$a3,31108($a0)
    lw	$t2,29872($a0)
    lw	$t3,3664($a3)
    lw	$t0,31136($a0)
    subu	$t2,$t2,$t3
    mult	$t0,$t2
    # Line 1253
    lw	$t1,29884($a0)
    # Line 1251
    mflo	$a6
    nop
    nop
    # Line 1253
    mult	$t1,$t0
    # Line 1254
    lw	$a7,29888($a0)
    # Line 1258
    lw	$a5,31192($a0)
    # Line 1251
    lw	$a2,29868($a0)
    # Line 1253
    mflo	$t1
    nop
    nop
    # Line 1254
    mult	$a7,$t0
    # Line 1251
    lw	$a4,31124($a0)
    lw	$a3,3660($a3)
    # Line 1259
    lw	$t3,30248($a0)
    # Line 1251
    addu	$a4,$a4,$a6
    addu	$a2,$a2,$a4
    # Line 1253
    lw	$t0,29876($a0)
    # Line 1259
    addiu	$t2,$t3,-1
    # Line 1254
    lw	$a6,29880($a0)
    # Line 1251
    subu	$a2,$a2,$a3
    # Line 1255
    lw	$a3,29892($a0)
    # Line 1253
    addu	$t0,$t0,$t1
    # Line 1254
    mflo	$t1
    # Line 1256
    lw	$a7,29896($a0)
    # Line 1259
    bltz	$t2,.L0d9ea4d8
    # Line 1254
    addu	$a6,$a6,$t1
    andi	$a1,$t3,0x3
    # Line 1259
    li	$t1,-1
    lui	$a4,0x7fff
    beqz	$a1,.L0d9ea410
    ori	$a4,$a4,0xffff
.L0d9ea3d8:
    addiu	$t2,$t2,-1
    # Line 1261
    addu	$v0,$a3,$a7
    # Line 1260
    lbu	$at,0($a2)
    addiu	$a1,$a1,-1
    # Line 1263
    and	$a3,$v0,$a4
    slti	$t8,$v0,0
    # Line 1260
    addu	$at,$at,$a5
    movz	$a3,$v0,$t8
    # Line 1264
    addu	$t9,$a6,$a2
    # Line 1260
    lbu	$at,0($at)
    sb	$at,0($a2)
    # Line 1266
    addu	$a2,$t0,$a2
    bnez	$a1,.L0d9ea3d8
    movn	$a2,$t9,$t8
.L0d9ea410:
    sra	$v0,$t3,0x2
    beqz	$v0,.L0d9ea4d8
    move	$a1,$t2
    nop
.L0d9ea420:
    # Line 1261
    addu	$t8,$a3,$a7
    # Line 1260
    lbu	$t2,0($a2)
    # Line 1263
    and	$a3,$t8,$a4
    slti	$t3,$t8,0
    movz	$a3,$t8,$t3
    # Line 1260
    addu	$t2,$t2,$a5
    # Line 1266
    addu	$t8,$t0,$a2
    # Line 1264
    addu	$v1,$a6,$a2
    # Line 1260
    lbu	$t2,0($t2)
    movz	$v1,$t8,$t3
    sb	$t2,0($a2)
    # Line 1261
    addu	$a2,$a3,$a7
    # Line 1260
    lbu	$v0,0($v1)
    # Line 1263
    and	$at,$a2,$a4
    slti	$a0,$a2,0
    movz	$at,$a2,$a0
    # Line 1260
    addu	$v0,$v0,$a5
    # Line 1266
    addu	$a2,$t0,$v1
    # Line 1264
    addu	$t8,$a6,$v1
    # Line 1260
    lbu	$v0,0($v0)
    # Line 1261
    addu	$at,$at,$a7
    movz	$t8,$a2,$a0
    # Line 1260
    sb	$v0,0($v1)
    # Line 1263
    and	$t3,$at,$a4
    slti	$t9,$at,0
    # Line 1260
    lbu	$t2,0($t8)
    movz	$t3,$at,$t9
    # Line 1266
    addu	$at,$t0,$t8
    # Line 1264
    addu	$a0,$a6,$t8
    # Line 1260
    addu	$t2,$t2,$a5
    movz	$a0,$at,$t9
    lbu	$t2,0($t2)
    # Line 1266
    addu	$a3,$t0,$a0
    # Line 1261
    addu	$t3,$t3,$a7
    # Line 1260
    sb	$t2,0($t8)
    # Line 1264
    addu	$a2,$a6,$a0
    slti	$t2,$t3,0
    # Line 1260
    lbu	$v1,0($a0)
    # Line 1259
    addiu	$a1,$a1,-4
    movz	$a2,$a3,$t2
    # Line 1263
    and	$a3,$t3,$a4
    # Line 1260
    addu	$v1,$v1,$a5
    movz	$a3,$t3,$t2
    lbu	$v1,0($v1)
    # Line 1259
    bne	$a1,$t1,.L0d9ea420
    # Line 1260
    sb	$v1,0($a0)
.L0d9ea4d8:
    # Line 1270
    jr	$ra
    move	$v0,$zero
.end __glDepthPassLine

# Function: __glDepthPassStippledLine
# Declared: Line 1273 (Source lines: 1274-1325)
# Address: 0x0d9ea4e0 - 0x0d9ea6a8 (Size: 456 bytes, Frame: 16)
.globl __glDepthPassStippledLine
.ent __glDepthPassStippledLine
__glDepthPassStippledLine:
    # Line 1290
    lw	$a3,31108($a0)
    lw	$t1,29872($a0)
    lw	$t2,3664($a3)
    lw	$a7,31136($a0)
    subu	$t1,$t1,$t2
    mult	$a7,$t1
    # Line 1292
    lw	$t0,29884($a0)
    # Line 1290
    mflo	$a5
    nop
    nop
    # Line 1292
    mult	$t0,$a7
    # Line 1284
    lw	$t9,30472($a0)
    # Line 1274
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    # Line 1293
    lw	$a6,29888($a0)
    # Line 1283
    lw	$t8,30248($a0)
    # Line 1290
    lw	$a2,29868($a0)
    # Line 1292
    mflo	$t3
    nop
    nop
    # Line 1293
    mult	$a6,$a7
    # Line 1290
    lw	$a4,31124($a0)
    lw	$a3,3660($a3)
    # Line 1296
    lw	$t2,31192($a0)
    # Line 1290
    addu	$a4,$a4,$a5
    # Line 1292
    lw	$t1,29876($a0)
    # Line 1290
    addu	$a2,$a2,$a4
    subu	$a2,$a2,$a3
    # Line 1293
    lw	$a7,29880($a0)
    # Line 1295
    lw	$t0,29896($a0)
    # Line 1292
    addu	$t1,$t1,$t3
    # Line 1293
    mflo	$t3
    # Line 1294
    lw	$a3,29892($a0)
    # Line 1296
    beqz	$t8,.L0d9ea694
    # Line 1293
    addu	$a7,$a7,$t3
    # Line 1296
    li	$t3,-1
    li	$s0,32
    lui	$a4,0x7fff
    b	.L0d9ea640
    ori	$a4,$a4,0xffff
.L0d9ea584:
    # Line 1308
    lbu	$at,0($a2)
    addu	$at,$at,$t2
    lbu	$at,0($at)
    sb	$at,0($a2)
.L0d9ea594:
    # Line 1306
    addiu	$a5,$a5,-1
    movz	$a3,$v1,$v0
    # Line 1313
    addu	$a0,$a7,$a2
    # Line 1315
    addu	$a2,$t1,$a2
    movn	$a2,$a0,$v0
    sra	$at,$ra,0x1
.L0d9ea5ac:
    # Line 1306
    and	$v0,$a6,$a1
    beqz	$at,.L0d9ea638
    # Line 1318
    srl	$a1,$a1,0x1
    nop
    nop
.L0d9ea5c0:
    # Line 1306
    beqz	$v0,.L0d9ea5d8
    addiu	$a5,$a5,-2
    # Line 1308
    lbu	$v1,0($a2)
    addu	$v1,$v1,$t2
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L0d9ea5d8:
    # Line 1310
    addu	$ra,$a3,$t0
    # Line 1306
    and	$at,$a6,$a1
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1313
    addu	$v0,$a7,$a2
    # Line 1315
    addu	$a2,$t1,$a2
    slti	$a0,$ra,0
    movn	$a2,$v0,$a0
    # Line 1312
    and	$a3,$ra,$a4
    # Line 1306
    beqz	$at,.L0d9ea610
    movz	$a3,$ra,$a0
    # Line 1308
    lbu	$v1,0($a2)
    addu	$v1,$v1,$t2
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L0d9ea610:
    # Line 1306
    and	$v0,$a6,$a1
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1313
    addu	$at,$a7,$a2
    # Line 1310
    addu	$ra,$a3,$t0
    # Line 1315
    addu	$a2,$t1,$a2
    slti	$a0,$ra,0
    movn	$a2,$at,$a0
    # Line 1312
    and	$a3,$ra,$a4
    # Line 1306
    bne	$a5,$t3,.L0d9ea5c0
    movz	$a3,$ra,$a0
.L0d9ea638:
    beqz	$t8,.L0d9ea698
    # Line 1325
    ld	$ra,8($sp)
.L0d9ea640:
    # Line 1306
    lui	$a1,0x8000
    # Line 1299
    li	$v0,32
    move	$ra,$t8
    slt	$v0,$v0,$t8
    movn	$ra,$s0,$v0
    # Line 1306
    addiu	$a5,$ra,-1
    # Line 1304
    addiu	$t9,$t9,4
    andi	$v1,$ra,0x1
    lw	$a6,-4($t9)
    # Line 1306
    bltz	$a5,.L0d9ea638
    # Line 1302
    subu	$t8,$t8,$ra
    beqz	$v1,.L0d9ea5ac
    sra	$at,$ra,0x1
    # Line 1310
    addu	$v1,$a3,$t0
    # Line 1306
    and	$a0,$a6,$a1
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1312
    and	$a3,$v1,$a4
    # Line 1306
    bnez	$a0,.L0d9ea584
    slti	$v0,$v1,0
    b	.L0d9ea594
    nop
.L0d9ea694:
    # Line 1325
    ld	$ra,8($sp)
.L0d9ea698:
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDepthPassStippledLine

# Function: __glStoreLine
# Declared: Line 1360 (Source lines: 1361-1399)
# Address: 0x0d9ea6b0 - 0x0d9ea7fc (Size: 332 bytes, Frame: 160)
.globl __glStoreLine
.ent __glStoreLine
__glStoreLine:
    # Line 1373
    lw	$a1,29888($a0)
    # Line 1361
    addiu	$sp,$sp,-160
    # Line 1373
    sd	$a1,136($sp)
    sd	$gp,120($sp)
    # Line 1381
    lw	$v1,29868($a0)
    # Line 1361
    sd	$s2,56($sp)
    # Line 1378
    lw	$s2,30464($a0)
    # Line 1361
    sd	$s3,64($sp)
    # Line 1377
    lw	$s3,29896($a0)
    # Line 1361
    sd	$s0,88($sp)
    # Line 1376
    lw	$s0,29892($a0)
    # Line 1361
    sd	$s6,72($sp)
    # Line 1375
    lw	$s6,29884($a0)
    # Line 1361
    sd	$s7,112($sp)
    # Line 1374
    lw	$s7,29876($a0)
    # Line 1361
    sd	$s5,104($sp)
    sd	$s1,96($sp)
    sd	$s4,80($sp)
    # Line 1379
    lw	$s4,30480($a0)
    # Line 1372
    lw	$a2,29880($a0)
    sd	$a2,128($sp)
    # Line 1370
    lw	$a2,30248($a0)
    # Line 1380
    lw	$s5,164($s4)
    # Line 1361
    lui	$v0,0x6
    # Line 1381
    sw	$v1,0($sp)
    # Line 1384
    addiu	$s1,$a2,-1
    # Line 1361
    addiu	$v0,$v0,26332
    # Line 1382
    lw	$at,29872($a0)
    # Line 1361
    addu	$gp,$t9,$v0
    # Line 1384
    bltz	$s1,.L0d9ea7cc
    # Line 1382
    sw	$at,4($sp)
    sd	$ra,144($sp)
    sd	$s8,152($sp)
    b	.L0d9ea754
    # Line 1384
    li	$s8,-1
    nop
.L0d9ea740:
    # Line 1395
    addu	$a5,$s6,$a2
    sw	$a5,4($sp)
    # Line 1394
    sw	$a4,0($sp)
.L0d9ea74c:
    # Line 1384
    beq	$s1,$s8,.L0d9ea7c8
    ld	$ra,144($sp)
.L0d9ea754:
    # Line 1385
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s2)
    swc1	$f1,20($sp)
    # Line 1386
    move	$t9,$s5
    # Line 1385
    lwc1	$f0,12($s2)
    # Line 1386
    addiu	$a1,$sp,0
    move	$a0,$s4
    # Line 1385
    addiu	$s2,$s2,16
    # Line 1386
    jalr	$t9
    # Line 1385
    swc1	$f0,24($sp)
    # Line 1388
    lw	$a3,0($sp)
    addu	$s0,$s0,$s3
    # Line 1384
    addiu	$s1,$s1,-1
    # Line 1388
    lw	$a2,4($sp)
    bgez	$s0,.L0d9ea740
    # Line 1394
    addu	$a4,$s7,$a3
    # Line 1391
    ld	$a7,128($sp)
    # Line 1392
    ld	$t0,136($sp)
    lui	$a6,0x7fff
    ori	$a6,$a6,0xffff
    addu	$t0,$t0,$a2
    sw	$t0,4($sp)
    # Line 1391
    addu	$a7,$a7,$a3
    sw	$a7,0($sp)
    # Line 1392
    b	.L0d9ea74c
    # Line 1390
    and	$s0,$s0,$a6
.L0d9ea7c8:
    ld	$s8,152($sp)
.L0d9ea7cc:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    ld	$s5,104($sp)
    # Line 1399
    move	$v0,$zero
    ld	$s7,112($sp)
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glStoreLine

# Function: __glStoreStippledLine
# Declared: Line 1408 (Source lines: 1409-1470)
# Address: 0x0d9ea800 - 0x0d9ea9b8 (Size: 440 bytes, Frame: 208)
.globl __glStoreStippledLine
.ent __glStoreStippledLine
__glStoreStippledLine:
    # Line 1421
    lw	$v1,30472($a0)
    # Line 1423
    lw	$a1,29880($a0)
    # Line 1425
    lw	$a3,29876($a0)
    # Line 1426
    lw	$a4,29884($a0)
    # Line 1428
    lw	$a5,29896($a0)
    # Line 1409
    addiu	$sp,$sp,-208
    sd	$s1,64($sp)
    # Line 1433
    lw	$s1,29872($a0)
    # Line 1409
    sd	$s2,88($sp)
    # Line 1432
    lw	$s2,29868($a0)
    # Line 1409
    sd	$s3,80($sp)
    # Line 1429
    lw	$s3,30464($a0)
    # Line 1428
    sd	$a5,136($sp)
    # Line 1409
    sd	$s6,72($sp)
    # Line 1427
    lw	$s6,29892($a0)
    # Line 1426
    sd	$a4,152($sp)
    # Line 1425
    sd	$a3,120($sp)
    # Line 1423
    sd	$a1,144($sp)
    # Line 1420
    lw	$v0,30248($a0)
    sd	$v0,112($sp)
    # Line 1421
    sd	$v1,104($sp)
    # Line 1409
    sd	$s8,56($sp)
    # Line 1424
    lw	$a2,29888($a0)
    sd	$a2,128($sp)
    # Line 1409
    lui	$at,0x6
    # Line 1430
    lw	$a2,30480($a0)
    sd	$gp,96($sp)
    # Line 1409
    addiu	$at,$at,25996
    addu	$gp,$t9,$at
    # Line 1433
    beqz	$v0,.L0d9ea994
    # Line 1431
    lw	$s8,164($a2)
    sd	$s5,192($sp)
    sd	$s0,184($sp)
    sd	$s4,176($sp)
    sd	$ra,168($sp)
    sd	$s7,200($sp)
    # Line 1433
    lui	$s7,0x7fff
    sd	$a2,160($sp)
    ori	$s7,$s7,0xffff
    # Line 1444
    lui	$s0,0x8000
.L0d9ea8a0:
    # Line 1437
    ld	$t8,112($sp)
    li	$t9,32
    li	$s5,32
    # Line 1442
    ld	$s4,104($sp)
    # Line 1437
    move	$a2,$t8
    slt	$s5,$s5,$t8
    movn	$a2,$t9,$s5
    # Line 1442
    addiu	$s4,$s4,4
    sd	$s4,104($sp)
    # Line 1444
    addiu	$s5,$a2,-1
    # Line 1442
    lw	$s4,-4($s4)
    # Line 1440
    subu	$t8,$t8,$a2
    # Line 1444
    bltz	$s5,.L0d9ea974
    sd	$t8,112($sp)
    and	$t8,$s4,$s0
    nop
.L0d9ea8e0:
    beqz	$t8,.L0d9ea924
    # Line 1453
    ld	$v0,136($sp)
    # Line 1447
    sw	$s1,4($sp)
    # Line 1446
    sw	$s2,0($sp)
    # Line 1448
    lwc1	$f3,0($s3)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s3)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s3)
    swc1	$f1,20($sp)
    # Line 1449
    move	$t9,$s8
    # Line 1448
    lwc1	$f0,12($s3)
    # Line 1449
    ld	$a0,160($sp)
    addiu	$a1,$sp,0
    jalr	$t9
    # Line 1448
    swc1	$f0,24($sp)
    # Line 1453
    ld	$v0,136($sp)
.L0d9ea924:
    addu	$v0,$s6,$v0
    # Line 1456
    ld	$at,144($sp)
    # Line 1455
    and	$s6,$v0,$s7
    slti	$t9,$v0,0
    # Line 1452
    addiu	$s3,$s3,16
    movz	$s6,$v0,$t9
    # Line 1459
    ld	$v0,120($sp)
    # Line 1463
    srl	$s0,$s0,0x1
    # Line 1444
    addiu	$s5,$s5,-1
    # Line 1457
    ld	$ra,128($sp)
    # Line 1456
    addu	$at,$at,$s2
    # Line 1459
    addu	$s2,$v0,$s2
    # Line 1460
    ld	$v0,152($sp)
    movn	$s2,$at,$t9
    # Line 1444
    li	$at,-1
    and	$t8,$s4,$s0
    # Line 1457
    addu	$ra,$ra,$s1
    # Line 1460
    addu	$s1,$v0,$s1
    # Line 1444
    bne	$s5,$at,.L0d9ea8e0
    movn	$s1,$ra,$t9
.L0d9ea974:
    ld	$v1,112($sp)
    bnez	$v1,.L0d9ea8a0
    lui	$s0,0x8000
    ld	$ra,168($sp)
    ld	$s4,176($sp)
    ld	$s0,184($sp)
    ld	$s5,192($sp)
    ld	$s7,200($sp)
.L0d9ea994:
    # Line 1470
    ld	$gp,96($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    move	$v0,$zero
    ld	$s6,72($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glStoreStippledLine

# Function: __glAntiAliasLine
# Declared: Line 1473 (Source lines: 1474-1635)
# Address: 0x0d9ea9c0 - 0x0d9eadb8 (Size: 1016 bytes, Frame: 208)
.globl __glAntiAliasLine
.ent __glAntiAliasLine
__glAntiAliasLine:
    # Line 1487
    lw	$v0,30436($a0)
    # Line 1507
    lw	$a1,30472($a0)
    # Line 1474
    addiu	$sp,$sp,-208
    # Line 1507
    sd	$a1,112($sp)
    # Line 1474
    sdc1	$f20,16($sp)
    # Line 1502
    lwc1	$f20,29996($a0)
    # Line 1474
    sdc1	$f22,8($sp)
    # Line 1501
    lwc1	$f22,29992($a0)
    # Line 1474
    sd	$s3,88($sp)
    # Line 1494
    lw	$s3,30464($a0)
    # Line 1474
    sd	$s7,72($sp)
    # Line 1492
    lw	$s7,29896($a0)
    # Line 1489
    lw	$at,30248($a0)
    sd	$at,120($sp)
    # Line 1474
    sd	$s2,104($sp)
    # Line 1491
    lw	$s2,29892($a0)
    sdc1	$f24,144($sp)
    sdc1	$f26,136($sp)
    sd	$s5,184($sp)
    sd	$s0,176($sp)
    sd	$s4,168($sp)
    sd	$ra,160($sp)
    sd	$s6,192($sp)
    sd	$gp,96($sp)
    # Line 1474
    sd	$s1,80($sp)
    # Line 1496
    lwc1	$f29,29976($a0)
    # Line 1497
    lwc1	$f31,29980($a0)
    # Line 1474
    sdc1	$f28,0($sp)
    # Line 1499
    lwc1	$f1,29988($a0)
    # Line 1498
    lwc1	$f0,29984($a0)
    # Line 1499
    sdc1	$f1,24($sp)
    # Line 1503
    lwc1	$f1,3540($a0)
    # Line 1498
    sdc1	$f0,56($sp)
    # Line 1503
    lwc1	$f0,29956($a0)
    # Line 1504
    lwc1	$f28,472($a0)
    # Line 1474
    lui	$v1,0x6
    # Line 1497
    sdc1	$f31,32($sp)
    # Line 1474
    move	$s1,$a0
    addiu	$v1,$v1,25548
    # Line 1496
    sdc1	$f29,48($sp)
    # Line 1503
    sub.s	$f0,$f0,$f1
    # Line 1474
    addu	$gp,$t9,$v1
    # Line 1504
    msub.s	$f28,$f1,$f28,$f1
    # Line 1507
    beqz	$at,.L0d9ead88
    sdc1	$f0,40($sp)
    sdc1	$f30,152($sp)
    mtc1	$zero,$f30
    sd	$s8,200($sp)
    li	$s8,-1
    move	$s6,$zero
    andi	$a2,$v0,0x8000
    b	.L0d9eadac
    sd	$a2,128($sp)
    nop
    nop
    nop
.L0d9eaaa0:
    # Line 1622
    ld	$a4,112($sp)
.L0d9eaaa4:
    ld	$a3,120($sp)
    # Line 1519
    lui	$s0,0x8000
    # Line 1622
    sw	$s5,0($a4)
    addiu	$a4,$a4,4
    beqz	$a3,.L0d9eace4
    sd	$a4,112($sp)
    # Line 1511
    ld	$a5,120($sp)
.L0d9eaac0:
    li	$a7,32
    li	$a6,32
    move	$v0,$a5
    slt	$a6,$a6,$a5
    movn	$v0,$a7,$a6
    # Line 1519
    addiu	$s4,$v0,-1
    li	$s5,-1
    # Line 1514
    subu	$a5,$a5,$v0
    # Line 1519
    bltz	$s4,.L0d9ead48
    sd	$a5,120($sp)
    b	.L0d9eabc4
    li	$s5,-1
.L0d9eaaf0:
    # Line 1564
    add.s	$f2,$f4,$f5
    sdc1	$f2,64($sp)
.L0d9eaaf8:
    # Line 1566
    # lw $t9, -22848($gp) # &floorf
    jal	floorf
    ldc1	$f12,64($sp)
    # Line 1589
    trunc.w.s	$f7,$f0
    mfc1	$t2,$f7
    li	$t1,1
    addu	$t2,$t2,$t1
    mtc1	$t2,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f4,30004($s1)
    cvt.s.w	$f7,$f7
    mul.s	$f5,$f5,$f4
    mul.s	$f4,$f4,$f7
    trunc.w.s	$f5,$f5
    trunc.w.s	$f4,$f4
    mfc1	$t0,$f5
    mfc1	$t2,$f4
    lhu	$a7,480($s1)
    andi	$t0,$t0,0xf
    andi	$t2,$t2,0xf
    sllv	$t0,$t1,$t0
    sllv	$t1,$t1,$t2
    and	$t0,$a7,$t0
    ldc1	$f6,64($sp)
    and	$a7,$a7,$t1
    sltu	$t0,$zero,$t0
    sltu	$a7,$zero,$a7
    mtc1	$t0,$f3
    mtc1	$a7,$f4
    sub.s	$f6,$f6,$f7
    cvt.s.w	$f3,$f3
    cvt.s.w	$f4,$f4
    sub.s	$f5,$f26,$f6
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f4,$f5
    mul.s	$f24,$f24,$f3
.L0d9eab88:
    c.eq.s	$f24,$f30
    bc1f	.L0d9eac94
    # Line 1595
    nor	$t3,$s0,$zero
.L0d9eab94:
    # Line 1596
    addiu	$s6,$s6,1
    # Line 1595
    and	$s5,$s5,$t3
.L0d9eab9c:
    # Line 1606
    addu	$s2,$s2,$s7
    # Line 1613
    ldc1	$f7,56($sp)
    # Line 1519
    addiu	$s4,$s4,-1
    # Line 1617
    srl	$s0,$s0,0x1
    # Line 1612
    ldc1	$f6,48($sp)
    # Line 1606
    bltz	$s2,.L0d9eacb4
    # Line 1604
    addiu	$s3,$s3,16
    # Line 1613
    add.s	$f20,$f7,$f20
    # Line 1612
    add.s	$f22,$f6,$f22
.L0d9eabc0:
    # Line 1519
    beq	$s4,$s8,.L0d9eaaa0
.L0d9eabc4:
    # Line 1548
    ld	$t8,128($sp)
    # Line 1519
    c.lt.s $f28,$f20
    # Line 1534
    lwc1	$f4,3540($s1)
    # Line 1545
    ldc1	$f29,40($sp)
    # Line 1519
    bc1f .L0d9eabf8
    lwc1	$f26,3544($s1)
    # Line 1522
    sub.s	$f24,$f28,$f20
    add.s	$f24,$f26,$f24
    c.lt.s $f24,$f30
    bc1f .L0d9eac28
    # Line 1542
    ldc1	$f27,40($sp)
    b	.L0d9eab94
    # Line 1595
    nor	$t3,$s0,$zero
.L0d9eabf8:
    # Line 1525
    neg.s	$f25,$f28
    c.lt.s $f20,$f25
    bc1f .L0d9eac24
    # Line 1534
    mov.s	$f24,$f26
    # Line 1528
    add.s	$f24,$f20,$f28
    add.s	$f24,$f26,$f24
    c.lt.s $f24,$f30
    bc1f .L0d9eac28
    # Line 1542
    ldc1	$f27,40($sp)
    b	.L0d9eab94
    # Line 1595
    nor	$t3,$s0,$zero
.L0d9eac24:
    # Line 1542
    ldc1	$f27,40($sp)
.L0d9eac28:
    # Line 1534
    c.lt.s $f22,$f4
    bc1f .L0d9eac50
    nop
    # Line 1539
    add.s	$f25,$f4,$f22
    mul.s	$f24,$f24,$f25
    c.lt.s $f24,$f30
    bc1f .L0d9eac74
    nop
    b	.L0d9eab94
    # Line 1595
    nor	$t3,$s0,$zero
.L0d9eac50:
    # Line 1542
    c.lt.s $f27,$f22
    bc1f .L0d9eac74
    nop
    # Line 1545
    sub.s	$f29,$f29,$f22
    add.s	$f29,$f26,$f29
    mul.s	$f24,$f24,$f29
    c.lt.s	$f24,$f30
    bc1t	.L0d9eab94
    # Line 1595
    nor	$t3,$s0,$zero
.L0d9eac74:
    # Line 1548
    beqz	$t8,.L0d9eab88
    nop
    c.lt.s $f4,$f22
    bc1f .L0d9eaaf0
    lwc1	$f5,30000($s1)
    # Line 1562
    add.s	$f31,$f5,$f22
    b	.L0d9eaaf8
    sdc1	$f31,64($sp)
.L0d9eac94:
    # Line 1596
    lbu	$t9,3221($s1)
    beqz	$t9,.L0d9eacd4
    # Line 1599
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f24
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,0($s3)
    b	.L0d9eab9c
    swc1	$f0,0($s3)
.L0d9eacb4:
    # Line 1610
    ldc1	$f1,24($sp)
    # Line 1609
    ldc1	$f0,32($sp)
    # Line 1610
    lui	$ra,0x7fff
    ori	$ra,$ra,0xffff
    add.s	$f20,$f1,$f20
    # Line 1608
    and	$s2,$s2,$ra
    # Line 1610
    b	.L0d9eabc0
    # Line 1609
    add.s	$f22,$f0,$f22
.L0d9eacd4:
    # Line 1601
    lwc1	$f2,12($s3)
    mul.s	$f2,$f2,$f24
    b	.L0d9eab9c
    swc1	$f2,12($s3)
.L0d9eace4:
    ld	$s8,200($sp)
    # Line 1622
    beqz	$s6,.L0d9ead88
    ldc1	$f30,152($sp)
    ld	$s5,184($sp)
    ld	$s0,176($sp)
    ld	$s4,168($sp)
    # Line 1627
    lw	$at,30248($s1)
    ld	$ra,160($sp)
    ldc1	$f24,144($sp)
    move	$s8,$s8
    mov.d	$f30,$f30
    beq	$at,$s6,.L0d9ead50
    ldc1	$f26,136($sp)
    ld	$s6,192($sp)
    # Line 1631
    li	$v0,1
.L0d9ead20:
    # Line 1635
    ld	$gp,96($sp)
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s7,72($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9ead48:
    b	.L0d9eaaa4
    # Line 1622
    ld	$a4,112($sp)
.L0d9ead50:
    ld	$s6,192($sp)
    # Line 1635
    ld	$gp,96($sp)
    # Line 1634
    li	$v1,1
    sb	$v1,30476($s1)
    # Line 1635
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s7,72($sp)
    ldc1	$f20,16($sp)
    li	$v0,1
    ldc1	$f22,8($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9ead88:
    ld	$s6,192($sp)
    ld	$s5,184($sp)
    ld	$s0,176($sp)
    ld	$s4,168($sp)
    ld	$ra,160($sp)
    ldc1	$f24,144($sp)
    ldc1	$f26,136($sp)
    # Line 1627
    b	.L0d9ead20
    move	$v0,$zero
.L0d9eadac:
    # Line 1519
    lui	$s0,0x8000
    b	.L0d9eaac0
    # Line 1511
    ld	$a5,120($sp)
.end __glAntiAliasLine

# Function: __glAntiAliasStippledLine
# Declared: Line 1638 (Source lines: 1639-1794)
# Address: 0x0d9eadc0 - 0x0d9eb1dc (Size: 1052 bytes, Frame: 208)
.globl __glAntiAliasStippledLine
.ent __glAntiAliasStippledLine
__glAntiAliasStippledLine:
    # Line 1664
    lwc1	$f5,29984($a0)
    # Line 1662
    lwc1	$f6,29976($a0)
    # Line 1652
    lw	$a2,30436($a0)
    # Line 1655
    lw	$a1,30472($a0)
    # Line 1639
    addiu	$sp,$sp,-208
    sdc1	$f20,16($sp)
    # Line 1668
    lwc1	$f20,29996($a0)
    # Line 1639
    sdc1	$f22,8($sp)
    # Line 1667
    lwc1	$f22,29992($a0)
    # Line 1639
    sd	$s2,80($sp)
    # Line 1660
    lw	$s2,30464($a0)
    # Line 1639
    sd	$s8,56($sp)
    # Line 1658
    lw	$s8,29896($a0)
    # Line 1639
    sd	$s1,64($sp)
    # Line 1657
    lw	$s1,29892($a0)
    # Line 1655
    sd	$a1,96($sp)
    # Line 1654
    lw	$at,30248($a0)
    sd	$at,104($sp)
    sdc1	$f30,136($sp)
    sdc1	$f24,128($sp)
    sdc1	$f26,120($sp)
    sd	$s7,184($sp)
    sd	$s5,192($sp)
    sd	$s0,176($sp)
    sd	$s4,168($sp)
    sd	$ra,160($sp)
    sd	$s6,200($sp)
    sd	$gp,88($sp)
    # Line 1639
    sd	$s3,72($sp)
    # Line 1663
    lwc1	$f29,29980($a0)
    # Line 1665
    lwc1	$f31,29988($a0)
    # Line 1669
    lwc1	$f1,3540($a0)
    lwc1	$f0,29956($a0)
    # Line 1639
    sdc1	$f28,0($sp)
    # Line 1670
    lwc1	$f28,472($a0)
    # Line 1639
    lui	$v0,0x6
    # Line 1665
    sdc1	$f31,24($sp)
    # Line 1639
    move	$s3,$a0
    addiu	$v0,$v0,24524
    # Line 1663
    sdc1	$f29,32($sp)
    # Line 1669
    sub.s	$f0,$f0,$f1
    # Line 1639
    addu	$gp,$t9,$v0
    # Line 1670
    msub.s	$f28,$f1,$f28,$f1
    beqz	$at,.L0d9eb128
    sdc1	$f0,40($sp)
    mtc1	$zero,$f30
    li	$a0,-1
    move	$s5,$zero
    andi	$a3,$a2,0x8000
    b	.L0d9eb1d0
    sd	$a3,112($sp)
    nop
.L0d9eae90:
    # Line 1788
    ld	$a5,96($sp)
.L0d9eae94:
    ld	$a4,104($sp)
    # Line 1683
    lui	$s0,0x8000
    # Line 1788
    and	$a6,$s7,$s6
    sw	$a6,0($a5)
    addiu	$a5,$a5,4
    beqz	$a4,.L0d9eb120
    sd	$a5,96($sp)
    # Line 1675
    ld	$a7,104($sp)
.L0d9eaeb4:
    li	$t9,32
    li	$t8,32
    move	$a2,$a7
    slt	$t8,$t8,$a7
    # Line 1680
    ld	$s7,96($sp)
    # Line 1675
    movn	$a2,$t9,$t8
    # Line 1683
    addiu	$s4,$a2,-1
    li	$s6,-1
    # Line 1680
    lw	$s7,0($s7)
    # Line 1678
    subu	$a7,$a7,$a2
    # Line 1683
    bltz	$s4,.L0d9eb1c8
    sd	$a7,104($sp)
    b	.L0d9eafd0
    li	$s6,-1
    nop
.L0d9eaef0:
    sdc1	$f6,144($sp)
    sdc1	$f5,152($sp)
    # Line 1729
    add.s	$f0,$f4,$f7
    sdc1	$f0,48($sp)
.L0d9eaf00:
    # Line 1731
    # lw $t9, -22848($gp) # &floorf
    jal	floorf
    ldc1	$f12,48($sp)
    # Line 1754
    trunc.w.s	$f7,$f0
    mfc1	$v0,$f7
    li	$at,1
    addu	$v0,$v0,$at
    mtc1	$v0,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f2,30004($s3)
    cvt.s.w	$f7,$f7
    mul.s	$f3,$f3,$f2
    mul.s	$f2,$f2,$f7
    trunc.w.s	$f3,$f3
    trunc.w.s	$f2,$f2
    mfc1	$ra,$f3
    mfc1	$v0,$f2
    lhu	$t9,480($s3)
    andi	$ra,$ra,0xf
    andi	$v0,$v0,0xf
    sllv	$ra,$at,$ra
    sllv	$at,$at,$v0
    and	$ra,$t9,$ra
    ldc1	$f4,48($sp)
    and	$t9,$t9,$at
    sltu	$ra,$zero,$ra
    sltu	$t9,$zero,$t9
    mtc1	$ra,$f1
    mtc1	$t9,$f2
    sub.s	$f4,$f4,$f7
    cvt.s.w	$f1,$f1
    cvt.s.w	$f2,$f2
    sub.s	$f3,$f26,$f4
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    ldc1	$f5,152($sp)
    li	$a0,-1
    ldc1	$f6,144($sp)
    mul.s	$f24,$f24,$f1
.L0d9eaf9c:
    c.eq.s	$f24,$f30
    bc1f	.L0d9eb0b4
    # Line 1760
    nor	$v1,$s0,$zero
.L0d9eafa8:
    # Line 1761
    addiu	$s5,$s5,1
    # Line 1760
    and	$s6,$s6,$v1
.L0d9eafb0:
    # Line 1772
    addu	$s1,$s1,$s8
    # Line 1683
    addiu	$s4,$s4,-1
    # Line 1783
    srl	$s0,$s0,0x1
    # Line 1772
    bltz	$s1,.L0d9eb0f0
    # Line 1770
    addiu	$s2,$s2,16
    # Line 1779
    add.s	$f20,$f5,$f20
    # Line 1778
    add.s	$f22,$f6,$f22
.L0d9eafcc:
    # Line 1683
    beq	$s4,$a0,.L0d9eae90
.L0d9eafd0:
    # Line 1707
    ldc1	$f27,40($sp)
    # Line 1683
    and	$a1,$s7,$s0
    # Line 1713
    ld	$a2,112($sp)
    # Line 1683
    beqz	$a1,.L0d9eb0e8
    # Line 1710
    ldc1	$f29,40($sp)
    # Line 1683
    c.lt.s $f28,$f20
    # Line 1699
    lwc1	$f4,3540($s3)
    # Line 1683
    bc1f .L0d9eb010
    lwc1	$f26,3544($s3)
    # Line 1687
    sub.s	$f24,$f28,$f20
    add.s	$f24,$f26,$f24
    c.lt.s $f24,$f30
    bc1f .L0d9eb040
    nop
    b	.L0d9eafa8
    # Line 1760
    nor	$v1,$s0,$zero
.L0d9eb010:
    # Line 1690
    neg.s	$f25,$f28
    c.lt.s $f20,$f25
    bc1f .L0d9eb040
    # Line 1699
    mov.s	$f24,$f26
    # Line 1693
    add.s	$f24,$f20,$f28
    add.s	$f24,$f26,$f24
    c.lt.s $f24,$f30
    bc1f .L0d9eb040
    nop
    b	.L0d9eafa8
    # Line 1760
    nor	$v1,$s0,$zero
    nop
.L0d9eb040:
    # Line 1699
    c.lt.s $f22,$f4
    bc1f .L0d9eb068
    nop
    # Line 1704
    add.s	$f25,$f4,$f22
    mul.s	$f24,$f24,$f25
    c.lt.s $f24,$f30
    bc1f .L0d9eb08c
    nop
    b	.L0d9eafa8
    # Line 1760
    nor	$v1,$s0,$zero
.L0d9eb068:
    # Line 1707
    c.lt.s $f27,$f22
    bc1f .L0d9eb08c
    nop
    # Line 1710
    sub.s	$f29,$f29,$f22
    add.s	$f29,$f26,$f29
    mul.s	$f24,$f24,$f29
    c.lt.s	$f24,$f30
    bc1t	.L0d9eafa8
    # Line 1760
    nor	$v1,$s0,$zero
.L0d9eb08c:
    # Line 1713
    beqz	$a2,.L0d9eaf9c
    nop
    c.lt.s $f4,$f22
    bc1f .L0d9eaef0
    lwc1	$f7,30000($s3)
    sdc1	$f6,144($sp)
    sdc1	$f5,152($sp)
    # Line 1727
    add.s	$f31,$f7,$f22
    b	.L0d9eaf00
    sdc1	$f31,48($sp)
.L0d9eb0b4:
    # Line 1761
    lbu	$a3,3221($s3)
    beqz	$a3,.L0d9eb110
    # Line 1764
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    sdc1	$f6,144($sp)
    sdc1	$f5,152($sp)
    mov.s	$f13,$f24
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,0($s2)
    ldc1	$f5,152($sp)
    ldc1	$f6,144($sp)
    li	$a0,-1
    b	.L0d9eafb0
    swc1	$f0,0($s2)
.L0d9eb0e8:
    b	.L0d9eafb0
    # Line 1769
    addiu	$s5,$s5,1
.L0d9eb0f0:
    # Line 1776
    ldc1	$f1,24($sp)
    # Line 1775
    ldc1	$f0,32($sp)
    # Line 1776
    lui	$a4,0x7fff
    ori	$a4,$a4,0xffff
    add.s	$f20,$f1,$f20
    # Line 1774
    and	$s1,$s1,$a4
    # Line 1776
    b	.L0d9eafcc
    # Line 1775
    add.s	$f22,$f0,$f22
.L0d9eb110:
    # Line 1766
    lwc1	$f2,12($s2)
    mul.s	$f2,$f2,$f24
    b	.L0d9eafb0
    swc1	$f2,12($s2)
.L0d9eb120:
    # Line 1788
    lw	$a5,30248($s3)
    bne	$a5,$s5,.L0d9eb178
.L0d9eb128:
    ld	$s6,200($sp)
    ld	$s4,168($sp)
    ld	$s0,176($sp)
    ld	$s5,192($sp)
    ld	$s7,184($sp)
    ldc1	$f26,120($sp)
    ldc1	$f24,128($sp)
    ldc1	$f30,136($sp)
    # Line 1794
    ld	$gp,88($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s8,56($sp)
    ld	$ra,160($sp)
    ldc1	$f20,16($sp)
    # Line 1792
    li	$v0,1
    # Line 1794
    ldc1	$f22,8($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9eb178:
    ld	$s6,200($sp)
    ld	$s5,192($sp)
    ld	$s7,184($sp)
    ld	$s0,176($sp)
    ld	$s4,168($sp)
    ldc1	$f30,136($sp)
    ldc1	$f24,128($sp)
    ldc1	$f26,120($sp)
    ld	$gp,88($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s8,56($sp)
    ld	$ra,160($sp)
    ldc1	$f20,16($sp)
    move	$v0,$zero
    ldc1	$f22,8($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9eb1c8:
    b	.L0d9eae94
    # Line 1788
    ld	$a5,96($sp)
.L0d9eb1d0:
    # Line 1683
    lui	$s0,0x8000
    b	.L0d9eaeb4
    # Line 1675
    ld	$a7,104($sp)
.end __glAntiAliasStippledLine

