# Source: ../soft/so_feedback.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_feedback.c
# Total Functions: 10

.text

# Function: __glim_FeedbackBuffer
# Declared: Line 24 (Source lines: 25-45)
# Address: 0x0d9d7a80 - 0x0d9d7b50 (Size: 208 bytes, Frame: 16)
.globl __glim_FeedbackBuffer
.ent __glim_FeedbackBuffer
__glim_FeedbackBuffer:
    # Line 34
    li	$a7,7169
    # Line 25
    addiu	$sp,$sp,-16
    # Line 26
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 25
    lui	$v1,0x8
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-27892
    sd	$gp,0($sp)
    # Line 26
    beq	$at,$v0,.L0d9d7b2c
    # Line 25
    addu	$gp,$t9,$v1
    # Line 28
    sltiu	$a3,$a1,1536
    bnez	$a3,.L0d9d7b0c
    # Line 29
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 28
    sltiu	$a5,$a1,1541
    beqz	$a5,.L0d9d7b0c
    # Line 29
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 30
    bltz	$a0,.L0d9d7b40
    # Line 33
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 34
    lw	$a6,3204($a4)
    beq	$a6,$a7,.L0d9d7b1c
    # Line 37
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 44
    sw	$a1,4884($a4)
    # Line 43
    sb	$zero,4868($a4)
    # Line 42
    sw	$a0,4880($a4)
    # Line 41
    sw	$a2,4876($a4)
    # Line 40
    sw	$a2,4872($a4)
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d7afc:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 29
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d7b0c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d7afc
    ld	$ra,8($sp)
.L0d9d7b1c:
    # Line 37
    jalr	$t9
    li	$a0,1282
    b	.L0d9d7afc
    ld	$ra,8($sp)
.L0d9d7b2c:
    # Line 26
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d7afc
    ld	$ra,8($sp)
.L0d9d7b40:
    # Line 33
    jalr	$t9
    li	$a0,1281
    b	.L0d9d7afc
    ld	$ra,8($sp)
.end __glim_FeedbackBuffer

# Function: __glim_PassThrough
# Declared: Line 47 (Source lines: 48-55)
# Address: 0x0d9d7b50 - 0x0d9d7be0 (Size: 144 bytes, Frame: 32)
.globl __glim_PassThrough
.ent __glim_PassThrough
__glim_PassThrough:
    # Line 48
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 49
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 48
    lui	$v1,0x8
    sd	$ra,24($sp)
    addiu	$v1,$v1,-28100
    mov.s	$f4,$f12
    sd	$gp,16($sp)
    # Line 49
    beq	$at,$v0,.L0d9d7bcc
    # Line 48
    addu	$gp,$t9,$v1
    # Line 49
    li	$a1,7169
    lw	$a0,3204($s0)
    beq	$a0,$a1,.L0d9d7ba4
    sdc1	$f12,0($sp)
    ld	$ra,24($sp)
.L0d9d7b94:
    ld	$s0,8($sp)
    # Line 55
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d7ba4:
    # Line 52
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e00000
    # Line 53
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    ldc1	$f13,0($sp)
    b	.L0d9d7b94
    ld	$ra,24($sp)
.L0d9d7bcc:
    # Line 49
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d7b94
    ld	$ra,24($sp)
.end __glim_PassThrough

