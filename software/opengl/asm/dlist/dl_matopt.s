# Source: ../dlist/dl_matopt.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_matopt.c
# Total Functions: 4

.text

# Function: ApplyMatChange
# Declared: Line 60 (Source lines: 63-111)
# Address: 0x0d97bbc0 - 0x0d97bd74 (Size: 436 bytes, Frame: 0)
.ent ApplyMatChange
ApplyMatChange:
    # Line 63
    li	$a4,5635
    sltiu	$at,$a2,5632
    sltiu	$a6,$a2,4609
    sltiu	$a7,$a2,4610
    bnez	$at,.L0d97bc28
    sltiu	$v1,$a2,5634
    li	$t3,5633
    sltiu	$v0,$a2,5633
    bnez	$v0,.L0d97bca4
    sltiu	$a0,$a2,5635
    bnez	$v1,.L0d97bc84
    nop
    bnez	$a0,.L0d97bd04
    nop
    bne	$a2,$a4,.L0d97bc7c
    nop
    # Line 65
    lwc1	$f2,0($a3)
    swc1	$f2,76($a1)
    # Line 66
    lwc1	$f1,4($a3)
    # Line 68
    lw	$a5,4($a1)
    # Line 66
    swc1	$f1,84($a1)
    # Line 67
    lwc1	$f0,8($a3)
    # Line 68
    ori	$a5,$a5,0x20
    sw	$a5,4($a1)
    # Line 111
    jr	$ra
    # Line 67
    swc1	$f0,80($a1)
.L0d97bc28:
    # Line 63
    li	$t0,4610
    bnez	$a6,.L0d97bc74
    li	$t2,4608
    bnez	$a7,.L0d97bcd4
    nop
    bne	$a2,$t0,.L0d97bc7c
    nop
    # Line 78
    lwc1	$f6,0($a3)
    swc1	$f6,40($a1)
    # Line 79
    lwc1	$f5,4($a3)
    swc1	$f5,44($a1)
    # Line 80
    lwc1	$f4,8($a3)
    # Line 82
    lw	$t1,4($a1)
    # Line 80
    swc1	$f4,48($a1)
    # Line 81
    lwc1	$f3,12($a3)
    # Line 82
    ori	$t1,$t1,0x4
    sw	$t1,4($a1)
    # Line 111
    jr	$ra
    # Line 81
    swc1	$f3,52($a1)
.L0d97bc74:
    # Line 63
    beq	$a2,$t2,.L0d97bd44
    nop
.L0d97bc7c:
    # Line 111
    jr	$ra
    nop
.L0d97bc84:
    # Line 63
    bne	$a2,$t3,.L0d97bc7c
    nop
    # Line 86
    lw	$t8,4($a1)
    # Line 85
    lwc1	$f7,0($a3)
    # Line 86
    ori	$t8,$t8,0x10
    sw	$t8,4($a1)
    # Line 111
    jr	$ra
    # Line 85
    swc1	$f7,72($a1)
.L0d97bca4:
    # Line 71
    lwc1	$f11,0($a3)
    swc1	$f11,56($a1)
    # Line 72
    lwc1	$f10,4($a3)
    swc1	$f10,60($a1)
    # Line 73
    lwc1	$f9,8($a3)
    # Line 75
    lw	$t9,4($a1)
    # Line 73
    swc1	$f9,64($a1)
    # Line 74
    lwc1	$f8,12($a3)
    # Line 75
    ori	$t9,$t9,0x8
    sw	$t9,4($a1)
    # Line 111
    jr	$ra
    # Line 74
    swc1	$f8,68($a1)
