# Source: ../soft/so_fog.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_fog.c
# Total Functions: 8

.text

# Function: __glFogSpan
# Declared: Line 24 (Source lines: 32-55)
# Address: 0x0d9d8770 - 0x0d9d8824 (Size: 180 bytes, Frame: 0)
.globl __glFogSpan
.ent __glFogSpan
__glFogSpan:
    # Line 35
    lw	$a5,30248($a0)
    addiu	$a3,$a5,-1
    # Line 33
    lw	$a2,30464($a0)
    # Line 35
    bltz	$a3,.L0d9d881c
    # Line 32
    lwc1	$f5,30244($a0)
    # Line 35
    mtc1	$zero,$f9
    b	.L0d9d87b8
    li	$a4,-1
.L0d9d8790:
    # Line 37
    mtc1	$zero,$f4
.L0d9d8794:
    # Line 40
    beqz	$at,.L0d9d87e0
    sub.s	$f8,$f6,$f4
    # Line 44
    lwc1	$f0,1624($a0)
    madd.s	$f0,$f7,$f0,$f8
    swc1	$f0,0($a2)
.L0d9d87a8:
    # Line 51
    lwc1	$f1,30432($a0)
    # Line 52
    addiu	$a2,$a2,16
    # Line 35
    beq	$a3,$a4,.L0d9d881c
    # Line 51
    add.s	$f5,$f1,$f5
.L0d9d87b8:
    # Line 37
    c.lt.s	$f5,$f9
    # Line 40
    lbu	$at,3221($a0)
    lwc1	$f7,0($a2)
    # Line 37
    mov.s	$f4,$f5
    # Line 35
    addiu	$a3,$a3,-1
    # Line 37
    bc1t	.L0d9d8790
    lwc1	$f6,3544($a0)
    c.lt.s $f6,$f5
    b	.L0d9d8794
    movt.s	$f4,$f6,$fcc1
.L0d9d87e0:
    # Line 46
    lwc1	$f6,1592($a0)
    mul.s	$f6,$f6,$f8
    madd.s	$f6,$f6,$f7,$f4
    swc1	$f6,0($a2)
    # Line 47
    lwc1	$f3,1596($a0)
    lwc1	$f6,4($a2)
    mul.s	$f3,$f3,$f8
    madd.s	$f3,$f3,$f6,$f4
    swc1	$f3,4($a2)
    # Line 48
    lwc1	$f2,1600($a0)
    lwc1	$f3,8($a2)
    mul.s	$f2,$f2,$f8
    madd.s	$f2,$f2,$f3,$f4
    b	.L0d9d87a8
    swc1	$f2,8($a2)
.L0d9d881c:
    # Line 55
    jr	$ra
    move	$v0,$zero
.end __glFogSpan

# Function: __glFogStippledSpan
# Declared: Line 58 (Source lines: 66-108)
# Address: 0x0d9d8830 - 0x0d9d8a68 (Size: 568 bytes, Frame: 0)
.globl __glFogStippledSpan
.ent __glFogStippledSpan
__glFogStippledSpan:
    # Line 66
    lw	$a7,30248($a0)
    # Line 70
    lw	$a2,30464($a0)
    # Line 69
    lwc1	$f4,30244($a0)
    # Line 70
    beqz	$a7,.L0d9d8a18
    # Line 67
    lw	$t0,30472($a0)
    # Line 70
    mtc1	$zero,$f9
    li	$a6,-1
    b	.L0d9d8888
    li	$t2,32
.L0d9d8854:
    # Line 84
    c.lt.s	$f6,$f4
    movt.s	$f5,$f6,$fcc0
.L0d9d885c:
    # Line 87
    beqz	$at,.L0d9d8a20
    sub.s	$f8,$f6,$f5
    # Line 91
    lwc1	$f0,1624($a0)
    madd.s	$f0,$f7,$f0,$f8
    swc1	$f0,0($a2)