# Function: __glFeedbackTag
# Declared: Line 59 (Source lines: 60-70)
# Address: 0x0d9d7be0 - 0x0d9d7c30 (Size: 80 bytes, Frame: 0)
.globl __glFeedbackTag
.ent __glFeedbackTag
__glFeedbackTag:
    # Line 60
    lbu	$at,4868($a0)
    bnez	$at,.L0d9d7c14
    nop
    lw	$v1,4880($a0)
    lw	$v0,4872($a0)
    lw	$a2,4876($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sltu	$v0,$a2,$v0
    bnez	$v0,.L0d9d7c1c
    # Line 64
    li	$a1,1
    # Line 70
    jr	$ra
    # Line 64
    sb	$a1,4868($a0)
.L0d9d7c14:
    # Line 70
    jr	$ra
    nop
.L0d9d7c1c:
    # Line 66
    swc1	$f13,0($a2)
    # Line 67
    lw	$a2,4876($a0)
    addiu	$a2,$a2,4
    # Line 70
    jr	$ra
    # Line 67
    sw	$a2,4876($a0)
.end __glFeedbackTag

# Function: feedback
# Declared: Line 72 (Source lines: 73-160)
# Address: 0x0d9d7c30 - 0x0d9d7f88 (Size: 856 bytes, Frame: 48)
.ent feedback
feedback:
    # Line 73
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 74
    lw	$s0,4884($a0)
    # Line 73
    sd	$s1,24($sp)
    # Line 76
    li	$at,1536
    # Line 73
    move	$s1,$a0
    sd	$s2,8($sp)
    move	$s2,$a1
    # Line 76
    beq	$s0,$at,.L0d9d7e34
    sd	$ra,32($sp)
    li	$v0,1537
    li	$a0,1538
    beq	$s0,$v0,.L0d9d7d94
    sd	$s3,40($sp)
    beq	$a0,$s0,.L0d9d7d98
    li	$s3,1539
    beq	$s3,$s0,.L0d9d7d98
    li	$v1,1540
    beq	$s0,$v1,.L0d9d7ea8
    nop
.L0d9d7c80:
    # Line 118
    beq	$a0,$s0,.L0d9d7d10
    nop
    beq	$s3,$s0,.L0d9d7d10
    li	$a0,1540
    beq	$s0,$a0,.L0d9d7d10
    nop
.L0d9d7c98:
    # Line 138
    beq	$s3,$s0,.L0d9d7ca8
    li	$a1,1540
    bne	$s0,$a1,.L0d9d7cf4
    nop
.L0d9d7ca8:
    # Line 147
    lw	$a2,0($s2)
    andi	$a2,$a2,0x4
    beqz	$a2,.L0d9d7f38
    # Line 150
    nop	# was lw $t9, -26128($gp) # &__glFeedbackTag
.L0d9d7cb8:
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,48($s2)
    # Line 151
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,52($s2)
    # Line 152
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,56($s2)
    # Line 153
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,60($s2)
.L0d9d7cf4:
    ld	$s2,8($sp)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s3,40($sp)
    ld	$s1,24($sp)
    # Line 160
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d7d10:
    # Line 123
    lbu	$a4,3220($s1)
    lw	$a3,8($s2)
    sd	$a3,0($sp)
    beqz	$a4,.L0d9d7e1c
    lwc1	$f4,0($a3)
    # Line 125
    lwc1	$f13,30800($s1)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f4
    # Line 126
    lwc1	$f14,30804($s1)
    ld	$a5,0($sp)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,4($a5)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    # Line 127
    lwc1	$f14,30808($s1)
    ld	$a6,0($sp)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,8($a6)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    # Line 128
    lwc1	$f14,30812($s1)
    ld	$a7,0($sp)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,12($a7)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    b	.L0d9d7c98
    nop
.L0d9d7d94:
    # Line 116
    li	$s3,1539
.L0d9d7d98:
    # Line 90
    lwc1	$f14,3668($s1)
    lwc1	$f13,128($s2)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lbu	$t0,4848($s1)
    lwc1	$f4,132($s2)
    lwc1	$f5,3672($s1)
    beqz	$t0,.L0d9d7e90
    sub.s	$f4,$f4,$f5
    # Line 92
    lw	$t1,3704($s1)
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,3676($s1)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    # Line 98
    lw	$t2,31304($s1)
.L0d9d7dec:
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f14
    lwc1	$f13,136($s2)
    cvt.s.l	$f14,$f14
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    div.s	$f13,$f13,$f14
    li	$a0,1538
    b	.L0d9d7c80
    nop
.L0d9d7e1c:
    # Line 130
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0d9d7c98
    nop
.L0d9d7e34:
    # Line 78
    lwc1	$f14,3668($s1)
    lwc1	$f13,128($a1)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lwc1	$f5,3672($s1)
    lwc1	$f4,132($s2)
    lbu	$t3,4848($s1)
    sd	$s3,40($sp)
    beqz	$t3,.L0d9d7f58
    sub.s	$f4,$f4,$f5
    # Line 80
    lw	$t8,3704($s1)
    mtc1	$t8,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,3676($s1)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    # Line 84
    li	$s3,1539
.L0d9d7e88:
    b	.L0d9d7c80
    li	$a0,1538
.L0d9d7e90:
    # Line 96
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0d9d7dec
    # Line 98
    lw	$t2,31304($s1)
.L0d9d7ea8:
    # Line 101
    lwc1	$f14,3668($s1)
    lwc1	$f13,128($a1)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lwc1	$f5,3672($s1)
    lwc1	$f4,132($s2)
    lbu	$t9,4848($s1)
    beqz	$t9,.L0d9d7f70
    sub.s	$f4,$f4,$f5
    # Line 103
    lw	$ra,3704($s1)
    mtc1	$ra,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,3676($s1)
    # lw $t9, -26128($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
.L0d9d7ef8:
    # Line 109
    lw	$at,31304($s1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f14
    lwc1	$f13,136($s2)
    cvt.s.l	$f14,$f14
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    div.s	$f13,$f13,$f14
    # Line 115
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,124($s2)
    b	.L0d9d7c80
    li	$a0,1538
.L0d9d7f38:
    # Line 148
    lw	$t9,12($s2)
    lw	$a2,28076($s1)
    move	$a0,$s1
    move	$a1,$s2
    jal	__glFeedbackTag
    ori	$a2,$a2,0x4
    b	.L0d9d7cb8
    # Line 150
    nop	# was lw $t9, -26128($gp) # &__glFeedbackTag
.L0d9d7f58:
    # Line 84
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0d9d7e88
    li	$s3,1539
.L0d9d7f70:
    # Line 107
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0d9d7ef8
    nop
.end feedback

# Function: __glFeedbackCopyPixels
# Declared: Line 162 (Source lines: 163-166)
# Address: 0x0d9d7f90 - 0x0d9d7fe8 (Size: 88 bytes, Frame: 32)
.globl __glFeedbackCopyPixels
.ent __glFeedbackCopyPixels
__glFeedbackCopyPixels:
    # Line 163
    addiu	$sp,$sp,-32
    lui	$at,0x8
    sd	$a1,24($sp)
    addiu	$at,$at,-29188
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 164
    # lw $t9, -26128($gp) # &__glFeedbackTag
    # Line 163
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 164
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e0c000
    # Line 165
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,31792
    move	$a0,$s8
    bal __glFeedbackTag
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 166
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFeedbackCopyPixels

# Function: __glFeedbackDrawPixels
# Declared: Line 168 (Source lines: 169-172)
# Address: 0x0d9d7ff0 - 0x0d9d8048 (Size: 88 bytes, Frame: 32)
.globl __glFeedbackDrawPixels
.ent __glFeedbackDrawPixels
__glFeedbackDrawPixels:
    # Line 169
    addiu	$sp,$sp,-32
    lui	$at,0x8
    sd	$a1,24($sp)
    addiu	$at,$at,-29284
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 170
    # lw $t9, -26128($gp) # &__glFeedbackTag
    # Line 169
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 170
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e0a000
    # Line 171
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,31792
    move	$a0,$s8
    bal __glFeedbackTag
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 172
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFeedbackDrawPixels

# Function: __glFeedbackBitmap
# Declared: Line 174 (Source lines: 175-178)
# Address: 0x0d9d8050 - 0x0d9d80a8 (Size: 88 bytes, Frame: 32)
.globl __glFeedbackBitmap
.ent __glFeedbackBitmap
__glFeedbackBitmap:
    # Line 175
    addiu	$sp,$sp,-32
    lui	$at,0x8
    sd	$a1,24($sp)
    addiu	$at,$at,-29380
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 176
    # lw $t9, -26128($gp) # &__glFeedbackTag
    # Line 175
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 176
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e08000
    # Line 177
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,31792
    move	$a0,$s8
    bal __glFeedbackTag
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 178
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFeedbackBitmap

# Function: __glFeedbackPoint
# Declared: Line 181 (Source lines: 182-185)
# Address: 0x0d9d80b0 - 0x0d9d8108 (Size: 88 bytes, Frame: 32)
.globl __glFeedbackPoint
.ent __glFeedbackPoint
__glFeedbackPoint:
    # Line 182
    addiu	$sp,$sp,-32
    lui	$at,0x8
    sd	$a1,24($sp)
    addiu	$at,$at,-29476
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 183
    # lw $t9, -26128($gp) # &__glFeedbackTag
    # Line 182
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 183
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 184
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,31792
    move	$a0,$s8
    bal __glFeedbackTag
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 185
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFeedbackPoint

# Function: __glFeedbackLine
# Declared: Line 188 (Source lines: 189-208)
# Address: 0x0d9d8110 - 0x0d9d81e4 (Size: 212 bytes, Frame: 48)
.globl __glFeedbackLine
.ent __glFeedbackLine
__glFeedbackLine:
    # Line 189
    addiu	$sp,$sp,-48
    # Line 193
    lw	$v0,30436($a0)
    # Line 189
    sd	$s1,16($sp)
    move	$s1,$a2
    # Line 193
    lw	$a4,8($a1)
    # Line 189
    lui	$at,0x8
    # Line 193
    dsll32	$v0,$v0,0xe
    # Line 189
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,-29572
    sd	$gp,32($sp)
    # Line 193
    bgez	$v0,.L0d9d81b8
    # Line 189
    addu	$gp,$t9,$at
.L0d9d8144:
    # Line 195
    lbu	$v1,29848($s0)
    sd	$ra,40($sp)
    sd	$a4,0($sp)
    beqz	$v1,.L0d9d81c4
    sd	$a1,24($sp)
    # Line 199
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # Line 202
    # lw $t9, -32708($gp) # &sub_0d9d0000
.L0d9d816c:
    addiu	$t9,$t9,31792
    # Line 204
    move	$a0,$s0
    bal __glFeedbackTag
    ld	$a1,24($sp)
    la	$a2,sub_0d9d0000
    addiu	$a2,$a2,31792
    # Line 205
    move	$t9,$a2
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s1
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 208
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    # Line 207
    ld	$a4,24($sp)
    ld	$a3,0($sp)
    # Line 208
    addiu	$sp,$sp,48
    jr	$ra
    # Line 207
    sw	$a3,8($a4)
.L0d9d81b8:
    # Line 195
    lw	$a5,8($a2)
    b	.L0d9d8144
    sw	$a5,8($a1)
.L0d9d81c4:
    # Line 202
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,_lit_44e0e000
    move	$a0,$s0
    # Line 201
    li	$a6,1
    # Line 202
    bal __glFeedbackTag
    # Line 201
    sb	$a6,29848($s0)
    b	.L0d9d816c
    # Line 202
    nop	# was lw $t9, -32708($gp) # &sub_0d9d0000
.end __glFeedbackLine

# Function: __glFeedbackTriangle
# Declared: Line 211 (Source lines: 213-359)
# Address: 0x0d9d81f0 - 0x0d9d86a4 (Size: 1204 bytes, Frame: 192)
.globl __glFeedbackTriangle
.ent __glFeedbackTriangle
__glFeedbackTriangle:
    # Line 240
    lwc1	$f6,128($a3)
    lwc1	$f5,132($a3)
    lwc1	$f3,132($a2)
    lwc1	$f4,132($a1)
    lwc1	$f1,128($a2)
    lwc1	$f2,128($a1)
    sub.s	$f3,$f3,$f5
    sub.s	$f4,$f4,$f5
    sub.s	$f1,$f1,$f6
    sub.s	$f2,$f2,$f6
    mul.s	$f1,$f1,$f4
    msub.s	$f1,$f1,$f2,$f3
    mtc1	$zero,$f0
    # Line 213
    addiu	$sp,$sp,-64
    sd	$s1,56($sp)
    sd	$s2,8($sp)
    # Line 240
    c.le.s	$f0,$f1
    # Line 213
    sd	$s4,16($sp)
    # Line 240
    li	$a5,1
    # Line 213
    sd	$s3,24($sp)
    # Line 240
    movf	$a5,$zero,$fcc0
    lbu	$at,30521($a0)
    addu	$a5,$a0,$a5
    # Line 213
    move	$s3,$a3
    move	$s4,$a2
    # Line 240
    lbu	$a5,30516($a5)
    # Line 213
    move	$s2,$a1
    sd	$s0,32($sp)
    lui	$v0,0x8
    move	$s0,$a0
    sd	$ra,48($sp)
    addiu	$v0,$v0,-29796
    sd	$gp,40($sp)
    # Line 240
    beq	$a5,$at,.L0d9d839c
    # Line 213
    addu	$gp,$t9,$v0
    # Line 250
    lw	$a7,1392($a0)
    # Line 249
    lw	$a0,30436($a0)
    # Line 250
    li	$a6,7424
    lw	$s1,28076($s0)
    sd	$a5,0($sp)
    beq	$a6,$a7,.L0d9d83c0
    andi	$a0,$a0,0x400
    # Line 272
    beqz	$a0,.L0d9d84ec
    # Line 278
    ld	$a1,0($sp)
    move	$a0,$a1
    # Line 279
    sll	$a1,$a1,0x2
    addu	$a1,$s0,$a1
    lw	$a1,28080($a1)
    or	$s1,$a1,$s1
.L0d9d82b4:
    # Line 285
    sll	$a2,$a0,0x4
    addu	$a4,$a2,$s2
    # Line 286
    addu	$a3,$a2,$s4
    # Line 285
    addiu	$a4,$a4,144
    sw	$a4,8($s2)
    # Line 287
    addu	$a2,$a2,$s3
    # Line 286
    addiu	$a3,$a3,144
    sw	$a3,8($s4)
    # Line 287
    addiu	$a2,$a2,144
    sw	$a2,8($s3)
.L0d9d82dc:
    lw	$a5,0($s2)
.L0d9d82e0:
    nor	$a5,$a5,$zero
    and	$a5,$s1,$a5
    beqz	$a5,.L0d9d8304
    nop
    # Line 289
    lw	$t9,12($s2)
    move	$a0,$s0
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
.L0d9d8304:
    lw	$a6,0($s4)
    nor	$a6,$a6,$zero
    and	$a6,$s1,$a6
    beqz	$a6,.L0d9d832c
    nop
    # Line 290
    lw	$t9,12($s4)
    move	$a0,$s0
    move	$a1,$s4
    jalr	$t9
    move	$a2,$s1
.L0d9d832c:
    lw	$a7,0($s3)
    nor	$a7,$a7,$zero
    and	$a7,$s1,$a7
    beqz	$a7,.L0d9d8358
    # Line 294
    ld	$a0,0($sp)
    # Line 291
    lw	$t9,12($s3)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s1
    # Line 294
    ld	$a0,0($sp)
.L0d9d8358:
    addu	$a0,$a0,$s0
    lbu	$a0,30518($a0)
    beqz	$a0,.L0d9d8430
    li	$s1,1
    beq	$a0,$s1,.L0d9d84fc
    li	$a1,2
    beq	$a0,$a1,.L0d9d85dc
    # Line 351
    addiu	$a6,$s2,144
.L0d9d8378:
    sw	$a6,8($s2)
    # Line 352
    addiu	$a5,$s4,144
    sw	$a5,8($s4)
    # Line 353
    addiu	$a4,$s3,144
    sw	$a4,8($s3)
    lw	$a3,1392($s0)
    li	$a2,7424
    beq	$a2,$a3,.L0d9d84c0
    ld	$s1,56($sp)
.L0d9d839c:
    ld	$s2,8($sp)
    ld	$s4,16($sp)
    ld	$s3,24($sp)
    ld	$ra,48($sp)
    ld	$s0,32($sp)
    ld	$s1,56($sp)
    # Line 359
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d83c0:
    # Line 252
    beqz	$a0,.L0d9d863c
    lw	$a1,28072($s0)
    # Line 258
    ld	$a3,0($sp)
    move	$a0,$a3
    # Line 259
    sll	$a3,$a3,0x2
    addu	$a3,$s0,$a3
    lw	$a3,28080($a3)
.L0d9d83dc:
    # Line 265
    sll	$a7,$a0,0x4
    addu	$a7,$a1,$a7
    addiu	$a7,$a7,144
    sw	$a7,8($a1)
    # Line 266
    sw	$a7,8($s2)
    # Line 267
    lw	$a6,8($a1)
    sw	$a6,8($s4)
    # Line 268
    lw	$a5,8($a1)
    sw	$a5,8($s3)
    lw	$a4,0($a1)
    nor	$a4,$a4,$zero
    and	$a4,$a3,$a4
    andi	$a4,$a4,0x1b
    beqz	$a4,.L0d9d82dc
    nop
    # Line 272
    lw	$t9,12($a1)
    move	$a0,$s0
    jalr	$t9
    andi	$a2,$a3,0x1b
    b	.L0d9d82e0
    # Line 287
    lw	$a5,0($s2)
.L0d9d8430:
    # Line 296
    lbu	$t0,184($s2)
    beqz	$t0,.L0d9d845c
    # Line 297
    nop	# was lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 298
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,31792
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s2
.L0d9d845c:
    lbu	$t8,184($s4)
    la	$s1,sub_0d9d0000
    beqz	$t8,.L0d9d848c
    addiu	$s1,$s1,31792
    # Line 301
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 302
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s4
.L0d9d848c:
    lbu	$t9,184($s3)
    beqz	$t9,.L0d9d8378
    # Line 351
    addiu	$a6,$s2,144
    # Line 305
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 306
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s3
    b	.L0d9d8378
    # Line 351
    addiu	$a6,$s2,144
.L0d9d84c0:
    # Line 359
    ld	$gp,40($sp)
    # Line 355
    lw	$v0,28072($s0)
    # Line 359
    ld	$s0,32($sp)
    ld	$s2,8($sp)
    ld	$ra,48($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    addiu	$sp,$sp,64
    # Line 357
    addiu	$at,$v0,144
    # Line 359
    jr	$ra
    # Line 357
    sw	$at,8($v0)
.L0d9d84ec:
    # Line 282
    lw	$v1,28080($s0)
    move	$a0,$zero
    b	.L0d9d82b4
    or	$s1,$v1,$s1
.L0d9d84fc:
    # Line 310
    lbu	$a0,184($s2)
    beqz	$a0,.L0d9d8548
    nop
    lbu	$a1,29848($s0)
    beqz	$a1,.L0d9d8648
    # Line 315
    nop	# was lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    la	$s1,sub_0d9d0000
.L0d9d8524:
    addiu	$s1,$s1,31792
    # Line 317
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s2
    # Line 318
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s4
.L0d9d8548:
    lbu	$t8,184($s4)
    la	$s1,sub_0d9d0000
    beqz	$t8,.L0d9d8590
    addiu	$s1,$s1,31792
    lbu	$t9,29848($s0)
    beqz	$t9,.L0d9d8664
    # Line 325
    nop	# was lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # Line 327
    move	$t9,$s1
.L0d9d8574:
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s4
    # Line 328
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s3
.L0d9d8590:
    lbu	$ra,184($s3)
    beqz	$ra,.L0d9d8378
    # Line 351
    addiu	$a6,$s2,144
    # Line 328
    lbu	$at,29848($s0)
    beqz	$at,.L0d9d8684
    # Line 335
    nop	# was lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # Line 337
    move	$t9,$s1
.L0d9d85b8:
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s3
    # Line 338
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s2
    b	.L0d9d8378
    # Line 351
    addiu	$a6,$s2,144
.L0d9d85dc:
    # Line 342
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e06000
    # Line 343
    # lw $t9, -26128($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_40400000
    # Line 344
    la	$s1,sub_0d9d0000
    addiu	$s1,$s1,31792
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s2
    # Line 345
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s4
    # Line 346
    move	$t9,$s1
    move	$a0,$s0
    bal __glFeedbackTag
    move	$a1,$s3
    b	.L0d9d8378
    # Line 351
    addiu	$a6,$s2,144
.L0d9d863c:
    # Line 262
    lw	$a3,28080($s0)
    b	.L0d9d83dc
    move	$a0,$zero
.L0d9d8648:
    # Line 313
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,_lit_44e0e000
    move	$a0,$s0
    bal __glFeedbackTag
    # Line 312
    sb	$s1,29848($s0)
    b	.L0d9d8524
    # Line 315
    la	$s1,sub_0d9d0000
.L0d9d8664:
    # Line 323
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,_lit_44e0e000
    move	$a0,$s0
    li	$t8,1
    bal __glFeedbackTag
    # Line 322
    sb	$t8,29848($s0)
    b	.L0d9d8574
    # Line 327
    move	$t9,$s1
.L0d9d8684:
    # Line 333
    # lw $t9, -26128($gp) # &__glFeedbackTag
    lwc1	$f13,_lit_44e0e000
    move	$a0,$s0
    li	$at,1
    bal __glFeedbackTag
    # Line 332
    sb	$at,29848($s0)
    b	.L0d9d85b8
    # Line 337
    move	$t9,$s1
.end __glFeedbackTriangle

.rdata
_lit_40400000:
    .word 0x40400000
_lit_44e00000:
    .word 0x44e00000
_lit_44e02000:
    .word 0x44e02000
_lit_44e04000:
    .word 0x44e04000
_lit_44e06000:
    .word 0x44e06000
_lit_44e08000:
    .word 0x44e08000
_lit_44e0a000:
    .word 0x44e0a000
_lit_44e0c000:
    .word 0x44e0c000
_lit_44e0e000:
    .word 0x44e0e000

