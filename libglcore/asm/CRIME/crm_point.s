# Source: ../CRIME/crm_point.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_point.c
# Total Functions: 14

.text

# Function: __glcrmim_2DPointVertex2fv
# Declared: Line 30 (Source lines: 31-60)
# Address: 0x0d95c340 - 0x0d95c470 (Size: 304 bytes, Frame: 16)
.globl __glcrmim_2DPointVertex2fv
.ent __glcrmim_2DPointVertex2fv
__glcrmim_2DPointVertex2fv:
    # Line 39
    lwc1	$f9,0($a0)
    # Line 32
    lw	$a2,4112($zero)
    # Line 40
    lwc1	$f10,4($a0)
    # Line 42
    lwc1	$f8,29764($a2)
    lwc1	$f11,29748($a2)
    # Line 43
    lwc1	$f6,29768($a2)
    # Line 42
    mul.s	$f8,$f8,$f10
    # Line 43
    lwc1	$f7,29752($a2)
    # Line 42
    madd.s	$f8,$f8,$f11,$f9
    # Line 43
    mul.s	$f6,$f6,$f10
    # Line 42
    lwc1	$f5,29796($a2)
    # Line 43
    madd.s	$f6,$f6,$f7,$f9
    # Line 45
    lwc1	$f7,29732($a2)
    # Line 43
    lwc1	$f4,29800($a2)
    # Line 42
    add.s	$f5,$f5,$f8
    # Line 36
    lw	$a3,32184($a2)
    # Line 45
    lwc1	$f11,29744($a2)
    c.lt.s	$f5,$f7
    # Line 31
    addiu	$sp,$sp,-16
    # Line 45
    lwc1	$f10,29736($a2)
    # Line 43
    add.s	$f4,$f4,$f6
    swc1	$f4,4($sp)
    # Line 49
    li	$v0,2
    # Line 45
    bc1t	.L0d95c424
    # Line 42
    swc1	$f5,0($sp)
    # Line 49
    li	$at,1
    # Line 45
    lwc1	$f9,29740($a2)
    c.le.s $f9,$f5
    bc1t .L0d95c424
    nop
    c.lt.s $f4,$f10
    bc1t .L0d95c424
    nop
    c.le.s $f11,$f4
    bc1t .L0d95c424
    nop
    # Line 49
    lw	$a1,32096($a2)
    srl	$a4,$a1,0x18
    beq	$a4,$at,.L0d95c42c
    nop
    beq	$a4,$v0,.L0d95c42c
    nop
    # Line 54
    lw	$a4,32100($a2)
    beq	$a1,$a4,.L0d95c40c
    # Line 58
    trunc.l.s	$f12,$f4
    # Line 56
    sw	$a4,8288($a3)
    lw	$a1,32188($a2)
    lw	$a0,32100($a2)
    sw	$a0,8288($a1)
    lw	$v1,32100($a2)
    sw	$v1,32096($a2)
.L0d95c40c:
    # Line 57
    lw	$a4,0($sp)
    # Line 58
    dmfc1	$a2,$f12
    # Line 57
    sw	$a4,8320($a3)
    # Line 60
    addiu	$sp,$sp,16
    jr	$ra
    # Line 58
    sw	$a2,10372($a3)
.L0d95c424:
    # Line 60
    jr	$ra
    addiu	$sp,$sp,16
.L0d95c42c:
    # Line 49
    lw	$a4,32100($a2)
    beq	$a1,$a4,.L0d95c450
    # Line 52
    lw	$t0,0($sp)
    # Line 51
    sw	$a4,8288($a3)
    lw	$a7,32188($a2)
    lw	$a6,32100($a2)
    sw	$a6,8288($a7)
    lw	$a5,32100($a2)
    sw	$a5,32096($a2)
.L0d95c450:
    # Line 52
    sw	$t0,8320($a3)
    # Line 54
    sw	$zero,8($sp)
    lw	$t2,8($sp)
    # Line 53
    lw	$t1,4($sp)
    sw	$t1,8324($a3)
    # Line 60
    addiu	$sp,$sp,16
    jr	$ra
    # Line 54
    sw	$t2,10736($a3)
.end __glcrmim_2DPointVertex2fv

# Function: __glCrmVertexPointFast
# Declared: Line 67 (Source lines: 68-83)
# Address: 0x0d95c470 - 0x0d95c538 (Size: 200 bytes, Frame: 32)
.globl __glCrmVertexPointFast
.ent __glCrmVertexPointFast
__glCrmVertexPointFast:
    # Line 70
    lw	$at,4($a1)
    # Line 68
    addiu	$sp,$sp,-32
    # Line 70
    bnez	$at,.L0d95c4e0
    lw	$a3,32184($a0)
    # Line 73
    lw	$a4,32096($a0)
    li	$v0,1
    srl	$a5,$a4,0x18
    beq	$a5,$v0,.L0d95c4e8
    li	$v1,2
    beq	$a5,$v1,.L0d95c4e8
    nop
    # Line 77
    lw	$a5,32100($a0)
    beq	$a4,$a5,.L0d95c4c0
    nop
    # Line 79
    sw	$a5,8288($a3)
    lw	$a6,32188($a0)
    lw	$a4,32100($a0)
    sw	$a4,8288($a6)
    lw	$a2,32100($a0)
    sw	$a2,32096($a0)
.L0d95c4c0:
    # Line 80
    lw	$a7,132($a1)
    lw	$t0,128($a1)
    sw	$t0,0($sp)
    sw	$a7,4($sp)
    ldc1	$f0,0($sp)
    # Line 83
    addiu	$sp,$sp,32
    jr	$ra
    # Line 80
    sdc1	$f0,10368($a3)
.L0d95c4e0:
    # Line 83
    jr	$ra
    addiu	$sp,$sp,32
.L0d95c4e8:
    # Line 73
    lw	$a5,32100($a0)
    beq	$a4,$a5,.L0d95c50c
    nop
    # Line 75
    sw	$a5,8288($a3)
    lw	$t3,32188($a0)
    lw	$t2,32100($a0)
    sw	$t2,8288($t3)
    lw	$t1,32100($a0)
    sw	$t1,32096($a0)
.L0d95c50c:
    # Line 76
    lw	$t9,132($a1)
    lw	$at,128($a1)
    sw	$at,8($sp)
    sw	$t9,12($sp)
    ldc1	$f1,8($sp)
    # Line 77
    sw	$zero,16($sp)
    lw	$t8,16($sp)
    sw	$t8,10736($a3)
    # Line 83
    addiu	$sp,$sp,32
    jr	$ra
    # Line 76
    sdc1	$f1,8320($a3)
.end __glCrmVertexPointFast

# Function: RenderPoint
# Declared: Line 88 (Source lines: 89-102)
# Address: 0x0d95c540 - 0x0d95c5f8 (Size: 184 bytes, Frame: 32)
.ent RenderPoint
RenderPoint:
    # Line 93
    lw	$a4,32096($a0)
    li	$at,1
    srl	$a5,$a4,0x18
    # Line 89
    addiu	$sp,$sp,-32
    # Line 93
    li	$v0,2
    beq	$a5,$at,.L0d95c5a8
    # Line 91
    lw	$a3,32184($a0)
    # Line 93
    beq	$a5,$v0,.L0d95c5a8
    nop
    # Line 97
    lw	$a5,32100($a0)
    beq	$a4,$a5,.L0d95c588
    nop
    # Line 99
    sw	$a5,8288($a3)
    lw	$a4,32188($a0)
    lw	$a2,32100($a0)
    sw	$a2,8288($a4)
    lw	$v1,32100($a0)
    sw	$v1,32096($a0)
.L0d95c588:
    # Line 100
    lw	$a5,132($a1)
    lw	$a6,128($a1)
    sw	$a6,0($sp)
    sw	$a5,4($sp)
    ldc1	$f0,0($sp)
    # Line 102
    addiu	$sp,$sp,32
    jr	$ra
    # Line 100
    sdc1	$f0,10368($a3)
.L0d95c5a8:
    # Line 93
    lw	$a5,32100($a0)
    beq	$a4,$a5,.L0d95c5cc
    nop
    # Line 95
    sw	$a5,8288($a3)
    lw	$t1,32188($a0)
    lw	$t0,32100($a0)
    sw	$t0,8288($t1)
    lw	$a7,32100($a0)
    sw	$a7,32096($a0)
.L0d95c5cc:
    # Line 96
    lw	$t3,132($a1)
    lw	$t8,128($a1)
    sw	$t8,8($sp)
    sw	$t3,12($sp)
    ldc1	$f1,8($sp)
    # Line 97
    sw	$zero,16($sp)
    lw	$t2,16($sp)
    sw	$t2,10736($a3)
    # Line 102
    addiu	$sp,$sp,32
    jr	$ra
    # Line 96
    sdc1	$f1,8320($a3)
.end RenderPoint

# Function: RenderPointCI
# Declared: Line 120 (Source lines: 121-130)
# Address: 0x0d95c600 - 0x0d95c670 (Size: 112 bytes, Frame: 16)
.ent RenderPointCI
RenderPointCI:
    # Line 124
    lw	$a5,32100($a0)
    lw	$at,32096($a0)
    lw	$a4,8($a1)
    # Line 121
    addiu	$sp,$sp,-16
    # Line 124
    beq	$at,$a5,.L0d95c630
    # Line 123
    lw	$a3,32184($a0)
    # Line 126
    sw	$a5,8288($a3)
    lw	$a2,32188($a0)
    lw	$v1,32100($a0)
    sw	$v1,8288($a2)
    lw	$v0,32100($a0)
    sw	$v0,32096($a0)
.L0d95c630:
    # Line 127
    lw	$a5,132($a1)
    lw	$a6,128($a1)
    sw	$a6,0($sp)
    sw	$a5,4($sp)
    ldc1	$f1,0($sp)
    sdc1	$f1,8320($a3)
    # Line 128
    lwc1	$f0,0($a4)
    trunc.w.s	$f0,$f0
    swc1	$f0,8($sp)
    # Line 129
    li	$a4,0x8080
    # Line 128
    lw	$a5,8($sp)
    # Line 129
    addu	$a4,$a4,$a0
    # Line 128
    sw	$a5,10448($a3)
    # Line 130
    addiu	$sp,$sp,16
    jr	$ra
    # Line 129
    sw	$zero,0($a4)
.end RenderPointCI

# Function: RenderPointDepth
# Declared: Line 135 (Source lines: 136-174)
# Address: 0x0d95c670 - 0x0d95c8a8 (Size: 568 bytes, Frame: 240)
.ent RenderPointDepth
RenderPointDepth:
    # Line 136
    addiu	$sp,$sp,-112
    sd	$s1,64($sp)
    sd	$s3,88($sp)
    sd	$s0,72($sp)
    # Line 138
    lw	$a3,32100($a0)
    # Line 136
    move	$s0,$a1
    # Line 138
    lw	$at,32096($a0)
    # Line 142
    lui	$s3,0x1
    # Line 136
    sd	$s2,80($sp)
    lui	$v0,0xf
    move	$s2,$a0
    # Line 138
    lw	$s1,32184($a0)
    # Line 136
    addiu	$v0,$v0,18204
    sd	$gp,56($sp)
    # Line 138
    beq	$at,$a3,.L0d95c6c8
    # Line 136
    addu	$gp,$t9,$v0
    # Line 140
    sw	$a3,8288($s1)
    lw	$a1,32188($a0)
    lw	$a0,32100($a0)
    sw	$a0,8288($a1)
    lw	$v1,32100($s2)
    sw	$v1,32096($s2)
