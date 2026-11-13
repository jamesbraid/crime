# Source: ../dlist/dl_block.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_block.c
# Total Functions: 10

.text

# Function: __glDlistBlockStateInit
# Declared: Line 45 (Source lines: 51-92)
# Address: 0x0d979970 - 0x0d979a04 (Size: 148 bytes, Frame: 32)
.globl __glDlistBlockStateInit
.ent __glDlistBlockStateInit
__glDlistBlockStateInit:
    # Line 74
    sw	$zero,4($a5)
    # Line 72
    li	$v0,-1
    sw	$v0,8($a5)
    # Line 68
    sw	$a4,20($a5)
    # Line 67
    sw	$a3,16($a5)
    # Line 66
    sw	$a2,12($a5)
    # Line 65
    sw	$a1,0($a5)
    # Line 51
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,0($sp)
    addiu	$at,$at,29724
    addu	$gp,$t9,$at
    # Line 77
    lw	$t9,0($a0)
    li	$a1,4
    # Line 51
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    # Line 77
    jalr	$t9
    # Line 51
    move	$s0,$a5
    # Line 77
    move	$a2,$v0
    bnez	$v0,.L0d9799dc
    sw	$v0,24($s0)
    # Line 92
    ld	$ra,8($sp)
    # Line 78
    move	$v0,$zero
    # Line 92
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9799dc:
    ld	$gp,0($sp)
    # Line 79
    sw	$zero,0($v0)
    # Line 84
    sw	$zero,40($s0)
    # Line 92
    ld	$ra,8($sp)
    # Line 83
    sw	$zero,36($s0)
    # Line 92
    li	$v0,1
    # Line 81
    sw	$zero,28($s0)
    # Line 92
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistBlockStateInit

# Function: __glDlistBlockStateFree
# Declared: Line 95 (Source lines: 96-112)
# Address: 0x0d979a10 - 0x0d979ab4 (Size: 164 bytes, Frame: 32)
.globl __glDlistBlockStateFree
.ent __glDlistBlockStateFree
__glDlistBlockStateFree:
    # Line 102
    lw	$a3,4($a1)
    lw	$a2,0($a1)
    multu	$a2,$a3
    # Line 96
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    lui	$v1,0xd
    sd	$gp,24($sp)
    addiu	$v1,$v1,29564
    addu	$gp,$t9,$v1
    # Line 102
    lw	$t9,12($a1)
    # Line 96
    sd	$ra,16($sp)
    move	$v0,$a1
    sd	$a1,8($sp)
    # Line 102
    mflo	$at
    lw	$a1,20($a1)
    jalr	$t9
    negu	$a0,$at
    li	$a4,-1
    bne	$v0,$a4,.L0d979a70
    # Line 112
    ld	$ra,16($sp)
    # Line 103
    move	$v0,$zero
    # Line 112
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d979a70:
    # Line 104
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,8($sp)
    jalr	$t9
    lw	$a1,24($a1)
    # Line 105
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,8($sp)
    jalr	$t9
    lw	$a1,36($a1)
    # Line 112
    ld	$ra,16($sp)
    li	$v0,1
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistBlockStateFree

# Function: block_grow_region
# Declared: Line 121 (Source lines: 123-154)
# Address: 0x0d979ac0 - 0x0d979ca8 (Size: 488 bytes, Frame: 192)
.ent block_grow_region
block_grow_region:
    # Line 138
    lw	$v1,4($a1)
    lw	$v0,0($a1)
    subu	$v1,$a0,$v1
    multu	$v0,$v1
    # Line 126
    lw	$at,4112($zero)
    # Line 123
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 138
    lw	$t9,12($a1)
    # Line 123
    move	$s0,$a1
    # Line 138
    lw	$a1,20($a1)
    sd	$ra,40($sp)
    # Line 123
    sd	$a0,16($sp)
    # Line 138
    mflo	$a0
    jalr	$t9
    sd	$at,24($sp)
    li	$a3,-1
    beq	$a3,$v0,.L0d979c8c
    sd	$v0,8($sp)
    sd	$s1,48($sp)
    # Line 140
    ld	$s1,16($sp)
    ld	$a0,24($sp)
    lw	$t9,8($a0)
    addiu	$s1,$s1,31
    srl	$s1,$s1,0x5
    sd	$s1,0($sp)
    sll	$s1,$s1,0x2
    lw	$a1,24($s0)
    jalr	$t9
    move	$a2,$s1
    bnez	$v0,.L0d979b54
    sw	$v0,24($s0)
    ld	$s0,32($sp)
    ld	$s1,48($sp)
    # Line 141
    move	$v0,$zero