.L0d97bcd4:
    # Line 96
    lwc1	$f15,0($a3)
    swc1	$f15,24($a1)
    # Line 97
    lwc1	$f14,4($a3)
    swc1	$f14,28($a1)
    # Line 98
    lwc1	$f13,8($a3)
    # Line 100
    lw	$at,4($a1)
    # Line 98
    swc1	$f13,32($a1)
    # Line 99
    lwc1	$f12,12($a3)
    # Line 100
    ori	$at,$at,0x2
    sw	$at,4($a1)
    # Line 111
    jr	$ra
    # Line 99
    swc1	$f12,36($a1)
.L0d97bd04:
    # Line 103
    lwc1	$f17,0($a3)
    swc1	$f17,8($a1)
    # Line 104
    lwc1	$f18,4($a3)
    swc1	$f18,12($a1)
    # Line 105
    lwc1	$f19,8($a3)
    # Line 108
    lw	$v0,4($a1)
    # Line 105
    swc1	$f19,16($a1)
    # Line 106
    lwc1	$f16,12($a3)
    # Line 108
    ori	$v0,$v0,0x3
    sw	$v0,4($a1)
    # Line 107
    swc1	$f19,32($a1)
    swc1	$f18,28($a1)
    swc1	$f17,24($a1)
    swc1	$f16,36($a1)
    # Line 111
    jr	$ra
    # Line 106
    swc1	$f16,20($a1)
.L0d97bd44:
    # Line 89
    lwc1	$f27,0($a3)
    swc1	$f27,8($a1)
    # Line 90
    lwc1	$f25,4($a3)
    swc1	$f25,12($a1)
    # Line 91
    lwc1	$f23,8($a3)
    # Line 93
    lw	$v1,4($a1)
    # Line 91
    swc1	$f23,16($a1)
    # Line 92
    lwc1	$f21,12($a3)
    # Line 93
    ori	$v1,$v1,0x1
    sw	$v1,4($a1)
    # Line 111
    jr	$ra
    # Line 92
    swc1	$f21,20($a1)
.end ApplyMatChange

# Function: FreeFastMaterial
# Declared: Line 118 (Source lines: 119-138)
# Address: 0x0d97bd80 - 0x0d97be48 (Size: 200 bytes, Frame: 48)
.ent FreeFastMaterial
FreeFastMaterial:
    # Line 119
    addiu	$sp,$sp,-48
    # Line 125
    lw	$v0,0($a1)
    # Line 119
    sd	$s0,8($sp)
    # Line 125
    addiu	$s0,$a1,4
    # Line 119
    lui	$at,0xd
    sd	$s2,0($sp)
    move	$s2,$a0
    addiu	$at,$at,20492
    sd	$gp,16($sp)
    # Line 125
    beqz	$v0,.L0d97be34
    # Line 119
    addu	$gp,$t9,$at
    sd	$s1,32($sp)
    sd	$ra,24($sp)
    nop
    nop
    nop
.L0d97bdc0:
    # Line 126
    lw	$s1,0($s0)
    addiu	$a6,$s0,4
    # Line 127
    addiu	$a4,$s0,20
    # Line 126
    andi	$a5,$s1,0x1
    movz	$a4,$a6,$a5
    # Line 127
    andi	$a3,$s1,0x2
    # Line 128
    addiu	$a2,$a4,16
    # Line 130
    andi	$a0,$s1,0x10
    movz	$a2,$a4,$a3
    # Line 128
    andi	$a1,$s1,0x4
    # Line 129
    addiu	$v1,$a2,16
    andi	$v0,$s1,0x8
    movz	$v1,$a2,$a1
    # Line 130
    addiu	$s0,$v1,16
    beqz	$a0,.L0d97be14
    movz	$s0,$v1,$v0
    # Line 134
    # lw $t9, -24692($gp) # &__glFreeSpecLUT
    move	$a0,$s2
    lw	$a1,4($s0)
    jal	__glFreeSpecLUT
    # Line 133
    addiu	$s0,$s0,8