.L0d9d8870:
    # Line 98
    lwc1	$f1,30432($a0)
    # Line 99
    addiu	$a2,$a2,16
    # Line 98
    add.s	$f4,$f1,$f4
.L0d9d887c:
    bnez	$v0,.L0d9d8a60
    # Line 81
    and	$t9,$a5,$a3
.L0d9d8884:
    beqz	$a7,.L0d9d8a18
.L0d9d8888:
    # Line 84
    mov.s	$f5,$f4
    # Line 74
    li	$v1,32
    move	$t1,$a7
    slt	$v1,$v1,$a7
    movn	$t1,$t2,$v1
    # Line 81
    lui	$a3,0x8000
    addiu	$a4,$t1,-1
    # Line 79
    addiu	$t0,$t0,4
    andi	$a1,$t1,0x1
    lw	$a5,-4($t0)
    # Line 81
    bltz	$a4,.L0d9d8884
    # Line 77
    subu	$a7,$a7,$t1
    beqz	$a1,.L0d9d887c
    sra	$v0,$t1,0x1
    # Line 81
    and	$t3,$a5,$a3
    # Line 101
    srl	$a3,$a3,0x1
    # Line 81
    beqz	$t3,.L0d9d8870
    addiu	$a4,$a4,-1
    # Line 84
    c.lt.s $f4,$f9
    # Line 87
    lbu	$at,3221($a0)
    lwc1	$f7,0($a2)
    # Line 84
    bc1f .L0d9d8854
    lwc1	$f6,3544($a0)
    b	.L0d9d885c
    mtc1	$zero,$f5
    nop
.L0d9d88f0:
    c.lt.s $f6,$f4
    movt.s	$f5,$f6,$fcc2
.L0d9d88f8:
    # Line 87
    beqz	$t8,.L0d9d89dc
    sub.s	$f8,$f6,$f5
    # Line 91
    lwc1	$f2,1624($a0)
    madd.s	$f2,$f7,$f2,$f8
    swc1	$f2,0($a2)
.L0d9d890c:
    # Line 98
    lwc1	$f3,30432($a0)
    # Line 81
    and	$t9,$a5,$a3
    # Line 99
    addiu	$a2,$a2,16
    # Line 81
    beq	$a4,$a6,.L0d9d8884
    # Line 98
    add.s	$f4,$f3,$f4
    # Line 101
    srl	$a3,$a3,0x1
.L0d9d8924:
    # Line 81
    addiu	$a4,$a4,-2
    # Line 84
    mov.s	$f5,$f4
    # Line 81
    and	$v0,$a5,$a3
    beqz	$t9,.L0d9d8970
    # Line 101
    srl	$a3,$a3,0x1
    # Line 84
    c.lt.s $f4,$f9
    # Line 87
    lbu	$at,3221($a0)
    lwc1	$f7,0($a2)
    # Line 84
    bc1f .L0d9d8954
    lwc1	$f6,3544($a0)
    b	.L0d9d895c
    mtc1	$zero,$f5
.L0d9d8954:
    c.lt.s $f6,$f4
    movt.s	$f5,$f6,$fcc4
.L0d9d895c:
    # Line 87
    beqz	$at,.L0d9d89a0
    sub.s	$f8,$f6,$f5
    # Line 91
    lwc1	$f5,1624($a0)
    madd.s	$f5,$f7,$f5,$f8
    swc1	$f5,0($a2)
.L0d9d8970:
    # Line 98
    lwc1	$f6,30432($a0)
    # Line 99
    addiu	$a2,$a2,16
    # Line 81
    beqz	$v0,.L0d9d890c
    # Line 98
    add.s	$f4,$f6,$f4
    # Line 84
    c.lt.s $f4,$f9
    # Line 87
    lbu	$t8,3221($a0)
    lwc1	$f7,0($a2)
    # Line 84
    mov.s	$f5,$f4
    bc1f .L0d9d88f0
    lwc1	$f6,3544($a0)
    b	.L0d9d88f8
    mtc1	$zero,$f5