.L0d979b48:
    ld	$ra,40($sp)
    # Line 154
    jr	$ra
    addiu	$sp,$sp,64
.L0d979b54:
    # Line 142
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,8($t9)
    move	$a2,$s1
    jalr	$t9
    lw	$a1,36($s0)
    ld	$a2,0($sp)
    beqz	$v0,.L0d979c98
    sw	$v0,36($s0)
    # Line 145
    lw	$a0,4($s0)
    addiu	$a5,$a0,31
    srl	$a5,$a5,0x5
    sltu	$ra,$a5,$a2
    subu	$a6,$a2,$a5
    beqz	$ra,.L0d979c48
    andi	$a4,$a6,0x3
    beqz	$a4,.L0d979bc0
    sll	$a0,$a5,0x2
.L0d979b9c:
    # Line 146
    lw	$t0,36($s0)
    addu	$t0,$t0,$a0
    sw	$zero,0($t0)
    lw	$a7,24($s0)
    addiu	$a4,$a4,-1
    addu	$a7,$a7,$a0
    # Line 145
    addiu	$a0,$a0,4
    bnez	$a4,.L0d979b9c
    # Line 146
    sw	$zero,0($a7)
.L0d979bc0:
    sra	$t1,$a6,0x2
    beqz	$t1,.L0d979c44
    nop
    nop
.L0d979bd0:
    lw	$a3,36($s0)
    addu	$a3,$a3,$a0
    sw	$zero,0($a3)
    lw	$a2,24($s0)
    addu	$a2,$a2,$a0
    sw	$zero,0($a2)
    lw	$a1,36($s0)
    # Line 145
    addiu	$v1,$a0,4
    # Line 146
    addu	$a1,$a1,$v1
    sw	$zero,0($a1)
    lw	$v0,24($s0)
    addu	$v0,$v0,$v1
    sw	$zero,0($v0)
    lw	$at,36($s0)
    # Line 145
    addiu	$ra,$a0,8
    # Line 146
    addu	$at,$at,$ra
    sw	$zero,0($at)
    lw	$t9,24($s0)
    addu	$t9,$t9,$ra
    sw	$zero,0($t9)
    lw	$t8,36($s0)
    # Line 145
    addiu	$t3,$a0,12
    # Line 146
    addu	$t8,$t8,$t3
    sw	$zero,0($t8)
    lw	$t2,24($s0)
    # Line 145
    addiu	$a0,$a0,16
    # Line 146
    addu	$t2,$t2,$t3
    # Line 145
    bne	$a0,$s1,.L0d979bd0
    # Line 146
    sw	$zero,0($t2)
.L0d979c44:
    # Line 145
    lw	$a0,4($s0)
.L0d979c48:
    # Line 149
    lw	$a6,8($s0)
    ld	$a5,16($sp)
    # Line 148
    lw	$a4,28($s0)
    # Line 149
    sw	$a5,4($s0)
    # Line 148
    subu	$a5,$a5,$a0
    ld	$s1,48($sp)
    addu	$a4,$a4,$a5
    # Line 149
    li	$a5,-1
    # Line 154
    ld	$ra,40($sp)
    li	$v0,1
    # Line 149
    bne	$a5,$a6,.L0d979c80
    # Line 148
    sw	$a4,28($s0)
    # Line 151
    ld	$a6,8($sp)
    sw	$a6,8($s0)
.L0d979c80:
    # Line 154
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d979c8c:
    ld	$s0,32($sp)
    # Line 139
    b	.L0d979b48
    move	$v0,$zero
.L0d979c98:
    ld	$s0,32($sp)
    ld	$s1,48($sp)
    # Line 143
    b	.L0d979b48
    move	$v0,$zero