.L0d97be14:
    # Line 136
    addiu	$a7,$s0,12
    # Line 134
    andi	$t1,$s1,0x20
    movz	$a7,$s0,$t1
    # Line 125
    lw	$t0,0($a7)
    bnez	$t0,.L0d97bdc0
    addiu	$s0,$a7,4
    ld	$ra,24($sp)
    ld	$s1,32($sp)
.L0d97be34:
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    # Line 138
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end FreeFastMaterial

# Function: __glDlistOptimizeMaterial
# Declared: Line 140 (Source lines: 141-310)
# Address: 0x0d97be50 - 0x0d97c360 (Size: 1296 bytes, Frame: 224)
.globl __glDlistOptimizeMaterial
.ent __glDlistOptimizeMaterial
__glDlistOptimizeMaterial:
    # Line 141
    addiu	$sp,$sp,-736
    sd	$s8,624($sp)
    sd	$s5,616($sp)
    sd	$s1,680($sp)
    sd	$s0,672($sp)
    sd	$s7,664($sp)
    sd	$ra,656($sp)
    sd	$s6,648($sp)
    lw	$at,4($a1)
    sd	$s3,640($sp)
    sd	$s4,688($sp)
    lui	$v0,0xd
    andi	$at,$at,0x100
    move	$s4,$a0
    sd	$s2,632($sp)
    addiu	$v0,$v0,20284
    sd	$gp,696($sp)
    beqz	$at,.L0d97c2dc
    addu	$gp,$t9,$v0
    # Line 164
    li	$v1,1029
    sw	$v1,88($sp)
    # Line 162
    sw	$zero,92($sp)
    # Line 161
    sw	$zero,4($sp)
    # Line 163
    li	$a0,1028
    sw	$a0,0($sp)
    # Line 165
    lw	$a0,12($a1)
    addiu	$v0,$a1,12
    beqz	$a0,.L0d97c2dc
    sd	$v0,720($sp)
    addiu	$t8,$sp,176
    la	$s1,sub_0d980000
    li	$s6,98
    lw	$s8,184($sp)
    addiu	$t8,$t8,8
    sd	$t8,704($sp)
    b	.L0d97bf04
    addiu	$s1,$s1,-17472
    nop
    nop
    nop
.L0d97bef0:
    sd	$v0,720($sp)
.L0d97bef4:
    # Line 307
    ld	$a0,720($sp)
    lw	$a0,0($a0)
    beqz	$a0,.L0d97c2dc
    nop
.L0d97bf04:
    # Line 167
    lh	$a1,12($a0)
    li	$a2,96
    beq	$a1,$a2,.L0d97bf1c
    move	$v0,$a0
    bne	$a1,$s6,.L0d97bef0
    nop
.L0d97bf1c:
    # Line 172
    lw	$s7,0($v0)
    beqz	$s7,.L0d97bf40
    sd	$v0,608($sp)
.L0d97bf28:
    # Line 173
    lh	$v0,12($s7)
    li	$a3,96
    beq	$v0,$a3,.L0d97c310
    li	$t9,96
    beq	$v0,$s6,.L0d97c310
    nop
.L0d97bf40:
    # Line 186
    ld	$a4,608($sp)
    beq	$a4,$s7,.L0d97c08c
    move	$s2,$a4
    b	.L0d97c350
    # Line 192
    li	$t9,1028
.L0d97bf54:
    # Line 214
    lwc1	$f0,24($a5)
    swc1	$f0,0($a1)
.L0d97bf5c:
    # Line 210
    addiu	$a5,$a5,4
    addiu	$a1,$a1,4
.L0d97bf64:
    sra	$a6,$s0,0x1
    bnezl	$a6,.L0d97c048
    # Line 208
    lh	$a6,12($s2)
.L0d97bf70:
    # Line 210
    blez	$s8,.L0d97bfb0
    addiu	$s0,$sp,176
    sll	$s5,$s8,0x2
    addu	$s5,$s5,$s0
    nop
    nop
    nop
    # Line 219
    move	$t9,$s1