.L0d9d89a0:
    # Line 93
    lwc1	$f12,1592($a0)
    mul.s	$f12,$f12,$f8
    madd.s	$f12,$f12,$f7,$f5
    swc1	$f12,0($a2)
    # Line 94
    lwc1	$f11,1596($a0)
    lwc1	$f12,4($a2)
    mul.s	$f11,$f11,$f8
    madd.s	$f11,$f11,$f12,$f5
    swc1	$f11,4($a2)
    # Line 95
    lwc1	$f10,1600($a0)
    lwc1	$f11,8($a2)
    mul.s	$f10,$f10,$f8
    madd.s	$f10,$f10,$f11,$f5
    b	.L0d9d8970
    swc1	$f10,8($a2)
.L0d9d89dc:
    # Line 93
    lwc1	$f15,1592($a0)
    mul.s	$f15,$f15,$f8
    madd.s	$f15,$f15,$f7,$f5
    swc1	$f15,0($a2)
    # Line 94
    lwc1	$f14,1596($a0)
    lwc1	$f15,4($a2)
    mul.s	$f14,$f14,$f8
    madd.s	$f14,$f14,$f15,$f5
    swc1	$f14,4($a2)
    # Line 95
    lwc1	$f13,1600($a0)
    lwc1	$f14,8($a2)
    mul.s	$f13,$f13,$f8
    madd.s	$f13,$f13,$f14,$f5
    b	.L0d9d890c
    swc1	$f13,8($a2)
.L0d9d8a18:
    # Line 108
    jr	$ra
    move	$v0,$zero
.L0d9d8a20:
    # Line 93
    lwc1	$f18,1592($a0)
    mul.s	$f18,$f18,$f8
    madd.s	$f18,$f18,$f7,$f5
    swc1	$f18,0($a2)
    # Line 94
    lwc1	$f17,1596($a0)
    lwc1	$f18,4($a2)
    mul.s	$f17,$f17,$f8
    madd.s	$f17,$f17,$f18,$f5
    swc1	$f17,4($a2)
    # Line 95
    lwc1	$f16,1600($a0)
    lwc1	$f17,8($a2)
    mul.s	$f16,$f16,$f8
    madd.s	$f16,$f16,$f17,$f5
    b	.L0d9d8870
    swc1	$f16,8($a2)
    nop
.L0d9d8a60:
    b	.L0d9d8924
    # Line 101
    srl	$a3,$a3,0x1
.end __glFogStippledSpan

# Function: __glFogSpanSlow
# Declared: Line 113 (Source lines: 114-162)
# Address: 0x0d9d8a70 - 0x0d9d8c48 (Size: 472 bytes, Frame: 128)
.globl __glFogSpanSlow
.ent __glFogSpanSlow
__glFogSpanSlow:
    # Line 122
    lwc1	$f4,30244($a0)
    # Line 114
    addiu	$sp,$sp,-128
    sdc1	$f24,8($sp)
    # Line 127
    lwc1	$f24,1616($a0)
    # Line 114
    sdc1	$f28,16($sp)
    # Line 125
    lwc1	$f28,1608($a0)
    # Line 114
    sd	$s1,40($sp)
    # Line 128
    lw	$a2,30248($a0)
    # Line 123
    lw	$s1,30464($a0)
    # Line 114
    lui	$at,0x8
    sd	$s2,24($sp)
    # Line 128
    addiu	$s2,$a2,-1
    # Line 114
    sd	$s0,32($sp)
    move	$s0,$a0
    addiu	$at,$at,-31972
    sd	$gp,48($sp)
    # Line 128
    bltz	$s2,.L0d9d8c24
    # Line 114
    addu	$gp,$t9,$at
    # Line 128
    lwc1	$f5,0($sp)
    sdc1	$f22,112($sp)
    sd	$ra,72($sp)
    sdc1	$f26,104($sp)
    lwc1	$f26,_lit_402df854
    sdc1	$f20,96($sp)
    sd	$s5,88($sp)
    sd	$s6,64($sp)
    li	$s6,9729
    li	$s5,2049
    sd	$s4,80($sp)
    li	$s4,-1
    mtc1	$zero,$f20
    sd	$s3,56($sp)
    li	$s3,2048
    sdc1	$f30,120($sp)
    b	.L0d9d8b2c
    mul.s	$f30,$f28,$f28