.L0d95c6c8:
    # Line 142
    addu	$s3,$s2,$s3
    lw	$t8,132($s0)
    lw	$t9,128($s0)
    sw	$t9,0($sp)
    sw	$t8,4($sp)
    ldc1	$f0,0($sp)
    sdc1	$f0,8320($s1)
    lbu	$a1,3220($s2)
    lw	$a0,1792($s2)
    beqz	$a1,.L0d95c7a8
    andi	$a0,$a0,0x20
    beqz	$a0,.L0d95c758
    nop
    lw	$at,30436($s2)
    andi	$at,$at,0x1000
    beqz	$at,.L0d95c72c
    # Line 147
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    move	$a0,$s2
    sd	$ra,96($sp)
    jal	__glFogVertex
    move	$a1,$s0
    ld	$ra,96($sp)
    mov.s	$f15,$f0
    b	.L0d95c730
    swc1	$f0,176($s0)
.L0d95c72c:
    lwc1	$f15,176($s0)
.L0d95c730:
    # Line 149
    ldc1	$f2,_lit8_406fe00000000000
    cvt.d.s	$f1,$f15
    mul.d	$f1,$f1,$f2
    lwc1	$f2,_lit_45800000
    cvt.s.d	$f1,$f1
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    swc1	$f1,8($sp)
    lw	$v0,8($sp)
    sw	$v0,8568($s1)
.L0d95c758:
    lw	$v1,-32644($s3)
    andi	$v1,$v1,0x2
    beqz	$v1,.L0d95c818
.L0d95c764:
    # Line 173
    lwc1	$f6,_lit_42800000
.L0d95c768:
    lwc1	$f5,136($s0)
    mul.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,40($sp)
    ldc1	$f4,40($sp)
    ld	$s3,88($sp)
    # Line 174
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    # Line 173
    trunc.l.d	$f4,$f4
    sdc1	$f4,48($sp)
    ldc1	$f3,48($sp)
    # Line 174
    ld	$s2,80($sp)
    # Line 173
    sdc1	$f3,10696($s1)
    # Line 174
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d95c7a8:
    # Line 155
    beqz	$a0,.L0d95c878
    nop
    lw	$a0,30436($s2)
    andi	$a0,$a0,0x1000
    beqz	$a0,.L0d95c7dc
    # Line 161
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    move	$a0,$s2
    sd	$ra,96($sp)
    jal	__glFogVertex
    move	$a1,$s0
    mov.s	$f15,$f0
    b	.L0d95c7e4
    swc1	$f0,176($s0)
.L0d95c7dc:
    lwc1	$f15,176($s0)
    sd	$ra,96($sp)
.L0d95c7e4:
    # Line 163
    lw	$t9,12532($s2)
    move	$a0,$s2
    lw	$a2,8($s0)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 164
    lwc1	$f7,16($sp)
    ld	$ra,96($sp)
    trunc.w.s	$f7,$f7
    swc1	$f7,32($sp)
    lw	$a1,32($sp)
    sw	$a1,8400($s1)
    # Line 165
    b	.L0d95c764
    sw	$zero,-32640($s3)
.L0d95c818:
    # Line 152
    lw	$a7,8($s0)
    lwc1	$f11,0($a7)
    lwc1	$f9,8($a7)
    lwc1	$f10,4($a7)
    lwc1	$f8,12($a7)
    trunc.w.s	$f11,$f11
    trunc.w.s	$f9,$f9
    trunc.w.s	$f10,$f10
    mfc1	$a6,$f11
    trunc.w.s	$f8,$f8
    mfc1	$a5,$f9
    mfc1	$a4,$f10
    sll	$a6,$a6,0x18
    mfc1	$a3,$f8
    sll	$a5,$a5,0x8
    sll	$a4,$a4,0x10
    or	$a4,$a4,$a5
    or	$a3,$a3,$a6
    or	$a3,$a3,$a4
    sw	$a3,12($sp)
    lw	$a2,12($sp)
    sw	$a2,8400($s1)
    b	.L0d95c764
    # Line 155
    sw	$zero,-32640($s3)
.L0d95c878:
    # Line 165
    lw	$t0,-32644($s3)
    andi	$t0,$t0,0x2
    bnez	$t0,.L0d95c768
    # Line 173
    lwc1	$f6,_lit_42800000
    # Line 168
    lw	$t2,8($s0)
    lwc1	$f12,0($t2)
    trunc.w.s	$f12,$f12
    swc1	$f12,36($sp)
    lw	$t1,36($sp)
    sw	$t1,8400($s1)
    # Line 169
    b	.L0d95c764
    sw	$zero,-32640($s3)
.end RenderPointDepth

# Function: RenderPointFog
# Declared: Line 210 (Source lines: 211-238)
# Address: 0x0d95c8b0 - 0x0d95ca60 (Size: 432 bytes, Frame: 224)
.ent RenderPointFog
RenderPointFog:
    # Line 211
    addiu	$sp,$sp,-96
    sd	$s2,72($sp)
    # Line 213
    lw	$s2,32184($a0)
    # Line 211
    sd	$s1,56($sp)
    # Line 213
    lw	$a3,32100($a0)
    lw	$at,32096($a0)
    # Line 211
    move	$s1,$a1
    sd	$s0,64($sp)
    lui	$v0,0xf
    move	$s0,$a0
    sd	$ra,80($sp)
    addiu	$v0,$v0,17628
    sd	$gp,48($sp)
    # Line 213
    beq	$at,$a3,.L0d95c904
    # Line 211
    addu	$gp,$t9,$v0
    # Line 217
    sw	$a3,8288($s2)
    lw	$a1,32188($a0)
    lw	$a0,32100($a0)
    sw	$a0,8288($a1)
    lw	$v1,32100($s0)
    sw	$v1,32096($s0)
.L0d95c904:
    # Line 218
    lw	$a3,132($s1)
    lw	$a4,128($s1)
    sw	$a4,0($sp)
    sw	$a3,4($sp)
    ldc1	$f0,0($sp)
    sdc1	$f0,8320($s2)
    lw	$a2,30436($s0)
    andi	$a2,$a2,0x1000
    beqz	$a2,.L0d95c948
    # Line 221
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    move	$a0,$s0
    jal	__glFogVertex
    move	$a1,$s1
    swc1	$f0,176($s1)
    mov.s	$f15,$f0
    b	.L0d95c950
    sd	$s3,40($sp)
.L0d95c948:
    lwc1	$f15,176($s1)
    sd	$s3,40($sp)
.L0d95c950:
    lbu	$t8,3221($s0)
    lui	$s3,0x1
    # Line 229
    ldc1	$f5,_lit8_406fe00000000000
    # Line 221
    beqz	$t8,.L0d95c9b0
    addu	$s3,$s0,$s3
    # Line 225
    lw	$t9,12532($s0)
    move	$a0,$s0
    lw	$a2,8($s1)
    jalr	$t9
    addiu	$a1,$sp,8
    # Line 238
    ld	$gp,48($sp)
    # Line 226
    lwc1	$f1,8($sp)
    # Line 238
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,80($sp)
    # Line 226
    trunc.w.s	$f1,$f1
    swc1	$f1,24($sp)
    lw	$t9,24($sp)
    sw	$t9,10448($s2)
    # Line 238
    ld	$s2,72($sp)
    # Line 227
    sw	$zero,-32640($s3)
    # Line 238
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d95c9b0:
    # Line 229
    lw	$ra,-32644($s3)
    cvt.d.s	$f4,$f15
    # Line 236
    lwc1	$f6,_lit_45800000
    # Line 229
    mul.d	$f4,$f4,$f5
    andi	$ra,$ra,0x2
    # Line 238
    ld	$gp,48($sp)
    ld	$s0,64($sp)
    # Line 229
    beqz	$ra,.L0d95ca00
    cvt.s.d	$f4,$f4
.L0d95c9d4:
    ld	$s3,40($sp)
    # Line 236
    mul.s	$f6,$f4,$f6
    # Line 238
    ld	$s1,56($sp)
    ld	$ra,80($sp)
    # Line 236
    trunc.w.s	$f6,$f6
    swc1	$f6,32($sp)
    lw	$at,32($sp)
    sw	$at,10616($s2)
    # Line 238
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d95ca00:
    # Line 231
    lw	$a3,8($s1)
    lwc1	$f10,0($a3)
    lwc1	$f8,8($a3)
    lwc1	$f9,4($a3)
    lwc1	$f7,12($a3)
    trunc.w.s	$f10,$f10
    trunc.w.s	$f8,$f8
    trunc.w.s	$f9,$f9
    mfc1	$a2,$f10
    trunc.w.s	$f7,$f7
    mfc1	$a1,$f8
    mfc1	$a0,$f9
    sll	$a2,$a2,0x18
    mfc1	$v1,$f7
    sll	$a1,$a1,0x8
    sll	$a0,$a0,0x10
    or	$a0,$a0,$a1
    or	$v1,$v1,$a2
    or	$v1,$v1,$a0
    sw	$v1,28($sp)
    lw	$v0,28($sp)
    sw	$v0,8400($s2)
    # Line 234
    b	.L0d95c9d4
    sw	$zero,-32640($s3)
.end RenderPointFog

# Function: RenderPointTextured
# Declared: Line 243 (Source lines: 244-385)
# Address: 0x0d95ca60 - 0x0d95d03c (Size: 1500 bytes, Frame: 160)
.ent RenderPointTextured
RenderPointTextured:
    # Line 253
    lw	$a4,32096($a0)
    # Line 244
    addiu	$sp,$sp,-288
    sd	$s4,248($sp)
    # Line 248
    lw	$s4,30436($a0)
    # Line 244
    sd	$s2,240($sp)
    # Line 246
    lw	$s2,32184($a0)
    # Line 244
    sd	$s1,232($sp)
    # Line 253
    lw	$v0,464($a0)
    # Line 244
    move	$s1,$a1
    sd	$s3,216($sp)
    # Line 253
    li	$s3,1
    # Line 244
    sd	$s0,256($sp)
    lui	$at,0xf
    # Line 253
    slt	$s3,$s3,$v0
    # Line 244
    move	$s0,$a0
    sd	$ra,280($sp)
    addiu	$at,$at,17196
    sd	$gp,264($sp)
    # Line 253
    beqz	$s3,.L0d95cb0c
    # Line 244
    addu	$gp,$t9,$at
    # Line 253
    andi	$t8,$v0,0x1
    lwc1	$f4,132($a1)
    sra	$a0,$v0,0x1
    beqz	$t8,.L0d95cee0
    lwc1	$f5,128($a1)
    # Line 261
    trunc.w.s	$f1,$f4
    # Line 260
    trunc.w.s	$f0,$f5
    # Line 261
    mfc1	$a1,$f1
    # Line 260
    mfc1	$a5,$f0
    # Line 261
    addu	$a1,$a0,$a1
    sw	$a1,4($sp)
    # Line 260
    subu	$a5,$a5,$a0
    sw	$a5,0($sp)