.end block_grow_region

# Function: __glDlistPreallocBlocks
# Declared: Line 157 (Source lines: 158-164)
# Address: 0x0d979cb0 - 0x0d979d18 (Size: 104 bytes, Frame: 16)
.globl __glDlistPreallocBlocks
.ent __glDlistPreallocBlocks
__glDlistPreallocBlocks:
    # Line 158
    lw	$a3,28($a0)
    move	$a5,$a1
    move	$a4,$a0
    lui	$at,0xd
    sltu	$v0,$a3,$a1
    addiu	$sp,$sp,-16
    addiu	$at,$at,28892
    sd	$gp,0($sp)
    bnez	$v0,.L0d979ce8
    addu	$gp,$t9,$at
    # Line 164
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d979ce8:
    # Line 162
    # lw $t9, -32728($gp) # &sub_0d980000
    lw	$a0,4($a0)
    addiu	$t9,$t9,-25920
    move	$a1,$a4
    addu	$a0,$a5,$a0
    sd	$ra,8($sp)
    bal __glDlistBlockStateFree
    subu	$a0,$a0,$a3
    ld	$ra,8($sp)
    # Line 164
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDlistPreallocBlocks

# Function: __glDlistAllocBlock
# Declared: Line 168 (Source lines: 169-207)
# Address: 0x0d979d20 - 0x0d979ea8 (Size: 392 bytes, Frame: 32)
.globl __glDlistAllocBlock
.ent __glDlistAllocBlock
__glDlistAllocBlock:
    # Line 169
    addiu	$sp,$sp,-32
    lw	$a1,8($a0)
    sd	$s0,8($sp)
    li	$a5,-1
    lui	$at,0xd
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,28780
    sd	$gp,0($sp)
    beq	$a5,$a1,.L0d979e58
    addu	$gp,$t9,$at
.L0d979d4c:
    # Line 180
    lw	$v0,28($s0)
    beqz	$v0,.L0d979e34
    # Line 184
    nop	# was lw $t9, -32728($gp) # &sub_0d980000
.L0d979d58:
    # Line 186
    lw	$a4,4($s0)
    # Line 194
    lw	$a2,0($s0)
    # Line 207
    ld	$gp,0($sp)
    # Line 186
    srl	$a4,$a4,0x5
    ld	$ra,16($sp)
    move	$a3,$zero
    beqz	$a4,.L0d979e24
    lw	$a0,24($s0)
    lw	$a6,0($a0)
    bne	$a5,$a6,.L0d979d8c
    move	$a7,$a0
    b	.L0d979e08
    addiu	$a3,$a3,1
.L0d979d8c:
    move	$a7,$a0
    move	$a3,$zero
.L0d979d94:
    # Line 187
    andi	$a5,$a6,0x1
    # Line 189
    li	$a4,1
    # Line 187
    beqz	$a5,.L0d979dcc
    sll	$a5,$a3,0x5
    li	$a4,1
.L0d979da8:
    # Line 189
    sll	$a4,$a4,0x1
    and	$t0,$a6,$a4
    addiu	$a5,$a5,1
    beqz	$t0,.L0d979dcc
    nop
    sll	$a4,$a4,0x1
    and	$t1,$a6,$a4
    bnez	$t1,.L0d979da8
    addiu	$a5,$a5,1
.L0d979dcc:
    # Line 194
    multu	$a5,$a2
    # Line 196
    or	$a0,$a6,$a4
    sw	$a0,0($a7)
    # Line 197
    lw	$v1,28($s0)
    addiu	$v1,$v1,-1
    sw	$v1,28($s0)
    # Line 207
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    # Line 194
    mflo	$v0
    # Line 207
    jr	$ra
    # Line 194
    addu	$v0,$a1,$v0
.L0d979df8:
    # Line 186
    lw	$a6,0($a7)
    bne	$a5,$a6,.L0d979d94
    nop
    addiu	$a3,$a3,1
.L0d979e08:
    sltu	$a6,$a3,$a4
    bnez	$a6,.L0d979df8
    addiu	$a7,$a7,4
    sll	$a7,$a3,0x2
    addu	$a7,$a0,$a7
    b	.L0d979d94
    lw	$a6,0($a7)