.L0d97bf90:
    move	$a0,$s4
    addiu	$a3,$sp,192
    move	$a2,$s3
    bal __glDlistAppendOp
    lw	$a1,0($s0)
    # Line 218
    addiu	$s0,$s0,4
    bne	$s0,$s5,.L0d97bf90
    # Line 219
    move	$t9,$s1
.L0d97bfb0:
    # Line 186
    lw	$s2,0($s2)
    # Line 192
    li	$at,1032
    li	$ra,1029
    # Line 186
    beq	$s7,$s2,.L0d97c08c
    # Line 192
    li	$t9,1028
    # Line 188
    lw	$v0,16($s2)
.L0d97bfc8:
    # Line 192
    beq	$t9,$v0,.L0d97c2ac
    # Line 189
    lw	$s3,20($s2)
    # Line 192
    beq	$ra,$v0,.L0d97c2b8
    nop
    beq	$at,$v0,.L0d97c2c8
.L0d97bfdc:
    # Line 208
    nop	# was lw $t9, -24780($gp) # &__glMaterialfv_size
    jal	__glMaterialfv_size
    move	$a0,$s3
    blez	$v0,.L0d97bf70
    move	$s0,$v0
    sll	$a0,$v0,0x2
    andi	$a2,$v0,0x1
    move	$a5,$s2
    addiu	$a1,$sp,192
    beqz	$a2,.L0d97bf64
    addu	$a0,$a0,$s2
    lh	$a3,12($s2)
    bne	$a3,$s6,.L0d97bf54
    nop
    # Line 212
    lw	$a4,24($s2)
    mtc1	$a4,$f1
    cvt.s.w	$f1,$f1
    b	.L0d97bf5c
    swc1	$f1,192($sp)
    nop
    nop
.L0d97c030:
    # Line 214
    lwc1	$f2,28($a5)
    swc1	$f2,4($a1)
.L0d97c038:
    # Line 210
    addiu	$a5,$a5,8
    beq	$a5,$a0,.L0d97bf70
    addiu	$a1,$a1,8
    # Line 208
    lh	$a6,12($s2)
.L0d97c048:
    beq	$a6,$s6,.L0d97c078
    nop
    # Line 214
    lwc1	$f3,24($a5)
    swc1	$f3,0($a1)
.L0d97c058:
    # Line 208
    lh	$a7,12($s2)
    bne	$a7,$s6,.L0d97c030
    nop
    # Line 212
    lw	$t0,28($a5)
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    b	.L0d97c038
    swc1	$f4,4($a1)
.L0d97c078:
    lw	$t1,24($a5)
    mtc1	$t1,$f5
    cvt.s.w	$f5,$f5
    b	.L0d97c058
    swc1	$f5,0($a1)
.L0d97c08c:
    # Line 229
    addiu	$t3,$sp,88
    sw	$t3,180($sp)
    # Line 230
    addiu	$s3,$sp,208
    addiu	$s0,$sp,176
    # Line 228
    sw	$sp,176($sp)
    # Line 230
    move	$s2,$zero
    li	$s8,2
    sd	$zero,712($sp)
.L0d97c0ac:
    lw	$s5,0($s0)
    lw	$a0,4($s5)
    # Line 240
    lw	$t9,0($s5)
    # Line 230
    beqz	$a0,.L0d97c204
    # Line 241
    andi	$t8,$a0,0x1
    addiu	$s3,$s3,8
    addiu	$s2,$s2,8
    sw	$a0,-4($s3)
    # Line 253
    andi	$at,$a0,0x4
    # Line 259
    andi	$v0,$a0,0x8
    # Line 265
    andi	$v1,$a0,0x10
    # Line 241
    beqz	$t8,.L0d97c108
    # Line 240
    sw	$t9,-8($s3)
    # Line 244
    lwc1	$f9,8($s5)
    swc1	$f9,0($s3)
    # Line 245
    lwc1	$f8,12($s5)
    swc1	$f8,4($s3)
    # Line 246
    lwc1	$f7,16($s5)
    swc1	$f7,8($s3)
    # Line 247
    lwc1	$f6,20($s5)
    addiu	$s3,$s3,16
    addiu	$s2,$s2,16
    swc1	$f6,-4($s3)