.L0d95cae4:
    # Line 268
    subu	$a3,$a1,$v0
    # Line 272
    lui	$a0,0x302
    # Line 267
    addu	$a2,$v0,$a5
    # Line 268
    addiu	$a3,$a3,1
    sw	$a3,12($sp)
    # Line 267
    addiu	$a2,$a2,-1
    # Line 272
    beq	$a0,$a4,.L0d95cb34
    # Line 267
    sw	$a2,8($sp)
    # Line 272
    b	.L0d95cb20
    sw	$a0,16($sp)
.L0d95cb0c:
    # Line 274
    lw	$a5,32100($a0)
    sw	$a5,16($sp)
    move	$a0,$a5
    beq	$a4,$a5,.L0d95cb34
    nop
.L0d95cb20:
    # Line 277
    sw	$a0,8288($s2)
    lw	$t0,32188($s0)
    lw	$a7,16($sp)
    sw	$a7,8288($t0)
    sw	$a7,32096($s0)
.L0d95cb34:
    beqz	$s3,.L0d95cba4
    # Line 283
    lw	$ra,4($sp)
    # Line 280
    lw	$v1,0($sp)
    # Line 282
    lw	$at,8($sp)
    # Line 280
    lui	$t9,0x7
    # Line 281
    lw	$v0,12($sp)
    # Line 280
    ori	$t9,$t9,0xffff
    sll	$v1,$v1,0x6
    and	$v1,$t9,$v1
    sw	$v1,20($sp)
    # Line 281
    sll	$v0,$v0,0x6
    # Line 280
    lw	$t1,20($sp)
    # Line 281
    and	$v0,$t9,$v0
    sw	$v0,24($sp)
    # Line 282
    sll	$at,$at,0x6
    # Line 281
    lw	$t2,24($sp)
    # Line 282
    and	$at,$t9,$at
    sw	$at,28($sp)
    # Line 283
    sll	$ra,$ra,0x6
    # Line 282
    lw	$t3,28($sp)
    # Line 283
    and	$t9,$t9,$ra
    sw	$t9,32($sp)
    lw	$t8,32($sp)
    sw	$t8,8332($s2)
    # Line 282
    sw	$t3,8328($s2)
    # Line 281
    sw	$t2,8324($s2)
    # Line 283
    b	.L0d95cbbc
    # Line 280
    sw	$t1,8320($s2)
.L0d95cba4:
    # Line 285
    lw	$at,128($s1)
    sw	$at,40($sp)
    lw	$ra,132($s1)
    sw	$ra,44($sp)
    ldc1	$f2,40($sp)
    sdc1	$f2,8320($s2)
.L0d95cbbc:
    # Line 288
    lw	$v1,8($s1)
    lwc1	$f6,0($v1)
    swc1	$f6,48($sp)
    lwc1	$f5,4($v1)
    swc1	$f5,52($sp)
    lwc1	$f4,8($v1)
    swc1	$f4,56($sp)
    lwc1	$f3,12($v1)
    swc1	$f3,60($sp)
    lw	$v0,32088($s0)
    sll	$v0,$v0,0x10
    bltz	$v0,.L0d95cc28
    # Line 291
    andi	$a0,$s4,0x4
    # Line 290
    lwc1	$f18,60($s1)
    lwc1	$f17,3544($s0)
    div.s	$f18,$f17,$f18
    # Line 291
    lwc1	$f14,48($s1)
    lwc1	$f16,56($s1)
    lwc1	$f15,52($s1)
    lw	$t9,12524($s0)
    mul.s	$f16,$f16,$f18
    addiu	$a1,$sp,48
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    andi	$a0,$s4,0x4
.L0d95cc28:
    beqz	$a0,.L0d95cc58
    sd	$a0,224($sp)
    # Line 297
    lwc1	$f23,136($s1)
    lwc1	$f25,_lit_42800000
    mul.s	$f23,$f23,$f25
    cvt.d.s	$f23,$f23
    sdc1	$f23,64($sp)
    ldc1	$f21,64($sp)
    trunc.l.d	$f21,$f21
    sdc1	$f21,72($sp)
    ldc1	$f19,72($sp)
    sdc1	$f19,8648($s2)
.L0d95cc58:
    lw	$a1,1792($s0)
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d95ccb4
    andi	$a2,$s4,0x1000
    beqz	$a2,.L0d95cc88
    # Line 303
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    move	$a0,$s0
    jal	__glFogVertex
    move	$a1,$s1
    mov.s	$f5,$f0
    b	.L0d95cc8c
    swc1	$f0,176($s1)
.L0d95cc88:
    lwc1	$f5,176($s1)
.L0d95cc8c:
    # Line 306
    ldc1	$f29,_lit8_406fe00000000000
    cvt.d.s	$f27,$f5
    mul.d	$f27,$f27,$f29
    lwc1	$f29,_lit_45800000
    cvt.s.d	$f27,$f27
    mul.s	$f27,$f27,$f29
    trunc.w.s	$f27,$f27
    swc1	$f27,80($sp)
    lw	$a3,80($sp)
    sw	$a3,8568($s2)
.L0d95ccb4:
    beqz	$s3,.L0d95cd68
    ld	$a4,224($sp)
    beqz	$a4,.L0d95ccdc
    ld	$s3,216($sp)
    # Line 312
    sd	$zero,88($sp)
    ldc1	$f31,88($sp)
    # Line 313
    sd	$zero,96($sp)
    ldc1	$f0,96($sp)
    sdc1	$f0,8664($s2)
    # Line 312
    sdc1	$f31,8656($s2)
.L0d95ccdc:
    # Line 313
    lw	$a5,1792($s0)
    andi	$a5,$a5,0x20
    beqz	$a5,.L0d95cd04
    nop
    # Line 316
    sw	$zero,104($sp)
    lw	$a6,104($sp)
    # Line 317
    sw	$zero,108($sp)
    lw	$a7,108($sp)
    sw	$a7,8584($s2)
    # Line 316
    sw	$a6,8576($s2)
.L0d95cd04:
    # Line 317
    lw	$t0,32088($s0)
    sll	$t0,$t0,0x10
    bgez	$t0,.L0d95cd7c
    # Line 376
    lui	$v0,0x1
    # Line 320
    sd	$zero,112($sp)
    ldc1	$f4,112($sp)
    # Line 321
    sd	$zero,120($sp)
    ldc1	$f3,120($sp)
    # Line 322
    sd	$zero,128($sp)
    ldc1	$f2,128($sp)
    # Line 323
    sd	$zero,136($sp)
    ldc1	$f1,136($sp)
    # Line 324
    sw	$zero,144($sp)
    lw	$a0,144($sp)
    # Line 325
    sw	$zero,148($sp)
    lw	$v1,148($sp)
    sw	$v1,8540($s2)
    # Line 324
    sw	$a0,8536($s2)
    # Line 323
    sdc1	$f1,8528($s2)
    # Line 322
    sdc1	$f2,8520($s2)
    # Line 321
    sdc1	$f3,8512($s2)
    # Line 320
    sdc1	$f4,8504($s2)
    # Line 325
    lw	$v0,32088($s0)
    b	.L0d95cd74
    sll	$v0,$v0,0x10
.L0d95cd68:
    lw	$v0,32088($s0)
    ld	$s3,216($sp)
    sll	$v0,$v0,0x10
.L0d95cd74:
    bltz	$v0,.L0d95ce20
.L0d95cd78:
    # Line 376
    lui	$v0,0x1