.L0d979e24:
    move	$a7,$a0
    lw	$a6,0($a0)
    b	.L0d979d94
    move	$a3,$zero
.L0d979e34:
    # Line 184
    lw	$a0,4($s0)
    addiu	$t9,$t9,-25920
    move	$a1,$s0
    bal __glDlistBlockStateFree
    addiu	$a0,$a0,32
    beqz	$v0,.L0d979e90
    li	$a5,-1
    b	.L0d979d58
    lw	$a1,8($s0)
.L0d979e58:
    # Line 179
    lw	$t9,12($s0)
    move	$a0,$zero
    jal	sub_0d980000
    lw	$a1,20($s0)
    li	$a5,-1
    move	$a1,$v0
    bne	$a5,$v0,.L0d979d4c
    sw	$v0,8($s0)
    ld	$ra,16($sp)
    move	$v0,$a5
    # Line 207
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d979e90:
    ld	$ra,16($sp)
    move	$v0,$a5
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistAllocBlock

# Function: __glDlistFreeBlock
# Declared: Line 210 (Source lines: 223-241)
# Address: 0x0d979eb0 - 0x0d979f00 (Size: 80 bytes, Frame: 0)
.globl __glDlistFreeBlock
.ent __glDlistFreeBlock
__glDlistFreeBlock:
    # Line 223
    lw	$a5,8($a0)
    lw	$v0,0($a0)
    subu	$a5,$a1,$a5
    divu	$zero,$a5,$v0
    mflo	$a3
    # Line 228
    lw	$a1,24($a0)
    sra	$a4,$a3,0x5
    sll	$a4,$a4,0x2
    li	$a2,1
    addu	$a1,$a1,$a4
    sllv	$a2,$a2,$a3
    lw	$v1,0($a1)
    nor	$a2,$a2,$zero
    and	$v1,$v1,$a2
    sw	$v1,0($a1)
    # Line 229
    lw	$at,28($a0)
    # Line 223
    teq	$v0,$zero,0x7
    # Line 229
    addiu	$at,$at,1
    # Line 241
    jr	$ra
    # Line 229
    sw	$at,28($a0)
.end __glDlistFreeBlock

# Function: __glDlistCompactBlocks
# Declared: Line 243 (Source lines: 244-280)
# Address: 0x0d979f00 - 0x0d97a188 (Size: 648 bytes, Frame: 192)
.globl __glDlistCompactBlocks
.ent __glDlistCompactBlocks
__glDlistCompactBlocks:
    # Line 244
    addiu	$sp,$sp,-64
    # Line 246
    lw	$v0,4112($zero)
    sd	$v0,0($sp)
    sd	$s2,48($sp)
    sd	$s1,40($sp)
    sd	$s0,32($sp)
    lw	$a3,4($a0)
    # Line 244
    sd	$s3,16($sp)
    lui	$at,0xd
    move	$s3,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,28300
    sd	$gp,8($sp)
    # Line 246
    beqz	$a3,.L0d97a0d4
    # Line 244
    addu	$gp,$t9,$at
    # Line 246
    move	$s0,$zero
    move	$s1,$zero
    b	.L0d97a174
    li	$s2,1
    nop
.L0d979f50:
    # Line 253
    movz	$v1,$s1,$a0
    sra	$v1,$v1,0x5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x5
    addu	$v0,$a2,$v0
    subu	$v1,$s1,$v1
    lw	$v0,0($v0)
    sllv	$v1,$s2,$v1
    and	$v0,$v0,$v1
    beqz	$v0,.L0d979fd0
    nop
    addiu	$s1,$s1,1
.L0d979f80:
    slt	$a1,$s1,$s0
    slt	$t1,$s1,$zero
    beqz	$a1,.L0d979fd0
    addiu	$t0,$s1,31
    movz	$t0,$s1,$t1
    sra	$t0,$t0,0x5
    sll	$a4,$t0,0x2
    sll	$t0,$t0,0x5
    addu	$a4,$a2,$a4
    subu	$t0,$s1,$t0
    lw	$a4,0($a4)
    sllv	$t0,$s2,$t0
    and	$a4,$a4,$t0
    beqz	$a4,.L0d979fd0
    nop
    addiu	$s1,$s1,1
    slt	$t2,$s1,$s0
    slt	$a0,$s1,$zero
    bnez	$t2,.L0d979f50
    addiu	$v1,$s1,31