.L0d97c108:
    andi	$ra,$a0,0x2
    beqz	$ra,.L0d97c13c
    nop
    # Line 250
    lwc1	$f13,24($s5)
    swc1	$f13,0($s3)
    # Line 251
    lwc1	$f12,28($s5)
    swc1	$f12,4($s3)
    # Line 252
    lwc1	$f11,32($s5)
    swc1	$f11,8($s3)
    # Line 253
    lwc1	$f10,36($s5)
    addiu	$s3,$s3,16
    addiu	$s2,$s2,16
    swc1	$f10,-4($s3)
.L0d97c13c:
    beqz	$at,.L0d97c16c
    nop
    # Line 256
    lwc1	$f17,40($s5)
    swc1	$f17,0($s3)
    # Line 257
    lwc1	$f16,44($s5)
    swc1	$f16,4($s3)
    # Line 258
    lwc1	$f15,48($s5)
    swc1	$f15,8($s3)
    # Line 259
    lwc1	$f14,52($s5)
    addiu	$s3,$s3,16
    addiu	$s2,$s2,16
    swc1	$f14,-4($s3)
.L0d97c16c:
    beqz	$v0,.L0d97c19c
    nop
    # Line 262
    lwc1	$f23,56($s5)
    swc1	$f23,0($s3)
    # Line 263
    lwc1	$f21,60($s5)
    swc1	$f21,4($s3)
    # Line 264
    lwc1	$f19,64($s5)
    swc1	$f19,8($s3)
    # Line 265
    lwc1	$f18,68($s5)
    addiu	$s3,$s3,16
    addiu	$s2,$s2,16
    swc1	$f18,-4($s3)
.L0d97c19c:
    beqz	$v1,.L0d97c1dc
    # Line 270
    andi	$a2,$a0,0x20
    # Line 268
    # lw $t9, -24696($gp) # &__glCreateSpecLUT
    sd	$a0,728($sp)
    move	$a0,$s4
    jal	__glCreateSpecLUT
    lwc1	$f13,72($s5)
    ld	$a0,728($sp)
    # Line 270
    li	$a1,1
    sd	$a1,712($sp)
    addiu	$s3,$s3,8
    # Line 269
    lwc1	$f25,72($s5)
    # Line 270
    sw	$v0,-4($s3)
    addiu	$s2,$s2,8
    # Line 269
    swc1	$f25,-8($s3)
    # Line 270
    andi	$a2,$a0,0x20
.L0d97c1dc:
    beqz	$a2,.L0d97c208
    # Line 234
    ld	$a3,704($sp)
    # Line 274
    lwc1	$f31,76($s5)
    swc1	$f31,0($s3)
    # Line 275
    lwc1	$f29,80($s5)
    swc1	$f29,4($s3)
    # Line 276
    lwc1	$f27,84($s5)
    addiu	$s3,$s3,12
    addiu	$s2,$s2,12
    swc1	$f27,-4($s3)
.L0d97c204:
    # Line 234
    ld	$a3,704($sp)
.L0d97c208:
    addiu	$s0,$s0,4
    bne	$s0,$a3,.L0d97c0ac
    # Line 282
    nop	# was lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 280
    mtc1	$zero,$f0
    # Line 282
    move	$a0,$s4
    addiu	$s5,$s2,4
    move	$a1,$s5
    bal __glDlistAllocOp2
    # Line 280
    swc1	$f0,0($s3)
    # Line 282
    beqz	$v0,.L0d97c2dc
    move	$s0,$v0
    # Line 283
    ld	$a4,712($sp)
    beqz	$a4,.L0d97c250
    # Line 288
    ld	$a6,720($sp)
    # Line 285
    la	$a5,sub_0d980000
    addiu	$a5,$a5,-17024
    sw	$a5,4($v0)
    # Line 288
    ld	$a6,720($sp)