.L0d95cd7c:
    addu	$v0,$s0,$v0
    lw	$v1,-32644($v0)
    andi	$v1,$v1,0x2
    beqz	$v1,.L0d95cdac
    ld	$s1,232($sp)
    ld	$s2,240($sp)
    ld	$ra,280($sp)
    ld	$s4,248($sp)
    ld	$s0,256($sp)
    # Line 385
    ld	$gp,264($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d95cdac:
    # Line 381
    lwc1	$f8,48($sp)
    lwc1	$f6,56($sp)
    lwc1	$f7,52($sp)
    lwc1	$f5,60($sp)
    trunc.w.s	$f8,$f8
    trunc.w.s	$f6,$f6
    trunc.w.s	$f7,$f7
    mfc1	$a3,$f8
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f6
    # Line 385
    ld	$gp,264($sp)
    # Line 381
    mfc1	$a1,$f7
    sll	$a3,$a3,0x18
    # Line 385
    ld	$s0,256($sp)
    # Line 381
    mfc1	$a0,$f5
    sll	$a2,$a2,0x8
    # Line 385
    ld	$s4,248($sp)
    # Line 381
    sll	$a1,$a1,0x10
    ld	$ra,280($sp)
    or	$a1,$a1,$a2
    or	$a0,$a0,$a3
    or	$a0,$a0,$a1
    sw	$a0,200($sp)
    lw	$v1,200($sp)
    sw	$v1,10448($s2)
    # Line 383
    sw	$zero,-32640($v0)
    # Line 385
    ld	$s2,240($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d95ce20:
    # Line 335
    lwc1	$f4,60($s1)
    ldc1	$f10,_lit8_3ff0000000000000
    cvt.d.s	$f9,$f4
    lwc1	$f5,48($s1)
    # Line 333
    lw	$s4,28208($s0)
    # Line 335
    c.eq.d	$f9,$f10
    lwc1	$f6,_lit_37000000
    lw	$v0,232($s4)
    li	$a0,1
    bc1t	.L0d95ce94
    # Line 347
    lwc1	$f9,52($s1)
    # Line 335
    abs.s	$f11,$f4
    c.lt.s $f11,$f6
    mtc1	$zero,$f13
    # Line 338
    lwc1	$f12,_lit_b7000000
    # Line 335
    bc1f .L0d95ce70
    nop
    c.lt.s $f4,$f13
    movf.s	$f12,$f6,$fcc2
    # Line 338
    mov.s	$f4,$f12
.L0d95ce70:
    # Line 340
    lwc1	$f6,_lit_3f800000
    div.s	$f6,$f6,$f4
    mul.s	$f14,$f5,$f6
    beq	$v0,$a0,.L0d95cea0
    sdc1	$f14,208($sp)
    # Line 342
    lwc1	$f7,52($s1)
    mul.s	$f7,$f7,$f6
    b	.L0d95cea0
    swc1	$f7,152($sp)
.L0d95ce94:
    # Line 345
    beq	$v0,$a0,.L0d95cea0
    sdc1	$f5,208($sp)
    # Line 347
    swc1	$f9,152($sp)
.L0d95cea0:
    # Line 351
    # lw $t9, -28804($gp) # &__glFloor
    li	$s1,1
    jal	__glFloor
    ldc1	$f12,208($sp)
    lw	$a4,4($s4)
    li	$a0,10497
    # Line 355
    ldc1	$f5,208($sp)
    slti	$a5,$v0,2
    # Line 351
    beq	$a0,$a4,.L0d95cfec
    # Line 355
    lwc1	$f6,_lit_3f800000
    # Line 353
    bltz	$v0,.L0d95d00c
    nop
    # Line 355
    bnez	$a5,.L0d95cf10
    nop
    b	.L0d95cf14
    lwc1	$f5,_lit_40e00000
.L0d95cee0:
    # Line 264
    lwc1	$f10,3540($s0)
    # Line 265
    sub.s	$f11,$f4,$f10
    # Line 264
    add.s	$f10,$f5,$f10
    # Line 265
    trunc.w.s	$f11,$f11
    # Line 264
    trunc.w.s	$f10,$f10
    # Line 265
    mfc1	$a1,$f11
    # Line 264
    mfc1	$a5,$f10
    # Line 265
    addu	$a1,$a0,$a1
    sw	$a1,4($sp)
    # Line 264
    subu	$a5,$a5,$a0
    b	.L0d95cae4
    sw	$a5,0($sp)
.L0d95cf10:
    # Line 355
    add.s	$f5,$f5,$f6
.L0d95cf14:
    cvt.d.s	$f4,$f5
.L0d95cf18:
    lw	$a2,232($s4)
    beq	$a2,$s1,.L0d95cf6c
    ldc1	$f5,_lit8_3ff0000000000000
    # Line 363
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f4,272($sp)
    jal	__glFloor
    lwc1	$f12,152($sp)
    lw	$a4,8($s4)
    li	$a3,10497
    # Line 367
    slti	$a5,$v0,2
    # Line 363
    beq	$a3,$a4,.L0d95d014
    ldc1	$f4,272($sp)
    # Line 365
    bltz	$v0,.L0d95d034
    nop
    # Line 367
    bnez	$a5,.L0d95cf60
    lwc1	$f7,_lit_3f800000
    b	.L0d95cf68
    lwc1	$f6,_lit_40e00000
.L0d95cf60:
    lwc1	$f6,152($sp)
    add.s	$f6,$f6,$f7
.L0d95cf68:
    cvt.d.s	$f5,$f6
.L0d95cf6c:
    # Line 374
    ldc1	$f13,_lit8_42a0000000000000
    # Line 373
    sw	$zero,156($sp)
    # Line 374
    mul.d	$f15,$f13,$f4
    # Line 373
    lw	$t0,156($sp)
    # Line 374
    sdc1	$f15,160($sp)
    ldc1	$f14,160($sp)
    trunc.l.d	$f14,$f14
    dmfc1	$t2,$f14
    daddiu	$t2,$t2,2048
    sd	$t2,168($sp)
    # Line 375
    mul.d	$f13,$f13,$f5
    # Line 374
    ldc1	$f10,168($sp)
    # Line 375
    sdc1	$f13,176($sp)
    ldc1	$f12,176($sp)
    trunc.l.d	$f12,$f12
    dmfc1	$t1,$f12
    # Line 376
    lwc1	$f11,_lit_4e000000
    # Line 375
    daddiu	$t1,$t1,2048
    sd	$t1,184($sp)
    ldc1	$f8,184($sp)
    # Line 376
    swc1	$f11,192($sp)
    lwc1	$f9,192($sp)
    trunc.w.s	$f9,$f9
    # Line 373
    sw	$t0,8500($s2)
    # Line 374
    sdc1	$f10,8480($s2)
    # Line 376
    mfc1	$a7,$f9
    # Line 375
    sdc1	$f8,8488($s2)
    # Line 376
    addiu	$a7,$a7,2048
    sw	$a7,196($sp)
    lw	$a6,196($sp)
    b	.L0d95cd78
    sw	$a6,8496($s2)
.L0d95cfec:
    # Line 353
    mtc1	$v0,$f6
    cvt.s.w	$f6,$f6
    ldc1	$f4,208($sp)
    lwc1	$f5,_lit_3f800000
    sub.s	$f4,$f4,$f6
    add.s	$f4,$f4,$f5
    b	.L0d95cf18
    cvt.d.s	$f4,$f4
.L0d95d00c:
    # Line 355
    b	.L0d95cf14
    mtc1	$zero,$f5
.L0d95d014:
    # Line 365
    mtc1	$v0,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f5,152($sp)
    lwc1	$f6,_lit_3f800000
    sub.s	$f5,$f5,$f7
    add.s	$f5,$f5,$f6
    b	.L0d95cf6c
    cvt.d.s	$f5,$f5
.L0d95d034:
    # Line 367
    b	.L0d95cf68
    mtc1	$zero,$f6
.end RenderPointTextured

# Function: RenderPointN
# Declared: Line 392 (Source lines: 393-469)
# Address: 0x0d95d040 - 0x0d95d3b0 (Size: 880 bytes, Frame: 160)
.ent RenderPointN
RenderPointN:
    # Line 404
    lwc1	$f4,132($a1)
    lwc1	$f5,128($a1)
    # Line 396
    lw	$a3,30436($a0)
    # Line 393
    addiu	$sp,$sp,-160
    sd	$s0,136($sp)
    sd	$s2,120($sp)
    # Line 404
    lw	$a4,464($a0)
    # Line 393
    move	$s2,$a1
    # Line 399
    lw	$s0,32184($a0)
    # Line 393
    lui	$at,0xf
    sd	$gp,112($sp)
    addiu	$at,$at,15692
    # Line 404
    andi	$v0,$a4,0x1
    # Line 393
    sd	$s1,128($sp)
    move	$s1,$a0
    # Line 404
    sra	$a5,$a4,0x1
    # Line 420
    lw	$t0,32096($s1)
    # Line 404
    beqz	$v0,.L0d95d24c
    # Line 393
    addu	$gp,$t9,$at
    # Line 408
    trunc.w.s	$f0,$f5
    # Line 409
    trunc.w.s	$f1,$f4
    # Line 408
    mfc1	$a6,$f0
    # Line 409
    mfc1	$a7,$f1
    addu	$a7,$a5,$a7
    # Line 408
    subu	$a6,$a6,$a5
.L0d95d0a4:
    # Line 420
    lui	$a0,0x302
    # Line 427
    lwc1	$f5,_lit_42800000
    # Line 420
    beq	$a0,$t0,.L0d95d0cc
    # Line 422
    andi	$t3,$a3,0x4
    sw	$a0,0($sp)
    sw	$a0,8288($s0)
    lw	$t2,32188($s1)
    lw	$t1,0($sp)
    sw	$t1,8288($t2)
    sw	$t1,32096($s1)
.L0d95d0cc:
    beqz	$t3,.L0d95d114
    # Line 430
    lui	$a2,0x7
    # Line 425
    sd	$zero,8($sp)
    ldc1	$f7,8($sp)
    # Line 426
    sd	$zero,16($sp)
    ldc1	$f6,16($sp)
    sdc1	$f6,8664($s0)
    # Line 425
    sdc1	$f7,8656($s0)
    # Line 427
    lwc1	$f4,136($s2)
    mul.s	$f4,$f4,$f5
    cvt.d.s	$f4,$f4
    sdc1	$f4,24($sp)
    ldc1	$f3,24($sp)
    trunc.l.d	$f3,$f3
    sdc1	$f3,32($sp)
    ldc1	$f2,32($sp)
    sdc1	$f2,8648($s0)
    # Line 430
    lui	$a2,0x7
.L0d95d114:
    sll	$t3,$a6,0x6
    ori	$a2,$a2,0xffff
    and	$t3,$a2,$t3
    sw	$t3,40($sp)
    # Line 431
    subu	$t2,$a7,$a4
    # Line 430
    lw	$t3,40($sp)
    # Line 431
    addiu	$t2,$t2,1
    # Line 430
    sw	$t3,8320($s0)
    # Line 432
    addu	$t1,$a4,$a6
    # Line 431
    sll	$t2,$t2,0x6
    # Line 432
    addiu	$t1,$t1,-1
    # Line 431
    and	$t2,$a2,$t2
    sw	$t2,44($sp)
    # Line 432
    sll	$t1,$t1,0x6
    # Line 431
    lw	$t2,44($sp)
    # Line 432
    and	$t1,$a2,$t1
    sw	$t1,48($sp)
    # Line 433
    sll	$a5,$a7,0x6
    # Line 432
    lw	$t0,48($sp)
    # Line 433
    and	$a2,$a2,$a5
    sw	$a2,52($sp)
    lw	$a1,52($sp)
    sw	$a1,8332($s0)
    # Line 432
    sw	$t0,8328($s0)
    # Line 431
    sw	$t2,8324($s0)
    # Line 433
    lbu	$a2,3221($s1)
    lui	$a0,0x1
    lw	$a1,1792($s1)
    andi	$a4,$a3,0x1000
    addu	$a0,$s1,$a0
    beqz	$a2,.L0d95d274
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d95d380
    nop
    beqz	$a4,.L0d95d1c4
    # Line 441
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    sd	$a0,104($sp)
    move	$a0,$s1
    sd	$ra,144($sp)
    jal	__glFogVertex
    move	$a1,$s2
    mov.s	$f15,$f0
    b	.L0d95d1d0
    swc1	$f0,176($s2)
.L0d95d1c4:
    lwc1	$f15,176($s2)
    sd	$a0,104($sp)
    sd	$ra,144($sp)
.L0d95d1d0:
    # Line 443
    lw	$t9,12532($s1)
    move	$a0,$s1
    lw	$a2,8($s2)
    jalr	$t9
    addiu	$a1,$sp,56
    # Line 469
    ld	$gp,112($sp)
    ld	$s1,128($sp)
    # Line 444
    lwc1	$f8,56($sp)
    # Line 469
    ld	$s2,120($sp)
    # Line 445
    ld	$a6,104($sp)
    ld	$ra,144($sp)
    # Line 444
    trunc.w.s	$f8,$f8
    swc1	$f8,72($sp)
    lw	$a7,72($sp)
    # Line 468
    sw	$zero,96($sp)
    lw	$a5,96($sp)
    # Line 444
    sw	$a7,8400($s0)
    # Line 445
    sw	$zero,-32640($a6)
    # Line 468
    sw	$a5,10736($s0)
    # Line 469
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d95d228:
    ld	$gp,112($sp)
.L0d95d22c:
    ld	$s1,128($sp)
    ld	$s2,120($sp)
    # Line 468
    sw	$zero,96($sp)
    lw	$t0,96($sp)
    sw	$t0,10736($s0)
    # Line 469
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d95d24c:
    # Line 412
    lwc1	$f9,3540($a0)
    # Line 413
    sub.s	$f10,$f4,$f9
    # Line 412
    add.s	$f9,$f5,$f9
    # Line 413
    trunc.w.s	$f10,$f10
    # Line 412
    trunc.w.s	$f9,$f9
    # Line 413
    mfc1	$a7,$f10
    # Line 412
    mfc1	$a6,$f9
    # Line 413
    addu	$a7,$a5,$a7
    b	.L0d95d0a4
    # Line 412
    subu	$a6,$a6,$a5
.L0d95d274:
    # Line 449
    beqz	$a1,.L0d95d2f0
    andi	$t0,$a3,0x1000
    beqz	$t0,.L0d95d2ac
    # Line 454
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    sd	$a0,104($sp)
    move	$a0,$s1
    sd	$ra,144($sp)
    jal	__glFogVertex
    move	$a1,$s2
    ld	$ra,144($sp)
    ld	$a0,104($sp)
    mov.s	$f15,$f0
    b	.L0d95d2b0
    swc1	$f0,176($s2)
.L0d95d2ac:
    lwc1	$f15,176($s2)
.L0d95d2b0:
    # Line 456
    ldc1	$f11,_lit8_406fe00000000000
    cvt.d.s	$f10,$f15
    mul.d	$f10,$f10,$f11
    lwc1	$f11,_lit_45800000
    cvt.s.d	$f10,$f10
    mul.s	$f10,$f10,$f11
    trunc.w.s	$f10,$f10
    swc1	$f10,80($sp)
    lw	$t1,80($sp)
    # Line 457
    sw	$zero,84($sp)
    lw	$t2,84($sp)
    # Line 458
    sw	$zero,88($sp)
    lw	$t3,88($sp)
    sw	$t3,8584($s0)
    # Line 457
    sw	$t2,8576($s0)
    # Line 456
    sw	$t1,8568($s0)
.L0d95d2f0:
    # Line 458
    lw	$t8,-32644($a0)
    andi	$t8,$t8,0x2
    bnez	$t8,.L0d95d22c
    # Line 469
    ld	$gp,112($sp)
    # Line 461
    lw	$a3,8($s2)
    lwc1	$f15,0($a3)
    lwc1	$f13,8($a3)
    lwc1	$f14,4($a3)
    lwc1	$f12,12($a3)
    trunc.w.s	$f15,$f15
    trunc.w.s	$f13,$f13
    trunc.w.s	$f14,$f14
    mfc1	$a2,$f15
    trunc.w.s	$f12,$f12
    mfc1	$a1,$f13
    mfc1	$v1,$f14
    sll	$a2,$a2,0x18
    # Line 469
    ld	$gp,112($sp)
    # Line 461
    mfc1	$v0,$f12
    sll	$a1,$a1,0x8
    # Line 469
    ld	$s1,128($sp)
    # Line 461
    sll	$v1,$v1,0x10
    # Line 469
    ld	$s2,120($sp)
    # Line 461
    or	$v1,$v1,$a1
    or	$v0,$v0,$a2
    or	$v0,$v0,$v1
    sw	$v0,92($sp)
    lw	$at,92($sp)
    # Line 468
    sw	$zero,96($sp)
    lw	$t9,96($sp)
    # Line 461
    sw	$at,8400($s0)
    # Line 464
    sw	$zero,-32640($a0)
    # Line 468
    sw	$t9,10736($s0)
    # Line 469
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d95d380:
    # Line 445
    lw	$a4,-32644($a0)
    andi	$a4,$a4,0x2
    bnez	$a4,.L0d95d22c
    # Line 469
    ld	$gp,112($sp)
    # Line 448
    lw	$a6,8($s2)
    lwc1	$f16,0($a6)
    trunc.w.s	$f16,$f16
    swc1	$f16,76($sp)
    lw	$a5,76($sp)
    sw	$a5,8400($s0)
    b	.L0d95d228
    # Line 449
    sw	$zero,-32640($a0)
.end RenderPointN

# Function: __glCrmPolygonOffsetPoint
# Declared: Line 475 (Source lines: 476-485)
# Address: 0x0d95d3b0 - 0x0d95d40c (Size: 92 bytes, Frame: 32)
.globl __glCrmPolygonOffsetPoint
.ent __glCrmPolygonOffsetPoint
__glCrmPolygonOffsetPoint:
    # Line 480
    lwc1	$f0,30488($a0)
    # Line 476
    addiu	$sp,$sp,-32
    sdc1	$f30,0($sp)
    # Line 479
    lwc1	$f30,136($a1)
    sd	$gp,24($sp)
    # Line 476
    lui	$at,0xf
    # Line 480
    add.s	$f0,$f0,$f30
    # Line 476
    addiu	$at,$at,14812
    # Line 480
    swc1	$f0,136($a1)
    # Line 476
    addu	$gp,$t9,$at
    # Line 482
    lw	$t9,12496($a0)
    # Line 476
    sd	$s8,16($sp)
    # Line 482
    nop
    # Line 476
    sd	$ra,8($sp)
    # Line 482
    jalr	$t9
    # Line 476
    move	$s8,$a1
    # Line 485
    ld	$gp,24($sp)
    ld	$ra,8($sp)
    # Line 484
    swc1	$f30,136($s8)
    # Line 485
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmPolygonOffsetPoint

# Function: Coverage
# Declared: Line 531 (Source lines: 545-574)
# Address: 0x0d95d410 - 0x0d95d560 (Size: 336 bytes, Frame: 0)
.ent Coverage
Coverage:
    # Line 545
    lwc1	$f6,_lit_bec00000
    lwc1	$f15,_lit_3e800000
    add.s	$f10,$f13,$f6
    add.s	$f8,$f10,$f15
    add.s	$f11,$f8,$f15
    mul.s	$f10,$f10,$f10
    mul.s	$f8,$f8,$f8
    add.s	$f9,$f11,$f15
    mul.s	$f11,$f11,$f11
    lwc1	$f7,_lit_3d800000
    mtc1	$zero,$f0
    add.s	$f6,$f12,$f6
    mul.s	$f9,$f9,$f9
    nmsub.s	$f5,$f14,$f6,$f6
    c.le.s	$f10,$f5
    # Line 561
    c.le.s $f11,$f5
    # Line 545
    bc1f	.L0d95d45c
    # Line 565
    c.le.s $f9,$f5
    # Line 557
    add.s	$f0,$f0,$f7
.L0d95d45c:
    c.le.s $f8,$f5
    bc1f .L0d95d46c
    nop
    # Line 561
    add.s	$f0,$f0,$f7
.L0d95d46c:
    bc1f .L0d95d478
    nop
    # Line 565
    add.s	$f0,$f0,$f7
.L0d95d478:
    bc1f .L0d95d484
    nop
    # Line 569
    add.s	$f0,$f0,$f7
.L0d95d484:
    # Line 572
    add.s	$f6,$f6,$f15
    # Line 545
    nmsub.s	$f5,$f14,$f6,$f6
    c.le.s $f10,$f5
    bc1f .L0d95d49c
    nop
    # Line 557
    add.s	$f0,$f0,$f7
.L0d95d49c:
    c.le.s $f8,$f5
    bc1f .L0d95d4ac
    nop
    # Line 561
    add.s	$f0,$f0,$f7
.L0d95d4ac:
    c.le.s $f11,$f5
    bc1f .L0d95d4bc
    nop
    # Line 565
    add.s	$f0,$f0,$f7
.L0d95d4bc:
    c.le.s $f9,$f5
    bc1f .L0d95d4cc
    nop
    # Line 569
    add.s	$f0,$f0,$f7
.L0d95d4cc:
    # Line 572
    add.s	$f6,$f6,$f15
    # Line 545
    nmsub.s	$f5,$f14,$f6,$f6
    c.le.s	$f10,$f5
    # Line 572
    add.s	$f6,$f6,$f15
    # Line 545
    bc1f	.L0d95d4e8
    # Line 565
    c.le.s $f9,$f5
    # Line 557
    add.s	$f0,$f0,$f7
.L0d95d4e8:
    c.le.s $f8,$f5
    bc1f .L0d95d4f8
    nop
    # Line 561
    add.s	$f0,$f0,$f7
.L0d95d4f8:
    c.le.s $f11,$f5
    bc1f .L0d95d508
    # Line 545
    nmsub.s	$f5,$f14,$f6,$f6
    # Line 565
    add.s	$f0,$f0,$f7
.L0d95d508:
    bc1f .L0d95d514
    nop
    # Line 569
    add.s	$f0,$f0,$f7
.L0d95d514:
    # Line 545
    c.le.s $f10,$f5
    bc1f .L0d95d524
    nop
    # Line 557
    add.s	$f0,$f0,$f7
.L0d95d524:
    c.le.s $f8,$f5
    bc1f .L0d95d534
    nop
    # Line 561
    add.s	$f0,$f0,$f7
.L0d95d534:
    c.le.s $f11,$f5
    bc1f .L0d95d544
    nop
    # Line 565
    add.s	$f0,$f0,$f7
.L0d95d544:
    c.le.s $f9,$f5
    bc1f .L0d95d558
    nop
    # Line 574
    jr	$ra
    # Line 569
    add.s	$f0,$f0,$f7
.L0d95d558:
    # Line 574
    jr	$ra
    nop
.end Coverage

# Function: RenderAntiAliasedPoint
# Declared: Line 577 (Source lines: 578-767)
# Address: 0x0d95d560 - 0x0d95dc84 (Size: 1828 bytes, Frame: 160)
.ent RenderAntiAliasedPoint
RenderAntiAliasedPoint:
    # Line 585
    lw	$a3,1792($a0)
    # Line 578
    addiu	$sp,$sp,-416
    # Line 585
    sd	$a3,224($sp)
    sdc1	$f30,328($sp)
    sdc1	$f22,336($sp)
    sdc1	$f24,344($sp)
    sd	$s8,360($sp)
    sd	$ra,352($sp)
    sd	$gp,280($sp)
    # Line 602
    lwc1	$f6,132($a1)
    # Line 599
    lwc1	$f2,3540($a0)
    lwc1	$f1,460($a0)
    # Line 578
    sdc1	$f20,176($sp)
    # Line 601
    lwc1	$f20,128($a1)
    # Line 578
    sd	$s6,248($sp)
    # Line 621
    lwc1	$f7,136($a1)
    # Line 587
    lw	$s6,32188($a0)
    # Line 578
    sd	$s2,240($sp)
    # Line 587
    lw	$s2,32184($a0)
    # Line 621
    trunc.l.s	$f7,$f7
    # Line 578
    sd	$s0,256($sp)
    # Line 584
    lw	$s0,30436($a0)
    # Line 621
    dmfc1	$a2,$f7
    sw	$a2,8($sp)
    # Line 622
    lw	$v1,8($a1)
    # Line 578
    sd	$s5,272($sp)
    # Line 622
    lwc1	$f5,0($v1)
    # Line 578
    sd	$s7,264($sp)
    # Line 622
    swc1	$f5,12($sp)
    lwc1	$f4,4($v1)
    # Line 602
    sdc1	$f6,168($sp)
    # Line 622
    swc1	$f4,16($sp)
    lwc1	$f3,8($v1)
    andi	$at,$s0,0x8
    sd	$at,232($sp)
    swc1	$f3,20($sp)
    # Line 578
    move	$s7,$a1
    lui	$v0,0xf
    # Line 599
    mul.s	$f1,$f1,$f2
    # Line 622
    lwc1	$f0,12($v1)
    # Line 578
    move	$s5,$a0
    addiu	$v0,$v0,14380
    # Line 599
    sdc1	$f1,184($sp)
    # Line 578
    addu	$gp,$t9,$v0
    # Line 622
    beqz	$at,.L0d95d6b8
    swc1	$f0,24($sp)
    lw	$a4,32088($a0)
    sll	$a4,$a4,0x10
    lwc1	$f5,48($a1)
    li	$a0,1
    bgez	$a4,.L0d95d68c
    lwc1	$f0,60($a1)
    # Line 629
    ldc1	$f9,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f0
    c.eq.d	$f8,$f9
    # Line 627
    lw	$s8,28208($s5)
    # Line 629
    mov.s	$f6,$f0
    bc1t	.L0d95db1c
    lw	$v0,232($s8)
    lwc1	$f7,_lit_37000000
    abs.s	$f10,$f0
    c.lt.s $f10,$f7
    bc1f .L0d95d66c
    mtc1	$zero,$f11
    # Line 632
    lwc1	$f6,_lit_b7000000
    # Line 629
    c.lt.s $f0,$f11
    movf.s	$f6,$f7,$fcc2
.L0d95d66c:
    # Line 634
    lwc1	$f0,_lit_3f800000
    div.s	$f0,$f0,$f6
    beq	$v0,$a0,.L0d95db2c
    mul.s	$f22,$f5,$f0
    # Line 636
    lwc1	$f1,52($s7)
    mul.s	$f1,$f1,$f0
    b	.L0d95db2c
    swc1	$f1,56($sp)
.L0d95d68c:
    # Line 675
    lwc1	$f17,3544($s5)
    div.s	$f14,$f17,$f0
    # Line 676
    lwc1	$f16,56($a1)
    lwc1	$f15,52($a1)
    lw	$t9,12524($s5)
    mul.s	$f16,$f16,$f14
    move	$a0,$s5
    mul.s	$f15,$f15,$f14
    addiu	$a1,$sp,12
    jalr	$t9
    mul.s	$f14,$f5,$f14
.L0d95d6b8:
    ld	$a2,224($sp)
.L0d95d6bc:
    andi	$a2,$a2,0x20
    addiu	$s8,$sp,0
    beqz	$a2,.L0d95d70c
    sd	$a2,312($sp)
    andi	$a3,$s0,0x1000
    beqz	$a3,.L0d95d6e8
    # Line 683
    nop	# was lw $t9, -26072($gp) # &__glFogVertex
    move	$a0,$s5
    jal	__glFogVertex
    move	$a1,$s7
    swc1	$f0,176($s7)
.L0d95d6e8:
    lbu	$a4,3221($s5)
    beqz	$a4,.L0d95d70c
    nop
    # Line 686
    lw	$t9,12532($s5)
    move	$a0,$s5
    lwc1	$f15,176($s7)
    lw	$a2,8($s7)
    jalr	$t9
    addiu	$a1,$s8,12
.L0d95d70c:
    andi	$s8,$s0,0x1
    beqz	$s8,.L0d95d750
    # Line 691
    lwc1	$f19,16($sp)
    lwc1	$f18,20($sp)
    lwc1	$f17,12($sp)
    trunc.l.s	$f19,$f19
    trunc.l.s	$f18,$f18
    dmfc1	$a5,$f19
    trunc.l.s	$f17,$f17
    dmfc1	$a7,$f18
    sll	$a5,$a5,0x10
    dmfc1	$a6,$f17
    sll	$a7,$a7,0x8
    or	$a5,$a5,$a7
    sll	$a6,$a6,0x18
    or	$a5,$a5,$a6
    sw	$a5,72($sp)
.L0d95d750:
    lw	$a6,32096($s5)
    lw	$v0,32100($s5)
    beq	$a6,$v0,.L0d95d780
    # Line 711
    ldc1	$f25,168($sp)
    # Line 695
    lw	$t2,32184($s5)
    sw	$v0,8288($t2)
    lw	$t1,32188($s5)
    lw	$t0,32100($s5)
    sw	$t0,8288($t1)
    lw	$a7,32100($s5)
    sw	$a7,32096($s5)
    # Line 711
    ldc1	$f25,168($sp)
.L0d95d780:
    ldc1	$f23,184($sp)
    add.s	$f24,$f23,$f25
    # Line 709
    sub.s	$f27,$f25,$f23
    # Line 708
    sub.s	$f23,$f20,$f23
    # Line 711
    trunc.w.s	$f24,$f24
    # Line 708
    trunc.w.s	$f23,$f23
    # Line 709
    trunc.w.s	$f27,$f27
    # Line 708
    cvt.s.w	$f21,$f23
    lwc1	$f29,3540($s5)
    # Line 709
    cvt.s.w	$f22,$f27
    # Line 707
    lwc1	$f30,24($sp)
    # Line 711
    mfc1	$a0,$f24
    # Line 706
    lwc1	$f24,3544($s5)
    # Line 709
    mfc1	$v0,$f27
    # Line 710
    swc1	$f27,4($sp)
    # Line 708
    mfc1	$a1,$f23
    add.s	$f21,$f21,$f29
    sd	$a1,296($sp)
    # Line 711
    subu	$a0,$a0,$v0
    # Line 709
    add.s	$f22,$f22,$f29
    # Line 711
    sd	$a0,304($sp)
    # Line 708
    sub.s	$f21,$f21,$f20
    # Line 709
    sub.s	$f22,$f22,$f25
    # Line 711
    bltz	$a0,.L0d95daa0
    # Line 708
    sdc1	$f21,192($sp)
    # Line 711
    andi	$t8,$s0,0x4
    sd	$t8,320($sp)
    sd	$s3,368($sp)
    sd	$s4,376($sp)
    sdc1	$f26,392($sp)
    ldc1	$f26,184($sp)
    sdc1	$f28,400($sp)
    sd	$s1,384($sp)
    la	$s1,sub_0d960000
    add.s	$f31,$f26,$f20
    lwc1	$f29,64($sp)
    lwc1	$f27,60($sp)
    trunc.w.s	$f31,$f31
    sdc1	$f29,208($sp)
    mtc1	$zero,$f28
    ld	$a3,296($sp)
    mfc1	$a2,$f31
    li	$s4,-1
    li	$s3,1
    sdc1	$f27,200($sp)
    addiu	$s1,$s1,-11248
    subu	$a2,$a2,$a3
    sd	$a2,288($sp)
    mul.s	$f26,$f26,$f26
    addiu	$a2,$a2,1
    b	.L0d95d870
    sd	$a2,216($sp)
.L0d95d850:
    # Line 714
    lw	$v0,4($sp)
.L0d95d854:
    # Line 711
    ld	$t9,304($sp)
    addiu	$t9,$t9,-1
    # Line 757
    addiu	$v0,$v0,1
    sw	$v0,4($sp)
    # Line 756
    add.s	$f22,$f24,$f22
    # Line 711
    beq	$t9,$s4,.L0d95da8c
    sd	$t9,304($sp)
.L0d95d870:
    # Line 714
    ld	$ra,288($sp)
    # Line 712
    ldc1	$f20,192($sp)
    # Line 713
    ld	$at,296($sp)
    sw	$at,0($sp)
    # Line 714
    bltz	$ra,.L0d95d854
    move	$s0,$ra
    b	.L0d95d8d8
    # Line 715
    mov.s	$f12,$f20
.L0d95d890:
    # Line 736
    beqz	$s8,.L0d95da60
    # Line 747
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    # Line 742
    lw	$a0,72($sp)
    lwc1	$f0,24($sp)
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f0
    sll	$v1,$v1,0x0
    or	$v1,$v1,$a0
    sw	$v1,152($sp)
    lw	$v0,152($sp)
    sw	$v0,10448($s2)
.L0d95d8bc:
    # Line 714
    addiu	$s0,$s0,-1
    # Line 754
    lw	$a0,0($sp)
    # Line 753
    add.s	$f20,$f24,$f20
    # Line 754
    addiu	$a0,$a0,1
    # Line 714
    beq	$s0,$s4,.L0d95d850
    # Line 754
    sw	$a0,0($sp)
    # Line 715
    mov.s	$f12,$f20
.L0d95d8d8:
    move	$t9,$s1
    mov.s	$f13,$f22
    bal __glCrmPolygonOffsetPoint
    mov.s	$f14,$f26
    c.lt.s $f28,$f0
    # Line 718
    lw	$a4,0($sp)
    # Line 726
    ldc1	$f9,_lit8_406fe00000000000
    # Line 719
    ld	$a5,320($sp)
    # Line 715
    bc1f .L0d95d8bc
    # Line 718
    sll	$a4,$a4,0x6
    sw	$a4,76($sp)
    lw	$a3,76($sp)
    # Line 717
    mul.s	$f1,$f0,$f30
    swc1	$f1,24($sp)
    # Line 718
    sw	$a3,8320($s2)
    # Line 719
    lw	$a2,4($sp)
    sll	$a2,$a2,0x6
    sw	$a2,80($sp)
    lw	$a1,80($sp)
    beqz	$s3,.L0d95d890
    sw	$a1,8324($s2)
    beqz	$a5,.L0d95d964
    # Line 736
    move	$s3,$zero
    # Line 722
    lwc1	$f6,_lit_42800000
    lwc1	$f5,136($s7)
    mul.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,88($sp)
    ldc1	$f4,88($sp)
    trunc.l.d	$f4,$f4
    sdc1	$f4,96($sp)
    ldc1	$f3,96($sp)
    ldc1	$f2,96($sp)
    sdc1	$f3,8648($s2)
    sdc1	$f2,8648($s6)
.L0d95d964:
    # Line 725
    lbu	$a6,3220($s5)
    beqz	$a6,.L0d95d9a4
    ld	$a7,312($sp)
    beqz	$a7,.L0d95d9a4
    # Line 726
    lwc1	$f7,_lit_45800000
    lwc1	$f8,176($s7)
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f9
    cvt.s.d	$f8,$f8
    mul.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    swc1	$f7,104($sp)
    lw	$t1,104($sp)
    lw	$t0,104($sp)
    sw	$t1,8568($s2)
    sw	$t0,8568($s6)
.L0d95d9a4:
    lw	$t2,32088($s5)
    sll	$t2,$t2,0x10
    bgez	$t2,.L0d95d890
    # Line 732
    lwc1	$f17,_lit_55000000
    ldc1	$f19,200($sp)
    # Line 730
    sw	$zero,108($sp)
    lw	$v1,108($sp)
    lw	$v0,108($sp)
    # Line 732
    mul.s	$f19,$f19,$f17
    # Line 730
    sw	$v1,8500($s2)
    sw	$v0,8500($s6)
    # Line 732
    cvt.d.s	$f19,$f19
    sdc1	$f19,112($sp)
    ldc1	$f18,112($sp)
    trunc.l.d	$f18,$f18
    # Line 734
    ldc1	$f16,208($sp)
    # Line 732
    dmfc1	$at,$f18
    # Line 734
    mul.s	$f16,$f16,$f17
    # Line 732
    daddiu	$at,$at,2048
    sd	$at,120($sp)
    ldc1	$f13,120($sp)
    # Line 734
    cvt.d.s	$f16,$f16
    # Line 732
    ldc1	$f12,120($sp)
    # Line 734
    sdc1	$f16,128($sp)
    ldc1	$f15,128($sp)
    trunc.l.d	$f15,$f15
    dmfc1	$ra,$f15
    # Line 736
    lwc1	$f14,_lit_4e000000
    # Line 734
    daddiu	$ra,$ra,2048
    sd	$ra,136($sp)
    ldc1	$f11,136($sp)
    ldc1	$f9,136($sp)
    # Line 736
    swc1	$f14,144($sp)
    lwc1	$f10,144($sp)
    # Line 732
    sdc1	$f13,8480($s2)
    # Line 736
    trunc.w.s	$f10,$f10
    # Line 732
    sdc1	$f12,8480($s6)
    # Line 734
    sdc1	$f11,8488($s2)
    # Line 736
    mfc1	$t9,$f10
    # Line 734
    sdc1	$f9,8488($s6)
    # Line 736
    addiu	$t9,$t9,2048
    sw	$t9,148($sp)
    lw	$t8,148($sp)
    lw	$t3,148($sp)
    sw	$t8,8496($s2)
    b	.L0d95d890
    sw	$t3,8496($s6)
.L0d95da60:
    # Line 747
    mov.s	$f13,$f0
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,12($sp)
    # Line 749
    trunc.w.s	$f21,$f0
    swc1	$f21,156($sp)
    lw	$a0,156($sp)
    # Line 750
    sw	$zero,160($sp)
    lw	$a1,160($sp)
    sw	$a1,10736($s2)
    b	.L0d95d8bc
    # Line 749
    sw	$a0,8400($s2)
.L0d95da8c:
    ld	$s3,368($sp)
    ld	$s4,376($sp)
    ld	$s1,384($sp)
    ldc1	$f26,392($sp)
    ldc1	$f28,400($sp)
.L0d95daa0:
    ld	$s8,360($sp)
    ld	$s0,256($sp)
    ld	$s7,264($sp)
    ldc1	$f20,176($sp)
    # Line 760
    ld	$a2,232($sp)
    ldc1	$f30,328($sp)
    ldc1	$f22,336($sp)
    beqz	$a2,.L0d95daf4
    ldc1	$f24,344($sp)
    lw	$a3,32088($s5)
    sll	$a3,$a3,0x10
    bgez	$a3,.L0d95daf4
    nop
    lw	$v0,2484($s5)
    lw	$v0,0($v0)
    li	$a4,0x8062
    beq	$v0,$a4,.L0d95dc0c
    # Line 767
    ld	$gp,280($sp)
    # Line 760
    li	$v1,7681
    beq	$v0,$v1,.L0d95dc0c
    # Line 767
    ld	$gp,280($sp)
.L0d95daf4:
    ld	$s2,240($sp)
    ld	$s6,248($sp)
    ld	$ra,352($sp)
    ld	$gp,280($sp)
    # Line 766
    li	$a0,0x8080
    addu	$a0,$a0,$s5
    # Line 767
    ld	$s5,272($sp)
    addiu	$sp,$sp,416
    jr	$ra
    # Line 766
    sw	$zero,0($a0)
.L0d95db1c:
    # Line 639
    beq	$v0,$a0,.L0d95db2c
    mov.s	$f22,$f5
    # Line 641
    lwc1	$f23,52($a1)
    swc1	$f23,56($sp)
.L0d95db2c:
    # Line 645
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f22
    lw	$a2,4($s8)
    li	$a1,10497
    beq	$a1,$a2,.L0d95dc48
    li	$a0,1
    # Line 647
    bltz	$v0,.L0d95dc40
    # Line 649
    slti	$a3,$v0,2
    bnez	$a3,.L0d95db60
    lwc1	$f0,_lit_3f800000
    b	.L0d95db64
    lwc1	$f0,_lit_40e00000
.L0d95db60:
    add.s	$f0,$f22,$f0
.L0d95db64:
    swc1	$f0,60($sp)
.L0d95db68:
    lw	$a4,232($s8)
    bne	$a4,$a0,.L0d95db80
    # Line 657
    nop	# was lw $t9, -28804($gp) # &__glFloor
    # Line 655
    lwc1	$f1,_lit_3f800000
    b	.L0d95dbbc
    swc1	$f1,64($sp)
.L0d95db80:
    # Line 657
    lwc1	$f22,56($sp)
    jal	__glFloor
    mov.s	$f12,$f22
    lw	$a6,8($s8)
    li	$a5,10497
    beq	$a5,$a6,.L0d95dc6c
    # Line 659
    mtc1	$v0,$f3
    bltz	$v0,.L0d95dc64
    # Line 661
    slti	$a7,$v0,2
    bnez	$a7,.L0d95dbb4
    lwc1	$f0,_lit_3f800000
    b	.L0d95dbb8
    lwc1	$f0,_lit_40e00000
.L0d95dbb4:
    add.s	$f0,$f22,$f0
.L0d95dbb8:
    swc1	$f0,64($sp)
.L0d95dbbc:
    # Line 666
    lw	$v0,2484($s5)
    lw	$v0,0($v0)
    li	$t0,0x8062
    beq	$v0,$t0,.L0d95dbe0
    li	$v1,7681
    beq	$v0,$v1,.L0d95dbe0
    nop
.L0d95dbd8:
    # Line 672
    b	.L0d95d6bc
    # Line 676
    ld	$a2,224($sp)
.L0d95dbe0:
    # Line 669
    lw	$a0,32360($s5)
    # Line 670
    li	$a1,-4
    and	$a0,$a0,$a1
    ori	$a0,$a0,0x1
    # Line 671
    sw	$a0,8464($s2)
    sw	$a0,8464($s6)
    # Line 672
    lwc1	$f1,30792($s5)
    # Line 670
    sw	$a0,68($sp)
    b	.L0d95dbd8
    # Line 672
    swc1	$f1,24($sp)
    # Line 767
    ld	$gp,280($sp)
.L0d95dc0c:
    # Line 763
    lw	$a3,32360($s5)
    sw	$a3,8464($s2)
    # Line 767
    ld	$s2,240($sp)
    # Line 766
    li	$a2,0x8080
    # Line 763
    lw	$a3,32360($s5)
    # Line 766
    addu	$a2,$a2,$s5
    # Line 767
    ld	$s5,272($sp)
    ld	$ra,352($sp)
    # Line 763
    sw	$a3,8464($s6)
    # Line 766
    sw	$zero,0($a2)
    # Line 767
    ld	$s6,248($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d95dc40:
    # Line 649
    b	.L0d95db64
    mtc1	$zero,$f0
.L0d95dc48:
    # Line 647
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,_lit_3f800000
    sub.s	$f2,$f22,$f2
    add.s	$f2,$f2,$f3
    b	.L0d95db68
    swc1	$f2,60($sp)
.L0d95dc64:
    # Line 661
    b	.L0d95dbb8
    mtc1	$zero,$f0
.L0d95dc6c:
    # Line 659
    cvt.s.w	$f3,$f3
    lwc1	$f4,_lit_3f800000
    sub.s	$f3,$f22,$f3
    add.s	$f3,$f3,$f4
    b	.L0d95dbbc
    swc1	$f3,64($sp)
.end RenderAntiAliasedPoint

# Function: RenderFrontBackPoint
# Declared: Line 774 (Source lines: 775-811)
# Address: 0x0d95dc90 - 0x0d95de24 (Size: 404 bytes, Frame: 208)
.ent RenderFrontBackPoint
RenderFrontBackPoint:
    # Line 782
    lw	$v0,32088($a0)
    # Line 775
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    move	$s1,$a1
    # Line 790
    lw	$a1,30656($a0)
    # Line 775
    sd	$s3,8($sp)
    # Line 777
    lw	$s3,32184($a0)
    # Line 782
    sw	$v0,0($sp)
    # Line 775
    sd	$ra,16($sp)
    sd	$s2,56($sp)
    lui	$v1,0xf
    # Line 777
    lw	$s2,32188($a0)
    # Line 775
    addiu	$v1,$v1,12540
    sd	$gp,72($sp)
    addu	$gp,$t9,$v1
    # Line 790
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 775
    sd	$s0,24($sp)
    # Line 783
    lw	$at,8680($s2)
    # Line 775
    move	$s0,$a0
    # Line 790
    jal	__glCrmSetStoreBuffer
    sd	$at,40($sp)
    # Line 791
    lw	$a2,32088($s0)
    lw	$a1,32092($s0)
    li	$a0,-3
    and	$a0,$a0,$a2
    # Line 790
    sd	$v0,64($sp)
    # Line 791
    beq	$a1,$a0,.L0d95dd1c
    sw	$a0,32088($s0)
    # Line 792
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d95dd1c:
    # Line 795
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,48($sp)
    # Line 793
    sw	$zero,4($sp)
    lw	$ra,4($sp)
    sw	$ra,8680($s3)
    lw	$ra,4($sp)
    sw	$ra,8680($s2)
    # Line 795
    lw	$t9,-32500($t9)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    # Line 801
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    jal	__glCrmSetStoreBuffer
    lw	$a1,30660($s0)
    # Line 802
    lw	$a1,0($sp)
    lw	$a2,32088($s0)
    srl	$a1,$a1,0x1
    li	$a0,-3
    andi	$a1,$a1,0x1
    lw	$at,32092($s0)
    and	$a0,$a0,$a2
    sll	$a1,$a1,0x1
    ld	$v0,40($sp)
    or	$a0,$a0,$a1
    ld	$a4,48($sp)
    beq	$at,$a0,.L0d95ddac
    sw	$a0,32088($s0)
    # Line 803
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a5)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d95ddac:
    # Line 804
    sw	$v0,8680($s3)
    sw	$v0,8680($s2)
    # Line 806
    lw	$t9,-32500($a4)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    ld	$s3,8($sp)
    ld	$s1,32($sp)
    # Line 808
    lw	$a0,0($sp)
    lw	$a7,32092($s0)
    ld	$s2,56($sp)
    ld	$v0,64($sp)
    beq	$a7,$a0,.L0d95de00
    sw	$a0,32088($s0)
    # Line 809
    lw	$t3,32184($s0)
    sw	$a0,8216($t3)
    lw	$t2,32188($s0)
    lw	$t1,32088($s0)
    sw	$t1,8216($t2)
    lw	$t0,32088($s0)
    sw	$t0,32092($s0)
.L0d95de00:
    # Line 810
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    jal	__glCrmSetStoreBuffer
    move	$a1,$v0
    ld	$ra,16($sp)
    ld	$s0,24($sp)
    # Line 811
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end RenderFrontBackPoint

# Function: RenderLeftRightPoint
# Declared: Line 821 (Source lines: 822-869)
# Address: 0x0d95de30 - 0x0d95e000 (Size: 464 bytes, Frame: 208)
.ent RenderLeftRightPoint
RenderLeftRightPoint:
    # Line 828
    lw	$v1,32088($a0)
    # Line 822
    addiu	$sp,$sp,-80
    # Line 828
    sw	$v1,0($sp)
    sd	$ra,64($sp)
    # Line 822
    sd	$s1,24($sp)
    sd	$s2,16($sp)
    # Line 824
    lw	$s2,32188($a0)
    lw	$s1,32184($a0)
    # Line 822
    lui	$a2,0xf
    addiu	$a2,$a2,12124
    # Line 834
    lw	$a4,8200($s2)
    li	$a3,-2
    sd	$gp,56($sp)
    # Line 822
    addu	$gp,$t9,$a2
    # Line 829
    lw	$a5,8680($s2)
    # Line 834
    and	$a3,$a3,$a4
    nor	$a4,$a4,$zero
    # Line 822
    la	$v0,sub_0d960000
    # Line 834
    andi	$a4,$a4,0x1
    or	$a3,$a3,$a4
    sw	$a3,8200($s2)
    # Line 835
    sw	$a3,8200($s1)
    lw	$at,12496($a0)
    # Line 822
    sd	$s0,48($sp)
    addiu	$v0,$v0,-9072
    move	$s0,$a0
    sd	$s3,40($sp)
    move	$s3,$a1
    # Line 842
    li	$a1,-3
    # Line 835
    beq	$at,$v0,.L0d95def0
    # Line 829
    sd	$a5,8($sp)
    # Line 842
    lw	$a0,32088($a0)
    lw	$a6,32092($s0)
    and	$a0,$a0,$a1
    beq	$a6,$a0,.L0d95dedc
    sw	$a0,32088($s0)
    # Line 843
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d95dedc:
    # Line 844
    sw	$zero,4($sp)
    lw	$a7,4($sp)
    lw	$a6,4($sp)
    sw	$a7,8680($s1)
    sw	$a6,8680($s2)
.L0d95def0:
    # Line 847
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,32($sp)
    lw	$t9,-32480($t9)
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s0
    # Line 852
    lw	$a0,8200($s2)
    li	$v0,-2
    nor	$v1,$a0,$zero
    # Line 853
    la	$at,sub_0d960000
    # Line 852
    and	$v0,$v0,$a0
    andi	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sw	$v0,8200($s2)
    # Line 853
    sw	$v0,8200($s1)
    lw	$ra,12496($s0)
    addiu	$at,$at,-9072
    # Line 860
    lw	$a2,0($sp)
    li	$a3,-3
    # Line 853
    beq	$ra,$at,.L0d95df90
    # Line 860
    srl	$a2,$a2,0x1
    # Line 862
    ld	$a7,8($sp)
    # Line 860
    lw	$a0,32088($s0)
    andi	$a2,$a2,0x1
    lw	$a1,32092($s0)
    sll	$a2,$a2,0x1
    and	$a0,$a0,$a3
    or	$a0,$a0,$a2
    beq	$a1,$a0,.L0d95df88
    sw	$a0,32088($s0)
    # Line 861
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d95df88:
    # Line 862
    sw	$a7,8680($s1)
    sw	$a7,8680($s2)
.L0d95df90:
    # Line 865
    ld	$t9,32($sp)
    lw	$t9,-32480($t9)
    ld	$s2,16($sp)
    move	$a0,$s0
    ld	$s1,24($sp)
    jalr	$t9
    move	$a1,$s3
    # Line 867
    lw	$a0,0($sp)
    lw	$at,32092($s0)
    ld	$s3,40($sp)
    ld	$ra,64($sp)
    beq	$at,$a0,.L0d95dff0
    sw	$a0,32088($s0)
    # Line 868
    lw	$a1,32184($s0)
    # Line 869
    ld	$gp,56($sp)
    # Line 868
    sw	$a0,8216($a1)
    lw	$a0,32188($s0)
    lw	$v1,32088($s0)
    sw	$v1,8216($a0)
    lw	$v0,32088($s0)
    sw	$v0,32092($s0)
    # Line 869
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d95dff0:
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end RenderLeftRightPoint

# Function: __glCrmPickPointProcs
# Declared: Line 904 (Source lines: 905-1002)
# Address: 0x0d95e000 - 0x0d95e248 (Size: 584 bytes, Frame: 16)
.globl __glCrmPickPointProcs
.ent __glCrmPickPointProcs
__glCrmPickPointProcs:
    # Line 907
    lw	$a2,30436($a0)
    # Line 905
    addiu	$sp,$sp,-16
    lui	$at,0xf
    # Line 911
    andi	$a4,$a2,0x8
    sd	$ra,8($sp)
    # Line 905
    addiu	$at,$at,11660
    sd	$gp,0($sp)
    # Line 911
    beqz	$a4,.L0d95e030
    # Line 905
    addu	$gp,$t9,$at
    # Line 911
    lw	$v0,32088($a0)
    sll	$v0,$v0,0x10
    bltz	$v0,.L0d95e154
.L0d95e030:
    # Line 912
    andi	$v1,$a2,0x24
    beqz	$v1,.L0d95e04c
    # Line 915
    andi	$a3,$a2,0x2300
    lw	$a1,32192($a0)
    ori	$a1,$a1,0x20
    sw	$a1,32192($a0)
    andi	$a3,$a2,0x2300
.L0d95e04c:
    beqz	$a3,.L0d95e064
    # Line 923
    lui	$a3,0x1
    # Line 920
    lw	$a5,32192($a0)
    ori	$a5,$a5,0x40
    sw	$a5,32192($a0)
    # Line 923
    lui	$a3,0x1
.L0d95e064:
    addu	$a3,$a0,$a3
    li	$a6,1
    sb	$a6,-32548($a3)
    lw	$a7,28080($a0)
    li	$t0,-33
    and	$a7,$a7,$t0
    beqz	$a7,.L0d95e140
    # Line 937
    la	$t3,__glPointFast
    # Line 940
    la	$a5,__glPoint
    sw	$a5,11952($a0)
.L0d95e08c:
    lw	$a7,3204($a0)
    li	$t0,7168
    beq	$a7,$t0,.L0d95e0b4
    # Line 947
    nop	# was lw $t9, -25332($gp) # &__glGenericPickPointProcs
    jal	__glGenericPickPointProcs
    nop
    ld	$ra,8($sp)
.L0d95e0a8:
    # Line 1002
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95e0b4:
    # Line 948
    lbu	$t1,32011($a0)
    beqz	$t1,.L0d95e0d0
    # Line 952
    nop	# was lw $t9, -25332($gp) # &__glGenericPickPointProcs
    jal	__glGenericPickPointProcs
    nop
    b	.L0d95e0a8
    ld	$ra,8($sp)
.L0d95e0d0:
    # Line 953
    lw	$a5,1792($a0)
    andi	$t2,$a5,0x400
    beqz	$t2,.L0d95e164
    nop
    # Line 957
    la	$a2,sub_0d960000
    addiu	$a2,$a2,-10912
    sw	$a2,12496($a0)
.L0d95e0ec:
    # Line 983
    lbu	$a4,-32467($a3)
    beqz	$a4,.L0d95e104
    # Line 989
    la	$a5,sub_0d960000
    # Line 988
    sw	$a2,-32480($a3)
    # Line 989
    addiu	$a2,$a5,-8656
    sw	$a2,12496($a0)
.L0d95e104:
    lbu	$a6,30652($a0)
    ld	$ra,8($sp)
    # Line 997
    la	$t1,__glCrmPolygonOffsetPoint
    # Line 989
    beqz	$a6,.L0d95e124
    # Line 993
    la	$a7,sub_0d960000
    # Line 992
    sw	$a2,-32500($a3)
    # Line 993
    addiu	$a2,$a7,-9072
    sw	$a2,12496($a0)
.L0d95e124:
    lw	$t0,1796($a0)
    andi	$t0,$t0,0x200
    beqz	$t0,.L0d95e17c
    # Line 1002
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 997
    sw	$t1,12504($a0)
.L0d95e140:
    # Line 929
    lw	$t2,464($a0)
    beq	$t2,$a6,.L0d95e190
    nop
.L0d95e14c:
    b	.L0d95e08c
    # Line 937
    sw	$t3,11952($a0)
.L0d95e154:
    # Line 912
    lw	$t8,32192($a0)
    ori	$t8,$t8,0x8
    b	.L0d95e030
    sw	$t8,32192($a0)
.L0d95e164:
    # Line 963
    beqz	$a4,.L0d95e1bc
    sw	$zero,32100($a0)
    # Line 966
    la	$a2,sub_0d960000
    addiu	$a2,$a2,-13728
    b	.L0d95e0ec
    sw	$a2,12496($a0)
.L0d95e17c:
    ld	$ra,8($sp)
    # Line 1000
    sw	$a2,12504($a0)
    # Line 1002
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95e190:
    # Line 929
    lw	$a5,-32644($a3)
    andi	$a5,$a5,0x2
    beqz	$a5,.L0d95e14c
    nop
    lbu	$a7,30652($a0)
    bnez	$a7,.L0d95e14c
    andi	$t0,$a2,0x200c
    bnez	$t0,.L0d95e14c
    # Line 935
    la	$t1,__glCrmVertexPointFast
    b	.L0d95e08c
    sw	$t1,11952($a0)
.L0d95e1bc:
    # Line 968
    lw	$t2,-32644($a3)
    andi	$t2,$t2,0x2
    beqz	$t2,.L0d95e220
    andi	$a4,$a2,0x4
    beqz	$a4,.L0d95e22c
    andi	$a7,$a5,0x20
    # Line 972
    lw	$t0,464($a0)
.L0d95e1d8:
    lbu	$t9,3221($a0)
    li	$ra,1
    move	$t8,$zero
    movz	$t8,$ra,$t9
    # Line 978
    addiu	$t3,$t8,2
    movz	$t3,$t8,$a4
    # Line 980
    addiu	$t2,$t3,4
    movz	$t2,$t3,$a7
    # Line 983
    la	$a2,sub_0da40000
    xor	$t1,$t0,$a6
    # Line 982
    addiu	$a5,$t2,8
    movz	$a5,$t2,$t1
    # Line 983
    addiu	$a2,$a2,25560
    sll	$a5,$a5,0x2
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
    b	.L0d95e0ec
    sw	$a2,12496($a0)
.L0d95e220:
    # Line 972
    andi	$a7,$a5,0x20
    b	.L0d95e1d8
    lw	$t0,464($a0)
.L0d95e22c:
    # Line 968
    bnez	$a7,.L0d95e1d8
    lw	$t0,464($a0)
    bne	$t0,$a6,.L0d95e1d8
    # Line 972
    la	$a2,sub_0d960000
    addiu	$a2,$a2,-15040
    b	.L0d95e0ec
    sw	$a2,12496($a0)
.end __glCrmPickPointProcs

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_42a0000000000000:
    .word 0x42a00000, 0x00000000
_lit_37000000:
    .word 0x37000000
_lit_3d800000:
    .word 0x3d800000
_lit_3e800000:
    .word 0x3e800000
_lit_3f800000:
    .word 0x3f800000
_lit_40e00000:
    .word 0x40e00000
_lit_42800000:
    .word 0x42800000
_lit_45800000:
    .word 0x45800000
_lit_4e000000:
    .word 0x4e000000
_lit_55000000:
    .word 0x55000000
_lit_b7000000:
    .word 0xb7000000
_lit_bec00000:
    .word 0xbec00000