.L0d979fd0:
    # Line 254
    bne	$s0,$s1,.L0d97a05c
    # Line 257
    nor	$a4,$a6,$zero
.L0d979fd8:
    # Line 251
    addiu	$s0,$s0,1
    sltu	$t3,$s0,$a3
    # Line 253
    addiu	$t2,$s1,31
    slt	$t0,$s1,$s0
    # Line 251
    beqz	$t3,.L0d97a0d4
    # Line 246
    addiu	$a6,$s0,31
    slt	$a7,$s0,$zero
.L0d979ff4:
    movz	$a6,$s0,$a7
    lw	$a2,24($s3)
    sra	$a6,$a6,0x5
    sll	$a7,$a6,0x2
    sll	$a6,$a6,0x5
    addu	$a7,$a2,$a7
    subu	$a6,$s0,$a6
    lw	$a5,0($a7)
    sllv	$a6,$s2,$a6
    and	$t8,$a6,$a5
    beqz	$t8,.L0d979fd8
    # Line 253
    slt	$t3,$s1,$zero
    movz	$t2,$s1,$t3
    beqz	$t0,.L0d979fd0
    sra	$t2,$t2,0x5
    sll	$t1,$t2,0x2
    sll	$t2,$t2,0x5
    addu	$t1,$a2,$t1
    lw	$t1,0($t1)
    subu	$t2,$s1,$t2
    sllv	$t2,$s2,$t2
    and	$t1,$t1,$t2
    beqz	$t1,.L0d979fd0
    nop
    b	.L0d979f80
    addiu	$s1,$s1,1
.L0d97a05c:
    # Line 258
    addiu	$a3,$s1,31
    slt	$t0,$s1,$zero
    # Line 257
    and	$a4,$a5,$a4
    sw	$a4,0($a7)
    # Line 258
    movz	$a3,$s1,$t0
    lw	$a2,24($s3)
    sra	$a3,$a3,0x5
    sll	$a4,$a3,0x2
    sll	$a3,$a3,0x5
    addu	$a2,$a2,$a4
    subu	$a3,$s1,$a3
    lw	$a1,0($a2)
    sllv	$a3,$s2,$a3
    or	$a1,$a1,$a3
    sw	$a1,0($a2)
    # Line 259
    lw	$a2,0($s3)
    multu	$s1,$a2
    mflo	$a0
    nop
    nop
    multu	$s0,$a2
    lw	$a1,8($s3)
    lw	$t9,16($s3)
    addu	$a0,$a1,$a0
    mflo	$a4
    lw	$a3,20($s3)
    jalr	$t9
    addu	$a1,$a1,$a4
    b	.L0d979fd8
    lw	$a3,4($s3)