.L0d97c250:
    # Line 290
    # lw $t9, -22900($gp) # &memcpy
    # Line 287
    li	$s3,1014
    sh	$s3,12($s0)
    # Line 290
    move	$a2,$s5
    addiu	$a1,$sp,208
    # Line 288
    sw	$s0,0($a6)
    # Line 290
    addiu	$a0,$s0,16
    jal	memcpy
    # Line 289
    sw	$s7,0($s0)
    # Line 294
    ld	$a7,608($sp)
    # Line 291
    sd	$s0,720($sp)
    # Line 294
    beq	$a7,$s7,.L0d97c2a0
    move	$s2,$a7
    # Line 298
    # lw $t9, -31144($gp) # &__glDlistFreeOp
.L0d97c288:
    move	$a0,$s4
    # Line 296
    move	$a1,$s2
    # Line 298
    bal __glDlistFreeOp
    # Line 297
    lw	$s2,0($s2)
    # Line 298
    bne	$s7,$s2,.L0d97c288
    nop	# was lw $t9, -31144($gp) # &__glDlistFreeOp
.L0d97c2a0:
    # Line 303
    sw	$zero,92($sp)
    b	.L0d97bef4
    # Line 302
    sw	$zero,4($sp)
.L0d97c2ac:
    # Line 195
    li	$s8,1
    b	.L0d97bfdc
    # Line 194
    sw	$sp,176($sp)
.L0d97c2b8:
    # Line 199
    li	$s8,1
    # Line 200
    addiu	$t2,$sp,88
    b	.L0d97bfdc
    # Line 198
    sw	$t2,176($sp)
.L0d97c2c8:
    # Line 203
    addiu	$t8,$sp,88
    sw	$t8,180($sp)
    # Line 204
    li	$s8,2
    # Line 205
    b	.L0d97bfdc
    # Line 202
    sw	$sp,176($sp)
.L0d97c2dc:
    # Line 310
    ld	$gp,696($sp)
    ld	$s0,672($sp)
    ld	$s1,680($sp)
    ld	$s2,632($sp)
    ld	$s3,640($sp)
    ld	$s4,688($sp)
    ld	$s5,616($sp)
    ld	$ra,656($sp)
    ld	$s6,648($sp)
    ld	$s7,664($sp)
    ld	$s8,624($sp)
    jr	$ra
    addiu	$sp,$sp,736
.L0d97c310:
    # Line 172
    lw	$s7,0($s7)
    beqz	$s7,.L0d97bf40
    nop
    # Line 173
    lh	$v0,12($s7)
    beq	$v0,$t9,.L0d97c330
    nop
    bne	$v0,$s6,.L0d97bf40
    nop
.L0d97c330:
    # Line 172
    lw	$s7,0($s7)
    bnez	$s7,.L0d97bf28
    nop
    b	.L0d97bf40
    nop
    nop
    nop
    nop
.L0d97c350:
    # Line 192
    li	$at,1032
    li	$ra,1029
    b	.L0d97bfc8
    # Line 188
    lw	$v0,16($s2)
.end __glDlistOptimizeMaterial