.L0d9d8b00:
    # Line 145
    c.lt.s	$f4,$f5
    movt.s	$f5,$f4,$fcc0
.L0d9d8b08:
    # Line 147
    beqz	$v0,.L0d9d8b7c
    sub.s	$f7,$f4,$f5
    # Line 151
    lwc1	$f0,1624($s0)
    madd.s	$f0,$f6,$f0,$f7
    swc1	$f0,0($s1)
.L0d9d8b1c:
    # Line 158
    lwc1	$f4,30432($s0)
    # Line 159
    addiu	$s1,$s1,16
    # Line 128
    beq	$s2,$s4,.L0d9d8c00
    # Line 158
    add.s	$f4,$f4,$f22
.L0d9d8b2c:
    # Line 130
    c.lt.s $f4,$f20
    mov.s	$f22,$f4
    # Line 132
    lw	$a0,1588($s0)
    # Line 130
    bc1f .L0d9d8b44
    mov.s	$f6,$f4
    # Line 131
    neg.s	$f6,$f4
.L0d9d8b44:
    # Line 132
    beq	$s3,$a0,.L0d9d8bc8
    # Line 134
    nop	# was lw $t9, -22844($gp) # &powf
    # Line 132
    beq	$s5,$a0,.L0d9d8be0
    nop
    beq	$s6,$a0,.L0d9d8bb8
    nop
.L0d9d8b5c:
    # Line 142
    c.lt.s $f5,$f20
    # Line 147
    lbu	$v0,3221($s0)
    lwc1	$f6,0($s1)
    # Line 128
    addiu	$s2,$s2,-1
    # Line 142
    bc1f .L0d9d8b00
    lwc1	$f4,3544($s0)
    # Line 145
    b	.L0d9d8b08
    mov.s	$f5,$f20
.L0d9d8b7c:
    # Line 153
    lwc1	$f10,1592($s0)
    mul.s	$f10,$f10,$f7
    madd.s	$f10,$f10,$f6,$f5
    swc1	$f10,0($s1)
    # Line 154
    lwc1	$f9,1596($s0)
    lwc1	$f10,4($s1)
    mul.s	$f9,$f9,$f7
    madd.s	$f9,$f9,$f10,$f5
    swc1	$f9,4($s1)
    # Line 155
    lwc1	$f8,1600($s0)
    lwc1	$f9,8($s1)
    mul.s	$f8,$f8,$f7
    madd.s	$f8,$f8,$f9,$f5
    b	.L0d9d8b1c
    swc1	$f8,8($s1)
.L0d9d8bb8:
    # Line 140
    lwc1	$f5,1620($s0)
    sub.s	$f7,$f24,$f6
    # Line 141
    b	.L0d9d8b5c
    # Line 140
    mul.s	$f5,$f5,$f7
.L0d9d8bc8:
    # Line 134
    mul.s	$f13,$f28,$f6
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    b	.L0d9d8b5c
    mov.s	$f5,$f0
.L0d9d8be0:
    # Line 137
    mul.s	$f13,$f30,$f6
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f6,$f13
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    # Line 138
    b	.L0d9d8b5c
    # Line 137
    mov.s	$f5,$f0
.L0d9d8c00:
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$ra,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ldc1	$f20,96($sp)
    ldc1	$f26,104($sp)
    ldc1	$f22,112($sp)
    ldc1	$f30,120($sp)