.L0d97a0d4:
    # Line 268
    lw	$a1,0($s3)
    lw	$a2,28($s3)
    multu	$a1,$a2
    lw	$t9,12($s3)
    mflo	$a0
    lw	$a1,20($s3)
    jalr	$t9
    negu	$a0,$a0
    ld	$s2,48($sp)
    li	$a3,-1
    ld	$s1,40($sp)
    bne	$v0,$a3,.L0d97a120
    ld	$s0,32($sp)
    ld	$ra,24($sp)
    # Line 270
    move	$v0,$zero
    # Line 280
    ld	$gp,8($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97a120:
    # Line 272
    lw	$a3,28($s3)
    # Line 273
    sw	$zero,28($s3)
    # Line 272
    lw	$a2,4($s3)
    # Line 275
    ld	$a0,0($sp)
    # Line 272
    subu	$a2,$a2,$a3
    sw	$a2,4($s3)
    # Line 275
    lw	$t9,8($a0)
    srl	$a2,$a2,0x5
    sll	$a2,$a2,0x2
    lw	$a1,24($s3)
    jalr	$t9
    addiu	$a2,$a2,4
    # Line 280
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    # Line 275
    sw	$v0,24($s3)
    # Line 280
    li	$a4,1
    ld	$s3,16($sp)
    addiu	$sp,$sp,64
    movz	$a4,$zero,$v0
    jr	$ra
    move	$v0,$a4
.L0d97a174:
    # Line 246
    addiu	$a6,$s0,31
    # Line 253
    slt	$t0,$s1,$s0
    addiu	$t2,$s1,31
    b	.L0d979ff4
    # Line 246
    slt	$a7,$s0,$zero
.end __glDlistCompactBlocks

# Function: __glDlistIsBlock
# Declared: Line 283 (Source lines: 290-292)
# Address: 0x0d97a190 - 0x0d97a1cc (Size: 60 bytes, Frame: 0)
.globl __glDlistIsBlock
.ent __glDlistIsBlock
__glDlistIsBlock:
    # Line 290
    lw	$a3,8($a0)
    slt	$at,$a1,$a3
    bnez	$at,.L0d97a1c4
    lw	$a2,4($a0)
    lw	$v1,0($a0)
    multu	$v1,$a2
    mflo	$v0
    addu	$v0,$a3,$v0
    sltu	$v0,$a1,$v0
    beqz	$v0,.L0d97a1c4
    nop
    # Line 292
    jr	$ra
    # Line 290
    li	$v0,1
.L0d97a1c4:
    # Line 292
    jr	$ra
    # Line 290
    move	$v0,$zero
.end __glDlistIsBlock

# Function: __glDlistTransientBlock
# Declared: Line 343 (Source lines: 350-360)
# Address: 0x0d97a1d0 - 0x0d97a21c (Size: 76 bytes, Frame: 0)
.globl __glDlistTransientBlock
.ent __glDlistTransientBlock
__glDlistTransientBlock:
    # Line 350
    lw	$a3,8($a0)
    lw	$v0,0($a0)
    subu	$a3,$a1,$a3
    divu	$zero,$a3,$v0
    mflo	$a3
    # Line 355
    lw	$a1,36($a0)
    sra	$a2,$a3,0x5
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    li	$a2,1
    lw	$v1,0($a1)
    sllv	$a2,$a2,$a3
    or	$v1,$v1,$a2
    sw	$v1,0($a1)
    # Line 356
    lw	$at,40($a0)
    # Line 350
    teq	$v0,$zero,0x7
    # Line 356
    addiu	$at,$at,1
    # Line 360
    jr	$ra
    # Line 356
    sw	$at,40($a0)
.end __glDlistTransientBlock

# Function: __glDlistFreeTransient
# Declared: Line 363 (Source lines: 363-371)
# Address: 0x0d97a220 - 0x0d97a2a4 (Size: 132 bytes, Frame: 0)
.globl __glDlistFreeTransient
.ent __glDlistFreeTransient
__glDlistFreeTransient:
    # Line 363
    lw	$at,4($a0)
    addiu	$at,$at,31
    srl	$at,$at,0x5
    beqz	$at,.L0d97a28c
    move	$a3,$zero
    move	$a2,$zero
    nop
    nop
.L0d97a240:
    # Line 366
    lw	$a5,36($a0)
    lw	$a4,24($a0)
    addu	$a5,$a5,$a2
    addu	$a4,$a4,$a2
    lw	$a5,0($a5)
    lw	$a1,0($a4)
    nor	$a5,$a5,$zero
    and	$a1,$a1,$a5
    sw	$a1,0($a4)
    # Line 367
    lw	$v1,36($a0)
    addu	$v1,$v1,$a2
    sw	$zero,0($v1)
    # Line 365
    lw	$v0,4($a0)
    addiu	$v0,$v0,31
    addiu	$a3,$a3,1
    srl	$v0,$v0,0x5
    sltu	$v0,$a3,$v0
    bnez	$v0,.L0d97a240
    addiu	$a2,$a2,4
.L0d97a28c:
    # Line 369
    lw	$a6,28($a0)
    lw	$a7,40($a0)
    # Line 370
    sw	$zero,40($a0)
    # Line 369
    addu	$a6,$a6,$a7
    # Line 371
    jr	$ra
    # Line 369
    sw	$a6,28($a0)
.end __glDlistFreeTransient