# Function: __glle_FastMaterial
# Declared: Line 313 (Source lines: 314-401)
# Address: 0x0d97c360 - 0x0d97c624 (Size: 708 bytes, Frame: 128)
.globl __glle_FastMaterial
.ent __glle_FastMaterial
__glle_FastMaterial:
    # Line 314
    addiu	$sp,$sp,-128
    sd	$s5,16($sp)
    # Line 321
    lw	$s5,4112($zero)
    sd	$s8,112($sp)
    sd	$s7,104($sp)
    sd	$s0,8($sp)
    sd	$s4,96($sp)
    sd	$ra,88($sp)
    sd	$s6,80($sp)
    sd	$s3,72($sp)
    # Line 331
    lw	$at,4120($zero)
    # Line 314
    sd	$s1,24($sp)
    # Line 331
    li	$v0,1
    # Line 314
    lui	$v1,0xd
    move	$s1,$a0
    sd	$s2,64($sp)
    addiu	$v1,$v1,18988
    sd	$gp,32($sp)
    # Line 331
    beq	$at,$v0,.L0d97c604
    # Line 314
    addu	$gp,$t9,$v1
    # Line 335
    addiu	$s0,$s1,4
.L0d97c3b4:
    li	$a1,1029
    lw	$a0,0($s1)
    move	$s4,$zero
    addiu	$a3,$s5,28100
    addiu	$s8,$s5,28140
    addiu	$s7,$s5,1504
    lw	$s2,4($sp)
    lw	$s3,0($sp)
    beqz	$a0,.L0d97c5cc
    move	$v0,$a0
    sd	$zero,56($sp)
    sd	$a3,48($sp)
    li	$a0,1028
    addiu	$a2,$s5,1424
    b	.L0d97c57c
    sd	$a2,40($sp)
    nop
    nop
    nop
.L0d97c400:
    # Line 346
    or	$a5,$s1,$s4
    xor	$a4,$a1,$v0
    movz	$s3,$s8,$a4
    movz	$s2,$s7,$a4
    movz	$s4,$a5,$a4
.L0d97c414:
    # Line 348
    andi	$a6,$s1,0x1
    beqz	$a6,.L0d97c444
    # Line 353
    andi	$a7,$s1,0x2
    # Line 350
    lwc1	$f3,0($s0)
    swc1	$f3,0($s2)
    # Line 351
    lwc1	$f2,4($s0)
    swc1	$f2,4($s2)
    # Line 352
    lwc1	$f1,8($s0)
    swc1	$f1,8($s2)
    # Line 353
    lwc1	$f0,12($s0)
    addiu	$s0,$s0,16
    swc1	$f0,12($s2)
.L0d97c444:
    beqz	$a7,.L0d97c470
    # Line 359
    andi	$t0,$s1,0x4
    # Line 356
    lwc1	$f7,0($s0)
    swc1	$f7,16($s2)
    # Line 357
    lwc1	$f6,4($s0)
    swc1	$f6,20($s2)
    # Line 358
    lwc1	$f5,8($s0)
    swc1	$f5,24($s2)
    # Line 359
    lwc1	$f4,12($s0)
    addiu	$s0,$s0,16
    swc1	$f4,28($s2)
.L0d97c470:
    beqz	$t0,.L0d97c49c
    # Line 365
    andi	$t1,$s1,0x8
    # Line 362
    lwc1	$f11,0($s0)
    swc1	$f11,32($s2)
    # Line 363
    lwc1	$f10,4($s0)
    swc1	$f10,36($s2)
    # Line 364
    lwc1	$f9,8($s0)
    swc1	$f9,40($s2)
    # Line 365
    lwc1	$f8,12($s0)
    addiu	$s0,$s0,16
    swc1	$f8,44($s2)
.L0d97c49c:
    beqz	$t1,.L0d97c4e8
    # Line 377
    andi	$t2,$s1,0x10
    # Line 370
    lwc1	$f13,30752($s5)
    # Line 371
    lwc1	$f15,30756($s5)
    # Line 372
    lwc1	$f17,30760($s5)
    # Line 373
    lwc1	$f19,30792($s5)
    lwc1	$f18,12($s0)
    # Line 372
    lwc1	$f16,8($s0)
    # Line 371
    lwc1	$f14,4($s0)
    # Line 370
    lwc1	$f12,0($s0)
    # Line 373
    mul.s	$f18,$f18,$f19
    # Line 372
    mul.s	$f16,$f16,$f17
    # Line 377
    swc1	$f18,60($s2)
    # Line 371
    mul.s	$f14,$f14,$f15
    # Line 376
    swc1	$f16,56($s2)
    # Line 370
    mul.s	$f12,$f12,$f13
    # Line 375
    swc1	$f14,52($s2)
    # Line 373
    addiu	$s0,$s0,16
    # Line 374
    swc1	$f12,48($s2)