.L0d9d8c24:
    ld	$s2,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ldc1	$f24,8($sp)
    # Line 162
    move	$v0,$zero
    ldc1	$f28,16($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glFogSpanSlow

# Function: __glFogStippledSpanSlow
# Declared: Line 165 (Source lines: 166-233)
# Address: 0x0d9d8c50 - 0x0d9d8eb4 (Size: 612 bytes, Frame: 160)
.globl __glFogStippledSpanSlow
.ent __glFogStippledSpanSlow
__glFogStippledSpanSlow:
    # Line 175
    lw	$v1,30472($a0)
    # Line 166
    addiu	$sp,$sp,-160
    sdc1	$f24,16($sp)
    # Line 182
    lwc1	$f24,1616($a0)
    # Line 166
    sdc1	$f28,8($sp)
    # Line 180
    lwc1	$f28,1608($a0)
    # Line 174
    lw	$v0,30248($a0)
    sd	$v0,64($sp)
    # Line 166
    sd	$s1,32($sp)
    # Line 178
    lw	$s1,30464($a0)
    # Line 166
    sdc1	$f20,24($sp)
    # Line 177
    lwc1	$f20,30244($a0)
    # Line 166
    sd	$s0,40($sp)
    lui	$at,0x8
    move	$s0,$a0
    # Line 175
    sd	$v1,56($sp)
    # Line 166
    addiu	$at,$at,-32452
    sd	$gp,48($sp)
    # Line 182
    beqz	$v0,.L0d9d8e74
    # Line 166
    addu	$gp,$t9,$at
    sd	$s4,104($sp)
    sd	$ra,96($sp)
    sd	$s3,80($sp)
    sd	$s2,72($sp)
    sdc1	$f26,136($sp)
    # Line 182
    lwc1	$f26,_lit_402df854
    lwc1	$f5,0($sp)
    sdc1	$f22,144($sp)
    sd	$s7,120($sp)
    sd	$s8,128($sp)
    li	$s8,9729
    li	$s7,2049
    sd	$s6,88($sp)
    li	$s6,2048
    mtc1	$zero,$f22
    sd	$s5,112($sp)
    li	$s5,-1
    sdc1	$f30,152($sp)
    b	.L0d9d8ea8
    mul.s	$f30,$f28,$f28
.L0d9d8cf0:
    # Line 192
    ld	$v0,64($sp)
    beqz	$v0,.L0d9d8e48
    lui	$s2,0x8000
    # Line 185
    ld	$v1,64($sp)
.L0d9d8d00:
    li	$t9,32
    li	$t8,32
    # Line 190
    ld	$s4,56($sp)
    # Line 185
    move	$a0,$v1
    slt	$t8,$t8,$v1
    movn	$a0,$t9,$t8
    # Line 190
    addiu	$s4,$s4,4
    sd	$s4,56($sp)
    # Line 192
    addiu	$s3,$a0,-1
    # Line 190
    lw	$s4,-4($s4)
    # Line 188
    subu	$v1,$v1,$a0
    # Line 192
    bltz	$s3,.L0d9d8cf0
    sd	$v1,64($sp)
    b	.L0d9d8ea0
    and	$ra,$s4,$s2
    nop
.L0d9d8d40:
    # Line 210
    mov.s	$f5,$f22
.L0d9d8d44:
    # Line 212
    beqz	$t9,.L0d9d8dc4
    sub.s	$f7,$f4,$f5
    # Line 216
    lwc1	$f0,1624($s0)
    madd.s	$f0,$f6,$f0,$f7
    swc1	$f0,0($s1)
.L0d9d8d58:
    # Line 223
    lwc1	$f1,30432($s0)
    # Line 192
    addiu	$s3,$s3,-1
    # Line 224
    addiu	$s1,$s1,16
    # Line 226
    srl	$s2,$s2,0x1
    # Line 192
    and	$ra,$s4,$s2
    beq	$s3,$s5,.L0d9d8cf0
    # Line 223
    add.s	$f20,$f1,$f20
.L0d9d8d74:
    # Line 192
    beqz	$ra,.L0d9d8d58
    # Line 195
    mov.s	$f4,$f20
    c.lt.s	$f20,$f22
    bc1f	.L0d9d8d8c
    # Line 197
    lw	$a0,1588($s0)
    # Line 196
    neg.s	$f4,$f20
.L0d9d8d8c:
    # Line 197
    beq	$s6,$a0,.L0d9d8e10
    # Line 199
    nop	# was lw $t9, -22844($gp) # &powf
    # Line 197
    beq	$s7,$a0,.L0d9d8e28
    nop
    beq	$s8,$a0,.L0d9d8e00
    nop
.L0d9d8da4:
    # Line 207
    c.lt.s $f5,$f22
    # Line 212
    lbu	$t9,3221($s0)
    lwc1	$f6,0($s1)
    # Line 207
    bc1t .L0d9d8d40
    lwc1	$f4,3544($s0)
    # Line 210
    c.lt.s $f4,$f5
    b	.L0d9d8d44
    movt.s	$f5,$f4,$fcc2
.L0d9d8dc4:
    # Line 218
    lwc1	$f4,1592($s0)
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f6,$f5
    swc1	$f4,0($s1)
    # Line 219
    lwc1	$f3,1596($s0)
    lwc1	$f4,4($s1)
    mul.s	$f3,$f3,$f7
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,4($s1)
    # Line 220
    lwc1	$f2,1600($s0)
    lwc1	$f3,8($s1)
    mul.s	$f2,$f2,$f7
    madd.s	$f2,$f2,$f3,$f5
    b	.L0d9d8d58
    swc1	$f2,8($s1)
.L0d9d8e00:
    # Line 205
    lwc1	$f5,1620($s0)
    sub.s	$f6,$f24,$f4
    # Line 206
    b	.L0d9d8da4
    # Line 205
    mul.s	$f5,$f5,$f6
.L0d9d8e10:
    # Line 199
    mul.s	$f13,$f28,$f4
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    b	.L0d9d8da4
    mov.s	$f5,$f0
.L0d9d8e28:
    # Line 202
    mul.s	$f13,$f30,$f4
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f4,$f13
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    # Line 203
    b	.L0d9d8da4
    # Line 202
    mov.s	$f5,$f0
.L0d9d8e48:
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    ld	$s6,88($sp)
    ld	$ra,96($sp)
    ld	$s4,104($sp)
    ld	$s5,112($sp)
    ld	$s7,120($sp)
    ld	$s8,128($sp)
    ldc1	$f26,136($sp)
    ldc1	$f22,144($sp)
    ldc1	$f30,152($sp)
.L0d9d8e74:
    # Line 233
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ldc1	$f20,24($sp)
    move	$v0,$zero
    ldc1	$f24,16($sp)
    ldc1	$f28,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
    nop
    nop
.L0d9d8ea0:
    b	.L0d9d8d74
    nop
.L0d9d8ea8:
    # Line 192
    lui	$s2,0x8000
    b	.L0d9d8d00
    # Line 185
    ld	$v1,64($sp)
.end __glFogStippledSpanSlow

# Function: __glFogFragmentSlow
# Declared: Line 244 (Source lines: 245-287)
# Address: 0x0d9d8ec0 - 0x0d9d9024 (Size: 356 bytes, Frame: 48)
.globl __glFogFragmentSlow
.ent __glFogFragmentSlow
__glFogFragmentSlow:
    # Line 245
    mtc1	$zero,$f6
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    c.lt.s	$f14,$f6
    sd	$s0,16($sp)
    lui	$at,0x7
    move	$s0,$a0
    sd	$s1,24($sp)
    addiu	$at,$at,32460
    move	$s1,$a1
    sd	$gp,8($sp)
    bc1f	.L0d9d8ef8
    addu	$gp,$t9,$at
    # Line 249
    neg.s	$f14,$f14
.L0d9d8ef8:
    # Line 251
    lwc1	$f5,0($sp)
    lw	$a0,1588($s0)
    li	$v0,2048
    li	$v1,2049
    beq	$a0,$v0,.L0d9d8fd4
    li	$a1,9729
    beq	$a0,$v1,.L0d9d8ff8
    nop
    beq	$a0,$a1,.L0d9d8fc0
    nop
.L0d9d8f20:
    # Line 274
    lbu	$a2,3221($s0)
    # Line 264
    c.lt.s $f5,$f6
    # Line 287
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    # Line 264
    bc1f .L0d9d8f40
    lwc1	$f4,3544($s0)
    # Line 270
    b	.L0d9d8f48
    mov.s	$f5,$f6
.L0d9d8f40:
    c.lt.s $f4,$f5
    movt.s	$f5,$f4,$fcc2
.L0d9d8f48:
    # Line 274
    lwc1	$f6,12($s1)
    beqz	$a2,.L0d9d8f70
    sub.s	$f7,$f4,$f5
    # Line 281
    lwc1	$f0,1624($s0)
    madd.s	$f0,$f6,$f0,$f7
    # Line 287
    ld	$s0,16($sp)
    # Line 281
    swc1	$f0,12($s1)
    # Line 287
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d8f70:
    # Line 283
    lwc1	$f3,1592($s0)
    mul.s	$f3,$f3,$f7
    madd.s	$f3,$f3,$f6,$f5
    swc1	$f3,12($s1)
    # Line 284
    lwc1	$f2,1596($s0)
    lwc1	$f3,16($s1)
    mul.s	$f2,$f2,$f7
    madd.s	$f2,$f2,$f3,$f5
    swc1	$f2,16($s1)
    # Line 285
    lwc1	$f1,1600($s0)
    lwc1	$f2,20($s1)
    mul.s	$f1,$f1,$f7
    madd.s	$f1,$f1,$f2,$f5
    # Line 287
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    # Line 285
    swc1	$f1,20($s1)
    # Line 287
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d8fc0:
    # Line 262
    lwc1	$f7,1616($s0)
    lwc1	$f5,1620($s0)
    sub.s	$f7,$f7,$f14
    # Line 263
    b	.L0d9d8f20
    # Line 262
    mul.s	$f5,$f5,$f7
.L0d9d8fd4:
    # Line 254
    lwc1	$f13,1608($s0)
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f13,$f14
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f6
    b	.L0d9d8f20
    mov.s	$f5,$f0
.L0d9d8ff8:
    # Line 257
    lwc1	$f13,1608($s0)
    # Line 258
    mul.s	$f15,$f13,$f14
    mul.s	$f13,$f13,$f15
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f14,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f6
    # Line 259
    b	.L0d9d8f20
    # Line 258
    mov.s	$f5,$f0
.end __glFogFragmentSlow

# Function: __glFogVertex
# Declared: Line 293 (Source lines: 294-324)
# Address: 0x0d9d9030 - 0x0d9d9134 (Size: 260 bytes, Frame: 32)
.globl __glFogVertex
.ent __glFogVertex
__glFogVertex:
    # Line 297
    mtc1	$zero,$f7
    lwc1	$f6,104($a1)
    # Line 294
    addiu	$sp,$sp,-32
    # Line 297
    c.lt.s	$f6,$f7
    sd	$ra,24($sp)
    # Line 294
    lui	$at,0x7
    sd	$s0,16($sp)
    addiu	$at,$at,32092
    move	$s0,$a0
    sd	$gp,8($sp)
    # Line 297
    bc1f	.L0d9d9064
    # Line 294
    addu	$gp,$t9,$at
    # Line 298
    neg.s	$f6,$f6
.L0d9d9064:
    # Line 300
    lwc1	$f5,0($sp)
    lw	$a0,1588($s0)
    li	$v0,2048
    li	$v1,2049
    beq	$a0,$v0,.L0d9d90e4
    li	$a1,9729
    beq	$a0,$v1,.L0d9d9108
    nop
    beq	$a0,$a1,.L0d9d90d0
    nop
.L0d9d908c:
    # Line 313
    c.lt.s $f5,$f7
    # Line 324
    ld	$gp,8($sp)
    # Line 313
    bc1t .L0d9d90b8
    ld	$ra,24($sp)
    # Line 320
    lwc1	$f0,3544($s0)
    c.lt.s $f0,$f5
    movt.s	$f5,$f0,$fcc2
    # Line 324
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    mov.s	$f0,$f5
.L0d9d90b8:
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    mov.s	$f0,$f7
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d90d0:
    # Line 311
    lwc1	$f8,1616($s0)
    lwc1	$f5,1620($s0)
    sub.s	$f8,$f8,$f6
    # Line 312
    b	.L0d9d908c
    # Line 311
    mul.s	$f5,$f5,$f8
.L0d9d90e4:
    # Line 303
    lwc1	$f13,1608($s0)
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f13,$f6
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f7
    b	.L0d9d908c
    mov.s	$f5,$f0
.L0d9d9108:
    # Line 306
    lwc1	$f13,1608($s0)
    # Line 307
    mul.s	$f14,$f13,$f6
    mul.s	$f13,$f13,$f14
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f6,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f7
    # Line 308
    b	.L0d9d908c
    # Line 307
    mov.s	$f5,$f0
.end __glFogVertex

# Function: __glFogVertexLinear
# Declared: Line 330 (Source lines: 334-345)
# Address: 0x0d9d9140 - 0x0d9d918c (Size: 76 bytes, Frame: 0)
.globl __glFogVertexLinear
.ent __glFogVertexLinear
__glFogVertexLinear:
    # Line 334
    mtc1	$zero,$f6
    lwc1	$f5,104($a1)
    c.lt.s	$f5,$f6
    bc1f	.L0d9d9158
    nop
    # Line 335
    neg.s	$f5,$f5
.L0d9d9158:
    # Line 338
    lwc1	$f0,1620($a0)
    lwc1	$f1,1616($a0)
    sub.s	$f1,$f1,$f5
    mul.s	$f0,$f0,$f1
    c.lt.s $f0,$f6
    bc1t .L0d9d9184
    nop
    lwc1	$f2,3544($a0)
    c.lt.s $f2,$f0
    # Line 345
    jr	$ra
    movt.s	$f0,$f2,$fcc2
.L0d9d9184:
    jr	$ra
    # Line 338
    mtc1	$zero,$f0
.end __glFogVertexLinear

# Function: __glFogColorSlow
# Declared: Line 352 (Source lines: 359-383)
# Address: 0x0d9d9190 - 0x0d9d91f8 (Size: 104 bytes, Frame: 0)
.globl __glFogColorSlow
.ent __glFogColorSlow
__glFogColorSlow:
    # Line 359
    lwc1	$f4,3544($a0)
    lbu	$at,3221($a0)
    lwc1	$f5,0($a2)
    beqz	$at,.L0d9d91b4
    sub.s	$f4,$f4,$f15
    # Line 366
    lwc1	$f6,1624($a0)
    madd.s	$f5,$f5,$f6,$f4
    # Line 383
    jr	$ra
    # Line 366
    swc1	$f5,0($a1)
.L0d9d91b4:
    # Line 376
    lwc1	$f9,1596($a0)
    lwc1	$f12,4($a2)
    # Line 377
    lwc1	$f8,1600($a0)
    lwc1	$f11,8($a2)
    # Line 376
    mul.s	$f9,$f9,$f4
    # Line 378
    lwc1	$f10,1592($a0)
    # Line 376
    madd.s	$f9,$f9,$f12,$f15
    # Line 377
    mul.s	$f8,$f8,$f4
    madd.s	$f8,$f8,$f11,$f15
    # Line 378
    mul.s	$f10,$f10,$f4
    madd.s	$f10,$f10,$f15,$f5
    # Line 380
    swc1	$f8,8($a1)
    # Line 379
    swc1	$f9,4($a1)
    # Line 378
    swc1	$f10,0($a1)
    # Line 381
    lwc1	$f7,12($a2)
    # Line 383
    jr	$ra
    # Line 381
    swc1	$f7,12($a1)
.end __glFogColorSlow

.rdata
_lit_402df854:
    .word 0x402df854