.L0d97c4e8:
    # Line 377
    beqz	$t2,.L0d97c548
    # Line 387
    andi	$t9,$s1,0x20
    # Line 380
    lwc1	$f21,0($s0)
    swc1	$f21,64($s2)
    swc1	$f21,16($s3)
    # Line 381
    lw	$s6,4($s0)
    # Line 383
    # lw $t9, -24692($gp) # &__glFreeSpecLUT
    # Line 382
    lw	$t3,0($s6)
    # Line 383
    move	$a0,$s5
    # Line 382
    addiu	$t3,$t3,1
    sw	$t3,0($s6)
    # Line 381
    addiu	$s0,$s0,8
    # Line 383
    jal	__glFreeSpecLUT
    lw	$a1,32($s3)
    # Line 384
    sw	$s6,32($s3)
    # Line 385
    lwc1	$f25,4($s6)
    swc1	$f25,24($s3)
    # Line 386
    lwc1	$f23,8($s6)
    # Line 387
    addiu	$t8,$s6,16
    sw	$t8,20($s3)
    li	$a0,1028
    li	$a1,1029
    # Line 386
    swc1	$f23,28($s3)
    # Line 387
    andi	$t9,$s1,0x20
.L0d97c548:
    beqz	$t9,.L0d97c56c
    nop
    # Line 390
    lwc1	$f31,0($s0)
    swc1	$f31,68($s2)
    # Line 391
    lwc1	$f29,4($s0)
    swc1	$f29,72($s2)
    # Line 392
    lwc1	$f27,8($s0)
    addiu	$s0,$s0,12
    swc1	$f27,76($s2)
.L0d97c56c:
    # Line 335
    lw	$ra,0($s0)
    addiu	$s0,$s0,4
    beqz	$ra,.L0d97c5a0
    move	$v0,$ra
.L0d97c57c:
    # Line 336
    lw	$s1,0($s0)
    # Line 337
    bne	$a0,$v0,.L0d97c400
    # Line 336
    addiu	$s0,$s0,4
    # Line 339
    ld	$s2,40($sp)
    ld	$at,56($sp)
    # Line 340
    ld	$s3,48($sp)
    # Line 341
    or	$at,$s1,$at
    b	.L0d97c414
    sd	$at,56($sp)
.L0d97c5a0:
    # Line 335
    ld	$v0,56($sp)
    li	$v1,-33
    or	$v0,$v0,$s4
    and	$v0,$v0,$v1
    beqz	$v0,.L0d97c5d0
    ld	$s8,112($sp)
    # Line 398
    # lw $t9, -25772($gp) # &__glValidateMaterial
    move	$a0,$s5
    ld	$a1,56($sp)
    jal	__glValidateMaterial
    move	$a2,$s4
.L0d97c5cc:
    ld	$s8,112($sp)
.L0d97c5d0:
    ld	$s7,104($sp)
    ld	$s4,96($sp)
    ld	$s6,80($sp)
    ld	$s3,72($sp)
    ld	$s2,64($sp)
    # Line 401
    ld	$gp,32($sp)
    ld	$ra,88($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d97c604:
    # Line 331
    lw	$v1,28088($s5)
    beqz	$v1,.L0d97c3b4
    # Line 335
    addiu	$s0,$s1,4
    # Line 332
    lw	$t9,12020($s5)
    jalr	$t9
    move	$a0,$s5
    b	.L0d97c3b4
    # Line 335
    addiu	$s0,$s1,4
.end __glle_FastMaterial

